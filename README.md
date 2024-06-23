# ORB-SLAM3
We have tested the library in **Ubuntu 16.04** and **18.04**, but it should be easy to compile in other platforms. A powerful computer (e.g. i7) will ensure real-time performance and provide more stable and accurate results.

## C++11 or C++0x Compiler
We use the new thread and chrono functionalities of C++11.

## Pangolin
We use [Pangolin](https://github.com/AlphaGotReal/Pangolin) for visualization and user interface. Perform the following steps to set it up
```zsh
git clone --recursive https://github.com/AlphaGotReal/Pangolin.git
cd Pangolin
git checkout version0.6
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
sudo make install
```

## OpenCV
We use [OpenCV](http://opencv.org) to manipulate images and features. **Required at leat 3.0. Tested with OpenCV 3.2.0 and 4.4.0**.

### Build using apt
```zsh
sudo apt install libopencv-dev
```

### Build from source
```zsh
git clone https://github.com/opencv/opencv.git
cd opencv
git checkout 4.4.0
mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=Release -D WITH_CUDA=OFF -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j4
sudo make install
```

## Eigen3
Required by g2o (see below). **Required at least 3.1.0**.

### Installing using apt
```zsh
sudo apt install libeigen3-dev
```

## Sophus
```zsh
git clone git@github.com:NavIQLabs/ORB_SLAM3.git --recursive
cd ORB_SLAM3/Thirdparty/Sophus
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
sudo make install
```

## DBoW2 and g2o (Included in Thirdparty folder)
We use modified versions of the [DBoW2](https://github.com/dorian3d/DBoW2) library to perform place recognition and [g2o](https://github.com/RainerKuemmerle/g2o) library to perform non-linear optimizations. Both modified libraries (which are BSD) are included in the *Thirdparty* folder.
```zsh
cd Thirdparty/DBoW2
mkdir build 
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
```
```zsh
cd Thirdparty/g2o
mkdir build 
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j4
```

## Build ORB SLAM3

```zsh
cd ORB_SLAM3
mkdir build && cd build
mkdir build 
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-w"
make -j4
```

