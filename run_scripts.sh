#!/bin/bash

container="qvldns00 qvlgit00 qvldba00 qvlnag00 qvlweb00 qvljoo00 qvlwaf00 qvlwaf01 qvlhap00"
for CONTAINER in ${container}
do
   ./${CONTAINER}.sh
done
