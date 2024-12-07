---
id: Nmap
aliases: 
tags:
---


|                Option                 |                                EXPLANATION                                 |
| :-----------------------------------: | :------------------------------------------------------------------------: |
|                  -sL                  |                 List scan - list targets without scanning                  |
|           *Host doscovery*            |                                                                            |
|                  -sn                  |                      Ping scan - host discovery only                       |
|            *Port scanning*            |                                                                            |
|                  -sT                  |                TCP connect scan - complete 3-way handshake                 |
|                  -sS                  |                 TCP SYN - only first step og the handshake                 |
|                  -sU                  |                                  UDP scan                                  |
|                  -F                   |                Fast mode - scans only 100 most common ports                |
|              -p\[range\]              |           Specify a range of port numbers `-p-` scans all ports            |
|                  -Pn                  |          Treat all hosts as online - scan hosts that appear down           |
|          *Service detection*          |                                                                            |
|                  -O                   |                                OS detection                                |
|                  -sV                  |                         Service version detection                          |
|                  -A                   |                 OS, version detection and other additions                  |
|               *Timing*                |                                                                            |
|                -T<0-5>                | Timing template - paranoid, sneaky, polite, normal, aggressive, and insane |
| --{min,max}-parallelism \<numprobes\> |                   Min and Max number of parallel probes                    |
|      --{min,max}-rate \<number\>      |                       Min and Max rate (packets/sec)                       |
|          *Real-time output*           |                                                                            |
|           -oN \<filename\>            |                               Normal output                                |
|           -oX \<filename\>            |                                 XML output                                 |
|           -oG \<filename\>            |                             `grep`-able output                             |
|   <center>-oA \<basename\></center>   |                <center>Output in all major formats</center>                |

**Does -sT by default** (no `sudo`)
