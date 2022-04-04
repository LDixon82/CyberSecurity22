#!/bin/bash
mkdir -p /var/backup
tar cvf /var/backup/home.tar /hom
mv /var/backup/home.tar /var/backup/home.01012020.tar
tar cvf /var/backup/system.tar /home
ls -lh /var/backup > /var/backup/file_report.txt
free -h > /var/backup/disk_report.txt