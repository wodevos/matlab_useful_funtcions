function unzippedname=getUnzippedName(name)
% INPUT: name of the file that is zipped '.gz' (character array)
% OUTPUT: the same name but without the .gz extension
    unzippedname=name(1:end-3)
    
end