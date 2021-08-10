function fileList = getAllFiles(dirName, pattern)
% Example: filelistCSV = getAllFiles(somePath,'\d+_\d+_\d+\.csv');

% INPUT
% dirName: base folder in wich all the files are (can have a higher depth)
% pattern: substring in the filename; we take all files which contain the
% pattern

% INTENDED USE WITH BIDS FILES
% for example to take the preprocessed filenames:
% dirname= folder where the files are pattern=space-MNI152NLin2009cAsym
% then we can have doubles (for example gunzipped files)
% these doubles can then be removed with other folders
%-------------------------------------------------




  dirData = dir(dirName);      %# Get the data for the current directory
  dirIndex = [dirData.isdir];  %# Find the index for directories
  fileList = {dirData(~dirIndex).name}';  %'# Get a list of the files
  if ~isempty(fileList)
    fileList = cellfun(@(x) fullfile(dirName,x),...  %# Prepend path to files
                       fileList,'UniformOutput',false);
    matchstart = regexp(fileList, pattern);
    fileList = fileList(~cellfun(@isempty, matchstart));
  end
  subDirs = {dirData(dirIndex).name};  %# Get a list of the subdirectories
  validIndex = ~ismember(subDirs,{'.','..'});  %# Find index of subdirectories
                                               %#   that are not '.' or '..'
  for iDir = find(validIndex)                  %# Loop over valid subdirectories
    nextDir = fullfile(dirName,subDirs{iDir});    %# Get the subdirectory path
    fileList = [fileList; getAllFiles(nextDir, pattern)];  %# Recursively call getAllFiles
  end

end