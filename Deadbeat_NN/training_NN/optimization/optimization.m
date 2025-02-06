close all; clear; clc

options = optimset('Display','off');

%% Circuit parameter calculation
folder = '..\simulation_data\';

wfms_all = [];

for br1 = 1:70
    
    filepath = [folder,['data',num2str(br1),'.csv']];
    Tpwm = 1e-3; % pwm period
    
    % reading data from the current csv file and calculating the R and L
    % parameters
    [ wfms, Rvec(br1), Lvec(br1) ] = param_calc(filepath,Tpwm);

    wfms_all = [ wfms_all; wfms ];

end

% averaging the values of L and R calculated from each file
L = mean(Lvec);
R = mean(Rvec);
Ts = 10e-6; % sampling period

%% Constant input parameters
% Ntot = length(vals_1ms(:,1)); % ukupan br. perioda od 1ms
Lper = Tpwm/Ts; % number of samples in one PWM period
Ntot = round(length(wfms_all(:,1))/Lper); % total number of samples sampled at Tpwm

design_const.params = [R L Tpwm Ts]; % circuit parameters (same for all runs)

figure

for br1 = 1:Ntot % each loop execution refers to one PWM period
    wfms = wfms_all(1+Lper*(br1-1):br1*Lper,:); % waveforms corresponding to the current PWM period

    % constant inputs vector
    design_const.wfms = wfms; % talasni oblici tokom 1ms

    % variable inputs (range limits)
    dva_min = -24; dva_max = 24;   % phase A voltage reference variation
    dvb_min = -24; dvb_max = 24;   % phase B voltage reference variation
    dvc_min = -24; dvc_max = 24;   % phase C voltage reference variation

    %% Optimization algorithm parameters
    Ncost = 1; % number of outputs of CostFunction [ dI, dI_avg ]
    MaxIt = 200; % max no. of iterations

    % Optimization variable limits
    VarMin = [ dva_min, dvb_min, dvc_min ];
    VarMax = [ dva_max, dvb_max, dvc_max ];
    nVar = length(VarMin);
    nPop = nVar*30; % Population Size

    %% Execution of the optimization algorithm
    [pop, BestSol] = JADE_algorithm( MaxIt, nPop, Ncost, nVar, VarMin, VarMax, design_const );

    for br2 = 1:length(BestSol)
        inBest(br1,:) = BestSol(br2).Position;
        outBest(br1,:) = BestSol(br2).Cost;
    end
    
    % Plotting optimal inputs and outputs after each loop iteration
    subplot(2,1,1), plot(outBest), drawnow
    subplot(2,1,2), plot(inBest), drawnow

end

figure, plot(outBest)

save(['opt_results_',char(datetime),'.mat'],'inBest','outBest')

