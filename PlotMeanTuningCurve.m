function PlotMeanTuningCurve(ranktcstruct,sig_inds_w, CWidnearest, whisk)
%% Plot mean tunign curve for whisker responsive cells

pluspos = [1 3 4 5 7]; %piezo numbers at central plus position in piezo array

for CWcounter = 1:length(CWidnearest)
    if nansum(strcmp(CWidnearest{CWcounter},whisk)) == 1
        CWlocate = find(strcmp(CWidnearest{CWcounter},whisk))-1;
        CWplusposflg = ismember(CWlocate, pluspos);
        CW_at_pluspos_list(CWcounter) =  CWplusposflg;
    end
end
CW_notat_pluspos_list = ~CW_at_pluspos_list;

z_meanranktc =[];
for cellcounter = 1:size(ranktcstruct.meanranktc_raw,1)
    [z_ranktcstruct.nogo,C,S] = normalize(ranktcstruct.nogo);
    meanranktc(cellcounter,:) = normalize(ranktcstruct.meanranktc_raw(cellcounter,:),"center",C,"scale",S);

end

for meanranktc_i = 1:size(meanranktc,1)
    meanranktc(meanranktc_i,:) = meanranktc(meanranktc_i,:)./meanranktc(meanranktc_i,1);
end

meanranktc(CW_notat_pluspos_list,:) = NaN;

errorbar([1:6], nanmean(meanranktc(sig_inds_w,1:6)),  nansem(meanranktc(sig_inds_w,1:6)),'k-', 'LineWidth', 2, 'color', 'k', 'MarkerSize', 2)
set(gca, 'Color', 'none', 'FontSize', 12)
ylabel('dF/F')
ylim([-0.2 1])
xlim([1 7])
xticks([1:7])
xlabel('whisker rank')
yline(0, 'k--')

end