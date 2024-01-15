function learn(windowSize,option,sigma_similarity,alpha_smoothness,beta_smoothness,iter_smoothness,lambda_sparsity,subject)

%% Set default parameters

if(nargin==0)
    windowSize = 8;
    option = 'SI';
    sigma_similarity = 1;
end

%% Add dependencies

addpath(".\functions");
addpath("D:\MOSEK\mosek\10.0\toolbox\r2017a");
addpath("D:\yalmip\YALMIP-master\YALMIP-master");
addpath("D:\yalmip\YALMIP-master\YALMIP-master\extras");
addpath("D:\yalmip\YALMIP-master\YALMIP-master\solvers");
addpath("D:\yalmip\YALMIP-master\YALMIP-master\modules");
addpath("D:\yalmip\YALMIP-master\YALMIP-master\modules\parametric");
addpath("D:\yalmip\YALMIP-master\YALMIP-master\modules\moment");
addpath("D:\yalmip\YALMIP-master\YALMIP-master\modules\global");
addpath("D:\yalmip\YALMIP-master\YALMIP-master\modules\sos");
addpath("D:\yalmip\YALMIP-master\YALMIP-master\operators");

%% Learning

if(strcmp(option,'SM'))
    smoothness(windowSize,alpha_smoothness,beta_smoothness,iter_smoothness,subject);
elseif(strcmp(option,'PE'))
    pearson(windowSize,subject);
elseif(strcmp(option,'SP'))
    sparsity(windowSize,lambda_sparsity,subject);
else
    similarity(windowSize,sigma_similarity,subject);
end

end