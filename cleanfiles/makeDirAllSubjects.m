function makeDirAllSubjects(folder, filenames)
% makes a directory for each subject within a given folder 

%INPUT:
% folder where the subject is
% subjects cell array of all the subjects

subjects=getAllSubjects(filenames)

    for i=1:length(subjects)

        newfolder=[folder '/' subjects{i}]
        mkdir(newfolder)

    end
end

