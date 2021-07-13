function files = getAllFilesMore(basepath, patterns_in)
    
    files=getAllFiles(basepath,patterns_in{1})
    for i=2:length(patterns_in)
        files=selectFiles(files, patterns_in{i})
        
    end

end

