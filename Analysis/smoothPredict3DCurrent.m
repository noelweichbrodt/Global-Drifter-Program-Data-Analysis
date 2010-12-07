function zhat = smoothPredict3DCurrent(X,Y,Z,xhat,yhat)
% Normalized Gaussian kernel
dxy = (X-xhat).^2 + (Y-yhat).^2;
sigma = 2000; %Width needed for smoothCurrent.m, may need adjusting
A=1/sigma;
%K = max(0, exp(-dxy*A));
K = exp(-dxy*A);
if sum(K)<0.1
    zhat = NaN;
    return
else
    K=K./sum(K);
    zhat = K*Z';
end