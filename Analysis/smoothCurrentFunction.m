function [xhat yhat zhat] = smoothCurrentFunction(X,Y,Z)

lims=[min(X) max(X);
      min(Y) max(Y)];
% N=length(X);

k=50;
[xhat,yhat]=ndgrid(linspace(lims(1,1),lims(1,2),k),...
                   linspace(lims(2,1),lims(2,2),k));
zhat=0*xhat;
for i=1:numel(xhat)
    zhat(i)=smoothPredict3DCurrent(X,Y,Z,xhat(i),yhat(i));
end

%plot3(X,Y,Z,'.')
