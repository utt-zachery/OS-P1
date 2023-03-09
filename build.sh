cd TAR_GZ_HERE
tar -xzvf process_log.tar.gz
cd process_log
make
cp libprocess_log.a ../libprocess_log.a
cd ..
ar x libprocess_log.a
g++ -shared -o libproclog.so *.o 
cp libproclog.so ../libproclog.so

cd ..
g++ -c src/Connector.cpp -I./TAR_GZ_HERE/process_log -I./include
g++ -shared -o libconnector.so Connector.o

chmod +x ./runTest.out
sudo ./runTest.out
