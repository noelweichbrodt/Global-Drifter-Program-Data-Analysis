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
max_level=21;

arcSSTDbcoeff=zeros(length(arcsst),max_level);
arcSSTDbdetail=zeros(length(arcsst),max_level);
arcSSTDbPower=[0];
for i=1:max_level
    [coeff,details] = wavedec(arcsst,i,['db' int2str(i)]);
    arcSSTDbcoeff(1:length(coeff),i)=coeff;
    arcSSTDbdetail(1:length(details),i)=details;
    arcSSTDbPower(i)=sum(coeff)^2/arcsstpower;
end

'end of db'

arcSSTDMeycoeff=zeros(length(arcsst),6);
arcSSTDMeydetail=zeros(length(arcsst),6);
arcSSTMeyPower=[0];
for i=1:6
    [coeff,details] = wavedec(arcsst,i,'dmey');
    arcSSTDMeycoeff(1:length(coeff),i)=coeff;
    arcSSTDMeydetail(1:length(details),i)=details;
    arcSSTMeyPower(i)=sum(coeff)^2/arcsstpower;
end

'end of mey'

arcSSTSSymcoeff=zeros(length(arcsst),max_level);
arcSSTSSymdetail=zeros(length(arcsst),max_level);
arcSSTSymPower=[0];
for i=1:max_level
    [coeff,details] = wavedec(arcsst,i,['sym' int2str(i)]);
    arcSSTSSymcoeff(1:length(coeff),i)=coeff;
    arcSSTSSymdetail(1:length(details),i)=details;
    arcSSTSymPower(i)=sum(coeff)^2/arcsstpower;
end

'end of sym'

arcSSTCoiefCoeff=zeros(length(arcsst),5);
arcSSTSCoifDetail=zeros(length(arcsst),5);
arcSSTCoifPower=[0];
for i=1:5
    [coeff,details] = wavedec(arcsst,i,['coif' int2str(i)]);
    arcSSTCoiefCoeff(1:length(coeff),i)=coeff;
    arcSSTSCoifDetail(1:length(details),i)=details;
    arcSSTCoifPower(i)=sum(coeff)^2/arcsstpower;
end

'end of coif'

arcSSTProcessedMey70kCoeff=zeros(70000,6);
arcSSTProcessedMey70kPower=[0];
for i=1:6
    foo=load(['Data/arcSSTProcessedMey70kL' int2str(i) '.mat'],'ydata');
    arcSSTProcessedMey70kCoeff(1:length(foo.ydata),i)=foo.ydata;
    arcSSTProcessedMey70kPower(i)=sum(foo.ydata)^2/arcsstpower;
end

arcSSTProcessedMey32kCoeff=zeros(32768,6);
arcSSTProcessedMey32kPower=[0];
for i=1:2
    foo=load(['Data/arcSSTProcessedMey32kL' int2str(i) '.mat'],'ydata');
    arcSSTProcessedMey32kCoeff(1:length(foo.ydata),i)=foo.ydata;
    arcSSTProcessedMey32kPower(i)=sum(foo.ydata)^2/arcsstpower;
end

arcSSTProcessedMey16kCoeff=zeros(16384,6);
arcSSTProcessedMey16kPower=[0];
for i=1:2
    foo=load(['Data/arcSSTProcessedMey16kL' int2str(i) '.mat'],'ydata');
    arcSSTProcessedMey16kCoeff(1:length(foo.ydata),i)=foo.ydata;
    arcSSTProcessedMey16kPower(i)=sum(foo.ydata)^2/arcsstpower;
end

arcSSTProcessedMey10kCoeff=zeros(1024,7);
arcSSTProcessedMey10kPower=[0];
for i=1:7
    foo=load(['Data/arcSSTProcessedMey10kL' int2str(i) '.mat'],'ydata');
    arcSSTProcessedMey10kCoeff(1:length(foo.ydata),i)=foo.ydata;
    arcSSTProcessedMey10kPower(i)=sum(foo.ydata)^2/arcsstpower;
