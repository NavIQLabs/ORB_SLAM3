cd Thirdparty/Pangolin

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
sudo make install

cd ../../opencv

mkdir build
cd build
cmake cmake -D CMAKE_BUILD_TYPE=Release \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D WITH_CUDA=OFF \
      ..
make -j6
sudo make install

cd ../../DBoW2

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
sudo make install

cd ../../g2o

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
sudo make install

cd ../../Sophus

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
sudo make install

cd ../../../

cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
sudo make install
