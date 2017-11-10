% The sMat matrix is :
% sMat(:,1)=X ; sMat(:,2)=Y ;sMat(:,3)=Z (in 3D environment) ;
% sMat(:,Dim+1)=team (1: tracker, 2: target, 3: objective)
% sMat(:,Dim+2)=current objective number 
% sMat(:,3)=Agent number ( in 2D environment) ; sMat(:,4)=Agent number (in
% 3D environment)

function [ sMat ] = initMat(TrackerNum,TargetNum,ObjectiveNum,Dim,SizeOfEnvironment )
    trackers=initTrackers(TrackerNum,TargetNum,Dim,SizeOfEnvironment);
    targets=initTargets(TargetNum,ObjectiveNum,Dim,SizeOfEnvironment);
    objectives=initObjectives(ObjectiveNum,Dim,SizeOfEnvironment);
    corner1=[SizeOfEnvironment(1,1:Dim) 0 0];
    corner2=[SizeOfEnvironment(2,1:Dim) 0 0];
    sMat=[trackers;targets;objectives;corner1;corner2];
end
