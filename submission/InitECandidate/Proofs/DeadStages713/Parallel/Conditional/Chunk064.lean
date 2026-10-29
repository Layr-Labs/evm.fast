import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk064
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node16384_cond_eq
    (child4086 : Flapjack.WordAlloc.removeDeadStructural input4086 value5 value1 value2 = (output4086, value2047, value1))
    (child16383 : Flapjack.WordAlloc.removeDeadStructural input16383 value2047 value1 value2 = (output16383, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16384 value5 value1 value2 = (output16384, value6896, value1) := by
  rw [input16384_def, output16384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4086]
  try dsimp only
  rw [child16383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4086_skip, output16383_skip]
  kernel_rfl

theorem node16385_cond_eq
    (child4083 : Flapjack.WordAlloc.removeDeadStructural input4083 value2040 value1 value2 = (output4083, value5, value1))
    (child16384 : Flapjack.WordAlloc.removeDeadStructural input16384 value5 value1 value2 = (output16384, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16385 value2040 value1 value2 = (output16385, value6896, value1) := by
  rw [input16385_def, output16385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4083]
  try dsimp only
  rw [child16384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4083_skip, output16384_skip]
  kernel_rfl

theorem node16386_cond_eq
    (child4072 : Flapjack.WordAlloc.removeDeadStructural input4072 value2040 value1 value2 = (output4072, value2040, value1))
    (child16385 : Flapjack.WordAlloc.removeDeadStructural input16385 value2040 value1 value2 = (output16385, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16386 value2040 value1 value2 = (output16386, value6896, value1) := by
  rw [input16386_def, output16386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4072]
  try dsimp only
  rw [child16385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4072_skip, output16385_skip]
  kernel_rfl

theorem node16387_cond_eq
    (child4071 : Flapjack.WordAlloc.removeDeadStructural input4071 value2039 value1 value2 = (output4071, value2040, value1))
    (child16386 : Flapjack.WordAlloc.removeDeadStructural input16386 value2040 value1 value2 = (output16386, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16387 value2039 value1 value2 = (output16387, value6896, value1) := by
  rw [input16387_def, output16387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4071]
  try dsimp only
  rw [child16386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4071_skip, output16386_skip]
  kernel_rfl

theorem node16388_cond_eq
    (child4070 : Flapjack.WordAlloc.removeDeadStructural input4070 value5 value1 value2 = (output4070, value2039, value1))
    (child16387 : Flapjack.WordAlloc.removeDeadStructural input16387 value2039 value1 value2 = (output16387, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16388 value5 value1 value2 = (output16388, value6896, value1) := by
  rw [input16388_def, output16388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4070]
  try dsimp only
  rw [child16387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4070_skip, output16387_skip]
  kernel_rfl

theorem node16389_cond_eq
    (child4067 : Flapjack.WordAlloc.removeDeadStructural input4067 value2032 value1 value2 = (output4067, value5, value1))
    (child16388 : Flapjack.WordAlloc.removeDeadStructural input16388 value5 value1 value2 = (output16388, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16389 value2032 value1 value2 = (output16389, value6896, value1) := by
  rw [input16389_def, output16389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4067]
  try dsimp only
  rw [child16388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4067_skip, output16388_skip]
  kernel_rfl

theorem node16390_cond_eq
    (child4056 : Flapjack.WordAlloc.removeDeadStructural input4056 value2032 value1 value2 = (output4056, value2032, value1))
    (child16389 : Flapjack.WordAlloc.removeDeadStructural input16389 value2032 value1 value2 = (output16389, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16390 value2032 value1 value2 = (output16390, value6896, value1) := by
  rw [input16390_def, output16390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4056]
  try dsimp only
  rw [child16389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4056_skip, output16389_skip]
  kernel_rfl

theorem node16391_cond_eq
    (child4055 : Flapjack.WordAlloc.removeDeadStructural input4055 value2031 value1 value2 = (output4055, value2032, value1))
    (child16390 : Flapjack.WordAlloc.removeDeadStructural input16390 value2032 value1 value2 = (output16390, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16391 value2031 value1 value2 = (output16391, value6896, value1) := by
  rw [input16391_def, output16391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4055]
  try dsimp only
  rw [child16390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4055_skip, output16390_skip]
  kernel_rfl

theorem node16392_cond_eq
    (child4054 : Flapjack.WordAlloc.removeDeadStructural input4054 value5 value1 value2 = (output4054, value2031, value1))
    (child16391 : Flapjack.WordAlloc.removeDeadStructural input16391 value2031 value1 value2 = (output16391, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16392 value5 value1 value2 = (output16392, value6896, value1) := by
  rw [input16392_def, output16392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4054]
  try dsimp only
  rw [child16391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4054_skip, output16391_skip]
  kernel_rfl

theorem node16393_cond_eq
    (child4051 : Flapjack.WordAlloc.removeDeadStructural input4051 value2024 value1 value2 = (output4051, value5, value1))
    (child16392 : Flapjack.WordAlloc.removeDeadStructural input16392 value5 value1 value2 = (output16392, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16393 value2024 value1 value2 = (output16393, value6896, value1) := by
  rw [input16393_def, output16393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4051]
  try dsimp only
  rw [child16392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4051_skip, output16392_skip]
  kernel_rfl

theorem node16394_cond_eq
    (child4040 : Flapjack.WordAlloc.removeDeadStructural input4040 value2024 value1 value2 = (output4040, value2024, value1))
    (child16393 : Flapjack.WordAlloc.removeDeadStructural input16393 value2024 value1 value2 = (output16393, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16394 value2024 value1 value2 = (output16394, value6896, value1) := by
  rw [input16394_def, output16394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4040]
  try dsimp only
  rw [child16393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4040_skip, output16393_skip]
  kernel_rfl

theorem node16395_cond_eq
    (child4039 : Flapjack.WordAlloc.removeDeadStructural input4039 value2023 value1 value2 = (output4039, value2024, value1))
    (child16394 : Flapjack.WordAlloc.removeDeadStructural input16394 value2024 value1 value2 = (output16394, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16395 value2023 value1 value2 = (output16395, value6896, value1) := by
  rw [input16395_def, output16395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4039]
  try dsimp only
  rw [child16394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4039_skip, output16394_skip]
  kernel_rfl

theorem node16396_cond_eq
    (child4038 : Flapjack.WordAlloc.removeDeadStructural input4038 value5 value1 value2 = (output4038, value2023, value1))
    (child16395 : Flapjack.WordAlloc.removeDeadStructural input16395 value2023 value1 value2 = (output16395, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16396 value5 value1 value2 = (output16396, value6896, value1) := by
  rw [input16396_def, output16396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4038]
  try dsimp only
  rw [child16395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4038_skip, output16395_skip]
  kernel_rfl

theorem node16397_cond_eq
    (child4035 : Flapjack.WordAlloc.removeDeadStructural input4035 value2016 value1 value2 = (output4035, value5, value1))
    (child16396 : Flapjack.WordAlloc.removeDeadStructural input16396 value5 value1 value2 = (output16396, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16397 value2016 value1 value2 = (output16397, value6896, value1) := by
  rw [input16397_def, output16397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4035]
  try dsimp only
  rw [child16396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4035_skip, output16396_skip]
  kernel_rfl

theorem node16398_cond_eq
    (child4024 : Flapjack.WordAlloc.removeDeadStructural input4024 value2016 value1 value2 = (output4024, value2016, value1))
    (child16397 : Flapjack.WordAlloc.removeDeadStructural input16397 value2016 value1 value2 = (output16397, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16398 value2016 value1 value2 = (output16398, value6896, value1) := by
  rw [input16398_def, output16398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4024]
  try dsimp only
  rw [child16397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4024_skip, output16397_skip]
  kernel_rfl

theorem node16399_cond_eq
    (child4023 : Flapjack.WordAlloc.removeDeadStructural input4023 value2015 value1 value2 = (output4023, value2016, value1))
    (child16398 : Flapjack.WordAlloc.removeDeadStructural input16398 value2016 value1 value2 = (output16398, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16399 value2015 value1 value2 = (output16399, value6896, value1) := by
  rw [input16399_def, output16399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4023]
  try dsimp only
  rw [child16398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4023_skip, output16398_skip]
  kernel_rfl

theorem node16400_cond_eq
    (child4022 : Flapjack.WordAlloc.removeDeadStructural input4022 value5 value1 value2 = (output4022, value2015, value1))
    (child16399 : Flapjack.WordAlloc.removeDeadStructural input16399 value2015 value1 value2 = (output16399, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16400 value5 value1 value2 = (output16400, value6896, value1) := by
  rw [input16400_def, output16400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4022]
  try dsimp only
  rw [child16399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4022_skip, output16399_skip]
  kernel_rfl

theorem node16401_cond_eq
    (child4019 : Flapjack.WordAlloc.removeDeadStructural input4019 value2008 value1 value2 = (output4019, value5, value1))
    (child16400 : Flapjack.WordAlloc.removeDeadStructural input16400 value5 value1 value2 = (output16400, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16401 value2008 value1 value2 = (output16401, value6896, value1) := by
  rw [input16401_def, output16401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4019]
  try dsimp only
  rw [child16400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4019_skip, output16400_skip]
  kernel_rfl

theorem node16402_cond_eq
    (child4008 : Flapjack.WordAlloc.removeDeadStructural input4008 value2008 value1 value2 = (output4008, value2008, value1))
    (child16401 : Flapjack.WordAlloc.removeDeadStructural input16401 value2008 value1 value2 = (output16401, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16402 value2008 value1 value2 = (output16402, value6896, value1) := by
  rw [input16402_def, output16402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4008]
  try dsimp only
  rw [child16401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4008_skip, output16401_skip]
  kernel_rfl

theorem node16403_cond_eq
    (child4007 : Flapjack.WordAlloc.removeDeadStructural input4007 value2007 value1 value2 = (output4007, value2008, value1))
    (child16402 : Flapjack.WordAlloc.removeDeadStructural input16402 value2008 value1 value2 = (output16402, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16403 value2007 value1 value2 = (output16403, value6896, value1) := by
  rw [input16403_def, output16403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4007]
  try dsimp only
  rw [child16402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4007_skip, output16402_skip]
  kernel_rfl

theorem node16404_cond_eq
    (child4006 : Flapjack.WordAlloc.removeDeadStructural input4006 value5 value1 value2 = (output4006, value2007, value1))
    (child16403 : Flapjack.WordAlloc.removeDeadStructural input16403 value2007 value1 value2 = (output16403, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16404 value5 value1 value2 = (output16404, value6896, value1) := by
  rw [input16404_def, output16404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4006]
  try dsimp only
  rw [child16403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4006_skip, output16403_skip]
  kernel_rfl

theorem node16405_cond_eq
    (child4003 : Flapjack.WordAlloc.removeDeadStructural input4003 value2000 value1 value2 = (output4003, value5, value1))
    (child16404 : Flapjack.WordAlloc.removeDeadStructural input16404 value5 value1 value2 = (output16404, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16405 value2000 value1 value2 = (output16405, value6896, value1) := by
  rw [input16405_def, output16405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4003]
  try dsimp only
  rw [child16404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4003_skip, output16404_skip]
  kernel_rfl

theorem node16406_cond_eq
    (child3992 : Flapjack.WordAlloc.removeDeadStructural input3992 value2000 value1 value2 = (output3992, value2000, value1))
    (child16405 : Flapjack.WordAlloc.removeDeadStructural input16405 value2000 value1 value2 = (output16405, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16406 value2000 value1 value2 = (output16406, value6896, value1) := by
  rw [input16406_def, output16406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3992]
  try dsimp only
  rw [child16405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3992_skip, output16405_skip]
  kernel_rfl

theorem node16407_cond_eq
    (child3991 : Flapjack.WordAlloc.removeDeadStructural input3991 value1999 value1 value2 = (output3991, value2000, value1))
    (child16406 : Flapjack.WordAlloc.removeDeadStructural input16406 value2000 value1 value2 = (output16406, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16407 value1999 value1 value2 = (output16407, value6896, value1) := by
  rw [input16407_def, output16407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3991]
  try dsimp only
  rw [child16406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3991_skip, output16406_skip]
  kernel_rfl

theorem node16408_cond_eq
    (child3990 : Flapjack.WordAlloc.removeDeadStructural input3990 value5 value1 value2 = (output3990, value1999, value1))
    (child16407 : Flapjack.WordAlloc.removeDeadStructural input16407 value1999 value1 value2 = (output16407, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16408 value5 value1 value2 = (output16408, value6896, value1) := by
  rw [input16408_def, output16408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3990]
  try dsimp only
  rw [child16407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3990_skip, output16407_skip]
  kernel_rfl

theorem node16409_cond_eq
    (child3987 : Flapjack.WordAlloc.removeDeadStructural input3987 value1992 value1 value2 = (output3987, value5, value1))
    (child16408 : Flapjack.WordAlloc.removeDeadStructural input16408 value5 value1 value2 = (output16408, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16409 value1992 value1 value2 = (output16409, value6896, value1) := by
  rw [input16409_def, output16409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3987]
  try dsimp only
  rw [child16408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3987_skip, output16408_skip]
  kernel_rfl

theorem node16410_cond_eq
    (child3976 : Flapjack.WordAlloc.removeDeadStructural input3976 value1992 value1 value2 = (output3976, value1992, value1))
    (child16409 : Flapjack.WordAlloc.removeDeadStructural input16409 value1992 value1 value2 = (output16409, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16410 value1992 value1 value2 = (output16410, value6896, value1) := by
  rw [input16410_def, output16410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3976]
  try dsimp only
  rw [child16409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3976_skip, output16409_skip]
  kernel_rfl

theorem node16411_cond_eq
    (child3975 : Flapjack.WordAlloc.removeDeadStructural input3975 value1991 value1 value2 = (output3975, value1992, value1))
    (child16410 : Flapjack.WordAlloc.removeDeadStructural input16410 value1992 value1 value2 = (output16410, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16411 value1991 value1 value2 = (output16411, value6896, value1) := by
  rw [input16411_def, output16411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3975]
  try dsimp only
  rw [child16410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3975_skip, output16410_skip]
  kernel_rfl

theorem node16412_cond_eq
    (child3974 : Flapjack.WordAlloc.removeDeadStructural input3974 value5 value1 value2 = (output3974, value1991, value1))
    (child16411 : Flapjack.WordAlloc.removeDeadStructural input16411 value1991 value1 value2 = (output16411, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16412 value5 value1 value2 = (output16412, value6896, value1) := by
  rw [input16412_def, output16412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3974]
  try dsimp only
  rw [child16411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3974_skip, output16411_skip]
  kernel_rfl

theorem node16413_cond_eq
    (child3971 : Flapjack.WordAlloc.removeDeadStructural input3971 value1984 value1 value2 = (output3971, value5, value1))
    (child16412 : Flapjack.WordAlloc.removeDeadStructural input16412 value5 value1 value2 = (output16412, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16413 value1984 value1 value2 = (output16413, value6896, value1) := by
  rw [input16413_def, output16413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3971]
  try dsimp only
  rw [child16412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3971_skip, output16412_skip]
  kernel_rfl

theorem node16414_cond_eq
    (child3960 : Flapjack.WordAlloc.removeDeadStructural input3960 value1984 value1 value2 = (output3960, value1984, value1))
    (child16413 : Flapjack.WordAlloc.removeDeadStructural input16413 value1984 value1 value2 = (output16413, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16414 value1984 value1 value2 = (output16414, value6896, value1) := by
  rw [input16414_def, output16414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3960]
  try dsimp only
  rw [child16413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3960_skip, output16413_skip]
  kernel_rfl

theorem node16415_cond_eq
    (child3959 : Flapjack.WordAlloc.removeDeadStructural input3959 value1983 value1 value2 = (output3959, value1984, value1))
    (child16414 : Flapjack.WordAlloc.removeDeadStructural input16414 value1984 value1 value2 = (output16414, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16415 value1983 value1 value2 = (output16415, value6896, value1) := by
  rw [input16415_def, output16415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3959]
  try dsimp only
  rw [child16414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3959_skip, output16414_skip]
  kernel_rfl

theorem node16416_cond_eq
    (child3958 : Flapjack.WordAlloc.removeDeadStructural input3958 value5 value1 value2 = (output3958, value1983, value1))
    (child16415 : Flapjack.WordAlloc.removeDeadStructural input16415 value1983 value1 value2 = (output16415, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16416 value5 value1 value2 = (output16416, value6896, value1) := by
  rw [input16416_def, output16416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3958]
  try dsimp only
  rw [child16415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3958_skip, output16415_skip]
  kernel_rfl

theorem node16417_cond_eq
    (child3955 : Flapjack.WordAlloc.removeDeadStructural input3955 value1976 value1 value2 = (output3955, value5, value1))
    (child16416 : Flapjack.WordAlloc.removeDeadStructural input16416 value5 value1 value2 = (output16416, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16417 value1976 value1 value2 = (output16417, value6896, value1) := by
  rw [input16417_def, output16417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3955]
  try dsimp only
  rw [child16416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3955_skip, output16416_skip]
  kernel_rfl

theorem node16418_cond_eq
    (child3944 : Flapjack.WordAlloc.removeDeadStructural input3944 value1976 value1 value2 = (output3944, value1976, value1))
    (child16417 : Flapjack.WordAlloc.removeDeadStructural input16417 value1976 value1 value2 = (output16417, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16418 value1976 value1 value2 = (output16418, value6896, value1) := by
  rw [input16418_def, output16418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3944]
  try dsimp only
  rw [child16417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3944_skip, output16417_skip]
  kernel_rfl

theorem node16419_cond_eq
    (child3943 : Flapjack.WordAlloc.removeDeadStructural input3943 value1975 value1 value2 = (output3943, value1976, value1))
    (child16418 : Flapjack.WordAlloc.removeDeadStructural input16418 value1976 value1 value2 = (output16418, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16419 value1975 value1 value2 = (output16419, value6896, value1) := by
  rw [input16419_def, output16419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3943]
  try dsimp only
  rw [child16418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3943_skip, output16418_skip]
  kernel_rfl

theorem node16420_cond_eq
    (child3942 : Flapjack.WordAlloc.removeDeadStructural input3942 value5 value1 value2 = (output3942, value1975, value1))
    (child16419 : Flapjack.WordAlloc.removeDeadStructural input16419 value1975 value1 value2 = (output16419, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16420 value5 value1 value2 = (output16420, value6896, value1) := by
  rw [input16420_def, output16420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3942]
  try dsimp only
  rw [child16419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3942_skip, output16419_skip]
  kernel_rfl

theorem node16421_cond_eq
    (child3939 : Flapjack.WordAlloc.removeDeadStructural input3939 value1968 value1 value2 = (output3939, value5, value1))
    (child16420 : Flapjack.WordAlloc.removeDeadStructural input16420 value5 value1 value2 = (output16420, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16421 value1968 value1 value2 = (output16421, value6896, value1) := by
  rw [input16421_def, output16421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3939]
  try dsimp only
  rw [child16420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3939_skip, output16420_skip]
  kernel_rfl

theorem node16422_cond_eq
    (child3928 : Flapjack.WordAlloc.removeDeadStructural input3928 value1968 value1 value2 = (output3928, value1968, value1))
    (child16421 : Flapjack.WordAlloc.removeDeadStructural input16421 value1968 value1 value2 = (output16421, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16422 value1968 value1 value2 = (output16422, value6896, value1) := by
  rw [input16422_def, output16422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3928]
  try dsimp only
  rw [child16421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3928_skip, output16421_skip]
  kernel_rfl

theorem node16423_cond_eq
    (child3927 : Flapjack.WordAlloc.removeDeadStructural input3927 value1967 value1 value2 = (output3927, value1968, value1))
    (child16422 : Flapjack.WordAlloc.removeDeadStructural input16422 value1968 value1 value2 = (output16422, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16423 value1967 value1 value2 = (output16423, value6896, value1) := by
  rw [input16423_def, output16423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3927]
  try dsimp only
  rw [child16422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3927_skip, output16422_skip]
  kernel_rfl

theorem node16424_cond_eq
    (child3926 : Flapjack.WordAlloc.removeDeadStructural input3926 value5 value1 value2 = (output3926, value1967, value1))
    (child16423 : Flapjack.WordAlloc.removeDeadStructural input16423 value1967 value1 value2 = (output16423, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16424 value5 value1 value2 = (output16424, value6896, value1) := by
  rw [input16424_def, output16424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3926]
  try dsimp only
  rw [child16423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3926_skip, output16423_skip]
  kernel_rfl

theorem node16425_cond_eq
    (child3923 : Flapjack.WordAlloc.removeDeadStructural input3923 value1960 value1 value2 = (output3923, value5, value1))
    (child16424 : Flapjack.WordAlloc.removeDeadStructural input16424 value5 value1 value2 = (output16424, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16425 value1960 value1 value2 = (output16425, value6896, value1) := by
  rw [input16425_def, output16425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3923]
  try dsimp only
  rw [child16424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3923_skip, output16424_skip]
  kernel_rfl

theorem node16426_cond_eq
    (child3912 : Flapjack.WordAlloc.removeDeadStructural input3912 value1960 value1 value2 = (output3912, value1960, value1))
    (child16425 : Flapjack.WordAlloc.removeDeadStructural input16425 value1960 value1 value2 = (output16425, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16426 value1960 value1 value2 = (output16426, value6896, value1) := by
  rw [input16426_def, output16426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3912]
  try dsimp only
  rw [child16425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3912_skip, output16425_skip]
  kernel_rfl

theorem node16427_cond_eq
    (child3911 : Flapjack.WordAlloc.removeDeadStructural input3911 value1959 value1 value2 = (output3911, value1960, value1))
    (child16426 : Flapjack.WordAlloc.removeDeadStructural input16426 value1960 value1 value2 = (output16426, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16427 value1959 value1 value2 = (output16427, value6896, value1) := by
  rw [input16427_def, output16427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3911]
  try dsimp only
  rw [child16426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3911_skip, output16426_skip]
  kernel_rfl

theorem node16428_cond_eq
    (child3910 : Flapjack.WordAlloc.removeDeadStructural input3910 value5 value1 value2 = (output3910, value1959, value1))
    (child16427 : Flapjack.WordAlloc.removeDeadStructural input16427 value1959 value1 value2 = (output16427, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16428 value5 value1 value2 = (output16428, value6896, value1) := by
  rw [input16428_def, output16428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3910]
  try dsimp only
  rw [child16427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3910_skip, output16427_skip]
  kernel_rfl

theorem node16429_cond_eq
    (child3907 : Flapjack.WordAlloc.removeDeadStructural input3907 value1952 value1 value2 = (output3907, value5, value1))
    (child16428 : Flapjack.WordAlloc.removeDeadStructural input16428 value5 value1 value2 = (output16428, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16429 value1952 value1 value2 = (output16429, value6896, value1) := by
  rw [input16429_def, output16429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3907]
  try dsimp only
  rw [child16428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3907_skip, output16428_skip]
  kernel_rfl

theorem node16430_cond_eq
    (child3896 : Flapjack.WordAlloc.removeDeadStructural input3896 value1952 value1 value2 = (output3896, value1952, value1))
    (child16429 : Flapjack.WordAlloc.removeDeadStructural input16429 value1952 value1 value2 = (output16429, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16430 value1952 value1 value2 = (output16430, value6896, value1) := by
  rw [input16430_def, output16430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3896]
  try dsimp only
  rw [child16429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3896_skip, output16429_skip]
  kernel_rfl

theorem node16431_cond_eq
    (child3895 : Flapjack.WordAlloc.removeDeadStructural input3895 value1951 value1 value2 = (output3895, value1952, value1))
    (child16430 : Flapjack.WordAlloc.removeDeadStructural input16430 value1952 value1 value2 = (output16430, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16431 value1951 value1 value2 = (output16431, value6896, value1) := by
  rw [input16431_def, output16431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3895]
  try dsimp only
  rw [child16430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3895_skip, output16430_skip]
  kernel_rfl

theorem node16432_cond_eq
    (child3894 : Flapjack.WordAlloc.removeDeadStructural input3894 value5 value1 value2 = (output3894, value1951, value1))
    (child16431 : Flapjack.WordAlloc.removeDeadStructural input16431 value1951 value1 value2 = (output16431, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16432 value5 value1 value2 = (output16432, value6896, value1) := by
  rw [input16432_def, output16432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3894]
  try dsimp only
  rw [child16431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3894_skip, output16431_skip]
  kernel_rfl

theorem node16433_cond_eq
    (child3891 : Flapjack.WordAlloc.removeDeadStructural input3891 value1944 value1 value2 = (output3891, value5, value1))
    (child16432 : Flapjack.WordAlloc.removeDeadStructural input16432 value5 value1 value2 = (output16432, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16433 value1944 value1 value2 = (output16433, value6896, value1) := by
  rw [input16433_def, output16433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3891]
  try dsimp only
  rw [child16432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3891_skip, output16432_skip]
  kernel_rfl

theorem node16434_cond_eq
    (child3880 : Flapjack.WordAlloc.removeDeadStructural input3880 value1944 value1 value2 = (output3880, value1944, value1))
    (child16433 : Flapjack.WordAlloc.removeDeadStructural input16433 value1944 value1 value2 = (output16433, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16434 value1944 value1 value2 = (output16434, value6896, value1) := by
  rw [input16434_def, output16434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3880]
  try dsimp only
  rw [child16433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3880_skip, output16433_skip]
  kernel_rfl

theorem node16435_cond_eq
    (child3879 : Flapjack.WordAlloc.removeDeadStructural input3879 value1943 value1 value2 = (output3879, value1944, value1))
    (child16434 : Flapjack.WordAlloc.removeDeadStructural input16434 value1944 value1 value2 = (output16434, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16435 value1943 value1 value2 = (output16435, value6896, value1) := by
  rw [input16435_def, output16435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3879]
  try dsimp only
  rw [child16434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3879_skip, output16434_skip]
  kernel_rfl

theorem node16436_cond_eq
    (child3878 : Flapjack.WordAlloc.removeDeadStructural input3878 value5 value1 value2 = (output3878, value1943, value1))
    (child16435 : Flapjack.WordAlloc.removeDeadStructural input16435 value1943 value1 value2 = (output16435, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16436 value5 value1 value2 = (output16436, value6896, value1) := by
  rw [input16436_def, output16436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3878]
  try dsimp only
  rw [child16435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3878_skip, output16435_skip]
  kernel_rfl

theorem node16437_cond_eq
    (child3875 : Flapjack.WordAlloc.removeDeadStructural input3875 value1936 value1 value2 = (output3875, value5, value1))
    (child16436 : Flapjack.WordAlloc.removeDeadStructural input16436 value5 value1 value2 = (output16436, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16437 value1936 value1 value2 = (output16437, value6896, value1) := by
  rw [input16437_def, output16437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3875]
  try dsimp only
  rw [child16436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3875_skip, output16436_skip]
  kernel_rfl

theorem node16438_cond_eq
    (child3864 : Flapjack.WordAlloc.removeDeadStructural input3864 value1936 value1 value2 = (output3864, value1936, value1))
    (child16437 : Flapjack.WordAlloc.removeDeadStructural input16437 value1936 value1 value2 = (output16437, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16438 value1936 value1 value2 = (output16438, value6896, value1) := by
  rw [input16438_def, output16438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3864]
  try dsimp only
  rw [child16437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3864_skip, output16437_skip]
  kernel_rfl

theorem node16439_cond_eq
    (child3863 : Flapjack.WordAlloc.removeDeadStructural input3863 value1935 value1 value2 = (output3863, value1936, value1))
    (child16438 : Flapjack.WordAlloc.removeDeadStructural input16438 value1936 value1 value2 = (output16438, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16439 value1935 value1 value2 = (output16439, value6896, value1) := by
  rw [input16439_def, output16439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3863]
  try dsimp only
  rw [child16438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3863_skip, output16438_skip]
  kernel_rfl

theorem node16440_cond_eq
    (child3862 : Flapjack.WordAlloc.removeDeadStructural input3862 value5 value1 value2 = (output3862, value1935, value1))
    (child16439 : Flapjack.WordAlloc.removeDeadStructural input16439 value1935 value1 value2 = (output16439, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16440 value5 value1 value2 = (output16440, value6896, value1) := by
  rw [input16440_def, output16440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3862]
  try dsimp only
  rw [child16439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3862_skip, output16439_skip]
  kernel_rfl

theorem node16441_cond_eq
    (child3859 : Flapjack.WordAlloc.removeDeadStructural input3859 value1928 value1 value2 = (output3859, value5, value1))
    (child16440 : Flapjack.WordAlloc.removeDeadStructural input16440 value5 value1 value2 = (output16440, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16441 value1928 value1 value2 = (output16441, value6896, value1) := by
  rw [input16441_def, output16441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3859]
  try dsimp only
  rw [child16440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3859_skip, output16440_skip]
  kernel_rfl

theorem node16442_cond_eq
    (child3848 : Flapjack.WordAlloc.removeDeadStructural input3848 value1928 value1 value2 = (output3848, value1928, value1))
    (child16441 : Flapjack.WordAlloc.removeDeadStructural input16441 value1928 value1 value2 = (output16441, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16442 value1928 value1 value2 = (output16442, value6896, value1) := by
  rw [input16442_def, output16442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3848]
  try dsimp only
  rw [child16441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3848_skip, output16441_skip]
  kernel_rfl

theorem node16443_cond_eq
    (child3847 : Flapjack.WordAlloc.removeDeadStructural input3847 value1927 value1 value2 = (output3847, value1928, value1))
    (child16442 : Flapjack.WordAlloc.removeDeadStructural input16442 value1928 value1 value2 = (output16442, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16443 value1927 value1 value2 = (output16443, value6896, value1) := by
  rw [input16443_def, output16443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3847]
  try dsimp only
  rw [child16442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3847_skip, output16442_skip]
  kernel_rfl

theorem node16444_cond_eq
    (child3846 : Flapjack.WordAlloc.removeDeadStructural input3846 value5 value1 value2 = (output3846, value1927, value1))
    (child16443 : Flapjack.WordAlloc.removeDeadStructural input16443 value1927 value1 value2 = (output16443, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16444 value5 value1 value2 = (output16444, value6896, value1) := by
  rw [input16444_def, output16444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3846]
  try dsimp only
  rw [child16443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3846_skip, output16443_skip]
  kernel_rfl

theorem node16445_cond_eq
    (child3843 : Flapjack.WordAlloc.removeDeadStructural input3843 value1920 value1 value2 = (output3843, value5, value1))
    (child16444 : Flapjack.WordAlloc.removeDeadStructural input16444 value5 value1 value2 = (output16444, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16445 value1920 value1 value2 = (output16445, value6896, value1) := by
  rw [input16445_def, output16445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3843]
  try dsimp only
  rw [child16444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3843_skip, output16444_skip]
  kernel_rfl

theorem node16446_cond_eq
    (child3832 : Flapjack.WordAlloc.removeDeadStructural input3832 value1920 value1 value2 = (output3832, value1920, value1))
    (child16445 : Flapjack.WordAlloc.removeDeadStructural input16445 value1920 value1 value2 = (output16445, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16446 value1920 value1 value2 = (output16446, value6896, value1) := by
  rw [input16446_def, output16446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3832]
  try dsimp only
  rw [child16445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3832_skip, output16445_skip]
  kernel_rfl

theorem node16447_cond_eq
    (child3831 : Flapjack.WordAlloc.removeDeadStructural input3831 value1919 value1 value2 = (output3831, value1920, value1))
    (child16446 : Flapjack.WordAlloc.removeDeadStructural input16446 value1920 value1 value2 = (output16446, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16447 value1919 value1 value2 = (output16447, value6896, value1) := by
  rw [input16447_def, output16447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3831]
  try dsimp only
  rw [child16446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3831_skip, output16446_skip]
  kernel_rfl

theorem node16448_cond_eq
    (child3830 : Flapjack.WordAlloc.removeDeadStructural input3830 value5 value1 value2 = (output3830, value1919, value1))
    (child16447 : Flapjack.WordAlloc.removeDeadStructural input16447 value1919 value1 value2 = (output16447, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16448 value5 value1 value2 = (output16448, value6896, value1) := by
  rw [input16448_def, output16448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3830]
  try dsimp only
  rw [child16447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3830_skip, output16447_skip]
  kernel_rfl

theorem node16449_cond_eq
    (child3827 : Flapjack.WordAlloc.removeDeadStructural input3827 value1912 value1 value2 = (output3827, value5, value1))
    (child16448 : Flapjack.WordAlloc.removeDeadStructural input16448 value5 value1 value2 = (output16448, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16449 value1912 value1 value2 = (output16449, value6896, value1) := by
  rw [input16449_def, output16449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3827]
  try dsimp only
  rw [child16448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3827_skip, output16448_skip]
  kernel_rfl

theorem node16450_cond_eq
    (child3816 : Flapjack.WordAlloc.removeDeadStructural input3816 value1912 value1 value2 = (output3816, value1912, value1))
    (child16449 : Flapjack.WordAlloc.removeDeadStructural input16449 value1912 value1 value2 = (output16449, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16450 value1912 value1 value2 = (output16450, value6896, value1) := by
  rw [input16450_def, output16450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3816]
  try dsimp only
  rw [child16449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3816_skip, output16449_skip]
  kernel_rfl

theorem node16451_cond_eq
    (child3815 : Flapjack.WordAlloc.removeDeadStructural input3815 value1911 value1 value2 = (output3815, value1912, value1))
    (child16450 : Flapjack.WordAlloc.removeDeadStructural input16450 value1912 value1 value2 = (output16450, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16451 value1911 value1 value2 = (output16451, value6896, value1) := by
  rw [input16451_def, output16451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3815]
  try dsimp only
  rw [child16450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3815_skip, output16450_skip]
  kernel_rfl

theorem node16452_cond_eq
    (child3814 : Flapjack.WordAlloc.removeDeadStructural input3814 value5 value1 value2 = (output3814, value1911, value1))
    (child16451 : Flapjack.WordAlloc.removeDeadStructural input16451 value1911 value1 value2 = (output16451, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16452 value5 value1 value2 = (output16452, value6896, value1) := by
  rw [input16452_def, output16452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3814]
  try dsimp only
  rw [child16451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3814_skip, output16451_skip]
  kernel_rfl

theorem node16453_cond_eq
    (child3811 : Flapjack.WordAlloc.removeDeadStructural input3811 value1904 value1 value2 = (output3811, value5, value1))
    (child16452 : Flapjack.WordAlloc.removeDeadStructural input16452 value5 value1 value2 = (output16452, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16453 value1904 value1 value2 = (output16453, value6896, value1) := by
  rw [input16453_def, output16453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3811]
  try dsimp only
  rw [child16452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3811_skip, output16452_skip]
  kernel_rfl

theorem node16454_cond_eq
    (child3800 : Flapjack.WordAlloc.removeDeadStructural input3800 value1904 value1 value2 = (output3800, value1904, value1))
    (child16453 : Flapjack.WordAlloc.removeDeadStructural input16453 value1904 value1 value2 = (output16453, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16454 value1904 value1 value2 = (output16454, value6896, value1) := by
  rw [input16454_def, output16454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3800]
  try dsimp only
  rw [child16453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3800_skip, output16453_skip]
  kernel_rfl

theorem node16455_cond_eq
    (child3799 : Flapjack.WordAlloc.removeDeadStructural input3799 value1903 value1 value2 = (output3799, value1904, value1))
    (child16454 : Flapjack.WordAlloc.removeDeadStructural input16454 value1904 value1 value2 = (output16454, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16455 value1903 value1 value2 = (output16455, value6896, value1) := by
  rw [input16455_def, output16455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3799]
  try dsimp only
  rw [child16454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3799_skip, output16454_skip]
  kernel_rfl

theorem node16456_cond_eq
    (child3798 : Flapjack.WordAlloc.removeDeadStructural input3798 value5 value1 value2 = (output3798, value1903, value1))
    (child16455 : Flapjack.WordAlloc.removeDeadStructural input16455 value1903 value1 value2 = (output16455, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16456 value5 value1 value2 = (output16456, value6896, value1) := by
  rw [input16456_def, output16456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3798]
  try dsimp only
  rw [child16455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3798_skip, output16455_skip]
  kernel_rfl

theorem node16457_cond_eq
    (child3795 : Flapjack.WordAlloc.removeDeadStructural input3795 value1896 value1 value2 = (output3795, value5, value1))
    (child16456 : Flapjack.WordAlloc.removeDeadStructural input16456 value5 value1 value2 = (output16456, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16457 value1896 value1 value2 = (output16457, value6896, value1) := by
  rw [input16457_def, output16457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3795]
  try dsimp only
  rw [child16456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3795_skip, output16456_skip]
  kernel_rfl

theorem node16458_cond_eq
    (child3784 : Flapjack.WordAlloc.removeDeadStructural input3784 value1896 value1 value2 = (output3784, value1896, value1))
    (child16457 : Flapjack.WordAlloc.removeDeadStructural input16457 value1896 value1 value2 = (output16457, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16458 value1896 value1 value2 = (output16458, value6896, value1) := by
  rw [input16458_def, output16458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3784]
  try dsimp only
  rw [child16457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3784_skip, output16457_skip]
  kernel_rfl

theorem node16459_cond_eq
    (child3783 : Flapjack.WordAlloc.removeDeadStructural input3783 value1895 value1 value2 = (output3783, value1896, value1))
    (child16458 : Flapjack.WordAlloc.removeDeadStructural input16458 value1896 value1 value2 = (output16458, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16459 value1895 value1 value2 = (output16459, value6896, value1) := by
  rw [input16459_def, output16459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3783]
  try dsimp only
  rw [child16458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3783_skip, output16458_skip]
  kernel_rfl

theorem node16460_cond_eq
    (child3782 : Flapjack.WordAlloc.removeDeadStructural input3782 value5 value1 value2 = (output3782, value1895, value1))
    (child16459 : Flapjack.WordAlloc.removeDeadStructural input16459 value1895 value1 value2 = (output16459, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16460 value5 value1 value2 = (output16460, value6896, value1) := by
  rw [input16460_def, output16460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3782]
  try dsimp only
  rw [child16459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3782_skip, output16459_skip]
  kernel_rfl

theorem node16461_cond_eq
    (child3779 : Flapjack.WordAlloc.removeDeadStructural input3779 value1888 value1 value2 = (output3779, value5, value1))
    (child16460 : Flapjack.WordAlloc.removeDeadStructural input16460 value5 value1 value2 = (output16460, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16461 value1888 value1 value2 = (output16461, value6896, value1) := by
  rw [input16461_def, output16461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3779]
  try dsimp only
  rw [child16460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3779_skip, output16460_skip]
  kernel_rfl

theorem node16462_cond_eq
    (child3768 : Flapjack.WordAlloc.removeDeadStructural input3768 value1888 value1 value2 = (output3768, value1888, value1))
    (child16461 : Flapjack.WordAlloc.removeDeadStructural input16461 value1888 value1 value2 = (output16461, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16462 value1888 value1 value2 = (output16462, value6896, value1) := by
  rw [input16462_def, output16462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3768]
  try dsimp only
  rw [child16461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3768_skip, output16461_skip]
  kernel_rfl

theorem node16463_cond_eq
    (child3767 : Flapjack.WordAlloc.removeDeadStructural input3767 value1887 value1 value2 = (output3767, value1888, value1))
    (child16462 : Flapjack.WordAlloc.removeDeadStructural input16462 value1888 value1 value2 = (output16462, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16463 value1887 value1 value2 = (output16463, value6896, value1) := by
  rw [input16463_def, output16463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3767]
  try dsimp only
  rw [child16462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3767_skip, output16462_skip]
  kernel_rfl

theorem node16464_cond_eq
    (child3766 : Flapjack.WordAlloc.removeDeadStructural input3766 value5 value1 value2 = (output3766, value1887, value1))
    (child16463 : Flapjack.WordAlloc.removeDeadStructural input16463 value1887 value1 value2 = (output16463, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16464 value5 value1 value2 = (output16464, value6896, value1) := by
  rw [input16464_def, output16464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3766]
  try dsimp only
  rw [child16463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3766_skip, output16463_skip]
  kernel_rfl

theorem node16465_cond_eq
    (child3763 : Flapjack.WordAlloc.removeDeadStructural input3763 value1880 value1 value2 = (output3763, value5, value1))
    (child16464 : Flapjack.WordAlloc.removeDeadStructural input16464 value5 value1 value2 = (output16464, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16465 value1880 value1 value2 = (output16465, value6896, value1) := by
  rw [input16465_def, output16465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3763]
  try dsimp only
  rw [child16464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3763_skip, output16464_skip]
  kernel_rfl

theorem node16466_cond_eq
    (child3752 : Flapjack.WordAlloc.removeDeadStructural input3752 value1880 value1 value2 = (output3752, value1880, value1))
    (child16465 : Flapjack.WordAlloc.removeDeadStructural input16465 value1880 value1 value2 = (output16465, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16466 value1880 value1 value2 = (output16466, value6896, value1) := by
  rw [input16466_def, output16466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3752]
  try dsimp only
  rw [child16465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3752_skip, output16465_skip]
  kernel_rfl

theorem node16467_cond_eq
    (child3751 : Flapjack.WordAlloc.removeDeadStructural input3751 value1879 value1 value2 = (output3751, value1880, value1))
    (child16466 : Flapjack.WordAlloc.removeDeadStructural input16466 value1880 value1 value2 = (output16466, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16467 value1879 value1 value2 = (output16467, value6896, value1) := by
  rw [input16467_def, output16467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3751]
  try dsimp only
  rw [child16466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3751_skip, output16466_skip]
  kernel_rfl

theorem node16468_cond_eq
    (child3750 : Flapjack.WordAlloc.removeDeadStructural input3750 value5 value1 value2 = (output3750, value1879, value1))
    (child16467 : Flapjack.WordAlloc.removeDeadStructural input16467 value1879 value1 value2 = (output16467, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16468 value5 value1 value2 = (output16468, value6896, value1) := by
  rw [input16468_def, output16468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3750]
  try dsimp only
  rw [child16467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3750_skip, output16467_skip]
  kernel_rfl

theorem node16469_cond_eq
    (child3747 : Flapjack.WordAlloc.removeDeadStructural input3747 value1872 value1 value2 = (output3747, value5, value1))
    (child16468 : Flapjack.WordAlloc.removeDeadStructural input16468 value5 value1 value2 = (output16468, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16469 value1872 value1 value2 = (output16469, value6896, value1) := by
  rw [input16469_def, output16469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3747]
  try dsimp only
  rw [child16468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3747_skip, output16468_skip]
  kernel_rfl

theorem node16470_cond_eq
    (child3736 : Flapjack.WordAlloc.removeDeadStructural input3736 value1872 value1 value2 = (output3736, value1872, value1))
    (child16469 : Flapjack.WordAlloc.removeDeadStructural input16469 value1872 value1 value2 = (output16469, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16470 value1872 value1 value2 = (output16470, value6896, value1) := by
  rw [input16470_def, output16470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3736]
  try dsimp only
  rw [child16469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3736_skip, output16469_skip]
  kernel_rfl

theorem node16471_cond_eq
    (child3735 : Flapjack.WordAlloc.removeDeadStructural input3735 value1871 value1 value2 = (output3735, value1872, value1))
    (child16470 : Flapjack.WordAlloc.removeDeadStructural input16470 value1872 value1 value2 = (output16470, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16471 value1871 value1 value2 = (output16471, value6896, value1) := by
  rw [input16471_def, output16471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3735]
  try dsimp only
  rw [child16470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3735_skip, output16470_skip]
  kernel_rfl

theorem node16472_cond_eq
    (child3734 : Flapjack.WordAlloc.removeDeadStructural input3734 value5 value1 value2 = (output3734, value1871, value1))
    (child16471 : Flapjack.WordAlloc.removeDeadStructural input16471 value1871 value1 value2 = (output16471, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16472 value5 value1 value2 = (output16472, value6896, value1) := by
  rw [input16472_def, output16472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3734]
  try dsimp only
  rw [child16471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3734_skip, output16471_skip]
  kernel_rfl

theorem node16473_cond_eq
    (child3731 : Flapjack.WordAlloc.removeDeadStructural input3731 value1864 value1 value2 = (output3731, value5, value1))
    (child16472 : Flapjack.WordAlloc.removeDeadStructural input16472 value5 value1 value2 = (output16472, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16473 value1864 value1 value2 = (output16473, value6896, value1) := by
  rw [input16473_def, output16473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3731]
  try dsimp only
  rw [child16472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3731_skip, output16472_skip]
  kernel_rfl

theorem node16474_cond_eq
    (child3720 : Flapjack.WordAlloc.removeDeadStructural input3720 value1864 value1 value2 = (output3720, value1864, value1))
    (child16473 : Flapjack.WordAlloc.removeDeadStructural input16473 value1864 value1 value2 = (output16473, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16474 value1864 value1 value2 = (output16474, value6896, value1) := by
  rw [input16474_def, output16474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3720]
  try dsimp only
  rw [child16473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3720_skip, output16473_skip]
  kernel_rfl

theorem node16475_cond_eq
    (child3719 : Flapjack.WordAlloc.removeDeadStructural input3719 value1863 value1 value2 = (output3719, value1864, value1))
    (child16474 : Flapjack.WordAlloc.removeDeadStructural input16474 value1864 value1 value2 = (output16474, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16475 value1863 value1 value2 = (output16475, value6896, value1) := by
  rw [input16475_def, output16475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3719]
  try dsimp only
  rw [child16474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3719_skip, output16474_skip]
  kernel_rfl

theorem node16476_cond_eq
    (child3718 : Flapjack.WordAlloc.removeDeadStructural input3718 value5 value1 value2 = (output3718, value1863, value1))
    (child16475 : Flapjack.WordAlloc.removeDeadStructural input16475 value1863 value1 value2 = (output16475, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16476 value5 value1 value2 = (output16476, value6896, value1) := by
  rw [input16476_def, output16476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3718]
  try dsimp only
  rw [child16475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3718_skip, output16475_skip]
  kernel_rfl

theorem node16477_cond_eq
    (child3715 : Flapjack.WordAlloc.removeDeadStructural input3715 value1856 value1 value2 = (output3715, value5, value1))
    (child16476 : Flapjack.WordAlloc.removeDeadStructural input16476 value5 value1 value2 = (output16476, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16477 value1856 value1 value2 = (output16477, value6896, value1) := by
  rw [input16477_def, output16477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3715]
  try dsimp only
  rw [child16476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3715_skip, output16476_skip]
  kernel_rfl

theorem node16478_cond_eq
    (child3704 : Flapjack.WordAlloc.removeDeadStructural input3704 value1856 value1 value2 = (output3704, value1856, value1))
    (child16477 : Flapjack.WordAlloc.removeDeadStructural input16477 value1856 value1 value2 = (output16477, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16478 value1856 value1 value2 = (output16478, value6896, value1) := by
  rw [input16478_def, output16478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3704]
  try dsimp only
  rw [child16477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3704_skip, output16477_skip]
  kernel_rfl

theorem node16479_cond_eq
    (child3703 : Flapjack.WordAlloc.removeDeadStructural input3703 value1855 value1 value2 = (output3703, value1856, value1))
    (child16478 : Flapjack.WordAlloc.removeDeadStructural input16478 value1856 value1 value2 = (output16478, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16479 value1855 value1 value2 = (output16479, value6896, value1) := by
  rw [input16479_def, output16479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3703]
  try dsimp only
  rw [child16478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3703_skip, output16478_skip]
  kernel_rfl

theorem node16480_cond_eq
    (child3702 : Flapjack.WordAlloc.removeDeadStructural input3702 value5 value1 value2 = (output3702, value1855, value1))
    (child16479 : Flapjack.WordAlloc.removeDeadStructural input16479 value1855 value1 value2 = (output16479, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16480 value5 value1 value2 = (output16480, value6896, value1) := by
  rw [input16480_def, output16480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3702]
  try dsimp only
  rw [child16479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3702_skip, output16479_skip]
  kernel_rfl

theorem node16481_cond_eq
    (child3699 : Flapjack.WordAlloc.removeDeadStructural input3699 value1848 value1 value2 = (output3699, value5, value1))
    (child16480 : Flapjack.WordAlloc.removeDeadStructural input16480 value5 value1 value2 = (output16480, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16481 value1848 value1 value2 = (output16481, value6896, value1) := by
  rw [input16481_def, output16481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3699]
  try dsimp only
  rw [child16480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3699_skip, output16480_skip]
  kernel_rfl

theorem node16482_cond_eq
    (child3688 : Flapjack.WordAlloc.removeDeadStructural input3688 value1848 value1 value2 = (output3688, value1848, value1))
    (child16481 : Flapjack.WordAlloc.removeDeadStructural input16481 value1848 value1 value2 = (output16481, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16482 value1848 value1 value2 = (output16482, value6896, value1) := by
  rw [input16482_def, output16482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3688]
  try dsimp only
  rw [child16481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3688_skip, output16481_skip]
  kernel_rfl

theorem node16483_cond_eq
    (child3687 : Flapjack.WordAlloc.removeDeadStructural input3687 value1847 value1 value2 = (output3687, value1848, value1))
    (child16482 : Flapjack.WordAlloc.removeDeadStructural input16482 value1848 value1 value2 = (output16482, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16483 value1847 value1 value2 = (output16483, value6896, value1) := by
  rw [input16483_def, output16483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3687]
  try dsimp only
  rw [child16482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3687_skip, output16482_skip]
  kernel_rfl

theorem node16484_cond_eq
    (child3686 : Flapjack.WordAlloc.removeDeadStructural input3686 value5 value1 value2 = (output3686, value1847, value1))
    (child16483 : Flapjack.WordAlloc.removeDeadStructural input16483 value1847 value1 value2 = (output16483, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16484 value5 value1 value2 = (output16484, value6896, value1) := by
  rw [input16484_def, output16484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3686]
  try dsimp only
  rw [child16483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3686_skip, output16483_skip]
  kernel_rfl

theorem node16485_cond_eq
    (child3683 : Flapjack.WordAlloc.removeDeadStructural input3683 value1840 value1 value2 = (output3683, value5, value1))
    (child16484 : Flapjack.WordAlloc.removeDeadStructural input16484 value5 value1 value2 = (output16484, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16485 value1840 value1 value2 = (output16485, value6896, value1) := by
  rw [input16485_def, output16485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3683]
  try dsimp only
  rw [child16484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3683_skip, output16484_skip]
  kernel_rfl

theorem node16486_cond_eq
    (child3672 : Flapjack.WordAlloc.removeDeadStructural input3672 value1840 value1 value2 = (output3672, value1840, value1))
    (child16485 : Flapjack.WordAlloc.removeDeadStructural input16485 value1840 value1 value2 = (output16485, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16486 value1840 value1 value2 = (output16486, value6896, value1) := by
  rw [input16486_def, output16486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3672]
  try dsimp only
  rw [child16485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3672_skip, output16485_skip]
  kernel_rfl

theorem node16487_cond_eq
    (child3671 : Flapjack.WordAlloc.removeDeadStructural input3671 value1839 value1 value2 = (output3671, value1840, value1))
    (child16486 : Flapjack.WordAlloc.removeDeadStructural input16486 value1840 value1 value2 = (output16486, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16487 value1839 value1 value2 = (output16487, value6896, value1) := by
  rw [input16487_def, output16487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3671]
  try dsimp only
  rw [child16486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3671_skip, output16486_skip]
  kernel_rfl

theorem node16488_cond_eq
    (child3670 : Flapjack.WordAlloc.removeDeadStructural input3670 value5 value1 value2 = (output3670, value1839, value1))
    (child16487 : Flapjack.WordAlloc.removeDeadStructural input16487 value1839 value1 value2 = (output16487, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16488 value5 value1 value2 = (output16488, value6896, value1) := by
  rw [input16488_def, output16488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3670]
  try dsimp only
  rw [child16487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3670_skip, output16487_skip]
  kernel_rfl

theorem node16489_cond_eq
    (child3667 : Flapjack.WordAlloc.removeDeadStructural input3667 value1832 value1 value2 = (output3667, value5, value1))
    (child16488 : Flapjack.WordAlloc.removeDeadStructural input16488 value5 value1 value2 = (output16488, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16489 value1832 value1 value2 = (output16489, value6896, value1) := by
  rw [input16489_def, output16489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3667]
  try dsimp only
  rw [child16488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3667_skip, output16488_skip]
  kernel_rfl

theorem node16490_cond_eq
    (child3656 : Flapjack.WordAlloc.removeDeadStructural input3656 value1832 value1 value2 = (output3656, value1832, value1))
    (child16489 : Flapjack.WordAlloc.removeDeadStructural input16489 value1832 value1 value2 = (output16489, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16490 value1832 value1 value2 = (output16490, value6896, value1) := by
  rw [input16490_def, output16490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3656]
  try dsimp only
  rw [child16489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3656_skip, output16489_skip]
  kernel_rfl

theorem node16491_cond_eq
    (child3655 : Flapjack.WordAlloc.removeDeadStructural input3655 value1831 value1 value2 = (output3655, value1832, value1))
    (child16490 : Flapjack.WordAlloc.removeDeadStructural input16490 value1832 value1 value2 = (output16490, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16491 value1831 value1 value2 = (output16491, value6896, value1) := by
  rw [input16491_def, output16491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3655]
  try dsimp only
  rw [child16490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3655_skip, output16490_skip]
  kernel_rfl

theorem node16492_cond_eq
    (child3654 : Flapjack.WordAlloc.removeDeadStructural input3654 value5 value1 value2 = (output3654, value1831, value1))
    (child16491 : Flapjack.WordAlloc.removeDeadStructural input16491 value1831 value1 value2 = (output16491, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16492 value5 value1 value2 = (output16492, value6896, value1) := by
  rw [input16492_def, output16492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3654]
  try dsimp only
  rw [child16491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3654_skip, output16491_skip]
  kernel_rfl

theorem node16493_cond_eq
    (child3651 : Flapjack.WordAlloc.removeDeadStructural input3651 value1824 value1 value2 = (output3651, value5, value1))
    (child16492 : Flapjack.WordAlloc.removeDeadStructural input16492 value5 value1 value2 = (output16492, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16493 value1824 value1 value2 = (output16493, value6896, value1) := by
  rw [input16493_def, output16493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3651]
  try dsimp only
  rw [child16492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3651_skip, output16492_skip]
  kernel_rfl

theorem node16494_cond_eq
    (child3640 : Flapjack.WordAlloc.removeDeadStructural input3640 value1824 value1 value2 = (output3640, value1824, value1))
    (child16493 : Flapjack.WordAlloc.removeDeadStructural input16493 value1824 value1 value2 = (output16493, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16494 value1824 value1 value2 = (output16494, value6896, value1) := by
  rw [input16494_def, output16494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3640]
  try dsimp only
  rw [child16493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3640_skip, output16493_skip]
  kernel_rfl

theorem node16495_cond_eq
    (child3639 : Flapjack.WordAlloc.removeDeadStructural input3639 value1823 value1 value2 = (output3639, value1824, value1))
    (child16494 : Flapjack.WordAlloc.removeDeadStructural input16494 value1824 value1 value2 = (output16494, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16495 value1823 value1 value2 = (output16495, value6896, value1) := by
  rw [input16495_def, output16495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3639]
  try dsimp only
  rw [child16494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3639_skip, output16494_skip]
  kernel_rfl

theorem node16496_cond_eq
    (child3638 : Flapjack.WordAlloc.removeDeadStructural input3638 value5 value1 value2 = (output3638, value1823, value1))
    (child16495 : Flapjack.WordAlloc.removeDeadStructural input16495 value1823 value1 value2 = (output16495, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16496 value5 value1 value2 = (output16496, value6896, value1) := by
  rw [input16496_def, output16496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3638]
  try dsimp only
  rw [child16495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3638_skip, output16495_skip]
  kernel_rfl

theorem node16497_cond_eq
    (child3635 : Flapjack.WordAlloc.removeDeadStructural input3635 value1816 value1 value2 = (output3635, value5, value1))
    (child16496 : Flapjack.WordAlloc.removeDeadStructural input16496 value5 value1 value2 = (output16496, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16497 value1816 value1 value2 = (output16497, value6896, value1) := by
  rw [input16497_def, output16497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3635]
  try dsimp only
  rw [child16496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3635_skip, output16496_skip]
  kernel_rfl

theorem node16498_cond_eq
    (child3624 : Flapjack.WordAlloc.removeDeadStructural input3624 value1816 value1 value2 = (output3624, value1816, value1))
    (child16497 : Flapjack.WordAlloc.removeDeadStructural input16497 value1816 value1 value2 = (output16497, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16498 value1816 value1 value2 = (output16498, value6896, value1) := by
  rw [input16498_def, output16498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3624]
  try dsimp only
  rw [child16497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3624_skip, output16497_skip]
  kernel_rfl

theorem node16499_cond_eq
    (child3623 : Flapjack.WordAlloc.removeDeadStructural input3623 value1815 value1 value2 = (output3623, value1816, value1))
    (child16498 : Flapjack.WordAlloc.removeDeadStructural input16498 value1816 value1 value2 = (output16498, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16499 value1815 value1 value2 = (output16499, value6896, value1) := by
  rw [input16499_def, output16499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3623]
  try dsimp only
  rw [child16498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3623_skip, output16498_skip]
  kernel_rfl

theorem node16500_cond_eq
    (child3622 : Flapjack.WordAlloc.removeDeadStructural input3622 value5 value1 value2 = (output3622, value1815, value1))
    (child16499 : Flapjack.WordAlloc.removeDeadStructural input16499 value1815 value1 value2 = (output16499, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16500 value5 value1 value2 = (output16500, value6896, value1) := by
  rw [input16500_def, output16500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3622]
  try dsimp only
  rw [child16499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3622_skip, output16499_skip]
  kernel_rfl

theorem node16501_cond_eq
    (child3619 : Flapjack.WordAlloc.removeDeadStructural input3619 value1808 value1 value2 = (output3619, value5, value1))
    (child16500 : Flapjack.WordAlloc.removeDeadStructural input16500 value5 value1 value2 = (output16500, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16501 value1808 value1 value2 = (output16501, value6896, value1) := by
  rw [input16501_def, output16501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3619]
  try dsimp only
  rw [child16500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3619_skip, output16500_skip]
  kernel_rfl

theorem node16502_cond_eq
    (child3608 : Flapjack.WordAlloc.removeDeadStructural input3608 value1808 value1 value2 = (output3608, value1808, value1))
    (child16501 : Flapjack.WordAlloc.removeDeadStructural input16501 value1808 value1 value2 = (output16501, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16502 value1808 value1 value2 = (output16502, value6896, value1) := by
  rw [input16502_def, output16502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3608]
  try dsimp only
  rw [child16501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3608_skip, output16501_skip]
  kernel_rfl

theorem node16503_cond_eq
    (child3607 : Flapjack.WordAlloc.removeDeadStructural input3607 value1807 value1 value2 = (output3607, value1808, value1))
    (child16502 : Flapjack.WordAlloc.removeDeadStructural input16502 value1808 value1 value2 = (output16502, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16503 value1807 value1 value2 = (output16503, value6896, value1) := by
  rw [input16503_def, output16503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3607]
  try dsimp only
  rw [child16502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3607_skip, output16502_skip]
  kernel_rfl

theorem node16504_cond_eq
    (child3606 : Flapjack.WordAlloc.removeDeadStructural input3606 value5 value1 value2 = (output3606, value1807, value1))
    (child16503 : Flapjack.WordAlloc.removeDeadStructural input16503 value1807 value1 value2 = (output16503, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16504 value5 value1 value2 = (output16504, value6896, value1) := by
  rw [input16504_def, output16504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3606]
  try dsimp only
  rw [child16503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3606_skip, output16503_skip]
  kernel_rfl

theorem node16505_cond_eq
    (child3603 : Flapjack.WordAlloc.removeDeadStructural input3603 value1800 value1 value2 = (output3603, value5, value1))
    (child16504 : Flapjack.WordAlloc.removeDeadStructural input16504 value5 value1 value2 = (output16504, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16505 value1800 value1 value2 = (output16505, value6896, value1) := by
  rw [input16505_def, output16505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3603]
  try dsimp only
  rw [child16504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3603_skip, output16504_skip]
  kernel_rfl

theorem node16506_cond_eq
    (child3592 : Flapjack.WordAlloc.removeDeadStructural input3592 value1800 value1 value2 = (output3592, value1800, value1))
    (child16505 : Flapjack.WordAlloc.removeDeadStructural input16505 value1800 value1 value2 = (output16505, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16506 value1800 value1 value2 = (output16506, value6896, value1) := by
  rw [input16506_def, output16506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3592]
  try dsimp only
  rw [child16505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3592_skip, output16505_skip]
  kernel_rfl

theorem node16507_cond_eq
    (child3591 : Flapjack.WordAlloc.removeDeadStructural input3591 value1799 value1 value2 = (output3591, value1800, value1))
    (child16506 : Flapjack.WordAlloc.removeDeadStructural input16506 value1800 value1 value2 = (output16506, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16507 value1799 value1 value2 = (output16507, value6896, value1) := by
  rw [input16507_def, output16507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3591]
  try dsimp only
  rw [child16506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3591_skip, output16506_skip]
  kernel_rfl

theorem node16508_cond_eq
    (child3590 : Flapjack.WordAlloc.removeDeadStructural input3590 value5 value1 value2 = (output3590, value1799, value1))
    (child16507 : Flapjack.WordAlloc.removeDeadStructural input16507 value1799 value1 value2 = (output16507, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16508 value5 value1 value2 = (output16508, value6896, value1) := by
  rw [input16508_def, output16508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3590]
  try dsimp only
  rw [child16507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3590_skip, output16507_skip]
  kernel_rfl

theorem node16509_cond_eq
    (child3587 : Flapjack.WordAlloc.removeDeadStructural input3587 value1792 value1 value2 = (output3587, value5, value1))
    (child16508 : Flapjack.WordAlloc.removeDeadStructural input16508 value5 value1 value2 = (output16508, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16509 value1792 value1 value2 = (output16509, value6896, value1) := by
  rw [input16509_def, output16509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3587]
  try dsimp only
  rw [child16508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3587_skip, output16508_skip]
  kernel_rfl

theorem node16510_cond_eq
    (child3576 : Flapjack.WordAlloc.removeDeadStructural input3576 value1792 value1 value2 = (output3576, value1792, value1))
    (child16509 : Flapjack.WordAlloc.removeDeadStructural input16509 value1792 value1 value2 = (output16509, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16510 value1792 value1 value2 = (output16510, value6896, value1) := by
  rw [input16510_def, output16510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3576]
  try dsimp only
  rw [child16509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3576_skip, output16509_skip]
  kernel_rfl

theorem node16511_cond_eq
    (child3575 : Flapjack.WordAlloc.removeDeadStructural input3575 value1791 value1 value2 = (output3575, value1792, value1))
    (child16510 : Flapjack.WordAlloc.removeDeadStructural input16510 value1792 value1 value2 = (output16510, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16511 value1791 value1 value2 = (output16511, value6896, value1) := by
  rw [input16511_def, output16511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3575]
  try dsimp only
  rw [child16510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3575_skip, output16510_skip]
  kernel_rfl

theorem node16512_cond_eq
    (child3574 : Flapjack.WordAlloc.removeDeadStructural input3574 value5 value1 value2 = (output3574, value1791, value1))
    (child16511 : Flapjack.WordAlloc.removeDeadStructural input16511 value1791 value1 value2 = (output16511, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16512 value5 value1 value2 = (output16512, value6896, value1) := by
  rw [input16512_def, output16512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3574]
  try dsimp only
  rw [child16511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3574_skip, output16511_skip]
  kernel_rfl

theorem node16513_cond_eq
    (child3571 : Flapjack.WordAlloc.removeDeadStructural input3571 value1784 value1 value2 = (output3571, value5, value1))
    (child16512 : Flapjack.WordAlloc.removeDeadStructural input16512 value5 value1 value2 = (output16512, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16513 value1784 value1 value2 = (output16513, value6896, value1) := by
  rw [input16513_def, output16513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3571]
  try dsimp only
  rw [child16512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3571_skip, output16512_skip]
  kernel_rfl

theorem node16514_cond_eq
    (child3560 : Flapjack.WordAlloc.removeDeadStructural input3560 value1784 value1 value2 = (output3560, value1784, value1))
    (child16513 : Flapjack.WordAlloc.removeDeadStructural input16513 value1784 value1 value2 = (output16513, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16514 value1784 value1 value2 = (output16514, value6896, value1) := by
  rw [input16514_def, output16514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3560]
  try dsimp only
  rw [child16513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3560_skip, output16513_skip]
  kernel_rfl

theorem node16515_cond_eq
    (child3559 : Flapjack.WordAlloc.removeDeadStructural input3559 value1783 value1 value2 = (output3559, value1784, value1))
    (child16514 : Flapjack.WordAlloc.removeDeadStructural input16514 value1784 value1 value2 = (output16514, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16515 value1783 value1 value2 = (output16515, value6896, value1) := by
  rw [input16515_def, output16515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3559]
  try dsimp only
  rw [child16514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3559_skip, output16514_skip]
  kernel_rfl

theorem node16516_cond_eq
    (child3558 : Flapjack.WordAlloc.removeDeadStructural input3558 value5 value1 value2 = (output3558, value1783, value1))
    (child16515 : Flapjack.WordAlloc.removeDeadStructural input16515 value1783 value1 value2 = (output16515, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16516 value5 value1 value2 = (output16516, value6896, value1) := by
  rw [input16516_def, output16516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3558]
  try dsimp only
  rw [child16515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3558_skip, output16515_skip]
  kernel_rfl

theorem node16517_cond_eq
    (child3555 : Flapjack.WordAlloc.removeDeadStructural input3555 value1776 value1 value2 = (output3555, value5, value1))
    (child16516 : Flapjack.WordAlloc.removeDeadStructural input16516 value5 value1 value2 = (output16516, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16517 value1776 value1 value2 = (output16517, value6896, value1) := by
  rw [input16517_def, output16517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3555]
  try dsimp only
  rw [child16516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3555_skip, output16516_skip]
  kernel_rfl

theorem node16518_cond_eq
    (child3544 : Flapjack.WordAlloc.removeDeadStructural input3544 value1776 value1 value2 = (output3544, value1776, value1))
    (child16517 : Flapjack.WordAlloc.removeDeadStructural input16517 value1776 value1 value2 = (output16517, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16518 value1776 value1 value2 = (output16518, value6896, value1) := by
  rw [input16518_def, output16518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3544]
  try dsimp only
  rw [child16517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3544_skip, output16517_skip]
  kernel_rfl

theorem node16519_cond_eq
    (child3543 : Flapjack.WordAlloc.removeDeadStructural input3543 value1775 value1 value2 = (output3543, value1776, value1))
    (child16518 : Flapjack.WordAlloc.removeDeadStructural input16518 value1776 value1 value2 = (output16518, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16519 value1775 value1 value2 = (output16519, value6896, value1) := by
  rw [input16519_def, output16519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3543]
  try dsimp only
  rw [child16518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3543_skip, output16518_skip]
  kernel_rfl

theorem node16520_cond_eq
    (child3542 : Flapjack.WordAlloc.removeDeadStructural input3542 value5 value1 value2 = (output3542, value1775, value1))
    (child16519 : Flapjack.WordAlloc.removeDeadStructural input16519 value1775 value1 value2 = (output16519, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16520 value5 value1 value2 = (output16520, value6896, value1) := by
  rw [input16520_def, output16520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3542]
  try dsimp only
  rw [child16519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3542_skip, output16519_skip]
  kernel_rfl

theorem node16521_cond_eq
    (child3539 : Flapjack.WordAlloc.removeDeadStructural input3539 value1768 value1 value2 = (output3539, value5, value1))
    (child16520 : Flapjack.WordAlloc.removeDeadStructural input16520 value5 value1 value2 = (output16520, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16521 value1768 value1 value2 = (output16521, value6896, value1) := by
  rw [input16521_def, output16521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3539]
  try dsimp only
  rw [child16520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3539_skip, output16520_skip]
  kernel_rfl

theorem node16522_cond_eq
    (child3528 : Flapjack.WordAlloc.removeDeadStructural input3528 value1768 value1 value2 = (output3528, value1768, value1))
    (child16521 : Flapjack.WordAlloc.removeDeadStructural input16521 value1768 value1 value2 = (output16521, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16522 value1768 value1 value2 = (output16522, value6896, value1) := by
  rw [input16522_def, output16522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3528]
  try dsimp only
  rw [child16521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3528_skip, output16521_skip]
  kernel_rfl

theorem node16523_cond_eq
    (child3527 : Flapjack.WordAlloc.removeDeadStructural input3527 value1767 value1 value2 = (output3527, value1768, value1))
    (child16522 : Flapjack.WordAlloc.removeDeadStructural input16522 value1768 value1 value2 = (output16522, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16523 value1767 value1 value2 = (output16523, value6896, value1) := by
  rw [input16523_def, output16523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3527]
  try dsimp only
  rw [child16522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3527_skip, output16522_skip]
  kernel_rfl

theorem node16524_cond_eq
    (child3526 : Flapjack.WordAlloc.removeDeadStructural input3526 value5 value1 value2 = (output3526, value1767, value1))
    (child16523 : Flapjack.WordAlloc.removeDeadStructural input16523 value1767 value1 value2 = (output16523, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16524 value5 value1 value2 = (output16524, value6896, value1) := by
  rw [input16524_def, output16524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3526]
  try dsimp only
  rw [child16523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3526_skip, output16523_skip]
  kernel_rfl

theorem node16525_cond_eq
    (child3523 : Flapjack.WordAlloc.removeDeadStructural input3523 value1760 value1 value2 = (output3523, value5, value1))
    (child16524 : Flapjack.WordAlloc.removeDeadStructural input16524 value5 value1 value2 = (output16524, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16525 value1760 value1 value2 = (output16525, value6896, value1) := by
  rw [input16525_def, output16525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3523]
  try dsimp only
  rw [child16524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3523_skip, output16524_skip]
  kernel_rfl

theorem node16526_cond_eq
    (child3512 : Flapjack.WordAlloc.removeDeadStructural input3512 value1760 value1 value2 = (output3512, value1760, value1))
    (child16525 : Flapjack.WordAlloc.removeDeadStructural input16525 value1760 value1 value2 = (output16525, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16526 value1760 value1 value2 = (output16526, value6896, value1) := by
  rw [input16526_def, output16526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3512]
  try dsimp only
  rw [child16525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3512_skip, output16525_skip]
  kernel_rfl

theorem node16527_cond_eq
    (child3511 : Flapjack.WordAlloc.removeDeadStructural input3511 value1759 value1 value2 = (output3511, value1760, value1))
    (child16526 : Flapjack.WordAlloc.removeDeadStructural input16526 value1760 value1 value2 = (output16526, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16527 value1759 value1 value2 = (output16527, value6896, value1) := by
  rw [input16527_def, output16527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3511]
  try dsimp only
  rw [child16526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3511_skip, output16526_skip]
  kernel_rfl

theorem node16528_cond_eq
    (child3510 : Flapjack.WordAlloc.removeDeadStructural input3510 value5 value1 value2 = (output3510, value1759, value1))
    (child16527 : Flapjack.WordAlloc.removeDeadStructural input16527 value1759 value1 value2 = (output16527, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16528 value5 value1 value2 = (output16528, value6896, value1) := by
  rw [input16528_def, output16528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3510]
  try dsimp only
  rw [child16527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3510_skip, output16527_skip]
  kernel_rfl

theorem node16529_cond_eq
    (child3507 : Flapjack.WordAlloc.removeDeadStructural input3507 value1752 value1 value2 = (output3507, value5, value1))
    (child16528 : Flapjack.WordAlloc.removeDeadStructural input16528 value5 value1 value2 = (output16528, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16529 value1752 value1 value2 = (output16529, value6896, value1) := by
  rw [input16529_def, output16529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3507]
  try dsimp only
  rw [child16528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3507_skip, output16528_skip]
  kernel_rfl

theorem node16530_cond_eq
    (child3496 : Flapjack.WordAlloc.removeDeadStructural input3496 value1752 value1 value2 = (output3496, value1752, value1))
    (child16529 : Flapjack.WordAlloc.removeDeadStructural input16529 value1752 value1 value2 = (output16529, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16530 value1752 value1 value2 = (output16530, value6896, value1) := by
  rw [input16530_def, output16530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3496]
  try dsimp only
  rw [child16529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3496_skip, output16529_skip]
  kernel_rfl

theorem node16531_cond_eq
    (child3495 : Flapjack.WordAlloc.removeDeadStructural input3495 value1751 value1 value2 = (output3495, value1752, value1))
    (child16530 : Flapjack.WordAlloc.removeDeadStructural input16530 value1752 value1 value2 = (output16530, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16531 value1751 value1 value2 = (output16531, value6896, value1) := by
  rw [input16531_def, output16531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3495]
  try dsimp only
  rw [child16530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3495_skip, output16530_skip]
  kernel_rfl

theorem node16532_cond_eq
    (child3494 : Flapjack.WordAlloc.removeDeadStructural input3494 value5 value1 value2 = (output3494, value1751, value1))
    (child16531 : Flapjack.WordAlloc.removeDeadStructural input16531 value1751 value1 value2 = (output16531, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16532 value5 value1 value2 = (output16532, value6896, value1) := by
  rw [input16532_def, output16532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3494]
  try dsimp only
  rw [child16531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3494_skip, output16531_skip]
  kernel_rfl

theorem node16533_cond_eq
    (child3491 : Flapjack.WordAlloc.removeDeadStructural input3491 value1744 value1 value2 = (output3491, value5, value1))
    (child16532 : Flapjack.WordAlloc.removeDeadStructural input16532 value5 value1 value2 = (output16532, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16533 value1744 value1 value2 = (output16533, value6896, value1) := by
  rw [input16533_def, output16533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3491]
  try dsimp only
  rw [child16532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3491_skip, output16532_skip]
  kernel_rfl

theorem node16534_cond_eq
    (child3480 : Flapjack.WordAlloc.removeDeadStructural input3480 value1744 value1 value2 = (output3480, value1744, value1))
    (child16533 : Flapjack.WordAlloc.removeDeadStructural input16533 value1744 value1 value2 = (output16533, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16534 value1744 value1 value2 = (output16534, value6896, value1) := by
  rw [input16534_def, output16534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3480]
  try dsimp only
  rw [child16533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3480_skip, output16533_skip]
  kernel_rfl

theorem node16535_cond_eq
    (child3479 : Flapjack.WordAlloc.removeDeadStructural input3479 value1743 value1 value2 = (output3479, value1744, value1))
    (child16534 : Flapjack.WordAlloc.removeDeadStructural input16534 value1744 value1 value2 = (output16534, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16535 value1743 value1 value2 = (output16535, value6896, value1) := by
  rw [input16535_def, output16535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3479]
  try dsimp only
  rw [child16534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3479_skip, output16534_skip]
  kernel_rfl

theorem node16536_cond_eq
    (child3478 : Flapjack.WordAlloc.removeDeadStructural input3478 value5 value1 value2 = (output3478, value1743, value1))
    (child16535 : Flapjack.WordAlloc.removeDeadStructural input16535 value1743 value1 value2 = (output16535, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16536 value5 value1 value2 = (output16536, value6896, value1) := by
  rw [input16536_def, output16536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3478]
  try dsimp only
  rw [child16535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3478_skip, output16535_skip]
  kernel_rfl

theorem node16537_cond_eq
    (child3475 : Flapjack.WordAlloc.removeDeadStructural input3475 value1736 value1 value2 = (output3475, value5, value1))
    (child16536 : Flapjack.WordAlloc.removeDeadStructural input16536 value5 value1 value2 = (output16536, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16537 value1736 value1 value2 = (output16537, value6896, value1) := by
  rw [input16537_def, output16537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3475]
  try dsimp only
  rw [child16536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3475_skip, output16536_skip]
  kernel_rfl

theorem node16538_cond_eq
    (child3464 : Flapjack.WordAlloc.removeDeadStructural input3464 value1736 value1 value2 = (output3464, value1736, value1))
    (child16537 : Flapjack.WordAlloc.removeDeadStructural input16537 value1736 value1 value2 = (output16537, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16538 value1736 value1 value2 = (output16538, value6896, value1) := by
  rw [input16538_def, output16538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3464]
  try dsimp only
  rw [child16537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3464_skip, output16537_skip]
  kernel_rfl

theorem node16539_cond_eq
    (child3463 : Flapjack.WordAlloc.removeDeadStructural input3463 value1735 value1 value2 = (output3463, value1736, value1))
    (child16538 : Flapjack.WordAlloc.removeDeadStructural input16538 value1736 value1 value2 = (output16538, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16539 value1735 value1 value2 = (output16539, value6896, value1) := by
  rw [input16539_def, output16539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3463]
  try dsimp only
  rw [child16538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3463_skip, output16538_skip]
  kernel_rfl

theorem node16540_cond_eq
    (child3462 : Flapjack.WordAlloc.removeDeadStructural input3462 value5 value1 value2 = (output3462, value1735, value1))
    (child16539 : Flapjack.WordAlloc.removeDeadStructural input16539 value1735 value1 value2 = (output16539, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16540 value5 value1 value2 = (output16540, value6896, value1) := by
  rw [input16540_def, output16540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3462]
  try dsimp only
  rw [child16539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3462_skip, output16539_skip]
  kernel_rfl

theorem node16541_cond_eq
    (child3459 : Flapjack.WordAlloc.removeDeadStructural input3459 value1728 value1 value2 = (output3459, value5, value1))
    (child16540 : Flapjack.WordAlloc.removeDeadStructural input16540 value5 value1 value2 = (output16540, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16541 value1728 value1 value2 = (output16541, value6896, value1) := by
  rw [input16541_def, output16541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3459]
  try dsimp only
  rw [child16540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3459_skip, output16540_skip]
  kernel_rfl

theorem node16542_cond_eq
    (child3448 : Flapjack.WordAlloc.removeDeadStructural input3448 value1728 value1 value2 = (output3448, value1728, value1))
    (child16541 : Flapjack.WordAlloc.removeDeadStructural input16541 value1728 value1 value2 = (output16541, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16542 value1728 value1 value2 = (output16542, value6896, value1) := by
  rw [input16542_def, output16542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3448]
  try dsimp only
  rw [child16541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3448_skip, output16541_skip]
  kernel_rfl

theorem node16543_cond_eq
    (child3447 : Flapjack.WordAlloc.removeDeadStructural input3447 value1727 value1 value2 = (output3447, value1728, value1))
    (child16542 : Flapjack.WordAlloc.removeDeadStructural input16542 value1728 value1 value2 = (output16542, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16543 value1727 value1 value2 = (output16543, value6896, value1) := by
  rw [input16543_def, output16543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3447]
  try dsimp only
  rw [child16542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3447_skip, output16542_skip]
  kernel_rfl

theorem node16544_cond_eq
    (child3446 : Flapjack.WordAlloc.removeDeadStructural input3446 value5 value1 value2 = (output3446, value1727, value1))
    (child16543 : Flapjack.WordAlloc.removeDeadStructural input16543 value1727 value1 value2 = (output16543, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16544 value5 value1 value2 = (output16544, value6896, value1) := by
  rw [input16544_def, output16544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3446]
  try dsimp only
  rw [child16543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3446_skip, output16543_skip]
  kernel_rfl

theorem node16545_cond_eq
    (child3443 : Flapjack.WordAlloc.removeDeadStructural input3443 value1720 value1 value2 = (output3443, value5, value1))
    (child16544 : Flapjack.WordAlloc.removeDeadStructural input16544 value5 value1 value2 = (output16544, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16545 value1720 value1 value2 = (output16545, value6896, value1) := by
  rw [input16545_def, output16545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3443]
  try dsimp only
  rw [child16544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3443_skip, output16544_skip]
  kernel_rfl

theorem node16546_cond_eq
    (child3432 : Flapjack.WordAlloc.removeDeadStructural input3432 value1720 value1 value2 = (output3432, value1720, value1))
    (child16545 : Flapjack.WordAlloc.removeDeadStructural input16545 value1720 value1 value2 = (output16545, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16546 value1720 value1 value2 = (output16546, value6896, value1) := by
  rw [input16546_def, output16546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3432]
  try dsimp only
  rw [child16545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3432_skip, output16545_skip]
  kernel_rfl

theorem node16547_cond_eq
    (child3431 : Flapjack.WordAlloc.removeDeadStructural input3431 value1719 value1 value2 = (output3431, value1720, value1))
    (child16546 : Flapjack.WordAlloc.removeDeadStructural input16546 value1720 value1 value2 = (output16546, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16547 value1719 value1 value2 = (output16547, value6896, value1) := by
  rw [input16547_def, output16547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3431]
  try dsimp only
  rw [child16546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3431_skip, output16546_skip]
  kernel_rfl

theorem node16548_cond_eq
    (child3430 : Flapjack.WordAlloc.removeDeadStructural input3430 value5 value1 value2 = (output3430, value1719, value1))
    (child16547 : Flapjack.WordAlloc.removeDeadStructural input16547 value1719 value1 value2 = (output16547, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16548 value5 value1 value2 = (output16548, value6896, value1) := by
  rw [input16548_def, output16548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3430]
  try dsimp only
  rw [child16547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3430_skip, output16547_skip]
  kernel_rfl

theorem node16549_cond_eq
    (child3427 : Flapjack.WordAlloc.removeDeadStructural input3427 value1712 value1 value2 = (output3427, value5, value1))
    (child16548 : Flapjack.WordAlloc.removeDeadStructural input16548 value5 value1 value2 = (output16548, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16549 value1712 value1 value2 = (output16549, value6896, value1) := by
  rw [input16549_def, output16549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3427]
  try dsimp only
  rw [child16548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3427_skip, output16548_skip]
  kernel_rfl

theorem node16550_cond_eq
    (child3416 : Flapjack.WordAlloc.removeDeadStructural input3416 value1712 value1 value2 = (output3416, value1712, value1))
    (child16549 : Flapjack.WordAlloc.removeDeadStructural input16549 value1712 value1 value2 = (output16549, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16550 value1712 value1 value2 = (output16550, value6896, value1) := by
  rw [input16550_def, output16550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3416]
  try dsimp only
  rw [child16549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3416_skip, output16549_skip]
  kernel_rfl

theorem node16551_cond_eq
    (child3415 : Flapjack.WordAlloc.removeDeadStructural input3415 value1711 value1 value2 = (output3415, value1712, value1))
    (child16550 : Flapjack.WordAlloc.removeDeadStructural input16550 value1712 value1 value2 = (output16550, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16551 value1711 value1 value2 = (output16551, value6896, value1) := by
  rw [input16551_def, output16551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3415]
  try dsimp only
  rw [child16550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3415_skip, output16550_skip]
  kernel_rfl

theorem node16552_cond_eq
    (child3414 : Flapjack.WordAlloc.removeDeadStructural input3414 value5 value1 value2 = (output3414, value1711, value1))
    (child16551 : Flapjack.WordAlloc.removeDeadStructural input16551 value1711 value1 value2 = (output16551, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16552 value5 value1 value2 = (output16552, value6896, value1) := by
  rw [input16552_def, output16552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3414]
  try dsimp only
  rw [child16551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3414_skip, output16551_skip]
  kernel_rfl

theorem node16553_cond_eq
    (child3411 : Flapjack.WordAlloc.removeDeadStructural input3411 value1704 value1 value2 = (output3411, value5, value1))
    (child16552 : Flapjack.WordAlloc.removeDeadStructural input16552 value5 value1 value2 = (output16552, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16553 value1704 value1 value2 = (output16553, value6896, value1) := by
  rw [input16553_def, output16553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3411]
  try dsimp only
  rw [child16552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3411_skip, output16552_skip]
  kernel_rfl

theorem node16554_cond_eq
    (child3400 : Flapjack.WordAlloc.removeDeadStructural input3400 value1704 value1 value2 = (output3400, value1704, value1))
    (child16553 : Flapjack.WordAlloc.removeDeadStructural input16553 value1704 value1 value2 = (output16553, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16554 value1704 value1 value2 = (output16554, value6896, value1) := by
  rw [input16554_def, output16554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3400]
  try dsimp only
  rw [child16553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3400_skip, output16553_skip]
  kernel_rfl

theorem node16555_cond_eq
    (child3399 : Flapjack.WordAlloc.removeDeadStructural input3399 value1703 value1 value2 = (output3399, value1704, value1))
    (child16554 : Flapjack.WordAlloc.removeDeadStructural input16554 value1704 value1 value2 = (output16554, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16555 value1703 value1 value2 = (output16555, value6896, value1) := by
  rw [input16555_def, output16555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3399]
  try dsimp only
  rw [child16554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3399_skip, output16554_skip]
  kernel_rfl

theorem node16556_cond_eq
    (child3398 : Flapjack.WordAlloc.removeDeadStructural input3398 value5 value1 value2 = (output3398, value1703, value1))
    (child16555 : Flapjack.WordAlloc.removeDeadStructural input16555 value1703 value1 value2 = (output16555, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16556 value5 value1 value2 = (output16556, value6896, value1) := by
  rw [input16556_def, output16556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3398]
  try dsimp only
  rw [child16555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3398_skip, output16555_skip]
  kernel_rfl

theorem node16557_cond_eq
    (child3395 : Flapjack.WordAlloc.removeDeadStructural input3395 value1696 value1 value2 = (output3395, value5, value1))
    (child16556 : Flapjack.WordAlloc.removeDeadStructural input16556 value5 value1 value2 = (output16556, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16557 value1696 value1 value2 = (output16557, value6896, value1) := by
  rw [input16557_def, output16557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3395]
  try dsimp only
  rw [child16556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3395_skip, output16556_skip]
  kernel_rfl

theorem node16558_cond_eq
    (child3384 : Flapjack.WordAlloc.removeDeadStructural input3384 value1696 value1 value2 = (output3384, value1696, value1))
    (child16557 : Flapjack.WordAlloc.removeDeadStructural input16557 value1696 value1 value2 = (output16557, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16558 value1696 value1 value2 = (output16558, value6896, value1) := by
  rw [input16558_def, output16558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3384]
  try dsimp only
  rw [child16557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3384_skip, output16557_skip]
  kernel_rfl

theorem node16559_cond_eq
    (child3383 : Flapjack.WordAlloc.removeDeadStructural input3383 value1695 value1 value2 = (output3383, value1696, value1))
    (child16558 : Flapjack.WordAlloc.removeDeadStructural input16558 value1696 value1 value2 = (output16558, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16559 value1695 value1 value2 = (output16559, value6896, value1) := by
  rw [input16559_def, output16559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3383]
  try dsimp only
  rw [child16558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3383_skip, output16558_skip]
  kernel_rfl

theorem node16560_cond_eq
    (child3382 : Flapjack.WordAlloc.removeDeadStructural input3382 value5 value1 value2 = (output3382, value1695, value1))
    (child16559 : Flapjack.WordAlloc.removeDeadStructural input16559 value1695 value1 value2 = (output16559, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16560 value5 value1 value2 = (output16560, value6896, value1) := by
  rw [input16560_def, output16560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3382]
  try dsimp only
  rw [child16559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3382_skip, output16559_skip]
  kernel_rfl

theorem node16561_cond_eq
    (child3379 : Flapjack.WordAlloc.removeDeadStructural input3379 value1688 value1 value2 = (output3379, value5, value1))
    (child16560 : Flapjack.WordAlloc.removeDeadStructural input16560 value5 value1 value2 = (output16560, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16561 value1688 value1 value2 = (output16561, value6896, value1) := by
  rw [input16561_def, output16561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3379]
  try dsimp only
  rw [child16560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3379_skip, output16560_skip]
  kernel_rfl

theorem node16562_cond_eq
    (child3368 : Flapjack.WordAlloc.removeDeadStructural input3368 value1688 value1 value2 = (output3368, value1688, value1))
    (child16561 : Flapjack.WordAlloc.removeDeadStructural input16561 value1688 value1 value2 = (output16561, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16562 value1688 value1 value2 = (output16562, value6896, value1) := by
  rw [input16562_def, output16562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3368]
  try dsimp only
  rw [child16561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3368_skip, output16561_skip]
  kernel_rfl

theorem node16563_cond_eq
    (child3367 : Flapjack.WordAlloc.removeDeadStructural input3367 value1687 value1 value2 = (output3367, value1688, value1))
    (child16562 : Flapjack.WordAlloc.removeDeadStructural input16562 value1688 value1 value2 = (output16562, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16563 value1687 value1 value2 = (output16563, value6896, value1) := by
  rw [input16563_def, output16563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3367]
  try dsimp only
  rw [child16562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3367_skip, output16562_skip]
  kernel_rfl

theorem node16564_cond_eq
    (child3366 : Flapjack.WordAlloc.removeDeadStructural input3366 value5 value1 value2 = (output3366, value1687, value1))
    (child16563 : Flapjack.WordAlloc.removeDeadStructural input16563 value1687 value1 value2 = (output16563, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16564 value5 value1 value2 = (output16564, value6896, value1) := by
  rw [input16564_def, output16564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3366]
  try dsimp only
  rw [child16563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3366_skip, output16563_skip]
  kernel_rfl

theorem node16565_cond_eq
    (child3363 : Flapjack.WordAlloc.removeDeadStructural input3363 value1680 value1 value2 = (output3363, value5, value1))
    (child16564 : Flapjack.WordAlloc.removeDeadStructural input16564 value5 value1 value2 = (output16564, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16565 value1680 value1 value2 = (output16565, value6896, value1) := by
  rw [input16565_def, output16565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3363]
  try dsimp only
  rw [child16564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3363_skip, output16564_skip]
  kernel_rfl

theorem node16566_cond_eq
    (child3352 : Flapjack.WordAlloc.removeDeadStructural input3352 value1680 value1 value2 = (output3352, value1680, value1))
    (child16565 : Flapjack.WordAlloc.removeDeadStructural input16565 value1680 value1 value2 = (output16565, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16566 value1680 value1 value2 = (output16566, value6896, value1) := by
  rw [input16566_def, output16566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3352]
  try dsimp only
  rw [child16565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3352_skip, output16565_skip]
  kernel_rfl

theorem node16567_cond_eq
    (child3351 : Flapjack.WordAlloc.removeDeadStructural input3351 value1679 value1 value2 = (output3351, value1680, value1))
    (child16566 : Flapjack.WordAlloc.removeDeadStructural input16566 value1680 value1 value2 = (output16566, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16567 value1679 value1 value2 = (output16567, value6896, value1) := by
  rw [input16567_def, output16567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3351]
  try dsimp only
  rw [child16566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3351_skip, output16566_skip]
  kernel_rfl

theorem node16568_cond_eq
    (child3350 : Flapjack.WordAlloc.removeDeadStructural input3350 value5 value1 value2 = (output3350, value1679, value1))
    (child16567 : Flapjack.WordAlloc.removeDeadStructural input16567 value1679 value1 value2 = (output16567, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16568 value5 value1 value2 = (output16568, value6896, value1) := by
  rw [input16568_def, output16568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3350]
  try dsimp only
  rw [child16567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3350_skip, output16567_skip]
  kernel_rfl

theorem node16569_cond_eq
    (child3347 : Flapjack.WordAlloc.removeDeadStructural input3347 value1672 value1 value2 = (output3347, value5, value1))
    (child16568 : Flapjack.WordAlloc.removeDeadStructural input16568 value5 value1 value2 = (output16568, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16569 value1672 value1 value2 = (output16569, value6896, value1) := by
  rw [input16569_def, output16569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3347]
  try dsimp only
  rw [child16568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3347_skip, output16568_skip]
  kernel_rfl

theorem node16570_cond_eq
    (child3336 : Flapjack.WordAlloc.removeDeadStructural input3336 value1672 value1 value2 = (output3336, value1672, value1))
    (child16569 : Flapjack.WordAlloc.removeDeadStructural input16569 value1672 value1 value2 = (output16569, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16570 value1672 value1 value2 = (output16570, value6896, value1) := by
  rw [input16570_def, output16570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3336]
  try dsimp only
  rw [child16569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3336_skip, output16569_skip]
  kernel_rfl

theorem node16571_cond_eq
    (child3335 : Flapjack.WordAlloc.removeDeadStructural input3335 value1671 value1 value2 = (output3335, value1672, value1))
    (child16570 : Flapjack.WordAlloc.removeDeadStructural input16570 value1672 value1 value2 = (output16570, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16571 value1671 value1 value2 = (output16571, value6896, value1) := by
  rw [input16571_def, output16571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3335]
  try dsimp only
  rw [child16570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3335_skip, output16570_skip]
  kernel_rfl

theorem node16572_cond_eq
    (child3334 : Flapjack.WordAlloc.removeDeadStructural input3334 value5 value1 value2 = (output3334, value1671, value1))
    (child16571 : Flapjack.WordAlloc.removeDeadStructural input16571 value1671 value1 value2 = (output16571, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16572 value5 value1 value2 = (output16572, value6896, value1) := by
  rw [input16572_def, output16572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3334]
  try dsimp only
  rw [child16571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3334_skip, output16571_skip]
  kernel_rfl

theorem node16573_cond_eq
    (child3331 : Flapjack.WordAlloc.removeDeadStructural input3331 value1664 value1 value2 = (output3331, value5, value1))
    (child16572 : Flapjack.WordAlloc.removeDeadStructural input16572 value5 value1 value2 = (output16572, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16573 value1664 value1 value2 = (output16573, value6896, value1) := by
  rw [input16573_def, output16573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3331]
  try dsimp only
  rw [child16572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3331_skip, output16572_skip]
  kernel_rfl

theorem node16574_cond_eq
    (child3320 : Flapjack.WordAlloc.removeDeadStructural input3320 value1664 value1 value2 = (output3320, value1664, value1))
    (child16573 : Flapjack.WordAlloc.removeDeadStructural input16573 value1664 value1 value2 = (output16573, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16574 value1664 value1 value2 = (output16574, value6896, value1) := by
  rw [input16574_def, output16574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3320]
  try dsimp only
  rw [child16573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3320_skip, output16573_skip]
  kernel_rfl

theorem node16575_cond_eq
    (child3319 : Flapjack.WordAlloc.removeDeadStructural input3319 value1663 value1 value2 = (output3319, value1664, value1))
    (child16574 : Flapjack.WordAlloc.removeDeadStructural input16574 value1664 value1 value2 = (output16574, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16575 value1663 value1 value2 = (output16575, value6896, value1) := by
  rw [input16575_def, output16575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3319]
  try dsimp only
  rw [child16574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3319_skip, output16574_skip]
  kernel_rfl

theorem node16576_cond_eq
    (child3318 : Flapjack.WordAlloc.removeDeadStructural input3318 value5 value1 value2 = (output3318, value1663, value1))
    (child16575 : Flapjack.WordAlloc.removeDeadStructural input16575 value1663 value1 value2 = (output16575, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16576 value5 value1 value2 = (output16576, value6896, value1) := by
  rw [input16576_def, output16576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3318]
  try dsimp only
  rw [child16575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3318_skip, output16575_skip]
  kernel_rfl

theorem node16577_cond_eq
    (child3315 : Flapjack.WordAlloc.removeDeadStructural input3315 value1656 value1 value2 = (output3315, value5, value1))
    (child16576 : Flapjack.WordAlloc.removeDeadStructural input16576 value5 value1 value2 = (output16576, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16577 value1656 value1 value2 = (output16577, value6896, value1) := by
  rw [input16577_def, output16577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3315]
  try dsimp only
  rw [child16576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3315_skip, output16576_skip]
  kernel_rfl

theorem node16578_cond_eq
    (child3304 : Flapjack.WordAlloc.removeDeadStructural input3304 value1656 value1 value2 = (output3304, value1656, value1))
    (child16577 : Flapjack.WordAlloc.removeDeadStructural input16577 value1656 value1 value2 = (output16577, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16578 value1656 value1 value2 = (output16578, value6896, value1) := by
  rw [input16578_def, output16578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3304]
  try dsimp only
  rw [child16577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3304_skip, output16577_skip]
  kernel_rfl

theorem node16579_cond_eq
    (child3303 : Flapjack.WordAlloc.removeDeadStructural input3303 value1655 value1 value2 = (output3303, value1656, value1))
    (child16578 : Flapjack.WordAlloc.removeDeadStructural input16578 value1656 value1 value2 = (output16578, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16579 value1655 value1 value2 = (output16579, value6896, value1) := by
  rw [input16579_def, output16579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3303]
  try dsimp only
  rw [child16578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3303_skip, output16578_skip]
  kernel_rfl

theorem node16580_cond_eq
    (child3302 : Flapjack.WordAlloc.removeDeadStructural input3302 value5 value1 value2 = (output3302, value1655, value1))
    (child16579 : Flapjack.WordAlloc.removeDeadStructural input16579 value1655 value1 value2 = (output16579, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16580 value5 value1 value2 = (output16580, value6896, value1) := by
  rw [input16580_def, output16580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3302]
  try dsimp only
  rw [child16579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3302_skip, output16579_skip]
  kernel_rfl

theorem node16581_cond_eq
    (child3299 : Flapjack.WordAlloc.removeDeadStructural input3299 value1648 value1 value2 = (output3299, value5, value1))
    (child16580 : Flapjack.WordAlloc.removeDeadStructural input16580 value5 value1 value2 = (output16580, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16581 value1648 value1 value2 = (output16581, value6896, value1) := by
  rw [input16581_def, output16581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3299]
  try dsimp only
  rw [child16580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3299_skip, output16580_skip]
  kernel_rfl

theorem node16582_cond_eq
    (child3288 : Flapjack.WordAlloc.removeDeadStructural input3288 value1648 value1 value2 = (output3288, value1648, value1))
    (child16581 : Flapjack.WordAlloc.removeDeadStructural input16581 value1648 value1 value2 = (output16581, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16582 value1648 value1 value2 = (output16582, value6896, value1) := by
  rw [input16582_def, output16582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3288]
  try dsimp only
  rw [child16581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3288_skip, output16581_skip]
  kernel_rfl

theorem node16583_cond_eq
    (child3287 : Flapjack.WordAlloc.removeDeadStructural input3287 value1647 value1 value2 = (output3287, value1648, value1))
    (child16582 : Flapjack.WordAlloc.removeDeadStructural input16582 value1648 value1 value2 = (output16582, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16583 value1647 value1 value2 = (output16583, value6896, value1) := by
  rw [input16583_def, output16583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3287]
  try dsimp only
  rw [child16582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3287_skip, output16582_skip]
  kernel_rfl

theorem node16584_cond_eq
    (child3286 : Flapjack.WordAlloc.removeDeadStructural input3286 value5 value1 value2 = (output3286, value1647, value1))
    (child16583 : Flapjack.WordAlloc.removeDeadStructural input16583 value1647 value1 value2 = (output16583, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16584 value5 value1 value2 = (output16584, value6896, value1) := by
  rw [input16584_def, output16584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3286]
  try dsimp only
  rw [child16583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3286_skip, output16583_skip]
  kernel_rfl

theorem node16585_cond_eq
    (child3283 : Flapjack.WordAlloc.removeDeadStructural input3283 value1640 value1 value2 = (output3283, value5, value1))
    (child16584 : Flapjack.WordAlloc.removeDeadStructural input16584 value5 value1 value2 = (output16584, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16585 value1640 value1 value2 = (output16585, value6896, value1) := by
  rw [input16585_def, output16585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3283]
  try dsimp only
  rw [child16584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3283_skip, output16584_skip]
  kernel_rfl

theorem node16586_cond_eq
    (child3272 : Flapjack.WordAlloc.removeDeadStructural input3272 value1640 value1 value2 = (output3272, value1640, value1))
    (child16585 : Flapjack.WordAlloc.removeDeadStructural input16585 value1640 value1 value2 = (output16585, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16586 value1640 value1 value2 = (output16586, value6896, value1) := by
  rw [input16586_def, output16586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3272]
  try dsimp only
  rw [child16585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3272_skip, output16585_skip]
  kernel_rfl

theorem node16587_cond_eq
    (child3271 : Flapjack.WordAlloc.removeDeadStructural input3271 value1639 value1 value2 = (output3271, value1640, value1))
    (child16586 : Flapjack.WordAlloc.removeDeadStructural input16586 value1640 value1 value2 = (output16586, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16587 value1639 value1 value2 = (output16587, value6896, value1) := by
  rw [input16587_def, output16587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3271]
  try dsimp only
  rw [child16586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3271_skip, output16586_skip]
  kernel_rfl

theorem node16588_cond_eq
    (child3270 : Flapjack.WordAlloc.removeDeadStructural input3270 value5 value1 value2 = (output3270, value1639, value1))
    (child16587 : Flapjack.WordAlloc.removeDeadStructural input16587 value1639 value1 value2 = (output16587, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16588 value5 value1 value2 = (output16588, value6896, value1) := by
  rw [input16588_def, output16588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3270]
  try dsimp only
  rw [child16587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3270_skip, output16587_skip]
  kernel_rfl

theorem node16589_cond_eq
    (child3267 : Flapjack.WordAlloc.removeDeadStructural input3267 value1632 value1 value2 = (output3267, value5, value1))
    (child16588 : Flapjack.WordAlloc.removeDeadStructural input16588 value5 value1 value2 = (output16588, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16589 value1632 value1 value2 = (output16589, value6896, value1) := by
  rw [input16589_def, output16589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3267]
  try dsimp only
  rw [child16588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3267_skip, output16588_skip]
  kernel_rfl

theorem node16590_cond_eq
    (child3256 : Flapjack.WordAlloc.removeDeadStructural input3256 value1632 value1 value2 = (output3256, value1632, value1))
    (child16589 : Flapjack.WordAlloc.removeDeadStructural input16589 value1632 value1 value2 = (output16589, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16590 value1632 value1 value2 = (output16590, value6896, value1) := by
  rw [input16590_def, output16590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3256]
  try dsimp only
  rw [child16589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3256_skip, output16589_skip]
  kernel_rfl

theorem node16591_cond_eq
    (child3255 : Flapjack.WordAlloc.removeDeadStructural input3255 value1631 value1 value2 = (output3255, value1632, value1))
    (child16590 : Flapjack.WordAlloc.removeDeadStructural input16590 value1632 value1 value2 = (output16590, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16591 value1631 value1 value2 = (output16591, value6896, value1) := by
  rw [input16591_def, output16591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3255]
  try dsimp only
  rw [child16590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3255_skip, output16590_skip]
  kernel_rfl

theorem node16592_cond_eq
    (child3254 : Flapjack.WordAlloc.removeDeadStructural input3254 value5 value1 value2 = (output3254, value1631, value1))
    (child16591 : Flapjack.WordAlloc.removeDeadStructural input16591 value1631 value1 value2 = (output16591, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16592 value5 value1 value2 = (output16592, value6896, value1) := by
  rw [input16592_def, output16592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3254]
  try dsimp only
  rw [child16591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3254_skip, output16591_skip]
  kernel_rfl

theorem node16593_cond_eq
    (child3251 : Flapjack.WordAlloc.removeDeadStructural input3251 value1624 value1 value2 = (output3251, value5, value1))
    (child16592 : Flapjack.WordAlloc.removeDeadStructural input16592 value5 value1 value2 = (output16592, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16593 value1624 value1 value2 = (output16593, value6896, value1) := by
  rw [input16593_def, output16593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3251]
  try dsimp only
  rw [child16592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3251_skip, output16592_skip]
  kernel_rfl

theorem node16594_cond_eq
    (child3240 : Flapjack.WordAlloc.removeDeadStructural input3240 value1624 value1 value2 = (output3240, value1624, value1))
    (child16593 : Flapjack.WordAlloc.removeDeadStructural input16593 value1624 value1 value2 = (output16593, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16594 value1624 value1 value2 = (output16594, value6896, value1) := by
  rw [input16594_def, output16594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3240]
  try dsimp only
  rw [child16593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3240_skip, output16593_skip]
  kernel_rfl

theorem node16595_cond_eq
    (child3239 : Flapjack.WordAlloc.removeDeadStructural input3239 value1623 value1 value2 = (output3239, value1624, value1))
    (child16594 : Flapjack.WordAlloc.removeDeadStructural input16594 value1624 value1 value2 = (output16594, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16595 value1623 value1 value2 = (output16595, value6896, value1) := by
  rw [input16595_def, output16595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3239]
  try dsimp only
  rw [child16594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3239_skip, output16594_skip]
  kernel_rfl

theorem node16596_cond_eq
    (child3238 : Flapjack.WordAlloc.removeDeadStructural input3238 value5 value1 value2 = (output3238, value1623, value1))
    (child16595 : Flapjack.WordAlloc.removeDeadStructural input16595 value1623 value1 value2 = (output16595, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16596 value5 value1 value2 = (output16596, value6896, value1) := by
  rw [input16596_def, output16596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3238]
  try dsimp only
  rw [child16595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3238_skip, output16595_skip]
  kernel_rfl

theorem node16597_cond_eq
    (child3235 : Flapjack.WordAlloc.removeDeadStructural input3235 value1616 value1 value2 = (output3235, value5, value1))
    (child16596 : Flapjack.WordAlloc.removeDeadStructural input16596 value5 value1 value2 = (output16596, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16597 value1616 value1 value2 = (output16597, value6896, value1) := by
  rw [input16597_def, output16597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3235]
  try dsimp only
  rw [child16596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3235_skip, output16596_skip]
  kernel_rfl

theorem node16598_cond_eq
    (child3224 : Flapjack.WordAlloc.removeDeadStructural input3224 value1616 value1 value2 = (output3224, value1616, value1))
    (child16597 : Flapjack.WordAlloc.removeDeadStructural input16597 value1616 value1 value2 = (output16597, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16598 value1616 value1 value2 = (output16598, value6896, value1) := by
  rw [input16598_def, output16598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3224]
  try dsimp only
  rw [child16597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3224_skip, output16597_skip]
  kernel_rfl

theorem node16599_cond_eq
    (child3223 : Flapjack.WordAlloc.removeDeadStructural input3223 value1615 value1 value2 = (output3223, value1616, value1))
    (child16598 : Flapjack.WordAlloc.removeDeadStructural input16598 value1616 value1 value2 = (output16598, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16599 value1615 value1 value2 = (output16599, value6896, value1) := by
  rw [input16599_def, output16599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3223]
  try dsimp only
  rw [child16598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3223_skip, output16598_skip]
  kernel_rfl

theorem node16600_cond_eq
    (child3222 : Flapjack.WordAlloc.removeDeadStructural input3222 value5 value1 value2 = (output3222, value1615, value1))
    (child16599 : Flapjack.WordAlloc.removeDeadStructural input16599 value1615 value1 value2 = (output16599, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16600 value5 value1 value2 = (output16600, value6896, value1) := by
  rw [input16600_def, output16600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3222]
  try dsimp only
  rw [child16599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3222_skip, output16599_skip]
  kernel_rfl

theorem node16601_cond_eq
    (child3219 : Flapjack.WordAlloc.removeDeadStructural input3219 value1608 value1 value2 = (output3219, value5, value1))
    (child16600 : Flapjack.WordAlloc.removeDeadStructural input16600 value5 value1 value2 = (output16600, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16601 value1608 value1 value2 = (output16601, value6896, value1) := by
  rw [input16601_def, output16601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3219]
  try dsimp only
  rw [child16600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3219_skip, output16600_skip]
  kernel_rfl

theorem node16602_cond_eq
    (child3208 : Flapjack.WordAlloc.removeDeadStructural input3208 value1608 value1 value2 = (output3208, value1608, value1))
    (child16601 : Flapjack.WordAlloc.removeDeadStructural input16601 value1608 value1 value2 = (output16601, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16602 value1608 value1 value2 = (output16602, value6896, value1) := by
  rw [input16602_def, output16602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3208]
  try dsimp only
  rw [child16601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3208_skip, output16601_skip]
  kernel_rfl

theorem node16603_cond_eq
    (child3207 : Flapjack.WordAlloc.removeDeadStructural input3207 value1607 value1 value2 = (output3207, value1608, value1))
    (child16602 : Flapjack.WordAlloc.removeDeadStructural input16602 value1608 value1 value2 = (output16602, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16603 value1607 value1 value2 = (output16603, value6896, value1) := by
  rw [input16603_def, output16603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3207]
  try dsimp only
  rw [child16602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3207_skip, output16602_skip]
  kernel_rfl

theorem node16604_cond_eq
    (child3206 : Flapjack.WordAlloc.removeDeadStructural input3206 value5 value1 value2 = (output3206, value1607, value1))
    (child16603 : Flapjack.WordAlloc.removeDeadStructural input16603 value1607 value1 value2 = (output16603, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16604 value5 value1 value2 = (output16604, value6896, value1) := by
  rw [input16604_def, output16604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3206]
  try dsimp only
  rw [child16603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3206_skip, output16603_skip]
  kernel_rfl

theorem node16605_cond_eq
    (child3203 : Flapjack.WordAlloc.removeDeadStructural input3203 value1600 value1 value2 = (output3203, value5, value1))
    (child16604 : Flapjack.WordAlloc.removeDeadStructural input16604 value5 value1 value2 = (output16604, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16605 value1600 value1 value2 = (output16605, value6896, value1) := by
  rw [input16605_def, output16605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3203]
  try dsimp only
  rw [child16604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3203_skip, output16604_skip]
  kernel_rfl

theorem node16606_cond_eq
    (child3192 : Flapjack.WordAlloc.removeDeadStructural input3192 value1600 value1 value2 = (output3192, value1600, value1))
    (child16605 : Flapjack.WordAlloc.removeDeadStructural input16605 value1600 value1 value2 = (output16605, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16606 value1600 value1 value2 = (output16606, value6896, value1) := by
  rw [input16606_def, output16606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3192]
  try dsimp only
  rw [child16605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3192_skip, output16605_skip]
  kernel_rfl

theorem node16607_cond_eq
    (child3191 : Flapjack.WordAlloc.removeDeadStructural input3191 value1599 value1 value2 = (output3191, value1600, value1))
    (child16606 : Flapjack.WordAlloc.removeDeadStructural input16606 value1600 value1 value2 = (output16606, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16607 value1599 value1 value2 = (output16607, value6896, value1) := by
  rw [input16607_def, output16607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3191]
  try dsimp only
  rw [child16606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3191_skip, output16606_skip]
  kernel_rfl

theorem node16608_cond_eq
    (child3190 : Flapjack.WordAlloc.removeDeadStructural input3190 value5 value1 value2 = (output3190, value1599, value1))
    (child16607 : Flapjack.WordAlloc.removeDeadStructural input16607 value1599 value1 value2 = (output16607, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16608 value5 value1 value2 = (output16608, value6896, value1) := by
  rw [input16608_def, output16608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3190]
  try dsimp only
  rw [child16607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3190_skip, output16607_skip]
  kernel_rfl

theorem node16609_cond_eq
    (child3187 : Flapjack.WordAlloc.removeDeadStructural input3187 value1592 value1 value2 = (output3187, value5, value1))
    (child16608 : Flapjack.WordAlloc.removeDeadStructural input16608 value5 value1 value2 = (output16608, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16609 value1592 value1 value2 = (output16609, value6896, value1) := by
  rw [input16609_def, output16609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3187]
  try dsimp only
  rw [child16608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3187_skip, output16608_skip]
  kernel_rfl

theorem node16610_cond_eq
    (child3176 : Flapjack.WordAlloc.removeDeadStructural input3176 value1592 value1 value2 = (output3176, value1592, value1))
    (child16609 : Flapjack.WordAlloc.removeDeadStructural input16609 value1592 value1 value2 = (output16609, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16610 value1592 value1 value2 = (output16610, value6896, value1) := by
  rw [input16610_def, output16610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3176]
  try dsimp only
  rw [child16609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3176_skip, output16609_skip]
  kernel_rfl

theorem node16611_cond_eq
    (child3175 : Flapjack.WordAlloc.removeDeadStructural input3175 value1591 value1 value2 = (output3175, value1592, value1))
    (child16610 : Flapjack.WordAlloc.removeDeadStructural input16610 value1592 value1 value2 = (output16610, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16611 value1591 value1 value2 = (output16611, value6896, value1) := by
  rw [input16611_def, output16611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3175]
  try dsimp only
  rw [child16610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3175_skip, output16610_skip]
  kernel_rfl

theorem node16612_cond_eq
    (child3174 : Flapjack.WordAlloc.removeDeadStructural input3174 value5 value1 value2 = (output3174, value1591, value1))
    (child16611 : Flapjack.WordAlloc.removeDeadStructural input16611 value1591 value1 value2 = (output16611, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16612 value5 value1 value2 = (output16612, value6896, value1) := by
  rw [input16612_def, output16612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3174]
  try dsimp only
  rw [child16611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3174_skip, output16611_skip]
  kernel_rfl

theorem node16613_cond_eq
    (child3171 : Flapjack.WordAlloc.removeDeadStructural input3171 value1584 value1 value2 = (output3171, value5, value1))
    (child16612 : Flapjack.WordAlloc.removeDeadStructural input16612 value5 value1 value2 = (output16612, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16613 value1584 value1 value2 = (output16613, value6896, value1) := by
  rw [input16613_def, output16613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3171]
  try dsimp only
  rw [child16612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3171_skip, output16612_skip]
  kernel_rfl

theorem node16614_cond_eq
    (child3160 : Flapjack.WordAlloc.removeDeadStructural input3160 value1584 value1 value2 = (output3160, value1584, value1))
    (child16613 : Flapjack.WordAlloc.removeDeadStructural input16613 value1584 value1 value2 = (output16613, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16614 value1584 value1 value2 = (output16614, value6896, value1) := by
  rw [input16614_def, output16614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3160]
  try dsimp only
  rw [child16613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3160_skip, output16613_skip]
  kernel_rfl

theorem node16615_cond_eq
    (child3159 : Flapjack.WordAlloc.removeDeadStructural input3159 value1583 value1 value2 = (output3159, value1584, value1))
    (child16614 : Flapjack.WordAlloc.removeDeadStructural input16614 value1584 value1 value2 = (output16614, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16615 value1583 value1 value2 = (output16615, value6896, value1) := by
  rw [input16615_def, output16615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3159]
  try dsimp only
  rw [child16614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3159_skip, output16614_skip]
  kernel_rfl

theorem node16616_cond_eq
    (child3158 : Flapjack.WordAlloc.removeDeadStructural input3158 value5 value1 value2 = (output3158, value1583, value1))
    (child16615 : Flapjack.WordAlloc.removeDeadStructural input16615 value1583 value1 value2 = (output16615, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16616 value5 value1 value2 = (output16616, value6896, value1) := by
  rw [input16616_def, output16616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3158]
  try dsimp only
  rw [child16615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3158_skip, output16615_skip]
  kernel_rfl

theorem node16617_cond_eq
    (child3155 : Flapjack.WordAlloc.removeDeadStructural input3155 value1576 value1 value2 = (output3155, value5, value1))
    (child16616 : Flapjack.WordAlloc.removeDeadStructural input16616 value5 value1 value2 = (output16616, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16617 value1576 value1 value2 = (output16617, value6896, value1) := by
  rw [input16617_def, output16617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3155]
  try dsimp only
  rw [child16616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3155_skip, output16616_skip]
  kernel_rfl

theorem node16618_cond_eq
    (child3144 : Flapjack.WordAlloc.removeDeadStructural input3144 value1576 value1 value2 = (output3144, value1576, value1))
    (child16617 : Flapjack.WordAlloc.removeDeadStructural input16617 value1576 value1 value2 = (output16617, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16618 value1576 value1 value2 = (output16618, value6896, value1) := by
  rw [input16618_def, output16618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3144]
  try dsimp only
  rw [child16617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3144_skip, output16617_skip]
  kernel_rfl

theorem node16619_cond_eq
    (child3143 : Flapjack.WordAlloc.removeDeadStructural input3143 value1575 value1 value2 = (output3143, value1576, value1))
    (child16618 : Flapjack.WordAlloc.removeDeadStructural input16618 value1576 value1 value2 = (output16618, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16619 value1575 value1 value2 = (output16619, value6896, value1) := by
  rw [input16619_def, output16619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3143]
  try dsimp only
  rw [child16618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3143_skip, output16618_skip]
  kernel_rfl

theorem node16620_cond_eq
    (child3142 : Flapjack.WordAlloc.removeDeadStructural input3142 value5 value1 value2 = (output3142, value1575, value1))
    (child16619 : Flapjack.WordAlloc.removeDeadStructural input16619 value1575 value1 value2 = (output16619, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16620 value5 value1 value2 = (output16620, value6896, value1) := by
  rw [input16620_def, output16620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3142]
  try dsimp only
  rw [child16619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3142_skip, output16619_skip]
  kernel_rfl

theorem node16621_cond_eq
    (child3139 : Flapjack.WordAlloc.removeDeadStructural input3139 value1568 value1 value2 = (output3139, value5, value1))
    (child16620 : Flapjack.WordAlloc.removeDeadStructural input16620 value5 value1 value2 = (output16620, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16621 value1568 value1 value2 = (output16621, value6896, value1) := by
  rw [input16621_def, output16621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3139]
  try dsimp only
  rw [child16620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3139_skip, output16620_skip]
  kernel_rfl

theorem node16622_cond_eq
    (child3128 : Flapjack.WordAlloc.removeDeadStructural input3128 value1568 value1 value2 = (output3128, value1568, value1))
    (child16621 : Flapjack.WordAlloc.removeDeadStructural input16621 value1568 value1 value2 = (output16621, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16622 value1568 value1 value2 = (output16622, value6896, value1) := by
  rw [input16622_def, output16622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3128]
  try dsimp only
  rw [child16621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3128_skip, output16621_skip]
  kernel_rfl

theorem node16623_cond_eq
    (child3127 : Flapjack.WordAlloc.removeDeadStructural input3127 value1567 value1 value2 = (output3127, value1568, value1))
    (child16622 : Flapjack.WordAlloc.removeDeadStructural input16622 value1568 value1 value2 = (output16622, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16623 value1567 value1 value2 = (output16623, value6896, value1) := by
  rw [input16623_def, output16623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3127]
  try dsimp only
  rw [child16622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3127_skip, output16622_skip]
  kernel_rfl

theorem node16624_cond_eq
    (child3126 : Flapjack.WordAlloc.removeDeadStructural input3126 value5 value1 value2 = (output3126, value1567, value1))
    (child16623 : Flapjack.WordAlloc.removeDeadStructural input16623 value1567 value1 value2 = (output16623, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16624 value5 value1 value2 = (output16624, value6896, value1) := by
  rw [input16624_def, output16624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3126]
  try dsimp only
  rw [child16623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3126_skip, output16623_skip]
  kernel_rfl

theorem node16625_cond_eq
    (child3123 : Flapjack.WordAlloc.removeDeadStructural input3123 value1560 value1 value2 = (output3123, value5, value1))
    (child16624 : Flapjack.WordAlloc.removeDeadStructural input16624 value5 value1 value2 = (output16624, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16625 value1560 value1 value2 = (output16625, value6896, value1) := by
  rw [input16625_def, output16625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3123]
  try dsimp only
  rw [child16624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3123_skip, output16624_skip]
  kernel_rfl

theorem node16626_cond_eq
    (child3112 : Flapjack.WordAlloc.removeDeadStructural input3112 value1560 value1 value2 = (output3112, value1560, value1))
    (child16625 : Flapjack.WordAlloc.removeDeadStructural input16625 value1560 value1 value2 = (output16625, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16626 value1560 value1 value2 = (output16626, value6896, value1) := by
  rw [input16626_def, output16626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3112]
  try dsimp only
  rw [child16625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3112_skip, output16625_skip]
  kernel_rfl

theorem node16627_cond_eq
    (child3111 : Flapjack.WordAlloc.removeDeadStructural input3111 value1559 value1 value2 = (output3111, value1560, value1))
    (child16626 : Flapjack.WordAlloc.removeDeadStructural input16626 value1560 value1 value2 = (output16626, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16627 value1559 value1 value2 = (output16627, value6896, value1) := by
  rw [input16627_def, output16627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3111]
  try dsimp only
  rw [child16626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3111_skip, output16626_skip]
  kernel_rfl

theorem node16628_cond_eq
    (child3110 : Flapjack.WordAlloc.removeDeadStructural input3110 value5 value1 value2 = (output3110, value1559, value1))
    (child16627 : Flapjack.WordAlloc.removeDeadStructural input16627 value1559 value1 value2 = (output16627, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16628 value5 value1 value2 = (output16628, value6896, value1) := by
  rw [input16628_def, output16628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3110]
  try dsimp only
  rw [child16627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3110_skip, output16627_skip]
  kernel_rfl

theorem node16629_cond_eq
    (child3107 : Flapjack.WordAlloc.removeDeadStructural input3107 value1552 value1 value2 = (output3107, value5, value1))
    (child16628 : Flapjack.WordAlloc.removeDeadStructural input16628 value5 value1 value2 = (output16628, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16629 value1552 value1 value2 = (output16629, value6896, value1) := by
  rw [input16629_def, output16629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3107]
  try dsimp only
  rw [child16628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3107_skip, output16628_skip]
  kernel_rfl

theorem node16630_cond_eq
    (child3096 : Flapjack.WordAlloc.removeDeadStructural input3096 value1552 value1 value2 = (output3096, value1552, value1))
    (child16629 : Flapjack.WordAlloc.removeDeadStructural input16629 value1552 value1 value2 = (output16629, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16630 value1552 value1 value2 = (output16630, value6896, value1) := by
  rw [input16630_def, output16630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3096]
  try dsimp only
  rw [child16629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3096_skip, output16629_skip]
  kernel_rfl

theorem node16631_cond_eq
    (child3095 : Flapjack.WordAlloc.removeDeadStructural input3095 value1551 value1 value2 = (output3095, value1552, value1))
    (child16630 : Flapjack.WordAlloc.removeDeadStructural input16630 value1552 value1 value2 = (output16630, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16631 value1551 value1 value2 = (output16631, value6896, value1) := by
  rw [input16631_def, output16631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3095]
  try dsimp only
  rw [child16630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3095_skip, output16630_skip]
  kernel_rfl

theorem node16632_cond_eq
    (child3094 : Flapjack.WordAlloc.removeDeadStructural input3094 value5 value1 value2 = (output3094, value1551, value1))
    (child16631 : Flapjack.WordAlloc.removeDeadStructural input16631 value1551 value1 value2 = (output16631, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16632 value5 value1 value2 = (output16632, value6896, value1) := by
  rw [input16632_def, output16632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3094]
  try dsimp only
  rw [child16631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3094_skip, output16631_skip]
  kernel_rfl

theorem node16633_cond_eq
    (child3091 : Flapjack.WordAlloc.removeDeadStructural input3091 value1544 value1 value2 = (output3091, value5, value1))
    (child16632 : Flapjack.WordAlloc.removeDeadStructural input16632 value5 value1 value2 = (output16632, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16633 value1544 value1 value2 = (output16633, value6896, value1) := by
  rw [input16633_def, output16633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3091]
  try dsimp only
  rw [child16632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3091_skip, output16632_skip]
  kernel_rfl

theorem node16634_cond_eq
    (child3080 : Flapjack.WordAlloc.removeDeadStructural input3080 value1544 value1 value2 = (output3080, value1544, value1))
    (child16633 : Flapjack.WordAlloc.removeDeadStructural input16633 value1544 value1 value2 = (output16633, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16634 value1544 value1 value2 = (output16634, value6896, value1) := by
  rw [input16634_def, output16634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3080]
  try dsimp only
  rw [child16633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3080_skip, output16633_skip]
  kernel_rfl

theorem node16635_cond_eq
    (child3079 : Flapjack.WordAlloc.removeDeadStructural input3079 value1543 value1 value2 = (output3079, value1544, value1))
    (child16634 : Flapjack.WordAlloc.removeDeadStructural input16634 value1544 value1 value2 = (output16634, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16635 value1543 value1 value2 = (output16635, value6896, value1) := by
  rw [input16635_def, output16635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3079]
  try dsimp only
  rw [child16634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3079_skip, output16634_skip]
  kernel_rfl

theorem node16636_cond_eq
    (child3078 : Flapjack.WordAlloc.removeDeadStructural input3078 value5 value1 value2 = (output3078, value1543, value1))
    (child16635 : Flapjack.WordAlloc.removeDeadStructural input16635 value1543 value1 value2 = (output16635, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16636 value5 value1 value2 = (output16636, value6896, value1) := by
  rw [input16636_def, output16636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3078]
  try dsimp only
  rw [child16635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3078_skip, output16635_skip]
  kernel_rfl

theorem node16637_cond_eq
    (child3075 : Flapjack.WordAlloc.removeDeadStructural input3075 value1536 value1 value2 = (output3075, value5, value1))
    (child16636 : Flapjack.WordAlloc.removeDeadStructural input16636 value5 value1 value2 = (output16636, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16637 value1536 value1 value2 = (output16637, value6896, value1) := by
  rw [input16637_def, output16637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3075]
  try dsimp only
  rw [child16636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3075_skip, output16636_skip]
  kernel_rfl

theorem node16638_cond_eq
    (child3064 : Flapjack.WordAlloc.removeDeadStructural input3064 value1536 value1 value2 = (output3064, value1536, value1))
    (child16637 : Flapjack.WordAlloc.removeDeadStructural input16637 value1536 value1 value2 = (output16637, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16638 value1536 value1 value2 = (output16638, value6896, value1) := by
  rw [input16638_def, output16638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3064]
  try dsimp only
  rw [child16637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3064_skip, output16637_skip]
  kernel_rfl

theorem node16639_cond_eq
    (child3063 : Flapjack.WordAlloc.removeDeadStructural input3063 value1535 value1 value2 = (output3063, value1536, value1))
    (child16638 : Flapjack.WordAlloc.removeDeadStructural input16638 value1536 value1 value2 = (output16638, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16639 value1535 value1 value2 = (output16639, value6896, value1) := by
  rw [input16639_def, output16639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3063]
  try dsimp only
  rw [child16638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3063_skip, output16638_skip]
  kernel_rfl

#print axioms node16639_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
