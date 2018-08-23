%_________________________________________________________________________%
% Modified for                                                           %
% Continuous time chaotic system on Whale Optimization Algorithm          %
%                                                                         %
%  Developed in MATLAB R2011b(7.13)                                       %
%                                                                         %
%  programmer: Seyedali Mirjalili                                         %
% The initial parameters that you need are:
%__________________________________________
% fobj = @YourCostFunction
% dim = number of your variables
% Max_iteration = maximum number of generations
% SearchAgents_no = number of search agents
% lb=[lb1,lb2,...,lbn] where lbn is the lower bound of variable n
% ub=[ub1,ub2,...,ubn] where ubn is the upper bound of variable n
% If all the variables have equal lower bound you can just
% define lb and ub as two single number numbers
% To run algorithm: [Best_score,Best_pos,WOA_cg_curve]=WOA(SearchAgents_no,Max_iteration,lb,ub,dim,fobj)
clear
clc
load('rdata.mat');
datad=data;
load('circle.mat');
circle=x;
counter=0;
while counter <30
    counter =counter+1;
    tic;
    SearchAgents_no=30; % Number of search agents
    Function_name='F1'; 
    Max_iteration=500; % Maximum numbef of iterations
    [lb,ub,dim,fobj]=Get_Functions_details3(Function_name);

    [Best_score,Best_pos,WOA_cg_curve]=WOAorg(SearchAgents_no,Max_iteration,lb,ub,dim,fobj);
%     [Best_score,Best_pos,WOA_cg_curve]=Wlorenz(SearchAgents_no,Max_iteration,lb,ub,dim,fobj,datad);
%     [Best_score,Best_pos,WOA_cg_curve]=Wcircle(SearchAgents_no,Max_iteration,lb,ub,dim,fobj,circle);

    time_e(counter)=toc;
    score_e(counter)=Best_score;
    agent_e(counter,:)=Best_pos; 
    disp(['', num2str(Best_score),'       ' ,num2str(Best_pos)]);
end
runtime=mean(time_e);
ortalama=mean(score_e);
eniyi=min(score_e);
enkotu=max(score_e);
std=std(score_e);
display(['', num2str(ortalama)]);
display(['', num2str(eniyi)]);
display(['', num2str(enkotu)]);
display(['', num2str(std)]);
display(['', num2str(runtime)]);

