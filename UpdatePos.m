function [trackers,targets,objectives] = UpdatePos(trackers,targets,objectives,speed,t)
trackers=updateTrackers(trackers,targets,speed);
targets=updateTargets(trackers,targets,objectives,speed);
objectives=updateObjectives(objectives);
end
