import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk054
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node13824_cond_eq
    (child13822 : Flapjack.WordAlloc.removeDeadStructural input13822 value6904 value1 value2 = (output13822, value6905, value1))
    (child13823 : Flapjack.WordAlloc.removeDeadStructural input13823 value6905 value1 value2 = (output13823, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13824 value6904 value1 value2 = (output13824, value6896, value1) := by
  rw [input13824_def, output13824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13822]
  try dsimp only
  rw [child13823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13822_skip, output13823_skip]
  kernel_rfl

theorem node13825_cond_eq
    (child13821 : Flapjack.WordAlloc.removeDeadStructural input13821 value6903 value1 value2 = (output13821, value6904, value1))
    (child13824 : Flapjack.WordAlloc.removeDeadStructural input13824 value6904 value1 value2 = (output13824, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13825 value6903 value1 value2 = (output13825, value6896, value1) := by
  rw [input13825_def, output13825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13821]
  try dsimp only
  rw [child13824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13821_skip, output13824_skip]
  kernel_rfl

theorem node13826_cond_eq
    (child13820 : Flapjack.WordAlloc.removeDeadStructural input13820 value6902 value1 value2 = (output13820, value6903, value1))
    (child13825 : Flapjack.WordAlloc.removeDeadStructural input13825 value6903 value1 value2 = (output13825, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13826 value6902 value1 value2 = (output13826, value6896, value1) := by
  rw [input13826_def, output13826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13820]
  try dsimp only
  rw [child13825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13820_skip, output13825_skip]
  kernel_rfl

theorem node13827_cond_eq
    (child13819 : Flapjack.WordAlloc.removeDeadStructural input13819 value6901 value1 value2 = (output13819, value6902, value1))
    (child13826 : Flapjack.WordAlloc.removeDeadStructural input13826 value6902 value1 value2 = (output13826, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13827 value6901 value1 value2 = (output13827, value6896, value1) := by
  rw [input13827_def, output13827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13819]
  try dsimp only
  rw [child13826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13819_skip, output13826_skip]
  kernel_rfl

theorem node13828_cond_eq
    (child13818 : Flapjack.WordAlloc.removeDeadStructural input13818 value6896 value1 value2 = (output13818, value6901, value1))
    (child13827 : Flapjack.WordAlloc.removeDeadStructural input13827 value6901 value1 value2 = (output13827, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13828 value6896 value1 value2 = (output13828, value6896, value1) := by
  rw [input13828_def, output13828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13818]
  try dsimp only
  rw [child13827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13818_skip, output13827_skip]
  kernel_rfl

theorem node13829_cond_eq
    (child13783 : Flapjack.WordAlloc.removeDeadStructural input13783 value6896 value1 value2 = (output13783, value6896, value1))
    (child13828 : Flapjack.WordAlloc.removeDeadStructural input13828 value6896 value1 value2 = (output13828, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13829 value6896 value1 value2 = (output13829, value6896, value1) := by
  rw [input13829_def, output13829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13783]
  try dsimp only
  rw [child13828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13783_skip, output13828_skip]
  kernel_rfl

theorem node13830_cond_eq
    (child13782 : Flapjack.WordAlloc.removeDeadStructural input13782 value6896 value1 value2 = (output13782, value6896, value1))
    (child13829 : Flapjack.WordAlloc.removeDeadStructural input13829 value6896 value1 value2 = (output13829, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13830 value6896 value1 value2 = (output13830, value6896, value1) := by
  rw [input13830_def, output13830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13782]
  try dsimp only
  rw [child13829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13782_skip, output13829_skip]
  kernel_rfl

theorem node13831_cond_eq
    (child13781 : Flapjack.WordAlloc.removeDeadStructural input13781 value6892 value1 value2 = (output13781, value6896, value1))
    (child13830 : Flapjack.WordAlloc.removeDeadStructural input13830 value6896 value1 value2 = (output13830, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13831 value6892 value1 value2 = (output13831, value6896, value1) := by
  rw [input13831_def, output13831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13781]
  try dsimp only
  rw [child13830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13781_skip, output13830_skip]
  kernel_rfl

theorem node13832_cond_eq
    (child13774 : Flapjack.WordAlloc.removeDeadStructural input13774 value6892 value1 value2 = (output13774, value6892, value1))
    (child13831 : Flapjack.WordAlloc.removeDeadStructural input13831 value6892 value1 value2 = (output13831, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13832 value6892 value1 value2 = (output13832, value6896, value1) := by
  rw [input13832_def, output13832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13774]
  try dsimp only
  rw [child13831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13774_skip, output13831_skip]
  kernel_rfl

theorem node13833_cond_eq
    (child13773 : Flapjack.WordAlloc.removeDeadStructural input13773 value6888 value1 value2 = (output13773, value6892, value1))
    (child13832 : Flapjack.WordAlloc.removeDeadStructural input13832 value6892 value1 value2 = (output13832, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13833 value6888 value1 value2 = (output13833, value6896, value1) := by
  rw [input13833_def, output13833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13773]
  try dsimp only
  rw [child13832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13773_skip, output13832_skip]
  kernel_rfl

theorem node13834_cond_eq
    (child13766 : Flapjack.WordAlloc.removeDeadStructural input13766 value6887 value1 value2 = (output13766, value6888, value1))
    (child13833 : Flapjack.WordAlloc.removeDeadStructural input13833 value6888 value1 value2 = (output13833, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13834 value6887 value1 value2 = (output13834, value6896, value1) := by
  rw [input13834_def, output13834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13766]
  try dsimp only
  rw [child13833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13766_skip, output13833_skip]
  kernel_rfl

theorem node13835_cond_eq
    (child13765 : Flapjack.WordAlloc.removeDeadStructural input13765 value6886 value1 value2 = (output13765, value6887, value1))
    (child13834 : Flapjack.WordAlloc.removeDeadStructural input13834 value6887 value1 value2 = (output13834, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13835 value6886 value1 value2 = (output13835, value6896, value1) := by
  rw [input13835_def, output13835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13765]
  try dsimp only
  rw [child13834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13765_skip, output13834_skip]
  kernel_rfl

theorem node13836_cond_eq
    (child13764 : Flapjack.WordAlloc.removeDeadStructural input13764 value5 value1 value2 = (output13764, value6886, value1))
    (child13835 : Flapjack.WordAlloc.removeDeadStructural input13835 value6886 value1 value2 = (output13835, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13836 value5 value1 value2 = (output13836, value6896, value1) := by
  rw [input13836_def, output13836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13764]
  try dsimp only
  rw [child13835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13764_skip, output13835_skip]
  kernel_rfl

theorem node13837_cond_eq
    (child13761 : Flapjack.WordAlloc.removeDeadStructural input13761 value6881 value1 value2 = (output13761, value5, value1))
    (child13836 : Flapjack.WordAlloc.removeDeadStructural input13836 value5 value1 value2 = (output13836, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13837 value6881 value1 value2 = (output13837, value6896, value1) := by
  rw [input13837_def, output13837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13761]
  try dsimp only
  rw [child13836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13761_skip, output13836_skip]
  kernel_rfl

theorem node13838_cond_eq
    (child13754 : Flapjack.WordAlloc.removeDeadStructural input13754 value6881 value1 value2 = (output13754, value6881, value1))
    (child13837 : Flapjack.WordAlloc.removeDeadStructural input13837 value6881 value1 value2 = (output13837, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13838 value6881 value1 value2 = (output13838, value6896, value1) := by
  rw [input13838_def, output13838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13754]
  try dsimp only
  rw [child13837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13754_skip, output13837_skip]
  kernel_rfl

theorem node13839_cond_eq
    (child13753 : Flapjack.WordAlloc.removeDeadStructural input13753 value6880 value1 value2 = (output13753, value6881, value1))
    (child13838 : Flapjack.WordAlloc.removeDeadStructural input13838 value6881 value1 value2 = (output13838, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13839 value6880 value1 value2 = (output13839, value6896, value1) := by
  rw [input13839_def, output13839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13753]
  try dsimp only
  rw [child13838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13753_skip, output13838_skip]
  kernel_rfl

theorem node13840_cond_eq
    (child13752 : Flapjack.WordAlloc.removeDeadStructural input13752 value5 value1 value2 = (output13752, value6880, value1))
    (child13839 : Flapjack.WordAlloc.removeDeadStructural input13839 value6880 value1 value2 = (output13839, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13840 value5 value1 value2 = (output13840, value6896, value1) := by
  rw [input13840_def, output13840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13752]
  try dsimp only
  rw [child13839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13752_skip, output13839_skip]
  kernel_rfl

theorem node13841_cond_eq
    (child13749 : Flapjack.WordAlloc.removeDeadStructural input13749 value6874 value1 value2 = (output13749, value5, value1))
    (child13840 : Flapjack.WordAlloc.removeDeadStructural input13840 value5 value1 value2 = (output13840, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13841 value6874 value1 value2 = (output13841, value6896, value1) := by
  rw [input13841_def, output13841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13749]
  try dsimp only
  rw [child13840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13749_skip, output13840_skip]
  kernel_rfl

theorem node13842_cond_eq
    (child13740 : Flapjack.WordAlloc.removeDeadStructural input13740 value6874 value1 value2 = (output13740, value6874, value1))
    (child13841 : Flapjack.WordAlloc.removeDeadStructural input13841 value6874 value1 value2 = (output13841, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13842 value6874 value1 value2 = (output13842, value6896, value1) := by
  rw [input13842_def, output13842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13740]
  try dsimp only
  rw [child13841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13740_skip, output13841_skip]
  kernel_rfl

theorem node13843_cond_eq
    (child13739 : Flapjack.WordAlloc.removeDeadStructural input13739 value6873 value1 value2 = (output13739, value6874, value1))
    (child13842 : Flapjack.WordAlloc.removeDeadStructural input13842 value6874 value1 value2 = (output13842, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13843 value6873 value1 value2 = (output13843, value6896, value1) := by
  rw [input13843_def, output13843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13739]
  try dsimp only
  rw [child13842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13739_skip, output13842_skip]
  kernel_rfl

theorem node13844_cond_eq
    (child13738 : Flapjack.WordAlloc.removeDeadStructural input13738 value5 value1 value2 = (output13738, value6873, value1))
    (child13843 : Flapjack.WordAlloc.removeDeadStructural input13843 value6873 value1 value2 = (output13843, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13844 value5 value1 value2 = (output13844, value6896, value1) := by
  rw [input13844_def, output13844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13738]
  try dsimp only
  rw [child13843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13738_skip, output13843_skip]
  kernel_rfl

theorem node13845_cond_eq
    (child13735 : Flapjack.WordAlloc.removeDeadStructural input13735 value6867 value1 value2 = (output13735, value5, value1))
    (child13844 : Flapjack.WordAlloc.removeDeadStructural input13844 value5 value1 value2 = (output13844, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13845 value6867 value1 value2 = (output13845, value6896, value1) := by
  rw [input13845_def, output13845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13735]
  try dsimp only
  rw [child13844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13735_skip, output13844_skip]
  kernel_rfl

theorem node13846_cond_eq
    (child13726 : Flapjack.WordAlloc.removeDeadStructural input13726 value6867 value1 value2 = (output13726, value6867, value1))
    (child13845 : Flapjack.WordAlloc.removeDeadStructural input13845 value6867 value1 value2 = (output13845, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13846 value6867 value1 value2 = (output13846, value6896, value1) := by
  rw [input13846_def, output13846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13726]
  try dsimp only
  rw [child13845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13726_skip, output13845_skip]
  kernel_rfl

theorem node13847_cond_eq
    (child13725 : Flapjack.WordAlloc.removeDeadStructural input13725 value6866 value1 value2 = (output13725, value6867, value1))
    (child13846 : Flapjack.WordAlloc.removeDeadStructural input13846 value6867 value1 value2 = (output13846, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13847 value6866 value1 value2 = (output13847, value6896, value1) := by
  rw [input13847_def, output13847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13725]
  try dsimp only
  rw [child13846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13725_skip, output13846_skip]
  kernel_rfl

theorem node13848_cond_eq
    (child13724 : Flapjack.WordAlloc.removeDeadStructural input13724 value5 value1 value2 = (output13724, value6866, value1))
    (child13847 : Flapjack.WordAlloc.removeDeadStructural input13847 value6866 value1 value2 = (output13847, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13848 value5 value1 value2 = (output13848, value6896, value1) := by
  rw [input13848_def, output13848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13724]
  try dsimp only
  rw [child13847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13724_skip, output13847_skip]
  kernel_rfl

theorem node13849_cond_eq
    (child13721 : Flapjack.WordAlloc.removeDeadStructural input13721 value6860 value1 value2 = (output13721, value5, value1))
    (child13848 : Flapjack.WordAlloc.removeDeadStructural input13848 value5 value1 value2 = (output13848, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13849 value6860 value1 value2 = (output13849, value6896, value1) := by
  rw [input13849_def, output13849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13721]
  try dsimp only
  rw [child13848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13721_skip, output13848_skip]
  kernel_rfl

theorem node13850_cond_eq
    (child13712 : Flapjack.WordAlloc.removeDeadStructural input13712 value6860 value1 value2 = (output13712, value6860, value1))
    (child13849 : Flapjack.WordAlloc.removeDeadStructural input13849 value6860 value1 value2 = (output13849, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13850 value6860 value1 value2 = (output13850, value6896, value1) := by
  rw [input13850_def, output13850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13712]
  try dsimp only
  rw [child13849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13712_skip, output13849_skip]
  kernel_rfl

theorem node13851_cond_eq
    (child13711 : Flapjack.WordAlloc.removeDeadStructural input13711 value6859 value1 value2 = (output13711, value6860, value1))
    (child13850 : Flapjack.WordAlloc.removeDeadStructural input13850 value6860 value1 value2 = (output13850, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13851 value6859 value1 value2 = (output13851, value6896, value1) := by
  rw [input13851_def, output13851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13711]
  try dsimp only
  rw [child13850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13711_skip, output13850_skip]
  kernel_rfl

theorem node13852_cond_eq
    (child13710 : Flapjack.WordAlloc.removeDeadStructural input13710 value5 value1 value2 = (output13710, value6859, value1))
    (child13851 : Flapjack.WordAlloc.removeDeadStructural input13851 value6859 value1 value2 = (output13851, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13852 value5 value1 value2 = (output13852, value6896, value1) := by
  rw [input13852_def, output13852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13710]
  try dsimp only
  rw [child13851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13710_skip, output13851_skip]
  kernel_rfl

theorem node13853_cond_eq
    (child13707 : Flapjack.WordAlloc.removeDeadStructural input13707 value6853 value1 value2 = (output13707, value5, value1))
    (child13852 : Flapjack.WordAlloc.removeDeadStructural input13852 value5 value1 value2 = (output13852, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13853 value6853 value1 value2 = (output13853, value6896, value1) := by
  rw [input13853_def, output13853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13707]
  try dsimp only
  rw [child13852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13707_skip, output13852_skip]
  kernel_rfl

theorem node13854_cond_eq
    (child13698 : Flapjack.WordAlloc.removeDeadStructural input13698 value6853 value1 value2 = (output13698, value6853, value1))
    (child13853 : Flapjack.WordAlloc.removeDeadStructural input13853 value6853 value1 value2 = (output13853, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13854 value6853 value1 value2 = (output13854, value6896, value1) := by
  rw [input13854_def, output13854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13698]
  try dsimp only
  rw [child13853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13698_skip, output13853_skip]
  kernel_rfl

theorem node13855_cond_eq
    (child13697 : Flapjack.WordAlloc.removeDeadStructural input13697 value6852 value1 value2 = (output13697, value6853, value1))
    (child13854 : Flapjack.WordAlloc.removeDeadStructural input13854 value6853 value1 value2 = (output13854, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13855 value6852 value1 value2 = (output13855, value6896, value1) := by
  rw [input13855_def, output13855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13697]
  try dsimp only
  rw [child13854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13697_skip, output13854_skip]
  kernel_rfl

theorem node13856_cond_eq
    (child13696 : Flapjack.WordAlloc.removeDeadStructural input13696 value5 value1 value2 = (output13696, value6852, value1))
    (child13855 : Flapjack.WordAlloc.removeDeadStructural input13855 value6852 value1 value2 = (output13855, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13856 value5 value1 value2 = (output13856, value6896, value1) := by
  rw [input13856_def, output13856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13696]
  try dsimp only
  rw [child13855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13696_skip, output13855_skip]
  kernel_rfl

theorem node13857_cond_eq
    (child13693 : Flapjack.WordAlloc.removeDeadStructural input13693 value6846 value1 value2 = (output13693, value5, value1))
    (child13856 : Flapjack.WordAlloc.removeDeadStructural input13856 value5 value1 value2 = (output13856, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13857 value6846 value1 value2 = (output13857, value6896, value1) := by
  rw [input13857_def, output13857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13693]
  try dsimp only
  rw [child13856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13693_skip, output13856_skip]
  kernel_rfl

theorem node13858_cond_eq
    (child13684 : Flapjack.WordAlloc.removeDeadStructural input13684 value6846 value1 value2 = (output13684, value6846, value1))
    (child13857 : Flapjack.WordAlloc.removeDeadStructural input13857 value6846 value1 value2 = (output13857, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13858 value6846 value1 value2 = (output13858, value6896, value1) := by
  rw [input13858_def, output13858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13684]
  try dsimp only
  rw [child13857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13684_skip, output13857_skip]
  kernel_rfl

theorem node13859_cond_eq
    (child13683 : Flapjack.WordAlloc.removeDeadStructural input13683 value6845 value1 value2 = (output13683, value6846, value1))
    (child13858 : Flapjack.WordAlloc.removeDeadStructural input13858 value6846 value1 value2 = (output13858, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13859 value6845 value1 value2 = (output13859, value6896, value1) := by
  rw [input13859_def, output13859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13683]
  try dsimp only
  rw [child13858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13683_skip, output13858_skip]
  kernel_rfl

theorem node13860_cond_eq
    (child13682 : Flapjack.WordAlloc.removeDeadStructural input13682 value5 value1 value2 = (output13682, value6845, value1))
    (child13859 : Flapjack.WordAlloc.removeDeadStructural input13859 value6845 value1 value2 = (output13859, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13860 value5 value1 value2 = (output13860, value6896, value1) := by
  rw [input13860_def, output13860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13682]
  try dsimp only
  rw [child13859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13682_skip, output13859_skip]
  kernel_rfl

theorem node13861_cond_eq
    (child13679 : Flapjack.WordAlloc.removeDeadStructural input13679 value6839 value1 value2 = (output13679, value5, value1))
    (child13860 : Flapjack.WordAlloc.removeDeadStructural input13860 value5 value1 value2 = (output13860, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13861 value6839 value1 value2 = (output13861, value6896, value1) := by
  rw [input13861_def, output13861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13679]
  try dsimp only
  rw [child13860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13679_skip, output13860_skip]
  kernel_rfl

theorem node13862_cond_eq
    (child13670 : Flapjack.WordAlloc.removeDeadStructural input13670 value6839 value1 value2 = (output13670, value6839, value1))
    (child13861 : Flapjack.WordAlloc.removeDeadStructural input13861 value6839 value1 value2 = (output13861, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13862 value6839 value1 value2 = (output13862, value6896, value1) := by
  rw [input13862_def, output13862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13670]
  try dsimp only
  rw [child13861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13670_skip, output13861_skip]
  kernel_rfl

theorem node13863_cond_eq
    (child13669 : Flapjack.WordAlloc.removeDeadStructural input13669 value6838 value1 value2 = (output13669, value6839, value1))
    (child13862 : Flapjack.WordAlloc.removeDeadStructural input13862 value6839 value1 value2 = (output13862, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13863 value6838 value1 value2 = (output13863, value6896, value1) := by
  rw [input13863_def, output13863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13669]
  try dsimp only
  rw [child13862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13669_skip, output13862_skip]
  kernel_rfl

theorem node13864_cond_eq
    (child13668 : Flapjack.WordAlloc.removeDeadStructural input13668 value5 value1 value2 = (output13668, value6838, value1))
    (child13863 : Flapjack.WordAlloc.removeDeadStructural input13863 value6838 value1 value2 = (output13863, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13864 value5 value1 value2 = (output13864, value6896, value1) := by
  rw [input13864_def, output13864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13668]
  try dsimp only
  rw [child13863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13668_skip, output13863_skip]
  kernel_rfl

theorem node13865_cond_eq
    (child13665 : Flapjack.WordAlloc.removeDeadStructural input13665 value6832 value1 value2 = (output13665, value5, value1))
    (child13864 : Flapjack.WordAlloc.removeDeadStructural input13864 value5 value1 value2 = (output13864, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13865 value6832 value1 value2 = (output13865, value6896, value1) := by
  rw [input13865_def, output13865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13665]
  try dsimp only
  rw [child13864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13665_skip, output13864_skip]
  kernel_rfl

theorem node13866_cond_eq
    (child13656 : Flapjack.WordAlloc.removeDeadStructural input13656 value6832 value1 value2 = (output13656, value6832, value1))
    (child13865 : Flapjack.WordAlloc.removeDeadStructural input13865 value6832 value1 value2 = (output13865, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13866 value6832 value1 value2 = (output13866, value6896, value1) := by
  rw [input13866_def, output13866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13656]
  try dsimp only
  rw [child13865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13656_skip, output13865_skip]
  kernel_rfl

theorem node13867_cond_eq
    (child13655 : Flapjack.WordAlloc.removeDeadStructural input13655 value6831 value1 value2 = (output13655, value6832, value1))
    (child13866 : Flapjack.WordAlloc.removeDeadStructural input13866 value6832 value1 value2 = (output13866, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13867 value6831 value1 value2 = (output13867, value6896, value1) := by
  rw [input13867_def, output13867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13655]
  try dsimp only
  rw [child13866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13655_skip, output13866_skip]
  kernel_rfl

theorem node13868_cond_eq
    (child13654 : Flapjack.WordAlloc.removeDeadStructural input13654 value5 value1 value2 = (output13654, value6831, value1))
    (child13867 : Flapjack.WordAlloc.removeDeadStructural input13867 value6831 value1 value2 = (output13867, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13868 value5 value1 value2 = (output13868, value6896, value1) := by
  rw [input13868_def, output13868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13654]
  try dsimp only
  rw [child13867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13654_skip, output13867_skip]
  kernel_rfl

theorem node13869_cond_eq
    (child13651 : Flapjack.WordAlloc.removeDeadStructural input13651 value6825 value1 value2 = (output13651, value5, value1))
    (child13868 : Flapjack.WordAlloc.removeDeadStructural input13868 value5 value1 value2 = (output13868, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13869 value6825 value1 value2 = (output13869, value6896, value1) := by
  rw [input13869_def, output13869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13651]
  try dsimp only
  rw [child13868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13651_skip, output13868_skip]
  kernel_rfl

theorem node13870_cond_eq
    (child13642 : Flapjack.WordAlloc.removeDeadStructural input13642 value6825 value1 value2 = (output13642, value6825, value1))
    (child13869 : Flapjack.WordAlloc.removeDeadStructural input13869 value6825 value1 value2 = (output13869, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13870 value6825 value1 value2 = (output13870, value6896, value1) := by
  rw [input13870_def, output13870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13642]
  try dsimp only
  rw [child13869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13642_skip, output13869_skip]
  kernel_rfl

theorem node13871_cond_eq
    (child13641 : Flapjack.WordAlloc.removeDeadStructural input13641 value6824 value1 value2 = (output13641, value6825, value1))
    (child13870 : Flapjack.WordAlloc.removeDeadStructural input13870 value6825 value1 value2 = (output13870, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13871 value6824 value1 value2 = (output13871, value6896, value1) := by
  rw [input13871_def, output13871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13641]
  try dsimp only
  rw [child13870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13641_skip, output13870_skip]
  kernel_rfl

theorem node13872_cond_eq
    (child13640 : Flapjack.WordAlloc.removeDeadStructural input13640 value5 value1 value2 = (output13640, value6824, value1))
    (child13871 : Flapjack.WordAlloc.removeDeadStructural input13871 value6824 value1 value2 = (output13871, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13872 value5 value1 value2 = (output13872, value6896, value1) := by
  rw [input13872_def, output13872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13640]
  try dsimp only
  rw [child13871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13640_skip, output13871_skip]
  kernel_rfl

theorem node13873_cond_eq
    (child13637 : Flapjack.WordAlloc.removeDeadStructural input13637 value6818 value1 value2 = (output13637, value5, value1))
    (child13872 : Flapjack.WordAlloc.removeDeadStructural input13872 value5 value1 value2 = (output13872, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13873 value6818 value1 value2 = (output13873, value6896, value1) := by
  rw [input13873_def, output13873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13637]
  try dsimp only
  rw [child13872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13637_skip, output13872_skip]
  kernel_rfl

theorem node13874_cond_eq
    (child13628 : Flapjack.WordAlloc.removeDeadStructural input13628 value6818 value1 value2 = (output13628, value6818, value1))
    (child13873 : Flapjack.WordAlloc.removeDeadStructural input13873 value6818 value1 value2 = (output13873, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13874 value6818 value1 value2 = (output13874, value6896, value1) := by
  rw [input13874_def, output13874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13628]
  try dsimp only
  rw [child13873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13628_skip, output13873_skip]
  kernel_rfl

theorem node13875_cond_eq
    (child13627 : Flapjack.WordAlloc.removeDeadStructural input13627 value6817 value1 value2 = (output13627, value6818, value1))
    (child13874 : Flapjack.WordAlloc.removeDeadStructural input13874 value6818 value1 value2 = (output13874, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13875 value6817 value1 value2 = (output13875, value6896, value1) := by
  rw [input13875_def, output13875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13627]
  try dsimp only
  rw [child13874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13627_skip, output13874_skip]
  kernel_rfl

theorem node13876_cond_eq
    (child13626 : Flapjack.WordAlloc.removeDeadStructural input13626 value5 value1 value2 = (output13626, value6817, value1))
    (child13875 : Flapjack.WordAlloc.removeDeadStructural input13875 value6817 value1 value2 = (output13875, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13876 value5 value1 value2 = (output13876, value6896, value1) := by
  rw [input13876_def, output13876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13626]
  try dsimp only
  rw [child13875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13626_skip, output13875_skip]
  kernel_rfl

theorem node13877_cond_eq
    (child13623 : Flapjack.WordAlloc.removeDeadStructural input13623 value6811 value1 value2 = (output13623, value5, value1))
    (child13876 : Flapjack.WordAlloc.removeDeadStructural input13876 value5 value1 value2 = (output13876, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13877 value6811 value1 value2 = (output13877, value6896, value1) := by
  rw [input13877_def, output13877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13623]
  try dsimp only
  rw [child13876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13623_skip, output13876_skip]
  kernel_rfl

theorem node13878_cond_eq
    (child13614 : Flapjack.WordAlloc.removeDeadStructural input13614 value6811 value1 value2 = (output13614, value6811, value1))
    (child13877 : Flapjack.WordAlloc.removeDeadStructural input13877 value6811 value1 value2 = (output13877, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13878 value6811 value1 value2 = (output13878, value6896, value1) := by
  rw [input13878_def, output13878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13614]
  try dsimp only
  rw [child13877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13614_skip, output13877_skip]
  kernel_rfl

theorem node13879_cond_eq
    (child13613 : Flapjack.WordAlloc.removeDeadStructural input13613 value6810 value1 value2 = (output13613, value6811, value1))
    (child13878 : Flapjack.WordAlloc.removeDeadStructural input13878 value6811 value1 value2 = (output13878, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13879 value6810 value1 value2 = (output13879, value6896, value1) := by
  rw [input13879_def, output13879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13613]
  try dsimp only
  rw [child13878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13613_skip, output13878_skip]
  kernel_rfl

theorem node13880_cond_eq
    (child13612 : Flapjack.WordAlloc.removeDeadStructural input13612 value5 value1 value2 = (output13612, value6810, value1))
    (child13879 : Flapjack.WordAlloc.removeDeadStructural input13879 value6810 value1 value2 = (output13879, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13880 value5 value1 value2 = (output13880, value6896, value1) := by
  rw [input13880_def, output13880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13612]
  try dsimp only
  rw [child13879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13612_skip, output13879_skip]
  kernel_rfl

theorem node13881_cond_eq
    (child13609 : Flapjack.WordAlloc.removeDeadStructural input13609 value6804 value1 value2 = (output13609, value5, value1))
    (child13880 : Flapjack.WordAlloc.removeDeadStructural input13880 value5 value1 value2 = (output13880, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13881 value6804 value1 value2 = (output13881, value6896, value1) := by
  rw [input13881_def, output13881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13609]
  try dsimp only
  rw [child13880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13609_skip, output13880_skip]
  kernel_rfl

theorem node13882_cond_eq
    (child13600 : Flapjack.WordAlloc.removeDeadStructural input13600 value6804 value1 value2 = (output13600, value6804, value1))
    (child13881 : Flapjack.WordAlloc.removeDeadStructural input13881 value6804 value1 value2 = (output13881, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13882 value6804 value1 value2 = (output13882, value6896, value1) := by
  rw [input13882_def, output13882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13600]
  try dsimp only
  rw [child13881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13600_skip, output13881_skip]
  kernel_rfl

theorem node13883_cond_eq
    (child13599 : Flapjack.WordAlloc.removeDeadStructural input13599 value6803 value1 value2 = (output13599, value6804, value1))
    (child13882 : Flapjack.WordAlloc.removeDeadStructural input13882 value6804 value1 value2 = (output13882, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13883 value6803 value1 value2 = (output13883, value6896, value1) := by
  rw [input13883_def, output13883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13599]
  try dsimp only
  rw [child13882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13599_skip, output13882_skip]
  kernel_rfl

theorem node13884_cond_eq
    (child13598 : Flapjack.WordAlloc.removeDeadStructural input13598 value5 value1 value2 = (output13598, value6803, value1))
    (child13883 : Flapjack.WordAlloc.removeDeadStructural input13883 value6803 value1 value2 = (output13883, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13884 value5 value1 value2 = (output13884, value6896, value1) := by
  rw [input13884_def, output13884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13598]
  try dsimp only
  rw [child13883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13598_skip, output13883_skip]
  kernel_rfl

theorem node13885_cond_eq
    (child13595 : Flapjack.WordAlloc.removeDeadStructural input13595 value6797 value1 value2 = (output13595, value5, value1))
    (child13884 : Flapjack.WordAlloc.removeDeadStructural input13884 value5 value1 value2 = (output13884, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13885 value6797 value1 value2 = (output13885, value6896, value1) := by
  rw [input13885_def, output13885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13595]
  try dsimp only
  rw [child13884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13595_skip, output13884_skip]
  kernel_rfl

theorem node13886_cond_eq
    (child13586 : Flapjack.WordAlloc.removeDeadStructural input13586 value6797 value1 value2 = (output13586, value6797, value1))
    (child13885 : Flapjack.WordAlloc.removeDeadStructural input13885 value6797 value1 value2 = (output13885, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13886 value6797 value1 value2 = (output13886, value6896, value1) := by
  rw [input13886_def, output13886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13586]
  try dsimp only
  rw [child13885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13586_skip, output13885_skip]
  kernel_rfl

theorem node13887_cond_eq
    (child13585 : Flapjack.WordAlloc.removeDeadStructural input13585 value6796 value1 value2 = (output13585, value6797, value1))
    (child13886 : Flapjack.WordAlloc.removeDeadStructural input13886 value6797 value1 value2 = (output13886, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13887 value6796 value1 value2 = (output13887, value6896, value1) := by
  rw [input13887_def, output13887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13585]
  try dsimp only
  rw [child13886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13585_skip, output13886_skip]
  kernel_rfl

theorem node13888_cond_eq
    (child13584 : Flapjack.WordAlloc.removeDeadStructural input13584 value5 value1 value2 = (output13584, value6796, value1))
    (child13887 : Flapjack.WordAlloc.removeDeadStructural input13887 value6796 value1 value2 = (output13887, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13888 value5 value1 value2 = (output13888, value6896, value1) := by
  rw [input13888_def, output13888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13584]
  try dsimp only
  rw [child13887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13584_skip, output13887_skip]
  kernel_rfl

theorem node13889_cond_eq
    (child13581 : Flapjack.WordAlloc.removeDeadStructural input13581 value6790 value1 value2 = (output13581, value5, value1))
    (child13888 : Flapjack.WordAlloc.removeDeadStructural input13888 value5 value1 value2 = (output13888, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13889 value6790 value1 value2 = (output13889, value6896, value1) := by
  rw [input13889_def, output13889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13581]
  try dsimp only
  rw [child13888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13581_skip, output13888_skip]
  kernel_rfl

theorem node13890_cond_eq
    (child13572 : Flapjack.WordAlloc.removeDeadStructural input13572 value6790 value1 value2 = (output13572, value6790, value1))
    (child13889 : Flapjack.WordAlloc.removeDeadStructural input13889 value6790 value1 value2 = (output13889, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13890 value6790 value1 value2 = (output13890, value6896, value1) := by
  rw [input13890_def, output13890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13572]
  try dsimp only
  rw [child13889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13572_skip, output13889_skip]
  kernel_rfl

theorem node13891_cond_eq
    (child13571 : Flapjack.WordAlloc.removeDeadStructural input13571 value6789 value1 value2 = (output13571, value6790, value1))
    (child13890 : Flapjack.WordAlloc.removeDeadStructural input13890 value6790 value1 value2 = (output13890, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13891 value6789 value1 value2 = (output13891, value6896, value1) := by
  rw [input13891_def, output13891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13571]
  try dsimp only
  rw [child13890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13571_skip, output13890_skip]
  kernel_rfl

theorem node13892_cond_eq
    (child13570 : Flapjack.WordAlloc.removeDeadStructural input13570 value5 value1 value2 = (output13570, value6789, value1))
    (child13891 : Flapjack.WordAlloc.removeDeadStructural input13891 value6789 value1 value2 = (output13891, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13892 value5 value1 value2 = (output13892, value6896, value1) := by
  rw [input13892_def, output13892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13570]
  try dsimp only
  rw [child13891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13570_skip, output13891_skip]
  kernel_rfl

theorem node13893_cond_eq
    (child13567 : Flapjack.WordAlloc.removeDeadStructural input13567 value6783 value1 value2 = (output13567, value5, value1))
    (child13892 : Flapjack.WordAlloc.removeDeadStructural input13892 value5 value1 value2 = (output13892, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13893 value6783 value1 value2 = (output13893, value6896, value1) := by
  rw [input13893_def, output13893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13567]
  try dsimp only
  rw [child13892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13567_skip, output13892_skip]
  kernel_rfl

theorem node13894_cond_eq
    (child13558 : Flapjack.WordAlloc.removeDeadStructural input13558 value6783 value1 value2 = (output13558, value6783, value1))
    (child13893 : Flapjack.WordAlloc.removeDeadStructural input13893 value6783 value1 value2 = (output13893, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13894 value6783 value1 value2 = (output13894, value6896, value1) := by
  rw [input13894_def, output13894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13558]
  try dsimp only
  rw [child13893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13558_skip, output13893_skip]
  kernel_rfl

theorem node13895_cond_eq
    (child13557 : Flapjack.WordAlloc.removeDeadStructural input13557 value6782 value1 value2 = (output13557, value6783, value1))
    (child13894 : Flapjack.WordAlloc.removeDeadStructural input13894 value6783 value1 value2 = (output13894, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13895 value6782 value1 value2 = (output13895, value6896, value1) := by
  rw [input13895_def, output13895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13557]
  try dsimp only
  rw [child13894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13557_skip, output13894_skip]
  kernel_rfl

theorem node13896_cond_eq
    (child13556 : Flapjack.WordAlloc.removeDeadStructural input13556 value5 value1 value2 = (output13556, value6782, value1))
    (child13895 : Flapjack.WordAlloc.removeDeadStructural input13895 value6782 value1 value2 = (output13895, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13896 value5 value1 value2 = (output13896, value6896, value1) := by
  rw [input13896_def, output13896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13556]
  try dsimp only
  rw [child13895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13556_skip, output13895_skip]
  kernel_rfl

theorem node13897_cond_eq
    (child13553 : Flapjack.WordAlloc.removeDeadStructural input13553 value6776 value1 value2 = (output13553, value5, value1))
    (child13896 : Flapjack.WordAlloc.removeDeadStructural input13896 value5 value1 value2 = (output13896, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13897 value6776 value1 value2 = (output13897, value6896, value1) := by
  rw [input13897_def, output13897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13553]
  try dsimp only
  rw [child13896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13553_skip, output13896_skip]
  kernel_rfl

theorem node13898_cond_eq
    (child13544 : Flapjack.WordAlloc.removeDeadStructural input13544 value6776 value1 value2 = (output13544, value6776, value1))
    (child13897 : Flapjack.WordAlloc.removeDeadStructural input13897 value6776 value1 value2 = (output13897, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13898 value6776 value1 value2 = (output13898, value6896, value1) := by
  rw [input13898_def, output13898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13544]
  try dsimp only
  rw [child13897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13544_skip, output13897_skip]
  kernel_rfl

theorem node13899_cond_eq
    (child13543 : Flapjack.WordAlloc.removeDeadStructural input13543 value6775 value1 value2 = (output13543, value6776, value1))
    (child13898 : Flapjack.WordAlloc.removeDeadStructural input13898 value6776 value1 value2 = (output13898, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13899 value6775 value1 value2 = (output13899, value6896, value1) := by
  rw [input13899_def, output13899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13543]
  try dsimp only
  rw [child13898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13543_skip, output13898_skip]
  kernel_rfl

theorem node13900_cond_eq
    (child13542 : Flapjack.WordAlloc.removeDeadStructural input13542 value5 value1 value2 = (output13542, value6775, value1))
    (child13899 : Flapjack.WordAlloc.removeDeadStructural input13899 value6775 value1 value2 = (output13899, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13900 value5 value1 value2 = (output13900, value6896, value1) := by
  rw [input13900_def, output13900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13542]
  try dsimp only
  rw [child13899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13542_skip, output13899_skip]
  kernel_rfl

theorem node13901_cond_eq
    (child13539 : Flapjack.WordAlloc.removeDeadStructural input13539 value6769 value1 value2 = (output13539, value5, value1))
    (child13900 : Flapjack.WordAlloc.removeDeadStructural input13900 value5 value1 value2 = (output13900, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13901 value6769 value1 value2 = (output13901, value6896, value1) := by
  rw [input13901_def, output13901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13539]
  try dsimp only
  rw [child13900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13539_skip, output13900_skip]
  kernel_rfl

theorem node13902_cond_eq
    (child13530 : Flapjack.WordAlloc.removeDeadStructural input13530 value6769 value1 value2 = (output13530, value6769, value1))
    (child13901 : Flapjack.WordAlloc.removeDeadStructural input13901 value6769 value1 value2 = (output13901, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13902 value6769 value1 value2 = (output13902, value6896, value1) := by
  rw [input13902_def, output13902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13530]
  try dsimp only
  rw [child13901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13530_skip, output13901_skip]
  kernel_rfl

theorem node13903_cond_eq
    (child13529 : Flapjack.WordAlloc.removeDeadStructural input13529 value6768 value1 value2 = (output13529, value6769, value1))
    (child13902 : Flapjack.WordAlloc.removeDeadStructural input13902 value6769 value1 value2 = (output13902, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13903 value6768 value1 value2 = (output13903, value6896, value1) := by
  rw [input13903_def, output13903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13529]
  try dsimp only
  rw [child13902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13529_skip, output13902_skip]
  kernel_rfl

theorem node13904_cond_eq
    (child13528 : Flapjack.WordAlloc.removeDeadStructural input13528 value5 value1 value2 = (output13528, value6768, value1))
    (child13903 : Flapjack.WordAlloc.removeDeadStructural input13903 value6768 value1 value2 = (output13903, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13904 value5 value1 value2 = (output13904, value6896, value1) := by
  rw [input13904_def, output13904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13528]
  try dsimp only
  rw [child13903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13528_skip, output13903_skip]
  kernel_rfl

theorem node13905_cond_eq
    (child13525 : Flapjack.WordAlloc.removeDeadStructural input13525 value6762 value1 value2 = (output13525, value5, value1))
    (child13904 : Flapjack.WordAlloc.removeDeadStructural input13904 value5 value1 value2 = (output13904, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13905 value6762 value1 value2 = (output13905, value6896, value1) := by
  rw [input13905_def, output13905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13525]
  try dsimp only
  rw [child13904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13525_skip, output13904_skip]
  kernel_rfl

theorem node13906_cond_eq
    (child13516 : Flapjack.WordAlloc.removeDeadStructural input13516 value6762 value1 value2 = (output13516, value6762, value1))
    (child13905 : Flapjack.WordAlloc.removeDeadStructural input13905 value6762 value1 value2 = (output13905, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13906 value6762 value1 value2 = (output13906, value6896, value1) := by
  rw [input13906_def, output13906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13516]
  try dsimp only
  rw [child13905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13516_skip, output13905_skip]
  kernel_rfl

theorem node13907_cond_eq
    (child13515 : Flapjack.WordAlloc.removeDeadStructural input13515 value6761 value1 value2 = (output13515, value6762, value1))
    (child13906 : Flapjack.WordAlloc.removeDeadStructural input13906 value6762 value1 value2 = (output13906, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13907 value6761 value1 value2 = (output13907, value6896, value1) := by
  rw [input13907_def, output13907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13515]
  try dsimp only
  rw [child13906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13515_skip, output13906_skip]
  kernel_rfl

theorem node13908_cond_eq
    (child13514 : Flapjack.WordAlloc.removeDeadStructural input13514 value5 value1 value2 = (output13514, value6761, value1))
    (child13907 : Flapjack.WordAlloc.removeDeadStructural input13907 value6761 value1 value2 = (output13907, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13908 value5 value1 value2 = (output13908, value6896, value1) := by
  rw [input13908_def, output13908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13514]
  try dsimp only
  rw [child13907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13514_skip, output13907_skip]
  kernel_rfl

theorem node13909_cond_eq
    (child13511 : Flapjack.WordAlloc.removeDeadStructural input13511 value6755 value1 value2 = (output13511, value5, value1))
    (child13908 : Flapjack.WordAlloc.removeDeadStructural input13908 value5 value1 value2 = (output13908, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13909 value6755 value1 value2 = (output13909, value6896, value1) := by
  rw [input13909_def, output13909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13511]
  try dsimp only
  rw [child13908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13511_skip, output13908_skip]
  kernel_rfl

theorem node13910_cond_eq
    (child13502 : Flapjack.WordAlloc.removeDeadStructural input13502 value6755 value1 value2 = (output13502, value6755, value1))
    (child13909 : Flapjack.WordAlloc.removeDeadStructural input13909 value6755 value1 value2 = (output13909, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13910 value6755 value1 value2 = (output13910, value6896, value1) := by
  rw [input13910_def, output13910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13502]
  try dsimp only
  rw [child13909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13502_skip, output13909_skip]
  kernel_rfl

theorem node13911_cond_eq
    (child13501 : Flapjack.WordAlloc.removeDeadStructural input13501 value6754 value1 value2 = (output13501, value6755, value1))
    (child13910 : Flapjack.WordAlloc.removeDeadStructural input13910 value6755 value1 value2 = (output13910, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13911 value6754 value1 value2 = (output13911, value6896, value1) := by
  rw [input13911_def, output13911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13501]
  try dsimp only
  rw [child13910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13501_skip, output13910_skip]
  kernel_rfl

theorem node13912_cond_eq
    (child13500 : Flapjack.WordAlloc.removeDeadStructural input13500 value5 value1 value2 = (output13500, value6754, value1))
    (child13911 : Flapjack.WordAlloc.removeDeadStructural input13911 value6754 value1 value2 = (output13911, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13912 value5 value1 value2 = (output13912, value6896, value1) := by
  rw [input13912_def, output13912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13500]
  try dsimp only
  rw [child13911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13500_skip, output13911_skip]
  kernel_rfl

theorem node13913_cond_eq
    (child13497 : Flapjack.WordAlloc.removeDeadStructural input13497 value6748 value1 value2 = (output13497, value5, value1))
    (child13912 : Flapjack.WordAlloc.removeDeadStructural input13912 value5 value1 value2 = (output13912, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13913 value6748 value1 value2 = (output13913, value6896, value1) := by
  rw [input13913_def, output13913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13497]
  try dsimp only
  rw [child13912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13497_skip, output13912_skip]
  kernel_rfl

theorem node13914_cond_eq
    (child13488 : Flapjack.WordAlloc.removeDeadStructural input13488 value6748 value1 value2 = (output13488, value6748, value1))
    (child13913 : Flapjack.WordAlloc.removeDeadStructural input13913 value6748 value1 value2 = (output13913, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13914 value6748 value1 value2 = (output13914, value6896, value1) := by
  rw [input13914_def, output13914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13488]
  try dsimp only
  rw [child13913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13488_skip, output13913_skip]
  kernel_rfl

theorem node13915_cond_eq
    (child13487 : Flapjack.WordAlloc.removeDeadStructural input13487 value6747 value1 value2 = (output13487, value6748, value1))
    (child13914 : Flapjack.WordAlloc.removeDeadStructural input13914 value6748 value1 value2 = (output13914, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13915 value6747 value1 value2 = (output13915, value6896, value1) := by
  rw [input13915_def, output13915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13487]
  try dsimp only
  rw [child13914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13487_skip, output13914_skip]
  kernel_rfl

theorem node13916_cond_eq
    (child13486 : Flapjack.WordAlloc.removeDeadStructural input13486 value5 value1 value2 = (output13486, value6747, value1))
    (child13915 : Flapjack.WordAlloc.removeDeadStructural input13915 value6747 value1 value2 = (output13915, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13916 value5 value1 value2 = (output13916, value6896, value1) := by
  rw [input13916_def, output13916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13486]
  try dsimp only
  rw [child13915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13486_skip, output13915_skip]
  kernel_rfl

theorem node13917_cond_eq
    (child13483 : Flapjack.WordAlloc.removeDeadStructural input13483 value6741 value1 value2 = (output13483, value5, value1))
    (child13916 : Flapjack.WordAlloc.removeDeadStructural input13916 value5 value1 value2 = (output13916, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13917 value6741 value1 value2 = (output13917, value6896, value1) := by
  rw [input13917_def, output13917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13483]
  try dsimp only
  rw [child13916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13483_skip, output13916_skip]
  kernel_rfl

theorem node13918_cond_eq
    (child13474 : Flapjack.WordAlloc.removeDeadStructural input13474 value6741 value1 value2 = (output13474, value6741, value1))
    (child13917 : Flapjack.WordAlloc.removeDeadStructural input13917 value6741 value1 value2 = (output13917, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13918 value6741 value1 value2 = (output13918, value6896, value1) := by
  rw [input13918_def, output13918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13474]
  try dsimp only
  rw [child13917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13474_skip, output13917_skip]
  kernel_rfl

theorem node13919_cond_eq
    (child13473 : Flapjack.WordAlloc.removeDeadStructural input13473 value6740 value1 value2 = (output13473, value6741, value1))
    (child13918 : Flapjack.WordAlloc.removeDeadStructural input13918 value6741 value1 value2 = (output13918, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13919 value6740 value1 value2 = (output13919, value6896, value1) := by
  rw [input13919_def, output13919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13473]
  try dsimp only
  rw [child13918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13473_skip, output13918_skip]
  kernel_rfl

theorem node13920_cond_eq
    (child13472 : Flapjack.WordAlloc.removeDeadStructural input13472 value5 value1 value2 = (output13472, value6740, value1))
    (child13919 : Flapjack.WordAlloc.removeDeadStructural input13919 value6740 value1 value2 = (output13919, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13920 value5 value1 value2 = (output13920, value6896, value1) := by
  rw [input13920_def, output13920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13472]
  try dsimp only
  rw [child13919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13472_skip, output13919_skip]
  kernel_rfl

theorem node13921_cond_eq
    (child13469 : Flapjack.WordAlloc.removeDeadStructural input13469 value6734 value1 value2 = (output13469, value5, value1))
    (child13920 : Flapjack.WordAlloc.removeDeadStructural input13920 value5 value1 value2 = (output13920, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13921 value6734 value1 value2 = (output13921, value6896, value1) := by
  rw [input13921_def, output13921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13469]
  try dsimp only
  rw [child13920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13469_skip, output13920_skip]
  kernel_rfl

theorem node13922_cond_eq
    (child13460 : Flapjack.WordAlloc.removeDeadStructural input13460 value6734 value1 value2 = (output13460, value6734, value1))
    (child13921 : Flapjack.WordAlloc.removeDeadStructural input13921 value6734 value1 value2 = (output13921, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13922 value6734 value1 value2 = (output13922, value6896, value1) := by
  rw [input13922_def, output13922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13460]
  try dsimp only
  rw [child13921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13460_skip, output13921_skip]
  kernel_rfl

theorem node13923_cond_eq
    (child13459 : Flapjack.WordAlloc.removeDeadStructural input13459 value6733 value1 value2 = (output13459, value6734, value1))
    (child13922 : Flapjack.WordAlloc.removeDeadStructural input13922 value6734 value1 value2 = (output13922, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13923 value6733 value1 value2 = (output13923, value6896, value1) := by
  rw [input13923_def, output13923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13459]
  try dsimp only
  rw [child13922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13459_skip, output13922_skip]
  kernel_rfl

theorem node13924_cond_eq
    (child13458 : Flapjack.WordAlloc.removeDeadStructural input13458 value5 value1 value2 = (output13458, value6733, value1))
    (child13923 : Flapjack.WordAlloc.removeDeadStructural input13923 value6733 value1 value2 = (output13923, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13924 value5 value1 value2 = (output13924, value6896, value1) := by
  rw [input13924_def, output13924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13458]
  try dsimp only
  rw [child13923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13458_skip, output13923_skip]
  kernel_rfl

theorem node13925_cond_eq
    (child13455 : Flapjack.WordAlloc.removeDeadStructural input13455 value6727 value1 value2 = (output13455, value5, value1))
    (child13924 : Flapjack.WordAlloc.removeDeadStructural input13924 value5 value1 value2 = (output13924, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13925 value6727 value1 value2 = (output13925, value6896, value1) := by
  rw [input13925_def, output13925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13455]
  try dsimp only
  rw [child13924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13455_skip, output13924_skip]
  kernel_rfl

theorem node13926_cond_eq
    (child13446 : Flapjack.WordAlloc.removeDeadStructural input13446 value6727 value1 value2 = (output13446, value6727, value1))
    (child13925 : Flapjack.WordAlloc.removeDeadStructural input13925 value6727 value1 value2 = (output13925, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13926 value6727 value1 value2 = (output13926, value6896, value1) := by
  rw [input13926_def, output13926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13446]
  try dsimp only
  rw [child13925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13446_skip, output13925_skip]
  kernel_rfl

theorem node13927_cond_eq
    (child13445 : Flapjack.WordAlloc.removeDeadStructural input13445 value6726 value1 value2 = (output13445, value6727, value1))
    (child13926 : Flapjack.WordAlloc.removeDeadStructural input13926 value6727 value1 value2 = (output13926, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13927 value6726 value1 value2 = (output13927, value6896, value1) := by
  rw [input13927_def, output13927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13445]
  try dsimp only
  rw [child13926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13445_skip, output13926_skip]
  kernel_rfl

theorem node13928_cond_eq
    (child13444 : Flapjack.WordAlloc.removeDeadStructural input13444 value5 value1 value2 = (output13444, value6726, value1))
    (child13927 : Flapjack.WordAlloc.removeDeadStructural input13927 value6726 value1 value2 = (output13927, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13928 value5 value1 value2 = (output13928, value6896, value1) := by
  rw [input13928_def, output13928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13444]
  try dsimp only
  rw [child13927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13444_skip, output13927_skip]
  kernel_rfl

theorem node13929_cond_eq
    (child13441 : Flapjack.WordAlloc.removeDeadStructural input13441 value6720 value1 value2 = (output13441, value5, value1))
    (child13928 : Flapjack.WordAlloc.removeDeadStructural input13928 value5 value1 value2 = (output13928, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13929 value6720 value1 value2 = (output13929, value6896, value1) := by
  rw [input13929_def, output13929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13441]
  try dsimp only
  rw [child13928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13441_skip, output13928_skip]
  kernel_rfl

theorem node13930_cond_eq
    (child13432 : Flapjack.WordAlloc.removeDeadStructural input13432 value6720 value1 value2 = (output13432, value6720, value1))
    (child13929 : Flapjack.WordAlloc.removeDeadStructural input13929 value6720 value1 value2 = (output13929, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13930 value6720 value1 value2 = (output13930, value6896, value1) := by
  rw [input13930_def, output13930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13432]
  try dsimp only
  rw [child13929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13432_skip, output13929_skip]
  kernel_rfl

theorem node13931_cond_eq
    (child13431 : Flapjack.WordAlloc.removeDeadStructural input13431 value6719 value1 value2 = (output13431, value6720, value1))
    (child13930 : Flapjack.WordAlloc.removeDeadStructural input13930 value6720 value1 value2 = (output13930, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13931 value6719 value1 value2 = (output13931, value6896, value1) := by
  rw [input13931_def, output13931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13431]
  try dsimp only
  rw [child13930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13431_skip, output13930_skip]
  kernel_rfl

theorem node13932_cond_eq
    (child13430 : Flapjack.WordAlloc.removeDeadStructural input13430 value5 value1 value2 = (output13430, value6719, value1))
    (child13931 : Flapjack.WordAlloc.removeDeadStructural input13931 value6719 value1 value2 = (output13931, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13932 value5 value1 value2 = (output13932, value6896, value1) := by
  rw [input13932_def, output13932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13430]
  try dsimp only
  rw [child13931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13430_skip, output13931_skip]
  kernel_rfl

theorem node13933_cond_eq
    (child13427 : Flapjack.WordAlloc.removeDeadStructural input13427 value6713 value1 value2 = (output13427, value5, value1))
    (child13932 : Flapjack.WordAlloc.removeDeadStructural input13932 value5 value1 value2 = (output13932, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13933 value6713 value1 value2 = (output13933, value6896, value1) := by
  rw [input13933_def, output13933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13427]
  try dsimp only
  rw [child13932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13427_skip, output13932_skip]
  kernel_rfl

theorem node13934_cond_eq
    (child13418 : Flapjack.WordAlloc.removeDeadStructural input13418 value6713 value1 value2 = (output13418, value6713, value1))
    (child13933 : Flapjack.WordAlloc.removeDeadStructural input13933 value6713 value1 value2 = (output13933, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13934 value6713 value1 value2 = (output13934, value6896, value1) := by
  rw [input13934_def, output13934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13418]
  try dsimp only
  rw [child13933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13418_skip, output13933_skip]
  kernel_rfl

theorem node13935_cond_eq
    (child13417 : Flapjack.WordAlloc.removeDeadStructural input13417 value6712 value1 value2 = (output13417, value6713, value1))
    (child13934 : Flapjack.WordAlloc.removeDeadStructural input13934 value6713 value1 value2 = (output13934, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13935 value6712 value1 value2 = (output13935, value6896, value1) := by
  rw [input13935_def, output13935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13417]
  try dsimp only
  rw [child13934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13417_skip, output13934_skip]
  kernel_rfl

theorem node13936_cond_eq
    (child13416 : Flapjack.WordAlloc.removeDeadStructural input13416 value5 value1 value2 = (output13416, value6712, value1))
    (child13935 : Flapjack.WordAlloc.removeDeadStructural input13935 value6712 value1 value2 = (output13935, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13936 value5 value1 value2 = (output13936, value6896, value1) := by
  rw [input13936_def, output13936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13416]
  try dsimp only
  rw [child13935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13416_skip, output13935_skip]
  kernel_rfl

theorem node13937_cond_eq
    (child13413 : Flapjack.WordAlloc.removeDeadStructural input13413 value6706 value1 value2 = (output13413, value5, value1))
    (child13936 : Flapjack.WordAlloc.removeDeadStructural input13936 value5 value1 value2 = (output13936, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13937 value6706 value1 value2 = (output13937, value6896, value1) := by
  rw [input13937_def, output13937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13413]
  try dsimp only
  rw [child13936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13413_skip, output13936_skip]
  kernel_rfl

theorem node13938_cond_eq
    (child13404 : Flapjack.WordAlloc.removeDeadStructural input13404 value6706 value1 value2 = (output13404, value6706, value1))
    (child13937 : Flapjack.WordAlloc.removeDeadStructural input13937 value6706 value1 value2 = (output13937, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13938 value6706 value1 value2 = (output13938, value6896, value1) := by
  rw [input13938_def, output13938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13404]
  try dsimp only
  rw [child13937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13404_skip, output13937_skip]
  kernel_rfl

theorem node13939_cond_eq
    (child13403 : Flapjack.WordAlloc.removeDeadStructural input13403 value6705 value1 value2 = (output13403, value6706, value1))
    (child13938 : Flapjack.WordAlloc.removeDeadStructural input13938 value6706 value1 value2 = (output13938, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13939 value6705 value1 value2 = (output13939, value6896, value1) := by
  rw [input13939_def, output13939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13403]
  try dsimp only
  rw [child13938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13403_skip, output13938_skip]
  kernel_rfl

theorem node13940_cond_eq
    (child13402 : Flapjack.WordAlloc.removeDeadStructural input13402 value5 value1 value2 = (output13402, value6705, value1))
    (child13939 : Flapjack.WordAlloc.removeDeadStructural input13939 value6705 value1 value2 = (output13939, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13940 value5 value1 value2 = (output13940, value6896, value1) := by
  rw [input13940_def, output13940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13402]
  try dsimp only
  rw [child13939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13402_skip, output13939_skip]
  kernel_rfl

theorem node13941_cond_eq
    (child13399 : Flapjack.WordAlloc.removeDeadStructural input13399 value6699 value1 value2 = (output13399, value5, value1))
    (child13940 : Flapjack.WordAlloc.removeDeadStructural input13940 value5 value1 value2 = (output13940, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13941 value6699 value1 value2 = (output13941, value6896, value1) := by
  rw [input13941_def, output13941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13399]
  try dsimp only
  rw [child13940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13399_skip, output13940_skip]
  kernel_rfl

theorem node13942_cond_eq
    (child13390 : Flapjack.WordAlloc.removeDeadStructural input13390 value6699 value1 value2 = (output13390, value6699, value1))
    (child13941 : Flapjack.WordAlloc.removeDeadStructural input13941 value6699 value1 value2 = (output13941, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13942 value6699 value1 value2 = (output13942, value6896, value1) := by
  rw [input13942_def, output13942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13390]
  try dsimp only
  rw [child13941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13390_skip, output13941_skip]
  kernel_rfl

theorem node13943_cond_eq
    (child13389 : Flapjack.WordAlloc.removeDeadStructural input13389 value6698 value1 value2 = (output13389, value6699, value1))
    (child13942 : Flapjack.WordAlloc.removeDeadStructural input13942 value6699 value1 value2 = (output13942, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13943 value6698 value1 value2 = (output13943, value6896, value1) := by
  rw [input13943_def, output13943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13389]
  try dsimp only
  rw [child13942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13389_skip, output13942_skip]
  kernel_rfl

theorem node13944_cond_eq
    (child13388 : Flapjack.WordAlloc.removeDeadStructural input13388 value5 value1 value2 = (output13388, value6698, value1))
    (child13943 : Flapjack.WordAlloc.removeDeadStructural input13943 value6698 value1 value2 = (output13943, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13944 value5 value1 value2 = (output13944, value6896, value1) := by
  rw [input13944_def, output13944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13388]
  try dsimp only
  rw [child13943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13388_skip, output13943_skip]
  kernel_rfl

theorem node13945_cond_eq
    (child13385 : Flapjack.WordAlloc.removeDeadStructural input13385 value6692 value1 value2 = (output13385, value5, value1))
    (child13944 : Flapjack.WordAlloc.removeDeadStructural input13944 value5 value1 value2 = (output13944, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13945 value6692 value1 value2 = (output13945, value6896, value1) := by
  rw [input13945_def, output13945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13385]
  try dsimp only
  rw [child13944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13385_skip, output13944_skip]
  kernel_rfl

theorem node13946_cond_eq
    (child13376 : Flapjack.WordAlloc.removeDeadStructural input13376 value6692 value1 value2 = (output13376, value6692, value1))
    (child13945 : Flapjack.WordAlloc.removeDeadStructural input13945 value6692 value1 value2 = (output13945, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13946 value6692 value1 value2 = (output13946, value6896, value1) := by
  rw [input13946_def, output13946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13376]
  try dsimp only
  rw [child13945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13376_skip, output13945_skip]
  kernel_rfl

theorem node13947_cond_eq
    (child13375 : Flapjack.WordAlloc.removeDeadStructural input13375 value6691 value1 value2 = (output13375, value6692, value1))
    (child13946 : Flapjack.WordAlloc.removeDeadStructural input13946 value6692 value1 value2 = (output13946, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13947 value6691 value1 value2 = (output13947, value6896, value1) := by
  rw [input13947_def, output13947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13375]
  try dsimp only
  rw [child13946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13375_skip, output13946_skip]
  kernel_rfl

theorem node13948_cond_eq
    (child13374 : Flapjack.WordAlloc.removeDeadStructural input13374 value5 value1 value2 = (output13374, value6691, value1))
    (child13947 : Flapjack.WordAlloc.removeDeadStructural input13947 value6691 value1 value2 = (output13947, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13948 value5 value1 value2 = (output13948, value6896, value1) := by
  rw [input13948_def, output13948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13374]
  try dsimp only
  rw [child13947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13374_skip, output13947_skip]
  kernel_rfl

theorem node13949_cond_eq
    (child13371 : Flapjack.WordAlloc.removeDeadStructural input13371 value6685 value1 value2 = (output13371, value5, value1))
    (child13948 : Flapjack.WordAlloc.removeDeadStructural input13948 value5 value1 value2 = (output13948, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13949 value6685 value1 value2 = (output13949, value6896, value1) := by
  rw [input13949_def, output13949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13371]
  try dsimp only
  rw [child13948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13371_skip, output13948_skip]
  kernel_rfl

theorem node13950_cond_eq
    (child13362 : Flapjack.WordAlloc.removeDeadStructural input13362 value6685 value1 value2 = (output13362, value6685, value1))
    (child13949 : Flapjack.WordAlloc.removeDeadStructural input13949 value6685 value1 value2 = (output13949, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13950 value6685 value1 value2 = (output13950, value6896, value1) := by
  rw [input13950_def, output13950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13362]
  try dsimp only
  rw [child13949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13362_skip, output13949_skip]
  kernel_rfl

theorem node13951_cond_eq
    (child13361 : Flapjack.WordAlloc.removeDeadStructural input13361 value6684 value1 value2 = (output13361, value6685, value1))
    (child13950 : Flapjack.WordAlloc.removeDeadStructural input13950 value6685 value1 value2 = (output13950, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13951 value6684 value1 value2 = (output13951, value6896, value1) := by
  rw [input13951_def, output13951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13361]
  try dsimp only
  rw [child13950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13361_skip, output13950_skip]
  kernel_rfl

theorem node13952_cond_eq
    (child13360 : Flapjack.WordAlloc.removeDeadStructural input13360 value5 value1 value2 = (output13360, value6684, value1))
    (child13951 : Flapjack.WordAlloc.removeDeadStructural input13951 value6684 value1 value2 = (output13951, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13952 value5 value1 value2 = (output13952, value6896, value1) := by
  rw [input13952_def, output13952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13360]
  try dsimp only
  rw [child13951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13360_skip, output13951_skip]
  kernel_rfl

theorem node13953_cond_eq
    (child13357 : Flapjack.WordAlloc.removeDeadStructural input13357 value6678 value1 value2 = (output13357, value5, value1))
    (child13952 : Flapjack.WordAlloc.removeDeadStructural input13952 value5 value1 value2 = (output13952, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13953 value6678 value1 value2 = (output13953, value6896, value1) := by
  rw [input13953_def, output13953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13357]
  try dsimp only
  rw [child13952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13357_skip, output13952_skip]
  kernel_rfl

theorem node13954_cond_eq
    (child13348 : Flapjack.WordAlloc.removeDeadStructural input13348 value6678 value1 value2 = (output13348, value6678, value1))
    (child13953 : Flapjack.WordAlloc.removeDeadStructural input13953 value6678 value1 value2 = (output13953, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13954 value6678 value1 value2 = (output13954, value6896, value1) := by
  rw [input13954_def, output13954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13348]
  try dsimp only
  rw [child13953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13348_skip, output13953_skip]
  kernel_rfl

theorem node13955_cond_eq
    (child13347 : Flapjack.WordAlloc.removeDeadStructural input13347 value6677 value1 value2 = (output13347, value6678, value1))
    (child13954 : Flapjack.WordAlloc.removeDeadStructural input13954 value6678 value1 value2 = (output13954, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13955 value6677 value1 value2 = (output13955, value6896, value1) := by
  rw [input13955_def, output13955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13347]
  try dsimp only
  rw [child13954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13347_skip, output13954_skip]
  kernel_rfl

theorem node13956_cond_eq
    (child13346 : Flapjack.WordAlloc.removeDeadStructural input13346 value5 value1 value2 = (output13346, value6677, value1))
    (child13955 : Flapjack.WordAlloc.removeDeadStructural input13955 value6677 value1 value2 = (output13955, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13956 value5 value1 value2 = (output13956, value6896, value1) := by
  rw [input13956_def, output13956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13346]
  try dsimp only
  rw [child13955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13346_skip, output13955_skip]
  kernel_rfl

theorem node13957_cond_eq
    (child13343 : Flapjack.WordAlloc.removeDeadStructural input13343 value6671 value1 value2 = (output13343, value5, value1))
    (child13956 : Flapjack.WordAlloc.removeDeadStructural input13956 value5 value1 value2 = (output13956, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13957 value6671 value1 value2 = (output13957, value6896, value1) := by
  rw [input13957_def, output13957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13343]
  try dsimp only
  rw [child13956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13343_skip, output13956_skip]
  kernel_rfl

theorem node13958_cond_eq
    (child13334 : Flapjack.WordAlloc.removeDeadStructural input13334 value6671 value1 value2 = (output13334, value6671, value1))
    (child13957 : Flapjack.WordAlloc.removeDeadStructural input13957 value6671 value1 value2 = (output13957, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13958 value6671 value1 value2 = (output13958, value6896, value1) := by
  rw [input13958_def, output13958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13334]
  try dsimp only
  rw [child13957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13334_skip, output13957_skip]
  kernel_rfl

theorem node13959_cond_eq
    (child13333 : Flapjack.WordAlloc.removeDeadStructural input13333 value6670 value1 value2 = (output13333, value6671, value1))
    (child13958 : Flapjack.WordAlloc.removeDeadStructural input13958 value6671 value1 value2 = (output13958, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13959 value6670 value1 value2 = (output13959, value6896, value1) := by
  rw [input13959_def, output13959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13333]
  try dsimp only
  rw [child13958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13333_skip, output13958_skip]
  kernel_rfl

theorem node13960_cond_eq
    (child13332 : Flapjack.WordAlloc.removeDeadStructural input13332 value5 value1 value2 = (output13332, value6670, value1))
    (child13959 : Flapjack.WordAlloc.removeDeadStructural input13959 value6670 value1 value2 = (output13959, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13960 value5 value1 value2 = (output13960, value6896, value1) := by
  rw [input13960_def, output13960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13332]
  try dsimp only
  rw [child13959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13332_skip, output13959_skip]
  kernel_rfl

theorem node13961_cond_eq
    (child13329 : Flapjack.WordAlloc.removeDeadStructural input13329 value6664 value1 value2 = (output13329, value5, value1))
    (child13960 : Flapjack.WordAlloc.removeDeadStructural input13960 value5 value1 value2 = (output13960, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13961 value6664 value1 value2 = (output13961, value6896, value1) := by
  rw [input13961_def, output13961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13329]
  try dsimp only
  rw [child13960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13329_skip, output13960_skip]
  kernel_rfl

theorem node13962_cond_eq
    (child13320 : Flapjack.WordAlloc.removeDeadStructural input13320 value6664 value1 value2 = (output13320, value6664, value1))
    (child13961 : Flapjack.WordAlloc.removeDeadStructural input13961 value6664 value1 value2 = (output13961, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13962 value6664 value1 value2 = (output13962, value6896, value1) := by
  rw [input13962_def, output13962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13320]
  try dsimp only
  rw [child13961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13320_skip, output13961_skip]
  kernel_rfl

theorem node13963_cond_eq
    (child13319 : Flapjack.WordAlloc.removeDeadStructural input13319 value6663 value1 value2 = (output13319, value6664, value1))
    (child13962 : Flapjack.WordAlloc.removeDeadStructural input13962 value6664 value1 value2 = (output13962, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13963 value6663 value1 value2 = (output13963, value6896, value1) := by
  rw [input13963_def, output13963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13319]
  try dsimp only
  rw [child13962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13319_skip, output13962_skip]
  kernel_rfl

theorem node13964_cond_eq
    (child13318 : Flapjack.WordAlloc.removeDeadStructural input13318 value5 value1 value2 = (output13318, value6663, value1))
    (child13963 : Flapjack.WordAlloc.removeDeadStructural input13963 value6663 value1 value2 = (output13963, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13964 value5 value1 value2 = (output13964, value6896, value1) := by
  rw [input13964_def, output13964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13318]
  try dsimp only
  rw [child13963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13318_skip, output13963_skip]
  kernel_rfl

theorem node13965_cond_eq
    (child13315 : Flapjack.WordAlloc.removeDeadStructural input13315 value6657 value1 value2 = (output13315, value5, value1))
    (child13964 : Flapjack.WordAlloc.removeDeadStructural input13964 value5 value1 value2 = (output13964, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13965 value6657 value1 value2 = (output13965, value6896, value1) := by
  rw [input13965_def, output13965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13315]
  try dsimp only
  rw [child13964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13315_skip, output13964_skip]
  kernel_rfl

theorem node13966_cond_eq
    (child13306 : Flapjack.WordAlloc.removeDeadStructural input13306 value6657 value1 value2 = (output13306, value6657, value1))
    (child13965 : Flapjack.WordAlloc.removeDeadStructural input13965 value6657 value1 value2 = (output13965, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13966 value6657 value1 value2 = (output13966, value6896, value1) := by
  rw [input13966_def, output13966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13306]
  try dsimp only
  rw [child13965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13306_skip, output13965_skip]
  kernel_rfl

theorem node13967_cond_eq
    (child13305 : Flapjack.WordAlloc.removeDeadStructural input13305 value6656 value1 value2 = (output13305, value6657, value1))
    (child13966 : Flapjack.WordAlloc.removeDeadStructural input13966 value6657 value1 value2 = (output13966, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13967 value6656 value1 value2 = (output13967, value6896, value1) := by
  rw [input13967_def, output13967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13305]
  try dsimp only
  rw [child13966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13305_skip, output13966_skip]
  kernel_rfl

theorem node13968_cond_eq
    (child13304 : Flapjack.WordAlloc.removeDeadStructural input13304 value5 value1 value2 = (output13304, value6656, value1))
    (child13967 : Flapjack.WordAlloc.removeDeadStructural input13967 value6656 value1 value2 = (output13967, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13968 value5 value1 value2 = (output13968, value6896, value1) := by
  rw [input13968_def, output13968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13304]
  try dsimp only
  rw [child13967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13304_skip, output13967_skip]
  kernel_rfl

theorem node13969_cond_eq
    (child13301 : Flapjack.WordAlloc.removeDeadStructural input13301 value6650 value1 value2 = (output13301, value5, value1))
    (child13968 : Flapjack.WordAlloc.removeDeadStructural input13968 value5 value1 value2 = (output13968, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13969 value6650 value1 value2 = (output13969, value6896, value1) := by
  rw [input13969_def, output13969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13301]
  try dsimp only
  rw [child13968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13301_skip, output13968_skip]
  kernel_rfl

theorem node13970_cond_eq
    (child13292 : Flapjack.WordAlloc.removeDeadStructural input13292 value6650 value1 value2 = (output13292, value6650, value1))
    (child13969 : Flapjack.WordAlloc.removeDeadStructural input13969 value6650 value1 value2 = (output13969, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13970 value6650 value1 value2 = (output13970, value6896, value1) := by
  rw [input13970_def, output13970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13292]
  try dsimp only
  rw [child13969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13292_skip, output13969_skip]
  kernel_rfl

theorem node13971_cond_eq
    (child13291 : Flapjack.WordAlloc.removeDeadStructural input13291 value6649 value1 value2 = (output13291, value6650, value1))
    (child13970 : Flapjack.WordAlloc.removeDeadStructural input13970 value6650 value1 value2 = (output13970, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13971 value6649 value1 value2 = (output13971, value6896, value1) := by
  rw [input13971_def, output13971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13291]
  try dsimp only
  rw [child13970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13291_skip, output13970_skip]
  kernel_rfl

theorem node13972_cond_eq
    (child13290 : Flapjack.WordAlloc.removeDeadStructural input13290 value5 value1 value2 = (output13290, value6649, value1))
    (child13971 : Flapjack.WordAlloc.removeDeadStructural input13971 value6649 value1 value2 = (output13971, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13972 value5 value1 value2 = (output13972, value6896, value1) := by
  rw [input13972_def, output13972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13290]
  try dsimp only
  rw [child13971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13290_skip, output13971_skip]
  kernel_rfl

theorem node13973_cond_eq
    (child13287 : Flapjack.WordAlloc.removeDeadStructural input13287 value6643 value1 value2 = (output13287, value5, value1))
    (child13972 : Flapjack.WordAlloc.removeDeadStructural input13972 value5 value1 value2 = (output13972, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13973 value6643 value1 value2 = (output13973, value6896, value1) := by
  rw [input13973_def, output13973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13287]
  try dsimp only
  rw [child13972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13287_skip, output13972_skip]
  kernel_rfl

theorem node13974_cond_eq
    (child13278 : Flapjack.WordAlloc.removeDeadStructural input13278 value6643 value1 value2 = (output13278, value6643, value1))
    (child13973 : Flapjack.WordAlloc.removeDeadStructural input13973 value6643 value1 value2 = (output13973, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13974 value6643 value1 value2 = (output13974, value6896, value1) := by
  rw [input13974_def, output13974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13278]
  try dsimp only
  rw [child13973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13278_skip, output13973_skip]
  kernel_rfl

theorem node13975_cond_eq
    (child13277 : Flapjack.WordAlloc.removeDeadStructural input13277 value6642 value1 value2 = (output13277, value6643, value1))
    (child13974 : Flapjack.WordAlloc.removeDeadStructural input13974 value6643 value1 value2 = (output13974, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13975 value6642 value1 value2 = (output13975, value6896, value1) := by
  rw [input13975_def, output13975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13277]
  try dsimp only
  rw [child13974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13277_skip, output13974_skip]
  kernel_rfl

theorem node13976_cond_eq
    (child13276 : Flapjack.WordAlloc.removeDeadStructural input13276 value5 value1 value2 = (output13276, value6642, value1))
    (child13975 : Flapjack.WordAlloc.removeDeadStructural input13975 value6642 value1 value2 = (output13975, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13976 value5 value1 value2 = (output13976, value6896, value1) := by
  rw [input13976_def, output13976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13276]
  try dsimp only
  rw [child13975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13276_skip, output13975_skip]
  kernel_rfl

theorem node13977_cond_eq
    (child13273 : Flapjack.WordAlloc.removeDeadStructural input13273 value6636 value1 value2 = (output13273, value5, value1))
    (child13976 : Flapjack.WordAlloc.removeDeadStructural input13976 value5 value1 value2 = (output13976, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13977 value6636 value1 value2 = (output13977, value6896, value1) := by
  rw [input13977_def, output13977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13273]
  try dsimp only
  rw [child13976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13273_skip, output13976_skip]
  kernel_rfl

theorem node13978_cond_eq
    (child13264 : Flapjack.WordAlloc.removeDeadStructural input13264 value6636 value1 value2 = (output13264, value6636, value1))
    (child13977 : Flapjack.WordAlloc.removeDeadStructural input13977 value6636 value1 value2 = (output13977, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13978 value6636 value1 value2 = (output13978, value6896, value1) := by
  rw [input13978_def, output13978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13264]
  try dsimp only
  rw [child13977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13264_skip, output13977_skip]
  kernel_rfl

theorem node13979_cond_eq
    (child13263 : Flapjack.WordAlloc.removeDeadStructural input13263 value6635 value1 value2 = (output13263, value6636, value1))
    (child13978 : Flapjack.WordAlloc.removeDeadStructural input13978 value6636 value1 value2 = (output13978, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13979 value6635 value1 value2 = (output13979, value6896, value1) := by
  rw [input13979_def, output13979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13263]
  try dsimp only
  rw [child13978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13263_skip, output13978_skip]
  kernel_rfl

theorem node13980_cond_eq
    (child13262 : Flapjack.WordAlloc.removeDeadStructural input13262 value5 value1 value2 = (output13262, value6635, value1))
    (child13979 : Flapjack.WordAlloc.removeDeadStructural input13979 value6635 value1 value2 = (output13979, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13980 value5 value1 value2 = (output13980, value6896, value1) := by
  rw [input13980_def, output13980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13262]
  try dsimp only
  rw [child13979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13262_skip, output13979_skip]
  kernel_rfl

theorem node13981_cond_eq
    (child13259 : Flapjack.WordAlloc.removeDeadStructural input13259 value6629 value1 value2 = (output13259, value5, value1))
    (child13980 : Flapjack.WordAlloc.removeDeadStructural input13980 value5 value1 value2 = (output13980, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13981 value6629 value1 value2 = (output13981, value6896, value1) := by
  rw [input13981_def, output13981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13259]
  try dsimp only
  rw [child13980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13259_skip, output13980_skip]
  kernel_rfl

theorem node13982_cond_eq
    (child13250 : Flapjack.WordAlloc.removeDeadStructural input13250 value6629 value1 value2 = (output13250, value6629, value1))
    (child13981 : Flapjack.WordAlloc.removeDeadStructural input13981 value6629 value1 value2 = (output13981, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13982 value6629 value1 value2 = (output13982, value6896, value1) := by
  rw [input13982_def, output13982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13250]
  try dsimp only
  rw [child13981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13250_skip, output13981_skip]
  kernel_rfl

theorem node13983_cond_eq
    (child13249 : Flapjack.WordAlloc.removeDeadStructural input13249 value6628 value1 value2 = (output13249, value6629, value1))
    (child13982 : Flapjack.WordAlloc.removeDeadStructural input13982 value6629 value1 value2 = (output13982, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13983 value6628 value1 value2 = (output13983, value6896, value1) := by
  rw [input13983_def, output13983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13249]
  try dsimp only
  rw [child13982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13249_skip, output13982_skip]
  kernel_rfl

theorem node13984_cond_eq
    (child13248 : Flapjack.WordAlloc.removeDeadStructural input13248 value5 value1 value2 = (output13248, value6628, value1))
    (child13983 : Flapjack.WordAlloc.removeDeadStructural input13983 value6628 value1 value2 = (output13983, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13984 value5 value1 value2 = (output13984, value6896, value1) := by
  rw [input13984_def, output13984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13248]
  try dsimp only
  rw [child13983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13248_skip, output13983_skip]
  kernel_rfl

theorem node13985_cond_eq
    (child13245 : Flapjack.WordAlloc.removeDeadStructural input13245 value6622 value1 value2 = (output13245, value5, value1))
    (child13984 : Flapjack.WordAlloc.removeDeadStructural input13984 value5 value1 value2 = (output13984, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13985 value6622 value1 value2 = (output13985, value6896, value1) := by
  rw [input13985_def, output13985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13245]
  try dsimp only
  rw [child13984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13245_skip, output13984_skip]
  kernel_rfl

theorem node13986_cond_eq
    (child13236 : Flapjack.WordAlloc.removeDeadStructural input13236 value6622 value1 value2 = (output13236, value6622, value1))
    (child13985 : Flapjack.WordAlloc.removeDeadStructural input13985 value6622 value1 value2 = (output13985, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13986 value6622 value1 value2 = (output13986, value6896, value1) := by
  rw [input13986_def, output13986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13236]
  try dsimp only
  rw [child13985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13236_skip, output13985_skip]
  kernel_rfl

theorem node13987_cond_eq
    (child13235 : Flapjack.WordAlloc.removeDeadStructural input13235 value6621 value1 value2 = (output13235, value6622, value1))
    (child13986 : Flapjack.WordAlloc.removeDeadStructural input13986 value6622 value1 value2 = (output13986, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13987 value6621 value1 value2 = (output13987, value6896, value1) := by
  rw [input13987_def, output13987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13235]
  try dsimp only
  rw [child13986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13235_skip, output13986_skip]
  kernel_rfl

theorem node13988_cond_eq
    (child13234 : Flapjack.WordAlloc.removeDeadStructural input13234 value5 value1 value2 = (output13234, value6621, value1))
    (child13987 : Flapjack.WordAlloc.removeDeadStructural input13987 value6621 value1 value2 = (output13987, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13988 value5 value1 value2 = (output13988, value6896, value1) := by
  rw [input13988_def, output13988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13234]
  try dsimp only
  rw [child13987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13234_skip, output13987_skip]
  kernel_rfl

theorem node13989_cond_eq
    (child13231 : Flapjack.WordAlloc.removeDeadStructural input13231 value6615 value1 value2 = (output13231, value5, value1))
    (child13988 : Flapjack.WordAlloc.removeDeadStructural input13988 value5 value1 value2 = (output13988, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13989 value6615 value1 value2 = (output13989, value6896, value1) := by
  rw [input13989_def, output13989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13231]
  try dsimp only
  rw [child13988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13231_skip, output13988_skip]
  kernel_rfl

theorem node13990_cond_eq
    (child13222 : Flapjack.WordAlloc.removeDeadStructural input13222 value6615 value1 value2 = (output13222, value6615, value1))
    (child13989 : Flapjack.WordAlloc.removeDeadStructural input13989 value6615 value1 value2 = (output13989, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13990 value6615 value1 value2 = (output13990, value6896, value1) := by
  rw [input13990_def, output13990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13222]
  try dsimp only
  rw [child13989]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13222_skip, output13989_skip]
  kernel_rfl

theorem node13991_cond_eq
    (child13221 : Flapjack.WordAlloc.removeDeadStructural input13221 value6614 value1 value2 = (output13221, value6615, value1))
    (child13990 : Flapjack.WordAlloc.removeDeadStructural input13990 value6615 value1 value2 = (output13990, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13991 value6614 value1 value2 = (output13991, value6896, value1) := by
  rw [input13991_def, output13991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13221]
  try dsimp only
  rw [child13990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13221_skip, output13990_skip]
  kernel_rfl

theorem node13992_cond_eq
    (child13220 : Flapjack.WordAlloc.removeDeadStructural input13220 value5 value1 value2 = (output13220, value6614, value1))
    (child13991 : Flapjack.WordAlloc.removeDeadStructural input13991 value6614 value1 value2 = (output13991, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13992 value5 value1 value2 = (output13992, value6896, value1) := by
  rw [input13992_def, output13992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13220]
  try dsimp only
  rw [child13991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13220_skip, output13991_skip]
  kernel_rfl

theorem node13993_cond_eq
    (child13217 : Flapjack.WordAlloc.removeDeadStructural input13217 value6608 value1 value2 = (output13217, value5, value1))
    (child13992 : Flapjack.WordAlloc.removeDeadStructural input13992 value5 value1 value2 = (output13992, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13993 value6608 value1 value2 = (output13993, value6896, value1) := by
  rw [input13993_def, output13993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13217]
  try dsimp only
  rw [child13992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13217_skip, output13992_skip]
  kernel_rfl

theorem node13994_cond_eq
    (child13208 : Flapjack.WordAlloc.removeDeadStructural input13208 value6608 value1 value2 = (output13208, value6608, value1))
    (child13993 : Flapjack.WordAlloc.removeDeadStructural input13993 value6608 value1 value2 = (output13993, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13994 value6608 value1 value2 = (output13994, value6896, value1) := by
  rw [input13994_def, output13994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13208]
  try dsimp only
  rw [child13993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13208_skip, output13993_skip]
  kernel_rfl

theorem node13995_cond_eq
    (child13207 : Flapjack.WordAlloc.removeDeadStructural input13207 value6607 value1 value2 = (output13207, value6608, value1))
    (child13994 : Flapjack.WordAlloc.removeDeadStructural input13994 value6608 value1 value2 = (output13994, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13995 value6607 value1 value2 = (output13995, value6896, value1) := by
  rw [input13995_def, output13995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13207]
  try dsimp only
  rw [child13994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13207_skip, output13994_skip]
  kernel_rfl

theorem node13996_cond_eq
    (child13206 : Flapjack.WordAlloc.removeDeadStructural input13206 value5 value1 value2 = (output13206, value6607, value1))
    (child13995 : Flapjack.WordAlloc.removeDeadStructural input13995 value6607 value1 value2 = (output13995, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13996 value5 value1 value2 = (output13996, value6896, value1) := by
  rw [input13996_def, output13996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13206]
  try dsimp only
  rw [child13995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13206_skip, output13995_skip]
  kernel_rfl

theorem node13997_cond_eq
    (child13203 : Flapjack.WordAlloc.removeDeadStructural input13203 value6601 value1 value2 = (output13203, value5, value1))
    (child13996 : Flapjack.WordAlloc.removeDeadStructural input13996 value5 value1 value2 = (output13996, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13997 value6601 value1 value2 = (output13997, value6896, value1) := by
  rw [input13997_def, output13997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13203]
  try dsimp only
  rw [child13996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13203_skip, output13996_skip]
  kernel_rfl

theorem node13998_cond_eq
    (child13194 : Flapjack.WordAlloc.removeDeadStructural input13194 value6601 value1 value2 = (output13194, value6601, value1))
    (child13997 : Flapjack.WordAlloc.removeDeadStructural input13997 value6601 value1 value2 = (output13997, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13998 value6601 value1 value2 = (output13998, value6896, value1) := by
  rw [input13998_def, output13998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13194]
  try dsimp only
  rw [child13997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13194_skip, output13997_skip]
  kernel_rfl

theorem node13999_cond_eq
    (child13193 : Flapjack.WordAlloc.removeDeadStructural input13193 value6600 value1 value2 = (output13193, value6601, value1))
    (child13998 : Flapjack.WordAlloc.removeDeadStructural input13998 value6601 value1 value2 = (output13998, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input13999 value6600 value1 value2 = (output13999, value6896, value1) := by
  rw [input13999_def, output13999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13193]
  try dsimp only
  rw [child13998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13193_skip, output13998_skip]
  kernel_rfl

theorem node14000_cond_eq
    (child13192 : Flapjack.WordAlloc.removeDeadStructural input13192 value5 value1 value2 = (output13192, value6600, value1))
    (child13999 : Flapjack.WordAlloc.removeDeadStructural input13999 value6600 value1 value2 = (output13999, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14000 value5 value1 value2 = (output14000, value6896, value1) := by
  rw [input14000_def, output14000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13192]
  try dsimp only
  rw [child13999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13192_skip, output13999_skip]
  kernel_rfl

theorem node14001_cond_eq
    (child13189 : Flapjack.WordAlloc.removeDeadStructural input13189 value6594 value1 value2 = (output13189, value5, value1))
    (child14000 : Flapjack.WordAlloc.removeDeadStructural input14000 value5 value1 value2 = (output14000, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14001 value6594 value1 value2 = (output14001, value6896, value1) := by
  rw [input14001_def, output14001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13189]
  try dsimp only
  rw [child14000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13189_skip, output14000_skip]
  kernel_rfl

theorem node14002_cond_eq
    (child13180 : Flapjack.WordAlloc.removeDeadStructural input13180 value6594 value1 value2 = (output13180, value6594, value1))
    (child14001 : Flapjack.WordAlloc.removeDeadStructural input14001 value6594 value1 value2 = (output14001, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14002 value6594 value1 value2 = (output14002, value6896, value1) := by
  rw [input14002_def, output14002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13180]
  try dsimp only
  rw [child14001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13180_skip, output14001_skip]
  kernel_rfl

theorem node14003_cond_eq
    (child13179 : Flapjack.WordAlloc.removeDeadStructural input13179 value6593 value1 value2 = (output13179, value6594, value1))
    (child14002 : Flapjack.WordAlloc.removeDeadStructural input14002 value6594 value1 value2 = (output14002, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14003 value6593 value1 value2 = (output14003, value6896, value1) := by
  rw [input14003_def, output14003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13179]
  try dsimp only
  rw [child14002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13179_skip, output14002_skip]
  kernel_rfl

theorem node14004_cond_eq
    (child13178 : Flapjack.WordAlloc.removeDeadStructural input13178 value5 value1 value2 = (output13178, value6593, value1))
    (child14003 : Flapjack.WordAlloc.removeDeadStructural input14003 value6593 value1 value2 = (output14003, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14004 value5 value1 value2 = (output14004, value6896, value1) := by
  rw [input14004_def, output14004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13178]
  try dsimp only
  rw [child14003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13178_skip, output14003_skip]
  kernel_rfl

theorem node14005_cond_eq
    (child13175 : Flapjack.WordAlloc.removeDeadStructural input13175 value6587 value1 value2 = (output13175, value5, value1))
    (child14004 : Flapjack.WordAlloc.removeDeadStructural input14004 value5 value1 value2 = (output14004, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14005 value6587 value1 value2 = (output14005, value6896, value1) := by
  rw [input14005_def, output14005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13175]
  try dsimp only
  rw [child14004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13175_skip, output14004_skip]
  kernel_rfl

theorem node14006_cond_eq
    (child13166 : Flapjack.WordAlloc.removeDeadStructural input13166 value6587 value1 value2 = (output13166, value6587, value1))
    (child14005 : Flapjack.WordAlloc.removeDeadStructural input14005 value6587 value1 value2 = (output14005, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14006 value6587 value1 value2 = (output14006, value6896, value1) := by
  rw [input14006_def, output14006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13166]
  try dsimp only
  rw [child14005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13166_skip, output14005_skip]
  kernel_rfl

theorem node14007_cond_eq
    (child13165 : Flapjack.WordAlloc.removeDeadStructural input13165 value6586 value1 value2 = (output13165, value6587, value1))
    (child14006 : Flapjack.WordAlloc.removeDeadStructural input14006 value6587 value1 value2 = (output14006, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14007 value6586 value1 value2 = (output14007, value6896, value1) := by
  rw [input14007_def, output14007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13165]
  try dsimp only
  rw [child14006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13165_skip, output14006_skip]
  kernel_rfl

theorem node14008_cond_eq
    (child13164 : Flapjack.WordAlloc.removeDeadStructural input13164 value5 value1 value2 = (output13164, value6586, value1))
    (child14007 : Flapjack.WordAlloc.removeDeadStructural input14007 value6586 value1 value2 = (output14007, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14008 value5 value1 value2 = (output14008, value6896, value1) := by
  rw [input14008_def, output14008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13164]
  try dsimp only
  rw [child14007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13164_skip, output14007_skip]
  kernel_rfl

theorem node14009_cond_eq
    (child13161 : Flapjack.WordAlloc.removeDeadStructural input13161 value6580 value1 value2 = (output13161, value5, value1))
    (child14008 : Flapjack.WordAlloc.removeDeadStructural input14008 value5 value1 value2 = (output14008, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14009 value6580 value1 value2 = (output14009, value6896, value1) := by
  rw [input14009_def, output14009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13161]
  try dsimp only
  rw [child14008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13161_skip, output14008_skip]
  kernel_rfl

theorem node14010_cond_eq
    (child13152 : Flapjack.WordAlloc.removeDeadStructural input13152 value6580 value1 value2 = (output13152, value6580, value1))
    (child14009 : Flapjack.WordAlloc.removeDeadStructural input14009 value6580 value1 value2 = (output14009, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14010 value6580 value1 value2 = (output14010, value6896, value1) := by
  rw [input14010_def, output14010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13152]
  try dsimp only
  rw [child14009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13152_skip, output14009_skip]
  kernel_rfl

theorem node14011_cond_eq
    (child13151 : Flapjack.WordAlloc.removeDeadStructural input13151 value6579 value1 value2 = (output13151, value6580, value1))
    (child14010 : Flapjack.WordAlloc.removeDeadStructural input14010 value6580 value1 value2 = (output14010, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14011 value6579 value1 value2 = (output14011, value6896, value1) := by
  rw [input14011_def, output14011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13151]
  try dsimp only
  rw [child14010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13151_skip, output14010_skip]
  kernel_rfl

theorem node14012_cond_eq
    (child13150 : Flapjack.WordAlloc.removeDeadStructural input13150 value5 value1 value2 = (output13150, value6579, value1))
    (child14011 : Flapjack.WordAlloc.removeDeadStructural input14011 value6579 value1 value2 = (output14011, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14012 value5 value1 value2 = (output14012, value6896, value1) := by
  rw [input14012_def, output14012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13150]
  try dsimp only
  rw [child14011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13150_skip, output14011_skip]
  kernel_rfl

theorem node14013_cond_eq
    (child13147 : Flapjack.WordAlloc.removeDeadStructural input13147 value6573 value1 value2 = (output13147, value5, value1))
    (child14012 : Flapjack.WordAlloc.removeDeadStructural input14012 value5 value1 value2 = (output14012, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14013 value6573 value1 value2 = (output14013, value6896, value1) := by
  rw [input14013_def, output14013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13147]
  try dsimp only
  rw [child14012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13147_skip, output14012_skip]
  kernel_rfl

theorem node14014_cond_eq
    (child13138 : Flapjack.WordAlloc.removeDeadStructural input13138 value6573 value1 value2 = (output13138, value6573, value1))
    (child14013 : Flapjack.WordAlloc.removeDeadStructural input14013 value6573 value1 value2 = (output14013, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14014 value6573 value1 value2 = (output14014, value6896, value1) := by
  rw [input14014_def, output14014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13138]
  try dsimp only
  rw [child14013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13138_skip, output14013_skip]
  kernel_rfl

theorem node14015_cond_eq
    (child13137 : Flapjack.WordAlloc.removeDeadStructural input13137 value6572 value1 value2 = (output13137, value6573, value1))
    (child14014 : Flapjack.WordAlloc.removeDeadStructural input14014 value6573 value1 value2 = (output14014, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14015 value6572 value1 value2 = (output14015, value6896, value1) := by
  rw [input14015_def, output14015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13137]
  try dsimp only
  rw [child14014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13137_skip, output14014_skip]
  kernel_rfl

theorem node14016_cond_eq
    (child13136 : Flapjack.WordAlloc.removeDeadStructural input13136 value5 value1 value2 = (output13136, value6572, value1))
    (child14015 : Flapjack.WordAlloc.removeDeadStructural input14015 value6572 value1 value2 = (output14015, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14016 value5 value1 value2 = (output14016, value6896, value1) := by
  rw [input14016_def, output14016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13136]
  try dsimp only
  rw [child14015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13136_skip, output14015_skip]
  kernel_rfl

theorem node14017_cond_eq
    (child13133 : Flapjack.WordAlloc.removeDeadStructural input13133 value6566 value1 value2 = (output13133, value5, value1))
    (child14016 : Flapjack.WordAlloc.removeDeadStructural input14016 value5 value1 value2 = (output14016, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14017 value6566 value1 value2 = (output14017, value6896, value1) := by
  rw [input14017_def, output14017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13133]
  try dsimp only
  rw [child14016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13133_skip, output14016_skip]
  kernel_rfl

theorem node14018_cond_eq
    (child13124 : Flapjack.WordAlloc.removeDeadStructural input13124 value6566 value1 value2 = (output13124, value6566, value1))
    (child14017 : Flapjack.WordAlloc.removeDeadStructural input14017 value6566 value1 value2 = (output14017, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14018 value6566 value1 value2 = (output14018, value6896, value1) := by
  rw [input14018_def, output14018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13124]
  try dsimp only
  rw [child14017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13124_skip, output14017_skip]
  kernel_rfl

theorem node14019_cond_eq
    (child13123 : Flapjack.WordAlloc.removeDeadStructural input13123 value6565 value1 value2 = (output13123, value6566, value1))
    (child14018 : Flapjack.WordAlloc.removeDeadStructural input14018 value6566 value1 value2 = (output14018, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14019 value6565 value1 value2 = (output14019, value6896, value1) := by
  rw [input14019_def, output14019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13123]
  try dsimp only
  rw [child14018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13123_skip, output14018_skip]
  kernel_rfl

theorem node14020_cond_eq
    (child13122 : Flapjack.WordAlloc.removeDeadStructural input13122 value5 value1 value2 = (output13122, value6565, value1))
    (child14019 : Flapjack.WordAlloc.removeDeadStructural input14019 value6565 value1 value2 = (output14019, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14020 value5 value1 value2 = (output14020, value6896, value1) := by
  rw [input14020_def, output14020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13122]
  try dsimp only
  rw [child14019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13122_skip, output14019_skip]
  kernel_rfl

theorem node14021_cond_eq
    (child13119 : Flapjack.WordAlloc.removeDeadStructural input13119 value6559 value1 value2 = (output13119, value5, value1))
    (child14020 : Flapjack.WordAlloc.removeDeadStructural input14020 value5 value1 value2 = (output14020, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14021 value6559 value1 value2 = (output14021, value6896, value1) := by
  rw [input14021_def, output14021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13119]
  try dsimp only
  rw [child14020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13119_skip, output14020_skip]
  kernel_rfl

theorem node14022_cond_eq
    (child13110 : Flapjack.WordAlloc.removeDeadStructural input13110 value6559 value1 value2 = (output13110, value6559, value1))
    (child14021 : Flapjack.WordAlloc.removeDeadStructural input14021 value6559 value1 value2 = (output14021, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14022 value6559 value1 value2 = (output14022, value6896, value1) := by
  rw [input14022_def, output14022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13110]
  try dsimp only
  rw [child14021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13110_skip, output14021_skip]
  kernel_rfl

theorem node14023_cond_eq
    (child13109 : Flapjack.WordAlloc.removeDeadStructural input13109 value6558 value1 value2 = (output13109, value6559, value1))
    (child14022 : Flapjack.WordAlloc.removeDeadStructural input14022 value6559 value1 value2 = (output14022, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14023 value6558 value1 value2 = (output14023, value6896, value1) := by
  rw [input14023_def, output14023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13109]
  try dsimp only
  rw [child14022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13109_skip, output14022_skip]
  kernel_rfl

theorem node14024_cond_eq
    (child13108 : Flapjack.WordAlloc.removeDeadStructural input13108 value5 value1 value2 = (output13108, value6558, value1))
    (child14023 : Flapjack.WordAlloc.removeDeadStructural input14023 value6558 value1 value2 = (output14023, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14024 value5 value1 value2 = (output14024, value6896, value1) := by
  rw [input14024_def, output14024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13108]
  try dsimp only
  rw [child14023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13108_skip, output14023_skip]
  kernel_rfl

theorem node14025_cond_eq
    (child13105 : Flapjack.WordAlloc.removeDeadStructural input13105 value6552 value1 value2 = (output13105, value5, value1))
    (child14024 : Flapjack.WordAlloc.removeDeadStructural input14024 value5 value1 value2 = (output14024, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14025 value6552 value1 value2 = (output14025, value6896, value1) := by
  rw [input14025_def, output14025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13105]
  try dsimp only
  rw [child14024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13105_skip, output14024_skip]
  kernel_rfl

theorem node14026_cond_eq
    (child13096 : Flapjack.WordAlloc.removeDeadStructural input13096 value6552 value1 value2 = (output13096, value6552, value1))
    (child14025 : Flapjack.WordAlloc.removeDeadStructural input14025 value6552 value1 value2 = (output14025, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14026 value6552 value1 value2 = (output14026, value6896, value1) := by
  rw [input14026_def, output14026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13096]
  try dsimp only
  rw [child14025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13096_skip, output14025_skip]
  kernel_rfl

theorem node14027_cond_eq
    (child13095 : Flapjack.WordAlloc.removeDeadStructural input13095 value6551 value1 value2 = (output13095, value6552, value1))
    (child14026 : Flapjack.WordAlloc.removeDeadStructural input14026 value6552 value1 value2 = (output14026, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14027 value6551 value1 value2 = (output14027, value6896, value1) := by
  rw [input14027_def, output14027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13095]
  try dsimp only
  rw [child14026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13095_skip, output14026_skip]
  kernel_rfl

theorem node14028_cond_eq
    (child13094 : Flapjack.WordAlloc.removeDeadStructural input13094 value5 value1 value2 = (output13094, value6551, value1))
    (child14027 : Flapjack.WordAlloc.removeDeadStructural input14027 value6551 value1 value2 = (output14027, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14028 value5 value1 value2 = (output14028, value6896, value1) := by
  rw [input14028_def, output14028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13094]
  try dsimp only
  rw [child14027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13094_skip, output14027_skip]
  kernel_rfl

theorem node14029_cond_eq
    (child13091 : Flapjack.WordAlloc.removeDeadStructural input13091 value6545 value1 value2 = (output13091, value5, value1))
    (child14028 : Flapjack.WordAlloc.removeDeadStructural input14028 value5 value1 value2 = (output14028, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14029 value6545 value1 value2 = (output14029, value6896, value1) := by
  rw [input14029_def, output14029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13091]
  try dsimp only
  rw [child14028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13091_skip, output14028_skip]
  kernel_rfl

theorem node14030_cond_eq
    (child13082 : Flapjack.WordAlloc.removeDeadStructural input13082 value6545 value1 value2 = (output13082, value6545, value1))
    (child14029 : Flapjack.WordAlloc.removeDeadStructural input14029 value6545 value1 value2 = (output14029, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14030 value6545 value1 value2 = (output14030, value6896, value1) := by
  rw [input14030_def, output14030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13082]
  try dsimp only
  rw [child14029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13082_skip, output14029_skip]
  kernel_rfl

theorem node14031_cond_eq
    (child13081 : Flapjack.WordAlloc.removeDeadStructural input13081 value6544 value1 value2 = (output13081, value6545, value1))
    (child14030 : Flapjack.WordAlloc.removeDeadStructural input14030 value6545 value1 value2 = (output14030, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14031 value6544 value1 value2 = (output14031, value6896, value1) := by
  rw [input14031_def, output14031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13081]
  try dsimp only
  rw [child14030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13081_skip, output14030_skip]
  kernel_rfl

theorem node14032_cond_eq
    (child13080 : Flapjack.WordAlloc.removeDeadStructural input13080 value5 value1 value2 = (output13080, value6544, value1))
    (child14031 : Flapjack.WordAlloc.removeDeadStructural input14031 value6544 value1 value2 = (output14031, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14032 value5 value1 value2 = (output14032, value6896, value1) := by
  rw [input14032_def, output14032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13080]
  try dsimp only
  rw [child14031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13080_skip, output14031_skip]
  kernel_rfl

theorem node14033_cond_eq
    (child13077 : Flapjack.WordAlloc.removeDeadStructural input13077 value6538 value1 value2 = (output13077, value5, value1))
    (child14032 : Flapjack.WordAlloc.removeDeadStructural input14032 value5 value1 value2 = (output14032, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14033 value6538 value1 value2 = (output14033, value6896, value1) := by
  rw [input14033_def, output14033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13077]
  try dsimp only
  rw [child14032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13077_skip, output14032_skip]
  kernel_rfl

theorem node14034_cond_eq
    (child13068 : Flapjack.WordAlloc.removeDeadStructural input13068 value6538 value1 value2 = (output13068, value6538, value1))
    (child14033 : Flapjack.WordAlloc.removeDeadStructural input14033 value6538 value1 value2 = (output14033, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14034 value6538 value1 value2 = (output14034, value6896, value1) := by
  rw [input14034_def, output14034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13068]
  try dsimp only
  rw [child14033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13068_skip, output14033_skip]
  kernel_rfl

theorem node14035_cond_eq
    (child13067 : Flapjack.WordAlloc.removeDeadStructural input13067 value6537 value1 value2 = (output13067, value6538, value1))
    (child14034 : Flapjack.WordAlloc.removeDeadStructural input14034 value6538 value1 value2 = (output14034, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14035 value6537 value1 value2 = (output14035, value6896, value1) := by
  rw [input14035_def, output14035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13067]
  try dsimp only
  rw [child14034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13067_skip, output14034_skip]
  kernel_rfl

theorem node14036_cond_eq
    (child13066 : Flapjack.WordAlloc.removeDeadStructural input13066 value5 value1 value2 = (output13066, value6537, value1))
    (child14035 : Flapjack.WordAlloc.removeDeadStructural input14035 value6537 value1 value2 = (output14035, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14036 value5 value1 value2 = (output14036, value6896, value1) := by
  rw [input14036_def, output14036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13066]
  try dsimp only
  rw [child14035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13066_skip, output14035_skip]
  kernel_rfl

theorem node14037_cond_eq
    (child13063 : Flapjack.WordAlloc.removeDeadStructural input13063 value6531 value1 value2 = (output13063, value5, value1))
    (child14036 : Flapjack.WordAlloc.removeDeadStructural input14036 value5 value1 value2 = (output14036, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14037 value6531 value1 value2 = (output14037, value6896, value1) := by
  rw [input14037_def, output14037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13063]
  try dsimp only
  rw [child14036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13063_skip, output14036_skip]
  kernel_rfl

theorem node14038_cond_eq
    (child13054 : Flapjack.WordAlloc.removeDeadStructural input13054 value6531 value1 value2 = (output13054, value6531, value1))
    (child14037 : Flapjack.WordAlloc.removeDeadStructural input14037 value6531 value1 value2 = (output14037, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14038 value6531 value1 value2 = (output14038, value6896, value1) := by
  rw [input14038_def, output14038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13054]
  try dsimp only
  rw [child14037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13054_skip, output14037_skip]
  kernel_rfl

theorem node14039_cond_eq
    (child13053 : Flapjack.WordAlloc.removeDeadStructural input13053 value6530 value1 value2 = (output13053, value6531, value1))
    (child14038 : Flapjack.WordAlloc.removeDeadStructural input14038 value6531 value1 value2 = (output14038, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14039 value6530 value1 value2 = (output14039, value6896, value1) := by
  rw [input14039_def, output14039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13053]
  try dsimp only
  rw [child14038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13053_skip, output14038_skip]
  kernel_rfl

theorem node14040_cond_eq
    (child13052 : Flapjack.WordAlloc.removeDeadStructural input13052 value5 value1 value2 = (output13052, value6530, value1))
    (child14039 : Flapjack.WordAlloc.removeDeadStructural input14039 value6530 value1 value2 = (output14039, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14040 value5 value1 value2 = (output14040, value6896, value1) := by
  rw [input14040_def, output14040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13052]
  try dsimp only
  rw [child14039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13052_skip, output14039_skip]
  kernel_rfl

theorem node14041_cond_eq
    (child13049 : Flapjack.WordAlloc.removeDeadStructural input13049 value6524 value1 value2 = (output13049, value5, value1))
    (child14040 : Flapjack.WordAlloc.removeDeadStructural input14040 value5 value1 value2 = (output14040, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14041 value6524 value1 value2 = (output14041, value6896, value1) := by
  rw [input14041_def, output14041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13049]
  try dsimp only
  rw [child14040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13049_skip, output14040_skip]
  kernel_rfl

theorem node14042_cond_eq
    (child13040 : Flapjack.WordAlloc.removeDeadStructural input13040 value6524 value1 value2 = (output13040, value6524, value1))
    (child14041 : Flapjack.WordAlloc.removeDeadStructural input14041 value6524 value1 value2 = (output14041, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14042 value6524 value1 value2 = (output14042, value6896, value1) := by
  rw [input14042_def, output14042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13040]
  try dsimp only
  rw [child14041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13040_skip, output14041_skip]
  kernel_rfl

theorem node14043_cond_eq
    (child13039 : Flapjack.WordAlloc.removeDeadStructural input13039 value6523 value1 value2 = (output13039, value6524, value1))
    (child14042 : Flapjack.WordAlloc.removeDeadStructural input14042 value6524 value1 value2 = (output14042, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14043 value6523 value1 value2 = (output14043, value6896, value1) := by
  rw [input14043_def, output14043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13039]
  try dsimp only
  rw [child14042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13039_skip, output14042_skip]
  kernel_rfl

theorem node14044_cond_eq
    (child13038 : Flapjack.WordAlloc.removeDeadStructural input13038 value5 value1 value2 = (output13038, value6523, value1))
    (child14043 : Flapjack.WordAlloc.removeDeadStructural input14043 value6523 value1 value2 = (output14043, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14044 value5 value1 value2 = (output14044, value6896, value1) := by
  rw [input14044_def, output14044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13038]
  try dsimp only
  rw [child14043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13038_skip, output14043_skip]
  kernel_rfl

theorem node14045_cond_eq
    (child13035 : Flapjack.WordAlloc.removeDeadStructural input13035 value6517 value1 value2 = (output13035, value5, value1))
    (child14044 : Flapjack.WordAlloc.removeDeadStructural input14044 value5 value1 value2 = (output14044, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14045 value6517 value1 value2 = (output14045, value6896, value1) := by
  rw [input14045_def, output14045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13035]
  try dsimp only
  rw [child14044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13035_skip, output14044_skip]
  kernel_rfl

theorem node14046_cond_eq
    (child13026 : Flapjack.WordAlloc.removeDeadStructural input13026 value6517 value1 value2 = (output13026, value6517, value1))
    (child14045 : Flapjack.WordAlloc.removeDeadStructural input14045 value6517 value1 value2 = (output14045, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14046 value6517 value1 value2 = (output14046, value6896, value1) := by
  rw [input14046_def, output14046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13026]
  try dsimp only
  rw [child14045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13026_skip, output14045_skip]
  kernel_rfl

theorem node14047_cond_eq
    (child13025 : Flapjack.WordAlloc.removeDeadStructural input13025 value6516 value1 value2 = (output13025, value6517, value1))
    (child14046 : Flapjack.WordAlloc.removeDeadStructural input14046 value6517 value1 value2 = (output14046, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14047 value6516 value1 value2 = (output14047, value6896, value1) := by
  rw [input14047_def, output14047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13025]
  try dsimp only
  rw [child14046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13025_skip, output14046_skip]
  kernel_rfl

theorem node14048_cond_eq
    (child13024 : Flapjack.WordAlloc.removeDeadStructural input13024 value5 value1 value2 = (output13024, value6516, value1))
    (child14047 : Flapjack.WordAlloc.removeDeadStructural input14047 value6516 value1 value2 = (output14047, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14048 value5 value1 value2 = (output14048, value6896, value1) := by
  rw [input14048_def, output14048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13024]
  try dsimp only
  rw [child14047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13024_skip, output14047_skip]
  kernel_rfl

theorem node14049_cond_eq
    (child13021 : Flapjack.WordAlloc.removeDeadStructural input13021 value6510 value1 value2 = (output13021, value5, value1))
    (child14048 : Flapjack.WordAlloc.removeDeadStructural input14048 value5 value1 value2 = (output14048, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14049 value6510 value1 value2 = (output14049, value6896, value1) := by
  rw [input14049_def, output14049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13021]
  try dsimp only
  rw [child14048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13021_skip, output14048_skip]
  kernel_rfl

theorem node14050_cond_eq
    (child13012 : Flapjack.WordAlloc.removeDeadStructural input13012 value6510 value1 value2 = (output13012, value6510, value1))
    (child14049 : Flapjack.WordAlloc.removeDeadStructural input14049 value6510 value1 value2 = (output14049, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14050 value6510 value1 value2 = (output14050, value6896, value1) := by
  rw [input14050_def, output14050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13012]
  try dsimp only
  rw [child14049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13012_skip, output14049_skip]
  kernel_rfl

theorem node14051_cond_eq
    (child13011 : Flapjack.WordAlloc.removeDeadStructural input13011 value6509 value1 value2 = (output13011, value6510, value1))
    (child14050 : Flapjack.WordAlloc.removeDeadStructural input14050 value6510 value1 value2 = (output14050, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14051 value6509 value1 value2 = (output14051, value6896, value1) := by
  rw [input14051_def, output14051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13011]
  try dsimp only
  rw [child14050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13011_skip, output14050_skip]
  kernel_rfl

theorem node14052_cond_eq
    (child13010 : Flapjack.WordAlloc.removeDeadStructural input13010 value5 value1 value2 = (output13010, value6509, value1))
    (child14051 : Flapjack.WordAlloc.removeDeadStructural input14051 value6509 value1 value2 = (output14051, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14052 value5 value1 value2 = (output14052, value6896, value1) := by
  rw [input14052_def, output14052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13010]
  try dsimp only
  rw [child14051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13010_skip, output14051_skip]
  kernel_rfl

theorem node14053_cond_eq
    (child13007 : Flapjack.WordAlloc.removeDeadStructural input13007 value6503 value1 value2 = (output13007, value5, value1))
    (child14052 : Flapjack.WordAlloc.removeDeadStructural input14052 value5 value1 value2 = (output14052, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14053 value6503 value1 value2 = (output14053, value6896, value1) := by
  rw [input14053_def, output14053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13007]
  try dsimp only
  rw [child14052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13007_skip, output14052_skip]
  kernel_rfl

theorem node14054_cond_eq
    (child12998 : Flapjack.WordAlloc.removeDeadStructural input12998 value6503 value1 value2 = (output12998, value6503, value1))
    (child14053 : Flapjack.WordAlloc.removeDeadStructural input14053 value6503 value1 value2 = (output14053, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14054 value6503 value1 value2 = (output14054, value6896, value1) := by
  rw [input14054_def, output14054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12998]
  try dsimp only
  rw [child14053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12998_skip, output14053_skip]
  kernel_rfl

theorem node14055_cond_eq
    (child12997 : Flapjack.WordAlloc.removeDeadStructural input12997 value6502 value1 value2 = (output12997, value6503, value1))
    (child14054 : Flapjack.WordAlloc.removeDeadStructural input14054 value6503 value1 value2 = (output14054, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14055 value6502 value1 value2 = (output14055, value6896, value1) := by
  rw [input14055_def, output14055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12997]
  try dsimp only
  rw [child14054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12997_skip, output14054_skip]
  kernel_rfl

theorem node14056_cond_eq
    (child12996 : Flapjack.WordAlloc.removeDeadStructural input12996 value5 value1 value2 = (output12996, value6502, value1))
    (child14055 : Flapjack.WordAlloc.removeDeadStructural input14055 value6502 value1 value2 = (output14055, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14056 value5 value1 value2 = (output14056, value6896, value1) := by
  rw [input14056_def, output14056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12996]
  try dsimp only
  rw [child14055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12996_skip, output14055_skip]
  kernel_rfl

theorem node14057_cond_eq
    (child12993 : Flapjack.WordAlloc.removeDeadStructural input12993 value6496 value1 value2 = (output12993, value5, value1))
    (child14056 : Flapjack.WordAlloc.removeDeadStructural input14056 value5 value1 value2 = (output14056, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14057 value6496 value1 value2 = (output14057, value6896, value1) := by
  rw [input14057_def, output14057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12993]
  try dsimp only
  rw [child14056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12993_skip, output14056_skip]
  kernel_rfl

theorem node14058_cond_eq
    (child12984 : Flapjack.WordAlloc.removeDeadStructural input12984 value6496 value1 value2 = (output12984, value6496, value1))
    (child14057 : Flapjack.WordAlloc.removeDeadStructural input14057 value6496 value1 value2 = (output14057, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14058 value6496 value1 value2 = (output14058, value6896, value1) := by
  rw [input14058_def, output14058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12984]
  try dsimp only
  rw [child14057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12984_skip, output14057_skip]
  kernel_rfl

theorem node14059_cond_eq
    (child12983 : Flapjack.WordAlloc.removeDeadStructural input12983 value6495 value1 value2 = (output12983, value6496, value1))
    (child14058 : Flapjack.WordAlloc.removeDeadStructural input14058 value6496 value1 value2 = (output14058, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14059 value6495 value1 value2 = (output14059, value6896, value1) := by
  rw [input14059_def, output14059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12983]
  try dsimp only
  rw [child14058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12983_skip, output14058_skip]
  kernel_rfl

theorem node14060_cond_eq
    (child12982 : Flapjack.WordAlloc.removeDeadStructural input12982 value5 value1 value2 = (output12982, value6495, value1))
    (child14059 : Flapjack.WordAlloc.removeDeadStructural input14059 value6495 value1 value2 = (output14059, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14060 value5 value1 value2 = (output14060, value6896, value1) := by
  rw [input14060_def, output14060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12982]
  try dsimp only
  rw [child14059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12982_skip, output14059_skip]
  kernel_rfl

theorem node14061_cond_eq
    (child12979 : Flapjack.WordAlloc.removeDeadStructural input12979 value6489 value1 value2 = (output12979, value5, value1))
    (child14060 : Flapjack.WordAlloc.removeDeadStructural input14060 value5 value1 value2 = (output14060, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14061 value6489 value1 value2 = (output14061, value6896, value1) := by
  rw [input14061_def, output14061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12979]
  try dsimp only
  rw [child14060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12979_skip, output14060_skip]
  kernel_rfl

theorem node14062_cond_eq
    (child12970 : Flapjack.WordAlloc.removeDeadStructural input12970 value6489 value1 value2 = (output12970, value6489, value1))
    (child14061 : Flapjack.WordAlloc.removeDeadStructural input14061 value6489 value1 value2 = (output14061, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14062 value6489 value1 value2 = (output14062, value6896, value1) := by
  rw [input14062_def, output14062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12970]
  try dsimp only
  rw [child14061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12970_skip, output14061_skip]
  kernel_rfl

theorem node14063_cond_eq
    (child12969 : Flapjack.WordAlloc.removeDeadStructural input12969 value6488 value1 value2 = (output12969, value6489, value1))
    (child14062 : Flapjack.WordAlloc.removeDeadStructural input14062 value6489 value1 value2 = (output14062, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14063 value6488 value1 value2 = (output14063, value6896, value1) := by
  rw [input14063_def, output14063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12969]
  try dsimp only
  rw [child14062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12969_skip, output14062_skip]
  kernel_rfl

theorem node14064_cond_eq
    (child12968 : Flapjack.WordAlloc.removeDeadStructural input12968 value5 value1 value2 = (output12968, value6488, value1))
    (child14063 : Flapjack.WordAlloc.removeDeadStructural input14063 value6488 value1 value2 = (output14063, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14064 value5 value1 value2 = (output14064, value6896, value1) := by
  rw [input14064_def, output14064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12968]
  try dsimp only
  rw [child14063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12968_skip, output14063_skip]
  kernel_rfl

theorem node14065_cond_eq
    (child12965 : Flapjack.WordAlloc.removeDeadStructural input12965 value6482 value1 value2 = (output12965, value5, value1))
    (child14064 : Flapjack.WordAlloc.removeDeadStructural input14064 value5 value1 value2 = (output14064, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14065 value6482 value1 value2 = (output14065, value6896, value1) := by
  rw [input14065_def, output14065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12965]
  try dsimp only
  rw [child14064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12965_skip, output14064_skip]
  kernel_rfl

theorem node14066_cond_eq
    (child12956 : Flapjack.WordAlloc.removeDeadStructural input12956 value6482 value1 value2 = (output12956, value6482, value1))
    (child14065 : Flapjack.WordAlloc.removeDeadStructural input14065 value6482 value1 value2 = (output14065, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14066 value6482 value1 value2 = (output14066, value6896, value1) := by
  rw [input14066_def, output14066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12956]
  try dsimp only
  rw [child14065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12956_skip, output14065_skip]
  kernel_rfl

theorem node14067_cond_eq
    (child12955 : Flapjack.WordAlloc.removeDeadStructural input12955 value6481 value1 value2 = (output12955, value6482, value1))
    (child14066 : Flapjack.WordAlloc.removeDeadStructural input14066 value6482 value1 value2 = (output14066, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14067 value6481 value1 value2 = (output14067, value6896, value1) := by
  rw [input14067_def, output14067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12955]
  try dsimp only
  rw [child14066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12955_skip, output14066_skip]
  kernel_rfl

theorem node14068_cond_eq
    (child12954 : Flapjack.WordAlloc.removeDeadStructural input12954 value5 value1 value2 = (output12954, value6481, value1))
    (child14067 : Flapjack.WordAlloc.removeDeadStructural input14067 value6481 value1 value2 = (output14067, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14068 value5 value1 value2 = (output14068, value6896, value1) := by
  rw [input14068_def, output14068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12954]
  try dsimp only
  rw [child14067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12954_skip, output14067_skip]
  kernel_rfl

theorem node14069_cond_eq
    (child12951 : Flapjack.WordAlloc.removeDeadStructural input12951 value6475 value1 value2 = (output12951, value5, value1))
    (child14068 : Flapjack.WordAlloc.removeDeadStructural input14068 value5 value1 value2 = (output14068, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14069 value6475 value1 value2 = (output14069, value6896, value1) := by
  rw [input14069_def, output14069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12951]
  try dsimp only
  rw [child14068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12951_skip, output14068_skip]
  kernel_rfl

theorem node14070_cond_eq
    (child12942 : Flapjack.WordAlloc.removeDeadStructural input12942 value6475 value1 value2 = (output12942, value6475, value1))
    (child14069 : Flapjack.WordAlloc.removeDeadStructural input14069 value6475 value1 value2 = (output14069, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14070 value6475 value1 value2 = (output14070, value6896, value1) := by
  rw [input14070_def, output14070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12942]
  try dsimp only
  rw [child14069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12942_skip, output14069_skip]
  kernel_rfl

theorem node14071_cond_eq
    (child12941 : Flapjack.WordAlloc.removeDeadStructural input12941 value6474 value1 value2 = (output12941, value6475, value1))
    (child14070 : Flapjack.WordAlloc.removeDeadStructural input14070 value6475 value1 value2 = (output14070, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14071 value6474 value1 value2 = (output14071, value6896, value1) := by
  rw [input14071_def, output14071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12941]
  try dsimp only
  rw [child14070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12941_skip, output14070_skip]
  kernel_rfl

theorem node14072_cond_eq
    (child12940 : Flapjack.WordAlloc.removeDeadStructural input12940 value5 value1 value2 = (output12940, value6474, value1))
    (child14071 : Flapjack.WordAlloc.removeDeadStructural input14071 value6474 value1 value2 = (output14071, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14072 value5 value1 value2 = (output14072, value6896, value1) := by
  rw [input14072_def, output14072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12940]
  try dsimp only
  rw [child14071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12940_skip, output14071_skip]
  kernel_rfl

theorem node14073_cond_eq
    (child12937 : Flapjack.WordAlloc.removeDeadStructural input12937 value6468 value1 value2 = (output12937, value5, value1))
    (child14072 : Flapjack.WordAlloc.removeDeadStructural input14072 value5 value1 value2 = (output14072, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14073 value6468 value1 value2 = (output14073, value6896, value1) := by
  rw [input14073_def, output14073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12937]
  try dsimp only
  rw [child14072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12937_skip, output14072_skip]
  kernel_rfl

theorem node14074_cond_eq
    (child12928 : Flapjack.WordAlloc.removeDeadStructural input12928 value6468 value1 value2 = (output12928, value6468, value1))
    (child14073 : Flapjack.WordAlloc.removeDeadStructural input14073 value6468 value1 value2 = (output14073, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14074 value6468 value1 value2 = (output14074, value6896, value1) := by
  rw [input14074_def, output14074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12928]
  try dsimp only
  rw [child14073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12928_skip, output14073_skip]
  kernel_rfl

theorem node14075_cond_eq
    (child12927 : Flapjack.WordAlloc.removeDeadStructural input12927 value6467 value1 value2 = (output12927, value6468, value1))
    (child14074 : Flapjack.WordAlloc.removeDeadStructural input14074 value6468 value1 value2 = (output14074, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14075 value6467 value1 value2 = (output14075, value6896, value1) := by
  rw [input14075_def, output14075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12927]
  try dsimp only
  rw [child14074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12927_skip, output14074_skip]
  kernel_rfl

theorem node14076_cond_eq
    (child12926 : Flapjack.WordAlloc.removeDeadStructural input12926 value5 value1 value2 = (output12926, value6467, value1))
    (child14075 : Flapjack.WordAlloc.removeDeadStructural input14075 value6467 value1 value2 = (output14075, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14076 value5 value1 value2 = (output14076, value6896, value1) := by
  rw [input14076_def, output14076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12926]
  try dsimp only
  rw [child14075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12926_skip, output14075_skip]
  kernel_rfl

theorem node14077_cond_eq
    (child12923 : Flapjack.WordAlloc.removeDeadStructural input12923 value6461 value1 value2 = (output12923, value5, value1))
    (child14076 : Flapjack.WordAlloc.removeDeadStructural input14076 value5 value1 value2 = (output14076, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14077 value6461 value1 value2 = (output14077, value6896, value1) := by
  rw [input14077_def, output14077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12923]
  try dsimp only
  rw [child14076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12923_skip, output14076_skip]
  kernel_rfl

theorem node14078_cond_eq
    (child12914 : Flapjack.WordAlloc.removeDeadStructural input12914 value6461 value1 value2 = (output12914, value6461, value1))
    (child14077 : Flapjack.WordAlloc.removeDeadStructural input14077 value6461 value1 value2 = (output14077, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14078 value6461 value1 value2 = (output14078, value6896, value1) := by
  rw [input14078_def, output14078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12914]
  try dsimp only
  rw [child14077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12914_skip, output14077_skip]
  kernel_rfl

theorem node14079_cond_eq
    (child12913 : Flapjack.WordAlloc.removeDeadStructural input12913 value6460 value1 value2 = (output12913, value6461, value1))
    (child14078 : Flapjack.WordAlloc.removeDeadStructural input14078 value6461 value1 value2 = (output14078, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14079 value6460 value1 value2 = (output14079, value6896, value1) := by
  rw [input14079_def, output14079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12913]
  try dsimp only
  rw [child14078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12913_skip, output14078_skip]
  kernel_rfl

#print axioms node14079_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
