#!/usr/bin/env bash

echo '[+] Generating GFM version of the HTML doc'

find src -name "*.html" | while read input
do
  output=$(echo "${input%.*}.md" | sed s/^src/doc/)
  mkdir -p $(dirname "$output")

  echo " -  ${output}"

  pandoc -f html -t gfm "$input" -o "$output"
  gsed -i '/http[s]:\/\/.*\.html/! s/\.html/\.md/g' "$output"
done

echo '[+] Done'
