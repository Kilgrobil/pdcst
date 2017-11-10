% The sMat matrix is :
% sMat(:,1)=X ; sMat(:,2)=Y ;sMat(:,3)=Z (in 3D environment) ;
% sMat(:,Dim+1)=team (1: tracker, 2: target, 3: objective)
% sMat(:,Dim+2)=current objective number 
% sMat(:,Dim+3)=agent id
% sMat(:,3)=Agent number ( in 2D environment) ; sMat(:,4)=Agent number (in
% 3D environment)

function [trackers,targets,objectives,neutrals] = initMat(TrackerNum,TargetNum,ObjectiveNum,Dim,SizeOfEnvironment )
    trackers=initTrackers(TrackerNum,TargetNum,Dim,SizeOfEnvironment);
    targets=initTargets(TargetNum,ObjectiveNum,Dim,SizeOfEnvironment);
    objectives=initObjectives(ObjectiveNum,Dim,SizeOfEnvironment);
    neutrals=initNeutrals(Dim,SizeOfEnvironment);
end
