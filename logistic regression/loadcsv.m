function [X, y]=loadcsv(fname,sname)

d1=csvread(fname);
Xin=d1(:,2:end);
yin=d1(:,1);
yin(find(yin==0))=10;

m = size(Xin, 1);

%cutoff=floor(0.6*m);
%cutoff2=floor(0.8*m);

%rand_indices = randperm(m);
%X = Xin(rand_indices(1:cutoff), :);
%y = yin(rand_indices(1:cutoff), :);
%Xv = Xin(rand_indices(cutoff+1:cutoff2), :);
%yv = yin(rand_indices(cutoff+1:cutoff2), :);
%Xt= Xin(rand_indices(cutoff2+1:end), :);
%yt= yin(rand_indices(cutoff2+1:end), :);
save(sname,"Xin","yin");
endfunction
