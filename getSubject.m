function subject=getSubject(folder, length)

   

    indices=strfind(folder, 'sub');

    begin=indices(1);
    theend=indices(1)+length-1;
   
    subject=folder(begin:theend);
end
