set(0,'defaultlinelinewidth',2);
figure
clf reset
i=1;
set(gcf,'unit','normalized','position',[0.01,0.03,0.95,0.9]);
set(gcf,'defaultuicontrolunits','normalized');
set(gcf,'defaultuicontrolfontsize',11);
set(gcf,'defaultuicontrolhorizontal','left');
set(gcf,'menubar','none');

str='Spectra';
set(gcf,'name',str,'numbertitle','off');

% tempdir = uigetdir(pwd, 'Select a folder');
% cd(tempdir);
% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/may/30_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/may/30/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/may/30/ref.txt'; 
% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/09_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/09/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/09/ref.txt'; 
% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/11_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/11/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/11/ref.txt'; 
% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/12_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/12/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/12/ref.txt'; 

% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/14_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/14/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/14/ref.txt'; 
% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/19_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/19/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/19/ref.txt'; 

% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/24_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/24/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/24/ref.txt'; 

% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/28_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/28/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/28/ref.txt'; 

% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/29_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/29/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/29/ref.txt'; 
% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/18_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/18/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/18/ref.txt'; 

% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/23_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/23/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/23/ref.txt'; 

% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/24_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/24/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/24/ref.txt'; 

% tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/25_new/'; 
% file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/25/bac.txt'; 
% file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/25/ref.txt'; 

tempdir = 'H:\Shared drives\BrownCarbon_2019\Data\abs\jun\29_new\'; 
file_b = 'H:\Shared drives\BrownCarbon_2019\Data\abs\jun\29\'; 
file_r = 'H:\Shared drives\BrownCarbon_2019\Data\abs\jun\29\'; 

[doy, timeofday,aae, aae_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
% filelist_a = dir(fullfile(tempdir, 'Absorbance*.txt'));
% subplot('position',[0.04,0.55,0.40,0.40])
% Absorbance=readtable(filelist_a(1).name);plot(Absorbance.Var1, Absorbance.Var2);title(filelist_a(1).name);

filelist_b = dir(fullfile(tempdir, '2019*.txt'));
subplot('position',[0.04,0.52,0.45,0.45])
FLMT021921=readtable(strcat(tempdir,filelist_b(1).name));plot(FLMT021921.Var1, FLMT021921.Var2);title('Intensity');

% filelist_c = dir(fullfile(tempdir, 'ref.txt'));
% file_r = '/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/abs/jun/29/ref.txt'; 
ref=readtable(file_r);

subplot('position',[0.53,0.15,0.2,0.2])
FLMT021921=readtable(file_r);plot(FLMT021921.Var1, FLMT021921.Var2);title('reference');
%z1a:1 is first line, a is the first cell.

% file_b='/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/abs/jun/29/bac.txt'; 
bg=readtable(file_b);

zleft=0.52;
zbottom=0.92;
zwidth=0.12;
zheight=0.08;
zhordist=0.08;
zvertdist=0.03;

i=2;

 
z1a=uicontrol(gcf,'style','text',...
    'position',[zleft,zbottom,zwidth,zheight],...
    'String','Spectra no.');
z1b=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*1,zbottom,zwidth,zheight],...
    'string',num2str(i));
z1c=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*2,zbottom,zwidth,zheight],...
    'String','ab365');
z1d=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*3,zbottom,zwidth,zheight],...
    'String',num2str(ab365(i)));
z1e=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*4,zbottom,zwidth,zheight],...
    'String','ab600');
z1f=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*5,zbottom,zwidth,zheight],...
    'string',num2str(ab600(i)));

z2a=uicontrol(gcf,'style','text',...
    'position',[zleft,zbottom-zvertdist*1,zwidth,zheight],...
    'String','AAE by linfit');
z2b=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*1,zbottom-zvertdist*1,zwidth,zheight],...
    'string',num2str(aae(i)));
z2c=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*2,zbottom-zvertdist*1,zwidth,zheight],...
    'String','R2 by linfit');
z2d=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*3,zbottom-zvertdist*1,zwidth,zheight],...
    'String',num2str(aae_r2(i)));
z2e=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*4,zbottom-zvertdist*1,zwidth,zheight],...
    'String','AAE by polyfit');
z2f=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*5,zbottom-zvertdist*1,zwidth,zheight],...
    'string','NaN');

z3a=uicontrol(gcf,'style','text',...
    'position',[zleft,zbottom-zvertdist*2,zwidth,zheight],...
    'String','R2 by polyfit');
