function [yFIRLS,yFIREQ] = voxelHPF(x, wstop, wpass)
yFIRLS = x;
yFIREQ = x;

fNames = fieldnames(x);
L = length(fieldnames(x));

for i = 1:L-1
    xi = x.(fNames{i});
    l = size(xi);

    yiFIRLS = xi;
    yiFIREQ = xi;

    bFIRLS = LSHPF(wstop, wpass);
    bFIREQ = EqHPF(wstop, wpass);

    aFIRLS = 1;
    aFIREQ = 1;
    
    for k = 1:l(2)
        x1 = xi(:,k);
        yiFIRLS(:,k) = filter(bFIRLS,aFIRLS,x1);
        yiFIREQ(:,k) = filter(bFIREQ,aFIREQ,x1);
    end

    yFIRLS.(fNames{i}) = yiFIRLS;
    yFIREQ.(fNames{i}) = yiFIREQ;

end
end