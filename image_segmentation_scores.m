function [Accuracy, Sensitivity, Fmeasure, Precision, MCC, Dice, Jaccard] = image_segmentation_scores(A,B)
    % Copyright 2019 by Dang N. H. Thanh. Email: thanh.dnh.cs@gmail.com
    % You need to install the statistics and Image Processing toolboxes
    % ===================================================================
    % A and B are uint8 image. If logical image, need to convert to uint8.
    % A is the ground truth, B is the segmented result.
    [Accuracy, Sensitivity, Fmeasure, Precision, MCC] = confusion_components(A, B);
    Dice = dice(A, B);
    Jaccard = jaccard(A, B);
end

