function [trackers2,targets2,objectives2,measures] = UpdatePos(trackers,targets,objectives,p,measures)
trackers2=updateTrackers(trackers,targets,p);
targets2=updateTargets(trackers,targets,objectives,p);
objectives2=updateObjectives(objectives);
[trackers2,targets2,objectives2,measures]=checkCollisions(trackers2,targets2,objectives2,p,measures);
end