z3b=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*1,zbottom-zvertdist*2,zwidth,zheight],...
    'string','NaN');
z3c=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*2,zbottom-zvertdist*2,zwidth,zheight],...
    'String','ab700');
z3d=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*3,zbottom-zvertdist*2,zwidth,zheight],...
    'String',num2str(ab700(i)));
z3e=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*4,zbottom-zvertdist*2,zwidth,zheight],...
    'String','DOY');
z3f=uicontrol(gcf,'style','text',...
    'position',[zleft+zhordist*5,zbottom-zvertdist*2,zwidth,zheight],...
    'string',num2str(doy(i)));

wav1=300; wav2=350;
zpush1=uicontrol(gcf,'Style','push',...
    'position',[0.75,0.05,0.08,0.08],'string','Next');
% while i>0&i<=length(oh_Decay)
set(zpush1,'callback',['i=i+1;'...
     'subplot(''position'',[0.04,0.52,0.45,0.45]);'...
     'FLMT021921=readtable(strcat(tempdir,filelist_b(i).name));plot(FLMT021921.Var1, FLMT021921.Var2);title(strrep(filelist_b(i).name,''_'',''-''));'...
     'subplot(''position'',[0.04,0.04,0.45,0.45]);'...
     'ratio = (FLMT021921.Var2-bg.Var2)./(ref.Var2-bg.Var2);'...
     'absorbance = -log10 (ratio);;plot(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650), absorbance(FLMT021921.Var1>=300 & FLMT021921.Var1<=650));'...
     'subplot(''position'',[0.54,0.45,0.4,0.4]);'...
     'tmp_x=FLMT021921.Var1(FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);tmp_y=absorbance (FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);'...
     'reg1=polyfit(log10(tmp_x),log10(tmp_y),1);'...
     'r_poly=corrcoef(log10(tmp_x),log10(tmp_y));'...
     'r2_poly=r_poly(1,2).^2;'...
     '[aae_intercept_linfit,aae_linfit,aae_r2_linfit]=linfit(log10(tmp_x),log10(tmp_y));'...
     'tmp_wav=wav1:1:wav2;'...
     'plot(log10(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650)), log10(absorbance (FLMT021921.Var1>=300 & FLMT021921.Var1<=650)),''o'', log10(tmp_wav),reg1(1).*log10(tmp_wav)+reg1(2));'...
     'xticks([log10(250) log10(300) log10(350) log10(400) log10(450) log10(500) log10(600)]);'...
     'xticklabels({''250 nm'',''300 nm'',''350 nm'', ''400 nm'',''450 nm'',''500 nm'',''600 nm''});'...
     'xlabel({''Wavelength (nm)''});'...
     'set(z1b,''string'',num2str(i));'...
     'set(z1d,''string'',num2str(ab365(i)));'...
     'set(z1f,''string'',num2str(ab600(i)));'...
     'set(z2b,''string'',num2str(aae_linfit));'...
     'set(z2d,''string'',num2str(aae_r2_linfit));'...
     'set(z2f,''string'',num2str(reg1(1)));'...
     'set(z3b,''string'',num2str(r2_poly));'...
     'set(z3d,''string'',num2str(ab700(i)));'...
     'set(z3f,''string'',num2str(doy(i)));'
     ]);
zpush2=uicontrol(gcf,'Style','push',...
    'position',[0.65,0.05,0.08,0.08],'string','Prev');
