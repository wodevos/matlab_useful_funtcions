function allInconsistency=checkInconsistency(filesA, filesB)


     subjectsA=getAllSubjects(filesA)
     subjectsB=getAllSubjects(filesB)
     
     pAB=setdiff(subjectsA, subjectsB)
     pBA=setdiff(subjectsB, subjectsA)
     
     allInconsistency={pAB; pBA}




end