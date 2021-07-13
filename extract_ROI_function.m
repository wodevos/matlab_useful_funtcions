function extract_ROI_function(center, name, path, radius)

    clear matlabbatch
    matlabbatch{1}.spm.util.voi.spmmat = {path};
    matlabbatch{1}.spm.util.voi.adjust = NaN;
    matlabbatch{1}.spm.util.voi.session = 1;
    matlabbatch{1}.spm.util.voi.name = name;
    matlabbatch{1}.spm.util.voi.roi{1}.sphere.centre = center;
    matlabbatch{1}.spm.util.voi.roi{1}.sphere.radius = radius;
    matlabbatch{1}.spm.util.voi.roi{1}.sphere.move.fixed = 1;
    matlabbatch{1}.spm.util.voi.expression = 'i1';
    
    spm_jobman('run', matlabbatch)
    
end
