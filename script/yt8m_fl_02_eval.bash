#!/bin/bash -e

if [ -z "$YT8M_ROOT" ];then
    echo "Please define YT8M_ROOT in env"
    exit 1
fi

pushd $YT8M_ROOT > /dev/null
#
python3 eval.py \
        --eval_data_pattern=${HOME}/yt8m/frame/validate*.tfrecord \
        --train_dir ~/yt8m/v2/models/frame/sample_model \
#
popd > /dev/null
