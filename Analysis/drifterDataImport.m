function [platID obsTime obsLat obsLong sst ewCurrent nsCurrent eLat eLong expNum wmo drogue] ...
    = drifterDataImport(path)
%Read in data
[platID,obsTime,obsLat,obsLong,sst,ewCurrent,nsCurrent,eLat,eLong,expNum,wmo,drogue] = ...
textread(path, '%d %s %f %f %f %f %f %f %f %d %d %d', 'delimiter', ',', 'headerlines', 15);
obsTime=datenum(obsTime);
%obsTime=arrayfun(datenum,obsTime);
%obsTime freaks out the rest of the matrix for some reason???