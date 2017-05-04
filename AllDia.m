load('fVals0003.mat')
fVals3 = fVals;
d3 = 0.0003 + zeros(length(fVals3(:,1)), 1);

load('fVals0006.mat')
fVals6 = fVals;
d6 = 0.0006 + zeros(length(fVals6(:,1)), 1);

load('fVals0009.mat')
fVals9 = fVals;
d9 = 0.0009 + zeros(length(fVals9(:,1)), 1);

load('fVals0001.mat')
fVals1 = fVals;
d1 = 0.0001 + zeros(length(fVals1(:,1)), 1);

load('fVals0005.mat')
fVals5 = fVals;
d5 = 0.0005 + zeros(length(fVals5(:,1)), 1);

load('fVals0007.mat')
fVals7 = fVals;
d7 = 0.0007 + zeros(length(fVals7(:,1)), 1);

load('fVals0002.mat')
fVals2 = fVals;
d2 = 0.0002 + zeros(length(fVals2(:,1)), 1);

load('fVals0004.mat')
fVals4 = fVals;
d4 = 0.0004 + zeros(length(fVals4(:,1)), 1);

load('fVals0008.mat')
fVals8 = fVals;
d8 = 0.0008 + zeros(length(fVals8(:,1)), 1);

% figure()
% hold on
% plot3(d3, fVals3(:,1), fVals3(:,2), 'ro')
% plot3(d6, fVals6(:,1), fVals6(:,2), 'bo')
% plot3(d9, fVals9(:,1), fVals9(:,2), 'ko')
% axis([0 0.001 -4.5e-4 -2e-4 0 160])

xTrain = [fVals1(:,2), d1; fVals3(:,2), d3; fVals5(:,2), d5; fVals6(:,2), d6; fVals7(:,2), d7; fVals9(:,2), d9];
yTrain = [fVals1(:,1); fVals3(:,1); fVals5(:,1); fVals6(:,1); fVals7(:,1); fVals9(:,1)];

regr = @regpoly0;
corr = @corrgauss;
theta0 = 0.1;
lob = 0.000001;
upb = 10;



% current
y = [fVals1(:,1); fVals2(:,1); fVals3(:,1); fVals4(:,1); fVals5(:,1); fVals6(:,1); fVals7(:,1); fVals8(:,1); fVals9(:,1)];

% force
z = [fVals1(:,2); fVals2(:,2); fVals3(:,2); fVals4(:,2); fVals5(:,2); fVals6(:,2); fVals7(:,2); fVals8(:,2); fVals9(:,2)];

% d
x = [d1; d2; d3; d4; d5; d6; d7; d8; d9];

figure()
hold on
plot3(x, y, z, 'ko')

[xq, yq] = meshgrid(0.0001:0.00001:0.0009 ,-4.5e-4:1e-6:-2e-4);
vq = griddata(x,y,z,xq,yq);
mesh(xq, yq, vq)

title('Pareto Surface')
xlabel('Warp Thread Diameter [m]')
ylabel('Total Current [A]')
zlabel('Required Force [N]')
grid on