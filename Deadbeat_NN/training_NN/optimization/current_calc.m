function z = current_calc( design_const, design_vars )

% Calculation of the current response over one PWM period when the modified
% voltages are applied + calculation of the reference tracking error

options = optimset('Display','off');

% desing constants
L = design_const.params(2); % circuit inductance
R = design_const.params(1); % circuit resistance
tau = L/R; % time constant
Ts = design_const.params(4); % sampling period
Tpwm = design_const.params(3); % pwm period

wfms = design_const.wfms; % measured waveforms

% measured variables (waveforms on a 1ms interval)
time = wfms(:,1); 
Imer = wfms(:,[2, 4, 6]); % measured currents
Iref = wfms(:,[3, 5, 7]); % reference currents
vref = wfms(:,[8,9,10]); % reference voltages
vmer = wfms(:,[11,12,13]); % measured voltages
Nsm = wfms(:,[14,15,16]); % inserted submodules
Vsm = wfms(:,[17,18,19]); % submodule mean voltages

% design variables (voltage reference variations)
dvref_vec = design_vars(:,[1,2,3]);

%% Conducting femm model construction and calculations for the whole set of inputs
[ nrows, ncols ] = size(design_vars);
z = zeros(nrows,1);

dIavg_original = abs(mean(Iref-Imer));

% Inew = Imer;

parfor br1 = 1:length(dvref_vec(:,1))

    % Voltage variations
    dvref = dvref_vec(br1,:);

    % Modified reference voltages and submodule numbers
    vref_new = mean(vref) + dvref;
    Nsm_avg = (100.5 - vref_new*2./mean(Vsm)); % mean submodule number over 1ms
    Nsm1 = ceil(Nsm_avg);
    Nsm2 = floor(Nsm_avg);
    k1 = fsolve(@(x) (x.*Nsm1+(1-x).*Nsm2) - Nsm_avg, [ 0.5, 0.5, 0.5 ], options); % duty cycle (essentially)
    % counter signal (carrier)
    up_count = linspace(0,1,round(Tpwm/Ts/2));
    down_count = fliplr(up_count);
    ud_count = [up_count, down_count]';

    Nsm_new = zeros(length(ud_count), 3);
    for nph = 1:3
        Nsm_new(k1(nph)>ud_count,nph) = Nsm1(nph);
        Nsm_new(k1(nph)<=ud_count,nph) = Nsm2(nph);
    end

    vabc_applied = (100.5-Nsm_new).*Vsm/2;
    
    % Calculating the current response waveform over one PWM period
    Inew = inew_calc( Imer,Ts,tau,vabc_applied,R );

    % % Inew(1,:) = Imer(1,:);
    % 
    % for br2 = 2:length(Imer)
    %     Inew(br2,:) = Inew(br2-1,:)*exp(-Ts/tau) + vabc_applied(br2-1,:)/R*(1-exp(-Ts/tau));
    % end
    
    % mean current tracking error over one sampling period
    dIavg_new = abs(mean(Iref-Inew));
    
    z(br1) = max(dIavg_new./dIavg_original); % accuracy improvement (worst case among the three phases)


end
