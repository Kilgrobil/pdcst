function sMat = initNeutrals(Dim,SizeOfEnvironment )
    % add two opposite corners of environment for display
    sMat=[SizeOfEnvironment(1,1:Dim) 0 0 0; SizeOfEnvironment(2,1:Dim) 0 0 1];
    % targets's source
    sMat=[sMat;(.5*SizeOfEnvironment(1,1:Dim)+.5*SizeOfEnvironment(2,1:Dim)) 0 0 2];
end
