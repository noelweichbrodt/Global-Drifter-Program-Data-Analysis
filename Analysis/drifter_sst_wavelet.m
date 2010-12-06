%Read in data
arc1988sst = drifterDataExtractCleanSortSST('Data/1988_k_arc.csv');
arc1991sst = drifterDataExtractCleanSortSST('Data/1991_k_arc.csv');
arc1992sst = drifterDataExtractCleanSortSST('Data/1992_k_arc.csv');
arc1993sst = drifterDataExtractCleanSortSST('Data/1993_k_arc.csv');
arc1994sst = drifterDataExtractCleanSortSST('Data/1994_k_arc.csv');
arc1995sst = drifterDataExtractCleanSortSST('Data/1995_k_arc.csv');
arc1996sst = drifterDataExtractCleanSortSST('Data/1996_k_arc.csv');
arc1997sst = drifterDataExtractCleanSortSST('Data/1997_k_arc.csv');
arc1998sst = drifterDataExtractCleanSortSST('Data/1998_k_arc.csv');
arc1999sst = drifterDataExtractCleanSortSST('Data/1999_k_arc.csv');
arc2000sst = drifterDataExtractCleanSortSST('Data/2000_k_arc.csv');
arc2001sst = drifterDataExtractCleanSortSST('Data/2001_k_arc.csv');
arc2002sst = drifterDataExtractCleanSortSST('Data/2002_k_arc.csv');
arc2003sst = drifterDataExtractCleanSortSST('Data/2003_k_arc.csv');
arc2004sst = drifterDataExtractCleanSortSST('Data/2004_k_arc.csv');
arc2005sst = drifterDataExtractCleanSortSST('Data/2005_k_arc.csv');
arc2006sst = drifterDataExtractCleanSortSST('Data/2006_k_arc.csv');
arc2007sst = drifterDataExtractCleanSortSST('Data/2007_k_arc.csv');

arcsst = [arc1988sst' arc1991sst' arc1992sst' arc1993sst' arc1994sst' ...
    arc1995sst' arc1996sst' arc1997sst' arc1998sst' arc1999sst' ...
    arc2000sst' arc2001sst' arc2002sst' arc2003sst' arc2004sst' arc2005sst'...
    arc2006sst' arc2007sst'];

%wavelet decomposition

arcsstpower=sum(arcsst)^2;

arcSSTDbcoeff=zeros(length(arcsst),45);
arcSSTDbdetail=zeros(length(arcsst),45);
arcSSTDbPower=[0];
for i=1:45
    [coeff,details] = wavedec(arcsst,i,['db' int2str(i)]);
    arcSSTDbcoeff(1:length(coeff),i)=coeff;
    arcSSTDbdetail(1:length(details),i)=details;
    arcSSTDbPower(i)=sum(coeff)^2/arcsstpower;
end

arcSSTDMeycoeff=zeros(length(arcsst),6);
arcSSTDMeydetail=zeros(length(arcsst),6);
arcSSTMeyPower=[0];
for i=1:6
    [coeff,details] = wavedec(arcsst,i,'dmey');
    arcSSTDMeycoeff(1:length(coeff),i)=coeff;
    arcSSTDMeydetail(1:length(details),i)=details;
    arcSSTMeyPower(i)=sum(coeff)^2/arcsstpower;
end

arcSSTSSymcoeff=zeros(length(arcsst),45);
arcSSTSSymdetail=zeros(length(arcsst),45);
arcSSTSymPower=[0];
for i=1:45
    [coeff,details] = wavedec(arcsst,i,['sym' int2str(i)]);
    arcSSTSSymcoeff(1:length(coeff),i)=coeff;
    arcSSTSSymdetail(1:length(details),i)=details;
    arcSSTSymPower(i)=sum(coeff)^2/arcsstpower;
end

arcSSTCoiefCoeff=zeros(length(arcsst),5);
arcSSTSCoifDetail=zeros(length(arcsst),5);
arcSSTCoifPower=[0];
for i=1:5
    [coeff,details] = wavedec(arcsst,i,['coif' int2str(i)]);
    arcSSTCoiefCoeff(1:length(coeff),i)=coeff;
    arcSSTSCoifDetail(1:length(details),i)=details;
    arcSSTCoifPower(i)=sum(coeff)^2/arcsstpower;
end

%visualization

plot(arcsst);
xlabel('Observation Time')
ylabel('SST')
title('1998-2007 Arctic SST Observations') 
print -dpng 'Visualizations/arcSST.png'

plot(arcSSTDbPower,'go-');
hold on;
plot(arcSSTMeyPower,'ro-');
hold on;
plot(arcSSTSymPower,'yo-');
hold on;
plot(arcSSTCoifPower,'bo-');
xlabel('Wavelet level')
ylabel('Power')
title('1998-2007 Arctic SST Power for multiple wavelet types at multiple levels') 
print -dpng 'Visualizations/waveletPower.png'

