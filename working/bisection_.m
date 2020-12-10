clear all,clc,close all

ep_s=0.001;

xl=1;
xu=pi*3/2;
imax=100;
f=@(x) sin(x);
avg=(xl*f(xu)-xu*f(xl))/(f(xu)-f(xl));
sim_avg=[];
i=1;
while(1)
    fplot(f,[1 pi+pi/2])
    
    hold on
    plot([xl xu],[0 0],'k')
    plot([1 1],[-pi pi],'k')
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
        ep_a=0;
    end
    avg=(xl+xu)/2;
    sim_avg(i)=avg;
    i=i+1;
    ep_a=abs(xl-avg)/abs(avg);
    if ep_a<ep_s
        disp(ep_a)
        break
    end
   
end
disp(sim_avg)
s=size(sim_avg);
disp(s(2))





root=14.8;



