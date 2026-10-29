import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk023
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node5888_cond_eq
    (child5886 : Flapjack.WordAlloc.removeDeadStructural input5886 value2948 value1 value2 = (output5886, value2949, value1))
    (child5887 : Flapjack.WordAlloc.removeDeadStructural input5887 value2949 value1 value2 = (output5887, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5888 value2948 value1 value2 = (output5888, value5, value1) := by
  rw [input5888_def, output5888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5886]
  dsimp only
  rw [child5887]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5886_skip, output5887_skip]
  kernel_rfl

theorem node5889_cond_eq
    (child5885 : Flapjack.WordAlloc.removeDeadStructural input5885 value2947 value1 value2 = (output5885, value2948, value1))
    (child5888 : Flapjack.WordAlloc.removeDeadStructural input5888 value2948 value1 value2 = (output5888, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5889 value2947 value1 value2 = (output5889, value5, value1) := by
  rw [input5889_def, output5889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5885]
  dsimp only
  rw [child5888]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5885_skip, output5888_skip]
  kernel_rfl

theorem node5890_cond_eq
    (child5884 : Flapjack.WordAlloc.removeDeadStructural input5884 value2946 value1 value2 = (output5884, value2947, value1))
    (child5889 : Flapjack.WordAlloc.removeDeadStructural input5889 value2947 value1 value2 = (output5889, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5890 value2946 value1 value2 = (output5890, value5, value1) := by
  rw [input5890_def, output5890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5884]
  dsimp only
  rw [child5889]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5884_skip, output5889_skip]
  kernel_rfl

theorem node5891_cond_eq
    (child5883 : Flapjack.WordAlloc.removeDeadStructural input5883 value2944 value1 value2 = (output5883, value2946, value1))
    (child5890 : Flapjack.WordAlloc.removeDeadStructural input5890 value2946 value1 value2 = (output5890, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5891 value2944 value1 value2 = (output5891, value5, value1) := by
  rw [input5891_def, output5891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5883]
  dsimp only
  rw [child5890]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5883_skip, output5890_skip]
  kernel_rfl

theorem node5892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5892 value5 value1 value2 = (output5892, value2950, value1) := by
  rw [input5892_def, output5892_def]
  kernel_rfl

theorem node5893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5893 value2950 value1 value2 = (output5893, value2951, value1) := by
  rw [input5893_def, output5893_def]
  kernel_rfl

theorem node5894_cond_eq
    (child5892 : Flapjack.WordAlloc.removeDeadStructural input5892 value5 value1 value2 = (output5892, value2950, value1))
    (child5893 : Flapjack.WordAlloc.removeDeadStructural input5893 value2950 value1 value2 = (output5893, value2951, value1)) : Flapjack.WordAlloc.removeDeadStructural input5894 value5 value1 value2 = (output5894, value2951, value1) := by
  rw [input5894_def, output5894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5892]
  dsimp only
  rw [child5893]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5892_skip, output5893_skip]
  kernel_rfl

theorem node5895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5895 value2951 value1 value2 = (output5895, value2952, value1) := by
  rw [input5895_def, output5895_def]
  kernel_rfl

theorem node5896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5896 value2952 value1 value2 = (output5896, value2952, value1) := by
  rw [input5896_def, output5896_def]
  kernel_rfl

theorem node5897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5897 value2952 value1 value2 = (output5897, value2953, value1) := by
  rw [input5897_def, output5897_def]
  kernel_rfl

theorem node5898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5898 value2953 value1 value2 = (output5898, value2954, value1) := by
  rw [input5898_def, output5898_def]
  kernel_rfl

theorem node5899_cond_eq
    (child5897 : Flapjack.WordAlloc.removeDeadStructural input5897 value2952 value1 value2 = (output5897, value2953, value1))
    (child5898 : Flapjack.WordAlloc.removeDeadStructural input5898 value2953 value1 value2 = (output5898, value2954, value1)) : Flapjack.WordAlloc.removeDeadStructural input5899 value2952 value1 value2 = (output5899, value2954, value1) := by
  rw [input5899_def, output5899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5897]
  dsimp only
  rw [child5898]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5897_skip, output5898_skip]
  kernel_rfl

theorem node5900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5900 value2954 value1 value2 = (output5900, value2955, value1) := by
  rw [input5900_def, output5900_def]
  kernel_rfl

theorem node5901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5901 value2955 value1 value2 = (output5901, value2956, value1) := by
  rw [input5901_def, output5901_def]
  kernel_rfl

theorem node5902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5902 value2956 value1 value2 = (output5902, value2957, value1) := by
  rw [input5902_def, output5902_def]
  kernel_rfl

theorem node5903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5903 value2957 value1 value2 = (output5903, value5, value1) := by
  rw [input5903_def, output5903_def]
  kernel_rfl

theorem node5904_cond_eq
    (child5902 : Flapjack.WordAlloc.removeDeadStructural input5902 value2956 value1 value2 = (output5902, value2957, value1))
    (child5903 : Flapjack.WordAlloc.removeDeadStructural input5903 value2957 value1 value2 = (output5903, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5904 value2956 value1 value2 = (output5904, value5, value1) := by
  rw [input5904_def, output5904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5902]
  dsimp only
  rw [child5903]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5902_skip, output5903_skip]
  kernel_rfl

theorem node5905_cond_eq
    (child5901 : Flapjack.WordAlloc.removeDeadStructural input5901 value2955 value1 value2 = (output5901, value2956, value1))
    (child5904 : Flapjack.WordAlloc.removeDeadStructural input5904 value2956 value1 value2 = (output5904, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5905 value2955 value1 value2 = (output5905, value5, value1) := by
  rw [input5905_def, output5905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5901]
  dsimp only
  rw [child5904]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5901_skip, output5904_skip]
  kernel_rfl

theorem node5906_cond_eq
    (child5900 : Flapjack.WordAlloc.removeDeadStructural input5900 value2954 value1 value2 = (output5900, value2955, value1))
    (child5905 : Flapjack.WordAlloc.removeDeadStructural input5905 value2955 value1 value2 = (output5905, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5906 value2954 value1 value2 = (output5906, value5, value1) := by
  rw [input5906_def, output5906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5900]
  dsimp only
  rw [child5905]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5900_skip, output5905_skip]
  kernel_rfl

theorem node5907_cond_eq
    (child5899 : Flapjack.WordAlloc.removeDeadStructural input5899 value2952 value1 value2 = (output5899, value2954, value1))
    (child5906 : Flapjack.WordAlloc.removeDeadStructural input5906 value2954 value1 value2 = (output5906, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5907 value2952 value1 value2 = (output5907, value5, value1) := by
  rw [input5907_def, output5907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5899]
  dsimp only
  rw [child5906]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5899_skip, output5906_skip]
  kernel_rfl

theorem node5908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5908 value5 value1 value2 = (output5908, value2958, value1) := by
  rw [input5908_def, output5908_def]
  kernel_rfl

theorem node5909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5909 value2958 value1 value2 = (output5909, value2959, value1) := by
  rw [input5909_def, output5909_def]
  kernel_rfl

theorem node5910_cond_eq
    (child5908 : Flapjack.WordAlloc.removeDeadStructural input5908 value5 value1 value2 = (output5908, value2958, value1))
    (child5909 : Flapjack.WordAlloc.removeDeadStructural input5909 value2958 value1 value2 = (output5909, value2959, value1)) : Flapjack.WordAlloc.removeDeadStructural input5910 value5 value1 value2 = (output5910, value2959, value1) := by
  rw [input5910_def, output5910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5908]
  dsimp only
  rw [child5909]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5908_skip, output5909_skip]
  kernel_rfl

theorem node5911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5911 value2959 value1 value2 = (output5911, value2960, value1) := by
  rw [input5911_def, output5911_def]
  kernel_rfl

theorem node5912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5912 value2960 value1 value2 = (output5912, value2960, value1) := by
  rw [input5912_def, output5912_def]
  kernel_rfl

theorem node5913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5913 value2960 value1 value2 = (output5913, value2961, value1) := by
  rw [input5913_def, output5913_def]
  kernel_rfl

theorem node5914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5914 value2961 value1 value2 = (output5914, value2962, value1) := by
  rw [input5914_def, output5914_def]
  kernel_rfl

theorem node5915_cond_eq
    (child5913 : Flapjack.WordAlloc.removeDeadStructural input5913 value2960 value1 value2 = (output5913, value2961, value1))
    (child5914 : Flapjack.WordAlloc.removeDeadStructural input5914 value2961 value1 value2 = (output5914, value2962, value1)) : Flapjack.WordAlloc.removeDeadStructural input5915 value2960 value1 value2 = (output5915, value2962, value1) := by
  rw [input5915_def, output5915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5913]
  dsimp only
  rw [child5914]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5913_skip, output5914_skip]
  kernel_rfl

theorem node5916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5916 value2962 value1 value2 = (output5916, value2963, value1) := by
  rw [input5916_def, output5916_def]
  kernel_rfl

theorem node5917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5917 value2963 value1 value2 = (output5917, value2964, value1) := by
  rw [input5917_def, output5917_def]
  kernel_rfl

theorem node5918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5918 value2964 value1 value2 = (output5918, value2965, value1) := by
  rw [input5918_def, output5918_def]
  kernel_rfl

theorem node5919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5919 value2965 value1 value2 = (output5919, value5, value1) := by
  rw [input5919_def, output5919_def]
  kernel_rfl

theorem node5920_cond_eq
    (child5918 : Flapjack.WordAlloc.removeDeadStructural input5918 value2964 value1 value2 = (output5918, value2965, value1))
    (child5919 : Flapjack.WordAlloc.removeDeadStructural input5919 value2965 value1 value2 = (output5919, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5920 value2964 value1 value2 = (output5920, value5, value1) := by
  rw [input5920_def, output5920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5918]
  dsimp only
  rw [child5919]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5918_skip, output5919_skip]
  kernel_rfl

theorem node5921_cond_eq
    (child5917 : Flapjack.WordAlloc.removeDeadStructural input5917 value2963 value1 value2 = (output5917, value2964, value1))
    (child5920 : Flapjack.WordAlloc.removeDeadStructural input5920 value2964 value1 value2 = (output5920, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5921 value2963 value1 value2 = (output5921, value5, value1) := by
  rw [input5921_def, output5921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5917]
  dsimp only
  rw [child5920]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5917_skip, output5920_skip]
  kernel_rfl

theorem node5922_cond_eq
    (child5916 : Flapjack.WordAlloc.removeDeadStructural input5916 value2962 value1 value2 = (output5916, value2963, value1))
    (child5921 : Flapjack.WordAlloc.removeDeadStructural input5921 value2963 value1 value2 = (output5921, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5922 value2962 value1 value2 = (output5922, value5, value1) := by
  rw [input5922_def, output5922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5916]
  dsimp only
  rw [child5921]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5916_skip, output5921_skip]
  kernel_rfl

theorem node5923_cond_eq
    (child5915 : Flapjack.WordAlloc.removeDeadStructural input5915 value2960 value1 value2 = (output5915, value2962, value1))
    (child5922 : Flapjack.WordAlloc.removeDeadStructural input5922 value2962 value1 value2 = (output5922, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5923 value2960 value1 value2 = (output5923, value5, value1) := by
  rw [input5923_def, output5923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5915]
  dsimp only
  rw [child5922]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5915_skip, output5922_skip]
  kernel_rfl

theorem node5924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5924 value5 value1 value2 = (output5924, value2966, value1) := by
  rw [input5924_def, output5924_def]
  kernel_rfl

theorem node5925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5925 value2966 value1 value2 = (output5925, value2967, value1) := by
  rw [input5925_def, output5925_def]
  kernel_rfl

theorem node5926_cond_eq
    (child5924 : Flapjack.WordAlloc.removeDeadStructural input5924 value5 value1 value2 = (output5924, value2966, value1))
    (child5925 : Flapjack.WordAlloc.removeDeadStructural input5925 value2966 value1 value2 = (output5925, value2967, value1)) : Flapjack.WordAlloc.removeDeadStructural input5926 value5 value1 value2 = (output5926, value2967, value1) := by
  rw [input5926_def, output5926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5924]
  dsimp only
  rw [child5925]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5924_skip, output5925_skip]
  kernel_rfl

theorem node5927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5927 value2967 value1 value2 = (output5927, value2968, value1) := by
  rw [input5927_def, output5927_def]
  kernel_rfl

theorem node5928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5928 value2968 value1 value2 = (output5928, value2968, value1) := by
  rw [input5928_def, output5928_def]
  kernel_rfl

theorem node5929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5929 value2968 value1 value2 = (output5929, value2969, value1) := by
  rw [input5929_def, output5929_def]
  kernel_rfl

theorem node5930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5930 value2969 value1 value2 = (output5930, value2970, value1) := by
  rw [input5930_def, output5930_def]
  kernel_rfl

theorem node5931_cond_eq
    (child5929 : Flapjack.WordAlloc.removeDeadStructural input5929 value2968 value1 value2 = (output5929, value2969, value1))
    (child5930 : Flapjack.WordAlloc.removeDeadStructural input5930 value2969 value1 value2 = (output5930, value2970, value1)) : Flapjack.WordAlloc.removeDeadStructural input5931 value2968 value1 value2 = (output5931, value2970, value1) := by
  rw [input5931_def, output5931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5929]
  dsimp only
  rw [child5930]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5929_skip, output5930_skip]
  kernel_rfl

theorem node5932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5932 value2970 value1 value2 = (output5932, value2971, value1) := by
  rw [input5932_def, output5932_def]
  kernel_rfl

theorem node5933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5933 value2971 value1 value2 = (output5933, value2972, value1) := by
  rw [input5933_def, output5933_def]
  kernel_rfl

theorem node5934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5934 value2972 value1 value2 = (output5934, value2973, value1) := by
  rw [input5934_def, output5934_def]
  kernel_rfl

theorem node5935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5935 value2973 value1 value2 = (output5935, value5, value1) := by
  rw [input5935_def, output5935_def]
  kernel_rfl

theorem node5936_cond_eq
    (child5934 : Flapjack.WordAlloc.removeDeadStructural input5934 value2972 value1 value2 = (output5934, value2973, value1))
    (child5935 : Flapjack.WordAlloc.removeDeadStructural input5935 value2973 value1 value2 = (output5935, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5936 value2972 value1 value2 = (output5936, value5, value1) := by
  rw [input5936_def, output5936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5934]
  dsimp only
  rw [child5935]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5934_skip, output5935_skip]
  kernel_rfl

theorem node5937_cond_eq
    (child5933 : Flapjack.WordAlloc.removeDeadStructural input5933 value2971 value1 value2 = (output5933, value2972, value1))
    (child5936 : Flapjack.WordAlloc.removeDeadStructural input5936 value2972 value1 value2 = (output5936, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5937 value2971 value1 value2 = (output5937, value5, value1) := by
  rw [input5937_def, output5937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5933]
  dsimp only
  rw [child5936]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5933_skip, output5936_skip]
  kernel_rfl

theorem node5938_cond_eq
    (child5932 : Flapjack.WordAlloc.removeDeadStructural input5932 value2970 value1 value2 = (output5932, value2971, value1))
    (child5937 : Flapjack.WordAlloc.removeDeadStructural input5937 value2971 value1 value2 = (output5937, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5938 value2970 value1 value2 = (output5938, value5, value1) := by
  rw [input5938_def, output5938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5932]
  dsimp only
  rw [child5937]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5932_skip, output5937_skip]
  kernel_rfl

theorem node5939_cond_eq
    (child5931 : Flapjack.WordAlloc.removeDeadStructural input5931 value2968 value1 value2 = (output5931, value2970, value1))
    (child5938 : Flapjack.WordAlloc.removeDeadStructural input5938 value2970 value1 value2 = (output5938, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5939 value2968 value1 value2 = (output5939, value5, value1) := by
  rw [input5939_def, output5939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5931]
  dsimp only
  rw [child5938]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5931_skip, output5938_skip]
  kernel_rfl

theorem node5940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5940 value5 value1 value2 = (output5940, value2974, value1) := by
  rw [input5940_def, output5940_def]
  kernel_rfl

theorem node5941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5941 value2974 value1 value2 = (output5941, value2975, value1) := by
  rw [input5941_def, output5941_def]
  kernel_rfl

theorem node5942_cond_eq
    (child5940 : Flapjack.WordAlloc.removeDeadStructural input5940 value5 value1 value2 = (output5940, value2974, value1))
    (child5941 : Flapjack.WordAlloc.removeDeadStructural input5941 value2974 value1 value2 = (output5941, value2975, value1)) : Flapjack.WordAlloc.removeDeadStructural input5942 value5 value1 value2 = (output5942, value2975, value1) := by
  rw [input5942_def, output5942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5940]
  dsimp only
  rw [child5941]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5940_skip, output5941_skip]
  kernel_rfl

theorem node5943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5943 value2975 value1 value2 = (output5943, value2976, value1) := by
  rw [input5943_def, output5943_def]
  kernel_rfl

theorem node5944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5944 value2976 value1 value2 = (output5944, value2976, value1) := by
  rw [input5944_def, output5944_def]
  kernel_rfl

theorem node5945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5945 value2976 value1 value2 = (output5945, value2977, value1) := by
  rw [input5945_def, output5945_def]
  kernel_rfl

theorem node5946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5946 value2977 value1 value2 = (output5946, value2978, value1) := by
  rw [input5946_def, output5946_def]
  kernel_rfl

theorem node5947_cond_eq
    (child5945 : Flapjack.WordAlloc.removeDeadStructural input5945 value2976 value1 value2 = (output5945, value2977, value1))
    (child5946 : Flapjack.WordAlloc.removeDeadStructural input5946 value2977 value1 value2 = (output5946, value2978, value1)) : Flapjack.WordAlloc.removeDeadStructural input5947 value2976 value1 value2 = (output5947, value2978, value1) := by
  rw [input5947_def, output5947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5945]
  dsimp only
  rw [child5946]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5945_skip, output5946_skip]
  kernel_rfl

theorem node5948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5948 value2978 value1 value2 = (output5948, value2979, value1) := by
  rw [input5948_def, output5948_def]
  kernel_rfl

theorem node5949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5949 value2979 value1 value2 = (output5949, value2980, value1) := by
  rw [input5949_def, output5949_def]
  kernel_rfl

theorem node5950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5950 value2980 value1 value2 = (output5950, value2981, value1) := by
  rw [input5950_def, output5950_def]
  kernel_rfl

theorem node5951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5951 value2981 value1 value2 = (output5951, value5, value1) := by
  rw [input5951_def, output5951_def]
  kernel_rfl

theorem node5952_cond_eq
    (child5950 : Flapjack.WordAlloc.removeDeadStructural input5950 value2980 value1 value2 = (output5950, value2981, value1))
    (child5951 : Flapjack.WordAlloc.removeDeadStructural input5951 value2981 value1 value2 = (output5951, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5952 value2980 value1 value2 = (output5952, value5, value1) := by
  rw [input5952_def, output5952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5950]
  dsimp only
  rw [child5951]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5950_skip, output5951_skip]
  kernel_rfl

theorem node5953_cond_eq
    (child5949 : Flapjack.WordAlloc.removeDeadStructural input5949 value2979 value1 value2 = (output5949, value2980, value1))
    (child5952 : Flapjack.WordAlloc.removeDeadStructural input5952 value2980 value1 value2 = (output5952, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5953 value2979 value1 value2 = (output5953, value5, value1) := by
  rw [input5953_def, output5953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5949]
  dsimp only
  rw [child5952]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5949_skip, output5952_skip]
  kernel_rfl

theorem node5954_cond_eq
    (child5948 : Flapjack.WordAlloc.removeDeadStructural input5948 value2978 value1 value2 = (output5948, value2979, value1))
    (child5953 : Flapjack.WordAlloc.removeDeadStructural input5953 value2979 value1 value2 = (output5953, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5954 value2978 value1 value2 = (output5954, value5, value1) := by
  rw [input5954_def, output5954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5948]
  dsimp only
  rw [child5953]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5948_skip, output5953_skip]
  kernel_rfl

theorem node5955_cond_eq
    (child5947 : Flapjack.WordAlloc.removeDeadStructural input5947 value2976 value1 value2 = (output5947, value2978, value1))
    (child5954 : Flapjack.WordAlloc.removeDeadStructural input5954 value2978 value1 value2 = (output5954, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5955 value2976 value1 value2 = (output5955, value5, value1) := by
  rw [input5955_def, output5955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5947]
  dsimp only
  rw [child5954]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5947_skip, output5954_skip]
  kernel_rfl

theorem node5956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5956 value5 value1 value2 = (output5956, value2982, value1) := by
  rw [input5956_def, output5956_def]
  kernel_rfl

theorem node5957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5957 value2982 value1 value2 = (output5957, value2983, value1) := by
  rw [input5957_def, output5957_def]
  kernel_rfl

theorem node5958_cond_eq
    (child5956 : Flapjack.WordAlloc.removeDeadStructural input5956 value5 value1 value2 = (output5956, value2982, value1))
    (child5957 : Flapjack.WordAlloc.removeDeadStructural input5957 value2982 value1 value2 = (output5957, value2983, value1)) : Flapjack.WordAlloc.removeDeadStructural input5958 value5 value1 value2 = (output5958, value2983, value1) := by
  rw [input5958_def, output5958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5956]
  dsimp only
  rw [child5957]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5956_skip, output5957_skip]
  kernel_rfl

theorem node5959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5959 value2983 value1 value2 = (output5959, value2984, value1) := by
  rw [input5959_def, output5959_def]
  kernel_rfl

theorem node5960_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5960 value2984 value1 value2 = (output5960, value2984, value1) := by
  rw [input5960_def, output5960_def]
  kernel_rfl

theorem node5961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5961 value2984 value1 value2 = (output5961, value2985, value1) := by
  rw [input5961_def, output5961_def]
  kernel_rfl

theorem node5962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5962 value2985 value1 value2 = (output5962, value2986, value1) := by
  rw [input5962_def, output5962_def]
  kernel_rfl

theorem node5963_cond_eq
    (child5961 : Flapjack.WordAlloc.removeDeadStructural input5961 value2984 value1 value2 = (output5961, value2985, value1))
    (child5962 : Flapjack.WordAlloc.removeDeadStructural input5962 value2985 value1 value2 = (output5962, value2986, value1)) : Flapjack.WordAlloc.removeDeadStructural input5963 value2984 value1 value2 = (output5963, value2986, value1) := by
  rw [input5963_def, output5963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5961]
  dsimp only
  rw [child5962]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5961_skip, output5962_skip]
  kernel_rfl

theorem node5964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5964 value2986 value1 value2 = (output5964, value2987, value1) := by
  rw [input5964_def, output5964_def]
  kernel_rfl

theorem node5965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5965 value2987 value1 value2 = (output5965, value2988, value1) := by
  rw [input5965_def, output5965_def]
  kernel_rfl

theorem node5966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5966 value2988 value1 value2 = (output5966, value2989, value1) := by
  rw [input5966_def, output5966_def]
  kernel_rfl

theorem node5967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5967 value2989 value1 value2 = (output5967, value5, value1) := by
  rw [input5967_def, output5967_def]
  kernel_rfl

theorem node5968_cond_eq
    (child5966 : Flapjack.WordAlloc.removeDeadStructural input5966 value2988 value1 value2 = (output5966, value2989, value1))
    (child5967 : Flapjack.WordAlloc.removeDeadStructural input5967 value2989 value1 value2 = (output5967, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5968 value2988 value1 value2 = (output5968, value5, value1) := by
  rw [input5968_def, output5968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5966]
  dsimp only
  rw [child5967]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5966_skip, output5967_skip]
  kernel_rfl

theorem node5969_cond_eq
    (child5965 : Flapjack.WordAlloc.removeDeadStructural input5965 value2987 value1 value2 = (output5965, value2988, value1))
    (child5968 : Flapjack.WordAlloc.removeDeadStructural input5968 value2988 value1 value2 = (output5968, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5969 value2987 value1 value2 = (output5969, value5, value1) := by
  rw [input5969_def, output5969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5965]
  dsimp only
  rw [child5968]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5965_skip, output5968_skip]
  kernel_rfl

theorem node5970_cond_eq
    (child5964 : Flapjack.WordAlloc.removeDeadStructural input5964 value2986 value1 value2 = (output5964, value2987, value1))
    (child5969 : Flapjack.WordAlloc.removeDeadStructural input5969 value2987 value1 value2 = (output5969, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5970 value2986 value1 value2 = (output5970, value5, value1) := by
  rw [input5970_def, output5970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5964]
  dsimp only
  rw [child5969]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5964_skip, output5969_skip]
  kernel_rfl

theorem node5971_cond_eq
    (child5963 : Flapjack.WordAlloc.removeDeadStructural input5963 value2984 value1 value2 = (output5963, value2986, value1))
    (child5970 : Flapjack.WordAlloc.removeDeadStructural input5970 value2986 value1 value2 = (output5970, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5971 value2984 value1 value2 = (output5971, value5, value1) := by
  rw [input5971_def, output5971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5963]
  dsimp only
  rw [child5970]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5963_skip, output5970_skip]
  kernel_rfl

theorem node5972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5972 value5 value1 value2 = (output5972, value2990, value1) := by
  rw [input5972_def, output5972_def]
  kernel_rfl

theorem node5973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5973 value2990 value1 value2 = (output5973, value2991, value1) := by
  rw [input5973_def, output5973_def]
  kernel_rfl

theorem node5974_cond_eq
    (child5972 : Flapjack.WordAlloc.removeDeadStructural input5972 value5 value1 value2 = (output5972, value2990, value1))
    (child5973 : Flapjack.WordAlloc.removeDeadStructural input5973 value2990 value1 value2 = (output5973, value2991, value1)) : Flapjack.WordAlloc.removeDeadStructural input5974 value5 value1 value2 = (output5974, value2991, value1) := by
  rw [input5974_def, output5974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5972]
  dsimp only
  rw [child5973]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5972_skip, output5973_skip]
  kernel_rfl

theorem node5975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5975 value2991 value1 value2 = (output5975, value2992, value1) := by
  rw [input5975_def, output5975_def]
  kernel_rfl

theorem node5976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5976 value2992 value1 value2 = (output5976, value2992, value1) := by
  rw [input5976_def, output5976_def]
  kernel_rfl

theorem node5977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5977 value2992 value1 value2 = (output5977, value2993, value1) := by
  rw [input5977_def, output5977_def]
  kernel_rfl

theorem node5978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5978 value2993 value1 value2 = (output5978, value2994, value1) := by
  rw [input5978_def, output5978_def]
  kernel_rfl

theorem node5979_cond_eq
    (child5977 : Flapjack.WordAlloc.removeDeadStructural input5977 value2992 value1 value2 = (output5977, value2993, value1))
    (child5978 : Flapjack.WordAlloc.removeDeadStructural input5978 value2993 value1 value2 = (output5978, value2994, value1)) : Flapjack.WordAlloc.removeDeadStructural input5979 value2992 value1 value2 = (output5979, value2994, value1) := by
  rw [input5979_def, output5979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5977]
  dsimp only
  rw [child5978]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5977_skip, output5978_skip]
  kernel_rfl

theorem node5980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5980 value2994 value1 value2 = (output5980, value2995, value1) := by
  rw [input5980_def, output5980_def]
  kernel_rfl

theorem node5981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5981 value2995 value1 value2 = (output5981, value2996, value1) := by
  rw [input5981_def, output5981_def]
  kernel_rfl

theorem node5982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5982 value2996 value1 value2 = (output5982, value2997, value1) := by
  rw [input5982_def, output5982_def]
  kernel_rfl

theorem node5983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5983 value2997 value1 value2 = (output5983, value5, value1) := by
  rw [input5983_def, output5983_def]
  kernel_rfl

theorem node5984_cond_eq
    (child5982 : Flapjack.WordAlloc.removeDeadStructural input5982 value2996 value1 value2 = (output5982, value2997, value1))
    (child5983 : Flapjack.WordAlloc.removeDeadStructural input5983 value2997 value1 value2 = (output5983, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5984 value2996 value1 value2 = (output5984, value5, value1) := by
  rw [input5984_def, output5984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5982]
  dsimp only
  rw [child5983]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5982_skip, output5983_skip]
  kernel_rfl

theorem node5985_cond_eq
    (child5981 : Flapjack.WordAlloc.removeDeadStructural input5981 value2995 value1 value2 = (output5981, value2996, value1))
    (child5984 : Flapjack.WordAlloc.removeDeadStructural input5984 value2996 value1 value2 = (output5984, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5985 value2995 value1 value2 = (output5985, value5, value1) := by
  rw [input5985_def, output5985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5981]
  dsimp only
  rw [child5984]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5981_skip, output5984_skip]
  kernel_rfl

theorem node5986_cond_eq
    (child5980 : Flapjack.WordAlloc.removeDeadStructural input5980 value2994 value1 value2 = (output5980, value2995, value1))
    (child5985 : Flapjack.WordAlloc.removeDeadStructural input5985 value2995 value1 value2 = (output5985, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5986 value2994 value1 value2 = (output5986, value5, value1) := by
  rw [input5986_def, output5986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5980]
  dsimp only
  rw [child5985]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5980_skip, output5985_skip]
  kernel_rfl

theorem node5987_cond_eq
    (child5979 : Flapjack.WordAlloc.removeDeadStructural input5979 value2992 value1 value2 = (output5979, value2994, value1))
    (child5986 : Flapjack.WordAlloc.removeDeadStructural input5986 value2994 value1 value2 = (output5986, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5987 value2992 value1 value2 = (output5987, value5, value1) := by
  rw [input5987_def, output5987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5979]
  dsimp only
  rw [child5986]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5979_skip, output5986_skip]
  kernel_rfl

theorem node5988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5988 value5 value1 value2 = (output5988, value2998, value1) := by
  rw [input5988_def, output5988_def]
  kernel_rfl

theorem node5989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5989 value2998 value1 value2 = (output5989, value2999, value1) := by
  rw [input5989_def, output5989_def]
  kernel_rfl

theorem node5990_cond_eq
    (child5988 : Flapjack.WordAlloc.removeDeadStructural input5988 value5 value1 value2 = (output5988, value2998, value1))
    (child5989 : Flapjack.WordAlloc.removeDeadStructural input5989 value2998 value1 value2 = (output5989, value2999, value1)) : Flapjack.WordAlloc.removeDeadStructural input5990 value5 value1 value2 = (output5990, value2999, value1) := by
  rw [input5990_def, output5990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5988]
  dsimp only
  rw [child5989]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5988_skip, output5989_skip]
  kernel_rfl

theorem node5991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5991 value2999 value1 value2 = (output5991, value3000, value1) := by
  rw [input5991_def, output5991_def]
  kernel_rfl

theorem node5992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5992 value3000 value1 value2 = (output5992, value3000, value1) := by
  rw [input5992_def, output5992_def]
  kernel_rfl

theorem node5993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5993 value3000 value1 value2 = (output5993, value3001, value1) := by
  rw [input5993_def, output5993_def]
  kernel_rfl

theorem node5994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5994 value3001 value1 value2 = (output5994, value3002, value1) := by
  rw [input5994_def, output5994_def]
  kernel_rfl

theorem node5995_cond_eq
    (child5993 : Flapjack.WordAlloc.removeDeadStructural input5993 value3000 value1 value2 = (output5993, value3001, value1))
    (child5994 : Flapjack.WordAlloc.removeDeadStructural input5994 value3001 value1 value2 = (output5994, value3002, value1)) : Flapjack.WordAlloc.removeDeadStructural input5995 value3000 value1 value2 = (output5995, value3002, value1) := by
  rw [input5995_def, output5995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5993]
  dsimp only
  rw [child5994]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5993_skip, output5994_skip]
  kernel_rfl

theorem node5996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5996 value3002 value1 value2 = (output5996, value3003, value1) := by
  rw [input5996_def, output5996_def]
  kernel_rfl

theorem node5997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5997 value3003 value1 value2 = (output5997, value3004, value1) := by
  rw [input5997_def, output5997_def]
  kernel_rfl

theorem node5998_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5998 value3004 value1 value2 = (output5998, value3005, value1) := by
  rw [input5998_def, output5998_def]
  kernel_rfl

theorem node5999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5999 value3005 value1 value2 = (output5999, value5, value1) := by
  rw [input5999_def, output5999_def]
  kernel_rfl

theorem node6000_cond_eq
    (child5998 : Flapjack.WordAlloc.removeDeadStructural input5998 value3004 value1 value2 = (output5998, value3005, value1))
    (child5999 : Flapjack.WordAlloc.removeDeadStructural input5999 value3005 value1 value2 = (output5999, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6000 value3004 value1 value2 = (output6000, value5, value1) := by
  rw [input6000_def, output6000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5998]
  dsimp only
  rw [child5999]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5998_skip, output5999_skip]
  kernel_rfl

theorem node6001_cond_eq
    (child5997 : Flapjack.WordAlloc.removeDeadStructural input5997 value3003 value1 value2 = (output5997, value3004, value1))
    (child6000 : Flapjack.WordAlloc.removeDeadStructural input6000 value3004 value1 value2 = (output6000, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6001 value3003 value1 value2 = (output6001, value5, value1) := by
  rw [input6001_def, output6001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5997]
  dsimp only
  rw [child6000]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5997_skip, output6000_skip]
  kernel_rfl

theorem node6002_cond_eq
    (child5996 : Flapjack.WordAlloc.removeDeadStructural input5996 value3002 value1 value2 = (output5996, value3003, value1))
    (child6001 : Flapjack.WordAlloc.removeDeadStructural input6001 value3003 value1 value2 = (output6001, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6002 value3002 value1 value2 = (output6002, value5, value1) := by
  rw [input6002_def, output6002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5996]
  dsimp only
  rw [child6001]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5996_skip, output6001_skip]
  kernel_rfl

theorem node6003_cond_eq
    (child5995 : Flapjack.WordAlloc.removeDeadStructural input5995 value3000 value1 value2 = (output5995, value3002, value1))
    (child6002 : Flapjack.WordAlloc.removeDeadStructural input6002 value3002 value1 value2 = (output6002, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6003 value3000 value1 value2 = (output6003, value5, value1) := by
  rw [input6003_def, output6003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5995]
  dsimp only
  rw [child6002]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5995_skip, output6002_skip]
  kernel_rfl

theorem node6004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6004 value5 value1 value2 = (output6004, value3006, value1) := by
  rw [input6004_def, output6004_def]
  kernel_rfl

theorem node6005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6005 value3006 value1 value2 = (output6005, value3007, value1) := by
  rw [input6005_def, output6005_def]
  kernel_rfl

theorem node6006_cond_eq
    (child6004 : Flapjack.WordAlloc.removeDeadStructural input6004 value5 value1 value2 = (output6004, value3006, value1))
    (child6005 : Flapjack.WordAlloc.removeDeadStructural input6005 value3006 value1 value2 = (output6005, value3007, value1)) : Flapjack.WordAlloc.removeDeadStructural input6006 value5 value1 value2 = (output6006, value3007, value1) := by
  rw [input6006_def, output6006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6004]
  dsimp only
  rw [child6005]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6004_skip, output6005_skip]
  kernel_rfl

theorem node6007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6007 value3007 value1 value2 = (output6007, value3008, value1) := by
  rw [input6007_def, output6007_def]
  kernel_rfl

theorem node6008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6008 value3008 value1 value2 = (output6008, value3008, value1) := by
  rw [input6008_def, output6008_def]
  kernel_rfl

theorem node6009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6009 value3008 value1 value2 = (output6009, value3009, value1) := by
  rw [input6009_def, output6009_def]
  kernel_rfl

theorem node6010_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6010 value3009 value1 value2 = (output6010, value3010, value1) := by
  rw [input6010_def, output6010_def]
  kernel_rfl

theorem node6011_cond_eq
    (child6009 : Flapjack.WordAlloc.removeDeadStructural input6009 value3008 value1 value2 = (output6009, value3009, value1))
    (child6010 : Flapjack.WordAlloc.removeDeadStructural input6010 value3009 value1 value2 = (output6010, value3010, value1)) : Flapjack.WordAlloc.removeDeadStructural input6011 value3008 value1 value2 = (output6011, value3010, value1) := by
  rw [input6011_def, output6011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6009]
  dsimp only
  rw [child6010]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6009_skip, output6010_skip]
  kernel_rfl

theorem node6012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6012 value3010 value1 value2 = (output6012, value3011, value1) := by
  rw [input6012_def, output6012_def]
  kernel_rfl

theorem node6013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6013 value3011 value1 value2 = (output6013, value3012, value1) := by
  rw [input6013_def, output6013_def]
  kernel_rfl

theorem node6014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6014 value3012 value1 value2 = (output6014, value3013, value1) := by
  rw [input6014_def, output6014_def]
  kernel_rfl

theorem node6015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6015 value3013 value1 value2 = (output6015, value5, value1) := by
  rw [input6015_def, output6015_def]
  kernel_rfl

theorem node6016_cond_eq
    (child6014 : Flapjack.WordAlloc.removeDeadStructural input6014 value3012 value1 value2 = (output6014, value3013, value1))
    (child6015 : Flapjack.WordAlloc.removeDeadStructural input6015 value3013 value1 value2 = (output6015, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6016 value3012 value1 value2 = (output6016, value5, value1) := by
  rw [input6016_def, output6016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6014]
  dsimp only
  rw [child6015]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6014_skip, output6015_skip]
  kernel_rfl

theorem node6017_cond_eq
    (child6013 : Flapjack.WordAlloc.removeDeadStructural input6013 value3011 value1 value2 = (output6013, value3012, value1))
    (child6016 : Flapjack.WordAlloc.removeDeadStructural input6016 value3012 value1 value2 = (output6016, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6017 value3011 value1 value2 = (output6017, value5, value1) := by
  rw [input6017_def, output6017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6013]
  dsimp only
  rw [child6016]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6013_skip, output6016_skip]
  kernel_rfl

theorem node6018_cond_eq
    (child6012 : Flapjack.WordAlloc.removeDeadStructural input6012 value3010 value1 value2 = (output6012, value3011, value1))
    (child6017 : Flapjack.WordAlloc.removeDeadStructural input6017 value3011 value1 value2 = (output6017, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6018 value3010 value1 value2 = (output6018, value5, value1) := by
  rw [input6018_def, output6018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6012]
  dsimp only
  rw [child6017]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6012_skip, output6017_skip]
  kernel_rfl

theorem node6019_cond_eq
    (child6011 : Flapjack.WordAlloc.removeDeadStructural input6011 value3008 value1 value2 = (output6011, value3010, value1))
    (child6018 : Flapjack.WordAlloc.removeDeadStructural input6018 value3010 value1 value2 = (output6018, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6019 value3008 value1 value2 = (output6019, value5, value1) := by
  rw [input6019_def, output6019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6011]
  dsimp only
  rw [child6018]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6011_skip, output6018_skip]
  kernel_rfl

theorem node6020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6020 value5 value1 value2 = (output6020, value3014, value1) := by
  rw [input6020_def, output6020_def]
  kernel_rfl

theorem node6021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6021 value3014 value1 value2 = (output6021, value3015, value1) := by
  rw [input6021_def, output6021_def]
  kernel_rfl

theorem node6022_cond_eq
    (child6020 : Flapjack.WordAlloc.removeDeadStructural input6020 value5 value1 value2 = (output6020, value3014, value1))
    (child6021 : Flapjack.WordAlloc.removeDeadStructural input6021 value3014 value1 value2 = (output6021, value3015, value1)) : Flapjack.WordAlloc.removeDeadStructural input6022 value5 value1 value2 = (output6022, value3015, value1) := by
  rw [input6022_def, output6022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6020]
  dsimp only
  rw [child6021]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6020_skip, output6021_skip]
  kernel_rfl

theorem node6023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6023 value3015 value1 value2 = (output6023, value3016, value1) := by
  rw [input6023_def, output6023_def]
  kernel_rfl

theorem node6024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6024 value3016 value1 value2 = (output6024, value3016, value1) := by
  rw [input6024_def, output6024_def]
  kernel_rfl

theorem node6025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6025 value3016 value1 value2 = (output6025, value3017, value1) := by
  rw [input6025_def, output6025_def]
  kernel_rfl

theorem node6026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6026 value3017 value1 value2 = (output6026, value3018, value1) := by
  rw [input6026_def, output6026_def]
  kernel_rfl

theorem node6027_cond_eq
    (child6025 : Flapjack.WordAlloc.removeDeadStructural input6025 value3016 value1 value2 = (output6025, value3017, value1))
    (child6026 : Flapjack.WordAlloc.removeDeadStructural input6026 value3017 value1 value2 = (output6026, value3018, value1)) : Flapjack.WordAlloc.removeDeadStructural input6027 value3016 value1 value2 = (output6027, value3018, value1) := by
  rw [input6027_def, output6027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6025]
  dsimp only
  rw [child6026]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6025_skip, output6026_skip]
  kernel_rfl

theorem node6028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6028 value3018 value1 value2 = (output6028, value3019, value1) := by
  rw [input6028_def, output6028_def]
  kernel_rfl

theorem node6029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6029 value3019 value1 value2 = (output6029, value3020, value1) := by
  rw [input6029_def, output6029_def]
  kernel_rfl

theorem node6030_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6030 value3020 value1 value2 = (output6030, value3021, value1) := by
  rw [input6030_def, output6030_def]
  kernel_rfl

theorem node6031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6031 value3021 value1 value2 = (output6031, value5, value1) := by
  rw [input6031_def, output6031_def]
  kernel_rfl

theorem node6032_cond_eq
    (child6030 : Flapjack.WordAlloc.removeDeadStructural input6030 value3020 value1 value2 = (output6030, value3021, value1))
    (child6031 : Flapjack.WordAlloc.removeDeadStructural input6031 value3021 value1 value2 = (output6031, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6032 value3020 value1 value2 = (output6032, value5, value1) := by
  rw [input6032_def, output6032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6030]
  dsimp only
  rw [child6031]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6030_skip, output6031_skip]
  kernel_rfl

theorem node6033_cond_eq
    (child6029 : Flapjack.WordAlloc.removeDeadStructural input6029 value3019 value1 value2 = (output6029, value3020, value1))
    (child6032 : Flapjack.WordAlloc.removeDeadStructural input6032 value3020 value1 value2 = (output6032, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6033 value3019 value1 value2 = (output6033, value5, value1) := by
  rw [input6033_def, output6033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6029]
  dsimp only
  rw [child6032]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6029_skip, output6032_skip]
  kernel_rfl

theorem node6034_cond_eq
    (child6028 : Flapjack.WordAlloc.removeDeadStructural input6028 value3018 value1 value2 = (output6028, value3019, value1))
    (child6033 : Flapjack.WordAlloc.removeDeadStructural input6033 value3019 value1 value2 = (output6033, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6034 value3018 value1 value2 = (output6034, value5, value1) := by
  rw [input6034_def, output6034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6028]
  dsimp only
  rw [child6033]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6028_skip, output6033_skip]
  kernel_rfl

theorem node6035_cond_eq
    (child6027 : Flapjack.WordAlloc.removeDeadStructural input6027 value3016 value1 value2 = (output6027, value3018, value1))
    (child6034 : Flapjack.WordAlloc.removeDeadStructural input6034 value3018 value1 value2 = (output6034, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6035 value3016 value1 value2 = (output6035, value5, value1) := by
  rw [input6035_def, output6035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6027]
  dsimp only
  rw [child6034]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6027_skip, output6034_skip]
  kernel_rfl

theorem node6036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6036 value5 value1 value2 = (output6036, value3022, value1) := by
  rw [input6036_def, output6036_def]
  kernel_rfl

theorem node6037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6037 value3022 value1 value2 = (output6037, value3023, value1) := by
  rw [input6037_def, output6037_def]
  kernel_rfl

theorem node6038_cond_eq
    (child6036 : Flapjack.WordAlloc.removeDeadStructural input6036 value5 value1 value2 = (output6036, value3022, value1))
    (child6037 : Flapjack.WordAlloc.removeDeadStructural input6037 value3022 value1 value2 = (output6037, value3023, value1)) : Flapjack.WordAlloc.removeDeadStructural input6038 value5 value1 value2 = (output6038, value3023, value1) := by
  rw [input6038_def, output6038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6036]
  dsimp only
  rw [child6037]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6036_skip, output6037_skip]
  kernel_rfl

theorem node6039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6039 value3023 value1 value2 = (output6039, value3024, value1) := by
  rw [input6039_def, output6039_def]
  kernel_rfl

theorem node6040_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6040 value3024 value1 value2 = (output6040, value3024, value1) := by
  rw [input6040_def, output6040_def]
  kernel_rfl

theorem node6041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6041 value3024 value1 value2 = (output6041, value3025, value1) := by
  rw [input6041_def, output6041_def]
  kernel_rfl

theorem node6042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6042 value3025 value1 value2 = (output6042, value3026, value1) := by
  rw [input6042_def, output6042_def]
  kernel_rfl

theorem node6043_cond_eq
    (child6041 : Flapjack.WordAlloc.removeDeadStructural input6041 value3024 value1 value2 = (output6041, value3025, value1))
    (child6042 : Flapjack.WordAlloc.removeDeadStructural input6042 value3025 value1 value2 = (output6042, value3026, value1)) : Flapjack.WordAlloc.removeDeadStructural input6043 value3024 value1 value2 = (output6043, value3026, value1) := by
  rw [input6043_def, output6043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6041]
  dsimp only
  rw [child6042]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6041_skip, output6042_skip]
  kernel_rfl

theorem node6044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6044 value3026 value1 value2 = (output6044, value3027, value1) := by
  rw [input6044_def, output6044_def]
  kernel_rfl

theorem node6045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6045 value3027 value1 value2 = (output6045, value3028, value1) := by
  rw [input6045_def, output6045_def]
  kernel_rfl

theorem node6046_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6046 value3028 value1 value2 = (output6046, value3029, value1) := by
  rw [input6046_def, output6046_def]
  kernel_rfl

theorem node6047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6047 value3029 value1 value2 = (output6047, value5, value1) := by
  rw [input6047_def, output6047_def]
  kernel_rfl

theorem node6048_cond_eq
    (child6046 : Flapjack.WordAlloc.removeDeadStructural input6046 value3028 value1 value2 = (output6046, value3029, value1))
    (child6047 : Flapjack.WordAlloc.removeDeadStructural input6047 value3029 value1 value2 = (output6047, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6048 value3028 value1 value2 = (output6048, value5, value1) := by
  rw [input6048_def, output6048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6046]
  dsimp only
  rw [child6047]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6046_skip, output6047_skip]
  kernel_rfl

theorem node6049_cond_eq
    (child6045 : Flapjack.WordAlloc.removeDeadStructural input6045 value3027 value1 value2 = (output6045, value3028, value1))
    (child6048 : Flapjack.WordAlloc.removeDeadStructural input6048 value3028 value1 value2 = (output6048, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6049 value3027 value1 value2 = (output6049, value5, value1) := by
  rw [input6049_def, output6049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6045]
  dsimp only
  rw [child6048]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6045_skip, output6048_skip]
  kernel_rfl

theorem node6050_cond_eq
    (child6044 : Flapjack.WordAlloc.removeDeadStructural input6044 value3026 value1 value2 = (output6044, value3027, value1))
    (child6049 : Flapjack.WordAlloc.removeDeadStructural input6049 value3027 value1 value2 = (output6049, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6050 value3026 value1 value2 = (output6050, value5, value1) := by
  rw [input6050_def, output6050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6044]
  dsimp only
  rw [child6049]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6044_skip, output6049_skip]
  kernel_rfl

theorem node6051_cond_eq
    (child6043 : Flapjack.WordAlloc.removeDeadStructural input6043 value3024 value1 value2 = (output6043, value3026, value1))
    (child6050 : Flapjack.WordAlloc.removeDeadStructural input6050 value3026 value1 value2 = (output6050, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6051 value3024 value1 value2 = (output6051, value5, value1) := by
  rw [input6051_def, output6051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6043]
  dsimp only
  rw [child6050]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6043_skip, output6050_skip]
  kernel_rfl

theorem node6052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6052 value5 value1 value2 = (output6052, value3030, value1) := by
  rw [input6052_def, output6052_def]
  kernel_rfl

theorem node6053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6053 value3030 value1 value2 = (output6053, value3031, value1) := by
  rw [input6053_def, output6053_def]
  kernel_rfl

theorem node6054_cond_eq
    (child6052 : Flapjack.WordAlloc.removeDeadStructural input6052 value5 value1 value2 = (output6052, value3030, value1))
    (child6053 : Flapjack.WordAlloc.removeDeadStructural input6053 value3030 value1 value2 = (output6053, value3031, value1)) : Flapjack.WordAlloc.removeDeadStructural input6054 value5 value1 value2 = (output6054, value3031, value1) := by
  rw [input6054_def, output6054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6052]
  dsimp only
  rw [child6053]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6052_skip, output6053_skip]
  kernel_rfl

theorem node6055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6055 value3031 value1 value2 = (output6055, value3032, value1) := by
  rw [input6055_def, output6055_def]
  kernel_rfl

theorem node6056_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6056 value3032 value1 value2 = (output6056, value3032, value1) := by
  rw [input6056_def, output6056_def]
  kernel_rfl

theorem node6057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6057 value3032 value1 value2 = (output6057, value3033, value1) := by
  rw [input6057_def, output6057_def]
  kernel_rfl

theorem node6058_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6058 value3033 value1 value2 = (output6058, value3034, value1) := by
  rw [input6058_def, output6058_def]
  kernel_rfl

theorem node6059_cond_eq
    (child6057 : Flapjack.WordAlloc.removeDeadStructural input6057 value3032 value1 value2 = (output6057, value3033, value1))
    (child6058 : Flapjack.WordAlloc.removeDeadStructural input6058 value3033 value1 value2 = (output6058, value3034, value1)) : Flapjack.WordAlloc.removeDeadStructural input6059 value3032 value1 value2 = (output6059, value3034, value1) := by
  rw [input6059_def, output6059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6057]
  dsimp only
  rw [child6058]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6057_skip, output6058_skip]
  kernel_rfl

theorem node6060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6060 value3034 value1 value2 = (output6060, value3035, value1) := by
  rw [input6060_def, output6060_def]
  kernel_rfl

theorem node6061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6061 value3035 value1 value2 = (output6061, value3036, value1) := by
  rw [input6061_def, output6061_def]
  kernel_rfl

theorem node6062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6062 value3036 value1 value2 = (output6062, value3037, value1) := by
  rw [input6062_def, output6062_def]
  kernel_rfl

theorem node6063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6063 value3037 value1 value2 = (output6063, value5, value1) := by
  rw [input6063_def, output6063_def]
  kernel_rfl

theorem node6064_cond_eq
    (child6062 : Flapjack.WordAlloc.removeDeadStructural input6062 value3036 value1 value2 = (output6062, value3037, value1))
    (child6063 : Flapjack.WordAlloc.removeDeadStructural input6063 value3037 value1 value2 = (output6063, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6064 value3036 value1 value2 = (output6064, value5, value1) := by
  rw [input6064_def, output6064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6062]
  dsimp only
  rw [child6063]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6062_skip, output6063_skip]
  kernel_rfl

theorem node6065_cond_eq
    (child6061 : Flapjack.WordAlloc.removeDeadStructural input6061 value3035 value1 value2 = (output6061, value3036, value1))
    (child6064 : Flapjack.WordAlloc.removeDeadStructural input6064 value3036 value1 value2 = (output6064, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6065 value3035 value1 value2 = (output6065, value5, value1) := by
  rw [input6065_def, output6065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6061]
  dsimp only
  rw [child6064]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6061_skip, output6064_skip]
  kernel_rfl

theorem node6066_cond_eq
    (child6060 : Flapjack.WordAlloc.removeDeadStructural input6060 value3034 value1 value2 = (output6060, value3035, value1))
    (child6065 : Flapjack.WordAlloc.removeDeadStructural input6065 value3035 value1 value2 = (output6065, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6066 value3034 value1 value2 = (output6066, value5, value1) := by
  rw [input6066_def, output6066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6060]
  dsimp only
  rw [child6065]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6060_skip, output6065_skip]
  kernel_rfl

theorem node6067_cond_eq
    (child6059 : Flapjack.WordAlloc.removeDeadStructural input6059 value3032 value1 value2 = (output6059, value3034, value1))
    (child6066 : Flapjack.WordAlloc.removeDeadStructural input6066 value3034 value1 value2 = (output6066, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6067 value3032 value1 value2 = (output6067, value5, value1) := by
  rw [input6067_def, output6067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6059]
  dsimp only
  rw [child6066]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6059_skip, output6066_skip]
  kernel_rfl

theorem node6068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6068 value5 value1 value2 = (output6068, value3038, value1) := by
  rw [input6068_def, output6068_def]
  kernel_rfl

theorem node6069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6069 value3038 value1 value2 = (output6069, value3039, value1) := by
  rw [input6069_def, output6069_def]
  kernel_rfl

theorem node6070_cond_eq
    (child6068 : Flapjack.WordAlloc.removeDeadStructural input6068 value5 value1 value2 = (output6068, value3038, value1))
    (child6069 : Flapjack.WordAlloc.removeDeadStructural input6069 value3038 value1 value2 = (output6069, value3039, value1)) : Flapjack.WordAlloc.removeDeadStructural input6070 value5 value1 value2 = (output6070, value3039, value1) := by
  rw [input6070_def, output6070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6068]
  dsimp only
  rw [child6069]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6068_skip, output6069_skip]
  kernel_rfl

theorem node6071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6071 value3039 value1 value2 = (output6071, value3040, value1) := by
  rw [input6071_def, output6071_def]
  kernel_rfl

theorem node6072_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6072 value3040 value1 value2 = (output6072, value3040, value1) := by
  rw [input6072_def, output6072_def]
  kernel_rfl

theorem node6073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6073 value3040 value1 value2 = (output6073, value3041, value1) := by
  rw [input6073_def, output6073_def]
  kernel_rfl

theorem node6074_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6074 value3041 value1 value2 = (output6074, value3042, value1) := by
  rw [input6074_def, output6074_def]
  kernel_rfl

theorem node6075_cond_eq
    (child6073 : Flapjack.WordAlloc.removeDeadStructural input6073 value3040 value1 value2 = (output6073, value3041, value1))
    (child6074 : Flapjack.WordAlloc.removeDeadStructural input6074 value3041 value1 value2 = (output6074, value3042, value1)) : Flapjack.WordAlloc.removeDeadStructural input6075 value3040 value1 value2 = (output6075, value3042, value1) := by
  rw [input6075_def, output6075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6073]
  dsimp only
  rw [child6074]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6073_skip, output6074_skip]
  kernel_rfl

theorem node6076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6076 value3042 value1 value2 = (output6076, value3043, value1) := by
  rw [input6076_def, output6076_def]
  kernel_rfl

theorem node6077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6077 value3043 value1 value2 = (output6077, value3044, value1) := by
  rw [input6077_def, output6077_def]
  kernel_rfl

theorem node6078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6078 value3044 value1 value2 = (output6078, value3045, value1) := by
  rw [input6078_def, output6078_def]
  kernel_rfl

theorem node6079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6079 value3045 value1 value2 = (output6079, value5, value1) := by
  rw [input6079_def, output6079_def]
  kernel_rfl

theorem node6080_cond_eq
    (child6078 : Flapjack.WordAlloc.removeDeadStructural input6078 value3044 value1 value2 = (output6078, value3045, value1))
    (child6079 : Flapjack.WordAlloc.removeDeadStructural input6079 value3045 value1 value2 = (output6079, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6080 value3044 value1 value2 = (output6080, value5, value1) := by
  rw [input6080_def, output6080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6078]
  dsimp only
  rw [child6079]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6078_skip, output6079_skip]
  kernel_rfl

theorem node6081_cond_eq
    (child6077 : Flapjack.WordAlloc.removeDeadStructural input6077 value3043 value1 value2 = (output6077, value3044, value1))
    (child6080 : Flapjack.WordAlloc.removeDeadStructural input6080 value3044 value1 value2 = (output6080, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6081 value3043 value1 value2 = (output6081, value5, value1) := by
  rw [input6081_def, output6081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6077]
  dsimp only
  rw [child6080]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6077_skip, output6080_skip]
  kernel_rfl

theorem node6082_cond_eq
    (child6076 : Flapjack.WordAlloc.removeDeadStructural input6076 value3042 value1 value2 = (output6076, value3043, value1))
    (child6081 : Flapjack.WordAlloc.removeDeadStructural input6081 value3043 value1 value2 = (output6081, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6082 value3042 value1 value2 = (output6082, value5, value1) := by
  rw [input6082_def, output6082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6076]
  dsimp only
  rw [child6081]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6076_skip, output6081_skip]
  kernel_rfl

theorem node6083_cond_eq
    (child6075 : Flapjack.WordAlloc.removeDeadStructural input6075 value3040 value1 value2 = (output6075, value3042, value1))
    (child6082 : Flapjack.WordAlloc.removeDeadStructural input6082 value3042 value1 value2 = (output6082, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6083 value3040 value1 value2 = (output6083, value5, value1) := by
  rw [input6083_def, output6083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6075]
  dsimp only
  rw [child6082]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6075_skip, output6082_skip]
  kernel_rfl

theorem node6084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6084 value5 value1 value2 = (output6084, value3046, value1) := by
  rw [input6084_def, output6084_def]
  kernel_rfl

theorem node6085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6085 value3046 value1 value2 = (output6085, value3047, value1) := by
  rw [input6085_def, output6085_def]
  kernel_rfl

theorem node6086_cond_eq
    (child6084 : Flapjack.WordAlloc.removeDeadStructural input6084 value5 value1 value2 = (output6084, value3046, value1))
    (child6085 : Flapjack.WordAlloc.removeDeadStructural input6085 value3046 value1 value2 = (output6085, value3047, value1)) : Flapjack.WordAlloc.removeDeadStructural input6086 value5 value1 value2 = (output6086, value3047, value1) := by
  rw [input6086_def, output6086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6084]
  dsimp only
  rw [child6085]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6084_skip, output6085_skip]
  kernel_rfl

theorem node6087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6087 value3047 value1 value2 = (output6087, value3048, value1) := by
  rw [input6087_def, output6087_def]
  kernel_rfl

theorem node6088_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6088 value3048 value1 value2 = (output6088, value3048, value1) := by
  rw [input6088_def, output6088_def]
  kernel_rfl

theorem node6089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6089 value3048 value1 value2 = (output6089, value3049, value1) := by
  rw [input6089_def, output6089_def]
  kernel_rfl

theorem node6090_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6090 value3049 value1 value2 = (output6090, value3050, value1) := by
  rw [input6090_def, output6090_def]
  kernel_rfl

theorem node6091_cond_eq
    (child6089 : Flapjack.WordAlloc.removeDeadStructural input6089 value3048 value1 value2 = (output6089, value3049, value1))
    (child6090 : Flapjack.WordAlloc.removeDeadStructural input6090 value3049 value1 value2 = (output6090, value3050, value1)) : Flapjack.WordAlloc.removeDeadStructural input6091 value3048 value1 value2 = (output6091, value3050, value1) := by
  rw [input6091_def, output6091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6089]
  dsimp only
  rw [child6090]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6089_skip, output6090_skip]
  kernel_rfl

theorem node6092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6092 value3050 value1 value2 = (output6092, value3051, value1) := by
  rw [input6092_def, output6092_def]
  kernel_rfl

theorem node6093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6093 value3051 value1 value2 = (output6093, value3052, value1) := by
  rw [input6093_def, output6093_def]
  kernel_rfl

theorem node6094_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6094 value3052 value1 value2 = (output6094, value3053, value1) := by
  rw [input6094_def, output6094_def]
  kernel_rfl

theorem node6095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6095 value3053 value1 value2 = (output6095, value5, value1) := by
  rw [input6095_def, output6095_def]
  kernel_rfl

theorem node6096_cond_eq
    (child6094 : Flapjack.WordAlloc.removeDeadStructural input6094 value3052 value1 value2 = (output6094, value3053, value1))
    (child6095 : Flapjack.WordAlloc.removeDeadStructural input6095 value3053 value1 value2 = (output6095, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6096 value3052 value1 value2 = (output6096, value5, value1) := by
  rw [input6096_def, output6096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6094]
  dsimp only
  rw [child6095]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6094_skip, output6095_skip]
  kernel_rfl

theorem node6097_cond_eq
    (child6093 : Flapjack.WordAlloc.removeDeadStructural input6093 value3051 value1 value2 = (output6093, value3052, value1))
    (child6096 : Flapjack.WordAlloc.removeDeadStructural input6096 value3052 value1 value2 = (output6096, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6097 value3051 value1 value2 = (output6097, value5, value1) := by
  rw [input6097_def, output6097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6093]
  dsimp only
  rw [child6096]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6093_skip, output6096_skip]
  kernel_rfl

theorem node6098_cond_eq
    (child6092 : Flapjack.WordAlloc.removeDeadStructural input6092 value3050 value1 value2 = (output6092, value3051, value1))
    (child6097 : Flapjack.WordAlloc.removeDeadStructural input6097 value3051 value1 value2 = (output6097, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6098 value3050 value1 value2 = (output6098, value5, value1) := by
  rw [input6098_def, output6098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6092]
  dsimp only
  rw [child6097]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6092_skip, output6097_skip]
  kernel_rfl

theorem node6099_cond_eq
    (child6091 : Flapjack.WordAlloc.removeDeadStructural input6091 value3048 value1 value2 = (output6091, value3050, value1))
    (child6098 : Flapjack.WordAlloc.removeDeadStructural input6098 value3050 value1 value2 = (output6098, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6099 value3048 value1 value2 = (output6099, value5, value1) := by
  rw [input6099_def, output6099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6091]
  dsimp only
  rw [child6098]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6091_skip, output6098_skip]
  kernel_rfl

theorem node6100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6100 value5 value1 value2 = (output6100, value3054, value1) := by
  rw [input6100_def, output6100_def]
  kernel_rfl

theorem node6101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6101 value3054 value1 value2 = (output6101, value3055, value1) := by
  rw [input6101_def, output6101_def]
  kernel_rfl

theorem node6102_cond_eq
    (child6100 : Flapjack.WordAlloc.removeDeadStructural input6100 value5 value1 value2 = (output6100, value3054, value1))
    (child6101 : Flapjack.WordAlloc.removeDeadStructural input6101 value3054 value1 value2 = (output6101, value3055, value1)) : Flapjack.WordAlloc.removeDeadStructural input6102 value5 value1 value2 = (output6102, value3055, value1) := by
  rw [input6102_def, output6102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6100]
  dsimp only
  rw [child6101]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6100_skip, output6101_skip]
  kernel_rfl

theorem node6103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6103 value3055 value1 value2 = (output6103, value3056, value1) := by
  rw [input6103_def, output6103_def]
  kernel_rfl

theorem node6104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6104 value3056 value1 value2 = (output6104, value3056, value1) := by
  rw [input6104_def, output6104_def]
  kernel_rfl

theorem node6105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6105 value3056 value1 value2 = (output6105, value3057, value1) := by
  rw [input6105_def, output6105_def]
  kernel_rfl

theorem node6106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6106 value3057 value1 value2 = (output6106, value3058, value1) := by
  rw [input6106_def, output6106_def]
  kernel_rfl

theorem node6107_cond_eq
    (child6105 : Flapjack.WordAlloc.removeDeadStructural input6105 value3056 value1 value2 = (output6105, value3057, value1))
    (child6106 : Flapjack.WordAlloc.removeDeadStructural input6106 value3057 value1 value2 = (output6106, value3058, value1)) : Flapjack.WordAlloc.removeDeadStructural input6107 value3056 value1 value2 = (output6107, value3058, value1) := by
  rw [input6107_def, output6107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6105]
  dsimp only
  rw [child6106]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6105_skip, output6106_skip]
  kernel_rfl

theorem node6108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6108 value3058 value1 value2 = (output6108, value3059, value1) := by
  rw [input6108_def, output6108_def]
  kernel_rfl

theorem node6109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6109 value3059 value1 value2 = (output6109, value3060, value1) := by
  rw [input6109_def, output6109_def]
  kernel_rfl

theorem node6110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6110 value3060 value1 value2 = (output6110, value3061, value1) := by
  rw [input6110_def, output6110_def]
  kernel_rfl

theorem node6111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6111 value3061 value1 value2 = (output6111, value5, value1) := by
  rw [input6111_def, output6111_def]
  kernel_rfl

theorem node6112_cond_eq
    (child6110 : Flapjack.WordAlloc.removeDeadStructural input6110 value3060 value1 value2 = (output6110, value3061, value1))
    (child6111 : Flapjack.WordAlloc.removeDeadStructural input6111 value3061 value1 value2 = (output6111, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6112 value3060 value1 value2 = (output6112, value5, value1) := by
  rw [input6112_def, output6112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6110]
  dsimp only
  rw [child6111]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6110_skip, output6111_skip]
  kernel_rfl

theorem node6113_cond_eq
    (child6109 : Flapjack.WordAlloc.removeDeadStructural input6109 value3059 value1 value2 = (output6109, value3060, value1))
    (child6112 : Flapjack.WordAlloc.removeDeadStructural input6112 value3060 value1 value2 = (output6112, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6113 value3059 value1 value2 = (output6113, value5, value1) := by
  rw [input6113_def, output6113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6109]
  dsimp only
  rw [child6112]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6109_skip, output6112_skip]
  kernel_rfl

theorem node6114_cond_eq
    (child6108 : Flapjack.WordAlloc.removeDeadStructural input6108 value3058 value1 value2 = (output6108, value3059, value1))
    (child6113 : Flapjack.WordAlloc.removeDeadStructural input6113 value3059 value1 value2 = (output6113, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6114 value3058 value1 value2 = (output6114, value5, value1) := by
  rw [input6114_def, output6114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6108]
  dsimp only
  rw [child6113]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6108_skip, output6113_skip]
  kernel_rfl

theorem node6115_cond_eq
    (child6107 : Flapjack.WordAlloc.removeDeadStructural input6107 value3056 value1 value2 = (output6107, value3058, value1))
    (child6114 : Flapjack.WordAlloc.removeDeadStructural input6114 value3058 value1 value2 = (output6114, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6115 value3056 value1 value2 = (output6115, value5, value1) := by
  rw [input6115_def, output6115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6107]
  dsimp only
  rw [child6114]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6107_skip, output6114_skip]
  kernel_rfl

theorem node6116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6116 value5 value1 value2 = (output6116, value3062, value1) := by
  rw [input6116_def, output6116_def]
  kernel_rfl

theorem node6117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6117 value3062 value1 value2 = (output6117, value3063, value1) := by
  rw [input6117_def, output6117_def]
  kernel_rfl

theorem node6118_cond_eq
    (child6116 : Flapjack.WordAlloc.removeDeadStructural input6116 value5 value1 value2 = (output6116, value3062, value1))
    (child6117 : Flapjack.WordAlloc.removeDeadStructural input6117 value3062 value1 value2 = (output6117, value3063, value1)) : Flapjack.WordAlloc.removeDeadStructural input6118 value5 value1 value2 = (output6118, value3063, value1) := by
  rw [input6118_def, output6118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6116]
  dsimp only
  rw [child6117]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6116_skip, output6117_skip]
  kernel_rfl

theorem node6119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6119 value3063 value1 value2 = (output6119, value3064, value1) := by
  rw [input6119_def, output6119_def]
  kernel_rfl

theorem node6120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6120 value3064 value1 value2 = (output6120, value3064, value1) := by
  rw [input6120_def, output6120_def]
  kernel_rfl

theorem node6121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6121 value3064 value1 value2 = (output6121, value3065, value1) := by
  rw [input6121_def, output6121_def]
  kernel_rfl

theorem node6122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6122 value3065 value1 value2 = (output6122, value3066, value1) := by
  rw [input6122_def, output6122_def]
  kernel_rfl

theorem node6123_cond_eq
    (child6121 : Flapjack.WordAlloc.removeDeadStructural input6121 value3064 value1 value2 = (output6121, value3065, value1))
    (child6122 : Flapjack.WordAlloc.removeDeadStructural input6122 value3065 value1 value2 = (output6122, value3066, value1)) : Flapjack.WordAlloc.removeDeadStructural input6123 value3064 value1 value2 = (output6123, value3066, value1) := by
  rw [input6123_def, output6123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6121]
  dsimp only
  rw [child6122]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6121_skip, output6122_skip]
  kernel_rfl

theorem node6124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6124 value3066 value1 value2 = (output6124, value3067, value1) := by
  rw [input6124_def, output6124_def]
  kernel_rfl

theorem node6125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6125 value3067 value1 value2 = (output6125, value3068, value1) := by
  rw [input6125_def, output6125_def]
  kernel_rfl

theorem node6126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6126 value3068 value1 value2 = (output6126, value3069, value1) := by
  rw [input6126_def, output6126_def]
  kernel_rfl

theorem node6127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6127 value3069 value1 value2 = (output6127, value5, value1) := by
  rw [input6127_def, output6127_def]
  kernel_rfl

theorem node6128_cond_eq
    (child6126 : Flapjack.WordAlloc.removeDeadStructural input6126 value3068 value1 value2 = (output6126, value3069, value1))
    (child6127 : Flapjack.WordAlloc.removeDeadStructural input6127 value3069 value1 value2 = (output6127, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6128 value3068 value1 value2 = (output6128, value5, value1) := by
  rw [input6128_def, output6128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6126]
  dsimp only
  rw [child6127]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6126_skip, output6127_skip]
  kernel_rfl

theorem node6129_cond_eq
    (child6125 : Flapjack.WordAlloc.removeDeadStructural input6125 value3067 value1 value2 = (output6125, value3068, value1))
    (child6128 : Flapjack.WordAlloc.removeDeadStructural input6128 value3068 value1 value2 = (output6128, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6129 value3067 value1 value2 = (output6129, value5, value1) := by
  rw [input6129_def, output6129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6125]
  dsimp only
  rw [child6128]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6125_skip, output6128_skip]
  kernel_rfl

theorem node6130_cond_eq
    (child6124 : Flapjack.WordAlloc.removeDeadStructural input6124 value3066 value1 value2 = (output6124, value3067, value1))
    (child6129 : Flapjack.WordAlloc.removeDeadStructural input6129 value3067 value1 value2 = (output6129, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6130 value3066 value1 value2 = (output6130, value5, value1) := by
  rw [input6130_def, output6130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6124]
  dsimp only
  rw [child6129]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6124_skip, output6129_skip]
  kernel_rfl

theorem node6131_cond_eq
    (child6123 : Flapjack.WordAlloc.removeDeadStructural input6123 value3064 value1 value2 = (output6123, value3066, value1))
    (child6130 : Flapjack.WordAlloc.removeDeadStructural input6130 value3066 value1 value2 = (output6130, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6131 value3064 value1 value2 = (output6131, value5, value1) := by
  rw [input6131_def, output6131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6123]
  dsimp only
  rw [child6130]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6123_skip, output6130_skip]
  kernel_rfl

theorem node6132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6132 value5 value1 value2 = (output6132, value3070, value1) := by
  rw [input6132_def, output6132_def]
  kernel_rfl

theorem node6133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6133 value3070 value1 value2 = (output6133, value3071, value1) := by
  rw [input6133_def, output6133_def]
  kernel_rfl

theorem node6134_cond_eq
    (child6132 : Flapjack.WordAlloc.removeDeadStructural input6132 value5 value1 value2 = (output6132, value3070, value1))
    (child6133 : Flapjack.WordAlloc.removeDeadStructural input6133 value3070 value1 value2 = (output6133, value3071, value1)) : Flapjack.WordAlloc.removeDeadStructural input6134 value5 value1 value2 = (output6134, value3071, value1) := by
  rw [input6134_def, output6134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6132]
  dsimp only
  rw [child6133]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6132_skip, output6133_skip]
  kernel_rfl

theorem node6135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6135 value3071 value1 value2 = (output6135, value3072, value1) := by
  rw [input6135_def, output6135_def]
  kernel_rfl

theorem node6136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6136 value3072 value1 value2 = (output6136, value3072, value1) := by
  rw [input6136_def, output6136_def]
  kernel_rfl

theorem node6137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6137 value3072 value1 value2 = (output6137, value3073, value1) := by
  rw [input6137_def, output6137_def]
  kernel_rfl

theorem node6138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6138 value3073 value1 value2 = (output6138, value3074, value1) := by
  rw [input6138_def, output6138_def]
  kernel_rfl

theorem node6139_cond_eq
    (child6137 : Flapjack.WordAlloc.removeDeadStructural input6137 value3072 value1 value2 = (output6137, value3073, value1))
    (child6138 : Flapjack.WordAlloc.removeDeadStructural input6138 value3073 value1 value2 = (output6138, value3074, value1)) : Flapjack.WordAlloc.removeDeadStructural input6139 value3072 value1 value2 = (output6139, value3074, value1) := by
  rw [input6139_def, output6139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6137]
  dsimp only
  rw [child6138]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6137_skip, output6138_skip]
  kernel_rfl

theorem node6140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6140 value3074 value1 value2 = (output6140, value3075, value1) := by
  rw [input6140_def, output6140_def]
  kernel_rfl

theorem node6141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6141 value3075 value1 value2 = (output6141, value3076, value1) := by
  rw [input6141_def, output6141_def]
  kernel_rfl

theorem node6142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6142 value3076 value1 value2 = (output6142, value3077, value1) := by
  rw [input6142_def, output6142_def]
  kernel_rfl

theorem node6143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6143 value3077 value1 value2 = (output6143, value5, value1) := by
  rw [input6143_def, output6143_def]
  kernel_rfl

#print axioms node6143_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
