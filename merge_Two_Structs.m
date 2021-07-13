function merged_struct = Merge(structA, structB)
    f = fieldnames(structA);
     for i = 1:length(f)
        structB.(f{i}) = structA.(f{i})
     end
     
     merged_struct=structB
end

