function fieldpath=split_Fieldname(name)
     

    
    indices=strfind(name, '.')
    fieldpath={}
    depth=length(indices)

    firstindex=1
    lastindex=indices(1)-1
    currentname=name(firstindex:lastindex)
    fieldpath{end+1}=currentname
    for j=1:depth-1

        firstindex=indices(j)+1
        lastindex=indices(j+1)-1
        currentname=name(firstindex:lastindex)
        fieldpath{end+1}=currentname

    end
    firstindex=indices(depth)+1
    lastindex=length(name)
    currentname=name(firstindex:lastindex)
    fieldpath{end+1}=currentname
end
