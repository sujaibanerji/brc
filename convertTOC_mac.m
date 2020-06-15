%here I am trying to find all files in this folder
%clear all

tempdir='/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/toc/jun/24/';
filelist = dir(fullfile(tempdir, '**', 'HistData_*.csv'));

% run through all files in the designated folder
for fileid = 1: length(filelist)
    % if this is a backup folder, skip.
    if ~isempty(strfind(filelist(fileid).folder,'Backup')) continue; end
    filename = [filelist(fileid).folder '/' filelist(fileid).name];
    filename_new = [filelist(fileid).folder '/test_ascii.txt'];
    unicode2ascii(filename, filename_new);
    % read all variables
    tmp1=readtable(filename_new, 'Headerlines',7);
    
    for i =1:length(tmp1.Var14)
        tmpstr=char(tmp1.Var7(i));
        hour(i)=str2num(tmpstr(1:2));
        minute(i)=str2num(tmpstr(4:5));
        second(i)=str2num(tmpstr(7:8));
        if char(tmp1.Var8(i)) == 'pm' hour(i) = hour(i) +12; end
        if char(tmp1.Var8(i))== 'am'& hour(i)==12 hour(i)=0;end
        if char(tmp1.Var8(i))== 'pm'& hour(i)==24 hour(i)=12;end
        timeofday(i) = hour(i)+minute(i)/60+second(i)/1440;
        if char(tmp1.Var5(i)) == 'May' month(i)=5; daynum = 120;end
        if char(tmp1.Var5(i)) == 'Jun' month(i)=6; daynum = 151;end
        if char(tmp1.Var5(i)) == 'Jul' month(i)=7; daynum = 181;end
        if char(tmp1.Var5(i)) == 'Aug' month(i)=8; daynum = 212;end
        day(i)=tmp1.Var4(i);
        %doy is the day of the year.
        toc_doy(i)=day(i)+daynum+timeofday(i)/24+0.0625;
    end
    %to make date format as YYYYMMDD
    dateInput = 20180000+month(1)*100+day(1);
    datafile= [filelist(fileid).folder '/' num2str(dateInput) '.mat'];
    toc=tmp1.Var14;
    %to have the same dimension as toc.
    toc_doy=transpose(toc_doy);
    %save (datafile, 'doy', 'toc');
    %clear doy toc
    
    for i=1: length(tmp1.Var14)
    tmpstr=char(tmp1.Var7(i));
    hour(i)=str2num(tmpstr(1:2));
    minute(i)=str2num(tmpstr(4:5));
    second(i)=str2num(tmpstr(7:8));
    if char(tmp1.Var8(i)) == 'pm' hour(i) = hour(i) +12; end
    if char(tmp1.Var8(i))== 'am' & hour(i)==12 hour(i)=0;end
    if char(tmp1.Var8(i))== 'pm' & hour(i)==24 hour(i)=12;end
    timeofday(i) = hour(i)+minute(i)/60+second(i)/1440;
    if char(tmp1.Var5(i)) == 'Jun' month(i)=6; daynum = 151;end
    if char(tmp1.Var5(i)) == 'Jul' month(i)=7; daynum = 181;end
    if char(tmp1.Var5(i)) == 'Aug' month(i)=8; daynum = 212;end
    day(i)=tmp1.Var4(i);
    toc_doy(i)=day(i)+daynum+timeofday(i)/24;
    end
% July 18-19
% indx18jul=find(toc_doy>=200.6);
% toc_doy(indx18jul)=NaN;
% indx18jul=find(toc_doy<=199.7);
% toc_doy(indx18jul)=NaN;  
% July 29-30
% indx29jul=find(toc_doy>=211.7);
% toc_doy(indx29jul)=NaN;
% indx29jul=find(toc_doy<=211.1);
% toc_doy(indx29jul)=NaN;  
% plot(toc_doy, tmp1.Var14);
% xlabel('DOY');
% ylabel('TOC(ppb)');
end

