function gunzipAll(files)
% gunzips all files
%INPUT: cell array of filenames (character arrays)


    parfor i=1:length(files)
        gunzip(files{i})
        
    end
end