set(zpush2,'callback',['i=i-1;'...
     'subplot(''position'',[0.04,0.52,0.45,0.45]);'...
     'FLMT021921=readtable(strcat(tempdir,filelist_b(i).name));plot(FLMT021921.Var1, FLMT021921.Var2);title(strrep(filelist_b(i).name,''_'',''-''));'...
     'subplot(''position'',[0.04,0.04,0.45,0.45]);'...
     'ratio = (FLMT021921.Var2-bg.Var2)./(ref.Var2-bg.Var2);'...
     'absorbance = -log10 (ratio);;plot(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650), absorbance(FLMT021921.Var1>=300 & FLMT021921.Var1<=650));'...
     'subplot(''position'',[0.54,0.45,0.4,0.4]);'...
     'tmp_x=FLMT021921.Var1(FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);tmp_y=absorbance (FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);'...
     'reg1=polyfit(log10(tmp_x),log10(tmp_y),1);'...
     'r_poly=corrcoef(log10(tmp_x),log10(tmp_y));'...
     'r2_poly=r_poly(1,2).^2;'...
     '[aae_intercept_linfit,aae_linfit,aae_r2_linfit]=linfit(log10(tmp_x),log10(tmp_y));'...
     'tmp_wav=wav1:1:wav2;'...
     'plot(log10(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650)), log10(absorbance (FLMT021921.Var1>=300 & FLMT021921.Var1<=650)),''o'', log10(tmp_wav),reg1(1).*log10(tmp_wav)+reg1(2));'...
     'xticks([log10(250) log10(300) log10(350) log10(400) log10(450) log10(500) log10(600)]);'...
     'xticklabels({''250 nm'',''300 nm'',''350 nm'', ''400 nm'',''450 nm'',''500 nm'',''600 nm''});'...
     'xlabel({''Wavelength (nm)''});'...
     'set(z1b,''string'',num2str(i));'...
     'set(z1d,''string'',num2str(ab365(i)));'...
     'set(z1f,''string'',num2str(ab600(i)));'...
     'set(z2b,''string'',num2str(aae_linfit));'...
     'set(z2d,''string'',num2str(aae_r2_linfit));'...
     'set(z2f,''string'',num2str(reg1(1)));'...
     'set(z3b,''string'',num2str(r2_poly));'...
     'set(z3d,''string'',num2str(ab700(i)));'
     ]);
zpush3=uicontrol(gcf,'Style','push',...
    'position',[0.5,0.05,0.08,0.08],'string','Prev hour');
set(zpush3,'callback',['i=i-10;'...
     'subplot(''position'',[0.04,0.52,0.45,0.45]);'...
     'FLMT021921=readtable(strcat(tempdir,filelist_b(i).name));plot(FLMT021921.Var1, FLMT021921.Var2);title(strrep(filelist_b(i).name,''_'',''-''));'...
     'subplot(''position'',[0.04,0.04,0.45,0.45]);'...
     'ratio = (FLMT021921.Var2-bg.Var2)./(ref.Var2-bg.Var2);'...
     'absorbance = -log10 (ratio);;plot(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650), absorbance(FLMT021921.Var1>=300 & FLMT021921.Var1<=650));'...
     'subplot(''position'',[0.54,0.45,0.4,0.4]);'...
     'tmp_x=FLMT021921.Var1(FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);tmp_y=absorbance (FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);'...
     'reg1=polyfit(log10(tmp_x),log10(tmp_y),1);'...
     'r_poly=corrcoef(log10(tmp_x),log10(tmp_y));'...
     'r2_poly=r_poly(1,2).^2;'...
     '[aae_intercept_linfit,aae_linfit,aae_r2_linfit]=linfit(log10(tmp_x),log10(tmp_y));'...
     'tmp_wav=wav1:1:wav2;'...
     'plot(log10(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650)), log10(absorbance (FLMT021921.Var1>=300 & FLMT021921.Var1<=650)),''o'', log10(tmp_wav),reg1(1).*log10(tmp_wav)+reg1(2));'...
     'xticks([log10(250) log10(300) log10(350) log10(400) log10(450) log10(500) log10(600)]);'...
     'xticklabels({''250 nm'',''300 nm'',''350 nm'', ''400 nm'',''450 nm'',''500 nm'',''600 nm''});'...     
     'xlabel({''Wavelength (nm)''});'...
     'set(z1b,''string'',num2str(i));'...
     'set(z1d,''string'',num2str(ab365(i)));'...
     'set(z1f,''string'',num2str(ab600(i)));'...
     'set(z2b,''string'',num2str(aae_linfit));'...
     'set(z2d,''string'',num2str(aae_r2_linfit));'...
     'set(z2f,''string'',num2str(reg1(1)));'...
     'set(z3b,''string'',num2str(r2_poly));'...
     'set(z3d,''string'',num2str(ab700(i)));'...
     'set(z3f,''string'',num2str(doy(i)));'
     ]);
zpush4=uicontrol(gcf,'Style','push',...
    'position',[0.9,0.05,0.08,0.08],'string','Next hour');
