function [trackers,targets,objectives] = checkCollisions(trackers,targets,objectives,p)
% checkcheckCollisions deletes agents who exit the environment, and targets
% hit by trackers
radius=p.radius;
envSize=p.SizeOfEnvironment;
[trackerNum,dim]=size(trackers);
targetNum=size(targets,1);
objectiveNum=size(objectives,1);
dim=dim-3;
% check captures
i=1;
while i<=trackerNum
    j=1;
    while j<=targetNum
        if norm(trackers(i,1:dim)-targets(j,1:dim)) < 2*radius
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
% check deliveries
for i=1:targetNum
    if targets(i,dim+2)==1% only check for loaded targets
        for j=1:objectiveNum-1% ignore base
            if norm(targets(i,1:dim)-objectives(j,1:dim)) < radius
                targets(i,dim+2)=0;% delivery made
            end
        end
    elseif targets(i,dim+2)==0 && norm(targets(i,1:dim)-objectives(objectiveNum,1:dim)) < radius
        targets(i,dim+2)=1;% replenish empty targets
    end
end
end

