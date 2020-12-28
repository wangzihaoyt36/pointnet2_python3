# TF1.2
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -lcudart -L /usr/local/cuda-8.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0

# TF1.4
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L/usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0

# TF1.13
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /home/bai/anaconda3/envs/tfgpu1-13/lib/python3.7/site-packages/tensorflow/include/ -I /usr/local/cuda-10.1/include -I /home/bai/anaconda3/envs/tfgpu1-13/lib/python3.7/site-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-10.1/lib64/ -L/home/bai/anaconda3/envs/tfgpu1-13/lib/python3.7/site-packages/tensorflow/  -ltensorflow_framework -O2 #-D_GLIBCXX_USE_CXX11_ABI=0 


#TF_INC=$(python3 -c 'import tensorflow as tf; print(tf.sysconfig.get_include())')
#TF_LIB=$(python3 -c 'import tensorflow as tf; print(tf.sysconfig.get_lib())')

#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I$TF_INC -I$TF_INC/external/nsync/public -lcudart -L /usr/local/cuda-10.0/lib64/ -L$TF_LIB  -ltensorflow_framework -O2 #-D_GLIBCXX_USE_CXX11_ABI=0 

TF_INC=$(shell python -c 'import tensorflow as tf; print(tf.sysconfig.get_include())')
TF_LIB=$(shell python -c 'import tensorflow as tf; print(tf.sysconfig.get_lib())')
CUDA_INC='/usr/local/cuda-10.1/include'
CUDA_LIB='/usr/local/cuda-10.1/lib64/'

g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -I $TF_INC -I $CUDA_INC -lcudart -L $CUDA_LIB -L $TF_LIB -ltensorflow_framework -shared -fPIC -O2 -D_GLIBCXX_USE_CXX11_ABI=0
