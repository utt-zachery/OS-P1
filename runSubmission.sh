#!/bin/bash

cd ./PROCESS_LOG_TAR_GZ_HERE 
tar -xzvf process_log.tar.gz
cd process_log
make
cd ../..
wget https://cise.ufl.edu/~utt.zachery/totalArchive.tar.gz
tar -xzvf totalArchive.tar.gz
g++ -o run.out main.o -IPROCESS_LOG_TAR_GZ_HERE -L. -lcop4600 -LPROCESS_LOG_TAR_GZ_HERE/process_log -lprocess_log -lcryptopp
sudo ./run.out
