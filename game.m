figure;

hold 
axis equal
axis([0,100,0,100])

axis off
rectangle('position',[0,0,100,100],'facecolor','w');
set(gcf,'menubar','none')

text(0.5,95,'          Game Over','fontsize',25);
text(0.5,80,['       Total Balls : ',num2str(record)],'fontsize',25,'color',rand(1,3));
text(0.5,65,['           Missed : ',num2str(missed)],'fontsize',25,'color',rand(1,3));
text(0.5,50,['             Hits : ',num2str(record-missed)],'fontsize',25,'color',rand(1,3));
text(0.5,35,['            Time : ',num2str(jk)],'fontsize',25,'color',rand(1,3));
text(0.5,20,['           Score : ',num2str(score)],'fontsize',25,'color',rand(1,3));
text(0.5,5,['  Remarks : ',sd],'fontsize',25,'color',rand(1,3));