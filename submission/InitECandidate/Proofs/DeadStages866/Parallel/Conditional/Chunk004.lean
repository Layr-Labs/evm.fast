import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages866.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages866.Parallel
theorem node1024_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value423 value1 value2 = (output756, value425, value1))
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value425 value1 value2 = (output1023, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1024 value423 value1 value2 = (output1024, value539, value1) := by
  rw [input1024_def, output1024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  try dsimp only
  rw [child1023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output1023_skip]
  kernel_rfl

theorem node1025_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value421 value1 value2 = (output753, value423, value1))
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value423 value1 value2 = (output1024, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1025 value421 value1 value2 = (output1025, value539, value1) := by
  rw [input1025_def, output1025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  try dsimp only
  rw [child1024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output753_skip, output1024_skip]
  kernel_rfl

theorem node1026_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value419 value1 value2 = (output750, value421, value1))
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value421 value1 value2 = (output1025, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1026 value419 value1 value2 = (output1026, value539, value1) := by
  rw [input1026_def, output1026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  try dsimp only
  rw [child1025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output750_skip, output1025_skip]
  kernel_rfl

theorem node1027_cond_eq
    (child747 : Flapjack.WordAlloc.removeDeadStructural input747 value418 value1 value2 = (output747, value419, value1))
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value419 value1 value2 = (output1026, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1027 value418 value1 value2 = (output1027, value539, value1) := by
  rw [input1027_def, output1027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child747]
  try dsimp only
  rw [child1026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output747_skip, output1026_skip]
  kernel_rfl

theorem node1028_cond_eq
    (child746 : Flapjack.WordAlloc.removeDeadStructural input746 value416 value1 value2 = (output746, value418, value1))
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value418 value1 value2 = (output1027, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1028 value416 value1 value2 = (output1028, value539, value1) := by
  rw [input1028_def, output1028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child746]
  try dsimp only
  rw [child1027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output746_skip, output1027_skip]
  kernel_rfl

theorem node1029_cond_eq
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value414 value1 value2 = (output743, value416, value1))
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value416 value1 value2 = (output1028, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1029 value414 value1 value2 = (output1029, value539, value1) := by
  rw [input1029_def, output1029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child743]
  try dsimp only
  rw [child1028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output743_skip, output1028_skip]
  kernel_rfl

theorem node1030_cond_eq
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value412 value1 value2 = (output740, value414, value1))
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value414 value1 value2 = (output1029, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1030 value412 value1 value2 = (output1030, value539, value1) := by
  rw [input1030_def, output1030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child740]
  try dsimp only
  rw [child1029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output740_skip, output1029_skip]
  kernel_rfl

theorem node1031_cond_eq
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value411 value1 value2 = (output737, value412, value1))
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value412 value1 value2 = (output1030, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1031 value411 value1 value2 = (output1031, value539, value1) := by
  rw [input1031_def, output1031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child737]
  try dsimp only
  rw [child1030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output737_skip, output1030_skip]
  kernel_rfl

theorem node1032_cond_eq
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value409 value1 value2 = (output736, value411, value1))
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value411 value1 value2 = (output1031, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1032 value409 value1 value2 = (output1032, value539, value1) := by
  rw [input1032_def, output1032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child736]
  try dsimp only
  rw [child1031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output736_skip, output1031_skip]
  kernel_rfl

theorem node1033_cond_eq
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value407 value1 value2 = (output733, value409, value1))
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value409 value1 value2 = (output1032, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1033 value407 value1 value2 = (output1033, value539, value1) := by
  rw [input1033_def, output1033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child733]
  try dsimp only
  rw [child1032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output733_skip, output1032_skip]
  kernel_rfl

theorem node1034_cond_eq
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value405 value1 value2 = (output730, value407, value1))
    (child1033 : Flapjack.WordAlloc.removeDeadStructural input1033 value407 value1 value2 = (output1033, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1034 value405 value1 value2 = (output1034, value539, value1) := by
  rw [input1034_def, output1034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child730]
  try dsimp only
  rw [child1033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output730_skip, output1033_skip]
  kernel_rfl

theorem node1035_cond_eq
    (child727 : Flapjack.WordAlloc.removeDeadStructural input727 value404 value1 value2 = (output727, value405, value1))
    (child1034 : Flapjack.WordAlloc.removeDeadStructural input1034 value405 value1 value2 = (output1034, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1035 value404 value1 value2 = (output1035, value539, value1) := by
  rw [input1035_def, output1035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child727]
  try dsimp only
  rw [child1034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output727_skip, output1034_skip]
  kernel_rfl

theorem node1036_cond_eq
    (child726 : Flapjack.WordAlloc.removeDeadStructural input726 value402 value1 value2 = (output726, value404, value1))
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value404 value1 value2 = (output1035, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1036 value402 value1 value2 = (output1036, value539, value1) := by
  rw [input1036_def, output1036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child726]
  try dsimp only
  rw [child1035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output726_skip, output1035_skip]
  kernel_rfl

theorem node1037_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value400 value1 value2 = (output723, value402, value1))
    (child1036 : Flapjack.WordAlloc.removeDeadStructural input1036 value402 value1 value2 = (output1036, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1037 value400 value1 value2 = (output1037, value539, value1) := by
  rw [input1037_def, output1037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  try dsimp only
  rw [child1036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output723_skip, output1036_skip]
  kernel_rfl

theorem node1038_cond_eq
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value398 value1 value2 = (output720, value400, value1))
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value400 value1 value2 = (output1037, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1038 value398 value1 value2 = (output1038, value539, value1) := by
  rw [input1038_def, output1038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child720]
  try dsimp only
  rw [child1037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output720_skip, output1037_skip]
  kernel_rfl

theorem node1039_cond_eq
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value397 value1 value2 = (output717, value398, value1))
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value398 value1 value2 = (output1038, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1039 value397 value1 value2 = (output1039, value539, value1) := by
  rw [input1039_def, output1039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child717]
  try dsimp only
  rw [child1038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output717_skip, output1038_skip]
  kernel_rfl

theorem node1040_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value395 value1 value2 = (output716, value397, value1))
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value397 value1 value2 = (output1039, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1040 value395 value1 value2 = (output1040, value539, value1) := by
  rw [input1040_def, output1040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  try dsimp only
  rw [child1039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output716_skip, output1039_skip]
  kernel_rfl

theorem node1041_cond_eq
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value395 value1 value2 = (output713, value395, value1))
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value395 value1 value2 = (output1040, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1041 value395 value1 value2 = (output1041, value539, value1) := by
  rw [input1041_def, output1041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child713]
  try dsimp only
  rw [child1040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output713_skip, output1040_skip]
  kernel_rfl

theorem node1042_cond_eq
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value394 value1 value2 = (output712, value395, value1))
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value395 value1 value2 = (output1041, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1042 value394 value1 value2 = (output1042, value539, value1) := by
  rw [input1042_def, output1042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child712]
  try dsimp only
  rw [child1041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output712_skip, output1041_skip]
  kernel_rfl

theorem node1043_cond_eq
    (child711 : Flapjack.WordAlloc.removeDeadStructural input711 value391 value1 value2 = (output711, value394, value1))
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value394 value1 value2 = (output1042, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1043 value391 value1 value2 = (output1043, value539, value1) := by
  rw [input1043_def, output1043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child711]
  try dsimp only
  rw [child1042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output711_skip, output1042_skip]
  kernel_rfl

theorem node1044_cond_eq
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value391 value1 value2 = (output706, value391, value1))
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value391 value1 value2 = (output1043, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1044 value391 value1 value2 = (output1044, value539, value1) := by
  rw [input1044_def, output1044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child706]
  try dsimp only
  rw [child1043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output706_skip, output1043_skip]
  kernel_rfl

theorem node1045_cond_eq
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value390 value1 value2 = (output705, value391, value1))
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value391 value1 value2 = (output1044, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1045 value390 value1 value2 = (output1045, value539, value1) := by
  rw [input1045_def, output1045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child705]
  try dsimp only
  rw [child1044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output705_skip, output1044_skip]
  kernel_rfl

theorem node1046_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value390 value1 value2 = (output704, value390, value1))
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value390 value1 value2 = (output1045, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1046 value390 value1 value2 = (output1046, value539, value1) := by
  rw [input1046_def, output1046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child1045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output1045_skip]
  kernel_rfl

theorem node1047_cond_eq
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value389 value1 value2 = (output703, value390, value1))
    (child1046 : Flapjack.WordAlloc.removeDeadStructural input1046 value390 value1 value2 = (output1046, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1047 value389 value1 value2 = (output1047, value539, value1) := by
  rw [input1047_def, output1047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child703]
  try dsimp only
  rw [child1046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output703_skip, output1046_skip]
  kernel_rfl

theorem node1048_cond_eq
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value386 value1 value2 = (output702, value389, value1))
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value389 value1 value2 = (output1047, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1048 value386 value1 value2 = (output1048, value539, value1) := by
  rw [input1048_def, output1048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child702]
  try dsimp only
  rw [child1047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output702_skip, output1047_skip]
  kernel_rfl

theorem node1049_cond_eq
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value386 value1 value2 = (output697, value386, value1))
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value386 value1 value2 = (output1048, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1049 value386 value1 value2 = (output1049, value539, value1) := by
  rw [input1049_def, output1049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child697]
  try dsimp only
  rw [child1048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output697_skip, output1048_skip]
  kernel_rfl

theorem node1050_cond_eq
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value384 value1 value2 = (output696, value386, value1))
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value386 value1 value2 = (output1049, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1050 value384 value1 value2 = (output1050, value539, value1) := by
  rw [input1050_def, output1050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child696]
  try dsimp only
  rw [child1049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output696_skip, output1049_skip]
  kernel_rfl

theorem node1051_cond_eq
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value383 value1 value2 = (output693, value384, value1))
    (child1050 : Flapjack.WordAlloc.removeDeadStructural input1050 value384 value1 value2 = (output1050, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1051 value383 value1 value2 = (output1051, value539, value1) := by
  rw [input1051_def, output1051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child693]
  try dsimp only
  rw [child1050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output693_skip, output1050_skip]
  kernel_rfl

theorem node1052_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value382 value1 value2 = (output692, value383, value1))
    (child1051 : Flapjack.WordAlloc.removeDeadStructural input1051 value383 value1 value2 = (output1051, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1052 value382 value1 value2 = (output1052, value539, value1) := by
  rw [input1052_def, output1052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  try dsimp only
  rw [child1051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output1051_skip]
  kernel_rfl

theorem node1053_cond_eq
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value380 value1 value2 = (output691, value382, value1))
    (child1052 : Flapjack.WordAlloc.removeDeadStructural input1052 value382 value1 value2 = (output1052, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1053 value380 value1 value2 = (output1053, value539, value1) := by
  rw [input1053_def, output1053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child691]
  try dsimp only
  rw [child1052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output691_skip, output1052_skip]
  kernel_rfl

theorem node1054_cond_eq
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value378 value1 value2 = (output688, value380, value1))
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value380 value1 value2 = (output1053, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1054 value378 value1 value2 = (output1054, value539, value1) := by
  rw [input1054_def, output1054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child688]
  try dsimp only
  rw [child1053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output688_skip, output1053_skip]
  kernel_rfl

theorem node1055_cond_eq
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value377 value1 value2 = (output685, value378, value1))
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value378 value1 value2 = (output1054, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1055 value377 value1 value2 = (output1055, value539, value1) := by
  rw [input1055_def, output1055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child685]
  try dsimp only
  rw [child1054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output685_skip, output1054_skip]
  kernel_rfl

theorem node1056_cond_eq
    (child684 : Flapjack.WordAlloc.removeDeadStructural input684 value375 value1 value2 = (output684, value377, value1))
    (child1055 : Flapjack.WordAlloc.removeDeadStructural input1055 value377 value1 value2 = (output1055, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1056 value375 value1 value2 = (output1056, value539, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child684]
  try dsimp only
  rw [child1055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output684_skip, output1055_skip]
  kernel_rfl

theorem node1057_cond_eq
    (child681 : Flapjack.WordAlloc.removeDeadStructural input681 value374 value1 value2 = (output681, value375, value1))
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value375 value1 value2 = (output1056, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1057 value374 value1 value2 = (output1057, value539, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child681]
  try dsimp only
  rw [child1056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output681_skip, output1056_skip]
  kernel_rfl

theorem node1058_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value372 value1 value2 = (output680, value374, value1))
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value374 value1 value2 = (output1057, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1058 value372 value1 value2 = (output1058, value539, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child1057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output1057_skip]
  kernel_rfl

theorem node1059_cond_eq
    (child677 : Flapjack.WordAlloc.removeDeadStructural input677 value371 value1 value2 = (output677, value372, value1))
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value372 value1 value2 = (output1058, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1059 value371 value1 value2 = (output1059, value539, value1) := by
  rw [input1059_def, output1059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child677]
  try dsimp only
  rw [child1058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output677_skip, output1058_skip]
  kernel_rfl

theorem node1060_cond_eq
    (child676 : Flapjack.WordAlloc.removeDeadStructural input676 value369 value1 value2 = (output676, value371, value1))
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value371 value1 value2 = (output1059, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1060 value369 value1 value2 = (output1060, value539, value1) := by
  rw [input1060_def, output1060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child676]
  try dsimp only
  rw [child1059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output676_skip, output1059_skip]
  kernel_rfl

theorem node1061_cond_eq
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value368 value1 value2 = (output673, value369, value1))
    (child1060 : Flapjack.WordAlloc.removeDeadStructural input1060 value369 value1 value2 = (output1060, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1061 value368 value1 value2 = (output1061, value539, value1) := by
  rw [input1061_def, output1061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child673]
  try dsimp only
  rw [child1060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output673_skip, output1060_skip]
  kernel_rfl

theorem node1062_cond_eq
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value366 value1 value2 = (output672, value368, value1))
    (child1061 : Flapjack.WordAlloc.removeDeadStructural input1061 value368 value1 value2 = (output1061, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1062 value366 value1 value2 = (output1062, value539, value1) := by
  rw [input1062_def, output1062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child672]
  try dsimp only
  rw [child1061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output672_skip, output1061_skip]
  kernel_rfl

theorem node1063_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value365 value1 value2 = (output669, value366, value1))
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value366 value1 value2 = (output1062, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1063 value365 value1 value2 = (output1063, value539, value1) := by
  rw [input1063_def, output1063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child1062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output1062_skip]
  kernel_rfl

theorem node1064_cond_eq
    (child668 : Flapjack.WordAlloc.removeDeadStructural input668 value363 value1 value2 = (output668, value365, value1))
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value365 value1 value2 = (output1063, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1064 value363 value1 value2 = (output1064, value539, value1) := by
  rw [input1064_def, output1064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child668]
  try dsimp only
  rw [child1063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output668_skip, output1063_skip]
  kernel_rfl

theorem node1065_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value362 value1 value2 = (output665, value363, value1))
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value363 value1 value2 = (output1064, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1065 value362 value1 value2 = (output1065, value539, value1) := by
  rw [input1065_def, output1065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child1064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output1064_skip]
  kernel_rfl

theorem node1066_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value360 value1 value2 = (output664, value362, value1))
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value362 value1 value2 = (output1065, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1066 value360 value1 value2 = (output1066, value539, value1) := by
  rw [input1066_def, output1066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child1065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output1065_skip]
  kernel_rfl

theorem node1067_cond_eq
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value359 value1 value2 = (output661, value360, value1))
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value360 value1 value2 = (output1066, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1067 value359 value1 value2 = (output1067, value539, value1) := by
  rw [input1067_def, output1067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child661]
  try dsimp only
  rw [child1066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output661_skip, output1066_skip]
  kernel_rfl

theorem node1068_cond_eq
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value357 value1 value2 = (output660, value359, value1))
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value359 value1 value2 = (output1067, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1068 value357 value1 value2 = (output1068, value539, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child660]
  try dsimp only
  rw [child1067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output660_skip, output1067_skip]
  kernel_rfl

theorem node1069_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value356 value1 value2 = (output657, value357, value1))
    (child1068 : Flapjack.WordAlloc.removeDeadStructural input1068 value357 value1 value2 = (output1068, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1069 value356 value1 value2 = (output1069, value539, value1) := by
  rw [input1069_def, output1069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child1068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output1068_skip]
  kernel_rfl

theorem node1070_cond_eq
    (child656 : Flapjack.WordAlloc.removeDeadStructural input656 value334 value1 value2 = (output656, value356, value1))
    (child1069 : Flapjack.WordAlloc.removeDeadStructural input1069 value356 value1 value2 = (output1069, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1070 value334 value1 value2 = (output1070, value539, value1) := by
  rw [input1070_def, output1070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child656]
  try dsimp only
  rw [child1069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output656_skip, output1069_skip]
  kernel_rfl

theorem node1071_cond_eq
    (child613 : Flapjack.WordAlloc.removeDeadStructural input613 value332 value1 value2 = (output613, value334, value1))
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value334 value1 value2 = (output1070, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1071 value332 value1 value2 = (output1071, value539, value1) := by
  rw [input1071_def, output1071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child613]
  try dsimp only
  rw [child1070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output613_skip, output1070_skip]
  kernel_rfl

theorem node1072_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value331 value1 value2 = (output610, value332, value1))
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value332 value1 value2 = (output1071, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1072 value331 value1 value2 = (output1072, value539, value1) := by
  rw [input1072_def, output1072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child1071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output1071_skip]
  kernel_rfl

theorem node1073_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value329 value1 value2 = (output609, value331, value1))
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value331 value1 value2 = (output1072, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1073 value329 value1 value2 = (output1073, value539, value1) := by
  rw [input1073_def, output1073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child1072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output1072_skip]
  kernel_rfl

theorem node1074_cond_eq
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value328 value1 value2 = (output606, value329, value1))
    (child1073 : Flapjack.WordAlloc.removeDeadStructural input1073 value329 value1 value2 = (output1073, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1074 value328 value1 value2 = (output1074, value539, value1) := by
  rw [input1074_def, output1074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child606]
  try dsimp only
  rw [child1073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output606_skip, output1073_skip]
  kernel_rfl

theorem node1075_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value326 value1 value2 = (output605, value328, value1))
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value328 value1 value2 = (output1074, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1075 value326 value1 value2 = (output1075, value539, value1) := by
  rw [input1075_def, output1075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  try dsimp only
  rw [child1074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output605_skip, output1074_skip]
  kernel_rfl

theorem node1076_cond_eq
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value325 value1 value2 = (output602, value326, value1))
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value326 value1 value2 = (output1075, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1076 value325 value1 value2 = (output1076, value539, value1) := by
  rw [input1076_def, output1076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child602]
  try dsimp only
  rw [child1075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output602_skip, output1075_skip]
  kernel_rfl

theorem node1077_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value323 value1 value2 = (output601, value325, value1))
    (child1076 : Flapjack.WordAlloc.removeDeadStructural input1076 value325 value1 value2 = (output1076, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1077 value323 value1 value2 = (output1077, value539, value1) := by
  rw [input1077_def, output1077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  try dsimp only
  rw [child1076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output1076_skip]
  kernel_rfl

theorem node1078_cond_eq
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value322 value1 value2 = (output598, value323, value1))
    (child1077 : Flapjack.WordAlloc.removeDeadStructural input1077 value323 value1 value2 = (output1077, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1078 value322 value1 value2 = (output1078, value539, value1) := by
  rw [input1078_def, output1078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child598]
  try dsimp only
  rw [child1077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output598_skip, output1077_skip]
  kernel_rfl

theorem node1079_cond_eq
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value320 value1 value2 = (output597, value322, value1))
    (child1078 : Flapjack.WordAlloc.removeDeadStructural input1078 value322 value1 value2 = (output1078, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1079 value320 value1 value2 = (output1079, value539, value1) := by
  rw [input1079_def, output1079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child597]
  try dsimp only
  rw [child1078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output597_skip, output1078_skip]
  kernel_rfl

theorem node1080_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value319 value1 value2 = (output594, value320, value1))
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value320 value1 value2 = (output1079, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1080 value319 value1 value2 = (output1080, value539, value1) := by
  rw [input1080_def, output1080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  try dsimp only
  rw [child1079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output594_skip, output1079_skip]
  kernel_rfl

theorem node1081_cond_eq
    (child593 : Flapjack.WordAlloc.removeDeadStructural input593 value317 value1 value2 = (output593, value319, value1))
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value319 value1 value2 = (output1080, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1081 value317 value1 value2 = (output1081, value539, value1) := by
  rw [input1081_def, output1081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child593]
  try dsimp only
  rw [child1080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output593_skip, output1080_skip]
  kernel_rfl

theorem node1082_cond_eq
    (child590 : Flapjack.WordAlloc.removeDeadStructural input590 value316 value1 value2 = (output590, value317, value1))
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value317 value1 value2 = (output1081, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1082 value316 value1 value2 = (output1082, value539, value1) := by
  rw [input1082_def, output1082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child590]
  try dsimp only
  rw [child1081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output590_skip, output1081_skip]
  kernel_rfl

theorem node1083_cond_eq
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value314 value1 value2 = (output589, value316, value1))
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value316 value1 value2 = (output1082, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1083 value314 value1 value2 = (output1083, value539, value1) := by
  rw [input1083_def, output1083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child589]
  try dsimp only
  rw [child1082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output589_skip, output1082_skip]
  kernel_rfl

theorem node1084_cond_eq
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value313 value1 value2 = (output586, value314, value1))
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value314 value1 value2 = (output1083, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1084 value313 value1 value2 = (output1084, value539, value1) := by
  rw [input1084_def, output1084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child586]
  try dsimp only
  rw [child1083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output586_skip, output1083_skip]
  kernel_rfl

theorem node1085_cond_eq
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value311 value1 value2 = (output585, value313, value1))
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value313 value1 value2 = (output1084, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1085 value311 value1 value2 = (output1085, value539, value1) := by
  rw [input1085_def, output1085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child585]
  try dsimp only
  rw [child1084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output585_skip, output1084_skip]
  kernel_rfl

theorem node1086_cond_eq
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value310 value1 value2 = (output582, value311, value1))
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value311 value1 value2 = (output1085, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1086 value310 value1 value2 = (output1086, value539, value1) := by
  rw [input1086_def, output1086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child582]
  try dsimp only
  rw [child1085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output582_skip, output1085_skip]
  kernel_rfl

theorem node1087_cond_eq
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value288 value1 value2 = (output581, value310, value1))
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value310 value1 value2 = (output1086, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1087 value288 value1 value2 = (output1087, value539, value1) := by
  rw [input1087_def, output1087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child581]
  try dsimp only
  rw [child1086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output581_skip, output1086_skip]
  kernel_rfl

theorem node1088_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value286 value1 value2 = (output538, value288, value1))
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value288 value1 value2 = (output1087, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1088 value286 value1 value2 = (output1088, value539, value1) := by
  rw [input1088_def, output1088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child1087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output1087_skip]
  kernel_rfl

theorem node1089_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value285 value1 value2 = (output535, value286, value1))
    (child1088 : Flapjack.WordAlloc.removeDeadStructural input1088 value286 value1 value2 = (output1088, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1089 value285 value1 value2 = (output1089, value539, value1) := by
  rw [input1089_def, output1089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child1088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output1088_skip]
  kernel_rfl

theorem node1090_cond_eq
    (child534 : Flapjack.WordAlloc.removeDeadStructural input534 value283 value1 value2 = (output534, value285, value1))
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value285 value1 value2 = (output1089, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1090 value283 value1 value2 = (output1090, value539, value1) := by
  rw [input1090_def, output1090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child534]
  try dsimp only
  rw [child1089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output534_skip, output1089_skip]
  kernel_rfl

theorem node1091_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value282 value1 value2 = (output531, value283, value1))
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value283 value1 value2 = (output1090, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1091 value282 value1 value2 = (output1091, value539, value1) := by
  rw [input1091_def, output1091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child1090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output1090_skip]
  kernel_rfl

theorem node1092_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value280 value1 value2 = (output530, value282, value1))
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value282 value1 value2 = (output1091, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1092 value280 value1 value2 = (output1092, value539, value1) := by
  rw [input1092_def, output1092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child1091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output1091_skip]
  kernel_rfl

theorem node1093_cond_eq
    (child527 : Flapjack.WordAlloc.removeDeadStructural input527 value279 value1 value2 = (output527, value280, value1))
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value280 value1 value2 = (output1092, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1093 value279 value1 value2 = (output1093, value539, value1) := by
  rw [input1093_def, output1093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child527]
  try dsimp only
  rw [child1092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output527_skip, output1092_skip]
  kernel_rfl

theorem node1094_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value277 value1 value2 = (output526, value279, value1))
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value279 value1 value2 = (output1093, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1094 value277 value1 value2 = (output1094, value539, value1) := by
  rw [input1094_def, output1094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child1093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output1093_skip]
  kernel_rfl

theorem node1095_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value276 value1 value2 = (output523, value277, value1))
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value277 value1 value2 = (output1094, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1095 value276 value1 value2 = (output1095, value539, value1) := by
  rw [input1095_def, output1095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child1094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output1094_skip]
  kernel_rfl

theorem node1096_cond_eq
    (child522 : Flapjack.WordAlloc.removeDeadStructural input522 value274 value1 value2 = (output522, value276, value1))
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value276 value1 value2 = (output1095, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1096 value274 value1 value2 = (output1096, value539, value1) := by
  rw [input1096_def, output1096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child522]
  try dsimp only
  rw [child1095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output522_skip, output1095_skip]
  kernel_rfl

theorem node1097_cond_eq
    (child519 : Flapjack.WordAlloc.removeDeadStructural input519 value273 value1 value2 = (output519, value274, value1))
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value274 value1 value2 = (output1096, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1097 value273 value1 value2 = (output1097, value539, value1) := by
  rw [input1097_def, output1097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child519]
  try dsimp only
  rw [child1096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output519_skip, output1096_skip]
  kernel_rfl

theorem node1098_cond_eq
    (child518 : Flapjack.WordAlloc.removeDeadStructural input518 value271 value1 value2 = (output518, value273, value1))
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value273 value1 value2 = (output1097, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1098 value271 value1 value2 = (output1098, value539, value1) := by
  rw [input1098_def, output1098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child518]
  try dsimp only
  rw [child1097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output518_skip, output1097_skip]
  kernel_rfl

theorem node1099_cond_eq
    (child515 : Flapjack.WordAlloc.removeDeadStructural input515 value270 value1 value2 = (output515, value271, value1))
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value271 value1 value2 = (output1098, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1099 value270 value1 value2 = (output1099, value539, value1) := by
  rw [input1099_def, output1099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child515]
  try dsimp only
  rw [child1098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output515_skip, output1098_skip]
  kernel_rfl

theorem node1100_cond_eq
    (child514 : Flapjack.WordAlloc.removeDeadStructural input514 value268 value1 value2 = (output514, value270, value1))
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value270 value1 value2 = (output1099, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1100 value268 value1 value2 = (output1100, value539, value1) := by
  rw [input1100_def, output1100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child514]
  try dsimp only
  rw [child1099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output514_skip, output1099_skip]
  kernel_rfl

theorem node1101_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value267 value1 value2 = (output511, value268, value1))
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value268 value1 value2 = (output1100, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1101 value267 value1 value2 = (output1101, value539, value1) := by
  rw [input1101_def, output1101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child1100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output1100_skip]
  kernel_rfl

theorem node1102_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value265 value1 value2 = (output510, value267, value1))
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value267 value1 value2 = (output1101, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1102 value265 value1 value2 = (output1102, value539, value1) := by
  rw [input1102_def, output1102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  try dsimp only
  rw [child1101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output1101_skip]
  kernel_rfl

theorem node1103_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value264 value1 value2 = (output507, value265, value1))
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value265 value1 value2 = (output1102, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1103 value264 value1 value2 = (output1103, value539, value1) := by
  rw [input1103_def, output1103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child1102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output1102_skip]
  kernel_rfl

theorem node1104_cond_eq
    (child506 : Flapjack.WordAlloc.removeDeadStructural input506 value242 value1 value2 = (output506, value264, value1))
    (child1103 : Flapjack.WordAlloc.removeDeadStructural input1103 value264 value1 value2 = (output1103, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1104 value242 value1 value2 = (output1104, value539, value1) := by
  rw [input1104_def, output1104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child506]
  try dsimp only
  rw [child1103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output506_skip, output1103_skip]
  kernel_rfl

theorem node1105_cond_eq
    (child463 : Flapjack.WordAlloc.removeDeadStructural input463 value240 value1 value2 = (output463, value242, value1))
    (child1104 : Flapjack.WordAlloc.removeDeadStructural input1104 value242 value1 value2 = (output1104, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1105 value240 value1 value2 = (output1105, value539, value1) := by
  rw [input1105_def, output1105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child463]
  try dsimp only
  rw [child1104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output463_skip, output1104_skip]
  kernel_rfl

theorem node1106_cond_eq
    (child460 : Flapjack.WordAlloc.removeDeadStructural input460 value239 value1 value2 = (output460, value240, value1))
    (child1105 : Flapjack.WordAlloc.removeDeadStructural input1105 value240 value1 value2 = (output1105, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1106 value239 value1 value2 = (output1106, value539, value1) := by
  rw [input1106_def, output1106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child460]
  try dsimp only
  rw [child1105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output460_skip, output1105_skip]
  kernel_rfl

theorem node1107_cond_eq
    (child459 : Flapjack.WordAlloc.removeDeadStructural input459 value237 value1 value2 = (output459, value239, value1))
    (child1106 : Flapjack.WordAlloc.removeDeadStructural input1106 value239 value1 value2 = (output1106, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1107 value237 value1 value2 = (output1107, value539, value1) := by
  rw [input1107_def, output1107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child459]
  try dsimp only
  rw [child1106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output459_skip, output1106_skip]
  kernel_rfl

theorem node1108_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value236 value1 value2 = (output456, value237, value1))
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value237 value1 value2 = (output1107, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1108 value236 value1 value2 = (output1108, value539, value1) := by
  rw [input1108_def, output1108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child1107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output1107_skip]
  kernel_rfl

theorem node1109_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value234 value1 value2 = (output455, value236, value1))
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value236 value1 value2 = (output1108, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1109 value234 value1 value2 = (output1109, value539, value1) := by
  rw [input1109_def, output1109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child1108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output1108_skip]
  kernel_rfl

theorem node1110_cond_eq
    (child452 : Flapjack.WordAlloc.removeDeadStructural input452 value233 value1 value2 = (output452, value234, value1))
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value234 value1 value2 = (output1109, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1110 value233 value1 value2 = (output1110, value539, value1) := by
  rw [input1110_def, output1110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child452]
  try dsimp only
  rw [child1109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output452_skip, output1109_skip]
  kernel_rfl

theorem node1111_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value231 value1 value2 = (output451, value233, value1))
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value233 value1 value2 = (output1110, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1111 value231 value1 value2 = (output1111, value539, value1) := by
  rw [input1111_def, output1111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child1110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output1110_skip]
  kernel_rfl

theorem node1112_cond_eq
    (child448 : Flapjack.WordAlloc.removeDeadStructural input448 value230 value1 value2 = (output448, value231, value1))
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value231 value1 value2 = (output1111, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1112 value230 value1 value2 = (output1112, value539, value1) := by
  rw [input1112_def, output1112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child448]
  try dsimp only
  rw [child1111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output448_skip, output1111_skip]
  kernel_rfl

theorem node1113_cond_eq
    (child447 : Flapjack.WordAlloc.removeDeadStructural input447 value228 value1 value2 = (output447, value230, value1))
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value230 value1 value2 = (output1112, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1113 value228 value1 value2 = (output1113, value539, value1) := by
  rw [input1113_def, output1113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child447]
  try dsimp only
  rw [child1112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output447_skip, output1112_skip]
  kernel_rfl

theorem node1114_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value227 value1 value2 = (output444, value228, value1))
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value228 value1 value2 = (output1113, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1114 value227 value1 value2 = (output1114, value539, value1) := by
  rw [input1114_def, output1114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child1113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output1113_skip]
  kernel_rfl

theorem node1115_cond_eq
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value225 value1 value2 = (output443, value227, value1))
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value227 value1 value2 = (output1114, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1115 value225 value1 value2 = (output1115, value539, value1) := by
  rw [input1115_def, output1115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child443]
  try dsimp only
  rw [child1114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output443_skip, output1114_skip]
  kernel_rfl

theorem node1116_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value224 value1 value2 = (output440, value225, value1))
    (child1115 : Flapjack.WordAlloc.removeDeadStructural input1115 value225 value1 value2 = (output1115, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1116 value224 value1 value2 = (output1116, value539, value1) := by
  rw [input1116_def, output1116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child1115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output1115_skip]
  kernel_rfl

theorem node1117_cond_eq
    (child439 : Flapjack.WordAlloc.removeDeadStructural input439 value222 value1 value2 = (output439, value224, value1))
    (child1116 : Flapjack.WordAlloc.removeDeadStructural input1116 value224 value1 value2 = (output1116, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1117 value222 value1 value2 = (output1117, value539, value1) := by
  rw [input1117_def, output1117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child439]
  try dsimp only
  rw [child1116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output439_skip, output1116_skip]
  kernel_rfl

theorem node1118_cond_eq
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value221 value1 value2 = (output436, value222, value1))
    (child1117 : Flapjack.WordAlloc.removeDeadStructural input1117 value222 value1 value2 = (output1117, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1118 value221 value1 value2 = (output1118, value539, value1) := by
  rw [input1118_def, output1118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child436]
  try dsimp only
  rw [child1117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output436_skip, output1117_skip]
  kernel_rfl

theorem node1119_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value219 value1 value2 = (output435, value221, value1))
    (child1118 : Flapjack.WordAlloc.removeDeadStructural input1118 value221 value1 value2 = (output1118, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1119 value219 value1 value2 = (output1119, value539, value1) := by
  rw [input1119_def, output1119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child1118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output1118_skip]
  kernel_rfl

theorem node1120_cond_eq
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value218 value1 value2 = (output432, value219, value1))
    (child1119 : Flapjack.WordAlloc.removeDeadStructural input1119 value219 value1 value2 = (output1119, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1120 value218 value1 value2 = (output1120, value539, value1) := by
  rw [input1120_def, output1120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child432]
  try dsimp only
  rw [child1119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output432_skip, output1119_skip]
  kernel_rfl

theorem node1121_cond_eq
    (child431 : Flapjack.WordAlloc.removeDeadStructural input431 value196 value1 value2 = (output431, value218, value1))
    (child1120 : Flapjack.WordAlloc.removeDeadStructural input1120 value218 value1 value2 = (output1120, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1121 value196 value1 value2 = (output1121, value539, value1) := by
  rw [input1121_def, output1121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child431]
  try dsimp only
  rw [child1120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output431_skip, output1120_skip]
  kernel_rfl

theorem node1122_cond_eq
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value194 value1 value2 = (output388, value196, value1))
    (child1121 : Flapjack.WordAlloc.removeDeadStructural input1121 value196 value1 value2 = (output1121, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1122 value194 value1 value2 = (output1122, value539, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child388]
  try dsimp only
  rw [child1121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output388_skip, output1121_skip]
  kernel_rfl

theorem node1123_cond_eq
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value193 value1 value2 = (output385, value194, value1))
    (child1122 : Flapjack.WordAlloc.removeDeadStructural input1122 value194 value1 value2 = (output1122, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1123 value193 value1 value2 = (output1123, value539, value1) := by
  rw [input1123_def, output1123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child385]
  try dsimp only
  rw [child1122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output385_skip, output1122_skip]
  kernel_rfl

theorem node1124_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value192 value1 value2 = (output384, value193, value1))
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value193 value1 value2 = (output1123, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1124 value192 value1 value2 = (output1124, value539, value1) := by
  rw [input1124_def, output1124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child1123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output1123_skip]
  kernel_rfl

theorem node1125_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value191 value1 value2 = (output383, value192, value1))
    (child1124 : Flapjack.WordAlloc.removeDeadStructural input1124 value192 value1 value2 = (output1124, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1125 value191 value1 value2 = (output1125, value539, value1) := by
  rw [input1125_def, output1125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child1124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output1124_skip]
  kernel_rfl

theorem node1126_cond_eq
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value190 value1 value2 = (output382, value191, value1))
    (child1125 : Flapjack.WordAlloc.removeDeadStructural input1125 value191 value1 value2 = (output1125, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1126 value190 value1 value2 = (output1126, value539, value1) := by
  rw [input1126_def, output1126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child382]
  try dsimp only
  rw [child1125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output382_skip, output1125_skip]
  kernel_rfl

theorem node1127_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value189 value1 value2 = (output381, value190, value1))
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value190 value1 value2 = (output1126, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1127 value189 value1 value2 = (output1127, value539, value1) := by
  rw [input1127_def, output1127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child1126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output1126_skip]
  kernel_rfl

theorem node1128_cond_eq
    (child380 : Flapjack.WordAlloc.removeDeadStructural input380 value187 value1 value2 = (output380, value189, value1))
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value189 value1 value2 = (output1127, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1128 value187 value1 value2 = (output1128, value539, value1) := by
  rw [input1128_def, output1128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child380]
  try dsimp only
  rw [child1127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output380_skip, output1127_skip]
  kernel_rfl

theorem node1129_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value186 value1 value2 = (output377, value187, value1))
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value187 value1 value2 = (output1128, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1129 value186 value1 value2 = (output1129, value539, value1) := by
  rw [input1129_def, output1129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  try dsimp only
  rw [child1128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output377_skip, output1128_skip]
  kernel_rfl

theorem node1130_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value184 value1 value2 = (output376, value186, value1))
    (child1129 : Flapjack.WordAlloc.removeDeadStructural input1129 value186 value1 value2 = (output1129, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1130 value184 value1 value2 = (output1130, value539, value1) := by
  rw [input1130_def, output1130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child1129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output1129_skip]
  kernel_rfl

theorem node1131_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value183 value1 value2 = (output373, value184, value1))
    (child1130 : Flapjack.WordAlloc.removeDeadStructural input1130 value184 value1 value2 = (output1130, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1131 value183 value1 value2 = (output1131, value539, value1) := by
  rw [input1131_def, output1131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child1130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output1130_skip]
  kernel_rfl

theorem node1132_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value181 value1 value2 = (output372, value183, value1))
    (child1131 : Flapjack.WordAlloc.removeDeadStructural input1131 value183 value1 value2 = (output1131, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1132 value181 value1 value2 = (output1132, value539, value1) := by
  rw [input1132_def, output1132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child1131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output1131_skip]
  kernel_rfl

theorem node1133_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value180 value1 value2 = (output369, value181, value1))
    (child1132 : Flapjack.WordAlloc.removeDeadStructural input1132 value181 value1 value2 = (output1132, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1133 value180 value1 value2 = (output1133, value539, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child369]
  try dsimp only
  rw [child1132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output369_skip, output1132_skip]
  kernel_rfl

theorem node1134_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value178 value1 value2 = (output368, value180, value1))
    (child1133 : Flapjack.WordAlloc.removeDeadStructural input1133 value180 value1 value2 = (output1133, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1134 value178 value1 value2 = (output1134, value539, value1) := by
  rw [input1134_def, output1134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child1133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output1133_skip]
  kernel_rfl

theorem node1135_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value178 value1 value2 = (output365, value178, value1))
    (child1134 : Flapjack.WordAlloc.removeDeadStructural input1134 value178 value1 value2 = (output1134, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1135 value178 value1 value2 = (output1135, value539, value1) := by
  rw [input1135_def, output1135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child1134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output1134_skip]
  kernel_rfl

theorem node1136_cond_eq
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value177 value1 value2 = (output364, value178, value1))
    (child1135 : Flapjack.WordAlloc.removeDeadStructural input1135 value178 value1 value2 = (output1135, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1136 value177 value1 value2 = (output1136, value539, value1) := by
  rw [input1136_def, output1136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child364]
  try dsimp only
  rw [child1135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output364_skip, output1135_skip]
  kernel_rfl

theorem node1137_cond_eq
    (child363 : Flapjack.WordAlloc.removeDeadStructural input363 value174 value1 value2 = (output363, value177, value1))
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value177 value1 value2 = (output1136, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1137 value174 value1 value2 = (output1137, value539, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child363]
  try dsimp only
  rw [child1136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output363_skip, output1136_skip]
  kernel_rfl

theorem node1138_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value174 value1 value2 = (output358, value174, value1))
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value174 value1 value2 = (output1137, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1138 value174 value1 value2 = (output1138, value539, value1) := by
  rw [input1138_def, output1138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child1137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output1137_skip]
  kernel_rfl

theorem node1139_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value172 value1 value2 = (output357, value174, value1))
    (child1138 : Flapjack.WordAlloc.removeDeadStructural input1138 value174 value1 value2 = (output1138, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1139 value172 value1 value2 = (output1139, value539, value1) := by
  rw [input1139_def, output1139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child1138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output1138_skip]
  kernel_rfl

theorem node1140_cond_eq
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value171 value1 value2 = (output354, value172, value1))
    (child1139 : Flapjack.WordAlloc.removeDeadStructural input1139 value172 value1 value2 = (output1139, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1140 value171 value1 value2 = (output1140, value539, value1) := by
  rw [input1140_def, output1140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child354]
  try dsimp only
  rw [child1139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output354_skip, output1139_skip]
  kernel_rfl

theorem node1141_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value170 value1 value2 = (output353, value171, value1))
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value171 value1 value2 = (output1140, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1141 value170 value1 value2 = (output1141, value539, value1) := by
  rw [input1141_def, output1141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child1140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output1140_skip]
  kernel_rfl

theorem node1142_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value168 value1 value2 = (output352, value170, value1))
    (child1141 : Flapjack.WordAlloc.removeDeadStructural input1141 value170 value1 value2 = (output1141, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1142 value168 value1 value2 = (output1142, value539, value1) := by
  rw [input1142_def, output1142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child1141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output1141_skip]
  kernel_rfl

theorem node1143_cond_eq
    (child349 : Flapjack.WordAlloc.removeDeadStructural input349 value166 value1 value2 = (output349, value168, value1))
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value168 value1 value2 = (output1142, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1143 value166 value1 value2 = (output1143, value539, value1) := by
  rw [input1143_def, output1143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child349]
  try dsimp only
  rw [child1142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output349_skip, output1142_skip]
  kernel_rfl

theorem node1144_cond_eq
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value164 value1 value2 = (output346, value166, value1))
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value166 value1 value2 = (output1143, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1144 value164 value1 value2 = (output1144, value539, value1) := by
  rw [input1144_def, output1144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child346]
  try dsimp only
  rw [child1143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output346_skip, output1143_skip]
  kernel_rfl

theorem node1145_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value163 value1 value2 = (output343, value164, value1))
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value164 value1 value2 = (output1144, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1145 value163 value1 value2 = (output1145, value539, value1) := by
  rw [input1145_def, output1145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child1144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output1144_skip]
  kernel_rfl

theorem node1146_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value161 value1 value2 = (output342, value163, value1))
    (child1145 : Flapjack.WordAlloc.removeDeadStructural input1145 value163 value1 value2 = (output1145, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1146 value161 value1 value2 = (output1146, value539, value1) := by
  rw [input1146_def, output1146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child1145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output1145_skip]
  kernel_rfl

theorem node1147_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value159 value1 value2 = (output339, value161, value1))
    (child1146 : Flapjack.WordAlloc.removeDeadStructural input1146 value161 value1 value2 = (output1146, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1147 value159 value1 value2 = (output1147, value539, value1) := by
  rw [input1147_def, output1147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child1146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output1146_skip]
  kernel_rfl

theorem node1148_cond_eq
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value157 value1 value2 = (output336, value159, value1))
    (child1147 : Flapjack.WordAlloc.removeDeadStructural input1147 value159 value1 value2 = (output1147, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1148 value157 value1 value2 = (output1148, value539, value1) := by
  rw [input1148_def, output1148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child336]
  try dsimp only
  rw [child1147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output336_skip, output1147_skip]
  kernel_rfl

theorem node1149_cond_eq
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value156 value1 value2 = (output333, value157, value1))
    (child1148 : Flapjack.WordAlloc.removeDeadStructural input1148 value157 value1 value2 = (output1148, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1149 value156 value1 value2 = (output1149, value539, value1) := by
  rw [input1149_def, output1149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child333]
  try dsimp only
  rw [child1148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output333_skip, output1148_skip]
  kernel_rfl

theorem node1150_cond_eq
    (child332 : Flapjack.WordAlloc.removeDeadStructural input332 value154 value1 value2 = (output332, value156, value1))
    (child1149 : Flapjack.WordAlloc.removeDeadStructural input1149 value156 value1 value2 = (output1149, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1150 value154 value1 value2 = (output1150, value539, value1) := by
  rw [input1150_def, output1150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child332]
  try dsimp only
  rw [child1149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output332_skip, output1149_skip]
  kernel_rfl

theorem node1151_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value152 value1 value2 = (output329, value154, value1))
    (child1150 : Flapjack.WordAlloc.removeDeadStructural input1150 value154 value1 value2 = (output1150, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1151 value152 value1 value2 = (output1151, value539, value1) := by
  rw [input1151_def, output1151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child1150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output1150_skip]
  kernel_rfl

theorem node1152_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value150 value1 value2 = (output326, value152, value1))
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value152 value1 value2 = (output1151, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1152 value150 value1 value2 = (output1152, value539, value1) := by
  rw [input1152_def, output1152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child1151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output1151_skip]
  kernel_rfl

theorem node1153_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value149 value1 value2 = (output323, value150, value1))
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value150 value1 value2 = (output1152, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1153 value149 value1 value2 = (output1153, value539, value1) := by
  rw [input1153_def, output1153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child1152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output1152_skip]
  kernel_rfl

theorem node1154_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value147 value1 value2 = (output322, value149, value1))
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value149 value1 value2 = (output1153, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1154 value147 value1 value2 = (output1154, value539, value1) := by
  rw [input1154_def, output1154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child1153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output1153_skip]
  kernel_rfl

theorem node1155_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value147 value1 value2 = (output319, value147, value1))
    (child1154 : Flapjack.WordAlloc.removeDeadStructural input1154 value147 value1 value2 = (output1154, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1155 value147 value1 value2 = (output1155, value539, value1) := by
  rw [input1155_def, output1155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  try dsimp only
  rw [child1154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output319_skip, output1154_skip]
  kernel_rfl

theorem node1156_cond_eq
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value146 value1 value2 = (output318, value147, value1))
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value147 value1 value2 = (output1155, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1156 value146 value1 value2 = (output1156, value539, value1) := by
  rw [input1156_def, output1156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child318]
  try dsimp only
  rw [child1155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output318_skip, output1155_skip]
  kernel_rfl

theorem node1157_cond_eq
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value143 value1 value2 = (output317, value146, value1))
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value146 value1 value2 = (output1156, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1157 value143 value1 value2 = (output1157, value539, value1) := by
  rw [input1157_def, output1157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child317]
  try dsimp only
  rw [child1156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output317_skip, output1156_skip]
  kernel_rfl

theorem node1158_cond_eq
    (child312 : Flapjack.WordAlloc.removeDeadStructural input312 value143 value1 value2 = (output312, value143, value1))
    (child1157 : Flapjack.WordAlloc.removeDeadStructural input1157 value143 value1 value2 = (output1157, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1158 value143 value1 value2 = (output1158, value539, value1) := by
  rw [input1158_def, output1158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child312]
  try dsimp only
  rw [child1157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output312_skip, output1157_skip]
  kernel_rfl

theorem node1159_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value141 value1 value2 = (output311, value143, value1))
    (child1158 : Flapjack.WordAlloc.removeDeadStructural input1158 value143 value1 value2 = (output1158, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1159 value141 value1 value2 = (output1159, value539, value1) := by
  rw [input1159_def, output1159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child1158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output1158_skip]
  kernel_rfl

theorem node1160_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value140 value1 value2 = (output308, value141, value1))
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value141 value1 value2 = (output1159, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1160 value140 value1 value2 = (output1160, value539, value1) := by
  rw [input1160_def, output1160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child1159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output1159_skip]
  kernel_rfl

theorem node1161_cond_eq
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value139 value1 value2 = (output307, value140, value1))
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value140 value1 value2 = (output1160, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1161 value139 value1 value2 = (output1161, value539, value1) := by
  rw [input1161_def, output1161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child307]
  try dsimp only
  rw [child1160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output307_skip, output1160_skip]
  kernel_rfl

theorem node1162_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value137 value1 value2 = (output306, value139, value1))
    (child1161 : Flapjack.WordAlloc.removeDeadStructural input1161 value139 value1 value2 = (output1161, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1162 value137 value1 value2 = (output1162, value539, value1) := by
  rw [input1162_def, output1162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child306]
  try dsimp only
  rw [child1161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output306_skip, output1161_skip]
  kernel_rfl

theorem node1163_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value137 value1 value2 = (output303, value137, value1))
    (child1162 : Flapjack.WordAlloc.removeDeadStructural input1162 value137 value1 value2 = (output1162, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1163 value137 value1 value2 = (output1163, value539, value1) := by
  rw [input1163_def, output1163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child1162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output1162_skip]
  kernel_rfl

theorem node1164_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value136 value1 value2 = (output302, value137, value1))
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value137 value1 value2 = (output1163, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1164 value136 value1 value2 = (output1164, value539, value1) := by
  rw [input1164_def, output1164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child1163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output1163_skip]
  kernel_rfl

theorem node1165_cond_eq
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value133 value1 value2 = (output301, value136, value1))
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value136 value1 value2 = (output1164, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1165 value133 value1 value2 = (output1165, value539, value1) := by
  rw [input1165_def, output1165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child301]
  try dsimp only
  rw [child1164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output301_skip, output1164_skip]
  kernel_rfl

theorem node1166_cond_eq
    (child296 : Flapjack.WordAlloc.removeDeadStructural input296 value133 value1 value2 = (output296, value133, value1))
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value133 value1 value2 = (output1165, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1166 value133 value1 value2 = (output1166, value539, value1) := by
  rw [input1166_def, output1166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child296]
  try dsimp only
  rw [child1165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output296_skip, output1165_skip]
  kernel_rfl

theorem node1167_cond_eq
    (child295 : Flapjack.WordAlloc.removeDeadStructural input295 value131 value1 value2 = (output295, value133, value1))
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value133 value1 value2 = (output1166, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1167 value131 value1 value2 = (output1167, value539, value1) := by
  rw [input1167_def, output1167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child295]
  try dsimp only
  rw [child1166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output295_skip, output1166_skip]
  kernel_rfl

theorem node1168_cond_eq
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value130 value1 value2 = (output292, value131, value1))
    (child1167 : Flapjack.WordAlloc.removeDeadStructural input1167 value131 value1 value2 = (output1167, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1168 value130 value1 value2 = (output1168, value539, value1) := by
  rw [input1168_def, output1168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child292]
  try dsimp only
  rw [child1167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output292_skip, output1167_skip]
  kernel_rfl

theorem node1169_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value129 value1 value2 = (output291, value130, value1))
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value130 value1 value2 = (output1168, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1169 value129 value1 value2 = (output1169, value539, value1) := by
  rw [input1169_def, output1169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child1168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output1168_skip]
  kernel_rfl

theorem node1170_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value127 value1 value2 = (output290, value129, value1))
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value129 value1 value2 = (output1169, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1170 value127 value1 value2 = (output1170, value539, value1) := by
  rw [input1170_def, output1170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child1169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output1169_skip]
  kernel_rfl

theorem node1171_cond_eq
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value125 value1 value2 = (output287, value127, value1))
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value127 value1 value2 = (output1170, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1171 value125 value1 value2 = (output1171, value539, value1) := by
  rw [input1171_def, output1171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child287]
  try dsimp only
  rw [child1170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output287_skip, output1170_skip]
  kernel_rfl

theorem node1172_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value123 value1 value2 = (output284, value125, value1))
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value125 value1 value2 = (output1171, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1172 value123 value1 value2 = (output1172, value539, value1) := by
  rw [input1172_def, output1172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  try dsimp only
  rw [child1171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output284_skip, output1171_skip]
  kernel_rfl

theorem node1173_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value122 value1 value2 = (output281, value123, value1))
    (child1172 : Flapjack.WordAlloc.removeDeadStructural input1172 value123 value1 value2 = (output1172, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1173 value122 value1 value2 = (output1173, value539, value1) := by
  rw [input1173_def, output1173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  try dsimp only
  rw [child1172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output281_skip, output1172_skip]
  kernel_rfl

theorem node1174_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value120 value1 value2 = (output280, value122, value1))
    (child1173 : Flapjack.WordAlloc.removeDeadStructural input1173 value122 value1 value2 = (output1173, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1174 value120 value1 value2 = (output1174, value539, value1) := by
  rw [input1174_def, output1174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child1173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output1173_skip]
  kernel_rfl

theorem node1175_cond_eq
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value119 value1 value2 = (output277, value120, value1))
    (child1174 : Flapjack.WordAlloc.removeDeadStructural input1174 value120 value1 value2 = (output1174, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1175 value119 value1 value2 = (output1175, value539, value1) := by
  rw [input1175_def, output1175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child277]
  try dsimp only
  rw [child1174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output277_skip, output1174_skip]
  kernel_rfl

theorem node1176_cond_eq
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value118 value1 value2 = (output276, value119, value1))
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value119 value1 value2 = (output1175, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1176 value118 value1 value2 = (output1176, value539, value1) := by
  rw [input1176_def, output1176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child276]
  try dsimp only
  rw [child1175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output276_skip, output1175_skip]
  kernel_rfl

theorem node1177_cond_eq
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value115 value1 value2 = (output275, value118, value1))
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value118 value1 value2 = (output1176, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1177 value115 value1 value2 = (output1177, value539, value1) := by
  rw [input1177_def, output1177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child275]
  try dsimp only
  rw [child1176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output275_skip, output1176_skip]
  kernel_rfl

theorem node1178_cond_eq
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value115 value1 value2 = (output270, value115, value1))
    (child1177 : Flapjack.WordAlloc.removeDeadStructural input1177 value115 value1 value2 = (output1177, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1178 value115 value1 value2 = (output1178, value539, value1) := by
  rw [input1178_def, output1178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child270]
  try dsimp only
  rw [child1177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output270_skip, output1177_skip]
  kernel_rfl

theorem node1179_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value114 value1 value2 = (output269, value115, value1))
    (child1178 : Flapjack.WordAlloc.removeDeadStructural input1178 value115 value1 value2 = (output1178, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1179 value114 value1 value2 = (output1179, value539, value1) := by
  rw [input1179_def, output1179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child1178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output1178_skip]
  kernel_rfl

theorem node1180_cond_eq
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value113 value1 value2 = (output268, value114, value1))
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value114 value1 value2 = (output1179, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1180 value113 value1 value2 = (output1180, value539, value1) := by
  rw [input1180_def, output1180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child268]
  try dsimp only
  rw [child1179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output268_skip, output1179_skip]
  kernel_rfl

theorem node1181_cond_eq
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value105 value1 value2 = (output267, value113, value1))
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value113 value1 value2 = (output1180, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1181 value105 value1 value2 = (output1181, value539, value1) := by
  rw [input1181_def, output1181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child267]
  try dsimp only
  rw [child1180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output267_skip, output1180_skip]
  kernel_rfl

theorem node1182_cond_eq
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value105 value1 value2 = (output226, value105, value1))
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value105 value1 value2 = (output1181, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1182 value105 value1 value2 = (output1182, value539, value1) := by
  rw [input1182_def, output1182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child226]
  try dsimp only
  rw [child1181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output226_skip, output1181_skip]
  kernel_rfl

theorem node1183_cond_eq
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value103 value1 value2 = (output225, value105, value1))
    (child1182 : Flapjack.WordAlloc.removeDeadStructural input1182 value105 value1 value2 = (output1182, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1183 value103 value1 value2 = (output1183, value539, value1) := by
  rw [input1183_def, output1183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child225]
  try dsimp only
  rw [child1182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output225_skip, output1182_skip]
  kernel_rfl

theorem node1184_cond_eq
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value101 value1 value2 = (output222, value103, value1))
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value103 value1 value2 = (output1183, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1184 value101 value1 value2 = (output1184, value539, value1) := by
  rw [input1184_def, output1184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child222]
  try dsimp only
  rw [child1183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output222_skip, output1183_skip]
  kernel_rfl

theorem node1185_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value100 value1 value2 = (output219, value101, value1))
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value101 value1 value2 = (output1184, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1185 value100 value1 value2 = (output1185, value539, value1) := by
  rw [input1185_def, output1185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  try dsimp only
  rw [child1184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output219_skip, output1184_skip]
  kernel_rfl

theorem node1186_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value97 value1 value2 = (output218, value100, value1))
    (child1185 : Flapjack.WordAlloc.removeDeadStructural input1185 value100 value1 value2 = (output1185, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1186 value97 value1 value2 = (output1186, value539, value1) := by
  rw [input1186_def, output1186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  try dsimp only
  rw [child1185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output218_skip, output1185_skip]
  kernel_rfl

theorem node1187_cond_eq
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value97 value1 value2 = (output213, value97, value1))
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value97 value1 value2 = (output1186, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1187 value97 value1 value2 = (output1187, value539, value1) := by
  rw [input1187_def, output1187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child213]
  try dsimp only
  rw [child1186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output213_skip, output1186_skip]
  kernel_rfl

theorem node1188_cond_eq
    (child212 : Flapjack.WordAlloc.removeDeadStructural input212 value95 value1 value2 = (output212, value97, value1))
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value97 value1 value2 = (output1187, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1188 value95 value1 value2 = (output1188, value539, value1) := by
  rw [input1188_def, output1188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child212]
  try dsimp only
  rw [child1187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output212_skip, output1187_skip]
  kernel_rfl

theorem node1189_cond_eq
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value92 value1 value2 = (output209, value95, value1))
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value95 value1 value2 = (output1188, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1189 value92 value1 value2 = (output1189, value539, value1) := by
  rw [input1189_def, output1189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child209]
  try dsimp only
  rw [child1188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output209_skip, output1188_skip]
  kernel_rfl

theorem node1190_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value89 value1 value2 = (output204, value92, value1))
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value92 value1 value2 = (output1189, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1190 value89 value1 value2 = (output1190, value539, value1) := by
  rw [input1190_def, output1190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child1189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output1189_skip]
  kernel_rfl

theorem node1191_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value89 value1 value2 = (output199, value89, value1))
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value89 value1 value2 = (output1190, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1191 value89 value1 value2 = (output1191, value539, value1) := by
  rw [input1191_def, output1191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child1190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output199_skip, output1190_skip]
  kernel_rfl

theorem node1192_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value85 value1 value2 = (output198, value89, value1))
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value89 value1 value2 = (output1191, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1192 value85 value1 value2 = (output1192, value539, value1) := by
  rw [input1192_def, output1192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  try dsimp only
  rw [child1191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output198_skip, output1191_skip]
  kernel_rfl

theorem node1193_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value84 value1 value2 = (output191, value85, value1))
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value85 value1 value2 = (output1192, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1193 value84 value1 value2 = (output1193, value539, value1) := by
  rw [input1193_def, output1193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child1192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output1192_skip]
  kernel_rfl

theorem node1194_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value83 value1 value2 = (output190, value84, value1))
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value84 value1 value2 = (output1193, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1194 value83 value1 value2 = (output1194, value539, value1) := by
  rw [input1194_def, output1194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child1193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output1193_skip]
  kernel_rfl

theorem node1195_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value81 value1 value2 = (output189, value83, value1))
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value83 value1 value2 = (output1194, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1195 value81 value1 value2 = (output1195, value539, value1) := by
  rw [input1195_def, output1195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child1194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output1194_skip]
  kernel_rfl

theorem node1196_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value80 value1 value2 = (output186, value81, value1))
    (child1195 : Flapjack.WordAlloc.removeDeadStructural input1195 value81 value1 value2 = (output1195, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1196 value80 value1 value2 = (output1196, value539, value1) := by
  rw [input1196_def, output1196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  try dsimp only
  rw [child1195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output186_skip, output1195_skip]
  kernel_rfl

theorem node1197_cond_eq
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value80 value1 value2 = (output185, value80, value1))
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value80 value1 value2 = (output1196, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1197 value80 value1 value2 = (output1197, value539, value1) := by
  rw [input1197_def, output1197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child185]
  try dsimp only
  rw [child1196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output185_skip, output1196_skip]
  kernel_rfl

theorem node1198_cond_eq
    (child184 : Flapjack.WordAlloc.removeDeadStructural input184 value33 value1 value2 = (output184, value80, value1))
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value80 value1 value2 = (output1197, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1198 value33 value1 value2 = (output1198, value539, value1) := by
  rw [input1198_def, output1198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child184]
  try dsimp only
  rw [child1197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output184_skip, output1197_skip]
  kernel_rfl

theorem node1199_cond_eq
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value33 value1 value2 = (output50, value33, value1))
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value33 value1 value2 = (output1198, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1199 value33 value1 value2 = (output1199, value539, value1) := by
  rw [input1199_def, output1199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child50]
  try dsimp only
  rw [child1198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output50_skip, output1198_skip]
  kernel_rfl

theorem node1200_cond_eq
    (child49 : Flapjack.WordAlloc.removeDeadStructural input49 value29 value1 value2 = (output49, value33, value1))
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value33 value1 value2 = (output1199, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1200 value29 value1 value2 = (output1200, value539, value1) := by
  rw [input1200_def, output1200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child49]
  try dsimp only
  rw [child1199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output49_skip, output1199_skip]
  kernel_rfl

theorem node1201_cond_eq
    (child42 : Flapjack.WordAlloc.removeDeadStructural input42 value28 value1 value2 = (output42, value29, value1))
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value29 value1 value2 = (output1200, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1201 value28 value1 value2 = (output1201, value539, value1) := by
  rw [input1201_def, output1201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child42]
  try dsimp only
  rw [child1200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output42_skip, output1200_skip]
  kernel_rfl

theorem node1202_cond_eq
    (child41 : Flapjack.WordAlloc.removeDeadStructural input41 value27 value1 value2 = (output41, value28, value1))
    (child1201 : Flapjack.WordAlloc.removeDeadStructural input1201 value28 value1 value2 = (output1201, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1202 value27 value1 value2 = (output1202, value539, value1) := by
  rw [input1202_def, output1202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child41]
  try dsimp only
  rw [child1201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output41_skip, output1201_skip]
  kernel_rfl

theorem node1203_cond_eq
    (child40 : Flapjack.WordAlloc.removeDeadStructural input40 value24 value1 value2 = (output40, value27, value1))
    (child1202 : Flapjack.WordAlloc.removeDeadStructural input1202 value27 value1 value2 = (output1202, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1203 value24 value1 value2 = (output1203, value539, value1) := by
  rw [input1203_def, output1203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child40]
  try dsimp only
  rw [child1202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output40_skip, output1202_skip]
  kernel_rfl

theorem node1204_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value24 value1 value2 = (output35, value24, value1))
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value24 value1 value2 = (output1203, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1204 value24 value1 value2 = (output1204, value539, value1) := by
  rw [input1204_def, output1204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child1203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output35_skip, output1203_skip]
  kernel_rfl

theorem node1205_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value22 value1 value2 = (output34, value24, value1))
    (child1204 : Flapjack.WordAlloc.removeDeadStructural input1204 value24 value1 value2 = (output1204, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1205 value22 value1 value2 = (output1205, value539, value1) := by
  rw [input1205_def, output1205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  try dsimp only
  rw [child1204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output1204_skip]
  kernel_rfl

theorem node1206_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value19 value1 value2 = (output31, value22, value1))
    (child1205 : Flapjack.WordAlloc.removeDeadStructural input1205 value22 value1 value2 = (output1205, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1206 value19 value1 value2 = (output1206, value539, value1) := by
  rw [input1206_def, output1206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child1205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output1205_skip]
  kernel_rfl

theorem node1207_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value19 value1 value2 = (output26, value19, value1))
    (child1206 : Flapjack.WordAlloc.removeDeadStructural input1206 value19 value1 value2 = (output1206, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1207 value19 value1 value2 = (output1207, value539, value1) := by
  rw [input1207_def, output1207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child1206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output1206_skip]
  kernel_rfl

theorem node1208_cond_eq
    (child25 : Flapjack.WordAlloc.removeDeadStructural input25 value18 value1 value2 = (output25, value19, value1))
    (child1207 : Flapjack.WordAlloc.removeDeadStructural input1207 value19 value1 value2 = (output1207, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1208 value18 value1 value2 = (output1208, value539, value1) := by
  rw [input1208_def, output1208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child25]
  try dsimp only
  rw [child1207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output25_skip, output1207_skip]
  kernel_rfl

theorem node1209_cond_eq
    (child24 : Flapjack.WordAlloc.removeDeadStructural input24 value17 value1 value2 = (output24, value18, value1))
    (child1208 : Flapjack.WordAlloc.removeDeadStructural input1208 value18 value1 value2 = (output1208, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1209 value17 value1 value2 = (output1209, value539, value1) := by
  rw [input1209_def, output1209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child24]
  try dsimp only
  rw [child1208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output24_skip, output1208_skip]
  kernel_rfl

theorem node1210_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value16 value1 value2 = (output23, value17, value1))
    (child1209 : Flapjack.WordAlloc.removeDeadStructural input1209 value17 value1 value2 = (output1209, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1210 value16 value1 value2 = (output1210, value539, value1) := by
  rw [input1210_def, output1210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child1209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output1209_skip]
  kernel_rfl

theorem node1211_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value13 value1 value2 = (output22, value16, value1))
    (child1210 : Flapjack.WordAlloc.removeDeadStructural input1210 value16 value1 value2 = (output1210, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1211 value13 value1 value2 = (output1211, value539, value1) := by
  rw [input1211_def, output1211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child1210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output1210_skip]
  kernel_rfl

theorem node1212_cond_eq
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value13 value1 value2 = (output17, value13, value1))
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value13 value1 value2 = (output1211, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1212 value13 value1 value2 = (output1212, value539, value1) := by
  rw [input1212_def, output1212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17]
  try dsimp only
  rw [child1211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output17_skip, output1211_skip]
  kernel_rfl

theorem node1213_cond_eq
    (child16 : Flapjack.WordAlloc.removeDeadStructural input16 value11 value1 value2 = (output16, value13, value1))
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value13 value1 value2 = (output1212, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1213 value11 value1 value2 = (output1213, value539, value1) := by
  rw [input1213_def, output1213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child16]
  try dsimp only
  rw [child1212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output16_skip, output1212_skip]
  kernel_rfl

theorem node1214_cond_eq
    (child13 : Flapjack.WordAlloc.removeDeadStructural input13 value9 value1 value2 = (output13, value11, value1))
    (child1213 : Flapjack.WordAlloc.removeDeadStructural input1213 value11 value1 value2 = (output1213, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1214 value9 value1 value2 = (output1214, value539, value1) := by
  rw [input1214_def, output1214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13]
  try dsimp only
  rw [child1213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13_skip, output1213_skip]
  kernel_rfl

theorem node1215_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value9, value1))
    (child1214 : Flapjack.WordAlloc.removeDeadStructural input1214 value9 value1 value2 = (output1214, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1215 value8 value1 value2 = (output1215, value539, value1) := by
  rw [input1215_def, output1215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child1214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output1214_skip]
  kernel_rfl

theorem node1216_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value5 value1 value2 = (output9, value8, value1))
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value8 value1 value2 = (output1215, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1216 value5 value1 value2 = (output1216, value539, value1) := by
  rw [input1216_def, output1216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child1215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output1215_skip]
  kernel_rfl

theorem node1217_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1))
    (child1216 : Flapjack.WordAlloc.removeDeadStructural input1216 value5 value1 value2 = (output1216, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1217 value5 value1 value2 = (output1217, value539, value1) := by
  rw [input1217_def, output1217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child1216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output1216_skip]
  kernel_rfl

theorem node1218_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1217 : Flapjack.WordAlloc.removeDeadStructural input1217 value5 value1 value2 = (output1217, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1218 value4 value1 value2 = (output1218, value539, value1) := by
  rw [input1218_def, output1218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1217_skip]
  kernel_rfl

theorem node1219_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1218 : Flapjack.WordAlloc.removeDeadStructural input1218 value4 value1 value2 = (output1218, value539, value1)) : Flapjack.WordAlloc.removeDeadStructural input1219 value0 value1 value2 = (output1219, value539, value1) := by
  rw [input1219_def, output1219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1218_skip]
  kernel_rfl

theorem node1220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1220 value539 value1 value2 = (output1220, value540, value1) := by
  rw [input1220_def, output1220_def]
  kernel_rfl

theorem node1221_cond_eq
    (child1219 : Flapjack.WordAlloc.removeDeadStructural input1219 value0 value1 value2 = (output1219, value539, value1))
    (child1220 : Flapjack.WordAlloc.removeDeadStructural input1220 value539 value1 value2 = (output1220, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1221 value0 value1 value2 = (output1221, value540, value1) := by
  rw [input1221_def, output1221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1219]
  try dsimp only
  rw [child1220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1219_skip, output1220_skip]
  kernel_rfl

#print axioms node1221_cond_eq
end InitECandidate.Proofs.DeadStages866.Parallel
