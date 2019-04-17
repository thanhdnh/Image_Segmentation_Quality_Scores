function [Accuracy, Sensitivity, Fmeasure, Precision, MCC, Dice, Jaccard] = EvaluateImageSegmentationScores(A, B)
    % Copyright 2019 by Dang N. H. Thanh. Email: thanh.dnh.cs@gmail.com
    % Visit my site: https://sites.google.com/view/crx/sdm
    % You need to install the statistics toolbox
    % ===================================================================
    % A and B need to be binary images
    % A is the ground truth, B is the segmented result.
    % MCC - Matthews correlation coefficient
    % Note: Sensitivity = Recall
    % TP - true positive, FP - false positive, 
    % TN - true negative, FN - false negative
    
    % If A, B are binary images, but uint8 (0, 255),
    % Need to convert to logical images.
    if(isa(A,'logical'))
        X = A;
    else
        X = imbinarize(A);
    end
    if(isa(B,'logical'))
        Y = B;
    else
        B = imbinarize(B);
    end
    
    % Evaluate TP, TN, FP, FN
    sumindex = X + Y;
    TP = length(find(sumindex == 2));
    TN = length(find(sumindex == 0));
    substractindex = X - Y;
    FP = length(find(substractindex == -1));
    FN = length(find(substractindex == 1));

    Accuracy = (TP+TN)/(FN+FP+TP+TN);
    Sensitivity = TP/(TP+FN);
    Precision = TP/(TP+FP);
    Fmeasure = 2*TP/(2*TP+FP+FN);
    MCC = (TP*TN-FP*FN)/sqrt((TP+FP)*(TP+FN)*(TN+FP)*(TN+FN));
    
    % If you use MATLAB2017b+, you can call: Dice = dice(A, B), but A, B
    % need to be converted to the logical form
    % If you use MATLAB2017b+, you can call: Jaccard = jaccard(A, B), but
    % A, B need to be converted to the logical form
    Dice = 2*TP/(2*TP+FP+FN);
    Jaccard = Dice/(2-Dice);
end