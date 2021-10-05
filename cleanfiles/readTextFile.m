
pathToFile='~/Documents/ResearchStudies/play_with_physio/plat_with_physio_aomic/sub-0109_task-anticipation_acq-seq_recording-respcardiac_physio.tsv'
% first we count the length of the data sequence
fid = fopen(pathToFile);
j=1;
tline = fgetl(fid);
while ischar(tline)
    disp(tline);
    tline = fgetl(fid);
    j=j+1;
end
fclose(fid);

% now we make the folder with the sequence

data=zeros(j,2);

fid = fopen(pathToFile);
j=1;
tline = fgetl(fid);
newline=strsplit(tline);
data(1,1)=str2double(newline{1});
data(1,2)=str2double(newline{2});


while ischar(tline)
    j=j+1;
    
    tline = fgetl(fid);
    newline=strsplit(tline);
    data(j,1)=str2double(newline{1});
    data(j,2)=str2double(newline{2});
    
    
end