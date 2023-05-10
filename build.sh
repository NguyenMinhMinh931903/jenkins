#!/bin/bash
# Xóa các file đã biên dịch trước đó (nếu có)
rm -rf build

# Tạo thư mục build và điều hướng đến thư mục đó
mkdir build
cd build

# copy file
#cp ../CmakeList.txt .
#cp ../hello.h .
#cp ../hello.cpp .
#cp ../main.h .

# Tạo file Makefile từ file CMakeLists.txt
if ! cmake ..; then
   echo "CMake faild to generate Makefile"
   exit 1
fi

# Biên dịch chương trình
if ! make; then
   echo"failed to build the program"
   exit 1
fi

# Chạy chương trình
#./hello

#!/bin/bash
#rm -r $PWD
