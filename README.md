# Image_Segmentation_Quality_Scores
Let you evaluate the image segmentation quality scores, such TP, FP, TN, FN, Accuracy, Sensitivity, Precision, MCC, Dice, Jaccard

Copyright 2019 by Dang N. H. Thanh. Email: thanh.dnh.cs@gmail.com
You need to install the statistics and Image Processing toolboxes

# HOW TO USE:
1. Launch two images: a ground truth segmentation image and a acquired segmented image
A = imread('groundtruth.png');
B = imread('segmented.png');
2. If you only want to evaluate Accuracy, Sensitivity, Precision and MCC:

[Accuracy, Sensitivity, Fmeasure, Precision, MCC] = confusion_components(A, B);

3. If you want to evaluate all scores:

[Accuracy, Sensitivity, Fmeasure, Precision, MCC, Dice, Jaccard] = image_segmentation_scores(A,B)
