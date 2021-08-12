function runAllBatches(batches)
% runs al the matlabbatches

	for i=1:length(batches)
        
        spm_jobman('run', matlabbatches)    
        
        
    end


end

