function merged_struct = mergeTwoStructs(structA, structB)
% merges two structs

    f = fieldnames(structA);
     for i = 1:length(f)
        structB.(f{i}) = structA.(f{i})
     end
     
     merged_struct=structB
end

