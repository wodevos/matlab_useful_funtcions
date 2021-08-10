function replaced_subject=replaceSubject(name, new_subject)
%

     indices=strfind(name, 'sub');
     strlength=length(new_subject);
     
      
     for i=1:length(indices)
        name(indices(i):indices(i)+strlength-1)=new_subject
     end
     
     replaced_subject=name;
     
    % for i=1:length(indices)
     %    name(indices(i):indices(i)+strlength-1)
     %end
     
end
     
     






