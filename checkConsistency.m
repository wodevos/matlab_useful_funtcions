function consistency=checkConsistency(filenamesA, filenamesB)
% checks if two cell arrays of filenames are consistent in terms of the
% subjects they contain

%INPUT:
% cell array of character arrays filenamesA and filenamesB (contain the
% filenames)

%OUTPUT:
% boolean consistency (weather they are consistent or not)


    subjectsA=getAllSubjects(filenamesA)
    subjectsB=getAllSubjects(filenamesB)
    consistency=isequal(subjectsA, subjectsB)
    
    


end