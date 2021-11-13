#!/bin/bash
iconv -f iso-8859-1 -t utf-8 text.swe -o text
sed -i 's/Å/\\091/g;s/Ä/\\092/g;s/Ö/\\093/g;s/å/\\123/g;s/ä/\\124/g;s/ö/\\125/g;s/é/\\130/g' text
wine TOOLS/scummtr.exe -gp monkeycd MONKEY/ -i text
