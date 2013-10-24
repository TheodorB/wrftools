function [ succes ] =  do_prob_stat(time_serie_power_forecast_05_analogs,time_serie_power_forecast_10_analogs,time_serie_power_forecast_15_analogs,time_serie_power_forecast_20_analogs,time_serie_power_forecast_25_analogs);
dav=1
nr_bins=25;
%bin spread
%                                                       %obs
%                                                                                      % ensemble mean
font_size=12
x_lim=[0 8000]
y_lim=[0 8000]
y_labels=[0:2000:max(y_lim)]
Subplot(2,2,1)
Ensemble_mean_obs_RMS_error_05=RMSEdecomp_all(time_serie_power_forecast_05_analogs{2,15}, time_serie_power_forecast_05_analogs{2,13})
[sorted_ensemble_std idx]=sort(time_serie_power_forecast_05_analogs{2,12});
sorted_obs=time_serie_power_forecast_05_analogs{2,15}(idx);
sorted_EM=time_serie_power_forecast_05_analogs{2,13}(idx);      
    for i=1:nr_bins
        jump=length(idx)/nr_bins;
        interval=[(i*jump)-(jump-1):1:(i*jump)];
        bin.rms_error(i)=RMSEdecomp_all(sorted_obs(interval),sorted_EM(interval))
        bin.spread(i)=mean(sorted_ensemble_std(interval))
    end 
    scatter(bin.spread,bin.rms_error,90,'Marker','o','MarkerFaceColor','b','MarkerEdgeColor','r')
    hold on
    x=1:jump:9000;y=1:jump:9000
    plot(x,y,':k','LineWidth',4)%,...     
                %'MarkerEdgeColor','b',...
                %'MarkerFaceColor','r',...
                %'MarkerSize',10)
    grid on;grid on;ylabel('Ensemble Mean RMSE (KW)','fontsize',font_size,'FontWeight','bold');
    set(gca,'fontsize',font_size,'FontWeight','bold','xlim',x_lim,'ylim',y_lim,'ytick',y_labels)     
    legend({'Spread - RMSE','Perfect Reliability'},'location','NorthWest');title('5 member AnEn','fontsize',font_size)
    axis square
    colormap('gray')

 Subplot(2,2,2)
 Ensemble_mean_obs_RMS_error_10=RMSEdecomp_all(time_serie_power_forecast_10_analogs{2,15}, time_serie_power_forecast_10_analogs{2,13})
[sorted_ensemble_std idx]=sort(time_serie_power_forecast_10_analogs{2,12});
sorted_obs=time_serie_power_forecast_10_analogs{2,15}(idx);
sorted_EM=time_serie_power_forecast_10_analogs{2,13}(idx);      
    for i=1:nr_bins
        jump=length(idx)/nr_bins;
        interval=[(i*jump)-(jump-1):1:(i*jump)];
        bin.rms_error(i)=RMSEdecomp_all(sorted_obs(interval),sorted_EM(interval))
        bin.spread(i)=mean(sorted_ensemble_std(interval))
    end 
    scatter(bin.spread,bin.rms_error,90,'Marker','o','MarkerFaceColor','b','MarkerEdgeColor','r')
    hold on
    x=1:jump:9000;y=1:jump:9000     
    plot(x,y,':k','LineWidth',4)%,...          
                %'MarkerEdgeColor','b',...
                %'MarkerFaceColor','r',...
                %'MarkerSize',10)
    grid on;grid on;
    set(gca,'fontsize',font_size,'FontWeight','bold','xlim',x_lim,'ylim',y_lim,'ytick',y_labels)
    legend({'Spread - RMSE','Perfect Reliability'},'location','NorthWest');title(' 10 member AnEn','fontsize',font_size)
    axis square
    colormap('gray')

    Subplot(2,2,3)
Ensemble_mean_obs_RMS_error_15=RMSEdecomp_all(time_serie_power_forecast_15_analogs{2,15}, time_serie_power_forecast_15_analogs{2,13})
[sorted_ensemble_std idx]=sort(time_serie_power_forecast_15_analogs{2,12});
sorted_obs=time_serie_power_forecast_15_analogs{2,15}(idx);
sorted_EM=time_serie_power_forecast_15_analogs{2,13}(idx);      
    for i=1:nr_bins
        jump=length(idx)/nr_bins;
        interval=[(i*jump)-(jump-1):1:(i*jump)];
        bin.rms_error(i)=RMSEdecomp_all(sorted_obs(interval),sorted_EM(interval))
        bin.spread(i)=mean(sorted_ensemble_std(interval))
    end 
    scatter(bin.spread,bin.rms_error,90,'Marker','o','MarkerFaceColor','b','MarkerEdgeColor','r')
    hold on
    x=1:jump:9000;y=1:jump:9000     
    plot(x,y,':k','LineWidth',4)%,...          
                %'MarkerEdgeColor','b',...
                %'MarkerFaceColor','r',...
                %'MarkerSize',10)
    grid on;xlabel('Ensemble spread (KW)','fontsize',font_size,'FontWeight','bold');grid on;ylabel('Ensemble Mean RMSE (KW)','fontsize',font_size','FontWeight','bold');
    set(gca,'fontsize',font_size,'FontWeight','bold','xlim',x_lim,'ylim',y_lim,'ytick',y_labels)     
    legend({'Spread - RMSE','Perfect Reliability'},'location','NorthWest');title(' 15 member AnEn','fontsize',font_size)
    axis square
    colormap('gray')

Subplot(2,2,4)

Ensemble_mean_obs_RMS_error_20=RMSEdecomp_all(time_serie_power_forecast_20_analogs{2,15}, time_serie_power_forecast_20_analogs{2,13})
[sorted_ensemble_std idx]=sort(time_serie_power_forecast_20_analogs{2,12});
sorted_obs=time_serie_power_forecast_20_analogs{2,15}(idx);
sorted_EM=time_serie_power_forecast_20_analogs{2,13}(idx);      
    for i=1:nr_bins
        jump=length(idx)/nr_bins;
        interval=[(i*jump)-(jump-1):1:(i*jump)];
        bin.rms_error(i)=RMSEdecomp_all(sorted_obs(interval),sorted_EM(interval))
        bin.spread(i)=mean(sorted_ensemble_std(interval))
    end 
    scatter(bin.spread,bin.rms_error,90,'Marker','o','MarkerFaceColor','b','MarkerEdgeColor','r')
    hold on
    x=1:jump:9000;y=1:jump:9000     
    plot(x,y,':k','LineWidth',10)%,...          
                %'MarkerEdgeColor','b',...
                %'MarkerFaceColor','r',...
                %'MarkerSize',10)
    
    grid on;xlabel('Ensemble spread (KW)','fontsize',font_size,'FontWeight','bold');grid on;
    set(gca,'fontsize',font_size,'FontWeight','bold','xlim',x_lim,'ylim',y_lim,'ytick',y_labels)     
    legend({'Spread - RMSE','Perfect Reliability'},'location','NorthWest');title(' 20 member AnEn','fontsize',font_size)
    axis square
    colormap('gray')
    
end % function 