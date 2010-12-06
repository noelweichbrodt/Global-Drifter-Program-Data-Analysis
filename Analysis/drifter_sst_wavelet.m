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

[arc2007coeff, arc2007detail] = dwt(arcsst,'db2');
