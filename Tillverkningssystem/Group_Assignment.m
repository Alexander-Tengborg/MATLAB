C=[74.984 430.975 1232]
k=[-1.638 -2.472 -2.001]
name=["HSS" "P20" "P20 + TiN Coating"]
cost=[5 20 90]

ttc=2 %min
twc=5 %min
ap=2 %mm
f=0.5 %mm
Vcut=1898565 %mm^3
kc11=2220 %N/mm^2
m=0.14


tcut=@(vc)Vcut./(1000.*vc.*ap.*f)

n=@(k)-1/k

T=@(vc,C,k)(C./vc).^(1./n(k));

tcw=@(vc,C,k)ttc*tcut(vc)./(T(vc,C,k));

kc=(f)^(-m)*kc11;

Pc=@(vc)kc*ap*f*vc/60;

vc=0:0.001:2000;

for i=1:3
  subplot(2,2,i)
  disp(sprintf('%s:',name(i)))
    
  twp=tcut(vc)+tcw(vc,C(i),k(i))+twc;

  plot(vc,60./twp)
  
  [twpmin, index]=min(twp);
  optimal_cutting_speed=vc(index)
  
  toolArr=tcw(vc,C(i),k(i))/ttc;
  amount_of_tools=ceil(toolArr(index))
  tool_cost_per_part=amount_of_tools*cost(i)
  
  cutting_power=Pc(optimal_cutting_speed)/1000
  
  hold on
  title(sprintf('%s:',name(i)))
  xlabel('Cutting speed')
  ylabel('Parts per hour')
  drawnow;
  
  plot(optimal_cutting_speed, 60./twpmin, 'ro', 'MarkerSize', 4);
  text(optimal_cutting_speed+15,60./twpmin+0.01,sprintf('v_c=%f',optimal_cutting_speed))
  
  %legend('Insignal','Filtrerad insignal')
end