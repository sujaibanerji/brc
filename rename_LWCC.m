%July 02
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July2_18/7-2 Sample/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July2_18/7-2 Sample/';

%July 03
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July3_18/7-3 Sample/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July3_18/7-3 Sample/';

%July 04
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July4_18/7-4 Sample/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July4_18/7-4 Sample/';

%July 05
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July5_18/7-5 Sample/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July5_18/7-5 Sample/';

%July 09
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July09_18/7-9 Sample/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July09_18/7-9 Sample/';

%July 12
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July12_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July12_18/';

%July 13
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July13_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July13_18/';

%July 14
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July14_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July14_18/';

%July 16
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July16_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July16_18/';

%July 17
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July17_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July17_18/';

%July 18
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July18_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July18_18/';

%July 19
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July19_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July19_18/';

%July 20-24
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July20to24_18/7-20 sample/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July20to24_18/7-20 sample/';

%July 25
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July25_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July25_18/';

%July 26
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July26_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July26_18/';

% %July 27
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July27_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July27_18/';
% 
% %July 28
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July28_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July28_18/';
% %July 29
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July29_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July29_18/';

%July 30
tempdir = '/Users/sujaibanerji/Google Drive File Stream/Shared drives/BrownCarbon_2019/Data/toc/jun/29';
newdir = '/Users/sujaibanerji/Google Drive File Stream/Shared drives/BrownCarbon_2019/Data/toc/jun/29_new';
%July 31
% tempdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC/July Data/July31_18/';
% newdir = '/Volumes/GoogleDrive/Team Drives/Data/LWCC_new/July Data/July31_18/';

mkdir(newdir);
filelist = dir(fullfile(tempdir, 'FLMT021921_*.txt'));
for i=1:length(filelist)
    originalfile = [filelist(i).folder '/' filelist(i).name];
    f = fopen(originalfile, 'r');
    while (1)
	s = fgetl(f);
	if isequal(s, -1), break; end
    %compare the first five characters
    if strncmp(s, 'Date:', 5),break;end
    end
    if (s(11:13)=='May') , month='201905'; end
    if (s(11:13)=='Jun') , month='201906'; end
    if (s(11:13)=='Jul') , month='201907'; end
    if (s(11:13)=='Aug') , month='201908'; end
    thisdate = [month '_' s(15:16)];
    fclose(f);
    clear f
    newname = strrep(filelist(i).name, 'FLMT021921',thisdate);
    newfile= [newdir '/'  newname];
    copyfile(originalfile, newfile);
end