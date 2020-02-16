cat NER-de-train.tsv | grep -v "^#" | cut -f 2,3 | tr '\t' ' ' > train.txt.tmp
cat NER-de-dev.tsv | grep -v "^#" | cut -f 2,3 | tr '\t' ' ' > dev.txt.tmp
cat NER-de-test.tsv | grep -v "^#" | cut -f 2,3 | tr '\t' ' ' > test.txt.tmp
export MAX_LENGTH=128
export BERT_MODEL=bert-base-multilingual-cased
python preprocess.py train.txt.tmp $BERT_MODEL $MAX_LENGTH > train.txt
python preprocess.py dev.txt.tmp $BERT_MODEL $MAX_LENGTH > dev.txt
python preprocess.py test.txt.tmp $BERT_MODEL $MAX_LENGTH > test.txt
cat train.txt dev.txt test.txt | cut -d " " -f 2 | grep -v "^$"| sort | uniq > labels.txt