set(zpush4,'callback',['i=i+10;'...
     'subplot(''position'',[0.04,0.52,0.45,0.45]);'...
     'FLMT021921=readtable(strcat(tempdir,filelist_b(i).name));plot(FLMT021921.Var1, FLMT021921.Var2);title(strrep(filelist_b(i).name,''_'',''-''));'...
     'subplot(''position'',[0.04,0.04,0.45,0.45]);'...
     'ratio = (FLMT021921.Var2-bg.Var2)./(ref.Var2-bg.Var2);'...
     'absorbance = -log10 (ratio);;plot(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650), absorbance(FLMT021921.Var1>=300 & FLMT021921.Var1<=650));'...
     'subplot(''position'',[0.54,0.45,0.4,0.4]);'...
     'tmp_x=FLMT021921.Var1(FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);tmp_y=absorbance (FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);'...
     'reg1=polyfit(log10(tmp_x),log10(tmp_y),1);'...
     'r_poly=corrcoef(log10(tmp_x),log10(tmp_y));'...
     'r2_poly=r_poly(1,2).^2;'...
     '[aae_intercept_linfit,aae_linfit,aae_r2_linfit]=linfit(log10(tmp_x),log10(tmp_y));'...
     'tmp_wav=wav1:1:wav2;'...
     'plot(log10(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650)), log10(absorbance (FLMT021921.Var1>=300 & FLMT021921.Var1<=650)),''o'', log10(tmp_wav),reg1(1).*log10(tmp_wav)+reg1(2));'...
     'xticks([log10(250) log10(300) log10(350) log10(400) log10(450) log10(500) log10(600)]);'...
     'xticklabels({''250 nm'',''300 nm'',''350 nm'', ''400 nm'',''450 nm'',''500 nm'',''600 nm''});'...
     'xlabel({''Wavelength (nm)''});'...
     'set(z1b,''string'',num2str(i));'...
     'set(z1d,''string'',num2str(ab365(i)));'...
     'set(z1f,''string'',num2str(ab600(i)));'...
     'set(z2b,''string'',num2str(aae_linfit));'...
     'set(z2d,''string'',num2str(aae_r2_linfit));'...
     'set(z2f,''string'',num2str(reg1(1)));'...
     'set(z3b,''string'',num2str(r2_poly));'...
     'set(z3d,''string'',num2str(ab700(i)));'...
     'set(z3f,''string'',num2str(doy(i)));'
     ]);
