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
theorem tree9888_agree_conditional
    (child0 : tree9886 = literal9886)
    (child1 : tree9887 = literal9887) : tree9888 = literal9888 := by
  rw [tree9888_def, child0, child1]
  rfl
theorem node9888_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9886 live9886 coloured9886 = result9886)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9887 live9887 coloured9887 = result9887) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9888 live9888 coloured9888 = result9888 := by
  rw [tree9888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9886 coloured9886 at child
  try dsimp only [live9888, coloured9888]
  rw [child]
  dsimp only [result9886]
  have child := child1
  unfold live9887 coloured9887 at child
  try dsimp only [live9888, coloured9888]
  rw [child]
  dsimp only [result9887]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9889_agree_conditional : tree9889 = literal9889 := by
  rw [tree9889_def]
  rfl
theorem node9889_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9889 live9889 coloured9889 = result9889 := by
  rw [tree9889_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9890_agree_conditional
    (child0 : tree9888 = literal9888)
    (child1 : tree9889 = literal9889) : tree9890 = literal9890 := by
  rw [tree9890_def, child0, child1]
  rfl
theorem node9890_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9888 live9888 coloured9888 = result9888)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9889 live9889 coloured9889 = result9889) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9890 live9890 coloured9890 = result9890 := by
  rw [tree9890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9888 coloured9888 at child
  try dsimp only [live9890, coloured9890]
  rw [child]
  dsimp only [result9888]
  have child := child1
  unfold live9889 coloured9889 at child
  try dsimp only [live9890, coloured9890]
  rw [child]
  dsimp only [result9889]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9891_agree_conditional : tree9891 = literal9891 := by
  rw [tree9891_def]
  rfl
theorem node9891_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9891 live9891 coloured9891 = result9891 := by
  rw [tree9891_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9892_agree_conditional
    (child0 : tree9890 = literal9890)
    (child1 : tree9891 = literal9891) : tree9892 = literal9892 := by
  rw [tree9892_def, child0, child1]
  rfl
theorem node9892_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9890 live9890 coloured9890 = result9890)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9891 live9891 coloured9891 = result9891) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9892 live9892 coloured9892 = result9892 := by
  rw [tree9892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9890 coloured9890 at child
  try dsimp only [live9892, coloured9892]
  rw [child]
  dsimp only [result9890]
  have child := child1
  unfold live9891 coloured9891 at child
  try dsimp only [live9892, coloured9892]
  rw [child]
  dsimp only [result9891]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9893_agree_conditional : tree9893 = literal9893 := by
  rw [tree9893_def]
  rfl
theorem node9893_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9893 live9893 coloured9893 = result9893 := by
  rw [tree9893_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9894_agree_conditional
    (child0 : tree9892 = literal9892)
    (child1 : tree9893 = literal9893) : tree9894 = literal9894 := by
  rw [tree9894_def, child0, child1]
  rfl
theorem node9894_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9892 live9892 coloured9892 = result9892)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9893 live9893 coloured9893 = result9893) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9894 live9894 coloured9894 = result9894 := by
  rw [tree9894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9892 coloured9892 at child
  try dsimp only [live9894, coloured9894]
  rw [child]
  dsimp only [result9892]
  have child := child1
  unfold live9893 coloured9893 at child
  try dsimp only [live9894, coloured9894]
  rw [child]
  dsimp only [result9893]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9895_agree_conditional : tree9895 = literal9895 := by
  rw [tree9895_def]
  rfl
theorem node9895_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9895 live9895 coloured9895 = result9895 := by
  rw [tree9895_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9896_agree_conditional
    (child0 : tree9894 = literal9894)
    (child1 : tree9895 = literal9895) : tree9896 = literal9896 := by
  rw [tree9896_def, child0, child1]
  rfl
theorem node9896_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9894 live9894 coloured9894 = result9894)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9895 live9895 coloured9895 = result9895) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9896 live9896 coloured9896 = result9896 := by
  rw [tree9896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9894 coloured9894 at child
  try dsimp only [live9896, coloured9896]
  rw [child]
  dsimp only [result9894]
  have child := child1
  unfold live9895 coloured9895 at child
  try dsimp only [live9896, coloured9896]
  rw [child]
  dsimp only [result9895]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9897_agree_conditional : tree9897 = literal9897 := by
  rw [tree9897_def]
  rfl
theorem node9897_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9897 live9897 coloured9897 = result9897 := by
  rw [tree9897_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9898_agree_conditional
    (child0 : tree9896 = literal9896)
    (child1 : tree9897 = literal9897) : tree9898 = literal9898 := by
  rw [tree9898_def, child0, child1]
  rfl
theorem node9898_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9896 live9896 coloured9896 = result9896)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9897 live9897 coloured9897 = result9897) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9898 live9898 coloured9898 = result9898 := by
  rw [tree9898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9896 coloured9896 at child
  try dsimp only [live9898, coloured9898]
  rw [child]
  dsimp only [result9896]
  have child := child1
  unfold live9897 coloured9897 at child
  try dsimp only [live9898, coloured9898]
  rw [child]
  dsimp only [result9897]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9899_agree_conditional : tree9899 = literal9899 := by
  rw [tree9899_def]
  rfl
theorem node9899_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9899 live9899 coloured9899 = result9899 := by
  rw [tree9899_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9900_agree_conditional
    (child0 : tree9898 = literal9898)
    (child1 : tree9899 = literal9899) : tree9900 = literal9900 := by
  rw [tree9900_def, child0, child1]
  rfl
theorem node9900_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9898 live9898 coloured9898 = result9898)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9899 live9899 coloured9899 = result9899) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9900 live9900 coloured9900 = result9900 := by
  rw [tree9900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9898 coloured9898 at child
  try dsimp only [live9900, coloured9900]
  rw [child]
  dsimp only [result9898]
  have child := child1
  unfold live9899 coloured9899 at child
  try dsimp only [live9900, coloured9900]
  rw [child]
  dsimp only [result9899]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9901_agree_conditional : tree9901 = literal9901 := by
  rw [tree9901_def]
  rfl
theorem node9901_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9901 live9901 coloured9901 = result9901 := by
  rw [tree9901_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9902_agree_conditional
    (child0 : tree9900 = literal9900)
    (child1 : tree9901 = literal9901) : tree9902 = literal9902 := by
  rw [tree9902_def, child0, child1]
  rfl
theorem node9902_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9900 live9900 coloured9900 = result9900)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9901 live9901 coloured9901 = result9901) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9902 live9902 coloured9902 = result9902 := by
  rw [tree9902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9900 coloured9900 at child
  try dsimp only [live9902, coloured9902]
  rw [child]
  dsimp only [result9900]
  have child := child1
  unfold live9901 coloured9901 at child
  try dsimp only [live9902, coloured9902]
  rw [child]
  dsimp only [result9901]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9903_agree_conditional : tree9903 = literal9903 := by
  rw [tree9903_def]
  rfl
theorem node9903_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9903 live9903 coloured9903 = result9903 := by
  rw [tree9903_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9904_agree_conditional
    (child0 : tree9902 = literal9902)
    (child1 : tree9903 = literal9903) : tree9904 = literal9904 := by
  rw [tree9904_def, child0, child1]
  rfl
theorem node9904_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9902 live9902 coloured9902 = result9902)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9903 live9903 coloured9903 = result9903) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9904 live9904 coloured9904 = result9904 := by
  rw [tree9904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9902 coloured9902 at child
  try dsimp only [live9904, coloured9904]
  rw [child]
  dsimp only [result9902]
  have child := child1
  unfold live9903 coloured9903 at child
  try dsimp only [live9904, coloured9904]
  rw [child]
  dsimp only [result9903]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9905_agree_conditional : tree9905 = literal9905 := by
  rw [tree9905_def]
  rfl
theorem node9905_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9905 live9905 coloured9905 = result9905 := by
  rw [tree9905_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9906_agree_conditional
    (child0 : tree9904 = literal9904)
    (child1 : tree9905 = literal9905) : tree9906 = literal9906 := by
  rw [tree9906_def, child0, child1]
  rfl
theorem node9906_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9904 live9904 coloured9904 = result9904)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9905 live9905 coloured9905 = result9905) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9906 live9906 coloured9906 = result9906 := by
  rw [tree9906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9904 coloured9904 at child
  try dsimp only [live9906, coloured9906]
  rw [child]
  dsimp only [result9904]
  have child := child1
  unfold live9905 coloured9905 at child
  try dsimp only [live9906, coloured9906]
  rw [child]
  dsimp only [result9905]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9907_agree_conditional : tree9907 = literal9907 := by
  rw [tree9907_def]
  rfl
theorem node9907_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9907 live9907 coloured9907 = result9907 := by
  rw [tree9907_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9908_agree_conditional
    (child0 : tree9906 = literal9906)
    (child1 : tree9907 = literal9907) : tree9908 = literal9908 := by
  rw [tree9908_def, child0, child1]
  rfl
theorem node9908_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9906 live9906 coloured9906 = result9906)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9907 live9907 coloured9907 = result9907) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9908 live9908 coloured9908 = result9908 := by
  rw [tree9908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9906 coloured9906 at child
  try dsimp only [live9908, coloured9908]
  rw [child]
  dsimp only [result9906]
  have child := child1
  unfold live9907 coloured9907 at child
  try dsimp only [live9908, coloured9908]
  rw [child]
  dsimp only [result9907]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9909_agree_conditional : tree9909 = literal9909 := by
  rw [tree9909_def]
  rfl
theorem node9909_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9909 live9909 coloured9909 = result9909 := by
  rw [tree9909_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9910_agree_conditional
    (child0 : tree9908 = literal9908)
    (child1 : tree9909 = literal9909) : tree9910 = literal9910 := by
  rw [tree9910_def, child0, child1]
  rfl
theorem node9910_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9908 live9908 coloured9908 = result9908)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9909 live9909 coloured9909 = result9909) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9910 live9910 coloured9910 = result9910 := by
  rw [tree9910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9908 coloured9908 at child
  try dsimp only [live9910, coloured9910]
  rw [child]
  dsimp only [result9908]
  have child := child1
  unfold live9909 coloured9909 at child
  try dsimp only [live9910, coloured9910]
  rw [child]
  dsimp only [result9909]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9911_agree_conditional : tree9911 = literal9911 := by
  rw [tree9911_def]
  rfl
theorem node9911_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9911 live9911 coloured9911 = result9911 := by
  rw [tree9911_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9912_agree_conditional
    (child0 : tree9910 = literal9910)
    (child1 : tree9911 = literal9911) : tree9912 = literal9912 := by
  rw [tree9912_def, child0, child1]
  rfl
theorem node9912_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9910 live9910 coloured9910 = result9910)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9911 live9911 coloured9911 = result9911) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9912 live9912 coloured9912 = result9912 := by
  rw [tree9912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9910 coloured9910 at child
  try dsimp only [live9912, coloured9912]
  rw [child]
  dsimp only [result9910]
  have child := child1
  unfold live9911 coloured9911 at child
  try dsimp only [live9912, coloured9912]
  rw [child]
  dsimp only [result9911]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9913_agree_conditional : tree9913 = literal9913 := by
  rw [tree9913_def]
  rfl
theorem node9913_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9913 live9913 coloured9913 = result9913 := by
  rw [tree9913_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9914_agree_conditional
    (child0 : tree9912 = literal9912)
    (child1 : tree9913 = literal9913) : tree9914 = literal9914 := by
  rw [tree9914_def, child0, child1]
  rfl
theorem node9914_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9912 live9912 coloured9912 = result9912)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9913 live9913 coloured9913 = result9913) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9914 live9914 coloured9914 = result9914 := by
  rw [tree9914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9912 coloured9912 at child
  try dsimp only [live9914, coloured9914]
  rw [child]
  dsimp only [result9912]
  have child := child1
  unfold live9913 coloured9913 at child
  try dsimp only [live9914, coloured9914]
  rw [child]
  dsimp only [result9913]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9915_agree_conditional : tree9915 = literal9915 := by
  rw [tree9915_def]
  rfl
theorem node9915_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9915 live9915 coloured9915 = result9915 := by
  rw [tree9915_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9916_agree_conditional
    (child0 : tree9914 = literal9914)
    (child1 : tree9915 = literal9915) : tree9916 = literal9916 := by
  rw [tree9916_def, child0, child1]
  rfl
theorem node9916_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9914 live9914 coloured9914 = result9914)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9915 live9915 coloured9915 = result9915) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9916 live9916 coloured9916 = result9916 := by
  rw [tree9916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9914 coloured9914 at child
  try dsimp only [live9916, coloured9916]
  rw [child]
  dsimp only [result9914]
  have child := child1
  unfold live9915 coloured9915 at child
  try dsimp only [live9916, coloured9916]
  rw [child]
  dsimp only [result9915]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9917_agree_conditional : tree9917 = literal9917 := by
  rw [tree9917_def]
  rfl
theorem node9917_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9917 live9917 coloured9917 = result9917 := by
  rw [tree9917_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9918_agree_conditional
    (child0 : tree9916 = literal9916)
    (child1 : tree9917 = literal9917) : tree9918 = literal9918 := by
  rw [tree9918_def, child0, child1]
  rfl
theorem node9918_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9916 live9916 coloured9916 = result9916)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9917 live9917 coloured9917 = result9917) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9918 live9918 coloured9918 = result9918 := by
  rw [tree9918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9916 coloured9916 at child
  try dsimp only [live9918, coloured9918]
  rw [child]
  dsimp only [result9916]
  have child := child1
  unfold live9917 coloured9917 at child
  try dsimp only [live9918, coloured9918]
  rw [child]
  dsimp only [result9917]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9919_agree_conditional : tree9919 = literal9919 := by
  rw [tree9919_def]
  rfl
theorem node9919_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9919 live9919 coloured9919 = result9919 := by
  rw [tree9919_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9920_agree_conditional
    (child0 : tree9918 = literal9918)
    (child1 : tree9919 = literal9919) : tree9920 = literal9920 := by
  rw [tree9920_def, child0, child1]
  rfl
theorem node9920_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9918 live9918 coloured9918 = result9918)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9919 live9919 coloured9919 = result9919) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9920 live9920 coloured9920 = result9920 := by
  rw [tree9920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9918 coloured9918 at child
  try dsimp only [live9920, coloured9920]
  rw [child]
  dsimp only [result9918]
  have child := child1
  unfold live9919 coloured9919 at child
  try dsimp only [live9920, coloured9920]
  rw [child]
  dsimp only [result9919]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9921_agree_conditional : tree9921 = literal9921 := by
  rw [tree9921_def]
  rfl
theorem node9921_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9921 live9921 coloured9921 = result9921 := by
  rw [tree9921_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9922_agree_conditional
    (child0 : tree9920 = literal9920)
    (child1 : tree9921 = literal9921) : tree9922 = literal9922 := by
  rw [tree9922_def, child0, child1]
  rfl
theorem node9922_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9920 live9920 coloured9920 = result9920)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9921 live9921 coloured9921 = result9921) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9922 live9922 coloured9922 = result9922 := by
  rw [tree9922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9920 coloured9920 at child
  try dsimp only [live9922, coloured9922]
  rw [child]
  dsimp only [result9920]
  have child := child1
  unfold live9921 coloured9921 at child
  try dsimp only [live9922, coloured9922]
  rw [child]
  dsimp only [result9921]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9923_agree_conditional : tree9923 = literal9923 := by
  rw [tree9923_def]
  rfl
theorem node9923_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9923 live9923 coloured9923 = result9923 := by
  rw [tree9923_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9924_agree_conditional
    (child0 : tree9922 = literal9922)
    (child1 : tree9923 = literal9923) : tree9924 = literal9924 := by
  rw [tree9924_def, child0, child1]
  rfl
theorem node9924_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9922 live9922 coloured9922 = result9922)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9923 live9923 coloured9923 = result9923) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9924 live9924 coloured9924 = result9924 := by
  rw [tree9924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9922 coloured9922 at child
  try dsimp only [live9924, coloured9924]
  rw [child]
  dsimp only [result9922]
  have child := child1
  unfold live9923 coloured9923 at child
  try dsimp only [live9924, coloured9924]
  rw [child]
  dsimp only [result9923]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9925_agree_conditional : tree9925 = literal9925 := by
  rw [tree9925_def]
  rfl
theorem node9925_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9925 live9925 coloured9925 = result9925 := by
  rw [tree9925_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9926_agree_conditional
    (child0 : tree9924 = literal9924)
    (child1 : tree9925 = literal9925) : tree9926 = literal9926 := by
  rw [tree9926_def, child0, child1]
  rfl
theorem node9926_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9924 live9924 coloured9924 = result9924)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9925 live9925 coloured9925 = result9925) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9926 live9926 coloured9926 = result9926 := by
  rw [tree9926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9924 coloured9924 at child
  try dsimp only [live9926, coloured9926]
  rw [child]
  dsimp only [result9924]
  have child := child1
  unfold live9925 coloured9925 at child
  try dsimp only [live9926, coloured9926]
  rw [child]
  dsimp only [result9925]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9927_agree_conditional : tree9927 = literal9927 := by
  rw [tree9927_def]
  rfl
theorem node9927_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9927 live9927 coloured9927 = result9927 := by
  rw [tree9927_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9928_agree_conditional
    (child0 : tree9926 = literal9926)
    (child1 : tree9927 = literal9927) : tree9928 = literal9928 := by
  rw [tree9928_def, child0, child1]
  rfl
theorem node9928_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9926 live9926 coloured9926 = result9926)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9927 live9927 coloured9927 = result9927) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9928 live9928 coloured9928 = result9928 := by
  rw [tree9928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9926 coloured9926 at child
  try dsimp only [live9928, coloured9928]
  rw [child]
  dsimp only [result9926]
  have child := child1
  unfold live9927 coloured9927 at child
  try dsimp only [live9928, coloured9928]
  rw [child]
  dsimp only [result9927]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9929_agree_conditional : tree9929 = literal9929 := by
  rw [tree9929_def]
  rfl
theorem node9929_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9929 live9929 coloured9929 = result9929 := by
  rw [tree9929_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9930_agree_conditional
    (child0 : tree9928 = literal9928)
    (child1 : tree9929 = literal9929) : tree9930 = literal9930 := by
  rw [tree9930_def, child0, child1]
  rfl
theorem node9930_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9928 live9928 coloured9928 = result9928)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9929 live9929 coloured9929 = result9929) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9930 live9930 coloured9930 = result9930 := by
  rw [tree9930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9928 coloured9928 at child
  try dsimp only [live9930, coloured9930]
  rw [child]
  dsimp only [result9928]
  have child := child1
  unfold live9929 coloured9929 at child
  try dsimp only [live9930, coloured9930]
  rw [child]
  dsimp only [result9929]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9931_agree_conditional : tree9931 = literal9931 := by
  rw [tree9931_def]
  rfl
theorem node9931_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9931 live9931 coloured9931 = result9931 := by
  rw [tree9931_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9932_agree_conditional
    (child0 : tree9930 = literal9930)
    (child1 : tree9931 = literal9931) : tree9932 = literal9932 := by
  rw [tree9932_def, child0, child1]
  rfl
theorem node9932_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9930 live9930 coloured9930 = result9930)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9931 live9931 coloured9931 = result9931) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9932 live9932 coloured9932 = result9932 := by
  rw [tree9932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9930 coloured9930 at child
  try dsimp only [live9932, coloured9932]
  rw [child]
  dsimp only [result9930]
  have child := child1
  unfold live9931 coloured9931 at child
  try dsimp only [live9932, coloured9932]
  rw [child]
  dsimp only [result9931]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9933_agree_conditional : tree9933 = literal9933 := by
  rw [tree9933_def]
  rfl
theorem node9933_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9933 live9933 coloured9933 = result9933 := by
  rw [tree9933_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9934_agree_conditional
    (child0 : tree9932 = literal9932)
    (child1 : tree9933 = literal9933) : tree9934 = literal9934 := by
  rw [tree9934_def, child0, child1]
  rfl
theorem node9934_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9932 live9932 coloured9932 = result9932)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9933 live9933 coloured9933 = result9933) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9934 live9934 coloured9934 = result9934 := by
  rw [tree9934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9932 coloured9932 at child
  try dsimp only [live9934, coloured9934]
  rw [child]
  dsimp only [result9932]
  have child := child1
  unfold live9933 coloured9933 at child
  try dsimp only [live9934, coloured9934]
  rw [child]
  dsimp only [result9933]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9935_agree_conditional : tree9935 = literal9935 := by
  rw [tree9935_def]
  rfl
theorem node9935_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9935 live9935 coloured9935 = result9935 := by
  rw [tree9935_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9936_agree_conditional
    (child0 : tree9934 = literal9934)
    (child1 : tree9935 = literal9935) : tree9936 = literal9936 := by
  rw [tree9936_def, child0, child1]
  rfl
theorem node9936_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9934 live9934 coloured9934 = result9934)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9935 live9935 coloured9935 = result9935) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9936 live9936 coloured9936 = result9936 := by
  rw [tree9936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9934 coloured9934 at child
  try dsimp only [live9936, coloured9936]
  rw [child]
  dsimp only [result9934]
  have child := child1
  unfold live9935 coloured9935 at child
  try dsimp only [live9936, coloured9936]
  rw [child]
  dsimp only [result9935]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9937_agree_conditional : tree9937 = literal9937 := by
  rw [tree9937_def]
  rfl
theorem node9937_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9937 live9937 coloured9937 = result9937 := by
  rw [tree9937_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9938_agree_conditional
    (child0 : tree9936 = literal9936)
    (child1 : tree9937 = literal9937) : tree9938 = literal9938 := by
  rw [tree9938_def, child0, child1]
  rfl
theorem node9938_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9936 live9936 coloured9936 = result9936)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9937 live9937 coloured9937 = result9937) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9938 live9938 coloured9938 = result9938 := by
  rw [tree9938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9936 coloured9936 at child
  try dsimp only [live9938, coloured9938]
  rw [child]
  dsimp only [result9936]
  have child := child1
  unfold live9937 coloured9937 at child
  try dsimp only [live9938, coloured9938]
  rw [child]
  dsimp only [result9937]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9939_agree_conditional : tree9939 = literal9939 := by
  rw [tree9939_def]
  rfl
theorem node9939_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9939 live9939 coloured9939 = result9939 := by
  rw [tree9939_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9940_agree_conditional
    (child0 : tree9938 = literal9938)
    (child1 : tree9939 = literal9939) : tree9940 = literal9940 := by
  rw [tree9940_def, child0, child1]
  rfl
theorem node9940_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9938 live9938 coloured9938 = result9938)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9939 live9939 coloured9939 = result9939) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9940 live9940 coloured9940 = result9940 := by
  rw [tree9940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9938 coloured9938 at child
  try dsimp only [live9940, coloured9940]
  rw [child]
  dsimp only [result9938]
  have child := child1
  unfold live9939 coloured9939 at child
  try dsimp only [live9940, coloured9940]
  rw [child]
  dsimp only [result9939]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9941_agree_conditional : tree9941 = literal9941 := by
  rw [tree9941_def]
  rfl
theorem node9941_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9941 live9941 coloured9941 = result9941 := by
  rw [tree9941_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9942_agree_conditional
    (child0 : tree9940 = literal9940)
    (child1 : tree9941 = literal9941) : tree9942 = literal9942 := by
  rw [tree9942_def, child0, child1]
  rfl
theorem node9942_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9940 live9940 coloured9940 = result9940)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9941 live9941 coloured9941 = result9941) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9942 live9942 coloured9942 = result9942 := by
  rw [tree9942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9940 coloured9940 at child
  try dsimp only [live9942, coloured9942]
  rw [child]
  dsimp only [result9940]
  have child := child1
  unfold live9941 coloured9941 at child
  try dsimp only [live9942, coloured9942]
  rw [child]
  dsimp only [result9941]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9943_agree_conditional : tree9943 = literal9943 := by
  rw [tree9943_def]
  rfl
theorem node9943_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9943 live9943 coloured9943 = result9943 := by
  rw [tree9943_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9944_agree_conditional
    (child0 : tree9942 = literal9942)
    (child1 : tree9943 = literal9943) : tree9944 = literal9944 := by
  rw [tree9944_def, child0, child1]
  rfl
theorem node9944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9942 live9942 coloured9942 = result9942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9943 live9943 coloured9943 = result9943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9944 live9944 coloured9944 = result9944 := by
  rw [tree9944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9942 coloured9942 at child
  try dsimp only [live9944, coloured9944]
  rw [child]
  dsimp only [result9942]
  have child := child1
  unfold live9943 coloured9943 at child
  try dsimp only [live9944, coloured9944]
  rw [child]
  dsimp only [result9943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9945_agree_conditional : tree9945 = literal9945 := by
  rw [tree9945_def]
  rfl
theorem node9945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9945 live9945 coloured9945 = result9945 := by
  rw [tree9945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9946_agree_conditional
    (child0 : tree9944 = literal9944)
    (child1 : tree9945 = literal9945) : tree9946 = literal9946 := by
  rw [tree9946_def, child0, child1]
  rfl
theorem node9946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9944 live9944 coloured9944 = result9944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9945 live9945 coloured9945 = result9945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9946 live9946 coloured9946 = result9946 := by
  rw [tree9946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9944 coloured9944 at child
  try dsimp only [live9946, coloured9946]
  rw [child]
  dsimp only [result9944]
  have child := child1
  unfold live9945 coloured9945 at child
  try dsimp only [live9946, coloured9946]
  rw [child]
  dsimp only [result9945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9947_agree_conditional : tree9947 = literal9947 := by
  rw [tree9947_def]
  rfl
theorem node9947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9947 live9947 coloured9947 = result9947 := by
  rw [tree9947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9948_agree_conditional
    (child0 : tree9946 = literal9946)
    (child1 : tree9947 = literal9947) : tree9948 = literal9948 := by
  rw [tree9948_def, child0, child1]
  rfl
theorem node9948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9946 live9946 coloured9946 = result9946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9947 live9947 coloured9947 = result9947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9948 live9948 coloured9948 = result9948 := by
  rw [tree9948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9946 coloured9946 at child
  try dsimp only [live9948, coloured9948]
  rw [child]
  dsimp only [result9946]
  have child := child1
  unfold live9947 coloured9947 at child
  try dsimp only [live9948, coloured9948]
  rw [child]
  dsimp only [result9947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9949_agree_conditional : tree9949 = literal9949 := by
  rw [tree9949_def]
  rfl
theorem node9949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9949 live9949 coloured9949 = result9949 := by
  rw [tree9949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9950_agree_conditional
    (child0 : tree9948 = literal9948)
    (child1 : tree9949 = literal9949) : tree9950 = literal9950 := by
  rw [tree9950_def, child0, child1]
  rfl
theorem node9950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9948 live9948 coloured9948 = result9948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9949 live9949 coloured9949 = result9949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9950 live9950 coloured9950 = result9950 := by
  rw [tree9950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9948 coloured9948 at child
  try dsimp only [live9950, coloured9950]
  rw [child]
  dsimp only [result9948]
  have child := child1
  unfold live9949 coloured9949 at child
  try dsimp only [live9950, coloured9950]
  rw [child]
  dsimp only [result9949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9951_agree_conditional : tree9951 = literal9951 := by
  rw [tree9951_def]
  rfl
theorem node9951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9951 live9951 coloured9951 = result9951 := by
  rw [tree9951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9952_agree_conditional
    (child0 : tree9950 = literal9950)
    (child1 : tree9951 = literal9951) : tree9952 = literal9952 := by
  rw [tree9952_def, child0, child1]
  rfl
theorem node9952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9950 live9950 coloured9950 = result9950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9951 live9951 coloured9951 = result9951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9952 live9952 coloured9952 = result9952 := by
  rw [tree9952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9950 coloured9950 at child
  try dsimp only [live9952, coloured9952]
  rw [child]
  dsimp only [result9950]
  have child := child1
  unfold live9951 coloured9951 at child
  try dsimp only [live9952, coloured9952]
  rw [child]
  dsimp only [result9951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9953_agree_conditional : tree9953 = literal9953 := by
  rw [tree9953_def]
  rfl
theorem node9953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9953 live9953 coloured9953 = result9953 := by
  rw [tree9953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9954_agree_conditional
    (child0 : tree9952 = literal9952)
    (child1 : tree9953 = literal9953) : tree9954 = literal9954 := by
  rw [tree9954_def, child0, child1]
  rfl
theorem node9954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9952 live9952 coloured9952 = result9952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9953 live9953 coloured9953 = result9953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9954 live9954 coloured9954 = result9954 := by
  rw [tree9954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9952 coloured9952 at child
  try dsimp only [live9954, coloured9954]
  rw [child]
  dsimp only [result9952]
  have child := child1
  unfold live9953 coloured9953 at child
  try dsimp only [live9954, coloured9954]
  rw [child]
  dsimp only [result9953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9955_agree_conditional : tree9955 = literal9955 := by
  rw [tree9955_def]
  rfl
theorem node9955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9955 live9955 coloured9955 = result9955 := by
  rw [tree9955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9956_agree_conditional
    (child0 : tree9954 = literal9954)
    (child1 : tree9955 = literal9955) : tree9956 = literal9956 := by
  rw [tree9956_def, child0, child1]
  rfl
theorem node9956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9954 live9954 coloured9954 = result9954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9955 live9955 coloured9955 = result9955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9956 live9956 coloured9956 = result9956 := by
  rw [tree9956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9954 coloured9954 at child
  try dsimp only [live9956, coloured9956]
  rw [child]
  dsimp only [result9954]
  have child := child1
  unfold live9955 coloured9955 at child
  try dsimp only [live9956, coloured9956]
  rw [child]
  dsimp only [result9955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9957_agree_conditional : tree9957 = literal9957 := by
  rw [tree9957_def]
  rfl
theorem node9957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9957 live9957 coloured9957 = result9957 := by
  rw [tree9957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9958_agree_conditional
    (child0 : tree9956 = literal9956)
    (child1 : tree9957 = literal9957) : tree9958 = literal9958 := by
  rw [tree9958_def, child0, child1]
  rfl
theorem node9958_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9956 live9956 coloured9956 = result9956)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9957 live9957 coloured9957 = result9957) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9958 live9958 coloured9958 = result9958 := by
  rw [tree9958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9956 coloured9956 at child
  try dsimp only [live9958, coloured9958]
  rw [child]
  dsimp only [result9956]
  have child := child1
  unfold live9957 coloured9957 at child
  try dsimp only [live9958, coloured9958]
  rw [child]
  dsimp only [result9957]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9959_agree_conditional : tree9959 = literal9959 := by
  rw [tree9959_def]
  rfl
theorem node9959_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9959 live9959 coloured9959 = result9959 := by
  rw [tree9959_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9960_agree_conditional
    (child0 : tree9958 = literal9958)
    (child1 : tree9959 = literal9959) : tree9960 = literal9960 := by
  rw [tree9960_def, child0, child1]
  rfl
theorem node9960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9958 live9958 coloured9958 = result9958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9959 live9959 coloured9959 = result9959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9960 live9960 coloured9960 = result9960 := by
  rw [tree9960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9958 coloured9958 at child
  try dsimp only [live9960, coloured9960]
  rw [child]
  dsimp only [result9958]
  have child := child1
  unfold live9959 coloured9959 at child
  try dsimp only [live9960, coloured9960]
  rw [child]
  dsimp only [result9959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9961_agree_conditional : tree9961 = literal9961 := by
  rw [tree9961_def]
  rfl
theorem node9961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9961 live9961 coloured9961 = result9961 := by
  rw [tree9961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9962_agree_conditional
    (child0 : tree9960 = literal9960)
    (child1 : tree9961 = literal9961) : tree9962 = literal9962 := by
  rw [tree9962_def, child0, child1]
  rfl
theorem node9962_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9960 live9960 coloured9960 = result9960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9961 live9961 coloured9961 = result9961) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9962 live9962 coloured9962 = result9962 := by
  rw [tree9962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9960 coloured9960 at child
  try dsimp only [live9962, coloured9962]
  rw [child]
  dsimp only [result9960]
  have child := child1
  unfold live9961 coloured9961 at child
  try dsimp only [live9962, coloured9962]
  rw [child]
  dsimp only [result9961]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9963_agree_conditional : tree9963 = literal9963 := by
  rw [tree9963_def]
  rfl
theorem node9963_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9963 live9963 coloured9963 = result9963 := by
  rw [tree9963_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9964_agree_conditional
    (child0 : tree9962 = literal9962)
    (child1 : tree9963 = literal9963) : tree9964 = literal9964 := by
  rw [tree9964_def, child0, child1]
  rfl
theorem node9964_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9962 live9962 coloured9962 = result9962)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9963 live9963 coloured9963 = result9963) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9964 live9964 coloured9964 = result9964 := by
  rw [tree9964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9962 coloured9962 at child
  try dsimp only [live9964, coloured9964]
  rw [child]
  dsimp only [result9962]
  have child := child1
  unfold live9963 coloured9963 at child
  try dsimp only [live9964, coloured9964]
  rw [child]
  dsimp only [result9963]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9965_agree_conditional : tree9965 = literal9965 := by
  rw [tree9965_def]
  rfl
theorem node9965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9965 live9965 coloured9965 = result9965 := by
  rw [tree9965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9966_agree_conditional
    (child0 : tree9964 = literal9964)
    (child1 : tree9965 = literal9965) : tree9966 = literal9966 := by
  rw [tree9966_def, child0, child1]
  rfl
theorem node9966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9964 live9964 coloured9964 = result9964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9965 live9965 coloured9965 = result9965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9966 live9966 coloured9966 = result9966 := by
  rw [tree9966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9964 coloured9964 at child
  try dsimp only [live9966, coloured9966]
  rw [child]
  dsimp only [result9964]
  have child := child1
  unfold live9965 coloured9965 at child
  try dsimp only [live9966, coloured9966]
  rw [child]
  dsimp only [result9965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9967_agree_conditional : tree9967 = literal9967 := by
  rw [tree9967_def]
  rfl
theorem node9967_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9967 live9967 coloured9967 = result9967 := by
  rw [tree9967_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9968_agree_conditional
    (child0 : tree9966 = literal9966)
    (child1 : tree9967 = literal9967) : tree9968 = literal9968 := by
  rw [tree9968_def, child0, child1]
  rfl
theorem node9968_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9966 live9966 coloured9966 = result9966)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9967 live9967 coloured9967 = result9967) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9968 live9968 coloured9968 = result9968 := by
  rw [tree9968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9966 coloured9966 at child
  try dsimp only [live9968, coloured9968]
  rw [child]
  dsimp only [result9966]
  have child := child1
  unfold live9967 coloured9967 at child
  try dsimp only [live9968, coloured9968]
  rw [child]
  dsimp only [result9967]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9969_agree_conditional : tree9969 = literal9969 := by
  rw [tree9969_def]
  rfl
theorem node9969_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9969 live9969 coloured9969 = result9969 := by
  rw [tree9969_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9970_agree_conditional
    (child0 : tree9968 = literal9968)
    (child1 : tree9969 = literal9969) : tree9970 = literal9970 := by
  rw [tree9970_def, child0, child1]
  rfl
theorem node9970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9968 live9968 coloured9968 = result9968)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9969 live9969 coloured9969 = result9969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9970 live9970 coloured9970 = result9970 := by
  rw [tree9970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9968 coloured9968 at child
  try dsimp only [live9970, coloured9970]
  rw [child]
  dsimp only [result9968]
  have child := child1
  unfold live9969 coloured9969 at child
  try dsimp only [live9970, coloured9970]
  rw [child]
  dsimp only [result9969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9971_agree_conditional : tree9971 = literal9971 := by
  rw [tree9971_def]
  rfl
theorem node9971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9971 live9971 coloured9971 = result9971 := by
  rw [tree9971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9972_agree_conditional
    (child0 : tree9970 = literal9970)
    (child1 : tree9971 = literal9971) : tree9972 = literal9972 := by
  rw [tree9972_def, child0, child1]
  rfl
theorem node9972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9970 live9970 coloured9970 = result9970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9971 live9971 coloured9971 = result9971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9972 live9972 coloured9972 = result9972 := by
  rw [tree9972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9970 coloured9970 at child
  try dsimp only [live9972, coloured9972]
  rw [child]
  dsimp only [result9970]
  have child := child1
  unfold live9971 coloured9971 at child
  try dsimp only [live9972, coloured9972]
  rw [child]
  dsimp only [result9971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9973_agree_conditional : tree9973 = literal9973 := by
  rw [tree9973_def]
  rfl
theorem node9973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9973 live9973 coloured9973 = result9973 := by
  rw [tree9973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9974_agree_conditional
    (child0 : tree9972 = literal9972)
    (child1 : tree9973 = literal9973) : tree9974 = literal9974 := by
  rw [tree9974_def, child0, child1]
  rfl
theorem node9974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9972 live9972 coloured9972 = result9972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9973 live9973 coloured9973 = result9973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9974 live9974 coloured9974 = result9974 := by
  rw [tree9974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9972 coloured9972 at child
  try dsimp only [live9974, coloured9974]
  rw [child]
  dsimp only [result9972]
  have child := child1
  unfold live9973 coloured9973 at child
  try dsimp only [live9974, coloured9974]
  rw [child]
  dsimp only [result9973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9975_agree_conditional : tree9975 = literal9975 := by
  rw [tree9975_def]
  rfl
theorem node9975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9975 live9975 coloured9975 = result9975 := by
  rw [tree9975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9976_agree_conditional
    (child0 : tree9974 = literal9974)
    (child1 : tree9975 = literal9975) : tree9976 = literal9976 := by
  rw [tree9976_def, child0, child1]
  rfl
theorem node9976_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9974 live9974 coloured9974 = result9974)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9975 live9975 coloured9975 = result9975) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9976 live9976 coloured9976 = result9976 := by
  rw [tree9976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9974 coloured9974 at child
  try dsimp only [live9976, coloured9976]
  rw [child]
  dsimp only [result9974]
  have child := child1
  unfold live9975 coloured9975 at child
  try dsimp only [live9976, coloured9976]
  rw [child]
  dsimp only [result9975]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9977_agree_conditional : tree9977 = literal9977 := by
  rw [tree9977_def]
  rfl
theorem node9977_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9977 live9977 coloured9977 = result9977 := by
  rw [tree9977_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9978_agree_conditional
    (child0 : tree9976 = literal9976)
    (child1 : tree9977 = literal9977) : tree9978 = literal9978 := by
  rw [tree9978_def, child0, child1]
  rfl
theorem node9978_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9976 live9976 coloured9976 = result9976)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9977 live9977 coloured9977 = result9977) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9978 live9978 coloured9978 = result9978 := by
  rw [tree9978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9976 coloured9976 at child
  try dsimp only [live9978, coloured9978]
  rw [child]
  dsimp only [result9976]
  have child := child1
  unfold live9977 coloured9977 at child
  try dsimp only [live9978, coloured9978]
  rw [child]
  dsimp only [result9977]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9979_agree_conditional : tree9979 = literal9979 := by
  rw [tree9979_def]
  rfl
theorem node9979_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9979 live9979 coloured9979 = result9979 := by
  rw [tree9979_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9980_agree_conditional
    (child0 : tree9978 = literal9978)
    (child1 : tree9979 = literal9979) : tree9980 = literal9980 := by
  rw [tree9980_def, child0, child1]
  rfl
theorem node9980_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9978 live9978 coloured9978 = result9978)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9979 live9979 coloured9979 = result9979) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9980 live9980 coloured9980 = result9980 := by
  rw [tree9980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9978 coloured9978 at child
  try dsimp only [live9980, coloured9980]
  rw [child]
  dsimp only [result9978]
  have child := child1
  unfold live9979 coloured9979 at child
  try dsimp only [live9980, coloured9980]
  rw [child]
  dsimp only [result9979]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9981_agree_conditional : tree9981 = literal9981 := by
  rw [tree9981_def]
  rfl
theorem node9981_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9981 live9981 coloured9981 = result9981 := by
  rw [tree9981_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9982_agree_conditional
    (child0 : tree9980 = literal9980)
    (child1 : tree9981 = literal9981) : tree9982 = literal9982 := by
  rw [tree9982_def, child0, child1]
  rfl
theorem node9982_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9980 live9980 coloured9980 = result9980)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9981 live9981 coloured9981 = result9981) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9982 live9982 coloured9982 = result9982 := by
  rw [tree9982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9980 coloured9980 at child
  try dsimp only [live9982, coloured9982]
  rw [child]
  dsimp only [result9980]
  have child := child1
  unfold live9981 coloured9981 at child
  try dsimp only [live9982, coloured9982]
  rw [child]
  dsimp only [result9981]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9983_agree_conditional : tree9983 = literal9983 := by
  rw [tree9983_def]
  rfl
theorem node9983_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9983 live9983 coloured9983 = result9983 := by
  rw [tree9983_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
