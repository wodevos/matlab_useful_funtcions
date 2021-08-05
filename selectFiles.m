function selectedFiles=selectFiles(files, pattern)
    % select certain files (from cell array files) that contain a certain
    % pattern
    
    %INPUT:
    % files: cell array with the files from which we select
    % pattern:    
    
    %OUTPUT:
    % files wich contain the pattern
    
    
    correctstrings={}
    for i=1:length(files)

        if(contains(files{i}, pattern))
            correctstrings{end+1}=files{i}

        end
    end
    
    selectedFiles=correctstrings
end