import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree8832_agree_conditional
    (child0 : tree8830 = literal8830)
    (child1 : tree8831 = literal8831) : tree8832 = literal8832 := by
  rw [tree8832_def, child0, child1]
  rfl
theorem node8832_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8830 live8830 coloured8830 = result8830)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8831 live8831 coloured8831 = result8831) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8832 live8832 coloured8832 = result8832 := by
  rw [tree8832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8830 coloured8830 at child
  try dsimp only [live8832, coloured8832]
  rw [child]
  dsimp only [result8830]
  have child := child1
  unfold live8831 coloured8831 at child
  try dsimp only [live8832, coloured8832]
  rw [child]
  dsimp only [result8831]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8833_agree_conditional : tree8833 = literal8833 := by
  rw [tree8833_def]
  rfl
theorem node8833_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8833 live8833 coloured8833 = result8833 := by
  rw [tree8833_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8834_agree_conditional
    (child0 : tree8832 = literal8832)
    (child1 : tree8833 = literal8833) : tree8834 = literal8834 := by
  rw [tree8834_def, child0, child1]
  rfl
theorem node8834_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8832 live8832 coloured8832 = result8832)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8833 live8833 coloured8833 = result8833) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8834 live8834 coloured8834 = result8834 := by
  rw [tree8834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8832 coloured8832 at child
  try dsimp only [live8834, coloured8834]
  rw [child]
  dsimp only [result8832]
  have child := child1
  unfold live8833 coloured8833 at child
  try dsimp only [live8834, coloured8834]
  rw [child]
  dsimp only [result8833]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8835_agree_conditional : tree8835 = literal8835 := by
  rw [tree8835_def]
  rfl
theorem node8835_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8835 live8835 coloured8835 = result8835 := by
  rw [tree8835_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8836_agree_conditional
    (child0 : tree8834 = literal8834)
    (child1 : tree8835 = literal8835) : tree8836 = literal8836 := by
  rw [tree8836_def, child0, child1]
  rfl
theorem node8836_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8834 live8834 coloured8834 = result8834)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8835 live8835 coloured8835 = result8835) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8836 live8836 coloured8836 = result8836 := by
  rw [tree8836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8834 coloured8834 at child
  try dsimp only [live8836, coloured8836]
  rw [child]
  dsimp only [result8834]
  have child := child1
  unfold live8835 coloured8835 at child
  try dsimp only [live8836, coloured8836]
  rw [child]
  dsimp only [result8835]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8837_agree_conditional : tree8837 = literal8837 := by
  rw [tree8837_def]
  rfl
theorem node8837_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8837 live8837 coloured8837 = result8837 := by
  rw [tree8837_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8838_agree_conditional
    (child0 : tree8836 = literal8836)
    (child1 : tree8837 = literal8837) : tree8838 = literal8838 := by
  rw [tree8838_def, child0, child1]
  rfl
theorem node8838_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8836 live8836 coloured8836 = result8836)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8837 live8837 coloured8837 = result8837) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8838 live8838 coloured8838 = result8838 := by
  rw [tree8838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8836 coloured8836 at child
  try dsimp only [live8838, coloured8838]
  rw [child]
  dsimp only [result8836]
  have child := child1
  unfold live8837 coloured8837 at child
  try dsimp only [live8838, coloured8838]
  rw [child]
  dsimp only [result8837]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8839_agree_conditional : tree8839 = literal8839 := by
  rw [tree8839_def]
  rfl
theorem node8839_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8839 live8839 coloured8839 = result8839 := by
  rw [tree8839_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8840_agree_conditional
    (child0 : tree8838 = literal8838)
    (child1 : tree8839 = literal8839) : tree8840 = literal8840 := by
  rw [tree8840_def, child0, child1]
  rfl
theorem node8840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8838 live8838 coloured8838 = result8838)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8839 live8839 coloured8839 = result8839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8840 live8840 coloured8840 = result8840 := by
  rw [tree8840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8838 coloured8838 at child
  try dsimp only [live8840, coloured8840]
  rw [child]
  dsimp only [result8838]
  have child := child1
  unfold live8839 coloured8839 at child
  try dsimp only [live8840, coloured8840]
  rw [child]
  dsimp only [result8839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8841_agree_conditional : tree8841 = literal8841 := by
  rw [tree8841_def]
  rfl
theorem node8841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8841 live8841 coloured8841 = result8841 := by
  rw [tree8841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8842_agree_conditional
    (child0 : tree8840 = literal8840)
    (child1 : tree8841 = literal8841) : tree8842 = literal8842 := by
  rw [tree8842_def, child0, child1]
  rfl
theorem node8842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8840 live8840 coloured8840 = result8840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8841 live8841 coloured8841 = result8841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8842 live8842 coloured8842 = result8842 := by
  rw [tree8842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8840 coloured8840 at child
  try dsimp only [live8842, coloured8842]
  rw [child]
  dsimp only [result8840]
  have child := child1
  unfold live8841 coloured8841 at child
  try dsimp only [live8842, coloured8842]
  rw [child]
  dsimp only [result8841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8843_agree_conditional : tree8843 = literal8843 := by
  rw [tree8843_def]
  rfl
theorem node8843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8843 live8843 coloured8843 = result8843 := by
  rw [tree8843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8844_agree_conditional
    (child0 : tree8842 = literal8842)
    (child1 : tree8843 = literal8843) : tree8844 = literal8844 := by
  rw [tree8844_def, child0, child1]
  rfl
theorem node8844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8842 live8842 coloured8842 = result8842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8843 live8843 coloured8843 = result8843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8844 live8844 coloured8844 = result8844 := by
  rw [tree8844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8842 coloured8842 at child
  try dsimp only [live8844, coloured8844]
  rw [child]
  dsimp only [result8842]
  have child := child1
  unfold live8843 coloured8843 at child
  try dsimp only [live8844, coloured8844]
  rw [child]
  dsimp only [result8843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8845_agree_conditional : tree8845 = literal8845 := by
  rw [tree8845_def]
  rfl
theorem node8845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8845 live8845 coloured8845 = result8845 := by
  rw [tree8845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8846_agree_conditional
    (child0 : tree8844 = literal8844)
    (child1 : tree8845 = literal8845) : tree8846 = literal8846 := by
  rw [tree8846_def, child0, child1]
  rfl
theorem node8846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8844 live8844 coloured8844 = result8844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8845 live8845 coloured8845 = result8845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8846 live8846 coloured8846 = result8846 := by
  rw [tree8846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8844 coloured8844 at child
  try dsimp only [live8846, coloured8846]
  rw [child]
  dsimp only [result8844]
  have child := child1
  unfold live8845 coloured8845 at child
  try dsimp only [live8846, coloured8846]
  rw [child]
  dsimp only [result8845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8847_agree_conditional : tree8847 = literal8847 := by
  rw [tree8847_def]
  rfl
theorem node8847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8847 live8847 coloured8847 = result8847 := by
  rw [tree8847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8848_agree_conditional
    (child0 : tree8846 = literal8846)
    (child1 : tree8847 = literal8847) : tree8848 = literal8848 := by
  rw [tree8848_def, child0, child1]
  rfl
theorem node8848_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8846 live8846 coloured8846 = result8846)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8847 live8847 coloured8847 = result8847) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8848 live8848 coloured8848 = result8848 := by
  rw [tree8848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8846 coloured8846 at child
  try dsimp only [live8848, coloured8848]
  rw [child]
  dsimp only [result8846]
  have child := child1
  unfold live8847 coloured8847 at child
  try dsimp only [live8848, coloured8848]
  rw [child]
  dsimp only [result8847]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8849_agree_conditional : tree8849 = literal8849 := by
  rw [tree8849_def]
  rfl
theorem node8849_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8849 live8849 coloured8849 = result8849 := by
  rw [tree8849_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8850_agree_conditional
    (child0 : tree8848 = literal8848)
    (child1 : tree8849 = literal8849) : tree8850 = literal8850 := by
  rw [tree8850_def, child0, child1]
  rfl
theorem node8850_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8848 live8848 coloured8848 = result8848)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8849 live8849 coloured8849 = result8849) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8850 live8850 coloured8850 = result8850 := by
  rw [tree8850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8848 coloured8848 at child
  try dsimp only [live8850, coloured8850]
  rw [child]
  dsimp only [result8848]
  have child := child1
  unfold live8849 coloured8849 at child
  try dsimp only [live8850, coloured8850]
  rw [child]
  dsimp only [result8849]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8851_agree_conditional : tree8851 = literal8851 := by
  rw [tree8851_def]
  rfl
theorem node8851_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8851 live8851 coloured8851 = result8851 := by
  rw [tree8851_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8852_agree_conditional
    (child0 : tree8850 = literal8850)
    (child1 : tree8851 = literal8851) : tree8852 = literal8852 := by
  rw [tree8852_def, child0, child1]
  rfl
theorem node8852_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8850 live8850 coloured8850 = result8850)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8851 live8851 coloured8851 = result8851) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8852 live8852 coloured8852 = result8852 := by
  rw [tree8852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8850 coloured8850 at child
  try dsimp only [live8852, coloured8852]
  rw [child]
  dsimp only [result8850]
  have child := child1
  unfold live8851 coloured8851 at child
  try dsimp only [live8852, coloured8852]
  rw [child]
  dsimp only [result8851]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8853_agree_conditional : tree8853 = literal8853 := by
  rw [tree8853_def]
  rfl
theorem node8853_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8853 live8853 coloured8853 = result8853 := by
  rw [tree8853_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8854_agree_conditional
    (child0 : tree8852 = literal8852)
    (child1 : tree8853 = literal8853) : tree8854 = literal8854 := by
  rw [tree8854_def, child0, child1]
  rfl
theorem node8854_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8852 live8852 coloured8852 = result8852)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8853 live8853 coloured8853 = result8853) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8854 live8854 coloured8854 = result8854 := by
  rw [tree8854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8852 coloured8852 at child
  try dsimp only [live8854, coloured8854]
  rw [child]
  dsimp only [result8852]
  have child := child1
  unfold live8853 coloured8853 at child
  try dsimp only [live8854, coloured8854]
  rw [child]
  dsimp only [result8853]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8855_agree_conditional : tree8855 = literal8855 := by
  rw [tree8855_def]
  rfl
theorem node8855_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8855 live8855 coloured8855 = result8855 := by
  rw [tree8855_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8856_agree_conditional
    (child0 : tree8854 = literal8854)
    (child1 : tree8855 = literal8855) : tree8856 = literal8856 := by
  rw [tree8856_def, child0, child1]
  rfl
theorem node8856_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8854 live8854 coloured8854 = result8854)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8855 live8855 coloured8855 = result8855) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8856 live8856 coloured8856 = result8856 := by
  rw [tree8856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8854 coloured8854 at child
  try dsimp only [live8856, coloured8856]
  rw [child]
  dsimp only [result8854]
  have child := child1
  unfold live8855 coloured8855 at child
  try dsimp only [live8856, coloured8856]
  rw [child]
  dsimp only [result8855]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8857_agree_conditional : tree8857 = literal8857 := by
  rw [tree8857_def]
  rfl
theorem node8857_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8857 live8857 coloured8857 = result8857 := by
  rw [tree8857_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8858_agree_conditional
    (child0 : tree8856 = literal8856)
    (child1 : tree8857 = literal8857) : tree8858 = literal8858 := by
  rw [tree8858_def, child0, child1]
  rfl
theorem node8858_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8856 live8856 coloured8856 = result8856)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8857 live8857 coloured8857 = result8857) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8858 live8858 coloured8858 = result8858 := by
  rw [tree8858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8856 coloured8856 at child
  try dsimp only [live8858, coloured8858]
  rw [child]
  dsimp only [result8856]
  have child := child1
  unfold live8857 coloured8857 at child
  try dsimp only [live8858, coloured8858]
  rw [child]
  dsimp only [result8857]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8859_agree_conditional : tree8859 = literal8859 := by
  rw [tree8859_def]
  rfl
theorem node8859_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8859 live8859 coloured8859 = result8859 := by
  rw [tree8859_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8860_agree_conditional
    (child0 : tree8858 = literal8858)
    (child1 : tree8859 = literal8859) : tree8860 = literal8860 := by
  rw [tree8860_def, child0, child1]
  rfl
theorem node8860_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8858 live8858 coloured8858 = result8858)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8859 live8859 coloured8859 = result8859) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8860 live8860 coloured8860 = result8860 := by
  rw [tree8860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8858 coloured8858 at child
  try dsimp only [live8860, coloured8860]
  rw [child]
  dsimp only [result8858]
  have child := child1
  unfold live8859 coloured8859 at child
  try dsimp only [live8860, coloured8860]
  rw [child]
  dsimp only [result8859]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8861_agree_conditional : tree8861 = literal8861 := by
  rw [tree8861_def]
  rfl
theorem node8861_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8861 live8861 coloured8861 = result8861 := by
  rw [tree8861_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8862_agree_conditional
    (child0 : tree8860 = literal8860)
    (child1 : tree8861 = literal8861) : tree8862 = literal8862 := by
  rw [tree8862_def, child0, child1]
  rfl
theorem node8862_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8860 live8860 coloured8860 = result8860)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8861 live8861 coloured8861 = result8861) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8862 live8862 coloured8862 = result8862 := by
  rw [tree8862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8860 coloured8860 at child
  try dsimp only [live8862, coloured8862]
  rw [child]
  dsimp only [result8860]
  have child := child1
  unfold live8861 coloured8861 at child
  try dsimp only [live8862, coloured8862]
  rw [child]
  dsimp only [result8861]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8863_agree_conditional : tree8863 = literal8863 := by
  rw [tree8863_def]
  rfl
theorem node8863_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8863 live8863 coloured8863 = result8863 := by
  rw [tree8863_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8864_agree_conditional
    (child0 : tree8862 = literal8862)
    (child1 : tree8863 = literal8863) : tree8864 = literal8864 := by
  rw [tree8864_def, child0, child1]
  rfl
theorem node8864_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8862 live8862 coloured8862 = result8862)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8863 live8863 coloured8863 = result8863) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8864 live8864 coloured8864 = result8864 := by
  rw [tree8864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8862 coloured8862 at child
  try dsimp only [live8864, coloured8864]
  rw [child]
  dsimp only [result8862]
  have child := child1
  unfold live8863 coloured8863 at child
  try dsimp only [live8864, coloured8864]
  rw [child]
  dsimp only [result8863]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8865_agree_conditional : tree8865 = literal8865 := by
  rw [tree8865_def]
  rfl
theorem node8865_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8865 live8865 coloured8865 = result8865 := by
  rw [tree8865_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8866_agree_conditional
    (child0 : tree8864 = literal8864)
    (child1 : tree8865 = literal8865) : tree8866 = literal8866 := by
  rw [tree8866_def, child0, child1]
  rfl
theorem node8866_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8864 live8864 coloured8864 = result8864)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8865 live8865 coloured8865 = result8865) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8866 live8866 coloured8866 = result8866 := by
  rw [tree8866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8864 coloured8864 at child
  try dsimp only [live8866, coloured8866]
  rw [child]
  dsimp only [result8864]
  have child := child1
  unfold live8865 coloured8865 at child
  try dsimp only [live8866, coloured8866]
  rw [child]
  dsimp only [result8865]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8867_agree_conditional : tree8867 = literal8867 := by
  rw [tree8867_def]
  rfl
theorem node8867_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8867 live8867 coloured8867 = result8867 := by
  rw [tree8867_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8868_agree_conditional
    (child0 : tree8866 = literal8866)
    (child1 : tree8867 = literal8867) : tree8868 = literal8868 := by
  rw [tree8868_def, child0, child1]
  rfl
theorem node8868_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8866 live8866 coloured8866 = result8866)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8867 live8867 coloured8867 = result8867) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8868 live8868 coloured8868 = result8868 := by
  rw [tree8868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8866 coloured8866 at child
  try dsimp only [live8868, coloured8868]
  rw [child]
  dsimp only [result8866]
  have child := child1
  unfold live8867 coloured8867 at child
  try dsimp only [live8868, coloured8868]
  rw [child]
  dsimp only [result8867]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8869_agree_conditional : tree8869 = literal8869 := by
  rw [tree8869_def]
  rfl
theorem node8869_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8869 live8869 coloured8869 = result8869 := by
  rw [tree8869_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8870_agree_conditional
    (child0 : tree8868 = literal8868)
    (child1 : tree8869 = literal8869) : tree8870 = literal8870 := by
  rw [tree8870_def, child0, child1]
  rfl
theorem node8870_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8868 live8868 coloured8868 = result8868)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8869 live8869 coloured8869 = result8869) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8870 live8870 coloured8870 = result8870 := by
  rw [tree8870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8868 coloured8868 at child
  try dsimp only [live8870, coloured8870]
  rw [child]
  dsimp only [result8868]
  have child := child1
  unfold live8869 coloured8869 at child
  try dsimp only [live8870, coloured8870]
  rw [child]
  dsimp only [result8869]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8871_agree_conditional : tree8871 = literal8871 := by
  rw [tree8871_def]
  rfl
theorem node8871_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8871 live8871 coloured8871 = result8871 := by
  rw [tree8871_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8872_agree_conditional
    (child0 : tree8870 = literal8870)
    (child1 : tree8871 = literal8871) : tree8872 = literal8872 := by
  rw [tree8872_def, child0, child1]
  rfl
theorem node8872_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8870 live8870 coloured8870 = result8870)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8871 live8871 coloured8871 = result8871) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8872 live8872 coloured8872 = result8872 := by
  rw [tree8872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8870 coloured8870 at child
  try dsimp only [live8872, coloured8872]
  rw [child]
  dsimp only [result8870]
  have child := child1
  unfold live8871 coloured8871 at child
  try dsimp only [live8872, coloured8872]
  rw [child]
  dsimp only [result8871]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8873_agree_conditional : tree8873 = literal8873 := by
  rw [tree8873_def]
  rfl
theorem node8873_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8873 live8873 coloured8873 = result8873 := by
  rw [tree8873_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8874_agree_conditional
    (child0 : tree8872 = literal8872)
    (child1 : tree8873 = literal8873) : tree8874 = literal8874 := by
  rw [tree8874_def, child0, child1]
  rfl
theorem node8874_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8872 live8872 coloured8872 = result8872)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8873 live8873 coloured8873 = result8873) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8874 live8874 coloured8874 = result8874 := by
  rw [tree8874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8872 coloured8872 at child
  try dsimp only [live8874, coloured8874]
  rw [child]
  dsimp only [result8872]
  have child := child1
  unfold live8873 coloured8873 at child
  try dsimp only [live8874, coloured8874]
  rw [child]
  dsimp only [result8873]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8875_agree_conditional : tree8875 = literal8875 := by
  rw [tree8875_def]
  rfl
theorem node8875_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8875 live8875 coloured8875 = result8875 := by
  rw [tree8875_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8876_agree_conditional
    (child0 : tree8874 = literal8874)
    (child1 : tree8875 = literal8875) : tree8876 = literal8876 := by
  rw [tree8876_def, child0, child1]
  rfl
theorem node8876_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8874 live8874 coloured8874 = result8874)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8875 live8875 coloured8875 = result8875) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8876 live8876 coloured8876 = result8876 := by
  rw [tree8876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8874 coloured8874 at child
  try dsimp only [live8876, coloured8876]
  rw [child]
  dsimp only [result8874]
  have child := child1
  unfold live8875 coloured8875 at child
  try dsimp only [live8876, coloured8876]
  rw [child]
  dsimp only [result8875]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8877_agree_conditional : tree8877 = literal8877 := by
  rw [tree8877_def]
  rfl
theorem node8877_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8877 live8877 coloured8877 = result8877 := by
  rw [tree8877_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8878_agree_conditional
    (child0 : tree8876 = literal8876)
    (child1 : tree8877 = literal8877) : tree8878 = literal8878 := by
  rw [tree8878_def, child0, child1]
  rfl
theorem node8878_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8876 live8876 coloured8876 = result8876)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8877 live8877 coloured8877 = result8877) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8878 live8878 coloured8878 = result8878 := by
  rw [tree8878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8876 coloured8876 at child
  try dsimp only [live8878, coloured8878]
  rw [child]
  dsimp only [result8876]
  have child := child1
  unfold live8877 coloured8877 at child
  try dsimp only [live8878, coloured8878]
  rw [child]
  dsimp only [result8877]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8879_agree_conditional : tree8879 = literal8879 := by
  rw [tree8879_def]
  rfl
theorem node8879_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8879 live8879 coloured8879 = result8879 := by
  rw [tree8879_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8880_agree_conditional
    (child0 : tree8878 = literal8878)
    (child1 : tree8879 = literal8879) : tree8880 = literal8880 := by
  rw [tree8880_def, child0, child1]
  rfl
theorem node8880_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8878 live8878 coloured8878 = result8878)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8879 live8879 coloured8879 = result8879) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8880 live8880 coloured8880 = result8880 := by
  rw [tree8880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8878 coloured8878 at child
  try dsimp only [live8880, coloured8880]
  rw [child]
  dsimp only [result8878]
  have child := child1
  unfold live8879 coloured8879 at child
  try dsimp only [live8880, coloured8880]
  rw [child]
  dsimp only [result8879]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8881_agree_conditional : tree8881 = literal8881 := by
  rw [tree8881_def]
  rfl
theorem node8881_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8881 live8881 coloured8881 = result8881 := by
  rw [tree8881_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8882_agree_conditional
    (child0 : tree8880 = literal8880)
    (child1 : tree8881 = literal8881) : tree8882 = literal8882 := by
  rw [tree8882_def, child0, child1]
  rfl
theorem node8882_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8880 live8880 coloured8880 = result8880)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8881 live8881 coloured8881 = result8881) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8882 live8882 coloured8882 = result8882 := by
  rw [tree8882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8880 coloured8880 at child
  try dsimp only [live8882, coloured8882]
  rw [child]
  dsimp only [result8880]
  have child := child1
  unfold live8881 coloured8881 at child
  try dsimp only [live8882, coloured8882]
  rw [child]
  dsimp only [result8881]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8883_agree_conditional : tree8883 = literal8883 := by
  rw [tree8883_def]
  rfl
theorem node8883_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8883 live8883 coloured8883 = result8883 := by
  rw [tree8883_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8884_agree_conditional
    (child0 : tree8882 = literal8882)
    (child1 : tree8883 = literal8883) : tree8884 = literal8884 := by
  rw [tree8884_def, child0, child1]
  rfl
theorem node8884_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8882 live8882 coloured8882 = result8882)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8883 live8883 coloured8883 = result8883) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8884 live8884 coloured8884 = result8884 := by
  rw [tree8884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8882 coloured8882 at child
  try dsimp only [live8884, coloured8884]
  rw [child]
  dsimp only [result8882]
  have child := child1
  unfold live8883 coloured8883 at child
  try dsimp only [live8884, coloured8884]
  rw [child]
  dsimp only [result8883]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8885_agree_conditional : tree8885 = literal8885 := by
  rw [tree8885_def]
  rfl
theorem node8885_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8885 live8885 coloured8885 = result8885 := by
  rw [tree8885_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8886_agree_conditional
    (child0 : tree8884 = literal8884)
    (child1 : tree8885 = literal8885) : tree8886 = literal8886 := by
  rw [tree8886_def, child0, child1]
  rfl
theorem node8886_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8884 live8884 coloured8884 = result8884)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8885 live8885 coloured8885 = result8885) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8886 live8886 coloured8886 = result8886 := by
  rw [tree8886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8884 coloured8884 at child
  try dsimp only [live8886, coloured8886]
  rw [child]
  dsimp only [result8884]
  have child := child1
  unfold live8885 coloured8885 at child
  try dsimp only [live8886, coloured8886]
  rw [child]
  dsimp only [result8885]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8887_agree_conditional : tree8887 = literal8887 := by
  rw [tree8887_def]
  rfl
theorem node8887_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8887 live8887 coloured8887 = result8887 := by
  rw [tree8887_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8888_agree_conditional
    (child0 : tree8886 = literal8886)
    (child1 : tree8887 = literal8887) : tree8888 = literal8888 := by
  rw [tree8888_def, child0, child1]
  rfl
theorem node8888_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8886 live8886 coloured8886 = result8886)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8887 live8887 coloured8887 = result8887) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8888 live8888 coloured8888 = result8888 := by
  rw [tree8888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8886 coloured8886 at child
  try dsimp only [live8888, coloured8888]
  rw [child]
  dsimp only [result8886]
  have child := child1
  unfold live8887 coloured8887 at child
  try dsimp only [live8888, coloured8888]
  rw [child]
  dsimp only [result8887]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8889_agree_conditional : tree8889 = literal8889 := by
  rw [tree8889_def]
  rfl
theorem node8889_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8889 live8889 coloured8889 = result8889 := by
  rw [tree8889_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8890_agree_conditional
    (child0 : tree8888 = literal8888)
    (child1 : tree8889 = literal8889) : tree8890 = literal8890 := by
  rw [tree8890_def, child0, child1]
  rfl
theorem node8890_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8888 live8888 coloured8888 = result8888)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8889 live8889 coloured8889 = result8889) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8890 live8890 coloured8890 = result8890 := by
  rw [tree8890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8888 coloured8888 at child
  try dsimp only [live8890, coloured8890]
  rw [child]
  dsimp only [result8888]
  have child := child1
  unfold live8889 coloured8889 at child
  try dsimp only [live8890, coloured8890]
  rw [child]
  dsimp only [result8889]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8891_agree_conditional : tree8891 = literal8891 := by
  rw [tree8891_def]
  rfl
theorem node8891_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8891 live8891 coloured8891 = result8891 := by
  rw [tree8891_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8892_agree_conditional
    (child0 : tree8890 = literal8890)
    (child1 : tree8891 = literal8891) : tree8892 = literal8892 := by
  rw [tree8892_def, child0, child1]
  rfl
theorem node8892_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8890 live8890 coloured8890 = result8890)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8891 live8891 coloured8891 = result8891) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8892 live8892 coloured8892 = result8892 := by
  rw [tree8892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8890 coloured8890 at child
  try dsimp only [live8892, coloured8892]
  rw [child]
  dsimp only [result8890]
  have child := child1
  unfold live8891 coloured8891 at child
  try dsimp only [live8892, coloured8892]
  rw [child]
  dsimp only [result8891]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8893_agree_conditional : tree8893 = literal8893 := by
  rw [tree8893_def]
  rfl
theorem node8893_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8893 live8893 coloured8893 = result8893 := by
  rw [tree8893_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8894_agree_conditional
    (child0 : tree8892 = literal8892)
    (child1 : tree8893 = literal8893) : tree8894 = literal8894 := by
  rw [tree8894_def, child0, child1]
  rfl
theorem node8894_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8892 live8892 coloured8892 = result8892)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8893 live8893 coloured8893 = result8893) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8894 live8894 coloured8894 = result8894 := by
  rw [tree8894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8892 coloured8892 at child
  try dsimp only [live8894, coloured8894]
  rw [child]
  dsimp only [result8892]
  have child := child1
  unfold live8893 coloured8893 at child
  try dsimp only [live8894, coloured8894]
  rw [child]
  dsimp only [result8893]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8895_agree_conditional : tree8895 = literal8895 := by
  rw [tree8895_def]
  rfl
theorem node8895_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8895 live8895 coloured8895 = result8895 := by
  rw [tree8895_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8896_agree_conditional
    (child0 : tree8894 = literal8894)
    (child1 : tree8895 = literal8895) : tree8896 = literal8896 := by
  rw [tree8896_def, child0, child1]
  rfl
theorem node8896_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8894 live8894 coloured8894 = result8894)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8895 live8895 coloured8895 = result8895) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8896 live8896 coloured8896 = result8896 := by
  rw [tree8896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8894 coloured8894 at child
  try dsimp only [live8896, coloured8896]
  rw [child]
  dsimp only [result8894]
  have child := child1
  unfold live8895 coloured8895 at child
  try dsimp only [live8896, coloured8896]
  rw [child]
  dsimp only [result8895]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8897_agree_conditional : tree8897 = literal8897 := by
  rw [tree8897_def]
  rfl
theorem node8897_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8897 live8897 coloured8897 = result8897 := by
  rw [tree8897_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8898_agree_conditional
    (child0 : tree8896 = literal8896)
    (child1 : tree8897 = literal8897) : tree8898 = literal8898 := by
  rw [tree8898_def, child0, child1]
  rfl
theorem node8898_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8896 live8896 coloured8896 = result8896)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8897 live8897 coloured8897 = result8897) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8898 live8898 coloured8898 = result8898 := by
  rw [tree8898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8896 coloured8896 at child
  try dsimp only [live8898, coloured8898]
  rw [child]
  dsimp only [result8896]
  have child := child1
  unfold live8897 coloured8897 at child
  try dsimp only [live8898, coloured8898]
  rw [child]
  dsimp only [result8897]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8899_agree_conditional : tree8899 = literal8899 := by
  rw [tree8899_def]
  rfl
theorem node8899_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8899 live8899 coloured8899 = result8899 := by
  rw [tree8899_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8900_agree_conditional
    (child0 : tree8898 = literal8898)
    (child1 : tree8899 = literal8899) : tree8900 = literal8900 := by
  rw [tree8900_def, child0, child1]
  rfl
theorem node8900_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8898 live8898 coloured8898 = result8898)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8899 live8899 coloured8899 = result8899) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8900 live8900 coloured8900 = result8900 := by
  rw [tree8900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8898 coloured8898 at child
  try dsimp only [live8900, coloured8900]
  rw [child]
  dsimp only [result8898]
  have child := child1
  unfold live8899 coloured8899 at child
  try dsimp only [live8900, coloured8900]
  rw [child]
  dsimp only [result8899]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8901_agree_conditional : tree8901 = literal8901 := by
  rw [tree8901_def]
  rfl
theorem node8901_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8901 live8901 coloured8901 = result8901 := by
  rw [tree8901_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8902_agree_conditional
    (child0 : tree8900 = literal8900)
    (child1 : tree8901 = literal8901) : tree8902 = literal8902 := by
  rw [tree8902_def, child0, child1]
  rfl
theorem node8902_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8900 live8900 coloured8900 = result8900)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8901 live8901 coloured8901 = result8901) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8902 live8902 coloured8902 = result8902 := by
  rw [tree8902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8900 coloured8900 at child
  try dsimp only [live8902, coloured8902]
  rw [child]
  dsimp only [result8900]
  have child := child1
  unfold live8901 coloured8901 at child
  try dsimp only [live8902, coloured8902]
  rw [child]
  dsimp only [result8901]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8903_agree_conditional : tree8903 = literal8903 := by
  rw [tree8903_def]
  rfl
theorem node8903_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8903 live8903 coloured8903 = result8903 := by
  rw [tree8903_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8904_agree_conditional
    (child0 : tree8902 = literal8902)
    (child1 : tree8903 = literal8903) : tree8904 = literal8904 := by
  rw [tree8904_def, child0, child1]
  rfl
theorem node8904_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8902 live8902 coloured8902 = result8902)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8903 live8903 coloured8903 = result8903) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8904 live8904 coloured8904 = result8904 := by
  rw [tree8904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8902 coloured8902 at child
  try dsimp only [live8904, coloured8904]
  rw [child]
  dsimp only [result8902]
  have child := child1
  unfold live8903 coloured8903 at child
  try dsimp only [live8904, coloured8904]
  rw [child]
  dsimp only [result8903]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8905_agree_conditional : tree8905 = literal8905 := by
  rw [tree8905_def]
  rfl
theorem node8905_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8905 live8905 coloured8905 = result8905 := by
  rw [tree8905_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8906_agree_conditional
    (child0 : tree8904 = literal8904)
    (child1 : tree8905 = literal8905) : tree8906 = literal8906 := by
  rw [tree8906_def, child0, child1]
  rfl
theorem node8906_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8904 live8904 coloured8904 = result8904)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8905 live8905 coloured8905 = result8905) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8906 live8906 coloured8906 = result8906 := by
  rw [tree8906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8904 coloured8904 at child
  try dsimp only [live8906, coloured8906]
  rw [child]
  dsimp only [result8904]
  have child := child1
  unfold live8905 coloured8905 at child
  try dsimp only [live8906, coloured8906]
  rw [child]
  dsimp only [result8905]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8907_agree_conditional : tree8907 = literal8907 := by
  rw [tree8907_def]
  rfl
theorem node8907_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8907 live8907 coloured8907 = result8907 := by
  rw [tree8907_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8908_agree_conditional
    (child0 : tree8906 = literal8906)
    (child1 : tree8907 = literal8907) : tree8908 = literal8908 := by
  rw [tree8908_def, child0, child1]
  rfl
theorem node8908_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8906 live8906 coloured8906 = result8906)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8907 live8907 coloured8907 = result8907) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8908 live8908 coloured8908 = result8908 := by
  rw [tree8908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8906 coloured8906 at child
  try dsimp only [live8908, coloured8908]
  rw [child]
  dsimp only [result8906]
  have child := child1
  unfold live8907 coloured8907 at child
  try dsimp only [live8908, coloured8908]
  rw [child]
  dsimp only [result8907]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8909_agree_conditional : tree8909 = literal8909 := by
  rw [tree8909_def]
  rfl
theorem node8909_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8909 live8909 coloured8909 = result8909 := by
  rw [tree8909_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8910_agree_conditional
    (child0 : tree8908 = literal8908)
    (child1 : tree8909 = literal8909) : tree8910 = literal8910 := by
  rw [tree8910_def, child0, child1]
  rfl
theorem node8910_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8908 live8908 coloured8908 = result8908)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8909 live8909 coloured8909 = result8909) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8910 live8910 coloured8910 = result8910 := by
  rw [tree8910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8908 coloured8908 at child
  try dsimp only [live8910, coloured8910]
  rw [child]
  dsimp only [result8908]
  have child := child1
  unfold live8909 coloured8909 at child
  try dsimp only [live8910, coloured8910]
  rw [child]
  dsimp only [result8909]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8911_agree_conditional : tree8911 = literal8911 := by
  rw [tree8911_def]
  rfl
theorem node8911_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8911 live8911 coloured8911 = result8911 := by
  rw [tree8911_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8912_agree_conditional
    (child0 : tree8910 = literal8910)
    (child1 : tree8911 = literal8911) : tree8912 = literal8912 := by
  rw [tree8912_def, child0, child1]
  rfl
theorem node8912_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8910 live8910 coloured8910 = result8910)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8911 live8911 coloured8911 = result8911) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8912 live8912 coloured8912 = result8912 := by
  rw [tree8912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8910 coloured8910 at child
  try dsimp only [live8912, coloured8912]
  rw [child]
  dsimp only [result8910]
  have child := child1
  unfold live8911 coloured8911 at child
  try dsimp only [live8912, coloured8912]
  rw [child]
  dsimp only [result8911]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8913_agree_conditional : tree8913 = literal8913 := by
  rw [tree8913_def]
  rfl
theorem node8913_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8913 live8913 coloured8913 = result8913 := by
  rw [tree8913_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8914_agree_conditional
    (child0 : tree8912 = literal8912)
    (child1 : tree8913 = literal8913) : tree8914 = literal8914 := by
  rw [tree8914_def, child0, child1]
  rfl
theorem node8914_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8912 live8912 coloured8912 = result8912)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8913 live8913 coloured8913 = result8913) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8914 live8914 coloured8914 = result8914 := by
  rw [tree8914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8912 coloured8912 at child
  try dsimp only [live8914, coloured8914]
  rw [child]
  dsimp only [result8912]
  have child := child1
  unfold live8913 coloured8913 at child
  try dsimp only [live8914, coloured8914]
  rw [child]
  dsimp only [result8913]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8915_agree_conditional : tree8915 = literal8915 := by
  rw [tree8915_def]
  rfl
theorem node8915_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8915 live8915 coloured8915 = result8915 := by
  rw [tree8915_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8916_agree_conditional
    (child0 : tree8914 = literal8914)
    (child1 : tree8915 = literal8915) : tree8916 = literal8916 := by
  rw [tree8916_def, child0, child1]
  rfl
theorem node8916_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8914 live8914 coloured8914 = result8914)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8915 live8915 coloured8915 = result8915) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8916 live8916 coloured8916 = result8916 := by
  rw [tree8916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8914 coloured8914 at child
  try dsimp only [live8916, coloured8916]
  rw [child]
  dsimp only [result8914]
  have child := child1
  unfold live8915 coloured8915 at child
  try dsimp only [live8916, coloured8916]
  rw [child]
  dsimp only [result8915]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8917_agree_conditional : tree8917 = literal8917 := by
  rw [tree8917_def]
  rfl
theorem node8917_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8917 live8917 coloured8917 = result8917 := by
  rw [tree8917_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8918_agree_conditional
    (child0 : tree8916 = literal8916)
    (child1 : tree8917 = literal8917) : tree8918 = literal8918 := by
  rw [tree8918_def, child0, child1]
  rfl
theorem node8918_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8916 live8916 coloured8916 = result8916)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8917 live8917 coloured8917 = result8917) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8918 live8918 coloured8918 = result8918 := by
  rw [tree8918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8916 coloured8916 at child
  try dsimp only [live8918, coloured8918]
  rw [child]
  dsimp only [result8916]
  have child := child1
  unfold live8917 coloured8917 at child
  try dsimp only [live8918, coloured8918]
  rw [child]
  dsimp only [result8917]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8919_agree_conditional : tree8919 = literal8919 := by
  rw [tree8919_def]
  rfl
theorem node8919_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8919 live8919 coloured8919 = result8919 := by
  rw [tree8919_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8920_agree_conditional
    (child0 : tree8918 = literal8918)
    (child1 : tree8919 = literal8919) : tree8920 = literal8920 := by
  rw [tree8920_def, child0, child1]
  rfl
theorem node8920_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8918 live8918 coloured8918 = result8918)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8919 live8919 coloured8919 = result8919) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8920 live8920 coloured8920 = result8920 := by
  rw [tree8920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8918 coloured8918 at child
  try dsimp only [live8920, coloured8920]
  rw [child]
  dsimp only [result8918]
  have child := child1
  unfold live8919 coloured8919 at child
  try dsimp only [live8920, coloured8920]
  rw [child]
  dsimp only [result8919]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8921_agree_conditional : tree8921 = literal8921 := by
  rw [tree8921_def]
  rfl
theorem node8921_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8921 live8921 coloured8921 = result8921 := by
  rw [tree8921_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8922_agree_conditional
    (child0 : tree8920 = literal8920)
    (child1 : tree8921 = literal8921) : tree8922 = literal8922 := by
  rw [tree8922_def, child0, child1]
  rfl
theorem node8922_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8920 live8920 coloured8920 = result8920)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8921 live8921 coloured8921 = result8921) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8922 live8922 coloured8922 = result8922 := by
  rw [tree8922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8920 coloured8920 at child
  try dsimp only [live8922, coloured8922]
  rw [child]
  dsimp only [result8920]
  have child := child1
  unfold live8921 coloured8921 at child
  try dsimp only [live8922, coloured8922]
  rw [child]
  dsimp only [result8921]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8923_agree_conditional : tree8923 = literal8923 := by
  rw [tree8923_def]
  rfl
theorem node8923_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8923 live8923 coloured8923 = result8923 := by
  rw [tree8923_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8924_agree_conditional
    (child0 : tree8922 = literal8922)
    (child1 : tree8923 = literal8923) : tree8924 = literal8924 := by
  rw [tree8924_def, child0, child1]
  rfl
theorem node8924_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8922 live8922 coloured8922 = result8922)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8923 live8923 coloured8923 = result8923) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8924 live8924 coloured8924 = result8924 := by
  rw [tree8924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8922 coloured8922 at child
  try dsimp only [live8924, coloured8924]
  rw [child]
  dsimp only [result8922]
  have child := child1
  unfold live8923 coloured8923 at child
  try dsimp only [live8924, coloured8924]
  rw [child]
  dsimp only [result8923]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8925_agree_conditional : tree8925 = literal8925 := by
  rw [tree8925_def]
  rfl
theorem node8925_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8925 live8925 coloured8925 = result8925 := by
  rw [tree8925_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8926_agree_conditional
    (child0 : tree8924 = literal8924)
    (child1 : tree8925 = literal8925) : tree8926 = literal8926 := by
  rw [tree8926_def, child0, child1]
  rfl
theorem node8926_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8924 live8924 coloured8924 = result8924)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8925 live8925 coloured8925 = result8925) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8926 live8926 coloured8926 = result8926 := by
  rw [tree8926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8924 coloured8924 at child
  try dsimp only [live8926, coloured8926]
  rw [child]
  dsimp only [result8924]
  have child := child1
  unfold live8925 coloured8925 at child
  try dsimp only [live8926, coloured8926]
  rw [child]
  dsimp only [result8925]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8927_agree_conditional : tree8927 = literal8927 := by
  rw [tree8927_def]
  rfl
theorem node8927_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8927 live8927 coloured8927 = result8927 := by
  rw [tree8927_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
