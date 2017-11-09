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

function [ sMat ] = UpdatePos( sMat,Step,Dimension,TrackerNum,TargetNum,t)

for i=1:TrackerNum
    diff = sMat(min(TrackerNum+i,TargetNum+TrackerNum),1:Dimension)-sMat(i,1:Dimension);
    dist = norm(diff);
    mvt = min(sqrt(Step)/dist,dist);
    sMat(i,1:Dimension) = sMat(i,1:Dimension) + mvt*diff;
end
alpha = 1/12;
if Dimension==2
    rot = [cos(alpha) (-sin(alpha)) ; sin(alpha) cos(alpha)];
else
    rot = [1 0 0;
        0 cos(alpha) (-sin(alpha));
        0 sin(alpha) cos(alpha)];
end
for j=1:TargetNum
    sMat(TrackerNum+j,1:Dimension) = (2*j)*ones(1, Dimension) + (sMat(TrackerNum+j,1:Dimension)-(2*j)*ones(1,Dimension))*rot;
end
