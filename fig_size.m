function fig_size(dir_path)
    
	figs = dir([dir_path '/*.fig']);
	width  = 800; 
    %width  = 1200;
	height = 600;
	for i = 1:length(figs)
	  fig_name = erase(figs(i).name,'.fig');
	  open([dir_path fig_name '.fig'])
      set(gcf,'WindowStyle','normal')
	  set(gcf,'position',[0,0,width,height])
      set(gca,'linewidth',2)
	  saveas(gcf,[dir_path fig_name '.fig'])
	  saveas(gcf,[dir_path fig_name '.png'])
      box on
	 close(gcf)
    end
end
