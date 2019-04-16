function [Accuracy, Sensitivity, Fmeasure, Precision, MCC] = confusion_components(A, B)
    % Copyright 2019 by Dang N. H. Thanh. Email: thanh.dnh.cs@gmail.com
    % You need to install the statistics toolbox
    % ===================================================================
    % A and B are uint8 image. If logical image, need to convert to uint8.
    % A is the ground truth, B is the segmented result.
    % MCC - Matthews correlation coefficient
    %Note: Sensitivity = Recall
    %TP - true positive, FP - false positive, 
    %TN - true negative, FN - false negative
    
    [~, ~, ~, T] = confusion(A, B);
    FN = sum(T(:,1));
    FP = sum(T(:,2));
    TP = sum(T(:,3));
    TN = sum(T(:,4));
    Accuracy = (TP+TN)/(FN+FP+TP+TN);
    Sensitivity = TP/(TP+FN);
    Precision = TP/(TP+FP);
    Fmeasure = 2*TP/(2*TP+FP+FN);
    MCC = (TP*TN-FP*FN)/sqrt((TP+FP)*(TP+FN)*(TN+FP)*(TN+FN));
end