file_date_1=readtable('/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/dec.xls', 'Range', 'J769:J1513');
file_date_2=flipud(file_date_1);
file_time_1=readtable('/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/dec.xls', 'Range', 'K769:K1513');
file_time_2=flipud(file_time_1);
file_data_pm251=readtable('/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/dec.xls', 'Range', 'N769:N1513');
file_data_pm252=flipud(file_data_pm251);
file_data_co1=readtable('/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/dec.xls', 'Range', 'N3745:N4489');
file_data_co2=flipud(file_data_co1);
file_data_nox1=readtable('/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/dec.xls', 'Range', 'N6721:N7465');
file_data_nox2=flipud(file_data_nox1);
file_data_noy1=readtable('/Users/sujaibanerji/Documents/MATLAB/28_oct_2019/dec.xls', 'Range', 'N9697:N10441');
file_data_noy2=flipud(file_data_noy1);
datestr=char(file_date_2.x01_Aug_2019);
file_time_2 = file_time_2{:,:};
%how many days before June:
daynum = 181;

for i=1:744
%     if i>=803
%       month=07;
%       year=str2num(datestr(i,8:11));
%       day1=str2num(datestr(i,1));
%       day2=str2num(datestr(i,2));
%       day(i)=day1*10+day2;
%       hour1=str2num(timestr(i,1));
%       hour2=str2num(timestr(i,2));
%       hour(i)=double(hour1*10+hour2);
%       timeofday(i)=double(hour(i))*(1/24);
%       noy_doy(i)=day(i)+181+timeofday(i);
%       co_doy(i)=day(i)+181+timeofday(i);
%       pm25_doy(i)=day(i)+181+timeofday(i);
%     else
      month=7;
      day1=str2num(datestr(i,1));
      day2=str2num(datestr(i,2));
      year=str2num(datestr(i,8:11));
      day(i)=day1*10+day2;
      file_pm25_doy(i)=day(i)+daynum+file_time_2(i)+0.0625;
      file_co_doy(i)=day(i)+daynum+file_time_2(i)+0.0625;
      
%     end
end