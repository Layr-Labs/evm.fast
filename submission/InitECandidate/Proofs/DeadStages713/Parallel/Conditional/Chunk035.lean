import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk035
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node8960_cond_eq
    (child8958 : Flapjack.WordAlloc.removeDeadStructural input8958 value4484 value1 value2 = (output8958, value4485, value1))
    (child8959 : Flapjack.WordAlloc.removeDeadStructural input8959 value4485 value1 value2 = (output8959, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8960 value4484 value1 value2 = (output8960, value5, value1) := by
  rw [input8960_def, output8960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8958]
  dsimp only
  rw [child8959]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8958_skip, output8959_skip]
  kernel_rfl

theorem node8961_cond_eq
    (child8957 : Flapjack.WordAlloc.removeDeadStructural input8957 value4483 value1 value2 = (output8957, value4484, value1))
    (child8960 : Flapjack.WordAlloc.removeDeadStructural input8960 value4484 value1 value2 = (output8960, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8961 value4483 value1 value2 = (output8961, value5, value1) := by
  rw [input8961_def, output8961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8957]
  dsimp only
  rw [child8960]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8957_skip, output8960_skip]
  kernel_rfl

theorem node8962_cond_eq
    (child8956 : Flapjack.WordAlloc.removeDeadStructural input8956 value4482 value1 value2 = (output8956, value4483, value1))
    (child8961 : Flapjack.WordAlloc.removeDeadStructural input8961 value4483 value1 value2 = (output8961, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8962 value4482 value1 value2 = (output8962, value5, value1) := by
  rw [input8962_def, output8962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8956]
  dsimp only
  rw [child8961]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8956_skip, output8961_skip]
  kernel_rfl

theorem node8963_cond_eq
    (child8955 : Flapjack.WordAlloc.removeDeadStructural input8955 value4480 value1 value2 = (output8955, value4482, value1))
    (child8962 : Flapjack.WordAlloc.removeDeadStructural input8962 value4482 value1 value2 = (output8962, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8963 value4480 value1 value2 = (output8963, value5, value1) := by
  rw [input8963_def, output8963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8955]
  dsimp only
  rw [child8962]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8955_skip, output8962_skip]
  kernel_rfl

theorem node8964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8964 value5 value1 value2 = (output8964, value4486, value1) := by
  rw [input8964_def, output8964_def]
  kernel_rfl

theorem node8965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8965 value4486 value1 value2 = (output8965, value4487, value1) := by
  rw [input8965_def, output8965_def]
  kernel_rfl

theorem node8966_cond_eq
    (child8964 : Flapjack.WordAlloc.removeDeadStructural input8964 value5 value1 value2 = (output8964, value4486, value1))
    (child8965 : Flapjack.WordAlloc.removeDeadStructural input8965 value4486 value1 value2 = (output8965, value4487, value1)) : Flapjack.WordAlloc.removeDeadStructural input8966 value5 value1 value2 = (output8966, value4487, value1) := by
  rw [input8966_def, output8966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8964]
  dsimp only
  rw [child8965]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8964_skip, output8965_skip]
  kernel_rfl

theorem node8967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8967 value4487 value1 value2 = (output8967, value4488, value1) := by
  rw [input8967_def, output8967_def]
  kernel_rfl

theorem node8968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8968 value4488 value1 value2 = (output8968, value4488, value1) := by
  rw [input8968_def, output8968_def]
  kernel_rfl

theorem node8969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8969 value4488 value1 value2 = (output8969, value4489, value1) := by
  rw [input8969_def, output8969_def]
  kernel_rfl

theorem node8970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8970 value4489 value1 value2 = (output8970, value4490, value1) := by
  rw [input8970_def, output8970_def]
  kernel_rfl

theorem node8971_cond_eq
    (child8969 : Flapjack.WordAlloc.removeDeadStructural input8969 value4488 value1 value2 = (output8969, value4489, value1))
    (child8970 : Flapjack.WordAlloc.removeDeadStructural input8970 value4489 value1 value2 = (output8970, value4490, value1)) : Flapjack.WordAlloc.removeDeadStructural input8971 value4488 value1 value2 = (output8971, value4490, value1) := by
  rw [input8971_def, output8971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8969]
  dsimp only
  rw [child8970]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8969_skip, output8970_skip]
  kernel_rfl

theorem node8972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8972 value4490 value1 value2 = (output8972, value4491, value1) := by
  rw [input8972_def, output8972_def]
  kernel_rfl

theorem node8973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8973 value4491 value1 value2 = (output8973, value4492, value1) := by
  rw [input8973_def, output8973_def]
  kernel_rfl

theorem node8974_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8974 value4492 value1 value2 = (output8974, value4493, value1) := by
  rw [input8974_def, output8974_def]
  kernel_rfl

theorem node8975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8975 value4493 value1 value2 = (output8975, value5, value1) := by
  rw [input8975_def, output8975_def]
  kernel_rfl

theorem node8976_cond_eq
    (child8974 : Flapjack.WordAlloc.removeDeadStructural input8974 value4492 value1 value2 = (output8974, value4493, value1))
    (child8975 : Flapjack.WordAlloc.removeDeadStructural input8975 value4493 value1 value2 = (output8975, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8976 value4492 value1 value2 = (output8976, value5, value1) := by
  rw [input8976_def, output8976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8974]
  dsimp only
  rw [child8975]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8974_skip, output8975_skip]
  kernel_rfl

theorem node8977_cond_eq
    (child8973 : Flapjack.WordAlloc.removeDeadStructural input8973 value4491 value1 value2 = (output8973, value4492, value1))
    (child8976 : Flapjack.WordAlloc.removeDeadStructural input8976 value4492 value1 value2 = (output8976, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8977 value4491 value1 value2 = (output8977, value5, value1) := by
  rw [input8977_def, output8977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8973]
  dsimp only
  rw [child8976]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8973_skip, output8976_skip]
  kernel_rfl

theorem node8978_cond_eq
    (child8972 : Flapjack.WordAlloc.removeDeadStructural input8972 value4490 value1 value2 = (output8972, value4491, value1))
    (child8977 : Flapjack.WordAlloc.removeDeadStructural input8977 value4491 value1 value2 = (output8977, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8978 value4490 value1 value2 = (output8978, value5, value1) := by
  rw [input8978_def, output8978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8972]
  dsimp only
  rw [child8977]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8972_skip, output8977_skip]
  kernel_rfl

theorem node8979_cond_eq
    (child8971 : Flapjack.WordAlloc.removeDeadStructural input8971 value4488 value1 value2 = (output8971, value4490, value1))
    (child8978 : Flapjack.WordAlloc.removeDeadStructural input8978 value4490 value1 value2 = (output8978, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8979 value4488 value1 value2 = (output8979, value5, value1) := by
  rw [input8979_def, output8979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8971]
  dsimp only
  rw [child8978]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8971_skip, output8978_skip]
  kernel_rfl

theorem node8980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8980 value5 value1 value2 = (output8980, value4494, value1) := by
  rw [input8980_def, output8980_def]
  kernel_rfl

theorem node8981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8981 value4494 value1 value2 = (output8981, value4495, value1) := by
  rw [input8981_def, output8981_def]
  kernel_rfl

theorem node8982_cond_eq
    (child8980 : Flapjack.WordAlloc.removeDeadStructural input8980 value5 value1 value2 = (output8980, value4494, value1))
    (child8981 : Flapjack.WordAlloc.removeDeadStructural input8981 value4494 value1 value2 = (output8981, value4495, value1)) : Flapjack.WordAlloc.removeDeadStructural input8982 value5 value1 value2 = (output8982, value4495, value1) := by
  rw [input8982_def, output8982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8980]
  dsimp only
  rw [child8981]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8980_skip, output8981_skip]
  kernel_rfl

theorem node8983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8983 value4495 value1 value2 = (output8983, value4496, value1) := by
  rw [input8983_def, output8983_def]
  kernel_rfl

theorem node8984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8984 value4496 value1 value2 = (output8984, value4496, value1) := by
  rw [input8984_def, output8984_def]
  kernel_rfl

theorem node8985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8985 value4496 value1 value2 = (output8985, value4497, value1) := by
  rw [input8985_def, output8985_def]
  kernel_rfl

theorem node8986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8986 value4497 value1 value2 = (output8986, value4498, value1) := by
  rw [input8986_def, output8986_def]
  kernel_rfl

theorem node8987_cond_eq
    (child8985 : Flapjack.WordAlloc.removeDeadStructural input8985 value4496 value1 value2 = (output8985, value4497, value1))
    (child8986 : Flapjack.WordAlloc.removeDeadStructural input8986 value4497 value1 value2 = (output8986, value4498, value1)) : Flapjack.WordAlloc.removeDeadStructural input8987 value4496 value1 value2 = (output8987, value4498, value1) := by
  rw [input8987_def, output8987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8985]
  dsimp only
  rw [child8986]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8985_skip, output8986_skip]
  kernel_rfl

theorem node8988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8988 value4498 value1 value2 = (output8988, value4499, value1) := by
  rw [input8988_def, output8988_def]
  kernel_rfl

theorem node8989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8989 value4499 value1 value2 = (output8989, value4500, value1) := by
  rw [input8989_def, output8989_def]
  kernel_rfl

theorem node8990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8990 value4500 value1 value2 = (output8990, value4501, value1) := by
  rw [input8990_def, output8990_def]
  kernel_rfl

theorem node8991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8991 value4501 value1 value2 = (output8991, value5, value1) := by
  rw [input8991_def, output8991_def]
  kernel_rfl

theorem node8992_cond_eq
    (child8990 : Flapjack.WordAlloc.removeDeadStructural input8990 value4500 value1 value2 = (output8990, value4501, value1))
    (child8991 : Flapjack.WordAlloc.removeDeadStructural input8991 value4501 value1 value2 = (output8991, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8992 value4500 value1 value2 = (output8992, value5, value1) := by
  rw [input8992_def, output8992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8990]
  dsimp only
  rw [child8991]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8990_skip, output8991_skip]
  kernel_rfl

theorem node8993_cond_eq
    (child8989 : Flapjack.WordAlloc.removeDeadStructural input8989 value4499 value1 value2 = (output8989, value4500, value1))
    (child8992 : Flapjack.WordAlloc.removeDeadStructural input8992 value4500 value1 value2 = (output8992, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8993 value4499 value1 value2 = (output8993, value5, value1) := by
  rw [input8993_def, output8993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8989]
  dsimp only
  rw [child8992]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8989_skip, output8992_skip]
  kernel_rfl

theorem node8994_cond_eq
    (child8988 : Flapjack.WordAlloc.removeDeadStructural input8988 value4498 value1 value2 = (output8988, value4499, value1))
    (child8993 : Flapjack.WordAlloc.removeDeadStructural input8993 value4499 value1 value2 = (output8993, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8994 value4498 value1 value2 = (output8994, value5, value1) := by
  rw [input8994_def, output8994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8988]
  dsimp only
  rw [child8993]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8988_skip, output8993_skip]
  kernel_rfl

theorem node8995_cond_eq
    (child8987 : Flapjack.WordAlloc.removeDeadStructural input8987 value4496 value1 value2 = (output8987, value4498, value1))
    (child8994 : Flapjack.WordAlloc.removeDeadStructural input8994 value4498 value1 value2 = (output8994, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8995 value4496 value1 value2 = (output8995, value5, value1) := by
  rw [input8995_def, output8995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8987]
  dsimp only
  rw [child8994]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8987_skip, output8994_skip]
  kernel_rfl

theorem node8996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8996 value5 value1 value2 = (output8996, value4502, value1) := by
  rw [input8996_def, output8996_def]
  kernel_rfl

theorem node8997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8997 value4502 value1 value2 = (output8997, value4503, value1) := by
  rw [input8997_def, output8997_def]
  kernel_rfl

theorem node8998_cond_eq
    (child8996 : Flapjack.WordAlloc.removeDeadStructural input8996 value5 value1 value2 = (output8996, value4502, value1))
    (child8997 : Flapjack.WordAlloc.removeDeadStructural input8997 value4502 value1 value2 = (output8997, value4503, value1)) : Flapjack.WordAlloc.removeDeadStructural input8998 value5 value1 value2 = (output8998, value4503, value1) := by
  rw [input8998_def, output8998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8996]
  dsimp only
  rw [child8997]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8996_skip, output8997_skip]
  kernel_rfl

theorem node8999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8999 value4503 value1 value2 = (output8999, value4504, value1) := by
  rw [input8999_def, output8999_def]
  kernel_rfl

theorem node9000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9000 value4504 value1 value2 = (output9000, value4504, value1) := by
  rw [input9000_def, output9000_def]
  kernel_rfl

theorem node9001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9001 value4504 value1 value2 = (output9001, value4505, value1) := by
  rw [input9001_def, output9001_def]
  kernel_rfl

theorem node9002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9002 value4505 value1 value2 = (output9002, value4506, value1) := by
  rw [input9002_def, output9002_def]
  kernel_rfl

theorem node9003_cond_eq
    (child9001 : Flapjack.WordAlloc.removeDeadStructural input9001 value4504 value1 value2 = (output9001, value4505, value1))
    (child9002 : Flapjack.WordAlloc.removeDeadStructural input9002 value4505 value1 value2 = (output9002, value4506, value1)) : Flapjack.WordAlloc.removeDeadStructural input9003 value4504 value1 value2 = (output9003, value4506, value1) := by
  rw [input9003_def, output9003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9001]
  dsimp only
  rw [child9002]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9001_skip, output9002_skip]
  kernel_rfl

theorem node9004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9004 value4506 value1 value2 = (output9004, value4507, value1) := by
  rw [input9004_def, output9004_def]
  kernel_rfl

theorem node9005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9005 value4507 value1 value2 = (output9005, value4508, value1) := by
  rw [input9005_def, output9005_def]
  kernel_rfl

theorem node9006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9006 value4508 value1 value2 = (output9006, value4509, value1) := by
  rw [input9006_def, output9006_def]
  kernel_rfl

theorem node9007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9007 value4509 value1 value2 = (output9007, value5, value1) := by
  rw [input9007_def, output9007_def]
  kernel_rfl

theorem node9008_cond_eq
    (child9006 : Flapjack.WordAlloc.removeDeadStructural input9006 value4508 value1 value2 = (output9006, value4509, value1))
    (child9007 : Flapjack.WordAlloc.removeDeadStructural input9007 value4509 value1 value2 = (output9007, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9008 value4508 value1 value2 = (output9008, value5, value1) := by
  rw [input9008_def, output9008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9006]
  dsimp only
  rw [child9007]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9006_skip, output9007_skip]
  kernel_rfl

theorem node9009_cond_eq
    (child9005 : Flapjack.WordAlloc.removeDeadStructural input9005 value4507 value1 value2 = (output9005, value4508, value1))
    (child9008 : Flapjack.WordAlloc.removeDeadStructural input9008 value4508 value1 value2 = (output9008, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9009 value4507 value1 value2 = (output9009, value5, value1) := by
  rw [input9009_def, output9009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9005]
  dsimp only
  rw [child9008]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9005_skip, output9008_skip]
  kernel_rfl

theorem node9010_cond_eq
    (child9004 : Flapjack.WordAlloc.removeDeadStructural input9004 value4506 value1 value2 = (output9004, value4507, value1))
    (child9009 : Flapjack.WordAlloc.removeDeadStructural input9009 value4507 value1 value2 = (output9009, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9010 value4506 value1 value2 = (output9010, value5, value1) := by
  rw [input9010_def, output9010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9004]
  dsimp only
  rw [child9009]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9004_skip, output9009_skip]
  kernel_rfl

theorem node9011_cond_eq
    (child9003 : Flapjack.WordAlloc.removeDeadStructural input9003 value4504 value1 value2 = (output9003, value4506, value1))
    (child9010 : Flapjack.WordAlloc.removeDeadStructural input9010 value4506 value1 value2 = (output9010, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9011 value4504 value1 value2 = (output9011, value5, value1) := by
  rw [input9011_def, output9011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9003]
  dsimp only
  rw [child9010]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9003_skip, output9010_skip]
  kernel_rfl

theorem node9012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9012 value5 value1 value2 = (output9012, value4510, value1) := by
  rw [input9012_def, output9012_def]
  kernel_rfl

theorem node9013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9013 value4510 value1 value2 = (output9013, value4511, value1) := by
  rw [input9013_def, output9013_def]
  kernel_rfl

theorem node9014_cond_eq
    (child9012 : Flapjack.WordAlloc.removeDeadStructural input9012 value5 value1 value2 = (output9012, value4510, value1))
    (child9013 : Flapjack.WordAlloc.removeDeadStructural input9013 value4510 value1 value2 = (output9013, value4511, value1)) : Flapjack.WordAlloc.removeDeadStructural input9014 value5 value1 value2 = (output9014, value4511, value1) := by
  rw [input9014_def, output9014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9012]
  dsimp only
  rw [child9013]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9012_skip, output9013_skip]
  kernel_rfl

theorem node9015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9015 value4511 value1 value2 = (output9015, value4512, value1) := by
  rw [input9015_def, output9015_def]
  kernel_rfl

theorem node9016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9016 value4512 value1 value2 = (output9016, value4512, value1) := by
  rw [input9016_def, output9016_def]
  kernel_rfl

theorem node9017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9017 value4512 value1 value2 = (output9017, value4513, value1) := by
  rw [input9017_def, output9017_def]
  kernel_rfl

theorem node9018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9018 value4513 value1 value2 = (output9018, value4514, value1) := by
  rw [input9018_def, output9018_def]
  kernel_rfl

theorem node9019_cond_eq
    (child9017 : Flapjack.WordAlloc.removeDeadStructural input9017 value4512 value1 value2 = (output9017, value4513, value1))
    (child9018 : Flapjack.WordAlloc.removeDeadStructural input9018 value4513 value1 value2 = (output9018, value4514, value1)) : Flapjack.WordAlloc.removeDeadStructural input9019 value4512 value1 value2 = (output9019, value4514, value1) := by
  rw [input9019_def, output9019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9017]
  dsimp only
  rw [child9018]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9017_skip, output9018_skip]
  kernel_rfl

theorem node9020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9020 value4514 value1 value2 = (output9020, value4515, value1) := by
  rw [input9020_def, output9020_def]
  kernel_rfl

theorem node9021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9021 value4515 value1 value2 = (output9021, value4516, value1) := by
  rw [input9021_def, output9021_def]
  kernel_rfl

theorem node9022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9022 value4516 value1 value2 = (output9022, value4517, value1) := by
  rw [input9022_def, output9022_def]
  kernel_rfl

theorem node9023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9023 value4517 value1 value2 = (output9023, value5, value1) := by
  rw [input9023_def, output9023_def]
  kernel_rfl

theorem node9024_cond_eq
    (child9022 : Flapjack.WordAlloc.removeDeadStructural input9022 value4516 value1 value2 = (output9022, value4517, value1))
    (child9023 : Flapjack.WordAlloc.removeDeadStructural input9023 value4517 value1 value2 = (output9023, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9024 value4516 value1 value2 = (output9024, value5, value1) := by
  rw [input9024_def, output9024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9022]
  dsimp only
  rw [child9023]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9022_skip, output9023_skip]
  kernel_rfl

theorem node9025_cond_eq
    (child9021 : Flapjack.WordAlloc.removeDeadStructural input9021 value4515 value1 value2 = (output9021, value4516, value1))
    (child9024 : Flapjack.WordAlloc.removeDeadStructural input9024 value4516 value1 value2 = (output9024, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9025 value4515 value1 value2 = (output9025, value5, value1) := by
  rw [input9025_def, output9025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9021]
  dsimp only
  rw [child9024]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9021_skip, output9024_skip]
  kernel_rfl

theorem node9026_cond_eq
    (child9020 : Flapjack.WordAlloc.removeDeadStructural input9020 value4514 value1 value2 = (output9020, value4515, value1))
    (child9025 : Flapjack.WordAlloc.removeDeadStructural input9025 value4515 value1 value2 = (output9025, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9026 value4514 value1 value2 = (output9026, value5, value1) := by
  rw [input9026_def, output9026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9020]
  dsimp only
  rw [child9025]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9020_skip, output9025_skip]
  kernel_rfl

theorem node9027_cond_eq
    (child9019 : Flapjack.WordAlloc.removeDeadStructural input9019 value4512 value1 value2 = (output9019, value4514, value1))
    (child9026 : Flapjack.WordAlloc.removeDeadStructural input9026 value4514 value1 value2 = (output9026, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9027 value4512 value1 value2 = (output9027, value5, value1) := by
  rw [input9027_def, output9027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9019]
  dsimp only
  rw [child9026]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9019_skip, output9026_skip]
  kernel_rfl

theorem node9028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9028 value5 value1 value2 = (output9028, value4518, value1) := by
  rw [input9028_def, output9028_def]
  kernel_rfl

theorem node9029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9029 value4518 value1 value2 = (output9029, value4519, value1) := by
  rw [input9029_def, output9029_def]
  kernel_rfl

theorem node9030_cond_eq
    (child9028 : Flapjack.WordAlloc.removeDeadStructural input9028 value5 value1 value2 = (output9028, value4518, value1))
    (child9029 : Flapjack.WordAlloc.removeDeadStructural input9029 value4518 value1 value2 = (output9029, value4519, value1)) : Flapjack.WordAlloc.removeDeadStructural input9030 value5 value1 value2 = (output9030, value4519, value1) := by
  rw [input9030_def, output9030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9028]
  dsimp only
  rw [child9029]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9028_skip, output9029_skip]
  kernel_rfl

theorem node9031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9031 value4519 value1 value2 = (output9031, value4520, value1) := by
  rw [input9031_def, output9031_def]
  kernel_rfl

theorem node9032_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9032 value4520 value1 value2 = (output9032, value4520, value1) := by
  rw [input9032_def, output9032_def]
  kernel_rfl

theorem node9033_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9033 value4520 value1 value2 = (output9033, value4521, value1) := by
  rw [input9033_def, output9033_def]
  kernel_rfl

theorem node9034_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9034 value4521 value1 value2 = (output9034, value4522, value1) := by
  rw [input9034_def, output9034_def]
  kernel_rfl

theorem node9035_cond_eq
    (child9033 : Flapjack.WordAlloc.removeDeadStructural input9033 value4520 value1 value2 = (output9033, value4521, value1))
    (child9034 : Flapjack.WordAlloc.removeDeadStructural input9034 value4521 value1 value2 = (output9034, value4522, value1)) : Flapjack.WordAlloc.removeDeadStructural input9035 value4520 value1 value2 = (output9035, value4522, value1) := by
  rw [input9035_def, output9035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9033]
  dsimp only
  rw [child9034]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9033_skip, output9034_skip]
  kernel_rfl

theorem node9036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9036 value4522 value1 value2 = (output9036, value4523, value1) := by
  rw [input9036_def, output9036_def]
  kernel_rfl

theorem node9037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9037 value4523 value1 value2 = (output9037, value4524, value1) := by
  rw [input9037_def, output9037_def]
  kernel_rfl

theorem node9038_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9038 value4524 value1 value2 = (output9038, value4525, value1) := by
  rw [input9038_def, output9038_def]
  kernel_rfl

theorem node9039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9039 value4525 value1 value2 = (output9039, value5, value1) := by
  rw [input9039_def, output9039_def]
  kernel_rfl

theorem node9040_cond_eq
    (child9038 : Flapjack.WordAlloc.removeDeadStructural input9038 value4524 value1 value2 = (output9038, value4525, value1))
    (child9039 : Flapjack.WordAlloc.removeDeadStructural input9039 value4525 value1 value2 = (output9039, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9040 value4524 value1 value2 = (output9040, value5, value1) := by
  rw [input9040_def, output9040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9038]
  dsimp only
  rw [child9039]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9038_skip, output9039_skip]
  kernel_rfl

theorem node9041_cond_eq
    (child9037 : Flapjack.WordAlloc.removeDeadStructural input9037 value4523 value1 value2 = (output9037, value4524, value1))
    (child9040 : Flapjack.WordAlloc.removeDeadStructural input9040 value4524 value1 value2 = (output9040, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9041 value4523 value1 value2 = (output9041, value5, value1) := by
  rw [input9041_def, output9041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9037]
  dsimp only
  rw [child9040]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9037_skip, output9040_skip]
  kernel_rfl

theorem node9042_cond_eq
    (child9036 : Flapjack.WordAlloc.removeDeadStructural input9036 value4522 value1 value2 = (output9036, value4523, value1))
    (child9041 : Flapjack.WordAlloc.removeDeadStructural input9041 value4523 value1 value2 = (output9041, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9042 value4522 value1 value2 = (output9042, value5, value1) := by
  rw [input9042_def, output9042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9036]
  dsimp only
  rw [child9041]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9036_skip, output9041_skip]
  kernel_rfl

theorem node9043_cond_eq
    (child9035 : Flapjack.WordAlloc.removeDeadStructural input9035 value4520 value1 value2 = (output9035, value4522, value1))
    (child9042 : Flapjack.WordAlloc.removeDeadStructural input9042 value4522 value1 value2 = (output9042, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9043 value4520 value1 value2 = (output9043, value5, value1) := by
  rw [input9043_def, output9043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9035]
  dsimp only
  rw [child9042]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9035_skip, output9042_skip]
  kernel_rfl

theorem node9044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9044 value5 value1 value2 = (output9044, value4526, value1) := by
  rw [input9044_def, output9044_def]
  kernel_rfl

theorem node9045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9045 value4526 value1 value2 = (output9045, value4527, value1) := by
  rw [input9045_def, output9045_def]
  kernel_rfl

theorem node9046_cond_eq
    (child9044 : Flapjack.WordAlloc.removeDeadStructural input9044 value5 value1 value2 = (output9044, value4526, value1))
    (child9045 : Flapjack.WordAlloc.removeDeadStructural input9045 value4526 value1 value2 = (output9045, value4527, value1)) : Flapjack.WordAlloc.removeDeadStructural input9046 value5 value1 value2 = (output9046, value4527, value1) := by
  rw [input9046_def, output9046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9044]
  dsimp only
  rw [child9045]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9044_skip, output9045_skip]
  kernel_rfl

theorem node9047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9047 value4527 value1 value2 = (output9047, value4528, value1) := by
  rw [input9047_def, output9047_def]
  kernel_rfl

theorem node9048_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9048 value4528 value1 value2 = (output9048, value4528, value1) := by
  rw [input9048_def, output9048_def]
  kernel_rfl

theorem node9049_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9049 value4528 value1 value2 = (output9049, value4529, value1) := by
  rw [input9049_def, output9049_def]
  kernel_rfl

theorem node9050_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9050 value4529 value1 value2 = (output9050, value4530, value1) := by
  rw [input9050_def, output9050_def]
  kernel_rfl

theorem node9051_cond_eq
    (child9049 : Flapjack.WordAlloc.removeDeadStructural input9049 value4528 value1 value2 = (output9049, value4529, value1))
    (child9050 : Flapjack.WordAlloc.removeDeadStructural input9050 value4529 value1 value2 = (output9050, value4530, value1)) : Flapjack.WordAlloc.removeDeadStructural input9051 value4528 value1 value2 = (output9051, value4530, value1) := by
  rw [input9051_def, output9051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9049]
  dsimp only
  rw [child9050]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9049_skip, output9050_skip]
  kernel_rfl

theorem node9052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9052 value4530 value1 value2 = (output9052, value4531, value1) := by
  rw [input9052_def, output9052_def]
  kernel_rfl

theorem node9053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9053 value4531 value1 value2 = (output9053, value4532, value1) := by
  rw [input9053_def, output9053_def]
  kernel_rfl

theorem node9054_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9054 value4532 value1 value2 = (output9054, value4533, value1) := by
  rw [input9054_def, output9054_def]
  kernel_rfl

theorem node9055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9055 value4533 value1 value2 = (output9055, value5, value1) := by
  rw [input9055_def, output9055_def]
  kernel_rfl

theorem node9056_cond_eq
    (child9054 : Flapjack.WordAlloc.removeDeadStructural input9054 value4532 value1 value2 = (output9054, value4533, value1))
    (child9055 : Flapjack.WordAlloc.removeDeadStructural input9055 value4533 value1 value2 = (output9055, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9056 value4532 value1 value2 = (output9056, value5, value1) := by
  rw [input9056_def, output9056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9054]
  dsimp only
  rw [child9055]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9054_skip, output9055_skip]
  kernel_rfl

theorem node9057_cond_eq
    (child9053 : Flapjack.WordAlloc.removeDeadStructural input9053 value4531 value1 value2 = (output9053, value4532, value1))
    (child9056 : Flapjack.WordAlloc.removeDeadStructural input9056 value4532 value1 value2 = (output9056, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9057 value4531 value1 value2 = (output9057, value5, value1) := by
  rw [input9057_def, output9057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9053]
  dsimp only
  rw [child9056]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9053_skip, output9056_skip]
  kernel_rfl

theorem node9058_cond_eq
    (child9052 : Flapjack.WordAlloc.removeDeadStructural input9052 value4530 value1 value2 = (output9052, value4531, value1))
    (child9057 : Flapjack.WordAlloc.removeDeadStructural input9057 value4531 value1 value2 = (output9057, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9058 value4530 value1 value2 = (output9058, value5, value1) := by
  rw [input9058_def, output9058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9052]
  dsimp only
  rw [child9057]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9052_skip, output9057_skip]
  kernel_rfl

theorem node9059_cond_eq
    (child9051 : Flapjack.WordAlloc.removeDeadStructural input9051 value4528 value1 value2 = (output9051, value4530, value1))
    (child9058 : Flapjack.WordAlloc.removeDeadStructural input9058 value4530 value1 value2 = (output9058, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9059 value4528 value1 value2 = (output9059, value5, value1) := by
  rw [input9059_def, output9059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9051]
  dsimp only
  rw [child9058]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9051_skip, output9058_skip]
  kernel_rfl

theorem node9060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9060 value5 value1 value2 = (output9060, value4534, value1) := by
  rw [input9060_def, output9060_def]
  kernel_rfl

theorem node9061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9061 value4534 value1 value2 = (output9061, value4535, value1) := by
  rw [input9061_def, output9061_def]
  kernel_rfl

theorem node9062_cond_eq
    (child9060 : Flapjack.WordAlloc.removeDeadStructural input9060 value5 value1 value2 = (output9060, value4534, value1))
    (child9061 : Flapjack.WordAlloc.removeDeadStructural input9061 value4534 value1 value2 = (output9061, value4535, value1)) : Flapjack.WordAlloc.removeDeadStructural input9062 value5 value1 value2 = (output9062, value4535, value1) := by
  rw [input9062_def, output9062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9060]
  dsimp only
  rw [child9061]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9060_skip, output9061_skip]
  kernel_rfl

theorem node9063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9063 value4535 value1 value2 = (output9063, value4536, value1) := by
  rw [input9063_def, output9063_def]
  kernel_rfl

theorem node9064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9064 value4536 value1 value2 = (output9064, value4536, value1) := by
  rw [input9064_def, output9064_def]
  kernel_rfl

theorem node9065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9065 value4536 value1 value2 = (output9065, value4537, value1) := by
  rw [input9065_def, output9065_def]
  kernel_rfl

theorem node9066_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9066 value4537 value1 value2 = (output9066, value4538, value1) := by
  rw [input9066_def, output9066_def]
  kernel_rfl

theorem node9067_cond_eq
    (child9065 : Flapjack.WordAlloc.removeDeadStructural input9065 value4536 value1 value2 = (output9065, value4537, value1))
    (child9066 : Flapjack.WordAlloc.removeDeadStructural input9066 value4537 value1 value2 = (output9066, value4538, value1)) : Flapjack.WordAlloc.removeDeadStructural input9067 value4536 value1 value2 = (output9067, value4538, value1) := by
  rw [input9067_def, output9067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9065]
  dsimp only
  rw [child9066]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9065_skip, output9066_skip]
  kernel_rfl

theorem node9068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9068 value4538 value1 value2 = (output9068, value4539, value1) := by
  rw [input9068_def, output9068_def]
  kernel_rfl

theorem node9069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9069 value4539 value1 value2 = (output9069, value4540, value1) := by
  rw [input9069_def, output9069_def]
  kernel_rfl

theorem node9070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9070 value4540 value1 value2 = (output9070, value4541, value1) := by
  rw [input9070_def, output9070_def]
  kernel_rfl

theorem node9071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9071 value4541 value1 value2 = (output9071, value5, value1) := by
  rw [input9071_def, output9071_def]
  kernel_rfl

theorem node9072_cond_eq
    (child9070 : Flapjack.WordAlloc.removeDeadStructural input9070 value4540 value1 value2 = (output9070, value4541, value1))
    (child9071 : Flapjack.WordAlloc.removeDeadStructural input9071 value4541 value1 value2 = (output9071, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9072 value4540 value1 value2 = (output9072, value5, value1) := by
  rw [input9072_def, output9072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9070]
  dsimp only
  rw [child9071]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9070_skip, output9071_skip]
  kernel_rfl

theorem node9073_cond_eq
    (child9069 : Flapjack.WordAlloc.removeDeadStructural input9069 value4539 value1 value2 = (output9069, value4540, value1))
    (child9072 : Flapjack.WordAlloc.removeDeadStructural input9072 value4540 value1 value2 = (output9072, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9073 value4539 value1 value2 = (output9073, value5, value1) := by
  rw [input9073_def, output9073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9069]
  dsimp only
  rw [child9072]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9069_skip, output9072_skip]
  kernel_rfl

theorem node9074_cond_eq
    (child9068 : Flapjack.WordAlloc.removeDeadStructural input9068 value4538 value1 value2 = (output9068, value4539, value1))
    (child9073 : Flapjack.WordAlloc.removeDeadStructural input9073 value4539 value1 value2 = (output9073, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9074 value4538 value1 value2 = (output9074, value5, value1) := by
  rw [input9074_def, output9074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9068]
  dsimp only
  rw [child9073]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9068_skip, output9073_skip]
  kernel_rfl

theorem node9075_cond_eq
    (child9067 : Flapjack.WordAlloc.removeDeadStructural input9067 value4536 value1 value2 = (output9067, value4538, value1))
    (child9074 : Flapjack.WordAlloc.removeDeadStructural input9074 value4538 value1 value2 = (output9074, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9075 value4536 value1 value2 = (output9075, value5, value1) := by
  rw [input9075_def, output9075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9067]
  dsimp only
  rw [child9074]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9067_skip, output9074_skip]
  kernel_rfl

theorem node9076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9076 value5 value1 value2 = (output9076, value4542, value1) := by
  rw [input9076_def, output9076_def]
  kernel_rfl

theorem node9077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9077 value4542 value1 value2 = (output9077, value4543, value1) := by
  rw [input9077_def, output9077_def]
  kernel_rfl

theorem node9078_cond_eq
    (child9076 : Flapjack.WordAlloc.removeDeadStructural input9076 value5 value1 value2 = (output9076, value4542, value1))
    (child9077 : Flapjack.WordAlloc.removeDeadStructural input9077 value4542 value1 value2 = (output9077, value4543, value1)) : Flapjack.WordAlloc.removeDeadStructural input9078 value5 value1 value2 = (output9078, value4543, value1) := by
  rw [input9078_def, output9078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9076]
  dsimp only
  rw [child9077]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9076_skip, output9077_skip]
  kernel_rfl

theorem node9079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9079 value4543 value1 value2 = (output9079, value4544, value1) := by
  rw [input9079_def, output9079_def]
  kernel_rfl

theorem node9080_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9080 value4544 value1 value2 = (output9080, value4544, value1) := by
  rw [input9080_def, output9080_def]
  kernel_rfl

theorem node9081_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9081 value4544 value1 value2 = (output9081, value4545, value1) := by
  rw [input9081_def, output9081_def]
  kernel_rfl

theorem node9082_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9082 value4545 value1 value2 = (output9082, value4546, value1) := by
  rw [input9082_def, output9082_def]
  kernel_rfl

theorem node9083_cond_eq
    (child9081 : Flapjack.WordAlloc.removeDeadStructural input9081 value4544 value1 value2 = (output9081, value4545, value1))
    (child9082 : Flapjack.WordAlloc.removeDeadStructural input9082 value4545 value1 value2 = (output9082, value4546, value1)) : Flapjack.WordAlloc.removeDeadStructural input9083 value4544 value1 value2 = (output9083, value4546, value1) := by
  rw [input9083_def, output9083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9081]
  dsimp only
  rw [child9082]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9081_skip, output9082_skip]
  kernel_rfl

theorem node9084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9084 value4546 value1 value2 = (output9084, value4547, value1) := by
  rw [input9084_def, output9084_def]
  kernel_rfl

theorem node9085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9085 value4547 value1 value2 = (output9085, value4548, value1) := by
  rw [input9085_def, output9085_def]
  kernel_rfl

theorem node9086_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9086 value4548 value1 value2 = (output9086, value4549, value1) := by
  rw [input9086_def, output9086_def]
  kernel_rfl

theorem node9087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9087 value4549 value1 value2 = (output9087, value5, value1) := by
  rw [input9087_def, output9087_def]
  kernel_rfl

theorem node9088_cond_eq
    (child9086 : Flapjack.WordAlloc.removeDeadStructural input9086 value4548 value1 value2 = (output9086, value4549, value1))
    (child9087 : Flapjack.WordAlloc.removeDeadStructural input9087 value4549 value1 value2 = (output9087, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9088 value4548 value1 value2 = (output9088, value5, value1) := by
  rw [input9088_def, output9088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9086]
  dsimp only
  rw [child9087]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9086_skip, output9087_skip]
  kernel_rfl

theorem node9089_cond_eq
    (child9085 : Flapjack.WordAlloc.removeDeadStructural input9085 value4547 value1 value2 = (output9085, value4548, value1))
    (child9088 : Flapjack.WordAlloc.removeDeadStructural input9088 value4548 value1 value2 = (output9088, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9089 value4547 value1 value2 = (output9089, value5, value1) := by
  rw [input9089_def, output9089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9085]
  dsimp only
  rw [child9088]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9085_skip, output9088_skip]
  kernel_rfl

theorem node9090_cond_eq
    (child9084 : Flapjack.WordAlloc.removeDeadStructural input9084 value4546 value1 value2 = (output9084, value4547, value1))
    (child9089 : Flapjack.WordAlloc.removeDeadStructural input9089 value4547 value1 value2 = (output9089, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9090 value4546 value1 value2 = (output9090, value5, value1) := by
  rw [input9090_def, output9090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9084]
  dsimp only
  rw [child9089]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9084_skip, output9089_skip]
  kernel_rfl

theorem node9091_cond_eq
    (child9083 : Flapjack.WordAlloc.removeDeadStructural input9083 value4544 value1 value2 = (output9083, value4546, value1))
    (child9090 : Flapjack.WordAlloc.removeDeadStructural input9090 value4546 value1 value2 = (output9090, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9091 value4544 value1 value2 = (output9091, value5, value1) := by
  rw [input9091_def, output9091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9083]
  dsimp only
  rw [child9090]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9083_skip, output9090_skip]
  kernel_rfl

theorem node9092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9092 value5 value1 value2 = (output9092, value4550, value1) := by
  rw [input9092_def, output9092_def]
  kernel_rfl

theorem node9093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9093 value4550 value1 value2 = (output9093, value4551, value1) := by
  rw [input9093_def, output9093_def]
  kernel_rfl

theorem node9094_cond_eq
    (child9092 : Flapjack.WordAlloc.removeDeadStructural input9092 value5 value1 value2 = (output9092, value4550, value1))
    (child9093 : Flapjack.WordAlloc.removeDeadStructural input9093 value4550 value1 value2 = (output9093, value4551, value1)) : Flapjack.WordAlloc.removeDeadStructural input9094 value5 value1 value2 = (output9094, value4551, value1) := by
  rw [input9094_def, output9094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9092]
  dsimp only
  rw [child9093]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9092_skip, output9093_skip]
  kernel_rfl

theorem node9095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9095 value4551 value1 value2 = (output9095, value4552, value1) := by
  rw [input9095_def, output9095_def]
  kernel_rfl

theorem node9096_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9096 value4552 value1 value2 = (output9096, value4552, value1) := by
  rw [input9096_def, output9096_def]
  kernel_rfl

theorem node9097_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9097 value4552 value1 value2 = (output9097, value4553, value1) := by
  rw [input9097_def, output9097_def]
  kernel_rfl

theorem node9098_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9098 value4553 value1 value2 = (output9098, value4554, value1) := by
  rw [input9098_def, output9098_def]
  kernel_rfl

theorem node9099_cond_eq
    (child9097 : Flapjack.WordAlloc.removeDeadStructural input9097 value4552 value1 value2 = (output9097, value4553, value1))
    (child9098 : Flapjack.WordAlloc.removeDeadStructural input9098 value4553 value1 value2 = (output9098, value4554, value1)) : Flapjack.WordAlloc.removeDeadStructural input9099 value4552 value1 value2 = (output9099, value4554, value1) := by
  rw [input9099_def, output9099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9097]
  dsimp only
  rw [child9098]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9097_skip, output9098_skip]
  kernel_rfl

theorem node9100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9100 value4554 value1 value2 = (output9100, value4555, value1) := by
  rw [input9100_def, output9100_def]
  kernel_rfl

theorem node9101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9101 value4555 value1 value2 = (output9101, value4556, value1) := by
  rw [input9101_def, output9101_def]
  kernel_rfl

theorem node9102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9102 value4556 value1 value2 = (output9102, value4557, value1) := by
  rw [input9102_def, output9102_def]
  kernel_rfl

theorem node9103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9103 value4557 value1 value2 = (output9103, value5, value1) := by
  rw [input9103_def, output9103_def]
  kernel_rfl

theorem node9104_cond_eq
    (child9102 : Flapjack.WordAlloc.removeDeadStructural input9102 value4556 value1 value2 = (output9102, value4557, value1))
    (child9103 : Flapjack.WordAlloc.removeDeadStructural input9103 value4557 value1 value2 = (output9103, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9104 value4556 value1 value2 = (output9104, value5, value1) := by
  rw [input9104_def, output9104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9102]
  dsimp only
  rw [child9103]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9102_skip, output9103_skip]
  kernel_rfl

theorem node9105_cond_eq
    (child9101 : Flapjack.WordAlloc.removeDeadStructural input9101 value4555 value1 value2 = (output9101, value4556, value1))
    (child9104 : Flapjack.WordAlloc.removeDeadStructural input9104 value4556 value1 value2 = (output9104, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9105 value4555 value1 value2 = (output9105, value5, value1) := by
  rw [input9105_def, output9105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9101]
  dsimp only
  rw [child9104]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9101_skip, output9104_skip]
  kernel_rfl

theorem node9106_cond_eq
    (child9100 : Flapjack.WordAlloc.removeDeadStructural input9100 value4554 value1 value2 = (output9100, value4555, value1))
    (child9105 : Flapjack.WordAlloc.removeDeadStructural input9105 value4555 value1 value2 = (output9105, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9106 value4554 value1 value2 = (output9106, value5, value1) := by
  rw [input9106_def, output9106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9100]
  dsimp only
  rw [child9105]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9100_skip, output9105_skip]
  kernel_rfl

theorem node9107_cond_eq
    (child9099 : Flapjack.WordAlloc.removeDeadStructural input9099 value4552 value1 value2 = (output9099, value4554, value1))
    (child9106 : Flapjack.WordAlloc.removeDeadStructural input9106 value4554 value1 value2 = (output9106, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9107 value4552 value1 value2 = (output9107, value5, value1) := by
  rw [input9107_def, output9107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9099]
  dsimp only
  rw [child9106]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9099_skip, output9106_skip]
  kernel_rfl

theorem node9108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9108 value5 value1 value2 = (output9108, value4558, value1) := by
  rw [input9108_def, output9108_def]
  kernel_rfl

theorem node9109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9109 value4558 value1 value2 = (output9109, value4559, value1) := by
  rw [input9109_def, output9109_def]
  kernel_rfl

theorem node9110_cond_eq
    (child9108 : Flapjack.WordAlloc.removeDeadStructural input9108 value5 value1 value2 = (output9108, value4558, value1))
    (child9109 : Flapjack.WordAlloc.removeDeadStructural input9109 value4558 value1 value2 = (output9109, value4559, value1)) : Flapjack.WordAlloc.removeDeadStructural input9110 value5 value1 value2 = (output9110, value4559, value1) := by
  rw [input9110_def, output9110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9108]
  dsimp only
  rw [child9109]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9108_skip, output9109_skip]
  kernel_rfl

theorem node9111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9111 value4559 value1 value2 = (output9111, value4560, value1) := by
  rw [input9111_def, output9111_def]
  kernel_rfl

theorem node9112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9112 value4560 value1 value2 = (output9112, value4560, value1) := by
  rw [input9112_def, output9112_def]
  kernel_rfl

theorem node9113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9113 value4560 value1 value2 = (output9113, value4561, value1) := by
  rw [input9113_def, output9113_def]
  kernel_rfl

theorem node9114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9114 value4561 value1 value2 = (output9114, value4562, value1) := by
  rw [input9114_def, output9114_def]
  kernel_rfl

theorem node9115_cond_eq
    (child9113 : Flapjack.WordAlloc.removeDeadStructural input9113 value4560 value1 value2 = (output9113, value4561, value1))
    (child9114 : Flapjack.WordAlloc.removeDeadStructural input9114 value4561 value1 value2 = (output9114, value4562, value1)) : Flapjack.WordAlloc.removeDeadStructural input9115 value4560 value1 value2 = (output9115, value4562, value1) := by
  rw [input9115_def, output9115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9113]
  dsimp only
  rw [child9114]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9113_skip, output9114_skip]
  kernel_rfl

theorem node9116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9116 value4562 value1 value2 = (output9116, value4563, value1) := by
  rw [input9116_def, output9116_def]
  kernel_rfl

theorem node9117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9117 value4563 value1 value2 = (output9117, value4564, value1) := by
  rw [input9117_def, output9117_def]
  kernel_rfl

theorem node9118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9118 value4564 value1 value2 = (output9118, value4565, value1) := by
  rw [input9118_def, output9118_def]
  kernel_rfl

theorem node9119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9119 value4565 value1 value2 = (output9119, value5, value1) := by
  rw [input9119_def, output9119_def]
  kernel_rfl

theorem node9120_cond_eq
    (child9118 : Flapjack.WordAlloc.removeDeadStructural input9118 value4564 value1 value2 = (output9118, value4565, value1))
    (child9119 : Flapjack.WordAlloc.removeDeadStructural input9119 value4565 value1 value2 = (output9119, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9120 value4564 value1 value2 = (output9120, value5, value1) := by
  rw [input9120_def, output9120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9118]
  dsimp only
  rw [child9119]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9118_skip, output9119_skip]
  kernel_rfl

theorem node9121_cond_eq
    (child9117 : Flapjack.WordAlloc.removeDeadStructural input9117 value4563 value1 value2 = (output9117, value4564, value1))
    (child9120 : Flapjack.WordAlloc.removeDeadStructural input9120 value4564 value1 value2 = (output9120, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9121 value4563 value1 value2 = (output9121, value5, value1) := by
  rw [input9121_def, output9121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9117]
  dsimp only
  rw [child9120]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9117_skip, output9120_skip]
  kernel_rfl

theorem node9122_cond_eq
    (child9116 : Flapjack.WordAlloc.removeDeadStructural input9116 value4562 value1 value2 = (output9116, value4563, value1))
    (child9121 : Flapjack.WordAlloc.removeDeadStructural input9121 value4563 value1 value2 = (output9121, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9122 value4562 value1 value2 = (output9122, value5, value1) := by
  rw [input9122_def, output9122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9116]
  dsimp only
  rw [child9121]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9116_skip, output9121_skip]
  kernel_rfl

theorem node9123_cond_eq
    (child9115 : Flapjack.WordAlloc.removeDeadStructural input9115 value4560 value1 value2 = (output9115, value4562, value1))
    (child9122 : Flapjack.WordAlloc.removeDeadStructural input9122 value4562 value1 value2 = (output9122, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9123 value4560 value1 value2 = (output9123, value5, value1) := by
  rw [input9123_def, output9123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9115]
  dsimp only
  rw [child9122]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9115_skip, output9122_skip]
  kernel_rfl

theorem node9124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9124 value5 value1 value2 = (output9124, value4566, value1) := by
  rw [input9124_def, output9124_def]
  kernel_rfl

theorem node9125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9125 value4566 value1 value2 = (output9125, value4567, value1) := by
  rw [input9125_def, output9125_def]
  kernel_rfl

theorem node9126_cond_eq
    (child9124 : Flapjack.WordAlloc.removeDeadStructural input9124 value5 value1 value2 = (output9124, value4566, value1))
    (child9125 : Flapjack.WordAlloc.removeDeadStructural input9125 value4566 value1 value2 = (output9125, value4567, value1)) : Flapjack.WordAlloc.removeDeadStructural input9126 value5 value1 value2 = (output9126, value4567, value1) := by
  rw [input9126_def, output9126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9124]
  dsimp only
  rw [child9125]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9124_skip, output9125_skip]
  kernel_rfl

theorem node9127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9127 value4567 value1 value2 = (output9127, value4568, value1) := by
  rw [input9127_def, output9127_def]
  kernel_rfl

theorem node9128_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9128 value4568 value1 value2 = (output9128, value4568, value1) := by
  rw [input9128_def, output9128_def]
  kernel_rfl

theorem node9129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9129 value4568 value1 value2 = (output9129, value4569, value1) := by
  rw [input9129_def, output9129_def]
  kernel_rfl

theorem node9130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9130 value4569 value1 value2 = (output9130, value4570, value1) := by
  rw [input9130_def, output9130_def]
  kernel_rfl

theorem node9131_cond_eq
    (child9129 : Flapjack.WordAlloc.removeDeadStructural input9129 value4568 value1 value2 = (output9129, value4569, value1))
    (child9130 : Flapjack.WordAlloc.removeDeadStructural input9130 value4569 value1 value2 = (output9130, value4570, value1)) : Flapjack.WordAlloc.removeDeadStructural input9131 value4568 value1 value2 = (output9131, value4570, value1) := by
  rw [input9131_def, output9131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9129]
  dsimp only
  rw [child9130]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9129_skip, output9130_skip]
  kernel_rfl

theorem node9132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9132 value4570 value1 value2 = (output9132, value4571, value1) := by
  rw [input9132_def, output9132_def]
  kernel_rfl

theorem node9133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9133 value4571 value1 value2 = (output9133, value4572, value1) := by
  rw [input9133_def, output9133_def]
  kernel_rfl

theorem node9134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9134 value4572 value1 value2 = (output9134, value4573, value1) := by
  rw [input9134_def, output9134_def]
  kernel_rfl

theorem node9135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9135 value4573 value1 value2 = (output9135, value5, value1) := by
  rw [input9135_def, output9135_def]
  kernel_rfl

theorem node9136_cond_eq
    (child9134 : Flapjack.WordAlloc.removeDeadStructural input9134 value4572 value1 value2 = (output9134, value4573, value1))
    (child9135 : Flapjack.WordAlloc.removeDeadStructural input9135 value4573 value1 value2 = (output9135, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9136 value4572 value1 value2 = (output9136, value5, value1) := by
  rw [input9136_def, output9136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9134]
  dsimp only
  rw [child9135]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9134_skip, output9135_skip]
  kernel_rfl

theorem node9137_cond_eq
    (child9133 : Flapjack.WordAlloc.removeDeadStructural input9133 value4571 value1 value2 = (output9133, value4572, value1))
    (child9136 : Flapjack.WordAlloc.removeDeadStructural input9136 value4572 value1 value2 = (output9136, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9137 value4571 value1 value2 = (output9137, value5, value1) := by
  rw [input9137_def, output9137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9133]
  dsimp only
  rw [child9136]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9133_skip, output9136_skip]
  kernel_rfl

theorem node9138_cond_eq
    (child9132 : Flapjack.WordAlloc.removeDeadStructural input9132 value4570 value1 value2 = (output9132, value4571, value1))
    (child9137 : Flapjack.WordAlloc.removeDeadStructural input9137 value4571 value1 value2 = (output9137, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9138 value4570 value1 value2 = (output9138, value5, value1) := by
  rw [input9138_def, output9138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9132]
  dsimp only
  rw [child9137]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9132_skip, output9137_skip]
  kernel_rfl

theorem node9139_cond_eq
    (child9131 : Flapjack.WordAlloc.removeDeadStructural input9131 value4568 value1 value2 = (output9131, value4570, value1))
    (child9138 : Flapjack.WordAlloc.removeDeadStructural input9138 value4570 value1 value2 = (output9138, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9139 value4568 value1 value2 = (output9139, value5, value1) := by
  rw [input9139_def, output9139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9131]
  dsimp only
  rw [child9138]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9131_skip, output9138_skip]
  kernel_rfl

theorem node9140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9140 value5 value1 value2 = (output9140, value4574, value1) := by
  rw [input9140_def, output9140_def]
  kernel_rfl

theorem node9141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9141 value4574 value1 value2 = (output9141, value4575, value1) := by
  rw [input9141_def, output9141_def]
  kernel_rfl

theorem node9142_cond_eq
    (child9140 : Flapjack.WordAlloc.removeDeadStructural input9140 value5 value1 value2 = (output9140, value4574, value1))
    (child9141 : Flapjack.WordAlloc.removeDeadStructural input9141 value4574 value1 value2 = (output9141, value4575, value1)) : Flapjack.WordAlloc.removeDeadStructural input9142 value5 value1 value2 = (output9142, value4575, value1) := by
  rw [input9142_def, output9142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9140]
  dsimp only
  rw [child9141]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9140_skip, output9141_skip]
  kernel_rfl

theorem node9143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9143 value4575 value1 value2 = (output9143, value4576, value1) := by
  rw [input9143_def, output9143_def]
  kernel_rfl

theorem node9144_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9144 value4576 value1 value2 = (output9144, value4576, value1) := by
  rw [input9144_def, output9144_def]
  kernel_rfl

theorem node9145_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9145 value4576 value1 value2 = (output9145, value4577, value1) := by
  rw [input9145_def, output9145_def]
  kernel_rfl

theorem node9146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9146 value4577 value1 value2 = (output9146, value4578, value1) := by
  rw [input9146_def, output9146_def]
  kernel_rfl

theorem node9147_cond_eq
    (child9145 : Flapjack.WordAlloc.removeDeadStructural input9145 value4576 value1 value2 = (output9145, value4577, value1))
    (child9146 : Flapjack.WordAlloc.removeDeadStructural input9146 value4577 value1 value2 = (output9146, value4578, value1)) : Flapjack.WordAlloc.removeDeadStructural input9147 value4576 value1 value2 = (output9147, value4578, value1) := by
  rw [input9147_def, output9147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9145]
  dsimp only
  rw [child9146]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9145_skip, output9146_skip]
  kernel_rfl

theorem node9148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9148 value4578 value1 value2 = (output9148, value4579, value1) := by
  rw [input9148_def, output9148_def]
  kernel_rfl

theorem node9149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9149 value4579 value1 value2 = (output9149, value4580, value1) := by
  rw [input9149_def, output9149_def]
  kernel_rfl

theorem node9150_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9150 value4580 value1 value2 = (output9150, value4581, value1) := by
  rw [input9150_def, output9150_def]
  kernel_rfl

theorem node9151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9151 value4581 value1 value2 = (output9151, value5, value1) := by
  rw [input9151_def, output9151_def]
  kernel_rfl

theorem node9152_cond_eq
    (child9150 : Flapjack.WordAlloc.removeDeadStructural input9150 value4580 value1 value2 = (output9150, value4581, value1))
    (child9151 : Flapjack.WordAlloc.removeDeadStructural input9151 value4581 value1 value2 = (output9151, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9152 value4580 value1 value2 = (output9152, value5, value1) := by
  rw [input9152_def, output9152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9150]
  dsimp only
  rw [child9151]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9150_skip, output9151_skip]
  kernel_rfl

theorem node9153_cond_eq
    (child9149 : Flapjack.WordAlloc.removeDeadStructural input9149 value4579 value1 value2 = (output9149, value4580, value1))
    (child9152 : Flapjack.WordAlloc.removeDeadStructural input9152 value4580 value1 value2 = (output9152, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9153 value4579 value1 value2 = (output9153, value5, value1) := by
  rw [input9153_def, output9153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9149]
  dsimp only
  rw [child9152]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9149_skip, output9152_skip]
  kernel_rfl

theorem node9154_cond_eq
    (child9148 : Flapjack.WordAlloc.removeDeadStructural input9148 value4578 value1 value2 = (output9148, value4579, value1))
    (child9153 : Flapjack.WordAlloc.removeDeadStructural input9153 value4579 value1 value2 = (output9153, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9154 value4578 value1 value2 = (output9154, value5, value1) := by
  rw [input9154_def, output9154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9148]
  dsimp only
  rw [child9153]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9148_skip, output9153_skip]
  kernel_rfl

theorem node9155_cond_eq
    (child9147 : Flapjack.WordAlloc.removeDeadStructural input9147 value4576 value1 value2 = (output9147, value4578, value1))
    (child9154 : Flapjack.WordAlloc.removeDeadStructural input9154 value4578 value1 value2 = (output9154, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9155 value4576 value1 value2 = (output9155, value5, value1) := by
  rw [input9155_def, output9155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9147]
  dsimp only
  rw [child9154]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9147_skip, output9154_skip]
  kernel_rfl

theorem node9156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9156 value5 value1 value2 = (output9156, value4582, value1) := by
  rw [input9156_def, output9156_def]
  kernel_rfl

theorem node9157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9157 value4582 value1 value2 = (output9157, value4583, value1) := by
  rw [input9157_def, output9157_def]
  kernel_rfl

theorem node9158_cond_eq
    (child9156 : Flapjack.WordAlloc.removeDeadStructural input9156 value5 value1 value2 = (output9156, value4582, value1))
    (child9157 : Flapjack.WordAlloc.removeDeadStructural input9157 value4582 value1 value2 = (output9157, value4583, value1)) : Flapjack.WordAlloc.removeDeadStructural input9158 value5 value1 value2 = (output9158, value4583, value1) := by
  rw [input9158_def, output9158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9156]
  dsimp only
  rw [child9157]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9156_skip, output9157_skip]
  kernel_rfl

theorem node9159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9159 value4583 value1 value2 = (output9159, value4584, value1) := by
  rw [input9159_def, output9159_def]
  kernel_rfl

theorem node9160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9160 value4584 value1 value2 = (output9160, value4584, value1) := by
  rw [input9160_def, output9160_def]
  kernel_rfl

theorem node9161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9161 value4584 value1 value2 = (output9161, value4585, value1) := by
  rw [input9161_def, output9161_def]
  kernel_rfl

theorem node9162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9162 value4585 value1 value2 = (output9162, value4586, value1) := by
  rw [input9162_def, output9162_def]
  kernel_rfl

theorem node9163_cond_eq
    (child9161 : Flapjack.WordAlloc.removeDeadStructural input9161 value4584 value1 value2 = (output9161, value4585, value1))
    (child9162 : Flapjack.WordAlloc.removeDeadStructural input9162 value4585 value1 value2 = (output9162, value4586, value1)) : Flapjack.WordAlloc.removeDeadStructural input9163 value4584 value1 value2 = (output9163, value4586, value1) := by
  rw [input9163_def, output9163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9161]
  dsimp only
  rw [child9162]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9161_skip, output9162_skip]
  kernel_rfl

theorem node9164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9164 value4586 value1 value2 = (output9164, value4587, value1) := by
  rw [input9164_def, output9164_def]
  kernel_rfl

theorem node9165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9165 value4587 value1 value2 = (output9165, value4588, value1) := by
  rw [input9165_def, output9165_def]
  kernel_rfl

theorem node9166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9166 value4588 value1 value2 = (output9166, value4589, value1) := by
  rw [input9166_def, output9166_def]
  kernel_rfl

theorem node9167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9167 value4589 value1 value2 = (output9167, value5, value1) := by
  rw [input9167_def, output9167_def]
  kernel_rfl

theorem node9168_cond_eq
    (child9166 : Flapjack.WordAlloc.removeDeadStructural input9166 value4588 value1 value2 = (output9166, value4589, value1))
    (child9167 : Flapjack.WordAlloc.removeDeadStructural input9167 value4589 value1 value2 = (output9167, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9168 value4588 value1 value2 = (output9168, value5, value1) := by
  rw [input9168_def, output9168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9166]
  dsimp only
  rw [child9167]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9166_skip, output9167_skip]
  kernel_rfl

theorem node9169_cond_eq
    (child9165 : Flapjack.WordAlloc.removeDeadStructural input9165 value4587 value1 value2 = (output9165, value4588, value1))
    (child9168 : Flapjack.WordAlloc.removeDeadStructural input9168 value4588 value1 value2 = (output9168, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9169 value4587 value1 value2 = (output9169, value5, value1) := by
  rw [input9169_def, output9169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9165]
  dsimp only
  rw [child9168]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9165_skip, output9168_skip]
  kernel_rfl

theorem node9170_cond_eq
    (child9164 : Flapjack.WordAlloc.removeDeadStructural input9164 value4586 value1 value2 = (output9164, value4587, value1))
    (child9169 : Flapjack.WordAlloc.removeDeadStructural input9169 value4587 value1 value2 = (output9169, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9170 value4586 value1 value2 = (output9170, value5, value1) := by
  rw [input9170_def, output9170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9164]
  dsimp only
  rw [child9169]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9164_skip, output9169_skip]
  kernel_rfl

theorem node9171_cond_eq
    (child9163 : Flapjack.WordAlloc.removeDeadStructural input9163 value4584 value1 value2 = (output9163, value4586, value1))
    (child9170 : Flapjack.WordAlloc.removeDeadStructural input9170 value4586 value1 value2 = (output9170, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9171 value4584 value1 value2 = (output9171, value5, value1) := by
  rw [input9171_def, output9171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9163]
  dsimp only
  rw [child9170]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9163_skip, output9170_skip]
  kernel_rfl

theorem node9172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9172 value5 value1 value2 = (output9172, value4590, value1) := by
  rw [input9172_def, output9172_def]
  kernel_rfl

theorem node9173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9173 value4590 value1 value2 = (output9173, value4591, value1) := by
  rw [input9173_def, output9173_def]
  kernel_rfl

theorem node9174_cond_eq
    (child9172 : Flapjack.WordAlloc.removeDeadStructural input9172 value5 value1 value2 = (output9172, value4590, value1))
    (child9173 : Flapjack.WordAlloc.removeDeadStructural input9173 value4590 value1 value2 = (output9173, value4591, value1)) : Flapjack.WordAlloc.removeDeadStructural input9174 value5 value1 value2 = (output9174, value4591, value1) := by
  rw [input9174_def, output9174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9172]
  dsimp only
  rw [child9173]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9172_skip, output9173_skip]
  kernel_rfl

theorem node9175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9175 value4591 value1 value2 = (output9175, value4592, value1) := by
  rw [input9175_def, output9175_def]
  kernel_rfl

theorem node9176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9176 value4592 value1 value2 = (output9176, value4592, value1) := by
  rw [input9176_def, output9176_def]
  kernel_rfl

theorem node9177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9177 value4592 value1 value2 = (output9177, value4593, value1) := by
  rw [input9177_def, output9177_def]
  kernel_rfl

theorem node9178_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9178 value4593 value1 value2 = (output9178, value4594, value1) := by
  rw [input9178_def, output9178_def]
  kernel_rfl

theorem node9179_cond_eq
    (child9177 : Flapjack.WordAlloc.removeDeadStructural input9177 value4592 value1 value2 = (output9177, value4593, value1))
    (child9178 : Flapjack.WordAlloc.removeDeadStructural input9178 value4593 value1 value2 = (output9178, value4594, value1)) : Flapjack.WordAlloc.removeDeadStructural input9179 value4592 value1 value2 = (output9179, value4594, value1) := by
  rw [input9179_def, output9179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9177]
  dsimp only
  rw [child9178]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9177_skip, output9178_skip]
  kernel_rfl

theorem node9180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9180 value4594 value1 value2 = (output9180, value4595, value1) := by
  rw [input9180_def, output9180_def]
  kernel_rfl

theorem node9181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9181 value4595 value1 value2 = (output9181, value4596, value1) := by
  rw [input9181_def, output9181_def]
  kernel_rfl

theorem node9182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9182 value4596 value1 value2 = (output9182, value4597, value1) := by
  rw [input9182_def, output9182_def]
  kernel_rfl

theorem node9183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9183 value4597 value1 value2 = (output9183, value5, value1) := by
  rw [input9183_def, output9183_def]
  kernel_rfl

theorem node9184_cond_eq
    (child9182 : Flapjack.WordAlloc.removeDeadStructural input9182 value4596 value1 value2 = (output9182, value4597, value1))
    (child9183 : Flapjack.WordAlloc.removeDeadStructural input9183 value4597 value1 value2 = (output9183, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9184 value4596 value1 value2 = (output9184, value5, value1) := by
  rw [input9184_def, output9184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9182]
  dsimp only
  rw [child9183]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9182_skip, output9183_skip]
  kernel_rfl

theorem node9185_cond_eq
    (child9181 : Flapjack.WordAlloc.removeDeadStructural input9181 value4595 value1 value2 = (output9181, value4596, value1))
    (child9184 : Flapjack.WordAlloc.removeDeadStructural input9184 value4596 value1 value2 = (output9184, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9185 value4595 value1 value2 = (output9185, value5, value1) := by
  rw [input9185_def, output9185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9181]
  dsimp only
  rw [child9184]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9181_skip, output9184_skip]
  kernel_rfl

theorem node9186_cond_eq
    (child9180 : Flapjack.WordAlloc.removeDeadStructural input9180 value4594 value1 value2 = (output9180, value4595, value1))
    (child9185 : Flapjack.WordAlloc.removeDeadStructural input9185 value4595 value1 value2 = (output9185, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9186 value4594 value1 value2 = (output9186, value5, value1) := by
  rw [input9186_def, output9186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9180]
  dsimp only
  rw [child9185]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9180_skip, output9185_skip]
  kernel_rfl

theorem node9187_cond_eq
    (child9179 : Flapjack.WordAlloc.removeDeadStructural input9179 value4592 value1 value2 = (output9179, value4594, value1))
    (child9186 : Flapjack.WordAlloc.removeDeadStructural input9186 value4594 value1 value2 = (output9186, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9187 value4592 value1 value2 = (output9187, value5, value1) := by
  rw [input9187_def, output9187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9179]
  dsimp only
  rw [child9186]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9179_skip, output9186_skip]
  kernel_rfl

theorem node9188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9188 value5 value1 value2 = (output9188, value4598, value1) := by
  rw [input9188_def, output9188_def]
  kernel_rfl

theorem node9189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9189 value4598 value1 value2 = (output9189, value4599, value1) := by
  rw [input9189_def, output9189_def]
  kernel_rfl

theorem node9190_cond_eq
    (child9188 : Flapjack.WordAlloc.removeDeadStructural input9188 value5 value1 value2 = (output9188, value4598, value1))
    (child9189 : Flapjack.WordAlloc.removeDeadStructural input9189 value4598 value1 value2 = (output9189, value4599, value1)) : Flapjack.WordAlloc.removeDeadStructural input9190 value5 value1 value2 = (output9190, value4599, value1) := by
  rw [input9190_def, output9190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9188]
  dsimp only
  rw [child9189]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9188_skip, output9189_skip]
  kernel_rfl

theorem node9191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9191 value4599 value1 value2 = (output9191, value4600, value1) := by
  rw [input9191_def, output9191_def]
  kernel_rfl

theorem node9192_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9192 value4600 value1 value2 = (output9192, value4600, value1) := by
  rw [input9192_def, output9192_def]
  kernel_rfl

theorem node9193_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9193 value4600 value1 value2 = (output9193, value4601, value1) := by
  rw [input9193_def, output9193_def]
  kernel_rfl

theorem node9194_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9194 value4601 value1 value2 = (output9194, value4602, value1) := by
  rw [input9194_def, output9194_def]
  kernel_rfl

theorem node9195_cond_eq
    (child9193 : Flapjack.WordAlloc.removeDeadStructural input9193 value4600 value1 value2 = (output9193, value4601, value1))
    (child9194 : Flapjack.WordAlloc.removeDeadStructural input9194 value4601 value1 value2 = (output9194, value4602, value1)) : Flapjack.WordAlloc.removeDeadStructural input9195 value4600 value1 value2 = (output9195, value4602, value1) := by
  rw [input9195_def, output9195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9193]
  dsimp only
  rw [child9194]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9193_skip, output9194_skip]
  kernel_rfl

theorem node9196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9196 value4602 value1 value2 = (output9196, value4603, value1) := by
  rw [input9196_def, output9196_def]
  kernel_rfl

theorem node9197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9197 value4603 value1 value2 = (output9197, value4604, value1) := by
  rw [input9197_def, output9197_def]
  kernel_rfl

theorem node9198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9198 value4604 value1 value2 = (output9198, value4605, value1) := by
  rw [input9198_def, output9198_def]
  kernel_rfl

theorem node9199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9199 value4605 value1 value2 = (output9199, value5, value1) := by
  rw [input9199_def, output9199_def]
  kernel_rfl

theorem node9200_cond_eq
    (child9198 : Flapjack.WordAlloc.removeDeadStructural input9198 value4604 value1 value2 = (output9198, value4605, value1))
    (child9199 : Flapjack.WordAlloc.removeDeadStructural input9199 value4605 value1 value2 = (output9199, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9200 value4604 value1 value2 = (output9200, value5, value1) := by
  rw [input9200_def, output9200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9198]
  dsimp only
  rw [child9199]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9198_skip, output9199_skip]
  kernel_rfl

theorem node9201_cond_eq
    (child9197 : Flapjack.WordAlloc.removeDeadStructural input9197 value4603 value1 value2 = (output9197, value4604, value1))
    (child9200 : Flapjack.WordAlloc.removeDeadStructural input9200 value4604 value1 value2 = (output9200, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9201 value4603 value1 value2 = (output9201, value5, value1) := by
  rw [input9201_def, output9201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9197]
  dsimp only
  rw [child9200]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9197_skip, output9200_skip]
  kernel_rfl

theorem node9202_cond_eq
    (child9196 : Flapjack.WordAlloc.removeDeadStructural input9196 value4602 value1 value2 = (output9196, value4603, value1))
    (child9201 : Flapjack.WordAlloc.removeDeadStructural input9201 value4603 value1 value2 = (output9201, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9202 value4602 value1 value2 = (output9202, value5, value1) := by
  rw [input9202_def, output9202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9196]
  dsimp only
  rw [child9201]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9196_skip, output9201_skip]
  kernel_rfl

theorem node9203_cond_eq
    (child9195 : Flapjack.WordAlloc.removeDeadStructural input9195 value4600 value1 value2 = (output9195, value4602, value1))
    (child9202 : Flapjack.WordAlloc.removeDeadStructural input9202 value4602 value1 value2 = (output9202, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9203 value4600 value1 value2 = (output9203, value5, value1) := by
  rw [input9203_def, output9203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9195]
  dsimp only
  rw [child9202]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9195_skip, output9202_skip]
  kernel_rfl

theorem node9204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9204 value5 value1 value2 = (output9204, value4606, value1) := by
  rw [input9204_def, output9204_def]
  kernel_rfl

theorem node9205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9205 value4606 value1 value2 = (output9205, value4607, value1) := by
  rw [input9205_def, output9205_def]
  kernel_rfl

theorem node9206_cond_eq
    (child9204 : Flapjack.WordAlloc.removeDeadStructural input9204 value5 value1 value2 = (output9204, value4606, value1))
    (child9205 : Flapjack.WordAlloc.removeDeadStructural input9205 value4606 value1 value2 = (output9205, value4607, value1)) : Flapjack.WordAlloc.removeDeadStructural input9206 value5 value1 value2 = (output9206, value4607, value1) := by
  rw [input9206_def, output9206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9204]
  dsimp only
  rw [child9205]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9204_skip, output9205_skip]
  kernel_rfl

theorem node9207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9207 value4607 value1 value2 = (output9207, value4608, value1) := by
  rw [input9207_def, output9207_def]
  kernel_rfl

theorem node9208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9208 value4608 value1 value2 = (output9208, value4608, value1) := by
  rw [input9208_def, output9208_def]
  kernel_rfl

theorem node9209_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9209 value4608 value1 value2 = (output9209, value4609, value1) := by
  rw [input9209_def, output9209_def]
  kernel_rfl

theorem node9210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9210 value4609 value1 value2 = (output9210, value4610, value1) := by
  rw [input9210_def, output9210_def]
  kernel_rfl

theorem node9211_cond_eq
    (child9209 : Flapjack.WordAlloc.removeDeadStructural input9209 value4608 value1 value2 = (output9209, value4609, value1))
    (child9210 : Flapjack.WordAlloc.removeDeadStructural input9210 value4609 value1 value2 = (output9210, value4610, value1)) : Flapjack.WordAlloc.removeDeadStructural input9211 value4608 value1 value2 = (output9211, value4610, value1) := by
  rw [input9211_def, output9211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9209]
  dsimp only
  rw [child9210]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9209_skip, output9210_skip]
  kernel_rfl

theorem node9212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9212 value4610 value1 value2 = (output9212, value4611, value1) := by
  rw [input9212_def, output9212_def]
  kernel_rfl

theorem node9213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9213 value4611 value1 value2 = (output9213, value4612, value1) := by
  rw [input9213_def, output9213_def]
  kernel_rfl

theorem node9214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9214 value4612 value1 value2 = (output9214, value4613, value1) := by
  rw [input9214_def, output9214_def]
  kernel_rfl

theorem node9215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9215 value4613 value1 value2 = (output9215, value5, value1) := by
  rw [input9215_def, output9215_def]
  kernel_rfl

#print axioms node9215_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
