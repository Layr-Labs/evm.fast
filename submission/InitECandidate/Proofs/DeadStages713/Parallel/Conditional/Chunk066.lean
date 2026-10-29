import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk066
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node16896_cond_eq
    (child2038 : Flapjack.WordAlloc.removeDeadStructural input2038 value5 value1 value2 = (output2038, value1023, value1))
    (child16895 : Flapjack.WordAlloc.removeDeadStructural input16895 value1023 value1 value2 = (output16895, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16896 value5 value1 value2 = (output16896, value6896, value1) := by
  rw [input16896_def, output16896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2038]
  try dsimp only
  rw [child16895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2038_skip, output16895_skip]
  kernel_rfl

theorem node16897_cond_eq
    (child2035 : Flapjack.WordAlloc.removeDeadStructural input2035 value1016 value1 value2 = (output2035, value5, value1))
    (child16896 : Flapjack.WordAlloc.removeDeadStructural input16896 value5 value1 value2 = (output16896, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16897 value1016 value1 value2 = (output16897, value6896, value1) := by
  rw [input16897_def, output16897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2035]
  try dsimp only
  rw [child16896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2035_skip, output16896_skip]
  kernel_rfl

theorem node16898_cond_eq
    (child2024 : Flapjack.WordAlloc.removeDeadStructural input2024 value1016 value1 value2 = (output2024, value1016, value1))
    (child16897 : Flapjack.WordAlloc.removeDeadStructural input16897 value1016 value1 value2 = (output16897, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16898 value1016 value1 value2 = (output16898, value6896, value1) := by
  rw [input16898_def, output16898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2024]
  try dsimp only
  rw [child16897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2024_skip, output16897_skip]
  kernel_rfl

theorem node16899_cond_eq
    (child2023 : Flapjack.WordAlloc.removeDeadStructural input2023 value1015 value1 value2 = (output2023, value1016, value1))
    (child16898 : Flapjack.WordAlloc.removeDeadStructural input16898 value1016 value1 value2 = (output16898, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16899 value1015 value1 value2 = (output16899, value6896, value1) := by
  rw [input16899_def, output16899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2023]
  try dsimp only
  rw [child16898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2023_skip, output16898_skip]
  kernel_rfl

theorem node16900_cond_eq
    (child2022 : Flapjack.WordAlloc.removeDeadStructural input2022 value5 value1 value2 = (output2022, value1015, value1))
    (child16899 : Flapjack.WordAlloc.removeDeadStructural input16899 value1015 value1 value2 = (output16899, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16900 value5 value1 value2 = (output16900, value6896, value1) := by
  rw [input16900_def, output16900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2022]
  try dsimp only
  rw [child16899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2022_skip, output16899_skip]
  kernel_rfl

theorem node16901_cond_eq
    (child2019 : Flapjack.WordAlloc.removeDeadStructural input2019 value1008 value1 value2 = (output2019, value5, value1))
    (child16900 : Flapjack.WordAlloc.removeDeadStructural input16900 value5 value1 value2 = (output16900, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16901 value1008 value1 value2 = (output16901, value6896, value1) := by
  rw [input16901_def, output16901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2019]
  try dsimp only
  rw [child16900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2019_skip, output16900_skip]
  kernel_rfl

theorem node16902_cond_eq
    (child2008 : Flapjack.WordAlloc.removeDeadStructural input2008 value1008 value1 value2 = (output2008, value1008, value1))
    (child16901 : Flapjack.WordAlloc.removeDeadStructural input16901 value1008 value1 value2 = (output16901, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16902 value1008 value1 value2 = (output16902, value6896, value1) := by
  rw [input16902_def, output16902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2008]
  try dsimp only
  rw [child16901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2008_skip, output16901_skip]
  kernel_rfl

theorem node16903_cond_eq
    (child2007 : Flapjack.WordAlloc.removeDeadStructural input2007 value1007 value1 value2 = (output2007, value1008, value1))
    (child16902 : Flapjack.WordAlloc.removeDeadStructural input16902 value1008 value1 value2 = (output16902, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16903 value1007 value1 value2 = (output16903, value6896, value1) := by
  rw [input16903_def, output16903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2007]
  try dsimp only
  rw [child16902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2007_skip, output16902_skip]
  kernel_rfl

theorem node16904_cond_eq
    (child2006 : Flapjack.WordAlloc.removeDeadStructural input2006 value5 value1 value2 = (output2006, value1007, value1))
    (child16903 : Flapjack.WordAlloc.removeDeadStructural input16903 value1007 value1 value2 = (output16903, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16904 value5 value1 value2 = (output16904, value6896, value1) := by
  rw [input16904_def, output16904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2006]
  try dsimp only
  rw [child16903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2006_skip, output16903_skip]
  kernel_rfl

theorem node16905_cond_eq
    (child2003 : Flapjack.WordAlloc.removeDeadStructural input2003 value1000 value1 value2 = (output2003, value5, value1))
    (child16904 : Flapjack.WordAlloc.removeDeadStructural input16904 value5 value1 value2 = (output16904, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16905 value1000 value1 value2 = (output16905, value6896, value1) := by
  rw [input16905_def, output16905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2003]
  try dsimp only
  rw [child16904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2003_skip, output16904_skip]
  kernel_rfl

theorem node16906_cond_eq
    (child1992 : Flapjack.WordAlloc.removeDeadStructural input1992 value1000 value1 value2 = (output1992, value1000, value1))
    (child16905 : Flapjack.WordAlloc.removeDeadStructural input16905 value1000 value1 value2 = (output16905, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16906 value1000 value1 value2 = (output16906, value6896, value1) := by
  rw [input16906_def, output16906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1992]
  try dsimp only
  rw [child16905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1992_skip, output16905_skip]
  kernel_rfl

theorem node16907_cond_eq
    (child1991 : Flapjack.WordAlloc.removeDeadStructural input1991 value999 value1 value2 = (output1991, value1000, value1))
    (child16906 : Flapjack.WordAlloc.removeDeadStructural input16906 value1000 value1 value2 = (output16906, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16907 value999 value1 value2 = (output16907, value6896, value1) := by
  rw [input16907_def, output16907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1991]
  try dsimp only
  rw [child16906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1991_skip, output16906_skip]
  kernel_rfl

theorem node16908_cond_eq
    (child1990 : Flapjack.WordAlloc.removeDeadStructural input1990 value5 value1 value2 = (output1990, value999, value1))
    (child16907 : Flapjack.WordAlloc.removeDeadStructural input16907 value999 value1 value2 = (output16907, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16908 value5 value1 value2 = (output16908, value6896, value1) := by
  rw [input16908_def, output16908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1990]
  try dsimp only
  rw [child16907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1990_skip, output16907_skip]
  kernel_rfl

theorem node16909_cond_eq
    (child1987 : Flapjack.WordAlloc.removeDeadStructural input1987 value992 value1 value2 = (output1987, value5, value1))
    (child16908 : Flapjack.WordAlloc.removeDeadStructural input16908 value5 value1 value2 = (output16908, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16909 value992 value1 value2 = (output16909, value6896, value1) := by
  rw [input16909_def, output16909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1987]
  try dsimp only
  rw [child16908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1987_skip, output16908_skip]
  kernel_rfl

theorem node16910_cond_eq
    (child1976 : Flapjack.WordAlloc.removeDeadStructural input1976 value992 value1 value2 = (output1976, value992, value1))
    (child16909 : Flapjack.WordAlloc.removeDeadStructural input16909 value992 value1 value2 = (output16909, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16910 value992 value1 value2 = (output16910, value6896, value1) := by
  rw [input16910_def, output16910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1976]
  try dsimp only
  rw [child16909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1976_skip, output16909_skip]
  kernel_rfl

theorem node16911_cond_eq
    (child1975 : Flapjack.WordAlloc.removeDeadStructural input1975 value991 value1 value2 = (output1975, value992, value1))
    (child16910 : Flapjack.WordAlloc.removeDeadStructural input16910 value992 value1 value2 = (output16910, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16911 value991 value1 value2 = (output16911, value6896, value1) := by
  rw [input16911_def, output16911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1975]
  try dsimp only
  rw [child16910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1975_skip, output16910_skip]
  kernel_rfl

theorem node16912_cond_eq
    (child1974 : Flapjack.WordAlloc.removeDeadStructural input1974 value5 value1 value2 = (output1974, value991, value1))
    (child16911 : Flapjack.WordAlloc.removeDeadStructural input16911 value991 value1 value2 = (output16911, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16912 value5 value1 value2 = (output16912, value6896, value1) := by
  rw [input16912_def, output16912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1974]
  try dsimp only
  rw [child16911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1974_skip, output16911_skip]
  kernel_rfl

theorem node16913_cond_eq
    (child1971 : Flapjack.WordAlloc.removeDeadStructural input1971 value984 value1 value2 = (output1971, value5, value1))
    (child16912 : Flapjack.WordAlloc.removeDeadStructural input16912 value5 value1 value2 = (output16912, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16913 value984 value1 value2 = (output16913, value6896, value1) := by
  rw [input16913_def, output16913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1971]
  try dsimp only
  rw [child16912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1971_skip, output16912_skip]
  kernel_rfl

theorem node16914_cond_eq
    (child1960 : Flapjack.WordAlloc.removeDeadStructural input1960 value984 value1 value2 = (output1960, value984, value1))
    (child16913 : Flapjack.WordAlloc.removeDeadStructural input16913 value984 value1 value2 = (output16913, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16914 value984 value1 value2 = (output16914, value6896, value1) := by
  rw [input16914_def, output16914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1960]
  try dsimp only
  rw [child16913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1960_skip, output16913_skip]
  kernel_rfl

theorem node16915_cond_eq
    (child1959 : Flapjack.WordAlloc.removeDeadStructural input1959 value983 value1 value2 = (output1959, value984, value1))
    (child16914 : Flapjack.WordAlloc.removeDeadStructural input16914 value984 value1 value2 = (output16914, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16915 value983 value1 value2 = (output16915, value6896, value1) := by
  rw [input16915_def, output16915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1959]
  try dsimp only
  rw [child16914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1959_skip, output16914_skip]
  kernel_rfl

theorem node16916_cond_eq
    (child1958 : Flapjack.WordAlloc.removeDeadStructural input1958 value5 value1 value2 = (output1958, value983, value1))
    (child16915 : Flapjack.WordAlloc.removeDeadStructural input16915 value983 value1 value2 = (output16915, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16916 value5 value1 value2 = (output16916, value6896, value1) := by
  rw [input16916_def, output16916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1958]
  try dsimp only
  rw [child16915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1958_skip, output16915_skip]
  kernel_rfl

theorem node16917_cond_eq
    (child1955 : Flapjack.WordAlloc.removeDeadStructural input1955 value976 value1 value2 = (output1955, value5, value1))
    (child16916 : Flapjack.WordAlloc.removeDeadStructural input16916 value5 value1 value2 = (output16916, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16917 value976 value1 value2 = (output16917, value6896, value1) := by
  rw [input16917_def, output16917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1955]
  try dsimp only
  rw [child16916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1955_skip, output16916_skip]
  kernel_rfl

theorem node16918_cond_eq
    (child1944 : Flapjack.WordAlloc.removeDeadStructural input1944 value976 value1 value2 = (output1944, value976, value1))
    (child16917 : Flapjack.WordAlloc.removeDeadStructural input16917 value976 value1 value2 = (output16917, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16918 value976 value1 value2 = (output16918, value6896, value1) := by
  rw [input16918_def, output16918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1944]
  try dsimp only
  rw [child16917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1944_skip, output16917_skip]
  kernel_rfl

theorem node16919_cond_eq
    (child1943 : Flapjack.WordAlloc.removeDeadStructural input1943 value975 value1 value2 = (output1943, value976, value1))
    (child16918 : Flapjack.WordAlloc.removeDeadStructural input16918 value976 value1 value2 = (output16918, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16919 value975 value1 value2 = (output16919, value6896, value1) := by
  rw [input16919_def, output16919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1943]
  try dsimp only
  rw [child16918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1943_skip, output16918_skip]
  kernel_rfl

theorem node16920_cond_eq
    (child1942 : Flapjack.WordAlloc.removeDeadStructural input1942 value5 value1 value2 = (output1942, value975, value1))
    (child16919 : Flapjack.WordAlloc.removeDeadStructural input16919 value975 value1 value2 = (output16919, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16920 value5 value1 value2 = (output16920, value6896, value1) := by
  rw [input16920_def, output16920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1942]
  try dsimp only
  rw [child16919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1942_skip, output16919_skip]
  kernel_rfl

theorem node16921_cond_eq
    (child1939 : Flapjack.WordAlloc.removeDeadStructural input1939 value968 value1 value2 = (output1939, value5, value1))
    (child16920 : Flapjack.WordAlloc.removeDeadStructural input16920 value5 value1 value2 = (output16920, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16921 value968 value1 value2 = (output16921, value6896, value1) := by
  rw [input16921_def, output16921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1939]
  try dsimp only
  rw [child16920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1939_skip, output16920_skip]
  kernel_rfl

theorem node16922_cond_eq
    (child1928 : Flapjack.WordAlloc.removeDeadStructural input1928 value968 value1 value2 = (output1928, value968, value1))
    (child16921 : Flapjack.WordAlloc.removeDeadStructural input16921 value968 value1 value2 = (output16921, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16922 value968 value1 value2 = (output16922, value6896, value1) := by
  rw [input16922_def, output16922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1928]
  try dsimp only
  rw [child16921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1928_skip, output16921_skip]
  kernel_rfl

theorem node16923_cond_eq
    (child1927 : Flapjack.WordAlloc.removeDeadStructural input1927 value967 value1 value2 = (output1927, value968, value1))
    (child16922 : Flapjack.WordAlloc.removeDeadStructural input16922 value968 value1 value2 = (output16922, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16923 value967 value1 value2 = (output16923, value6896, value1) := by
  rw [input16923_def, output16923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1927]
  try dsimp only
  rw [child16922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1927_skip, output16922_skip]
  kernel_rfl

theorem node16924_cond_eq
    (child1926 : Flapjack.WordAlloc.removeDeadStructural input1926 value5 value1 value2 = (output1926, value967, value1))
    (child16923 : Flapjack.WordAlloc.removeDeadStructural input16923 value967 value1 value2 = (output16923, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16924 value5 value1 value2 = (output16924, value6896, value1) := by
  rw [input16924_def, output16924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1926]
  try dsimp only
  rw [child16923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1926_skip, output16923_skip]
  kernel_rfl

theorem node16925_cond_eq
    (child1923 : Flapjack.WordAlloc.removeDeadStructural input1923 value960 value1 value2 = (output1923, value5, value1))
    (child16924 : Flapjack.WordAlloc.removeDeadStructural input16924 value5 value1 value2 = (output16924, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16925 value960 value1 value2 = (output16925, value6896, value1) := by
  rw [input16925_def, output16925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1923]
  try dsimp only
  rw [child16924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1923_skip, output16924_skip]
  kernel_rfl

theorem node16926_cond_eq
    (child1912 : Flapjack.WordAlloc.removeDeadStructural input1912 value960 value1 value2 = (output1912, value960, value1))
    (child16925 : Flapjack.WordAlloc.removeDeadStructural input16925 value960 value1 value2 = (output16925, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16926 value960 value1 value2 = (output16926, value6896, value1) := by
  rw [input16926_def, output16926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1912]
  try dsimp only
  rw [child16925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1912_skip, output16925_skip]
  kernel_rfl

theorem node16927_cond_eq
    (child1911 : Flapjack.WordAlloc.removeDeadStructural input1911 value959 value1 value2 = (output1911, value960, value1))
    (child16926 : Flapjack.WordAlloc.removeDeadStructural input16926 value960 value1 value2 = (output16926, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16927 value959 value1 value2 = (output16927, value6896, value1) := by
  rw [input16927_def, output16927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1911]
  try dsimp only
  rw [child16926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1911_skip, output16926_skip]
  kernel_rfl

theorem node16928_cond_eq
    (child1910 : Flapjack.WordAlloc.removeDeadStructural input1910 value5 value1 value2 = (output1910, value959, value1))
    (child16927 : Flapjack.WordAlloc.removeDeadStructural input16927 value959 value1 value2 = (output16927, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16928 value5 value1 value2 = (output16928, value6896, value1) := by
  rw [input16928_def, output16928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1910]
  try dsimp only
  rw [child16927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1910_skip, output16927_skip]
  kernel_rfl

theorem node16929_cond_eq
    (child1907 : Flapjack.WordAlloc.removeDeadStructural input1907 value952 value1 value2 = (output1907, value5, value1))
    (child16928 : Flapjack.WordAlloc.removeDeadStructural input16928 value5 value1 value2 = (output16928, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16929 value952 value1 value2 = (output16929, value6896, value1) := by
  rw [input16929_def, output16929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1907]
  try dsimp only
  rw [child16928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1907_skip, output16928_skip]
  kernel_rfl

theorem node16930_cond_eq
    (child1896 : Flapjack.WordAlloc.removeDeadStructural input1896 value952 value1 value2 = (output1896, value952, value1))
    (child16929 : Flapjack.WordAlloc.removeDeadStructural input16929 value952 value1 value2 = (output16929, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16930 value952 value1 value2 = (output16930, value6896, value1) := by
  rw [input16930_def, output16930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1896]
  try dsimp only
  rw [child16929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1896_skip, output16929_skip]
  kernel_rfl

theorem node16931_cond_eq
    (child1895 : Flapjack.WordAlloc.removeDeadStructural input1895 value951 value1 value2 = (output1895, value952, value1))
    (child16930 : Flapjack.WordAlloc.removeDeadStructural input16930 value952 value1 value2 = (output16930, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16931 value951 value1 value2 = (output16931, value6896, value1) := by
  rw [input16931_def, output16931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1895]
  try dsimp only
  rw [child16930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1895_skip, output16930_skip]
  kernel_rfl

theorem node16932_cond_eq
    (child1894 : Flapjack.WordAlloc.removeDeadStructural input1894 value5 value1 value2 = (output1894, value951, value1))
    (child16931 : Flapjack.WordAlloc.removeDeadStructural input16931 value951 value1 value2 = (output16931, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16932 value5 value1 value2 = (output16932, value6896, value1) := by
  rw [input16932_def, output16932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1894]
  try dsimp only
  rw [child16931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1894_skip, output16931_skip]
  kernel_rfl

theorem node16933_cond_eq
    (child1891 : Flapjack.WordAlloc.removeDeadStructural input1891 value944 value1 value2 = (output1891, value5, value1))
    (child16932 : Flapjack.WordAlloc.removeDeadStructural input16932 value5 value1 value2 = (output16932, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16933 value944 value1 value2 = (output16933, value6896, value1) := by
  rw [input16933_def, output16933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1891]
  try dsimp only
  rw [child16932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1891_skip, output16932_skip]
  kernel_rfl

theorem node16934_cond_eq
    (child1880 : Flapjack.WordAlloc.removeDeadStructural input1880 value944 value1 value2 = (output1880, value944, value1))
    (child16933 : Flapjack.WordAlloc.removeDeadStructural input16933 value944 value1 value2 = (output16933, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16934 value944 value1 value2 = (output16934, value6896, value1) := by
  rw [input16934_def, output16934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1880]
  try dsimp only
  rw [child16933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1880_skip, output16933_skip]
  kernel_rfl

theorem node16935_cond_eq
    (child1879 : Flapjack.WordAlloc.removeDeadStructural input1879 value943 value1 value2 = (output1879, value944, value1))
    (child16934 : Flapjack.WordAlloc.removeDeadStructural input16934 value944 value1 value2 = (output16934, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16935 value943 value1 value2 = (output16935, value6896, value1) := by
  rw [input16935_def, output16935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1879]
  try dsimp only
  rw [child16934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1879_skip, output16934_skip]
  kernel_rfl

theorem node16936_cond_eq
    (child1878 : Flapjack.WordAlloc.removeDeadStructural input1878 value5 value1 value2 = (output1878, value943, value1))
    (child16935 : Flapjack.WordAlloc.removeDeadStructural input16935 value943 value1 value2 = (output16935, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16936 value5 value1 value2 = (output16936, value6896, value1) := by
  rw [input16936_def, output16936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1878]
  try dsimp only
  rw [child16935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1878_skip, output16935_skip]
  kernel_rfl

theorem node16937_cond_eq
    (child1875 : Flapjack.WordAlloc.removeDeadStructural input1875 value936 value1 value2 = (output1875, value5, value1))
    (child16936 : Flapjack.WordAlloc.removeDeadStructural input16936 value5 value1 value2 = (output16936, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16937 value936 value1 value2 = (output16937, value6896, value1) := by
  rw [input16937_def, output16937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1875]
  try dsimp only
  rw [child16936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1875_skip, output16936_skip]
  kernel_rfl

theorem node16938_cond_eq
    (child1864 : Flapjack.WordAlloc.removeDeadStructural input1864 value936 value1 value2 = (output1864, value936, value1))
    (child16937 : Flapjack.WordAlloc.removeDeadStructural input16937 value936 value1 value2 = (output16937, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16938 value936 value1 value2 = (output16938, value6896, value1) := by
  rw [input16938_def, output16938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1864]
  try dsimp only
  rw [child16937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1864_skip, output16937_skip]
  kernel_rfl

theorem node16939_cond_eq
    (child1863 : Flapjack.WordAlloc.removeDeadStructural input1863 value935 value1 value2 = (output1863, value936, value1))
    (child16938 : Flapjack.WordAlloc.removeDeadStructural input16938 value936 value1 value2 = (output16938, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16939 value935 value1 value2 = (output16939, value6896, value1) := by
  rw [input16939_def, output16939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1863]
  try dsimp only
  rw [child16938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1863_skip, output16938_skip]
  kernel_rfl

theorem node16940_cond_eq
    (child1862 : Flapjack.WordAlloc.removeDeadStructural input1862 value5 value1 value2 = (output1862, value935, value1))
    (child16939 : Flapjack.WordAlloc.removeDeadStructural input16939 value935 value1 value2 = (output16939, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16940 value5 value1 value2 = (output16940, value6896, value1) := by
  rw [input16940_def, output16940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1862]
  try dsimp only
  rw [child16939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1862_skip, output16939_skip]
  kernel_rfl

theorem node16941_cond_eq
    (child1859 : Flapjack.WordAlloc.removeDeadStructural input1859 value928 value1 value2 = (output1859, value5, value1))
    (child16940 : Flapjack.WordAlloc.removeDeadStructural input16940 value5 value1 value2 = (output16940, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16941 value928 value1 value2 = (output16941, value6896, value1) := by
  rw [input16941_def, output16941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1859]
  try dsimp only
  rw [child16940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1859_skip, output16940_skip]
  kernel_rfl

theorem node16942_cond_eq
    (child1848 : Flapjack.WordAlloc.removeDeadStructural input1848 value928 value1 value2 = (output1848, value928, value1))
    (child16941 : Flapjack.WordAlloc.removeDeadStructural input16941 value928 value1 value2 = (output16941, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16942 value928 value1 value2 = (output16942, value6896, value1) := by
  rw [input16942_def, output16942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1848]
  try dsimp only
  rw [child16941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1848_skip, output16941_skip]
  kernel_rfl

theorem node16943_cond_eq
    (child1847 : Flapjack.WordAlloc.removeDeadStructural input1847 value927 value1 value2 = (output1847, value928, value1))
    (child16942 : Flapjack.WordAlloc.removeDeadStructural input16942 value928 value1 value2 = (output16942, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16943 value927 value1 value2 = (output16943, value6896, value1) := by
  rw [input16943_def, output16943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1847]
  try dsimp only
  rw [child16942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1847_skip, output16942_skip]
  kernel_rfl

theorem node16944_cond_eq
    (child1846 : Flapjack.WordAlloc.removeDeadStructural input1846 value5 value1 value2 = (output1846, value927, value1))
    (child16943 : Flapjack.WordAlloc.removeDeadStructural input16943 value927 value1 value2 = (output16943, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16944 value5 value1 value2 = (output16944, value6896, value1) := by
  rw [input16944_def, output16944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1846]
  try dsimp only
  rw [child16943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1846_skip, output16943_skip]
  kernel_rfl

theorem node16945_cond_eq
    (child1843 : Flapjack.WordAlloc.removeDeadStructural input1843 value920 value1 value2 = (output1843, value5, value1))
    (child16944 : Flapjack.WordAlloc.removeDeadStructural input16944 value5 value1 value2 = (output16944, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16945 value920 value1 value2 = (output16945, value6896, value1) := by
  rw [input16945_def, output16945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1843]
  try dsimp only
  rw [child16944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1843_skip, output16944_skip]
  kernel_rfl

theorem node16946_cond_eq
    (child1832 : Flapjack.WordAlloc.removeDeadStructural input1832 value920 value1 value2 = (output1832, value920, value1))
    (child16945 : Flapjack.WordAlloc.removeDeadStructural input16945 value920 value1 value2 = (output16945, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16946 value920 value1 value2 = (output16946, value6896, value1) := by
  rw [input16946_def, output16946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1832]
  try dsimp only
  rw [child16945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1832_skip, output16945_skip]
  kernel_rfl

theorem node16947_cond_eq
    (child1831 : Flapjack.WordAlloc.removeDeadStructural input1831 value919 value1 value2 = (output1831, value920, value1))
    (child16946 : Flapjack.WordAlloc.removeDeadStructural input16946 value920 value1 value2 = (output16946, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16947 value919 value1 value2 = (output16947, value6896, value1) := by
  rw [input16947_def, output16947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1831]
  try dsimp only
  rw [child16946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1831_skip, output16946_skip]
  kernel_rfl

theorem node16948_cond_eq
    (child1830 : Flapjack.WordAlloc.removeDeadStructural input1830 value5 value1 value2 = (output1830, value919, value1))
    (child16947 : Flapjack.WordAlloc.removeDeadStructural input16947 value919 value1 value2 = (output16947, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16948 value5 value1 value2 = (output16948, value6896, value1) := by
  rw [input16948_def, output16948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1830]
  try dsimp only
  rw [child16947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1830_skip, output16947_skip]
  kernel_rfl

theorem node16949_cond_eq
    (child1827 : Flapjack.WordAlloc.removeDeadStructural input1827 value912 value1 value2 = (output1827, value5, value1))
    (child16948 : Flapjack.WordAlloc.removeDeadStructural input16948 value5 value1 value2 = (output16948, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16949 value912 value1 value2 = (output16949, value6896, value1) := by
  rw [input16949_def, output16949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1827]
  try dsimp only
  rw [child16948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1827_skip, output16948_skip]
  kernel_rfl

theorem node16950_cond_eq
    (child1816 : Flapjack.WordAlloc.removeDeadStructural input1816 value912 value1 value2 = (output1816, value912, value1))
    (child16949 : Flapjack.WordAlloc.removeDeadStructural input16949 value912 value1 value2 = (output16949, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16950 value912 value1 value2 = (output16950, value6896, value1) := by
  rw [input16950_def, output16950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1816]
  try dsimp only
  rw [child16949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1816_skip, output16949_skip]
  kernel_rfl

theorem node16951_cond_eq
    (child1815 : Flapjack.WordAlloc.removeDeadStructural input1815 value911 value1 value2 = (output1815, value912, value1))
    (child16950 : Flapjack.WordAlloc.removeDeadStructural input16950 value912 value1 value2 = (output16950, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16951 value911 value1 value2 = (output16951, value6896, value1) := by
  rw [input16951_def, output16951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1815]
  try dsimp only
  rw [child16950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1815_skip, output16950_skip]
  kernel_rfl

theorem node16952_cond_eq
    (child1814 : Flapjack.WordAlloc.removeDeadStructural input1814 value5 value1 value2 = (output1814, value911, value1))
    (child16951 : Flapjack.WordAlloc.removeDeadStructural input16951 value911 value1 value2 = (output16951, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16952 value5 value1 value2 = (output16952, value6896, value1) := by
  rw [input16952_def, output16952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1814]
  try dsimp only
  rw [child16951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1814_skip, output16951_skip]
  kernel_rfl

theorem node16953_cond_eq
    (child1811 : Flapjack.WordAlloc.removeDeadStructural input1811 value904 value1 value2 = (output1811, value5, value1))
    (child16952 : Flapjack.WordAlloc.removeDeadStructural input16952 value5 value1 value2 = (output16952, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16953 value904 value1 value2 = (output16953, value6896, value1) := by
  rw [input16953_def, output16953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1811]
  try dsimp only
  rw [child16952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1811_skip, output16952_skip]
  kernel_rfl

theorem node16954_cond_eq
    (child1800 : Flapjack.WordAlloc.removeDeadStructural input1800 value904 value1 value2 = (output1800, value904, value1))
    (child16953 : Flapjack.WordAlloc.removeDeadStructural input16953 value904 value1 value2 = (output16953, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16954 value904 value1 value2 = (output16954, value6896, value1) := by
  rw [input16954_def, output16954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1800]
  try dsimp only
  rw [child16953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1800_skip, output16953_skip]
  kernel_rfl

theorem node16955_cond_eq
    (child1799 : Flapjack.WordAlloc.removeDeadStructural input1799 value903 value1 value2 = (output1799, value904, value1))
    (child16954 : Flapjack.WordAlloc.removeDeadStructural input16954 value904 value1 value2 = (output16954, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16955 value903 value1 value2 = (output16955, value6896, value1) := by
  rw [input16955_def, output16955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1799]
  try dsimp only
  rw [child16954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1799_skip, output16954_skip]
  kernel_rfl

theorem node16956_cond_eq
    (child1798 : Flapjack.WordAlloc.removeDeadStructural input1798 value5 value1 value2 = (output1798, value903, value1))
    (child16955 : Flapjack.WordAlloc.removeDeadStructural input16955 value903 value1 value2 = (output16955, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16956 value5 value1 value2 = (output16956, value6896, value1) := by
  rw [input16956_def, output16956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1798]
  try dsimp only
  rw [child16955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1798_skip, output16955_skip]
  kernel_rfl

theorem node16957_cond_eq
    (child1795 : Flapjack.WordAlloc.removeDeadStructural input1795 value896 value1 value2 = (output1795, value5, value1))
    (child16956 : Flapjack.WordAlloc.removeDeadStructural input16956 value5 value1 value2 = (output16956, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16957 value896 value1 value2 = (output16957, value6896, value1) := by
  rw [input16957_def, output16957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1795]
  try dsimp only
  rw [child16956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1795_skip, output16956_skip]
  kernel_rfl

theorem node16958_cond_eq
    (child1784 : Flapjack.WordAlloc.removeDeadStructural input1784 value896 value1 value2 = (output1784, value896, value1))
    (child16957 : Flapjack.WordAlloc.removeDeadStructural input16957 value896 value1 value2 = (output16957, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16958 value896 value1 value2 = (output16958, value6896, value1) := by
  rw [input16958_def, output16958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1784]
  try dsimp only
  rw [child16957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1784_skip, output16957_skip]
  kernel_rfl

theorem node16959_cond_eq
    (child1783 : Flapjack.WordAlloc.removeDeadStructural input1783 value895 value1 value2 = (output1783, value896, value1))
    (child16958 : Flapjack.WordAlloc.removeDeadStructural input16958 value896 value1 value2 = (output16958, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16959 value895 value1 value2 = (output16959, value6896, value1) := by
  rw [input16959_def, output16959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1783]
  try dsimp only
  rw [child16958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1783_skip, output16958_skip]
  kernel_rfl

theorem node16960_cond_eq
    (child1782 : Flapjack.WordAlloc.removeDeadStructural input1782 value5 value1 value2 = (output1782, value895, value1))
    (child16959 : Flapjack.WordAlloc.removeDeadStructural input16959 value895 value1 value2 = (output16959, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16960 value5 value1 value2 = (output16960, value6896, value1) := by
  rw [input16960_def, output16960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1782]
  try dsimp only
  rw [child16959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1782_skip, output16959_skip]
  kernel_rfl

theorem node16961_cond_eq
    (child1779 : Flapjack.WordAlloc.removeDeadStructural input1779 value888 value1 value2 = (output1779, value5, value1))
    (child16960 : Flapjack.WordAlloc.removeDeadStructural input16960 value5 value1 value2 = (output16960, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16961 value888 value1 value2 = (output16961, value6896, value1) := by
  rw [input16961_def, output16961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1779]
  try dsimp only
  rw [child16960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1779_skip, output16960_skip]
  kernel_rfl

theorem node16962_cond_eq
    (child1768 : Flapjack.WordAlloc.removeDeadStructural input1768 value888 value1 value2 = (output1768, value888, value1))
    (child16961 : Flapjack.WordAlloc.removeDeadStructural input16961 value888 value1 value2 = (output16961, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16962 value888 value1 value2 = (output16962, value6896, value1) := by
  rw [input16962_def, output16962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1768]
  try dsimp only
  rw [child16961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1768_skip, output16961_skip]
  kernel_rfl

theorem node16963_cond_eq
    (child1767 : Flapjack.WordAlloc.removeDeadStructural input1767 value887 value1 value2 = (output1767, value888, value1))
    (child16962 : Flapjack.WordAlloc.removeDeadStructural input16962 value888 value1 value2 = (output16962, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16963 value887 value1 value2 = (output16963, value6896, value1) := by
  rw [input16963_def, output16963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1767]
  try dsimp only
  rw [child16962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1767_skip, output16962_skip]
  kernel_rfl

theorem node16964_cond_eq
    (child1766 : Flapjack.WordAlloc.removeDeadStructural input1766 value5 value1 value2 = (output1766, value887, value1))
    (child16963 : Flapjack.WordAlloc.removeDeadStructural input16963 value887 value1 value2 = (output16963, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16964 value5 value1 value2 = (output16964, value6896, value1) := by
  rw [input16964_def, output16964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1766]
  try dsimp only
  rw [child16963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1766_skip, output16963_skip]
  kernel_rfl

theorem node16965_cond_eq
    (child1763 : Flapjack.WordAlloc.removeDeadStructural input1763 value880 value1 value2 = (output1763, value5, value1))
    (child16964 : Flapjack.WordAlloc.removeDeadStructural input16964 value5 value1 value2 = (output16964, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16965 value880 value1 value2 = (output16965, value6896, value1) := by
  rw [input16965_def, output16965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1763]
  try dsimp only
  rw [child16964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1763_skip, output16964_skip]
  kernel_rfl

theorem node16966_cond_eq
    (child1752 : Flapjack.WordAlloc.removeDeadStructural input1752 value880 value1 value2 = (output1752, value880, value1))
    (child16965 : Flapjack.WordAlloc.removeDeadStructural input16965 value880 value1 value2 = (output16965, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16966 value880 value1 value2 = (output16966, value6896, value1) := by
  rw [input16966_def, output16966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1752]
  try dsimp only
  rw [child16965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1752_skip, output16965_skip]
  kernel_rfl

theorem node16967_cond_eq
    (child1751 : Flapjack.WordAlloc.removeDeadStructural input1751 value879 value1 value2 = (output1751, value880, value1))
    (child16966 : Flapjack.WordAlloc.removeDeadStructural input16966 value880 value1 value2 = (output16966, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16967 value879 value1 value2 = (output16967, value6896, value1) := by
  rw [input16967_def, output16967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1751]
  try dsimp only
  rw [child16966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1751_skip, output16966_skip]
  kernel_rfl

theorem node16968_cond_eq
    (child1750 : Flapjack.WordAlloc.removeDeadStructural input1750 value5 value1 value2 = (output1750, value879, value1))
    (child16967 : Flapjack.WordAlloc.removeDeadStructural input16967 value879 value1 value2 = (output16967, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16968 value5 value1 value2 = (output16968, value6896, value1) := by
  rw [input16968_def, output16968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1750]
  try dsimp only
  rw [child16967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1750_skip, output16967_skip]
  kernel_rfl

theorem node16969_cond_eq
    (child1747 : Flapjack.WordAlloc.removeDeadStructural input1747 value872 value1 value2 = (output1747, value5, value1))
    (child16968 : Flapjack.WordAlloc.removeDeadStructural input16968 value5 value1 value2 = (output16968, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16969 value872 value1 value2 = (output16969, value6896, value1) := by
  rw [input16969_def, output16969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1747]
  try dsimp only
  rw [child16968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1747_skip, output16968_skip]
  kernel_rfl

theorem node16970_cond_eq
    (child1736 : Flapjack.WordAlloc.removeDeadStructural input1736 value872 value1 value2 = (output1736, value872, value1))
    (child16969 : Flapjack.WordAlloc.removeDeadStructural input16969 value872 value1 value2 = (output16969, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16970 value872 value1 value2 = (output16970, value6896, value1) := by
  rw [input16970_def, output16970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1736]
  try dsimp only
  rw [child16969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1736_skip, output16969_skip]
  kernel_rfl

theorem node16971_cond_eq
    (child1735 : Flapjack.WordAlloc.removeDeadStructural input1735 value871 value1 value2 = (output1735, value872, value1))
    (child16970 : Flapjack.WordAlloc.removeDeadStructural input16970 value872 value1 value2 = (output16970, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16971 value871 value1 value2 = (output16971, value6896, value1) := by
  rw [input16971_def, output16971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1735]
  try dsimp only
  rw [child16970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1735_skip, output16970_skip]
  kernel_rfl

theorem node16972_cond_eq
    (child1734 : Flapjack.WordAlloc.removeDeadStructural input1734 value5 value1 value2 = (output1734, value871, value1))
    (child16971 : Flapjack.WordAlloc.removeDeadStructural input16971 value871 value1 value2 = (output16971, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16972 value5 value1 value2 = (output16972, value6896, value1) := by
  rw [input16972_def, output16972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1734]
  try dsimp only
  rw [child16971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1734_skip, output16971_skip]
  kernel_rfl

theorem node16973_cond_eq
    (child1731 : Flapjack.WordAlloc.removeDeadStructural input1731 value864 value1 value2 = (output1731, value5, value1))
    (child16972 : Flapjack.WordAlloc.removeDeadStructural input16972 value5 value1 value2 = (output16972, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16973 value864 value1 value2 = (output16973, value6896, value1) := by
  rw [input16973_def, output16973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1731]
  try dsimp only
  rw [child16972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1731_skip, output16972_skip]
  kernel_rfl

theorem node16974_cond_eq
    (child1720 : Flapjack.WordAlloc.removeDeadStructural input1720 value864 value1 value2 = (output1720, value864, value1))
    (child16973 : Flapjack.WordAlloc.removeDeadStructural input16973 value864 value1 value2 = (output16973, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16974 value864 value1 value2 = (output16974, value6896, value1) := by
  rw [input16974_def, output16974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1720]
  try dsimp only
  rw [child16973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1720_skip, output16973_skip]
  kernel_rfl

theorem node16975_cond_eq
    (child1719 : Flapjack.WordAlloc.removeDeadStructural input1719 value863 value1 value2 = (output1719, value864, value1))
    (child16974 : Flapjack.WordAlloc.removeDeadStructural input16974 value864 value1 value2 = (output16974, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16975 value863 value1 value2 = (output16975, value6896, value1) := by
  rw [input16975_def, output16975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1719]
  try dsimp only
  rw [child16974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1719_skip, output16974_skip]
  kernel_rfl

theorem node16976_cond_eq
    (child1718 : Flapjack.WordAlloc.removeDeadStructural input1718 value5 value1 value2 = (output1718, value863, value1))
    (child16975 : Flapjack.WordAlloc.removeDeadStructural input16975 value863 value1 value2 = (output16975, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16976 value5 value1 value2 = (output16976, value6896, value1) := by
  rw [input16976_def, output16976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1718]
  try dsimp only
  rw [child16975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1718_skip, output16975_skip]
  kernel_rfl

theorem node16977_cond_eq
    (child1715 : Flapjack.WordAlloc.removeDeadStructural input1715 value856 value1 value2 = (output1715, value5, value1))
    (child16976 : Flapjack.WordAlloc.removeDeadStructural input16976 value5 value1 value2 = (output16976, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16977 value856 value1 value2 = (output16977, value6896, value1) := by
  rw [input16977_def, output16977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1715]
  try dsimp only
  rw [child16976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1715_skip, output16976_skip]
  kernel_rfl

theorem node16978_cond_eq
    (child1704 : Flapjack.WordAlloc.removeDeadStructural input1704 value856 value1 value2 = (output1704, value856, value1))
    (child16977 : Flapjack.WordAlloc.removeDeadStructural input16977 value856 value1 value2 = (output16977, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16978 value856 value1 value2 = (output16978, value6896, value1) := by
  rw [input16978_def, output16978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1704]
  try dsimp only
  rw [child16977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1704_skip, output16977_skip]
  kernel_rfl

theorem node16979_cond_eq
    (child1703 : Flapjack.WordAlloc.removeDeadStructural input1703 value855 value1 value2 = (output1703, value856, value1))
    (child16978 : Flapjack.WordAlloc.removeDeadStructural input16978 value856 value1 value2 = (output16978, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16979 value855 value1 value2 = (output16979, value6896, value1) := by
  rw [input16979_def, output16979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1703]
  try dsimp only
  rw [child16978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1703_skip, output16978_skip]
  kernel_rfl

theorem node16980_cond_eq
    (child1702 : Flapjack.WordAlloc.removeDeadStructural input1702 value5 value1 value2 = (output1702, value855, value1))
    (child16979 : Flapjack.WordAlloc.removeDeadStructural input16979 value855 value1 value2 = (output16979, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16980 value5 value1 value2 = (output16980, value6896, value1) := by
  rw [input16980_def, output16980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1702]
  try dsimp only
  rw [child16979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1702_skip, output16979_skip]
  kernel_rfl

theorem node16981_cond_eq
    (child1699 : Flapjack.WordAlloc.removeDeadStructural input1699 value848 value1 value2 = (output1699, value5, value1))
    (child16980 : Flapjack.WordAlloc.removeDeadStructural input16980 value5 value1 value2 = (output16980, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16981 value848 value1 value2 = (output16981, value6896, value1) := by
  rw [input16981_def, output16981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1699]
  try dsimp only
  rw [child16980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1699_skip, output16980_skip]
  kernel_rfl

theorem node16982_cond_eq
    (child1688 : Flapjack.WordAlloc.removeDeadStructural input1688 value848 value1 value2 = (output1688, value848, value1))
    (child16981 : Flapjack.WordAlloc.removeDeadStructural input16981 value848 value1 value2 = (output16981, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16982 value848 value1 value2 = (output16982, value6896, value1) := by
  rw [input16982_def, output16982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1688]
  try dsimp only
  rw [child16981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1688_skip, output16981_skip]
  kernel_rfl

theorem node16983_cond_eq
    (child1687 : Flapjack.WordAlloc.removeDeadStructural input1687 value847 value1 value2 = (output1687, value848, value1))
    (child16982 : Flapjack.WordAlloc.removeDeadStructural input16982 value848 value1 value2 = (output16982, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16983 value847 value1 value2 = (output16983, value6896, value1) := by
  rw [input16983_def, output16983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1687]
  try dsimp only
  rw [child16982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1687_skip, output16982_skip]
  kernel_rfl

theorem node16984_cond_eq
    (child1686 : Flapjack.WordAlloc.removeDeadStructural input1686 value5 value1 value2 = (output1686, value847, value1))
    (child16983 : Flapjack.WordAlloc.removeDeadStructural input16983 value847 value1 value2 = (output16983, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16984 value5 value1 value2 = (output16984, value6896, value1) := by
  rw [input16984_def, output16984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1686]
  try dsimp only
  rw [child16983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1686_skip, output16983_skip]
  kernel_rfl

theorem node16985_cond_eq
    (child1683 : Flapjack.WordAlloc.removeDeadStructural input1683 value840 value1 value2 = (output1683, value5, value1))
    (child16984 : Flapjack.WordAlloc.removeDeadStructural input16984 value5 value1 value2 = (output16984, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16985 value840 value1 value2 = (output16985, value6896, value1) := by
  rw [input16985_def, output16985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1683]
  try dsimp only
  rw [child16984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1683_skip, output16984_skip]
  kernel_rfl

theorem node16986_cond_eq
    (child1672 : Flapjack.WordAlloc.removeDeadStructural input1672 value840 value1 value2 = (output1672, value840, value1))
    (child16985 : Flapjack.WordAlloc.removeDeadStructural input16985 value840 value1 value2 = (output16985, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16986 value840 value1 value2 = (output16986, value6896, value1) := by
  rw [input16986_def, output16986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1672]
  try dsimp only
  rw [child16985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1672_skip, output16985_skip]
  kernel_rfl

theorem node16987_cond_eq
    (child1671 : Flapjack.WordAlloc.removeDeadStructural input1671 value839 value1 value2 = (output1671, value840, value1))
    (child16986 : Flapjack.WordAlloc.removeDeadStructural input16986 value840 value1 value2 = (output16986, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16987 value839 value1 value2 = (output16987, value6896, value1) := by
  rw [input16987_def, output16987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1671]
  try dsimp only
  rw [child16986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1671_skip, output16986_skip]
  kernel_rfl

theorem node16988_cond_eq
    (child1670 : Flapjack.WordAlloc.removeDeadStructural input1670 value5 value1 value2 = (output1670, value839, value1))
    (child16987 : Flapjack.WordAlloc.removeDeadStructural input16987 value839 value1 value2 = (output16987, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16988 value5 value1 value2 = (output16988, value6896, value1) := by
  rw [input16988_def, output16988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1670]
  try dsimp only
  rw [child16987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1670_skip, output16987_skip]
  kernel_rfl

theorem node16989_cond_eq
    (child1667 : Flapjack.WordAlloc.removeDeadStructural input1667 value832 value1 value2 = (output1667, value5, value1))
    (child16988 : Flapjack.WordAlloc.removeDeadStructural input16988 value5 value1 value2 = (output16988, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16989 value832 value1 value2 = (output16989, value6896, value1) := by
  rw [input16989_def, output16989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1667]
  try dsimp only
  rw [child16988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1667_skip, output16988_skip]
  kernel_rfl

theorem node16990_cond_eq
    (child1656 : Flapjack.WordAlloc.removeDeadStructural input1656 value832 value1 value2 = (output1656, value832, value1))
    (child16989 : Flapjack.WordAlloc.removeDeadStructural input16989 value832 value1 value2 = (output16989, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16990 value832 value1 value2 = (output16990, value6896, value1) := by
  rw [input16990_def, output16990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1656]
  try dsimp only
  rw [child16989]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1656_skip, output16989_skip]
  kernel_rfl

theorem node16991_cond_eq
    (child1655 : Flapjack.WordAlloc.removeDeadStructural input1655 value831 value1 value2 = (output1655, value832, value1))
    (child16990 : Flapjack.WordAlloc.removeDeadStructural input16990 value832 value1 value2 = (output16990, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16991 value831 value1 value2 = (output16991, value6896, value1) := by
  rw [input16991_def, output16991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1655]
  try dsimp only
  rw [child16990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1655_skip, output16990_skip]
  kernel_rfl

theorem node16992_cond_eq
    (child1654 : Flapjack.WordAlloc.removeDeadStructural input1654 value5 value1 value2 = (output1654, value831, value1))
    (child16991 : Flapjack.WordAlloc.removeDeadStructural input16991 value831 value1 value2 = (output16991, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16992 value5 value1 value2 = (output16992, value6896, value1) := by
  rw [input16992_def, output16992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1654]
  try dsimp only
  rw [child16991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1654_skip, output16991_skip]
  kernel_rfl

theorem node16993_cond_eq
    (child1651 : Flapjack.WordAlloc.removeDeadStructural input1651 value824 value1 value2 = (output1651, value5, value1))
    (child16992 : Flapjack.WordAlloc.removeDeadStructural input16992 value5 value1 value2 = (output16992, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16993 value824 value1 value2 = (output16993, value6896, value1) := by
  rw [input16993_def, output16993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1651]
  try dsimp only
  rw [child16992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1651_skip, output16992_skip]
  kernel_rfl

theorem node16994_cond_eq
    (child1640 : Flapjack.WordAlloc.removeDeadStructural input1640 value824 value1 value2 = (output1640, value824, value1))
    (child16993 : Flapjack.WordAlloc.removeDeadStructural input16993 value824 value1 value2 = (output16993, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16994 value824 value1 value2 = (output16994, value6896, value1) := by
  rw [input16994_def, output16994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1640]
  try dsimp only
  rw [child16993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1640_skip, output16993_skip]
  kernel_rfl

theorem node16995_cond_eq
    (child1639 : Flapjack.WordAlloc.removeDeadStructural input1639 value823 value1 value2 = (output1639, value824, value1))
    (child16994 : Flapjack.WordAlloc.removeDeadStructural input16994 value824 value1 value2 = (output16994, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16995 value823 value1 value2 = (output16995, value6896, value1) := by
  rw [input16995_def, output16995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1639]
  try dsimp only
  rw [child16994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1639_skip, output16994_skip]
  kernel_rfl

theorem node16996_cond_eq
    (child1638 : Flapjack.WordAlloc.removeDeadStructural input1638 value5 value1 value2 = (output1638, value823, value1))
    (child16995 : Flapjack.WordAlloc.removeDeadStructural input16995 value823 value1 value2 = (output16995, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16996 value5 value1 value2 = (output16996, value6896, value1) := by
  rw [input16996_def, output16996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1638]
  try dsimp only
  rw [child16995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1638_skip, output16995_skip]
  kernel_rfl

theorem node16997_cond_eq
    (child1635 : Flapjack.WordAlloc.removeDeadStructural input1635 value816 value1 value2 = (output1635, value5, value1))
    (child16996 : Flapjack.WordAlloc.removeDeadStructural input16996 value5 value1 value2 = (output16996, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16997 value816 value1 value2 = (output16997, value6896, value1) := by
  rw [input16997_def, output16997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1635]
  try dsimp only
  rw [child16996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1635_skip, output16996_skip]
  kernel_rfl

theorem node16998_cond_eq
    (child1624 : Flapjack.WordAlloc.removeDeadStructural input1624 value816 value1 value2 = (output1624, value816, value1))
    (child16997 : Flapjack.WordAlloc.removeDeadStructural input16997 value816 value1 value2 = (output16997, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16998 value816 value1 value2 = (output16998, value6896, value1) := by
  rw [input16998_def, output16998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1624]
  try dsimp only
  rw [child16997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1624_skip, output16997_skip]
  kernel_rfl

theorem node16999_cond_eq
    (child1623 : Flapjack.WordAlloc.removeDeadStructural input1623 value815 value1 value2 = (output1623, value816, value1))
    (child16998 : Flapjack.WordAlloc.removeDeadStructural input16998 value816 value1 value2 = (output16998, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16999 value815 value1 value2 = (output16999, value6896, value1) := by
  rw [input16999_def, output16999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1623]
  try dsimp only
  rw [child16998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1623_skip, output16998_skip]
  kernel_rfl

theorem node17000_cond_eq
    (child1622 : Flapjack.WordAlloc.removeDeadStructural input1622 value5 value1 value2 = (output1622, value815, value1))
    (child16999 : Flapjack.WordAlloc.removeDeadStructural input16999 value815 value1 value2 = (output16999, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17000 value5 value1 value2 = (output17000, value6896, value1) := by
  rw [input17000_def, output17000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1622]
  try dsimp only
  rw [child16999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1622_skip, output16999_skip]
  kernel_rfl

theorem node17001_cond_eq
    (child1619 : Flapjack.WordAlloc.removeDeadStructural input1619 value808 value1 value2 = (output1619, value5, value1))
    (child17000 : Flapjack.WordAlloc.removeDeadStructural input17000 value5 value1 value2 = (output17000, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17001 value808 value1 value2 = (output17001, value6896, value1) := by
  rw [input17001_def, output17001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1619]
  try dsimp only
  rw [child17000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1619_skip, output17000_skip]
  kernel_rfl

theorem node17002_cond_eq
    (child1608 : Flapjack.WordAlloc.removeDeadStructural input1608 value808 value1 value2 = (output1608, value808, value1))
    (child17001 : Flapjack.WordAlloc.removeDeadStructural input17001 value808 value1 value2 = (output17001, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17002 value808 value1 value2 = (output17002, value6896, value1) := by
  rw [input17002_def, output17002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1608]
  try dsimp only
  rw [child17001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1608_skip, output17001_skip]
  kernel_rfl

theorem node17003_cond_eq
    (child1607 : Flapjack.WordAlloc.removeDeadStructural input1607 value807 value1 value2 = (output1607, value808, value1))
    (child17002 : Flapjack.WordAlloc.removeDeadStructural input17002 value808 value1 value2 = (output17002, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17003 value807 value1 value2 = (output17003, value6896, value1) := by
  rw [input17003_def, output17003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1607]
  try dsimp only
  rw [child17002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1607_skip, output17002_skip]
  kernel_rfl

theorem node17004_cond_eq
    (child1606 : Flapjack.WordAlloc.removeDeadStructural input1606 value5 value1 value2 = (output1606, value807, value1))
    (child17003 : Flapjack.WordAlloc.removeDeadStructural input17003 value807 value1 value2 = (output17003, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17004 value5 value1 value2 = (output17004, value6896, value1) := by
  rw [input17004_def, output17004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1606]
  try dsimp only
  rw [child17003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1606_skip, output17003_skip]
  kernel_rfl

theorem node17005_cond_eq
    (child1603 : Flapjack.WordAlloc.removeDeadStructural input1603 value800 value1 value2 = (output1603, value5, value1))
    (child17004 : Flapjack.WordAlloc.removeDeadStructural input17004 value5 value1 value2 = (output17004, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17005 value800 value1 value2 = (output17005, value6896, value1) := by
  rw [input17005_def, output17005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1603]
  try dsimp only
  rw [child17004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1603_skip, output17004_skip]
  kernel_rfl

theorem node17006_cond_eq
    (child1592 : Flapjack.WordAlloc.removeDeadStructural input1592 value800 value1 value2 = (output1592, value800, value1))
    (child17005 : Flapjack.WordAlloc.removeDeadStructural input17005 value800 value1 value2 = (output17005, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17006 value800 value1 value2 = (output17006, value6896, value1) := by
  rw [input17006_def, output17006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1592]
  try dsimp only
  rw [child17005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1592_skip, output17005_skip]
  kernel_rfl

theorem node17007_cond_eq
    (child1591 : Flapjack.WordAlloc.removeDeadStructural input1591 value799 value1 value2 = (output1591, value800, value1))
    (child17006 : Flapjack.WordAlloc.removeDeadStructural input17006 value800 value1 value2 = (output17006, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17007 value799 value1 value2 = (output17007, value6896, value1) := by
  rw [input17007_def, output17007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1591]
  try dsimp only
  rw [child17006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1591_skip, output17006_skip]
  kernel_rfl

theorem node17008_cond_eq
    (child1590 : Flapjack.WordAlloc.removeDeadStructural input1590 value5 value1 value2 = (output1590, value799, value1))
    (child17007 : Flapjack.WordAlloc.removeDeadStructural input17007 value799 value1 value2 = (output17007, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17008 value5 value1 value2 = (output17008, value6896, value1) := by
  rw [input17008_def, output17008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1590]
  try dsimp only
  rw [child17007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1590_skip, output17007_skip]
  kernel_rfl

theorem node17009_cond_eq
    (child1587 : Flapjack.WordAlloc.removeDeadStructural input1587 value792 value1 value2 = (output1587, value5, value1))
    (child17008 : Flapjack.WordAlloc.removeDeadStructural input17008 value5 value1 value2 = (output17008, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17009 value792 value1 value2 = (output17009, value6896, value1) := by
  rw [input17009_def, output17009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1587]
  try dsimp only
  rw [child17008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1587_skip, output17008_skip]
  kernel_rfl

theorem node17010_cond_eq
    (child1576 : Flapjack.WordAlloc.removeDeadStructural input1576 value792 value1 value2 = (output1576, value792, value1))
    (child17009 : Flapjack.WordAlloc.removeDeadStructural input17009 value792 value1 value2 = (output17009, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17010 value792 value1 value2 = (output17010, value6896, value1) := by
  rw [input17010_def, output17010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1576]
  try dsimp only
  rw [child17009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1576_skip, output17009_skip]
  kernel_rfl

theorem node17011_cond_eq
    (child1575 : Flapjack.WordAlloc.removeDeadStructural input1575 value791 value1 value2 = (output1575, value792, value1))
    (child17010 : Flapjack.WordAlloc.removeDeadStructural input17010 value792 value1 value2 = (output17010, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17011 value791 value1 value2 = (output17011, value6896, value1) := by
  rw [input17011_def, output17011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1575]
  try dsimp only
  rw [child17010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1575_skip, output17010_skip]
  kernel_rfl

theorem node17012_cond_eq
    (child1574 : Flapjack.WordAlloc.removeDeadStructural input1574 value5 value1 value2 = (output1574, value791, value1))
    (child17011 : Flapjack.WordAlloc.removeDeadStructural input17011 value791 value1 value2 = (output17011, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17012 value5 value1 value2 = (output17012, value6896, value1) := by
  rw [input17012_def, output17012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1574]
  try dsimp only
  rw [child17011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1574_skip, output17011_skip]
  kernel_rfl

theorem node17013_cond_eq
    (child1571 : Flapjack.WordAlloc.removeDeadStructural input1571 value784 value1 value2 = (output1571, value5, value1))
    (child17012 : Flapjack.WordAlloc.removeDeadStructural input17012 value5 value1 value2 = (output17012, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17013 value784 value1 value2 = (output17013, value6896, value1) := by
  rw [input17013_def, output17013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1571]
  try dsimp only
  rw [child17012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1571_skip, output17012_skip]
  kernel_rfl

theorem node17014_cond_eq
    (child1560 : Flapjack.WordAlloc.removeDeadStructural input1560 value784 value1 value2 = (output1560, value784, value1))
    (child17013 : Flapjack.WordAlloc.removeDeadStructural input17013 value784 value1 value2 = (output17013, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17014 value784 value1 value2 = (output17014, value6896, value1) := by
  rw [input17014_def, output17014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1560]
  try dsimp only
  rw [child17013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1560_skip, output17013_skip]
  kernel_rfl

theorem node17015_cond_eq
    (child1559 : Flapjack.WordAlloc.removeDeadStructural input1559 value783 value1 value2 = (output1559, value784, value1))
    (child17014 : Flapjack.WordAlloc.removeDeadStructural input17014 value784 value1 value2 = (output17014, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17015 value783 value1 value2 = (output17015, value6896, value1) := by
  rw [input17015_def, output17015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1559]
  try dsimp only
  rw [child17014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1559_skip, output17014_skip]
  kernel_rfl

theorem node17016_cond_eq
    (child1558 : Flapjack.WordAlloc.removeDeadStructural input1558 value5 value1 value2 = (output1558, value783, value1))
    (child17015 : Flapjack.WordAlloc.removeDeadStructural input17015 value783 value1 value2 = (output17015, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17016 value5 value1 value2 = (output17016, value6896, value1) := by
  rw [input17016_def, output17016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1558]
  try dsimp only
  rw [child17015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1558_skip, output17015_skip]
  kernel_rfl

theorem node17017_cond_eq
    (child1555 : Flapjack.WordAlloc.removeDeadStructural input1555 value776 value1 value2 = (output1555, value5, value1))
    (child17016 : Flapjack.WordAlloc.removeDeadStructural input17016 value5 value1 value2 = (output17016, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17017 value776 value1 value2 = (output17017, value6896, value1) := by
  rw [input17017_def, output17017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1555]
  try dsimp only
  rw [child17016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1555_skip, output17016_skip]
  kernel_rfl

theorem node17018_cond_eq
    (child1544 : Flapjack.WordAlloc.removeDeadStructural input1544 value776 value1 value2 = (output1544, value776, value1))
    (child17017 : Flapjack.WordAlloc.removeDeadStructural input17017 value776 value1 value2 = (output17017, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17018 value776 value1 value2 = (output17018, value6896, value1) := by
  rw [input17018_def, output17018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1544]
  try dsimp only
  rw [child17017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1544_skip, output17017_skip]
  kernel_rfl

theorem node17019_cond_eq
    (child1543 : Flapjack.WordAlloc.removeDeadStructural input1543 value775 value1 value2 = (output1543, value776, value1))
    (child17018 : Flapjack.WordAlloc.removeDeadStructural input17018 value776 value1 value2 = (output17018, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17019 value775 value1 value2 = (output17019, value6896, value1) := by
  rw [input17019_def, output17019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1543]
  try dsimp only
  rw [child17018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1543_skip, output17018_skip]
  kernel_rfl

theorem node17020_cond_eq
    (child1542 : Flapjack.WordAlloc.removeDeadStructural input1542 value5 value1 value2 = (output1542, value775, value1))
    (child17019 : Flapjack.WordAlloc.removeDeadStructural input17019 value775 value1 value2 = (output17019, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17020 value5 value1 value2 = (output17020, value6896, value1) := by
  rw [input17020_def, output17020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1542]
  try dsimp only
  rw [child17019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1542_skip, output17019_skip]
  kernel_rfl

theorem node17021_cond_eq
    (child1539 : Flapjack.WordAlloc.removeDeadStructural input1539 value768 value1 value2 = (output1539, value5, value1))
    (child17020 : Flapjack.WordAlloc.removeDeadStructural input17020 value5 value1 value2 = (output17020, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17021 value768 value1 value2 = (output17021, value6896, value1) := by
  rw [input17021_def, output17021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1539]
  try dsimp only
  rw [child17020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1539_skip, output17020_skip]
  kernel_rfl

theorem node17022_cond_eq
    (child1528 : Flapjack.WordAlloc.removeDeadStructural input1528 value768 value1 value2 = (output1528, value768, value1))
    (child17021 : Flapjack.WordAlloc.removeDeadStructural input17021 value768 value1 value2 = (output17021, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17022 value768 value1 value2 = (output17022, value6896, value1) := by
  rw [input17022_def, output17022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1528]
  try dsimp only
  rw [child17021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1528_skip, output17021_skip]
  kernel_rfl

theorem node17023_cond_eq
    (child1527 : Flapjack.WordAlloc.removeDeadStructural input1527 value767 value1 value2 = (output1527, value768, value1))
    (child17022 : Flapjack.WordAlloc.removeDeadStructural input17022 value768 value1 value2 = (output17022, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17023 value767 value1 value2 = (output17023, value6896, value1) := by
  rw [input17023_def, output17023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1527]
  try dsimp only
  rw [child17022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1527_skip, output17022_skip]
  kernel_rfl

theorem node17024_cond_eq
    (child1526 : Flapjack.WordAlloc.removeDeadStructural input1526 value5 value1 value2 = (output1526, value767, value1))
    (child17023 : Flapjack.WordAlloc.removeDeadStructural input17023 value767 value1 value2 = (output17023, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17024 value5 value1 value2 = (output17024, value6896, value1) := by
  rw [input17024_def, output17024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1526]
  try dsimp only
  rw [child17023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1526_skip, output17023_skip]
  kernel_rfl

theorem node17025_cond_eq
    (child1523 : Flapjack.WordAlloc.removeDeadStructural input1523 value760 value1 value2 = (output1523, value5, value1))
    (child17024 : Flapjack.WordAlloc.removeDeadStructural input17024 value5 value1 value2 = (output17024, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17025 value760 value1 value2 = (output17025, value6896, value1) := by
  rw [input17025_def, output17025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1523]
  try dsimp only
  rw [child17024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1523_skip, output17024_skip]
  kernel_rfl

theorem node17026_cond_eq
    (child1512 : Flapjack.WordAlloc.removeDeadStructural input1512 value760 value1 value2 = (output1512, value760, value1))
    (child17025 : Flapjack.WordAlloc.removeDeadStructural input17025 value760 value1 value2 = (output17025, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17026 value760 value1 value2 = (output17026, value6896, value1) := by
  rw [input17026_def, output17026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1512]
  try dsimp only
  rw [child17025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1512_skip, output17025_skip]
  kernel_rfl

theorem node17027_cond_eq
    (child1511 : Flapjack.WordAlloc.removeDeadStructural input1511 value759 value1 value2 = (output1511, value760, value1))
    (child17026 : Flapjack.WordAlloc.removeDeadStructural input17026 value760 value1 value2 = (output17026, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17027 value759 value1 value2 = (output17027, value6896, value1) := by
  rw [input17027_def, output17027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1511]
  try dsimp only
  rw [child17026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1511_skip, output17026_skip]
  kernel_rfl

theorem node17028_cond_eq
    (child1510 : Flapjack.WordAlloc.removeDeadStructural input1510 value5 value1 value2 = (output1510, value759, value1))
    (child17027 : Flapjack.WordAlloc.removeDeadStructural input17027 value759 value1 value2 = (output17027, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17028 value5 value1 value2 = (output17028, value6896, value1) := by
  rw [input17028_def, output17028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1510]
  try dsimp only
  rw [child17027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1510_skip, output17027_skip]
  kernel_rfl

theorem node17029_cond_eq
    (child1507 : Flapjack.WordAlloc.removeDeadStructural input1507 value752 value1 value2 = (output1507, value5, value1))
    (child17028 : Flapjack.WordAlloc.removeDeadStructural input17028 value5 value1 value2 = (output17028, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17029 value752 value1 value2 = (output17029, value6896, value1) := by
  rw [input17029_def, output17029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1507]
  try dsimp only
  rw [child17028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1507_skip, output17028_skip]
  kernel_rfl

theorem node17030_cond_eq
    (child1496 : Flapjack.WordAlloc.removeDeadStructural input1496 value752 value1 value2 = (output1496, value752, value1))
    (child17029 : Flapjack.WordAlloc.removeDeadStructural input17029 value752 value1 value2 = (output17029, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17030 value752 value1 value2 = (output17030, value6896, value1) := by
  rw [input17030_def, output17030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1496]
  try dsimp only
  rw [child17029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1496_skip, output17029_skip]
  kernel_rfl

theorem node17031_cond_eq
    (child1495 : Flapjack.WordAlloc.removeDeadStructural input1495 value751 value1 value2 = (output1495, value752, value1))
    (child17030 : Flapjack.WordAlloc.removeDeadStructural input17030 value752 value1 value2 = (output17030, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17031 value751 value1 value2 = (output17031, value6896, value1) := by
  rw [input17031_def, output17031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1495]
  try dsimp only
  rw [child17030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1495_skip, output17030_skip]
  kernel_rfl

theorem node17032_cond_eq
    (child1494 : Flapjack.WordAlloc.removeDeadStructural input1494 value5 value1 value2 = (output1494, value751, value1))
    (child17031 : Flapjack.WordAlloc.removeDeadStructural input17031 value751 value1 value2 = (output17031, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17032 value5 value1 value2 = (output17032, value6896, value1) := by
  rw [input17032_def, output17032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1494]
  try dsimp only
  rw [child17031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1494_skip, output17031_skip]
  kernel_rfl

theorem node17033_cond_eq
    (child1491 : Flapjack.WordAlloc.removeDeadStructural input1491 value744 value1 value2 = (output1491, value5, value1))
    (child17032 : Flapjack.WordAlloc.removeDeadStructural input17032 value5 value1 value2 = (output17032, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17033 value744 value1 value2 = (output17033, value6896, value1) := by
  rw [input17033_def, output17033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1491]
  try dsimp only
  rw [child17032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1491_skip, output17032_skip]
  kernel_rfl

theorem node17034_cond_eq
    (child1480 : Flapjack.WordAlloc.removeDeadStructural input1480 value744 value1 value2 = (output1480, value744, value1))
    (child17033 : Flapjack.WordAlloc.removeDeadStructural input17033 value744 value1 value2 = (output17033, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17034 value744 value1 value2 = (output17034, value6896, value1) := by
  rw [input17034_def, output17034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1480]
  try dsimp only
  rw [child17033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1480_skip, output17033_skip]
  kernel_rfl

theorem node17035_cond_eq
    (child1479 : Flapjack.WordAlloc.removeDeadStructural input1479 value743 value1 value2 = (output1479, value744, value1))
    (child17034 : Flapjack.WordAlloc.removeDeadStructural input17034 value744 value1 value2 = (output17034, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17035 value743 value1 value2 = (output17035, value6896, value1) := by
  rw [input17035_def, output17035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1479]
  try dsimp only
  rw [child17034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1479_skip, output17034_skip]
  kernel_rfl

theorem node17036_cond_eq
    (child1478 : Flapjack.WordAlloc.removeDeadStructural input1478 value5 value1 value2 = (output1478, value743, value1))
    (child17035 : Flapjack.WordAlloc.removeDeadStructural input17035 value743 value1 value2 = (output17035, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17036 value5 value1 value2 = (output17036, value6896, value1) := by
  rw [input17036_def, output17036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1478]
  try dsimp only
  rw [child17035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1478_skip, output17035_skip]
  kernel_rfl

theorem node17037_cond_eq
    (child1475 : Flapjack.WordAlloc.removeDeadStructural input1475 value736 value1 value2 = (output1475, value5, value1))
    (child17036 : Flapjack.WordAlloc.removeDeadStructural input17036 value5 value1 value2 = (output17036, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17037 value736 value1 value2 = (output17037, value6896, value1) := by
  rw [input17037_def, output17037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1475]
  try dsimp only
  rw [child17036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1475_skip, output17036_skip]
  kernel_rfl

theorem node17038_cond_eq
    (child1464 : Flapjack.WordAlloc.removeDeadStructural input1464 value736 value1 value2 = (output1464, value736, value1))
    (child17037 : Flapjack.WordAlloc.removeDeadStructural input17037 value736 value1 value2 = (output17037, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17038 value736 value1 value2 = (output17038, value6896, value1) := by
  rw [input17038_def, output17038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1464]
  try dsimp only
  rw [child17037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1464_skip, output17037_skip]
  kernel_rfl

theorem node17039_cond_eq
    (child1463 : Flapjack.WordAlloc.removeDeadStructural input1463 value735 value1 value2 = (output1463, value736, value1))
    (child17038 : Flapjack.WordAlloc.removeDeadStructural input17038 value736 value1 value2 = (output17038, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17039 value735 value1 value2 = (output17039, value6896, value1) := by
  rw [input17039_def, output17039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1463]
  try dsimp only
  rw [child17038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1463_skip, output17038_skip]
  kernel_rfl

theorem node17040_cond_eq
    (child1462 : Flapjack.WordAlloc.removeDeadStructural input1462 value5 value1 value2 = (output1462, value735, value1))
    (child17039 : Flapjack.WordAlloc.removeDeadStructural input17039 value735 value1 value2 = (output17039, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17040 value5 value1 value2 = (output17040, value6896, value1) := by
  rw [input17040_def, output17040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1462]
  try dsimp only
  rw [child17039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1462_skip, output17039_skip]
  kernel_rfl

theorem node17041_cond_eq
    (child1459 : Flapjack.WordAlloc.removeDeadStructural input1459 value728 value1 value2 = (output1459, value5, value1))
    (child17040 : Flapjack.WordAlloc.removeDeadStructural input17040 value5 value1 value2 = (output17040, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17041 value728 value1 value2 = (output17041, value6896, value1) := by
  rw [input17041_def, output17041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1459]
  try dsimp only
  rw [child17040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1459_skip, output17040_skip]
  kernel_rfl

theorem node17042_cond_eq
    (child1448 : Flapjack.WordAlloc.removeDeadStructural input1448 value728 value1 value2 = (output1448, value728, value1))
    (child17041 : Flapjack.WordAlloc.removeDeadStructural input17041 value728 value1 value2 = (output17041, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17042 value728 value1 value2 = (output17042, value6896, value1) := by
  rw [input17042_def, output17042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1448]
  try dsimp only
  rw [child17041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1448_skip, output17041_skip]
  kernel_rfl

theorem node17043_cond_eq
    (child1447 : Flapjack.WordAlloc.removeDeadStructural input1447 value727 value1 value2 = (output1447, value728, value1))
    (child17042 : Flapjack.WordAlloc.removeDeadStructural input17042 value728 value1 value2 = (output17042, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17043 value727 value1 value2 = (output17043, value6896, value1) := by
  rw [input17043_def, output17043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1447]
  try dsimp only
  rw [child17042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1447_skip, output17042_skip]
  kernel_rfl

theorem node17044_cond_eq
    (child1446 : Flapjack.WordAlloc.removeDeadStructural input1446 value5 value1 value2 = (output1446, value727, value1))
    (child17043 : Flapjack.WordAlloc.removeDeadStructural input17043 value727 value1 value2 = (output17043, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17044 value5 value1 value2 = (output17044, value6896, value1) := by
  rw [input17044_def, output17044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1446]
  try dsimp only
  rw [child17043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1446_skip, output17043_skip]
  kernel_rfl

theorem node17045_cond_eq
    (child1443 : Flapjack.WordAlloc.removeDeadStructural input1443 value720 value1 value2 = (output1443, value5, value1))
    (child17044 : Flapjack.WordAlloc.removeDeadStructural input17044 value5 value1 value2 = (output17044, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17045 value720 value1 value2 = (output17045, value6896, value1) := by
  rw [input17045_def, output17045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1443]
  try dsimp only
  rw [child17044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1443_skip, output17044_skip]
  kernel_rfl

theorem node17046_cond_eq
    (child1432 : Flapjack.WordAlloc.removeDeadStructural input1432 value720 value1 value2 = (output1432, value720, value1))
    (child17045 : Flapjack.WordAlloc.removeDeadStructural input17045 value720 value1 value2 = (output17045, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17046 value720 value1 value2 = (output17046, value6896, value1) := by
  rw [input17046_def, output17046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1432]
  try dsimp only
  rw [child17045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1432_skip, output17045_skip]
  kernel_rfl

theorem node17047_cond_eq
    (child1431 : Flapjack.WordAlloc.removeDeadStructural input1431 value719 value1 value2 = (output1431, value720, value1))
    (child17046 : Flapjack.WordAlloc.removeDeadStructural input17046 value720 value1 value2 = (output17046, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17047 value719 value1 value2 = (output17047, value6896, value1) := by
  rw [input17047_def, output17047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1431]
  try dsimp only
  rw [child17046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1431_skip, output17046_skip]
  kernel_rfl

theorem node17048_cond_eq
    (child1430 : Flapjack.WordAlloc.removeDeadStructural input1430 value5 value1 value2 = (output1430, value719, value1))
    (child17047 : Flapjack.WordAlloc.removeDeadStructural input17047 value719 value1 value2 = (output17047, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17048 value5 value1 value2 = (output17048, value6896, value1) := by
  rw [input17048_def, output17048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1430]
  try dsimp only
  rw [child17047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1430_skip, output17047_skip]
  kernel_rfl

theorem node17049_cond_eq
    (child1427 : Flapjack.WordAlloc.removeDeadStructural input1427 value712 value1 value2 = (output1427, value5, value1))
    (child17048 : Flapjack.WordAlloc.removeDeadStructural input17048 value5 value1 value2 = (output17048, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17049 value712 value1 value2 = (output17049, value6896, value1) := by
  rw [input17049_def, output17049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1427]
  try dsimp only
  rw [child17048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1427_skip, output17048_skip]
  kernel_rfl

theorem node17050_cond_eq
    (child1416 : Flapjack.WordAlloc.removeDeadStructural input1416 value712 value1 value2 = (output1416, value712, value1))
    (child17049 : Flapjack.WordAlloc.removeDeadStructural input17049 value712 value1 value2 = (output17049, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17050 value712 value1 value2 = (output17050, value6896, value1) := by
  rw [input17050_def, output17050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1416]
  try dsimp only
  rw [child17049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1416_skip, output17049_skip]
  kernel_rfl

theorem node17051_cond_eq
    (child1415 : Flapjack.WordAlloc.removeDeadStructural input1415 value711 value1 value2 = (output1415, value712, value1))
    (child17050 : Flapjack.WordAlloc.removeDeadStructural input17050 value712 value1 value2 = (output17050, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17051 value711 value1 value2 = (output17051, value6896, value1) := by
  rw [input17051_def, output17051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1415]
  try dsimp only
  rw [child17050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1415_skip, output17050_skip]
  kernel_rfl

theorem node17052_cond_eq
    (child1414 : Flapjack.WordAlloc.removeDeadStructural input1414 value5 value1 value2 = (output1414, value711, value1))
    (child17051 : Flapjack.WordAlloc.removeDeadStructural input17051 value711 value1 value2 = (output17051, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17052 value5 value1 value2 = (output17052, value6896, value1) := by
  rw [input17052_def, output17052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1414]
  try dsimp only
  rw [child17051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1414_skip, output17051_skip]
  kernel_rfl

theorem node17053_cond_eq
    (child1411 : Flapjack.WordAlloc.removeDeadStructural input1411 value704 value1 value2 = (output1411, value5, value1))
    (child17052 : Flapjack.WordAlloc.removeDeadStructural input17052 value5 value1 value2 = (output17052, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17053 value704 value1 value2 = (output17053, value6896, value1) := by
  rw [input17053_def, output17053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1411]
  try dsimp only
  rw [child17052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1411_skip, output17052_skip]
  kernel_rfl

theorem node17054_cond_eq
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value704 value1 value2 = (output1400, value704, value1))
    (child17053 : Flapjack.WordAlloc.removeDeadStructural input17053 value704 value1 value2 = (output17053, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17054 value704 value1 value2 = (output17054, value6896, value1) := by
  rw [input17054_def, output17054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1400]
  try dsimp only
  rw [child17053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1400_skip, output17053_skip]
  kernel_rfl

theorem node17055_cond_eq
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value703 value1 value2 = (output1399, value704, value1))
    (child17054 : Flapjack.WordAlloc.removeDeadStructural input17054 value704 value1 value2 = (output17054, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17055 value703 value1 value2 = (output17055, value6896, value1) := by
  rw [input17055_def, output17055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1399]
  try dsimp only
  rw [child17054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1399_skip, output17054_skip]
  kernel_rfl

theorem node17056_cond_eq
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value5 value1 value2 = (output1398, value703, value1))
    (child17055 : Flapjack.WordAlloc.removeDeadStructural input17055 value703 value1 value2 = (output17055, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17056 value5 value1 value2 = (output17056, value6896, value1) := by
  rw [input17056_def, output17056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1398]
  try dsimp only
  rw [child17055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1398_skip, output17055_skip]
  kernel_rfl

theorem node17057_cond_eq
    (child1395 : Flapjack.WordAlloc.removeDeadStructural input1395 value696 value1 value2 = (output1395, value5, value1))
    (child17056 : Flapjack.WordAlloc.removeDeadStructural input17056 value5 value1 value2 = (output17056, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17057 value696 value1 value2 = (output17057, value6896, value1) := by
  rw [input17057_def, output17057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1395]
  try dsimp only
  rw [child17056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1395_skip, output17056_skip]
  kernel_rfl

theorem node17058_cond_eq
    (child1384 : Flapjack.WordAlloc.removeDeadStructural input1384 value696 value1 value2 = (output1384, value696, value1))
    (child17057 : Flapjack.WordAlloc.removeDeadStructural input17057 value696 value1 value2 = (output17057, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17058 value696 value1 value2 = (output17058, value6896, value1) := by
  rw [input17058_def, output17058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1384]
  try dsimp only
  rw [child17057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1384_skip, output17057_skip]
  kernel_rfl

theorem node17059_cond_eq
    (child1383 : Flapjack.WordAlloc.removeDeadStructural input1383 value695 value1 value2 = (output1383, value696, value1))
    (child17058 : Flapjack.WordAlloc.removeDeadStructural input17058 value696 value1 value2 = (output17058, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17059 value695 value1 value2 = (output17059, value6896, value1) := by
  rw [input17059_def, output17059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1383]
  try dsimp only
  rw [child17058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1383_skip, output17058_skip]
  kernel_rfl

theorem node17060_cond_eq
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value5 value1 value2 = (output1382, value695, value1))
    (child17059 : Flapjack.WordAlloc.removeDeadStructural input17059 value695 value1 value2 = (output17059, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17060 value5 value1 value2 = (output17060, value6896, value1) := by
  rw [input17060_def, output17060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1382]
  try dsimp only
  rw [child17059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1382_skip, output17059_skip]
  kernel_rfl

theorem node17061_cond_eq
    (child1379 : Flapjack.WordAlloc.removeDeadStructural input1379 value688 value1 value2 = (output1379, value5, value1))
    (child17060 : Flapjack.WordAlloc.removeDeadStructural input17060 value5 value1 value2 = (output17060, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17061 value688 value1 value2 = (output17061, value6896, value1) := by
  rw [input17061_def, output17061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1379]
  try dsimp only
  rw [child17060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1379_skip, output17060_skip]
  kernel_rfl

theorem node17062_cond_eq
    (child1368 : Flapjack.WordAlloc.removeDeadStructural input1368 value688 value1 value2 = (output1368, value688, value1))
    (child17061 : Flapjack.WordAlloc.removeDeadStructural input17061 value688 value1 value2 = (output17061, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17062 value688 value1 value2 = (output17062, value6896, value1) := by
  rw [input17062_def, output17062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1368]
  try dsimp only
  rw [child17061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1368_skip, output17061_skip]
  kernel_rfl

theorem node17063_cond_eq
    (child1367 : Flapjack.WordAlloc.removeDeadStructural input1367 value687 value1 value2 = (output1367, value688, value1))
    (child17062 : Flapjack.WordAlloc.removeDeadStructural input17062 value688 value1 value2 = (output17062, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17063 value687 value1 value2 = (output17063, value6896, value1) := by
  rw [input17063_def, output17063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1367]
  try dsimp only
  rw [child17062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1367_skip, output17062_skip]
  kernel_rfl

theorem node17064_cond_eq
    (child1366 : Flapjack.WordAlloc.removeDeadStructural input1366 value5 value1 value2 = (output1366, value687, value1))
    (child17063 : Flapjack.WordAlloc.removeDeadStructural input17063 value687 value1 value2 = (output17063, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17064 value5 value1 value2 = (output17064, value6896, value1) := by
  rw [input17064_def, output17064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1366]
  try dsimp only
  rw [child17063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1366_skip, output17063_skip]
  kernel_rfl

theorem node17065_cond_eq
    (child1363 : Flapjack.WordAlloc.removeDeadStructural input1363 value680 value1 value2 = (output1363, value5, value1))
    (child17064 : Flapjack.WordAlloc.removeDeadStructural input17064 value5 value1 value2 = (output17064, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17065 value680 value1 value2 = (output17065, value6896, value1) := by
  rw [input17065_def, output17065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1363]
  try dsimp only
  rw [child17064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1363_skip, output17064_skip]
  kernel_rfl

theorem node17066_cond_eq
    (child1352 : Flapjack.WordAlloc.removeDeadStructural input1352 value680 value1 value2 = (output1352, value680, value1))
    (child17065 : Flapjack.WordAlloc.removeDeadStructural input17065 value680 value1 value2 = (output17065, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17066 value680 value1 value2 = (output17066, value6896, value1) := by
  rw [input17066_def, output17066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1352]
  try dsimp only
  rw [child17065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1352_skip, output17065_skip]
  kernel_rfl

theorem node17067_cond_eq
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value679 value1 value2 = (output1351, value680, value1))
    (child17066 : Flapjack.WordAlloc.removeDeadStructural input17066 value680 value1 value2 = (output17066, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17067 value679 value1 value2 = (output17067, value6896, value1) := by
  rw [input17067_def, output17067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1351]
  try dsimp only
  rw [child17066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1351_skip, output17066_skip]
  kernel_rfl

theorem node17068_cond_eq
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value5 value1 value2 = (output1350, value679, value1))
    (child17067 : Flapjack.WordAlloc.removeDeadStructural input17067 value679 value1 value2 = (output17067, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17068 value5 value1 value2 = (output17068, value6896, value1) := by
  rw [input17068_def, output17068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1350]
  try dsimp only
  rw [child17067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1350_skip, output17067_skip]
  kernel_rfl

theorem node17069_cond_eq
    (child1347 : Flapjack.WordAlloc.removeDeadStructural input1347 value672 value1 value2 = (output1347, value5, value1))
    (child17068 : Flapjack.WordAlloc.removeDeadStructural input17068 value5 value1 value2 = (output17068, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17069 value672 value1 value2 = (output17069, value6896, value1) := by
  rw [input17069_def, output17069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1347]
  try dsimp only
  rw [child17068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1347_skip, output17068_skip]
  kernel_rfl

theorem node17070_cond_eq
    (child1336 : Flapjack.WordAlloc.removeDeadStructural input1336 value672 value1 value2 = (output1336, value672, value1))
    (child17069 : Flapjack.WordAlloc.removeDeadStructural input17069 value672 value1 value2 = (output17069, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17070 value672 value1 value2 = (output17070, value6896, value1) := by
  rw [input17070_def, output17070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1336]
  try dsimp only
  rw [child17069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1336_skip, output17069_skip]
  kernel_rfl

theorem node17071_cond_eq
    (child1335 : Flapjack.WordAlloc.removeDeadStructural input1335 value671 value1 value2 = (output1335, value672, value1))
    (child17070 : Flapjack.WordAlloc.removeDeadStructural input17070 value672 value1 value2 = (output17070, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17071 value671 value1 value2 = (output17071, value6896, value1) := by
  rw [input17071_def, output17071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1335]
  try dsimp only
  rw [child17070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1335_skip, output17070_skip]
  kernel_rfl

theorem node17072_cond_eq
    (child1334 : Flapjack.WordAlloc.removeDeadStructural input1334 value5 value1 value2 = (output1334, value671, value1))
    (child17071 : Flapjack.WordAlloc.removeDeadStructural input17071 value671 value1 value2 = (output17071, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17072 value5 value1 value2 = (output17072, value6896, value1) := by
  rw [input17072_def, output17072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1334]
  try dsimp only
  rw [child17071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1334_skip, output17071_skip]
  kernel_rfl

theorem node17073_cond_eq
    (child1331 : Flapjack.WordAlloc.removeDeadStructural input1331 value664 value1 value2 = (output1331, value5, value1))
    (child17072 : Flapjack.WordAlloc.removeDeadStructural input17072 value5 value1 value2 = (output17072, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17073 value664 value1 value2 = (output17073, value6896, value1) := by
  rw [input17073_def, output17073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1331]
  try dsimp only
  rw [child17072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1331_skip, output17072_skip]
  kernel_rfl

theorem node17074_cond_eq
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value664 value1 value2 = (output1320, value664, value1))
    (child17073 : Flapjack.WordAlloc.removeDeadStructural input17073 value664 value1 value2 = (output17073, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17074 value664 value1 value2 = (output17074, value6896, value1) := by
  rw [input17074_def, output17074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1320]
  try dsimp only
  rw [child17073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1320_skip, output17073_skip]
  kernel_rfl

theorem node17075_cond_eq
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value663 value1 value2 = (output1319, value664, value1))
    (child17074 : Flapjack.WordAlloc.removeDeadStructural input17074 value664 value1 value2 = (output17074, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17075 value663 value1 value2 = (output17075, value6896, value1) := by
  rw [input17075_def, output17075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1319]
  try dsimp only
  rw [child17074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1319_skip, output17074_skip]
  kernel_rfl

theorem node17076_cond_eq
    (child1318 : Flapjack.WordAlloc.removeDeadStructural input1318 value5 value1 value2 = (output1318, value663, value1))
    (child17075 : Flapjack.WordAlloc.removeDeadStructural input17075 value663 value1 value2 = (output17075, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17076 value5 value1 value2 = (output17076, value6896, value1) := by
  rw [input17076_def, output17076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1318]
  try dsimp only
  rw [child17075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1318_skip, output17075_skip]
  kernel_rfl

theorem node17077_cond_eq
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value656 value1 value2 = (output1315, value5, value1))
    (child17076 : Flapjack.WordAlloc.removeDeadStructural input17076 value5 value1 value2 = (output17076, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17077 value656 value1 value2 = (output17077, value6896, value1) := by
  rw [input17077_def, output17077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1315]
  try dsimp only
  rw [child17076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1315_skip, output17076_skip]
  kernel_rfl

theorem node17078_cond_eq
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value656 value1 value2 = (output1304, value656, value1))
    (child17077 : Flapjack.WordAlloc.removeDeadStructural input17077 value656 value1 value2 = (output17077, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17078 value656 value1 value2 = (output17078, value6896, value1) := by
  rw [input17078_def, output17078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1304]
  try dsimp only
  rw [child17077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1304_skip, output17077_skip]
  kernel_rfl

theorem node17079_cond_eq
    (child1303 : Flapjack.WordAlloc.removeDeadStructural input1303 value655 value1 value2 = (output1303, value656, value1))
    (child17078 : Flapjack.WordAlloc.removeDeadStructural input17078 value656 value1 value2 = (output17078, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17079 value655 value1 value2 = (output17079, value6896, value1) := by
  rw [input17079_def, output17079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1303]
  try dsimp only
  rw [child17078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1303_skip, output17078_skip]
  kernel_rfl

theorem node17080_cond_eq
    (child1302 : Flapjack.WordAlloc.removeDeadStructural input1302 value5 value1 value2 = (output1302, value655, value1))
    (child17079 : Flapjack.WordAlloc.removeDeadStructural input17079 value655 value1 value2 = (output17079, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17080 value5 value1 value2 = (output17080, value6896, value1) := by
  rw [input17080_def, output17080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1302]
  try dsimp only
  rw [child17079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1302_skip, output17079_skip]
  kernel_rfl

theorem node17081_cond_eq
    (child1299 : Flapjack.WordAlloc.removeDeadStructural input1299 value648 value1 value2 = (output1299, value5, value1))
    (child17080 : Flapjack.WordAlloc.removeDeadStructural input17080 value5 value1 value2 = (output17080, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17081 value648 value1 value2 = (output17081, value6896, value1) := by
  rw [input17081_def, output17081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1299]
  try dsimp only
  rw [child17080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1299_skip, output17080_skip]
  kernel_rfl

theorem node17082_cond_eq
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value648 value1 value2 = (output1288, value648, value1))
    (child17081 : Flapjack.WordAlloc.removeDeadStructural input17081 value648 value1 value2 = (output17081, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17082 value648 value1 value2 = (output17082, value6896, value1) := by
  rw [input17082_def, output17082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1288]
  try dsimp only
  rw [child17081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1288_skip, output17081_skip]
  kernel_rfl

theorem node17083_cond_eq
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value647 value1 value2 = (output1287, value648, value1))
    (child17082 : Flapjack.WordAlloc.removeDeadStructural input17082 value648 value1 value2 = (output17082, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17083 value647 value1 value2 = (output17083, value6896, value1) := by
  rw [input17083_def, output17083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1287]
  try dsimp only
  rw [child17082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1287_skip, output17082_skip]
  kernel_rfl

theorem node17084_cond_eq
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value5 value1 value2 = (output1286, value647, value1))
    (child17083 : Flapjack.WordAlloc.removeDeadStructural input17083 value647 value1 value2 = (output17083, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17084 value5 value1 value2 = (output17084, value6896, value1) := by
  rw [input17084_def, output17084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1286]
  try dsimp only
  rw [child17083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1286_skip, output17083_skip]
  kernel_rfl

theorem node17085_cond_eq
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value640 value1 value2 = (output1283, value5, value1))
    (child17084 : Flapjack.WordAlloc.removeDeadStructural input17084 value5 value1 value2 = (output17084, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17085 value640 value1 value2 = (output17085, value6896, value1) := by
  rw [input17085_def, output17085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1283]
  try dsimp only
  rw [child17084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1283_skip, output17084_skip]
  kernel_rfl

theorem node17086_cond_eq
    (child1272 : Flapjack.WordAlloc.removeDeadStructural input1272 value640 value1 value2 = (output1272, value640, value1))
    (child17085 : Flapjack.WordAlloc.removeDeadStructural input17085 value640 value1 value2 = (output17085, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17086 value640 value1 value2 = (output17086, value6896, value1) := by
  rw [input17086_def, output17086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1272]
  try dsimp only
  rw [child17085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1272_skip, output17085_skip]
  kernel_rfl

theorem node17087_cond_eq
    (child1271 : Flapjack.WordAlloc.removeDeadStructural input1271 value639 value1 value2 = (output1271, value640, value1))
    (child17086 : Flapjack.WordAlloc.removeDeadStructural input17086 value640 value1 value2 = (output17086, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17087 value639 value1 value2 = (output17087, value6896, value1) := by
  rw [input17087_def, output17087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1271]
  try dsimp only
  rw [child17086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1271_skip, output17086_skip]
  kernel_rfl

theorem node17088_cond_eq
    (child1270 : Flapjack.WordAlloc.removeDeadStructural input1270 value5 value1 value2 = (output1270, value639, value1))
    (child17087 : Flapjack.WordAlloc.removeDeadStructural input17087 value639 value1 value2 = (output17087, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17088 value5 value1 value2 = (output17088, value6896, value1) := by
  rw [input17088_def, output17088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1270]
  try dsimp only
  rw [child17087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1270_skip, output17087_skip]
  kernel_rfl

theorem node17089_cond_eq
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value632 value1 value2 = (output1267, value5, value1))
    (child17088 : Flapjack.WordAlloc.removeDeadStructural input17088 value5 value1 value2 = (output17088, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17089 value632 value1 value2 = (output17089, value6896, value1) := by
  rw [input17089_def, output17089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1267]
  try dsimp only
  rw [child17088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1267_skip, output17088_skip]
  kernel_rfl

theorem node17090_cond_eq
    (child1256 : Flapjack.WordAlloc.removeDeadStructural input1256 value632 value1 value2 = (output1256, value632, value1))
    (child17089 : Flapjack.WordAlloc.removeDeadStructural input17089 value632 value1 value2 = (output17089, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17090 value632 value1 value2 = (output17090, value6896, value1) := by
  rw [input17090_def, output17090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1256]
  try dsimp only
  rw [child17089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1256_skip, output17089_skip]
  kernel_rfl

theorem node17091_cond_eq
    (child1255 : Flapjack.WordAlloc.removeDeadStructural input1255 value631 value1 value2 = (output1255, value632, value1))
    (child17090 : Flapjack.WordAlloc.removeDeadStructural input17090 value632 value1 value2 = (output17090, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17091 value631 value1 value2 = (output17091, value6896, value1) := by
  rw [input17091_def, output17091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1255]
  try dsimp only
  rw [child17090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1255_skip, output17090_skip]
  kernel_rfl

theorem node17092_cond_eq
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value5 value1 value2 = (output1254, value631, value1))
    (child17091 : Flapjack.WordAlloc.removeDeadStructural input17091 value631 value1 value2 = (output17091, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17092 value5 value1 value2 = (output17092, value6896, value1) := by
  rw [input17092_def, output17092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1254]
  try dsimp only
  rw [child17091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1254_skip, output17091_skip]
  kernel_rfl

theorem node17093_cond_eq
    (child1251 : Flapjack.WordAlloc.removeDeadStructural input1251 value624 value1 value2 = (output1251, value5, value1))
    (child17092 : Flapjack.WordAlloc.removeDeadStructural input17092 value5 value1 value2 = (output17092, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17093 value624 value1 value2 = (output17093, value6896, value1) := by
  rw [input17093_def, output17093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1251]
  try dsimp only
  rw [child17092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1251_skip, output17092_skip]
  kernel_rfl

theorem node17094_cond_eq
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value624 value1 value2 = (output1240, value624, value1))
    (child17093 : Flapjack.WordAlloc.removeDeadStructural input17093 value624 value1 value2 = (output17093, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17094 value624 value1 value2 = (output17094, value6896, value1) := by
  rw [input17094_def, output17094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1240]
  try dsimp only
  rw [child17093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1240_skip, output17093_skip]
  kernel_rfl

theorem node17095_cond_eq
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value623 value1 value2 = (output1239, value624, value1))
    (child17094 : Flapjack.WordAlloc.removeDeadStructural input17094 value624 value1 value2 = (output17094, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17095 value623 value1 value2 = (output17095, value6896, value1) := by
  rw [input17095_def, output17095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1239]
  try dsimp only
  rw [child17094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1239_skip, output17094_skip]
  kernel_rfl

theorem node17096_cond_eq
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value5 value1 value2 = (output1238, value623, value1))
    (child17095 : Flapjack.WordAlloc.removeDeadStructural input17095 value623 value1 value2 = (output17095, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17096 value5 value1 value2 = (output17096, value6896, value1) := by
  rw [input17096_def, output17096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1238]
  try dsimp only
  rw [child17095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1238_skip, output17095_skip]
  kernel_rfl

theorem node17097_cond_eq
    (child1235 : Flapjack.WordAlloc.removeDeadStructural input1235 value616 value1 value2 = (output1235, value5, value1))
    (child17096 : Flapjack.WordAlloc.removeDeadStructural input17096 value5 value1 value2 = (output17096, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17097 value616 value1 value2 = (output17097, value6896, value1) := by
  rw [input17097_def, output17097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1235]
  try dsimp only
  rw [child17096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1235_skip, output17096_skip]
  kernel_rfl

theorem node17098_cond_eq
    (child1224 : Flapjack.WordAlloc.removeDeadStructural input1224 value616 value1 value2 = (output1224, value616, value1))
    (child17097 : Flapjack.WordAlloc.removeDeadStructural input17097 value616 value1 value2 = (output17097, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17098 value616 value1 value2 = (output17098, value6896, value1) := by
  rw [input17098_def, output17098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1224]
  try dsimp only
  rw [child17097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1224_skip, output17097_skip]
  kernel_rfl

theorem node17099_cond_eq
    (child1223 : Flapjack.WordAlloc.removeDeadStructural input1223 value615 value1 value2 = (output1223, value616, value1))
    (child17098 : Flapjack.WordAlloc.removeDeadStructural input17098 value616 value1 value2 = (output17098, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17099 value615 value1 value2 = (output17099, value6896, value1) := by
  rw [input17099_def, output17099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1223]
  try dsimp only
  rw [child17098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1223_skip, output17098_skip]
  kernel_rfl

theorem node17100_cond_eq
    (child1222 : Flapjack.WordAlloc.removeDeadStructural input1222 value5 value1 value2 = (output1222, value615, value1))
    (child17099 : Flapjack.WordAlloc.removeDeadStructural input17099 value615 value1 value2 = (output17099, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17100 value5 value1 value2 = (output17100, value6896, value1) := by
  rw [input17100_def, output17100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1222]
  try dsimp only
  rw [child17099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1222_skip, output17099_skip]
  kernel_rfl

theorem node17101_cond_eq
    (child1219 : Flapjack.WordAlloc.removeDeadStructural input1219 value608 value1 value2 = (output1219, value5, value1))
    (child17100 : Flapjack.WordAlloc.removeDeadStructural input17100 value5 value1 value2 = (output17100, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17101 value608 value1 value2 = (output17101, value6896, value1) := by
  rw [input17101_def, output17101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1219]
  try dsimp only
  rw [child17100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1219_skip, output17100_skip]
  kernel_rfl

theorem node17102_cond_eq
    (child1208 : Flapjack.WordAlloc.removeDeadStructural input1208 value608 value1 value2 = (output1208, value608, value1))
    (child17101 : Flapjack.WordAlloc.removeDeadStructural input17101 value608 value1 value2 = (output17101, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17102 value608 value1 value2 = (output17102, value6896, value1) := by
  rw [input17102_def, output17102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1208]
  try dsimp only
  rw [child17101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1208_skip, output17101_skip]
  kernel_rfl

theorem node17103_cond_eq
    (child1207 : Flapjack.WordAlloc.removeDeadStructural input1207 value607 value1 value2 = (output1207, value608, value1))
    (child17102 : Flapjack.WordAlloc.removeDeadStructural input17102 value608 value1 value2 = (output17102, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17103 value607 value1 value2 = (output17103, value6896, value1) := by
  rw [input17103_def, output17103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1207]
  try dsimp only
  rw [child17102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1207_skip, output17102_skip]
  kernel_rfl

theorem node17104_cond_eq
    (child1206 : Flapjack.WordAlloc.removeDeadStructural input1206 value5 value1 value2 = (output1206, value607, value1))
    (child17103 : Flapjack.WordAlloc.removeDeadStructural input17103 value607 value1 value2 = (output17103, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17104 value5 value1 value2 = (output17104, value6896, value1) := by
  rw [input17104_def, output17104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1206]
  try dsimp only
  rw [child17103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1206_skip, output17103_skip]
  kernel_rfl

theorem node17105_cond_eq
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value600 value1 value2 = (output1203, value5, value1))
    (child17104 : Flapjack.WordAlloc.removeDeadStructural input17104 value5 value1 value2 = (output17104, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17105 value600 value1 value2 = (output17105, value6896, value1) := by
  rw [input17105_def, output17105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1203]
  try dsimp only
  rw [child17104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1203_skip, output17104_skip]
  kernel_rfl

theorem node17106_cond_eq
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value600 value1 value2 = (output1192, value600, value1))
    (child17105 : Flapjack.WordAlloc.removeDeadStructural input17105 value600 value1 value2 = (output17105, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17106 value600 value1 value2 = (output17106, value6896, value1) := by
  rw [input17106_def, output17106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1192]
  try dsimp only
  rw [child17105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1192_skip, output17105_skip]
  kernel_rfl

theorem node17107_cond_eq
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value599 value1 value2 = (output1191, value600, value1))
    (child17106 : Flapjack.WordAlloc.removeDeadStructural input17106 value600 value1 value2 = (output17106, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17107 value599 value1 value2 = (output17107, value6896, value1) := by
  rw [input17107_def, output17107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1191]
  try dsimp only
  rw [child17106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1191_skip, output17106_skip]
  kernel_rfl

theorem node17108_cond_eq
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value5 value1 value2 = (output1190, value599, value1))
    (child17107 : Flapjack.WordAlloc.removeDeadStructural input17107 value599 value1 value2 = (output17107, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17108 value5 value1 value2 = (output17108, value6896, value1) := by
  rw [input17108_def, output17108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1190]
  try dsimp only
  rw [child17107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1190_skip, output17107_skip]
  kernel_rfl

theorem node17109_cond_eq
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value592 value1 value2 = (output1187, value5, value1))
    (child17108 : Flapjack.WordAlloc.removeDeadStructural input17108 value5 value1 value2 = (output17108, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17109 value592 value1 value2 = (output17109, value6896, value1) := by
  rw [input17109_def, output17109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1187]
  try dsimp only
  rw [child17108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1187_skip, output17108_skip]
  kernel_rfl

theorem node17110_cond_eq
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value592 value1 value2 = (output1176, value592, value1))
    (child17109 : Flapjack.WordAlloc.removeDeadStructural input17109 value592 value1 value2 = (output17109, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17110 value592 value1 value2 = (output17110, value6896, value1) := by
  rw [input17110_def, output17110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1176]
  try dsimp only
  rw [child17109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1176_skip, output17109_skip]
  kernel_rfl

theorem node17111_cond_eq
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value591 value1 value2 = (output1175, value592, value1))
    (child17110 : Flapjack.WordAlloc.removeDeadStructural input17110 value592 value1 value2 = (output17110, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17111 value591 value1 value2 = (output17111, value6896, value1) := by
  rw [input17111_def, output17111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1175]
  try dsimp only
  rw [child17110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1175_skip, output17110_skip]
  kernel_rfl

theorem node17112_cond_eq
    (child1174 : Flapjack.WordAlloc.removeDeadStructural input1174 value5 value1 value2 = (output1174, value591, value1))
    (child17111 : Flapjack.WordAlloc.removeDeadStructural input17111 value591 value1 value2 = (output17111, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17112 value5 value1 value2 = (output17112, value6896, value1) := by
  rw [input17112_def, output17112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1174]
  try dsimp only
  rw [child17111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1174_skip, output17111_skip]
  kernel_rfl

theorem node17113_cond_eq
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value584 value1 value2 = (output1171, value5, value1))
    (child17112 : Flapjack.WordAlloc.removeDeadStructural input17112 value5 value1 value2 = (output17112, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17113 value584 value1 value2 = (output17113, value6896, value1) := by
  rw [input17113_def, output17113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1171]
  try dsimp only
  rw [child17112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1171_skip, output17112_skip]
  kernel_rfl

theorem node17114_cond_eq
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value584 value1 value2 = (output1160, value584, value1))
    (child17113 : Flapjack.WordAlloc.removeDeadStructural input17113 value584 value1 value2 = (output17113, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17114 value584 value1 value2 = (output17114, value6896, value1) := by
  rw [input17114_def, output17114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1160]
  try dsimp only
  rw [child17113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1160_skip, output17113_skip]
  kernel_rfl

theorem node17115_cond_eq
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value583 value1 value2 = (output1159, value584, value1))
    (child17114 : Flapjack.WordAlloc.removeDeadStructural input17114 value584 value1 value2 = (output17114, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17115 value583 value1 value2 = (output17115, value6896, value1) := by
  rw [input17115_def, output17115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1159]
  try dsimp only
  rw [child17114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1159_skip, output17114_skip]
  kernel_rfl

theorem node17116_cond_eq
    (child1158 : Flapjack.WordAlloc.removeDeadStructural input1158 value5 value1 value2 = (output1158, value583, value1))
    (child17115 : Flapjack.WordAlloc.removeDeadStructural input17115 value583 value1 value2 = (output17115, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17116 value5 value1 value2 = (output17116, value6896, value1) := by
  rw [input17116_def, output17116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1158]
  try dsimp only
  rw [child17115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1158_skip, output17115_skip]
  kernel_rfl

theorem node17117_cond_eq
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value576 value1 value2 = (output1155, value5, value1))
    (child17116 : Flapjack.WordAlloc.removeDeadStructural input17116 value5 value1 value2 = (output17116, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17117 value576 value1 value2 = (output17117, value6896, value1) := by
  rw [input17117_def, output17117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1155]
  try dsimp only
  rw [child17116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1155_skip, output17116_skip]
  kernel_rfl

theorem node17118_cond_eq
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value576 value1 value2 = (output1144, value576, value1))
    (child17117 : Flapjack.WordAlloc.removeDeadStructural input17117 value576 value1 value2 = (output17117, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17118 value576 value1 value2 = (output17118, value6896, value1) := by
  rw [input17118_def, output17118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1144]
  try dsimp only
  rw [child17117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1144_skip, output17117_skip]
  kernel_rfl

theorem node17119_cond_eq
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value575 value1 value2 = (output1143, value576, value1))
    (child17118 : Flapjack.WordAlloc.removeDeadStructural input17118 value576 value1 value2 = (output17118, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17119 value575 value1 value2 = (output17119, value6896, value1) := by
  rw [input17119_def, output17119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1143]
  try dsimp only
  rw [child17118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1143_skip, output17118_skip]
  kernel_rfl

theorem node17120_cond_eq
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value5 value1 value2 = (output1142, value575, value1))
    (child17119 : Flapjack.WordAlloc.removeDeadStructural input17119 value575 value1 value2 = (output17119, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17120 value5 value1 value2 = (output17120, value6896, value1) := by
  rw [input17120_def, output17120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1142]
  try dsimp only
  rw [child17119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1142_skip, output17119_skip]
  kernel_rfl

theorem node17121_cond_eq
    (child1139 : Flapjack.WordAlloc.removeDeadStructural input1139 value568 value1 value2 = (output1139, value5, value1))
    (child17120 : Flapjack.WordAlloc.removeDeadStructural input17120 value5 value1 value2 = (output17120, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17121 value568 value1 value2 = (output17121, value6896, value1) := by
  rw [input17121_def, output17121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1139]
  try dsimp only
  rw [child17120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1139_skip, output17120_skip]
  kernel_rfl

theorem node17122_cond_eq
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value568 value1 value2 = (output1128, value568, value1))
    (child17121 : Flapjack.WordAlloc.removeDeadStructural input17121 value568 value1 value2 = (output17121, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17122 value568 value1 value2 = (output17122, value6896, value1) := by
  rw [input17122_def, output17122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1128]
  try dsimp only
  rw [child17121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1128_skip, output17121_skip]
  kernel_rfl

theorem node17123_cond_eq
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value567 value1 value2 = (output1127, value568, value1))
    (child17122 : Flapjack.WordAlloc.removeDeadStructural input17122 value568 value1 value2 = (output17122, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17123 value567 value1 value2 = (output17123, value6896, value1) := by
  rw [input17123_def, output17123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1127]
  try dsimp only
  rw [child17122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1127_skip, output17122_skip]
  kernel_rfl

theorem node17124_cond_eq
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value5 value1 value2 = (output1126, value567, value1))
    (child17123 : Flapjack.WordAlloc.removeDeadStructural input17123 value567 value1 value2 = (output17123, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17124 value5 value1 value2 = (output17124, value6896, value1) := by
  rw [input17124_def, output17124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1126]
  try dsimp only
  rw [child17123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1126_skip, output17123_skip]
  kernel_rfl

theorem node17125_cond_eq
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value560 value1 value2 = (output1123, value5, value1))
    (child17124 : Flapjack.WordAlloc.removeDeadStructural input17124 value5 value1 value2 = (output17124, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17125 value560 value1 value2 = (output17125, value6896, value1) := by
  rw [input17125_def, output17125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1123]
  try dsimp only
  rw [child17124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1123_skip, output17124_skip]
  kernel_rfl

theorem node17126_cond_eq
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value560 value1 value2 = (output1112, value560, value1))
    (child17125 : Flapjack.WordAlloc.removeDeadStructural input17125 value560 value1 value2 = (output17125, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17126 value560 value1 value2 = (output17126, value6896, value1) := by
  rw [input17126_def, output17126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1112]
  try dsimp only
  rw [child17125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1112_skip, output17125_skip]
  kernel_rfl

theorem node17127_cond_eq
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value559 value1 value2 = (output1111, value560, value1))
    (child17126 : Flapjack.WordAlloc.removeDeadStructural input17126 value560 value1 value2 = (output17126, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17127 value559 value1 value2 = (output17127, value6896, value1) := by
  rw [input17127_def, output17127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1111]
  try dsimp only
  rw [child17126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1111_skip, output17126_skip]
  kernel_rfl

theorem node17128_cond_eq
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value5 value1 value2 = (output1110, value559, value1))
    (child17127 : Flapjack.WordAlloc.removeDeadStructural input17127 value559 value1 value2 = (output17127, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17128 value5 value1 value2 = (output17128, value6896, value1) := by
  rw [input17128_def, output17128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1110]
  try dsimp only
  rw [child17127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1110_skip, output17127_skip]
  kernel_rfl

theorem node17129_cond_eq
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value552 value1 value2 = (output1107, value5, value1))
    (child17128 : Flapjack.WordAlloc.removeDeadStructural input17128 value5 value1 value2 = (output17128, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17129 value552 value1 value2 = (output17129, value6896, value1) := by
  rw [input17129_def, output17129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1107]
  try dsimp only
  rw [child17128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1107_skip, output17128_skip]
  kernel_rfl

theorem node17130_cond_eq
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value552 value1 value2 = (output1096, value552, value1))
    (child17129 : Flapjack.WordAlloc.removeDeadStructural input17129 value552 value1 value2 = (output17129, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17130 value552 value1 value2 = (output17130, value6896, value1) := by
  rw [input17130_def, output17130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1096]
  try dsimp only
  rw [child17129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1096_skip, output17129_skip]
  kernel_rfl

theorem node17131_cond_eq
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value551 value1 value2 = (output1095, value552, value1))
    (child17130 : Flapjack.WordAlloc.removeDeadStructural input17130 value552 value1 value2 = (output17130, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17131 value551 value1 value2 = (output17131, value6896, value1) := by
  rw [input17131_def, output17131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1095]
  try dsimp only
  rw [child17130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1095_skip, output17130_skip]
  kernel_rfl

theorem node17132_cond_eq
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value5 value1 value2 = (output1094, value551, value1))
    (child17131 : Flapjack.WordAlloc.removeDeadStructural input17131 value551 value1 value2 = (output17131, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17132 value5 value1 value2 = (output17132, value6896, value1) := by
  rw [input17132_def, output17132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1094]
  try dsimp only
  rw [child17131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1094_skip, output17131_skip]
  kernel_rfl

theorem node17133_cond_eq
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value544 value1 value2 = (output1091, value5, value1))
    (child17132 : Flapjack.WordAlloc.removeDeadStructural input17132 value5 value1 value2 = (output17132, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17133 value544 value1 value2 = (output17133, value6896, value1) := by
  rw [input17133_def, output17133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1091]
  try dsimp only
  rw [child17132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1091_skip, output17132_skip]
  kernel_rfl

theorem node17134_cond_eq
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value544 value1 value2 = (output1080, value544, value1))
    (child17133 : Flapjack.WordAlloc.removeDeadStructural input17133 value544 value1 value2 = (output17133, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17134 value544 value1 value2 = (output17134, value6896, value1) := by
  rw [input17134_def, output17134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1080]
  try dsimp only
  rw [child17133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1080_skip, output17133_skip]
  kernel_rfl

theorem node17135_cond_eq
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value543 value1 value2 = (output1079, value544, value1))
    (child17134 : Flapjack.WordAlloc.removeDeadStructural input17134 value544 value1 value2 = (output17134, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17135 value543 value1 value2 = (output17135, value6896, value1) := by
  rw [input17135_def, output17135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1079]
  try dsimp only
  rw [child17134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1079_skip, output17134_skip]
  kernel_rfl

theorem node17136_cond_eq
    (child1078 : Flapjack.WordAlloc.removeDeadStructural input1078 value5 value1 value2 = (output1078, value543, value1))
    (child17135 : Flapjack.WordAlloc.removeDeadStructural input17135 value543 value1 value2 = (output17135, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17136 value5 value1 value2 = (output17136, value6896, value1) := by
  rw [input17136_def, output17136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1078]
  try dsimp only
  rw [child17135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1078_skip, output17135_skip]
  kernel_rfl

theorem node17137_cond_eq
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value536 value1 value2 = (output1075, value5, value1))
    (child17136 : Flapjack.WordAlloc.removeDeadStructural input17136 value5 value1 value2 = (output17136, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17137 value536 value1 value2 = (output17137, value6896, value1) := by
  rw [input17137_def, output17137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1075]
  try dsimp only
  rw [child17136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1075_skip, output17136_skip]
  kernel_rfl

theorem node17138_cond_eq
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value536 value1 value2 = (output1064, value536, value1))
    (child17137 : Flapjack.WordAlloc.removeDeadStructural input17137 value536 value1 value2 = (output17137, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17138 value536 value1 value2 = (output17138, value6896, value1) := by
  rw [input17138_def, output17138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1064]
  try dsimp only
  rw [child17137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1064_skip, output17137_skip]
  kernel_rfl

theorem node17139_cond_eq
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value535 value1 value2 = (output1063, value536, value1))
    (child17138 : Flapjack.WordAlloc.removeDeadStructural input17138 value536 value1 value2 = (output17138, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17139 value535 value1 value2 = (output17139, value6896, value1) := by
  rw [input17139_def, output17139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1063]
  try dsimp only
  rw [child17138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1063_skip, output17138_skip]
  kernel_rfl

theorem node17140_cond_eq
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value5 value1 value2 = (output1062, value535, value1))
    (child17139 : Flapjack.WordAlloc.removeDeadStructural input17139 value535 value1 value2 = (output17139, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17140 value5 value1 value2 = (output17140, value6896, value1) := by
  rw [input17140_def, output17140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1062]
  try dsimp only
  rw [child17139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1062_skip, output17139_skip]
  kernel_rfl

theorem node17141_cond_eq
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value528 value1 value2 = (output1059, value5, value1))
    (child17140 : Flapjack.WordAlloc.removeDeadStructural input17140 value5 value1 value2 = (output17140, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17141 value528 value1 value2 = (output17141, value6896, value1) := by
  rw [input17141_def, output17141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1059]
  try dsimp only
  rw [child17140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1059_skip, output17140_skip]
  kernel_rfl

theorem node17142_cond_eq
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value528 value1 value2 = (output1048, value528, value1))
    (child17141 : Flapjack.WordAlloc.removeDeadStructural input17141 value528 value1 value2 = (output17141, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17142 value528 value1 value2 = (output17142, value6896, value1) := by
  rw [input17142_def, output17142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1048]
  try dsimp only
  rw [child17141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1048_skip, output17141_skip]
  kernel_rfl

theorem node17143_cond_eq
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value527 value1 value2 = (output1047, value528, value1))
    (child17142 : Flapjack.WordAlloc.removeDeadStructural input17142 value528 value1 value2 = (output17142, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17143 value527 value1 value2 = (output17143, value6896, value1) := by
  rw [input17143_def, output17143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1047]
  try dsimp only
  rw [child17142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1047_skip, output17142_skip]
  kernel_rfl

theorem node17144_cond_eq
    (child1046 : Flapjack.WordAlloc.removeDeadStructural input1046 value5 value1 value2 = (output1046, value527, value1))
    (child17143 : Flapjack.WordAlloc.removeDeadStructural input17143 value527 value1 value2 = (output17143, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17144 value5 value1 value2 = (output17144, value6896, value1) := by
  rw [input17144_def, output17144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1046]
  try dsimp only
  rw [child17143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1046_skip, output17143_skip]
  kernel_rfl

theorem node17145_cond_eq
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value520 value1 value2 = (output1043, value5, value1))
    (child17144 : Flapjack.WordAlloc.removeDeadStructural input17144 value5 value1 value2 = (output17144, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17145 value520 value1 value2 = (output17145, value6896, value1) := by
  rw [input17145_def, output17145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1043]
  try dsimp only
  rw [child17144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1043_skip, output17144_skip]
  kernel_rfl

theorem node17146_cond_eq
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value520 value1 value2 = (output1032, value520, value1))
    (child17145 : Flapjack.WordAlloc.removeDeadStructural input17145 value520 value1 value2 = (output17145, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17146 value520 value1 value2 = (output17146, value6896, value1) := by
  rw [input17146_def, output17146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1032]
  try dsimp only
  rw [child17145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1032_skip, output17145_skip]
  kernel_rfl

theorem node17147_cond_eq
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value519 value1 value2 = (output1031, value520, value1))
    (child17146 : Flapjack.WordAlloc.removeDeadStructural input17146 value520 value1 value2 = (output17146, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17147 value519 value1 value2 = (output17147, value6896, value1) := by
  rw [input17147_def, output17147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1031]
  try dsimp only
  rw [child17146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1031_skip, output17146_skip]
  kernel_rfl

theorem node17148_cond_eq
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value5 value1 value2 = (output1030, value519, value1))
    (child17147 : Flapjack.WordAlloc.removeDeadStructural input17147 value519 value1 value2 = (output17147, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17148 value5 value1 value2 = (output17148, value6896, value1) := by
  rw [input17148_def, output17148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1030]
  try dsimp only
  rw [child17147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1030_skip, output17147_skip]
  kernel_rfl

theorem node17149_cond_eq
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value512 value1 value2 = (output1027, value5, value1))
    (child17148 : Flapjack.WordAlloc.removeDeadStructural input17148 value5 value1 value2 = (output17148, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17149 value512 value1 value2 = (output17149, value6896, value1) := by
  rw [input17149_def, output17149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1027]
  try dsimp only
  rw [child17148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1027_skip, output17148_skip]
  kernel_rfl

theorem node17150_cond_eq
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value512 value1 value2 = (output1016, value512, value1))
    (child17149 : Flapjack.WordAlloc.removeDeadStructural input17149 value512 value1 value2 = (output17149, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17150 value512 value1 value2 = (output17150, value6896, value1) := by
  rw [input17150_def, output17150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1016]
  try dsimp only
  rw [child17149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1016_skip, output17149_skip]
  kernel_rfl

theorem node17151_cond_eq
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value511 value1 value2 = (output1015, value512, value1))
    (child17150 : Flapjack.WordAlloc.removeDeadStructural input17150 value512 value1 value2 = (output17150, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input17151 value511 value1 value2 = (output17151, value6896, value1) := by
  rw [input17151_def, output17151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1015]
  try dsimp only
  rw [child17150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1015_skip, output17150_skip]
  kernel_rfl

#print axioms node17151_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