end

arcSSTProcessedMey512Coeff=zeros(512,2);
arcSSTProcessedMey512Power=[0];
for i=1:2
    foo=load(['Data/arcSSTProcessedMey512L' int2str(i) '.mat'],'ydata');
    arcSSTProcessedMey512Coeff(1:length(foo.ydata),i)=foo.ydata;
    arcSSTProcessedMey512Power(i)=sum(foo.ydata)^2/arcsstpower;
end

arcSSTProcessedMey256Coeff=zeros(256,2);
arcSSTProcessedMey256Power=[0];
for i=1:2
    foo=load(['Data/arcSSTProcessedMey256L' int2str(i) '.mat'],'ydata');
    arcSSTProcessedMey256Coeff(1:length(foo.ydata),i)=foo.ydata;
    arcSSTProcessedMey256Power(i)=sum(foo.ydata)^2/arcsstpower;
end

arcSSTProcessedMey128Coeff=zeros(128,2);
arcSSTProcessedMey128Power=[0];
for i=1:2
    foo=load(['Data/arcSSTProcessedMey128L' int2str(i) '.mat'],'ydata');
    arcSSTProcessedMey128Coeff(1:length(foo.ydata),i)=foo.ydata;
    arcSSTProcessedMey128Power(i)=sum(foo.ydata)^2/arcsstpower;
end

arcSSTProcessedMey64Coeff=zeros(64,8);
arcSSTProcessedMey64Power=[0];
for i=1:8
    foo=load(['Data/arcSSTProcessedMey64L' int2str(i) '.mat'],'ydata');
    arcSSTProcessedMey64Coeff(1:length(foo.ydata),i)=foo.ydata;
    arcSSTProcessedMey64Power(i)=sum(foo.ydata)^2/arcsstpower;
end

%visualization

plot(arcsst);
xlabel('Observation Time')
ylabel('SST')
title('1988-2007 Arctic SST Observations') 
print -dpng 'Visualizations/arcSST.png'

plot(arcSSTDbPower,'go-');
hold on;
plot(arcSSTMeyPower,'ro-');
hold on;
plot(arcSSTSymPower,'mo-');
hold on;
plot(arcSSTCoifPower,'bo-');
xlabel('Wavelet level')
ylabel('Power')
title(['1988-2007 Arctic SST Power for multiple wavelet types up to ' int2str(max_level) ' levels']) 
legend('Daubechies', 'Discrete Meyer', 'Symlets', 'Coiflets')
print -dpng 'Visualizations/waveletPower.png'

plot(arcSSTProcessedMey70kPower,'ro-');
hold on;
plot(arcSSTProcessedMey32kPower,'go-');
hold on;
plot(arcSSTProcessedMey16kPower,'mo-');
hold on;
plot(arcSSTProcessedMey10kPower,'yo-');
hold on;
plot(arcSSTProcessedMey512Power,'bo-');
hold on;
plot(arcSSTProcessedMey256Power,'rx--');
hold on;
plot(arcSSTProcessedMey128Power,'gx--');
hold on;
plot(arcSSTProcessedMey64Power,'bx--');
xlabel('Discrete Meyer Wavelet Level')
ylabel('Power')
title('1988-2007 Arctic SST Power for Discrete Meyer wavelet types with multiple Bin sizes') ;
legend('70k bin', '32k bin', '10k bin', '512 bin', '256 bin', '128 bin','64 bin');
print -dpng 'Visualizations/MeyerWaveletPower.png'


plot(arcsst);
xlabel('Observation Time')
ylabel('SST')
title('1988-2007 Arctic SST Observations') 
hold on;
plot(arcSSTProcessedMey70kCoeff(6),'ro-');
print -dpng 'Visualizations/arcSSTMey70kL6.png'