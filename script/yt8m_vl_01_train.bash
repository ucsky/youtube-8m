#!/bin/bash -e

if [ -z "$YT8M_ROOT" ];then
    echo "Please define YT8M_ROOT in env"
    exit 1
fi
    
pushd $YT8M_ROOT > /dev/null

python3 train.py \
        --feature_names='mean_rgb,mean_audio' \
        --feature_sizes='1024,128' \
        --train_data_pattern=${HOME}/yt8m/small_sample/video/train*.tfrecord \
        --train_dir ~/yt8m/small_sample/models/video/small_sample \
        --start_new_model \
#
popd > /dev/null
