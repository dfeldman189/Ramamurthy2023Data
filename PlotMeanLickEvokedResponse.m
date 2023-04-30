function PlotMeanLickEvokedResponse(perilickstruct,plotparams_lick, sig_inds_l, varargin)

whichcells = {};

pvpmod(varargin);

if strcmp(whichcells, 'all')
    sig_inds_l = logical([1:length(sig_inds_l)])
end

itilick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.ITIlick(sig_inds_l,:)), nansem(perilickstruct.ITIlick(sig_inds_l,:)), 'lineProps', '-');
itilick.mainLine.LineWidth = 3;
itilick.mainLine.Color = [0.9059    0.7294    0.3216];
itilick.patch.FaceColor = [0.9059    0.7294    0.3216];
set(itilick.edge,'LineWidth',0.5,'Color',[0.9059    0.7294    0.3216])

itinolick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.ITImatchednolick(sig_inds_l,:)), nansem(perilickstruct.ITImatchednolick(sig_inds_l,:)), 'lineProps', ':');
itinolick.mainLine.LineWidth = 3;
itinolick.mainLine.Color = [0.9059    0.7294    0.3216];
itinolick.patch.FaceColor = [0.9059    0.7294    0.3216];
set(itinolick.edge,'LineWidth',0.5,'Color',[0.9059    0.7294    0.3216])

falick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.FAlick(sig_inds_l,:)), nansem(perilickstruct.FAlick(sig_inds_l,:)), 'lineProps', '-');
falick.mainLine.LineWidth = 3;
falick.mainLine.Color = [0.5490    0.4275    0.1922];
falick.patch.FaceColor = [0.5490    0.4275    0.1922];
set(falick.edge,'LineWidth',0.5,'Color',[ 0.5490    0.4275    0.1922])

fanolick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.FAmatchednolick(sig_inds_l,:)), nansem(perilickstruct.FAmatchednolick(sig_inds_l,:)), 'lineProps', ':');
fanolick.mainLine.LineWidth = 3;
fanolick.mainLine.Color = [0.5490    0.4275    0.1922];
fanolick.patch.FaceColor = [0.5490    0.4275    0.1922];
set(fanolick.edge,'LineWidth',0.5,'Color',[ 0.5490    0.4275    0.1922])

unrewhitlick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.UnRewHitlick(sig_inds_l,:)), nansem(perilickstruct.UnRewHitlick(sig_inds_l,:)), 'lineProps', '-');
unrewhitlick.mainLine.LineWidth = 3;
unrewhitlick.mainLine.Color = [0.1216    0.3843    0.4588];
unrewhitlick.patch.FaceColor = [0.1216    0.3843    0.4588];
set(unrewhitlick.edge,'LineWidth',0.5,'Color',[0.1216    0.3843    0.4588])

unrewhitnolick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.UnRewHitmatchednolick(sig_inds_l,:)), nansem(perilickstruct.UnRewHitmatchednolick(sig_inds_l,:)), 'lineProps', ':');
unrewhitnolick.mainLine.LineWidth = 3;
unrewhitnolick.mainLine.Color = [0.1216    0.3843    0.4588];
unrewhitnolick.patch.FaceColor = [0.1216    0.3843    0.4588];
set(unrewhitnolick.edge,'LineWidth',0.5,'Color',[0.1216    0.3843    0.4588])

hitlick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.Hitlick(sig_inds_l,:)), nansem(perilickstruct.Hitlick(sig_inds_l,:)), 'lineProps', '-'); 
hitlick.mainLine.LineWidth = 3;
hitlick.mainLine.Color = [ 0.1490    0.7608    0.9059];
hitlick.patch.FaceColor = [ 0.1490    0.7608    0.9059];
set(hitlick.edge,'LineWidth',0.5,'Color',[ 0.1490    0.7608    0.9059])

hitnolick = shadedErrorBar(perilickstruct.peritime,nanmean(perilickstruct.Hitmatchednolick(sig_inds_l,:)), nansem(perilickstruct.Hitmatchednolick(sig_inds_l,:)), 'lineProps', ':');
hitnolick.mainLine.LineWidth = 3;
hitnolick.mainLine.Color = [ 0.1490    0.7608    0.9059];
hitnolick.patch.FaceColor = [ 0.1490    0.7608    0.9059];
set(hitnolick.edge,'LineWidth',0.5,'Color',[ 0.1490    0.7608    0.9059])

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
