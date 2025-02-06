function [ dataInSub ] = data_read(filepath,Tpwm)
%DATA_READ Summary of this function goes here
%   reading the provided data from the curretn csv file

data_orig = readmatrix(filepath); % original data (prior to phase shifting)

dt1 = data_orig(2,1)-data_orig(1,1); % sampling period

dref = round(950e-6/dt1); % reference current shift (# of samples) to synchronize reference and measured currents

data1 = data_orig(dref:end,:);

Npwm1 = round(Tpwm/dt1);
vac = data1(:,12); % reference voltage obtained from the original MPC algorithm
N1 = length(vac);

% choosing the initial and final sample to encompass a whole number of
% PWM periods
for br1 = 1:N1
    if vac(br1+1) ~= vac(br1)
        idx_start1 = br1+1; % initial sample
        break
    end
end

idx_end1 = floor((N1-idx_start1)/Npwm1)*Npwm1-1+idx_start1; % final sample

time1 = data1(:,1);
time = time1(idx_start1:idx_end1)-time1(idx_start1);
%
Ia = data1(idx_start1:idx_end1,2);
Ia_ref = data_orig(idx_start1:idx_end1,3); % phase A ref. current - shifted with respect to the measured current
Ib = data1(idx_start1:idx_end1,4);
Ib_ref = data_orig(idx_start1:idx_end1,5); % phase B ref. current - shifted with respect to the measured current
Ic = -Ia-Ib;
Ic_ref = -Ia_ref-Ib_ref;
% number of inserted submodules
Nsm_a = data1(idx_start1:idx_end1,6);
Nsm_b = data1(idx_start1:idx_end1,7);
Nsm_c = data1(idx_start1:idx_end1,8);
% average voltages of all submodules in the observed phase
Vsm_a = data1(idx_start1:idx_end1,9);
Vsm_b = data1(idx_start1:idx_end1,10);
Vsm_c = data1(idx_start1:idx_end1,11);
% reference voltages obtained from MPC
va_ref = data1(idx_start1:idx_end1,12);
vb_ref = data1(idx_start1:idx_end1,13);
vc_ref = data1(idx_start1:idx_end1,14);
% instantaneous phase output voltages (calculated)
va = -(Nsm_a-100.5).*Vsm_a/2;
vb = -(Nsm_b-100.5).*Vsm_b/2;
vc = -(Nsm_c-100.5).*Vsm_c/2;

% N = length(time); % ukupan br. podataka

% Npwm = Npwm1;

dataInSub.vals = [ time, Ia, Ia_ref, Ib, Ib_ref, Ic, Ic_ref, va_ref, vb_ref, vc_ref, va, vb, vc,...
    Nsm_a, Nsm_b, Nsm_c, Vsm_a, Vsm_b, Vsm_c ];

end

