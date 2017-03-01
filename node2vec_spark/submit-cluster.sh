#!/usr/bin/env bash
gcloud dataproc jobs submit spark --cluster shuyi-spark \
    --class com.navercorp.Main \
    --jars ./target/node2vec-0.0.1-SNAPSHOT.jar \
    --cmd node2vec --p 100.0 --q 100.0 --walkLength 40 \
    --indexed false --rddPartition 1000 --dim 3 \
    --input gs://friend_recommendation/node2vec/friend_link_us_20170219/ \
    --output gs://shuyi/node2vec_result
