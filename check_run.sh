#!/bin/bash

while read line
do
    echo $line
    ssh -n -q root@$line 'ps aux | grep -v grep | grep load_updater'
done<server_list.txt