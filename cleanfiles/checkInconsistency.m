function allInconsistency=checkInconsistency(filesA, filesB)


     subjectsA=getAllSubjects(filesA)
     subjectsB=getAllSubjects(filesB)
     
     pAB=setDiff(subjectsA, subjectsB)
     pBA=setDiff(subjectsB, subjectsA)
     
     allInconsistency={pAB, pBA}




end