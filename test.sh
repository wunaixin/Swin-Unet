#!/bin/bash
EPOCH_TIME=150
OUT_DIR='./model_out'
CFG='configs/swin_tiny_patch4_window7_224_lite.yaml'
DATA_DIR='/localdata/dataset/Synapse_syn3193805_10285076'
LEARNING_RATE=0.05
IMG_SIZE=224
BATCH_SIZE=2

echo "start test model"
python test.py --dataset Synapse --cfg $CFG --is_saveni --volume_path $DATA_DIR --max_epochs $EPOCH_TIME --output_dir $OUT_DIR --img_size $IMG_SIZE --base_lr $LEARNING_RATE --batch_size $BATCH_SIZE
