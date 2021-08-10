function folder=getFolder(path)
% gives the folder where a certain datapath 

% INPUT: path (example: \dataset\sub\subpreprocessed.nii)
% OUTPUT: folder (example: \dataset\sub)

    indices=strfind(path,'\')
    lastindex=indices(size(indices,2))
    
    folder=path(1:lastindex-1)

end