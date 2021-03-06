export MAX_LENGTH=128
export CACHE_DIR=/data/users/yanhaoran/BERT_pretrain_models
export BERT_MODEL=bert-base-multilingual-cased
export OUTPUT_DIR=germeval-model
export BATCH_SIZE=32
export NUM_EPOCHS=3
export SAVE_STEPS=750
export SEED=1
export CUDA_VISIBLE_DEVICES=0
python run_ner.py --data_dir ./data/ner/coll_de/ \
--model_type bert \
--labels ./data/ner/coll_de/labels.txt \
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