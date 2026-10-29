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
theorem tree5856_agree_conditional
    (child0 : tree5854 = literal5854)
    (child1 : tree5855 = literal5855) : tree5856 = literal5856 := by
  rw [tree5856_def, child0, child1]
  rfl
theorem node5856_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5854 live5854 coloured5854 = result5854)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5855 live5855 coloured5855 = result5855) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5856 live5856 coloured5856 = result5856 := by
  rw [tree5856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5854 coloured5854 at child
  try dsimp only [live5856, coloured5856]
  rw [child]
  dsimp only [result5854]
  have child := child1
  unfold live5855 coloured5855 at child
  try dsimp only [live5856, coloured5856]
  rw [child]
  dsimp only [result5855]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5857_agree_conditional : tree5857 = literal5857 := by
  rw [tree5857_def]
  rfl
theorem node5857_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5857 live5857 coloured5857 = result5857 := by
  rw [tree5857_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5858_agree_conditional
    (child0 : tree5856 = literal5856)
    (child1 : tree5857 = literal5857) : tree5858 = literal5858 := by
  rw [tree5858_def, child0, child1]
  rfl
theorem node5858_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5856 live5856 coloured5856 = result5856)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5857 live5857 coloured5857 = result5857) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5858 live5858 coloured5858 = result5858 := by
  rw [tree5858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5856 coloured5856 at child
  try dsimp only [live5858, coloured5858]
  rw [child]
  dsimp only [result5856]
  have child := child1
  unfold live5857 coloured5857 at child
  try dsimp only [live5858, coloured5858]
  rw [child]
  dsimp only [result5857]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5859_agree_conditional : tree5859 = literal5859 := by
  rw [tree5859_def]
  rfl
theorem node5859_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5859 live5859 coloured5859 = result5859 := by
  rw [tree5859_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5860_agree_conditional
    (child0 : tree5858 = literal5858)
    (child1 : tree5859 = literal5859) : tree5860 = literal5860 := by
  rw [tree5860_def, child0, child1]
  rfl
theorem node5860_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5858 live5858 coloured5858 = result5858)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5859 live5859 coloured5859 = result5859) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5860 live5860 coloured5860 = result5860 := by
  rw [tree5860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5858 coloured5858 at child
  try dsimp only [live5860, coloured5860]
  rw [child]
  dsimp only [result5858]
  have child := child1
  unfold live5859 coloured5859 at child
  try dsimp only [live5860, coloured5860]
  rw [child]
  dsimp only [result5859]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5861_agree_conditional : tree5861 = literal5861 := by
  rw [tree5861_def]
  rfl
theorem node5861_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5861 live5861 coloured5861 = result5861 := by
  rw [tree5861_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5862_agree_conditional
    (child0 : tree5860 = literal5860)
    (child1 : tree5861 = literal5861) : tree5862 = literal5862 := by
  rw [tree5862_def, child0, child1]
  rfl
theorem node5862_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5860 live5860 coloured5860 = result5860)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5861 live5861 coloured5861 = result5861) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5862 live5862 coloured5862 = result5862 := by
  rw [tree5862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5860 coloured5860 at child
  try dsimp only [live5862, coloured5862]
  rw [child]
  dsimp only [result5860]
  have child := child1
  unfold live5861 coloured5861 at child
  try dsimp only [live5862, coloured5862]
  rw [child]
  dsimp only [result5861]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5863_agree_conditional : tree5863 = literal5863 := by
  rw [tree5863_def]
  rfl
theorem node5863_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5863 live5863 coloured5863 = result5863 := by
  rw [tree5863_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5864_agree_conditional
    (child0 : tree5862 = literal5862)
    (child1 : tree5863 = literal5863) : tree5864 = literal5864 := by
  rw [tree5864_def, child0, child1]
  rfl
theorem node5864_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5862 live5862 coloured5862 = result5862)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5863 live5863 coloured5863 = result5863) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5864 live5864 coloured5864 = result5864 := by
  rw [tree5864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5862 coloured5862 at child
  try dsimp only [live5864, coloured5864]
  rw [child]
  dsimp only [result5862]
  have child := child1
  unfold live5863 coloured5863 at child
  try dsimp only [live5864, coloured5864]
  rw [child]
  dsimp only [result5863]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5865_agree_conditional : tree5865 = literal5865 := by
  rw [tree5865_def]
  rfl
theorem node5865_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5865 live5865 coloured5865 = result5865 := by
  rw [tree5865_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5866_agree_conditional
    (child0 : tree5864 = literal5864)
    (child1 : tree5865 = literal5865) : tree5866 = literal5866 := by
  rw [tree5866_def, child0, child1]
  rfl
theorem node5866_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5864 live5864 coloured5864 = result5864)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5865 live5865 coloured5865 = result5865) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5866 live5866 coloured5866 = result5866 := by
  rw [tree5866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5864 coloured5864 at child
  try dsimp only [live5866, coloured5866]
  rw [child]
  dsimp only [result5864]
  have child := child1
  unfold live5865 coloured5865 at child
  try dsimp only [live5866, coloured5866]
  rw [child]
  dsimp only [result5865]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5867_agree_conditional : tree5867 = literal5867 := by
  rw [tree5867_def]
  rfl
theorem node5867_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5867 live5867 coloured5867 = result5867 := by
  rw [tree5867_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5868_agree_conditional
    (child0 : tree5866 = literal5866)
    (child1 : tree5867 = literal5867) : tree5868 = literal5868 := by
  rw [tree5868_def, child0, child1]
  rfl
theorem node5868_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5866 live5866 coloured5866 = result5866)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5867 live5867 coloured5867 = result5867) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5868 live5868 coloured5868 = result5868 := by
  rw [tree5868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5866 coloured5866 at child
  try dsimp only [live5868, coloured5868]
  rw [child]
  dsimp only [result5866]
  have child := child1
  unfold live5867 coloured5867 at child
  try dsimp only [live5868, coloured5868]
  rw [child]
  dsimp only [result5867]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5869_agree_conditional : tree5869 = literal5869 := by
  rw [tree5869_def]
  rfl
theorem node5869_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5869 live5869 coloured5869 = result5869 := by
  rw [tree5869_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5870_agree_conditional
    (child0 : tree5868 = literal5868)
    (child1 : tree5869 = literal5869) : tree5870 = literal5870 := by
  rw [tree5870_def, child0, child1]
  rfl
theorem node5870_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5868 live5868 coloured5868 = result5868)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5869 live5869 coloured5869 = result5869) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5870 live5870 coloured5870 = result5870 := by
  rw [tree5870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5868 coloured5868 at child
  try dsimp only [live5870, coloured5870]
  rw [child]
  dsimp only [result5868]
  have child := child1
  unfold live5869 coloured5869 at child
  try dsimp only [live5870, coloured5870]
  rw [child]
  dsimp only [result5869]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5871_agree_conditional : tree5871 = literal5871 := by
  rw [tree5871_def]
  rfl
theorem node5871_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5871 live5871 coloured5871 = result5871 := by
  rw [tree5871_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5872_agree_conditional
    (child0 : tree5870 = literal5870)
    (child1 : tree5871 = literal5871) : tree5872 = literal5872 := by
  rw [tree5872_def, child0, child1]
  rfl
theorem node5872_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5870 live5870 coloured5870 = result5870)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5871 live5871 coloured5871 = result5871) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5872 live5872 coloured5872 = result5872 := by
  rw [tree5872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5870 coloured5870 at child
  try dsimp only [live5872, coloured5872]
  rw [child]
  dsimp only [result5870]
  have child := child1
  unfold live5871 coloured5871 at child
  try dsimp only [live5872, coloured5872]
  rw [child]
  dsimp only [result5871]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5873_agree_conditional : tree5873 = literal5873 := by
  rw [tree5873_def]
  rfl
theorem node5873_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5873 live5873 coloured5873 = result5873 := by
  rw [tree5873_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5874_agree_conditional
    (child0 : tree5872 = literal5872)
    (child1 : tree5873 = literal5873) : tree5874 = literal5874 := by
  rw [tree5874_def, child0, child1]
  rfl
theorem node5874_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5872 live5872 coloured5872 = result5872)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5873 live5873 coloured5873 = result5873) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5874 live5874 coloured5874 = result5874 := by
  rw [tree5874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5872 coloured5872 at child
  try dsimp only [live5874, coloured5874]
  rw [child]
  dsimp only [result5872]
  have child := child1
  unfold live5873 coloured5873 at child
  try dsimp only [live5874, coloured5874]
  rw [child]
  dsimp only [result5873]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5875_agree_conditional : tree5875 = literal5875 := by
  rw [tree5875_def]
  rfl
theorem node5875_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5875 live5875 coloured5875 = result5875 := by
  rw [tree5875_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5876_agree_conditional
    (child0 : tree5874 = literal5874)
    (child1 : tree5875 = literal5875) : tree5876 = literal5876 := by
  rw [tree5876_def, child0, child1]
  rfl
theorem node5876_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5874 live5874 coloured5874 = result5874)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5875 live5875 coloured5875 = result5875) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5876 live5876 coloured5876 = result5876 := by
  rw [tree5876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5874 coloured5874 at child
  try dsimp only [live5876, coloured5876]
  rw [child]
  dsimp only [result5874]
  have child := child1
  unfold live5875 coloured5875 at child
  try dsimp only [live5876, coloured5876]
  rw [child]
  dsimp only [result5875]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5877_agree_conditional : tree5877 = literal5877 := by
  rw [tree5877_def]
  rfl
theorem node5877_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5877 live5877 coloured5877 = result5877 := by
  rw [tree5877_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5878_agree_conditional
    (child0 : tree5876 = literal5876)
    (child1 : tree5877 = literal5877) : tree5878 = literal5878 := by
  rw [tree5878_def, child0, child1]
  rfl
theorem node5878_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5876 live5876 coloured5876 = result5876)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5877 live5877 coloured5877 = result5877) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5878 live5878 coloured5878 = result5878 := by
  rw [tree5878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5876 coloured5876 at child
  try dsimp only [live5878, coloured5878]
  rw [child]
  dsimp only [result5876]
  have child := child1
  unfold live5877 coloured5877 at child
  try dsimp only [live5878, coloured5878]
  rw [child]
  dsimp only [result5877]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5879_agree_conditional : tree5879 = literal5879 := by
  rw [tree5879_def]
  rfl
theorem node5879_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5879 live5879 coloured5879 = result5879 := by
  rw [tree5879_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5880_agree_conditional
    (child0 : tree5878 = literal5878)
    (child1 : tree5879 = literal5879) : tree5880 = literal5880 := by
  rw [tree5880_def, child0, child1]
  rfl
theorem node5880_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5878 live5878 coloured5878 = result5878)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5879 live5879 coloured5879 = result5879) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5880 live5880 coloured5880 = result5880 := by
  rw [tree5880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5878 coloured5878 at child
  try dsimp only [live5880, coloured5880]
  rw [child]
  dsimp only [result5878]
  have child := child1
  unfold live5879 coloured5879 at child
  try dsimp only [live5880, coloured5880]
  rw [child]
  dsimp only [result5879]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5881_agree_conditional : tree5881 = literal5881 := by
  rw [tree5881_def]
  rfl
theorem node5881_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5881 live5881 coloured5881 = result5881 := by
  rw [tree5881_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5882_agree_conditional
    (child0 : tree5880 = literal5880)
    (child1 : tree5881 = literal5881) : tree5882 = literal5882 := by
  rw [tree5882_def, child0, child1]
  rfl
theorem node5882_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5880 live5880 coloured5880 = result5880)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5881 live5881 coloured5881 = result5881) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5882 live5882 coloured5882 = result5882 := by
  rw [tree5882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5880 coloured5880 at child
  try dsimp only [live5882, coloured5882]
  rw [child]
  dsimp only [result5880]
  have child := child1
  unfold live5881 coloured5881 at child
  try dsimp only [live5882, coloured5882]
  rw [child]
  dsimp only [result5881]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5883_agree_conditional : tree5883 = literal5883 := by
  rw [tree5883_def]
  rfl
theorem node5883_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5883 live5883 coloured5883 = result5883 := by
  rw [tree5883_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5884_agree_conditional
    (child0 : tree5882 = literal5882)
    (child1 : tree5883 = literal5883) : tree5884 = literal5884 := by
  rw [tree5884_def, child0, child1]
  rfl
theorem node5884_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5882 live5882 coloured5882 = result5882)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5883 live5883 coloured5883 = result5883) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5884 live5884 coloured5884 = result5884 := by
  rw [tree5884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5882 coloured5882 at child
  try dsimp only [live5884, coloured5884]
  rw [child]
  dsimp only [result5882]
  have child := child1
  unfold live5883 coloured5883 at child
  try dsimp only [live5884, coloured5884]
  rw [child]
  dsimp only [result5883]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5885_agree_conditional : tree5885 = literal5885 := by
  rw [tree5885_def]
  rfl
theorem node5885_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5885 live5885 coloured5885 = result5885 := by
  rw [tree5885_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5886_agree_conditional
    (child0 : tree5884 = literal5884)
    (child1 : tree5885 = literal5885) : tree5886 = literal5886 := by
  rw [tree5886_def, child0, child1]
  rfl
theorem node5886_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5884 live5884 coloured5884 = result5884)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5885 live5885 coloured5885 = result5885) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5886 live5886 coloured5886 = result5886 := by
  rw [tree5886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5884 coloured5884 at child
  try dsimp only [live5886, coloured5886]
  rw [child]
  dsimp only [result5884]
  have child := child1
  unfold live5885 coloured5885 at child
  try dsimp only [live5886, coloured5886]
  rw [child]
  dsimp only [result5885]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5887_agree_conditional : tree5887 = literal5887 := by
  rw [tree5887_def]
  rfl
theorem node5887_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5887 live5887 coloured5887 = result5887 := by
  rw [tree5887_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5888_agree_conditional
    (child0 : tree5886 = literal5886)
    (child1 : tree5887 = literal5887) : tree5888 = literal5888 := by
  rw [tree5888_def, child0, child1]
  rfl
theorem node5888_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5886 live5886 coloured5886 = result5886)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5887 live5887 coloured5887 = result5887) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5888 live5888 coloured5888 = result5888 := by
  rw [tree5888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5886 coloured5886 at child
  try dsimp only [live5888, coloured5888]
  rw [child]
  dsimp only [result5886]
  have child := child1
  unfold live5887 coloured5887 at child
  try dsimp only [live5888, coloured5888]
  rw [child]
  dsimp only [result5887]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5889_agree_conditional : tree5889 = literal5889 := by
  rw [tree5889_def]
  rfl
theorem node5889_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5889 live5889 coloured5889 = result5889 := by
  rw [tree5889_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5890_agree_conditional
    (child0 : tree5888 = literal5888)
    (child1 : tree5889 = literal5889) : tree5890 = literal5890 := by
  rw [tree5890_def, child0, child1]
  rfl
theorem node5890_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5888 live5888 coloured5888 = result5888)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5889 live5889 coloured5889 = result5889) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5890 live5890 coloured5890 = result5890 := by
  rw [tree5890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5888 coloured5888 at child
  try dsimp only [live5890, coloured5890]
  rw [child]
  dsimp only [result5888]
  have child := child1
  unfold live5889 coloured5889 at child
  try dsimp only [live5890, coloured5890]
  rw [child]
  dsimp only [result5889]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5891_agree_conditional : tree5891 = literal5891 := by
  rw [tree5891_def]
  rfl
theorem node5891_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5891 live5891 coloured5891 = result5891 := by
  rw [tree5891_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5892_agree_conditional
    (child0 : tree5890 = literal5890)
    (child1 : tree5891 = literal5891) : tree5892 = literal5892 := by
  rw [tree5892_def, child0, child1]
  rfl
theorem node5892_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5890 live5890 coloured5890 = result5890)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5891 live5891 coloured5891 = result5891) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5892 live5892 coloured5892 = result5892 := by
  rw [tree5892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5890 coloured5890 at child
  try dsimp only [live5892, coloured5892]
  rw [child]
  dsimp only [result5890]
  have child := child1
  unfold live5891 coloured5891 at child
  try dsimp only [live5892, coloured5892]
  rw [child]
  dsimp only [result5891]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5893_agree_conditional : tree5893 = literal5893 := by
  rw [tree5893_def]
  rfl
theorem node5893_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5893 live5893 coloured5893 = result5893 := by
  rw [tree5893_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5894_agree_conditional
    (child0 : tree5892 = literal5892)
    (child1 : tree5893 = literal5893) : tree5894 = literal5894 := by
  rw [tree5894_def, child0, child1]
  rfl
theorem node5894_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5892 live5892 coloured5892 = result5892)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5893 live5893 coloured5893 = result5893) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5894 live5894 coloured5894 = result5894 := by
  rw [tree5894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5892 coloured5892 at child
  try dsimp only [live5894, coloured5894]
  rw [child]
  dsimp only [result5892]
  have child := child1
  unfold live5893 coloured5893 at child
  try dsimp only [live5894, coloured5894]
  rw [child]
  dsimp only [result5893]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5895_agree_conditional : tree5895 = literal5895 := by
  rw [tree5895_def]
  rfl
theorem node5895_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5895 live5895 coloured5895 = result5895 := by
  rw [tree5895_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5896_agree_conditional
    (child0 : tree5894 = literal5894)
    (child1 : tree5895 = literal5895) : tree5896 = literal5896 := by
  rw [tree5896_def, child0, child1]
  rfl
theorem node5896_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5894 live5894 coloured5894 = result5894)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5895 live5895 coloured5895 = result5895) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5896 live5896 coloured5896 = result5896 := by
  rw [tree5896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5894 coloured5894 at child
  try dsimp only [live5896, coloured5896]
  rw [child]
  dsimp only [result5894]
  have child := child1
  unfold live5895 coloured5895 at child
  try dsimp only [live5896, coloured5896]
  rw [child]
  dsimp only [result5895]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5897_agree_conditional : tree5897 = literal5897 := by
  rw [tree5897_def]
  rfl
theorem node5897_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5897 live5897 coloured5897 = result5897 := by
  rw [tree5897_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5898_agree_conditional
    (child0 : tree5896 = literal5896)
    (child1 : tree5897 = literal5897) : tree5898 = literal5898 := by
  rw [tree5898_def, child0, child1]
  rfl
theorem node5898_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5896 live5896 coloured5896 = result5896)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5897 live5897 coloured5897 = result5897) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5898 live5898 coloured5898 = result5898 := by
  rw [tree5898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5896 coloured5896 at child
  try dsimp only [live5898, coloured5898]
  rw [child]
  dsimp only [result5896]
  have child := child1
  unfold live5897 coloured5897 at child
  try dsimp only [live5898, coloured5898]
  rw [child]
  dsimp only [result5897]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5899_agree_conditional : tree5899 = literal5899 := by
  rw [tree5899_def]
  rfl
theorem node5899_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5899 live5899 coloured5899 = result5899 := by
  rw [tree5899_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5900_agree_conditional
    (child0 : tree5898 = literal5898)
    (child1 : tree5899 = literal5899) : tree5900 = literal5900 := by
  rw [tree5900_def, child0, child1]
  rfl
theorem node5900_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5898 live5898 coloured5898 = result5898)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5899 live5899 coloured5899 = result5899) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5900 live5900 coloured5900 = result5900 := by
  rw [tree5900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5898 coloured5898 at child
  try dsimp only [live5900, coloured5900]
  rw [child]
  dsimp only [result5898]
  have child := child1
  unfold live5899 coloured5899 at child
  try dsimp only [live5900, coloured5900]
  rw [child]
  dsimp only [result5899]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5901_agree_conditional : tree5901 = literal5901 := by
  rw [tree5901_def]
  rfl
theorem node5901_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5901 live5901 coloured5901 = result5901 := by
  rw [tree5901_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5902_agree_conditional
    (child0 : tree5900 = literal5900)
    (child1 : tree5901 = literal5901) : tree5902 = literal5902 := by
  rw [tree5902_def, child0, child1]
  rfl
theorem node5902_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5900 live5900 coloured5900 = result5900)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5901 live5901 coloured5901 = result5901) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5902 live5902 coloured5902 = result5902 := by
  rw [tree5902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5900 coloured5900 at child
  try dsimp only [live5902, coloured5902]
  rw [child]
  dsimp only [result5900]
  have child := child1
  unfold live5901 coloured5901 at child
  try dsimp only [live5902, coloured5902]
  rw [child]
  dsimp only [result5901]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5903_agree_conditional : tree5903 = literal5903 := by
  rw [tree5903_def]
  rfl
theorem node5903_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5903 live5903 coloured5903 = result5903 := by
  rw [tree5903_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5904_agree_conditional
    (child0 : tree5902 = literal5902)
    (child1 : tree5903 = literal5903) : tree5904 = literal5904 := by
  rw [tree5904_def, child0, child1]
  rfl
theorem node5904_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5902 live5902 coloured5902 = result5902)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5903 live5903 coloured5903 = result5903) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5904 live5904 coloured5904 = result5904 := by
  rw [tree5904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5902 coloured5902 at child
  try dsimp only [live5904, coloured5904]
  rw [child]
  dsimp only [result5902]
  have child := child1
  unfold live5903 coloured5903 at child
  try dsimp only [live5904, coloured5904]
  rw [child]
  dsimp only [result5903]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5905_agree_conditional : tree5905 = literal5905 := by
  rw [tree5905_def]
  rfl
theorem node5905_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5905 live5905 coloured5905 = result5905 := by
  rw [tree5905_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5906_agree_conditional
    (child0 : tree5904 = literal5904)
    (child1 : tree5905 = literal5905) : tree5906 = literal5906 := by
  rw [tree5906_def, child0, child1]
  rfl
theorem node5906_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5904 live5904 coloured5904 = result5904)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5905 live5905 coloured5905 = result5905) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5906 live5906 coloured5906 = result5906 := by
  rw [tree5906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5904 coloured5904 at child
  try dsimp only [live5906, coloured5906]
  rw [child]
  dsimp only [result5904]
  have child := child1
  unfold live5905 coloured5905 at child
  try dsimp only [live5906, coloured5906]
  rw [child]
  dsimp only [result5905]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5907_agree_conditional : tree5907 = literal5907 := by
  rw [tree5907_def]
  rfl
theorem node5907_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5907 live5907 coloured5907 = result5907 := by
  rw [tree5907_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5908_agree_conditional
    (child0 : tree5906 = literal5906)
    (child1 : tree5907 = literal5907) : tree5908 = literal5908 := by
  rw [tree5908_def, child0, child1]
  rfl
theorem node5908_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5906 live5906 coloured5906 = result5906)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5907 live5907 coloured5907 = result5907) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5908 live5908 coloured5908 = result5908 := by
  rw [tree5908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5906 coloured5906 at child
  try dsimp only [live5908, coloured5908]
  rw [child]
  dsimp only [result5906]
  have child := child1
  unfold live5907 coloured5907 at child
  try dsimp only [live5908, coloured5908]
  rw [child]
  dsimp only [result5907]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5909_agree_conditional : tree5909 = literal5909 := by
  rw [tree5909_def]
  rfl
theorem node5909_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5909 live5909 coloured5909 = result5909 := by
  rw [tree5909_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5910_agree_conditional
    (child0 : tree5908 = literal5908)
    (child1 : tree5909 = literal5909) : tree5910 = literal5910 := by
  rw [tree5910_def, child0, child1]
  rfl
theorem node5910_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5908 live5908 coloured5908 = result5908)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5909 live5909 coloured5909 = result5909) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5910 live5910 coloured5910 = result5910 := by
  rw [tree5910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5908 coloured5908 at child
  try dsimp only [live5910, coloured5910]
  rw [child]
  dsimp only [result5908]
  have child := child1
  unfold live5909 coloured5909 at child
  try dsimp only [live5910, coloured5910]
  rw [child]
  dsimp only [result5909]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5911_agree_conditional : tree5911 = literal5911 := by
  rw [tree5911_def]
  rfl
theorem node5911_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5911 live5911 coloured5911 = result5911 := by
  rw [tree5911_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5912_agree_conditional
    (child0 : tree5910 = literal5910)
    (child1 : tree5911 = literal5911) : tree5912 = literal5912 := by
  rw [tree5912_def, child0, child1]
  rfl
theorem node5912_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5910 live5910 coloured5910 = result5910)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5911 live5911 coloured5911 = result5911) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5912 live5912 coloured5912 = result5912 := by
  rw [tree5912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5910 coloured5910 at child
  try dsimp only [live5912, coloured5912]
  rw [child]
  dsimp only [result5910]
  have child := child1
  unfold live5911 coloured5911 at child
  try dsimp only [live5912, coloured5912]
  rw [child]
  dsimp only [result5911]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5913_agree_conditional : tree5913 = literal5913 := by
  rw [tree5913_def]
  rfl
theorem node5913_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5913 live5913 coloured5913 = result5913 := by
  rw [tree5913_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5914_agree_conditional
    (child0 : tree5912 = literal5912)
    (child1 : tree5913 = literal5913) : tree5914 = literal5914 := by
  rw [tree5914_def, child0, child1]
  rfl
theorem node5914_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5912 live5912 coloured5912 = result5912)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5913 live5913 coloured5913 = result5913) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5914 live5914 coloured5914 = result5914 := by
  rw [tree5914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5912 coloured5912 at child
  try dsimp only [live5914, coloured5914]
  rw [child]
  dsimp only [result5912]
  have child := child1
  unfold live5913 coloured5913 at child
  try dsimp only [live5914, coloured5914]
  rw [child]
  dsimp only [result5913]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5915_agree_conditional : tree5915 = literal5915 := by
  rw [tree5915_def]
  rfl
theorem node5915_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5915 live5915 coloured5915 = result5915 := by
  rw [tree5915_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5916_agree_conditional
    (child0 : tree5914 = literal5914)
    (child1 : tree5915 = literal5915) : tree5916 = literal5916 := by
  rw [tree5916_def, child0, child1]
  rfl
theorem node5916_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5914 live5914 coloured5914 = result5914)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5915 live5915 coloured5915 = result5915) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5916 live5916 coloured5916 = result5916 := by
  rw [tree5916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5914 coloured5914 at child
  try dsimp only [live5916, coloured5916]
  rw [child]
  dsimp only [result5914]
  have child := child1
  unfold live5915 coloured5915 at child
  try dsimp only [live5916, coloured5916]
  rw [child]
  dsimp only [result5915]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5917_agree_conditional : tree5917 = literal5917 := by
  rw [tree5917_def]
  rfl
theorem node5917_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5917 live5917 coloured5917 = result5917 := by
  rw [tree5917_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5918_agree_conditional
    (child0 : tree5916 = literal5916)
    (child1 : tree5917 = literal5917) : tree5918 = literal5918 := by
  rw [tree5918_def, child0, child1]
  rfl
theorem node5918_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5916 live5916 coloured5916 = result5916)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5917 live5917 coloured5917 = result5917) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5918 live5918 coloured5918 = result5918 := by
  rw [tree5918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5916 coloured5916 at child
  try dsimp only [live5918, coloured5918]
  rw [child]
  dsimp only [result5916]
  have child := child1
  unfold live5917 coloured5917 at child
  try dsimp only [live5918, coloured5918]
  rw [child]
  dsimp only [result5917]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5919_agree_conditional : tree5919 = literal5919 := by
  rw [tree5919_def]
  rfl
theorem node5919_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5919 live5919 coloured5919 = result5919 := by
  rw [tree5919_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5920_agree_conditional
    (child0 : tree5918 = literal5918)
    (child1 : tree5919 = literal5919) : tree5920 = literal5920 := by
  rw [tree5920_def, child0, child1]
  rfl
theorem node5920_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5918 live5918 coloured5918 = result5918)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5919 live5919 coloured5919 = result5919) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5920 live5920 coloured5920 = result5920 := by
  rw [tree5920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5918 coloured5918 at child
  try dsimp only [live5920, coloured5920]
  rw [child]
  dsimp only [result5918]
  have child := child1
  unfold live5919 coloured5919 at child
  try dsimp only [live5920, coloured5920]
  rw [child]
  dsimp only [result5919]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5921_agree_conditional : tree5921 = literal5921 := by
  rw [tree5921_def]
  rfl
theorem node5921_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5921 live5921 coloured5921 = result5921 := by
  rw [tree5921_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5922_agree_conditional
    (child0 : tree5920 = literal5920)
    (child1 : tree5921 = literal5921) : tree5922 = literal5922 := by
  rw [tree5922_def, child0, child1]
  rfl
theorem node5922_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5920 live5920 coloured5920 = result5920)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5921 live5921 coloured5921 = result5921) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5922 live5922 coloured5922 = result5922 := by
  rw [tree5922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5920 coloured5920 at child
  try dsimp only [live5922, coloured5922]
  rw [child]
  dsimp only [result5920]
  have child := child1
  unfold live5921 coloured5921 at child
  try dsimp only [live5922, coloured5922]
  rw [child]
  dsimp only [result5921]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5923_agree_conditional : tree5923 = literal5923 := by
  rw [tree5923_def]
  rfl
theorem node5923_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5923 live5923 coloured5923 = result5923 := by
  rw [tree5923_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5924_agree_conditional
    (child0 : tree5922 = literal5922)
    (child1 : tree5923 = literal5923) : tree5924 = literal5924 := by
  rw [tree5924_def, child0, child1]
  rfl
theorem node5924_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5922 live5922 coloured5922 = result5922)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5923 live5923 coloured5923 = result5923) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5924 live5924 coloured5924 = result5924 := by
  rw [tree5924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5922 coloured5922 at child
  try dsimp only [live5924, coloured5924]
  rw [child]
  dsimp only [result5922]
  have child := child1
  unfold live5923 coloured5923 at child
  try dsimp only [live5924, coloured5924]
  rw [child]
  dsimp only [result5923]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5925_agree_conditional : tree5925 = literal5925 := by
  rw [tree5925_def]
  rfl
theorem node5925_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5925 live5925 coloured5925 = result5925 := by
  rw [tree5925_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5926_agree_conditional
    (child0 : tree5924 = literal5924)
    (child1 : tree5925 = literal5925) : tree5926 = literal5926 := by
  rw [tree5926_def, child0, child1]
  rfl
theorem node5926_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5924 live5924 coloured5924 = result5924)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5925 live5925 coloured5925 = result5925) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5926 live5926 coloured5926 = result5926 := by
  rw [tree5926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5924 coloured5924 at child
  try dsimp only [live5926, coloured5926]
  rw [child]
  dsimp only [result5924]
  have child := child1
  unfold live5925 coloured5925 at child
  try dsimp only [live5926, coloured5926]
  rw [child]
  dsimp only [result5925]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5927_agree_conditional : tree5927 = literal5927 := by
  rw [tree5927_def]
  rfl
theorem node5927_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5927 live5927 coloured5927 = result5927 := by
  rw [tree5927_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5928_agree_conditional
    (child0 : tree5926 = literal5926)
    (child1 : tree5927 = literal5927) : tree5928 = literal5928 := by
  rw [tree5928_def, child0, child1]
  rfl
theorem node5928_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5926 live5926 coloured5926 = result5926)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5927 live5927 coloured5927 = result5927) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5928 live5928 coloured5928 = result5928 := by
  rw [tree5928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5926 coloured5926 at child
  try dsimp only [live5928, coloured5928]
  rw [child]
  dsimp only [result5926]
  have child := child1
  unfold live5927 coloured5927 at child
  try dsimp only [live5928, coloured5928]
  rw [child]
  dsimp only [result5927]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5929_agree_conditional : tree5929 = literal5929 := by
  rw [tree5929_def]
  rfl
theorem node5929_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5929 live5929 coloured5929 = result5929 := by
  rw [tree5929_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5930_agree_conditional
    (child0 : tree5928 = literal5928)
    (child1 : tree5929 = literal5929) : tree5930 = literal5930 := by
  rw [tree5930_def, child0, child1]
  rfl
theorem node5930_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5928 live5928 coloured5928 = result5928)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5929 live5929 coloured5929 = result5929) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5930 live5930 coloured5930 = result5930 := by
  rw [tree5930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5928 coloured5928 at child
  try dsimp only [live5930, coloured5930]
  rw [child]
  dsimp only [result5928]
  have child := child1
  unfold live5929 coloured5929 at child
  try dsimp only [live5930, coloured5930]
  rw [child]
  dsimp only [result5929]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5931_agree_conditional : tree5931 = literal5931 := by
  rw [tree5931_def]
  rfl
theorem node5931_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5931 live5931 coloured5931 = result5931 := by
  rw [tree5931_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5932_agree_conditional
    (child0 : tree5930 = literal5930)
    (child1 : tree5931 = literal5931) : tree5932 = literal5932 := by
  rw [tree5932_def, child0, child1]
  rfl
theorem node5932_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5930 live5930 coloured5930 = result5930)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5931 live5931 coloured5931 = result5931) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5932 live5932 coloured5932 = result5932 := by
  rw [tree5932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5930 coloured5930 at child
  try dsimp only [live5932, coloured5932]
  rw [child]
  dsimp only [result5930]
  have child := child1
  unfold live5931 coloured5931 at child
  try dsimp only [live5932, coloured5932]
  rw [child]
  dsimp only [result5931]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5933_agree_conditional : tree5933 = literal5933 := by
  rw [tree5933_def]
  rfl
theorem node5933_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5933 live5933 coloured5933 = result5933 := by
  rw [tree5933_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5934_agree_conditional
    (child0 : tree5932 = literal5932)
    (child1 : tree5933 = literal5933) : tree5934 = literal5934 := by
  rw [tree5934_def, child0, child1]
  rfl
theorem node5934_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5932 live5932 coloured5932 = result5932)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5933 live5933 coloured5933 = result5933) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5934 live5934 coloured5934 = result5934 := by
  rw [tree5934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5932 coloured5932 at child
  try dsimp only [live5934, coloured5934]
  rw [child]
  dsimp only [result5932]
  have child := child1
  unfold live5933 coloured5933 at child
  try dsimp only [live5934, coloured5934]
  rw [child]
  dsimp only [result5933]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5935_agree_conditional : tree5935 = literal5935 := by
  rw [tree5935_def]
  rfl
theorem node5935_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5935 live5935 coloured5935 = result5935 := by
  rw [tree5935_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5936_agree_conditional
    (child0 : tree5934 = literal5934)
    (child1 : tree5935 = literal5935) : tree5936 = literal5936 := by
  rw [tree5936_def, child0, child1]
  rfl
theorem node5936_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5934 live5934 coloured5934 = result5934)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5935 live5935 coloured5935 = result5935) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5936 live5936 coloured5936 = result5936 := by
  rw [tree5936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5934 coloured5934 at child
  try dsimp only [live5936, coloured5936]
  rw [child]
  dsimp only [result5934]
  have child := child1
  unfold live5935 coloured5935 at child
  try dsimp only [live5936, coloured5936]
  rw [child]
  dsimp only [result5935]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5937_agree_conditional : tree5937 = literal5937 := by
  rw [tree5937_def]
  rfl
theorem node5937_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5937 live5937 coloured5937 = result5937 := by
  rw [tree5937_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5938_agree_conditional
    (child0 : tree5936 = literal5936)
    (child1 : tree5937 = literal5937) : tree5938 = literal5938 := by
  rw [tree5938_def, child0, child1]
  rfl
theorem node5938_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5936 live5936 coloured5936 = result5936)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5937 live5937 coloured5937 = result5937) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5938 live5938 coloured5938 = result5938 := by
  rw [tree5938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5936 coloured5936 at child
  try dsimp only [live5938, coloured5938]
  rw [child]
  dsimp only [result5936]
  have child := child1
  unfold live5937 coloured5937 at child
  try dsimp only [live5938, coloured5938]
  rw [child]
  dsimp only [result5937]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5939_agree_conditional : tree5939 = literal5939 := by
  rw [tree5939_def]
  rfl
theorem node5939_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5939 live5939 coloured5939 = result5939 := by
  rw [tree5939_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5940_agree_conditional
    (child0 : tree5938 = literal5938)
    (child1 : tree5939 = literal5939) : tree5940 = literal5940 := by
  rw [tree5940_def, child0, child1]
  rfl
theorem node5940_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5938 live5938 coloured5938 = result5938)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5939 live5939 coloured5939 = result5939) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5940 live5940 coloured5940 = result5940 := by
  rw [tree5940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5938 coloured5938 at child
  try dsimp only [live5940, coloured5940]
  rw [child]
  dsimp only [result5938]
  have child := child1
  unfold live5939 coloured5939 at child
  try dsimp only [live5940, coloured5940]
  rw [child]
  dsimp only [result5939]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5941_agree_conditional : tree5941 = literal5941 := by
  rw [tree5941_def]
  rfl
theorem node5941_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5941 live5941 coloured5941 = result5941 := by
  rw [tree5941_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5942_agree_conditional
    (child0 : tree5940 = literal5940)
    (child1 : tree5941 = literal5941) : tree5942 = literal5942 := by
  rw [tree5942_def, child0, child1]
  rfl
theorem node5942_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5940 live5940 coloured5940 = result5940)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5941 live5941 coloured5941 = result5941) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5942 live5942 coloured5942 = result5942 := by
  rw [tree5942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5940 coloured5940 at child
  try dsimp only [live5942, coloured5942]
  rw [child]
  dsimp only [result5940]
  have child := child1
  unfold live5941 coloured5941 at child
  try dsimp only [live5942, coloured5942]
  rw [child]
  dsimp only [result5941]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5943_agree_conditional : tree5943 = literal5943 := by
  rw [tree5943_def]
  rfl
theorem node5943_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5943 live5943 coloured5943 = result5943 := by
  rw [tree5943_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5944_agree_conditional
    (child0 : tree5942 = literal5942)
    (child1 : tree5943 = literal5943) : tree5944 = literal5944 := by
  rw [tree5944_def, child0, child1]
  rfl
theorem node5944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5942 live5942 coloured5942 = result5942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5943 live5943 coloured5943 = result5943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5944 live5944 coloured5944 = result5944 := by
  rw [tree5944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5942 coloured5942 at child
  try dsimp only [live5944, coloured5944]
  rw [child]
  dsimp only [result5942]
  have child := child1
  unfold live5943 coloured5943 at child
  try dsimp only [live5944, coloured5944]
  rw [child]
  dsimp only [result5943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5945_agree_conditional : tree5945 = literal5945 := by
  rw [tree5945_def]
  rfl
theorem node5945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5945 live5945 coloured5945 = result5945 := by
  rw [tree5945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5946_agree_conditional
    (child0 : tree5944 = literal5944)
    (child1 : tree5945 = literal5945) : tree5946 = literal5946 := by
  rw [tree5946_def, child0, child1]
  rfl
theorem node5946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5944 live5944 coloured5944 = result5944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5945 live5945 coloured5945 = result5945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5946 live5946 coloured5946 = result5946 := by
  rw [tree5946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5944 coloured5944 at child
  try dsimp only [live5946, coloured5946]
  rw [child]
  dsimp only [result5944]
  have child := child1
  unfold live5945 coloured5945 at child
  try dsimp only [live5946, coloured5946]
  rw [child]
  dsimp only [result5945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5947_agree_conditional : tree5947 = literal5947 := by
  rw [tree5947_def]
  rfl
theorem node5947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5947 live5947 coloured5947 = result5947 := by
  rw [tree5947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5948_agree_conditional
    (child0 : tree5946 = literal5946)
    (child1 : tree5947 = literal5947) : tree5948 = literal5948 := by
  rw [tree5948_def, child0, child1]
  rfl
theorem node5948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5946 live5946 coloured5946 = result5946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5947 live5947 coloured5947 = result5947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5948 live5948 coloured5948 = result5948 := by
  rw [tree5948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5946 coloured5946 at child
  try dsimp only [live5948, coloured5948]
  rw [child]
  dsimp only [result5946]
  have child := child1
  unfold live5947 coloured5947 at child
  try dsimp only [live5948, coloured5948]
  rw [child]
  dsimp only [result5947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5949_agree_conditional : tree5949 = literal5949 := by
  rw [tree5949_def]
  rfl
theorem node5949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5949 live5949 coloured5949 = result5949 := by
  rw [tree5949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5950_agree_conditional
    (child0 : tree5948 = literal5948)
    (child1 : tree5949 = literal5949) : tree5950 = literal5950 := by
  rw [tree5950_def, child0, child1]
  rfl
theorem node5950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5948 live5948 coloured5948 = result5948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5949 live5949 coloured5949 = result5949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5950 live5950 coloured5950 = result5950 := by
  rw [tree5950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5948 coloured5948 at child
  try dsimp only [live5950, coloured5950]
  rw [child]
  dsimp only [result5948]
  have child := child1
  unfold live5949 coloured5949 at child
  try dsimp only [live5950, coloured5950]
  rw [child]
  dsimp only [result5949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5951_agree_conditional : tree5951 = literal5951 := by
  rw [tree5951_def]
  rfl
theorem node5951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5951 live5951 coloured5951 = result5951 := by
  rw [tree5951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
