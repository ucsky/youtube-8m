#!/bin/bash -e

if [ -z "$YT8M_ROOT" ];then
    echo "Please define YT8M_ROOT in env"
    exit 1
fi

pushd $YT8M_ROOT > /dev/null

python inference.py \
       --train_dir ~/yt8m/small_sample/models/video/small_sample  \
       --output_file=kaggle_solution.csv \
       --input_data_pattern=${HOME}/yt8m/small_sample/video/test*.tfrecord
#
popd > /dev/null
