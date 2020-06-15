%update on June 2, 201
% I added code to read the day and month from each file.

%tempdir = 'G:\Team Drives\Data\LWCC 2019\5-30\';
tempdir = '/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/abs/jun/29_new/'; 
filelist = dir(fullfile(tempdir, '2019*.txt'));

%file_b='G:\Team Drives\Data\LWCC 2019\5-30\bac.txt';
file_b='/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/abs/jun/29/bac.txt'; 
bg=readtable(file_b);

% file_r='G:\Team Drives\Data\LWCC 2019\5-26\ref.txt';
file_r='/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/abs/jun/29/ref.txt'; 
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
    
    doy(i) = julian2(thisdate)+timeofday(i)/24;
    
    sample=readtable(strcat(tempdir,filename));
    ratio = (sample.Var2-bg.Var2)./(ref.Var2-bg.Var2);
    absorbance = -log10 (ratio);
    indx1=find(sample.Var1 >= 360 & sample.Var1 <= 370);
    ab365(i) = mean (absorbance(indx1));
    indx2=find(sample.Var1 >= 595 & sample.Var1 <= 605);
    ab600(i) = mean (absorbance(indx2));
    indx3=find(sample.Var1 >= 695 & sample.Var1 <= 705);
    ab700(i) = mean (absorbance(indx3));
    indx4 = find(sample.Var1 >= 465 & sample.Var1 <= 475);
    ab470(i) = mean (absorbance(indx4));
    indx5 = find(sample.Var1 >= 527 & sample.Var1 <= 537);
    ab532(i) = mean (absorbance(indx5));
    indx6 = find(sample.Var1 >= 383 & sample.Var1 <= 393);
    ab388(i) = mean (absorbance(indx6));
    indx7 = find(sample.Var1 >= 435 & sample.Var1 <= 445);
    ab440(i) = mean (absorbance(indx7));
    indx8 = find(sample.Var1 >= 275 & sample.Var1 <= 285);
    ab280(i) = mean (absorbance(indx8));
    indx10 = find(sample.Var1 >= 325 & sample.Var1 <= 335);
    ab330(i) = mean(absorbance(indx10));
    indx11 = find(sample.Var1 >= 495 & sample.Var1 <= 505);
    ab500(i) = mean(absorbance(indx11));
    indx12 = find(sample.Var1 >= 330 & sample.Var1 <= 500);
    indx13 = find(sample.Var1 >= 300 & sample.Var1 <= 400);
    indx14 = find(sample.Var1 >= 350 & sample.Var1 <= 450);
    indx15 = find(sample.Var1 >= 300 & sample.Var1 <= 350);
%   aae(i) = (log10(ab532(i))-log10(ab470(i)))./(log10(532)-log10(470));
    x = sample.Var1(indx15);
    y = absorbance(indx15);
    
 [aae_intercept(i),aae(i),aae_r2(i)]=linfit(log(x),log(y));
%     if(imag(aae_r2(i))~=0)
%         aae_r2(i)=NaN;
%     end
%     if(abs(aae_r2(i))<=0.9999)
%         aae_r2(i)=NaN;
%     end
%     if(imag(aae(i))~=0)
%         aae(i)=NaN;
%     end
%     if(isnan(aae_r2(i)))
%         aae(i)=NaN;
%     end
%     if(-aae(i)>=9.0)
%        aae(i)=NaN; 
%     end
end

%[aae_intercept,aae,aae_r2]=linfit(log(x),log(y));

