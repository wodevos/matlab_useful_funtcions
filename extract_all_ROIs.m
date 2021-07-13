ROIs=Define_ROIs('Smith')
SPM_path=['E:\data\fmri_amsterdam\testsubfunc\func\SPM.mat']
radius= 6


function extract_all_ROIs('Smith', SPM_path, radious)

ROIs= Define_ROIs('Smith')
    for i=1:12

        ROI=['nothing_' ROIs{i,1}]

        center=ROIs{i,2}

        extract_ROI_function(center, ROI, SPM_path, radius)



    end
    
end
