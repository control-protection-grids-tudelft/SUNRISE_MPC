function [better, violation] = optConditions( current, best )
%OPTCONDITIONS Summary of this function goes here
%   Detailed explanation goes here
% better - if equal to 1, the new solution is better than the previous best
% solution in terms of the optimization criterion
% violation - if equal to 1, a limit is violated
better = current(1) < best(1);

violation = 0; % no violations are assumed, although they could be added (i.e., in terms of max available voltage)

end

