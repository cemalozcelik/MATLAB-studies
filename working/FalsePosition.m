clear all,clc,close all

ep_s=0.0001;

xl=0;
xu=pi*3/2;
imax=100;
f=@(x) x^10 - 1;
avg=(xl*f(xu)-xu*f(xl))/(f(xu)-f(xl));
sim_avg=[];
i=1;
while(1)
    fplot(f,[-1 10])
    
    hold on

    plot([avg avg],[0 f(avg)],'k-.','LineWidth',1.5)
    plot([xl xl],[0 f(xl)],'k-.','LineWidth',1.5)
    plot([xu xu],[0 f(xu)],'k-.','LineWidth',1.5)
    plot(avg,0,'o','MarkerFaceColor','r','MarkerSize',8)
    plot([xl xu],0,'o','MarkerFaceColor','b','MarkerSize',8)
    
    xlabel('c')
    ylabel('f')
    grid
    hold off
    pause(1)
    
    if f(xl)*f(avg)<0
        xu=avg;
    
    elseif f(xl)*f(avg)>0
        xl=avg;
   
    else
        result=avg;
    end
    avg=(xl+xu)/2;
    sim_avg(i)=avg;
    fprintf('\nroot: %.5f',avg)

    i=i+1;
    ep_a=abs(xl-avg)/abs(avg);
    if ep_a<ep_s
        break
    end
   
end

s=size(sim_avg);
fprintf('\nnumber of iteration: %d\n',s(2))





