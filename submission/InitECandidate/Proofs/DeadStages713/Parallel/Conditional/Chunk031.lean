import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk031
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node7936_cond_eq
    (child7934 : Flapjack.WordAlloc.removeDeadStructural input7934 value3972 value1 value2 = (output7934, value3973, value1))
    (child7935 : Flapjack.WordAlloc.removeDeadStructural input7935 value3973 value1 value2 = (output7935, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7936 value3972 value1 value2 = (output7936, value5, value1) := by
  rw [input7936_def, output7936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7934]
  dsimp only
  rw [child7935]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7934_skip, output7935_skip]
  kernel_rfl

theorem node7937_cond_eq
    (child7933 : Flapjack.WordAlloc.removeDeadStructural input7933 value3971 value1 value2 = (output7933, value3972, value1))
    (child7936 : Flapjack.WordAlloc.removeDeadStructural input7936 value3972 value1 value2 = (output7936, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7937 value3971 value1 value2 = (output7937, value5, value1) := by
  rw [input7937_def, output7937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7933]
  dsimp only
  rw [child7936]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7933_skip, output7936_skip]
  kernel_rfl

theorem node7938_cond_eq
    (child7932 : Flapjack.WordAlloc.removeDeadStructural input7932 value3970 value1 value2 = (output7932, value3971, value1))
    (child7937 : Flapjack.WordAlloc.removeDeadStructural input7937 value3971 value1 value2 = (output7937, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7938 value3970 value1 value2 = (output7938, value5, value1) := by
  rw [input7938_def, output7938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7932]
  dsimp only
  rw [child7937]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7932_skip, output7937_skip]
  kernel_rfl

theorem node7939_cond_eq
    (child7931 : Flapjack.WordAlloc.removeDeadStructural input7931 value3968 value1 value2 = (output7931, value3970, value1))
    (child7938 : Flapjack.WordAlloc.removeDeadStructural input7938 value3970 value1 value2 = (output7938, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7939 value3968 value1 value2 = (output7939, value5, value1) := by
  rw [input7939_def, output7939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7931]
  dsimp only
  rw [child7938]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7931_skip, output7938_skip]
  kernel_rfl

theorem node7940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7940 value5 value1 value2 = (output7940, value3974, value1) := by
  rw [input7940_def, output7940_def]
  kernel_rfl

theorem node7941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7941 value3974 value1 value2 = (output7941, value3975, value1) := by
  rw [input7941_def, output7941_def]
  kernel_rfl

theorem node7942_cond_eq
    (child7940 : Flapjack.WordAlloc.removeDeadStructural input7940 value5 value1 value2 = (output7940, value3974, value1))
    (child7941 : Flapjack.WordAlloc.removeDeadStructural input7941 value3974 value1 value2 = (output7941, value3975, value1)) : Flapjack.WordAlloc.removeDeadStructural input7942 value5 value1 value2 = (output7942, value3975, value1) := by
  rw [input7942_def, output7942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7940]
  dsimp only
  rw [child7941]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7940_skip, output7941_skip]
  kernel_rfl

theorem node7943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7943 value3975 value1 value2 = (output7943, value3976, value1) := by
  rw [input7943_def, output7943_def]
  kernel_rfl

theorem node7944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7944 value3976 value1 value2 = (output7944, value3976, value1) := by
  rw [input7944_def, output7944_def]
  kernel_rfl

theorem node7945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7945 value3976 value1 value2 = (output7945, value3977, value1) := by
  rw [input7945_def, output7945_def]
  kernel_rfl

theorem node7946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7946 value3977 value1 value2 = (output7946, value3978, value1) := by
  rw [input7946_def, output7946_def]
  kernel_rfl

theorem node7947_cond_eq
    (child7945 : Flapjack.WordAlloc.removeDeadStructural input7945 value3976 value1 value2 = (output7945, value3977, value1))
    (child7946 : Flapjack.WordAlloc.removeDeadStructural input7946 value3977 value1 value2 = (output7946, value3978, value1)) : Flapjack.WordAlloc.removeDeadStructural input7947 value3976 value1 value2 = (output7947, value3978, value1) := by
  rw [input7947_def, output7947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7945]
  dsimp only
  rw [child7946]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7945_skip, output7946_skip]
  kernel_rfl

theorem node7948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7948 value3978 value1 value2 = (output7948, value3979, value1) := by
  rw [input7948_def, output7948_def]
  kernel_rfl

theorem node7949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7949 value3979 value1 value2 = (output7949, value3980, value1) := by
  rw [input7949_def, output7949_def]
  kernel_rfl

theorem node7950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7950 value3980 value1 value2 = (output7950, value3981, value1) := by
  rw [input7950_def, output7950_def]
  kernel_rfl

theorem node7951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7951 value3981 value1 value2 = (output7951, value5, value1) := by
  rw [input7951_def, output7951_def]
  kernel_rfl

theorem node7952_cond_eq
    (child7950 : Flapjack.WordAlloc.removeDeadStructural input7950 value3980 value1 value2 = (output7950, value3981, value1))
    (child7951 : Flapjack.WordAlloc.removeDeadStructural input7951 value3981 value1 value2 = (output7951, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7952 value3980 value1 value2 = (output7952, value5, value1) := by
  rw [input7952_def, output7952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7950]
  dsimp only
  rw [child7951]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7950_skip, output7951_skip]
  kernel_rfl

theorem node7953_cond_eq
    (child7949 : Flapjack.WordAlloc.removeDeadStructural input7949 value3979 value1 value2 = (output7949, value3980, value1))
    (child7952 : Flapjack.WordAlloc.removeDeadStructural input7952 value3980 value1 value2 = (output7952, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7953 value3979 value1 value2 = (output7953, value5, value1) := by
  rw [input7953_def, output7953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7949]
  dsimp only
  rw [child7952]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7949_skip, output7952_skip]
  kernel_rfl

theorem node7954_cond_eq
    (child7948 : Flapjack.WordAlloc.removeDeadStructural input7948 value3978 value1 value2 = (output7948, value3979, value1))
    (child7953 : Flapjack.WordAlloc.removeDeadStructural input7953 value3979 value1 value2 = (output7953, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7954 value3978 value1 value2 = (output7954, value5, value1) := by
  rw [input7954_def, output7954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7948]
  dsimp only
  rw [child7953]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7948_skip, output7953_skip]
  kernel_rfl

theorem node7955_cond_eq
    (child7947 : Flapjack.WordAlloc.removeDeadStructural input7947 value3976 value1 value2 = (output7947, value3978, value1))
    (child7954 : Flapjack.WordAlloc.removeDeadStructural input7954 value3978 value1 value2 = (output7954, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7955 value3976 value1 value2 = (output7955, value5, value1) := by
  rw [input7955_def, output7955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7947]
  dsimp only
  rw [child7954]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7947_skip, output7954_skip]
  kernel_rfl

theorem node7956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7956 value5 value1 value2 = (output7956, value3982, value1) := by
  rw [input7956_def, output7956_def]
  kernel_rfl

theorem node7957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7957 value3982 value1 value2 = (output7957, value3983, value1) := by
  rw [input7957_def, output7957_def]
  kernel_rfl

theorem node7958_cond_eq
    (child7956 : Flapjack.WordAlloc.removeDeadStructural input7956 value5 value1 value2 = (output7956, value3982, value1))
    (child7957 : Flapjack.WordAlloc.removeDeadStructural input7957 value3982 value1 value2 = (output7957, value3983, value1)) : Flapjack.WordAlloc.removeDeadStructural input7958 value5 value1 value2 = (output7958, value3983, value1) := by
  rw [input7958_def, output7958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7956]
  dsimp only
  rw [child7957]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7956_skip, output7957_skip]
  kernel_rfl

theorem node7959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7959 value3983 value1 value2 = (output7959, value3984, value1) := by
  rw [input7959_def, output7959_def]
  kernel_rfl

theorem node7960_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7960 value3984 value1 value2 = (output7960, value3984, value1) := by
  rw [input7960_def, output7960_def]
  kernel_rfl

theorem node7961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7961 value3984 value1 value2 = (output7961, value3985, value1) := by
  rw [input7961_def, output7961_def]
  kernel_rfl

theorem node7962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7962 value3985 value1 value2 = (output7962, value3986, value1) := by
  rw [input7962_def, output7962_def]
  kernel_rfl

theorem node7963_cond_eq
    (child7961 : Flapjack.WordAlloc.removeDeadStructural input7961 value3984 value1 value2 = (output7961, value3985, value1))
    (child7962 : Flapjack.WordAlloc.removeDeadStructural input7962 value3985 value1 value2 = (output7962, value3986, value1)) : Flapjack.WordAlloc.removeDeadStructural input7963 value3984 value1 value2 = (output7963, value3986, value1) := by
  rw [input7963_def, output7963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7961]
  dsimp only
  rw [child7962]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7961_skip, output7962_skip]
  kernel_rfl

theorem node7964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7964 value3986 value1 value2 = (output7964, value3987, value1) := by
  rw [input7964_def, output7964_def]
  kernel_rfl

theorem node7965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7965 value3987 value1 value2 = (output7965, value3988, value1) := by
  rw [input7965_def, output7965_def]
  kernel_rfl

theorem node7966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7966 value3988 value1 value2 = (output7966, value3989, value1) := by
  rw [input7966_def, output7966_def]
  kernel_rfl

theorem node7967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7967 value3989 value1 value2 = (output7967, value5, value1) := by
  rw [input7967_def, output7967_def]
  kernel_rfl

theorem node7968_cond_eq
    (child7966 : Flapjack.WordAlloc.removeDeadStructural input7966 value3988 value1 value2 = (output7966, value3989, value1))
    (child7967 : Flapjack.WordAlloc.removeDeadStructural input7967 value3989 value1 value2 = (output7967, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7968 value3988 value1 value2 = (output7968, value5, value1) := by
  rw [input7968_def, output7968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7966]
  dsimp only
  rw [child7967]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7966_skip, output7967_skip]
  kernel_rfl

theorem node7969_cond_eq
    (child7965 : Flapjack.WordAlloc.removeDeadStructural input7965 value3987 value1 value2 = (output7965, value3988, value1))
    (child7968 : Flapjack.WordAlloc.removeDeadStructural input7968 value3988 value1 value2 = (output7968, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7969 value3987 value1 value2 = (output7969, value5, value1) := by
  rw [input7969_def, output7969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7965]
  dsimp only
  rw [child7968]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7965_skip, output7968_skip]
  kernel_rfl

theorem node7970_cond_eq
    (child7964 : Flapjack.WordAlloc.removeDeadStructural input7964 value3986 value1 value2 = (output7964, value3987, value1))
    (child7969 : Flapjack.WordAlloc.removeDeadStructural input7969 value3987 value1 value2 = (output7969, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7970 value3986 value1 value2 = (output7970, value5, value1) := by
  rw [input7970_def, output7970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7964]
  dsimp only
  rw [child7969]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7964_skip, output7969_skip]
  kernel_rfl

theorem node7971_cond_eq
    (child7963 : Flapjack.WordAlloc.removeDeadStructural input7963 value3984 value1 value2 = (output7963, value3986, value1))
    (child7970 : Flapjack.WordAlloc.removeDeadStructural input7970 value3986 value1 value2 = (output7970, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7971 value3984 value1 value2 = (output7971, value5, value1) := by
  rw [input7971_def, output7971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7963]
  dsimp only
  rw [child7970]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7963_skip, output7970_skip]
  kernel_rfl

theorem node7972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7972 value5 value1 value2 = (output7972, value3990, value1) := by
  rw [input7972_def, output7972_def]
  kernel_rfl

theorem node7973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7973 value3990 value1 value2 = (output7973, value3991, value1) := by
  rw [input7973_def, output7973_def]
  kernel_rfl

theorem node7974_cond_eq
    (child7972 : Flapjack.WordAlloc.removeDeadStructural input7972 value5 value1 value2 = (output7972, value3990, value1))
    (child7973 : Flapjack.WordAlloc.removeDeadStructural input7973 value3990 value1 value2 = (output7973, value3991, value1)) : Flapjack.WordAlloc.removeDeadStructural input7974 value5 value1 value2 = (output7974, value3991, value1) := by
  rw [input7974_def, output7974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7972]
  dsimp only
  rw [child7973]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7972_skip, output7973_skip]
  kernel_rfl

theorem node7975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7975 value3991 value1 value2 = (output7975, value3992, value1) := by
  rw [input7975_def, output7975_def]
  kernel_rfl

theorem node7976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7976 value3992 value1 value2 = (output7976, value3992, value1) := by
  rw [input7976_def, output7976_def]
  kernel_rfl

theorem node7977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7977 value3992 value1 value2 = (output7977, value3993, value1) := by
  rw [input7977_def, output7977_def]
  kernel_rfl

theorem node7978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7978 value3993 value1 value2 = (output7978, value3994, value1) := by
  rw [input7978_def, output7978_def]
  kernel_rfl

theorem node7979_cond_eq
    (child7977 : Flapjack.WordAlloc.removeDeadStructural input7977 value3992 value1 value2 = (output7977, value3993, value1))
    (child7978 : Flapjack.WordAlloc.removeDeadStructural input7978 value3993 value1 value2 = (output7978, value3994, value1)) : Flapjack.WordAlloc.removeDeadStructural input7979 value3992 value1 value2 = (output7979, value3994, value1) := by
  rw [input7979_def, output7979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7977]
  dsimp only
  rw [child7978]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7977_skip, output7978_skip]
  kernel_rfl

theorem node7980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7980 value3994 value1 value2 = (output7980, value3995, value1) := by
  rw [input7980_def, output7980_def]
  kernel_rfl

theorem node7981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7981 value3995 value1 value2 = (output7981, value3996, value1) := by
  rw [input7981_def, output7981_def]
  kernel_rfl

theorem node7982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7982 value3996 value1 value2 = (output7982, value3997, value1) := by
  rw [input7982_def, output7982_def]
  kernel_rfl

theorem node7983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7983 value3997 value1 value2 = (output7983, value5, value1) := by
  rw [input7983_def, output7983_def]
  kernel_rfl

theorem node7984_cond_eq
    (child7982 : Flapjack.WordAlloc.removeDeadStructural input7982 value3996 value1 value2 = (output7982, value3997, value1))
    (child7983 : Flapjack.WordAlloc.removeDeadStructural input7983 value3997 value1 value2 = (output7983, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7984 value3996 value1 value2 = (output7984, value5, value1) := by
  rw [input7984_def, output7984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7982]
  dsimp only
  rw [child7983]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7982_skip, output7983_skip]
  kernel_rfl

theorem node7985_cond_eq
    (child7981 : Flapjack.WordAlloc.removeDeadStructural input7981 value3995 value1 value2 = (output7981, value3996, value1))
    (child7984 : Flapjack.WordAlloc.removeDeadStructural input7984 value3996 value1 value2 = (output7984, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7985 value3995 value1 value2 = (output7985, value5, value1) := by
  rw [input7985_def, output7985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7981]
  dsimp only
  rw [child7984]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7981_skip, output7984_skip]
  kernel_rfl

theorem node7986_cond_eq
    (child7980 : Flapjack.WordAlloc.removeDeadStructural input7980 value3994 value1 value2 = (output7980, value3995, value1))
    (child7985 : Flapjack.WordAlloc.removeDeadStructural input7985 value3995 value1 value2 = (output7985, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7986 value3994 value1 value2 = (output7986, value5, value1) := by
  rw [input7986_def, output7986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7980]
  dsimp only
  rw [child7985]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7980_skip, output7985_skip]
  kernel_rfl

theorem node7987_cond_eq
    (child7979 : Flapjack.WordAlloc.removeDeadStructural input7979 value3992 value1 value2 = (output7979, value3994, value1))
    (child7986 : Flapjack.WordAlloc.removeDeadStructural input7986 value3994 value1 value2 = (output7986, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7987 value3992 value1 value2 = (output7987, value5, value1) := by
  rw [input7987_def, output7987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7979]
  dsimp only
  rw [child7986]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7979_skip, output7986_skip]
  kernel_rfl

theorem node7988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7988 value5 value1 value2 = (output7988, value3998, value1) := by
  rw [input7988_def, output7988_def]
  kernel_rfl

theorem node7989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7989 value3998 value1 value2 = (output7989, value3999, value1) := by
  rw [input7989_def, output7989_def]
  kernel_rfl

theorem node7990_cond_eq
    (child7988 : Flapjack.WordAlloc.removeDeadStructural input7988 value5 value1 value2 = (output7988, value3998, value1))
    (child7989 : Flapjack.WordAlloc.removeDeadStructural input7989 value3998 value1 value2 = (output7989, value3999, value1)) : Flapjack.WordAlloc.removeDeadStructural input7990 value5 value1 value2 = (output7990, value3999, value1) := by
  rw [input7990_def, output7990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7988]
  dsimp only
  rw [child7989]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7988_skip, output7989_skip]
  kernel_rfl

theorem node7991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7991 value3999 value1 value2 = (output7991, value4000, value1) := by
  rw [input7991_def, output7991_def]
  kernel_rfl

theorem node7992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7992 value4000 value1 value2 = (output7992, value4000, value1) := by
  rw [input7992_def, output7992_def]
  kernel_rfl

theorem node7993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7993 value4000 value1 value2 = (output7993, value4001, value1) := by
  rw [input7993_def, output7993_def]
  kernel_rfl

theorem node7994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7994 value4001 value1 value2 = (output7994, value4002, value1) := by
  rw [input7994_def, output7994_def]
  kernel_rfl

theorem node7995_cond_eq
    (child7993 : Flapjack.WordAlloc.removeDeadStructural input7993 value4000 value1 value2 = (output7993, value4001, value1))
    (child7994 : Flapjack.WordAlloc.removeDeadStructural input7994 value4001 value1 value2 = (output7994, value4002, value1)) : Flapjack.WordAlloc.removeDeadStructural input7995 value4000 value1 value2 = (output7995, value4002, value1) := by
  rw [input7995_def, output7995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7993]
  dsimp only
  rw [child7994]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7993_skip, output7994_skip]
  kernel_rfl

theorem node7996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7996 value4002 value1 value2 = (output7996, value4003, value1) := by
  rw [input7996_def, output7996_def]
  kernel_rfl

theorem node7997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7997 value4003 value1 value2 = (output7997, value4004, value1) := by
  rw [input7997_def, output7997_def]
  kernel_rfl

theorem node7998_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7998 value4004 value1 value2 = (output7998, value4005, value1) := by
  rw [input7998_def, output7998_def]
  kernel_rfl

theorem node7999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7999 value4005 value1 value2 = (output7999, value5, value1) := by
  rw [input7999_def, output7999_def]
  kernel_rfl

theorem node8000_cond_eq
    (child7998 : Flapjack.WordAlloc.removeDeadStructural input7998 value4004 value1 value2 = (output7998, value4005, value1))
    (child7999 : Flapjack.WordAlloc.removeDeadStructural input7999 value4005 value1 value2 = (output7999, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8000 value4004 value1 value2 = (output8000, value5, value1) := by
  rw [input8000_def, output8000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7998]
  dsimp only
  rw [child7999]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7998_skip, output7999_skip]
  kernel_rfl

theorem node8001_cond_eq
    (child7997 : Flapjack.WordAlloc.removeDeadStructural input7997 value4003 value1 value2 = (output7997, value4004, value1))
    (child8000 : Flapjack.WordAlloc.removeDeadStructural input8000 value4004 value1 value2 = (output8000, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8001 value4003 value1 value2 = (output8001, value5, value1) := by
  rw [input8001_def, output8001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7997]
  dsimp only
  rw [child8000]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7997_skip, output8000_skip]
  kernel_rfl

theorem node8002_cond_eq
    (child7996 : Flapjack.WordAlloc.removeDeadStructural input7996 value4002 value1 value2 = (output7996, value4003, value1))
    (child8001 : Flapjack.WordAlloc.removeDeadStructural input8001 value4003 value1 value2 = (output8001, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8002 value4002 value1 value2 = (output8002, value5, value1) := by
  rw [input8002_def, output8002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7996]
  dsimp only
  rw [child8001]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7996_skip, output8001_skip]
  kernel_rfl

theorem node8003_cond_eq
    (child7995 : Flapjack.WordAlloc.removeDeadStructural input7995 value4000 value1 value2 = (output7995, value4002, value1))
    (child8002 : Flapjack.WordAlloc.removeDeadStructural input8002 value4002 value1 value2 = (output8002, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8003 value4000 value1 value2 = (output8003, value5, value1) := by
  rw [input8003_def, output8003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7995]
  dsimp only
  rw [child8002]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7995_skip, output8002_skip]
  kernel_rfl

theorem node8004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8004 value5 value1 value2 = (output8004, value4006, value1) := by
  rw [input8004_def, output8004_def]
  kernel_rfl

theorem node8005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8005 value4006 value1 value2 = (output8005, value4007, value1) := by
  rw [input8005_def, output8005_def]
  kernel_rfl

theorem node8006_cond_eq
    (child8004 : Flapjack.WordAlloc.removeDeadStructural input8004 value5 value1 value2 = (output8004, value4006, value1))
    (child8005 : Flapjack.WordAlloc.removeDeadStructural input8005 value4006 value1 value2 = (output8005, value4007, value1)) : Flapjack.WordAlloc.removeDeadStructural input8006 value5 value1 value2 = (output8006, value4007, value1) := by
  rw [input8006_def, output8006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8004]
  dsimp only
  rw [child8005]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8004_skip, output8005_skip]
  kernel_rfl

theorem node8007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8007 value4007 value1 value2 = (output8007, value4008, value1) := by
  rw [input8007_def, output8007_def]
  kernel_rfl

theorem node8008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8008 value4008 value1 value2 = (output8008, value4008, value1) := by
  rw [input8008_def, output8008_def]
  kernel_rfl

theorem node8009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8009 value4008 value1 value2 = (output8009, value4009, value1) := by
  rw [input8009_def, output8009_def]
  kernel_rfl

theorem node8010_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8010 value4009 value1 value2 = (output8010, value4010, value1) := by
  rw [input8010_def, output8010_def]
  kernel_rfl

theorem node8011_cond_eq
    (child8009 : Flapjack.WordAlloc.removeDeadStructural input8009 value4008 value1 value2 = (output8009, value4009, value1))
    (child8010 : Flapjack.WordAlloc.removeDeadStructural input8010 value4009 value1 value2 = (output8010, value4010, value1)) : Flapjack.WordAlloc.removeDeadStructural input8011 value4008 value1 value2 = (output8011, value4010, value1) := by
  rw [input8011_def, output8011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8009]
  dsimp only
  rw [child8010]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8009_skip, output8010_skip]
  kernel_rfl

theorem node8012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8012 value4010 value1 value2 = (output8012, value4011, value1) := by
  rw [input8012_def, output8012_def]
  kernel_rfl

theorem node8013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8013 value4011 value1 value2 = (output8013, value4012, value1) := by
  rw [input8013_def, output8013_def]
  kernel_rfl

theorem node8014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8014 value4012 value1 value2 = (output8014, value4013, value1) := by
  rw [input8014_def, output8014_def]
  kernel_rfl

theorem node8015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8015 value4013 value1 value2 = (output8015, value5, value1) := by
  rw [input8015_def, output8015_def]
  kernel_rfl

theorem node8016_cond_eq
    (child8014 : Flapjack.WordAlloc.removeDeadStructural input8014 value4012 value1 value2 = (output8014, value4013, value1))
    (child8015 : Flapjack.WordAlloc.removeDeadStructural input8015 value4013 value1 value2 = (output8015, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8016 value4012 value1 value2 = (output8016, value5, value1) := by
  rw [input8016_def, output8016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8014]
  dsimp only
  rw [child8015]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8014_skip, output8015_skip]
  kernel_rfl

theorem node8017_cond_eq
    (child8013 : Flapjack.WordAlloc.removeDeadStructural input8013 value4011 value1 value2 = (output8013, value4012, value1))
    (child8016 : Flapjack.WordAlloc.removeDeadStructural input8016 value4012 value1 value2 = (output8016, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8017 value4011 value1 value2 = (output8017, value5, value1) := by
  rw [input8017_def, output8017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8013]
  dsimp only
  rw [child8016]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8013_skip, output8016_skip]
  kernel_rfl

theorem node8018_cond_eq
    (child8012 : Flapjack.WordAlloc.removeDeadStructural input8012 value4010 value1 value2 = (output8012, value4011, value1))
    (child8017 : Flapjack.WordAlloc.removeDeadStructural input8017 value4011 value1 value2 = (output8017, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8018 value4010 value1 value2 = (output8018, value5, value1) := by
  rw [input8018_def, output8018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8012]
  dsimp only
  rw [child8017]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8012_skip, output8017_skip]
  kernel_rfl

theorem node8019_cond_eq
    (child8011 : Flapjack.WordAlloc.removeDeadStructural input8011 value4008 value1 value2 = (output8011, value4010, value1))
    (child8018 : Flapjack.WordAlloc.removeDeadStructural input8018 value4010 value1 value2 = (output8018, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8019 value4008 value1 value2 = (output8019, value5, value1) := by
  rw [input8019_def, output8019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8011]
  dsimp only
  rw [child8018]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8011_skip, output8018_skip]
  kernel_rfl

theorem node8020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8020 value5 value1 value2 = (output8020, value4014, value1) := by
  rw [input8020_def, output8020_def]
  kernel_rfl

theorem node8021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8021 value4014 value1 value2 = (output8021, value4015, value1) := by
  rw [input8021_def, output8021_def]
  kernel_rfl

theorem node8022_cond_eq
    (child8020 : Flapjack.WordAlloc.removeDeadStructural input8020 value5 value1 value2 = (output8020, value4014, value1))
    (child8021 : Flapjack.WordAlloc.removeDeadStructural input8021 value4014 value1 value2 = (output8021, value4015, value1)) : Flapjack.WordAlloc.removeDeadStructural input8022 value5 value1 value2 = (output8022, value4015, value1) := by
  rw [input8022_def, output8022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8020]
  dsimp only
  rw [child8021]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8020_skip, output8021_skip]
  kernel_rfl

theorem node8023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8023 value4015 value1 value2 = (output8023, value4016, value1) := by
  rw [input8023_def, output8023_def]
  kernel_rfl

theorem node8024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8024 value4016 value1 value2 = (output8024, value4016, value1) := by
  rw [input8024_def, output8024_def]
  kernel_rfl

theorem node8025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8025 value4016 value1 value2 = (output8025, value4017, value1) := by
  rw [input8025_def, output8025_def]
  kernel_rfl

theorem node8026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8026 value4017 value1 value2 = (output8026, value4018, value1) := by
  rw [input8026_def, output8026_def]
  kernel_rfl

theorem node8027_cond_eq
    (child8025 : Flapjack.WordAlloc.removeDeadStructural input8025 value4016 value1 value2 = (output8025, value4017, value1))
    (child8026 : Flapjack.WordAlloc.removeDeadStructural input8026 value4017 value1 value2 = (output8026, value4018, value1)) : Flapjack.WordAlloc.removeDeadStructural input8027 value4016 value1 value2 = (output8027, value4018, value1) := by
  rw [input8027_def, output8027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8025]
  dsimp only
  rw [child8026]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8025_skip, output8026_skip]
  kernel_rfl

theorem node8028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8028 value4018 value1 value2 = (output8028, value4019, value1) := by
  rw [input8028_def, output8028_def]
  kernel_rfl

theorem node8029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8029 value4019 value1 value2 = (output8029, value4020, value1) := by
  rw [input8029_def, output8029_def]
  kernel_rfl

theorem node8030_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8030 value4020 value1 value2 = (output8030, value4021, value1) := by
  rw [input8030_def, output8030_def]
  kernel_rfl

theorem node8031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8031 value4021 value1 value2 = (output8031, value5, value1) := by
  rw [input8031_def, output8031_def]
  kernel_rfl

theorem node8032_cond_eq
    (child8030 : Flapjack.WordAlloc.removeDeadStructural input8030 value4020 value1 value2 = (output8030, value4021, value1))
    (child8031 : Flapjack.WordAlloc.removeDeadStructural input8031 value4021 value1 value2 = (output8031, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8032 value4020 value1 value2 = (output8032, value5, value1) := by
  rw [input8032_def, output8032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8030]
  dsimp only
  rw [child8031]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8030_skip, output8031_skip]
  kernel_rfl

theorem node8033_cond_eq
    (child8029 : Flapjack.WordAlloc.removeDeadStructural input8029 value4019 value1 value2 = (output8029, value4020, value1))
    (child8032 : Flapjack.WordAlloc.removeDeadStructural input8032 value4020 value1 value2 = (output8032, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8033 value4019 value1 value2 = (output8033, value5, value1) := by
  rw [input8033_def, output8033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8029]
  dsimp only
  rw [child8032]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8029_skip, output8032_skip]
  kernel_rfl

theorem node8034_cond_eq
    (child8028 : Flapjack.WordAlloc.removeDeadStructural input8028 value4018 value1 value2 = (output8028, value4019, value1))
    (child8033 : Flapjack.WordAlloc.removeDeadStructural input8033 value4019 value1 value2 = (output8033, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8034 value4018 value1 value2 = (output8034, value5, value1) := by
  rw [input8034_def, output8034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8028]
  dsimp only
  rw [child8033]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8028_skip, output8033_skip]
  kernel_rfl

theorem node8035_cond_eq
    (child8027 : Flapjack.WordAlloc.removeDeadStructural input8027 value4016 value1 value2 = (output8027, value4018, value1))
    (child8034 : Flapjack.WordAlloc.removeDeadStructural input8034 value4018 value1 value2 = (output8034, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8035 value4016 value1 value2 = (output8035, value5, value1) := by
  rw [input8035_def, output8035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8027]
  dsimp only
  rw [child8034]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8027_skip, output8034_skip]
  kernel_rfl

theorem node8036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8036 value5 value1 value2 = (output8036, value4022, value1) := by
  rw [input8036_def, output8036_def]
  kernel_rfl

theorem node8037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8037 value4022 value1 value2 = (output8037, value4023, value1) := by
  rw [input8037_def, output8037_def]
  kernel_rfl

theorem node8038_cond_eq
    (child8036 : Flapjack.WordAlloc.removeDeadStructural input8036 value5 value1 value2 = (output8036, value4022, value1))
    (child8037 : Flapjack.WordAlloc.removeDeadStructural input8037 value4022 value1 value2 = (output8037, value4023, value1)) : Flapjack.WordAlloc.removeDeadStructural input8038 value5 value1 value2 = (output8038, value4023, value1) := by
  rw [input8038_def, output8038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8036]
  dsimp only
  rw [child8037]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8036_skip, output8037_skip]
  kernel_rfl

theorem node8039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8039 value4023 value1 value2 = (output8039, value4024, value1) := by
  rw [input8039_def, output8039_def]
  kernel_rfl

theorem node8040_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8040 value4024 value1 value2 = (output8040, value4024, value1) := by
  rw [input8040_def, output8040_def]
  kernel_rfl

theorem node8041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8041 value4024 value1 value2 = (output8041, value4025, value1) := by
  rw [input8041_def, output8041_def]
  kernel_rfl

theorem node8042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8042 value4025 value1 value2 = (output8042, value4026, value1) := by
  rw [input8042_def, output8042_def]
  kernel_rfl

theorem node8043_cond_eq
    (child8041 : Flapjack.WordAlloc.removeDeadStructural input8041 value4024 value1 value2 = (output8041, value4025, value1))
    (child8042 : Flapjack.WordAlloc.removeDeadStructural input8042 value4025 value1 value2 = (output8042, value4026, value1)) : Flapjack.WordAlloc.removeDeadStructural input8043 value4024 value1 value2 = (output8043, value4026, value1) := by
  rw [input8043_def, output8043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8041]
  dsimp only
  rw [child8042]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8041_skip, output8042_skip]
  kernel_rfl

theorem node8044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8044 value4026 value1 value2 = (output8044, value4027, value1) := by
  rw [input8044_def, output8044_def]
  kernel_rfl

theorem node8045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8045 value4027 value1 value2 = (output8045, value4028, value1) := by
  rw [input8045_def, output8045_def]
  kernel_rfl

theorem node8046_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8046 value4028 value1 value2 = (output8046, value4029, value1) := by
  rw [input8046_def, output8046_def]
  kernel_rfl

theorem node8047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8047 value4029 value1 value2 = (output8047, value5, value1) := by
  rw [input8047_def, output8047_def]
  kernel_rfl

theorem node8048_cond_eq
    (child8046 : Flapjack.WordAlloc.removeDeadStructural input8046 value4028 value1 value2 = (output8046, value4029, value1))
    (child8047 : Flapjack.WordAlloc.removeDeadStructural input8047 value4029 value1 value2 = (output8047, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8048 value4028 value1 value2 = (output8048, value5, value1) := by
  rw [input8048_def, output8048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8046]
  dsimp only
  rw [child8047]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8046_skip, output8047_skip]
  kernel_rfl

theorem node8049_cond_eq
    (child8045 : Flapjack.WordAlloc.removeDeadStructural input8045 value4027 value1 value2 = (output8045, value4028, value1))
    (child8048 : Flapjack.WordAlloc.removeDeadStructural input8048 value4028 value1 value2 = (output8048, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8049 value4027 value1 value2 = (output8049, value5, value1) := by
  rw [input8049_def, output8049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8045]
  dsimp only
  rw [child8048]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8045_skip, output8048_skip]
  kernel_rfl

theorem node8050_cond_eq
    (child8044 : Flapjack.WordAlloc.removeDeadStructural input8044 value4026 value1 value2 = (output8044, value4027, value1))
    (child8049 : Flapjack.WordAlloc.removeDeadStructural input8049 value4027 value1 value2 = (output8049, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8050 value4026 value1 value2 = (output8050, value5, value1) := by
  rw [input8050_def, output8050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8044]
  dsimp only
  rw [child8049]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8044_skip, output8049_skip]
  kernel_rfl

theorem node8051_cond_eq
    (child8043 : Flapjack.WordAlloc.removeDeadStructural input8043 value4024 value1 value2 = (output8043, value4026, value1))
    (child8050 : Flapjack.WordAlloc.removeDeadStructural input8050 value4026 value1 value2 = (output8050, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8051 value4024 value1 value2 = (output8051, value5, value1) := by
  rw [input8051_def, output8051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8043]
  dsimp only
  rw [child8050]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8043_skip, output8050_skip]
  kernel_rfl

theorem node8052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8052 value5 value1 value2 = (output8052, value4030, value1) := by
  rw [input8052_def, output8052_def]
  kernel_rfl

theorem node8053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8053 value4030 value1 value2 = (output8053, value4031, value1) := by
  rw [input8053_def, output8053_def]
  kernel_rfl

theorem node8054_cond_eq
    (child8052 : Flapjack.WordAlloc.removeDeadStructural input8052 value5 value1 value2 = (output8052, value4030, value1))
    (child8053 : Flapjack.WordAlloc.removeDeadStructural input8053 value4030 value1 value2 = (output8053, value4031, value1)) : Flapjack.WordAlloc.removeDeadStructural input8054 value5 value1 value2 = (output8054, value4031, value1) := by
  rw [input8054_def, output8054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8052]
  dsimp only
  rw [child8053]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8052_skip, output8053_skip]
  kernel_rfl

theorem node8055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8055 value4031 value1 value2 = (output8055, value4032, value1) := by
  rw [input8055_def, output8055_def]
  kernel_rfl

theorem node8056_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8056 value4032 value1 value2 = (output8056, value4032, value1) := by
  rw [input8056_def, output8056_def]
  kernel_rfl

theorem node8057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8057 value4032 value1 value2 = (output8057, value4033, value1) := by
  rw [input8057_def, output8057_def]
  kernel_rfl

theorem node8058_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8058 value4033 value1 value2 = (output8058, value4034, value1) := by
  rw [input8058_def, output8058_def]
  kernel_rfl

theorem node8059_cond_eq
    (child8057 : Flapjack.WordAlloc.removeDeadStructural input8057 value4032 value1 value2 = (output8057, value4033, value1))
    (child8058 : Flapjack.WordAlloc.removeDeadStructural input8058 value4033 value1 value2 = (output8058, value4034, value1)) : Flapjack.WordAlloc.removeDeadStructural input8059 value4032 value1 value2 = (output8059, value4034, value1) := by
  rw [input8059_def, output8059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8057]
  dsimp only
  rw [child8058]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8057_skip, output8058_skip]
  kernel_rfl

theorem node8060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8060 value4034 value1 value2 = (output8060, value4035, value1) := by
  rw [input8060_def, output8060_def]
  kernel_rfl

theorem node8061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8061 value4035 value1 value2 = (output8061, value4036, value1) := by
  rw [input8061_def, output8061_def]
  kernel_rfl

theorem node8062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8062 value4036 value1 value2 = (output8062, value4037, value1) := by
  rw [input8062_def, output8062_def]
  kernel_rfl

theorem node8063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8063 value4037 value1 value2 = (output8063, value5, value1) := by
  rw [input8063_def, output8063_def]
  kernel_rfl

theorem node8064_cond_eq
    (child8062 : Flapjack.WordAlloc.removeDeadStructural input8062 value4036 value1 value2 = (output8062, value4037, value1))
    (child8063 : Flapjack.WordAlloc.removeDeadStructural input8063 value4037 value1 value2 = (output8063, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8064 value4036 value1 value2 = (output8064, value5, value1) := by
  rw [input8064_def, output8064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8062]
  dsimp only
  rw [child8063]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8062_skip, output8063_skip]
  kernel_rfl

theorem node8065_cond_eq
    (child8061 : Flapjack.WordAlloc.removeDeadStructural input8061 value4035 value1 value2 = (output8061, value4036, value1))
    (child8064 : Flapjack.WordAlloc.removeDeadStructural input8064 value4036 value1 value2 = (output8064, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8065 value4035 value1 value2 = (output8065, value5, value1) := by
  rw [input8065_def, output8065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8061]
  dsimp only
  rw [child8064]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8061_skip, output8064_skip]
  kernel_rfl

theorem node8066_cond_eq
    (child8060 : Flapjack.WordAlloc.removeDeadStructural input8060 value4034 value1 value2 = (output8060, value4035, value1))
    (child8065 : Flapjack.WordAlloc.removeDeadStructural input8065 value4035 value1 value2 = (output8065, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8066 value4034 value1 value2 = (output8066, value5, value1) := by
  rw [input8066_def, output8066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8060]
  dsimp only
  rw [child8065]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8060_skip, output8065_skip]
  kernel_rfl

theorem node8067_cond_eq
    (child8059 : Flapjack.WordAlloc.removeDeadStructural input8059 value4032 value1 value2 = (output8059, value4034, value1))
    (child8066 : Flapjack.WordAlloc.removeDeadStructural input8066 value4034 value1 value2 = (output8066, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8067 value4032 value1 value2 = (output8067, value5, value1) := by
  rw [input8067_def, output8067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8059]
  dsimp only
  rw [child8066]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8059_skip, output8066_skip]
  kernel_rfl

theorem node8068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8068 value5 value1 value2 = (output8068, value4038, value1) := by
  rw [input8068_def, output8068_def]
  kernel_rfl

theorem node8069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8069 value4038 value1 value2 = (output8069, value4039, value1) := by
  rw [input8069_def, output8069_def]
  kernel_rfl

theorem node8070_cond_eq
    (child8068 : Flapjack.WordAlloc.removeDeadStructural input8068 value5 value1 value2 = (output8068, value4038, value1))
    (child8069 : Flapjack.WordAlloc.removeDeadStructural input8069 value4038 value1 value2 = (output8069, value4039, value1)) : Flapjack.WordAlloc.removeDeadStructural input8070 value5 value1 value2 = (output8070, value4039, value1) := by
  rw [input8070_def, output8070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8068]
  dsimp only
  rw [child8069]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8068_skip, output8069_skip]
  kernel_rfl

theorem node8071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8071 value4039 value1 value2 = (output8071, value4040, value1) := by
  rw [input8071_def, output8071_def]
  kernel_rfl

theorem node8072_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8072 value4040 value1 value2 = (output8072, value4040, value1) := by
  rw [input8072_def, output8072_def]
  kernel_rfl

theorem node8073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8073 value4040 value1 value2 = (output8073, value4041, value1) := by
  rw [input8073_def, output8073_def]
  kernel_rfl

theorem node8074_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8074 value4041 value1 value2 = (output8074, value4042, value1) := by
  rw [input8074_def, output8074_def]
  kernel_rfl

theorem node8075_cond_eq
    (child8073 : Flapjack.WordAlloc.removeDeadStructural input8073 value4040 value1 value2 = (output8073, value4041, value1))
    (child8074 : Flapjack.WordAlloc.removeDeadStructural input8074 value4041 value1 value2 = (output8074, value4042, value1)) : Flapjack.WordAlloc.removeDeadStructural input8075 value4040 value1 value2 = (output8075, value4042, value1) := by
  rw [input8075_def, output8075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8073]
  dsimp only
  rw [child8074]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8073_skip, output8074_skip]
  kernel_rfl

theorem node8076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8076 value4042 value1 value2 = (output8076, value4043, value1) := by
  rw [input8076_def, output8076_def]
  kernel_rfl

theorem node8077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8077 value4043 value1 value2 = (output8077, value4044, value1) := by
  rw [input8077_def, output8077_def]
  kernel_rfl

theorem node8078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8078 value4044 value1 value2 = (output8078, value4045, value1) := by
  rw [input8078_def, output8078_def]
  kernel_rfl

theorem node8079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8079 value4045 value1 value2 = (output8079, value5, value1) := by
  rw [input8079_def, output8079_def]
  kernel_rfl

theorem node8080_cond_eq
    (child8078 : Flapjack.WordAlloc.removeDeadStructural input8078 value4044 value1 value2 = (output8078, value4045, value1))
    (child8079 : Flapjack.WordAlloc.removeDeadStructural input8079 value4045 value1 value2 = (output8079, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8080 value4044 value1 value2 = (output8080, value5, value1) := by
  rw [input8080_def, output8080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8078]
  dsimp only
  rw [child8079]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8078_skip, output8079_skip]
  kernel_rfl

theorem node8081_cond_eq
    (child8077 : Flapjack.WordAlloc.removeDeadStructural input8077 value4043 value1 value2 = (output8077, value4044, value1))
    (child8080 : Flapjack.WordAlloc.removeDeadStructural input8080 value4044 value1 value2 = (output8080, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8081 value4043 value1 value2 = (output8081, value5, value1) := by
  rw [input8081_def, output8081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8077]
  dsimp only
  rw [child8080]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8077_skip, output8080_skip]
  kernel_rfl

theorem node8082_cond_eq
    (child8076 : Flapjack.WordAlloc.removeDeadStructural input8076 value4042 value1 value2 = (output8076, value4043, value1))
    (child8081 : Flapjack.WordAlloc.removeDeadStructural input8081 value4043 value1 value2 = (output8081, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8082 value4042 value1 value2 = (output8082, value5, value1) := by
  rw [input8082_def, output8082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8076]
  dsimp only
  rw [child8081]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8076_skip, output8081_skip]
  kernel_rfl

theorem node8083_cond_eq
    (child8075 : Flapjack.WordAlloc.removeDeadStructural input8075 value4040 value1 value2 = (output8075, value4042, value1))
    (child8082 : Flapjack.WordAlloc.removeDeadStructural input8082 value4042 value1 value2 = (output8082, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8083 value4040 value1 value2 = (output8083, value5, value1) := by
  rw [input8083_def, output8083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8075]
  dsimp only
  rw [child8082]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8075_skip, output8082_skip]
  kernel_rfl

theorem node8084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8084 value5 value1 value2 = (output8084, value4046, value1) := by
  rw [input8084_def, output8084_def]
  kernel_rfl

theorem node8085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8085 value4046 value1 value2 = (output8085, value4047, value1) := by
  rw [input8085_def, output8085_def]
  kernel_rfl

theorem node8086_cond_eq
    (child8084 : Flapjack.WordAlloc.removeDeadStructural input8084 value5 value1 value2 = (output8084, value4046, value1))
    (child8085 : Flapjack.WordAlloc.removeDeadStructural input8085 value4046 value1 value2 = (output8085, value4047, value1)) : Flapjack.WordAlloc.removeDeadStructural input8086 value5 value1 value2 = (output8086, value4047, value1) := by
  rw [input8086_def, output8086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8084]
  dsimp only
  rw [child8085]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8084_skip, output8085_skip]
  kernel_rfl

theorem node8087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8087 value4047 value1 value2 = (output8087, value4048, value1) := by
  rw [input8087_def, output8087_def]
  kernel_rfl

theorem node8088_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8088 value4048 value1 value2 = (output8088, value4048, value1) := by
  rw [input8088_def, output8088_def]
  kernel_rfl

theorem node8089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8089 value4048 value1 value2 = (output8089, value4049, value1) := by
  rw [input8089_def, output8089_def]
  kernel_rfl

theorem node8090_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8090 value4049 value1 value2 = (output8090, value4050, value1) := by
  rw [input8090_def, output8090_def]
  kernel_rfl

theorem node8091_cond_eq
    (child8089 : Flapjack.WordAlloc.removeDeadStructural input8089 value4048 value1 value2 = (output8089, value4049, value1))
    (child8090 : Flapjack.WordAlloc.removeDeadStructural input8090 value4049 value1 value2 = (output8090, value4050, value1)) : Flapjack.WordAlloc.removeDeadStructural input8091 value4048 value1 value2 = (output8091, value4050, value1) := by
  rw [input8091_def, output8091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8089]
  dsimp only
  rw [child8090]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8089_skip, output8090_skip]
  kernel_rfl

theorem node8092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8092 value4050 value1 value2 = (output8092, value4051, value1) := by
  rw [input8092_def, output8092_def]
  kernel_rfl

theorem node8093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8093 value4051 value1 value2 = (output8093, value4052, value1) := by
  rw [input8093_def, output8093_def]
  kernel_rfl

theorem node8094_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8094 value4052 value1 value2 = (output8094, value4053, value1) := by
  rw [input8094_def, output8094_def]
  kernel_rfl

theorem node8095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8095 value4053 value1 value2 = (output8095, value5, value1) := by
  rw [input8095_def, output8095_def]
  kernel_rfl

theorem node8096_cond_eq
    (child8094 : Flapjack.WordAlloc.removeDeadStructural input8094 value4052 value1 value2 = (output8094, value4053, value1))
    (child8095 : Flapjack.WordAlloc.removeDeadStructural input8095 value4053 value1 value2 = (output8095, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8096 value4052 value1 value2 = (output8096, value5, value1) := by
  rw [input8096_def, output8096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8094]
  dsimp only
  rw [child8095]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8094_skip, output8095_skip]
  kernel_rfl

theorem node8097_cond_eq
    (child8093 : Flapjack.WordAlloc.removeDeadStructural input8093 value4051 value1 value2 = (output8093, value4052, value1))
    (child8096 : Flapjack.WordAlloc.removeDeadStructural input8096 value4052 value1 value2 = (output8096, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8097 value4051 value1 value2 = (output8097, value5, value1) := by
  rw [input8097_def, output8097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8093]
  dsimp only
  rw [child8096]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8093_skip, output8096_skip]
  kernel_rfl

theorem node8098_cond_eq
    (child8092 : Flapjack.WordAlloc.removeDeadStructural input8092 value4050 value1 value2 = (output8092, value4051, value1))
    (child8097 : Flapjack.WordAlloc.removeDeadStructural input8097 value4051 value1 value2 = (output8097, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8098 value4050 value1 value2 = (output8098, value5, value1) := by
  rw [input8098_def, output8098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8092]
  dsimp only
  rw [child8097]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8092_skip, output8097_skip]
  kernel_rfl

theorem node8099_cond_eq
    (child8091 : Flapjack.WordAlloc.removeDeadStructural input8091 value4048 value1 value2 = (output8091, value4050, value1))
    (child8098 : Flapjack.WordAlloc.removeDeadStructural input8098 value4050 value1 value2 = (output8098, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8099 value4048 value1 value2 = (output8099, value5, value1) := by
  rw [input8099_def, output8099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8091]
  dsimp only
  rw [child8098]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8091_skip, output8098_skip]
  kernel_rfl

theorem node8100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8100 value5 value1 value2 = (output8100, value4054, value1) := by
  rw [input8100_def, output8100_def]
  kernel_rfl

theorem node8101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8101 value4054 value1 value2 = (output8101, value4055, value1) := by
  rw [input8101_def, output8101_def]
  kernel_rfl

theorem node8102_cond_eq
    (child8100 : Flapjack.WordAlloc.removeDeadStructural input8100 value5 value1 value2 = (output8100, value4054, value1))
    (child8101 : Flapjack.WordAlloc.removeDeadStructural input8101 value4054 value1 value2 = (output8101, value4055, value1)) : Flapjack.WordAlloc.removeDeadStructural input8102 value5 value1 value2 = (output8102, value4055, value1) := by
  rw [input8102_def, output8102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8100]
  dsimp only
  rw [child8101]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8100_skip, output8101_skip]
  kernel_rfl

theorem node8103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8103 value4055 value1 value2 = (output8103, value4056, value1) := by
  rw [input8103_def, output8103_def]
  kernel_rfl

theorem node8104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8104 value4056 value1 value2 = (output8104, value4056, value1) := by
  rw [input8104_def, output8104_def]
  kernel_rfl

theorem node8105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8105 value4056 value1 value2 = (output8105, value4057, value1) := by
  rw [input8105_def, output8105_def]
  kernel_rfl

theorem node8106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8106 value4057 value1 value2 = (output8106, value4058, value1) := by
  rw [input8106_def, output8106_def]
  kernel_rfl

theorem node8107_cond_eq
    (child8105 : Flapjack.WordAlloc.removeDeadStructural input8105 value4056 value1 value2 = (output8105, value4057, value1))
    (child8106 : Flapjack.WordAlloc.removeDeadStructural input8106 value4057 value1 value2 = (output8106, value4058, value1)) : Flapjack.WordAlloc.removeDeadStructural input8107 value4056 value1 value2 = (output8107, value4058, value1) := by
  rw [input8107_def, output8107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8105]
  dsimp only
  rw [child8106]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8105_skip, output8106_skip]
  kernel_rfl

theorem node8108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8108 value4058 value1 value2 = (output8108, value4059, value1) := by
  rw [input8108_def, output8108_def]
  kernel_rfl

theorem node8109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8109 value4059 value1 value2 = (output8109, value4060, value1) := by
  rw [input8109_def, output8109_def]
  kernel_rfl

theorem node8110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8110 value4060 value1 value2 = (output8110, value4061, value1) := by
  rw [input8110_def, output8110_def]
  kernel_rfl

theorem node8111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8111 value4061 value1 value2 = (output8111, value5, value1) := by
  rw [input8111_def, output8111_def]
  kernel_rfl

theorem node8112_cond_eq
    (child8110 : Flapjack.WordAlloc.removeDeadStructural input8110 value4060 value1 value2 = (output8110, value4061, value1))
    (child8111 : Flapjack.WordAlloc.removeDeadStructural input8111 value4061 value1 value2 = (output8111, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8112 value4060 value1 value2 = (output8112, value5, value1) := by
  rw [input8112_def, output8112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8110]
  dsimp only
  rw [child8111]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8110_skip, output8111_skip]
  kernel_rfl

theorem node8113_cond_eq
    (child8109 : Flapjack.WordAlloc.removeDeadStructural input8109 value4059 value1 value2 = (output8109, value4060, value1))
    (child8112 : Flapjack.WordAlloc.removeDeadStructural input8112 value4060 value1 value2 = (output8112, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8113 value4059 value1 value2 = (output8113, value5, value1) := by
  rw [input8113_def, output8113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8109]
  dsimp only
  rw [child8112]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8109_skip, output8112_skip]
  kernel_rfl

theorem node8114_cond_eq
    (child8108 : Flapjack.WordAlloc.removeDeadStructural input8108 value4058 value1 value2 = (output8108, value4059, value1))
    (child8113 : Flapjack.WordAlloc.removeDeadStructural input8113 value4059 value1 value2 = (output8113, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8114 value4058 value1 value2 = (output8114, value5, value1) := by
  rw [input8114_def, output8114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8108]
  dsimp only
  rw [child8113]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8108_skip, output8113_skip]
  kernel_rfl

theorem node8115_cond_eq
    (child8107 : Flapjack.WordAlloc.removeDeadStructural input8107 value4056 value1 value2 = (output8107, value4058, value1))
    (child8114 : Flapjack.WordAlloc.removeDeadStructural input8114 value4058 value1 value2 = (output8114, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8115 value4056 value1 value2 = (output8115, value5, value1) := by
  rw [input8115_def, output8115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8107]
  dsimp only
  rw [child8114]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8107_skip, output8114_skip]
  kernel_rfl

theorem node8116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8116 value5 value1 value2 = (output8116, value4062, value1) := by
  rw [input8116_def, output8116_def]
  kernel_rfl

theorem node8117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8117 value4062 value1 value2 = (output8117, value4063, value1) := by
  rw [input8117_def, output8117_def]
  kernel_rfl

theorem node8118_cond_eq
    (child8116 : Flapjack.WordAlloc.removeDeadStructural input8116 value5 value1 value2 = (output8116, value4062, value1))
    (child8117 : Flapjack.WordAlloc.removeDeadStructural input8117 value4062 value1 value2 = (output8117, value4063, value1)) : Flapjack.WordAlloc.removeDeadStructural input8118 value5 value1 value2 = (output8118, value4063, value1) := by
  rw [input8118_def, output8118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8116]
  dsimp only
  rw [child8117]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8116_skip, output8117_skip]
  kernel_rfl

theorem node8119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8119 value4063 value1 value2 = (output8119, value4064, value1) := by
  rw [input8119_def, output8119_def]
  kernel_rfl

theorem node8120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8120 value4064 value1 value2 = (output8120, value4064, value1) := by
  rw [input8120_def, output8120_def]
  kernel_rfl

theorem node8121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8121 value4064 value1 value2 = (output8121, value4065, value1) := by
  rw [input8121_def, output8121_def]
  kernel_rfl

theorem node8122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8122 value4065 value1 value2 = (output8122, value4066, value1) := by
  rw [input8122_def, output8122_def]
  kernel_rfl

theorem node8123_cond_eq
    (child8121 : Flapjack.WordAlloc.removeDeadStructural input8121 value4064 value1 value2 = (output8121, value4065, value1))
    (child8122 : Flapjack.WordAlloc.removeDeadStructural input8122 value4065 value1 value2 = (output8122, value4066, value1)) : Flapjack.WordAlloc.removeDeadStructural input8123 value4064 value1 value2 = (output8123, value4066, value1) := by
  rw [input8123_def, output8123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8121]
  dsimp only
  rw [child8122]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8121_skip, output8122_skip]
  kernel_rfl

theorem node8124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8124 value4066 value1 value2 = (output8124, value4067, value1) := by
  rw [input8124_def, output8124_def]
  kernel_rfl

theorem node8125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8125 value4067 value1 value2 = (output8125, value4068, value1) := by
  rw [input8125_def, output8125_def]
  kernel_rfl

theorem node8126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8126 value4068 value1 value2 = (output8126, value4069, value1) := by
  rw [input8126_def, output8126_def]
  kernel_rfl

theorem node8127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8127 value4069 value1 value2 = (output8127, value5, value1) := by
  rw [input8127_def, output8127_def]
  kernel_rfl

theorem node8128_cond_eq
    (child8126 : Flapjack.WordAlloc.removeDeadStructural input8126 value4068 value1 value2 = (output8126, value4069, value1))
    (child8127 : Flapjack.WordAlloc.removeDeadStructural input8127 value4069 value1 value2 = (output8127, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8128 value4068 value1 value2 = (output8128, value5, value1) := by
  rw [input8128_def, output8128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8126]
  dsimp only
  rw [child8127]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8126_skip, output8127_skip]
  kernel_rfl

theorem node8129_cond_eq
    (child8125 : Flapjack.WordAlloc.removeDeadStructural input8125 value4067 value1 value2 = (output8125, value4068, value1))
    (child8128 : Flapjack.WordAlloc.removeDeadStructural input8128 value4068 value1 value2 = (output8128, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8129 value4067 value1 value2 = (output8129, value5, value1) := by
  rw [input8129_def, output8129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8125]
  dsimp only
  rw [child8128]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8125_skip, output8128_skip]
  kernel_rfl

theorem node8130_cond_eq
    (child8124 : Flapjack.WordAlloc.removeDeadStructural input8124 value4066 value1 value2 = (output8124, value4067, value1))
    (child8129 : Flapjack.WordAlloc.removeDeadStructural input8129 value4067 value1 value2 = (output8129, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8130 value4066 value1 value2 = (output8130, value5, value1) := by
  rw [input8130_def, output8130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8124]
  dsimp only
  rw [child8129]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8124_skip, output8129_skip]
  kernel_rfl

theorem node8131_cond_eq
    (child8123 : Flapjack.WordAlloc.removeDeadStructural input8123 value4064 value1 value2 = (output8123, value4066, value1))
    (child8130 : Flapjack.WordAlloc.removeDeadStructural input8130 value4066 value1 value2 = (output8130, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8131 value4064 value1 value2 = (output8131, value5, value1) := by
  rw [input8131_def, output8131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8123]
  dsimp only
  rw [child8130]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8123_skip, output8130_skip]
  kernel_rfl

theorem node8132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8132 value5 value1 value2 = (output8132, value4070, value1) := by
  rw [input8132_def, output8132_def]
  kernel_rfl

theorem node8133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8133 value4070 value1 value2 = (output8133, value4071, value1) := by
  rw [input8133_def, output8133_def]
  kernel_rfl

theorem node8134_cond_eq
    (child8132 : Flapjack.WordAlloc.removeDeadStructural input8132 value5 value1 value2 = (output8132, value4070, value1))
    (child8133 : Flapjack.WordAlloc.removeDeadStructural input8133 value4070 value1 value2 = (output8133, value4071, value1)) : Flapjack.WordAlloc.removeDeadStructural input8134 value5 value1 value2 = (output8134, value4071, value1) := by
  rw [input8134_def, output8134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8132]
  dsimp only
  rw [child8133]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8132_skip, output8133_skip]
  kernel_rfl

theorem node8135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8135 value4071 value1 value2 = (output8135, value4072, value1) := by
  rw [input8135_def, output8135_def]
  kernel_rfl

theorem node8136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8136 value4072 value1 value2 = (output8136, value4072, value1) := by
  rw [input8136_def, output8136_def]
  kernel_rfl

theorem node8137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8137 value4072 value1 value2 = (output8137, value4073, value1) := by
  rw [input8137_def, output8137_def]
  kernel_rfl

theorem node8138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8138 value4073 value1 value2 = (output8138, value4074, value1) := by
  rw [input8138_def, output8138_def]
  kernel_rfl

theorem node8139_cond_eq
    (child8137 : Flapjack.WordAlloc.removeDeadStructural input8137 value4072 value1 value2 = (output8137, value4073, value1))
    (child8138 : Flapjack.WordAlloc.removeDeadStructural input8138 value4073 value1 value2 = (output8138, value4074, value1)) : Flapjack.WordAlloc.removeDeadStructural input8139 value4072 value1 value2 = (output8139, value4074, value1) := by
  rw [input8139_def, output8139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8137]
  dsimp only
  rw [child8138]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8137_skip, output8138_skip]
  kernel_rfl

theorem node8140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8140 value4074 value1 value2 = (output8140, value4075, value1) := by
  rw [input8140_def, output8140_def]
  kernel_rfl

theorem node8141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8141 value4075 value1 value2 = (output8141, value4076, value1) := by
  rw [input8141_def, output8141_def]
  kernel_rfl

theorem node8142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8142 value4076 value1 value2 = (output8142, value4077, value1) := by
  rw [input8142_def, output8142_def]
  kernel_rfl

theorem node8143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8143 value4077 value1 value2 = (output8143, value5, value1) := by
  rw [input8143_def, output8143_def]
  kernel_rfl

theorem node8144_cond_eq
    (child8142 : Flapjack.WordAlloc.removeDeadStructural input8142 value4076 value1 value2 = (output8142, value4077, value1))
    (child8143 : Flapjack.WordAlloc.removeDeadStructural input8143 value4077 value1 value2 = (output8143, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8144 value4076 value1 value2 = (output8144, value5, value1) := by
  rw [input8144_def, output8144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8142]
  dsimp only
  rw [child8143]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8142_skip, output8143_skip]
  kernel_rfl

theorem node8145_cond_eq
    (child8141 : Flapjack.WordAlloc.removeDeadStructural input8141 value4075 value1 value2 = (output8141, value4076, value1))
    (child8144 : Flapjack.WordAlloc.removeDeadStructural input8144 value4076 value1 value2 = (output8144, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8145 value4075 value1 value2 = (output8145, value5, value1) := by
  rw [input8145_def, output8145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8141]
  dsimp only
  rw [child8144]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8141_skip, output8144_skip]
  kernel_rfl

theorem node8146_cond_eq
    (child8140 : Flapjack.WordAlloc.removeDeadStructural input8140 value4074 value1 value2 = (output8140, value4075, value1))
    (child8145 : Flapjack.WordAlloc.removeDeadStructural input8145 value4075 value1 value2 = (output8145, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8146 value4074 value1 value2 = (output8146, value5, value1) := by
  rw [input8146_def, output8146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8140]
  dsimp only
  rw [child8145]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8140_skip, output8145_skip]
  kernel_rfl

theorem node8147_cond_eq
    (child8139 : Flapjack.WordAlloc.removeDeadStructural input8139 value4072 value1 value2 = (output8139, value4074, value1))
    (child8146 : Flapjack.WordAlloc.removeDeadStructural input8146 value4074 value1 value2 = (output8146, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8147 value4072 value1 value2 = (output8147, value5, value1) := by
  rw [input8147_def, output8147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8139]
  dsimp only
  rw [child8146]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8139_skip, output8146_skip]
  kernel_rfl

theorem node8148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8148 value5 value1 value2 = (output8148, value4078, value1) := by
  rw [input8148_def, output8148_def]
  kernel_rfl

theorem node8149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8149 value4078 value1 value2 = (output8149, value4079, value1) := by
  rw [input8149_def, output8149_def]
  kernel_rfl

theorem node8150_cond_eq
    (child8148 : Flapjack.WordAlloc.removeDeadStructural input8148 value5 value1 value2 = (output8148, value4078, value1))
    (child8149 : Flapjack.WordAlloc.removeDeadStructural input8149 value4078 value1 value2 = (output8149, value4079, value1)) : Flapjack.WordAlloc.removeDeadStructural input8150 value5 value1 value2 = (output8150, value4079, value1) := by
  rw [input8150_def, output8150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8148]
  dsimp only
  rw [child8149]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8148_skip, output8149_skip]
  kernel_rfl

theorem node8151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8151 value4079 value1 value2 = (output8151, value4080, value1) := by
  rw [input8151_def, output8151_def]
  kernel_rfl

theorem node8152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8152 value4080 value1 value2 = (output8152, value4080, value1) := by
  rw [input8152_def, output8152_def]
  kernel_rfl

theorem node8153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8153 value4080 value1 value2 = (output8153, value4081, value1) := by
  rw [input8153_def, output8153_def]
  kernel_rfl

theorem node8154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8154 value4081 value1 value2 = (output8154, value4082, value1) := by
  rw [input8154_def, output8154_def]
  kernel_rfl

theorem node8155_cond_eq
    (child8153 : Flapjack.WordAlloc.removeDeadStructural input8153 value4080 value1 value2 = (output8153, value4081, value1))
    (child8154 : Flapjack.WordAlloc.removeDeadStructural input8154 value4081 value1 value2 = (output8154, value4082, value1)) : Flapjack.WordAlloc.removeDeadStructural input8155 value4080 value1 value2 = (output8155, value4082, value1) := by
  rw [input8155_def, output8155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8153]
  dsimp only
  rw [child8154]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8153_skip, output8154_skip]
  kernel_rfl

theorem node8156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8156 value4082 value1 value2 = (output8156, value4083, value1) := by
  rw [input8156_def, output8156_def]
  kernel_rfl

theorem node8157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8157 value4083 value1 value2 = (output8157, value4084, value1) := by
  rw [input8157_def, output8157_def]
  kernel_rfl

theorem node8158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8158 value4084 value1 value2 = (output8158, value4085, value1) := by
  rw [input8158_def, output8158_def]
  kernel_rfl

theorem node8159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8159 value4085 value1 value2 = (output8159, value5, value1) := by
  rw [input8159_def, output8159_def]
  kernel_rfl

theorem node8160_cond_eq
    (child8158 : Flapjack.WordAlloc.removeDeadStructural input8158 value4084 value1 value2 = (output8158, value4085, value1))
    (child8159 : Flapjack.WordAlloc.removeDeadStructural input8159 value4085 value1 value2 = (output8159, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8160 value4084 value1 value2 = (output8160, value5, value1) := by
  rw [input8160_def, output8160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8158]
  dsimp only
  rw [child8159]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8158_skip, output8159_skip]
  kernel_rfl

theorem node8161_cond_eq
    (child8157 : Flapjack.WordAlloc.removeDeadStructural input8157 value4083 value1 value2 = (output8157, value4084, value1))
    (child8160 : Flapjack.WordAlloc.removeDeadStructural input8160 value4084 value1 value2 = (output8160, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8161 value4083 value1 value2 = (output8161, value5, value1) := by
  rw [input8161_def, output8161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8157]
  dsimp only
  rw [child8160]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8157_skip, output8160_skip]
  kernel_rfl

theorem node8162_cond_eq
    (child8156 : Flapjack.WordAlloc.removeDeadStructural input8156 value4082 value1 value2 = (output8156, value4083, value1))
    (child8161 : Flapjack.WordAlloc.removeDeadStructural input8161 value4083 value1 value2 = (output8161, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8162 value4082 value1 value2 = (output8162, value5, value1) := by
  rw [input8162_def, output8162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8156]
  dsimp only
  rw [child8161]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8156_skip, output8161_skip]
  kernel_rfl

theorem node8163_cond_eq
    (child8155 : Flapjack.WordAlloc.removeDeadStructural input8155 value4080 value1 value2 = (output8155, value4082, value1))
    (child8162 : Flapjack.WordAlloc.removeDeadStructural input8162 value4082 value1 value2 = (output8162, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8163 value4080 value1 value2 = (output8163, value5, value1) := by
  rw [input8163_def, output8163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8155]
  dsimp only
  rw [child8162]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8155_skip, output8162_skip]
  kernel_rfl

theorem node8164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8164 value5 value1 value2 = (output8164, value4086, value1) := by
  rw [input8164_def, output8164_def]
  kernel_rfl

theorem node8165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8165 value4086 value1 value2 = (output8165, value4087, value1) := by
  rw [input8165_def, output8165_def]
  kernel_rfl

theorem node8166_cond_eq
    (child8164 : Flapjack.WordAlloc.removeDeadStructural input8164 value5 value1 value2 = (output8164, value4086, value1))
    (child8165 : Flapjack.WordAlloc.removeDeadStructural input8165 value4086 value1 value2 = (output8165, value4087, value1)) : Flapjack.WordAlloc.removeDeadStructural input8166 value5 value1 value2 = (output8166, value4087, value1) := by
  rw [input8166_def, output8166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8164]
  dsimp only
  rw [child8165]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8164_skip, output8165_skip]
  kernel_rfl

theorem node8167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8167 value4087 value1 value2 = (output8167, value4088, value1) := by
  rw [input8167_def, output8167_def]
  kernel_rfl

theorem node8168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8168 value4088 value1 value2 = (output8168, value4088, value1) := by
  rw [input8168_def, output8168_def]
  kernel_rfl

theorem node8169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8169 value4088 value1 value2 = (output8169, value4089, value1) := by
  rw [input8169_def, output8169_def]
  kernel_rfl

theorem node8170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8170 value4089 value1 value2 = (output8170, value4090, value1) := by
  rw [input8170_def, output8170_def]
  kernel_rfl

theorem node8171_cond_eq
    (child8169 : Flapjack.WordAlloc.removeDeadStructural input8169 value4088 value1 value2 = (output8169, value4089, value1))
    (child8170 : Flapjack.WordAlloc.removeDeadStructural input8170 value4089 value1 value2 = (output8170, value4090, value1)) : Flapjack.WordAlloc.removeDeadStructural input8171 value4088 value1 value2 = (output8171, value4090, value1) := by
  rw [input8171_def, output8171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8169]
  dsimp only
  rw [child8170]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8169_skip, output8170_skip]
  kernel_rfl

theorem node8172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8172 value4090 value1 value2 = (output8172, value4091, value1) := by
  rw [input8172_def, output8172_def]
  kernel_rfl

theorem node8173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8173 value4091 value1 value2 = (output8173, value4092, value1) := by
  rw [input8173_def, output8173_def]
  kernel_rfl

theorem node8174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8174 value4092 value1 value2 = (output8174, value4093, value1) := by
  rw [input8174_def, output8174_def]
  kernel_rfl

theorem node8175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8175 value4093 value1 value2 = (output8175, value5, value1) := by
  rw [input8175_def, output8175_def]
  kernel_rfl

theorem node8176_cond_eq
    (child8174 : Flapjack.WordAlloc.removeDeadStructural input8174 value4092 value1 value2 = (output8174, value4093, value1))
    (child8175 : Flapjack.WordAlloc.removeDeadStructural input8175 value4093 value1 value2 = (output8175, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8176 value4092 value1 value2 = (output8176, value5, value1) := by
  rw [input8176_def, output8176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8174]
  dsimp only
  rw [child8175]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8174_skip, output8175_skip]
  kernel_rfl

theorem node8177_cond_eq
    (child8173 : Flapjack.WordAlloc.removeDeadStructural input8173 value4091 value1 value2 = (output8173, value4092, value1))
    (child8176 : Flapjack.WordAlloc.removeDeadStructural input8176 value4092 value1 value2 = (output8176, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8177 value4091 value1 value2 = (output8177, value5, value1) := by
  rw [input8177_def, output8177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8173]
  dsimp only
  rw [child8176]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8173_skip, output8176_skip]
  kernel_rfl

theorem node8178_cond_eq
    (child8172 : Flapjack.WordAlloc.removeDeadStructural input8172 value4090 value1 value2 = (output8172, value4091, value1))
    (child8177 : Flapjack.WordAlloc.removeDeadStructural input8177 value4091 value1 value2 = (output8177, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8178 value4090 value1 value2 = (output8178, value5, value1) := by
  rw [input8178_def, output8178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8172]
  dsimp only
  rw [child8177]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8172_skip, output8177_skip]
  kernel_rfl

theorem node8179_cond_eq
    (child8171 : Flapjack.WordAlloc.removeDeadStructural input8171 value4088 value1 value2 = (output8171, value4090, value1))
    (child8178 : Flapjack.WordAlloc.removeDeadStructural input8178 value4090 value1 value2 = (output8178, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8179 value4088 value1 value2 = (output8179, value5, value1) := by
  rw [input8179_def, output8179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8171]
  dsimp only
  rw [child8178]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8171_skip, output8178_skip]
  kernel_rfl

theorem node8180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8180 value5 value1 value2 = (output8180, value4094, value1) := by
  rw [input8180_def, output8180_def]
  kernel_rfl

theorem node8181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8181 value4094 value1 value2 = (output8181, value4095, value1) := by
  rw [input8181_def, output8181_def]
  kernel_rfl

theorem node8182_cond_eq
    (child8180 : Flapjack.WordAlloc.removeDeadStructural input8180 value5 value1 value2 = (output8180, value4094, value1))
    (child8181 : Flapjack.WordAlloc.removeDeadStructural input8181 value4094 value1 value2 = (output8181, value4095, value1)) : Flapjack.WordAlloc.removeDeadStructural input8182 value5 value1 value2 = (output8182, value4095, value1) := by
  rw [input8182_def, output8182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8180]
  dsimp only
  rw [child8181]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8180_skip, output8181_skip]
  kernel_rfl

theorem node8183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8183 value4095 value1 value2 = (output8183, value4096, value1) := by
  rw [input8183_def, output8183_def]
  kernel_rfl

theorem node8184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8184 value4096 value1 value2 = (output8184, value4096, value1) := by
  rw [input8184_def, output8184_def]
  kernel_rfl

theorem node8185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8185 value4096 value1 value2 = (output8185, value4097, value1) := by
  rw [input8185_def, output8185_def]
  kernel_rfl

theorem node8186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8186 value4097 value1 value2 = (output8186, value4098, value1) := by
  rw [input8186_def, output8186_def]
  kernel_rfl

theorem node8187_cond_eq
    (child8185 : Flapjack.WordAlloc.removeDeadStructural input8185 value4096 value1 value2 = (output8185, value4097, value1))
    (child8186 : Flapjack.WordAlloc.removeDeadStructural input8186 value4097 value1 value2 = (output8186, value4098, value1)) : Flapjack.WordAlloc.removeDeadStructural input8187 value4096 value1 value2 = (output8187, value4098, value1) := by
  rw [input8187_def, output8187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8185]
  dsimp only
  rw [child8186]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8185_skip, output8186_skip]
  kernel_rfl

theorem node8188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8188 value4098 value1 value2 = (output8188, value4099, value1) := by
  rw [input8188_def, output8188_def]
  kernel_rfl

theorem node8189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8189 value4099 value1 value2 = (output8189, value4100, value1) := by
  rw [input8189_def, output8189_def]
  kernel_rfl

theorem node8190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8190 value4100 value1 value2 = (output8190, value4101, value1) := by
  rw [input8190_def, output8190_def]
  kernel_rfl

theorem node8191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8191 value4101 value1 value2 = (output8191, value5, value1) := by
  rw [input8191_def, output8191_def]
  kernel_rfl

#print axioms node8191_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
