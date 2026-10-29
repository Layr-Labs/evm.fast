import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk027
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node6912_cond_eq
    (child6910 : Flapjack.WordAlloc.removeDeadStructural input6910 value3460 value1 value2 = (output6910, value3461, value1))
    (child6911 : Flapjack.WordAlloc.removeDeadStructural input6911 value3461 value1 value2 = (output6911, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6912 value3460 value1 value2 = (output6912, value5, value1) := by
  rw [input6912_def, output6912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6910]
  dsimp only
  rw [child6911]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6910_skip, output6911_skip]
  kernel_rfl

theorem node6913_cond_eq
    (child6909 : Flapjack.WordAlloc.removeDeadStructural input6909 value3459 value1 value2 = (output6909, value3460, value1))
    (child6912 : Flapjack.WordAlloc.removeDeadStructural input6912 value3460 value1 value2 = (output6912, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6913 value3459 value1 value2 = (output6913, value5, value1) := by
  rw [input6913_def, output6913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6909]
  dsimp only
  rw [child6912]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6909_skip, output6912_skip]
  kernel_rfl

theorem node6914_cond_eq
    (child6908 : Flapjack.WordAlloc.removeDeadStructural input6908 value3458 value1 value2 = (output6908, value3459, value1))
    (child6913 : Flapjack.WordAlloc.removeDeadStructural input6913 value3459 value1 value2 = (output6913, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6914 value3458 value1 value2 = (output6914, value5, value1) := by
  rw [input6914_def, output6914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6908]
  dsimp only
  rw [child6913]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6908_skip, output6913_skip]
  kernel_rfl

theorem node6915_cond_eq
    (child6907 : Flapjack.WordAlloc.removeDeadStructural input6907 value3456 value1 value2 = (output6907, value3458, value1))
    (child6914 : Flapjack.WordAlloc.removeDeadStructural input6914 value3458 value1 value2 = (output6914, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6915 value3456 value1 value2 = (output6915, value5, value1) := by
  rw [input6915_def, output6915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6907]
  dsimp only
  rw [child6914]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6907_skip, output6914_skip]
  kernel_rfl

theorem node6916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6916 value5 value1 value2 = (output6916, value3462, value1) := by
  rw [input6916_def, output6916_def]
  kernel_rfl

theorem node6917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6917 value3462 value1 value2 = (output6917, value3463, value1) := by
  rw [input6917_def, output6917_def]
  kernel_rfl

theorem node6918_cond_eq
    (child6916 : Flapjack.WordAlloc.removeDeadStructural input6916 value5 value1 value2 = (output6916, value3462, value1))
    (child6917 : Flapjack.WordAlloc.removeDeadStructural input6917 value3462 value1 value2 = (output6917, value3463, value1)) : Flapjack.WordAlloc.removeDeadStructural input6918 value5 value1 value2 = (output6918, value3463, value1) := by
  rw [input6918_def, output6918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6916]
  dsimp only
  rw [child6917]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6916_skip, output6917_skip]
  kernel_rfl

theorem node6919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6919 value3463 value1 value2 = (output6919, value3464, value1) := by
  rw [input6919_def, output6919_def]
  kernel_rfl

theorem node6920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6920 value3464 value1 value2 = (output6920, value3464, value1) := by
  rw [input6920_def, output6920_def]
  kernel_rfl

theorem node6921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6921 value3464 value1 value2 = (output6921, value3465, value1) := by
  rw [input6921_def, output6921_def]
  kernel_rfl

theorem node6922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6922 value3465 value1 value2 = (output6922, value3466, value1) := by
  rw [input6922_def, output6922_def]
  kernel_rfl

theorem node6923_cond_eq
    (child6921 : Flapjack.WordAlloc.removeDeadStructural input6921 value3464 value1 value2 = (output6921, value3465, value1))
    (child6922 : Flapjack.WordAlloc.removeDeadStructural input6922 value3465 value1 value2 = (output6922, value3466, value1)) : Flapjack.WordAlloc.removeDeadStructural input6923 value3464 value1 value2 = (output6923, value3466, value1) := by
  rw [input6923_def, output6923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6921]
  dsimp only
  rw [child6922]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6921_skip, output6922_skip]
  kernel_rfl

theorem node6924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6924 value3466 value1 value2 = (output6924, value3467, value1) := by
  rw [input6924_def, output6924_def]
  kernel_rfl

theorem node6925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6925 value3467 value1 value2 = (output6925, value3468, value1) := by
  rw [input6925_def, output6925_def]
  kernel_rfl

theorem node6926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6926 value3468 value1 value2 = (output6926, value3469, value1) := by
  rw [input6926_def, output6926_def]
  kernel_rfl

theorem node6927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6927 value3469 value1 value2 = (output6927, value5, value1) := by
  rw [input6927_def, output6927_def]
  kernel_rfl

theorem node6928_cond_eq
    (child6926 : Flapjack.WordAlloc.removeDeadStructural input6926 value3468 value1 value2 = (output6926, value3469, value1))
    (child6927 : Flapjack.WordAlloc.removeDeadStructural input6927 value3469 value1 value2 = (output6927, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6928 value3468 value1 value2 = (output6928, value5, value1) := by
  rw [input6928_def, output6928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6926]
  dsimp only
  rw [child6927]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6926_skip, output6927_skip]
  kernel_rfl

theorem node6929_cond_eq
    (child6925 : Flapjack.WordAlloc.removeDeadStructural input6925 value3467 value1 value2 = (output6925, value3468, value1))
    (child6928 : Flapjack.WordAlloc.removeDeadStructural input6928 value3468 value1 value2 = (output6928, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6929 value3467 value1 value2 = (output6929, value5, value1) := by
  rw [input6929_def, output6929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6925]
  dsimp only
  rw [child6928]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6925_skip, output6928_skip]
  kernel_rfl

theorem node6930_cond_eq
    (child6924 : Flapjack.WordAlloc.removeDeadStructural input6924 value3466 value1 value2 = (output6924, value3467, value1))
    (child6929 : Flapjack.WordAlloc.removeDeadStructural input6929 value3467 value1 value2 = (output6929, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6930 value3466 value1 value2 = (output6930, value5, value1) := by
  rw [input6930_def, output6930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6924]
  dsimp only
  rw [child6929]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6924_skip, output6929_skip]
  kernel_rfl

theorem node6931_cond_eq
    (child6923 : Flapjack.WordAlloc.removeDeadStructural input6923 value3464 value1 value2 = (output6923, value3466, value1))
    (child6930 : Flapjack.WordAlloc.removeDeadStructural input6930 value3466 value1 value2 = (output6930, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6931 value3464 value1 value2 = (output6931, value5, value1) := by
  rw [input6931_def, output6931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6923]
  dsimp only
  rw [child6930]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6923_skip, output6930_skip]
  kernel_rfl

theorem node6932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6932 value5 value1 value2 = (output6932, value3470, value1) := by
  rw [input6932_def, output6932_def]
  kernel_rfl

theorem node6933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6933 value3470 value1 value2 = (output6933, value3471, value1) := by
  rw [input6933_def, output6933_def]
  kernel_rfl

theorem node6934_cond_eq
    (child6932 : Flapjack.WordAlloc.removeDeadStructural input6932 value5 value1 value2 = (output6932, value3470, value1))
    (child6933 : Flapjack.WordAlloc.removeDeadStructural input6933 value3470 value1 value2 = (output6933, value3471, value1)) : Flapjack.WordAlloc.removeDeadStructural input6934 value5 value1 value2 = (output6934, value3471, value1) := by
  rw [input6934_def, output6934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6932]
  dsimp only
  rw [child6933]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6932_skip, output6933_skip]
  kernel_rfl

theorem node6935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6935 value3471 value1 value2 = (output6935, value3472, value1) := by
  rw [input6935_def, output6935_def]
  kernel_rfl

theorem node6936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6936 value3472 value1 value2 = (output6936, value3472, value1) := by
  rw [input6936_def, output6936_def]
  kernel_rfl

theorem node6937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6937 value3472 value1 value2 = (output6937, value3473, value1) := by
  rw [input6937_def, output6937_def]
  kernel_rfl

theorem node6938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6938 value3473 value1 value2 = (output6938, value3474, value1) := by
  rw [input6938_def, output6938_def]
  kernel_rfl

theorem node6939_cond_eq
    (child6937 : Flapjack.WordAlloc.removeDeadStructural input6937 value3472 value1 value2 = (output6937, value3473, value1))
    (child6938 : Flapjack.WordAlloc.removeDeadStructural input6938 value3473 value1 value2 = (output6938, value3474, value1)) : Flapjack.WordAlloc.removeDeadStructural input6939 value3472 value1 value2 = (output6939, value3474, value1) := by
  rw [input6939_def, output6939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6937]
  dsimp only
  rw [child6938]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6937_skip, output6938_skip]
  kernel_rfl

theorem node6940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6940 value3474 value1 value2 = (output6940, value3475, value1) := by
  rw [input6940_def, output6940_def]
  kernel_rfl

theorem node6941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6941 value3475 value1 value2 = (output6941, value3476, value1) := by
  rw [input6941_def, output6941_def]
  kernel_rfl

theorem node6942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6942 value3476 value1 value2 = (output6942, value3477, value1) := by
  rw [input6942_def, output6942_def]
  kernel_rfl

theorem node6943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6943 value3477 value1 value2 = (output6943, value5, value1) := by
  rw [input6943_def, output6943_def]
  kernel_rfl

theorem node6944_cond_eq
    (child6942 : Flapjack.WordAlloc.removeDeadStructural input6942 value3476 value1 value2 = (output6942, value3477, value1))
    (child6943 : Flapjack.WordAlloc.removeDeadStructural input6943 value3477 value1 value2 = (output6943, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6944 value3476 value1 value2 = (output6944, value5, value1) := by
  rw [input6944_def, output6944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6942]
  dsimp only
  rw [child6943]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6942_skip, output6943_skip]
  kernel_rfl

theorem node6945_cond_eq
    (child6941 : Flapjack.WordAlloc.removeDeadStructural input6941 value3475 value1 value2 = (output6941, value3476, value1))
    (child6944 : Flapjack.WordAlloc.removeDeadStructural input6944 value3476 value1 value2 = (output6944, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6945 value3475 value1 value2 = (output6945, value5, value1) := by
  rw [input6945_def, output6945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6941]
  dsimp only
  rw [child6944]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6941_skip, output6944_skip]
  kernel_rfl

theorem node6946_cond_eq
    (child6940 : Flapjack.WordAlloc.removeDeadStructural input6940 value3474 value1 value2 = (output6940, value3475, value1))
    (child6945 : Flapjack.WordAlloc.removeDeadStructural input6945 value3475 value1 value2 = (output6945, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6946 value3474 value1 value2 = (output6946, value5, value1) := by
  rw [input6946_def, output6946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6940]
  dsimp only
  rw [child6945]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6940_skip, output6945_skip]
  kernel_rfl

theorem node6947_cond_eq
    (child6939 : Flapjack.WordAlloc.removeDeadStructural input6939 value3472 value1 value2 = (output6939, value3474, value1))
    (child6946 : Flapjack.WordAlloc.removeDeadStructural input6946 value3474 value1 value2 = (output6946, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6947 value3472 value1 value2 = (output6947, value5, value1) := by
  rw [input6947_def, output6947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6939]
  dsimp only
  rw [child6946]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6939_skip, output6946_skip]
  kernel_rfl

theorem node6948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6948 value5 value1 value2 = (output6948, value3478, value1) := by
  rw [input6948_def, output6948_def]
  kernel_rfl

theorem node6949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6949 value3478 value1 value2 = (output6949, value3479, value1) := by
  rw [input6949_def, output6949_def]
  kernel_rfl

theorem node6950_cond_eq
    (child6948 : Flapjack.WordAlloc.removeDeadStructural input6948 value5 value1 value2 = (output6948, value3478, value1))
    (child6949 : Flapjack.WordAlloc.removeDeadStructural input6949 value3478 value1 value2 = (output6949, value3479, value1)) : Flapjack.WordAlloc.removeDeadStructural input6950 value5 value1 value2 = (output6950, value3479, value1) := by
  rw [input6950_def, output6950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6948]
  dsimp only
  rw [child6949]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6948_skip, output6949_skip]
  kernel_rfl

theorem node6951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6951 value3479 value1 value2 = (output6951, value3480, value1) := by
  rw [input6951_def, output6951_def]
  kernel_rfl

theorem node6952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6952 value3480 value1 value2 = (output6952, value3480, value1) := by
  rw [input6952_def, output6952_def]
  kernel_rfl

theorem node6953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6953 value3480 value1 value2 = (output6953, value3481, value1) := by
  rw [input6953_def, output6953_def]
  kernel_rfl

theorem node6954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6954 value3481 value1 value2 = (output6954, value3482, value1) := by
  rw [input6954_def, output6954_def]
  kernel_rfl

theorem node6955_cond_eq
    (child6953 : Flapjack.WordAlloc.removeDeadStructural input6953 value3480 value1 value2 = (output6953, value3481, value1))
    (child6954 : Flapjack.WordAlloc.removeDeadStructural input6954 value3481 value1 value2 = (output6954, value3482, value1)) : Flapjack.WordAlloc.removeDeadStructural input6955 value3480 value1 value2 = (output6955, value3482, value1) := by
  rw [input6955_def, output6955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6953]
  dsimp only
  rw [child6954]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6953_skip, output6954_skip]
  kernel_rfl

theorem node6956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6956 value3482 value1 value2 = (output6956, value3483, value1) := by
  rw [input6956_def, output6956_def]
  kernel_rfl

theorem node6957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6957 value3483 value1 value2 = (output6957, value3484, value1) := by
  rw [input6957_def, output6957_def]
  kernel_rfl

theorem node6958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6958 value3484 value1 value2 = (output6958, value3485, value1) := by
  rw [input6958_def, output6958_def]
  kernel_rfl

theorem node6959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6959 value3485 value1 value2 = (output6959, value5, value1) := by
  rw [input6959_def, output6959_def]
  kernel_rfl

theorem node6960_cond_eq
    (child6958 : Flapjack.WordAlloc.removeDeadStructural input6958 value3484 value1 value2 = (output6958, value3485, value1))
    (child6959 : Flapjack.WordAlloc.removeDeadStructural input6959 value3485 value1 value2 = (output6959, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6960 value3484 value1 value2 = (output6960, value5, value1) := by
  rw [input6960_def, output6960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6958]
  dsimp only
  rw [child6959]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6958_skip, output6959_skip]
  kernel_rfl

theorem node6961_cond_eq
    (child6957 : Flapjack.WordAlloc.removeDeadStructural input6957 value3483 value1 value2 = (output6957, value3484, value1))
    (child6960 : Flapjack.WordAlloc.removeDeadStructural input6960 value3484 value1 value2 = (output6960, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6961 value3483 value1 value2 = (output6961, value5, value1) := by
  rw [input6961_def, output6961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6957]
  dsimp only
  rw [child6960]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6957_skip, output6960_skip]
  kernel_rfl

theorem node6962_cond_eq
    (child6956 : Flapjack.WordAlloc.removeDeadStructural input6956 value3482 value1 value2 = (output6956, value3483, value1))
    (child6961 : Flapjack.WordAlloc.removeDeadStructural input6961 value3483 value1 value2 = (output6961, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6962 value3482 value1 value2 = (output6962, value5, value1) := by
  rw [input6962_def, output6962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6956]
  dsimp only
  rw [child6961]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6956_skip, output6961_skip]
  kernel_rfl

theorem node6963_cond_eq
    (child6955 : Flapjack.WordAlloc.removeDeadStructural input6955 value3480 value1 value2 = (output6955, value3482, value1))
    (child6962 : Flapjack.WordAlloc.removeDeadStructural input6962 value3482 value1 value2 = (output6962, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6963 value3480 value1 value2 = (output6963, value5, value1) := by
  rw [input6963_def, output6963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6955]
  dsimp only
  rw [child6962]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6955_skip, output6962_skip]
  kernel_rfl

theorem node6964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6964 value5 value1 value2 = (output6964, value3486, value1) := by
  rw [input6964_def, output6964_def]
  kernel_rfl

theorem node6965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6965 value3486 value1 value2 = (output6965, value3487, value1) := by
  rw [input6965_def, output6965_def]
  kernel_rfl

theorem node6966_cond_eq
    (child6964 : Flapjack.WordAlloc.removeDeadStructural input6964 value5 value1 value2 = (output6964, value3486, value1))
    (child6965 : Flapjack.WordAlloc.removeDeadStructural input6965 value3486 value1 value2 = (output6965, value3487, value1)) : Flapjack.WordAlloc.removeDeadStructural input6966 value5 value1 value2 = (output6966, value3487, value1) := by
  rw [input6966_def, output6966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6964]
  dsimp only
  rw [child6965]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6964_skip, output6965_skip]
  kernel_rfl

theorem node6967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6967 value3487 value1 value2 = (output6967, value3488, value1) := by
  rw [input6967_def, output6967_def]
  kernel_rfl

theorem node6968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6968 value3488 value1 value2 = (output6968, value3488, value1) := by
  rw [input6968_def, output6968_def]
  kernel_rfl

theorem node6969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6969 value3488 value1 value2 = (output6969, value3489, value1) := by
  rw [input6969_def, output6969_def]
  kernel_rfl

theorem node6970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6970 value3489 value1 value2 = (output6970, value3490, value1) := by
  rw [input6970_def, output6970_def]
  kernel_rfl

theorem node6971_cond_eq
    (child6969 : Flapjack.WordAlloc.removeDeadStructural input6969 value3488 value1 value2 = (output6969, value3489, value1))
    (child6970 : Flapjack.WordAlloc.removeDeadStructural input6970 value3489 value1 value2 = (output6970, value3490, value1)) : Flapjack.WordAlloc.removeDeadStructural input6971 value3488 value1 value2 = (output6971, value3490, value1) := by
  rw [input6971_def, output6971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6969]
  dsimp only
  rw [child6970]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6969_skip, output6970_skip]
  kernel_rfl

theorem node6972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6972 value3490 value1 value2 = (output6972, value3491, value1) := by
  rw [input6972_def, output6972_def]
  kernel_rfl

theorem node6973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6973 value3491 value1 value2 = (output6973, value3492, value1) := by
  rw [input6973_def, output6973_def]
  kernel_rfl

theorem node6974_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6974 value3492 value1 value2 = (output6974, value3493, value1) := by
  rw [input6974_def, output6974_def]
  kernel_rfl

theorem node6975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6975 value3493 value1 value2 = (output6975, value5, value1) := by
  rw [input6975_def, output6975_def]
  kernel_rfl

theorem node6976_cond_eq
    (child6974 : Flapjack.WordAlloc.removeDeadStructural input6974 value3492 value1 value2 = (output6974, value3493, value1))
    (child6975 : Flapjack.WordAlloc.removeDeadStructural input6975 value3493 value1 value2 = (output6975, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6976 value3492 value1 value2 = (output6976, value5, value1) := by
  rw [input6976_def, output6976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6974]
  dsimp only
  rw [child6975]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6974_skip, output6975_skip]
  kernel_rfl

theorem node6977_cond_eq
    (child6973 : Flapjack.WordAlloc.removeDeadStructural input6973 value3491 value1 value2 = (output6973, value3492, value1))
    (child6976 : Flapjack.WordAlloc.removeDeadStructural input6976 value3492 value1 value2 = (output6976, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6977 value3491 value1 value2 = (output6977, value5, value1) := by
  rw [input6977_def, output6977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6973]
  dsimp only
  rw [child6976]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6973_skip, output6976_skip]
  kernel_rfl

theorem node6978_cond_eq
    (child6972 : Flapjack.WordAlloc.removeDeadStructural input6972 value3490 value1 value2 = (output6972, value3491, value1))
    (child6977 : Flapjack.WordAlloc.removeDeadStructural input6977 value3491 value1 value2 = (output6977, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6978 value3490 value1 value2 = (output6978, value5, value1) := by
  rw [input6978_def, output6978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6972]
  dsimp only
  rw [child6977]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6972_skip, output6977_skip]
  kernel_rfl

theorem node6979_cond_eq
    (child6971 : Flapjack.WordAlloc.removeDeadStructural input6971 value3488 value1 value2 = (output6971, value3490, value1))
    (child6978 : Flapjack.WordAlloc.removeDeadStructural input6978 value3490 value1 value2 = (output6978, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6979 value3488 value1 value2 = (output6979, value5, value1) := by
  rw [input6979_def, output6979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6971]
  dsimp only
  rw [child6978]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6971_skip, output6978_skip]
  kernel_rfl

theorem node6980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6980 value5 value1 value2 = (output6980, value3494, value1) := by
  rw [input6980_def, output6980_def]
  kernel_rfl

theorem node6981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6981 value3494 value1 value2 = (output6981, value3495, value1) := by
  rw [input6981_def, output6981_def]
  kernel_rfl

theorem node6982_cond_eq
    (child6980 : Flapjack.WordAlloc.removeDeadStructural input6980 value5 value1 value2 = (output6980, value3494, value1))
    (child6981 : Flapjack.WordAlloc.removeDeadStructural input6981 value3494 value1 value2 = (output6981, value3495, value1)) : Flapjack.WordAlloc.removeDeadStructural input6982 value5 value1 value2 = (output6982, value3495, value1) := by
  rw [input6982_def, output6982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6980]
  dsimp only
  rw [child6981]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6980_skip, output6981_skip]
  kernel_rfl

theorem node6983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6983 value3495 value1 value2 = (output6983, value3496, value1) := by
  rw [input6983_def, output6983_def]
  kernel_rfl

theorem node6984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6984 value3496 value1 value2 = (output6984, value3496, value1) := by
  rw [input6984_def, output6984_def]
  kernel_rfl

theorem node6985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6985 value3496 value1 value2 = (output6985, value3497, value1) := by
  rw [input6985_def, output6985_def]
  kernel_rfl

theorem node6986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6986 value3497 value1 value2 = (output6986, value3498, value1) := by
  rw [input6986_def, output6986_def]
  kernel_rfl

theorem node6987_cond_eq
    (child6985 : Flapjack.WordAlloc.removeDeadStructural input6985 value3496 value1 value2 = (output6985, value3497, value1))
    (child6986 : Flapjack.WordAlloc.removeDeadStructural input6986 value3497 value1 value2 = (output6986, value3498, value1)) : Flapjack.WordAlloc.removeDeadStructural input6987 value3496 value1 value2 = (output6987, value3498, value1) := by
  rw [input6987_def, output6987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6985]
  dsimp only
  rw [child6986]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6985_skip, output6986_skip]
  kernel_rfl

theorem node6988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6988 value3498 value1 value2 = (output6988, value3499, value1) := by
  rw [input6988_def, output6988_def]
  kernel_rfl

theorem node6989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6989 value3499 value1 value2 = (output6989, value3500, value1) := by
  rw [input6989_def, output6989_def]
  kernel_rfl

theorem node6990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6990 value3500 value1 value2 = (output6990, value3501, value1) := by
  rw [input6990_def, output6990_def]
  kernel_rfl

theorem node6991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6991 value3501 value1 value2 = (output6991, value5, value1) := by
  rw [input6991_def, output6991_def]
  kernel_rfl

theorem node6992_cond_eq
    (child6990 : Flapjack.WordAlloc.removeDeadStructural input6990 value3500 value1 value2 = (output6990, value3501, value1))
    (child6991 : Flapjack.WordAlloc.removeDeadStructural input6991 value3501 value1 value2 = (output6991, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6992 value3500 value1 value2 = (output6992, value5, value1) := by
  rw [input6992_def, output6992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6990]
  dsimp only
  rw [child6991]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6990_skip, output6991_skip]
  kernel_rfl

theorem node6993_cond_eq
    (child6989 : Flapjack.WordAlloc.removeDeadStructural input6989 value3499 value1 value2 = (output6989, value3500, value1))
    (child6992 : Flapjack.WordAlloc.removeDeadStructural input6992 value3500 value1 value2 = (output6992, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6993 value3499 value1 value2 = (output6993, value5, value1) := by
  rw [input6993_def, output6993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6989]
  dsimp only
  rw [child6992]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6989_skip, output6992_skip]
  kernel_rfl

theorem node6994_cond_eq
    (child6988 : Flapjack.WordAlloc.removeDeadStructural input6988 value3498 value1 value2 = (output6988, value3499, value1))
    (child6993 : Flapjack.WordAlloc.removeDeadStructural input6993 value3499 value1 value2 = (output6993, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6994 value3498 value1 value2 = (output6994, value5, value1) := by
  rw [input6994_def, output6994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6988]
  dsimp only
  rw [child6993]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6988_skip, output6993_skip]
  kernel_rfl

theorem node6995_cond_eq
    (child6987 : Flapjack.WordAlloc.removeDeadStructural input6987 value3496 value1 value2 = (output6987, value3498, value1))
    (child6994 : Flapjack.WordAlloc.removeDeadStructural input6994 value3498 value1 value2 = (output6994, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6995 value3496 value1 value2 = (output6995, value5, value1) := by
  rw [input6995_def, output6995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6987]
  dsimp only
  rw [child6994]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6987_skip, output6994_skip]
  kernel_rfl

theorem node6996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6996 value5 value1 value2 = (output6996, value3502, value1) := by
  rw [input6996_def, output6996_def]
  kernel_rfl

theorem node6997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6997 value3502 value1 value2 = (output6997, value3503, value1) := by
  rw [input6997_def, output6997_def]
  kernel_rfl

theorem node6998_cond_eq
    (child6996 : Flapjack.WordAlloc.removeDeadStructural input6996 value5 value1 value2 = (output6996, value3502, value1))
    (child6997 : Flapjack.WordAlloc.removeDeadStructural input6997 value3502 value1 value2 = (output6997, value3503, value1)) : Flapjack.WordAlloc.removeDeadStructural input6998 value5 value1 value2 = (output6998, value3503, value1) := by
  rw [input6998_def, output6998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6996]
  dsimp only
  rw [child6997]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6996_skip, output6997_skip]
  kernel_rfl

theorem node6999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6999 value3503 value1 value2 = (output6999, value3504, value1) := by
  rw [input6999_def, output6999_def]
  kernel_rfl

theorem node7000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7000 value3504 value1 value2 = (output7000, value3504, value1) := by
  rw [input7000_def, output7000_def]
  kernel_rfl

theorem node7001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7001 value3504 value1 value2 = (output7001, value3505, value1) := by
  rw [input7001_def, output7001_def]
  kernel_rfl

theorem node7002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7002 value3505 value1 value2 = (output7002, value3506, value1) := by
  rw [input7002_def, output7002_def]
  kernel_rfl

theorem node7003_cond_eq
    (child7001 : Flapjack.WordAlloc.removeDeadStructural input7001 value3504 value1 value2 = (output7001, value3505, value1))
    (child7002 : Flapjack.WordAlloc.removeDeadStructural input7002 value3505 value1 value2 = (output7002, value3506, value1)) : Flapjack.WordAlloc.removeDeadStructural input7003 value3504 value1 value2 = (output7003, value3506, value1) := by
  rw [input7003_def, output7003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7001]
  dsimp only
  rw [child7002]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7001_skip, output7002_skip]
  kernel_rfl

theorem node7004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7004 value3506 value1 value2 = (output7004, value3507, value1) := by
  rw [input7004_def, output7004_def]
  kernel_rfl

theorem node7005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7005 value3507 value1 value2 = (output7005, value3508, value1) := by
  rw [input7005_def, output7005_def]
  kernel_rfl

theorem node7006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7006 value3508 value1 value2 = (output7006, value3509, value1) := by
  rw [input7006_def, output7006_def]
  kernel_rfl

theorem node7007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7007 value3509 value1 value2 = (output7007, value5, value1) := by
  rw [input7007_def, output7007_def]
  kernel_rfl

theorem node7008_cond_eq
    (child7006 : Flapjack.WordAlloc.removeDeadStructural input7006 value3508 value1 value2 = (output7006, value3509, value1))
    (child7007 : Flapjack.WordAlloc.removeDeadStructural input7007 value3509 value1 value2 = (output7007, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7008 value3508 value1 value2 = (output7008, value5, value1) := by
  rw [input7008_def, output7008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7006]
  dsimp only
  rw [child7007]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7006_skip, output7007_skip]
  kernel_rfl

theorem node7009_cond_eq
    (child7005 : Flapjack.WordAlloc.removeDeadStructural input7005 value3507 value1 value2 = (output7005, value3508, value1))
    (child7008 : Flapjack.WordAlloc.removeDeadStructural input7008 value3508 value1 value2 = (output7008, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7009 value3507 value1 value2 = (output7009, value5, value1) := by
  rw [input7009_def, output7009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7005]
  dsimp only
  rw [child7008]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7005_skip, output7008_skip]
  kernel_rfl

theorem node7010_cond_eq
    (child7004 : Flapjack.WordAlloc.removeDeadStructural input7004 value3506 value1 value2 = (output7004, value3507, value1))
    (child7009 : Flapjack.WordAlloc.removeDeadStructural input7009 value3507 value1 value2 = (output7009, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7010 value3506 value1 value2 = (output7010, value5, value1) := by
  rw [input7010_def, output7010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7004]
  dsimp only
  rw [child7009]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7004_skip, output7009_skip]
  kernel_rfl

theorem node7011_cond_eq
    (child7003 : Flapjack.WordAlloc.removeDeadStructural input7003 value3504 value1 value2 = (output7003, value3506, value1))
    (child7010 : Flapjack.WordAlloc.removeDeadStructural input7010 value3506 value1 value2 = (output7010, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7011 value3504 value1 value2 = (output7011, value5, value1) := by
  rw [input7011_def, output7011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7003]
  dsimp only
  rw [child7010]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7003_skip, output7010_skip]
  kernel_rfl

theorem node7012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7012 value5 value1 value2 = (output7012, value3510, value1) := by
  rw [input7012_def, output7012_def]
  kernel_rfl

theorem node7013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7013 value3510 value1 value2 = (output7013, value3511, value1) := by
  rw [input7013_def, output7013_def]
  kernel_rfl

theorem node7014_cond_eq
    (child7012 : Flapjack.WordAlloc.removeDeadStructural input7012 value5 value1 value2 = (output7012, value3510, value1))
    (child7013 : Flapjack.WordAlloc.removeDeadStructural input7013 value3510 value1 value2 = (output7013, value3511, value1)) : Flapjack.WordAlloc.removeDeadStructural input7014 value5 value1 value2 = (output7014, value3511, value1) := by
  rw [input7014_def, output7014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7012]
  dsimp only
  rw [child7013]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7012_skip, output7013_skip]
  kernel_rfl

theorem node7015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7015 value3511 value1 value2 = (output7015, value3512, value1) := by
  rw [input7015_def, output7015_def]
  kernel_rfl

theorem node7016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7016 value3512 value1 value2 = (output7016, value3512, value1) := by
  rw [input7016_def, output7016_def]
  kernel_rfl

theorem node7017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7017 value3512 value1 value2 = (output7017, value3513, value1) := by
  rw [input7017_def, output7017_def]
  kernel_rfl

theorem node7018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7018 value3513 value1 value2 = (output7018, value3514, value1) := by
  rw [input7018_def, output7018_def]
  kernel_rfl

theorem node7019_cond_eq
    (child7017 : Flapjack.WordAlloc.removeDeadStructural input7017 value3512 value1 value2 = (output7017, value3513, value1))
    (child7018 : Flapjack.WordAlloc.removeDeadStructural input7018 value3513 value1 value2 = (output7018, value3514, value1)) : Flapjack.WordAlloc.removeDeadStructural input7019 value3512 value1 value2 = (output7019, value3514, value1) := by
  rw [input7019_def, output7019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7017]
  dsimp only
  rw [child7018]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7017_skip, output7018_skip]
  kernel_rfl

theorem node7020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7020 value3514 value1 value2 = (output7020, value3515, value1) := by
  rw [input7020_def, output7020_def]
  kernel_rfl

theorem node7021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7021 value3515 value1 value2 = (output7021, value3516, value1) := by
  rw [input7021_def, output7021_def]
  kernel_rfl

theorem node7022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7022 value3516 value1 value2 = (output7022, value3517, value1) := by
  rw [input7022_def, output7022_def]
  kernel_rfl

theorem node7023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7023 value3517 value1 value2 = (output7023, value5, value1) := by
  rw [input7023_def, output7023_def]
  kernel_rfl

theorem node7024_cond_eq
    (child7022 : Flapjack.WordAlloc.removeDeadStructural input7022 value3516 value1 value2 = (output7022, value3517, value1))
    (child7023 : Flapjack.WordAlloc.removeDeadStructural input7023 value3517 value1 value2 = (output7023, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7024 value3516 value1 value2 = (output7024, value5, value1) := by
  rw [input7024_def, output7024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7022]
  dsimp only
  rw [child7023]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7022_skip, output7023_skip]
  kernel_rfl

theorem node7025_cond_eq
    (child7021 : Flapjack.WordAlloc.removeDeadStructural input7021 value3515 value1 value2 = (output7021, value3516, value1))
    (child7024 : Flapjack.WordAlloc.removeDeadStructural input7024 value3516 value1 value2 = (output7024, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7025 value3515 value1 value2 = (output7025, value5, value1) := by
  rw [input7025_def, output7025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7021]
  dsimp only
  rw [child7024]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7021_skip, output7024_skip]
  kernel_rfl

theorem node7026_cond_eq
    (child7020 : Flapjack.WordAlloc.removeDeadStructural input7020 value3514 value1 value2 = (output7020, value3515, value1))
    (child7025 : Flapjack.WordAlloc.removeDeadStructural input7025 value3515 value1 value2 = (output7025, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7026 value3514 value1 value2 = (output7026, value5, value1) := by
  rw [input7026_def, output7026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7020]
  dsimp only
  rw [child7025]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7020_skip, output7025_skip]
  kernel_rfl

theorem node7027_cond_eq
    (child7019 : Flapjack.WordAlloc.removeDeadStructural input7019 value3512 value1 value2 = (output7019, value3514, value1))
    (child7026 : Flapjack.WordAlloc.removeDeadStructural input7026 value3514 value1 value2 = (output7026, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7027 value3512 value1 value2 = (output7027, value5, value1) := by
  rw [input7027_def, output7027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7019]
  dsimp only
  rw [child7026]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7019_skip, output7026_skip]
  kernel_rfl

theorem node7028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7028 value5 value1 value2 = (output7028, value3518, value1) := by
  rw [input7028_def, output7028_def]
  kernel_rfl

theorem node7029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7029 value3518 value1 value2 = (output7029, value3519, value1) := by
  rw [input7029_def, output7029_def]
  kernel_rfl

theorem node7030_cond_eq
    (child7028 : Flapjack.WordAlloc.removeDeadStructural input7028 value5 value1 value2 = (output7028, value3518, value1))
    (child7029 : Flapjack.WordAlloc.removeDeadStructural input7029 value3518 value1 value2 = (output7029, value3519, value1)) : Flapjack.WordAlloc.removeDeadStructural input7030 value5 value1 value2 = (output7030, value3519, value1) := by
  rw [input7030_def, output7030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7028]
  dsimp only
  rw [child7029]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7028_skip, output7029_skip]
  kernel_rfl

theorem node7031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7031 value3519 value1 value2 = (output7031, value3520, value1) := by
  rw [input7031_def, output7031_def]
  kernel_rfl

theorem node7032_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7032 value3520 value1 value2 = (output7032, value3520, value1) := by
  rw [input7032_def, output7032_def]
  kernel_rfl

theorem node7033_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7033 value3520 value1 value2 = (output7033, value3521, value1) := by
  rw [input7033_def, output7033_def]
  kernel_rfl

theorem node7034_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7034 value3521 value1 value2 = (output7034, value3522, value1) := by
  rw [input7034_def, output7034_def]
  kernel_rfl

theorem node7035_cond_eq
    (child7033 : Flapjack.WordAlloc.removeDeadStructural input7033 value3520 value1 value2 = (output7033, value3521, value1))
    (child7034 : Flapjack.WordAlloc.removeDeadStructural input7034 value3521 value1 value2 = (output7034, value3522, value1)) : Flapjack.WordAlloc.removeDeadStructural input7035 value3520 value1 value2 = (output7035, value3522, value1) := by
  rw [input7035_def, output7035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7033]
  dsimp only
  rw [child7034]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7033_skip, output7034_skip]
  kernel_rfl

theorem node7036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7036 value3522 value1 value2 = (output7036, value3523, value1) := by
  rw [input7036_def, output7036_def]
  kernel_rfl

theorem node7037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7037 value3523 value1 value2 = (output7037, value3524, value1) := by
  rw [input7037_def, output7037_def]
  kernel_rfl

theorem node7038_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7038 value3524 value1 value2 = (output7038, value3525, value1) := by
  rw [input7038_def, output7038_def]
  kernel_rfl

theorem node7039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7039 value3525 value1 value2 = (output7039, value5, value1) := by
  rw [input7039_def, output7039_def]
  kernel_rfl

theorem node7040_cond_eq
    (child7038 : Flapjack.WordAlloc.removeDeadStructural input7038 value3524 value1 value2 = (output7038, value3525, value1))
    (child7039 : Flapjack.WordAlloc.removeDeadStructural input7039 value3525 value1 value2 = (output7039, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7040 value3524 value1 value2 = (output7040, value5, value1) := by
  rw [input7040_def, output7040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7038]
  dsimp only
  rw [child7039]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7038_skip, output7039_skip]
  kernel_rfl

theorem node7041_cond_eq
    (child7037 : Flapjack.WordAlloc.removeDeadStructural input7037 value3523 value1 value2 = (output7037, value3524, value1))
    (child7040 : Flapjack.WordAlloc.removeDeadStructural input7040 value3524 value1 value2 = (output7040, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7041 value3523 value1 value2 = (output7041, value5, value1) := by
  rw [input7041_def, output7041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7037]
  dsimp only
  rw [child7040]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7037_skip, output7040_skip]
  kernel_rfl

theorem node7042_cond_eq
    (child7036 : Flapjack.WordAlloc.removeDeadStructural input7036 value3522 value1 value2 = (output7036, value3523, value1))
    (child7041 : Flapjack.WordAlloc.removeDeadStructural input7041 value3523 value1 value2 = (output7041, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7042 value3522 value1 value2 = (output7042, value5, value1) := by
  rw [input7042_def, output7042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7036]
  dsimp only
  rw [child7041]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7036_skip, output7041_skip]
  kernel_rfl

theorem node7043_cond_eq
    (child7035 : Flapjack.WordAlloc.removeDeadStructural input7035 value3520 value1 value2 = (output7035, value3522, value1))
    (child7042 : Flapjack.WordAlloc.removeDeadStructural input7042 value3522 value1 value2 = (output7042, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7043 value3520 value1 value2 = (output7043, value5, value1) := by
  rw [input7043_def, output7043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7035]
  dsimp only
  rw [child7042]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7035_skip, output7042_skip]
  kernel_rfl

theorem node7044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7044 value5 value1 value2 = (output7044, value3526, value1) := by
  rw [input7044_def, output7044_def]
  kernel_rfl

theorem node7045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7045 value3526 value1 value2 = (output7045, value3527, value1) := by
  rw [input7045_def, output7045_def]
  kernel_rfl

theorem node7046_cond_eq
    (child7044 : Flapjack.WordAlloc.removeDeadStructural input7044 value5 value1 value2 = (output7044, value3526, value1))
    (child7045 : Flapjack.WordAlloc.removeDeadStructural input7045 value3526 value1 value2 = (output7045, value3527, value1)) : Flapjack.WordAlloc.removeDeadStructural input7046 value5 value1 value2 = (output7046, value3527, value1) := by
  rw [input7046_def, output7046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7044]
  dsimp only
  rw [child7045]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7044_skip, output7045_skip]
  kernel_rfl

theorem node7047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7047 value3527 value1 value2 = (output7047, value3528, value1) := by
  rw [input7047_def, output7047_def]
  kernel_rfl

theorem node7048_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7048 value3528 value1 value2 = (output7048, value3528, value1) := by
  rw [input7048_def, output7048_def]
  kernel_rfl

theorem node7049_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7049 value3528 value1 value2 = (output7049, value3529, value1) := by
  rw [input7049_def, output7049_def]
  kernel_rfl

theorem node7050_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7050 value3529 value1 value2 = (output7050, value3530, value1) := by
  rw [input7050_def, output7050_def]
  kernel_rfl

theorem node7051_cond_eq
    (child7049 : Flapjack.WordAlloc.removeDeadStructural input7049 value3528 value1 value2 = (output7049, value3529, value1))
    (child7050 : Flapjack.WordAlloc.removeDeadStructural input7050 value3529 value1 value2 = (output7050, value3530, value1)) : Flapjack.WordAlloc.removeDeadStructural input7051 value3528 value1 value2 = (output7051, value3530, value1) := by
  rw [input7051_def, output7051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7049]
  dsimp only
  rw [child7050]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7049_skip, output7050_skip]
  kernel_rfl

theorem node7052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7052 value3530 value1 value2 = (output7052, value3531, value1) := by
  rw [input7052_def, output7052_def]
  kernel_rfl

theorem node7053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7053 value3531 value1 value2 = (output7053, value3532, value1) := by
  rw [input7053_def, output7053_def]
  kernel_rfl

theorem node7054_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7054 value3532 value1 value2 = (output7054, value3533, value1) := by
  rw [input7054_def, output7054_def]
  kernel_rfl

theorem node7055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7055 value3533 value1 value2 = (output7055, value5, value1) := by
  rw [input7055_def, output7055_def]
  kernel_rfl

theorem node7056_cond_eq
    (child7054 : Flapjack.WordAlloc.removeDeadStructural input7054 value3532 value1 value2 = (output7054, value3533, value1))
    (child7055 : Flapjack.WordAlloc.removeDeadStructural input7055 value3533 value1 value2 = (output7055, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7056 value3532 value1 value2 = (output7056, value5, value1) := by
  rw [input7056_def, output7056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7054]
  dsimp only
  rw [child7055]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7054_skip, output7055_skip]
  kernel_rfl

theorem node7057_cond_eq
    (child7053 : Flapjack.WordAlloc.removeDeadStructural input7053 value3531 value1 value2 = (output7053, value3532, value1))
    (child7056 : Flapjack.WordAlloc.removeDeadStructural input7056 value3532 value1 value2 = (output7056, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7057 value3531 value1 value2 = (output7057, value5, value1) := by
  rw [input7057_def, output7057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7053]
  dsimp only
  rw [child7056]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7053_skip, output7056_skip]
  kernel_rfl

theorem node7058_cond_eq
    (child7052 : Flapjack.WordAlloc.removeDeadStructural input7052 value3530 value1 value2 = (output7052, value3531, value1))
    (child7057 : Flapjack.WordAlloc.removeDeadStructural input7057 value3531 value1 value2 = (output7057, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7058 value3530 value1 value2 = (output7058, value5, value1) := by
  rw [input7058_def, output7058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7052]
  dsimp only
  rw [child7057]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7052_skip, output7057_skip]
  kernel_rfl

theorem node7059_cond_eq
    (child7051 : Flapjack.WordAlloc.removeDeadStructural input7051 value3528 value1 value2 = (output7051, value3530, value1))
    (child7058 : Flapjack.WordAlloc.removeDeadStructural input7058 value3530 value1 value2 = (output7058, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7059 value3528 value1 value2 = (output7059, value5, value1) := by
  rw [input7059_def, output7059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7051]
  dsimp only
  rw [child7058]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7051_skip, output7058_skip]
  kernel_rfl

theorem node7060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7060 value5 value1 value2 = (output7060, value3534, value1) := by
  rw [input7060_def, output7060_def]
  kernel_rfl

theorem node7061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7061 value3534 value1 value2 = (output7061, value3535, value1) := by
  rw [input7061_def, output7061_def]
  kernel_rfl

theorem node7062_cond_eq
    (child7060 : Flapjack.WordAlloc.removeDeadStructural input7060 value5 value1 value2 = (output7060, value3534, value1))
    (child7061 : Flapjack.WordAlloc.removeDeadStructural input7061 value3534 value1 value2 = (output7061, value3535, value1)) : Flapjack.WordAlloc.removeDeadStructural input7062 value5 value1 value2 = (output7062, value3535, value1) := by
  rw [input7062_def, output7062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7060]
  dsimp only
  rw [child7061]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7060_skip, output7061_skip]
  kernel_rfl

theorem node7063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7063 value3535 value1 value2 = (output7063, value3536, value1) := by
  rw [input7063_def, output7063_def]
  kernel_rfl

theorem node7064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7064 value3536 value1 value2 = (output7064, value3536, value1) := by
  rw [input7064_def, output7064_def]
  kernel_rfl

theorem node7065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7065 value3536 value1 value2 = (output7065, value3537, value1) := by
  rw [input7065_def, output7065_def]
  kernel_rfl

theorem node7066_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7066 value3537 value1 value2 = (output7066, value3538, value1) := by
  rw [input7066_def, output7066_def]
  kernel_rfl

theorem node7067_cond_eq
    (child7065 : Flapjack.WordAlloc.removeDeadStructural input7065 value3536 value1 value2 = (output7065, value3537, value1))
    (child7066 : Flapjack.WordAlloc.removeDeadStructural input7066 value3537 value1 value2 = (output7066, value3538, value1)) : Flapjack.WordAlloc.removeDeadStructural input7067 value3536 value1 value2 = (output7067, value3538, value1) := by
  rw [input7067_def, output7067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7065]
  dsimp only
  rw [child7066]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7065_skip, output7066_skip]
  kernel_rfl

theorem node7068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7068 value3538 value1 value2 = (output7068, value3539, value1) := by
  rw [input7068_def, output7068_def]
  kernel_rfl

theorem node7069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7069 value3539 value1 value2 = (output7069, value3540, value1) := by
  rw [input7069_def, output7069_def]
  kernel_rfl

theorem node7070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7070 value3540 value1 value2 = (output7070, value3541, value1) := by
  rw [input7070_def, output7070_def]
  kernel_rfl

theorem node7071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7071 value3541 value1 value2 = (output7071, value5, value1) := by
  rw [input7071_def, output7071_def]
  kernel_rfl

theorem node7072_cond_eq
    (child7070 : Flapjack.WordAlloc.removeDeadStructural input7070 value3540 value1 value2 = (output7070, value3541, value1))
    (child7071 : Flapjack.WordAlloc.removeDeadStructural input7071 value3541 value1 value2 = (output7071, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7072 value3540 value1 value2 = (output7072, value5, value1) := by
  rw [input7072_def, output7072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7070]
  dsimp only
  rw [child7071]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7070_skip, output7071_skip]
  kernel_rfl

theorem node7073_cond_eq
    (child7069 : Flapjack.WordAlloc.removeDeadStructural input7069 value3539 value1 value2 = (output7069, value3540, value1))
    (child7072 : Flapjack.WordAlloc.removeDeadStructural input7072 value3540 value1 value2 = (output7072, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7073 value3539 value1 value2 = (output7073, value5, value1) := by
  rw [input7073_def, output7073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7069]
  dsimp only
  rw [child7072]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7069_skip, output7072_skip]
  kernel_rfl

theorem node7074_cond_eq
    (child7068 : Flapjack.WordAlloc.removeDeadStructural input7068 value3538 value1 value2 = (output7068, value3539, value1))
    (child7073 : Flapjack.WordAlloc.removeDeadStructural input7073 value3539 value1 value2 = (output7073, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7074 value3538 value1 value2 = (output7074, value5, value1) := by
  rw [input7074_def, output7074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7068]
  dsimp only
  rw [child7073]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7068_skip, output7073_skip]
  kernel_rfl

theorem node7075_cond_eq
    (child7067 : Flapjack.WordAlloc.removeDeadStructural input7067 value3536 value1 value2 = (output7067, value3538, value1))
    (child7074 : Flapjack.WordAlloc.removeDeadStructural input7074 value3538 value1 value2 = (output7074, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7075 value3536 value1 value2 = (output7075, value5, value1) := by
  rw [input7075_def, output7075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7067]
  dsimp only
  rw [child7074]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7067_skip, output7074_skip]
  kernel_rfl

theorem node7076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7076 value5 value1 value2 = (output7076, value3542, value1) := by
  rw [input7076_def, output7076_def]
  kernel_rfl

theorem node7077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7077 value3542 value1 value2 = (output7077, value3543, value1) := by
  rw [input7077_def, output7077_def]
  kernel_rfl

theorem node7078_cond_eq
    (child7076 : Flapjack.WordAlloc.removeDeadStructural input7076 value5 value1 value2 = (output7076, value3542, value1))
    (child7077 : Flapjack.WordAlloc.removeDeadStructural input7077 value3542 value1 value2 = (output7077, value3543, value1)) : Flapjack.WordAlloc.removeDeadStructural input7078 value5 value1 value2 = (output7078, value3543, value1) := by
  rw [input7078_def, output7078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7076]
  dsimp only
  rw [child7077]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7076_skip, output7077_skip]
  kernel_rfl

theorem node7079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7079 value3543 value1 value2 = (output7079, value3544, value1) := by
  rw [input7079_def, output7079_def]
  kernel_rfl

theorem node7080_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7080 value3544 value1 value2 = (output7080, value3544, value1) := by
  rw [input7080_def, output7080_def]
  kernel_rfl

theorem node7081_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7081 value3544 value1 value2 = (output7081, value3545, value1) := by
  rw [input7081_def, output7081_def]
  kernel_rfl

theorem node7082_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7082 value3545 value1 value2 = (output7082, value3546, value1) := by
  rw [input7082_def, output7082_def]
  kernel_rfl

theorem node7083_cond_eq
    (child7081 : Flapjack.WordAlloc.removeDeadStructural input7081 value3544 value1 value2 = (output7081, value3545, value1))
    (child7082 : Flapjack.WordAlloc.removeDeadStructural input7082 value3545 value1 value2 = (output7082, value3546, value1)) : Flapjack.WordAlloc.removeDeadStructural input7083 value3544 value1 value2 = (output7083, value3546, value1) := by
  rw [input7083_def, output7083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7081]
  dsimp only
  rw [child7082]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7081_skip, output7082_skip]
  kernel_rfl

theorem node7084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7084 value3546 value1 value2 = (output7084, value3547, value1) := by
  rw [input7084_def, output7084_def]
  kernel_rfl

theorem node7085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7085 value3547 value1 value2 = (output7085, value3548, value1) := by
  rw [input7085_def, output7085_def]
  kernel_rfl

theorem node7086_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7086 value3548 value1 value2 = (output7086, value3549, value1) := by
  rw [input7086_def, output7086_def]
  kernel_rfl

theorem node7087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7087 value3549 value1 value2 = (output7087, value5, value1) := by
  rw [input7087_def, output7087_def]
  kernel_rfl

theorem node7088_cond_eq
    (child7086 : Flapjack.WordAlloc.removeDeadStructural input7086 value3548 value1 value2 = (output7086, value3549, value1))
    (child7087 : Flapjack.WordAlloc.removeDeadStructural input7087 value3549 value1 value2 = (output7087, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7088 value3548 value1 value2 = (output7088, value5, value1) := by
  rw [input7088_def, output7088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7086]
  dsimp only
  rw [child7087]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7086_skip, output7087_skip]
  kernel_rfl

theorem node7089_cond_eq
    (child7085 : Flapjack.WordAlloc.removeDeadStructural input7085 value3547 value1 value2 = (output7085, value3548, value1))
    (child7088 : Flapjack.WordAlloc.removeDeadStructural input7088 value3548 value1 value2 = (output7088, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7089 value3547 value1 value2 = (output7089, value5, value1) := by
  rw [input7089_def, output7089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7085]
  dsimp only
  rw [child7088]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7085_skip, output7088_skip]
  kernel_rfl

theorem node7090_cond_eq
    (child7084 : Flapjack.WordAlloc.removeDeadStructural input7084 value3546 value1 value2 = (output7084, value3547, value1))
    (child7089 : Flapjack.WordAlloc.removeDeadStructural input7089 value3547 value1 value2 = (output7089, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7090 value3546 value1 value2 = (output7090, value5, value1) := by
  rw [input7090_def, output7090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7084]
  dsimp only
  rw [child7089]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7084_skip, output7089_skip]
  kernel_rfl

theorem node7091_cond_eq
    (child7083 : Flapjack.WordAlloc.removeDeadStructural input7083 value3544 value1 value2 = (output7083, value3546, value1))
    (child7090 : Flapjack.WordAlloc.removeDeadStructural input7090 value3546 value1 value2 = (output7090, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7091 value3544 value1 value2 = (output7091, value5, value1) := by
  rw [input7091_def, output7091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7083]
  dsimp only
  rw [child7090]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7083_skip, output7090_skip]
  kernel_rfl

theorem node7092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7092 value5 value1 value2 = (output7092, value3550, value1) := by
  rw [input7092_def, output7092_def]
  kernel_rfl

theorem node7093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7093 value3550 value1 value2 = (output7093, value3551, value1) := by
  rw [input7093_def, output7093_def]
  kernel_rfl

theorem node7094_cond_eq
    (child7092 : Flapjack.WordAlloc.removeDeadStructural input7092 value5 value1 value2 = (output7092, value3550, value1))
    (child7093 : Flapjack.WordAlloc.removeDeadStructural input7093 value3550 value1 value2 = (output7093, value3551, value1)) : Flapjack.WordAlloc.removeDeadStructural input7094 value5 value1 value2 = (output7094, value3551, value1) := by
  rw [input7094_def, output7094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7092]
  dsimp only
  rw [child7093]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7092_skip, output7093_skip]
  kernel_rfl

theorem node7095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7095 value3551 value1 value2 = (output7095, value3552, value1) := by
  rw [input7095_def, output7095_def]
  kernel_rfl

theorem node7096_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7096 value3552 value1 value2 = (output7096, value3552, value1) := by
  rw [input7096_def, output7096_def]
  kernel_rfl

theorem node7097_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7097 value3552 value1 value2 = (output7097, value3553, value1) := by
  rw [input7097_def, output7097_def]
  kernel_rfl

theorem node7098_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7098 value3553 value1 value2 = (output7098, value3554, value1) := by
  rw [input7098_def, output7098_def]
  kernel_rfl

theorem node7099_cond_eq
    (child7097 : Flapjack.WordAlloc.removeDeadStructural input7097 value3552 value1 value2 = (output7097, value3553, value1))
    (child7098 : Flapjack.WordAlloc.removeDeadStructural input7098 value3553 value1 value2 = (output7098, value3554, value1)) : Flapjack.WordAlloc.removeDeadStructural input7099 value3552 value1 value2 = (output7099, value3554, value1) := by
  rw [input7099_def, output7099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7097]
  dsimp only
  rw [child7098]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7097_skip, output7098_skip]
  kernel_rfl

theorem node7100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7100 value3554 value1 value2 = (output7100, value3555, value1) := by
  rw [input7100_def, output7100_def]
  kernel_rfl

theorem node7101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7101 value3555 value1 value2 = (output7101, value3556, value1) := by
  rw [input7101_def, output7101_def]
  kernel_rfl

theorem node7102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7102 value3556 value1 value2 = (output7102, value3557, value1) := by
  rw [input7102_def, output7102_def]
  kernel_rfl

theorem node7103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7103 value3557 value1 value2 = (output7103, value5, value1) := by
  rw [input7103_def, output7103_def]
  kernel_rfl

theorem node7104_cond_eq
    (child7102 : Flapjack.WordAlloc.removeDeadStructural input7102 value3556 value1 value2 = (output7102, value3557, value1))
    (child7103 : Flapjack.WordAlloc.removeDeadStructural input7103 value3557 value1 value2 = (output7103, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7104 value3556 value1 value2 = (output7104, value5, value1) := by
  rw [input7104_def, output7104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7102]
  dsimp only
  rw [child7103]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7102_skip, output7103_skip]
  kernel_rfl

theorem node7105_cond_eq
    (child7101 : Flapjack.WordAlloc.removeDeadStructural input7101 value3555 value1 value2 = (output7101, value3556, value1))
    (child7104 : Flapjack.WordAlloc.removeDeadStructural input7104 value3556 value1 value2 = (output7104, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7105 value3555 value1 value2 = (output7105, value5, value1) := by
  rw [input7105_def, output7105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7101]
  dsimp only
  rw [child7104]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7101_skip, output7104_skip]
  kernel_rfl

theorem node7106_cond_eq
    (child7100 : Flapjack.WordAlloc.removeDeadStructural input7100 value3554 value1 value2 = (output7100, value3555, value1))
    (child7105 : Flapjack.WordAlloc.removeDeadStructural input7105 value3555 value1 value2 = (output7105, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7106 value3554 value1 value2 = (output7106, value5, value1) := by
  rw [input7106_def, output7106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7100]
  dsimp only
  rw [child7105]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7100_skip, output7105_skip]
  kernel_rfl

theorem node7107_cond_eq
    (child7099 : Flapjack.WordAlloc.removeDeadStructural input7099 value3552 value1 value2 = (output7099, value3554, value1))
    (child7106 : Flapjack.WordAlloc.removeDeadStructural input7106 value3554 value1 value2 = (output7106, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7107 value3552 value1 value2 = (output7107, value5, value1) := by
  rw [input7107_def, output7107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7099]
  dsimp only
  rw [child7106]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7099_skip, output7106_skip]
  kernel_rfl

theorem node7108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7108 value5 value1 value2 = (output7108, value3558, value1) := by
  rw [input7108_def, output7108_def]
  kernel_rfl

theorem node7109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7109 value3558 value1 value2 = (output7109, value3559, value1) := by
  rw [input7109_def, output7109_def]
  kernel_rfl

theorem node7110_cond_eq
    (child7108 : Flapjack.WordAlloc.removeDeadStructural input7108 value5 value1 value2 = (output7108, value3558, value1))
    (child7109 : Flapjack.WordAlloc.removeDeadStructural input7109 value3558 value1 value2 = (output7109, value3559, value1)) : Flapjack.WordAlloc.removeDeadStructural input7110 value5 value1 value2 = (output7110, value3559, value1) := by
  rw [input7110_def, output7110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7108]
  dsimp only
  rw [child7109]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7108_skip, output7109_skip]
  kernel_rfl

theorem node7111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7111 value3559 value1 value2 = (output7111, value3560, value1) := by
  rw [input7111_def, output7111_def]
  kernel_rfl

theorem node7112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7112 value3560 value1 value2 = (output7112, value3560, value1) := by
  rw [input7112_def, output7112_def]
  kernel_rfl

theorem node7113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7113 value3560 value1 value2 = (output7113, value3561, value1) := by
  rw [input7113_def, output7113_def]
  kernel_rfl

theorem node7114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7114 value3561 value1 value2 = (output7114, value3562, value1) := by
  rw [input7114_def, output7114_def]
  kernel_rfl

theorem node7115_cond_eq
    (child7113 : Flapjack.WordAlloc.removeDeadStructural input7113 value3560 value1 value2 = (output7113, value3561, value1))
    (child7114 : Flapjack.WordAlloc.removeDeadStructural input7114 value3561 value1 value2 = (output7114, value3562, value1)) : Flapjack.WordAlloc.removeDeadStructural input7115 value3560 value1 value2 = (output7115, value3562, value1) := by
  rw [input7115_def, output7115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7113]
  dsimp only
  rw [child7114]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7113_skip, output7114_skip]
  kernel_rfl

theorem node7116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7116 value3562 value1 value2 = (output7116, value3563, value1) := by
  rw [input7116_def, output7116_def]
  kernel_rfl

theorem node7117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7117 value3563 value1 value2 = (output7117, value3564, value1) := by
  rw [input7117_def, output7117_def]
  kernel_rfl

theorem node7118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7118 value3564 value1 value2 = (output7118, value3565, value1) := by
  rw [input7118_def, output7118_def]
  kernel_rfl

theorem node7119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7119 value3565 value1 value2 = (output7119, value5, value1) := by
  rw [input7119_def, output7119_def]
  kernel_rfl

theorem node7120_cond_eq
    (child7118 : Flapjack.WordAlloc.removeDeadStructural input7118 value3564 value1 value2 = (output7118, value3565, value1))
    (child7119 : Flapjack.WordAlloc.removeDeadStructural input7119 value3565 value1 value2 = (output7119, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7120 value3564 value1 value2 = (output7120, value5, value1) := by
  rw [input7120_def, output7120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7118]
  dsimp only
  rw [child7119]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7118_skip, output7119_skip]
  kernel_rfl

theorem node7121_cond_eq
    (child7117 : Flapjack.WordAlloc.removeDeadStructural input7117 value3563 value1 value2 = (output7117, value3564, value1))
    (child7120 : Flapjack.WordAlloc.removeDeadStructural input7120 value3564 value1 value2 = (output7120, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7121 value3563 value1 value2 = (output7121, value5, value1) := by
  rw [input7121_def, output7121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7117]
  dsimp only
  rw [child7120]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7117_skip, output7120_skip]
  kernel_rfl

theorem node7122_cond_eq
    (child7116 : Flapjack.WordAlloc.removeDeadStructural input7116 value3562 value1 value2 = (output7116, value3563, value1))
    (child7121 : Flapjack.WordAlloc.removeDeadStructural input7121 value3563 value1 value2 = (output7121, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7122 value3562 value1 value2 = (output7122, value5, value1) := by
  rw [input7122_def, output7122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7116]
  dsimp only
  rw [child7121]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7116_skip, output7121_skip]
  kernel_rfl

theorem node7123_cond_eq
    (child7115 : Flapjack.WordAlloc.removeDeadStructural input7115 value3560 value1 value2 = (output7115, value3562, value1))
    (child7122 : Flapjack.WordAlloc.removeDeadStructural input7122 value3562 value1 value2 = (output7122, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7123 value3560 value1 value2 = (output7123, value5, value1) := by
  rw [input7123_def, output7123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7115]
  dsimp only
  rw [child7122]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7115_skip, output7122_skip]
  kernel_rfl

theorem node7124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7124 value5 value1 value2 = (output7124, value3566, value1) := by
  rw [input7124_def, output7124_def]
  kernel_rfl

theorem node7125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7125 value3566 value1 value2 = (output7125, value3567, value1) := by
  rw [input7125_def, output7125_def]
  kernel_rfl

theorem node7126_cond_eq
    (child7124 : Flapjack.WordAlloc.removeDeadStructural input7124 value5 value1 value2 = (output7124, value3566, value1))
    (child7125 : Flapjack.WordAlloc.removeDeadStructural input7125 value3566 value1 value2 = (output7125, value3567, value1)) : Flapjack.WordAlloc.removeDeadStructural input7126 value5 value1 value2 = (output7126, value3567, value1) := by
  rw [input7126_def, output7126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7124]
  dsimp only
  rw [child7125]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7124_skip, output7125_skip]
  kernel_rfl

theorem node7127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7127 value3567 value1 value2 = (output7127, value3568, value1) := by
  rw [input7127_def, output7127_def]
  kernel_rfl

theorem node7128_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7128 value3568 value1 value2 = (output7128, value3568, value1) := by
  rw [input7128_def, output7128_def]
  kernel_rfl

theorem node7129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7129 value3568 value1 value2 = (output7129, value3569, value1) := by
  rw [input7129_def, output7129_def]
  kernel_rfl

theorem node7130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7130 value3569 value1 value2 = (output7130, value3570, value1) := by
  rw [input7130_def, output7130_def]
  kernel_rfl

theorem node7131_cond_eq
    (child7129 : Flapjack.WordAlloc.removeDeadStructural input7129 value3568 value1 value2 = (output7129, value3569, value1))
    (child7130 : Flapjack.WordAlloc.removeDeadStructural input7130 value3569 value1 value2 = (output7130, value3570, value1)) : Flapjack.WordAlloc.removeDeadStructural input7131 value3568 value1 value2 = (output7131, value3570, value1) := by
  rw [input7131_def, output7131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7129]
  dsimp only
  rw [child7130]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7129_skip, output7130_skip]
  kernel_rfl

theorem node7132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7132 value3570 value1 value2 = (output7132, value3571, value1) := by
  rw [input7132_def, output7132_def]
  kernel_rfl

theorem node7133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7133 value3571 value1 value2 = (output7133, value3572, value1) := by
  rw [input7133_def, output7133_def]
  kernel_rfl

theorem node7134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7134 value3572 value1 value2 = (output7134, value3573, value1) := by
  rw [input7134_def, output7134_def]
  kernel_rfl

theorem node7135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7135 value3573 value1 value2 = (output7135, value5, value1) := by
  rw [input7135_def, output7135_def]
  kernel_rfl

theorem node7136_cond_eq
    (child7134 : Flapjack.WordAlloc.removeDeadStructural input7134 value3572 value1 value2 = (output7134, value3573, value1))
    (child7135 : Flapjack.WordAlloc.removeDeadStructural input7135 value3573 value1 value2 = (output7135, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7136 value3572 value1 value2 = (output7136, value5, value1) := by
  rw [input7136_def, output7136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7134]
  dsimp only
  rw [child7135]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7134_skip, output7135_skip]
  kernel_rfl

theorem node7137_cond_eq
    (child7133 : Flapjack.WordAlloc.removeDeadStructural input7133 value3571 value1 value2 = (output7133, value3572, value1))
    (child7136 : Flapjack.WordAlloc.removeDeadStructural input7136 value3572 value1 value2 = (output7136, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7137 value3571 value1 value2 = (output7137, value5, value1) := by
  rw [input7137_def, output7137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7133]
  dsimp only
  rw [child7136]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7133_skip, output7136_skip]
  kernel_rfl

theorem node7138_cond_eq
    (child7132 : Flapjack.WordAlloc.removeDeadStructural input7132 value3570 value1 value2 = (output7132, value3571, value1))
    (child7137 : Flapjack.WordAlloc.removeDeadStructural input7137 value3571 value1 value2 = (output7137, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7138 value3570 value1 value2 = (output7138, value5, value1) := by
  rw [input7138_def, output7138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7132]
  dsimp only
  rw [child7137]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7132_skip, output7137_skip]
  kernel_rfl

theorem node7139_cond_eq
    (child7131 : Flapjack.WordAlloc.removeDeadStructural input7131 value3568 value1 value2 = (output7131, value3570, value1))
    (child7138 : Flapjack.WordAlloc.removeDeadStructural input7138 value3570 value1 value2 = (output7138, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7139 value3568 value1 value2 = (output7139, value5, value1) := by
  rw [input7139_def, output7139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7131]
  dsimp only
  rw [child7138]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7131_skip, output7138_skip]
  kernel_rfl

theorem node7140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7140 value5 value1 value2 = (output7140, value3574, value1) := by
  rw [input7140_def, output7140_def]
  kernel_rfl

theorem node7141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7141 value3574 value1 value2 = (output7141, value3575, value1) := by
  rw [input7141_def, output7141_def]
  kernel_rfl

theorem node7142_cond_eq
    (child7140 : Flapjack.WordAlloc.removeDeadStructural input7140 value5 value1 value2 = (output7140, value3574, value1))
    (child7141 : Flapjack.WordAlloc.removeDeadStructural input7141 value3574 value1 value2 = (output7141, value3575, value1)) : Flapjack.WordAlloc.removeDeadStructural input7142 value5 value1 value2 = (output7142, value3575, value1) := by
  rw [input7142_def, output7142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7140]
  dsimp only
  rw [child7141]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7140_skip, output7141_skip]
  kernel_rfl

theorem node7143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7143 value3575 value1 value2 = (output7143, value3576, value1) := by
  rw [input7143_def, output7143_def]
  kernel_rfl

theorem node7144_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7144 value3576 value1 value2 = (output7144, value3576, value1) := by
  rw [input7144_def, output7144_def]
  kernel_rfl

theorem node7145_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7145 value3576 value1 value2 = (output7145, value3577, value1) := by
  rw [input7145_def, output7145_def]
  kernel_rfl

theorem node7146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7146 value3577 value1 value2 = (output7146, value3578, value1) := by
  rw [input7146_def, output7146_def]
  kernel_rfl

theorem node7147_cond_eq
    (child7145 : Flapjack.WordAlloc.removeDeadStructural input7145 value3576 value1 value2 = (output7145, value3577, value1))
    (child7146 : Flapjack.WordAlloc.removeDeadStructural input7146 value3577 value1 value2 = (output7146, value3578, value1)) : Flapjack.WordAlloc.removeDeadStructural input7147 value3576 value1 value2 = (output7147, value3578, value1) := by
  rw [input7147_def, output7147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7145]
  dsimp only
  rw [child7146]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7145_skip, output7146_skip]
  kernel_rfl

theorem node7148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7148 value3578 value1 value2 = (output7148, value3579, value1) := by
  rw [input7148_def, output7148_def]
  kernel_rfl

theorem node7149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7149 value3579 value1 value2 = (output7149, value3580, value1) := by
  rw [input7149_def, output7149_def]
  kernel_rfl

theorem node7150_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7150 value3580 value1 value2 = (output7150, value3581, value1) := by
  rw [input7150_def, output7150_def]
  kernel_rfl

theorem node7151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7151 value3581 value1 value2 = (output7151, value5, value1) := by
  rw [input7151_def, output7151_def]
  kernel_rfl

theorem node7152_cond_eq
    (child7150 : Flapjack.WordAlloc.removeDeadStructural input7150 value3580 value1 value2 = (output7150, value3581, value1))
    (child7151 : Flapjack.WordAlloc.removeDeadStructural input7151 value3581 value1 value2 = (output7151, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7152 value3580 value1 value2 = (output7152, value5, value1) := by
  rw [input7152_def, output7152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7150]
  dsimp only
  rw [child7151]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7150_skip, output7151_skip]
  kernel_rfl

theorem node7153_cond_eq
    (child7149 : Flapjack.WordAlloc.removeDeadStructural input7149 value3579 value1 value2 = (output7149, value3580, value1))
    (child7152 : Flapjack.WordAlloc.removeDeadStructural input7152 value3580 value1 value2 = (output7152, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7153 value3579 value1 value2 = (output7153, value5, value1) := by
  rw [input7153_def, output7153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7149]
  dsimp only
  rw [child7152]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7149_skip, output7152_skip]
  kernel_rfl

theorem node7154_cond_eq
    (child7148 : Flapjack.WordAlloc.removeDeadStructural input7148 value3578 value1 value2 = (output7148, value3579, value1))
    (child7153 : Flapjack.WordAlloc.removeDeadStructural input7153 value3579 value1 value2 = (output7153, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7154 value3578 value1 value2 = (output7154, value5, value1) := by
  rw [input7154_def, output7154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7148]
  dsimp only
  rw [child7153]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7148_skip, output7153_skip]
  kernel_rfl

theorem node7155_cond_eq
    (child7147 : Flapjack.WordAlloc.removeDeadStructural input7147 value3576 value1 value2 = (output7147, value3578, value1))
    (child7154 : Flapjack.WordAlloc.removeDeadStructural input7154 value3578 value1 value2 = (output7154, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7155 value3576 value1 value2 = (output7155, value5, value1) := by
  rw [input7155_def, output7155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7147]
  dsimp only
  rw [child7154]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7147_skip, output7154_skip]
  kernel_rfl

theorem node7156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7156 value5 value1 value2 = (output7156, value3582, value1) := by
  rw [input7156_def, output7156_def]
  kernel_rfl

theorem node7157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7157 value3582 value1 value2 = (output7157, value3583, value1) := by
  rw [input7157_def, output7157_def]
  kernel_rfl

theorem node7158_cond_eq
    (child7156 : Flapjack.WordAlloc.removeDeadStructural input7156 value5 value1 value2 = (output7156, value3582, value1))
    (child7157 : Flapjack.WordAlloc.removeDeadStructural input7157 value3582 value1 value2 = (output7157, value3583, value1)) : Flapjack.WordAlloc.removeDeadStructural input7158 value5 value1 value2 = (output7158, value3583, value1) := by
  rw [input7158_def, output7158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7156]
  dsimp only
  rw [child7157]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7156_skip, output7157_skip]
  kernel_rfl

theorem node7159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7159 value3583 value1 value2 = (output7159, value3584, value1) := by
  rw [input7159_def, output7159_def]
  kernel_rfl

theorem node7160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7160 value3584 value1 value2 = (output7160, value3584, value1) := by
  rw [input7160_def, output7160_def]
  kernel_rfl

theorem node7161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7161 value3584 value1 value2 = (output7161, value3585, value1) := by
  rw [input7161_def, output7161_def]
  kernel_rfl

theorem node7162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7162 value3585 value1 value2 = (output7162, value3586, value1) := by
  rw [input7162_def, output7162_def]
  kernel_rfl

theorem node7163_cond_eq
    (child7161 : Flapjack.WordAlloc.removeDeadStructural input7161 value3584 value1 value2 = (output7161, value3585, value1))
    (child7162 : Flapjack.WordAlloc.removeDeadStructural input7162 value3585 value1 value2 = (output7162, value3586, value1)) : Flapjack.WordAlloc.removeDeadStructural input7163 value3584 value1 value2 = (output7163, value3586, value1) := by
  rw [input7163_def, output7163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7161]
  dsimp only
  rw [child7162]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7161_skip, output7162_skip]
  kernel_rfl

theorem node7164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7164 value3586 value1 value2 = (output7164, value3587, value1) := by
  rw [input7164_def, output7164_def]
  kernel_rfl

theorem node7165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7165 value3587 value1 value2 = (output7165, value3588, value1) := by
  rw [input7165_def, output7165_def]
  kernel_rfl

theorem node7166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7166 value3588 value1 value2 = (output7166, value3589, value1) := by
  rw [input7166_def, output7166_def]
  kernel_rfl

theorem node7167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7167 value3589 value1 value2 = (output7167, value5, value1) := by
  rw [input7167_def, output7167_def]
  kernel_rfl

#print axioms node7167_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
