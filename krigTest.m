xTrain = [fVals(:,1), fVals(:,2)];
yTrain = fVals(:,3);

% regr = @regpoly0;
% corr = @corrgauss;
% theta0 = 0.1;
% lob = 0.000001;
% upb = 10;
% 
% [d_pareto, perf_current] = dacefit(xTrain, yTrain, regr, corr, theta0, lob, upb);
% 
% xTest = gridsamp([-0.0005 0; 0 300], 30);
% yTest = predictor(xTest, d_pareto);
% 
% X1 = reshape(xTest(:,1),30,30);
% X2 = reshape(xTest(:,2),30,30);
% Y = reshape(yTest, size(X1));
% 
% mesh(X1, X2, Y)