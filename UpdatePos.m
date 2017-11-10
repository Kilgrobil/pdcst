function [ sMat ] = UpdatePos( sMat,speed,trackerNum,targetNum,objectiveNum,t)
[trackers,targets,objectives]=splitSMat(sMat,trackerNum,targetNum,objectiveNum);
sMat(1:trackerNum+targetNum+objectiveNum,:)=[updateTrackers(trackers,targets,speed);
    updateTargets(trackers,targets,objectives,speed);
    updateObjectives(objectives)];
end
