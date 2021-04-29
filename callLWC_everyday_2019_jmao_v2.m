% (1) 30 may 2019
inputdate='20190530';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/may/30_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/may/30/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/may/30/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2, aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=150.8|doy<=151.5)=NaN;
% ab600(doy>=150.8|doy<=151.5)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
disp(inputdate);
clear timeofday ab365 ab600 absorbance ab700

% (2) 09 jun 2019
inputdate='20190609';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/09_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/09/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/09/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=160.8|doy<=161.5)=NaN;
% ab600(doy>=160.8|doy<=161.5)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (3) 10 jun 2019
inputdate='20190610';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/10_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/10/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/10/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=161.8|doy<=162.5)=NaN;
% ab600(doy>=161.8|doy<=162.5)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (4) 11 jun 2019
inputdate='20190611';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/11_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/11/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/11/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=162.8|doy<=163.5)=NaN;
% ab600(doy>=162.8|doy<=163.5)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (5) 12 jun 2019
inputdate='20190612';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/12_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/12/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/12/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=165.8|doy<=166.5)=NaN;
% ab600(doy>=165.8|doy<=166.5)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (6) 14 jun 2019
inputdate='20190614';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/14_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/14/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/14/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=163.8|doy<=164.5)=NaN;
% ab600(doy>=163.8|doy<=164.5)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (7) 19 jun 2019
inputdate='20190619';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/19_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/19/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/19/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=170.8|doy<=171.5)=NaN;
% ab600(doy>=170.8|doy<=171.5)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (8) 24 jun 2019
inputdate='20190624';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/24_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/24/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/24/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=163.8|doy<=164.5)=NaN;
% ab600(doy>=163.8|doy<=164.5)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (9) 28 jun 2019
inputdate='20190628';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/28_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/28/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/28/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=179.8|doy<=180.5)=NaN;
% ab600(doy>=179.8|doy<=180.5)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (10) 29 jun 2019
inputdate='20190629';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/29_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/29/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jun/29/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=180.8|doy<=181.7)=NaN;
% ab600(doy>=180.8|doy<=181.7)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (11) 18 jul 2019
inputdate='20190718';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/18_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/18/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/18/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=199.7|doy<=200.6)=NaN;
% ab600(doy>=199.7|doy<=200.6)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (12) 23 jul 2019
inputdate='20190723';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/23_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/23/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/23/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=204.7|doy<=205.6)=NaN;
% ab600(doy>=204.7|doy<=205.6)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (13) 24 jul 2019
inputdate='20190724';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/24_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/24/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/24/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=205.7|doy<=206.6)=NaN;
% ab600(doy>=205.7|doy<=206.6)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (14) 25 jul 2019
inputdate='20190725';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/25_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/25/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/25/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=206.9|doy<=207.6)=NaN;
% ab600(doy>=206.9|doy<=207.6)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

% (15) 29 jul 2019
inputdate='20190729';
tempdir = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/29_new/'; 
file_b = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/29/bac.txt'; 
file_r = '/Volumes/GoogleDrive/Shared drives/BrownCarbon_2019/Data/abs/jul/29/ref.txt'; 
datafile=[tempdir 'LWCC' inputdate '.mat'];
[doy, timeofday,aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r);
%why? removing time for change of water and the air bubbls that immediately
%ensue
% ab365(doy>=211.1|doy<=211.7)=NaN;
% ab600(doy>=211.1|doy<=211.7)=NaN;
save (datafile, 'doy', 'timeofday','ab365','ab600','absorbance','ab700', 'aae','aae_r2', 'aae2','aae2_r2');
clear timeofday ab365 ab600 absorbance ab700

function [doy, timeofday, aae, aae_r2,aae2, aae2_r2,ab365,ab600, ab700, absorbance]=calLWCC(tempdir, file_b,file_r)
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
 % it seems that aae is dependent upon the absolute value of absorbance.
    y2 = absorbance(indx15)-ab700(i);    
 [aae2_intercept(i),aae2(i),aae2_r2(i)]=linfit(log(x),log(y2));
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

function [A,B,Correlation]= linfit(x,y)
x=x(~isnan(x));
y=y(~isnan(x));
y=y(~isnan(y));
x=x(~isnan(y));
% Calculate a linear least squares fit of the form y=A+Bx 
% The function also return standard error in y, and the coefficients A and B
% [A,B,Rsquare]= fit(x,y)

sumx=0;   
sumy=0;
sxs=0;
sys=0;
sumxy=0;
linear=0;

N=length(x);
for i=1:N
 sumx=sumx+x(i);
 sumy=sumy+y(i);
 sxs=sxs+x(i)^2;
 sys=sys+y(i)^2;
 sumxy=sumxy+x(i)*y(i);
end

del=N*sxs-(sumx)^2;
dela=N*sys-(sumy)^2;

A=(sxs*sumy-sumx*sumxy)/del;

B=(N*sumxy-sumx*sumy)/del;

for i=1:N
 linear=linear+[y(i)-A-B*x(i)]^2;
end

Correlation=(N*sumxy-sumx*sumy)/sqrt(del)/sqrt(dela);

Rsquare=Correlation^2;
return;

end
 