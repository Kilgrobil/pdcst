clc;
clear all;
close all;
TrackerNum = 4;
TargetNum = 4;
ObjectiveNum = 4;
AgentNum= TrackerNum + TargetNum + ObjectiveNum; % Number of Agents
AgentSize=100; % Size of agents in plot
Dimension=2; % Select Dim
SizeOfEnvironment=[-4 -4 -4;15 15 15]; % Size of Environmet (MAX(X Y Z);MIN(X Y Z))
if Dimension==2
    Dim='2';
else
    Dim='3';
end

sMat=initMat(TrackerNum,TargetNum,ObjectiveNum,Dimension,SizeOfEnvironment); % Make 1st position of agents
whitebg('black')
%% Make 1st Plot of agents using scatter plot

switch Dim
   case '2'
     scatter(sMat(:,1),sMat(:,2),AgentSize,sMat(:,3),'filled')
   case '3'
     scatter3(sMat(:,1),sMat(:,2),sMat(:,3),AgentSize,sMat(:,4),'filled') 
   otherwise
        error('myApp:argChk', 'Wrong number of input Dim')
end

%% Update agents position
% This codes update the position of agents and using the sample changing
% position like 'UpdatePos' function .

speed=.5; % Step make the Step of agent position in each iteration
Max_It=100; % Max iteration of agents work

pause(0.5);
for it=1:Max_It
    sMat=UpdatePos(sMat,speed,TrackerNum,TargetNum,ObjectiveNum,it);
    switch Dim
        case '2'
            scatter(sMat(:,1),sMat(:,2),AgentSize,sMat(:,3),'filled')
        case '3'
            scatter3(sMat(:,1),sMat(:,2),sMat(:,3),AgentSize,sMat(:,4),'filled')
    end
    disp(['Iteration :' num2str(it) ]);
    pause(0.05);
end
