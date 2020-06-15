clear all;

% June 11-12 Background TOC = 45 ppb; Background TOC used = 0 ppb;
% June 12-13 Background TOC = 48 ppb; Background TOC used = 0 ppb;
% June 24-25 Background TOC = 37 ppb; Background TOC used = 0 ppb; 
% I think the correct value of background TOC for June 24-25 is 30 ppb;
% June 28-29 Background TOC = 56 ppb; Background TOC used = 0 ppb;
% June 29-30 Background TOC = 63 ppb; Background TOC used = 0 ppb;
% I think the correct value of background TOC for June 29-30 is 90 ppb;

% July 18-19 Background TOC=56 ppb calMac_v2
% July 23-24 Background TOC=62 ppb calMac_v3
% July 24-25 Background TOC=63 ppb calMac_v3
% July 25-26 Background TOC=42 ppb calMac_v3
% July 29-30 Background TOC=52 ppb calMac_v2

%run calcAll_v2
calcAll_v4_jmao;
doy_abs=doy;

%run TOC
convertTOC_mac;
doy_toc=toc_doy;

toc=tmp1.Var14-40;

delta_a = 4/60/24;

for i=1:length(doy_abs)
    k1=find((doy_toc<=doy_abs(i)+delta_a/2)&(doy_toc>=doy_abs(i)-delta_a/2));
       if ~isempty(k1)
            kk1=find(~(isnan(toc(k1))));
            if isempty(kk1)
               toc_new(i)=NaN;
            else
               toc_new(i)=mean(toc(k1(kk1)));
            end
        else
            toc_new(i)=NaN;
        end
end

diff=ab365-ab600;

% (1) 1.9/1.6 is the flow-rate in mL/min for grey-grey/red-red 
% (2) 2.3 is nat log 10 
% (3) 13 is the air-flow rate in L/min

num=(((diff*1.6*2.303)/(13*1000))*1000000); % (M m)^-1 

den=((toc_new*1.6)/13); % ug C/m3

quo=num./den; % m^2 g^-1

% figure
% plot(doy_abs, quo)

quo (quo<0) = NaN;

% If you have a measurement of TOC as 100 ppb (after you subtracting background), 
% this means the concentration in the solution is 100 µg carbon/liter. 
% Assuming all stuff from ambient air goes into PILS flow and PILS flow all goes into TOC, 
% if you have PILS flow of 1.6 mL/min liquid and PILS air sampling flow as 13 L/min air, 
% you will have water soluble organic carbon as 100 ug C/L * 1.6 mL/min / 13 L/min = 12.3 ug C/m3 in the air.
% In order to calculate absorption coefficient at 365, Abs_365=(A365-A700)*1.6ml/min / (13L/min)/1m*ln(10). 
% For A365 - A700 = 0.07, we got Abs_365 = 19.8 (M m)^-1.
% With 12.3 ug C/m3 in the air, the mass absorption coefficient (MAC) = Abs_365/WSOC = 19.8/12.3=1.6 m2 g/C.