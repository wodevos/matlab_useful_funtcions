function exists= existsInCell(name, array)
% checks if a certain name is present in a cell array

% INPUT: name: the name that is present or not 
% array: the cell array that can contain the name

% OUTPUT: logical 0 or 1 weather the value exists

    exists=false;
    
    for i=1:length(array)
        if string(array{i})==name
            exists=true;
        end
    end
end

