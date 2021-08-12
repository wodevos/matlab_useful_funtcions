function exists=existsGunzipped(path)
% checks if a file exists in gunzipped version
% input: path to the file that may exist in a gunzipped format
% output: weather this is the case or not
    exists=isfile(path(1:end-3)  
end