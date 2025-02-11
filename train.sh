#!/bin/bash

EPOCH_TIME=150
# OUT_DIR='./model_out'
OUT_DIR='./model_out_02'
CFG='configs/swin_tiny_patch4_window7_224_lite.yaml'
# DATA_DIR='/localdata/xiachengshun/code/Swin-Unet/datasets/Synapse'
DATA_DIR='/localdata/naixinw/datasets/synapse'
LEARNING_RATE=0.05
IMG_SIZE=224
BATCH_SIZE=24

echo "start train model"
python train.py --dataset Synapse --cfg $CFG --root_path $DATA_DIR --max_epochs $EPOCH_TIME --output_dir $OUT_DIR --img_size $IMG_SIZE --base_lr $LEARNING_RATE --batch_size $BATCH_SIZE
