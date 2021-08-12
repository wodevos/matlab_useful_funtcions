function runAllBatches(batches)
% runs al the matlabbatches

	parfor i=1:length(batches)
        spm_jobman('run', batches{i})
    end


end

