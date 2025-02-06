close all; clear; clc

%% Circuit parameter calculation
folder = '..\simulation_data\';

wfms_all = [];

for br1 = 1:70
    
    filepath = [folder,['data',num2str(br1),'.csv']];
    Tpwm = 1e-3; % pwm period

    [ wfms, Rvec(br1), Lvec(br1) ] = param_calc(filepath,Tpwm);

    wfms_all = [ wfms_all; wfms ];

end


L = mean(Lvec);
R = mean(Rvec);

% svaki 100 odbirak se uzima (na 1 ms odabiranje)
wfms_all = wfms_all(1:100:end,:);
% eliminisanje "losih" tacaka (onih gde je optimizacija izasla van opsega)
range_sel = [1:4243,7477:12411,13070:length(wfms_all(:,1))];

time = wfms_all(range_sel,1);
Ia = wfms_all(range_sel,2);
Ia_ref = wfms_all(range_sel,3);
Ib = wfms_all(range_sel,4);
Ib_ref = wfms_all(range_sel,5);
Ic = wfms_all(range_sel,6);
Ic_ref = wfms_all(range_sel,7);
% reference current are shifted to align with the measured values
Ia_ref = Ia_ref([2:end,1]);
Ib_ref = Ib_ref([2:end,1]);
Ic_ref = Ic_ref([2:end,1]);
%
va_ref = wfms_all(range_sel,8);
vb_ref = wfms_all(range_sel,9);
vc_ref = wfms_all(range_sel,10);
va = wfms_all(range_sel,11);
vb = wfms_all(range_sel,12);
vc = wfms_all(range_sel,13);
Nsm_a = wfms_all(range_sel,14);
Nsm_b = wfms_all(range_sel,15);
Nsm_c = wfms_all(range_sel,16);
Vsm_a = wfms_all(range_sel,17);
Vsm_b = wfms_all(range_sel,18);
Vsm_c = wfms_all(range_sel,19);

Icmplx = Ia + exp(1j*2*pi/3)*Ib + exp(-1j*2*pi/3)*Ic;
Icmplx_ref = Ia_ref + exp(1j*2*pi/3)*Ib_ref + exp(-1j*2*pi/3)*Ic_ref;
vcmplx_ref = va_ref + exp(1j*2*pi/3)*vb_ref + exp(-1j*2*pi/3)*vc_ref;

Irms = abs(Icmplx);
phI = angle(Icmplx);
Irms_ref = abs(Icmplx_ref);
phI_ref = angle(Icmplx_ref);
vrms_ref = abs(vcmplx_ref);
phv_ref = angle(vcmplx_ref);


opt_results = load('opt_results_7_1_2024.mat');
dvref = opt_results.inBest;

dva = dvref(range_sel,1);
dvb = dvref(range_sel,2);
dvc = dvref(range_sel,3);

dvref_cmplx = dva + exp(1j*2*pi/3)*dvb + exp(-1j*2*pi/3)*dvc;
dvref_rms = abs(dvref_cmplx);
dvref_ph = angle(dvref_cmplx);

va0 = 1/3*(2*va-vb-vc);
vb0 = 1/3*(2*vb-vc-va);
vc0 = 1/3*(2*vc-va-vb);
va0_ref = 1/3*(2*va_ref-vb_ref-vc_ref);
vb0_ref = 1/3*(2*vb_ref-vc_ref-va_ref);
vc0_ref = 1/3*(2*vc_ref-va_ref-vb_ref);

inputs_NN = [ Ia_ref, Ib_ref, Ia, Ib, va_ref, vb_ref ];
outputs_NN = [ dva, dvb, dvc ];

% mean values and standard deviations used for data normalization
in_avg = mean(inputs_NN);
in_dev = std(inputs_NN);
out_avg = mean(outputs_NN);
out_dev = std(outputs_NN);
%
inputs_NN = ( inputs_NN - in_avg )./in_dev;
outputs_NN = ( outputs_NN - out_avg )./out_dev;

%% NN traning and testing
nn_d = NN_training(inputs_NN,outputs_NN);

% idealne vrednosti reference dobijene optimizacijom
va_ref_ideal = va_ref+dva;
vb_ref_ideal = vb_ref+dvb;
vc_ref_ideal = vc_ref+dvc;

% reference voltage increments obtained using the NN
out_calc = nn_d(inputs_NN')';
% denormalization of reference voltage increments
out_calc = out_calc.*out_dev + out_avg;
dva_calc = out_calc(:,1);
dvb_calc = out_calc(:,2);
dvc_calc = out_calc(:,3);

% modified voltage references
va_ref_NN = va_ref + dva_calc;
vb_ref_NN = vb_ref + dvb_calc;
vc_ref_NN = vc_ref + dvc_calc;

% figure, scatter(va_ref,(va_ref_NN-va_ref_ideal(:,1))./va_ref_ideal(:,1)*100), hold on
% scatter(va_ref,(va_ref-va_ref_ideal(:,1))./va_ref_ideal(:,1)*100)

dev_NN = std([va_ref_NN-va_ref_ideal, vb_ref_NN-vb_ref_ideal, vc_ref_NN-vc_ref_ideal]);
err_NN = mean([va_ref_NN-va_ref_ideal, vb_ref_NN-vb_ref_ideal, vc_ref_NN-vc_ref_ideal]);

% figure, plot(va_ref), hold on, plot(va_ref_ideal), plot(va_ref_NN)

% Error histograms to examine NN performance
figure, histogram(abs(va_ref_ideal-va_ref_NN)./abs(va_ref_ideal)*100, 0:100)
hold on, histogram(abs(vb_ref_ideal-vb_ref_NN)./abs(vb_ref_ideal)*100 , 0:100)
histogram(abs(vc_ref_ideal-vc_ref_NN)./abs(vc_ref_ideal)*100, 0:100)

%% Writing the NN training data to a csv file
input_data = inputs_NN;
output_data = outputs_NN;
T = array2table([input_data, output_data]);
T.Properties.VariableNames = {'Iaref','Ibref','Ia','Ib','varef','vbref','dva','dvb','dvc'};
writetable(T,'../training_data.csv')

