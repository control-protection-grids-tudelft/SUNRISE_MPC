function Inew = inew_calc( Imer,Ts,tau,vabc_applied,R )
%INEW_CALC Summary of this function goes here
%  Calculation of the phase currents at the beginning of the next sampling
%  inteval based on the previous current and the applied voltages

Inew(1,:) = Imer(1,:);

for br2 = 2:length(Imer)
    Inew(br2,:) = Inew(br2-1,:)*exp(-Ts/tau) + vabc_applied(br2-1,:)/R*(1-exp(-Ts/tau));
end

end

