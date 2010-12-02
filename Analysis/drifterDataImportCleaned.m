function [platID obsLat obsLong sst ewCurrent nsCurrent eLat eLong expNum wmo drogue] = drifterDataImportCleaned(path)
%Read in data
[platID,obsTime,obsLat,obsLong,sst,ewCurrent,nsCurrent,eLat,eLong,expNum,wmo,drogue] = ...
textread('Data/2007_k_arc.csv', '%d %s %f %f %f %f %f %f %f %d %d %d', 'delimiter', ',', 'headerlines', 15);
%obsTime freaks out the rest of the matrix for some reason???
data = [platID obsLat obsLong sst ewCurrent nsCurrent eLat eLong expNum wmo drogue];

%Clean up data using list-wise deletion.
[cleanrow cleancol] = find(arc2007==999.9999);
data(cleanrow,:) = [];
