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

Thanh, D. N. H., et al. “BLOOD VESSELS SEGMENTATION METHOD FOR RETINAL FUNDUS IMAGES BASED ON ADAPTIVE PRINCIPAL CURVATURE AND IMAGE DERIVATIVE OPERATORS.” ISPRS - International Archives of the Photogrammetry, Remote Sensing and Spatial Information Sciences, vol. XLII-2/W12, Copernicus GmbH, May 2019, pp. 211–18, doi:10.5194/isprs-archives-xlii-2-w12-211-2019.

Thanh, Dang N. H., et al. “A Skin Lesion Segmentation Method for Dermoscopic Images Based on Adaptive Thresholding with Normalization of Color Models.” 2019 6th International Conference on Electrical and Electronics Engineering (ICEEE), IEEE, 2019, doi:10.1109/iceee2019.2019.00030.

Thanh, Dang N. H., et al. “Melanoma Skin Cancer Detection Method Based on Adaptive Principal Curvature, Colour Normalisation and Feature Extraction with the ABCD Rule.” Journal of Digital Imaging, Springer Science and Business Media LLC, Dec. 2019, doi:10.1007/s10278-019-00316-x.
