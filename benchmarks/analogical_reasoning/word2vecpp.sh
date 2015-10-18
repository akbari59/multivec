#!/bin/bash

# run from the root directory of the project
filename=`mktemp`
bin/word2vecpp --train data/news.en --save-embeddings $filename $@
bin/compute-accuracy $filename 0 < data/questions-words.txt | tail -n3 | head -n2