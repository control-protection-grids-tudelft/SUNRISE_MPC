function solRating = solRatingCalc(nPop,pop)
%SOLRATINGCALC Summary of this function goes here
%   Detailed explanation goes here
solRating = zeros(nPop,1);

for i = 1:nPop
    dIavg = pop(i).Cost(1);    
    % solRating - based on the opitmization criterion
    solRating(i) = dIavg;
end

end
