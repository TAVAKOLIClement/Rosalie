clear all; close all; clc;
%% HOW TO
%
%This file must be in the equivalent of /data/ folder, with images to
%process in: data/inputData/[number] and future ground truth folders will
%go in data/inputData_GT/[number]
%
%
% 1. Set the IMGDIR and IMGDIR_GT (imgdir is the original image, imgdir_gt is the ground truth image folder)
% 2. run
% 3. First image to process appears: click around the solar panel area (if many panels, go along the border of the image...)
% 4. When selection is over, double-click or directly right click. You can modify the area ask you wish.
% 5. Then Right-click>create mask. It will save the mask and skip to the next image.
% 
% 
% IF YOU START FROM THE MIDDLE OF THE IMAGE LIST: at every iteration is printed the number of the image which is processed. just initialize the for loop with the numer you stopped last time.

%% get list of images to process
IMGDIR='./inputData/3/';
IMGDIR_GT='./inputData_GT/3/';
ORIGINAL_K=1;

cd(IMGDIR)
a=dir('*.jpg*')



%% in all images
 for k=ORIGINAL_K:size(a)
     k
    Iname=a(k).name;
    image=imread(Iname);
    figure (1)
    imshow(a(k).name)
    mask = roipoly(image);
    figure (2)
    imshow(mask)
    cd '../..'
    cd(IMGDIR_GT);
    GTname=strcat(Iname(1:end-4),'_GT.jpg');
    size(mask);
    size(image);
    imwrite(mask,GTname);
    cd '../..'
    cd(IMGDIR)
 end