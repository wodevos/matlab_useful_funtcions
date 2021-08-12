function replaced_batches=replaceFieldsAllSubjects(example_batch,subjects)


    replaced_batches={}
    
    for i=1:length(subjects)
        
        replaced_batches{end+1}=replaceSubjectFields(example_batch, subjects{i})
        
        
    end

end

