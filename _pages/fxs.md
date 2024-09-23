---
title: "File eXchange Service Overview"
permalink: /fxs/
excerpt: "FXS Overview"
last_modified_at: 2023-12-22T13:15:33-05:00
toc: true
published: true
header:
  teaser: Collection-contributing.png
sidebar:
  nav: "sidenav"
---

{% include toc %}

## What is FXS?
File eXchange Service (FXS) is a high speed managed file transfer service to securely exchange content.

•	Accessible via a web GUI*, secure encrypted transfers over HTTPS.

•	Complies with industry standard security policies. 

•	Any file, any size**.

•	Uses multiple streams to transfer files up to 10 times faster than traditional transfer methods (for example FTP/SFTP).  Additionally files can also be compressed in transit.

•	Resume downloads from last position in the event of temporary network disconnections. 

•	Allows files to be transferred in parallel. 

•	Compartmentalizes the storage of your files (only the owner can access their files). 

•	Allows users to create shares, with specific permissions, to share files with other members of their team. 

•	Create temporary transfer permits to exchange content.

_*A command line tool is also available to script transfers._

_**Subject to agreed storage quotas._


## Usage Requirements
The minimum requirements to use FXS are:
-	Web browser for GUI access [officially supported list below]
     •	Internet Explorer (IE) [7.0* and higher** ]

     •	Mozilla Firefox [3.6 to 52*** ]

     •	Safari [5.0 and higher]****

     •	Chrome [26.0 to less than 42.03]
-	Java JVM [1.7 and higher] 
-	For downloads, local storage capacity greater than the download file size*****
-	Internet access to reach the FXS Servers with sufficient bandwidth to meet transfer requirements.

_* IE 7.0 cannot handle files greater than 4GB. IE 8 or higher is recommended._<br>

_** IE versions greater than 7.0 can sometimes be recognised as lower versions due to compatibility mode, this warning may be ignored._<br>

_*** Versions greater than specified do not support the Java NPAPI plugin anymore._<br>

_**** Java 1.7 update 45 is not recommended for use with FXS as this will result in an annoying security message every time you login to FXS._<br>

_***** If the download location is on a different drive to the installation of Java you require double the space (file size on the Java drive and file size on destination drive)._<br>


## Key Benefits

|                           |	Description                                                    |
|---------------------------|:--------------------------------------------------------------:|
|Secure High Speed Transfers|	All transfers to/from FXS are encrypted over a HTTPS connection. Utilizes multiple streams to transfer files faster than traditional methods [(S)FTP, HTTP(S), etc].|
|Ease of Use                |	Simple user interface that allows non-technical end users to transfer files with ease.|
|Secure Storage             |	Due to the compartmentalization of data storage, only the account owner of a file can access it.|
|Sharing and Collaboration  |	Full set of access permissions to share files with other team members. Files can be shared on a 1 to 1 basis or by group for collaboration.|
|Pause/Resume Transfers     |	Ability to pause and resume from last position. Temporary network disconnects will resume from last position.|
|Respects Network           |	Unlike UDP based transfer solutions which can flood the network and impact other network users or applications, FXS uses multiple TCP streams. Transfer speeds can be throttled by reducing the number of streams where bandwidth is low.|
|No Limitations             |	Any file type of any size can be transferred.|
|Temporary Transfer Permits |	Adhoc transfers via temporary transfer permits. Up/downloads can be limited by time, volume and number of files. Permits automatically expire or become invalid if limits are exceeded.|



## Notes

|                           |	Description                                                    |
|---------------------------|:--------------------------------------------------------------:|
|Backups/Restores           |	FXS cannot be considered a system of record. Due to the compartmentalization of data it is impossible for our team to restore individual files, therefore the source of the data must be backed up elsewhere. We can only do a complete restore in the event of a disaster.|
|No Internal Automation     |	FXS has no internal automation ability, files must be pushed in and pulled out.|
|External User Accounts     |	External users have no storage area by default. For external users to transfer data to/from FXS, an employee must grant them access to a share.|
|Auto-Cleanup               |	Files are automatically deleted (into the recycle bin) after 30 days.|
|User Access                |	User access (both internal and external) is managed by your team. The FXS support team does not manage user access post onboarding.|


## FXS Connectivity

<embed src="https://github.dxc.com/pages/Global-BES/BES/pdf/FXS_Connectivity.pdf" type="application/pdf" width="100%" height="60px" />


## Connectivity Options

|Transfer Type              |	Description                                                    |
|---------------------------|----------------------------------------------------------------|
|Manual (High Speed)        |	Use any modern web browser in which a user initiates up/downloads via the FXS GUI/Transfer Manager (requires Java and the browser must support NPAPI plugins).|
|Automated (High Speed)     |	Use the FXS command line Java Jar file to automate transfers.|
|Manual (Lower Speed)       | Use any SFTP client software^ to have a user initiate file transfers. ^For example: WinSCP, FileZilla, etc.|
|Automated (Lower Speed)    |	Script/code a solution to automate transfers over SFTP.|
|                           | Note: <br>The FXS team does not have any canned/packaged scripts/code samples. <br>The FXS team does not have any developers to automate your transfers, you need to obtain/use your own developers. <br>The FXS team will assist usage of the command line Jar but we are not developers.|


## Sample Transfer Statistics

|Location* | Size	  | Rate      | Time Required (HH:MM:SS) | Transfer Type                         |
|----------|-------:|----------:|-------------------------:|---------------------------------------|
|Germany	 | 32GB	  | 22.45 MB/s|	22:31	                   |Download using FXS command line client |
|Germany	 | 32GB	  | 14.21 MB/s|	35:34	                   |Upload using FXS command line client   |
|Germany	 | 32GB	  | 660KB/s	  |~14:30:00	               |Upload via SFTP                        |
|US	       | 30GB	  | 2.45 MB/s	|3:12:27	                 |SFTP upload                            |
|US	       | 30GB	  | 19.82 MB/s|	54:00	                   |Upload using FXS command line client   |
|US	       | 30GB	  | 9.6 MB/s	|1:06:00	                 |Download using FXS command line client |
|Ireland	 | 2.97GB |	530.32KB/s|	1:38:09	                 |SFTP download                          |
|Ireland	 | 2.97GB	| 8.97MB/s	|05:40	                   |Download via FXS transfer manager      |

 _* All transfers initiated off corporate network_

## Fact Sheet
[File eXchange Service (FXS) Fact Sheet](https://github.dxc.com/pages/Global-BES/BES/pdf/86444-file-exchange-service-fact-sheet-english-letter_DXC.pdf)

## Download
[To view/download BES 'File eXchange Services (FXS) Overview' reference file](https://github.dxc.com/pages/Global-BES/BES/pdf/DXC_FXS.pdf)

