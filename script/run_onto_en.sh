export MAX_LENGTH=256
export CACHE_DIR=/data/users/yanhaoran/BERT_pretrain_models
export BERT_MODEL=bert-base-uncased
export OUTPUT_DIR=onto_en_bert-base-uncased
export BATCH_SIZE=64
export NUM_EPOCHS=10
export SAVE_STEPS=750
export SEED=1
export CUDA_VISIBLE_DEVICES=1
python run_ner.py --data_dir ./data/ner/onto_en/ \
--model_type bert \
--labels ./data/ner/onto_en/labels.txt \
--model_name_or_path $BERT_MODEL \
--cache_dir $CACHE_DIR\
--output_dir exp_result/$OUTPUT_DIR \
--max_seq_length  $MAX_LENGTH \
--num_train_epochs $NUM_EPOCHS \
--per_gpu_train_batch_size $BATCH_SIZE \
--save_steps $SAVE_STEPS \
--seed $SEED \
--fp16 \
--do_train \
--do_eval \
--do_predict