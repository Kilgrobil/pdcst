clc;
clear all;
close all;
folder = pwd;
addpath(genpath(folder), '-end');
rmpath(fullfile(folder,'.git'));

% p stand for parameters
p.TrackerNum = 4;
p.TargetNum = 4;
p.ObjectiveNum = 4;
p.AgentSize=100; % Size of agents in plot
p.Dimension=2; % Select Dim
p.SizeOfEnvironment=[-4 -4 -4;15 15 15]; % Size of Environmet (MAX(X Y Z);MIN(X Y Z))
p.speed=.05; % agents' speed
p.radius=.1; % agents' radius
p.Max_It=5000; % Max iteration of agents work
p.refreshRate=5;
p.display=true;
if p.Dimension==2
    Dim='2';
else
    Dim='3';
end

[trackers,targets,objectives,neutrals]=initMat(p); % Make 1st position of agents
whitebg('black')
%% Make 1st Plot of agents using scatter plot
if p.display
    sMat=makeSMat(trackers,targets,objectives,neutrals);
    switch Dim
       case '2'
         scatter(sMat(:,1),sMat(:,2),p.AgentSize,sMat(:,3),'filled')
       case '3'
         scatter3(sMat(:,1),sMat(:,2),sMat(:,3),p.AgentSize,sMat(:,4),'filled') 
       otherwise
            error('myApp:argChk', 'Wrong number of input Dim')
    end
end

%% Update agents position
% This codes update the position of agents and using the sample changing
% position like 'UpdatePos' function .
m.deliveries=0;% m stands for measures
displayCounter=0;
for it=1:p.Max_It
    [trackers,targets,objectives,m]=UpdatePos(trackers,targets,objectives,p,m);
    displayCounter=displayCounter+1;
    if p.display && mod(displayCounter,p.refreshRate)==0
        sMat=makeSMat(trackers,targets,objectives,neutrals);
        switch Dim
            case '2'
                scatter(sMat(:,1),sMat(:,2),p.AgentSize,sMat(:,3),'filled')
            case '3'
                scatter3(sMat(:,1),sMat(:,2),sMat(:,3),p.AgentSize,sMat(:,4),'filled')
        end
        disp(['Iteration :' num2str(it) ' , deliveries made:' num2str(m.deliveries)]);
        pause(0.05);
    end
end
