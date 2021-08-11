function makeDirAllSubjects(folder, subjects)
% makes a directory for each subject within a given folder 

%INPUT



    for i=1:length(subjects)

        newfolder=[folder '/' subjects{i}]
        mkdir(newfolder)

    end
end

