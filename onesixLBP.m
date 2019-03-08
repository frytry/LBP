addpath('C:\matlab');
ip=imread('black.png');
[ipx, ipy]=size(ip);
t1=2;
t2=5;
ipx=ipx-2;
ipy=ipy-2;
c1=[];
c2=[];
m1=[];
imy=0;
imx=0;
for ii=3:3:ipx
    imx=imx+1;
    imy=0;
  for jj=3:3:ipy
      imy=imy+1;
  ic=ip(ii,jj);
    for a=(ii-2):(ii+2);
        for b=(jj-2):(jj+2);
            
         if(ip(a,b)>=ic+t2)
                d=2;
         elseif(ic+t1<=ip(a,b)&&ip(a,b)<ic+t2)
                d=1;
         elseif(ic-t1<=ip(a,b)&&ip(a,b)<ic+t1)
                d=0;
         elseif(ic-t2<=ip(a,b)&&ip(a,b)<ic-t1)
                d=-1;
              else
                d=-2;
         end
        
         m1(a,b)=d;
         %M1(ii,jj)=d;
         
        if(m1(a,b)==2)
         c1(a,b)=1;
         else c1(a,b)=0;
        end
        
         if(m1(a,b)==1)
         c2(a,b)=1;
         else c2(a,b)=0;
        end
        
        if(m1(a,b)==-1)
         c3(a,b)=1;
         else c3(a,b)=0;
        end
        
        if(m1(a,b)==-2)
         c4(a,b)=1;
         else c4(a,b)=0;
        end
        
        
        end    
    end
            y1 = sprintf('%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d',c1(ii-2,jj-2),c1(ii-2,jj-1),c1(ii-2,jj),c1(ii-2,jj+1),c1(ii-2,jj+2),c1(ii-1,jj+2),c1(ii,jj+2),c1(ii+1,jj+2),c1(ii+2,jj+2),c1(ii+2,jj+1),c1(ii+2,jj),c1(ii+2,jj-1),c1(ii+2,jj-2),c1(ii+1,jj-2),c1(ii,jj-2),c1(ii-1,jj-2));
               v1(imx,imy)=bin2dec(y1);
               bin2dec(y1)
               y1
               y2 = sprintf('%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d',c2(ii-2,jj-2),c2(ii-2,jj-1),c2(ii-2,jj),c2(ii-2,jj+1),c2(ii-2,jj+2),c2(ii-1,jj+2),c2(ii,jj+2),c2(ii+1,jj+2),c2(ii+2,jj+2),c2(ii+2,jj+1),c2(ii+2,jj),c2(ii+2,jj-1),c2(ii+2,jj-2),c2(ii+1,jj-2),c2(ii,jj-2),c2(ii-1,jj-2));
               v2(imx,imy)=bin2dec(y2);
               
                y3 = sprintf('%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d',c3(ii-2,jj-2),c3(ii-2,jj-1),c3(ii-2,jj),c3(ii-2,jj+1),c3(ii-2,jj+2),c3(ii-1,jj+2),c3(ii,jj+2),c3(ii+1,jj+2),c3(ii+2,jj+2),c3(ii+2,jj+1),c3(ii+2,jj),c3(ii+2,jj-1),c3(ii+2,jj-2),c3(ii+1,jj-2),c3(ii,jj-2),c3(ii-1,jj-2));
               v3(imx,imy)=bin2dec(y3);
               
                y4 = sprintf('%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d%d',c4(ii-2,jj-2),c4(ii-2,jj-1),c4(ii-2,jj),c4(ii-2,jj+1),c4(ii-2,jj+2),c4(ii-1,jj+2),c4(ii,jj+2),c4(ii+1,jj+2),c4(ii+2,jj+2),c4(ii+2,jj+1),c4(ii+2,jj),c4(ii+2,jj-1),c4(ii+2,jj-2),c4(ii+1,jj-2),c4(ii,jj-2),c4(ii-1,jj-2));
               v4(imx,imy)=bin2dec(y4);
              % c2=v1;
  end
end
figure('Name','Code1');
hist(v1);

figure('Name','Code2');
hist(v2);

figure('Name','Code3');
hist(v3);

figure('Name','Code4');
hist(v4);