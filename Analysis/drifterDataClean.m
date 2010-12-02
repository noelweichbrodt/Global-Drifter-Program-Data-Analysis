function data = drifterDataClean(data)
%Clean up data using list-wise deletion.
[cleanrow cleancol] = find(data==999.9999);
data(cleanrow,:) = [];