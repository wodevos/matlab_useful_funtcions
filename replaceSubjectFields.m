function matlabbatch = replaceSubjectFields(matlabbatch, newsubject)
% replaces in all fields (character arrays or cell arrays the subject ID)
    % then do
    
    % if a cell array of matlabbatchs give, we do it for each element
    
    if(convertCharsToStrings(class(matlabbatch))=="cell")
        matlabbatch{1}=replaceSubjectFields(matlabbatch{1}, newsubject)
    
    else
    
    	fnames=fieldnamesr(matlabbatch)

        for i=1:length(fnames)

            %disp(fnames{i})    
            fields = textscan(fnames{i},'%s','Delimiter','.');    

            current_field=getfield(matlabbatch,fields{1}{:});

            % the subject name to change could either be a character array or a
            % cell arry
            if string(class(current_field))=="char"
                matlabbatch=replaceCharField(matlabbatch, fnames{i},newsubject)
                %matlabbatch, fieldname, newsubject

            end

            if string(class(current_field))=="cell"

                matlabbatch=replaceCellField(matlabbatch, fnames{i}, newsubject)
            end



        end
        %adaptedStruct=matlabbatch
    end

end

