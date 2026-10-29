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
theorem tree2880_agree_conditional
    (child0 : tree2878 = literal2878)
    (child1 : tree2879 = literal2879) : tree2880 = literal2880 := by
  rw [tree2880_def, child0, child1]
  rfl
theorem node2880_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2878 live2878 coloured2878 = result2878)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2879 live2879 coloured2879 = result2879) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2880 live2880 coloured2880 = result2880 := by
  rw [tree2880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2878 coloured2878 at child
  try dsimp only [live2880, coloured2880]
  rw [child]
  dsimp only [result2878]
  have child := child1
  unfold live2879 coloured2879 at child
  try dsimp only [live2880, coloured2880]
  rw [child]
  dsimp only [result2879]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2881_agree_conditional : tree2881 = literal2881 := by
  rw [tree2881_def]
  rfl
theorem node2881_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2881 live2881 coloured2881 = result2881 := by
  rw [tree2881_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2882_agree_conditional
    (child0 : tree2880 = literal2880)
    (child1 : tree2881 = literal2881) : tree2882 = literal2882 := by
  rw [tree2882_def, child0, child1]
  rfl
theorem node2882_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2880 live2880 coloured2880 = result2880)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2881 live2881 coloured2881 = result2881) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2882 live2882 coloured2882 = result2882 := by
  rw [tree2882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2880 coloured2880 at child
  try dsimp only [live2882, coloured2882]
  rw [child]
  dsimp only [result2880]
  have child := child1
  unfold live2881 coloured2881 at child
  try dsimp only [live2882, coloured2882]
  rw [child]
  dsimp only [result2881]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2883_agree_conditional : tree2883 = literal2883 := by
  rw [tree2883_def]
  rfl
theorem node2883_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2883 live2883 coloured2883 = result2883 := by
  rw [tree2883_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2884_agree_conditional
    (child0 : tree2882 = literal2882)
    (child1 : tree2883 = literal2883) : tree2884 = literal2884 := by
  rw [tree2884_def, child0, child1]
  rfl
theorem node2884_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2882 live2882 coloured2882 = result2882)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2883 live2883 coloured2883 = result2883) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2884 live2884 coloured2884 = result2884 := by
  rw [tree2884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2882 coloured2882 at child
  try dsimp only [live2884, coloured2884]
  rw [child]
  dsimp only [result2882]
  have child := child1
  unfold live2883 coloured2883 at child
  try dsimp only [live2884, coloured2884]
  rw [child]
  dsimp only [result2883]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2885_agree_conditional : tree2885 = literal2885 := by
  rw [tree2885_def]
  rfl
theorem node2885_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2885 live2885 coloured2885 = result2885 := by
  rw [tree2885_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2886_agree_conditional
    (child0 : tree2884 = literal2884)
    (child1 : tree2885 = literal2885) : tree2886 = literal2886 := by
  rw [tree2886_def, child0, child1]
  rfl
theorem node2886_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2884 live2884 coloured2884 = result2884)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2885 live2885 coloured2885 = result2885) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2886 live2886 coloured2886 = result2886 := by
  rw [tree2886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2884 coloured2884 at child
  try dsimp only [live2886, coloured2886]
  rw [child]
  dsimp only [result2884]
  have child := child1
  unfold live2885 coloured2885 at child
  try dsimp only [live2886, coloured2886]
  rw [child]
  dsimp only [result2885]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2887_agree_conditional : tree2887 = literal2887 := by
  rw [tree2887_def]
  rfl
theorem node2887_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2887 live2887 coloured2887 = result2887 := by
  rw [tree2887_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2888_agree_conditional
    (child0 : tree2886 = literal2886)
    (child1 : tree2887 = literal2887) : tree2888 = literal2888 := by
  rw [tree2888_def, child0, child1]
  rfl
theorem node2888_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2886 live2886 coloured2886 = result2886)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2887 live2887 coloured2887 = result2887) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2888 live2888 coloured2888 = result2888 := by
  rw [tree2888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2886 coloured2886 at child
  try dsimp only [live2888, coloured2888]
  rw [child]
  dsimp only [result2886]
  have child := child1
  unfold live2887 coloured2887 at child
  try dsimp only [live2888, coloured2888]
  rw [child]
  dsimp only [result2887]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2889_agree_conditional : tree2889 = literal2889 := by
  rw [tree2889_def]
  rfl
theorem node2889_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2889 live2889 coloured2889 = result2889 := by
  rw [tree2889_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2890_agree_conditional
    (child0 : tree2888 = literal2888)
    (child1 : tree2889 = literal2889) : tree2890 = literal2890 := by
  rw [tree2890_def, child0, child1]
  rfl
theorem node2890_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2888 live2888 coloured2888 = result2888)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2889 live2889 coloured2889 = result2889) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2890 live2890 coloured2890 = result2890 := by
  rw [tree2890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2888 coloured2888 at child
  try dsimp only [live2890, coloured2890]
  rw [child]
  dsimp only [result2888]
  have child := child1
  unfold live2889 coloured2889 at child
  try dsimp only [live2890, coloured2890]
  rw [child]
  dsimp only [result2889]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2891_agree_conditional : tree2891 = literal2891 := by
  rw [tree2891_def]
  rfl
theorem node2891_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2891 live2891 coloured2891 = result2891 := by
  rw [tree2891_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2892_agree_conditional
    (child0 : tree2890 = literal2890)
    (child1 : tree2891 = literal2891) : tree2892 = literal2892 := by
  rw [tree2892_def, child0, child1]
  rfl
theorem node2892_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2890 live2890 coloured2890 = result2890)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2891 live2891 coloured2891 = result2891) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2892 live2892 coloured2892 = result2892 := by
  rw [tree2892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2890 coloured2890 at child
  try dsimp only [live2892, coloured2892]
  rw [child]
  dsimp only [result2890]
  have child := child1
  unfold live2891 coloured2891 at child
  try dsimp only [live2892, coloured2892]
  rw [child]
  dsimp only [result2891]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2893_agree_conditional : tree2893 = literal2893 := by
  rw [tree2893_def]
  rfl
theorem node2893_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2893 live2893 coloured2893 = result2893 := by
  rw [tree2893_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2894_agree_conditional
    (child0 : tree2892 = literal2892)
    (child1 : tree2893 = literal2893) : tree2894 = literal2894 := by
  rw [tree2894_def, child0, child1]
  rfl
theorem node2894_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2892 live2892 coloured2892 = result2892)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2893 live2893 coloured2893 = result2893) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2894 live2894 coloured2894 = result2894 := by
  rw [tree2894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2892 coloured2892 at child
  try dsimp only [live2894, coloured2894]
  rw [child]
  dsimp only [result2892]
  have child := child1
  unfold live2893 coloured2893 at child
  try dsimp only [live2894, coloured2894]
  rw [child]
  dsimp only [result2893]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2895_agree_conditional : tree2895 = literal2895 := by
  rw [tree2895_def]
  rfl
theorem node2895_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2895 live2895 coloured2895 = result2895 := by
  rw [tree2895_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2896_agree_conditional
    (child0 : tree2894 = literal2894)
    (child1 : tree2895 = literal2895) : tree2896 = literal2896 := by
  rw [tree2896_def, child0, child1]
  rfl
theorem node2896_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2894 live2894 coloured2894 = result2894)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2895 live2895 coloured2895 = result2895) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2896 live2896 coloured2896 = result2896 := by
  rw [tree2896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2894 coloured2894 at child
  try dsimp only [live2896, coloured2896]
  rw [child]
  dsimp only [result2894]
  have child := child1
  unfold live2895 coloured2895 at child
  try dsimp only [live2896, coloured2896]
  rw [child]
  dsimp only [result2895]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2897_agree_conditional : tree2897 = literal2897 := by
  rw [tree2897_def]
  rfl
theorem node2897_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2897 live2897 coloured2897 = result2897 := by
  rw [tree2897_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2898_agree_conditional
    (child0 : tree2896 = literal2896)
    (child1 : tree2897 = literal2897) : tree2898 = literal2898 := by
  rw [tree2898_def, child0, child1]
  rfl
theorem node2898_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2896 live2896 coloured2896 = result2896)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2897 live2897 coloured2897 = result2897) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2898 live2898 coloured2898 = result2898 := by
  rw [tree2898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2896 coloured2896 at child
  try dsimp only [live2898, coloured2898]
  rw [child]
  dsimp only [result2896]
  have child := child1
  unfold live2897 coloured2897 at child
  try dsimp only [live2898, coloured2898]
  rw [child]
  dsimp only [result2897]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2899_agree_conditional : tree2899 = literal2899 := by
  rw [tree2899_def]
  rfl
theorem node2899_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2899 live2899 coloured2899 = result2899 := by
  rw [tree2899_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2900_agree_conditional
    (child0 : tree2898 = literal2898)
    (child1 : tree2899 = literal2899) : tree2900 = literal2900 := by
  rw [tree2900_def, child0, child1]
  rfl
theorem node2900_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2898 live2898 coloured2898 = result2898)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2899 live2899 coloured2899 = result2899) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2900 live2900 coloured2900 = result2900 := by
  rw [tree2900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2898 coloured2898 at child
  try dsimp only [live2900, coloured2900]
  rw [child]
  dsimp only [result2898]
  have child := child1
  unfold live2899 coloured2899 at child
  try dsimp only [live2900, coloured2900]
  rw [child]
  dsimp only [result2899]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2901_agree_conditional : tree2901 = literal2901 := by
  rw [tree2901_def]
  rfl
theorem node2901_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2901 live2901 coloured2901 = result2901 := by
  rw [tree2901_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2902_agree_conditional
    (child0 : tree2900 = literal2900)
    (child1 : tree2901 = literal2901) : tree2902 = literal2902 := by
  rw [tree2902_def, child0, child1]
  rfl
theorem node2902_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2900 live2900 coloured2900 = result2900)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2901 live2901 coloured2901 = result2901) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2902 live2902 coloured2902 = result2902 := by
  rw [tree2902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2900 coloured2900 at child
  try dsimp only [live2902, coloured2902]
  rw [child]
  dsimp only [result2900]
  have child := child1
  unfold live2901 coloured2901 at child
  try dsimp only [live2902, coloured2902]
  rw [child]
  dsimp only [result2901]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2903_agree_conditional : tree2903 = literal2903 := by
  rw [tree2903_def]
  rfl
theorem node2903_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2903 live2903 coloured2903 = result2903 := by
  rw [tree2903_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2904_agree_conditional
    (child0 : tree2902 = literal2902)
    (child1 : tree2903 = literal2903) : tree2904 = literal2904 := by
  rw [tree2904_def, child0, child1]
  rfl
theorem node2904_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2902 live2902 coloured2902 = result2902)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2903 live2903 coloured2903 = result2903) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2904 live2904 coloured2904 = result2904 := by
  rw [tree2904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2902 coloured2902 at child
  try dsimp only [live2904, coloured2904]
  rw [child]
  dsimp only [result2902]
  have child := child1
  unfold live2903 coloured2903 at child
  try dsimp only [live2904, coloured2904]
  rw [child]
  dsimp only [result2903]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2905_agree_conditional : tree2905 = literal2905 := by
  rw [tree2905_def]
  rfl
theorem node2905_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2905 live2905 coloured2905 = result2905 := by
  rw [tree2905_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2906_agree_conditional
    (child0 : tree2904 = literal2904)
    (child1 : tree2905 = literal2905) : tree2906 = literal2906 := by
  rw [tree2906_def, child0, child1]
  rfl
theorem node2906_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2904 live2904 coloured2904 = result2904)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2905 live2905 coloured2905 = result2905) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2906 live2906 coloured2906 = result2906 := by
  rw [tree2906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2904 coloured2904 at child
  try dsimp only [live2906, coloured2906]
  rw [child]
  dsimp only [result2904]
  have child := child1
  unfold live2905 coloured2905 at child
  try dsimp only [live2906, coloured2906]
  rw [child]
  dsimp only [result2905]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2907_agree_conditional : tree2907 = literal2907 := by
  rw [tree2907_def]
  rfl
theorem node2907_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2907 live2907 coloured2907 = result2907 := by
  rw [tree2907_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2908_agree_conditional
    (child0 : tree2906 = literal2906)
    (child1 : tree2907 = literal2907) : tree2908 = literal2908 := by
  rw [tree2908_def, child0, child1]
  rfl
theorem node2908_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2906 live2906 coloured2906 = result2906)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2907 live2907 coloured2907 = result2907) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2908 live2908 coloured2908 = result2908 := by
  rw [tree2908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2906 coloured2906 at child
  try dsimp only [live2908, coloured2908]
  rw [child]
  dsimp only [result2906]
  have child := child1
  unfold live2907 coloured2907 at child
  try dsimp only [live2908, coloured2908]
  rw [child]
  dsimp only [result2907]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2909_agree_conditional : tree2909 = literal2909 := by
  rw [tree2909_def]
  rfl
theorem node2909_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2909 live2909 coloured2909 = result2909 := by
  rw [tree2909_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2910_agree_conditional
    (child0 : tree2908 = literal2908)
    (child1 : tree2909 = literal2909) : tree2910 = literal2910 := by
  rw [tree2910_def, child0, child1]
  rfl
theorem node2910_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2908 live2908 coloured2908 = result2908)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2909 live2909 coloured2909 = result2909) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2910 live2910 coloured2910 = result2910 := by
  rw [tree2910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2908 coloured2908 at child
  try dsimp only [live2910, coloured2910]
  rw [child]
  dsimp only [result2908]
  have child := child1
  unfold live2909 coloured2909 at child
  try dsimp only [live2910, coloured2910]
  rw [child]
  dsimp only [result2909]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2911_agree_conditional : tree2911 = literal2911 := by
  rw [tree2911_def]
  rfl
theorem node2911_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2911 live2911 coloured2911 = result2911 := by
  rw [tree2911_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2912_agree_conditional
    (child0 : tree2910 = literal2910)
    (child1 : tree2911 = literal2911) : tree2912 = literal2912 := by
  rw [tree2912_def, child0, child1]
  rfl
theorem node2912_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2910 live2910 coloured2910 = result2910)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2911 live2911 coloured2911 = result2911) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2912 live2912 coloured2912 = result2912 := by
  rw [tree2912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2910 coloured2910 at child
  try dsimp only [live2912, coloured2912]
  rw [child]
  dsimp only [result2910]
  have child := child1
  unfold live2911 coloured2911 at child
  try dsimp only [live2912, coloured2912]
  rw [child]
  dsimp only [result2911]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2913_agree_conditional : tree2913 = literal2913 := by
  rw [tree2913_def]
  rfl
theorem node2913_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2913 live2913 coloured2913 = result2913 := by
  rw [tree2913_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2914_agree_conditional
    (child0 : tree2912 = literal2912)
    (child1 : tree2913 = literal2913) : tree2914 = literal2914 := by
  rw [tree2914_def, child0, child1]
  rfl
theorem node2914_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2912 live2912 coloured2912 = result2912)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2913 live2913 coloured2913 = result2913) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2914 live2914 coloured2914 = result2914 := by
  rw [tree2914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2912 coloured2912 at child
  try dsimp only [live2914, coloured2914]
  rw [child]
  dsimp only [result2912]
  have child := child1
  unfold live2913 coloured2913 at child
  try dsimp only [live2914, coloured2914]
  rw [child]
  dsimp only [result2913]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2915_agree_conditional : tree2915 = literal2915 := by
  rw [tree2915_def]
  rfl
theorem node2915_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2915 live2915 coloured2915 = result2915 := by
  rw [tree2915_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2916_agree_conditional
    (child0 : tree2914 = literal2914)
    (child1 : tree2915 = literal2915) : tree2916 = literal2916 := by
  rw [tree2916_def, child0, child1]
  rfl
theorem node2916_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2914 live2914 coloured2914 = result2914)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2915 live2915 coloured2915 = result2915) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2916 live2916 coloured2916 = result2916 := by
  rw [tree2916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2914 coloured2914 at child
  try dsimp only [live2916, coloured2916]
  rw [child]
  dsimp only [result2914]
  have child := child1
  unfold live2915 coloured2915 at child
  try dsimp only [live2916, coloured2916]
  rw [child]
  dsimp only [result2915]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2917_agree_conditional : tree2917 = literal2917 := by
  rw [tree2917_def]
  rfl
theorem node2917_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2917 live2917 coloured2917 = result2917 := by
  rw [tree2917_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2918_agree_conditional
    (child0 : tree2916 = literal2916)
    (child1 : tree2917 = literal2917) : tree2918 = literal2918 := by
  rw [tree2918_def, child0, child1]
  rfl
theorem node2918_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2916 live2916 coloured2916 = result2916)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2917 live2917 coloured2917 = result2917) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2918 live2918 coloured2918 = result2918 := by
  rw [tree2918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2916 coloured2916 at child
  try dsimp only [live2918, coloured2918]
  rw [child]
  dsimp only [result2916]
  have child := child1
  unfold live2917 coloured2917 at child
  try dsimp only [live2918, coloured2918]
  rw [child]
  dsimp only [result2917]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2919_agree_conditional : tree2919 = literal2919 := by
  rw [tree2919_def]
  rfl
theorem node2919_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2919 live2919 coloured2919 = result2919 := by
  rw [tree2919_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2920_agree_conditional
    (child0 : tree2918 = literal2918)
    (child1 : tree2919 = literal2919) : tree2920 = literal2920 := by
  rw [tree2920_def, child0, child1]
  rfl
theorem node2920_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2918 live2918 coloured2918 = result2918)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2919 live2919 coloured2919 = result2919) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2920 live2920 coloured2920 = result2920 := by
  rw [tree2920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2918 coloured2918 at child
  try dsimp only [live2920, coloured2920]
  rw [child]
  dsimp only [result2918]
  have child := child1
  unfold live2919 coloured2919 at child
  try dsimp only [live2920, coloured2920]
  rw [child]
  dsimp only [result2919]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2921_agree_conditional : tree2921 = literal2921 := by
  rw [tree2921_def]
  rfl
theorem node2921_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2921 live2921 coloured2921 = result2921 := by
  rw [tree2921_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2922_agree_conditional
    (child0 : tree2920 = literal2920)
    (child1 : tree2921 = literal2921) : tree2922 = literal2922 := by
  rw [tree2922_def, child0, child1]
  rfl
theorem node2922_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2920 live2920 coloured2920 = result2920)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2921 live2921 coloured2921 = result2921) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2922 live2922 coloured2922 = result2922 := by
  rw [tree2922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2920 coloured2920 at child
  try dsimp only [live2922, coloured2922]
  rw [child]
  dsimp only [result2920]
  have child := child1
  unfold live2921 coloured2921 at child
  try dsimp only [live2922, coloured2922]
  rw [child]
  dsimp only [result2921]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2923_agree_conditional : tree2923 = literal2923 := by
  rw [tree2923_def]
  rfl
theorem node2923_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2923 live2923 coloured2923 = result2923 := by
  rw [tree2923_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2924_agree_conditional
    (child0 : tree2922 = literal2922)
    (child1 : tree2923 = literal2923) : tree2924 = literal2924 := by
  rw [tree2924_def, child0, child1]
  rfl
theorem node2924_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2922 live2922 coloured2922 = result2922)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2923 live2923 coloured2923 = result2923) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2924 live2924 coloured2924 = result2924 := by
  rw [tree2924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2922 coloured2922 at child
  try dsimp only [live2924, coloured2924]
  rw [child]
  dsimp only [result2922]
  have child := child1
  unfold live2923 coloured2923 at child
  try dsimp only [live2924, coloured2924]
  rw [child]
  dsimp only [result2923]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2925_agree_conditional : tree2925 = literal2925 := by
  rw [tree2925_def]
  rfl
theorem node2925_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2925 live2925 coloured2925 = result2925 := by
  rw [tree2925_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2926_agree_conditional
    (child0 : tree2924 = literal2924)
    (child1 : tree2925 = literal2925) : tree2926 = literal2926 := by
  rw [tree2926_def, child0, child1]
  rfl
theorem node2926_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2924 live2924 coloured2924 = result2924)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2925 live2925 coloured2925 = result2925) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2926 live2926 coloured2926 = result2926 := by
  rw [tree2926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2924 coloured2924 at child
  try dsimp only [live2926, coloured2926]
  rw [child]
  dsimp only [result2924]
  have child := child1
  unfold live2925 coloured2925 at child
  try dsimp only [live2926, coloured2926]
  rw [child]
  dsimp only [result2925]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2927_agree_conditional : tree2927 = literal2927 := by
  rw [tree2927_def]
  rfl
theorem node2927_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2927 live2927 coloured2927 = result2927 := by
  rw [tree2927_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2928_agree_conditional
    (child0 : tree2926 = literal2926)
    (child1 : tree2927 = literal2927) : tree2928 = literal2928 := by
  rw [tree2928_def, child0, child1]
  rfl
theorem node2928_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2926 live2926 coloured2926 = result2926)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2927 live2927 coloured2927 = result2927) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2928 live2928 coloured2928 = result2928 := by
  rw [tree2928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2926 coloured2926 at child
  try dsimp only [live2928, coloured2928]
  rw [child]
  dsimp only [result2926]
  have child := child1
  unfold live2927 coloured2927 at child
  try dsimp only [live2928, coloured2928]
  rw [child]
  dsimp only [result2927]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2929_agree_conditional : tree2929 = literal2929 := by
  rw [tree2929_def]
  rfl
theorem node2929_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2929 live2929 coloured2929 = result2929 := by
  rw [tree2929_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2930_agree_conditional
    (child0 : tree2928 = literal2928)
    (child1 : tree2929 = literal2929) : tree2930 = literal2930 := by
  rw [tree2930_def, child0, child1]
  rfl
theorem node2930_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2928 live2928 coloured2928 = result2928)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2929 live2929 coloured2929 = result2929) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2930 live2930 coloured2930 = result2930 := by
  rw [tree2930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2928 coloured2928 at child
  try dsimp only [live2930, coloured2930]
  rw [child]
  dsimp only [result2928]
  have child := child1
  unfold live2929 coloured2929 at child
  try dsimp only [live2930, coloured2930]
  rw [child]
  dsimp only [result2929]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2931_agree_conditional : tree2931 = literal2931 := by
  rw [tree2931_def]
  rfl
theorem node2931_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2931 live2931 coloured2931 = result2931 := by
  rw [tree2931_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2932_agree_conditional
    (child0 : tree2930 = literal2930)
    (child1 : tree2931 = literal2931) : tree2932 = literal2932 := by
  rw [tree2932_def, child0, child1]
  rfl
theorem node2932_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2930 live2930 coloured2930 = result2930)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2931 live2931 coloured2931 = result2931) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2932 live2932 coloured2932 = result2932 := by
  rw [tree2932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2930 coloured2930 at child
  try dsimp only [live2932, coloured2932]
  rw [child]
  dsimp only [result2930]
  have child := child1
  unfold live2931 coloured2931 at child
  try dsimp only [live2932, coloured2932]
  rw [child]
  dsimp only [result2931]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2933_agree_conditional : tree2933 = literal2933 := by
  rw [tree2933_def]
  rfl
theorem node2933_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2933 live2933 coloured2933 = result2933 := by
  rw [tree2933_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2934_agree_conditional
    (child0 : tree2932 = literal2932)
    (child1 : tree2933 = literal2933) : tree2934 = literal2934 := by
  rw [tree2934_def, child0, child1]
  rfl
theorem node2934_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2932 live2932 coloured2932 = result2932)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2933 live2933 coloured2933 = result2933) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2934 live2934 coloured2934 = result2934 := by
  rw [tree2934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2932 coloured2932 at child
  try dsimp only [live2934, coloured2934]
  rw [child]
  dsimp only [result2932]
  have child := child1
  unfold live2933 coloured2933 at child
  try dsimp only [live2934, coloured2934]
  rw [child]
  dsimp only [result2933]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2935_agree_conditional : tree2935 = literal2935 := by
  rw [tree2935_def]
  rfl
theorem node2935_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2935 live2935 coloured2935 = result2935 := by
  rw [tree2935_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2936_agree_conditional
    (child0 : tree2934 = literal2934)
    (child1 : tree2935 = literal2935) : tree2936 = literal2936 := by
  rw [tree2936_def, child0, child1]
  rfl
theorem node2936_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2934 live2934 coloured2934 = result2934)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2935 live2935 coloured2935 = result2935) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2936 live2936 coloured2936 = result2936 := by
  rw [tree2936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2934 coloured2934 at child
  try dsimp only [live2936, coloured2936]
  rw [child]
  dsimp only [result2934]
  have child := child1
  unfold live2935 coloured2935 at child
  try dsimp only [live2936, coloured2936]
  rw [child]
  dsimp only [result2935]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2937_agree_conditional : tree2937 = literal2937 := by
  rw [tree2937_def]
  rfl
theorem node2937_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2937 live2937 coloured2937 = result2937 := by
  rw [tree2937_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2938_agree_conditional
    (child0 : tree2936 = literal2936)
    (child1 : tree2937 = literal2937) : tree2938 = literal2938 := by
  rw [tree2938_def, child0, child1]
  rfl
theorem node2938_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2936 live2936 coloured2936 = result2936)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2937 live2937 coloured2937 = result2937) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2938 live2938 coloured2938 = result2938 := by
  rw [tree2938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2936 coloured2936 at child
  try dsimp only [live2938, coloured2938]
  rw [child]
  dsimp only [result2936]
  have child := child1
  unfold live2937 coloured2937 at child
  try dsimp only [live2938, coloured2938]
  rw [child]
  dsimp only [result2937]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2939_agree_conditional : tree2939 = literal2939 := by
  rw [tree2939_def]
  rfl
theorem node2939_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2939 live2939 coloured2939 = result2939 := by
  rw [tree2939_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2940_agree_conditional
    (child0 : tree2938 = literal2938)
    (child1 : tree2939 = literal2939) : tree2940 = literal2940 := by
  rw [tree2940_def, child0, child1]
  rfl
theorem node2940_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2938 live2938 coloured2938 = result2938)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2939 live2939 coloured2939 = result2939) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2940 live2940 coloured2940 = result2940 := by
  rw [tree2940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2938 coloured2938 at child
  try dsimp only [live2940, coloured2940]
  rw [child]
  dsimp only [result2938]
  have child := child1
  unfold live2939 coloured2939 at child
  try dsimp only [live2940, coloured2940]
  rw [child]
  dsimp only [result2939]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2941_agree_conditional : tree2941 = literal2941 := by
  rw [tree2941_def]
  rfl
theorem node2941_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2941 live2941 coloured2941 = result2941 := by
  rw [tree2941_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2942_agree_conditional
    (child0 : tree2940 = literal2940)
    (child1 : tree2941 = literal2941) : tree2942 = literal2942 := by
  rw [tree2942_def, child0, child1]
  rfl
theorem node2942_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2940 live2940 coloured2940 = result2940)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2941 live2941 coloured2941 = result2941) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2942 live2942 coloured2942 = result2942 := by
  rw [tree2942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2940 coloured2940 at child
  try dsimp only [live2942, coloured2942]
  rw [child]
  dsimp only [result2940]
  have child := child1
  unfold live2941 coloured2941 at child
  try dsimp only [live2942, coloured2942]
  rw [child]
  dsimp only [result2941]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2943_agree_conditional : tree2943 = literal2943 := by
  rw [tree2943_def]
  rfl
theorem node2943_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2943 live2943 coloured2943 = result2943 := by
  rw [tree2943_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2944_agree_conditional
    (child0 : tree2942 = literal2942)
    (child1 : tree2943 = literal2943) : tree2944 = literal2944 := by
  rw [tree2944_def, child0, child1]
  rfl
theorem node2944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2942 live2942 coloured2942 = result2942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2943 live2943 coloured2943 = result2943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2944 live2944 coloured2944 = result2944 := by
  rw [tree2944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2942 coloured2942 at child
  try dsimp only [live2944, coloured2944]
  rw [child]
  dsimp only [result2942]
  have child := child1
  unfold live2943 coloured2943 at child
  try dsimp only [live2944, coloured2944]
  rw [child]
  dsimp only [result2943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2945_agree_conditional : tree2945 = literal2945 := by
  rw [tree2945_def]
  rfl
theorem node2945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2945 live2945 coloured2945 = result2945 := by
  rw [tree2945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2946_agree_conditional
    (child0 : tree2944 = literal2944)
    (child1 : tree2945 = literal2945) : tree2946 = literal2946 := by
  rw [tree2946_def, child0, child1]
  rfl
theorem node2946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2944 live2944 coloured2944 = result2944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2945 live2945 coloured2945 = result2945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2946 live2946 coloured2946 = result2946 := by
  rw [tree2946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2944 coloured2944 at child
  try dsimp only [live2946, coloured2946]
  rw [child]
  dsimp only [result2944]
  have child := child1
  unfold live2945 coloured2945 at child
  try dsimp only [live2946, coloured2946]
  rw [child]
  dsimp only [result2945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2947_agree_conditional : tree2947 = literal2947 := by
  rw [tree2947_def]
  rfl
theorem node2947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2947 live2947 coloured2947 = result2947 := by
  rw [tree2947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2948_agree_conditional
    (child0 : tree2946 = literal2946)
    (child1 : tree2947 = literal2947) : tree2948 = literal2948 := by
  rw [tree2948_def, child0, child1]
  rfl
theorem node2948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2946 live2946 coloured2946 = result2946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2947 live2947 coloured2947 = result2947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2948 live2948 coloured2948 = result2948 := by
  rw [tree2948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2946 coloured2946 at child
  try dsimp only [live2948, coloured2948]
  rw [child]
  dsimp only [result2946]
  have child := child1
  unfold live2947 coloured2947 at child
  try dsimp only [live2948, coloured2948]
  rw [child]
  dsimp only [result2947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2949_agree_conditional : tree2949 = literal2949 := by
  rw [tree2949_def]
  rfl
theorem node2949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2949 live2949 coloured2949 = result2949 := by
  rw [tree2949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2950_agree_conditional
    (child0 : tree2948 = literal2948)
    (child1 : tree2949 = literal2949) : tree2950 = literal2950 := by
  rw [tree2950_def, child0, child1]
  rfl
theorem node2950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2948 live2948 coloured2948 = result2948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2949 live2949 coloured2949 = result2949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2950 live2950 coloured2950 = result2950 := by
  rw [tree2950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2948 coloured2948 at child
  try dsimp only [live2950, coloured2950]
  rw [child]
  dsimp only [result2948]
  have child := child1
  unfold live2949 coloured2949 at child
  try dsimp only [live2950, coloured2950]
  rw [child]
  dsimp only [result2949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2951_agree_conditional : tree2951 = literal2951 := by
  rw [tree2951_def]
  rfl
theorem node2951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2951 live2951 coloured2951 = result2951 := by
  rw [tree2951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2952_agree_conditional
    (child0 : tree2950 = literal2950)
    (child1 : tree2951 = literal2951) : tree2952 = literal2952 := by
  rw [tree2952_def, child0, child1]
  rfl
theorem node2952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2950 live2950 coloured2950 = result2950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2951 live2951 coloured2951 = result2951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2952 live2952 coloured2952 = result2952 := by
  rw [tree2952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2950 coloured2950 at child
  try dsimp only [live2952, coloured2952]
  rw [child]
  dsimp only [result2950]
  have child := child1
  unfold live2951 coloured2951 at child
  try dsimp only [live2952, coloured2952]
  rw [child]
  dsimp only [result2951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2953_agree_conditional : tree2953 = literal2953 := by
  rw [tree2953_def]
  rfl
theorem node2953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2953 live2953 coloured2953 = result2953 := by
  rw [tree2953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2954_agree_conditional
    (child0 : tree2952 = literal2952)
    (child1 : tree2953 = literal2953) : tree2954 = literal2954 := by
  rw [tree2954_def, child0, child1]
  rfl
theorem node2954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2952 live2952 coloured2952 = result2952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2953 live2953 coloured2953 = result2953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2954 live2954 coloured2954 = result2954 := by
  rw [tree2954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2952 coloured2952 at child
  try dsimp only [live2954, coloured2954]
  rw [child]
  dsimp only [result2952]
  have child := child1
  unfold live2953 coloured2953 at child
  try dsimp only [live2954, coloured2954]
  rw [child]
  dsimp only [result2953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2955_agree_conditional : tree2955 = literal2955 := by
  rw [tree2955_def]
  rfl
theorem node2955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2955 live2955 coloured2955 = result2955 := by
  rw [tree2955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2956_agree_conditional
    (child0 : tree2954 = literal2954)
    (child1 : tree2955 = literal2955) : tree2956 = literal2956 := by
  rw [tree2956_def, child0, child1]
  rfl
theorem node2956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2954 live2954 coloured2954 = result2954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2955 live2955 coloured2955 = result2955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2956 live2956 coloured2956 = result2956 := by
  rw [tree2956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2954 coloured2954 at child
  try dsimp only [live2956, coloured2956]
  rw [child]
  dsimp only [result2954]
  have child := child1
  unfold live2955 coloured2955 at child
  try dsimp only [live2956, coloured2956]
  rw [child]
  dsimp only [result2955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2957_agree_conditional : tree2957 = literal2957 := by
  rw [tree2957_def]
  rfl
theorem node2957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2957 live2957 coloured2957 = result2957 := by
  rw [tree2957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2958_agree_conditional
    (child0 : tree2956 = literal2956)
    (child1 : tree2957 = literal2957) : tree2958 = literal2958 := by
  rw [tree2958_def, child0, child1]
  rfl
theorem node2958_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2956 live2956 coloured2956 = result2956)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2957 live2957 coloured2957 = result2957) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2958 live2958 coloured2958 = result2958 := by
  rw [tree2958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2956 coloured2956 at child
  try dsimp only [live2958, coloured2958]
  rw [child]
  dsimp only [result2956]
  have child := child1
  unfold live2957 coloured2957 at child
  try dsimp only [live2958, coloured2958]
  rw [child]
  dsimp only [result2957]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2959_agree_conditional : tree2959 = literal2959 := by
  rw [tree2959_def]
  rfl
theorem node2959_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2959 live2959 coloured2959 = result2959 := by
  rw [tree2959_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2960_agree_conditional
    (child0 : tree2958 = literal2958)
    (child1 : tree2959 = literal2959) : tree2960 = literal2960 := by
  rw [tree2960_def, child0, child1]
  rfl
theorem node2960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2958 live2958 coloured2958 = result2958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2959 live2959 coloured2959 = result2959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2960 live2960 coloured2960 = result2960 := by
  rw [tree2960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2958 coloured2958 at child
  try dsimp only [live2960, coloured2960]
  rw [child]
  dsimp only [result2958]
  have child := child1
  unfold live2959 coloured2959 at child
  try dsimp only [live2960, coloured2960]
  rw [child]
  dsimp only [result2959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2961_agree_conditional : tree2961 = literal2961 := by
  rw [tree2961_def]
  rfl
theorem node2961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2961 live2961 coloured2961 = result2961 := by
  rw [tree2961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2962_agree_conditional
    (child0 : tree2960 = literal2960)
    (child1 : tree2961 = literal2961) : tree2962 = literal2962 := by
  rw [tree2962_def, child0, child1]
  rfl
theorem node2962_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2960 live2960 coloured2960 = result2960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2961 live2961 coloured2961 = result2961) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2962 live2962 coloured2962 = result2962 := by
  rw [tree2962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2960 coloured2960 at child
  try dsimp only [live2962, coloured2962]
  rw [child]
  dsimp only [result2960]
  have child := child1
  unfold live2961 coloured2961 at child
  try dsimp only [live2962, coloured2962]
  rw [child]
  dsimp only [result2961]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2963_agree_conditional : tree2963 = literal2963 := by
  rw [tree2963_def]
  rfl
theorem node2963_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2963 live2963 coloured2963 = result2963 := by
  rw [tree2963_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2964_agree_conditional
    (child0 : tree2962 = literal2962)
    (child1 : tree2963 = literal2963) : tree2964 = literal2964 := by
  rw [tree2964_def, child0, child1]
  rfl
theorem node2964_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2962 live2962 coloured2962 = result2962)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2963 live2963 coloured2963 = result2963) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2964 live2964 coloured2964 = result2964 := by
  rw [tree2964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2962 coloured2962 at child
  try dsimp only [live2964, coloured2964]
  rw [child]
  dsimp only [result2962]
  have child := child1
  unfold live2963 coloured2963 at child
  try dsimp only [live2964, coloured2964]
  rw [child]
  dsimp only [result2963]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2965_agree_conditional : tree2965 = literal2965 := by
  rw [tree2965_def]
  rfl
theorem node2965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2965 live2965 coloured2965 = result2965 := by
  rw [tree2965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2966_agree_conditional
    (child0 : tree2964 = literal2964)
    (child1 : tree2965 = literal2965) : tree2966 = literal2966 := by
  rw [tree2966_def, child0, child1]
  rfl
theorem node2966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2964 live2964 coloured2964 = result2964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2965 live2965 coloured2965 = result2965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2966 live2966 coloured2966 = result2966 := by
  rw [tree2966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2964 coloured2964 at child
  try dsimp only [live2966, coloured2966]
  rw [child]
  dsimp only [result2964]
  have child := child1
  unfold live2965 coloured2965 at child
  try dsimp only [live2966, coloured2966]
  rw [child]
  dsimp only [result2965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2967_agree_conditional : tree2967 = literal2967 := by
  rw [tree2967_def]
  rfl
theorem node2967_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2967 live2967 coloured2967 = result2967 := by
  rw [tree2967_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2968_agree_conditional
    (child0 : tree2966 = literal2966)
    (child1 : tree2967 = literal2967) : tree2968 = literal2968 := by
  rw [tree2968_def, child0, child1]
  rfl
theorem node2968_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2966 live2966 coloured2966 = result2966)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2967 live2967 coloured2967 = result2967) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2968 live2968 coloured2968 = result2968 := by
  rw [tree2968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2966 coloured2966 at child
  try dsimp only [live2968, coloured2968]
  rw [child]
  dsimp only [result2966]
  have child := child1
  unfold live2967 coloured2967 at child
  try dsimp only [live2968, coloured2968]
  rw [child]
  dsimp only [result2967]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2969_agree_conditional : tree2969 = literal2969 := by
  rw [tree2969_def]
  rfl
theorem node2969_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2969 live2969 coloured2969 = result2969 := by
  rw [tree2969_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2970_agree_conditional
    (child0 : tree2968 = literal2968)
    (child1 : tree2969 = literal2969) : tree2970 = literal2970 := by
  rw [tree2970_def, child0, child1]
  rfl
theorem node2970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2968 live2968 coloured2968 = result2968)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2969 live2969 coloured2969 = result2969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2970 live2970 coloured2970 = result2970 := by
  rw [tree2970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2968 coloured2968 at child
  try dsimp only [live2970, coloured2970]
  rw [child]
  dsimp only [result2968]
  have child := child1
  unfold live2969 coloured2969 at child
  try dsimp only [live2970, coloured2970]
  rw [child]
  dsimp only [result2969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2971_agree_conditional : tree2971 = literal2971 := by
  rw [tree2971_def]
  rfl
theorem node2971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2971 live2971 coloured2971 = result2971 := by
  rw [tree2971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2972_agree_conditional
    (child0 : tree2970 = literal2970)
    (child1 : tree2971 = literal2971) : tree2972 = literal2972 := by
  rw [tree2972_def, child0, child1]
  rfl
theorem node2972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2970 live2970 coloured2970 = result2970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2971 live2971 coloured2971 = result2971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2972 live2972 coloured2972 = result2972 := by
  rw [tree2972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2970 coloured2970 at child
  try dsimp only [live2972, coloured2972]
  rw [child]
  dsimp only [result2970]
  have child := child1
  unfold live2971 coloured2971 at child
  try dsimp only [live2972, coloured2972]
  rw [child]
  dsimp only [result2971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2973_agree_conditional : tree2973 = literal2973 := by
  rw [tree2973_def]
  rfl
theorem node2973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2973 live2973 coloured2973 = result2973 := by
  rw [tree2973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2974_agree_conditional
    (child0 : tree2972 = literal2972)
    (child1 : tree2973 = literal2973) : tree2974 = literal2974 := by
  rw [tree2974_def, child0, child1]
  rfl
theorem node2974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2972 live2972 coloured2972 = result2972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2973 live2973 coloured2973 = result2973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2974 live2974 coloured2974 = result2974 := by
  rw [tree2974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2972 coloured2972 at child
  try dsimp only [live2974, coloured2974]
  rw [child]
  dsimp only [result2972]
  have child := child1
  unfold live2973 coloured2973 at child
  try dsimp only [live2974, coloured2974]
  rw [child]
  dsimp only [result2973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2975_agree_conditional : tree2975 = literal2975 := by
  rw [tree2975_def]
  rfl
theorem node2975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2975 live2975 coloured2975 = result2975 := by
  rw [tree2975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
