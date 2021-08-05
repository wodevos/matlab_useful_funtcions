
function replacedStruct= relplaceCellField(matlabbatch, fieldname, newsubject)
% this function replaces the subject name in a cell array

%INPUT:
% matlabbatch: structure which will be changed
% fieldname: the name of the field with the cell array
% newsubject: new subject ID

%OUTPUT:
% replacedStruct: structure where the field has been changed (subject ID
% replaced)



%input arguments 
%load('example_matlabbatch.mat')
%matlabbatch=matlabbatch{1}
%fnames=fieldnamesr(matlabbatch)
%newsubject='sub-032309'
%fieldname='spm.stats.fmri_spec.sess.scans'
%change field

%disp(fnames{i})    
    fields = textscan(fieldname,'%s','Delimiter','.');  
    current_field=getfield(matlabbatch,fields{1}{:});

    for i=1:length(current_field)
        current_field{i}=replaceSubject(current_field{i},newsubject);
    end

    matlabbatch=setfield(matlabbatch, fields{1}{:}, current_field);
    replacedStruct=matlabbatch;
end

