#!/bin/bash
curl -O https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
curl -O https://raw.githubusercontent.com/gfwlist/tinylist/master/tinylist.txt
python gfwlist2surge.py -i gfwlist.txt -o gfwlist.list
python gfwlist2surge.py -i tinylist.txt -o tinylist.list
git add .
git commit -m "update"
git push -u origin master