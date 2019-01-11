# Semantic Segmentation
### Introduction
In this project, you'll label the pixels of a road in images using a Fully Convolutional Network (FCN).

### Setup
##### Frameworks and Packages
 - [CUDA 9.0](https://developer.nvidia.com/cuda-90-download-archive?target_os=Windows&target_arch=x86_64)
 - [cuDNN v7.4.1 for CUDA 9.0](https://developer.nvidia.com/compute/machine-learning/cudnn/secure/v7.4.1.5/prod/9.0_20181108/cudnn-9.0-windows10-x64-v7.4.1.5.zip)
 - [Tensorflow-gpu](https://www.tensorflow.org/)

##### Dataset
Download the [Kitti Road dataset](http://www.cvlibs.net/datasets/kitti/eval_road.php) from [here](http://www.cvlibs.net/download.php?file=data_road.zip).  Extract the dataset in the `data` folder.  This will create the folder `data_road` with all the training a test images.

### Start
##### Run
Run the following command to run the project:
```
python main.py
```
