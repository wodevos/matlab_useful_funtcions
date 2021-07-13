function [const, inconst]=findConsistentSubjects(long, short)
% This function finds the "consistencies" between file lists (cell array)
% Consistency is meant in terms of subjects, so if there is a certain file 
% about one subject and another one about the same subject, then there is
% conistency for this subject. If there is a certain file for this subject 
    
    l=length(long);
    s=length(short);
    
    const={}
    inconst={}
    
    for i=1:l
        cons=0
        for j=1:s
            subjectLong=convertCharsToStrings(getSubject(long{i},8));
            subjectShort=convertCharsToStrings(getSubject(short{j},8));
            
            if(subjectLong==subjectShort)
                cons=2
            end
        end
        if (cons>1)
            const{end+1}=long{i};
        end
        if(cons<1)
            inconst{end+1}=long{i}
        end
        %if(cons<1)
        %    inconst{end+1}=subjectLong{i}
            
        %end
    end
    output=[const, inconst]
end

