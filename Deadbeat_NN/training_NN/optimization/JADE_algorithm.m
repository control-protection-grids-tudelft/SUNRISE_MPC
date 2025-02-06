function [pop, BestSol] = JADE_algorithm(MaxIt, nPop, Ncost, nVar, VarMin, VarMax, design_const)
%JADE_ALGORITHM Summary of this function goes here
%   Detailed explanation goes here
%% JADE algoritam
CostFunction = @(design_const,x) current_calc( design_const, x );    % Cost Function
VarSize = [1 nVar];   % Decision Variables Matrix Size

%% JADE Parameters
pbest = floor(0.2 * nPop); % number of regarded best solutions (pbest*100%)

muCR = 0.5; % initial crossover probability mean
muF = 0.5; % initial mutation probability mean
c = 0.15; % positive constant for muCR and muF adaptation
A = []; % archive (initially empty set)

%% Initialization

draw_results = 0; % input('Iscrtavanje i ispisivanje rezultata posle svake iteracije? ');

empty_individual.Position = []; % initial positions
empty_individual.Cost = []; % initial costs

BestSol.Position = VarMin;
BestSol.Cost = Inf;

pop = repmat(empty_individual, nPop, 1);

for i = 1:nPop

    pop(i).Position = unifrnd(VarMin, VarMax, VarSize);
    input_matr(i,:) = pop(i).Position;
%     pop(i).Cost = CostFunction(nref,pop(i).Position);
end

output_matrix = CostFunction(design_const,input_matr);

for br1 = 1:nPop
    
    pop(br1).Cost = output_matrix(br1,:);
    [popBetter, popViolation] = optConditions( pop(br1).Cost, BestSol.Cost );
    if popBetter && ~popViolation
        BestSol = pop(br1);
    end
    
end

BestCost = zeros(MaxIt, Ncost);

% solRating - ranking the solutions based on the optimization criteraia and potential violations
solRating = solRatingCalc( nPop,pop );

[vals, idx] = sort(solRating);
pRatings = vals(end-pbest+1:end);
pBest = pop(idx(end-pbest+1:end)); % p best ranked solutions
rndi = randperm(pbest); rndi = rndi(1);
pSol = pBest(rndi); % a random solution among the p best ranked solutions

%% DE Main Loop
% if draw_results
%     figure % za crtanje izlaza posle svake iteracije
% end

for it = 1:MaxIt
    
    SF = [];
    SCR = [];
    
    for i = 1:nPop
        
        CR(i) = min(max(normrnd(muCR,0.1),0),1); % crossover rate (limited to [0,1])
        F(i) = min(max(rnd_cauchy(muF,0.1),0),1); % mutation rate (limited to [0,1])
        
        %%%%%%%%%%%%%%%%%%%%%%%%
        
        x = pop(i).Position;
        
        A = randperm(nPop);
        
        A(A == i) = []; % iskljucuje se mogucnost primene trenutne jedinke
        
        a = A(1);
        b = A(2);
        
        % Mutation
        %beta = unifrnd(beta_min, beta_max);
        y = x + F(i)*(pSol.Position - x) + F(i)*(pop(a).Position-pop(b).Position);
        y = max(y, VarMin);
		y = min(y, VarMax);
		
        % Crossover
        z = zeros(size(x));
        j0 = randi([1 numel(x)]);
        for j = 1:numel(x)
            if rand <= CR(i) %j == j0 || rand <= CR(i)
                z(j) = y(j);
            else
                z(j) = x(j);
            end
        end
        
        if nVar == 2
            z_matr(i,:) = [z, Iref];
        else
            z_matr(i,:) = z;
        end
        NewSol(i).Position = z;
        
    end
        
    new_sol_matrix = CostFunction(design_const,z_matr);
        
    for i = 1:nPop
        
        NewSol(i).Cost = new_sol_matrix(i,:);
        replace_vec = 0; % initial desicion - do not replace the population member
        
        % Replace an existing population member?
        [NewSolBetter, NewSolViolation] = optConditions( NewSol(i).Cost, pop(i).Cost );
        [~, popViolation] = optConditions( pop(i).Cost, pop(i).Cost );
        if ~NewSolViolation
            if popViolation
                replace_vec = 1;
            else
                if NewSolBetter
                    replace_vec = 1;
                end
            end
        else
            if popViolation && NewSolBetter % replace the population member if the new solution is better and does not violate any conditions
                replace_vec = 1;
            end
        end

        % population member replacement
        if replace_vec
            pop(i) = NewSol(i);
            SCR(end+1) = CR(i);
            SF(end+1) = F(i);
        end
        
        % Checking if the new solution is the best so far 
        [popBetter, popViolation] = optConditions( pop(i).Cost, BestSol.Cost );
        if popBetter && ~popViolation
            BestSol = pop(i);
        end
        
    end
    
    % update muCR and muF
    if ~(isempty(SCR) || isempty(SF))
        muCR = (1-c)*muCR + c*mean(SCR);
        muF = (1-c)*muF + c*(sum(SF.^2))/(sum(SF));
    end    
    
    % Update Best Cost
    BestCost(it,:) = BestSol.Cost;
    BestPosition(it,:) = BestSol.Position;  
    
    % Update pSol (random solution out of the p best in the latest population)
    % solRating - solution ranking based on optimization criteria and
    % potential violations
    solRating = solRatingCalc( nPop,pop );
    
    [vals, idx] = sort(solRating);
    pRatings = vals(end-pbest+1:end);
    pBest = pop(idx(end-pbest+1:end)); % p best ranked solutions
    rndi = randperm(pbest); rndi = rndi(1);
    pSol = pBest(rndi); % random solution out of the p best ranked solutions
    
    % expectation vectors of the mutation factor and crossover rate
    muF_vec(it) = muF;
    muCR_vec(it) = muCR;

    if draw_results
        % Show Iteration Information
        disp(['Iteration ' num2str(it) ': dIavg = ' num2str(BestCost(it,1))]);

        plotVar = BestCost(1:it);
        % end
        subplot(2,1,1), plot(1:it,plotVar), drawnow
        subplot(2,1,2), plot(1:it,BestPosition(1:it,:)), drawnow
    end

    if BestCost(it)<0.01
        break
    end

end

disp(['dIavg_best = ' num2str(BestCost(it,1))]);