% ab365 (0.95<= ab365) = NaN;
%   if(imag(aae)~=0)
%       aae=NaN;
%   end
%   aae(aae>0) = NaN;
% aae = real(aae);
% ab365(ab365<=0)=NaN;
% ab600(ab600<=0)=NaN;
% [doy1,ab_365]=remove_data(,,,,doy,ab365);
% [doy2,ab_600]=remove_data(,,,,doy,ab600);
% Find Nan doy
% May 26-27
% indx26may=find(doy<=147.5);
% doy(indx26may)=NaN;
% ab365(indx26may)=NaN;
% ab600(indx26may)=NaN;
% indx26may=find(doy>=148.0);
% doy(indx26may)=NaN;
% ab365(indx26may)=NaN;
% ab600(indx26may)=NaN;
% May 30-31
% indx30may=find(doy<=150.8);
% doy(indx30may)=NaN;
% ab365(indx30may)=NaN;
% ab600(indx30may)=NaN;
% indx30may=find(doy>=151.5);
% doy(indx30may)=NaN;
% ab365(indx30may)=NaN;
% ab600(indx30may)=NaN;
% June 04-05
% June 02-03
% indx02jun=find(doy<=155.5);
% doy(indx02jun)=NaN;
% ab365(indx02jun)=NaN;
% ab600(indx02jun)=NaN;
% indx02jun=find(doy>=153.5);
% doy(indx02jun)=NaN;
% ab365(indx02jun)=NaN;
% ab600(indx02jun)=NaN;
% indx04jun=find(doy>=155.7);
% doy(indx04jun)=NaN;
% ab365(indx04jun)=NaN;
% ab600(indx04jun)=NaN;
% indx04jun=find(doy<=155.6);
% doy(indx04jun)=NaN;
% ab365(indx04jun)=NaN;
% ab600(indx04jun)=NaN;
% June 05-06
% indx05jun=find(doy>=157.5);
% doy(indx05jun)=NaN;
% ab365(indx05jun)=NaN;
% ab600(indx05jun)=NaN;
% indx05jun=find(doy<=156.9);
% doy(indx05jun)=NaN;
% ab365(indx05jun)=NaN;
% ab600(indx05jun)=NaN;
% June 09-10
% indx09jun=find(doy>=161.5);
% doy(indx09jun)=NaN;
% ab365(indx09jun)=NaN;
% ab600(indx09jun)=NaN;
% indx09jun=find(doy<=160.8);
% doy(indx09jun)=NaN;
% ab365(indx09jun)=NaN;
% ab600(indx09jun)=NaN;
% June 10-11
% indx10jun=find(doy>=162.5);
% doy(indx10jun)=NaN;
% ab365(indx10jun)=NaN;
% ab600(indx10jun)=NaN; 
% indx10jun=find(doy<=161.8);
% doy(indx10)=NaN;
% ab365(indx10jun)=NaN;
% ab600(indx10jun)=NaN;
% June 11-12
% indx11jun=find(doy>=163.5);
% doy(indx11jun)=NaN;
% ab365(indx11jun)=NaN;
% ab600(indx11jun)=NaN; 
% indx11jun=find(doy<=162.8);
% doy(indx11jun)=NaN;
% ab365(indx11jun)=NaN;
% ab600(indx11jun)=NaN; 
% June 12-13
% indx12jun=find(doy>=164.5);
% doy(indx12jun)=NaN;
% ab365(indx12jun)=NaN;
% ab600(indx12jun)=NaN;
% indx12jun=find(doy<=163.8);
% doy(indx12jun)=NaN;
% ab365(indx12jun)=NaN;
% ab600(indx12jun)=NaN;
% June 14-15
% indx14jun=find(doy>=166.5);
% doy(indx14jun)=NaN;
% ab365(indx14jun)=NaN;
% ab600(indx14jun)=NaN;
% indx14jun=find(doy<=165.8);
% doy(indx14jun)=NaN;
% ab365(indx14jun)=NaN;
% ab600(indx14jun)=NaN;
% %June 19-20
% indx19jun=find(doy>=171.5);
% doy(indx19jun)=NaN;
% ab365(indx19jun)=NaN;
% ab600(indx19jun)=NaN; 
% indx19jun=find(doy<=170.8);
% doy(indx19jun)=NaN;
% ab365(indx19jun)=NaN;
% ab600(indx19jun)=NaN; 
% %June 22-23
% indx22jun=find(doy>=173.7);
% doy(indx22jun)=NaN;
% ab365(indx22jun)=NaN;
% ab600(indx22jun)=NaN; 
% indx22jun=find(doy<=173.6);
% doy(indx22jun)=NaN;
% ab365(indx22jun)=NaN;
% ab600(indx22jun)=NaN;   
% June 23-24
% indx23jun=find(doy>=174.7);
% doy(indx23jun)=NaN;
% ab365(indx23jun)=NaN;
% ab600(indx23jun)=NaN;
% indx23jun=find(doy<=174.6);
% doy(indx23jun)=NaN;
% ab365(indx23jun)=NaN;
% ab600(indx23jun)=NaN;
% June 24-25
% indx24jun=find(doy>=176.5);
% doy(indx24jun)=NaN;
% ab365(indx24jun)=NaN;
% ab600(indx24jun)=NaN;
% indx24jun=find(doy<=175.8);
% doy(indx24jun)=NaN;
% ab365(indx24jun)=NaN;
% ab600(indx24jun)=NaN;
% June 28-29
% indx28jun=find(doy>=180.5); % 180.4792 % 180.4792
% doy(indx28jun)=NaN;
% ab365(indx28jun)=NaN;
% ab600(indx28jun)=NaN;
% indx28jun=find(doy<=179.8); % 180.2292 % 180.4375
% doy(indx28jun)=NaN;
% ab365(indx28jun)=NaN;
% ab600(indx28jun)=NaN;
% June 29-30
indx29jun=find(doy>=181.7);
doy(indx29jun)=NaN;
ab365(indx29jun)=NaN;
ab600(indx29jun)=NaN; 
indx29jun=find(doy<=180.8);
doy(indx29jun)=NaN;
ab365(indx29jun)=NaN;
ab600(indx29jun)=NaN;
% July 18-19
% indx18jul=find(doy>=200.6);
% doy(indx18jul)=NaN;
% ab365(indx18jul)=NaN;
% ab600(indx18jul)=NaN;
% indx18jul=find(doy<=199.7);
% doy(indx18jul)=NaN;
% ab365(indx18jul)=NaN;
% ab600(indx18jul)=NaN;
% July 23
% indx23jul=find(doy>=205.6);
% doy(indx23jul)=NaN;
% ab365(indx23jul)=NaN;
% ab600(indx23jul)=NaN;
% indx23jul=find(doy<=204.7);
% doy(indx23jul)=NaN;
% ab365(indx23jul)=NaN;
% ab600(indx23jul)=NaN;
% July 24-25
% indx24jul=find(doy>=206.6);
% doy(indx24jul)=NaN;
% ab365(indx24jul)=NaN;
% ab600(indx24jul)=NaN;
% indx24jul=find(doy<=205.7);
% doy(indx24jul)=NaN;
% ab365(indx24jul)=NaN;
% ab600(indx24jul)=NaN;
% July 25-26
% indx25jul=find(doy>=207.6);
% doy(indx25jul)=NaN;
% ab365(indx25jul)=NaN;
% ab600(indx25jul)=NaN;
% indx25jul=find(doy<=206.9);
% doy(indx25jul)=NaN;
% ab365(indx25jul)=NaN;
% ab600(indx25jul)=NaN;
% July 29-30
% indx29jul=find(doy>=211.7);
% doy(indx29jul)=NaN;
% ab365(indx29jul)=NaN;
% ab600(indx29jul)=NaN;
% indx29jul=find(doy<=211.1);
% doy(indx29jul)=NaN;
% ab365(indx29jul)=NaN;
% ab600(indx29jul)=NaN;

% figure
% plot(doy, ab365, 'b.-', doy, ab600, 'k.-')
% figure
% plot(doy, -aae, 'r.-');

% figure(2)
% subplot(3,1,1)
% plot(doy1, ab_365, 'b.-', doy2, ab_600 ,'k.-')
% axis([211 212  -0.5 0.5]);
% ylabel('Absorbance')
% xlabel('Time of day')

% subplot(3,1,2)
% plot(doy, ab365, 'b.-', doy, ab600 ,'k.-')
% axis([211 212 -0.5 0.5]);
% ylabel('Absorbance')
% xlabel('Time of day')

% subplot(3,1,3)
% plot(doy, ab365, 'b.-', doy, ab600 ,'k.-')
% ylabel('Absorbance')
% xlabel('Time of day')

%title('July 31st to August 1 Fire Event')

% figure
% plot(x, y, 'b')
% title('y-axis: ab365 (x e04 a.u.) versus x-axis: Wavelength (nm)')

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

