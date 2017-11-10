function newTargets = updateTargets(trackers,targets,objectives,speed)
%updateTargets returns the new positions of targets
newTargets=targets(:,:);
[targetNum,dim]=size(targets);
dim=dim-3;% ignore the team number and the current objective number
for i=1:targetNum
    objectiveNumber=targets(i,dim+2);
    objective=getAgentById(objectives,objectiveNumber);
    objectivePos=objective(1:dim);
    direction=objectivePos-targets(i,1:dim);
    dist=norm(direction);
    if dist==0
        update=zeros(1,dim);
    else
        update=(min(dist,speed)/dist)*direction;
    end
    newTargets(i,1:dim)=targets(i,1:dim)+update;
end
end

