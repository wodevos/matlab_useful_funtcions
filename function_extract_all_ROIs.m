function function_extract_all_ROIs(SPM_path, ROIs,  radius, overall_name)



    for i=1:12

        ROI=[overall_name '_' ROIs{i,1}]

        center=ROIs{i,2}

        extract_ROI_function(center, ROI, SPM_path, radius)



    end
end
