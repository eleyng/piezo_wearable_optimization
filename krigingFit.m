c = zeros(1, 1000);
F = zeros(1, 1000);
d = zeros(1, 1000);
xTrain = zeros(1000,5);

for i=1:length(c)
    
    xTrain(i, 1) = 0.000101 + (0.0010358-0.000101) * hal(i, 1);
    xTrain(i, 2) = 0.2 + (5-0.2) * hal(i, 2);
    xTrain(i, 3) = 0.2 + (5-0.2) * hal(i, 3);
    xTrain(i, 4) = 0.01 + (0.5-0.01) * hal(i, 4);
    xTrain(i, 5) = 0.01 + (0.5-0.01) * hal(i, 5);
   
    output = objfun(xTrain(i,:));
    c(i) = output(1);
    F(i) = output(2);
    d(i) = output(3);
    disp(i)
    
end

% figure()
% plot(c,F, 'o')

regr = @regpoly0;
corr = @corrgauss;
theta0 = 0.1;
lob = 0.000001;
upb = 10;

[d_current, perf_current] = dacefit(xTrain, c', regr, corr, theta0, lob, upb);
[d_force, perf_force] = dacefit(xTrain, F', regr, corr, theta0, lob, upb);

save('Krig', 'd_current', 'd_force')