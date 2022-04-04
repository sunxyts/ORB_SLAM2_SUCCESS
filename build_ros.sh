echo "Building ROS nodes"

cd Examples/ROS/ORB_SLAM2

WORK_DIR=`pwd`
echo ${WORK_DIR}
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:${WORK_DIR}

mkdir build
cd build
cmake .. -DROS_BUILD_TYPE=Release
make -j10
