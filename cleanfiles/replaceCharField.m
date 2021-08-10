function replacedStruct= replaceCharField(matlabbatch, fieldname, newsubject)
% this function replaces the subject name in a cell array

%INPUT:
% matlabbatch: structure which will be changed
% fieldname: the name of the field with the cell array
% newsubject: new subject ID

%OUTPUT:
% replacedStruct: structure where the field has been changed (subject ID
% replaced)

%    
    fields = textscan(fieldname,'%s','Delimiter','.');  
    current_field=getfield(matlabbatch,fields{1}{:});

    
    current_field=replaceSubject(current_field,newsubject);
   

    matlabbatch=setfield(matlabbatch, fields{1}{:}, current_field);
    replacedStruct=matlabbatch;
end



