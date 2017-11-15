function [ sMat ] = initObjectives(ObjectiveNum,Dim,SizeOfEnvironment )
    sMat=zeros(ObjectiveNum+1,Dim+3);
    radius=min(abs(SizeOfEnvironment(1,1:Dim)-SizeOfEnvironment(2,1:Dim)))*.45;
    center=.5*SizeOfEnvironment(1,1:Dim)+.5*SizeOfEnvironment(2,1:Dim);
    for i=1:ObjectiveNum
        sMat(i,1)=center(1)+radius*cos(2*pi*i/ObjectiveNum);
        sMat(i,2)=center(2)+radius*sin(2*pi*i/ObjectiveNum);
        if Dim~=2
            sMat(i,3)=center(3);
        end
        sMat(i,Dim+3)=i;
    end
    sMat(ObjectiveNum+1,:)=[(.5*SizeOfEnvironment(1,1:Dim)+.5*SizeOfEnvironment(2,1:Dim)) 0 0 2];
    sMat(:,Dim+1)=3*ones(ObjectiveNum+1,1);
end
