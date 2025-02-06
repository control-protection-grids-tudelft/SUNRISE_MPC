function [ vals_10us, R, L ] = param_calc( filepath, Tpwm )
%PARAM_CALC Summary of this function goes here
%   Detailed explanation goes here
[ dataInSub ] = data_read(filepath,Tpwm);
vals_10us = dataInSub.vals;

N = length(vals_10us(:,1)); % total number of samples
dt = vals_10us(2,1)-vals_10us(1,1); % sampling period
%
Ia = vals_10us(:,2);
Ia_ref = vals_10us(:,3);
Ib = vals_10us(:,4);
Ib_ref = vals_10us(:,5);
Ic = vals_10us(:,6);
Ic_ref = vals_10us(:,7);
Va = vals_10us(:,11);
Vb = vals_10us(:,12);
Vc = vals_10us(:,13);
% averaging interval (1 if no averaging is applied)
navg = 1;
% values from the previous sampling step
Ia_prev = Ia(1:end-navg-2);
Ib_prev = Ib(1:end-navg-2);
Ic_prev = Ic(1:end-navg-2);
% vrednosti u tekucem koraku
Ia_now = Ia(2:end-navg-1);
Ib_now = Ib(2:end-navg-1);
Ic_now = Ic(2:end-navg-1);
% values in the current sampling step
Ia_next = Ia(2+navg:end-1);
Ib_next = Ib(2+navg:end-1);
Ic_next = Ic(2+navg:end-1);
%
Ia_avg = (Ia_now);%+Ia_next)/2;
Ib_avg = (Ib_now); %+Ib_next)/2;
Ic_avg = (Ic_now);%+Ic_next)/2;
% current derivatives over one sampling interval
dIadt = (Ia_next-Ia_now)/1/dt;
dIbdt = (Ib_next-Ib_now)/1/dt;
dIcdt = (Ic_next-Ic_now)/1/dt;
% average voltage values in the current sampling interval
Va_avg = (Va(1:end-3)+Va(1:end-3))/2; %movmean(Va,navg);
Vb_avg = (Vb(1:end-3)+Vb(1:end-3))/2; %movmean(Vb,navg);
Vc_avg = (Vc(1:end-3)+Vc(1:end-3))/2; %movmean(Vc,navg);

if length(Va_avg)>length(Ia_now)
    Va_avg = Va_avg(1:length(Ia_now));
    Vb_avg = Vb_avg(1:length(Ia_now));
    Vc_avg = Vc_avg(1:length(Ia_now));
end

% parameter calculation based on Moore-Penrose inversion
A = [-Ia_avg, 1/3*(2*Va_avg-Vb_avg-Vc_avg);...
    -Ib_avg, 1/3*(2*Vb_avg-Vc_avg-Va_avg);...
    -Ic_avg, 1/3*(2*Vc_avg-Va_avg-Vb_avg)];
b = [dIadt; dIbdt; dIcdt];

% A = [-Ic_avg, 1/3*(2*Vc_avg-Va_avg-Vb_avg)];
% b = [dIcdt];

params = (transpose(A)*A)^-1*transpose(A)*b;
% calculated inductance and resistance values
L = 1/params(2);
R = params(1)*L;
end

