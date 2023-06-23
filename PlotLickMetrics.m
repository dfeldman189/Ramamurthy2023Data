function PlotLickMetrics(lickmetrics)

errorbar(1, nanmean([lickmetrics.early.ITIlick-lickmetrics.pre.ITIlick],1), nansem([lickmetrics.early.ITIlick-lickmetrics.pre.ITIlick],1), 'ko', 'LineWidth', 1, 'MarkerSize', 10, 'MarkerFaceColor', [0.9333    0.6667    0.1216], 'CapSize', 10)
errorbar(1.5, nanmean([lickmetrics.early.FAlick-lickmetrics.pre.FAlick ],1), nansem([lickmetrics.early.FAlick-lickmetrics.pre.FAlick ],1), 'ko', 'LineWidth', 1, 'MarkerSize', 10,'MarkerFaceColor',[0.5490    0.4275    0.1922], 'CapSize', 10)
errorbar(2, nanmean([lickmetrics.early.UnRewHitlick-lickmetrics.pre.UnRewHitlick],1), nansem([lickmetrics.early.UnRewHitlick-lickmetrics.pre.UnRewHitlick],1), 'ko', 'LineWidth', 1, 'MarkerSize', 10,'MarkerFaceColor', [0.1216    0.3843    0.4588], 'CapSize', 10)
errorbar(2.5, nanmean([lickmetrics.early.Hitlick-lickmetrics.pre.Hitlick],1), nansem([lickmetrics.early.Hitlick-lickmetrics.pre.Hitlick],1), 'ko', 'LineWidth', 1, 'MarkerSize', 10,'MarkerFaceColor', [ 0.1490    0.7608    0.9059], 'CapSize', 10)

errorbar(3.5,nanmean([lickmetrics.late.ITIlick-lickmetrics.pre.ITIlick],1), nansem([lickmetrics.late.ITIlick-lickmetrics.pre.ITIlick],1), 'k^', 'LineWidth', 1, 'MarkerSize', 10,'MarkerFaceColor', [0.9333    0.6667    0.1216], 'CapSize', 10)
errorbar(4,nanmean([lickmetrics.late.FAlick-lickmetrics.pre.FAlick ],1), nansem([lickmetrics.late.FAlick-lickmetrics.pre.FAlick ],1), 'k^', 'LineWidth', 1, 'MarkerSize', 10,'MarkerFaceColor',[0.5490    0.4275    0.1922], 'CapSize', 10)
errorbar(4.5,nanmean([lickmetrics.late.UnRewHitlick-lickmetrics.pre.UnRewHitlick],1), nansem([lickmetrics.late.UnRewHitlick-lickmetrics.pre.UnRewHitlick],1), 'k^', 'LineWidth', 1, 'MarkerSize', 10,'MarkerFaceColor', [0.1216    0.3843    0.4588], 'CapSize', 10)
errorbar(5,nanmean([lickmetrics.late.Hitlick-lickmetrics.pre.Hitlick],1), nansem([lickmetrics.late.Hitlick-lickmetrics.pre.Hitlick],1), 'k^', 'LineWidth', 1, 'MarkerSize', 10,'MarkerFaceColor', [ 0.1490    0.7608    0.9059], 'CapSize', 10)

errorbar(1,nanmean([lickmetrics.early.ITImatchednolick-lickmetrics.pre.ITImatchednolick],1), nansem([lickmetrics.early.ITImatchednolick-lickmetrics.pre.ITImatchednolick],1), '-', 'Color', [0.9333    0.6667    0.1216], 'LineWidth', 1, 'CapSize', 10)
errorbar(1.5, nanmean([lickmetrics.early.FAmatchednolick-lickmetrics.pre.FAmatchednolick],1), nansem([lickmetrics.early.FAmatchednolick-lickmetrics.pre.FAmatchednolick],1), '-', 'Color',[0.5490    0.4275    0.1922], 'LineWidth', 1, 'CapSize', 10)
errorbar(2.0, nanmean([lickmetrics.early.UnRewHitmatchednolick-lickmetrics.pre.UnRewHitmatchednolick],1), nansem([lickmetrics.early.UnRewHitmatchednolick-lickmetrics.pre.UnRewHitmatchednolick],1), '-', 'Color',[0.1216    0.3843    0.4588], 'LineWidth', 1, 'CapSize', 10)
errorbar(2.5, nanmean([lickmetrics.early.Hitmatchednolick-lickmetrics.pre.Hitmatchednolick],1), nansem([lickmetrics.early.Hitmatchednolick-lickmetrics.pre.Hitmatchednolick],1),'-', 'Color', [ 0.1490    0.7608    0.9059]', 'LineWidth', 1, 'CapSize', 10)

errorbar(3.5, nanmean([lickmetrics.late.ITImatchednolick-lickmetrics.pre.ITImatchednolick],1), nansem([lickmetrics.late.ITImatchednolick-lickmetrics.pre.ITImatchednolick],1), '-', 'Color', [0.9333    0.6667    0.1216], 'LineWidth', 3, 'CapSize', 10)
errorbar(4.0, nanmean([lickmetrics.late.FAmatchednolick-lickmetrics.pre.FAmatchednolick],1), nansem([lickmetrics.late.FAmatchednolick-lickmetrics.pre.FAmatchednolick],1), '-', 'Color',[0.5490    0.4275    0.1922], 'LineWidth', 3, 'CapSize', 10)
errorbar(4.5, nanmean([lickmetrics.late.UnRewHitmatchednolick-lickmetrics.pre.UnRewHitmatchednolick],1), nansem([lickmetrics.late.UnRewHitmatchednolick-lickmetrics.pre.UnRewHitmatchednolick],1),'-', 'Color',[0.1216    0.3843    0.4588], 'LineWidth', 3, 'CapSize', 10)
errorbar(5.0, nanmean([lickmetrics.late.Hitmatchednolick-lickmetrics.pre.Hitmatchednolick],1), nansem([lickmetrics.late.Hitmatchednolick-lickmetrics.pre.Hitmatchednolick],1), '-', 'Color', [ 0.1490    0.7608    0.9059]', 'LineWidth', 3, 'CapSize', 10)

set(gca, 'color', 'none', 'FontSize', 11)
xlim([0.5 5.5])
ylim([-0.2 0.3])
ylabel(['∆F/F (lick) or  ∆F/F (no-lick)' newline, 'relative to pre-event baseline'])
xlabel('lick type')
xticks([1 1.5 2 2.5 3.5 4.0 4.5 5.0])
text(1.0, -0.11,'matched no-lick responses')
text(1.0, 0.22,'lick responses')
xticklabels({'ITI early','FA early', 'UnRewHit early', 'Hit early','ITI late','FA late', 'UnRewHit late', 'Hit late'})
xtickangle(45)
end