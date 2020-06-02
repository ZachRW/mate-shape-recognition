# CMake generated Testfile for 
# Source directory: /Users/admin/Downloads/opencv-4.0.1/modules/flann
# Build directory: /Users/admin/Downloads/opencv-4.0.1/build/modules/flann
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_flann "/Users/admin/Downloads/opencv-4.0.1/build/bin/opencv_test_flann" "--gtest_output=xml:opencv_test_flann.xml")
set_tests_properties(opencv_test_flann PROPERTIES  LABELS "Main;opencv_flann;Accuracy" WORKING_DIRECTORY "/Users/admin/Downloads/opencv-4.0.1/build/test-reports/accuracy")
