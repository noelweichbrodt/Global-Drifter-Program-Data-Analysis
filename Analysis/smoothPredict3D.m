function zhat = smoothPredict3D(X,Y,Z,xhat,yhat)

% %Linear regression (planar)
% k = size(X,2);
% c = Z/[ones(1, k); X; Y];
% zhat=c(1)+c(2)*xhat+c(3)*yhat;


% %30 nearest neighbors
% k=size(xhat, 2);
% N=30;
% zhat = zeros(k);
% 
% for i=1:k
%    diffs = sqrt((X-xhat).^2 + (Y-yhat).^2);
%    [D I] = sort(diffs);
%    zhat=mean(Z(I(1:30)));
% end


% % Weighted linear kernel
% dxy = (X-xhat).^2 + (Y-yhat).^2;
% sigma=0.01
% A=1/sigma;
% K = exp(-dxy*A);
% if sum(K)<0.1
%     zhat = NaN;
%     return
% else
%     K=K./sum(K);
%     c=Z.*K/[K;X.*K;K.*Y];
%     zhat = c(1)+c(2)*xhat+c(3)*yhat;
% end


% Gaussian kernel
% dxy = [0.5 - xhat; 0.5 - yhat];
% sigma = [0.01 1;1 0.01];
% A=1./sigma;
% K = exp(sum(-dxy.*(A*dxy),1));
% zhat = sum(K);


% Normalized Gaussian kernel
dxy = (X-xhat).^2 + (Y-yhat).^2;
% sigma=0.01; %Width needed for smoothing3D.m
%sigma=40; %Width needed for smoothTrees3D.m
sigma = 2000; %Width needed for smoothCurrent.m
A=1/sigma;
% K = max(0, exp(-dxy*A));
K = exp(-dxy*A);
if sum(K)<0.1
    zhat = NaN;
    return
else
    K=K./sum(K);
    zhat = K*Z';
end