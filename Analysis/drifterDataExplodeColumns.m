function [platID obsTime obsLat obsLong sst ewCurrent nsCurrent eLat eLong expNum wmo drogue] = ...
    drifterDataExplodeColumns(data)
platID=data(:,1);
obsTime=data(:,2);
obsLat=data(:,3);
obsLong=data(:,4);
sst=data(:,5);
ewCurrent=data(:,6);
nsCurrent=data(:,7);
eLat=data(:,8);
eLong=data(:,9);
expNum=data(:,10);
wmo=data(:,11);
drogue=data(:,12);