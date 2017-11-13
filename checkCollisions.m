function [trackers,targets,objectives] = checkCollisions(trackers,targets,objectives,radius,envSize)
% checkcheckCollisions deletes agents who exit the environment, and targets
% hit by trackers
[trackerNum,dim]=size(trackers);
[targetNum,dim]=size(targets);
[objectiveNum,dim]=size(objectives);
dim=dim-3;
% check captures
i=1;
while i<=trackerNum
    j=1;
    while j<=targetNum
        if norm(trackers(i,1:dim)-targets(j,1:dim)) < radius
            targets(j,:)=[];
            j=j-1;
            targetNum=targetNum-1;
        end
        j=j+1;
    end
    i=i+1;
end
% check wall collisions
i=1;
while i<=trackerNum
    if distanceToEdge(trackers(i,1:dim),envSize) - radius < 0
        trackers(i,:)=[];
        i=i-1;
        trackerNum=trackerNum-1;
    end
    i=i+1;
end
i=1;
while i<=targetNum
    if distanceToEdge(targets(i,1:dim),envSize) < radius
        targets(i,:)=[];
        i=i-1;
        targetNum=targetNum-1;
    end
    i=i+1;
end
end

