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
theorem tree4896_agree_conditional
    (child0 : tree4894 = literal4894)
    (child1 : tree4895 = literal4895) : tree4896 = literal4896 := by
  rw [tree4896_def, child0, child1]
  rfl
theorem node4896_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4894 live4894 coloured4894 = result4894)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4895 live4895 coloured4895 = result4895) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4896 live4896 coloured4896 = result4896 := by
  rw [tree4896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4894 coloured4894 at child
  try dsimp only [live4896, coloured4896]
  rw [child]
  dsimp only [result4894]
  have child := child1
  unfold live4895 coloured4895 at child
  try dsimp only [live4896, coloured4896]
  rw [child]
  dsimp only [result4895]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4897_agree_conditional : tree4897 = literal4897 := by
  rw [tree4897_def]
  rfl
theorem node4897_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4897 live4897 coloured4897 = result4897 := by
  rw [tree4897_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4898_agree_conditional
    (child0 : tree4896 = literal4896)
    (child1 : tree4897 = literal4897) : tree4898 = literal4898 := by
  rw [tree4898_def, child0, child1]
  rfl
theorem node4898_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4896 live4896 coloured4896 = result4896)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4897 live4897 coloured4897 = result4897) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4898 live4898 coloured4898 = result4898 := by
  rw [tree4898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4896 coloured4896 at child
  try dsimp only [live4898, coloured4898]
  rw [child]
  dsimp only [result4896]
  have child := child1
  unfold live4897 coloured4897 at child
  try dsimp only [live4898, coloured4898]
  rw [child]
  dsimp only [result4897]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4899_agree_conditional : tree4899 = literal4899 := by
  rw [tree4899_def]
  rfl
theorem node4899_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4899 live4899 coloured4899 = result4899 := by
  rw [tree4899_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4900_agree_conditional
    (child0 : tree4898 = literal4898)
    (child1 : tree4899 = literal4899) : tree4900 = literal4900 := by
  rw [tree4900_def, child0, child1]
  rfl
theorem node4900_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4898 live4898 coloured4898 = result4898)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4899 live4899 coloured4899 = result4899) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4900 live4900 coloured4900 = result4900 := by
  rw [tree4900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4898 coloured4898 at child
  try dsimp only [live4900, coloured4900]
  rw [child]
  dsimp only [result4898]
  have child := child1
  unfold live4899 coloured4899 at child
  try dsimp only [live4900, coloured4900]
  rw [child]
  dsimp only [result4899]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4901_agree_conditional : tree4901 = literal4901 := by
  rw [tree4901_def]
  rfl
theorem node4901_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4901 live4901 coloured4901 = result4901 := by
  rw [tree4901_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4902_agree_conditional
    (child0 : tree4900 = literal4900)
    (child1 : tree4901 = literal4901) : tree4902 = literal4902 := by
  rw [tree4902_def, child0, child1]
  rfl
theorem node4902_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4900 live4900 coloured4900 = result4900)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4901 live4901 coloured4901 = result4901) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4902 live4902 coloured4902 = result4902 := by
  rw [tree4902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4900 coloured4900 at child
  try dsimp only [live4902, coloured4902]
  rw [child]
  dsimp only [result4900]
  have child := child1
  unfold live4901 coloured4901 at child
  try dsimp only [live4902, coloured4902]
  rw [child]
  dsimp only [result4901]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4903_agree_conditional : tree4903 = literal4903 := by
  rw [tree4903_def]
  rfl
theorem node4903_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4903 live4903 coloured4903 = result4903 := by
  rw [tree4903_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4904_agree_conditional
    (child0 : tree4902 = literal4902)
    (child1 : tree4903 = literal4903) : tree4904 = literal4904 := by
  rw [tree4904_def, child0, child1]
  rfl
theorem node4904_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4902 live4902 coloured4902 = result4902)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4903 live4903 coloured4903 = result4903) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4904 live4904 coloured4904 = result4904 := by
  rw [tree4904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4902 coloured4902 at child
  try dsimp only [live4904, coloured4904]
  rw [child]
  dsimp only [result4902]
  have child := child1
  unfold live4903 coloured4903 at child
  try dsimp only [live4904, coloured4904]
  rw [child]
  dsimp only [result4903]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4905_agree_conditional : tree4905 = literal4905 := by
  rw [tree4905_def]
  rfl
theorem node4905_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4905 live4905 coloured4905 = result4905 := by
  rw [tree4905_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4906_agree_conditional
    (child0 : tree4904 = literal4904)
    (child1 : tree4905 = literal4905) : tree4906 = literal4906 := by
  rw [tree4906_def, child0, child1]
  rfl
theorem node4906_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4904 live4904 coloured4904 = result4904)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4905 live4905 coloured4905 = result4905) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4906 live4906 coloured4906 = result4906 := by
  rw [tree4906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4904 coloured4904 at child
  try dsimp only [live4906, coloured4906]
  rw [child]
  dsimp only [result4904]
  have child := child1
  unfold live4905 coloured4905 at child
  try dsimp only [live4906, coloured4906]
  rw [child]
  dsimp only [result4905]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4907_agree_conditional : tree4907 = literal4907 := by
  rw [tree4907_def]
  rfl
theorem node4907_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4907 live4907 coloured4907 = result4907 := by
  rw [tree4907_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4908_agree_conditional
    (child0 : tree4906 = literal4906)
    (child1 : tree4907 = literal4907) : tree4908 = literal4908 := by
  rw [tree4908_def, child0, child1]
  rfl
theorem node4908_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4906 live4906 coloured4906 = result4906)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4907 live4907 coloured4907 = result4907) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4908 live4908 coloured4908 = result4908 := by
  rw [tree4908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4906 coloured4906 at child
  try dsimp only [live4908, coloured4908]
  rw [child]
  dsimp only [result4906]
  have child := child1
  unfold live4907 coloured4907 at child
  try dsimp only [live4908, coloured4908]
  rw [child]
  dsimp only [result4907]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4909_agree_conditional : tree4909 = literal4909 := by
  rw [tree4909_def]
  rfl
theorem node4909_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4909 live4909 coloured4909 = result4909 := by
  rw [tree4909_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4910_agree_conditional
    (child0 : tree4908 = literal4908)
    (child1 : tree4909 = literal4909) : tree4910 = literal4910 := by
  rw [tree4910_def, child0, child1]
  rfl
theorem node4910_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4908 live4908 coloured4908 = result4908)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4909 live4909 coloured4909 = result4909) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4910 live4910 coloured4910 = result4910 := by
  rw [tree4910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4908 coloured4908 at child
  try dsimp only [live4910, coloured4910]
  rw [child]
  dsimp only [result4908]
  have child := child1
  unfold live4909 coloured4909 at child
  try dsimp only [live4910, coloured4910]
  rw [child]
  dsimp only [result4909]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4911_agree_conditional : tree4911 = literal4911 := by
  rw [tree4911_def]
  rfl
theorem node4911_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4911 live4911 coloured4911 = result4911 := by
  rw [tree4911_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4912_agree_conditional
    (child0 : tree4910 = literal4910)
    (child1 : tree4911 = literal4911) : tree4912 = literal4912 := by
  rw [tree4912_def, child0, child1]
  rfl
theorem node4912_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4910 live4910 coloured4910 = result4910)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4911 live4911 coloured4911 = result4911) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4912 live4912 coloured4912 = result4912 := by
  rw [tree4912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4910 coloured4910 at child
  try dsimp only [live4912, coloured4912]
  rw [child]
  dsimp only [result4910]
  have child := child1
  unfold live4911 coloured4911 at child
  try dsimp only [live4912, coloured4912]
  rw [child]
  dsimp only [result4911]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4913_agree_conditional : tree4913 = literal4913 := by
  rw [tree4913_def]
  rfl
theorem node4913_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4913 live4913 coloured4913 = result4913 := by
  rw [tree4913_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4914_agree_conditional
    (child0 : tree4912 = literal4912)
    (child1 : tree4913 = literal4913) : tree4914 = literal4914 := by
  rw [tree4914_def, child0, child1]
  rfl
theorem node4914_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4912 live4912 coloured4912 = result4912)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4913 live4913 coloured4913 = result4913) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4914 live4914 coloured4914 = result4914 := by
  rw [tree4914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4912 coloured4912 at child
  try dsimp only [live4914, coloured4914]
  rw [child]
  dsimp only [result4912]
  have child := child1
  unfold live4913 coloured4913 at child
  try dsimp only [live4914, coloured4914]
  rw [child]
  dsimp only [result4913]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4915_agree_conditional : tree4915 = literal4915 := by
  rw [tree4915_def]
  rfl
theorem node4915_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4915 live4915 coloured4915 = result4915 := by
  rw [tree4915_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4916_agree_conditional
    (child0 : tree4914 = literal4914)
    (child1 : tree4915 = literal4915) : tree4916 = literal4916 := by
  rw [tree4916_def, child0, child1]
  rfl
theorem node4916_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4914 live4914 coloured4914 = result4914)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4915 live4915 coloured4915 = result4915) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4916 live4916 coloured4916 = result4916 := by
  rw [tree4916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4914 coloured4914 at child
  try dsimp only [live4916, coloured4916]
  rw [child]
  dsimp only [result4914]
  have child := child1
  unfold live4915 coloured4915 at child
  try dsimp only [live4916, coloured4916]
  rw [child]
  dsimp only [result4915]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4917_agree_conditional : tree4917 = literal4917 := by
  rw [tree4917_def]
  rfl
theorem node4917_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4917 live4917 coloured4917 = result4917 := by
  rw [tree4917_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4918_agree_conditional
    (child0 : tree4916 = literal4916)
    (child1 : tree4917 = literal4917) : tree4918 = literal4918 := by
  rw [tree4918_def, child0, child1]
  rfl
theorem node4918_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4916 live4916 coloured4916 = result4916)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4917 live4917 coloured4917 = result4917) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4918 live4918 coloured4918 = result4918 := by
  rw [tree4918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4916 coloured4916 at child
  try dsimp only [live4918, coloured4918]
  rw [child]
  dsimp only [result4916]
  have child := child1
  unfold live4917 coloured4917 at child
  try dsimp only [live4918, coloured4918]
  rw [child]
  dsimp only [result4917]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4919_agree_conditional : tree4919 = literal4919 := by
  rw [tree4919_def]
  rfl
theorem node4919_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4919 live4919 coloured4919 = result4919 := by
  rw [tree4919_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4920_agree_conditional
    (child0 : tree4918 = literal4918)
    (child1 : tree4919 = literal4919) : tree4920 = literal4920 := by
  rw [tree4920_def, child0, child1]
  rfl
theorem node4920_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4918 live4918 coloured4918 = result4918)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4919 live4919 coloured4919 = result4919) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4920 live4920 coloured4920 = result4920 := by
  rw [tree4920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4918 coloured4918 at child
  try dsimp only [live4920, coloured4920]
  rw [child]
  dsimp only [result4918]
  have child := child1
  unfold live4919 coloured4919 at child
  try dsimp only [live4920, coloured4920]
  rw [child]
  dsimp only [result4919]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4921_agree_conditional : tree4921 = literal4921 := by
  rw [tree4921_def]
  rfl
theorem node4921_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4921 live4921 coloured4921 = result4921 := by
  rw [tree4921_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4922_agree_conditional
    (child0 : tree4920 = literal4920)
    (child1 : tree4921 = literal4921) : tree4922 = literal4922 := by
  rw [tree4922_def, child0, child1]
  rfl
theorem node4922_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4920 live4920 coloured4920 = result4920)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4921 live4921 coloured4921 = result4921) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4922 live4922 coloured4922 = result4922 := by
  rw [tree4922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4920 coloured4920 at child
  try dsimp only [live4922, coloured4922]
  rw [child]
  dsimp only [result4920]
  have child := child1
  unfold live4921 coloured4921 at child
  try dsimp only [live4922, coloured4922]
  rw [child]
  dsimp only [result4921]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4923_agree_conditional : tree4923 = literal4923 := by
  rw [tree4923_def]
  rfl
theorem node4923_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4923 live4923 coloured4923 = result4923 := by
  rw [tree4923_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4924_agree_conditional
    (child0 : tree4922 = literal4922)
    (child1 : tree4923 = literal4923) : tree4924 = literal4924 := by
  rw [tree4924_def, child0, child1]
  rfl
theorem node4924_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4922 live4922 coloured4922 = result4922)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4923 live4923 coloured4923 = result4923) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4924 live4924 coloured4924 = result4924 := by
  rw [tree4924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4922 coloured4922 at child
  try dsimp only [live4924, coloured4924]
  rw [child]
  dsimp only [result4922]
  have child := child1
  unfold live4923 coloured4923 at child
  try dsimp only [live4924, coloured4924]
  rw [child]
  dsimp only [result4923]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4925_agree_conditional : tree4925 = literal4925 := by
  rw [tree4925_def]
  rfl
theorem node4925_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4925 live4925 coloured4925 = result4925 := by
  rw [tree4925_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4926_agree_conditional
    (child0 : tree4924 = literal4924)
    (child1 : tree4925 = literal4925) : tree4926 = literal4926 := by
  rw [tree4926_def, child0, child1]
  rfl
theorem node4926_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4924 live4924 coloured4924 = result4924)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4925 live4925 coloured4925 = result4925) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4926 live4926 coloured4926 = result4926 := by
  rw [tree4926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4924 coloured4924 at child
  try dsimp only [live4926, coloured4926]
  rw [child]
  dsimp only [result4924]
  have child := child1
  unfold live4925 coloured4925 at child
  try dsimp only [live4926, coloured4926]
  rw [child]
  dsimp only [result4925]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4927_agree_conditional : tree4927 = literal4927 := by
  rw [tree4927_def]
  rfl
theorem node4927_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4927 live4927 coloured4927 = result4927 := by
  rw [tree4927_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4928_agree_conditional
    (child0 : tree4926 = literal4926)
    (child1 : tree4927 = literal4927) : tree4928 = literal4928 := by
  rw [tree4928_def, child0, child1]
  rfl
theorem node4928_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4926 live4926 coloured4926 = result4926)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4927 live4927 coloured4927 = result4927) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4928 live4928 coloured4928 = result4928 := by
  rw [tree4928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4926 coloured4926 at child
  try dsimp only [live4928, coloured4928]
  rw [child]
  dsimp only [result4926]
  have child := child1
  unfold live4927 coloured4927 at child
  try dsimp only [live4928, coloured4928]
  rw [child]
  dsimp only [result4927]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4929_agree_conditional : tree4929 = literal4929 := by
  rw [tree4929_def]
  rfl
theorem node4929_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4929 live4929 coloured4929 = result4929 := by
  rw [tree4929_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4930_agree_conditional
    (child0 : tree4928 = literal4928)
    (child1 : tree4929 = literal4929) : tree4930 = literal4930 := by
  rw [tree4930_def, child0, child1]
  rfl
theorem node4930_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4928 live4928 coloured4928 = result4928)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4929 live4929 coloured4929 = result4929) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4930 live4930 coloured4930 = result4930 := by
  rw [tree4930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4928 coloured4928 at child
  try dsimp only [live4930, coloured4930]
  rw [child]
  dsimp only [result4928]
  have child := child1
  unfold live4929 coloured4929 at child
  try dsimp only [live4930, coloured4930]
  rw [child]
  dsimp only [result4929]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4931_agree_conditional : tree4931 = literal4931 := by
  rw [tree4931_def]
  rfl
theorem node4931_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4931 live4931 coloured4931 = result4931 := by
  rw [tree4931_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4932_agree_conditional
    (child0 : tree4930 = literal4930)
    (child1 : tree4931 = literal4931) : tree4932 = literal4932 := by
  rw [tree4932_def, child0, child1]
  rfl
theorem node4932_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4930 live4930 coloured4930 = result4930)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4931 live4931 coloured4931 = result4931) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4932 live4932 coloured4932 = result4932 := by
  rw [tree4932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4930 coloured4930 at child
  try dsimp only [live4932, coloured4932]
  rw [child]
  dsimp only [result4930]
  have child := child1
  unfold live4931 coloured4931 at child
  try dsimp only [live4932, coloured4932]
  rw [child]
  dsimp only [result4931]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4933_agree_conditional : tree4933 = literal4933 := by
  rw [tree4933_def]
  rfl
theorem node4933_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4933 live4933 coloured4933 = result4933 := by
  rw [tree4933_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4934_agree_conditional
    (child0 : tree4932 = literal4932)
    (child1 : tree4933 = literal4933) : tree4934 = literal4934 := by
  rw [tree4934_def, child0, child1]
  rfl
theorem node4934_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4932 live4932 coloured4932 = result4932)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4933 live4933 coloured4933 = result4933) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4934 live4934 coloured4934 = result4934 := by
  rw [tree4934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4932 coloured4932 at child
  try dsimp only [live4934, coloured4934]
  rw [child]
  dsimp only [result4932]
  have child := child1
  unfold live4933 coloured4933 at child
  try dsimp only [live4934, coloured4934]
  rw [child]
  dsimp only [result4933]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4935_agree_conditional : tree4935 = literal4935 := by
  rw [tree4935_def]
  rfl
theorem node4935_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4935 live4935 coloured4935 = result4935 := by
  rw [tree4935_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4936_agree_conditional
    (child0 : tree4934 = literal4934)
    (child1 : tree4935 = literal4935) : tree4936 = literal4936 := by
  rw [tree4936_def, child0, child1]
  rfl
theorem node4936_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4934 live4934 coloured4934 = result4934)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4935 live4935 coloured4935 = result4935) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4936 live4936 coloured4936 = result4936 := by
  rw [tree4936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4934 coloured4934 at child
  try dsimp only [live4936, coloured4936]
  rw [child]
  dsimp only [result4934]
  have child := child1
  unfold live4935 coloured4935 at child
  try dsimp only [live4936, coloured4936]
  rw [child]
  dsimp only [result4935]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4937_agree_conditional : tree4937 = literal4937 := by
  rw [tree4937_def]
  rfl
theorem node4937_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4937 live4937 coloured4937 = result4937 := by
  rw [tree4937_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4938_agree_conditional
    (child0 : tree4936 = literal4936)
    (child1 : tree4937 = literal4937) : tree4938 = literal4938 := by
  rw [tree4938_def, child0, child1]
  rfl
theorem node4938_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4936 live4936 coloured4936 = result4936)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4937 live4937 coloured4937 = result4937) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4938 live4938 coloured4938 = result4938 := by
  rw [tree4938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4936 coloured4936 at child
  try dsimp only [live4938, coloured4938]
  rw [child]
  dsimp only [result4936]
  have child := child1
  unfold live4937 coloured4937 at child
  try dsimp only [live4938, coloured4938]
  rw [child]
  dsimp only [result4937]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4939_agree_conditional : tree4939 = literal4939 := by
  rw [tree4939_def]
  rfl
theorem node4939_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4939 live4939 coloured4939 = result4939 := by
  rw [tree4939_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4940_agree_conditional
    (child0 : tree4938 = literal4938)
    (child1 : tree4939 = literal4939) : tree4940 = literal4940 := by
  rw [tree4940_def, child0, child1]
  rfl
theorem node4940_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4938 live4938 coloured4938 = result4938)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4939 live4939 coloured4939 = result4939) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4940 live4940 coloured4940 = result4940 := by
  rw [tree4940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4938 coloured4938 at child
  try dsimp only [live4940, coloured4940]
  rw [child]
  dsimp only [result4938]
  have child := child1
  unfold live4939 coloured4939 at child
  try dsimp only [live4940, coloured4940]
  rw [child]
  dsimp only [result4939]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4941_agree_conditional : tree4941 = literal4941 := by
  rw [tree4941_def]
  rfl
theorem node4941_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4941 live4941 coloured4941 = result4941 := by
  rw [tree4941_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4942_agree_conditional
    (child0 : tree4940 = literal4940)
    (child1 : tree4941 = literal4941) : tree4942 = literal4942 := by
  rw [tree4942_def, child0, child1]
  rfl
theorem node4942_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4940 live4940 coloured4940 = result4940)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4941 live4941 coloured4941 = result4941) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4942 live4942 coloured4942 = result4942 := by
  rw [tree4942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4940 coloured4940 at child
  try dsimp only [live4942, coloured4942]
  rw [child]
  dsimp only [result4940]
  have child := child1
  unfold live4941 coloured4941 at child
  try dsimp only [live4942, coloured4942]
  rw [child]
  dsimp only [result4941]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4943_agree_conditional : tree4943 = literal4943 := by
  rw [tree4943_def]
  rfl
theorem node4943_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4943 live4943 coloured4943 = result4943 := by
  rw [tree4943_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4944_agree_conditional
    (child0 : tree4942 = literal4942)
    (child1 : tree4943 = literal4943) : tree4944 = literal4944 := by
  rw [tree4944_def, child0, child1]
  rfl
theorem node4944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4942 live4942 coloured4942 = result4942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4943 live4943 coloured4943 = result4943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4944 live4944 coloured4944 = result4944 := by
  rw [tree4944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4942 coloured4942 at child
  try dsimp only [live4944, coloured4944]
  rw [child]
  dsimp only [result4942]
  have child := child1
  unfold live4943 coloured4943 at child
  try dsimp only [live4944, coloured4944]
  rw [child]
  dsimp only [result4943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4945_agree_conditional : tree4945 = literal4945 := by
  rw [tree4945_def]
  rfl
theorem node4945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4945 live4945 coloured4945 = result4945 := by
  rw [tree4945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4946_agree_conditional
    (child0 : tree4944 = literal4944)
    (child1 : tree4945 = literal4945) : tree4946 = literal4946 := by
  rw [tree4946_def, child0, child1]
  rfl
theorem node4946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4944 live4944 coloured4944 = result4944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4945 live4945 coloured4945 = result4945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4946 live4946 coloured4946 = result4946 := by
  rw [tree4946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4944 coloured4944 at child
  try dsimp only [live4946, coloured4946]
  rw [child]
  dsimp only [result4944]
  have child := child1
  unfold live4945 coloured4945 at child
  try dsimp only [live4946, coloured4946]
  rw [child]
  dsimp only [result4945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4947_agree_conditional : tree4947 = literal4947 := by
  rw [tree4947_def]
  rfl
theorem node4947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4947 live4947 coloured4947 = result4947 := by
  rw [tree4947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4948_agree_conditional
    (child0 : tree4946 = literal4946)
    (child1 : tree4947 = literal4947) : tree4948 = literal4948 := by
  rw [tree4948_def, child0, child1]
  rfl
theorem node4948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4946 live4946 coloured4946 = result4946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4947 live4947 coloured4947 = result4947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4948 live4948 coloured4948 = result4948 := by
  rw [tree4948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4946 coloured4946 at child
  try dsimp only [live4948, coloured4948]
  rw [child]
  dsimp only [result4946]
  have child := child1
  unfold live4947 coloured4947 at child
  try dsimp only [live4948, coloured4948]
  rw [child]
  dsimp only [result4947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4949_agree_conditional : tree4949 = literal4949 := by
  rw [tree4949_def]
  rfl
theorem node4949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4949 live4949 coloured4949 = result4949 := by
  rw [tree4949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4950_agree_conditional
    (child0 : tree4948 = literal4948)
    (child1 : tree4949 = literal4949) : tree4950 = literal4950 := by
  rw [tree4950_def, child0, child1]
  rfl
theorem node4950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4948 live4948 coloured4948 = result4948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4949 live4949 coloured4949 = result4949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4950 live4950 coloured4950 = result4950 := by
  rw [tree4950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4948 coloured4948 at child
  try dsimp only [live4950, coloured4950]
  rw [child]
  dsimp only [result4948]
  have child := child1
  unfold live4949 coloured4949 at child
  try dsimp only [live4950, coloured4950]
  rw [child]
  dsimp only [result4949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4951_agree_conditional : tree4951 = literal4951 := by
  rw [tree4951_def]
  rfl
theorem node4951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4951 live4951 coloured4951 = result4951 := by
  rw [tree4951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4952_agree_conditional
    (child0 : tree4950 = literal4950)
    (child1 : tree4951 = literal4951) : tree4952 = literal4952 := by
  rw [tree4952_def, child0, child1]
  rfl
theorem node4952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4950 live4950 coloured4950 = result4950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4951 live4951 coloured4951 = result4951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4952 live4952 coloured4952 = result4952 := by
  rw [tree4952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4950 coloured4950 at child
  try dsimp only [live4952, coloured4952]
  rw [child]
  dsimp only [result4950]
  have child := child1
  unfold live4951 coloured4951 at child
  try dsimp only [live4952, coloured4952]
  rw [child]
  dsimp only [result4951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4953_agree_conditional : tree4953 = literal4953 := by
  rw [tree4953_def]
  rfl
theorem node4953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4953 live4953 coloured4953 = result4953 := by
  rw [tree4953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4954_agree_conditional
    (child0 : tree4952 = literal4952)
    (child1 : tree4953 = literal4953) : tree4954 = literal4954 := by
  rw [tree4954_def, child0, child1]
  rfl
theorem node4954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4952 live4952 coloured4952 = result4952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4953 live4953 coloured4953 = result4953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4954 live4954 coloured4954 = result4954 := by
  rw [tree4954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4952 coloured4952 at child
  try dsimp only [live4954, coloured4954]
  rw [child]
  dsimp only [result4952]
  have child := child1
  unfold live4953 coloured4953 at child
  try dsimp only [live4954, coloured4954]
  rw [child]
  dsimp only [result4953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4955_agree_conditional : tree4955 = literal4955 := by
  rw [tree4955_def]
  rfl
theorem node4955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4955 live4955 coloured4955 = result4955 := by
  rw [tree4955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4956_agree_conditional
    (child0 : tree4954 = literal4954)
    (child1 : tree4955 = literal4955) : tree4956 = literal4956 := by
  rw [tree4956_def, child0, child1]
  rfl
theorem node4956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4954 live4954 coloured4954 = result4954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4955 live4955 coloured4955 = result4955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4956 live4956 coloured4956 = result4956 := by
  rw [tree4956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4954 coloured4954 at child
  try dsimp only [live4956, coloured4956]
  rw [child]
  dsimp only [result4954]
  have child := child1
  unfold live4955 coloured4955 at child
  try dsimp only [live4956, coloured4956]
  rw [child]
  dsimp only [result4955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4957_agree_conditional : tree4957 = literal4957 := by
  rw [tree4957_def]
  rfl
theorem node4957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4957 live4957 coloured4957 = result4957 := by
  rw [tree4957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4958_agree_conditional
    (child0 : tree4956 = literal4956)
    (child1 : tree4957 = literal4957) : tree4958 = literal4958 := by
  rw [tree4958_def, child0, child1]
  rfl
theorem node4958_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4956 live4956 coloured4956 = result4956)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4957 live4957 coloured4957 = result4957) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4958 live4958 coloured4958 = result4958 := by
  rw [tree4958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4956 coloured4956 at child
  try dsimp only [live4958, coloured4958]
  rw [child]
  dsimp only [result4956]
  have child := child1
  unfold live4957 coloured4957 at child
  try dsimp only [live4958, coloured4958]
  rw [child]
  dsimp only [result4957]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4959_agree_conditional : tree4959 = literal4959 := by
  rw [tree4959_def]
  rfl
theorem node4959_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4959 live4959 coloured4959 = result4959 := by
  rw [tree4959_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4960_agree_conditional
    (child0 : tree4958 = literal4958)
    (child1 : tree4959 = literal4959) : tree4960 = literal4960 := by
  rw [tree4960_def, child0, child1]
  rfl
theorem node4960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4958 live4958 coloured4958 = result4958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4959 live4959 coloured4959 = result4959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4960 live4960 coloured4960 = result4960 := by
  rw [tree4960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4958 coloured4958 at child
  try dsimp only [live4960, coloured4960]
  rw [child]
  dsimp only [result4958]
  have child := child1
  unfold live4959 coloured4959 at child
  try dsimp only [live4960, coloured4960]
  rw [child]
  dsimp only [result4959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4961_agree_conditional : tree4961 = literal4961 := by
  rw [tree4961_def]
  rfl
theorem node4961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4961 live4961 coloured4961 = result4961 := by
  rw [tree4961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4962_agree_conditional
    (child0 : tree4960 = literal4960)
    (child1 : tree4961 = literal4961) : tree4962 = literal4962 := by
  rw [tree4962_def, child0, child1]
  rfl
theorem node4962_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4960 live4960 coloured4960 = result4960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4961 live4961 coloured4961 = result4961) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4962 live4962 coloured4962 = result4962 := by
  rw [tree4962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4960 coloured4960 at child
  try dsimp only [live4962, coloured4962]
  rw [child]
  dsimp only [result4960]
  have child := child1
  unfold live4961 coloured4961 at child
  try dsimp only [live4962, coloured4962]
  rw [child]
  dsimp only [result4961]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4963_agree_conditional : tree4963 = literal4963 := by
  rw [tree4963_def]
  rfl
theorem node4963_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4963 live4963 coloured4963 = result4963 := by
  rw [tree4963_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4964_agree_conditional
    (child0 : tree4962 = literal4962)
    (child1 : tree4963 = literal4963) : tree4964 = literal4964 := by
  rw [tree4964_def, child0, child1]
  rfl
theorem node4964_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4962 live4962 coloured4962 = result4962)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4963 live4963 coloured4963 = result4963) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4964 live4964 coloured4964 = result4964 := by
  rw [tree4964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4962 coloured4962 at child
  try dsimp only [live4964, coloured4964]
  rw [child]
  dsimp only [result4962]
  have child := child1
  unfold live4963 coloured4963 at child
  try dsimp only [live4964, coloured4964]
  rw [child]
  dsimp only [result4963]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4965_agree_conditional : tree4965 = literal4965 := by
  rw [tree4965_def]
  rfl
theorem node4965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4965 live4965 coloured4965 = result4965 := by
  rw [tree4965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4966_agree_conditional
    (child0 : tree4964 = literal4964)
    (child1 : tree4965 = literal4965) : tree4966 = literal4966 := by
  rw [tree4966_def, child0, child1]
  rfl
theorem node4966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4964 live4964 coloured4964 = result4964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4965 live4965 coloured4965 = result4965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4966 live4966 coloured4966 = result4966 := by
  rw [tree4966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4964 coloured4964 at child
  try dsimp only [live4966, coloured4966]
  rw [child]
  dsimp only [result4964]
  have child := child1
  unfold live4965 coloured4965 at child
  try dsimp only [live4966, coloured4966]
  rw [child]
  dsimp only [result4965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4967_agree_conditional : tree4967 = literal4967 := by
  rw [tree4967_def]
  rfl
theorem node4967_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4967 live4967 coloured4967 = result4967 := by
  rw [tree4967_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4968_agree_conditional
    (child0 : tree4966 = literal4966)
    (child1 : tree4967 = literal4967) : tree4968 = literal4968 := by
  rw [tree4968_def, child0, child1]
  rfl
theorem node4968_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4966 live4966 coloured4966 = result4966)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4967 live4967 coloured4967 = result4967) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4968 live4968 coloured4968 = result4968 := by
  rw [tree4968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4966 coloured4966 at child
  try dsimp only [live4968, coloured4968]
  rw [child]
  dsimp only [result4966]
  have child := child1
  unfold live4967 coloured4967 at child
  try dsimp only [live4968, coloured4968]
  rw [child]
  dsimp only [result4967]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4969_agree_conditional : tree4969 = literal4969 := by
  rw [tree4969_def]
  rfl
theorem node4969_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4969 live4969 coloured4969 = result4969 := by
  rw [tree4969_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4970_agree_conditional
    (child0 : tree4968 = literal4968)
    (child1 : tree4969 = literal4969) : tree4970 = literal4970 := by
  rw [tree4970_def, child0, child1]
  rfl
theorem node4970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4968 live4968 coloured4968 = result4968)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4969 live4969 coloured4969 = result4969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4970 live4970 coloured4970 = result4970 := by
  rw [tree4970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4968 coloured4968 at child
  try dsimp only [live4970, coloured4970]
  rw [child]
  dsimp only [result4968]
  have child := child1
  unfold live4969 coloured4969 at child
  try dsimp only [live4970, coloured4970]
  rw [child]
  dsimp only [result4969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4971_agree_conditional : tree4971 = literal4971 := by
  rw [tree4971_def]
  rfl
theorem node4971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4971 live4971 coloured4971 = result4971 := by
  rw [tree4971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4972_agree_conditional
    (child0 : tree4970 = literal4970)
    (child1 : tree4971 = literal4971) : tree4972 = literal4972 := by
  rw [tree4972_def, child0, child1]
  rfl
theorem node4972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4970 live4970 coloured4970 = result4970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4971 live4971 coloured4971 = result4971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4972 live4972 coloured4972 = result4972 := by
  rw [tree4972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4970 coloured4970 at child
  try dsimp only [live4972, coloured4972]
  rw [child]
  dsimp only [result4970]
  have child := child1
  unfold live4971 coloured4971 at child
  try dsimp only [live4972, coloured4972]
  rw [child]
  dsimp only [result4971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4973_agree_conditional : tree4973 = literal4973 := by
  rw [tree4973_def]
  rfl
theorem node4973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4973 live4973 coloured4973 = result4973 := by
  rw [tree4973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4974_agree_conditional
    (child0 : tree4972 = literal4972)
    (child1 : tree4973 = literal4973) : tree4974 = literal4974 := by
  rw [tree4974_def, child0, child1]
  rfl
theorem node4974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4972 live4972 coloured4972 = result4972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4973 live4973 coloured4973 = result4973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4974 live4974 coloured4974 = result4974 := by
  rw [tree4974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4972 coloured4972 at child
  try dsimp only [live4974, coloured4974]
  rw [child]
  dsimp only [result4972]
  have child := child1
  unfold live4973 coloured4973 at child
  try dsimp only [live4974, coloured4974]
  rw [child]
  dsimp only [result4973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4975_agree_conditional : tree4975 = literal4975 := by
  rw [tree4975_def]
  rfl
theorem node4975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4975 live4975 coloured4975 = result4975 := by
  rw [tree4975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4976_agree_conditional
    (child0 : tree4974 = literal4974)
    (child1 : tree4975 = literal4975) : tree4976 = literal4976 := by
  rw [tree4976_def, child0, child1]
  rfl
theorem node4976_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4974 live4974 coloured4974 = result4974)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4975 live4975 coloured4975 = result4975) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4976 live4976 coloured4976 = result4976 := by
  rw [tree4976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4974 coloured4974 at child
  try dsimp only [live4976, coloured4976]
  rw [child]
  dsimp only [result4974]
  have child := child1
  unfold live4975 coloured4975 at child
  try dsimp only [live4976, coloured4976]
  rw [child]
  dsimp only [result4975]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4977_agree_conditional : tree4977 = literal4977 := by
  rw [tree4977_def]
  rfl
theorem node4977_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4977 live4977 coloured4977 = result4977 := by
  rw [tree4977_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4978_agree_conditional
    (child0 : tree4976 = literal4976)
    (child1 : tree4977 = literal4977) : tree4978 = literal4978 := by
  rw [tree4978_def, child0, child1]
  rfl
theorem node4978_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4976 live4976 coloured4976 = result4976)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4977 live4977 coloured4977 = result4977) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4978 live4978 coloured4978 = result4978 := by
  rw [tree4978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4976 coloured4976 at child
  try dsimp only [live4978, coloured4978]
  rw [child]
  dsimp only [result4976]
  have child := child1
  unfold live4977 coloured4977 at child
  try dsimp only [live4978, coloured4978]
  rw [child]
  dsimp only [result4977]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4979_agree_conditional : tree4979 = literal4979 := by
  rw [tree4979_def]
  rfl
theorem node4979_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4979 live4979 coloured4979 = result4979 := by
  rw [tree4979_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4980_agree_conditional
    (child0 : tree4978 = literal4978)
    (child1 : tree4979 = literal4979) : tree4980 = literal4980 := by
  rw [tree4980_def, child0, child1]
  rfl
theorem node4980_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4978 live4978 coloured4978 = result4978)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4979 live4979 coloured4979 = result4979) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4980 live4980 coloured4980 = result4980 := by
  rw [tree4980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4978 coloured4978 at child
  try dsimp only [live4980, coloured4980]
  rw [child]
  dsimp only [result4978]
  have child := child1
  unfold live4979 coloured4979 at child
  try dsimp only [live4980, coloured4980]
  rw [child]
  dsimp only [result4979]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4981_agree_conditional : tree4981 = literal4981 := by
  rw [tree4981_def]
  rfl
theorem node4981_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4981 live4981 coloured4981 = result4981 := by
  rw [tree4981_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4982_agree_conditional
    (child0 : tree4980 = literal4980)
    (child1 : tree4981 = literal4981) : tree4982 = literal4982 := by
  rw [tree4982_def, child0, child1]
  rfl
theorem node4982_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4980 live4980 coloured4980 = result4980)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4981 live4981 coloured4981 = result4981) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4982 live4982 coloured4982 = result4982 := by
  rw [tree4982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4980 coloured4980 at child
  try dsimp only [live4982, coloured4982]
  rw [child]
  dsimp only [result4980]
  have child := child1
  unfold live4981 coloured4981 at child
  try dsimp only [live4982, coloured4982]
  rw [child]
  dsimp only [result4981]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4983_agree_conditional : tree4983 = literal4983 := by
  rw [tree4983_def]
  rfl
theorem node4983_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4983 live4983 coloured4983 = result4983 := by
  rw [tree4983_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4984_agree_conditional
    (child0 : tree4982 = literal4982)
    (child1 : tree4983 = literal4983) : tree4984 = literal4984 := by
  rw [tree4984_def, child0, child1]
  rfl
theorem node4984_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4982 live4982 coloured4982 = result4982)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4983 live4983 coloured4983 = result4983) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4984 live4984 coloured4984 = result4984 := by
  rw [tree4984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4982 coloured4982 at child
  try dsimp only [live4984, coloured4984]
  rw [child]
  dsimp only [result4982]
  have child := child1
  unfold live4983 coloured4983 at child
  try dsimp only [live4984, coloured4984]
  rw [child]
  dsimp only [result4983]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4985_agree_conditional : tree4985 = literal4985 := by
  rw [tree4985_def]
  rfl
theorem node4985_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4985 live4985 coloured4985 = result4985 := by
  rw [tree4985_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4986_agree_conditional
    (child0 : tree4984 = literal4984)
    (child1 : tree4985 = literal4985) : tree4986 = literal4986 := by
  rw [tree4986_def, child0, child1]
  rfl
theorem node4986_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4984 live4984 coloured4984 = result4984)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4985 live4985 coloured4985 = result4985) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4986 live4986 coloured4986 = result4986 := by
  rw [tree4986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4984 coloured4984 at child
  try dsimp only [live4986, coloured4986]
  rw [child]
  dsimp only [result4984]
  have child := child1
  unfold live4985 coloured4985 at child
  try dsimp only [live4986, coloured4986]
  rw [child]
  dsimp only [result4985]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4987_agree_conditional : tree4987 = literal4987 := by
  rw [tree4987_def]
  rfl
theorem node4987_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4987 live4987 coloured4987 = result4987 := by
  rw [tree4987_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4988_agree_conditional
    (child0 : tree4986 = literal4986)
    (child1 : tree4987 = literal4987) : tree4988 = literal4988 := by
  rw [tree4988_def, child0, child1]
  rfl
theorem node4988_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4986 live4986 coloured4986 = result4986)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4987 live4987 coloured4987 = result4987) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4988 live4988 coloured4988 = result4988 := by
  rw [tree4988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4986 coloured4986 at child
  try dsimp only [live4988, coloured4988]
  rw [child]
  dsimp only [result4986]
  have child := child1
  unfold live4987 coloured4987 at child
  try dsimp only [live4988, coloured4988]
  rw [child]
  dsimp only [result4987]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4989_agree_conditional : tree4989 = literal4989 := by
  rw [tree4989_def]
  rfl
theorem node4989_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4989 live4989 coloured4989 = result4989 := by
  rw [tree4989_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4990_agree_conditional
    (child0 : tree4988 = literal4988)
    (child1 : tree4989 = literal4989) : tree4990 = literal4990 := by
  rw [tree4990_def, child0, child1]
  rfl
theorem node4990_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4988 live4988 coloured4988 = result4988)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4989 live4989 coloured4989 = result4989) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4990 live4990 coloured4990 = result4990 := by
  rw [tree4990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4988 coloured4988 at child
  try dsimp only [live4990, coloured4990]
  rw [child]
  dsimp only [result4988]
  have child := child1
  unfold live4989 coloured4989 at child
  try dsimp only [live4990, coloured4990]
  rw [child]
  dsimp only [result4989]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4991_agree_conditional : tree4991 = literal4991 := by
  rw [tree4991_def]
  rfl
theorem node4991_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4991 live4991 coloured4991 = result4991 := by
  rw [tree4991_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
