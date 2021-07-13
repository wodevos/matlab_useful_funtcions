function selectedFiles=selectFiles(files, pattern)
    correctstrings={}
    for i=1:length(files)

        if(contains(files{i}, pattern))
            correctstrings{end+1}=files{i}

        end
    end
    
    selectedFiles=correctstrings
end