function newTrackers = updateTrackers(trackers,targets,speed)
%updateTrackers returns the new positions of trackers
newTrackers=trackers(:,:);
[trackerNum,dim]=size(trackers);
dim=dim-2;% ignore the team number and the current target number
for i=1:trackerNum
    targetNumber=trackers(i,dim+2);
    targetPos=targets(targetNumber,1:dim);
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

