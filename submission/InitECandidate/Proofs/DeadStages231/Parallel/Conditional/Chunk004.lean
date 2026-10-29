import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages231.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages231.Parallel
theorem node1024_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value368 value1 value2 = (output610, value369, value1))
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value369 value1 value2 = (output1023, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1024 value368 value1 value2 = (output1024, value540, value1) := by
  rw [input1024_def, output1024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child1023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output1023_skip]
  kernel_rfl

theorem node1025_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value367 value1 value2 = (output609, value368, value1))
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value368 value1 value2 = (output1024, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1025 value367 value1 value2 = (output1025, value540, value1) := by
  rw [input1025_def, output1025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child1024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output1024_skip]
  kernel_rfl

theorem node1026_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value364 value1 value2 = (output608, value367, value1))
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value367 value1 value2 = (output1025, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1026 value364 value1 value2 = (output1026, value540, value1) := by
  rw [input1026_def, output1026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child1025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output1025_skip]
  kernel_rfl

theorem node1027_cond_eq
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value364 value1 value2 = (output603, value364, value1))
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value364 value1 value2 = (output1026, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1027 value364 value1 value2 = (output1027, value540, value1) := by
  rw [input1027_def, output1027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child603]
  try dsimp only
  rw [child1026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output603_skip, output1026_skip]
  kernel_rfl

theorem node1028_cond_eq
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value363 value1 value2 = (output602, value364, value1))
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value364 value1 value2 = (output1027, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1028 value363 value1 value2 = (output1028, value540, value1) := by
  rw [input1028_def, output1028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child602]
  try dsimp only
  rw [child1027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output602_skip, output1027_skip]
  kernel_rfl

theorem node1029_cond_eq
    (child601 : Flapjack.WordAlloc.removeDeadStructural input601 value362 value1 value2 = (output601, value363, value1))
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value363 value1 value2 = (output1028, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1029 value362 value1 value2 = (output1029, value540, value1) := by
  rw [input1029_def, output1029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child601]
  try dsimp only
  rw [child1028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output601_skip, output1028_skip]
  kernel_rfl

theorem node1030_cond_eq
    (child600 : Flapjack.WordAlloc.removeDeadStructural input600 value361 value1 value2 = (output600, value362, value1))
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value362 value1 value2 = (output1029, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1030 value361 value1 value2 = (output1030, value540, value1) := by
  rw [input1030_def, output1030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child600]
  try dsimp only
  rw [child1029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output600_skip, output1029_skip]
  kernel_rfl

theorem node1031_cond_eq
    (child599 : Flapjack.WordAlloc.removeDeadStructural input599 value360 value1 value2 = (output599, value361, value1))
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value361 value1 value2 = (output1030, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1031 value360 value1 value2 = (output1031, value540, value1) := by
  rw [input1031_def, output1031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child599]
  try dsimp only
  rw [child1030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output599_skip, output1030_skip]
  kernel_rfl

theorem node1032_cond_eq
    (child598 : Flapjack.WordAlloc.removeDeadStructural input598 value359 value1 value2 = (output598, value360, value1))
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value360 value1 value2 = (output1031, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1032 value359 value1 value2 = (output1032, value540, value1) := by
  rw [input1032_def, output1032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child598]
  try dsimp only
  rw [child1031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output598_skip, output1031_skip]
  kernel_rfl

theorem node1033_cond_eq
    (child597 : Flapjack.WordAlloc.removeDeadStructural input597 value358 value1 value2 = (output597, value359, value1))
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value359 value1 value2 = (output1032, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1033 value358 value1 value2 = (output1033, value540, value1) := by
  rw [input1033_def, output1033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child597]
  try dsimp only
  rw [child1032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output597_skip, output1032_skip]
  kernel_rfl

theorem node1034_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value357 value1 value2 = (output596, value358, value1))
    (child1033 : Flapjack.WordAlloc.removeDeadStructural input1033 value358 value1 value2 = (output1033, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1034 value357 value1 value2 = (output1034, value540, value1) := by
  rw [input1034_def, output1034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  try dsimp only
  rw [child1033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output596_skip, output1033_skip]
  kernel_rfl

theorem node1035_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value356 value1 value2 = (output595, value357, value1))
    (child1034 : Flapjack.WordAlloc.removeDeadStructural input1034 value357 value1 value2 = (output1034, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1035 value356 value1 value2 = (output1035, value540, value1) := by
  rw [input1035_def, output1035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child1034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output1034_skip]
  kernel_rfl

theorem node1036_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value353 value1 value2 = (output594, value356, value1))
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value356 value1 value2 = (output1035, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1036 value353 value1 value2 = (output1036, value540, value1) := by
  rw [input1036_def, output1036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  try dsimp only
  rw [child1035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output594_skip, output1035_skip]
  kernel_rfl

theorem node1037_cond_eq
    (child589 : Flapjack.WordAlloc.removeDeadStructural input589 value353 value1 value2 = (output589, value353, value1))
    (child1036 : Flapjack.WordAlloc.removeDeadStructural input1036 value353 value1 value2 = (output1036, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1037 value353 value1 value2 = (output1037, value540, value1) := by
  rw [input1037_def, output1037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child589]
  try dsimp only
  rw [child1036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output589_skip, output1036_skip]
  kernel_rfl

theorem node1038_cond_eq
    (child588 : Flapjack.WordAlloc.removeDeadStructural input588 value352 value1 value2 = (output588, value353, value1))
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value353 value1 value2 = (output1037, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1038 value352 value1 value2 = (output1038, value540, value1) := by
  rw [input1038_def, output1038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child588]
  try dsimp only
  rw [child1037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output588_skip, output1037_skip]
  kernel_rfl

theorem node1039_cond_eq
    (child587 : Flapjack.WordAlloc.removeDeadStructural input587 value351 value1 value2 = (output587, value352, value1))
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value352 value1 value2 = (output1038, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1039 value351 value1 value2 = (output1039, value540, value1) := by
  rw [input1039_def, output1039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child587]
  try dsimp only
  rw [child1038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output587_skip, output1038_skip]
  kernel_rfl

theorem node1040_cond_eq
    (child586 : Flapjack.WordAlloc.removeDeadStructural input586 value350 value1 value2 = (output586, value351, value1))
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value351 value1 value2 = (output1039, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1040 value350 value1 value2 = (output1040, value540, value1) := by
  rw [input1040_def, output1040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child586]
  try dsimp only
  rw [child1039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output586_skip, output1039_skip]
  kernel_rfl

theorem node1041_cond_eq
    (child585 : Flapjack.WordAlloc.removeDeadStructural input585 value349 value1 value2 = (output585, value350, value1))
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value350 value1 value2 = (output1040, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1041 value349 value1 value2 = (output1041, value540, value1) := by
  rw [input1041_def, output1041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child585]
  try dsimp only
  rw [child1040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output585_skip, output1040_skip]
  kernel_rfl

theorem node1042_cond_eq
    (child584 : Flapjack.WordAlloc.removeDeadStructural input584 value348 value1 value2 = (output584, value349, value1))
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value349 value1 value2 = (output1041, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1042 value348 value1 value2 = (output1042, value540, value1) := by
  rw [input1042_def, output1042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child584]
  try dsimp only
  rw [child1041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output584_skip, output1041_skip]
  kernel_rfl

theorem node1043_cond_eq
    (child583 : Flapjack.WordAlloc.removeDeadStructural input583 value347 value1 value2 = (output583, value348, value1))
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value348 value1 value2 = (output1042, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1043 value347 value1 value2 = (output1043, value540, value1) := by
  rw [input1043_def, output1043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child583]
  try dsimp only
  rw [child1042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output583_skip, output1042_skip]
  kernel_rfl

theorem node1044_cond_eq
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value346 value1 value2 = (output582, value347, value1))
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value347 value1 value2 = (output1043, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1044 value346 value1 value2 = (output1044, value540, value1) := by
  rw [input1044_def, output1044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child582]
  try dsimp only
  rw [child1043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output582_skip, output1043_skip]
  kernel_rfl

theorem node1045_cond_eq
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value345 value1 value2 = (output581, value346, value1))
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value346 value1 value2 = (output1044, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1045 value345 value1 value2 = (output1045, value540, value1) := by
  rw [input1045_def, output1045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child581]
  try dsimp only
  rw [child1044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output581_skip, output1044_skip]
  kernel_rfl

theorem node1046_cond_eq
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value342 value1 value2 = (output580, value345, value1))
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value345 value1 value2 = (output1045, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1046 value342 value1 value2 = (output1046, value540, value1) := by
  rw [input1046_def, output1046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child580]
  try dsimp only
  rw [child1045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output580_skip, output1045_skip]
  kernel_rfl

theorem node1047_cond_eq
    (child575 : Flapjack.WordAlloc.removeDeadStructural input575 value342 value1 value2 = (output575, value342, value1))
    (child1046 : Flapjack.WordAlloc.removeDeadStructural input1046 value342 value1 value2 = (output1046, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1047 value342 value1 value2 = (output1047, value540, value1) := by
  rw [input1047_def, output1047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child575]
  try dsimp only
  rw [child1046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output575_skip, output1046_skip]
  kernel_rfl

theorem node1048_cond_eq
    (child574 : Flapjack.WordAlloc.removeDeadStructural input574 value341 value1 value2 = (output574, value342, value1))
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value342 value1 value2 = (output1047, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1048 value341 value1 value2 = (output1048, value540, value1) := by
  rw [input1048_def, output1048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child574]
  try dsimp only
  rw [child1047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output574_skip, output1047_skip]
  kernel_rfl

theorem node1049_cond_eq
    (child573 : Flapjack.WordAlloc.removeDeadStructural input573 value340 value1 value2 = (output573, value341, value1))
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value341 value1 value2 = (output1048, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1049 value340 value1 value2 = (output1049, value540, value1) := by
  rw [input1049_def, output1049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child573]
  try dsimp only
  rw [child1048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output573_skip, output1048_skip]
  kernel_rfl

theorem node1050_cond_eq
    (child572 : Flapjack.WordAlloc.removeDeadStructural input572 value339 value1 value2 = (output572, value340, value1))
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value340 value1 value2 = (output1049, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1050 value339 value1 value2 = (output1050, value540, value1) := by
  rw [input1050_def, output1050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child572]
  try dsimp only
  rw [child1049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output572_skip, output1049_skip]
  kernel_rfl

theorem node1051_cond_eq
    (child571 : Flapjack.WordAlloc.removeDeadStructural input571 value338 value1 value2 = (output571, value339, value1))
    (child1050 : Flapjack.WordAlloc.removeDeadStructural input1050 value339 value1 value2 = (output1050, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1051 value338 value1 value2 = (output1051, value540, value1) := by
  rw [input1051_def, output1051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child571]
  try dsimp only
  rw [child1050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output571_skip, output1050_skip]
  kernel_rfl

theorem node1052_cond_eq
    (child570 : Flapjack.WordAlloc.removeDeadStructural input570 value337 value1 value2 = (output570, value338, value1))
    (child1051 : Flapjack.WordAlloc.removeDeadStructural input1051 value338 value1 value2 = (output1051, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1052 value337 value1 value2 = (output1052, value540, value1) := by
  rw [input1052_def, output1052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child570]
  try dsimp only
  rw [child1051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output570_skip, output1051_skip]
  kernel_rfl

theorem node1053_cond_eq
    (child569 : Flapjack.WordAlloc.removeDeadStructural input569 value336 value1 value2 = (output569, value337, value1))
    (child1052 : Flapjack.WordAlloc.removeDeadStructural input1052 value337 value1 value2 = (output1052, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1053 value336 value1 value2 = (output1053, value540, value1) := by
  rw [input1053_def, output1053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child569]
  try dsimp only
  rw [child1052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output569_skip, output1052_skip]
  kernel_rfl

theorem node1054_cond_eq
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value335 value1 value2 = (output568, value336, value1))
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value336 value1 value2 = (output1053, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1054 value335 value1 value2 = (output1054, value540, value1) := by
  rw [input1054_def, output1054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child568]
  try dsimp only
  rw [child1053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output568_skip, output1053_skip]
  kernel_rfl

theorem node1055_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value334 value1 value2 = (output567, value335, value1))
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value335 value1 value2 = (output1054, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1055 value334 value1 value2 = (output1055, value540, value1) := by
  rw [input1055_def, output1055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  try dsimp only
  rw [child1054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output567_skip, output1054_skip]
  kernel_rfl

theorem node1056_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value331 value1 value2 = (output566, value334, value1))
    (child1055 : Flapjack.WordAlloc.removeDeadStructural input1055 value334 value1 value2 = (output1055, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1056 value331 value1 value2 = (output1056, value540, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child1055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output1055_skip]
  kernel_rfl

theorem node1057_cond_eq
    (child561 : Flapjack.WordAlloc.removeDeadStructural input561 value331 value1 value2 = (output561, value331, value1))
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value331 value1 value2 = (output1056, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1057 value331 value1 value2 = (output1057, value540, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child561]
  try dsimp only
  rw [child1056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output561_skip, output1056_skip]
  kernel_rfl

theorem node1058_cond_eq
    (child560 : Flapjack.WordAlloc.removeDeadStructural input560 value330 value1 value2 = (output560, value331, value1))
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value331 value1 value2 = (output1057, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1058 value330 value1 value2 = (output1058, value540, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child560]
  try dsimp only
  rw [child1057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output560_skip, output1057_skip]
  kernel_rfl

theorem node1059_cond_eq
    (child559 : Flapjack.WordAlloc.removeDeadStructural input559 value329 value1 value2 = (output559, value330, value1))
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value330 value1 value2 = (output1058, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1059 value329 value1 value2 = (output1059, value540, value1) := by
  rw [input1059_def, output1059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child559]
  try dsimp only
  rw [child1058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output559_skip, output1058_skip]
  kernel_rfl

theorem node1060_cond_eq
    (child558 : Flapjack.WordAlloc.removeDeadStructural input558 value328 value1 value2 = (output558, value329, value1))
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value329 value1 value2 = (output1059, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1060 value328 value1 value2 = (output1060, value540, value1) := by
  rw [input1060_def, output1060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child558]
  try dsimp only
  rw [child1059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output558_skip, output1059_skip]
  kernel_rfl

theorem node1061_cond_eq
    (child557 : Flapjack.WordAlloc.removeDeadStructural input557 value327 value1 value2 = (output557, value328, value1))
    (child1060 : Flapjack.WordAlloc.removeDeadStructural input1060 value328 value1 value2 = (output1060, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1061 value327 value1 value2 = (output1061, value540, value1) := by
  rw [input1061_def, output1061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child557]
  try dsimp only
  rw [child1060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output557_skip, output1060_skip]
  kernel_rfl

theorem node1062_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value326 value1 value2 = (output556, value327, value1))
    (child1061 : Flapjack.WordAlloc.removeDeadStructural input1061 value327 value1 value2 = (output1061, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1062 value326 value1 value2 = (output1062, value540, value1) := by
  rw [input1062_def, output1062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child1061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output1061_skip]
  kernel_rfl

theorem node1063_cond_eq
    (child555 : Flapjack.WordAlloc.removeDeadStructural input555 value325 value1 value2 = (output555, value326, value1))
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value326 value1 value2 = (output1062, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1063 value325 value1 value2 = (output1063, value540, value1) := by
  rw [input1063_def, output1063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child555]
  try dsimp only
  rw [child1062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output555_skip, output1062_skip]
  kernel_rfl

theorem node1064_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value324 value1 value2 = (output554, value325, value1))
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value325 value1 value2 = (output1063, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1064 value324 value1 value2 = (output1064, value540, value1) := by
  rw [input1064_def, output1064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child1063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output1063_skip]
  kernel_rfl

theorem node1065_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value323 value1 value2 = (output553, value324, value1))
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value324 value1 value2 = (output1064, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1065 value323 value1 value2 = (output1065, value540, value1) := by
  rw [input1065_def, output1065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child1064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output1064_skip]
  kernel_rfl

theorem node1066_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value320 value1 value2 = (output552, value323, value1))
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value323 value1 value2 = (output1065, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1066 value320 value1 value2 = (output1066, value540, value1) := by
  rw [input1066_def, output1066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child1065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output552_skip, output1065_skip]
  kernel_rfl

theorem node1067_cond_eq
    (child547 : Flapjack.WordAlloc.removeDeadStructural input547 value320 value1 value2 = (output547, value320, value1))
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value320 value1 value2 = (output1066, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1067 value320 value1 value2 = (output1067, value540, value1) := by
  rw [input1067_def, output1067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child547]
  try dsimp only
  rw [child1066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output547_skip, output1066_skip]
  kernel_rfl

theorem node1068_cond_eq
    (child546 : Flapjack.WordAlloc.removeDeadStructural input546 value319 value1 value2 = (output546, value320, value1))
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value320 value1 value2 = (output1067, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1068 value319 value1 value2 = (output1068, value540, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child546]
  try dsimp only
  rw [child1067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output546_skip, output1067_skip]
  kernel_rfl

theorem node1069_cond_eq
    (child545 : Flapjack.WordAlloc.removeDeadStructural input545 value318 value1 value2 = (output545, value319, value1))
    (child1068 : Flapjack.WordAlloc.removeDeadStructural input1068 value319 value1 value2 = (output1068, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1069 value318 value1 value2 = (output1069, value540, value1) := by
  rw [input1069_def, output1069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child545]
  try dsimp only
  rw [child1068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output545_skip, output1068_skip]
  kernel_rfl

theorem node1070_cond_eq
    (child544 : Flapjack.WordAlloc.removeDeadStructural input544 value317 value1 value2 = (output544, value318, value1))
    (child1069 : Flapjack.WordAlloc.removeDeadStructural input1069 value318 value1 value2 = (output1069, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1070 value317 value1 value2 = (output1070, value540, value1) := by
  rw [input1070_def, output1070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child544]
  try dsimp only
  rw [child1069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output544_skip, output1069_skip]
  kernel_rfl

theorem node1071_cond_eq
    (child543 : Flapjack.WordAlloc.removeDeadStructural input543 value316 value1 value2 = (output543, value317, value1))
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value317 value1 value2 = (output1070, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1071 value316 value1 value2 = (output1071, value540, value1) := by
  rw [input1071_def, output1071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child543]
  try dsimp only
  rw [child1070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output543_skip, output1070_skip]
  kernel_rfl

theorem node1072_cond_eq
    (child542 : Flapjack.WordAlloc.removeDeadStructural input542 value315 value1 value2 = (output542, value316, value1))
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value316 value1 value2 = (output1071, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1072 value315 value1 value2 = (output1072, value540, value1) := by
  rw [input1072_def, output1072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child542]
  try dsimp only
  rw [child1071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output542_skip, output1071_skip]
  kernel_rfl

theorem node1073_cond_eq
    (child541 : Flapjack.WordAlloc.removeDeadStructural input541 value314 value1 value2 = (output541, value315, value1))
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value315 value1 value2 = (output1072, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1073 value314 value1 value2 = (output1073, value540, value1) := by
  rw [input1073_def, output1073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child541]
  try dsimp only
  rw [child1072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output541_skip, output1072_skip]
  kernel_rfl

theorem node1074_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value313 value1 value2 = (output540, value314, value1))
    (child1073 : Flapjack.WordAlloc.removeDeadStructural input1073 value314 value1 value2 = (output1073, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1074 value313 value1 value2 = (output1074, value540, value1) := by
  rw [input1074_def, output1074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child1073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output1073_skip]
  kernel_rfl

theorem node1075_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value312 value1 value2 = (output539, value313, value1))
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value313 value1 value2 = (output1074, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1075 value312 value1 value2 = (output1075, value540, value1) := by
  rw [input1075_def, output1075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child1074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output1074_skip]
  kernel_rfl

theorem node1076_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value309 value1 value2 = (output538, value312, value1))
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value312 value1 value2 = (output1075, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1076 value309 value1 value2 = (output1076, value540, value1) := by
  rw [input1076_def, output1076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child1075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output1075_skip]
  kernel_rfl

theorem node1077_cond_eq
    (child533 : Flapjack.WordAlloc.removeDeadStructural input533 value309 value1 value2 = (output533, value309, value1))
    (child1076 : Flapjack.WordAlloc.removeDeadStructural input1076 value309 value1 value2 = (output1076, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1077 value309 value1 value2 = (output1077, value540, value1) := by
  rw [input1077_def, output1077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child533]
  try dsimp only
  rw [child1076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output533_skip, output1076_skip]
  kernel_rfl

theorem node1078_cond_eq
    (child532 : Flapjack.WordAlloc.removeDeadStructural input532 value308 value1 value2 = (output532, value309, value1))
    (child1077 : Flapjack.WordAlloc.removeDeadStructural input1077 value309 value1 value2 = (output1077, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1078 value308 value1 value2 = (output1078, value540, value1) := by
  rw [input1078_def, output1078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child532]
  try dsimp only
  rw [child1077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output532_skip, output1077_skip]
  kernel_rfl

theorem node1079_cond_eq
    (child531 : Flapjack.WordAlloc.removeDeadStructural input531 value307 value1 value2 = (output531, value308, value1))
    (child1078 : Flapjack.WordAlloc.removeDeadStructural input1078 value308 value1 value2 = (output1078, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1079 value307 value1 value2 = (output1079, value540, value1) := by
  rw [input1079_def, output1079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child531]
  try dsimp only
  rw [child1078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output531_skip, output1078_skip]
  kernel_rfl

theorem node1080_cond_eq
    (child530 : Flapjack.WordAlloc.removeDeadStructural input530 value215 value1 value2 = (output530, value307, value1))
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value307 value1 value2 = (output1079, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1080 value215 value1 value2 = (output1080, value540, value1) := by
  rw [input1080_def, output1080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child530]
  try dsimp only
  rw [child1079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output530_skip, output1079_skip]
  kernel_rfl

theorem node1081_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value215 value1 value2 = (output273, value215, value1))
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value215 value1 value2 = (output1080, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1081 value215 value1 value2 = (output1081, value540, value1) := by
  rw [input1081_def, output1081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child1080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output1080_skip]
  kernel_rfl

theorem node1082_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value214 value1 value2 = (output272, value215, value1))
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value215 value1 value2 = (output1081, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1082 value214 value1 value2 = (output1082, value540, value1) := by
  rw [input1082_def, output1082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child1081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output1081_skip]
  kernel_rfl

theorem node1083_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value213 value1 value2 = (output271, value214, value1))
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value214 value1 value2 = (output1082, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1083 value213 value1 value2 = (output1083, value540, value1) := by
  rw [input1083_def, output1083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  try dsimp only
  rw [child1082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output271_skip, output1082_skip]
  kernel_rfl

theorem node1084_cond_eq
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value212 value1 value2 = (output270, value213, value1))
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value213 value1 value2 = (output1083, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1084 value212 value1 value2 = (output1084, value540, value1) := by
  rw [input1084_def, output1084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child270]
  try dsimp only
  rw [child1083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output270_skip, output1083_skip]
  kernel_rfl

theorem node1085_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value211 value1 value2 = (output269, value212, value1))
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value212 value1 value2 = (output1084, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1085 value211 value1 value2 = (output1085, value540, value1) := by
  rw [input1085_def, output1085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child1084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output1084_skip]
  kernel_rfl

theorem node1086_cond_eq
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value210 value1 value2 = (output268, value211, value1))
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value211 value1 value2 = (output1085, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1086 value210 value1 value2 = (output1086, value540, value1) := by
  rw [input1086_def, output1086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child268]
  try dsimp only
  rw [child1085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output268_skip, output1085_skip]
  kernel_rfl

theorem node1087_cond_eq
    (child267 : Flapjack.WordAlloc.removeDeadStructural input267 value209 value1 value2 = (output267, value210, value1))
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value210 value1 value2 = (output1086, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1087 value209 value1 value2 = (output1087, value540, value1) := by
  rw [input1087_def, output1087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child267]
  try dsimp only
  rw [child1086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output267_skip, output1086_skip]
  kernel_rfl

theorem node1088_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value208 value1 value2 = (output266, value209, value1))
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value209 value1 value2 = (output1087, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1088 value208 value1 value2 = (output1088, value540, value1) := by
  rw [input1088_def, output1088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  try dsimp only
  rw [child1087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output266_skip, output1087_skip]
  kernel_rfl

theorem node1089_cond_eq
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value207 value1 value2 = (output265, value208, value1))
    (child1088 : Flapjack.WordAlloc.removeDeadStructural input1088 value208 value1 value2 = (output1088, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1089 value207 value1 value2 = (output1089, value540, value1) := by
  rw [input1089_def, output1089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child265]
  try dsimp only
  rw [child1088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output265_skip, output1088_skip]
  kernel_rfl

theorem node1090_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value204 value1 value2 = (output264, value207, value1))
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value207 value1 value2 = (output1089, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1090 value204 value1 value2 = (output1090, value540, value1) := by
  rw [input1090_def, output1090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child1089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output1089_skip]
  kernel_rfl

theorem node1091_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value204 value1 value2 = (output259, value204, value1))
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value204 value1 value2 = (output1090, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1091 value204 value1 value2 = (output1091, value540, value1) := by
  rw [input1091_def, output1091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child1090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output1090_skip]
  kernel_rfl

theorem node1092_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value203 value1 value2 = (output258, value204, value1))
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value204 value1 value2 = (output1091, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1092 value203 value1 value2 = (output1092, value540, value1) := by
  rw [input1092_def, output1092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child1091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output1091_skip]
  kernel_rfl

theorem node1093_cond_eq
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value202 value1 value2 = (output257, value203, value1))
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value203 value1 value2 = (output1092, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1093 value202 value1 value2 = (output1093, value540, value1) := by
  rw [input1093_def, output1093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child257]
  try dsimp only
  rw [child1092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output257_skip, output1092_skip]
  kernel_rfl

theorem node1094_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value201 value1 value2 = (output256, value202, value1))
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value202 value1 value2 = (output1093, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1094 value201 value1 value2 = (output1094, value540, value1) := by
  rw [input1094_def, output1094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child1093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output1093_skip]
  kernel_rfl

theorem node1095_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value200 value1 value2 = (output255, value201, value1))
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value201 value1 value2 = (output1094, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1095 value200 value1 value2 = (output1095, value540, value1) := by
  rw [input1095_def, output1095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child1094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output1094_skip]
  kernel_rfl

theorem node1096_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value199 value1 value2 = (output254, value200, value1))
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value200 value1 value2 = (output1095, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1096 value199 value1 value2 = (output1096, value540, value1) := by
  rw [input1096_def, output1096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  try dsimp only
  rw [child1095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output254_skip, output1095_skip]
  kernel_rfl

theorem node1097_cond_eq
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value198 value1 value2 = (output253, value199, value1))
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value199 value1 value2 = (output1096, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1097 value198 value1 value2 = (output1097, value540, value1) := by
  rw [input1097_def, output1097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child253]
  try dsimp only
  rw [child1096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output253_skip, output1096_skip]
  kernel_rfl

theorem node1098_cond_eq
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value197 value1 value2 = (output252, value198, value1))
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value198 value1 value2 = (output1097, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1098 value197 value1 value2 = (output1098, value540, value1) := by
  rw [input1098_def, output1098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child252]
  try dsimp only
  rw [child1097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output252_skip, output1097_skip]
  kernel_rfl

theorem node1099_cond_eq
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value196 value1 value2 = (output251, value197, value1))
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value197 value1 value2 = (output1098, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1099 value196 value1 value2 = (output1099, value540, value1) := by
  rw [input1099_def, output1099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child251]
  try dsimp only
  rw [child1098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output251_skip, output1098_skip]
  kernel_rfl

theorem node1100_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value193 value1 value2 = (output250, value196, value1))
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value196 value1 value2 = (output1099, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1100 value193 value1 value2 = (output1100, value540, value1) := by
  rw [input1100_def, output1100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child1099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output1099_skip]
  kernel_rfl

theorem node1101_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value193 value1 value2 = (output245, value193, value1))
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value193 value1 value2 = (output1100, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1101 value193 value1 value2 = (output1101, value540, value1) := by
  rw [input1101_def, output1101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child1100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output1100_skip]
  kernel_rfl

theorem node1102_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value192 value1 value2 = (output244, value193, value1))
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value193 value1 value2 = (output1101, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1102 value192 value1 value2 = (output1102, value540, value1) := by
  rw [input1102_def, output1102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child1101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output1101_skip]
  kernel_rfl

theorem node1103_cond_eq
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value191 value1 value2 = (output243, value192, value1))
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value192 value1 value2 = (output1102, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1103 value191 value1 value2 = (output1103, value540, value1) := by
  rw [input1103_def, output1103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child243]
  try dsimp only
  rw [child1102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output243_skip, output1102_skip]
  kernel_rfl

theorem node1104_cond_eq
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value190 value1 value2 = (output242, value191, value1))
    (child1103 : Flapjack.WordAlloc.removeDeadStructural input1103 value191 value1 value2 = (output1103, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1104 value190 value1 value2 = (output1104, value540, value1) := by
  rw [input1104_def, output1104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child242]
  try dsimp only
  rw [child1103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output242_skip, output1103_skip]
  kernel_rfl

theorem node1105_cond_eq
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value189 value1 value2 = (output241, value190, value1))
    (child1104 : Flapjack.WordAlloc.removeDeadStructural input1104 value190 value1 value2 = (output1104, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1105 value189 value1 value2 = (output1105, value540, value1) := by
  rw [input1105_def, output1105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child241]
  try dsimp only
  rw [child1104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output241_skip, output1104_skip]
  kernel_rfl

theorem node1106_cond_eq
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value186 value1 value2 = (output240, value189, value1))
    (child1105 : Flapjack.WordAlloc.removeDeadStructural input1105 value189 value1 value2 = (output1105, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1106 value186 value1 value2 = (output1106, value540, value1) := by
  rw [input1106_def, output1106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child240]
  try dsimp only
  rw [child1105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output240_skip, output1105_skip]
  kernel_rfl

theorem node1107_cond_eq
    (child235 : Flapjack.WordAlloc.removeDeadStructural input235 value186 value1 value2 = (output235, value186, value1))
    (child1106 : Flapjack.WordAlloc.removeDeadStructural input1106 value186 value1 value2 = (output1106, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1107 value186 value1 value2 = (output1107, value540, value1) := by
  rw [input1107_def, output1107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child235]
  try dsimp only
  rw [child1106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output235_skip, output1106_skip]
  kernel_rfl

theorem node1108_cond_eq
    (child234 : Flapjack.WordAlloc.removeDeadStructural input234 value185 value1 value2 = (output234, value186, value1))
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value186 value1 value2 = (output1107, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1108 value185 value1 value2 = (output1108, value540, value1) := by
  rw [input1108_def, output1108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child234]
  try dsimp only
  rw [child1107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output234_skip, output1107_skip]
  kernel_rfl

theorem node1109_cond_eq
    (child233 : Flapjack.WordAlloc.removeDeadStructural input233 value184 value1 value2 = (output233, value185, value1))
    (child1108 : Flapjack.WordAlloc.removeDeadStructural input1108 value185 value1 value2 = (output1108, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1109 value184 value1 value2 = (output1109, value540, value1) := by
  rw [input1109_def, output1109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child233]
  try dsimp only
  rw [child1108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output233_skip, output1108_skip]
  kernel_rfl

theorem node1110_cond_eq
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value183 value1 value2 = (output232, value184, value1))
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value184 value1 value2 = (output1109, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1110 value183 value1 value2 = (output1110, value540, value1) := by
  rw [input1110_def, output1110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child232]
  try dsimp only
  rw [child1109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output232_skip, output1109_skip]
  kernel_rfl

theorem node1111_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value182 value1 value2 = (output231, value183, value1))
    (child1110 : Flapjack.WordAlloc.removeDeadStructural input1110 value183 value1 value2 = (output1110, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1111 value182 value1 value2 = (output1111, value540, value1) := by
  rw [input1111_def, output1111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  try dsimp only
  rw [child1110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output231_skip, output1110_skip]
  kernel_rfl

theorem node1112_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value181 value1 value2 = (output230, value182, value1))
    (child1111 : Flapjack.WordAlloc.removeDeadStructural input1111 value182 value1 value2 = (output1111, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1112 value181 value1 value2 = (output1112, value540, value1) := by
  rw [input1112_def, output1112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child1111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output230_skip, output1111_skip]
  kernel_rfl

theorem node1113_cond_eq
    (child229 : Flapjack.WordAlloc.removeDeadStructural input229 value180 value1 value2 = (output229, value181, value1))
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value181 value1 value2 = (output1112, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1113 value180 value1 value2 = (output1113, value540, value1) := by
  rw [input1113_def, output1113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child229]
  try dsimp only
  rw [child1112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output229_skip, output1112_skip]
  kernel_rfl

theorem node1114_cond_eq
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value179 value1 value2 = (output228, value180, value1))
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value180 value1 value2 = (output1113, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1114 value179 value1 value2 = (output1114, value540, value1) := by
  rw [input1114_def, output1114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child228]
  try dsimp only
  rw [child1113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output228_skip, output1113_skip]
  kernel_rfl

theorem node1115_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value178 value1 value2 = (output227, value179, value1))
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value179 value1 value2 = (output1114, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1115 value178 value1 value2 = (output1115, value540, value1) := by
  rw [input1115_def, output1115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child1114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output1114_skip]
  kernel_rfl

theorem node1116_cond_eq
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value175 value1 value2 = (output226, value178, value1))
    (child1115 : Flapjack.WordAlloc.removeDeadStructural input1115 value178 value1 value2 = (output1115, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1116 value175 value1 value2 = (output1116, value540, value1) := by
  rw [input1116_def, output1116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child226]
  try dsimp only
  rw [child1115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output226_skip, output1115_skip]
  kernel_rfl

theorem node1117_cond_eq
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value175 value1 value2 = (output221, value175, value1))
    (child1116 : Flapjack.WordAlloc.removeDeadStructural input1116 value175 value1 value2 = (output1116, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1117 value175 value1 value2 = (output1117, value540, value1) := by
  rw [input1117_def, output1117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child221]
  try dsimp only
  rw [child1116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output221_skip, output1116_skip]
  kernel_rfl

theorem node1118_cond_eq
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value174 value1 value2 = (output220, value175, value1))
    (child1117 : Flapjack.WordAlloc.removeDeadStructural input1117 value175 value1 value2 = (output1117, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1118 value174 value1 value2 = (output1118, value540, value1) := by
  rw [input1118_def, output1118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child220]
  try dsimp only
  rw [child1117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output220_skip, output1117_skip]
  kernel_rfl

theorem node1119_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value173 value1 value2 = (output219, value174, value1))
    (child1118 : Flapjack.WordAlloc.removeDeadStructural input1118 value174 value1 value2 = (output1118, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1119 value173 value1 value2 = (output1119, value540, value1) := by
  rw [input1119_def, output1119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  try dsimp only
  rw [child1118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output219_skip, output1118_skip]
  kernel_rfl

theorem node1120_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value172 value1 value2 = (output218, value173, value1))
    (child1119 : Flapjack.WordAlloc.removeDeadStructural input1119 value173 value1 value2 = (output1119, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1120 value172 value1 value2 = (output1120, value540, value1) := by
  rw [input1120_def, output1120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  try dsimp only
  rw [child1119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output218_skip, output1119_skip]
  kernel_rfl

theorem node1121_cond_eq
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value171 value1 value2 = (output217, value172, value1))
    (child1120 : Flapjack.WordAlloc.removeDeadStructural input1120 value172 value1 value2 = (output1120, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1121 value171 value1 value2 = (output1121, value540, value1) := by
  rw [input1121_def, output1121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child217]
  try dsimp only
  rw [child1120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output217_skip, output1120_skip]
  kernel_rfl

theorem node1122_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value170 value1 value2 = (output216, value171, value1))
    (child1121 : Flapjack.WordAlloc.removeDeadStructural input1121 value171 value1 value2 = (output1121, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1122 value170 value1 value2 = (output1122, value540, value1) := by
  rw [input1122_def, output1122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child1121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output1121_skip]
  kernel_rfl

theorem node1123_cond_eq
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value169 value1 value2 = (output215, value170, value1))
    (child1122 : Flapjack.WordAlloc.removeDeadStructural input1122 value170 value1 value2 = (output1122, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1123 value169 value1 value2 = (output1123, value540, value1) := by
  rw [input1123_def, output1123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child215]
  try dsimp only
  rw [child1122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output215_skip, output1122_skip]
  kernel_rfl

theorem node1124_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value168 value1 value2 = (output214, value169, value1))
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value169 value1 value2 = (output1123, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1124 value168 value1 value2 = (output1124, value540, value1) := by
  rw [input1124_def, output1124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child1123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output1123_skip]
  kernel_rfl

theorem node1125_cond_eq
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value167 value1 value2 = (output213, value168, value1))
    (child1124 : Flapjack.WordAlloc.removeDeadStructural input1124 value168 value1 value2 = (output1124, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1125 value167 value1 value2 = (output1125, value540, value1) := by
  rw [input1125_def, output1125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child213]
  try dsimp only
  rw [child1124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output213_skip, output1124_skip]
  kernel_rfl

theorem node1126_cond_eq
    (child212 : Flapjack.WordAlloc.removeDeadStructural input212 value164 value1 value2 = (output212, value167, value1))
    (child1125 : Flapjack.WordAlloc.removeDeadStructural input1125 value167 value1 value2 = (output1125, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1126 value164 value1 value2 = (output1126, value540, value1) := by
  rw [input1126_def, output1126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child212]
  try dsimp only
  rw [child1125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output212_skip, output1125_skip]
  kernel_rfl

theorem node1127_cond_eq
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value164 value1 value2 = (output207, value164, value1))
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value164 value1 value2 = (output1126, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1127 value164 value1 value2 = (output1127, value540, value1) := by
  rw [input1127_def, output1127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child207]
  try dsimp only
  rw [child1126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output207_skip, output1126_skip]
  kernel_rfl

theorem node1128_cond_eq
    (child206 : Flapjack.WordAlloc.removeDeadStructural input206 value163 value1 value2 = (output206, value164, value1))
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value164 value1 value2 = (output1127, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1128 value163 value1 value2 = (output1128, value540, value1) := by
  rw [input1128_def, output1128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child206]
  try dsimp only
  rw [child1127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output206_skip, output1127_skip]
  kernel_rfl

theorem node1129_cond_eq
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value162 value1 value2 = (output205, value163, value1))
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value163 value1 value2 = (output1128, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1129 value162 value1 value2 = (output1129, value540, value1) := by
  rw [input1129_def, output1129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child205]
  try dsimp only
  rw [child1128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output205_skip, output1128_skip]
  kernel_rfl

theorem node1130_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value161 value1 value2 = (output204, value162, value1))
    (child1129 : Flapjack.WordAlloc.removeDeadStructural input1129 value162 value1 value2 = (output1129, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1130 value161 value1 value2 = (output1130, value540, value1) := by
  rw [input1130_def, output1130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child1129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output1129_skip]
  kernel_rfl

theorem node1131_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value160 value1 value2 = (output203, value161, value1))
    (child1130 : Flapjack.WordAlloc.removeDeadStructural input1130 value161 value1 value2 = (output1130, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1131 value160 value1 value2 = (output1131, value540, value1) := by
  rw [input1131_def, output1131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child1130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output1130_skip]
  kernel_rfl

theorem node1132_cond_eq
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value157 value1 value2 = (output202, value160, value1))
    (child1131 : Flapjack.WordAlloc.removeDeadStructural input1131 value160 value1 value2 = (output1131, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1132 value157 value1 value2 = (output1132, value540, value1) := by
  rw [input1132_def, output1132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child202]
  try dsimp only
  rw [child1131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output202_skip, output1131_skip]
  kernel_rfl

theorem node1133_cond_eq
    (child197 : Flapjack.WordAlloc.removeDeadStructural input197 value157 value1 value2 = (output197, value157, value1))
    (child1132 : Flapjack.WordAlloc.removeDeadStructural input1132 value157 value1 value2 = (output1132, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1133 value157 value1 value2 = (output1133, value540, value1) := by
  rw [input1133_def, output1133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child197]
  try dsimp only
  rw [child1132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output197_skip, output1132_skip]
  kernel_rfl

theorem node1134_cond_eq
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value156 value1 value2 = (output196, value157, value1))
    (child1133 : Flapjack.WordAlloc.removeDeadStructural input1133 value157 value1 value2 = (output1133, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1134 value156 value1 value2 = (output1134, value540, value1) := by
  rw [input1134_def, output1134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child196]
  try dsimp only
  rw [child1133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output196_skip, output1133_skip]
  kernel_rfl

theorem node1135_cond_eq
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value155 value1 value2 = (output195, value156, value1))
    (child1134 : Flapjack.WordAlloc.removeDeadStructural input1134 value156 value1 value2 = (output1134, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1135 value155 value1 value2 = (output1135, value540, value1) := by
  rw [input1135_def, output1135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child195]
  try dsimp only
  rw [child1134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output195_skip, output1134_skip]
  kernel_rfl

theorem node1136_cond_eq
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value154 value1 value2 = (output194, value155, value1))
    (child1135 : Flapjack.WordAlloc.removeDeadStructural input1135 value155 value1 value2 = (output1135, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1136 value154 value1 value2 = (output1136, value540, value1) := by
  rw [input1136_def, output1136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child194]
  try dsimp only
  rw [child1135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output194_skip, output1135_skip]
  kernel_rfl

theorem node1137_cond_eq
    (child193 : Flapjack.WordAlloc.removeDeadStructural input193 value153 value1 value2 = (output193, value154, value1))
    (child1136 : Flapjack.WordAlloc.removeDeadStructural input1136 value154 value1 value2 = (output1136, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1137 value153 value1 value2 = (output1137, value540, value1) := by
  rw [input1137_def, output1137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child193]
  try dsimp only
  rw [child1136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output193_skip, output1136_skip]
  kernel_rfl

theorem node1138_cond_eq
    (child192 : Flapjack.WordAlloc.removeDeadStructural input192 value152 value1 value2 = (output192, value153, value1))
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value153 value1 value2 = (output1137, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1138 value152 value1 value2 = (output1138, value540, value1) := by
  rw [input1138_def, output1138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child192]
  try dsimp only
  rw [child1137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output192_skip, output1137_skip]
  kernel_rfl

theorem node1139_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value151 value1 value2 = (output191, value152, value1))
    (child1138 : Flapjack.WordAlloc.removeDeadStructural input1138 value152 value1 value2 = (output1138, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1139 value151 value1 value2 = (output1139, value540, value1) := by
  rw [input1139_def, output1139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child1138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output1138_skip]
  kernel_rfl

theorem node1140_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value150 value1 value2 = (output190, value151, value1))
    (child1139 : Flapjack.WordAlloc.removeDeadStructural input1139 value151 value1 value2 = (output1139, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1140 value150 value1 value2 = (output1140, value540, value1) := by
  rw [input1140_def, output1140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child1139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output1139_skip]
  kernel_rfl

theorem node1141_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value149 value1 value2 = (output189, value150, value1))
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value150 value1 value2 = (output1140, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1141 value149 value1 value2 = (output1141, value540, value1) := by
  rw [input1141_def, output1141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child1140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output1140_skip]
  kernel_rfl

theorem node1142_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value146 value1 value2 = (output188, value149, value1))
    (child1141 : Flapjack.WordAlloc.removeDeadStructural input1141 value149 value1 value2 = (output1141, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1142 value146 value1 value2 = (output1142, value540, value1) := by
  rw [input1142_def, output1142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child1141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output1141_skip]
  kernel_rfl

theorem node1143_cond_eq
    (child183 : Flapjack.WordAlloc.removeDeadStructural input183 value146 value1 value2 = (output183, value146, value1))
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value146 value1 value2 = (output1142, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1143 value146 value1 value2 = (output1143, value540, value1) := by
  rw [input1143_def, output1143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child183]
  try dsimp only
  rw [child1142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output183_skip, output1142_skip]
  kernel_rfl

theorem node1144_cond_eq
    (child182 : Flapjack.WordAlloc.removeDeadStructural input182 value145 value1 value2 = (output182, value146, value1))
    (child1143 : Flapjack.WordAlloc.removeDeadStructural input1143 value146 value1 value2 = (output1143, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1144 value145 value1 value2 = (output1144, value540, value1) := by
  rw [input1144_def, output1144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child182]
  try dsimp only
  rw [child1143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output182_skip, output1143_skip]
  kernel_rfl

theorem node1145_cond_eq
    (child181 : Flapjack.WordAlloc.removeDeadStructural input181 value144 value1 value2 = (output181, value145, value1))
    (child1144 : Flapjack.WordAlloc.removeDeadStructural input1144 value145 value1 value2 = (output1144, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1145 value144 value1 value2 = (output1145, value540, value1) := by
  rw [input1145_def, output1145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child181]
  try dsimp only
  rw [child1144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output181_skip, output1144_skip]
  kernel_rfl

theorem node1146_cond_eq
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value143 value1 value2 = (output180, value144, value1))
    (child1145 : Flapjack.WordAlloc.removeDeadStructural input1145 value144 value1 value2 = (output1145, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1146 value143 value1 value2 = (output1146, value540, value1) := by
  rw [input1146_def, output1146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child180]
  try dsimp only
  rw [child1145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output180_skip, output1145_skip]
  kernel_rfl

theorem node1147_cond_eq
    (child179 : Flapjack.WordAlloc.removeDeadStructural input179 value142 value1 value2 = (output179, value143, value1))
    (child1146 : Flapjack.WordAlloc.removeDeadStructural input1146 value143 value1 value2 = (output1146, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1147 value142 value1 value2 = (output1147, value540, value1) := by
  rw [input1147_def, output1147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child179]
  try dsimp only
  rw [child1146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output179_skip, output1146_skip]
  kernel_rfl

theorem node1148_cond_eq
    (child178 : Flapjack.WordAlloc.removeDeadStructural input178 value141 value1 value2 = (output178, value142, value1))
    (child1147 : Flapjack.WordAlloc.removeDeadStructural input1147 value142 value1 value2 = (output1147, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1148 value141 value1 value2 = (output1148, value540, value1) := by
  rw [input1148_def, output1148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child178]
  try dsimp only
  rw [child1147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output178_skip, output1147_skip]
  kernel_rfl

theorem node1149_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value140 value1 value2 = (output177, value141, value1))
    (child1148 : Flapjack.WordAlloc.removeDeadStructural input1148 value141 value1 value2 = (output1148, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1149 value140 value1 value2 = (output1149, value540, value1) := by
  rw [input1149_def, output1149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child1148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output1148_skip]
  kernel_rfl

theorem node1150_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value139 value1 value2 = (output176, value140, value1))
    (child1149 : Flapjack.WordAlloc.removeDeadStructural input1149 value140 value1 value2 = (output1149, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1150 value139 value1 value2 = (output1150, value540, value1) := by
  rw [input1150_def, output1150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child1149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output1149_skip]
  kernel_rfl

theorem node1151_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value138 value1 value2 = (output175, value139, value1))
    (child1150 : Flapjack.WordAlloc.removeDeadStructural input1150 value139 value1 value2 = (output1150, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1151 value138 value1 value2 = (output1151, value540, value1) := by
  rw [input1151_def, output1151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child1150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output1150_skip]
  kernel_rfl

theorem node1152_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value135 value1 value2 = (output174, value138, value1))
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value138 value1 value2 = (output1151, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1152 value135 value1 value2 = (output1152, value540, value1) := by
  rw [input1152_def, output1152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child1151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output1151_skip]
  kernel_rfl

theorem node1153_cond_eq
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value135 value1 value2 = (output169, value135, value1))
    (child1152 : Flapjack.WordAlloc.removeDeadStructural input1152 value135 value1 value2 = (output1152, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1153 value135 value1 value2 = (output1153, value540, value1) := by
  rw [input1153_def, output1153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child169]
  try dsimp only
  rw [child1152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output169_skip, output1152_skip]
  kernel_rfl

theorem node1154_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value134 value1 value2 = (output168, value135, value1))
    (child1153 : Flapjack.WordAlloc.removeDeadStructural input1153 value135 value1 value2 = (output1153, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1154 value134 value1 value2 = (output1154, value540, value1) := by
  rw [input1154_def, output1154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child1153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output1153_skip]
  kernel_rfl

theorem node1155_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value133 value1 value2 = (output167, value134, value1))
    (child1154 : Flapjack.WordAlloc.removeDeadStructural input1154 value134 value1 value2 = (output1154, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1155 value133 value1 value2 = (output1155, value540, value1) := by
  rw [input1155_def, output1155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child1154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output167_skip, output1154_skip]
  kernel_rfl

theorem node1156_cond_eq
    (child166 : Flapjack.WordAlloc.removeDeadStructural input166 value132 value1 value2 = (output166, value133, value1))
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value133 value1 value2 = (output1155, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1156 value132 value1 value2 = (output1156, value540, value1) := by
  rw [input1156_def, output1156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child166]
  try dsimp only
  rw [child1155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output166_skip, output1155_skip]
  kernel_rfl

theorem node1157_cond_eq
    (child165 : Flapjack.WordAlloc.removeDeadStructural input165 value131 value1 value2 = (output165, value132, value1))
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value132 value1 value2 = (output1156, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1157 value131 value1 value2 = (output1157, value540, value1) := by
  rw [input1157_def, output1157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child165]
  try dsimp only
  rw [child1156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output165_skip, output1156_skip]
  kernel_rfl

theorem node1158_cond_eq
    (child164 : Flapjack.WordAlloc.removeDeadStructural input164 value130 value1 value2 = (output164, value131, value1))
    (child1157 : Flapjack.WordAlloc.removeDeadStructural input1157 value131 value1 value2 = (output1157, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1158 value130 value1 value2 = (output1158, value540, value1) := by
  rw [input1158_def, output1158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child164]
  try dsimp only
  rw [child1157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output164_skip, output1157_skip]
  kernel_rfl

theorem node1159_cond_eq
    (child163 : Flapjack.WordAlloc.removeDeadStructural input163 value129 value1 value2 = (output163, value130, value1))
    (child1158 : Flapjack.WordAlloc.removeDeadStructural input1158 value130 value1 value2 = (output1158, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1159 value129 value1 value2 = (output1159, value540, value1) := by
  rw [input1159_def, output1159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child163]
  try dsimp only
  rw [child1158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output163_skip, output1158_skip]
  kernel_rfl

theorem node1160_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value128 value1 value2 = (output162, value129, value1))
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value129 value1 value2 = (output1159, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1160 value128 value1 value2 = (output1160, value540, value1) := by
  rw [input1160_def, output1160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child1159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output1159_skip]
  kernel_rfl

theorem node1161_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value127 value1 value2 = (output161, value128, value1))
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value128 value1 value2 = (output1160, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1161 value127 value1 value2 = (output1161, value540, value1) := by
  rw [input1161_def, output1161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  try dsimp only
  rw [child1160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output161_skip, output1160_skip]
  kernel_rfl

theorem node1162_cond_eq
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value124 value1 value2 = (output160, value127, value1))
    (child1161 : Flapjack.WordAlloc.removeDeadStructural input1161 value127 value1 value2 = (output1161, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1162 value124 value1 value2 = (output1162, value540, value1) := by
  rw [input1162_def, output1162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child160]
  try dsimp only
  rw [child1161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output160_skip, output1161_skip]
  kernel_rfl

theorem node1163_cond_eq
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value124 value1 value2 = (output155, value124, value1))
    (child1162 : Flapjack.WordAlloc.removeDeadStructural input1162 value124 value1 value2 = (output1162, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1163 value124 value1 value2 = (output1163, value540, value1) := by
  rw [input1163_def, output1163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child155]
  try dsimp only
  rw [child1162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output155_skip, output1162_skip]
  kernel_rfl

theorem node1164_cond_eq
    (child154 : Flapjack.WordAlloc.removeDeadStructural input154 value123 value1 value2 = (output154, value124, value1))
    (child1163 : Flapjack.WordAlloc.removeDeadStructural input1163 value124 value1 value2 = (output1163, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1164 value123 value1 value2 = (output1164, value540, value1) := by
  rw [input1164_def, output1164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child154]
  try dsimp only
  rw [child1163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output154_skip, output1163_skip]
  kernel_rfl

theorem node1165_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value122 value1 value2 = (output153, value123, value1))
    (child1164 : Flapjack.WordAlloc.removeDeadStructural input1164 value123 value1 value2 = (output1164, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1165 value122 value1 value2 = (output1165, value540, value1) := by
  rw [input1165_def, output1165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child1164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output1164_skip]
  kernel_rfl

theorem node1166_cond_eq
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value121 value1 value2 = (output152, value122, value1))
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value122 value1 value2 = (output1165, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1166 value121 value1 value2 = (output1166, value540, value1) := by
  rw [input1166_def, output1166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child152]
  try dsimp only
  rw [child1165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output152_skip, output1165_skip]
  kernel_rfl

theorem node1167_cond_eq
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value120 value1 value2 = (output151, value121, value1))
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value121 value1 value2 = (output1166, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1167 value120 value1 value2 = (output1167, value540, value1) := by
  rw [input1167_def, output1167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child151]
  try dsimp only
  rw [child1166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output151_skip, output1166_skip]
  kernel_rfl

theorem node1168_cond_eq
    (child150 : Flapjack.WordAlloc.removeDeadStructural input150 value119 value1 value2 = (output150, value120, value1))
    (child1167 : Flapjack.WordAlloc.removeDeadStructural input1167 value120 value1 value2 = (output1167, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1168 value119 value1 value2 = (output1168, value540, value1) := by
  rw [input1168_def, output1168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child150]
  try dsimp only
  rw [child1167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output150_skip, output1167_skip]
  kernel_rfl

theorem node1169_cond_eq
    (child149 : Flapjack.WordAlloc.removeDeadStructural input149 value118 value1 value2 = (output149, value119, value1))
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value119 value1 value2 = (output1168, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1169 value118 value1 value2 = (output1169, value540, value1) := by
  rw [input1169_def, output1169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child149]
  try dsimp only
  rw [child1168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output149_skip, output1168_skip]
  kernel_rfl

theorem node1170_cond_eq
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value117 value1 value2 = (output148, value118, value1))
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value118 value1 value2 = (output1169, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1170 value117 value1 value2 = (output1170, value540, value1) := by
  rw [input1170_def, output1170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child148]
  try dsimp only
  rw [child1169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output148_skip, output1169_skip]
  kernel_rfl

theorem node1171_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value116 value1 value2 = (output147, value117, value1))
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value117 value1 value2 = (output1170, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1171 value116 value1 value2 = (output1171, value540, value1) := by
  rw [input1171_def, output1171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child1170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output1170_skip]
  kernel_rfl

theorem node1172_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value113 value1 value2 = (output146, value116, value1))
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value116 value1 value2 = (output1171, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1172 value113 value1 value2 = (output1172, value540, value1) := by
  rw [input1172_def, output1172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  try dsimp only
  rw [child1171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output146_skip, output1171_skip]
  kernel_rfl

theorem node1173_cond_eq
    (child141 : Flapjack.WordAlloc.removeDeadStructural input141 value113 value1 value2 = (output141, value113, value1))
    (child1172 : Flapjack.WordAlloc.removeDeadStructural input1172 value113 value1 value2 = (output1172, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1173 value113 value1 value2 = (output1173, value540, value1) := by
  rw [input1173_def, output1173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child141]
  try dsimp only
  rw [child1172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output141_skip, output1172_skip]
  kernel_rfl

theorem node1174_cond_eq
    (child140 : Flapjack.WordAlloc.removeDeadStructural input140 value112 value1 value2 = (output140, value113, value1))
    (child1173 : Flapjack.WordAlloc.removeDeadStructural input1173 value113 value1 value2 = (output1173, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1174 value112 value1 value2 = (output1174, value540, value1) := by
  rw [input1174_def, output1174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child140]
  try dsimp only
  rw [child1173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output140_skip, output1173_skip]
  kernel_rfl

theorem node1175_cond_eq
    (child139 : Flapjack.WordAlloc.removeDeadStructural input139 value111 value1 value2 = (output139, value112, value1))
    (child1174 : Flapjack.WordAlloc.removeDeadStructural input1174 value112 value1 value2 = (output1174, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1175 value111 value1 value2 = (output1175, value540, value1) := by
  rw [input1175_def, output1175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child139]
  try dsimp only
  rw [child1174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output139_skip, output1174_skip]
  kernel_rfl

theorem node1176_cond_eq
    (child138 : Flapjack.WordAlloc.removeDeadStructural input138 value110 value1 value2 = (output138, value111, value1))
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value111 value1 value2 = (output1175, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1176 value110 value1 value2 = (output1176, value540, value1) := by
  rw [input1176_def, output1176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child138]
  try dsimp only
  rw [child1175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output138_skip, output1175_skip]
  kernel_rfl

theorem node1177_cond_eq
    (child137 : Flapjack.WordAlloc.removeDeadStructural input137 value109 value1 value2 = (output137, value110, value1))
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value110 value1 value2 = (output1176, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1177 value109 value1 value2 = (output1177, value540, value1) := by
  rw [input1177_def, output1177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child137]
  try dsimp only
  rw [child1176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output137_skip, output1176_skip]
  kernel_rfl

theorem node1178_cond_eq
    (child136 : Flapjack.WordAlloc.removeDeadStructural input136 value108 value1 value2 = (output136, value109, value1))
    (child1177 : Flapjack.WordAlloc.removeDeadStructural input1177 value109 value1 value2 = (output1177, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1178 value108 value1 value2 = (output1178, value540, value1) := by
  rw [input1178_def, output1178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child136]
  try dsimp only
  rw [child1177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output136_skip, output1177_skip]
  kernel_rfl

theorem node1179_cond_eq
    (child135 : Flapjack.WordAlloc.removeDeadStructural input135 value107 value1 value2 = (output135, value108, value1))
    (child1178 : Flapjack.WordAlloc.removeDeadStructural input1178 value108 value1 value2 = (output1178, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1179 value107 value1 value2 = (output1179, value540, value1) := by
  rw [input1179_def, output1179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child135]
  try dsimp only
  rw [child1178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output135_skip, output1178_skip]
  kernel_rfl

theorem node1180_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value106 value1 value2 = (output134, value107, value1))
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value107 value1 value2 = (output1179, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1180 value106 value1 value2 = (output1180, value540, value1) := by
  rw [input1180_def, output1180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child1179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output1179_skip]
  kernel_rfl

theorem node1181_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value105 value1 value2 = (output133, value106, value1))
    (child1180 : Flapjack.WordAlloc.removeDeadStructural input1180 value106 value1 value2 = (output1180, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1181 value105 value1 value2 = (output1181, value540, value1) := by
  rw [input1181_def, output1181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child1180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output1180_skip]
  kernel_rfl

theorem node1182_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value102 value1 value2 = (output132, value105, value1))
    (child1181 : Flapjack.WordAlloc.removeDeadStructural input1181 value105 value1 value2 = (output1181, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1182 value102 value1 value2 = (output1182, value540, value1) := by
  rw [input1182_def, output1182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child1181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output132_skip, output1181_skip]
  kernel_rfl

theorem node1183_cond_eq
    (child127 : Flapjack.WordAlloc.removeDeadStructural input127 value102 value1 value2 = (output127, value102, value1))
    (child1182 : Flapjack.WordAlloc.removeDeadStructural input1182 value102 value1 value2 = (output1182, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1183 value102 value1 value2 = (output1183, value540, value1) := by
  rw [input1183_def, output1183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child127]
  try dsimp only
  rw [child1182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output127_skip, output1182_skip]
  kernel_rfl

theorem node1184_cond_eq
    (child126 : Flapjack.WordAlloc.removeDeadStructural input126 value101 value1 value2 = (output126, value102, value1))
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value102 value1 value2 = (output1183, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1184 value101 value1 value2 = (output1184, value540, value1) := by
  rw [input1184_def, output1184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child126]
  try dsimp only
  rw [child1183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output126_skip, output1183_skip]
  kernel_rfl

theorem node1185_cond_eq
    (child125 : Flapjack.WordAlloc.removeDeadStructural input125 value100 value1 value2 = (output125, value101, value1))
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value101 value1 value2 = (output1184, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1185 value100 value1 value2 = (output1185, value540, value1) := by
  rw [input1185_def, output1185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child125]
  try dsimp only
  rw [child1184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output125_skip, output1184_skip]
  kernel_rfl

theorem node1186_cond_eq
    (child124 : Flapjack.WordAlloc.removeDeadStructural input124 value99 value1 value2 = (output124, value100, value1))
    (child1185 : Flapjack.WordAlloc.removeDeadStructural input1185 value100 value1 value2 = (output1185, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1186 value99 value1 value2 = (output1186, value540, value1) := by
  rw [input1186_def, output1186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child124]
  try dsimp only
  rw [child1185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output124_skip, output1185_skip]
  kernel_rfl

theorem node1187_cond_eq
    (child123 : Flapjack.WordAlloc.removeDeadStructural input123 value98 value1 value2 = (output123, value99, value1))
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value99 value1 value2 = (output1186, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1187 value98 value1 value2 = (output1187, value540, value1) := by
  rw [input1187_def, output1187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child123]
  try dsimp only
  rw [child1186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output123_skip, output1186_skip]
  kernel_rfl

theorem node1188_cond_eq
    (child122 : Flapjack.WordAlloc.removeDeadStructural input122 value97 value1 value2 = (output122, value98, value1))
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value98 value1 value2 = (output1187, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1188 value97 value1 value2 = (output1188, value540, value1) := by
  rw [input1188_def, output1188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child122]
  try dsimp only
  rw [child1187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output122_skip, output1187_skip]
  kernel_rfl

theorem node1189_cond_eq
    (child121 : Flapjack.WordAlloc.removeDeadStructural input121 value96 value1 value2 = (output121, value97, value1))
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value97 value1 value2 = (output1188, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1189 value96 value1 value2 = (output1189, value540, value1) := by
  rw [input1189_def, output1189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child121]
  try dsimp only
  rw [child1188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output121_skip, output1188_skip]
  kernel_rfl

theorem node1190_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value95 value1 value2 = (output120, value96, value1))
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value96 value1 value2 = (output1189, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1190 value95 value1 value2 = (output1190, value540, value1) := by
  rw [input1190_def, output1190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child120]
  try dsimp only
  rw [child1189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output1189_skip]
  kernel_rfl

theorem node1191_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value94 value1 value2 = (output119, value95, value1))
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value95 value1 value2 = (output1190, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1191 value94 value1 value2 = (output1191, value540, value1) := by
  rw [input1191_def, output1191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child1190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output1190_skip]
  kernel_rfl

theorem node1192_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value91 value1 value2 = (output118, value94, value1))
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value94 value1 value2 = (output1191, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1192 value91 value1 value2 = (output1192, value540, value1) := by
  rw [input1192_def, output1192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child1191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output1191_skip]
  kernel_rfl

theorem node1193_cond_eq
    (child113 : Flapjack.WordAlloc.removeDeadStructural input113 value91 value1 value2 = (output113, value91, value1))
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value91 value1 value2 = (output1192, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1193 value91 value1 value2 = (output1193, value540, value1) := by
  rw [input1193_def, output1193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child113]
  try dsimp only
  rw [child1192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output113_skip, output1192_skip]
  kernel_rfl

theorem node1194_cond_eq
    (child112 : Flapjack.WordAlloc.removeDeadStructural input112 value90 value1 value2 = (output112, value91, value1))
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value91 value1 value2 = (output1193, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1194 value90 value1 value2 = (output1194, value540, value1) := by
  rw [input1194_def, output1194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child112]
  try dsimp only
  rw [child1193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output112_skip, output1193_skip]
  kernel_rfl

theorem node1195_cond_eq
    (child111 : Flapjack.WordAlloc.removeDeadStructural input111 value89 value1 value2 = (output111, value90, value1))
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value90 value1 value2 = (output1194, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1195 value89 value1 value2 = (output1195, value540, value1) := by
  rw [input1195_def, output1195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child111]
  try dsimp only
  rw [child1194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output111_skip, output1194_skip]
  kernel_rfl

theorem node1196_cond_eq
    (child110 : Flapjack.WordAlloc.removeDeadStructural input110 value88 value1 value2 = (output110, value89, value1))
    (child1195 : Flapjack.WordAlloc.removeDeadStructural input1195 value89 value1 value2 = (output1195, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1196 value88 value1 value2 = (output1196, value540, value1) := by
  rw [input1196_def, output1196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child110]
  try dsimp only
  rw [child1195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output110_skip, output1195_skip]
  kernel_rfl

theorem node1197_cond_eq
    (child109 : Flapjack.WordAlloc.removeDeadStructural input109 value87 value1 value2 = (output109, value88, value1))
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value88 value1 value2 = (output1196, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1197 value87 value1 value2 = (output1197, value540, value1) := by
  rw [input1197_def, output1197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child109]
  try dsimp only
  rw [child1196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output109_skip, output1196_skip]
  kernel_rfl

theorem node1198_cond_eq
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value86 value1 value2 = (output108, value87, value1))
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value87 value1 value2 = (output1197, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1198 value86 value1 value2 = (output1198, value540, value1) := by
  rw [input1198_def, output1198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child108]
  try dsimp only
  rw [child1197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output108_skip, output1197_skip]
  kernel_rfl

theorem node1199_cond_eq
    (child107 : Flapjack.WordAlloc.removeDeadStructural input107 value85 value1 value2 = (output107, value86, value1))
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value86 value1 value2 = (output1198, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1199 value85 value1 value2 = (output1199, value540, value1) := by
  rw [input1199_def, output1199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child107]
  try dsimp only
  rw [child1198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output107_skip, output1198_skip]
  kernel_rfl

theorem node1200_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value84 value1 value2 = (output106, value85, value1))
    (child1199 : Flapjack.WordAlloc.removeDeadStructural input1199 value85 value1 value2 = (output1199, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1200 value84 value1 value2 = (output1200, value540, value1) := by
  rw [input1200_def, output1200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child1199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output1199_skip]
  kernel_rfl

theorem node1201_cond_eq
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value83 value1 value2 = (output105, value84, value1))
    (child1200 : Flapjack.WordAlloc.removeDeadStructural input1200 value84 value1 value2 = (output1200, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1201 value83 value1 value2 = (output1201, value540, value1) := by
  rw [input1201_def, output1201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child105]
  try dsimp only
  rw [child1200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output105_skip, output1200_skip]
  kernel_rfl

theorem node1202_cond_eq
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value80 value1 value2 = (output104, value83, value1))
    (child1201 : Flapjack.WordAlloc.removeDeadStructural input1201 value83 value1 value2 = (output1201, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1202 value80 value1 value2 = (output1202, value540, value1) := by
  rw [input1202_def, output1202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child104]
  try dsimp only
  rw [child1201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output104_skip, output1201_skip]
  kernel_rfl

theorem node1203_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value80 value1 value2 = (output99, value80, value1))
    (child1202 : Flapjack.WordAlloc.removeDeadStructural input1202 value80 value1 value2 = (output1202, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1203 value80 value1 value2 = (output1203, value540, value1) := by
  rw [input1203_def, output1203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child1202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output1202_skip]
  kernel_rfl

theorem node1204_cond_eq
    (child98 : Flapjack.WordAlloc.removeDeadStructural input98 value79 value1 value2 = (output98, value80, value1))
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value80 value1 value2 = (output1203, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1204 value79 value1 value2 = (output1204, value540, value1) := by
  rw [input1204_def, output1204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child98]
  try dsimp only
  rw [child1203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output98_skip, output1203_skip]
  kernel_rfl

theorem node1205_cond_eq
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value78 value1 value2 = (output97, value79, value1))
    (child1204 : Flapjack.WordAlloc.removeDeadStructural input1204 value79 value1 value2 = (output1204, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1205 value78 value1 value2 = (output1205, value540, value1) := by
  rw [input1205_def, output1205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child97]
  try dsimp only
  rw [child1204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output97_skip, output1204_skip]
  kernel_rfl

theorem node1206_cond_eq
    (child96 : Flapjack.WordAlloc.removeDeadStructural input96 value77 value1 value2 = (output96, value78, value1))
    (child1205 : Flapjack.WordAlloc.removeDeadStructural input1205 value78 value1 value2 = (output1205, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1206 value77 value1 value2 = (output1206, value540, value1) := by
  rw [input1206_def, output1206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child96]
  try dsimp only
  rw [child1205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output96_skip, output1205_skip]
  kernel_rfl

theorem node1207_cond_eq
    (child95 : Flapjack.WordAlloc.removeDeadStructural input95 value76 value1 value2 = (output95, value77, value1))
    (child1206 : Flapjack.WordAlloc.removeDeadStructural input1206 value77 value1 value2 = (output1206, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1207 value76 value1 value2 = (output1207, value540, value1) := by
  rw [input1207_def, output1207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child95]
  try dsimp only
  rw [child1206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output95_skip, output1206_skip]
  kernel_rfl

theorem node1208_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value75 value1 value2 = (output94, value76, value1))
    (child1207 : Flapjack.WordAlloc.removeDeadStructural input1207 value76 value1 value2 = (output1207, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1208 value75 value1 value2 = (output1208, value540, value1) := by
  rw [input1208_def, output1208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  try dsimp only
  rw [child1207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output1207_skip]
  kernel_rfl

theorem node1209_cond_eq
    (child93 : Flapjack.WordAlloc.removeDeadStructural input93 value74 value1 value2 = (output93, value75, value1))
    (child1208 : Flapjack.WordAlloc.removeDeadStructural input1208 value75 value1 value2 = (output1208, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1209 value74 value1 value2 = (output1209, value540, value1) := by
  rw [input1209_def, output1209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child93]
  try dsimp only
  rw [child1208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output93_skip, output1208_skip]
  kernel_rfl

theorem node1210_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value73 value1 value2 = (output92, value74, value1))
    (child1209 : Flapjack.WordAlloc.removeDeadStructural input1209 value74 value1 value2 = (output1209, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1210 value73 value1 value2 = (output1210, value540, value1) := by
  rw [input1210_def, output1210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child1209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output1209_skip]
  kernel_rfl

theorem node1211_cond_eq
    (child91 : Flapjack.WordAlloc.removeDeadStructural input91 value72 value1 value2 = (output91, value73, value1))
    (child1210 : Flapjack.WordAlloc.removeDeadStructural input1210 value73 value1 value2 = (output1210, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1211 value72 value1 value2 = (output1211, value540, value1) := by
  rw [input1211_def, output1211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child91]
  try dsimp only
  rw [child1210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output91_skip, output1210_skip]
  kernel_rfl

theorem node1212_cond_eq
    (child90 : Flapjack.WordAlloc.removeDeadStructural input90 value69 value1 value2 = (output90, value72, value1))
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value72 value1 value2 = (output1211, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1212 value69 value1 value2 = (output1212, value540, value1) := by
  rw [input1212_def, output1212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child90]
  try dsimp only
  rw [child1211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output90_skip, output1211_skip]
  kernel_rfl

theorem node1213_cond_eq
    (child85 : Flapjack.WordAlloc.removeDeadStructural input85 value69 value1 value2 = (output85, value69, value1))
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value69 value1 value2 = (output1212, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1213 value69 value1 value2 = (output1213, value540, value1) := by
  rw [input1213_def, output1213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child85]
  try dsimp only
  rw [child1212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output85_skip, output1212_skip]
  kernel_rfl

theorem node1214_cond_eq
    (child84 : Flapjack.WordAlloc.removeDeadStructural input84 value68 value1 value2 = (output84, value69, value1))
    (child1213 : Flapjack.WordAlloc.removeDeadStructural input1213 value69 value1 value2 = (output1213, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1214 value68 value1 value2 = (output1214, value540, value1) := by
  rw [input1214_def, output1214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child84]
  try dsimp only
  rw [child1213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output84_skip, output1213_skip]
  kernel_rfl

theorem node1215_cond_eq
    (child83 : Flapjack.WordAlloc.removeDeadStructural input83 value67 value1 value2 = (output83, value68, value1))
    (child1214 : Flapjack.WordAlloc.removeDeadStructural input1214 value68 value1 value2 = (output1214, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1215 value67 value1 value2 = (output1215, value540, value1) := by
  rw [input1215_def, output1215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child83]
  try dsimp only
  rw [child1214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output83_skip, output1214_skip]
  kernel_rfl

theorem node1216_cond_eq
    (child82 : Flapjack.WordAlloc.removeDeadStructural input82 value66 value1 value2 = (output82, value67, value1))
    (child1215 : Flapjack.WordAlloc.removeDeadStructural input1215 value67 value1 value2 = (output1215, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1216 value66 value1 value2 = (output1216, value540, value1) := by
  rw [input1216_def, output1216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child82]
  try dsimp only
  rw [child1215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output82_skip, output1215_skip]
  kernel_rfl

theorem node1217_cond_eq
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value65 value1 value2 = (output81, value66, value1))
    (child1216 : Flapjack.WordAlloc.removeDeadStructural input1216 value66 value1 value2 = (output1216, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1217 value65 value1 value2 = (output1217, value540, value1) := by
  rw [input1217_def, output1217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child81]
  try dsimp only
  rw [child1216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output81_skip, output1216_skip]
  kernel_rfl

theorem node1218_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value64 value1 value2 = (output80, value65, value1))
    (child1217 : Flapjack.WordAlloc.removeDeadStructural input1217 value65 value1 value2 = (output1217, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1218 value64 value1 value2 = (output1218, value540, value1) := by
  rw [input1218_def, output1218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child1217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output1217_skip]
  kernel_rfl

theorem node1219_cond_eq
    (child79 : Flapjack.WordAlloc.removeDeadStructural input79 value63 value1 value2 = (output79, value64, value1))
    (child1218 : Flapjack.WordAlloc.removeDeadStructural input1218 value64 value1 value2 = (output1218, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1219 value63 value1 value2 = (output1219, value540, value1) := by
  rw [input1219_def, output1219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child79]
  try dsimp only
  rw [child1218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output79_skip, output1218_skip]
  kernel_rfl

theorem node1220_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value62 value1 value2 = (output78, value63, value1))
    (child1219 : Flapjack.WordAlloc.removeDeadStructural input1219 value63 value1 value2 = (output1219, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1220 value62 value1 value2 = (output1220, value540, value1) := by
  rw [input1220_def, output1220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  try dsimp only
  rw [child1219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output78_skip, output1219_skip]
  kernel_rfl

theorem node1221_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value61 value1 value2 = (output77, value62, value1))
    (child1220 : Flapjack.WordAlloc.removeDeadStructural input1220 value62 value1 value2 = (output1220, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1221 value61 value1 value2 = (output1221, value540, value1) := by
  rw [input1221_def, output1221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child1220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output1220_skip]
  kernel_rfl

theorem node1222_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value58 value1 value2 = (output76, value61, value1))
    (child1221 : Flapjack.WordAlloc.removeDeadStructural input1221 value61 value1 value2 = (output1221, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1222 value58 value1 value2 = (output1222, value540, value1) := by
  rw [input1222_def, output1222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child1221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output1221_skip]
  kernel_rfl

theorem node1223_cond_eq
    (child71 : Flapjack.WordAlloc.removeDeadStructural input71 value58 value1 value2 = (output71, value58, value1))
    (child1222 : Flapjack.WordAlloc.removeDeadStructural input1222 value58 value1 value2 = (output1222, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1223 value58 value1 value2 = (output1223, value540, value1) := by
  rw [input1223_def, output1223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child71]
  try dsimp only
  rw [child1222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output71_skip, output1222_skip]
  kernel_rfl

theorem node1224_cond_eq
    (child70 : Flapjack.WordAlloc.removeDeadStructural input70 value57 value1 value2 = (output70, value58, value1))
    (child1223 : Flapjack.WordAlloc.removeDeadStructural input1223 value58 value1 value2 = (output1223, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1224 value57 value1 value2 = (output1224, value540, value1) := by
  rw [input1224_def, output1224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child70]
  try dsimp only
  rw [child1223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output70_skip, output1223_skip]
  kernel_rfl

theorem node1225_cond_eq
    (child69 : Flapjack.WordAlloc.removeDeadStructural input69 value56 value1 value2 = (output69, value57, value1))
    (child1224 : Flapjack.WordAlloc.removeDeadStructural input1224 value57 value1 value2 = (output1224, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1225 value56 value1 value2 = (output1225, value540, value1) := by
  rw [input1225_def, output1225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child69]
  try dsimp only
  rw [child1224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output69_skip, output1224_skip]
  kernel_rfl

theorem node1226_cond_eq
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value55 value1 value2 = (output68, value56, value1))
    (child1225 : Flapjack.WordAlloc.removeDeadStructural input1225 value56 value1 value2 = (output1225, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1226 value55 value1 value2 = (output1226, value540, value1) := by
  rw [input1226_def, output1226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child68]
  try dsimp only
  rw [child1225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output68_skip, output1225_skip]
  kernel_rfl

theorem node1227_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value54 value1 value2 = (output67, value55, value1))
    (child1226 : Flapjack.WordAlloc.removeDeadStructural input1226 value55 value1 value2 = (output1226, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1227 value54 value1 value2 = (output1227, value540, value1) := by
  rw [input1227_def, output1227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child1226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output67_skip, output1226_skip]
  kernel_rfl

theorem node1228_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value53 value1 value2 = (output66, value54, value1))
    (child1227 : Flapjack.WordAlloc.removeDeadStructural input1227 value54 value1 value2 = (output1227, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1228 value53 value1 value2 = (output1228, value540, value1) := by
  rw [input1228_def, output1228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child1227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output1227_skip]
  kernel_rfl

theorem node1229_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value52 value1 value2 = (output65, value53, value1))
    (child1228 : Flapjack.WordAlloc.removeDeadStructural input1228 value53 value1 value2 = (output1228, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1229 value52 value1 value2 = (output1229, value540, value1) := by
  rw [input1229_def, output1229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child1228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output1228_skip]
  kernel_rfl

theorem node1230_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value50 value1 value2 = (output64, value52, value1))
    (child1229 : Flapjack.WordAlloc.removeDeadStructural input1229 value52 value1 value2 = (output1229, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1230 value50 value1 value2 = (output1230, value540, value1) := by
  rw [input1230_def, output1230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child1229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output1229_skip]
  kernel_rfl

theorem node1231_cond_eq
    (child61 : Flapjack.WordAlloc.removeDeadStructural input61 value49 value1 value2 = (output61, value50, value1))
    (child1230 : Flapjack.WordAlloc.removeDeadStructural input1230 value50 value1 value2 = (output1230, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1231 value49 value1 value2 = (output1231, value540, value1) := by
  rw [input1231_def, output1231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child61]
  try dsimp only
  rw [child1230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output61_skip, output1230_skip]
  kernel_rfl

theorem node1232_cond_eq
    (child60 : Flapjack.WordAlloc.removeDeadStructural input60 value47 value1 value2 = (output60, value49, value1))
    (child1231 : Flapjack.WordAlloc.removeDeadStructural input1231 value49 value1 value2 = (output1231, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1232 value47 value1 value2 = (output1232, value540, value1) := by
  rw [input1232_def, output1232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child60]
  try dsimp only
  rw [child1231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output60_skip, output1231_skip]
  kernel_rfl

theorem node1233_cond_eq
    (child57 : Flapjack.WordAlloc.removeDeadStructural input57 value46 value1 value2 = (output57, value47, value1))
    (child1232 : Flapjack.WordAlloc.removeDeadStructural input1232 value47 value1 value2 = (output1232, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1233 value46 value1 value2 = (output1233, value540, value1) := by
  rw [input1233_def, output1233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child57]
  try dsimp only
  rw [child1232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output57_skip, output1232_skip]
  kernel_rfl

theorem node1234_cond_eq
    (child56 : Flapjack.WordAlloc.removeDeadStructural input56 value44 value1 value2 = (output56, value46, value1))
    (child1233 : Flapjack.WordAlloc.removeDeadStructural input1233 value46 value1 value2 = (output1233, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1234 value44 value1 value2 = (output1234, value540, value1) := by
  rw [input1234_def, output1234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child56]
  try dsimp only
  rw [child1233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output56_skip, output1233_skip]
  kernel_rfl

theorem node1235_cond_eq
    (child53 : Flapjack.WordAlloc.removeDeadStructural input53 value43 value1 value2 = (output53, value44, value1))
    (child1234 : Flapjack.WordAlloc.removeDeadStructural input1234 value44 value1 value2 = (output1234, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1235 value43 value1 value2 = (output1235, value540, value1) := by
  rw [input1235_def, output1235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child53]
  try dsimp only
  rw [child1234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output53_skip, output1234_skip]
  kernel_rfl

theorem node1236_cond_eq
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value41 value1 value2 = (output52, value43, value1))
    (child1235 : Flapjack.WordAlloc.removeDeadStructural input1235 value43 value1 value2 = (output1235, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1236 value41 value1 value2 = (output1236, value540, value1) := by
  rw [input1236_def, output1236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child52]
  try dsimp only
  rw [child1235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output52_skip, output1235_skip]
  kernel_rfl

theorem node1237_cond_eq
    (child49 : Flapjack.WordAlloc.removeDeadStructural input49 value39 value1 value2 = (output49, value41, value1))
    (child1236 : Flapjack.WordAlloc.removeDeadStructural input1236 value41 value1 value2 = (output1236, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1237 value39 value1 value2 = (output1237, value540, value1) := by
  rw [input1237_def, output1237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child49]
  try dsimp only
  rw [child1236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output49_skip, output1236_skip]
  kernel_rfl

theorem node1238_cond_eq
    (child46 : Flapjack.WordAlloc.removeDeadStructural input46 value38 value1 value2 = (output46, value39, value1))
    (child1237 : Flapjack.WordAlloc.removeDeadStructural input1237 value39 value1 value2 = (output1237, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1238 value38 value1 value2 = (output1238, value540, value1) := by
  rw [input1238_def, output1238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child46]
  try dsimp only
  rw [child1237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output46_skip, output1237_skip]
  kernel_rfl

theorem node1239_cond_eq
    (child45 : Flapjack.WordAlloc.removeDeadStructural input45 value37 value1 value2 = (output45, value38, value1))
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value38 value1 value2 = (output1238, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1239 value37 value1 value2 = (output1239, value540, value1) := by
  rw [input1239_def, output1239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child45]
  try dsimp only
  rw [child1238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output45_skip, output1238_skip]
  kernel_rfl

theorem node1240_cond_eq
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value36 value1 value2 = (output44, value37, value1))
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value37 value1 value2 = (output1239, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1240 value36 value1 value2 = (output1240, value540, value1) := by
  rw [input1240_def, output1240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child44]
  try dsimp only
  rw [child1239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output44_skip, output1239_skip]
  kernel_rfl

theorem node1241_cond_eq
    (child43 : Flapjack.WordAlloc.removeDeadStructural input43 value35 value1 value2 = (output43, value36, value1))
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value36 value1 value2 = (output1240, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1241 value35 value1 value2 = (output1241, value540, value1) := by
  rw [input1241_def, output1241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child43]
  try dsimp only
  rw [child1240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output43_skip, output1240_skip]
  kernel_rfl

theorem node1242_cond_eq
    (child42 : Flapjack.WordAlloc.removeDeadStructural input42 value34 value1 value2 = (output42, value35, value1))
    (child1241 : Flapjack.WordAlloc.removeDeadStructural input1241 value35 value1 value2 = (output1241, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1242 value34 value1 value2 = (output1242, value540, value1) := by
  rw [input1242_def, output1242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child42]
  try dsimp only
  rw [child1241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output42_skip, output1241_skip]
  kernel_rfl

theorem node1243_cond_eq
    (child41 : Flapjack.WordAlloc.removeDeadStructural input41 value32 value1 value2 = (output41, value34, value1))
    (child1242 : Flapjack.WordAlloc.removeDeadStructural input1242 value34 value1 value2 = (output1242, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1243 value32 value1 value2 = (output1243, value540, value1) := by
  rw [input1243_def, output1243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child41]
  try dsimp only
  rw [child1242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output41_skip, output1242_skip]
  kernel_rfl

theorem node1244_cond_eq
    (child38 : Flapjack.WordAlloc.removeDeadStructural input38 value31 value1 value2 = (output38, value32, value1))
    (child1243 : Flapjack.WordAlloc.removeDeadStructural input1243 value32 value1 value2 = (output1243, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1244 value31 value1 value2 = (output1244, value540, value1) := by
  rw [input1244_def, output1244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child38]
  try dsimp only
  rw [child1243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output38_skip, output1243_skip]
  kernel_rfl

theorem node1245_cond_eq
    (child37 : Flapjack.WordAlloc.removeDeadStructural input37 value29 value1 value2 = (output37, value31, value1))
    (child1244 : Flapjack.WordAlloc.removeDeadStructural input1244 value31 value1 value2 = (output1244, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1245 value29 value1 value2 = (output1245, value540, value1) := by
  rw [input1245_def, output1245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child37]
  try dsimp only
  rw [child1244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output37_skip, output1244_skip]
  kernel_rfl

theorem node1246_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value28 value1 value2 = (output34, value29, value1))
    (child1245 : Flapjack.WordAlloc.removeDeadStructural input1245 value29 value1 value2 = (output1245, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1246 value28 value1 value2 = (output1246, value540, value1) := by
  rw [input1246_def, output1246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  try dsimp only
  rw [child1245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output1245_skip]
  kernel_rfl

theorem node1247_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value26 value1 value2 = (output33, value28, value1))
    (child1246 : Flapjack.WordAlloc.removeDeadStructural input1246 value28 value1 value2 = (output1246, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1247 value26 value1 value2 = (output1247, value540, value1) := by
  rw [input1247_def, output1247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  try dsimp only
  rw [child1246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output1246_skip]
  kernel_rfl

theorem node1248_cond_eq
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value25 value1 value2 = (output30, value26, value1))
    (child1247 : Flapjack.WordAlloc.removeDeadStructural input1247 value26 value1 value2 = (output1247, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1248 value25 value1 value2 = (output1248, value540, value1) := by
  rw [input1248_def, output1248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child30]
  try dsimp only
  rw [child1247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output30_skip, output1247_skip]
  kernel_rfl

theorem node1249_cond_eq
    (child29 : Flapjack.WordAlloc.removeDeadStructural input29 value23 value1 value2 = (output29, value25, value1))
    (child1248 : Flapjack.WordAlloc.removeDeadStructural input1248 value25 value1 value2 = (output1248, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1249 value23 value1 value2 = (output1249, value540, value1) := by
  rw [input1249_def, output1249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child29]
  try dsimp only
  rw [child1248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output29_skip, output1248_skip]
  kernel_rfl

theorem node1250_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value21 value1 value2 = (output26, value23, value1))
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value23 value1 value2 = (output1249, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1250 value21 value1 value2 = (output1250, value540, value1) := by
  rw [input1250_def, output1250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child1249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output1249_skip]
  kernel_rfl

theorem node1251_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value20 value1 value2 = (output23, value21, value1))
    (child1250 : Flapjack.WordAlloc.removeDeadStructural input1250 value21 value1 value2 = (output1250, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1251 value20 value1 value2 = (output1251, value540, value1) := by
  rw [input1251_def, output1251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child1250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output1250_skip]
  kernel_rfl

theorem node1252_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value19 value1 value2 = (output22, value20, value1))
    (child1251 : Flapjack.WordAlloc.removeDeadStructural input1251 value20 value1 value2 = (output1251, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1252 value19 value1 value2 = (output1252, value540, value1) := by
  rw [input1252_def, output1252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child1251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output1251_skip]
  kernel_rfl

theorem node1253_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value18 value1 value2 = (output21, value19, value1))
    (child1252 : Flapjack.WordAlloc.removeDeadStructural input1252 value19 value1 value2 = (output1252, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1253 value18 value1 value2 = (output1253, value540, value1) := by
  rw [input1253_def, output1253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  try dsimp only
  rw [child1252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output21_skip, output1252_skip]
  kernel_rfl

theorem node1254_cond_eq
    (child20 : Flapjack.WordAlloc.removeDeadStructural input20 value17 value1 value2 = (output20, value18, value1))
    (child1253 : Flapjack.WordAlloc.removeDeadStructural input1253 value18 value1 value2 = (output1253, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1254 value17 value1 value2 = (output1254, value540, value1) := by
  rw [input1254_def, output1254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child20]
  try dsimp only
  rw [child1253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output20_skip, output1253_skip]
  kernel_rfl

theorem node1255_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value16 value1 value2 = (output19, value17, value1))
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value17 value1 value2 = (output1254, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1255 value16 value1 value2 = (output1255, value540, value1) := by
  rw [input1255_def, output1255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child1254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output19_skip, output1254_skip]
  kernel_rfl

theorem node1256_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value14 value1 value2 = (output18, value16, value1))
    (child1255 : Flapjack.WordAlloc.removeDeadStructural input1255 value16 value1 value2 = (output1255, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1256 value14 value1 value2 = (output1256, value540, value1) := by
  rw [input1256_def, output1256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child1255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output1255_skip]
  kernel_rfl

theorem node1257_cond_eq
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value13 value1 value2 = (output15, value14, value1))
    (child1256 : Flapjack.WordAlloc.removeDeadStructural input1256 value14 value1 value2 = (output1256, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1257 value13 value1 value2 = (output1257, value540, value1) := by
  rw [input1257_def, output1257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child15]
  try dsimp only
  rw [child1256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output15_skip, output1256_skip]
  kernel_rfl

theorem node1258_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value11 value1 value2 = (output14, value13, value1))
    (child1257 : Flapjack.WordAlloc.removeDeadStructural input1257 value13 value1 value2 = (output1257, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1258 value11 value1 value2 = (output1258, value540, value1) := by
  rw [input1258_def, output1258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child1257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output14_skip, output1257_skip]
  kernel_rfl

theorem node1259_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value10 value1 value2 = (output11, value11, value1))
    (child1258 : Flapjack.WordAlloc.removeDeadStructural input1258 value11 value1 value2 = (output1258, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1259 value10 value1 value2 = (output1259, value540, value1) := by
  rw [input1259_def, output1259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child1258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output1258_skip]
  kernel_rfl

theorem node1260_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value10, value1))
    (child1259 : Flapjack.WordAlloc.removeDeadStructural input1259 value10 value1 value2 = (output1259, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1260 value8 value1 value2 = (output1260, value540, value1) := by
  rw [input1260_def, output1260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child1259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output1259_skip]
  kernel_rfl

theorem node1261_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value8, value1))
    (child1260 : Flapjack.WordAlloc.removeDeadStructural input1260 value8 value1 value2 = (output1260, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1261 value7 value1 value2 = (output1261, value540, value1) := by
  rw [input1261_def, output1261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child1260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output1260_skip]
  kernel_rfl

theorem node1262_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value7, value1))
    (child1261 : Flapjack.WordAlloc.removeDeadStructural input1261 value7 value1 value2 = (output1261, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1262 value5 value1 value2 = (output1262, value540, value1) := by
  rw [input1262_def, output1262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child1261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output1261_skip]
  kernel_rfl

theorem node1263_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1262 : Flapjack.WordAlloc.removeDeadStructural input1262 value5 value1 value2 = (output1262, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1263 value4 value1 value2 = (output1263, value540, value1) := by
  rw [input1263_def, output1263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1262_skip]
  kernel_rfl

theorem node1264_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1263 : Flapjack.WordAlloc.removeDeadStructural input1263 value4 value1 value2 = (output1263, value540, value1)) : Flapjack.WordAlloc.removeDeadStructural input1264 value0 value1 value2 = (output1264, value540, value1) := by
  rw [input1264_def, output1264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1263_skip]
  kernel_rfl

theorem node1265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1265 value540 value1 value2 = (output1265, value541, value1) := by
  rw [input1265_def, output1265_def]
  kernel_rfl

theorem node1266_cond_eq
    (child1264 : Flapjack.WordAlloc.removeDeadStructural input1264 value0 value1 value2 = (output1264, value540, value1))
    (child1265 : Flapjack.WordAlloc.removeDeadStructural input1265 value540 value1 value2 = (output1265, value541, value1)) : Flapjack.WordAlloc.removeDeadStructural input1266 value0 value1 value2 = (output1266, value541, value1) := by
  rw [input1266_def, output1266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1264]
  try dsimp only
  rw [child1265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1264_skip, output1265_skip]
  kernel_rfl

#print axioms node1266_cond_eq
end InitECandidate.Proofs.DeadStages231.Parallel
