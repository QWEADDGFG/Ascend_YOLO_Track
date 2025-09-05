#!/bin/bash
# chmod +x run_compile.sh
set -e  # 遇到错误立即退出

# 编译阶段
echo "[INFO] 开始编译源代码..."
cd ./build
cmake ..
make
echo "[INFO] 编译完成."

# (base) root@davinci-mini:/home/HwHiAiUser/gp/Ascend_YOLO_Track# chmod +x run_compile.sh
# (base) root@davinci-mini:/home/HwHiAiUser/gp/Ascend_YOLO_Track# ./run_compile.sh 
# [INFO] 开始编译源代码...
# -- The C compiler identification is GNU 11.3.0
# -- The CXX compiler identification is GNU 11.3.0
# -- Detecting C compiler ABI info
# -- Detecting C compiler ABI info - done
# -- Check for working C compiler: /usr/bin/cc - skipped
# -- Detecting C compile features
# -- Detecting C compile features - done
# -- Detecting CXX compiler ABI info
# -- Detecting CXX compiler ABI info - done
# -- Check for working CXX compiler: /usr/bin/c++ - skipped
# -- Detecting CXX compile features
# -- Detecting CXX compile features - done
# -- Found OpenCV: /usr/local (found version "4.5.4") 
# -- set INC_PATH: /usr/local/Ascend/ascend-toolkit/latest
# -- set LIB_PATH: /usr/local/Ascend/ascend-toolkit/latest/runtime/lib64/stub
# -- set THIRDPART: /usr/local/Ascend/ascend-toolkit/latest/thirdpart
# -- Configuring done
# -- Generating done
# -- Build files have been written to: /home/HwHiAiUser/gp/Ascend_YOLO_Track/build
# [ 12%] Building CXX object CMakeFiles/ByteTrack.dir/bytetrack.cpp.o
# [ 25%] Building CXX object CMakeFiles/ByteTrack.dir/src/BYTETracker.cpp.o
# [ 37%] Building CXX object CMakeFiles/ByteTrack.dir/src/STrack.cpp.o
# [ 50%] Building CXX object CMakeFiles/ByteTrack.dir/src/kalmanFilter.cpp.o
# [ 62%] Building CXX object CMakeFiles/ByteTrack.dir/src/lapjv.cpp.o
# [ 75%] Building CXX object CMakeFiles/ByteTrack.dir/src/utils.cpp.o
# [ 87%] Building CXX object CMakeFiles/ByteTrack.dir/src/yolov8.cpp.o
# [100%] Linking CXX executable ByteTrack
# [100%] Built target ByteTrack
# [INFO] 编译完成.