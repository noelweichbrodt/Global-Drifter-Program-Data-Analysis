function sst = drifterDataExtractCleanSortSST(path)
[platID obsTime obsLat obsLong sst ewCurrent ... 
    nsCurrent eLat eLong expNum wmo drogue] = ... 
    drifterDataImport(path);
data = [platID obsTime obsLat obsLong sst ...
    ewCurrent nsCurrent eLat eLong expNum wmo drogue];
dataClean = drifterDataClean(data);
dataDOn=dataClean(logical(~drogueClean),:);
dataSorted = sortrows(dataDOn,2);
sst = dataSorted(:,5);