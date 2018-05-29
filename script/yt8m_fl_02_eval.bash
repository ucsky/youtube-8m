#!/bin/bash -e

if [ -z "$YT8M_ROOT" ];then
    echo "Please define YT8M_ROOT in env"
    exit 1
fi

model=small_sample
eval_data_pattern=${HOME}/yt8m/small_sample/frame/validate*.tfrecord
train_dir=~/yt8m/small_sample/models/frame/$model
pushd $YT8M_ROOT > /dev/null
#
python3 eval.py \
        --eval_data_pattern=$eval_data_pattern \
        --train_dir=$train_dir  \
        --run_once=True
#
popd > /dev/null
