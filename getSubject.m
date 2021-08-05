function subject=getSubject(folder, length)
% gives identity of a subject

% INPUT: folder or path, length of ID (default:8)
% OUTPUT: subject ID
    
    if (nargin<2)
        length=8;
    end

    indices=strfind(folder, 'sub');

    begin=indices(1);
    theend=indices(1)+length-1;
   
    subject=folder(begin:theend);
    
end
