function [ sMat ] = initTargets(TargetNum,ObjectiveNum,Dim,SizeOfEnvironment )
    sMat=zeros(TargetNum,Dim+3);
    sigma=min(abs(SizeOfEnvironment(1,1:Dim)-SizeOfEnvironment(2,1:Dim)))*.01;% jitter term
    mu=.5*SizeOfEnvironment(1,1:Dim)+.5*SizeOfEnvironment(2,1:Dim);
    %r=truncate(makedist('Normal','mu',mu,'sigma',sigma),max(SizeOfEnvironment(1,1:Dim)),min(SizeOfEnvironment(2,1:Dim)));
    for i=1:TargetNum
        sMat(i,1:Dim)=mvnrnd(mu,sigma*eye(Dim));
        sMat(i,Dim+1)=2;
        sMat(i,Dim+2)=1;
        sMat(i,Dim+3)=i;
    end
end
