# Image Segmentation Quality Scores
Let you evaluate the image segmentation quality scores, such TP, FP, TN, FN, Accuracy, Sensitivity, Precision, MCC, Dice, Jaccard

Copyright 2019 by Dang N. H. Thanh. Email: thanh.dnh.cs@gmail.com
You need to install the statistics and Image Processing toolboxes

For the full reference of the scores, you can read here https://en.wikipedia.org/wiki/Precision_and_recall#Recall

# HOW TO USE:
1. Launch two images: a ground truth segmentation image and a acquired segmented image
A = imread('groundtruth.png');
B = imread('segmented.png');
2. If you want to evaluate all scores:

`[Accuracy, Sensitivity, Fmeasure, Precision, MCC, Dice, Jaccard] = EvaluateImageSegmentationScores(A, B)`
