import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk056
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node14336_cond_eq
    (child12016 : Flapjack.WordAlloc.removeDeadStructural input12016 value5 value1 value2 = (output12016, value6012, value1))
    (child14335 : Flapjack.WordAlloc.removeDeadStructural input14335 value6012 value1 value2 = (output14335, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14336 value5 value1 value2 = (output14336, value6896, value1) := by
  rw [input14336_def, output14336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12016]
  try dsimp only
  rw [child14335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12016_skip, output14335_skip]
  kernel_rfl

theorem node14337_cond_eq
    (child12013 : Flapjack.WordAlloc.removeDeadStructural input12013 value6006 value1 value2 = (output12013, value5, value1))
    (child14336 : Flapjack.WordAlloc.removeDeadStructural input14336 value5 value1 value2 = (output14336, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14337 value6006 value1 value2 = (output14337, value6896, value1) := by
  rw [input14337_def, output14337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12013]
  try dsimp only
  rw [child14336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12013_skip, output14336_skip]
  kernel_rfl

theorem node14338_cond_eq
    (child12004 : Flapjack.WordAlloc.removeDeadStructural input12004 value6006 value1 value2 = (output12004, value6006, value1))
    (child14337 : Flapjack.WordAlloc.removeDeadStructural input14337 value6006 value1 value2 = (output14337, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14338 value6006 value1 value2 = (output14338, value6896, value1) := by
  rw [input14338_def, output14338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12004]
  try dsimp only
  rw [child14337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12004_skip, output14337_skip]
  kernel_rfl

theorem node14339_cond_eq
    (child12003 : Flapjack.WordAlloc.removeDeadStructural input12003 value6005 value1 value2 = (output12003, value6006, value1))
    (child14338 : Flapjack.WordAlloc.removeDeadStructural input14338 value6006 value1 value2 = (output14338, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14339 value6005 value1 value2 = (output14339, value6896, value1) := by
  rw [input14339_def, output14339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12003]
  try dsimp only
  rw [child14338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12003_skip, output14338_skip]
  kernel_rfl

theorem node14340_cond_eq
    (child12002 : Flapjack.WordAlloc.removeDeadStructural input12002 value5 value1 value2 = (output12002, value6005, value1))
    (child14339 : Flapjack.WordAlloc.removeDeadStructural input14339 value6005 value1 value2 = (output14339, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14340 value5 value1 value2 = (output14340, value6896, value1) := by
  rw [input14340_def, output14340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12002]
  try dsimp only
  rw [child14339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12002_skip, output14339_skip]
  kernel_rfl

theorem node14341_cond_eq
    (child11999 : Flapjack.WordAlloc.removeDeadStructural input11999 value5999 value1 value2 = (output11999, value5, value1))
    (child14340 : Flapjack.WordAlloc.removeDeadStructural input14340 value5 value1 value2 = (output14340, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14341 value5999 value1 value2 = (output14341, value6896, value1) := by
  rw [input14341_def, output14341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11999]
  try dsimp only
  rw [child14340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11999_skip, output14340_skip]
  kernel_rfl

theorem node14342_cond_eq
    (child11990 : Flapjack.WordAlloc.removeDeadStructural input11990 value5999 value1 value2 = (output11990, value5999, value1))
    (child14341 : Flapjack.WordAlloc.removeDeadStructural input14341 value5999 value1 value2 = (output14341, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14342 value5999 value1 value2 = (output14342, value6896, value1) := by
  rw [input14342_def, output14342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11990]
  try dsimp only
  rw [child14341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11990_skip, output14341_skip]
  kernel_rfl

theorem node14343_cond_eq
    (child11989 : Flapjack.WordAlloc.removeDeadStructural input11989 value5998 value1 value2 = (output11989, value5999, value1))
    (child14342 : Flapjack.WordAlloc.removeDeadStructural input14342 value5999 value1 value2 = (output14342, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14343 value5998 value1 value2 = (output14343, value6896, value1) := by
  rw [input14343_def, output14343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11989]
  try dsimp only
  rw [child14342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11989_skip, output14342_skip]
  kernel_rfl

theorem node14344_cond_eq
    (child11988 : Flapjack.WordAlloc.removeDeadStructural input11988 value5 value1 value2 = (output11988, value5998, value1))
    (child14343 : Flapjack.WordAlloc.removeDeadStructural input14343 value5998 value1 value2 = (output14343, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14344 value5 value1 value2 = (output14344, value6896, value1) := by
  rw [input14344_def, output14344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11988]
  try dsimp only
  rw [child14343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11988_skip, output14343_skip]
  kernel_rfl

theorem node14345_cond_eq
    (child11985 : Flapjack.WordAlloc.removeDeadStructural input11985 value5992 value1 value2 = (output11985, value5, value1))
    (child14344 : Flapjack.WordAlloc.removeDeadStructural input14344 value5 value1 value2 = (output14344, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14345 value5992 value1 value2 = (output14345, value6896, value1) := by
  rw [input14345_def, output14345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11985]
  try dsimp only
  rw [child14344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11985_skip, output14344_skip]
  kernel_rfl

theorem node14346_cond_eq
    (child11976 : Flapjack.WordAlloc.removeDeadStructural input11976 value5992 value1 value2 = (output11976, value5992, value1))
    (child14345 : Flapjack.WordAlloc.removeDeadStructural input14345 value5992 value1 value2 = (output14345, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14346 value5992 value1 value2 = (output14346, value6896, value1) := by
  rw [input14346_def, output14346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11976]
  try dsimp only
  rw [child14345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11976_skip, output14345_skip]
  kernel_rfl

theorem node14347_cond_eq
    (child11975 : Flapjack.WordAlloc.removeDeadStructural input11975 value5991 value1 value2 = (output11975, value5992, value1))
    (child14346 : Flapjack.WordAlloc.removeDeadStructural input14346 value5992 value1 value2 = (output14346, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14347 value5991 value1 value2 = (output14347, value6896, value1) := by
  rw [input14347_def, output14347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11975]
  try dsimp only
  rw [child14346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11975_skip, output14346_skip]
  kernel_rfl

theorem node14348_cond_eq
    (child11974 : Flapjack.WordAlloc.removeDeadStructural input11974 value5 value1 value2 = (output11974, value5991, value1))
    (child14347 : Flapjack.WordAlloc.removeDeadStructural input14347 value5991 value1 value2 = (output14347, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14348 value5 value1 value2 = (output14348, value6896, value1) := by
  rw [input14348_def, output14348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11974]
  try dsimp only
  rw [child14347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11974_skip, output14347_skip]
  kernel_rfl

theorem node14349_cond_eq
    (child11971 : Flapjack.WordAlloc.removeDeadStructural input11971 value5985 value1 value2 = (output11971, value5, value1))
    (child14348 : Flapjack.WordAlloc.removeDeadStructural input14348 value5 value1 value2 = (output14348, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14349 value5985 value1 value2 = (output14349, value6896, value1) := by
  rw [input14349_def, output14349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11971]
  try dsimp only
  rw [child14348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11971_skip, output14348_skip]
  kernel_rfl

theorem node14350_cond_eq
    (child11962 : Flapjack.WordAlloc.removeDeadStructural input11962 value5985 value1 value2 = (output11962, value5985, value1))
    (child14349 : Flapjack.WordAlloc.removeDeadStructural input14349 value5985 value1 value2 = (output14349, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14350 value5985 value1 value2 = (output14350, value6896, value1) := by
  rw [input14350_def, output14350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11962]
  try dsimp only
  rw [child14349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11962_skip, output14349_skip]
  kernel_rfl

theorem node14351_cond_eq
    (child11961 : Flapjack.WordAlloc.removeDeadStructural input11961 value5984 value1 value2 = (output11961, value5985, value1))
    (child14350 : Flapjack.WordAlloc.removeDeadStructural input14350 value5985 value1 value2 = (output14350, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14351 value5984 value1 value2 = (output14351, value6896, value1) := by
  rw [input14351_def, output14351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11961]
  try dsimp only
  rw [child14350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11961_skip, output14350_skip]
  kernel_rfl

theorem node14352_cond_eq
    (child11960 : Flapjack.WordAlloc.removeDeadStructural input11960 value5 value1 value2 = (output11960, value5984, value1))
    (child14351 : Flapjack.WordAlloc.removeDeadStructural input14351 value5984 value1 value2 = (output14351, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14352 value5 value1 value2 = (output14352, value6896, value1) := by
  rw [input14352_def, output14352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11960]
  try dsimp only
  rw [child14351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11960_skip, output14351_skip]
  kernel_rfl

theorem node14353_cond_eq
    (child11957 : Flapjack.WordAlloc.removeDeadStructural input11957 value5978 value1 value2 = (output11957, value5, value1))
    (child14352 : Flapjack.WordAlloc.removeDeadStructural input14352 value5 value1 value2 = (output14352, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14353 value5978 value1 value2 = (output14353, value6896, value1) := by
  rw [input14353_def, output14353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11957]
  try dsimp only
  rw [child14352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11957_skip, output14352_skip]
  kernel_rfl

theorem node14354_cond_eq
    (child11948 : Flapjack.WordAlloc.removeDeadStructural input11948 value5978 value1 value2 = (output11948, value5978, value1))
    (child14353 : Flapjack.WordAlloc.removeDeadStructural input14353 value5978 value1 value2 = (output14353, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14354 value5978 value1 value2 = (output14354, value6896, value1) := by
  rw [input14354_def, output14354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11948]
  try dsimp only
  rw [child14353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11948_skip, output14353_skip]
  kernel_rfl

theorem node14355_cond_eq
    (child11947 : Flapjack.WordAlloc.removeDeadStructural input11947 value5977 value1 value2 = (output11947, value5978, value1))
    (child14354 : Flapjack.WordAlloc.removeDeadStructural input14354 value5978 value1 value2 = (output14354, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14355 value5977 value1 value2 = (output14355, value6896, value1) := by
  rw [input14355_def, output14355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11947]
  try dsimp only
  rw [child14354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11947_skip, output14354_skip]
  kernel_rfl

theorem node14356_cond_eq
    (child11946 : Flapjack.WordAlloc.removeDeadStructural input11946 value5 value1 value2 = (output11946, value5977, value1))
    (child14355 : Flapjack.WordAlloc.removeDeadStructural input14355 value5977 value1 value2 = (output14355, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14356 value5 value1 value2 = (output14356, value6896, value1) := by
  rw [input14356_def, output14356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11946]
  try dsimp only
  rw [child14355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11946_skip, output14355_skip]
  kernel_rfl

theorem node14357_cond_eq
    (child11943 : Flapjack.WordAlloc.removeDeadStructural input11943 value5971 value1 value2 = (output11943, value5, value1))
    (child14356 : Flapjack.WordAlloc.removeDeadStructural input14356 value5 value1 value2 = (output14356, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14357 value5971 value1 value2 = (output14357, value6896, value1) := by
  rw [input14357_def, output14357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11943]
  try dsimp only
  rw [child14356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11943_skip, output14356_skip]
  kernel_rfl

theorem node14358_cond_eq
    (child11934 : Flapjack.WordAlloc.removeDeadStructural input11934 value5971 value1 value2 = (output11934, value5971, value1))
    (child14357 : Flapjack.WordAlloc.removeDeadStructural input14357 value5971 value1 value2 = (output14357, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14358 value5971 value1 value2 = (output14358, value6896, value1) := by
  rw [input14358_def, output14358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11934]
  try dsimp only
  rw [child14357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11934_skip, output14357_skip]
  kernel_rfl

theorem node14359_cond_eq
    (child11933 : Flapjack.WordAlloc.removeDeadStructural input11933 value5970 value1 value2 = (output11933, value5971, value1))
    (child14358 : Flapjack.WordAlloc.removeDeadStructural input14358 value5971 value1 value2 = (output14358, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14359 value5970 value1 value2 = (output14359, value6896, value1) := by
  rw [input14359_def, output14359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11933]
  try dsimp only
  rw [child14358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11933_skip, output14358_skip]
  kernel_rfl

theorem node14360_cond_eq
    (child11932 : Flapjack.WordAlloc.removeDeadStructural input11932 value5 value1 value2 = (output11932, value5970, value1))
    (child14359 : Flapjack.WordAlloc.removeDeadStructural input14359 value5970 value1 value2 = (output14359, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14360 value5 value1 value2 = (output14360, value6896, value1) := by
  rw [input14360_def, output14360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11932]
  try dsimp only
  rw [child14359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11932_skip, output14359_skip]
  kernel_rfl

theorem node14361_cond_eq
    (child11929 : Flapjack.WordAlloc.removeDeadStructural input11929 value5964 value1 value2 = (output11929, value5, value1))
    (child14360 : Flapjack.WordAlloc.removeDeadStructural input14360 value5 value1 value2 = (output14360, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14361 value5964 value1 value2 = (output14361, value6896, value1) := by
  rw [input14361_def, output14361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11929]
  try dsimp only
  rw [child14360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11929_skip, output14360_skip]
  kernel_rfl

theorem node14362_cond_eq
    (child11920 : Flapjack.WordAlloc.removeDeadStructural input11920 value5964 value1 value2 = (output11920, value5964, value1))
    (child14361 : Flapjack.WordAlloc.removeDeadStructural input14361 value5964 value1 value2 = (output14361, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14362 value5964 value1 value2 = (output14362, value6896, value1) := by
  rw [input14362_def, output14362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11920]
  try dsimp only
  rw [child14361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11920_skip, output14361_skip]
  kernel_rfl

theorem node14363_cond_eq
    (child11919 : Flapjack.WordAlloc.removeDeadStructural input11919 value5963 value1 value2 = (output11919, value5964, value1))
    (child14362 : Flapjack.WordAlloc.removeDeadStructural input14362 value5964 value1 value2 = (output14362, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14363 value5963 value1 value2 = (output14363, value6896, value1) := by
  rw [input14363_def, output14363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11919]
  try dsimp only
  rw [child14362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11919_skip, output14362_skip]
  kernel_rfl

theorem node14364_cond_eq
    (child11918 : Flapjack.WordAlloc.removeDeadStructural input11918 value5 value1 value2 = (output11918, value5963, value1))
    (child14363 : Flapjack.WordAlloc.removeDeadStructural input14363 value5963 value1 value2 = (output14363, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14364 value5 value1 value2 = (output14364, value6896, value1) := by
  rw [input14364_def, output14364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11918]
  try dsimp only
  rw [child14363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11918_skip, output14363_skip]
  kernel_rfl

theorem node14365_cond_eq
    (child11915 : Flapjack.WordAlloc.removeDeadStructural input11915 value5957 value1 value2 = (output11915, value5, value1))
    (child14364 : Flapjack.WordAlloc.removeDeadStructural input14364 value5 value1 value2 = (output14364, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14365 value5957 value1 value2 = (output14365, value6896, value1) := by
  rw [input14365_def, output14365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11915]
  try dsimp only
  rw [child14364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11915_skip, output14364_skip]
  kernel_rfl

theorem node14366_cond_eq
    (child11906 : Flapjack.WordAlloc.removeDeadStructural input11906 value5957 value1 value2 = (output11906, value5957, value1))
    (child14365 : Flapjack.WordAlloc.removeDeadStructural input14365 value5957 value1 value2 = (output14365, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14366 value5957 value1 value2 = (output14366, value6896, value1) := by
  rw [input14366_def, output14366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11906]
  try dsimp only
  rw [child14365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11906_skip, output14365_skip]
  kernel_rfl

theorem node14367_cond_eq
    (child11905 : Flapjack.WordAlloc.removeDeadStructural input11905 value5956 value1 value2 = (output11905, value5957, value1))
    (child14366 : Flapjack.WordAlloc.removeDeadStructural input14366 value5957 value1 value2 = (output14366, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14367 value5956 value1 value2 = (output14367, value6896, value1) := by
  rw [input14367_def, output14367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11905]
  try dsimp only
  rw [child14366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11905_skip, output14366_skip]
  kernel_rfl

theorem node14368_cond_eq
    (child11904 : Flapjack.WordAlloc.removeDeadStructural input11904 value5 value1 value2 = (output11904, value5956, value1))
    (child14367 : Flapjack.WordAlloc.removeDeadStructural input14367 value5956 value1 value2 = (output14367, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14368 value5 value1 value2 = (output14368, value6896, value1) := by
  rw [input14368_def, output14368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11904]
  try dsimp only
  rw [child14367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11904_skip, output14367_skip]
  kernel_rfl

theorem node14369_cond_eq
    (child11901 : Flapjack.WordAlloc.removeDeadStructural input11901 value5950 value1 value2 = (output11901, value5, value1))
    (child14368 : Flapjack.WordAlloc.removeDeadStructural input14368 value5 value1 value2 = (output14368, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14369 value5950 value1 value2 = (output14369, value6896, value1) := by
  rw [input14369_def, output14369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11901]
  try dsimp only
  rw [child14368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11901_skip, output14368_skip]
  kernel_rfl

theorem node14370_cond_eq
    (child11892 : Flapjack.WordAlloc.removeDeadStructural input11892 value5950 value1 value2 = (output11892, value5950, value1))
    (child14369 : Flapjack.WordAlloc.removeDeadStructural input14369 value5950 value1 value2 = (output14369, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14370 value5950 value1 value2 = (output14370, value6896, value1) := by
  rw [input14370_def, output14370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11892]
  try dsimp only
  rw [child14369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11892_skip, output14369_skip]
  kernel_rfl

theorem node14371_cond_eq
    (child11891 : Flapjack.WordAlloc.removeDeadStructural input11891 value5949 value1 value2 = (output11891, value5950, value1))
    (child14370 : Flapjack.WordAlloc.removeDeadStructural input14370 value5950 value1 value2 = (output14370, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14371 value5949 value1 value2 = (output14371, value6896, value1) := by
  rw [input14371_def, output14371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11891]
  try dsimp only
  rw [child14370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11891_skip, output14370_skip]
  kernel_rfl

theorem node14372_cond_eq
    (child11890 : Flapjack.WordAlloc.removeDeadStructural input11890 value5 value1 value2 = (output11890, value5949, value1))
    (child14371 : Flapjack.WordAlloc.removeDeadStructural input14371 value5949 value1 value2 = (output14371, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14372 value5 value1 value2 = (output14372, value6896, value1) := by
  rw [input14372_def, output14372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11890]
  try dsimp only
  rw [child14371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11890_skip, output14371_skip]
  kernel_rfl

theorem node14373_cond_eq
    (child11887 : Flapjack.WordAlloc.removeDeadStructural input11887 value5943 value1 value2 = (output11887, value5, value1))
    (child14372 : Flapjack.WordAlloc.removeDeadStructural input14372 value5 value1 value2 = (output14372, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14373 value5943 value1 value2 = (output14373, value6896, value1) := by
  rw [input14373_def, output14373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11887]
  try dsimp only
  rw [child14372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11887_skip, output14372_skip]
  kernel_rfl

theorem node14374_cond_eq
    (child11878 : Flapjack.WordAlloc.removeDeadStructural input11878 value5943 value1 value2 = (output11878, value5943, value1))
    (child14373 : Flapjack.WordAlloc.removeDeadStructural input14373 value5943 value1 value2 = (output14373, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14374 value5943 value1 value2 = (output14374, value6896, value1) := by
  rw [input14374_def, output14374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11878]
  try dsimp only
  rw [child14373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11878_skip, output14373_skip]
  kernel_rfl

theorem node14375_cond_eq
    (child11877 : Flapjack.WordAlloc.removeDeadStructural input11877 value5942 value1 value2 = (output11877, value5943, value1))
    (child14374 : Flapjack.WordAlloc.removeDeadStructural input14374 value5943 value1 value2 = (output14374, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14375 value5942 value1 value2 = (output14375, value6896, value1) := by
  rw [input14375_def, output14375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11877]
  try dsimp only
  rw [child14374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11877_skip, output14374_skip]
  kernel_rfl

theorem node14376_cond_eq
    (child11876 : Flapjack.WordAlloc.removeDeadStructural input11876 value5 value1 value2 = (output11876, value5942, value1))
    (child14375 : Flapjack.WordAlloc.removeDeadStructural input14375 value5942 value1 value2 = (output14375, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14376 value5 value1 value2 = (output14376, value6896, value1) := by
  rw [input14376_def, output14376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11876]
  try dsimp only
  rw [child14375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11876_skip, output14375_skip]
  kernel_rfl

theorem node14377_cond_eq
    (child11873 : Flapjack.WordAlloc.removeDeadStructural input11873 value5936 value1 value2 = (output11873, value5, value1))
    (child14376 : Flapjack.WordAlloc.removeDeadStructural input14376 value5 value1 value2 = (output14376, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14377 value5936 value1 value2 = (output14377, value6896, value1) := by
  rw [input14377_def, output14377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11873]
  try dsimp only
  rw [child14376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11873_skip, output14376_skip]
  kernel_rfl

theorem node14378_cond_eq
    (child11864 : Flapjack.WordAlloc.removeDeadStructural input11864 value5936 value1 value2 = (output11864, value5936, value1))
    (child14377 : Flapjack.WordAlloc.removeDeadStructural input14377 value5936 value1 value2 = (output14377, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14378 value5936 value1 value2 = (output14378, value6896, value1) := by
  rw [input14378_def, output14378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11864]
  try dsimp only
  rw [child14377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11864_skip, output14377_skip]
  kernel_rfl

theorem node14379_cond_eq
    (child11863 : Flapjack.WordAlloc.removeDeadStructural input11863 value5935 value1 value2 = (output11863, value5936, value1))
    (child14378 : Flapjack.WordAlloc.removeDeadStructural input14378 value5936 value1 value2 = (output14378, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14379 value5935 value1 value2 = (output14379, value6896, value1) := by
  rw [input14379_def, output14379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11863]
  try dsimp only
  rw [child14378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11863_skip, output14378_skip]
  kernel_rfl

theorem node14380_cond_eq
    (child11862 : Flapjack.WordAlloc.removeDeadStructural input11862 value5 value1 value2 = (output11862, value5935, value1))
    (child14379 : Flapjack.WordAlloc.removeDeadStructural input14379 value5935 value1 value2 = (output14379, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14380 value5 value1 value2 = (output14380, value6896, value1) := by
  rw [input14380_def, output14380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11862]
  try dsimp only
  rw [child14379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11862_skip, output14379_skip]
  kernel_rfl

theorem node14381_cond_eq
    (child11859 : Flapjack.WordAlloc.removeDeadStructural input11859 value5929 value1 value2 = (output11859, value5, value1))
    (child14380 : Flapjack.WordAlloc.removeDeadStructural input14380 value5 value1 value2 = (output14380, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14381 value5929 value1 value2 = (output14381, value6896, value1) := by
  rw [input14381_def, output14381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11859]
  try dsimp only
  rw [child14380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11859_skip, output14380_skip]
  kernel_rfl

theorem node14382_cond_eq
    (child11850 : Flapjack.WordAlloc.removeDeadStructural input11850 value5929 value1 value2 = (output11850, value5929, value1))
    (child14381 : Flapjack.WordAlloc.removeDeadStructural input14381 value5929 value1 value2 = (output14381, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14382 value5929 value1 value2 = (output14382, value6896, value1) := by
  rw [input14382_def, output14382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11850]
  try dsimp only
  rw [child14381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11850_skip, output14381_skip]
  kernel_rfl

theorem node14383_cond_eq
    (child11849 : Flapjack.WordAlloc.removeDeadStructural input11849 value5928 value1 value2 = (output11849, value5929, value1))
    (child14382 : Flapjack.WordAlloc.removeDeadStructural input14382 value5929 value1 value2 = (output14382, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14383 value5928 value1 value2 = (output14383, value6896, value1) := by
  rw [input14383_def, output14383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11849]
  try dsimp only
  rw [child14382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11849_skip, output14382_skip]
  kernel_rfl

theorem node14384_cond_eq
    (child11848 : Flapjack.WordAlloc.removeDeadStructural input11848 value5 value1 value2 = (output11848, value5928, value1))
    (child14383 : Flapjack.WordAlloc.removeDeadStructural input14383 value5928 value1 value2 = (output14383, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14384 value5 value1 value2 = (output14384, value6896, value1) := by
  rw [input14384_def, output14384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11848]
  try dsimp only
  rw [child14383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11848_skip, output14383_skip]
  kernel_rfl

theorem node14385_cond_eq
    (child11845 : Flapjack.WordAlloc.removeDeadStructural input11845 value5922 value1 value2 = (output11845, value5, value1))
    (child14384 : Flapjack.WordAlloc.removeDeadStructural input14384 value5 value1 value2 = (output14384, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14385 value5922 value1 value2 = (output14385, value6896, value1) := by
  rw [input14385_def, output14385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11845]
  try dsimp only
  rw [child14384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11845_skip, output14384_skip]
  kernel_rfl

theorem node14386_cond_eq
    (child11836 : Flapjack.WordAlloc.removeDeadStructural input11836 value5922 value1 value2 = (output11836, value5922, value1))
    (child14385 : Flapjack.WordAlloc.removeDeadStructural input14385 value5922 value1 value2 = (output14385, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14386 value5922 value1 value2 = (output14386, value6896, value1) := by
  rw [input14386_def, output14386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11836]
  try dsimp only
  rw [child14385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11836_skip, output14385_skip]
  kernel_rfl

theorem node14387_cond_eq
    (child11835 : Flapjack.WordAlloc.removeDeadStructural input11835 value5921 value1 value2 = (output11835, value5922, value1))
    (child14386 : Flapjack.WordAlloc.removeDeadStructural input14386 value5922 value1 value2 = (output14386, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14387 value5921 value1 value2 = (output14387, value6896, value1) := by
  rw [input14387_def, output14387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11835]
  try dsimp only
  rw [child14386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11835_skip, output14386_skip]
  kernel_rfl

theorem node14388_cond_eq
    (child11834 : Flapjack.WordAlloc.removeDeadStructural input11834 value5 value1 value2 = (output11834, value5921, value1))
    (child14387 : Flapjack.WordAlloc.removeDeadStructural input14387 value5921 value1 value2 = (output14387, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14388 value5 value1 value2 = (output14388, value6896, value1) := by
  rw [input14388_def, output14388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11834]
  try dsimp only
  rw [child14387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11834_skip, output14387_skip]
  kernel_rfl

theorem node14389_cond_eq
    (child11831 : Flapjack.WordAlloc.removeDeadStructural input11831 value5915 value1 value2 = (output11831, value5, value1))
    (child14388 : Flapjack.WordAlloc.removeDeadStructural input14388 value5 value1 value2 = (output14388, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14389 value5915 value1 value2 = (output14389, value6896, value1) := by
  rw [input14389_def, output14389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11831]
  try dsimp only
  rw [child14388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11831_skip, output14388_skip]
  kernel_rfl

theorem node14390_cond_eq
    (child11822 : Flapjack.WordAlloc.removeDeadStructural input11822 value5915 value1 value2 = (output11822, value5915, value1))
    (child14389 : Flapjack.WordAlloc.removeDeadStructural input14389 value5915 value1 value2 = (output14389, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14390 value5915 value1 value2 = (output14390, value6896, value1) := by
  rw [input14390_def, output14390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11822]
  try dsimp only
  rw [child14389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11822_skip, output14389_skip]
  kernel_rfl

theorem node14391_cond_eq
    (child11821 : Flapjack.WordAlloc.removeDeadStructural input11821 value5914 value1 value2 = (output11821, value5915, value1))
    (child14390 : Flapjack.WordAlloc.removeDeadStructural input14390 value5915 value1 value2 = (output14390, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14391 value5914 value1 value2 = (output14391, value6896, value1) := by
  rw [input14391_def, output14391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11821]
  try dsimp only
  rw [child14390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11821_skip, output14390_skip]
  kernel_rfl

theorem node14392_cond_eq
    (child11820 : Flapjack.WordAlloc.removeDeadStructural input11820 value5 value1 value2 = (output11820, value5914, value1))
    (child14391 : Flapjack.WordAlloc.removeDeadStructural input14391 value5914 value1 value2 = (output14391, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14392 value5 value1 value2 = (output14392, value6896, value1) := by
  rw [input14392_def, output14392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11820]
  try dsimp only
  rw [child14391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11820_skip, output14391_skip]
  kernel_rfl

theorem node14393_cond_eq
    (child11817 : Flapjack.WordAlloc.removeDeadStructural input11817 value5908 value1 value2 = (output11817, value5, value1))
    (child14392 : Flapjack.WordAlloc.removeDeadStructural input14392 value5 value1 value2 = (output14392, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14393 value5908 value1 value2 = (output14393, value6896, value1) := by
  rw [input14393_def, output14393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11817]
  try dsimp only
  rw [child14392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11817_skip, output14392_skip]
  kernel_rfl

theorem node14394_cond_eq
    (child11808 : Flapjack.WordAlloc.removeDeadStructural input11808 value5908 value1 value2 = (output11808, value5908, value1))
    (child14393 : Flapjack.WordAlloc.removeDeadStructural input14393 value5908 value1 value2 = (output14393, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14394 value5908 value1 value2 = (output14394, value6896, value1) := by
  rw [input14394_def, output14394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11808]
  try dsimp only
  rw [child14393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11808_skip, output14393_skip]
  kernel_rfl

theorem node14395_cond_eq
    (child11807 : Flapjack.WordAlloc.removeDeadStructural input11807 value5907 value1 value2 = (output11807, value5908, value1))
    (child14394 : Flapjack.WordAlloc.removeDeadStructural input14394 value5908 value1 value2 = (output14394, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14395 value5907 value1 value2 = (output14395, value6896, value1) := by
  rw [input14395_def, output14395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11807]
  try dsimp only
  rw [child14394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11807_skip, output14394_skip]
  kernel_rfl

theorem node14396_cond_eq
    (child11806 : Flapjack.WordAlloc.removeDeadStructural input11806 value5 value1 value2 = (output11806, value5907, value1))
    (child14395 : Flapjack.WordAlloc.removeDeadStructural input14395 value5907 value1 value2 = (output14395, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14396 value5 value1 value2 = (output14396, value6896, value1) := by
  rw [input14396_def, output14396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11806]
  try dsimp only
  rw [child14395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11806_skip, output14395_skip]
  kernel_rfl

theorem node14397_cond_eq
    (child11803 : Flapjack.WordAlloc.removeDeadStructural input11803 value5901 value1 value2 = (output11803, value5, value1))
    (child14396 : Flapjack.WordAlloc.removeDeadStructural input14396 value5 value1 value2 = (output14396, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14397 value5901 value1 value2 = (output14397, value6896, value1) := by
  rw [input14397_def, output14397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11803]
  try dsimp only
  rw [child14396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11803_skip, output14396_skip]
  kernel_rfl

theorem node14398_cond_eq
    (child11794 : Flapjack.WordAlloc.removeDeadStructural input11794 value5901 value1 value2 = (output11794, value5901, value1))
    (child14397 : Flapjack.WordAlloc.removeDeadStructural input14397 value5901 value1 value2 = (output14397, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14398 value5901 value1 value2 = (output14398, value6896, value1) := by
  rw [input14398_def, output14398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11794]
  try dsimp only
  rw [child14397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11794_skip, output14397_skip]
  kernel_rfl

theorem node14399_cond_eq
    (child11793 : Flapjack.WordAlloc.removeDeadStructural input11793 value5900 value1 value2 = (output11793, value5901, value1))
    (child14398 : Flapjack.WordAlloc.removeDeadStructural input14398 value5901 value1 value2 = (output14398, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14399 value5900 value1 value2 = (output14399, value6896, value1) := by
  rw [input14399_def, output14399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11793]
  try dsimp only
  rw [child14398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11793_skip, output14398_skip]
  kernel_rfl

theorem node14400_cond_eq
    (child11792 : Flapjack.WordAlloc.removeDeadStructural input11792 value5 value1 value2 = (output11792, value5900, value1))
    (child14399 : Flapjack.WordAlloc.removeDeadStructural input14399 value5900 value1 value2 = (output14399, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14400 value5 value1 value2 = (output14400, value6896, value1) := by
  rw [input14400_def, output14400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11792]
  try dsimp only
  rw [child14399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11792_skip, output14399_skip]
  kernel_rfl

theorem node14401_cond_eq
    (child11789 : Flapjack.WordAlloc.removeDeadStructural input11789 value5894 value1 value2 = (output11789, value5, value1))
    (child14400 : Flapjack.WordAlloc.removeDeadStructural input14400 value5 value1 value2 = (output14400, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14401 value5894 value1 value2 = (output14401, value6896, value1) := by
  rw [input14401_def, output14401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11789]
  try dsimp only
  rw [child14400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11789_skip, output14400_skip]
  kernel_rfl

theorem node14402_cond_eq
    (child11780 : Flapjack.WordAlloc.removeDeadStructural input11780 value5894 value1 value2 = (output11780, value5894, value1))
    (child14401 : Flapjack.WordAlloc.removeDeadStructural input14401 value5894 value1 value2 = (output14401, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14402 value5894 value1 value2 = (output14402, value6896, value1) := by
  rw [input14402_def, output14402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11780]
  try dsimp only
  rw [child14401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11780_skip, output14401_skip]
  kernel_rfl

theorem node14403_cond_eq
    (child11779 : Flapjack.WordAlloc.removeDeadStructural input11779 value5893 value1 value2 = (output11779, value5894, value1))
    (child14402 : Flapjack.WordAlloc.removeDeadStructural input14402 value5894 value1 value2 = (output14402, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14403 value5893 value1 value2 = (output14403, value6896, value1) := by
  rw [input14403_def, output14403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11779]
  try dsimp only
  rw [child14402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11779_skip, output14402_skip]
  kernel_rfl

theorem node14404_cond_eq
    (child11778 : Flapjack.WordAlloc.removeDeadStructural input11778 value5 value1 value2 = (output11778, value5893, value1))
    (child14403 : Flapjack.WordAlloc.removeDeadStructural input14403 value5893 value1 value2 = (output14403, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14404 value5 value1 value2 = (output14404, value6896, value1) := by
  rw [input14404_def, output14404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11778]
  try dsimp only
  rw [child14403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11778_skip, output14403_skip]
  kernel_rfl

theorem node14405_cond_eq
    (child11775 : Flapjack.WordAlloc.removeDeadStructural input11775 value5887 value1 value2 = (output11775, value5, value1))
    (child14404 : Flapjack.WordAlloc.removeDeadStructural input14404 value5 value1 value2 = (output14404, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14405 value5887 value1 value2 = (output14405, value6896, value1) := by
  rw [input14405_def, output14405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11775]
  try dsimp only
  rw [child14404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11775_skip, output14404_skip]
  kernel_rfl

theorem node14406_cond_eq
    (child11766 : Flapjack.WordAlloc.removeDeadStructural input11766 value5887 value1 value2 = (output11766, value5887, value1))
    (child14405 : Flapjack.WordAlloc.removeDeadStructural input14405 value5887 value1 value2 = (output14405, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14406 value5887 value1 value2 = (output14406, value6896, value1) := by
  rw [input14406_def, output14406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11766]
  try dsimp only
  rw [child14405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11766_skip, output14405_skip]
  kernel_rfl

theorem node14407_cond_eq
    (child11765 : Flapjack.WordAlloc.removeDeadStructural input11765 value5886 value1 value2 = (output11765, value5887, value1))
    (child14406 : Flapjack.WordAlloc.removeDeadStructural input14406 value5887 value1 value2 = (output14406, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14407 value5886 value1 value2 = (output14407, value6896, value1) := by
  rw [input14407_def, output14407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11765]
  try dsimp only
  rw [child14406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11765_skip, output14406_skip]
  kernel_rfl

theorem node14408_cond_eq
    (child11764 : Flapjack.WordAlloc.removeDeadStructural input11764 value5 value1 value2 = (output11764, value5886, value1))
    (child14407 : Flapjack.WordAlloc.removeDeadStructural input14407 value5886 value1 value2 = (output14407, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14408 value5 value1 value2 = (output14408, value6896, value1) := by
  rw [input14408_def, output14408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11764]
  try dsimp only
  rw [child14407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11764_skip, output14407_skip]
  kernel_rfl

theorem node14409_cond_eq
    (child11761 : Flapjack.WordAlloc.removeDeadStructural input11761 value5880 value1 value2 = (output11761, value5, value1))
    (child14408 : Flapjack.WordAlloc.removeDeadStructural input14408 value5 value1 value2 = (output14408, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14409 value5880 value1 value2 = (output14409, value6896, value1) := by
  rw [input14409_def, output14409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11761]
  try dsimp only
  rw [child14408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11761_skip, output14408_skip]
  kernel_rfl

theorem node14410_cond_eq
    (child11752 : Flapjack.WordAlloc.removeDeadStructural input11752 value5880 value1 value2 = (output11752, value5880, value1))
    (child14409 : Flapjack.WordAlloc.removeDeadStructural input14409 value5880 value1 value2 = (output14409, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14410 value5880 value1 value2 = (output14410, value6896, value1) := by
  rw [input14410_def, output14410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11752]
  try dsimp only
  rw [child14409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11752_skip, output14409_skip]
  kernel_rfl

theorem node14411_cond_eq
    (child11751 : Flapjack.WordAlloc.removeDeadStructural input11751 value5879 value1 value2 = (output11751, value5880, value1))
    (child14410 : Flapjack.WordAlloc.removeDeadStructural input14410 value5880 value1 value2 = (output14410, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14411 value5879 value1 value2 = (output14411, value6896, value1) := by
  rw [input14411_def, output14411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11751]
  try dsimp only
  rw [child14410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11751_skip, output14410_skip]
  kernel_rfl

theorem node14412_cond_eq
    (child11750 : Flapjack.WordAlloc.removeDeadStructural input11750 value5 value1 value2 = (output11750, value5879, value1))
    (child14411 : Flapjack.WordAlloc.removeDeadStructural input14411 value5879 value1 value2 = (output14411, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14412 value5 value1 value2 = (output14412, value6896, value1) := by
  rw [input14412_def, output14412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11750]
  try dsimp only
  rw [child14411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11750_skip, output14411_skip]
  kernel_rfl

theorem node14413_cond_eq
    (child11747 : Flapjack.WordAlloc.removeDeadStructural input11747 value5873 value1 value2 = (output11747, value5, value1))
    (child14412 : Flapjack.WordAlloc.removeDeadStructural input14412 value5 value1 value2 = (output14412, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14413 value5873 value1 value2 = (output14413, value6896, value1) := by
  rw [input14413_def, output14413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11747]
  try dsimp only
  rw [child14412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11747_skip, output14412_skip]
  kernel_rfl

theorem node14414_cond_eq
    (child11738 : Flapjack.WordAlloc.removeDeadStructural input11738 value5873 value1 value2 = (output11738, value5873, value1))
    (child14413 : Flapjack.WordAlloc.removeDeadStructural input14413 value5873 value1 value2 = (output14413, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14414 value5873 value1 value2 = (output14414, value6896, value1) := by
  rw [input14414_def, output14414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11738]
  try dsimp only
  rw [child14413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11738_skip, output14413_skip]
  kernel_rfl

theorem node14415_cond_eq
    (child11737 : Flapjack.WordAlloc.removeDeadStructural input11737 value5872 value1 value2 = (output11737, value5873, value1))
    (child14414 : Flapjack.WordAlloc.removeDeadStructural input14414 value5873 value1 value2 = (output14414, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14415 value5872 value1 value2 = (output14415, value6896, value1) := by
  rw [input14415_def, output14415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11737]
  try dsimp only
  rw [child14414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11737_skip, output14414_skip]
  kernel_rfl

theorem node14416_cond_eq
    (child11736 : Flapjack.WordAlloc.removeDeadStructural input11736 value5 value1 value2 = (output11736, value5872, value1))
    (child14415 : Flapjack.WordAlloc.removeDeadStructural input14415 value5872 value1 value2 = (output14415, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14416 value5 value1 value2 = (output14416, value6896, value1) := by
  rw [input14416_def, output14416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11736]
  try dsimp only
  rw [child14415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11736_skip, output14415_skip]
  kernel_rfl

theorem node14417_cond_eq
    (child11733 : Flapjack.WordAlloc.removeDeadStructural input11733 value5866 value1 value2 = (output11733, value5, value1))
    (child14416 : Flapjack.WordAlloc.removeDeadStructural input14416 value5 value1 value2 = (output14416, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14417 value5866 value1 value2 = (output14417, value6896, value1) := by
  rw [input14417_def, output14417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11733]
  try dsimp only
  rw [child14416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11733_skip, output14416_skip]
  kernel_rfl

theorem node14418_cond_eq
    (child11724 : Flapjack.WordAlloc.removeDeadStructural input11724 value5866 value1 value2 = (output11724, value5866, value1))
    (child14417 : Flapjack.WordAlloc.removeDeadStructural input14417 value5866 value1 value2 = (output14417, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14418 value5866 value1 value2 = (output14418, value6896, value1) := by
  rw [input14418_def, output14418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11724]
  try dsimp only
  rw [child14417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11724_skip, output14417_skip]
  kernel_rfl

theorem node14419_cond_eq
    (child11723 : Flapjack.WordAlloc.removeDeadStructural input11723 value5865 value1 value2 = (output11723, value5866, value1))
    (child14418 : Flapjack.WordAlloc.removeDeadStructural input14418 value5866 value1 value2 = (output14418, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14419 value5865 value1 value2 = (output14419, value6896, value1) := by
  rw [input14419_def, output14419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11723]
  try dsimp only
  rw [child14418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11723_skip, output14418_skip]
  kernel_rfl

theorem node14420_cond_eq
    (child11722 : Flapjack.WordAlloc.removeDeadStructural input11722 value5 value1 value2 = (output11722, value5865, value1))
    (child14419 : Flapjack.WordAlloc.removeDeadStructural input14419 value5865 value1 value2 = (output14419, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14420 value5 value1 value2 = (output14420, value6896, value1) := by
  rw [input14420_def, output14420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11722]
  try dsimp only
  rw [child14419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11722_skip, output14419_skip]
  kernel_rfl

theorem node14421_cond_eq
    (child11719 : Flapjack.WordAlloc.removeDeadStructural input11719 value5859 value1 value2 = (output11719, value5, value1))
    (child14420 : Flapjack.WordAlloc.removeDeadStructural input14420 value5 value1 value2 = (output14420, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14421 value5859 value1 value2 = (output14421, value6896, value1) := by
  rw [input14421_def, output14421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11719]
  try dsimp only
  rw [child14420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11719_skip, output14420_skip]
  kernel_rfl

theorem node14422_cond_eq
    (child11710 : Flapjack.WordAlloc.removeDeadStructural input11710 value5859 value1 value2 = (output11710, value5859, value1))
    (child14421 : Flapjack.WordAlloc.removeDeadStructural input14421 value5859 value1 value2 = (output14421, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14422 value5859 value1 value2 = (output14422, value6896, value1) := by
  rw [input14422_def, output14422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11710]
  try dsimp only
  rw [child14421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11710_skip, output14421_skip]
  kernel_rfl

theorem node14423_cond_eq
    (child11709 : Flapjack.WordAlloc.removeDeadStructural input11709 value5858 value1 value2 = (output11709, value5859, value1))
    (child14422 : Flapjack.WordAlloc.removeDeadStructural input14422 value5859 value1 value2 = (output14422, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14423 value5858 value1 value2 = (output14423, value6896, value1) := by
  rw [input14423_def, output14423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11709]
  try dsimp only
  rw [child14422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11709_skip, output14422_skip]
  kernel_rfl

theorem node14424_cond_eq
    (child11708 : Flapjack.WordAlloc.removeDeadStructural input11708 value5 value1 value2 = (output11708, value5858, value1))
    (child14423 : Flapjack.WordAlloc.removeDeadStructural input14423 value5858 value1 value2 = (output14423, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14424 value5 value1 value2 = (output14424, value6896, value1) := by
  rw [input14424_def, output14424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11708]
  try dsimp only
  rw [child14423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11708_skip, output14423_skip]
  kernel_rfl

theorem node14425_cond_eq
    (child11705 : Flapjack.WordAlloc.removeDeadStructural input11705 value5852 value1 value2 = (output11705, value5, value1))
    (child14424 : Flapjack.WordAlloc.removeDeadStructural input14424 value5 value1 value2 = (output14424, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14425 value5852 value1 value2 = (output14425, value6896, value1) := by
  rw [input14425_def, output14425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11705]
  try dsimp only
  rw [child14424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11705_skip, output14424_skip]
  kernel_rfl

theorem node14426_cond_eq
    (child11696 : Flapjack.WordAlloc.removeDeadStructural input11696 value5852 value1 value2 = (output11696, value5852, value1))
    (child14425 : Flapjack.WordAlloc.removeDeadStructural input14425 value5852 value1 value2 = (output14425, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14426 value5852 value1 value2 = (output14426, value6896, value1) := by
  rw [input14426_def, output14426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11696]
  try dsimp only
  rw [child14425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11696_skip, output14425_skip]
  kernel_rfl

theorem node14427_cond_eq
    (child11695 : Flapjack.WordAlloc.removeDeadStructural input11695 value5851 value1 value2 = (output11695, value5852, value1))
    (child14426 : Flapjack.WordAlloc.removeDeadStructural input14426 value5852 value1 value2 = (output14426, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14427 value5851 value1 value2 = (output14427, value6896, value1) := by
  rw [input14427_def, output14427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11695]
  try dsimp only
  rw [child14426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11695_skip, output14426_skip]
  kernel_rfl

theorem node14428_cond_eq
    (child11694 : Flapjack.WordAlloc.removeDeadStructural input11694 value5 value1 value2 = (output11694, value5851, value1))
    (child14427 : Flapjack.WordAlloc.removeDeadStructural input14427 value5851 value1 value2 = (output14427, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14428 value5 value1 value2 = (output14428, value6896, value1) := by
  rw [input14428_def, output14428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11694]
  try dsimp only
  rw [child14427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11694_skip, output14427_skip]
  kernel_rfl

theorem node14429_cond_eq
    (child11691 : Flapjack.WordAlloc.removeDeadStructural input11691 value5845 value1 value2 = (output11691, value5, value1))
    (child14428 : Flapjack.WordAlloc.removeDeadStructural input14428 value5 value1 value2 = (output14428, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14429 value5845 value1 value2 = (output14429, value6896, value1) := by
  rw [input14429_def, output14429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11691]
  try dsimp only
  rw [child14428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11691_skip, output14428_skip]
  kernel_rfl

theorem node14430_cond_eq
    (child11682 : Flapjack.WordAlloc.removeDeadStructural input11682 value5845 value1 value2 = (output11682, value5845, value1))
    (child14429 : Flapjack.WordAlloc.removeDeadStructural input14429 value5845 value1 value2 = (output14429, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14430 value5845 value1 value2 = (output14430, value6896, value1) := by
  rw [input14430_def, output14430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11682]
  try dsimp only
  rw [child14429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11682_skip, output14429_skip]
  kernel_rfl

theorem node14431_cond_eq
    (child11681 : Flapjack.WordAlloc.removeDeadStructural input11681 value5844 value1 value2 = (output11681, value5845, value1))
    (child14430 : Flapjack.WordAlloc.removeDeadStructural input14430 value5845 value1 value2 = (output14430, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14431 value5844 value1 value2 = (output14431, value6896, value1) := by
  rw [input14431_def, output14431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11681]
  try dsimp only
  rw [child14430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11681_skip, output14430_skip]
  kernel_rfl

theorem node14432_cond_eq
    (child11680 : Flapjack.WordAlloc.removeDeadStructural input11680 value5 value1 value2 = (output11680, value5844, value1))
    (child14431 : Flapjack.WordAlloc.removeDeadStructural input14431 value5844 value1 value2 = (output14431, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14432 value5 value1 value2 = (output14432, value6896, value1) := by
  rw [input14432_def, output14432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11680]
  try dsimp only
  rw [child14431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11680_skip, output14431_skip]
  kernel_rfl

theorem node14433_cond_eq
    (child11677 : Flapjack.WordAlloc.removeDeadStructural input11677 value5838 value1 value2 = (output11677, value5, value1))
    (child14432 : Flapjack.WordAlloc.removeDeadStructural input14432 value5 value1 value2 = (output14432, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14433 value5838 value1 value2 = (output14433, value6896, value1) := by
  rw [input14433_def, output14433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11677]
  try dsimp only
  rw [child14432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11677_skip, output14432_skip]
  kernel_rfl

theorem node14434_cond_eq
    (child11668 : Flapjack.WordAlloc.removeDeadStructural input11668 value5838 value1 value2 = (output11668, value5838, value1))
    (child14433 : Flapjack.WordAlloc.removeDeadStructural input14433 value5838 value1 value2 = (output14433, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14434 value5838 value1 value2 = (output14434, value6896, value1) := by
  rw [input14434_def, output14434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11668]
  try dsimp only
  rw [child14433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11668_skip, output14433_skip]
  kernel_rfl

theorem node14435_cond_eq
    (child11667 : Flapjack.WordAlloc.removeDeadStructural input11667 value5837 value1 value2 = (output11667, value5838, value1))
    (child14434 : Flapjack.WordAlloc.removeDeadStructural input14434 value5838 value1 value2 = (output14434, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14435 value5837 value1 value2 = (output14435, value6896, value1) := by
  rw [input14435_def, output14435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11667]
  try dsimp only
  rw [child14434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11667_skip, output14434_skip]
  kernel_rfl

theorem node14436_cond_eq
    (child11666 : Flapjack.WordAlloc.removeDeadStructural input11666 value5 value1 value2 = (output11666, value5837, value1))
    (child14435 : Flapjack.WordAlloc.removeDeadStructural input14435 value5837 value1 value2 = (output14435, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14436 value5 value1 value2 = (output14436, value6896, value1) := by
  rw [input14436_def, output14436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11666]
  try dsimp only
  rw [child14435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11666_skip, output14435_skip]
  kernel_rfl

theorem node14437_cond_eq
    (child11663 : Flapjack.WordAlloc.removeDeadStructural input11663 value5831 value1 value2 = (output11663, value5, value1))
    (child14436 : Flapjack.WordAlloc.removeDeadStructural input14436 value5 value1 value2 = (output14436, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14437 value5831 value1 value2 = (output14437, value6896, value1) := by
  rw [input14437_def, output14437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11663]
  try dsimp only
  rw [child14436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11663_skip, output14436_skip]
  kernel_rfl

theorem node14438_cond_eq
    (child11654 : Flapjack.WordAlloc.removeDeadStructural input11654 value5831 value1 value2 = (output11654, value5831, value1))
    (child14437 : Flapjack.WordAlloc.removeDeadStructural input14437 value5831 value1 value2 = (output14437, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14438 value5831 value1 value2 = (output14438, value6896, value1) := by
  rw [input14438_def, output14438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11654]
  try dsimp only
  rw [child14437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11654_skip, output14437_skip]
  kernel_rfl

theorem node14439_cond_eq
    (child11653 : Flapjack.WordAlloc.removeDeadStructural input11653 value5830 value1 value2 = (output11653, value5831, value1))
    (child14438 : Flapjack.WordAlloc.removeDeadStructural input14438 value5831 value1 value2 = (output14438, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14439 value5830 value1 value2 = (output14439, value6896, value1) := by
  rw [input14439_def, output14439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11653]
  try dsimp only
  rw [child14438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11653_skip, output14438_skip]
  kernel_rfl

theorem node14440_cond_eq
    (child11652 : Flapjack.WordAlloc.removeDeadStructural input11652 value5 value1 value2 = (output11652, value5830, value1))
    (child14439 : Flapjack.WordAlloc.removeDeadStructural input14439 value5830 value1 value2 = (output14439, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14440 value5 value1 value2 = (output14440, value6896, value1) := by
  rw [input14440_def, output14440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11652]
  try dsimp only
  rw [child14439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11652_skip, output14439_skip]
  kernel_rfl

theorem node14441_cond_eq
    (child11649 : Flapjack.WordAlloc.removeDeadStructural input11649 value5824 value1 value2 = (output11649, value5, value1))
    (child14440 : Flapjack.WordAlloc.removeDeadStructural input14440 value5 value1 value2 = (output14440, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14441 value5824 value1 value2 = (output14441, value6896, value1) := by
  rw [input14441_def, output14441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11649]
  try dsimp only
  rw [child14440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11649_skip, output14440_skip]
  kernel_rfl

theorem node14442_cond_eq
    (child11640 : Flapjack.WordAlloc.removeDeadStructural input11640 value5824 value1 value2 = (output11640, value5824, value1))
    (child14441 : Flapjack.WordAlloc.removeDeadStructural input14441 value5824 value1 value2 = (output14441, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14442 value5824 value1 value2 = (output14442, value6896, value1) := by
  rw [input14442_def, output14442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11640]
  try dsimp only
  rw [child14441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11640_skip, output14441_skip]
  kernel_rfl

theorem node14443_cond_eq
    (child11639 : Flapjack.WordAlloc.removeDeadStructural input11639 value5823 value1 value2 = (output11639, value5824, value1))
    (child14442 : Flapjack.WordAlloc.removeDeadStructural input14442 value5824 value1 value2 = (output14442, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14443 value5823 value1 value2 = (output14443, value6896, value1) := by
  rw [input14443_def, output14443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11639]
  try dsimp only
  rw [child14442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11639_skip, output14442_skip]
  kernel_rfl

theorem node14444_cond_eq
    (child11638 : Flapjack.WordAlloc.removeDeadStructural input11638 value5 value1 value2 = (output11638, value5823, value1))
    (child14443 : Flapjack.WordAlloc.removeDeadStructural input14443 value5823 value1 value2 = (output14443, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14444 value5 value1 value2 = (output14444, value6896, value1) := by
  rw [input14444_def, output14444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11638]
  try dsimp only
  rw [child14443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11638_skip, output14443_skip]
  kernel_rfl

theorem node14445_cond_eq
    (child11635 : Flapjack.WordAlloc.removeDeadStructural input11635 value5817 value1 value2 = (output11635, value5, value1))
    (child14444 : Flapjack.WordAlloc.removeDeadStructural input14444 value5 value1 value2 = (output14444, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14445 value5817 value1 value2 = (output14445, value6896, value1) := by
  rw [input14445_def, output14445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11635]
  try dsimp only
  rw [child14444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11635_skip, output14444_skip]
  kernel_rfl

theorem node14446_cond_eq
    (child11626 : Flapjack.WordAlloc.removeDeadStructural input11626 value5817 value1 value2 = (output11626, value5817, value1))
    (child14445 : Flapjack.WordAlloc.removeDeadStructural input14445 value5817 value1 value2 = (output14445, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14446 value5817 value1 value2 = (output14446, value6896, value1) := by
  rw [input14446_def, output14446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11626]
  try dsimp only
  rw [child14445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11626_skip, output14445_skip]
  kernel_rfl

theorem node14447_cond_eq
    (child11625 : Flapjack.WordAlloc.removeDeadStructural input11625 value5816 value1 value2 = (output11625, value5817, value1))
    (child14446 : Flapjack.WordAlloc.removeDeadStructural input14446 value5817 value1 value2 = (output14446, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14447 value5816 value1 value2 = (output14447, value6896, value1) := by
  rw [input14447_def, output14447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11625]
  try dsimp only
  rw [child14446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11625_skip, output14446_skip]
  kernel_rfl

theorem node14448_cond_eq
    (child11624 : Flapjack.WordAlloc.removeDeadStructural input11624 value5 value1 value2 = (output11624, value5816, value1))
    (child14447 : Flapjack.WordAlloc.removeDeadStructural input14447 value5816 value1 value2 = (output14447, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14448 value5 value1 value2 = (output14448, value6896, value1) := by
  rw [input14448_def, output14448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11624]
  try dsimp only
  rw [child14447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11624_skip, output14447_skip]
  kernel_rfl

theorem node14449_cond_eq
    (child11621 : Flapjack.WordAlloc.removeDeadStructural input11621 value5810 value1 value2 = (output11621, value5, value1))
    (child14448 : Flapjack.WordAlloc.removeDeadStructural input14448 value5 value1 value2 = (output14448, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14449 value5810 value1 value2 = (output14449, value6896, value1) := by
  rw [input14449_def, output14449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11621]
  try dsimp only
  rw [child14448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11621_skip, output14448_skip]
  kernel_rfl

theorem node14450_cond_eq
    (child11612 : Flapjack.WordAlloc.removeDeadStructural input11612 value5810 value1 value2 = (output11612, value5810, value1))
    (child14449 : Flapjack.WordAlloc.removeDeadStructural input14449 value5810 value1 value2 = (output14449, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14450 value5810 value1 value2 = (output14450, value6896, value1) := by
  rw [input14450_def, output14450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11612]
  try dsimp only
  rw [child14449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11612_skip, output14449_skip]
  kernel_rfl

theorem node14451_cond_eq
    (child11611 : Flapjack.WordAlloc.removeDeadStructural input11611 value5809 value1 value2 = (output11611, value5810, value1))
    (child14450 : Flapjack.WordAlloc.removeDeadStructural input14450 value5810 value1 value2 = (output14450, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14451 value5809 value1 value2 = (output14451, value6896, value1) := by
  rw [input14451_def, output14451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11611]
  try dsimp only
  rw [child14450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11611_skip, output14450_skip]
  kernel_rfl

theorem node14452_cond_eq
    (child11610 : Flapjack.WordAlloc.removeDeadStructural input11610 value5 value1 value2 = (output11610, value5809, value1))
    (child14451 : Flapjack.WordAlloc.removeDeadStructural input14451 value5809 value1 value2 = (output14451, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14452 value5 value1 value2 = (output14452, value6896, value1) := by
  rw [input14452_def, output14452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11610]
  try dsimp only
  rw [child14451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11610_skip, output14451_skip]
  kernel_rfl

theorem node14453_cond_eq
    (child11607 : Flapjack.WordAlloc.removeDeadStructural input11607 value5803 value1 value2 = (output11607, value5, value1))
    (child14452 : Flapjack.WordAlloc.removeDeadStructural input14452 value5 value1 value2 = (output14452, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14453 value5803 value1 value2 = (output14453, value6896, value1) := by
  rw [input14453_def, output14453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11607]
  try dsimp only
  rw [child14452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11607_skip, output14452_skip]
  kernel_rfl

theorem node14454_cond_eq
    (child11598 : Flapjack.WordAlloc.removeDeadStructural input11598 value5803 value1 value2 = (output11598, value5803, value1))
    (child14453 : Flapjack.WordAlloc.removeDeadStructural input14453 value5803 value1 value2 = (output14453, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14454 value5803 value1 value2 = (output14454, value6896, value1) := by
  rw [input14454_def, output14454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11598]
  try dsimp only
  rw [child14453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11598_skip, output14453_skip]
  kernel_rfl

theorem node14455_cond_eq
    (child11597 : Flapjack.WordAlloc.removeDeadStructural input11597 value5802 value1 value2 = (output11597, value5803, value1))
    (child14454 : Flapjack.WordAlloc.removeDeadStructural input14454 value5803 value1 value2 = (output14454, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14455 value5802 value1 value2 = (output14455, value6896, value1) := by
  rw [input14455_def, output14455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11597]
  try dsimp only
  rw [child14454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11597_skip, output14454_skip]
  kernel_rfl

theorem node14456_cond_eq
    (child11596 : Flapjack.WordAlloc.removeDeadStructural input11596 value5 value1 value2 = (output11596, value5802, value1))
    (child14455 : Flapjack.WordAlloc.removeDeadStructural input14455 value5802 value1 value2 = (output14455, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14456 value5 value1 value2 = (output14456, value6896, value1) := by
  rw [input14456_def, output14456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11596]
  try dsimp only
  rw [child14455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11596_skip, output14455_skip]
  kernel_rfl

theorem node14457_cond_eq
    (child11593 : Flapjack.WordAlloc.removeDeadStructural input11593 value5796 value1 value2 = (output11593, value5, value1))
    (child14456 : Flapjack.WordAlloc.removeDeadStructural input14456 value5 value1 value2 = (output14456, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14457 value5796 value1 value2 = (output14457, value6896, value1) := by
  rw [input14457_def, output14457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11593]
  try dsimp only
  rw [child14456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11593_skip, output14456_skip]
  kernel_rfl

theorem node14458_cond_eq
    (child11584 : Flapjack.WordAlloc.removeDeadStructural input11584 value5796 value1 value2 = (output11584, value5796, value1))
    (child14457 : Flapjack.WordAlloc.removeDeadStructural input14457 value5796 value1 value2 = (output14457, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14458 value5796 value1 value2 = (output14458, value6896, value1) := by
  rw [input14458_def, output14458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11584]
  try dsimp only
  rw [child14457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11584_skip, output14457_skip]
  kernel_rfl

theorem node14459_cond_eq
    (child11583 : Flapjack.WordAlloc.removeDeadStructural input11583 value5795 value1 value2 = (output11583, value5796, value1))
    (child14458 : Flapjack.WordAlloc.removeDeadStructural input14458 value5796 value1 value2 = (output14458, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14459 value5795 value1 value2 = (output14459, value6896, value1) := by
  rw [input14459_def, output14459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11583]
  try dsimp only
  rw [child14458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11583_skip, output14458_skip]
  kernel_rfl

theorem node14460_cond_eq
    (child11582 : Flapjack.WordAlloc.removeDeadStructural input11582 value5 value1 value2 = (output11582, value5795, value1))
    (child14459 : Flapjack.WordAlloc.removeDeadStructural input14459 value5795 value1 value2 = (output14459, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14460 value5 value1 value2 = (output14460, value6896, value1) := by
  rw [input14460_def, output14460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11582]
  try dsimp only
  rw [child14459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11582_skip, output14459_skip]
  kernel_rfl

theorem node14461_cond_eq
    (child11579 : Flapjack.WordAlloc.removeDeadStructural input11579 value5789 value1 value2 = (output11579, value5, value1))
    (child14460 : Flapjack.WordAlloc.removeDeadStructural input14460 value5 value1 value2 = (output14460, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14461 value5789 value1 value2 = (output14461, value6896, value1) := by
  rw [input14461_def, output14461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11579]
  try dsimp only
  rw [child14460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11579_skip, output14460_skip]
  kernel_rfl

theorem node14462_cond_eq
    (child11570 : Flapjack.WordAlloc.removeDeadStructural input11570 value5789 value1 value2 = (output11570, value5789, value1))
    (child14461 : Flapjack.WordAlloc.removeDeadStructural input14461 value5789 value1 value2 = (output14461, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14462 value5789 value1 value2 = (output14462, value6896, value1) := by
  rw [input14462_def, output14462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11570]
  try dsimp only
  rw [child14461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11570_skip, output14461_skip]
  kernel_rfl

theorem node14463_cond_eq
    (child11569 : Flapjack.WordAlloc.removeDeadStructural input11569 value5788 value1 value2 = (output11569, value5789, value1))
    (child14462 : Flapjack.WordAlloc.removeDeadStructural input14462 value5789 value1 value2 = (output14462, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14463 value5788 value1 value2 = (output14463, value6896, value1) := by
  rw [input14463_def, output14463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11569]
  try dsimp only
  rw [child14462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11569_skip, output14462_skip]
  kernel_rfl

theorem node14464_cond_eq
    (child11568 : Flapjack.WordAlloc.removeDeadStructural input11568 value5 value1 value2 = (output11568, value5788, value1))
    (child14463 : Flapjack.WordAlloc.removeDeadStructural input14463 value5788 value1 value2 = (output14463, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14464 value5 value1 value2 = (output14464, value6896, value1) := by
  rw [input14464_def, output14464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11568]
  try dsimp only
  rw [child14463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11568_skip, output14463_skip]
  kernel_rfl

theorem node14465_cond_eq
    (child11565 : Flapjack.WordAlloc.removeDeadStructural input11565 value5782 value1 value2 = (output11565, value5, value1))
    (child14464 : Flapjack.WordAlloc.removeDeadStructural input14464 value5 value1 value2 = (output14464, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14465 value5782 value1 value2 = (output14465, value6896, value1) := by
  rw [input14465_def, output14465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11565]
  try dsimp only
  rw [child14464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11565_skip, output14464_skip]
  kernel_rfl

theorem node14466_cond_eq
    (child11556 : Flapjack.WordAlloc.removeDeadStructural input11556 value5782 value1 value2 = (output11556, value5782, value1))
    (child14465 : Flapjack.WordAlloc.removeDeadStructural input14465 value5782 value1 value2 = (output14465, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14466 value5782 value1 value2 = (output14466, value6896, value1) := by
  rw [input14466_def, output14466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11556]
  try dsimp only
  rw [child14465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11556_skip, output14465_skip]
  kernel_rfl

theorem node14467_cond_eq
    (child11555 : Flapjack.WordAlloc.removeDeadStructural input11555 value5781 value1 value2 = (output11555, value5782, value1))
    (child14466 : Flapjack.WordAlloc.removeDeadStructural input14466 value5782 value1 value2 = (output14466, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14467 value5781 value1 value2 = (output14467, value6896, value1) := by
  rw [input14467_def, output14467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11555]
  try dsimp only
  rw [child14466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11555_skip, output14466_skip]
  kernel_rfl

theorem node14468_cond_eq
    (child11554 : Flapjack.WordAlloc.removeDeadStructural input11554 value5 value1 value2 = (output11554, value5781, value1))
    (child14467 : Flapjack.WordAlloc.removeDeadStructural input14467 value5781 value1 value2 = (output14467, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14468 value5 value1 value2 = (output14468, value6896, value1) := by
  rw [input14468_def, output14468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11554]
  try dsimp only
  rw [child14467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11554_skip, output14467_skip]
  kernel_rfl

theorem node14469_cond_eq
    (child11551 : Flapjack.WordAlloc.removeDeadStructural input11551 value5775 value1 value2 = (output11551, value5, value1))
    (child14468 : Flapjack.WordAlloc.removeDeadStructural input14468 value5 value1 value2 = (output14468, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14469 value5775 value1 value2 = (output14469, value6896, value1) := by
  rw [input14469_def, output14469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11551]
  try dsimp only
  rw [child14468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11551_skip, output14468_skip]
  kernel_rfl

theorem node14470_cond_eq
    (child11542 : Flapjack.WordAlloc.removeDeadStructural input11542 value5775 value1 value2 = (output11542, value5775, value1))
    (child14469 : Flapjack.WordAlloc.removeDeadStructural input14469 value5775 value1 value2 = (output14469, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14470 value5775 value1 value2 = (output14470, value6896, value1) := by
  rw [input14470_def, output14470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11542]
  try dsimp only
  rw [child14469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11542_skip, output14469_skip]
  kernel_rfl

theorem node14471_cond_eq
    (child11541 : Flapjack.WordAlloc.removeDeadStructural input11541 value5774 value1 value2 = (output11541, value5775, value1))
    (child14470 : Flapjack.WordAlloc.removeDeadStructural input14470 value5775 value1 value2 = (output14470, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14471 value5774 value1 value2 = (output14471, value6896, value1) := by
  rw [input14471_def, output14471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11541]
  try dsimp only
  rw [child14470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11541_skip, output14470_skip]
  kernel_rfl

theorem node14472_cond_eq
    (child11540 : Flapjack.WordAlloc.removeDeadStructural input11540 value5 value1 value2 = (output11540, value5774, value1))
    (child14471 : Flapjack.WordAlloc.removeDeadStructural input14471 value5774 value1 value2 = (output14471, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14472 value5 value1 value2 = (output14472, value6896, value1) := by
  rw [input14472_def, output14472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11540]
  try dsimp only
  rw [child14471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11540_skip, output14471_skip]
  kernel_rfl

theorem node14473_cond_eq
    (child11537 : Flapjack.WordAlloc.removeDeadStructural input11537 value5768 value1 value2 = (output11537, value5, value1))
    (child14472 : Flapjack.WordAlloc.removeDeadStructural input14472 value5 value1 value2 = (output14472, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14473 value5768 value1 value2 = (output14473, value6896, value1) := by
  rw [input14473_def, output14473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11537]
  try dsimp only
  rw [child14472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11537_skip, output14472_skip]
  kernel_rfl

theorem node14474_cond_eq
    (child11528 : Flapjack.WordAlloc.removeDeadStructural input11528 value5768 value1 value2 = (output11528, value5768, value1))
    (child14473 : Flapjack.WordAlloc.removeDeadStructural input14473 value5768 value1 value2 = (output14473, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14474 value5768 value1 value2 = (output14474, value6896, value1) := by
  rw [input14474_def, output14474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11528]
  try dsimp only
  rw [child14473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11528_skip, output14473_skip]
  kernel_rfl

theorem node14475_cond_eq
    (child11527 : Flapjack.WordAlloc.removeDeadStructural input11527 value5767 value1 value2 = (output11527, value5768, value1))
    (child14474 : Flapjack.WordAlloc.removeDeadStructural input14474 value5768 value1 value2 = (output14474, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14475 value5767 value1 value2 = (output14475, value6896, value1) := by
  rw [input14475_def, output14475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11527]
  try dsimp only
  rw [child14474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11527_skip, output14474_skip]
  kernel_rfl

theorem node14476_cond_eq
    (child11526 : Flapjack.WordAlloc.removeDeadStructural input11526 value5 value1 value2 = (output11526, value5767, value1))
    (child14475 : Flapjack.WordAlloc.removeDeadStructural input14475 value5767 value1 value2 = (output14475, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14476 value5 value1 value2 = (output14476, value6896, value1) := by
  rw [input14476_def, output14476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11526]
  try dsimp only
  rw [child14475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11526_skip, output14475_skip]
  kernel_rfl

theorem node14477_cond_eq
    (child11523 : Flapjack.WordAlloc.removeDeadStructural input11523 value5761 value1 value2 = (output11523, value5, value1))
    (child14476 : Flapjack.WordAlloc.removeDeadStructural input14476 value5 value1 value2 = (output14476, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14477 value5761 value1 value2 = (output14477, value6896, value1) := by
  rw [input14477_def, output14477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11523]
  try dsimp only
  rw [child14476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11523_skip, output14476_skip]
  kernel_rfl

theorem node14478_cond_eq
    (child11514 : Flapjack.WordAlloc.removeDeadStructural input11514 value5761 value1 value2 = (output11514, value5761, value1))
    (child14477 : Flapjack.WordAlloc.removeDeadStructural input14477 value5761 value1 value2 = (output14477, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14478 value5761 value1 value2 = (output14478, value6896, value1) := by
  rw [input14478_def, output14478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11514]
  try dsimp only
  rw [child14477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11514_skip, output14477_skip]
  kernel_rfl

theorem node14479_cond_eq
    (child11513 : Flapjack.WordAlloc.removeDeadStructural input11513 value5760 value1 value2 = (output11513, value5761, value1))
    (child14478 : Flapjack.WordAlloc.removeDeadStructural input14478 value5761 value1 value2 = (output14478, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14479 value5760 value1 value2 = (output14479, value6896, value1) := by
  rw [input14479_def, output14479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11513]
  try dsimp only
  rw [child14478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11513_skip, output14478_skip]
  kernel_rfl

theorem node14480_cond_eq
    (child11512 : Flapjack.WordAlloc.removeDeadStructural input11512 value5 value1 value2 = (output11512, value5760, value1))
    (child14479 : Flapjack.WordAlloc.removeDeadStructural input14479 value5760 value1 value2 = (output14479, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14480 value5 value1 value2 = (output14480, value6896, value1) := by
  rw [input14480_def, output14480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11512]
  try dsimp only
  rw [child14479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11512_skip, output14479_skip]
  kernel_rfl

theorem node14481_cond_eq
    (child11509 : Flapjack.WordAlloc.removeDeadStructural input11509 value5754 value1 value2 = (output11509, value5, value1))
    (child14480 : Flapjack.WordAlloc.removeDeadStructural input14480 value5 value1 value2 = (output14480, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14481 value5754 value1 value2 = (output14481, value6896, value1) := by
  rw [input14481_def, output14481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11509]
  try dsimp only
  rw [child14480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11509_skip, output14480_skip]
  kernel_rfl

theorem node14482_cond_eq
    (child11500 : Flapjack.WordAlloc.removeDeadStructural input11500 value5754 value1 value2 = (output11500, value5754, value1))
    (child14481 : Flapjack.WordAlloc.removeDeadStructural input14481 value5754 value1 value2 = (output14481, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14482 value5754 value1 value2 = (output14482, value6896, value1) := by
  rw [input14482_def, output14482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11500]
  try dsimp only
  rw [child14481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11500_skip, output14481_skip]
  kernel_rfl

theorem node14483_cond_eq
    (child11499 : Flapjack.WordAlloc.removeDeadStructural input11499 value5753 value1 value2 = (output11499, value5754, value1))
    (child14482 : Flapjack.WordAlloc.removeDeadStructural input14482 value5754 value1 value2 = (output14482, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14483 value5753 value1 value2 = (output14483, value6896, value1) := by
  rw [input14483_def, output14483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11499]
  try dsimp only
  rw [child14482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11499_skip, output14482_skip]
  kernel_rfl

theorem node14484_cond_eq
    (child11498 : Flapjack.WordAlloc.removeDeadStructural input11498 value5 value1 value2 = (output11498, value5753, value1))
    (child14483 : Flapjack.WordAlloc.removeDeadStructural input14483 value5753 value1 value2 = (output14483, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14484 value5 value1 value2 = (output14484, value6896, value1) := by
  rw [input14484_def, output14484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11498]
  try dsimp only
  rw [child14483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11498_skip, output14483_skip]
  kernel_rfl

theorem node14485_cond_eq
    (child11495 : Flapjack.WordAlloc.removeDeadStructural input11495 value5747 value1 value2 = (output11495, value5, value1))
    (child14484 : Flapjack.WordAlloc.removeDeadStructural input14484 value5 value1 value2 = (output14484, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14485 value5747 value1 value2 = (output14485, value6896, value1) := by
  rw [input14485_def, output14485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11495]
  try dsimp only
  rw [child14484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11495_skip, output14484_skip]
  kernel_rfl

theorem node14486_cond_eq
    (child11486 : Flapjack.WordAlloc.removeDeadStructural input11486 value5747 value1 value2 = (output11486, value5747, value1))
    (child14485 : Flapjack.WordAlloc.removeDeadStructural input14485 value5747 value1 value2 = (output14485, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14486 value5747 value1 value2 = (output14486, value6896, value1) := by
  rw [input14486_def, output14486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11486]
  try dsimp only
  rw [child14485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11486_skip, output14485_skip]
  kernel_rfl

theorem node14487_cond_eq
    (child11485 : Flapjack.WordAlloc.removeDeadStructural input11485 value5746 value1 value2 = (output11485, value5747, value1))
    (child14486 : Flapjack.WordAlloc.removeDeadStructural input14486 value5747 value1 value2 = (output14486, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14487 value5746 value1 value2 = (output14487, value6896, value1) := by
  rw [input14487_def, output14487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11485]
  try dsimp only
  rw [child14486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11485_skip, output14486_skip]
  kernel_rfl

theorem node14488_cond_eq
    (child11484 : Flapjack.WordAlloc.removeDeadStructural input11484 value5 value1 value2 = (output11484, value5746, value1))
    (child14487 : Flapjack.WordAlloc.removeDeadStructural input14487 value5746 value1 value2 = (output14487, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14488 value5 value1 value2 = (output14488, value6896, value1) := by
  rw [input14488_def, output14488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11484]
  try dsimp only
  rw [child14487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11484_skip, output14487_skip]
  kernel_rfl

theorem node14489_cond_eq
    (child11481 : Flapjack.WordAlloc.removeDeadStructural input11481 value5740 value1 value2 = (output11481, value5, value1))
    (child14488 : Flapjack.WordAlloc.removeDeadStructural input14488 value5 value1 value2 = (output14488, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14489 value5740 value1 value2 = (output14489, value6896, value1) := by
  rw [input14489_def, output14489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11481]
  try dsimp only
  rw [child14488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11481_skip, output14488_skip]
  kernel_rfl

theorem node14490_cond_eq
    (child11472 : Flapjack.WordAlloc.removeDeadStructural input11472 value5740 value1 value2 = (output11472, value5740, value1))
    (child14489 : Flapjack.WordAlloc.removeDeadStructural input14489 value5740 value1 value2 = (output14489, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14490 value5740 value1 value2 = (output14490, value6896, value1) := by
  rw [input14490_def, output14490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11472]
  try dsimp only
  rw [child14489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11472_skip, output14489_skip]
  kernel_rfl

theorem node14491_cond_eq
    (child11471 : Flapjack.WordAlloc.removeDeadStructural input11471 value5739 value1 value2 = (output11471, value5740, value1))
    (child14490 : Flapjack.WordAlloc.removeDeadStructural input14490 value5740 value1 value2 = (output14490, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14491 value5739 value1 value2 = (output14491, value6896, value1) := by
  rw [input14491_def, output14491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11471]
  try dsimp only
  rw [child14490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11471_skip, output14490_skip]
  kernel_rfl

theorem node14492_cond_eq
    (child11470 : Flapjack.WordAlloc.removeDeadStructural input11470 value5 value1 value2 = (output11470, value5739, value1))
    (child14491 : Flapjack.WordAlloc.removeDeadStructural input14491 value5739 value1 value2 = (output14491, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14492 value5 value1 value2 = (output14492, value6896, value1) := by
  rw [input14492_def, output14492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11470]
  try dsimp only
  rw [child14491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11470_skip, output14491_skip]
  kernel_rfl

theorem node14493_cond_eq
    (child11467 : Flapjack.WordAlloc.removeDeadStructural input11467 value5733 value1 value2 = (output11467, value5, value1))
    (child14492 : Flapjack.WordAlloc.removeDeadStructural input14492 value5 value1 value2 = (output14492, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14493 value5733 value1 value2 = (output14493, value6896, value1) := by
  rw [input14493_def, output14493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11467]
  try dsimp only
  rw [child14492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11467_skip, output14492_skip]
  kernel_rfl

theorem node14494_cond_eq
    (child11458 : Flapjack.WordAlloc.removeDeadStructural input11458 value5733 value1 value2 = (output11458, value5733, value1))
    (child14493 : Flapjack.WordAlloc.removeDeadStructural input14493 value5733 value1 value2 = (output14493, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14494 value5733 value1 value2 = (output14494, value6896, value1) := by
  rw [input14494_def, output14494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11458]
  try dsimp only
  rw [child14493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11458_skip, output14493_skip]
  kernel_rfl

theorem node14495_cond_eq
    (child11457 : Flapjack.WordAlloc.removeDeadStructural input11457 value5732 value1 value2 = (output11457, value5733, value1))
    (child14494 : Flapjack.WordAlloc.removeDeadStructural input14494 value5733 value1 value2 = (output14494, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14495 value5732 value1 value2 = (output14495, value6896, value1) := by
  rw [input14495_def, output14495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11457]
  try dsimp only
  rw [child14494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11457_skip, output14494_skip]
  kernel_rfl

theorem node14496_cond_eq
    (child11456 : Flapjack.WordAlloc.removeDeadStructural input11456 value5 value1 value2 = (output11456, value5732, value1))
    (child14495 : Flapjack.WordAlloc.removeDeadStructural input14495 value5732 value1 value2 = (output14495, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14496 value5 value1 value2 = (output14496, value6896, value1) := by
  rw [input14496_def, output14496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11456]
  try dsimp only
  rw [child14495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11456_skip, output14495_skip]
  kernel_rfl

theorem node14497_cond_eq
    (child11453 : Flapjack.WordAlloc.removeDeadStructural input11453 value5726 value1 value2 = (output11453, value5, value1))
    (child14496 : Flapjack.WordAlloc.removeDeadStructural input14496 value5 value1 value2 = (output14496, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14497 value5726 value1 value2 = (output14497, value6896, value1) := by
  rw [input14497_def, output14497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11453]
  try dsimp only
  rw [child14496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11453_skip, output14496_skip]
  kernel_rfl

theorem node14498_cond_eq
    (child11444 : Flapjack.WordAlloc.removeDeadStructural input11444 value5726 value1 value2 = (output11444, value5726, value1))
    (child14497 : Flapjack.WordAlloc.removeDeadStructural input14497 value5726 value1 value2 = (output14497, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14498 value5726 value1 value2 = (output14498, value6896, value1) := by
  rw [input14498_def, output14498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11444]
  try dsimp only
  rw [child14497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11444_skip, output14497_skip]
  kernel_rfl

theorem node14499_cond_eq
    (child11443 : Flapjack.WordAlloc.removeDeadStructural input11443 value5725 value1 value2 = (output11443, value5726, value1))
    (child14498 : Flapjack.WordAlloc.removeDeadStructural input14498 value5726 value1 value2 = (output14498, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14499 value5725 value1 value2 = (output14499, value6896, value1) := by
  rw [input14499_def, output14499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11443]
  try dsimp only
  rw [child14498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11443_skip, output14498_skip]
  kernel_rfl

theorem node14500_cond_eq
    (child11442 : Flapjack.WordAlloc.removeDeadStructural input11442 value5 value1 value2 = (output11442, value5725, value1))
    (child14499 : Flapjack.WordAlloc.removeDeadStructural input14499 value5725 value1 value2 = (output14499, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14500 value5 value1 value2 = (output14500, value6896, value1) := by
  rw [input14500_def, output14500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11442]
  try dsimp only
  rw [child14499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11442_skip, output14499_skip]
  kernel_rfl

theorem node14501_cond_eq
    (child11439 : Flapjack.WordAlloc.removeDeadStructural input11439 value5719 value1 value2 = (output11439, value5, value1))
    (child14500 : Flapjack.WordAlloc.removeDeadStructural input14500 value5 value1 value2 = (output14500, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14501 value5719 value1 value2 = (output14501, value6896, value1) := by
  rw [input14501_def, output14501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11439]
  try dsimp only
  rw [child14500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11439_skip, output14500_skip]
  kernel_rfl

theorem node14502_cond_eq
    (child11430 : Flapjack.WordAlloc.removeDeadStructural input11430 value5719 value1 value2 = (output11430, value5719, value1))
    (child14501 : Flapjack.WordAlloc.removeDeadStructural input14501 value5719 value1 value2 = (output14501, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14502 value5719 value1 value2 = (output14502, value6896, value1) := by
  rw [input14502_def, output14502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11430]
  try dsimp only
  rw [child14501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11430_skip, output14501_skip]
  kernel_rfl

theorem node14503_cond_eq
    (child11429 : Flapjack.WordAlloc.removeDeadStructural input11429 value5718 value1 value2 = (output11429, value5719, value1))
    (child14502 : Flapjack.WordAlloc.removeDeadStructural input14502 value5719 value1 value2 = (output14502, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14503 value5718 value1 value2 = (output14503, value6896, value1) := by
  rw [input14503_def, output14503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11429]
  try dsimp only
  rw [child14502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11429_skip, output14502_skip]
  kernel_rfl

theorem node14504_cond_eq
    (child11428 : Flapjack.WordAlloc.removeDeadStructural input11428 value5 value1 value2 = (output11428, value5718, value1))
    (child14503 : Flapjack.WordAlloc.removeDeadStructural input14503 value5718 value1 value2 = (output14503, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14504 value5 value1 value2 = (output14504, value6896, value1) := by
  rw [input14504_def, output14504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11428]
  try dsimp only
  rw [child14503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11428_skip, output14503_skip]
  kernel_rfl

theorem node14505_cond_eq
    (child11425 : Flapjack.WordAlloc.removeDeadStructural input11425 value5712 value1 value2 = (output11425, value5, value1))
    (child14504 : Flapjack.WordAlloc.removeDeadStructural input14504 value5 value1 value2 = (output14504, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14505 value5712 value1 value2 = (output14505, value6896, value1) := by
  rw [input14505_def, output14505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11425]
  try dsimp only
  rw [child14504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11425_skip, output14504_skip]
  kernel_rfl

theorem node14506_cond_eq
    (child11416 : Flapjack.WordAlloc.removeDeadStructural input11416 value5712 value1 value2 = (output11416, value5712, value1))
    (child14505 : Flapjack.WordAlloc.removeDeadStructural input14505 value5712 value1 value2 = (output14505, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14506 value5712 value1 value2 = (output14506, value6896, value1) := by
  rw [input14506_def, output14506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11416]
  try dsimp only
  rw [child14505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11416_skip, output14505_skip]
  kernel_rfl

theorem node14507_cond_eq
    (child11415 : Flapjack.WordAlloc.removeDeadStructural input11415 value5711 value1 value2 = (output11415, value5712, value1))
    (child14506 : Flapjack.WordAlloc.removeDeadStructural input14506 value5712 value1 value2 = (output14506, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14507 value5711 value1 value2 = (output14507, value6896, value1) := by
  rw [input14507_def, output14507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11415]
  try dsimp only
  rw [child14506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11415_skip, output14506_skip]
  kernel_rfl

theorem node14508_cond_eq
    (child11414 : Flapjack.WordAlloc.removeDeadStructural input11414 value5 value1 value2 = (output11414, value5711, value1))
    (child14507 : Flapjack.WordAlloc.removeDeadStructural input14507 value5711 value1 value2 = (output14507, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14508 value5 value1 value2 = (output14508, value6896, value1) := by
  rw [input14508_def, output14508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11414]
  try dsimp only
  rw [child14507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11414_skip, output14507_skip]
  kernel_rfl

theorem node14509_cond_eq
    (child11411 : Flapjack.WordAlloc.removeDeadStructural input11411 value5705 value1 value2 = (output11411, value5, value1))
    (child14508 : Flapjack.WordAlloc.removeDeadStructural input14508 value5 value1 value2 = (output14508, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14509 value5705 value1 value2 = (output14509, value6896, value1) := by
  rw [input14509_def, output14509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11411]
  try dsimp only
  rw [child14508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11411_skip, output14508_skip]
  kernel_rfl

theorem node14510_cond_eq
    (child11402 : Flapjack.WordAlloc.removeDeadStructural input11402 value5705 value1 value2 = (output11402, value5705, value1))
    (child14509 : Flapjack.WordAlloc.removeDeadStructural input14509 value5705 value1 value2 = (output14509, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14510 value5705 value1 value2 = (output14510, value6896, value1) := by
  rw [input14510_def, output14510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11402]
  try dsimp only
  rw [child14509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11402_skip, output14509_skip]
  kernel_rfl

theorem node14511_cond_eq
    (child11401 : Flapjack.WordAlloc.removeDeadStructural input11401 value5704 value1 value2 = (output11401, value5705, value1))
    (child14510 : Flapjack.WordAlloc.removeDeadStructural input14510 value5705 value1 value2 = (output14510, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14511 value5704 value1 value2 = (output14511, value6896, value1) := by
  rw [input14511_def, output14511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11401]
  try dsimp only
  rw [child14510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11401_skip, output14510_skip]
  kernel_rfl

theorem node14512_cond_eq
    (child11400 : Flapjack.WordAlloc.removeDeadStructural input11400 value5 value1 value2 = (output11400, value5704, value1))
    (child14511 : Flapjack.WordAlloc.removeDeadStructural input14511 value5704 value1 value2 = (output14511, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14512 value5 value1 value2 = (output14512, value6896, value1) := by
  rw [input14512_def, output14512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11400]
  try dsimp only
  rw [child14511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11400_skip, output14511_skip]
  kernel_rfl

theorem node14513_cond_eq
    (child11397 : Flapjack.WordAlloc.removeDeadStructural input11397 value5698 value1 value2 = (output11397, value5, value1))
    (child14512 : Flapjack.WordAlloc.removeDeadStructural input14512 value5 value1 value2 = (output14512, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14513 value5698 value1 value2 = (output14513, value6896, value1) := by
  rw [input14513_def, output14513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11397]
  try dsimp only
  rw [child14512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11397_skip, output14512_skip]
  kernel_rfl

theorem node14514_cond_eq
    (child11388 : Flapjack.WordAlloc.removeDeadStructural input11388 value5698 value1 value2 = (output11388, value5698, value1))
    (child14513 : Flapjack.WordAlloc.removeDeadStructural input14513 value5698 value1 value2 = (output14513, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14514 value5698 value1 value2 = (output14514, value6896, value1) := by
  rw [input14514_def, output14514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11388]
  try dsimp only
  rw [child14513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11388_skip, output14513_skip]
  kernel_rfl

theorem node14515_cond_eq
    (child11387 : Flapjack.WordAlloc.removeDeadStructural input11387 value5697 value1 value2 = (output11387, value5698, value1))
    (child14514 : Flapjack.WordAlloc.removeDeadStructural input14514 value5698 value1 value2 = (output14514, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14515 value5697 value1 value2 = (output14515, value6896, value1) := by
  rw [input14515_def, output14515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11387]
  try dsimp only
  rw [child14514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11387_skip, output14514_skip]
  kernel_rfl

theorem node14516_cond_eq
    (child11386 : Flapjack.WordAlloc.removeDeadStructural input11386 value5 value1 value2 = (output11386, value5697, value1))
    (child14515 : Flapjack.WordAlloc.removeDeadStructural input14515 value5697 value1 value2 = (output14515, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14516 value5 value1 value2 = (output14516, value6896, value1) := by
  rw [input14516_def, output14516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11386]
  try dsimp only
  rw [child14515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11386_skip, output14515_skip]
  kernel_rfl

theorem node14517_cond_eq
    (child11383 : Flapjack.WordAlloc.removeDeadStructural input11383 value5691 value1 value2 = (output11383, value5, value1))
    (child14516 : Flapjack.WordAlloc.removeDeadStructural input14516 value5 value1 value2 = (output14516, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14517 value5691 value1 value2 = (output14517, value6896, value1) := by
  rw [input14517_def, output14517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11383]
  try dsimp only
  rw [child14516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11383_skip, output14516_skip]
  kernel_rfl

theorem node14518_cond_eq
    (child11374 : Flapjack.WordAlloc.removeDeadStructural input11374 value5691 value1 value2 = (output11374, value5691, value1))
    (child14517 : Flapjack.WordAlloc.removeDeadStructural input14517 value5691 value1 value2 = (output14517, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14518 value5691 value1 value2 = (output14518, value6896, value1) := by
  rw [input14518_def, output14518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11374]
  try dsimp only
  rw [child14517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11374_skip, output14517_skip]
  kernel_rfl

theorem node14519_cond_eq
    (child11373 : Flapjack.WordAlloc.removeDeadStructural input11373 value5690 value1 value2 = (output11373, value5691, value1))
    (child14518 : Flapjack.WordAlloc.removeDeadStructural input14518 value5691 value1 value2 = (output14518, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14519 value5690 value1 value2 = (output14519, value6896, value1) := by
  rw [input14519_def, output14519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11373]
  try dsimp only
  rw [child14518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11373_skip, output14518_skip]
  kernel_rfl

theorem node14520_cond_eq
    (child11372 : Flapjack.WordAlloc.removeDeadStructural input11372 value5 value1 value2 = (output11372, value5690, value1))
    (child14519 : Flapjack.WordAlloc.removeDeadStructural input14519 value5690 value1 value2 = (output14519, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14520 value5 value1 value2 = (output14520, value6896, value1) := by
  rw [input14520_def, output14520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11372]
  try dsimp only
  rw [child14519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11372_skip, output14519_skip]
  kernel_rfl

theorem node14521_cond_eq
    (child11369 : Flapjack.WordAlloc.removeDeadStructural input11369 value5684 value1 value2 = (output11369, value5, value1))
    (child14520 : Flapjack.WordAlloc.removeDeadStructural input14520 value5 value1 value2 = (output14520, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14521 value5684 value1 value2 = (output14521, value6896, value1) := by
  rw [input14521_def, output14521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11369]
  try dsimp only
  rw [child14520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11369_skip, output14520_skip]
  kernel_rfl

theorem node14522_cond_eq
    (child11360 : Flapjack.WordAlloc.removeDeadStructural input11360 value5684 value1 value2 = (output11360, value5684, value1))
    (child14521 : Flapjack.WordAlloc.removeDeadStructural input14521 value5684 value1 value2 = (output14521, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14522 value5684 value1 value2 = (output14522, value6896, value1) := by
  rw [input14522_def, output14522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11360]
  try dsimp only
  rw [child14521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11360_skip, output14521_skip]
  kernel_rfl

theorem node14523_cond_eq
    (child11359 : Flapjack.WordAlloc.removeDeadStructural input11359 value5683 value1 value2 = (output11359, value5684, value1))
    (child14522 : Flapjack.WordAlloc.removeDeadStructural input14522 value5684 value1 value2 = (output14522, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14523 value5683 value1 value2 = (output14523, value6896, value1) := by
  rw [input14523_def, output14523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11359]
  try dsimp only
  rw [child14522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11359_skip, output14522_skip]
  kernel_rfl

theorem node14524_cond_eq
    (child11358 : Flapjack.WordAlloc.removeDeadStructural input11358 value5 value1 value2 = (output11358, value5683, value1))
    (child14523 : Flapjack.WordAlloc.removeDeadStructural input14523 value5683 value1 value2 = (output14523, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14524 value5 value1 value2 = (output14524, value6896, value1) := by
  rw [input14524_def, output14524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11358]
  try dsimp only
  rw [child14523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11358_skip, output14523_skip]
  kernel_rfl

theorem node14525_cond_eq
    (child11355 : Flapjack.WordAlloc.removeDeadStructural input11355 value5677 value1 value2 = (output11355, value5, value1))
    (child14524 : Flapjack.WordAlloc.removeDeadStructural input14524 value5 value1 value2 = (output14524, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14525 value5677 value1 value2 = (output14525, value6896, value1) := by
  rw [input14525_def, output14525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11355]
  try dsimp only
  rw [child14524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11355_skip, output14524_skip]
  kernel_rfl

theorem node14526_cond_eq
    (child11346 : Flapjack.WordAlloc.removeDeadStructural input11346 value5677 value1 value2 = (output11346, value5677, value1))
    (child14525 : Flapjack.WordAlloc.removeDeadStructural input14525 value5677 value1 value2 = (output14525, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14526 value5677 value1 value2 = (output14526, value6896, value1) := by
  rw [input14526_def, output14526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11346]
  try dsimp only
  rw [child14525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11346_skip, output14525_skip]
  kernel_rfl

theorem node14527_cond_eq
    (child11345 : Flapjack.WordAlloc.removeDeadStructural input11345 value5676 value1 value2 = (output11345, value5677, value1))
    (child14526 : Flapjack.WordAlloc.removeDeadStructural input14526 value5677 value1 value2 = (output14526, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14527 value5676 value1 value2 = (output14527, value6896, value1) := by
  rw [input14527_def, output14527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11345]
  try dsimp only
  rw [child14526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11345_skip, output14526_skip]
  kernel_rfl

theorem node14528_cond_eq
    (child11344 : Flapjack.WordAlloc.removeDeadStructural input11344 value5 value1 value2 = (output11344, value5676, value1))
    (child14527 : Flapjack.WordAlloc.removeDeadStructural input14527 value5676 value1 value2 = (output14527, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14528 value5 value1 value2 = (output14528, value6896, value1) := by
  rw [input14528_def, output14528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11344]
  try dsimp only
  rw [child14527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11344_skip, output14527_skip]
  kernel_rfl

theorem node14529_cond_eq
    (child11341 : Flapjack.WordAlloc.removeDeadStructural input11341 value5670 value1 value2 = (output11341, value5, value1))
    (child14528 : Flapjack.WordAlloc.removeDeadStructural input14528 value5 value1 value2 = (output14528, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14529 value5670 value1 value2 = (output14529, value6896, value1) := by
  rw [input14529_def, output14529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11341]
  try dsimp only
  rw [child14528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11341_skip, output14528_skip]
  kernel_rfl

theorem node14530_cond_eq
    (child11332 : Flapjack.WordAlloc.removeDeadStructural input11332 value5670 value1 value2 = (output11332, value5670, value1))
    (child14529 : Flapjack.WordAlloc.removeDeadStructural input14529 value5670 value1 value2 = (output14529, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14530 value5670 value1 value2 = (output14530, value6896, value1) := by
  rw [input14530_def, output14530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11332]
  try dsimp only
  rw [child14529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11332_skip, output14529_skip]
  kernel_rfl

theorem node14531_cond_eq
    (child11331 : Flapjack.WordAlloc.removeDeadStructural input11331 value5669 value1 value2 = (output11331, value5670, value1))
    (child14530 : Flapjack.WordAlloc.removeDeadStructural input14530 value5670 value1 value2 = (output14530, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14531 value5669 value1 value2 = (output14531, value6896, value1) := by
  rw [input14531_def, output14531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11331]
  try dsimp only
  rw [child14530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11331_skip, output14530_skip]
  kernel_rfl

theorem node14532_cond_eq
    (child11330 : Flapjack.WordAlloc.removeDeadStructural input11330 value5 value1 value2 = (output11330, value5669, value1))
    (child14531 : Flapjack.WordAlloc.removeDeadStructural input14531 value5669 value1 value2 = (output14531, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14532 value5 value1 value2 = (output14532, value6896, value1) := by
  rw [input14532_def, output14532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11330]
  try dsimp only
  rw [child14531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11330_skip, output14531_skip]
  kernel_rfl

theorem node14533_cond_eq
    (child11327 : Flapjack.WordAlloc.removeDeadStructural input11327 value5663 value1 value2 = (output11327, value5, value1))
    (child14532 : Flapjack.WordAlloc.removeDeadStructural input14532 value5 value1 value2 = (output14532, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14533 value5663 value1 value2 = (output14533, value6896, value1) := by
  rw [input14533_def, output14533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11327]
  try dsimp only
  rw [child14532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11327_skip, output14532_skip]
  kernel_rfl

theorem node14534_cond_eq
    (child11318 : Flapjack.WordAlloc.removeDeadStructural input11318 value5663 value1 value2 = (output11318, value5663, value1))
    (child14533 : Flapjack.WordAlloc.removeDeadStructural input14533 value5663 value1 value2 = (output14533, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14534 value5663 value1 value2 = (output14534, value6896, value1) := by
  rw [input14534_def, output14534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11318]
  try dsimp only
  rw [child14533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11318_skip, output14533_skip]
  kernel_rfl

theorem node14535_cond_eq
    (child11317 : Flapjack.WordAlloc.removeDeadStructural input11317 value5662 value1 value2 = (output11317, value5663, value1))
    (child14534 : Flapjack.WordAlloc.removeDeadStructural input14534 value5663 value1 value2 = (output14534, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14535 value5662 value1 value2 = (output14535, value6896, value1) := by
  rw [input14535_def, output14535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11317]
  try dsimp only
  rw [child14534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11317_skip, output14534_skip]
  kernel_rfl

theorem node14536_cond_eq
    (child11316 : Flapjack.WordAlloc.removeDeadStructural input11316 value5 value1 value2 = (output11316, value5662, value1))
    (child14535 : Flapjack.WordAlloc.removeDeadStructural input14535 value5662 value1 value2 = (output14535, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14536 value5 value1 value2 = (output14536, value6896, value1) := by
  rw [input14536_def, output14536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11316]
  try dsimp only
  rw [child14535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11316_skip, output14535_skip]
  kernel_rfl

theorem node14537_cond_eq
    (child11313 : Flapjack.WordAlloc.removeDeadStructural input11313 value5656 value1 value2 = (output11313, value5, value1))
    (child14536 : Flapjack.WordAlloc.removeDeadStructural input14536 value5 value1 value2 = (output14536, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14537 value5656 value1 value2 = (output14537, value6896, value1) := by
  rw [input14537_def, output14537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11313]
  try dsimp only
  rw [child14536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11313_skip, output14536_skip]
  kernel_rfl

theorem node14538_cond_eq
    (child11304 : Flapjack.WordAlloc.removeDeadStructural input11304 value5656 value1 value2 = (output11304, value5656, value1))
    (child14537 : Flapjack.WordAlloc.removeDeadStructural input14537 value5656 value1 value2 = (output14537, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14538 value5656 value1 value2 = (output14538, value6896, value1) := by
  rw [input14538_def, output14538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11304]
  try dsimp only
  rw [child14537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11304_skip, output14537_skip]
  kernel_rfl

theorem node14539_cond_eq
    (child11303 : Flapjack.WordAlloc.removeDeadStructural input11303 value5655 value1 value2 = (output11303, value5656, value1))
    (child14538 : Flapjack.WordAlloc.removeDeadStructural input14538 value5656 value1 value2 = (output14538, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14539 value5655 value1 value2 = (output14539, value6896, value1) := by
  rw [input14539_def, output14539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11303]
  try dsimp only
  rw [child14538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11303_skip, output14538_skip]
  kernel_rfl

theorem node14540_cond_eq
    (child11302 : Flapjack.WordAlloc.removeDeadStructural input11302 value5 value1 value2 = (output11302, value5655, value1))
    (child14539 : Flapjack.WordAlloc.removeDeadStructural input14539 value5655 value1 value2 = (output14539, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14540 value5 value1 value2 = (output14540, value6896, value1) := by
  rw [input14540_def, output14540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11302]
  try dsimp only
  rw [child14539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11302_skip, output14539_skip]
  kernel_rfl

theorem node14541_cond_eq
    (child11299 : Flapjack.WordAlloc.removeDeadStructural input11299 value5649 value1 value2 = (output11299, value5, value1))
    (child14540 : Flapjack.WordAlloc.removeDeadStructural input14540 value5 value1 value2 = (output14540, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14541 value5649 value1 value2 = (output14541, value6896, value1) := by
  rw [input14541_def, output14541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11299]
  try dsimp only
  rw [child14540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11299_skip, output14540_skip]
  kernel_rfl

theorem node14542_cond_eq
    (child11290 : Flapjack.WordAlloc.removeDeadStructural input11290 value5649 value1 value2 = (output11290, value5649, value1))
    (child14541 : Flapjack.WordAlloc.removeDeadStructural input14541 value5649 value1 value2 = (output14541, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14542 value5649 value1 value2 = (output14542, value6896, value1) := by
  rw [input14542_def, output14542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11290]
  try dsimp only
  rw [child14541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11290_skip, output14541_skip]
  kernel_rfl

theorem node14543_cond_eq
    (child11289 : Flapjack.WordAlloc.removeDeadStructural input11289 value5648 value1 value2 = (output11289, value5649, value1))
    (child14542 : Flapjack.WordAlloc.removeDeadStructural input14542 value5649 value1 value2 = (output14542, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14543 value5648 value1 value2 = (output14543, value6896, value1) := by
  rw [input14543_def, output14543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11289]
  try dsimp only
  rw [child14542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11289_skip, output14542_skip]
  kernel_rfl

theorem node14544_cond_eq
    (child11288 : Flapjack.WordAlloc.removeDeadStructural input11288 value5 value1 value2 = (output11288, value5648, value1))
    (child14543 : Flapjack.WordAlloc.removeDeadStructural input14543 value5648 value1 value2 = (output14543, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14544 value5 value1 value2 = (output14544, value6896, value1) := by
  rw [input14544_def, output14544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11288]
  try dsimp only
  rw [child14543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11288_skip, output14543_skip]
  kernel_rfl

theorem node14545_cond_eq
    (child11285 : Flapjack.WordAlloc.removeDeadStructural input11285 value5642 value1 value2 = (output11285, value5, value1))
    (child14544 : Flapjack.WordAlloc.removeDeadStructural input14544 value5 value1 value2 = (output14544, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14545 value5642 value1 value2 = (output14545, value6896, value1) := by
  rw [input14545_def, output14545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11285]
  try dsimp only
  rw [child14544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11285_skip, output14544_skip]
  kernel_rfl

theorem node14546_cond_eq
    (child11276 : Flapjack.WordAlloc.removeDeadStructural input11276 value5642 value1 value2 = (output11276, value5642, value1))
    (child14545 : Flapjack.WordAlloc.removeDeadStructural input14545 value5642 value1 value2 = (output14545, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14546 value5642 value1 value2 = (output14546, value6896, value1) := by
  rw [input14546_def, output14546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11276]
  try dsimp only
  rw [child14545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11276_skip, output14545_skip]
  kernel_rfl

theorem node14547_cond_eq
    (child11275 : Flapjack.WordAlloc.removeDeadStructural input11275 value5641 value1 value2 = (output11275, value5642, value1))
    (child14546 : Flapjack.WordAlloc.removeDeadStructural input14546 value5642 value1 value2 = (output14546, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14547 value5641 value1 value2 = (output14547, value6896, value1) := by
  rw [input14547_def, output14547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11275]
  try dsimp only
  rw [child14546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11275_skip, output14546_skip]
  kernel_rfl

theorem node14548_cond_eq
    (child11274 : Flapjack.WordAlloc.removeDeadStructural input11274 value5 value1 value2 = (output11274, value5641, value1))
    (child14547 : Flapjack.WordAlloc.removeDeadStructural input14547 value5641 value1 value2 = (output14547, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14548 value5 value1 value2 = (output14548, value6896, value1) := by
  rw [input14548_def, output14548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11274]
  try dsimp only
  rw [child14547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11274_skip, output14547_skip]
  kernel_rfl

theorem node14549_cond_eq
    (child11271 : Flapjack.WordAlloc.removeDeadStructural input11271 value5635 value1 value2 = (output11271, value5, value1))
    (child14548 : Flapjack.WordAlloc.removeDeadStructural input14548 value5 value1 value2 = (output14548, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14549 value5635 value1 value2 = (output14549, value6896, value1) := by
  rw [input14549_def, output14549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11271]
  try dsimp only
  rw [child14548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11271_skip, output14548_skip]
  kernel_rfl

theorem node14550_cond_eq
    (child11262 : Flapjack.WordAlloc.removeDeadStructural input11262 value5635 value1 value2 = (output11262, value5635, value1))
    (child14549 : Flapjack.WordAlloc.removeDeadStructural input14549 value5635 value1 value2 = (output14549, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14550 value5635 value1 value2 = (output14550, value6896, value1) := by
  rw [input14550_def, output14550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11262]
  try dsimp only
  rw [child14549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11262_skip, output14549_skip]
  kernel_rfl

theorem node14551_cond_eq
    (child11261 : Flapjack.WordAlloc.removeDeadStructural input11261 value5634 value1 value2 = (output11261, value5635, value1))
    (child14550 : Flapjack.WordAlloc.removeDeadStructural input14550 value5635 value1 value2 = (output14550, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14551 value5634 value1 value2 = (output14551, value6896, value1) := by
  rw [input14551_def, output14551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11261]
  try dsimp only
  rw [child14550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11261_skip, output14550_skip]
  kernel_rfl

theorem node14552_cond_eq
    (child11260 : Flapjack.WordAlloc.removeDeadStructural input11260 value5 value1 value2 = (output11260, value5634, value1))
    (child14551 : Flapjack.WordAlloc.removeDeadStructural input14551 value5634 value1 value2 = (output14551, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14552 value5 value1 value2 = (output14552, value6896, value1) := by
  rw [input14552_def, output14552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11260]
  try dsimp only
  rw [child14551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11260_skip, output14551_skip]
  kernel_rfl

theorem node14553_cond_eq
    (child11257 : Flapjack.WordAlloc.removeDeadStructural input11257 value5628 value1 value2 = (output11257, value5, value1))
    (child14552 : Flapjack.WordAlloc.removeDeadStructural input14552 value5 value1 value2 = (output14552, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14553 value5628 value1 value2 = (output14553, value6896, value1) := by
  rw [input14553_def, output14553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11257]
  try dsimp only
  rw [child14552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11257_skip, output14552_skip]
  kernel_rfl

theorem node14554_cond_eq
    (child11248 : Flapjack.WordAlloc.removeDeadStructural input11248 value5628 value1 value2 = (output11248, value5628, value1))
    (child14553 : Flapjack.WordAlloc.removeDeadStructural input14553 value5628 value1 value2 = (output14553, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14554 value5628 value1 value2 = (output14554, value6896, value1) := by
  rw [input14554_def, output14554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11248]
  try dsimp only
  rw [child14553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11248_skip, output14553_skip]
  kernel_rfl

theorem node14555_cond_eq
    (child11247 : Flapjack.WordAlloc.removeDeadStructural input11247 value5627 value1 value2 = (output11247, value5628, value1))
    (child14554 : Flapjack.WordAlloc.removeDeadStructural input14554 value5628 value1 value2 = (output14554, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14555 value5627 value1 value2 = (output14555, value6896, value1) := by
  rw [input14555_def, output14555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11247]
  try dsimp only
  rw [child14554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11247_skip, output14554_skip]
  kernel_rfl

theorem node14556_cond_eq
    (child11246 : Flapjack.WordAlloc.removeDeadStructural input11246 value5 value1 value2 = (output11246, value5627, value1))
    (child14555 : Flapjack.WordAlloc.removeDeadStructural input14555 value5627 value1 value2 = (output14555, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14556 value5 value1 value2 = (output14556, value6896, value1) := by
  rw [input14556_def, output14556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11246]
  try dsimp only
  rw [child14555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11246_skip, output14555_skip]
  kernel_rfl

theorem node14557_cond_eq
    (child11243 : Flapjack.WordAlloc.removeDeadStructural input11243 value5621 value1 value2 = (output11243, value5, value1))
    (child14556 : Flapjack.WordAlloc.removeDeadStructural input14556 value5 value1 value2 = (output14556, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14557 value5621 value1 value2 = (output14557, value6896, value1) := by
  rw [input14557_def, output14557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11243]
  try dsimp only
  rw [child14556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11243_skip, output14556_skip]
  kernel_rfl

theorem node14558_cond_eq
    (child11234 : Flapjack.WordAlloc.removeDeadStructural input11234 value5621 value1 value2 = (output11234, value5621, value1))
    (child14557 : Flapjack.WordAlloc.removeDeadStructural input14557 value5621 value1 value2 = (output14557, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14558 value5621 value1 value2 = (output14558, value6896, value1) := by
  rw [input14558_def, output14558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11234]
  try dsimp only
  rw [child14557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11234_skip, output14557_skip]
  kernel_rfl

theorem node14559_cond_eq
    (child11233 : Flapjack.WordAlloc.removeDeadStructural input11233 value5620 value1 value2 = (output11233, value5621, value1))
    (child14558 : Flapjack.WordAlloc.removeDeadStructural input14558 value5621 value1 value2 = (output14558, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14559 value5620 value1 value2 = (output14559, value6896, value1) := by
  rw [input14559_def, output14559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11233]
  try dsimp only
  rw [child14558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11233_skip, output14558_skip]
  kernel_rfl

theorem node14560_cond_eq
    (child11232 : Flapjack.WordAlloc.removeDeadStructural input11232 value5 value1 value2 = (output11232, value5620, value1))
    (child14559 : Flapjack.WordAlloc.removeDeadStructural input14559 value5620 value1 value2 = (output14559, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14560 value5 value1 value2 = (output14560, value6896, value1) := by
  rw [input14560_def, output14560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11232]
  try dsimp only
  rw [child14559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11232_skip, output14559_skip]
  kernel_rfl

theorem node14561_cond_eq
    (child11229 : Flapjack.WordAlloc.removeDeadStructural input11229 value5614 value1 value2 = (output11229, value5, value1))
    (child14560 : Flapjack.WordAlloc.removeDeadStructural input14560 value5 value1 value2 = (output14560, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14561 value5614 value1 value2 = (output14561, value6896, value1) := by
  rw [input14561_def, output14561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11229]
  try dsimp only
  rw [child14560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11229_skip, output14560_skip]
  kernel_rfl

theorem node14562_cond_eq
    (child11220 : Flapjack.WordAlloc.removeDeadStructural input11220 value5614 value1 value2 = (output11220, value5614, value1))
    (child14561 : Flapjack.WordAlloc.removeDeadStructural input14561 value5614 value1 value2 = (output14561, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14562 value5614 value1 value2 = (output14562, value6896, value1) := by
  rw [input14562_def, output14562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11220]
  try dsimp only
  rw [child14561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11220_skip, output14561_skip]
  kernel_rfl

theorem node14563_cond_eq
    (child11219 : Flapjack.WordAlloc.removeDeadStructural input11219 value5613 value1 value2 = (output11219, value5614, value1))
    (child14562 : Flapjack.WordAlloc.removeDeadStructural input14562 value5614 value1 value2 = (output14562, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14563 value5613 value1 value2 = (output14563, value6896, value1) := by
  rw [input14563_def, output14563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11219]
  try dsimp only
  rw [child14562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11219_skip, output14562_skip]
  kernel_rfl

theorem node14564_cond_eq
    (child11218 : Flapjack.WordAlloc.removeDeadStructural input11218 value5 value1 value2 = (output11218, value5613, value1))
    (child14563 : Flapjack.WordAlloc.removeDeadStructural input14563 value5613 value1 value2 = (output14563, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14564 value5 value1 value2 = (output14564, value6896, value1) := by
  rw [input14564_def, output14564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11218]
  try dsimp only
  rw [child14563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11218_skip, output14563_skip]
  kernel_rfl

theorem node14565_cond_eq
    (child11215 : Flapjack.WordAlloc.removeDeadStructural input11215 value5607 value1 value2 = (output11215, value5, value1))
    (child14564 : Flapjack.WordAlloc.removeDeadStructural input14564 value5 value1 value2 = (output14564, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14565 value5607 value1 value2 = (output14565, value6896, value1) := by
  rw [input14565_def, output14565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11215]
  try dsimp only
  rw [child14564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11215_skip, output14564_skip]
  kernel_rfl

theorem node14566_cond_eq
    (child11206 : Flapjack.WordAlloc.removeDeadStructural input11206 value5607 value1 value2 = (output11206, value5607, value1))
    (child14565 : Flapjack.WordAlloc.removeDeadStructural input14565 value5607 value1 value2 = (output14565, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14566 value5607 value1 value2 = (output14566, value6896, value1) := by
  rw [input14566_def, output14566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11206]
  try dsimp only
  rw [child14565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11206_skip, output14565_skip]
  kernel_rfl

theorem node14567_cond_eq
    (child11205 : Flapjack.WordAlloc.removeDeadStructural input11205 value5606 value1 value2 = (output11205, value5607, value1))
    (child14566 : Flapjack.WordAlloc.removeDeadStructural input14566 value5607 value1 value2 = (output14566, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14567 value5606 value1 value2 = (output14567, value6896, value1) := by
  rw [input14567_def, output14567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11205]
  try dsimp only
  rw [child14566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11205_skip, output14566_skip]
  kernel_rfl

theorem node14568_cond_eq
    (child11204 : Flapjack.WordAlloc.removeDeadStructural input11204 value5 value1 value2 = (output11204, value5606, value1))
    (child14567 : Flapjack.WordAlloc.removeDeadStructural input14567 value5606 value1 value2 = (output14567, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14568 value5 value1 value2 = (output14568, value6896, value1) := by
  rw [input14568_def, output14568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11204]
  try dsimp only
  rw [child14567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11204_skip, output14567_skip]
  kernel_rfl

theorem node14569_cond_eq
    (child11201 : Flapjack.WordAlloc.removeDeadStructural input11201 value5600 value1 value2 = (output11201, value5, value1))
    (child14568 : Flapjack.WordAlloc.removeDeadStructural input14568 value5 value1 value2 = (output14568, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14569 value5600 value1 value2 = (output14569, value6896, value1) := by
  rw [input14569_def, output14569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11201]
  try dsimp only
  rw [child14568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11201_skip, output14568_skip]
  kernel_rfl

theorem node14570_cond_eq
    (child11192 : Flapjack.WordAlloc.removeDeadStructural input11192 value5600 value1 value2 = (output11192, value5600, value1))
    (child14569 : Flapjack.WordAlloc.removeDeadStructural input14569 value5600 value1 value2 = (output14569, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14570 value5600 value1 value2 = (output14570, value6896, value1) := by
  rw [input14570_def, output14570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11192]
  try dsimp only
  rw [child14569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11192_skip, output14569_skip]
  kernel_rfl

theorem node14571_cond_eq
    (child11191 : Flapjack.WordAlloc.removeDeadStructural input11191 value5599 value1 value2 = (output11191, value5600, value1))
    (child14570 : Flapjack.WordAlloc.removeDeadStructural input14570 value5600 value1 value2 = (output14570, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14571 value5599 value1 value2 = (output14571, value6896, value1) := by
  rw [input14571_def, output14571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11191]
  try dsimp only
  rw [child14570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11191_skip, output14570_skip]
  kernel_rfl

theorem node14572_cond_eq
    (child11190 : Flapjack.WordAlloc.removeDeadStructural input11190 value5 value1 value2 = (output11190, value5599, value1))
    (child14571 : Flapjack.WordAlloc.removeDeadStructural input14571 value5599 value1 value2 = (output14571, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14572 value5 value1 value2 = (output14572, value6896, value1) := by
  rw [input14572_def, output14572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11190]
  try dsimp only
  rw [child14571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11190_skip, output14571_skip]
  kernel_rfl

theorem node14573_cond_eq
    (child11187 : Flapjack.WordAlloc.removeDeadStructural input11187 value5593 value1 value2 = (output11187, value5, value1))
    (child14572 : Flapjack.WordAlloc.removeDeadStructural input14572 value5 value1 value2 = (output14572, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14573 value5593 value1 value2 = (output14573, value6896, value1) := by
  rw [input14573_def, output14573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11187]
  try dsimp only
  rw [child14572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11187_skip, output14572_skip]
  kernel_rfl

theorem node14574_cond_eq
    (child11178 : Flapjack.WordAlloc.removeDeadStructural input11178 value5593 value1 value2 = (output11178, value5593, value1))
    (child14573 : Flapjack.WordAlloc.removeDeadStructural input14573 value5593 value1 value2 = (output14573, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14574 value5593 value1 value2 = (output14574, value6896, value1) := by
  rw [input14574_def, output14574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11178]
  try dsimp only
  rw [child14573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11178_skip, output14573_skip]
  kernel_rfl

theorem node14575_cond_eq
    (child11177 : Flapjack.WordAlloc.removeDeadStructural input11177 value5592 value1 value2 = (output11177, value5593, value1))
    (child14574 : Flapjack.WordAlloc.removeDeadStructural input14574 value5593 value1 value2 = (output14574, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14575 value5592 value1 value2 = (output14575, value6896, value1) := by
  rw [input14575_def, output14575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11177]
  try dsimp only
  rw [child14574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11177_skip, output14574_skip]
  kernel_rfl

theorem node14576_cond_eq
    (child11176 : Flapjack.WordAlloc.removeDeadStructural input11176 value5 value1 value2 = (output11176, value5592, value1))
    (child14575 : Flapjack.WordAlloc.removeDeadStructural input14575 value5592 value1 value2 = (output14575, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14576 value5 value1 value2 = (output14576, value6896, value1) := by
  rw [input14576_def, output14576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11176]
  try dsimp only
  rw [child14575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11176_skip, output14575_skip]
  kernel_rfl

theorem node14577_cond_eq
    (child11173 : Flapjack.WordAlloc.removeDeadStructural input11173 value5586 value1 value2 = (output11173, value5, value1))
    (child14576 : Flapjack.WordAlloc.removeDeadStructural input14576 value5 value1 value2 = (output14576, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14577 value5586 value1 value2 = (output14577, value6896, value1) := by
  rw [input14577_def, output14577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11173]
  try dsimp only
  rw [child14576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11173_skip, output14576_skip]
  kernel_rfl

theorem node14578_cond_eq
    (child11164 : Flapjack.WordAlloc.removeDeadStructural input11164 value5586 value1 value2 = (output11164, value5586, value1))
    (child14577 : Flapjack.WordAlloc.removeDeadStructural input14577 value5586 value1 value2 = (output14577, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14578 value5586 value1 value2 = (output14578, value6896, value1) := by
  rw [input14578_def, output14578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11164]
  try dsimp only
  rw [child14577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11164_skip, output14577_skip]
  kernel_rfl

theorem node14579_cond_eq
    (child11163 : Flapjack.WordAlloc.removeDeadStructural input11163 value5585 value1 value2 = (output11163, value5586, value1))
    (child14578 : Flapjack.WordAlloc.removeDeadStructural input14578 value5586 value1 value2 = (output14578, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14579 value5585 value1 value2 = (output14579, value6896, value1) := by
  rw [input14579_def, output14579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11163]
  try dsimp only
  rw [child14578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11163_skip, output14578_skip]
  kernel_rfl

theorem node14580_cond_eq
    (child11162 : Flapjack.WordAlloc.removeDeadStructural input11162 value5 value1 value2 = (output11162, value5585, value1))
    (child14579 : Flapjack.WordAlloc.removeDeadStructural input14579 value5585 value1 value2 = (output14579, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14580 value5 value1 value2 = (output14580, value6896, value1) := by
  rw [input14580_def, output14580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11162]
  try dsimp only
  rw [child14579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11162_skip, output14579_skip]
  kernel_rfl

theorem node14581_cond_eq
    (child11159 : Flapjack.WordAlloc.removeDeadStructural input11159 value5579 value1 value2 = (output11159, value5, value1))
    (child14580 : Flapjack.WordAlloc.removeDeadStructural input14580 value5 value1 value2 = (output14580, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14581 value5579 value1 value2 = (output14581, value6896, value1) := by
  rw [input14581_def, output14581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11159]
  try dsimp only
  rw [child14580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11159_skip, output14580_skip]
  kernel_rfl

theorem node14582_cond_eq
    (child11150 : Flapjack.WordAlloc.removeDeadStructural input11150 value5579 value1 value2 = (output11150, value5579, value1))
    (child14581 : Flapjack.WordAlloc.removeDeadStructural input14581 value5579 value1 value2 = (output14581, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14582 value5579 value1 value2 = (output14582, value6896, value1) := by
  rw [input14582_def, output14582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11150]
  try dsimp only
  rw [child14581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11150_skip, output14581_skip]
  kernel_rfl

theorem node14583_cond_eq
    (child11149 : Flapjack.WordAlloc.removeDeadStructural input11149 value5578 value1 value2 = (output11149, value5579, value1))
    (child14582 : Flapjack.WordAlloc.removeDeadStructural input14582 value5579 value1 value2 = (output14582, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14583 value5578 value1 value2 = (output14583, value6896, value1) := by
  rw [input14583_def, output14583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11149]
  try dsimp only
  rw [child14582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11149_skip, output14582_skip]
  kernel_rfl

theorem node14584_cond_eq
    (child11148 : Flapjack.WordAlloc.removeDeadStructural input11148 value5 value1 value2 = (output11148, value5578, value1))
    (child14583 : Flapjack.WordAlloc.removeDeadStructural input14583 value5578 value1 value2 = (output14583, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14584 value5 value1 value2 = (output14584, value6896, value1) := by
  rw [input14584_def, output14584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11148]
  try dsimp only
  rw [child14583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11148_skip, output14583_skip]
  kernel_rfl

theorem node14585_cond_eq
    (child11145 : Flapjack.WordAlloc.removeDeadStructural input11145 value5572 value1 value2 = (output11145, value5, value1))
    (child14584 : Flapjack.WordAlloc.removeDeadStructural input14584 value5 value1 value2 = (output14584, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14585 value5572 value1 value2 = (output14585, value6896, value1) := by
  rw [input14585_def, output14585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11145]
  try dsimp only
  rw [child14584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11145_skip, output14584_skip]
  kernel_rfl

theorem node14586_cond_eq
    (child11136 : Flapjack.WordAlloc.removeDeadStructural input11136 value5572 value1 value2 = (output11136, value5572, value1))
    (child14585 : Flapjack.WordAlloc.removeDeadStructural input14585 value5572 value1 value2 = (output14585, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14586 value5572 value1 value2 = (output14586, value6896, value1) := by
  rw [input14586_def, output14586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11136]
  try dsimp only
  rw [child14585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11136_skip, output14585_skip]
  kernel_rfl

theorem node14587_cond_eq
    (child11135 : Flapjack.WordAlloc.removeDeadStructural input11135 value5571 value1 value2 = (output11135, value5572, value1))
    (child14586 : Flapjack.WordAlloc.removeDeadStructural input14586 value5572 value1 value2 = (output14586, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14587 value5571 value1 value2 = (output14587, value6896, value1) := by
  rw [input14587_def, output14587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11135]
  try dsimp only
  rw [child14586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11135_skip, output14586_skip]
  kernel_rfl

theorem node14588_cond_eq
    (child11134 : Flapjack.WordAlloc.removeDeadStructural input11134 value5 value1 value2 = (output11134, value5571, value1))
    (child14587 : Flapjack.WordAlloc.removeDeadStructural input14587 value5571 value1 value2 = (output14587, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14588 value5 value1 value2 = (output14588, value6896, value1) := by
  rw [input14588_def, output14588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11134]
  try dsimp only
  rw [child14587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11134_skip, output14587_skip]
  kernel_rfl

theorem node14589_cond_eq
    (child11131 : Flapjack.WordAlloc.removeDeadStructural input11131 value5565 value1 value2 = (output11131, value5, value1))
    (child14588 : Flapjack.WordAlloc.removeDeadStructural input14588 value5 value1 value2 = (output14588, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14589 value5565 value1 value2 = (output14589, value6896, value1) := by
  rw [input14589_def, output14589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11131]
  try dsimp only
  rw [child14588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11131_skip, output14588_skip]
  kernel_rfl

theorem node14590_cond_eq
    (child11122 : Flapjack.WordAlloc.removeDeadStructural input11122 value5565 value1 value2 = (output11122, value5565, value1))
    (child14589 : Flapjack.WordAlloc.removeDeadStructural input14589 value5565 value1 value2 = (output14589, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14590 value5565 value1 value2 = (output14590, value6896, value1) := by
  rw [input14590_def, output14590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11122]
  try dsimp only
  rw [child14589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11122_skip, output14589_skip]
  kernel_rfl

theorem node14591_cond_eq
    (child11121 : Flapjack.WordAlloc.removeDeadStructural input11121 value5564 value1 value2 = (output11121, value5565, value1))
    (child14590 : Flapjack.WordAlloc.removeDeadStructural input14590 value5565 value1 value2 = (output14590, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input14591 value5564 value1 value2 = (output14591, value6896, value1) := by
  rw [input14591_def, output14591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11121]
  try dsimp only
  rw [child14590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11121_skip, output14590_skip]
  kernel_rfl

#print axioms node14591_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
