% arc2007fullname=which('../Data/2007_k_arc.csv');
% arc2007 = importdata(arc2007fullname);
% vars = fieldnames(arc2007);
% for i = 1:length(arc2007)
%     assignin('base', vars{i}, arc2007.(vars{i}));
% end
arc2007drogues=arc2007(1:length(arc2007),10);
[droguefit,dev,droguestats]=glmfit(arc2007,arc2007drogues,'poisson');
droguestats
droguefit
%[b,dev,stats] = glmfit(X,y,distr)
% x = [2100 2300 2500 2700 2900 3100 3300 3500 3700 3900 4100 4300]';
% n = [48 42 31 34 31 21 23 23 21 16 17 21]';
% y = [1 2 0 3 8 8 14 17 19 15 17 21]';
% b = glmfit(x,[y n],'poisson','link','probit');
% yfit = glmval(b, x,'probit','size', n);
% plot(x, y./n,'o',x,yfit./n,'-','LineWidth',2)
