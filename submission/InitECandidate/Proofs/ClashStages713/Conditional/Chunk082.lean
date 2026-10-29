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
theorem tree7872_agree_conditional
    (child0 : tree7870 = literal7870)
    (child1 : tree7871 = literal7871) : tree7872 = literal7872 := by
  rw [tree7872_def, child0, child1]
  rfl
theorem node7872_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7870 live7870 coloured7870 = result7870)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7871 live7871 coloured7871 = result7871) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7872 live7872 coloured7872 = result7872 := by
  rw [tree7872_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7870 coloured7870 at child
  try dsimp only [live7872, coloured7872]
  rw [child]
  dsimp only [result7870]
  have child := child1
  unfold live7871 coloured7871 at child
  try dsimp only [live7872, coloured7872]
  rw [child]
  dsimp only [result7871]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7873_agree_conditional : tree7873 = literal7873 := by
  rw [tree7873_def]
  rfl
theorem node7873_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7873 live7873 coloured7873 = result7873 := by
  rw [tree7873_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7874_agree_conditional
    (child0 : tree7872 = literal7872)
    (child1 : tree7873 = literal7873) : tree7874 = literal7874 := by
  rw [tree7874_def, child0, child1]
  rfl
theorem node7874_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7872 live7872 coloured7872 = result7872)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7873 live7873 coloured7873 = result7873) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7874 live7874 coloured7874 = result7874 := by
  rw [tree7874_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7872 coloured7872 at child
  try dsimp only [live7874, coloured7874]
  rw [child]
  dsimp only [result7872]
  have child := child1
  unfold live7873 coloured7873 at child
  try dsimp only [live7874, coloured7874]
  rw [child]
  dsimp only [result7873]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7875_agree_conditional : tree7875 = literal7875 := by
  rw [tree7875_def]
  rfl
theorem node7875_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7875 live7875 coloured7875 = result7875 := by
  rw [tree7875_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7876_agree_conditional
    (child0 : tree7874 = literal7874)
    (child1 : tree7875 = literal7875) : tree7876 = literal7876 := by
  rw [tree7876_def, child0, child1]
  rfl
theorem node7876_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7874 live7874 coloured7874 = result7874)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7875 live7875 coloured7875 = result7875) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7876 live7876 coloured7876 = result7876 := by
  rw [tree7876_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7874 coloured7874 at child
  try dsimp only [live7876, coloured7876]
  rw [child]
  dsimp only [result7874]
  have child := child1
  unfold live7875 coloured7875 at child
  try dsimp only [live7876, coloured7876]
  rw [child]
  dsimp only [result7875]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7877_agree_conditional : tree7877 = literal7877 := by
  rw [tree7877_def]
  rfl
theorem node7877_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7877 live7877 coloured7877 = result7877 := by
  rw [tree7877_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7878_agree_conditional
    (child0 : tree7876 = literal7876)
    (child1 : tree7877 = literal7877) : tree7878 = literal7878 := by
  rw [tree7878_def, child0, child1]
  rfl
theorem node7878_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7876 live7876 coloured7876 = result7876)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7877 live7877 coloured7877 = result7877) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7878 live7878 coloured7878 = result7878 := by
  rw [tree7878_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7876 coloured7876 at child
  try dsimp only [live7878, coloured7878]
  rw [child]
  dsimp only [result7876]
  have child := child1
  unfold live7877 coloured7877 at child
  try dsimp only [live7878, coloured7878]
  rw [child]
  dsimp only [result7877]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7879_agree_conditional : tree7879 = literal7879 := by
  rw [tree7879_def]
  rfl
theorem node7879_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7879 live7879 coloured7879 = result7879 := by
  rw [tree7879_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7880_agree_conditional
    (child0 : tree7878 = literal7878)
    (child1 : tree7879 = literal7879) : tree7880 = literal7880 := by
  rw [tree7880_def, child0, child1]
  rfl
theorem node7880_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7878 live7878 coloured7878 = result7878)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7879 live7879 coloured7879 = result7879) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7880 live7880 coloured7880 = result7880 := by
  rw [tree7880_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7878 coloured7878 at child
  try dsimp only [live7880, coloured7880]
  rw [child]
  dsimp only [result7878]
  have child := child1
  unfold live7879 coloured7879 at child
  try dsimp only [live7880, coloured7880]
  rw [child]
  dsimp only [result7879]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7881_agree_conditional : tree7881 = literal7881 := by
  rw [tree7881_def]
  rfl
theorem node7881_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7881 live7881 coloured7881 = result7881 := by
  rw [tree7881_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7882_agree_conditional
    (child0 : tree7880 = literal7880)
    (child1 : tree7881 = literal7881) : tree7882 = literal7882 := by
  rw [tree7882_def, child0, child1]
  rfl
theorem node7882_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7880 live7880 coloured7880 = result7880)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7881 live7881 coloured7881 = result7881) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7882 live7882 coloured7882 = result7882 := by
  rw [tree7882_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7880 coloured7880 at child
  try dsimp only [live7882, coloured7882]
  rw [child]
  dsimp only [result7880]
  have child := child1
  unfold live7881 coloured7881 at child
  try dsimp only [live7882, coloured7882]
  rw [child]
  dsimp only [result7881]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7883_agree_conditional : tree7883 = literal7883 := by
  rw [tree7883_def]
  rfl
theorem node7883_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7883 live7883 coloured7883 = result7883 := by
  rw [tree7883_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7884_agree_conditional
    (child0 : tree7882 = literal7882)
    (child1 : tree7883 = literal7883) : tree7884 = literal7884 := by
  rw [tree7884_def, child0, child1]
  rfl
theorem node7884_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7882 live7882 coloured7882 = result7882)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7883 live7883 coloured7883 = result7883) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7884 live7884 coloured7884 = result7884 := by
  rw [tree7884_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7882 coloured7882 at child
  try dsimp only [live7884, coloured7884]
  rw [child]
  dsimp only [result7882]
  have child := child1
  unfold live7883 coloured7883 at child
  try dsimp only [live7884, coloured7884]
  rw [child]
  dsimp only [result7883]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7885_agree_conditional : tree7885 = literal7885 := by
  rw [tree7885_def]
  rfl
theorem node7885_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7885 live7885 coloured7885 = result7885 := by
  rw [tree7885_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7886_agree_conditional
    (child0 : tree7884 = literal7884)
    (child1 : tree7885 = literal7885) : tree7886 = literal7886 := by
  rw [tree7886_def, child0, child1]
  rfl
theorem node7886_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7884 live7884 coloured7884 = result7884)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7885 live7885 coloured7885 = result7885) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7886 live7886 coloured7886 = result7886 := by
  rw [tree7886_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7884 coloured7884 at child
  try dsimp only [live7886, coloured7886]
  rw [child]
  dsimp only [result7884]
  have child := child1
  unfold live7885 coloured7885 at child
  try dsimp only [live7886, coloured7886]
  rw [child]
  dsimp only [result7885]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7887_agree_conditional : tree7887 = literal7887 := by
  rw [tree7887_def]
  rfl
theorem node7887_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7887 live7887 coloured7887 = result7887 := by
  rw [tree7887_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7888_agree_conditional
    (child0 : tree7886 = literal7886)
    (child1 : tree7887 = literal7887) : tree7888 = literal7888 := by
  rw [tree7888_def, child0, child1]
  rfl
theorem node7888_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7886 live7886 coloured7886 = result7886)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7887 live7887 coloured7887 = result7887) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7888 live7888 coloured7888 = result7888 := by
  rw [tree7888_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7886 coloured7886 at child
  try dsimp only [live7888, coloured7888]
  rw [child]
  dsimp only [result7886]
  have child := child1
  unfold live7887 coloured7887 at child
  try dsimp only [live7888, coloured7888]
  rw [child]
  dsimp only [result7887]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7889_agree_conditional : tree7889 = literal7889 := by
  rw [tree7889_def]
  rfl
theorem node7889_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7889 live7889 coloured7889 = result7889 := by
  rw [tree7889_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7890_agree_conditional
    (child0 : tree7888 = literal7888)
    (child1 : tree7889 = literal7889) : tree7890 = literal7890 := by
  rw [tree7890_def, child0, child1]
  rfl
theorem node7890_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7888 live7888 coloured7888 = result7888)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7889 live7889 coloured7889 = result7889) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7890 live7890 coloured7890 = result7890 := by
  rw [tree7890_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7888 coloured7888 at child
  try dsimp only [live7890, coloured7890]
  rw [child]
  dsimp only [result7888]
  have child := child1
  unfold live7889 coloured7889 at child
  try dsimp only [live7890, coloured7890]
  rw [child]
  dsimp only [result7889]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7891_agree_conditional : tree7891 = literal7891 := by
  rw [tree7891_def]
  rfl
theorem node7891_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7891 live7891 coloured7891 = result7891 := by
  rw [tree7891_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7892_agree_conditional
    (child0 : tree7890 = literal7890)
    (child1 : tree7891 = literal7891) : tree7892 = literal7892 := by
  rw [tree7892_def, child0, child1]
  rfl
theorem node7892_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7890 live7890 coloured7890 = result7890)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7891 live7891 coloured7891 = result7891) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7892 live7892 coloured7892 = result7892 := by
  rw [tree7892_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7890 coloured7890 at child
  try dsimp only [live7892, coloured7892]
  rw [child]
  dsimp only [result7890]
  have child := child1
  unfold live7891 coloured7891 at child
  try dsimp only [live7892, coloured7892]
  rw [child]
  dsimp only [result7891]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7893_agree_conditional : tree7893 = literal7893 := by
  rw [tree7893_def]
  rfl
theorem node7893_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7893 live7893 coloured7893 = result7893 := by
  rw [tree7893_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7894_agree_conditional
    (child0 : tree7892 = literal7892)
    (child1 : tree7893 = literal7893) : tree7894 = literal7894 := by
  rw [tree7894_def, child0, child1]
  rfl
theorem node7894_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7892 live7892 coloured7892 = result7892)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7893 live7893 coloured7893 = result7893) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7894 live7894 coloured7894 = result7894 := by
  rw [tree7894_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7892 coloured7892 at child
  try dsimp only [live7894, coloured7894]
  rw [child]
  dsimp only [result7892]
  have child := child1
  unfold live7893 coloured7893 at child
  try dsimp only [live7894, coloured7894]
  rw [child]
  dsimp only [result7893]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7895_agree_conditional : tree7895 = literal7895 := by
  rw [tree7895_def]
  rfl
theorem node7895_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7895 live7895 coloured7895 = result7895 := by
  rw [tree7895_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7896_agree_conditional
    (child0 : tree7894 = literal7894)
    (child1 : tree7895 = literal7895) : tree7896 = literal7896 := by
  rw [tree7896_def, child0, child1]
  rfl
theorem node7896_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7894 live7894 coloured7894 = result7894)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7895 live7895 coloured7895 = result7895) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7896 live7896 coloured7896 = result7896 := by
  rw [tree7896_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7894 coloured7894 at child
  try dsimp only [live7896, coloured7896]
  rw [child]
  dsimp only [result7894]
  have child := child1
  unfold live7895 coloured7895 at child
  try dsimp only [live7896, coloured7896]
  rw [child]
  dsimp only [result7895]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7897_agree_conditional : tree7897 = literal7897 := by
  rw [tree7897_def]
  rfl
theorem node7897_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7897 live7897 coloured7897 = result7897 := by
  rw [tree7897_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7898_agree_conditional
    (child0 : tree7896 = literal7896)
    (child1 : tree7897 = literal7897) : tree7898 = literal7898 := by
  rw [tree7898_def, child0, child1]
  rfl
theorem node7898_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7896 live7896 coloured7896 = result7896)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7897 live7897 coloured7897 = result7897) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7898 live7898 coloured7898 = result7898 := by
  rw [tree7898_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7896 coloured7896 at child
  try dsimp only [live7898, coloured7898]
  rw [child]
  dsimp only [result7896]
  have child := child1
  unfold live7897 coloured7897 at child
  try dsimp only [live7898, coloured7898]
  rw [child]
  dsimp only [result7897]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7899_agree_conditional : tree7899 = literal7899 := by
  rw [tree7899_def]
  rfl
theorem node7899_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7899 live7899 coloured7899 = result7899 := by
  rw [tree7899_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7900_agree_conditional
    (child0 : tree7898 = literal7898)
    (child1 : tree7899 = literal7899) : tree7900 = literal7900 := by
  rw [tree7900_def, child0, child1]
  rfl
theorem node7900_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7898 live7898 coloured7898 = result7898)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7899 live7899 coloured7899 = result7899) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7900 live7900 coloured7900 = result7900 := by
  rw [tree7900_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7898 coloured7898 at child
  try dsimp only [live7900, coloured7900]
  rw [child]
  dsimp only [result7898]
  have child := child1
  unfold live7899 coloured7899 at child
  try dsimp only [live7900, coloured7900]
  rw [child]
  dsimp only [result7899]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7901_agree_conditional : tree7901 = literal7901 := by
  rw [tree7901_def]
  rfl
theorem node7901_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7901 live7901 coloured7901 = result7901 := by
  rw [tree7901_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7902_agree_conditional
    (child0 : tree7900 = literal7900)
    (child1 : tree7901 = literal7901) : tree7902 = literal7902 := by
  rw [tree7902_def, child0, child1]
  rfl
theorem node7902_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7900 live7900 coloured7900 = result7900)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7901 live7901 coloured7901 = result7901) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7902 live7902 coloured7902 = result7902 := by
  rw [tree7902_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7900 coloured7900 at child
  try dsimp only [live7902, coloured7902]
  rw [child]
  dsimp only [result7900]
  have child := child1
  unfold live7901 coloured7901 at child
  try dsimp only [live7902, coloured7902]
  rw [child]
  dsimp only [result7901]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7903_agree_conditional : tree7903 = literal7903 := by
  rw [tree7903_def]
  rfl
theorem node7903_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7903 live7903 coloured7903 = result7903 := by
  rw [tree7903_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7904_agree_conditional
    (child0 : tree7902 = literal7902)
    (child1 : tree7903 = literal7903) : tree7904 = literal7904 := by
  rw [tree7904_def, child0, child1]
  rfl
theorem node7904_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7902 live7902 coloured7902 = result7902)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7903 live7903 coloured7903 = result7903) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7904 live7904 coloured7904 = result7904 := by
  rw [tree7904_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7902 coloured7902 at child
  try dsimp only [live7904, coloured7904]
  rw [child]
  dsimp only [result7902]
  have child := child1
  unfold live7903 coloured7903 at child
  try dsimp only [live7904, coloured7904]
  rw [child]
  dsimp only [result7903]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7905_agree_conditional : tree7905 = literal7905 := by
  rw [tree7905_def]
  rfl
theorem node7905_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7905 live7905 coloured7905 = result7905 := by
  rw [tree7905_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7906_agree_conditional
    (child0 : tree7904 = literal7904)
    (child1 : tree7905 = literal7905) : tree7906 = literal7906 := by
  rw [tree7906_def, child0, child1]
  rfl
theorem node7906_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7904 live7904 coloured7904 = result7904)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7905 live7905 coloured7905 = result7905) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7906 live7906 coloured7906 = result7906 := by
  rw [tree7906_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7904 coloured7904 at child
  try dsimp only [live7906, coloured7906]
  rw [child]
  dsimp only [result7904]
  have child := child1
  unfold live7905 coloured7905 at child
  try dsimp only [live7906, coloured7906]
  rw [child]
  dsimp only [result7905]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7907_agree_conditional : tree7907 = literal7907 := by
  rw [tree7907_def]
  rfl
theorem node7907_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7907 live7907 coloured7907 = result7907 := by
  rw [tree7907_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7908_agree_conditional
    (child0 : tree7906 = literal7906)
    (child1 : tree7907 = literal7907) : tree7908 = literal7908 := by
  rw [tree7908_def, child0, child1]
  rfl
theorem node7908_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7906 live7906 coloured7906 = result7906)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7907 live7907 coloured7907 = result7907) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7908 live7908 coloured7908 = result7908 := by
  rw [tree7908_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7906 coloured7906 at child
  try dsimp only [live7908, coloured7908]
  rw [child]
  dsimp only [result7906]
  have child := child1
  unfold live7907 coloured7907 at child
  try dsimp only [live7908, coloured7908]
  rw [child]
  dsimp only [result7907]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7909_agree_conditional : tree7909 = literal7909 := by
  rw [tree7909_def]
  rfl
theorem node7909_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7909 live7909 coloured7909 = result7909 := by
  rw [tree7909_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7910_agree_conditional
    (child0 : tree7908 = literal7908)
    (child1 : tree7909 = literal7909) : tree7910 = literal7910 := by
  rw [tree7910_def, child0, child1]
  rfl
theorem node7910_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7908 live7908 coloured7908 = result7908)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7909 live7909 coloured7909 = result7909) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7910 live7910 coloured7910 = result7910 := by
  rw [tree7910_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7908 coloured7908 at child
  try dsimp only [live7910, coloured7910]
  rw [child]
  dsimp only [result7908]
  have child := child1
  unfold live7909 coloured7909 at child
  try dsimp only [live7910, coloured7910]
  rw [child]
  dsimp only [result7909]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7911_agree_conditional : tree7911 = literal7911 := by
  rw [tree7911_def]
  rfl
theorem node7911_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7911 live7911 coloured7911 = result7911 := by
  rw [tree7911_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7912_agree_conditional
    (child0 : tree7910 = literal7910)
    (child1 : tree7911 = literal7911) : tree7912 = literal7912 := by
  rw [tree7912_def, child0, child1]
  rfl
theorem node7912_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7910 live7910 coloured7910 = result7910)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7911 live7911 coloured7911 = result7911) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7912 live7912 coloured7912 = result7912 := by
  rw [tree7912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7910 coloured7910 at child
  try dsimp only [live7912, coloured7912]
  rw [child]
  dsimp only [result7910]
  have child := child1
  unfold live7911 coloured7911 at child
  try dsimp only [live7912, coloured7912]
  rw [child]
  dsimp only [result7911]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7913_agree_conditional : tree7913 = literal7913 := by
  rw [tree7913_def]
  rfl
theorem node7913_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7913 live7913 coloured7913 = result7913 := by
  rw [tree7913_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7914_agree_conditional
    (child0 : tree7912 = literal7912)
    (child1 : tree7913 = literal7913) : tree7914 = literal7914 := by
  rw [tree7914_def, child0, child1]
  rfl
theorem node7914_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7912 live7912 coloured7912 = result7912)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7913 live7913 coloured7913 = result7913) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7914 live7914 coloured7914 = result7914 := by
  rw [tree7914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7912 coloured7912 at child
  try dsimp only [live7914, coloured7914]
  rw [child]
  dsimp only [result7912]
  have child := child1
  unfold live7913 coloured7913 at child
  try dsimp only [live7914, coloured7914]
  rw [child]
  dsimp only [result7913]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7915_agree_conditional : tree7915 = literal7915 := by
  rw [tree7915_def]
  rfl
theorem node7915_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7915 live7915 coloured7915 = result7915 := by
  rw [tree7915_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7916_agree_conditional
    (child0 : tree7914 = literal7914)
    (child1 : tree7915 = literal7915) : tree7916 = literal7916 := by
  rw [tree7916_def, child0, child1]
  rfl
theorem node7916_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7914 live7914 coloured7914 = result7914)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7915 live7915 coloured7915 = result7915) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7916 live7916 coloured7916 = result7916 := by
  rw [tree7916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7914 coloured7914 at child
  try dsimp only [live7916, coloured7916]
  rw [child]
  dsimp only [result7914]
  have child := child1
  unfold live7915 coloured7915 at child
  try dsimp only [live7916, coloured7916]
  rw [child]
  dsimp only [result7915]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7917_agree_conditional : tree7917 = literal7917 := by
  rw [tree7917_def]
  rfl
theorem node7917_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7917 live7917 coloured7917 = result7917 := by
  rw [tree7917_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7918_agree_conditional
    (child0 : tree7916 = literal7916)
    (child1 : tree7917 = literal7917) : tree7918 = literal7918 := by
  rw [tree7918_def, child0, child1]
  rfl
theorem node7918_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7916 live7916 coloured7916 = result7916)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7917 live7917 coloured7917 = result7917) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7918 live7918 coloured7918 = result7918 := by
  rw [tree7918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7916 coloured7916 at child
  try dsimp only [live7918, coloured7918]
  rw [child]
  dsimp only [result7916]
  have child := child1
  unfold live7917 coloured7917 at child
  try dsimp only [live7918, coloured7918]
  rw [child]
  dsimp only [result7917]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7919_agree_conditional : tree7919 = literal7919 := by
  rw [tree7919_def]
  rfl
theorem node7919_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7919 live7919 coloured7919 = result7919 := by
  rw [tree7919_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7920_agree_conditional
    (child0 : tree7918 = literal7918)
    (child1 : tree7919 = literal7919) : tree7920 = literal7920 := by
  rw [tree7920_def, child0, child1]
  rfl
theorem node7920_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7918 live7918 coloured7918 = result7918)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7919 live7919 coloured7919 = result7919) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7920 live7920 coloured7920 = result7920 := by
  rw [tree7920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7918 coloured7918 at child
  try dsimp only [live7920, coloured7920]
  rw [child]
  dsimp only [result7918]
  have child := child1
  unfold live7919 coloured7919 at child
  try dsimp only [live7920, coloured7920]
  rw [child]
  dsimp only [result7919]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7921_agree_conditional : tree7921 = literal7921 := by
  rw [tree7921_def]
  rfl
theorem node7921_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7921 live7921 coloured7921 = result7921 := by
  rw [tree7921_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7922_agree_conditional
    (child0 : tree7920 = literal7920)
    (child1 : tree7921 = literal7921) : tree7922 = literal7922 := by
  rw [tree7922_def, child0, child1]
  rfl
theorem node7922_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7920 live7920 coloured7920 = result7920)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7921 live7921 coloured7921 = result7921) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7922 live7922 coloured7922 = result7922 := by
  rw [tree7922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7920 coloured7920 at child
  try dsimp only [live7922, coloured7922]
  rw [child]
  dsimp only [result7920]
  have child := child1
  unfold live7921 coloured7921 at child
  try dsimp only [live7922, coloured7922]
  rw [child]
  dsimp only [result7921]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7923_agree_conditional : tree7923 = literal7923 := by
  rw [tree7923_def]
  rfl
theorem node7923_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7923 live7923 coloured7923 = result7923 := by
  rw [tree7923_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7924_agree_conditional
    (child0 : tree7922 = literal7922)
    (child1 : tree7923 = literal7923) : tree7924 = literal7924 := by
  rw [tree7924_def, child0, child1]
  rfl
theorem node7924_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7922 live7922 coloured7922 = result7922)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7923 live7923 coloured7923 = result7923) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7924 live7924 coloured7924 = result7924 := by
  rw [tree7924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7922 coloured7922 at child
  try dsimp only [live7924, coloured7924]
  rw [child]
  dsimp only [result7922]
  have child := child1
  unfold live7923 coloured7923 at child
  try dsimp only [live7924, coloured7924]
  rw [child]
  dsimp only [result7923]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7925_agree_conditional : tree7925 = literal7925 := by
  rw [tree7925_def]
  rfl
theorem node7925_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7925 live7925 coloured7925 = result7925 := by
  rw [tree7925_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7926_agree_conditional
    (child0 : tree7924 = literal7924)
    (child1 : tree7925 = literal7925) : tree7926 = literal7926 := by
  rw [tree7926_def, child0, child1]
  rfl
theorem node7926_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7924 live7924 coloured7924 = result7924)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7925 live7925 coloured7925 = result7925) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7926 live7926 coloured7926 = result7926 := by
  rw [tree7926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7924 coloured7924 at child
  try dsimp only [live7926, coloured7926]
  rw [child]
  dsimp only [result7924]
  have child := child1
  unfold live7925 coloured7925 at child
  try dsimp only [live7926, coloured7926]
  rw [child]
  dsimp only [result7925]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7927_agree_conditional : tree7927 = literal7927 := by
  rw [tree7927_def]
  rfl
theorem node7927_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7927 live7927 coloured7927 = result7927 := by
  rw [tree7927_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7928_agree_conditional
    (child0 : tree7926 = literal7926)
    (child1 : tree7927 = literal7927) : tree7928 = literal7928 := by
  rw [tree7928_def, child0, child1]
  rfl
theorem node7928_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7926 live7926 coloured7926 = result7926)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7927 live7927 coloured7927 = result7927) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7928 live7928 coloured7928 = result7928 := by
  rw [tree7928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7926 coloured7926 at child
  try dsimp only [live7928, coloured7928]
  rw [child]
  dsimp only [result7926]
  have child := child1
  unfold live7927 coloured7927 at child
  try dsimp only [live7928, coloured7928]
  rw [child]
  dsimp only [result7927]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7929_agree_conditional : tree7929 = literal7929 := by
  rw [tree7929_def]
  rfl
theorem node7929_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7929 live7929 coloured7929 = result7929 := by
  rw [tree7929_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7930_agree_conditional
    (child0 : tree7928 = literal7928)
    (child1 : tree7929 = literal7929) : tree7930 = literal7930 := by
  rw [tree7930_def, child0, child1]
  rfl
theorem node7930_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7928 live7928 coloured7928 = result7928)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7929 live7929 coloured7929 = result7929) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7930 live7930 coloured7930 = result7930 := by
  rw [tree7930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7928 coloured7928 at child
  try dsimp only [live7930, coloured7930]
  rw [child]
  dsimp only [result7928]
  have child := child1
  unfold live7929 coloured7929 at child
  try dsimp only [live7930, coloured7930]
  rw [child]
  dsimp only [result7929]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7931_agree_conditional : tree7931 = literal7931 := by
  rw [tree7931_def]
  rfl
theorem node7931_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7931 live7931 coloured7931 = result7931 := by
  rw [tree7931_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7932_agree_conditional
    (child0 : tree7930 = literal7930)
    (child1 : tree7931 = literal7931) : tree7932 = literal7932 := by
  rw [tree7932_def, child0, child1]
  rfl
theorem node7932_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7930 live7930 coloured7930 = result7930)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7931 live7931 coloured7931 = result7931) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7932 live7932 coloured7932 = result7932 := by
  rw [tree7932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7930 coloured7930 at child
  try dsimp only [live7932, coloured7932]
  rw [child]
  dsimp only [result7930]
  have child := child1
  unfold live7931 coloured7931 at child
  try dsimp only [live7932, coloured7932]
  rw [child]
  dsimp only [result7931]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7933_agree_conditional : tree7933 = literal7933 := by
  rw [tree7933_def]
  rfl
theorem node7933_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7933 live7933 coloured7933 = result7933 := by
  rw [tree7933_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7934_agree_conditional
    (child0 : tree7932 = literal7932)
    (child1 : tree7933 = literal7933) : tree7934 = literal7934 := by
  rw [tree7934_def, child0, child1]
  rfl
theorem node7934_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7932 live7932 coloured7932 = result7932)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7933 live7933 coloured7933 = result7933) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7934 live7934 coloured7934 = result7934 := by
  rw [tree7934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7932 coloured7932 at child
  try dsimp only [live7934, coloured7934]
  rw [child]
  dsimp only [result7932]
  have child := child1
  unfold live7933 coloured7933 at child
  try dsimp only [live7934, coloured7934]
  rw [child]
  dsimp only [result7933]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7935_agree_conditional : tree7935 = literal7935 := by
  rw [tree7935_def]
  rfl
theorem node7935_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7935 live7935 coloured7935 = result7935 := by
  rw [tree7935_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7936_agree_conditional
    (child0 : tree7934 = literal7934)
    (child1 : tree7935 = literal7935) : tree7936 = literal7936 := by
  rw [tree7936_def, child0, child1]
  rfl
theorem node7936_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7934 live7934 coloured7934 = result7934)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7935 live7935 coloured7935 = result7935) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7936 live7936 coloured7936 = result7936 := by
  rw [tree7936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7934 coloured7934 at child
  try dsimp only [live7936, coloured7936]
  rw [child]
  dsimp only [result7934]
  have child := child1
  unfold live7935 coloured7935 at child
  try dsimp only [live7936, coloured7936]
  rw [child]
  dsimp only [result7935]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7937_agree_conditional : tree7937 = literal7937 := by
  rw [tree7937_def]
  rfl
theorem node7937_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7937 live7937 coloured7937 = result7937 := by
  rw [tree7937_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7938_agree_conditional
    (child0 : tree7936 = literal7936)
    (child1 : tree7937 = literal7937) : tree7938 = literal7938 := by
  rw [tree7938_def, child0, child1]
  rfl
theorem node7938_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7936 live7936 coloured7936 = result7936)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7937 live7937 coloured7937 = result7937) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7938 live7938 coloured7938 = result7938 := by
  rw [tree7938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7936 coloured7936 at child
  try dsimp only [live7938, coloured7938]
  rw [child]
  dsimp only [result7936]
  have child := child1
  unfold live7937 coloured7937 at child
  try dsimp only [live7938, coloured7938]
  rw [child]
  dsimp only [result7937]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7939_agree_conditional : tree7939 = literal7939 := by
  rw [tree7939_def]
  rfl
theorem node7939_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7939 live7939 coloured7939 = result7939 := by
  rw [tree7939_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7940_agree_conditional
    (child0 : tree7938 = literal7938)
    (child1 : tree7939 = literal7939) : tree7940 = literal7940 := by
  rw [tree7940_def, child0, child1]
  rfl
theorem node7940_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7938 live7938 coloured7938 = result7938)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7939 live7939 coloured7939 = result7939) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7940 live7940 coloured7940 = result7940 := by
  rw [tree7940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7938 coloured7938 at child
  try dsimp only [live7940, coloured7940]
  rw [child]
  dsimp only [result7938]
  have child := child1
  unfold live7939 coloured7939 at child
  try dsimp only [live7940, coloured7940]
  rw [child]
  dsimp only [result7939]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7941_agree_conditional : tree7941 = literal7941 := by
  rw [tree7941_def]
  rfl
theorem node7941_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7941 live7941 coloured7941 = result7941 := by
  rw [tree7941_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7942_agree_conditional
    (child0 : tree7940 = literal7940)
    (child1 : tree7941 = literal7941) : tree7942 = literal7942 := by
  rw [tree7942_def, child0, child1]
  rfl
theorem node7942_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7940 live7940 coloured7940 = result7940)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7941 live7941 coloured7941 = result7941) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7942 live7942 coloured7942 = result7942 := by
  rw [tree7942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7940 coloured7940 at child
  try dsimp only [live7942, coloured7942]
  rw [child]
  dsimp only [result7940]
  have child := child1
  unfold live7941 coloured7941 at child
  try dsimp only [live7942, coloured7942]
  rw [child]
  dsimp only [result7941]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7943_agree_conditional : tree7943 = literal7943 := by
  rw [tree7943_def]
  rfl
theorem node7943_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7943 live7943 coloured7943 = result7943 := by
  rw [tree7943_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7944_agree_conditional
    (child0 : tree7942 = literal7942)
    (child1 : tree7943 = literal7943) : tree7944 = literal7944 := by
  rw [tree7944_def, child0, child1]
  rfl
theorem node7944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7942 live7942 coloured7942 = result7942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7943 live7943 coloured7943 = result7943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7944 live7944 coloured7944 = result7944 := by
  rw [tree7944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7942 coloured7942 at child
  try dsimp only [live7944, coloured7944]
  rw [child]
  dsimp only [result7942]
  have child := child1
  unfold live7943 coloured7943 at child
  try dsimp only [live7944, coloured7944]
  rw [child]
  dsimp only [result7943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7945_agree_conditional : tree7945 = literal7945 := by
  rw [tree7945_def]
  rfl
theorem node7945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7945 live7945 coloured7945 = result7945 := by
  rw [tree7945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7946_agree_conditional
    (child0 : tree7944 = literal7944)
    (child1 : tree7945 = literal7945) : tree7946 = literal7946 := by
  rw [tree7946_def, child0, child1]
  rfl
theorem node7946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7944 live7944 coloured7944 = result7944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7945 live7945 coloured7945 = result7945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7946 live7946 coloured7946 = result7946 := by
  rw [tree7946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7944 coloured7944 at child
  try dsimp only [live7946, coloured7946]
  rw [child]
  dsimp only [result7944]
  have child := child1
  unfold live7945 coloured7945 at child
  try dsimp only [live7946, coloured7946]
  rw [child]
  dsimp only [result7945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7947_agree_conditional : tree7947 = literal7947 := by
  rw [tree7947_def]
  rfl
theorem node7947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7947 live7947 coloured7947 = result7947 := by
  rw [tree7947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7948_agree_conditional
    (child0 : tree7946 = literal7946)
    (child1 : tree7947 = literal7947) : tree7948 = literal7948 := by
  rw [tree7948_def, child0, child1]
  rfl
theorem node7948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7946 live7946 coloured7946 = result7946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7947 live7947 coloured7947 = result7947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7948 live7948 coloured7948 = result7948 := by
  rw [tree7948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7946 coloured7946 at child
  try dsimp only [live7948, coloured7948]
  rw [child]
  dsimp only [result7946]
  have child := child1
  unfold live7947 coloured7947 at child
  try dsimp only [live7948, coloured7948]
  rw [child]
  dsimp only [result7947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7949_agree_conditional : tree7949 = literal7949 := by
  rw [tree7949_def]
  rfl
theorem node7949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7949 live7949 coloured7949 = result7949 := by
  rw [tree7949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7950_agree_conditional
    (child0 : tree7948 = literal7948)
    (child1 : tree7949 = literal7949) : tree7950 = literal7950 := by
  rw [tree7950_def, child0, child1]
  rfl
theorem node7950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7948 live7948 coloured7948 = result7948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7949 live7949 coloured7949 = result7949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7950 live7950 coloured7950 = result7950 := by
  rw [tree7950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7948 coloured7948 at child
  try dsimp only [live7950, coloured7950]
  rw [child]
  dsimp only [result7948]
  have child := child1
  unfold live7949 coloured7949 at child
  try dsimp only [live7950, coloured7950]
  rw [child]
  dsimp only [result7949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7951_agree_conditional : tree7951 = literal7951 := by
  rw [tree7951_def]
  rfl
theorem node7951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7951 live7951 coloured7951 = result7951 := by
  rw [tree7951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7952_agree_conditional
    (child0 : tree7950 = literal7950)
    (child1 : tree7951 = literal7951) : tree7952 = literal7952 := by
  rw [tree7952_def, child0, child1]
  rfl
theorem node7952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7950 live7950 coloured7950 = result7950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7951 live7951 coloured7951 = result7951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7952 live7952 coloured7952 = result7952 := by
  rw [tree7952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7950 coloured7950 at child
  try dsimp only [live7952, coloured7952]
  rw [child]
  dsimp only [result7950]
  have child := child1
  unfold live7951 coloured7951 at child
  try dsimp only [live7952, coloured7952]
  rw [child]
  dsimp only [result7951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7953_agree_conditional : tree7953 = literal7953 := by
  rw [tree7953_def]
  rfl
theorem node7953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7953 live7953 coloured7953 = result7953 := by
  rw [tree7953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7954_agree_conditional
    (child0 : tree7952 = literal7952)
    (child1 : tree7953 = literal7953) : tree7954 = literal7954 := by
  rw [tree7954_def, child0, child1]
  rfl
theorem node7954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7952 live7952 coloured7952 = result7952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7953 live7953 coloured7953 = result7953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7954 live7954 coloured7954 = result7954 := by
  rw [tree7954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7952 coloured7952 at child
  try dsimp only [live7954, coloured7954]
  rw [child]
  dsimp only [result7952]
  have child := child1
  unfold live7953 coloured7953 at child
  try dsimp only [live7954, coloured7954]
  rw [child]
  dsimp only [result7953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7955_agree_conditional : tree7955 = literal7955 := by
  rw [tree7955_def]
  rfl
theorem node7955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7955 live7955 coloured7955 = result7955 := by
  rw [tree7955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7956_agree_conditional
    (child0 : tree7954 = literal7954)
    (child1 : tree7955 = literal7955) : tree7956 = literal7956 := by
  rw [tree7956_def, child0, child1]
  rfl
theorem node7956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7954 live7954 coloured7954 = result7954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7955 live7955 coloured7955 = result7955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7956 live7956 coloured7956 = result7956 := by
  rw [tree7956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7954 coloured7954 at child
  try dsimp only [live7956, coloured7956]
  rw [child]
  dsimp only [result7954]
  have child := child1
  unfold live7955 coloured7955 at child
  try dsimp only [live7956, coloured7956]
  rw [child]
  dsimp only [result7955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7957_agree_conditional : tree7957 = literal7957 := by
  rw [tree7957_def]
  rfl
theorem node7957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7957 live7957 coloured7957 = result7957 := by
  rw [tree7957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7958_agree_conditional
    (child0 : tree7956 = literal7956)
    (child1 : tree7957 = literal7957) : tree7958 = literal7958 := by
  rw [tree7958_def, child0, child1]
  rfl
theorem node7958_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7956 live7956 coloured7956 = result7956)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7957 live7957 coloured7957 = result7957) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7958 live7958 coloured7958 = result7958 := by
  rw [tree7958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7956 coloured7956 at child
  try dsimp only [live7958, coloured7958]
  rw [child]
  dsimp only [result7956]
  have child := child1
  unfold live7957 coloured7957 at child
  try dsimp only [live7958, coloured7958]
  rw [child]
  dsimp only [result7957]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7959_agree_conditional : tree7959 = literal7959 := by
  rw [tree7959_def]
  rfl
theorem node7959_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7959 live7959 coloured7959 = result7959 := by
  rw [tree7959_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7960_agree_conditional
    (child0 : tree7958 = literal7958)
    (child1 : tree7959 = literal7959) : tree7960 = literal7960 := by
  rw [tree7960_def, child0, child1]
  rfl
theorem node7960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7958 live7958 coloured7958 = result7958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7959 live7959 coloured7959 = result7959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7960 live7960 coloured7960 = result7960 := by
  rw [tree7960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7958 coloured7958 at child
  try dsimp only [live7960, coloured7960]
  rw [child]
  dsimp only [result7958]
  have child := child1
  unfold live7959 coloured7959 at child
  try dsimp only [live7960, coloured7960]
  rw [child]
  dsimp only [result7959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7961_agree_conditional : tree7961 = literal7961 := by
  rw [tree7961_def]
  rfl
theorem node7961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7961 live7961 coloured7961 = result7961 := by
  rw [tree7961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7962_agree_conditional
    (child0 : tree7960 = literal7960)
    (child1 : tree7961 = literal7961) : tree7962 = literal7962 := by
  rw [tree7962_def, child0, child1]
  rfl
theorem node7962_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7960 live7960 coloured7960 = result7960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7961 live7961 coloured7961 = result7961) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7962 live7962 coloured7962 = result7962 := by
  rw [tree7962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7960 coloured7960 at child
  try dsimp only [live7962, coloured7962]
  rw [child]
  dsimp only [result7960]
  have child := child1
  unfold live7961 coloured7961 at child
  try dsimp only [live7962, coloured7962]
  rw [child]
  dsimp only [result7961]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7963_agree_conditional : tree7963 = literal7963 := by
  rw [tree7963_def]
  rfl
theorem node7963_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7963 live7963 coloured7963 = result7963 := by
  rw [tree7963_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7964_agree_conditional
    (child0 : tree7962 = literal7962)
    (child1 : tree7963 = literal7963) : tree7964 = literal7964 := by
  rw [tree7964_def, child0, child1]
  rfl
theorem node7964_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7962 live7962 coloured7962 = result7962)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7963 live7963 coloured7963 = result7963) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7964 live7964 coloured7964 = result7964 := by
  rw [tree7964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7962 coloured7962 at child
  try dsimp only [live7964, coloured7964]
  rw [child]
  dsimp only [result7962]
  have child := child1
  unfold live7963 coloured7963 at child
  try dsimp only [live7964, coloured7964]
  rw [child]
  dsimp only [result7963]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7965_agree_conditional : tree7965 = literal7965 := by
  rw [tree7965_def]
  rfl
theorem node7965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7965 live7965 coloured7965 = result7965 := by
  rw [tree7965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7966_agree_conditional
    (child0 : tree7964 = literal7964)
    (child1 : tree7965 = literal7965) : tree7966 = literal7966 := by
  rw [tree7966_def, child0, child1]
  rfl
theorem node7966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7964 live7964 coloured7964 = result7964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7965 live7965 coloured7965 = result7965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7966 live7966 coloured7966 = result7966 := by
  rw [tree7966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7964 coloured7964 at child
  try dsimp only [live7966, coloured7966]
  rw [child]
  dsimp only [result7964]
  have child := child1
  unfold live7965 coloured7965 at child
  try dsimp only [live7966, coloured7966]
  rw [child]
  dsimp only [result7965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7967_agree_conditional : tree7967 = literal7967 := by
  rw [tree7967_def]
  rfl
theorem node7967_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7967 live7967 coloured7967 = result7967 := by
  rw [tree7967_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
