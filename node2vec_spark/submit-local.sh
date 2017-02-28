#!/usr/bin/env bash
spark-submit --master spark://Shuyi-MBP15-Ubuntu:7077 \
             --class com.navercorp.Main \
             ./target/node2vec-0.0.1-SNAPSHOT.jar \
             --cmd node2vec --p 100.0 --q 100.0 --walkLength 40 \
             --input /home/sdjksdafji/SampleData/node2vecTraining --output ./output
