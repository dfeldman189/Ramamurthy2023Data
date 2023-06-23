function PlotWhiskerEvokedResponse(peristimTracestotstim,perisponTracestot,peritime,sig_inds_w,plotparams_whisker)

    %% Plot average BW response for whisker responsive cells
    stimgo= shadedErrorBar(peritime,nanmean(peristimTracestotstim(sig_inds_w,:),1), nansem(peristimTracestotstim(sig_inds_w,:),1), 'lineProps', 'k-');
    stimgo.mainLine.LineWidth = 3;
    stimgo.mainLine.Color = 'b';
    if ~isempty(stimgo.patch)
        stimgo.patch.FaceColor = 'b';
    end
    set(stimgo.edge,'LineWidth',1,'Color','b')
    
    stimnogo = shadedErrorBar(peritime,nanmean(perisponTracestot(sig_inds_w,:),1), nansem(perisponTracestot(sig_inds_w,:),1), 'lineProps', 'k:');%;
    stimnogo.mainLine.LineWidth = 3;
    stimnogo.mainLine.Color = 'b';
    if ~isempty(stimnogo.patch)
        stimnogo.patch.FaceColor = 'b';
    end
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