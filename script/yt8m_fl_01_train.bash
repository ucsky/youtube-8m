#!/bin/bash -e

if [ -z "$YT8M_ROOT" ];then
    echo "Please define YT8M_ROOT in env"
    exit 1
fi
    
pushd $YT8M_ROOT > /dev/null

python3 train.py \
        --frame_features \
        --model=FrameLevelLogisticModel \
        --feature_names='rgb,audio' \
        --feature_sizes='1024,128' \
        --train_data_pattern=${HOME}/yt8m/frame/train*.tfrecord \
        --train_dir ~/yt8m/models/frame/sample_model \
        --start_new_model

#
popd > /dev/null
