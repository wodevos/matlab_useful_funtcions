function correct_files=makeAllUnzipped(files)
% this function makes sure all files are unzipped; so it checks if it is
% the case and if it is not, does the unzipping (and returns the same
% filelist , but then with only unzipped files)

% INPUT: the list of files of which we want to check if it exists in
% gunzipped version
% output: the name of all the unzipped files (some of them may have been
% newly created
    correct_files={}
    gunzip_files ={}
    for i=1:length(files)
        current_file=files{i}        
        if string(current_file(end-2:end))==string('.gz')
            % now we check if in the file list
            correct_name=getUnzippedName(current_file)
            is_present=existsInCell(correct_name, files) % counts the amout of time this value is in the cell array         
            
            
                
            if is_present
                correct_files{end+1}= correct_name                 
               
                        
            else
                gunzip_files{end+1}=current_file
                correct_files{end+1}=correct_name
                
            end
            
         end
        
        
    end
    gunzipAll(gunzip_files)
    
end

