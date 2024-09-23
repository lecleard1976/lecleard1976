#!/usr/bin/env groovy
pipeline {
  agent any
  triggers {  // Every day at 2:30
       cron('30 2 * * *')
  }
  stages {
    stage('Build site') {
      agent {
        dockerfile {
          filename 'Dockerfile.jekyll'
          args '-u="root" -v $WORKSPACE:/srv/jekyll -w /srv/jekyll'
          reuseNode true
        }

      }
      steps {
        echo 'Building site...'
        sh '''
        rm -fR _site
        bundle install
        bundle exec jekyll build --config _config.yml,_config_htmlproofer.yml
        '''
      }
    }
    stage('Review content') {
      parallel {
        stage('HTML Proofer') {
          agent {
            dockerfile {
              filename 'Dockerfile.htmlproofer'
              args '-u="root" -v $WORKSPACE:/srv/jekyll -w /srv/jekyll'
              reuseNode true
            }

          }
          steps {
            script {
              try {

                // URL Ignore
                // - "edit/master" which are used to link back to live GH site to edit the raw Markdown
                // - "issues/new" which are used to generate new GitHub issues against the repo
                // - "jenkins.platformdxc.com", due to a CA certificate issue, but it requires authn anyway so wouldn't help to proof
                // --http-status-ignore "429" - ignore this error (too many requests sent in short time)

                echo 'Running HTML Proofer...'
                sh  '''
                htmlproofer --allow-hash-href --only-4xx --empty-alt-ignore --http-status-ignore "429" --url-ignore /edit\\/master/,/issues\\/new/,/jenkins.platformdxc.com/,/\\/apis$/,/\\/use_cases$/,/\\/architecture$/,/\\/services$/,/\\/tools$/ ./_site
                '''
              } catch (Exception err) {
                currentBuild.result = 'FAILURE'
              }

            }
          }
        }
        stage('Spell Check') {
          agent {
          dockerfile {
              filename 'Dockerfile.mdspell'
              args '-u="root" -v $WORKSPACE:/srv/jekyll -w /srv/jekyll'
              reuseNode true
            }
          }
          environment {
            // mdspell uses chalk to color output.
            // chalk uses a library called supports-color which auto-detects terminal support.
            // this env var will force the library to use color.
            FORCE_COLOR = "1";
          }
          steps {
            script {
              try {
                 echo 'Checking spelling...'
                 sh  '''
                 mdspell -V
                 mdspell -n -a -r --en-us --dictionary dicts/en_US-large "*.md" "*/*.md" "*/*/*.md"
                 '''
              } catch (Exception err) {
                // Spelling is now considered a blocker. Review comments in .spelling file for how to resolve.
                currentBuild.result = 'FAILURE'
              }
            }
          }
        }
      }
    }
  }
}