function isuc = isunicode(filename, varargin)
%ISUNICODE Checks if and which unicode header a file has.
%  ISUC = ISUNICODE(FILENAME)
%  ISUC = ISUNICODE('string', TEXTSTRING)
%  ISUC is true if the file contains unicode characters, otherwise
%  false. Exact Information about the encoding is also given.
%  ISUC == 0: No UTF Header
%  ISUC == 1: UTF-8
%  ISUC == 2: UTF-16BE
%  ISUC == 3: UTF-16LE
%  ISUC == 4: UTF-32BE
%  ISUC == 5: UTF-32LE
%
%  (c) Version 1.0 by Stefan Eireiner (<a href="mailto:stefan.eireiner@siemens.com?subject=isunicode">stefan.eireiner@siemens.com</a>)
%  last change 10.04.2006
isuc = false;
if(nargin == 2)
    if(strcmpi(filename, 'string'))
        firstLine = varargin{1}(1:4);
    end
end
if(~exist('firstLine', 'var'))
    fin = fopen(filename,'r');
    if (fin == -1) %does the file exist?
        error(['File ' filename ' not found!'])
        return;
    end
    fileInfo = dir(filename);
    if(fileInfo.bytes < 4) % a unicode file incl. header can't be smaller than 4 bytes if it shall display at least one char.
        return;
    end
    firstLine = fread(fin,4)';
end
% assign all possible headers to variables
utf8header    = [hex2dec('EF') hex2dec('BB') hex2dec('BF')];
utf16beheader = [hex2dec('FE') hex2dec('FF')];
utf16leheader = [hex2dec('FF') hex2dec('FE')];
utf32beheader = [hex2dec('00') hex2dec('00') hex2dec('FE') hex2dec('FF')];
utf32leheader = [hex2dec('FF') hex2dec('FE') hex2dec('00') hex2dec('00')];
% compare first bytes with header
if(strfind(firstLine, utf8header) == 1)
        isuc = 1;
elseif(strfind(firstLine, utf16beheader) == 1)
        isuc = 2;
elseif(strfind(firstLine, utf16leheader) == 1)
        isuc = 3;
elseif(strfind(firstLine, utf32beheader) == 1)
        isuc = 4;
elseif(strfind(firstLine, utf32leheader) == 1)
        isuc = 5;
end
if(~exist('firstLine', 'var'))
    fclose(fin);
end
end

function varargout = unicode2ascii(sourceFile, varargin)
%UNICODE2ASCII Converts unicode endcoded files to ASCII encoded files
%  UNICODE2ASCII(FILE)
%  Converts the file to ASCII (overwrites the old file!)
%  UNICODE2ASCII(SOURCEFILE, DESTINATIONFILE)
%  Converts the contents of SOURCEFILE to ASCII and writes it to
%  DESTINATIONFILE
%  ASCIISTRING = UNICODE2ASCII('string', UTFSTRING)
%  Converts the UTFSTRING to ASCII and returns the string.
% check number of arguments and open file handles
strout = false;
if(nargin == 1)
    fin = fopen(sourceFile,'r');
elseif(nargin == 2)
    if(strcmpi(sourceFile, 'string'))
        file = varargin{1};
        strout = true;
    else
        fin = fopen(sourceFile,'r');
        fin2 = fopen(varargin{1}, 'w+');
    end
else
    error('too many input arguments!');
end
%does the file exist?
if (~strout && fin == -1)
    error(['File ' sourceFile ' not found!'])
    return;
end
% read the file and delete unicode characters
if(~strout)
    unicode = isunicode(sourceFile);
    file = fread(fin);
else
    unicode = isunicode('string', file);
end
% delete header
switch(unicode)
    case 1
        file(1:3) = [];
    case 2
        file(1:2) = [];
    case 3
        file(1:2) = [];
    case 4
        file(1:4) = [];
    case 5
        file(1:4) = [];
end
% deletes all 0 bytes
file(file == 0) = [];
if(strout)
    varargout{1} = file;
    return;
end
% write the ascii file
if(nargin == 2)
    fwrite(fin2, file, 'uchar');
    fclose(fin2);
else
    fclose(fin);
    delete(sourceFile);
    fin = fopen(sourceFile,'w+');
    fwrite(fin, file, 'uchar');
end
if(~strout)
    fclose(fin);
end
end
