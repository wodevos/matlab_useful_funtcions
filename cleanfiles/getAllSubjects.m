function subjects=getAllSubjects(filenames)
% gets the filenames of all subjects 

%INPUT: cell array with pahts to files
%OUTPUT: cell array with the names of the subjects
    subjects={}
    for i=1:length(filenames)
        
        subjects{end+1}=getSubject(filenames{i})
    end
    
end