function [trackers2,targets2,objectives2] = UpdatePos(trackers,targets,objectives,p)
trackers2=updateTrackers(trackers,targets,p);
targets2=updateTargets(trackers,targets,objectives,p);
objectives2=updateObjectives(objectives);
[trackers2,targets2,objectives2]=checkCollisions(trackers2,targets2,objectives2,p);
end
