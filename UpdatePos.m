%This sample code is server of multi agents system (MAS) for work on multi
%agents problem .
% Published by Masoud Nadi
% Email : nadimasoud.90@gmail.com
% Copy Write 2015
%% Update Agents new position
% This function use 4 parameters to evaluate new positions of agents. Use
% 'sMat' to find current position of agents . Use 'Step' parameter to know max
% step of walking agents . 'AgentSize' is parameter to know feet of each
% agent to have no accident. 'Dim is dimensions parameter.

function [ sMat ] = UpdatePos( sMat,Step,AgentSize,Dimension,Aim,AgentNum)

for i=1:AgentNum
    diff = -sMat(i,1:Dimension) + Aim;
    dist = norm(diff);
    mvt = min(sqrt(Step)/dist,dist);
    sMat(i,1:Dimension) = sMat(i,1:Dimension) + mvt*diff;
end        
end
