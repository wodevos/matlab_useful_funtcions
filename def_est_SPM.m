function def_est_SPM(SPM_dir, adresspath, filename, confound_files, skip)
    %SPM_dir='C:\Users\admin\Documents\Research\Amsterdam_FMRI\data_derivatives\RETROICOR\sub-0001'
    %confound_files={'C:\Users\admin\Documents\Research\Amsterdam_FMRI\data_derivatives\fmriprep\sub-0001\func\selected_standard_regressor_long_j.mat';
     %   'C:\Users\admin\Documents\Research\Amsterdam_FMRI\data_derivatives\fmriprep\sub-0001\func\physio_regressors.mat'                 }

    %name= funcfile(2).name


    nifti_images=spm_select('ExtFPList',adresspath,filename,inf);
    images=cellstr(nifti_images)



    matlabbatch{1}.spm.stats.fmri_spec.dir = {SPM_dir};
    matlabbatch{1}.spm.stats.fmri_spec.timing.units = 'scans';
    matlabbatch{1}.spm.stats.fmri_spec.timing.RT = 0.75;
    matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t = 16;
    matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t0 = 8;

    matlabbatch{1}.spm.stats.fmri_spec.sess.scans = cellstr(images(skip+1:480))
    matlabbatch{1}.spm.stats.fmri_spec.sess.cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
    matlabbatch{1}.spm.stats.fmri_spec.sess.multi = {''};
    matlabbatch{1}.spm.stats.fmri_spec.sess.regress = struct('name', {}, 'val', {});
    matlabbatch{1}.spm.stats.fmri_spec.sess.multi_reg = confound_files
    %matlabbatch{1}.spm.stats.fmri_spec.sess.hpf = 128;
    matlabbatch{1}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
    matlabbatch{1}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
    matlabbatch{1}.spm.stats.fmri_spec.volt = 1;
    matlabbatch{1}.spm.stats.fmri_spec.global = 'None';
    matlabbatch{1}.spm.stats.fmri_spec.mthresh = 0.8;
    matlabbatch{1}.spm.stats.fmri_spec.mask = {''};
    matlabbatch{1}.spm.stats.fmri_spec.cvi = 'AR(1)';
    matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
    matlabbatch{2}.spm.stats.fmri_est.write_residuals = 0;
    matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;

    spm_jobman('run', matlabbatch)
    
end
