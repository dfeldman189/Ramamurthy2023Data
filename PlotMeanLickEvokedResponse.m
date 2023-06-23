function PlotMeanLickEvokedResponse(perilickstruct,plotparams_lick, sig_inds_l, varargin)

whichcells = {};

pvpmod(varargin);

if strcmp(whichcells, 'all')
    sig_inds_l = logical([1:length(sig_inds_l)]);
end

if nansum(sig_inds_l)>0

    if ~isempty(perilickstruct.ITIlick)
        itilick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.ITIlick(sig_inds_l,:),1), nansem(perilickstruct.ITIlick(sig_inds_l,:),1), 'lineProps', '-');
        itilick.mainLine.LineWidth = 3;
        itilick.mainLine.Color = [0.9059    0.7294    0.3216];
        if ~isempty(itilick.patch)
            itilick.patch.FaceColor = [0.9059    0.7294    0.3216];
        end
        set(itilick.edge,'LineWidth',0.5,'Color',[0.9059    0.7294    0.3216])
    end

    if ~isempty(perilickstruct.ITImatchednolick)
        itinolick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.ITImatchednolick(sig_inds_l,:),1), nansem(perilickstruct.ITImatchednolick(sig_inds_l,:),1), 'lineProps', ':');
        itinolick.mainLine.LineWidth = 3;
        itinolick.mainLine.Color = [0.9059    0.7294    0.3216];
        if ~isempty(itinolick.patch)
            itinolick.patch.FaceColor = [0.9059    0.7294    0.3216];
        end
        set(itinolick.edge,'LineWidth',0.5,'Color',[0.9059    0.7294    0.3216])
    end

    if ~isempty(perilickstruct.FAlick)
        falick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.FAlick(sig_inds_l,:),1), nansem(perilickstruct.FAlick(sig_inds_l,:),1), 'lineProps', '-');
        falick.mainLine.LineWidth = 3;
        falick.mainLine.Color = [0.5490    0.4275    0.1922];
        if ~isempty(falick.patch)
            falick.patch.FaceColor = [0.5490    0.4275    0.1922];
        end
        set(falick.edge,'LineWidth',0.5,'Color',[ 0.5490    0.4275    0.1922])
    end

    if ~isempty(perilickstruct.FAmatchednolick)
        fanolick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.FAmatchednolick(sig_inds_l,:),1), nansem(perilickstruct.FAmatchednolick(sig_inds_l,:),1), 'lineProps', ':');
        fanolick.mainLine.LineWidth = 3;
        fanolick.mainLine.Color = [0.5490    0.4275    0.1922];
        if ~isempty(fanolick.patch)
            fanolick.patch.FaceColor = [0.5490    0.4275    0.1922];
        end
        set(fanolick.edge,'LineWidth',0.5,'Color',[ 0.5490    0.4275    0.1922])
    end

    if ~isempty(perilickstruct.UnRewHitlick)
        unrewhitlick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.UnRewHitlick(sig_inds_l,:),1), nansem(perilickstruct.UnRewHitlick(sig_inds_l,:),1), 'lineProps', '-');
        unrewhitlick.mainLine.LineWidth = 3;
        unrewhitlick.mainLine.Color = [0.1216    0.3843    0.4588];
        if ~isempty(unrewhitlick.patch)
            unrewhitlick.patch.FaceColor = [0.1216    0.3843    0.4588];
        end
        set(unrewhitlick.edge,'LineWidth',0.5,'Color',[0.1216    0.3843    0.4588])
    end
  
    if ~isempty(perilickstruct.UnRewHitmatchednolick)
        unrewhitnolick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.UnRewHitmatchednolick(sig_inds_l,:),1), nansem(perilickstruct.UnRewHitmatchednolick(sig_inds_l,:),1), 'lineProps', ':');
        unrewhitnolick.mainLine.LineWidth = 3;
        unrewhitnolick.mainLine.Color = [0.1216    0.3843    0.4588];
        if ~isempty(unrewhitnolick.patch)
            unrewhitnolick.patch.FaceColor = [0.1216    0.3843    0.4588];
        end
        set(unrewhitnolick.edge,'LineWidth',0.5,'Color',[0.1216    0.3843    0.4588])
    end

    if ~isempty(perilickstruct.Hitlick)
        hitlick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.Hitlick(sig_inds_l,:),1), nansem(perilickstruct.Hitlick(sig_inds_l,:),1), 'lineProps', '-');
        hitlick.mainLine.LineWidth = 3;
        hitlick.mainLine.Color = [ 0.1490    0.7608    0.9059];
        if ~isempty(hitlick.patch)
            hitlick.patch.FaceColor = [ 0.1490    0.7608    0.9059];
        end
        set(hitlick.edge,'LineWidth',0.5,'Color',[ 0.1490    0.7608    0.9059])
    end

    if ~isempty(perilickstruct.Hitmatchednolick)
        hitnolick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.Hitmatchednolick(sig_inds_l,:),1), nansem(perilickstruct.Hitmatchednolick(sig_inds_l,:),1), 'lineProps', ':');
        hitnolick.mainLine.LineWidth = 3;
        hitnolick.mainLine.Color = [ 0.1490    0.7608    0.9059];
        if ~isempty(hitnolick.patch)
            hitnolick.patch.FaceColor = [ 0.1490    0.7608    0.9059];
        end
        set(hitnolick.edge,'LineWidth',0.5,'Color',[ 0.1490    0.7608    0.9059])
    end

    ylabel('dF/F')
    xlabel('Event time (s)')
    ylim([plotparams_lick.ylimlo plotparams_lick.ylimhi])
    xlim([-1*perilickstruct.peritime(plotparams_lick.plotxlimleft) perilickstruct.peritime(plotparams_lick.plotxlimright)])
    xlabel('time since 1st lick(s)')

    xline(plotparams_lick.plotzerotime, 'k-')
    xline(plotparams_lick.plotmedianrewtimepostfl, 'c-', 'median reward time')
    yline(0, 'k')
    set(gca, 'Color', 'none', 'FontSize', 12)

    legend({'ITI lick','ITI matched no-lick','FA lick', 'FA matched no-lick', 'UnRewHit lick', 'UnRewHit matched no-lick', 'Hit lick', 'Hit matched no-lick'},'location', 'bestoutside')
    legend('boxoff')
end

end
