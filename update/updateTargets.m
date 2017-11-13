function newTargets = updateTargets(trackers,targets,objectives,speed,envSize)
%updateTargets returns the new positions of targets
%parameters
trackerParameters=[2 0 0 0 0];
targetParameters=[0 1 0 0 0];
objectivesParameters=[0 -3 0 0 0];
wallParameters=[3 0 0 0 0];
%function's body
newTargets=targets(:,:);
[targetNum,dim]=size(targets);
trackerNum=size(trackers,1);
objectiveNum=size(objectives,1);
dim=dim-3;% ignore the team number and the current objective number
for i=1:targetNum
%     objectiveNumber=targets(i,dim+2);
%     objective=getAgentById(objectives,objectiveNumber);
%     objectivePos=objective(1:dim);
%     direction=objectivePos-targets(i,1:dim);
    direction=zeros(1,dim);
    for j=1:trackerNum
        direction=direction-basicGradient(trackerParameters,targets(i,1:dim),trackers(j,1:dim));
    end
    for j=1:targetNum
        if j~=i
            direction=direction-basicGradient(targetParameters,targets(i,1:dim),targets(j,1:dim));
        end
    end
    for j=1:objectiveNum
        direction=direction-basicGradient(objectivesParameters,targets(i,1:dim),objectives(j,1:dim));
    end
    direction=direction+wallGradient(wallParameters,targets(i,1:dim),envSize);
    dist=norm(direction);
    if dist==0
        update=zeros(1,dim);
    else
        %update=(min(dist,speed)/dist)*direction;
        update=(speed/dist)*direction;
    end
    newTargets(i,1:dim)=targets(i,1:dim)+update;
end
end

