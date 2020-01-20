#!/bin/bash
curl -O https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt
curl -O https://raw.githubusercontent.com/gfwlist/tinylist/master/tinylist.txt
python3 gfwlist2surge.py -i gfwlist.txt -o gfwlist.list
python3 gfwlist2surge.py -i tinylist.txt -o tinylist.list
git add .
git commit -m "update"
git push -u origin master