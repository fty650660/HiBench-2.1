# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash

echo "========== preparing dfsioe data =========="
# configure
DIR=`dirname "$0"`
. ${DIR}/../funcs.sh
configure ${DIR}

# path check
$HADOOP_HOME/bin/hadoop dfs -rmr /benchmarks/TestDFSIO-Enh

# generate data
${HADOOP_HOME}/bin/hadoop jar ${DIR}/dfsioe.jar org.apache.hadoop.fs.dfsioe.TestDFSIOEnh -write -skipAnalyze -nrFiles ${RD_NUM_OF_FILES} -fileSize ${RD_FILE_SIZE} -bufferSize 4096              

