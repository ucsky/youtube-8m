#!/bin/bash -e

if [ -z "$YT8M_ROOT" ];then
    echo "Please define YT8M_ROOT in env"
    exit 1
fi

pushd $YT8M_ROOT > /dev/null
model=small_sample
train_dir=~/yt8m/small_sample/models/frame/$model
input_data_pattern=${HOME}/yt8m/small_sample/frame/test*.tfrecord
python inference.py \
       --train_dir=$train_dir \
       --output_file=kaggle_solution.csv \
       --input_data_pattern=$input_data_pattern
#
popd > /dev/null
