function [trackers2,targets2,objectives2] = UpdatePos(trackers,targets,objectives,speed,radius,envSize)
trackers2=updateTrackers(trackers,targets,speed,envSize);
targets2=updateTargets(trackers,targets,objectives,speed,envSize);
objectives2=updateObjectives(objectives);
[trackers2,targets2,objectives2]=checkCollisions(trackers2,targets2,objectives2,radius,envSize);
end
