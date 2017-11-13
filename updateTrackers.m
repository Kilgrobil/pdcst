function newTrackers = updateTrackers(trackers,targets,speed)
%updateTrackers returns the new positions of trackers
newTrackers=trackers(:,:);
[trackerNum,dim]=size(trackers);
targetNum=size(targets,1);
if targetNum <= 0
    throw(MException('Finished:TrackersVictory','No more targets to catch'));
end
dim=dim-3;% ignore the team number and the current target number
for i=1:trackerNum
    targetNumber=trackers(i,dim+2);
    target=getAgentById(targets,targetNumber);
    if target==0
        target=targets(1,:);
    end
    targetPos=target(1:dim);
    direction=targetPos-trackers(i,1:dim);
    dist=norm(direction);
    if dist==0
        update=zeros(1,dim);
    else
        update=(min(dist,speed)/dist)*direction;
    end
    newTrackers(i,1:dim)=trackers(i,1:dim)+update;
end
end

