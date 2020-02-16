export MAX_LENGTH=128
export BERT_MODEL=bert-base-uncased
export OUTPUT_DIR=coll_en_bert-base-uncased
export BATCH_SIZE=32
export NUM_EPOCHS=3
export SAVE_STEPS=750
export SEED=1
export CUDA_VISIBLE_DEVICES=1
python run_ner.py --data_dir ./data/ner/onto_en/ \
--model_type bert \
--labels ./data/ner/onto_en/labels.txt \
--model_name_or_path $BERT_MODEL \
--output_dir $OUTPUT_DIR \
--max_seq_length  $MAX_LENGTH \
--num_train_epochs $NUM_EPOCHS \
--per_gpu_train_batch_size $BATCH_SIZE \
--save_steps $SAVE_STEPS \
--seed $SEED \
--fp16 \
--do_train \
--do_eval \
--do_predict