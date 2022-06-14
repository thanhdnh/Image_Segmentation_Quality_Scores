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

# Please cite the following papers:

Thanh, Dang N. H., et al. (2020), “Melanoma Skin Cancer Detection Method Based on Adaptive Principal Curvature, Colour Normalisation and Feature Extraction with the ABCD Rule.” Journal of Digital Imaging, vol. 33, no. 3, pp. 574–85, doi:10.1007/s10278-019-00316-x.

Thanh, Dang N. H., et al. (2021), “Skin Lesion Segmentation Method for Dermoscopic Images with Convolutional Neural Networks and Semantic Segmentation.” Computer Optics, vol. 45, no. 1, pp. 122–29, doi:10.18287/2412-6179-co-748.

Thanh, Dang N. H., et al. (2021), “Dermoscopic Image Segmentation Method Based on Convolutional Neural Networks.” International Journal of Computer Applications in Technology, vol. 66, no. 2, p. 89, doi:10.1504/ijcat.2021.10043447.
