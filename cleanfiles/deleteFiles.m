function removeFiles(files)
    for i=1:length(files)
        delete(files{i})
    end
end
        