% set(zpush2,'callback',['i=i-1;'...
%      'subplot(''position'',[0.04,0.52,0.45,0.45]);'...
%      'FLMT021921=readtable(strcat(tempdir,filelist_b(i).name));plot(FLMT021921.Var1, FLMT021921.Var2);title(filelist_b(i).name);'...
%      'subplot(''position'',[0.04,0.04,0.45,0.45]);'...
%      'ratio = (FLMT021921.Var2-bg.Var2)./(ref.Var2-bg.Var2);'...
%      'absorbance = -log10 (ratio);;plot(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650), absorbance(FLMT021921.Var1>=300 & FLMT021921.Var1<=650));'...
%      'subplot(''position'',[0.54,0.45,0.4,0.4]);'...
%      'tmp_x=FLMT021921.Var1(FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);tmp_y=absorbance (FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);'...
%      'reg1=polyfit(log10(tmp_x),log10(tmp_y),1);'...
%      'r_poly=corrcoef(log10(tmp_x),log10(tmp_y));'...
%      'r2_poly=r_poly(1,2).^2;'...
%      '[aae_intercept_linfit,aae_linfit,aae_r2_linfit]=linfit(log10(tmp_x),log10(tmp_y));'...
%      'tmp_wav=wav1:1:wav2;'...
%      'plot(log10(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650)), log10(absorbance (FLMT021921.Var1>=300 & FLMT021921.Var1<=650)),''o'', log10(tmp_wav),reg1(1).*log10(tmp_wav)+reg1(2));'...
%      'xticks([log10(250) log10(300) log10(350) log10(400) log10(450) log10(500) log10(600)]);'...
%      'xticklabels({''250 nm'',''300 nm'',''350 nm'', ''400 nm'',''450 nm'',''500 nm'',''600 nm''});'...
%      'set(z1b,''string'',num2str(i));'...
%      'set(z1d,''string'',num2str(ab365(i)));'...
%      'set(z1f,''string'',num2str(ab600(i)));'...
%      'subplot(''position'',[0.04,0.52,0.45,0.45]);'...
%      'FLMT021921=readtable(filelist_b(i).name);plot(FLMT021921.Var1, FLMT021921.Var2);title(filelist_b(i).name);'...
%      'subplot(''position'',[0.04,0.04,0.45,0.45]);'...
%      'ratio = (FLMT021921.Var2-bg.Var2)./(ref.Var2-bg.Var2);'...
%      'absorbance = -log10 (ratio);;plot(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650), absorbance(FLMT021921.Var1>=300 & FLMT021921.Var1<=650));'...
%      'subplot(''position'',[0.54,0.45,0.4,0.4]);'...
%      'tmp_x=FLMT021921.Var1(FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);tmp_y=absorbance (FLMT021921.Var1>=wav1 & FLMT021921.Var1<=wav2);'...
%      'reg1=polyfit(log10(tmp_x),log10(tmp_y),1);'...
%      'r_poly=corrcoef(log10(tmp_x),log10(tmp_y));'...
%      'r2_poly=r_poly(1,2).^2;'...
%      '[aae_intercept_linfit,aae_linfit,aae_r2_linfit]=linfit(log10(tmp_x),log10(tmp_y));'...
%      'tmp_wav=wav1:1:wav2;'...
%      'plot(log10(FLMT021921.Var1(FLMT021921.Var1>=300 & FLMT021921.Var1<=650)), log10(absorbance (FLMT021921.Var1>=300 & FLMT021921.Var1<=650)),''o'', log10(tmp_wav),reg1(1).*log10(tmp_wav)+reg1(2));'...
%      'xticks([log10(250) log10(300) log10(350) log10(400) log10(450) log10(500)]);'...
%      'xticklabels({''250 nm'',''300 nm'',''350 nm'', ''400 nm'',''450 nm'',''500 nm''});'...
%      'xlabel({''Wavelength (nm)''});'...
%      'set(z1b,''string'',num2str(i));'...
%      'set(z1d,''string'',num2str(ab365(i)));'...
%      'set(z1f,''string'',num2str(ab600(i)));'...
%      'set(z2b,''string'',num2str(aae_linfit));'...
%      'set(z2d,''string'',num2str(aae_r2_linfit));'...
%      'set(z2f,''string'',num2str(reg1(1)));'...
%      'set(z3b,''string'',num2str(r2_poly));'...
%      'set(z3d,''string'',num2str(ab700(i)));'
%      ]);
 
 function [doy, timeofday, aae, aae_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r)
    filelist = dir(fullfile(tempdir, '2019*.txt'));
    bg=readtable(file_b);
    ref=readtable(file_r);
  for i=1:length(filelist)
    filename = filelist(i).name;
   
    hour(i)=str2num(filename(11:12));
    minute(i)=str2num(filename(14:15));
    second(i)=str2num(filename(17:18));
    timeofday(i)=hour(i)+minute(i)/60+second(i)/3600;
    
    f = fopen(strcat(tempdir,filename), 'r');
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
    thisdate = [month s(15:16)];
    fclose(f);
    
    doy(i) = julian2(thisdate)+timeofday(i)/24+0.0625;   
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 >= 360 & sample.Var1 <= 370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 >= 595 & sample.Var1 <= 605);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 >= 695 & sample.Var1 <= 705);
    ab700(i) = mean (absorbance(indx3));
    indx15 = find(sample.Var1 >= 300 & sample.Var1 <= 350);
%   aae(i) = (log10(ab532(i))-log10(ab470(i)))./(log10(532)-log10(470));
    x = sample.Var1(indx15);
    y = absorbance(indx15);    
 [aae_intercept(i),aae(i),aae_r2(i)]=linfit(log(x),log(y));
 end
end

function julianday=julian2(dateinput)
%dateinput got to be like ymmdd.
        %year=str2num(dateinput(1))+2000;
                year=str2num(dateinput(1:4));
                month=str2num(dateinput(5:6));
                day=str2num(dateinput(7:8));
                switch month
                        case 1
                daynum = 0;
                        case 2
                            daynum = 31;
                        case 3
                            daynum = 59;
                        case 4
                            daynum = 90;
                        case 5
                            daynum = 120;
                        case 6
                            daynum = 151;
                        case 7
                            daynum = 181;
                        case 8
                            daynum = 212;
                        case 9
                            daynum = 243;
                        case 10
                            daynum = 273;
                        case 11
                            daynum = 304;
                        case 12
                            daynum = 334;
                end
                if rem(year,4) == 0 && month > 2
                        daynum = daynum+1;
                end
                julianday = daynum+day;
end