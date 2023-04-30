function PlotWhiskerEvokedResponse(peristimTracestotstim,perisponTracestot,peritime,sig_inds_w,plotparams_whisker)

    %% Plot average BW response for whisker responsive cells
    stimgo= shadedErrorBar(peritime,nanmean(peristimTracestotstim(sig_inds_w,:)), nansem(peristimTracestotstim(sig_inds_w,:)), 'lineProps', 'k-');
    stimgo.mainLine.LineWidth = 3;
    stimgo.mainLine.Color = 'b';
    stimgo.patch.FaceColor = 'b';
    set(stimgo.edge,'LineWidth',1,'Color','b')
    
    stimnogo = shadedErrorBar(peritime,nanmean(perisponTracestot(sig_inds_w,:)), nansem(perisponTracestot(sig_inds_w,:)), 'lineProps', 'k:');%;
    stimnogo.mainLine.LineWidth = 3;
    stimnogo.mainLine.Color = 'b';
    stimnogo.patch.FaceColor = 'b';
    set(stimnogo.edge,'LineWidth',1,'Color','b')
    
    ylabel('dF/F')
    xlabel('Event time (s)')
    ylim([plotparams_whisker.ylimlo plotparams_whisker.ylimhi])
    xlim([-1*peritime(plotparams_whisker.plotxlimleft) peritime(plotparams_whisker.plotxlimright)])
    ylabel('dF/F')
    xlabel('time since stimulus onset')
    xline(plotparams_whisker.plotzerotime, 'k-')
    yline(0, 'k')
    
    legend({'Go','NoGo'}, 'location', 'best')
    legend('boxoff')
    set(gca, 'Color', 'none', 'FontSize', 12)
    
end