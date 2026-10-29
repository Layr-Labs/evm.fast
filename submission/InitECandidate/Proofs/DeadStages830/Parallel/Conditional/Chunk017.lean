import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages830.Parallel.Data.Chunk017
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages830.Parallel
theorem node4352_cond_eq
    (child1196 : Flapjack.WordAlloc.removeDeadStructural input1196 value5 value1 value2 = (output1196, value602, value1))
    (child4351 : Flapjack.WordAlloc.removeDeadStructural input4351 value602 value1 value2 = (output4351, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4352 value5 value1 value2 = (output4352, value1810, value1) := by
  rw [input4352_def, output4352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1196]
  try dsimp only
  rw [child4351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1196_skip, output4351_skip]
  kernel_rfl

theorem node4353_cond_eq
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value596 value1 value2 = (output1193, value5, value1))
    (child4352 : Flapjack.WordAlloc.removeDeadStructural input4352 value5 value1 value2 = (output4352, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4353 value596 value1 value2 = (output4353, value1810, value1) := by
  rw [input4353_def, output4353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1193]
  try dsimp only
  rw [child4352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1193_skip, output4352_skip]
  kernel_rfl

theorem node4354_cond_eq
    (child1184 : Flapjack.WordAlloc.removeDeadStructural input1184 value596 value1 value2 = (output1184, value596, value1))
    (child4353 : Flapjack.WordAlloc.removeDeadStructural input4353 value596 value1 value2 = (output4353, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4354 value596 value1 value2 = (output4354, value1810, value1) := by
  rw [input4354_def, output4354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1184]
  try dsimp only
  rw [child4353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1184_skip, output4353_skip]
  kernel_rfl

theorem node4355_cond_eq
    (child1183 : Flapjack.WordAlloc.removeDeadStructural input1183 value595 value1 value2 = (output1183, value596, value1))
    (child4354 : Flapjack.WordAlloc.removeDeadStructural input4354 value596 value1 value2 = (output4354, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4355 value595 value1 value2 = (output4355, value1810, value1) := by
  rw [input4355_def, output4355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1183]
  try dsimp only
  rw [child4354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1183_skip, output4354_skip]
  kernel_rfl

theorem node4356_cond_eq
    (child1182 : Flapjack.WordAlloc.removeDeadStructural input1182 value5 value1 value2 = (output1182, value595, value1))
    (child4355 : Flapjack.WordAlloc.removeDeadStructural input4355 value595 value1 value2 = (output4355, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4356 value5 value1 value2 = (output4356, value1810, value1) := by
  rw [input4356_def, output4356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1182]
  try dsimp only
  rw [child4355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1182_skip, output4355_skip]
  kernel_rfl

theorem node4357_cond_eq
    (child1179 : Flapjack.WordAlloc.removeDeadStructural input1179 value589 value1 value2 = (output1179, value5, value1))
    (child4356 : Flapjack.WordAlloc.removeDeadStructural input4356 value5 value1 value2 = (output4356, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4357 value589 value1 value2 = (output4357, value1810, value1) := by
  rw [input4357_def, output4357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1179]
  try dsimp only
  rw [child4356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1179_skip, output4356_skip]
  kernel_rfl

theorem node4358_cond_eq
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value589 value1 value2 = (output1170, value589, value1))
    (child4357 : Flapjack.WordAlloc.removeDeadStructural input4357 value589 value1 value2 = (output4357, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4358 value589 value1 value2 = (output4358, value1810, value1) := by
  rw [input4358_def, output4358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1170]
  try dsimp only
  rw [child4357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1170_skip, output4357_skip]
  kernel_rfl

theorem node4359_cond_eq
    (child1169 : Flapjack.WordAlloc.removeDeadStructural input1169 value588 value1 value2 = (output1169, value589, value1))
    (child4358 : Flapjack.WordAlloc.removeDeadStructural input4358 value589 value1 value2 = (output4358, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4359 value588 value1 value2 = (output4359, value1810, value1) := by
  rw [input4359_def, output4359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1169]
  try dsimp only
  rw [child4358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1169_skip, output4358_skip]
  kernel_rfl

theorem node4360_cond_eq
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value5 value1 value2 = (output1168, value588, value1))
    (child4359 : Flapjack.WordAlloc.removeDeadStructural input4359 value588 value1 value2 = (output4359, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4360 value5 value1 value2 = (output4360, value1810, value1) := by
  rw [input4360_def, output4360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1168]
  try dsimp only
  rw [child4359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1168_skip, output4359_skip]
  kernel_rfl

theorem node4361_cond_eq
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value582 value1 value2 = (output1165, value5, value1))
    (child4360 : Flapjack.WordAlloc.removeDeadStructural input4360 value5 value1 value2 = (output4360, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4361 value582 value1 value2 = (output4361, value1810, value1) := by
  rw [input4361_def, output4361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1165]
  try dsimp only
  rw [child4360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1165_skip, output4360_skip]
  kernel_rfl

theorem node4362_cond_eq
    (child1156 : Flapjack.WordAlloc.removeDeadStructural input1156 value582 value1 value2 = (output1156, value582, value1))
    (child4361 : Flapjack.WordAlloc.removeDeadStructural input4361 value582 value1 value2 = (output4361, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4362 value582 value1 value2 = (output4362, value1810, value1) := by
  rw [input4362_def, output4362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1156]
  try dsimp only
  rw [child4361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1156_skip, output4361_skip]
  kernel_rfl

theorem node4363_cond_eq
    (child1155 : Flapjack.WordAlloc.removeDeadStructural input1155 value581 value1 value2 = (output1155, value582, value1))
    (child4362 : Flapjack.WordAlloc.removeDeadStructural input4362 value582 value1 value2 = (output4362, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4363 value581 value1 value2 = (output4363, value1810, value1) := by
  rw [input4363_def, output4363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1155]
  try dsimp only
  rw [child4362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1155_skip, output4362_skip]
  kernel_rfl

theorem node4364_cond_eq
    (child1154 : Flapjack.WordAlloc.removeDeadStructural input1154 value5 value1 value2 = (output1154, value581, value1))
    (child4363 : Flapjack.WordAlloc.removeDeadStructural input4363 value581 value1 value2 = (output4363, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4364 value5 value1 value2 = (output4364, value1810, value1) := by
  rw [input4364_def, output4364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1154]
  try dsimp only
  rw [child4363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1154_skip, output4363_skip]
  kernel_rfl

theorem node4365_cond_eq
    (child1151 : Flapjack.WordAlloc.removeDeadStructural input1151 value575 value1 value2 = (output1151, value5, value1))
    (child4364 : Flapjack.WordAlloc.removeDeadStructural input4364 value5 value1 value2 = (output4364, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4365 value575 value1 value2 = (output4365, value1810, value1) := by
  rw [input4365_def, output4365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1151]
  try dsimp only
  rw [child4364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1151_skip, output4364_skip]
  kernel_rfl

theorem node4366_cond_eq
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value575 value1 value2 = (output1142, value575, value1))
    (child4365 : Flapjack.WordAlloc.removeDeadStructural input4365 value575 value1 value2 = (output4365, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4366 value575 value1 value2 = (output4366, value1810, value1) := by
  rw [input4366_def, output4366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1142]
  try dsimp only
  rw [child4365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1142_skip, output4365_skip]
  kernel_rfl

theorem node4367_cond_eq
    (child1141 : Flapjack.WordAlloc.removeDeadStructural input1141 value574 value1 value2 = (output1141, value575, value1))
    (child4366 : Flapjack.WordAlloc.removeDeadStructural input4366 value575 value1 value2 = (output4366, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4367 value574 value1 value2 = (output4367, value1810, value1) := by
  rw [input4367_def, output4367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1141]
  try dsimp only
  rw [child4366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1141_skip, output4366_skip]
  kernel_rfl

theorem node4368_cond_eq
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value5 value1 value2 = (output1140, value574, value1))
    (child4367 : Flapjack.WordAlloc.removeDeadStructural input4367 value574 value1 value2 = (output4367, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4368 value5 value1 value2 = (output4368, value1810, value1) := by
  rw [input4368_def, output4368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1140]
  try dsimp only
  rw [child4367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1140_skip, output4367_skip]
  kernel_rfl

theorem node4369_cond_eq
    (child1137 : Flapjack.WordAlloc.removeDeadStructural input1137 value568 value1 value2 = (output1137, value5, value1))
    (child4368 : Flapjack.WordAlloc.removeDeadStructural input4368 value5 value1 value2 = (output4368, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4369 value568 value1 value2 = (output4369, value1810, value1) := by
  rw [input4369_def, output4369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1137]
  try dsimp only
  rw [child4368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1137_skip, output4368_skip]
  kernel_rfl

theorem node4370_cond_eq
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value568 value1 value2 = (output1128, value568, value1))
    (child4369 : Flapjack.WordAlloc.removeDeadStructural input4369 value568 value1 value2 = (output4369, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4370 value568 value1 value2 = (output4370, value1810, value1) := by
  rw [input4370_def, output4370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1128]
  try dsimp only
  rw [child4369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1128_skip, output4369_skip]
  kernel_rfl

theorem node4371_cond_eq
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value567 value1 value2 = (output1127, value568, value1))
    (child4370 : Flapjack.WordAlloc.removeDeadStructural input4370 value568 value1 value2 = (output4370, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4371 value567 value1 value2 = (output4371, value1810, value1) := by
  rw [input4371_def, output4371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1127]
  try dsimp only
  rw [child4370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1127_skip, output4370_skip]
  kernel_rfl

theorem node4372_cond_eq
    (child1126 : Flapjack.WordAlloc.removeDeadStructural input1126 value5 value1 value2 = (output1126, value567, value1))
    (child4371 : Flapjack.WordAlloc.removeDeadStructural input4371 value567 value1 value2 = (output4371, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4372 value5 value1 value2 = (output4372, value1810, value1) := by
  rw [input4372_def, output4372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1126]
  try dsimp only
  rw [child4371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1126_skip, output4371_skip]
  kernel_rfl

theorem node4373_cond_eq
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value561 value1 value2 = (output1123, value5, value1))
    (child4372 : Flapjack.WordAlloc.removeDeadStructural input4372 value5 value1 value2 = (output4372, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4373 value561 value1 value2 = (output4373, value1810, value1) := by
  rw [input4373_def, output4373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1123]
  try dsimp only
  rw [child4372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1123_skip, output4372_skip]
  kernel_rfl

theorem node4374_cond_eq
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value561 value1 value2 = (output1114, value561, value1))
    (child4373 : Flapjack.WordAlloc.removeDeadStructural input4373 value561 value1 value2 = (output4373, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4374 value561 value1 value2 = (output4374, value1810, value1) := by
  rw [input4374_def, output4374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1114]
  try dsimp only
  rw [child4373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1114_skip, output4373_skip]
  kernel_rfl

theorem node4375_cond_eq
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value560 value1 value2 = (output1113, value561, value1))
    (child4374 : Flapjack.WordAlloc.removeDeadStructural input4374 value561 value1 value2 = (output4374, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4375 value560 value1 value2 = (output4375, value1810, value1) := by
  rw [input4375_def, output4375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1113]
  try dsimp only
  rw [child4374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1113_skip, output4374_skip]
  kernel_rfl

theorem node4376_cond_eq
    (child1112 : Flapjack.WordAlloc.removeDeadStructural input1112 value5 value1 value2 = (output1112, value560, value1))
    (child4375 : Flapjack.WordAlloc.removeDeadStructural input4375 value560 value1 value2 = (output4375, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4376 value5 value1 value2 = (output4376, value1810, value1) := by
  rw [input4376_def, output4376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1112]
  try dsimp only
  rw [child4375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1112_skip, output4375_skip]
  kernel_rfl

theorem node4377_cond_eq
    (child1109 : Flapjack.WordAlloc.removeDeadStructural input1109 value554 value1 value2 = (output1109, value5, value1))
    (child4376 : Flapjack.WordAlloc.removeDeadStructural input4376 value5 value1 value2 = (output4376, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4377 value554 value1 value2 = (output4377, value1810, value1) := by
  rw [input4377_def, output4377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1109]
  try dsimp only
  rw [child4376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1109_skip, output4376_skip]
  kernel_rfl

theorem node4378_cond_eq
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value554 value1 value2 = (output1100, value554, value1))
    (child4377 : Flapjack.WordAlloc.removeDeadStructural input4377 value554 value1 value2 = (output4377, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4378 value554 value1 value2 = (output4378, value1810, value1) := by
  rw [input4378_def, output4378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1100]
  try dsimp only
  rw [child4377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1100_skip, output4377_skip]
  kernel_rfl

theorem node4379_cond_eq
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value553 value1 value2 = (output1099, value554, value1))
    (child4378 : Flapjack.WordAlloc.removeDeadStructural input4378 value554 value1 value2 = (output4378, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4379 value553 value1 value2 = (output4379, value1810, value1) := by
  rw [input4379_def, output4379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1099]
  try dsimp only
  rw [child4378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1099_skip, output4378_skip]
  kernel_rfl

theorem node4380_cond_eq
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value5 value1 value2 = (output1098, value553, value1))
    (child4379 : Flapjack.WordAlloc.removeDeadStructural input4379 value553 value1 value2 = (output4379, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4380 value5 value1 value2 = (output4380, value1810, value1) := by
  rw [input4380_def, output4380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1098]
  try dsimp only
  rw [child4379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1098_skip, output4379_skip]
  kernel_rfl

theorem node4381_cond_eq
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value547 value1 value2 = (output1095, value5, value1))
    (child4380 : Flapjack.WordAlloc.removeDeadStructural input4380 value5 value1 value2 = (output4380, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4381 value547 value1 value2 = (output4381, value1810, value1) := by
  rw [input4381_def, output4381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1095]
  try dsimp only
  rw [child4380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1095_skip, output4380_skip]
  kernel_rfl

theorem node4382_cond_eq
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value547 value1 value2 = (output1086, value547, value1))
    (child4381 : Flapjack.WordAlloc.removeDeadStructural input4381 value547 value1 value2 = (output4381, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4382 value547 value1 value2 = (output4382, value1810, value1) := by
  rw [input4382_def, output4382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1086]
  try dsimp only
  rw [child4381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1086_skip, output4381_skip]
  kernel_rfl

theorem node4383_cond_eq
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value546 value1 value2 = (output1085, value547, value1))
    (child4382 : Flapjack.WordAlloc.removeDeadStructural input4382 value547 value1 value2 = (output4382, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4383 value546 value1 value2 = (output4383, value1810, value1) := by
  rw [input4383_def, output4383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1085]
  try dsimp only
  rw [child4382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1085_skip, output4382_skip]
  kernel_rfl

theorem node4384_cond_eq
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value5 value1 value2 = (output1084, value546, value1))
    (child4383 : Flapjack.WordAlloc.removeDeadStructural input4383 value546 value1 value2 = (output4383, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4384 value5 value1 value2 = (output4384, value1810, value1) := by
  rw [input4384_def, output4384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1084]
  try dsimp only
  rw [child4383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1084_skip, output4383_skip]
  kernel_rfl

theorem node4385_cond_eq
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value540 value1 value2 = (output1081, value5, value1))
    (child4384 : Flapjack.WordAlloc.removeDeadStructural input4384 value5 value1 value2 = (output4384, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4385 value540 value1 value2 = (output4385, value1810, value1) := by
  rw [input4385_def, output4385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1081]
  try dsimp only
  rw [child4384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1081_skip, output4384_skip]
  kernel_rfl

theorem node4386_cond_eq
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value540 value1 value2 = (output1072, value540, value1))
    (child4385 : Flapjack.WordAlloc.removeDeadStructural input4385 value540 value1 value2 = (output4385, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4386 value540 value1 value2 = (output4386, value1810, value1) := by
  rw [input4386_def, output4386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1072]
  try dsimp only
  rw [child4385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1072_skip, output4385_skip]
  kernel_rfl

theorem node4387_cond_eq
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value539 value1 value2 = (output1071, value540, value1))
    (child4386 : Flapjack.WordAlloc.removeDeadStructural input4386 value540 value1 value2 = (output4386, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4387 value539 value1 value2 = (output4387, value1810, value1) := by
  rw [input4387_def, output4387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1071]
  try dsimp only
  rw [child4386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1071_skip, output4386_skip]
  kernel_rfl

theorem node4388_cond_eq
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value5 value1 value2 = (output1070, value539, value1))
    (child4387 : Flapjack.WordAlloc.removeDeadStructural input4387 value539 value1 value2 = (output4387, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4388 value5 value1 value2 = (output4388, value1810, value1) := by
  rw [input4388_def, output4388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1070]
  try dsimp only
  rw [child4387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1070_skip, output4387_skip]
  kernel_rfl

theorem node4389_cond_eq
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value533 value1 value2 = (output1067, value5, value1))
    (child4388 : Flapjack.WordAlloc.removeDeadStructural input4388 value5 value1 value2 = (output4388, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4389 value533 value1 value2 = (output4389, value1810, value1) := by
  rw [input4389_def, output4389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1067]
  try dsimp only
  rw [child4388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1067_skip, output4388_skip]
  kernel_rfl

theorem node4390_cond_eq
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value533 value1 value2 = (output1058, value533, value1))
    (child4389 : Flapjack.WordAlloc.removeDeadStructural input4389 value533 value1 value2 = (output4389, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4390 value533 value1 value2 = (output4390, value1810, value1) := by
  rw [input4390_def, output4390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1058]
  try dsimp only
  rw [child4389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1058_skip, output4389_skip]
  kernel_rfl

theorem node4391_cond_eq
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value532 value1 value2 = (output1057, value533, value1))
    (child4390 : Flapjack.WordAlloc.removeDeadStructural input4390 value533 value1 value2 = (output4390, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4391 value532 value1 value2 = (output4391, value1810, value1) := by
  rw [input4391_def, output4391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1057]
  try dsimp only
  rw [child4390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1057_skip, output4390_skip]
  kernel_rfl

theorem node4392_cond_eq
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value5 value1 value2 = (output1056, value532, value1))
    (child4391 : Flapjack.WordAlloc.removeDeadStructural input4391 value532 value1 value2 = (output4391, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4392 value5 value1 value2 = (output4392, value1810, value1) := by
  rw [input4392_def, output4392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1056]
  try dsimp only
  rw [child4391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1056_skip, output4391_skip]
  kernel_rfl

theorem node4393_cond_eq
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value526 value1 value2 = (output1053, value5, value1))
    (child4392 : Flapjack.WordAlloc.removeDeadStructural input4392 value5 value1 value2 = (output4392, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4393 value526 value1 value2 = (output4393, value1810, value1) := by
  rw [input4393_def, output4393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1053]
  try dsimp only
  rw [child4392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1053_skip, output4392_skip]
  kernel_rfl

theorem node4394_cond_eq
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value526 value1 value2 = (output1044, value526, value1))
    (child4393 : Flapjack.WordAlloc.removeDeadStructural input4393 value526 value1 value2 = (output4393, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4394 value526 value1 value2 = (output4394, value1810, value1) := by
  rw [input4394_def, output4394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1044]
  try dsimp only
  rw [child4393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1044_skip, output4393_skip]
  kernel_rfl

theorem node4395_cond_eq
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value525 value1 value2 = (output1043, value526, value1))
    (child4394 : Flapjack.WordAlloc.removeDeadStructural input4394 value526 value1 value2 = (output4394, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4395 value525 value1 value2 = (output4395, value1810, value1) := by
  rw [input4395_def, output4395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1043]
  try dsimp only
  rw [child4394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1043_skip, output4394_skip]
  kernel_rfl

theorem node4396_cond_eq
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value5 value1 value2 = (output1042, value525, value1))
    (child4395 : Flapjack.WordAlloc.removeDeadStructural input4395 value525 value1 value2 = (output4395, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4396 value5 value1 value2 = (output4396, value1810, value1) := by
  rw [input4396_def, output4396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1042]
  try dsimp only
  rw [child4395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1042_skip, output4395_skip]
  kernel_rfl

theorem node4397_cond_eq
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value519 value1 value2 = (output1039, value5, value1))
    (child4396 : Flapjack.WordAlloc.removeDeadStructural input4396 value5 value1 value2 = (output4396, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4397 value519 value1 value2 = (output4397, value1810, value1) := by
  rw [input4397_def, output4397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1039]
  try dsimp only
  rw [child4396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1039_skip, output4396_skip]
  kernel_rfl

theorem node4398_cond_eq
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value519 value1 value2 = (output1030, value519, value1))
    (child4397 : Flapjack.WordAlloc.removeDeadStructural input4397 value519 value1 value2 = (output4397, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4398 value519 value1 value2 = (output4398, value1810, value1) := by
  rw [input4398_def, output4398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1030]
  try dsimp only
  rw [child4397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1030_skip, output4397_skip]
  kernel_rfl

theorem node4399_cond_eq
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value518 value1 value2 = (output1029, value519, value1))
    (child4398 : Flapjack.WordAlloc.removeDeadStructural input4398 value519 value1 value2 = (output4398, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4399 value518 value1 value2 = (output4399, value1810, value1) := by
  rw [input4399_def, output4399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1029]
  try dsimp only
  rw [child4398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1029_skip, output4398_skip]
  kernel_rfl

theorem node4400_cond_eq
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value5 value1 value2 = (output1028, value518, value1))
    (child4399 : Flapjack.WordAlloc.removeDeadStructural input4399 value518 value1 value2 = (output4399, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4400 value5 value1 value2 = (output4400, value1810, value1) := by
  rw [input4400_def, output4400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1028]
  try dsimp only
  rw [child4399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1028_skip, output4399_skip]
  kernel_rfl

theorem node4401_cond_eq
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value512 value1 value2 = (output1025, value5, value1))
    (child4400 : Flapjack.WordAlloc.removeDeadStructural input4400 value5 value1 value2 = (output4400, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4401 value512 value1 value2 = (output4401, value1810, value1) := by
  rw [input4401_def, output4401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1025]
  try dsimp only
  rw [child4400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1025_skip, output4400_skip]
  kernel_rfl

theorem node4402_cond_eq
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value512 value1 value2 = (output1016, value512, value1))
    (child4401 : Flapjack.WordAlloc.removeDeadStructural input4401 value512 value1 value2 = (output4401, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4402 value512 value1 value2 = (output4402, value1810, value1) := by
  rw [input4402_def, output4402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1016]
  try dsimp only
  rw [child4401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1016_skip, output4401_skip]
  kernel_rfl

theorem node4403_cond_eq
    (child1015 : Flapjack.WordAlloc.removeDeadStructural input1015 value511 value1 value2 = (output1015, value512, value1))
    (child4402 : Flapjack.WordAlloc.removeDeadStructural input4402 value512 value1 value2 = (output4402, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4403 value511 value1 value2 = (output4403, value1810, value1) := by
  rw [input4403_def, output4403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1015]
  try dsimp only
  rw [child4402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1015_skip, output4402_skip]
  kernel_rfl

theorem node4404_cond_eq
    (child1014 : Flapjack.WordAlloc.removeDeadStructural input1014 value5 value1 value2 = (output1014, value511, value1))
    (child4403 : Flapjack.WordAlloc.removeDeadStructural input4403 value511 value1 value2 = (output4403, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4404 value5 value1 value2 = (output4404, value1810, value1) := by
  rw [input4404_def, output4404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1014]
  try dsimp only
  rw [child4403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1014_skip, output4403_skip]
  kernel_rfl

theorem node4405_cond_eq
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value505 value1 value2 = (output1011, value5, value1))
    (child4404 : Flapjack.WordAlloc.removeDeadStructural input4404 value5 value1 value2 = (output4404, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4405 value505 value1 value2 = (output4405, value1810, value1) := by
  rw [input4405_def, output4405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1011]
  try dsimp only
  rw [child4404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1011_skip, output4404_skip]
  kernel_rfl

theorem node4406_cond_eq
    (child1002 : Flapjack.WordAlloc.removeDeadStructural input1002 value505 value1 value2 = (output1002, value505, value1))
    (child4405 : Flapjack.WordAlloc.removeDeadStructural input4405 value505 value1 value2 = (output4405, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4406 value505 value1 value2 = (output4406, value1810, value1) := by
  rw [input4406_def, output4406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1002]
  try dsimp only
  rw [child4405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1002_skip, output4405_skip]
  kernel_rfl

theorem node4407_cond_eq
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value504 value1 value2 = (output1001, value505, value1))
    (child4406 : Flapjack.WordAlloc.removeDeadStructural input4406 value505 value1 value2 = (output4406, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4407 value504 value1 value2 = (output4407, value1810, value1) := by
  rw [input4407_def, output4407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1001]
  try dsimp only
  rw [child4406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1001_skip, output4406_skip]
  kernel_rfl

theorem node4408_cond_eq
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value5 value1 value2 = (output1000, value504, value1))
    (child4407 : Flapjack.WordAlloc.removeDeadStructural input4407 value504 value1 value2 = (output4407, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4408 value5 value1 value2 = (output4408, value1810, value1) := by
  rw [input4408_def, output4408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1000]
  try dsimp only
  rw [child4407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1000_skip, output4407_skip]
  kernel_rfl

theorem node4409_cond_eq
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value498 value1 value2 = (output997, value5, value1))
    (child4408 : Flapjack.WordAlloc.removeDeadStructural input4408 value5 value1 value2 = (output4408, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4409 value498 value1 value2 = (output4409, value1810, value1) := by
  rw [input4409_def, output4409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child997]
  try dsimp only
  rw [child4408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output997_skip, output4408_skip]
  kernel_rfl

theorem node4410_cond_eq
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value498 value1 value2 = (output988, value498, value1))
    (child4409 : Flapjack.WordAlloc.removeDeadStructural input4409 value498 value1 value2 = (output4409, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4410 value498 value1 value2 = (output4410, value1810, value1) := by
  rw [input4410_def, output4410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child988]
  try dsimp only
  rw [child4409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output988_skip, output4409_skip]
  kernel_rfl

theorem node4411_cond_eq
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value497 value1 value2 = (output987, value498, value1))
    (child4410 : Flapjack.WordAlloc.removeDeadStructural input4410 value498 value1 value2 = (output4410, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4411 value497 value1 value2 = (output4411, value1810, value1) := by
  rw [input4411_def, output4411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child987]
  try dsimp only
  rw [child4410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output987_skip, output4410_skip]
  kernel_rfl

theorem node4412_cond_eq
    (child986 : Flapjack.WordAlloc.removeDeadStructural input986 value5 value1 value2 = (output986, value497, value1))
    (child4411 : Flapjack.WordAlloc.removeDeadStructural input4411 value497 value1 value2 = (output4411, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4412 value5 value1 value2 = (output4412, value1810, value1) := by
  rw [input4412_def, output4412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child986]
  try dsimp only
  rw [child4411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output986_skip, output4411_skip]
  kernel_rfl

theorem node4413_cond_eq
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value491 value1 value2 = (output983, value5, value1))
    (child4412 : Flapjack.WordAlloc.removeDeadStructural input4412 value5 value1 value2 = (output4412, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4413 value491 value1 value2 = (output4413, value1810, value1) := by
  rw [input4413_def, output4413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child983]
  try dsimp only
  rw [child4412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output983_skip, output4412_skip]
  kernel_rfl

theorem node4414_cond_eq
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value491 value1 value2 = (output974, value491, value1))
    (child4413 : Flapjack.WordAlloc.removeDeadStructural input4413 value491 value1 value2 = (output4413, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4414 value491 value1 value2 = (output4414, value1810, value1) := by
  rw [input4414_def, output4414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child974]
  try dsimp only
  rw [child4413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output974_skip, output4413_skip]
  kernel_rfl

theorem node4415_cond_eq
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value490 value1 value2 = (output973, value491, value1))
    (child4414 : Flapjack.WordAlloc.removeDeadStructural input4414 value491 value1 value2 = (output4414, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4415 value490 value1 value2 = (output4415, value1810, value1) := by
  rw [input4415_def, output4415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child973]
  try dsimp only
  rw [child4414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output973_skip, output4414_skip]
  kernel_rfl

theorem node4416_cond_eq
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value5 value1 value2 = (output972, value490, value1))
    (child4415 : Flapjack.WordAlloc.removeDeadStructural input4415 value490 value1 value2 = (output4415, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4416 value5 value1 value2 = (output4416, value1810, value1) := by
  rw [input4416_def, output4416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child972]
  try dsimp only
  rw [child4415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output972_skip, output4415_skip]
  kernel_rfl

theorem node4417_cond_eq
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value484 value1 value2 = (output969, value5, value1))
    (child4416 : Flapjack.WordAlloc.removeDeadStructural input4416 value5 value1 value2 = (output4416, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4417 value484 value1 value2 = (output4417, value1810, value1) := by
  rw [input4417_def, output4417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child969]
  try dsimp only
  rw [child4416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output969_skip, output4416_skip]
  kernel_rfl

theorem node4418_cond_eq
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value484 value1 value2 = (output960, value484, value1))
    (child4417 : Flapjack.WordAlloc.removeDeadStructural input4417 value484 value1 value2 = (output4417, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4418 value484 value1 value2 = (output4418, value1810, value1) := by
  rw [input4418_def, output4418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child960]
  try dsimp only
  rw [child4417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output960_skip, output4417_skip]
  kernel_rfl

theorem node4419_cond_eq
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value483 value1 value2 = (output959, value484, value1))
    (child4418 : Flapjack.WordAlloc.removeDeadStructural input4418 value484 value1 value2 = (output4418, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4419 value483 value1 value2 = (output4419, value1810, value1) := by
  rw [input4419_def, output4419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child959]
  try dsimp only
  rw [child4418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output959_skip, output4418_skip]
  kernel_rfl

theorem node4420_cond_eq
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value5 value1 value2 = (output958, value483, value1))
    (child4419 : Flapjack.WordAlloc.removeDeadStructural input4419 value483 value1 value2 = (output4419, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4420 value5 value1 value2 = (output4420, value1810, value1) := by
  rw [input4420_def, output4420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child958]
  try dsimp only
  rw [child4419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output958_skip, output4419_skip]
  kernel_rfl

theorem node4421_cond_eq
    (child955 : Flapjack.WordAlloc.removeDeadStructural input955 value477 value1 value2 = (output955, value5, value1))
    (child4420 : Flapjack.WordAlloc.removeDeadStructural input4420 value5 value1 value2 = (output4420, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4421 value477 value1 value2 = (output4421, value1810, value1) := by
  rw [input4421_def, output4421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child955]
  try dsimp only
  rw [child4420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output955_skip, output4420_skip]
  kernel_rfl

theorem node4422_cond_eq
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value477 value1 value2 = (output946, value477, value1))
    (child4421 : Flapjack.WordAlloc.removeDeadStructural input4421 value477 value1 value2 = (output4421, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4422 value477 value1 value2 = (output4422, value1810, value1) := by
  rw [input4422_def, output4422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child946]
  try dsimp only
  rw [child4421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output946_skip, output4421_skip]
  kernel_rfl

theorem node4423_cond_eq
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value476 value1 value2 = (output945, value477, value1))
    (child4422 : Flapjack.WordAlloc.removeDeadStructural input4422 value477 value1 value2 = (output4422, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4423 value476 value1 value2 = (output4423, value1810, value1) := by
  rw [input4423_def, output4423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child945]
  try dsimp only
  rw [child4422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output945_skip, output4422_skip]
  kernel_rfl

theorem node4424_cond_eq
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value5 value1 value2 = (output944, value476, value1))
    (child4423 : Flapjack.WordAlloc.removeDeadStructural input4423 value476 value1 value2 = (output4423, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4424 value5 value1 value2 = (output4424, value1810, value1) := by
  rw [input4424_def, output4424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child944]
  try dsimp only
  rw [child4423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output944_skip, output4423_skip]
  kernel_rfl

theorem node4425_cond_eq
    (child941 : Flapjack.WordAlloc.removeDeadStructural input941 value470 value1 value2 = (output941, value5, value1))
    (child4424 : Flapjack.WordAlloc.removeDeadStructural input4424 value5 value1 value2 = (output4424, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4425 value470 value1 value2 = (output4425, value1810, value1) := by
  rw [input4425_def, output4425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child941]
  try dsimp only
  rw [child4424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output941_skip, output4424_skip]
  kernel_rfl

theorem node4426_cond_eq
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value470 value1 value2 = (output932, value470, value1))
    (child4425 : Flapjack.WordAlloc.removeDeadStructural input4425 value470 value1 value2 = (output4425, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4426 value470 value1 value2 = (output4426, value1810, value1) := by
  rw [input4426_def, output4426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child932]
  try dsimp only
  rw [child4425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output932_skip, output4425_skip]
  kernel_rfl

theorem node4427_cond_eq
    (child931 : Flapjack.WordAlloc.removeDeadStructural input931 value469 value1 value2 = (output931, value470, value1))
    (child4426 : Flapjack.WordAlloc.removeDeadStructural input4426 value470 value1 value2 = (output4426, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4427 value469 value1 value2 = (output4427, value1810, value1) := by
  rw [input4427_def, output4427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child931]
  try dsimp only
  rw [child4426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output931_skip, output4426_skip]
  kernel_rfl

theorem node4428_cond_eq
    (child930 : Flapjack.WordAlloc.removeDeadStructural input930 value5 value1 value2 = (output930, value469, value1))
    (child4427 : Flapjack.WordAlloc.removeDeadStructural input4427 value469 value1 value2 = (output4427, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4428 value5 value1 value2 = (output4428, value1810, value1) := by
  rw [input4428_def, output4428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child930]
  try dsimp only
  rw [child4427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output930_skip, output4427_skip]
  kernel_rfl

theorem node4429_cond_eq
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value463 value1 value2 = (output927, value5, value1))
    (child4428 : Flapjack.WordAlloc.removeDeadStructural input4428 value5 value1 value2 = (output4428, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4429 value463 value1 value2 = (output4429, value1810, value1) := by
  rw [input4429_def, output4429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child927]
  try dsimp only
  rw [child4428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output927_skip, output4428_skip]
  kernel_rfl

theorem node4430_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value463 value1 value2 = (output918, value463, value1))
    (child4429 : Flapjack.WordAlloc.removeDeadStructural input4429 value463 value1 value2 = (output4429, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4430 value463 value1 value2 = (output4430, value1810, value1) := by
  rw [input4430_def, output4430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  try dsimp only
  rw [child4429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output918_skip, output4429_skip]
  kernel_rfl

theorem node4431_cond_eq
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value462 value1 value2 = (output917, value463, value1))
    (child4430 : Flapjack.WordAlloc.removeDeadStructural input4430 value463 value1 value2 = (output4430, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4431 value462 value1 value2 = (output4431, value1810, value1) := by
  rw [input4431_def, output4431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child917]
  try dsimp only
  rw [child4430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output917_skip, output4430_skip]
  kernel_rfl

theorem node4432_cond_eq
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value5 value1 value2 = (output916, value462, value1))
    (child4431 : Flapjack.WordAlloc.removeDeadStructural input4431 value462 value1 value2 = (output4431, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4432 value5 value1 value2 = (output4432, value1810, value1) := by
  rw [input4432_def, output4432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child916]
  try dsimp only
  rw [child4431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output916_skip, output4431_skip]
  kernel_rfl

theorem node4433_cond_eq
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value456 value1 value2 = (output913, value5, value1))
    (child4432 : Flapjack.WordAlloc.removeDeadStructural input4432 value5 value1 value2 = (output4432, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4433 value456 value1 value2 = (output4433, value1810, value1) := by
  rw [input4433_def, output4433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child913]
  try dsimp only
  rw [child4432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output913_skip, output4432_skip]
  kernel_rfl

theorem node4434_cond_eq
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value456 value1 value2 = (output904, value456, value1))
    (child4433 : Flapjack.WordAlloc.removeDeadStructural input4433 value456 value1 value2 = (output4433, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4434 value456 value1 value2 = (output4434, value1810, value1) := by
  rw [input4434_def, output4434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child904]
  try dsimp only
  rw [child4433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output904_skip, output4433_skip]
  kernel_rfl

theorem node4435_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value455 value1 value2 = (output903, value456, value1))
    (child4434 : Flapjack.WordAlloc.removeDeadStructural input4434 value456 value1 value2 = (output4434, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4435 value455 value1 value2 = (output4435, value1810, value1) := by
  rw [input4435_def, output4435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  try dsimp only
  rw [child4434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output903_skip, output4434_skip]
  kernel_rfl

theorem node4436_cond_eq
    (child902 : Flapjack.WordAlloc.removeDeadStructural input902 value5 value1 value2 = (output902, value455, value1))
    (child4435 : Flapjack.WordAlloc.removeDeadStructural input4435 value455 value1 value2 = (output4435, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4436 value5 value1 value2 = (output4436, value1810, value1) := by
  rw [input4436_def, output4436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child902]
  try dsimp only
  rw [child4435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output902_skip, output4435_skip]
  kernel_rfl

theorem node4437_cond_eq
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value449 value1 value2 = (output899, value5, value1))
    (child4436 : Flapjack.WordAlloc.removeDeadStructural input4436 value5 value1 value2 = (output4436, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4437 value449 value1 value2 = (output4437, value1810, value1) := by
  rw [input4437_def, output4437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child899]
  try dsimp only
  rw [child4436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output899_skip, output4436_skip]
  kernel_rfl

theorem node4438_cond_eq
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value449 value1 value2 = (output890, value449, value1))
    (child4437 : Flapjack.WordAlloc.removeDeadStructural input4437 value449 value1 value2 = (output4437, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4438 value449 value1 value2 = (output4438, value1810, value1) := by
  rw [input4438_def, output4438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child890]
  try dsimp only
  rw [child4437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output890_skip, output4437_skip]
  kernel_rfl

theorem node4439_cond_eq
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value448 value1 value2 = (output889, value449, value1))
    (child4438 : Flapjack.WordAlloc.removeDeadStructural input4438 value449 value1 value2 = (output4438, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4439 value448 value1 value2 = (output4439, value1810, value1) := by
  rw [input4439_def, output4439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child889]
  try dsimp only
  rw [child4438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output889_skip, output4438_skip]
  kernel_rfl

theorem node4440_cond_eq
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value5 value1 value2 = (output888, value448, value1))
    (child4439 : Flapjack.WordAlloc.removeDeadStructural input4439 value448 value1 value2 = (output4439, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4440 value5 value1 value2 = (output4440, value1810, value1) := by
  rw [input4440_def, output4440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child888]
  try dsimp only
  rw [child4439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output888_skip, output4439_skip]
  kernel_rfl

theorem node4441_cond_eq
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value442 value1 value2 = (output885, value5, value1))
    (child4440 : Flapjack.WordAlloc.removeDeadStructural input4440 value5 value1 value2 = (output4440, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4441 value442 value1 value2 = (output4441, value1810, value1) := by
  rw [input4441_def, output4441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child885]
  try dsimp only
  rw [child4440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output885_skip, output4440_skip]
  kernel_rfl

theorem node4442_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value442 value1 value2 = (output876, value442, value1))
    (child4441 : Flapjack.WordAlloc.removeDeadStructural input4441 value442 value1 value2 = (output4441, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4442 value442 value1 value2 = (output4442, value1810, value1) := by
  rw [input4442_def, output4442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  try dsimp only
  rw [child4441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output4441_skip]
  kernel_rfl

theorem node4443_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value441 value1 value2 = (output875, value442, value1))
    (child4442 : Flapjack.WordAlloc.removeDeadStructural input4442 value442 value1 value2 = (output4442, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4443 value441 value1 value2 = (output4443, value1810, value1) := by
  rw [input4443_def, output4443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child4442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output4442_skip]
  kernel_rfl

theorem node4444_cond_eq
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value5 value1 value2 = (output874, value441, value1))
    (child4443 : Flapjack.WordAlloc.removeDeadStructural input4443 value441 value1 value2 = (output4443, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4444 value5 value1 value2 = (output4444, value1810, value1) := by
  rw [input4444_def, output4444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child874]
  try dsimp only
  rw [child4443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output874_skip, output4443_skip]
  kernel_rfl

theorem node4445_cond_eq
    (child871 : Flapjack.WordAlloc.removeDeadStructural input871 value435 value1 value2 = (output871, value5, value1))
    (child4444 : Flapjack.WordAlloc.removeDeadStructural input4444 value5 value1 value2 = (output4444, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4445 value435 value1 value2 = (output4445, value1810, value1) := by
  rw [input4445_def, output4445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child871]
  try dsimp only
  rw [child4444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output871_skip, output4444_skip]
  kernel_rfl

theorem node4446_cond_eq
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value435 value1 value2 = (output862, value435, value1))
    (child4445 : Flapjack.WordAlloc.removeDeadStructural input4445 value435 value1 value2 = (output4445, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4446 value435 value1 value2 = (output4446, value1810, value1) := by
  rw [input4446_def, output4446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child862]
  try dsimp only
  rw [child4445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output862_skip, output4445_skip]
  kernel_rfl

theorem node4447_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value434 value1 value2 = (output861, value435, value1))
    (child4446 : Flapjack.WordAlloc.removeDeadStructural input4446 value435 value1 value2 = (output4446, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4447 value434 value1 value2 = (output4447, value1810, value1) := by
  rw [input4447_def, output4447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child861]
  try dsimp only
  rw [child4446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output861_skip, output4446_skip]
  kernel_rfl

theorem node4448_cond_eq
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value5 value1 value2 = (output860, value434, value1))
    (child4447 : Flapjack.WordAlloc.removeDeadStructural input4447 value434 value1 value2 = (output4447, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4448 value5 value1 value2 = (output4448, value1810, value1) := by
  rw [input4448_def, output4448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child860]
  try dsimp only
  rw [child4447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output860_skip, output4447_skip]
  kernel_rfl

theorem node4449_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value428 value1 value2 = (output857, value5, value1))
    (child4448 : Flapjack.WordAlloc.removeDeadStructural input4448 value5 value1 value2 = (output4448, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4449 value428 value1 value2 = (output4449, value1810, value1) := by
  rw [input4449_def, output4449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child857]
  try dsimp only
  rw [child4448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output857_skip, output4448_skip]
  kernel_rfl

theorem node4450_cond_eq
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value428 value1 value2 = (output848, value428, value1))
    (child4449 : Flapjack.WordAlloc.removeDeadStructural input4449 value428 value1 value2 = (output4449, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4450 value428 value1 value2 = (output4450, value1810, value1) := by
  rw [input4450_def, output4450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child848]
  try dsimp only
  rw [child4449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output848_skip, output4449_skip]
  kernel_rfl

theorem node4451_cond_eq
    (child847 : Flapjack.WordAlloc.removeDeadStructural input847 value427 value1 value2 = (output847, value428, value1))
    (child4450 : Flapjack.WordAlloc.removeDeadStructural input4450 value428 value1 value2 = (output4450, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4451 value427 value1 value2 = (output4451, value1810, value1) := by
  rw [input4451_def, output4451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child847]
  try dsimp only
  rw [child4450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output847_skip, output4450_skip]
  kernel_rfl

theorem node4452_cond_eq
    (child846 : Flapjack.WordAlloc.removeDeadStructural input846 value5 value1 value2 = (output846, value427, value1))
    (child4451 : Flapjack.WordAlloc.removeDeadStructural input4451 value427 value1 value2 = (output4451, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4452 value5 value1 value2 = (output4452, value1810, value1) := by
  rw [input4452_def, output4452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child846]
  try dsimp only
  rw [child4451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output846_skip, output4451_skip]
  kernel_rfl

theorem node4453_cond_eq
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value421 value1 value2 = (output843, value5, value1))
    (child4452 : Flapjack.WordAlloc.removeDeadStructural input4452 value5 value1 value2 = (output4452, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4453 value421 value1 value2 = (output4453, value1810, value1) := by
  rw [input4453_def, output4453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child843]
  try dsimp only
  rw [child4452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output843_skip, output4452_skip]
  kernel_rfl

theorem node4454_cond_eq
    (child834 : Flapjack.WordAlloc.removeDeadStructural input834 value421 value1 value2 = (output834, value421, value1))
    (child4453 : Flapjack.WordAlloc.removeDeadStructural input4453 value421 value1 value2 = (output4453, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4454 value421 value1 value2 = (output4454, value1810, value1) := by
  rw [input4454_def, output4454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child834]
  try dsimp only
  rw [child4453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output834_skip, output4453_skip]
  kernel_rfl

theorem node4455_cond_eq
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value420 value1 value2 = (output833, value421, value1))
    (child4454 : Flapjack.WordAlloc.removeDeadStructural input4454 value421 value1 value2 = (output4454, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4455 value420 value1 value2 = (output4455, value1810, value1) := by
  rw [input4455_def, output4455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child833]
  try dsimp only
  rw [child4454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output833_skip, output4454_skip]
  kernel_rfl

theorem node4456_cond_eq
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value5 value1 value2 = (output832, value420, value1))
    (child4455 : Flapjack.WordAlloc.removeDeadStructural input4455 value420 value1 value2 = (output4455, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4456 value5 value1 value2 = (output4456, value1810, value1) := by
  rw [input4456_def, output4456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child832]
  try dsimp only
  rw [child4455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output832_skip, output4455_skip]
  kernel_rfl

theorem node4457_cond_eq
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value414 value1 value2 = (output829, value5, value1))
    (child4456 : Flapjack.WordAlloc.removeDeadStructural input4456 value5 value1 value2 = (output4456, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4457 value414 value1 value2 = (output4457, value1810, value1) := by
  rw [input4457_def, output4457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child829]
  try dsimp only
  rw [child4456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output829_skip, output4456_skip]
  kernel_rfl

theorem node4458_cond_eq
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value414 value1 value2 = (output820, value414, value1))
    (child4457 : Flapjack.WordAlloc.removeDeadStructural input4457 value414 value1 value2 = (output4457, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4458 value414 value1 value2 = (output4458, value1810, value1) := by
  rw [input4458_def, output4458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child820]
  try dsimp only
  rw [child4457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output820_skip, output4457_skip]
  kernel_rfl

theorem node4459_cond_eq
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value413 value1 value2 = (output819, value414, value1))
    (child4458 : Flapjack.WordAlloc.removeDeadStructural input4458 value414 value1 value2 = (output4458, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4459 value413 value1 value2 = (output4459, value1810, value1) := by
  rw [input4459_def, output4459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child819]
  try dsimp only
  rw [child4458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output819_skip, output4458_skip]
  kernel_rfl

theorem node4460_cond_eq
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value5 value1 value2 = (output818, value413, value1))
    (child4459 : Flapjack.WordAlloc.removeDeadStructural input4459 value413 value1 value2 = (output4459, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4460 value5 value1 value2 = (output4460, value1810, value1) := by
  rw [input4460_def, output4460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child818]
  try dsimp only
  rw [child4459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output818_skip, output4459_skip]
  kernel_rfl

theorem node4461_cond_eq
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value407 value1 value2 = (output815, value5, value1))
    (child4460 : Flapjack.WordAlloc.removeDeadStructural input4460 value5 value1 value2 = (output4460, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4461 value407 value1 value2 = (output4461, value1810, value1) := by
  rw [input4461_def, output4461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child815]
  try dsimp only
  rw [child4460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output815_skip, output4460_skip]
  kernel_rfl

theorem node4462_cond_eq
    (child806 : Flapjack.WordAlloc.removeDeadStructural input806 value407 value1 value2 = (output806, value407, value1))
    (child4461 : Flapjack.WordAlloc.removeDeadStructural input4461 value407 value1 value2 = (output4461, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4462 value407 value1 value2 = (output4462, value1810, value1) := by
  rw [input4462_def, output4462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child806]
  try dsimp only
  rw [child4461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output806_skip, output4461_skip]
  kernel_rfl

theorem node4463_cond_eq
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value406 value1 value2 = (output805, value407, value1))
    (child4462 : Flapjack.WordAlloc.removeDeadStructural input4462 value407 value1 value2 = (output4462, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4463 value406 value1 value2 = (output4463, value1810, value1) := by
  rw [input4463_def, output4463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child805]
  try dsimp only
  rw [child4462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output805_skip, output4462_skip]
  kernel_rfl

theorem node4464_cond_eq
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value5 value1 value2 = (output804, value406, value1))
    (child4463 : Flapjack.WordAlloc.removeDeadStructural input4463 value406 value1 value2 = (output4463, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4464 value5 value1 value2 = (output4464, value1810, value1) := by
  rw [input4464_def, output4464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child804]
  try dsimp only
  rw [child4463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output804_skip, output4463_skip]
  kernel_rfl

theorem node4465_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value400 value1 value2 = (output801, value5, value1))
    (child4464 : Flapjack.WordAlloc.removeDeadStructural input4464 value5 value1 value2 = (output4464, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4465 value400 value1 value2 = (output4465, value1810, value1) := by
  rw [input4465_def, output4465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child4464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output4464_skip]
  kernel_rfl

theorem node4466_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value400 value1 value2 = (output792, value400, value1))
    (child4465 : Flapjack.WordAlloc.removeDeadStructural input4465 value400 value1 value2 = (output4465, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4466 value400 value1 value2 = (output4466, value1810, value1) := by
  rw [input4466_def, output4466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child4465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output4465_skip]
  kernel_rfl

theorem node4467_cond_eq
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value399 value1 value2 = (output791, value400, value1))
    (child4466 : Flapjack.WordAlloc.removeDeadStructural input4466 value400 value1 value2 = (output4466, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4467 value399 value1 value2 = (output4467, value1810, value1) := by
  rw [input4467_def, output4467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child791]
  try dsimp only
  rw [child4466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output791_skip, output4466_skip]
  kernel_rfl

theorem node4468_cond_eq
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value5 value1 value2 = (output790, value399, value1))
    (child4467 : Flapjack.WordAlloc.removeDeadStructural input4467 value399 value1 value2 = (output4467, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4468 value5 value1 value2 = (output4468, value1810, value1) := by
  rw [input4468_def, output4468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child790]
  try dsimp only
  rw [child4467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output790_skip, output4467_skip]
  kernel_rfl

theorem node4469_cond_eq
    (child787 : Flapjack.WordAlloc.removeDeadStructural input787 value393 value1 value2 = (output787, value5, value1))
    (child4468 : Flapjack.WordAlloc.removeDeadStructural input4468 value5 value1 value2 = (output4468, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4469 value393 value1 value2 = (output4469, value1810, value1) := by
  rw [input4469_def, output4469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child787]
  try dsimp only
  rw [child4468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output787_skip, output4468_skip]
  kernel_rfl

theorem node4470_cond_eq
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value393 value1 value2 = (output778, value393, value1))
    (child4469 : Flapjack.WordAlloc.removeDeadStructural input4469 value393 value1 value2 = (output4469, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4470 value393 value1 value2 = (output4470, value1810, value1) := by
  rw [input4470_def, output4470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child778]
  try dsimp only
  rw [child4469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output778_skip, output4469_skip]
  kernel_rfl

theorem node4471_cond_eq
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value392 value1 value2 = (output777, value393, value1))
    (child4470 : Flapjack.WordAlloc.removeDeadStructural input4470 value393 value1 value2 = (output4470, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4471 value392 value1 value2 = (output4471, value1810, value1) := by
  rw [input4471_def, output4471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child777]
  try dsimp only
  rw [child4470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output777_skip, output4470_skip]
  kernel_rfl

theorem node4472_cond_eq
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value5 value1 value2 = (output776, value392, value1))
    (child4471 : Flapjack.WordAlloc.removeDeadStructural input4471 value392 value1 value2 = (output4471, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4472 value5 value1 value2 = (output4472, value1810, value1) := by
  rw [input4472_def, output4472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child776]
  try dsimp only
  rw [child4471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output776_skip, output4471_skip]
  kernel_rfl

theorem node4473_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value386 value1 value2 = (output773, value5, value1))
    (child4472 : Flapjack.WordAlloc.removeDeadStructural input4472 value5 value1 value2 = (output4472, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4473 value386 value1 value2 = (output4473, value1810, value1) := by
  rw [input4473_def, output4473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  try dsimp only
  rw [child4472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output773_skip, output4472_skip]
  kernel_rfl

theorem node4474_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value386 value1 value2 = (output764, value386, value1))
    (child4473 : Flapjack.WordAlloc.removeDeadStructural input4473 value386 value1 value2 = (output4473, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4474 value386 value1 value2 = (output4474, value1810, value1) := by
  rw [input4474_def, output4474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  try dsimp only
  rw [child4473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output4473_skip]
  kernel_rfl

theorem node4475_cond_eq
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value385 value1 value2 = (output763, value386, value1))
    (child4474 : Flapjack.WordAlloc.removeDeadStructural input4474 value386 value1 value2 = (output4474, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4475 value385 value1 value2 = (output4475, value1810, value1) := by
  rw [input4475_def, output4475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child763]
  try dsimp only
  rw [child4474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output763_skip, output4474_skip]
  kernel_rfl

theorem node4476_cond_eq
    (child762 : Flapjack.WordAlloc.removeDeadStructural input762 value5 value1 value2 = (output762, value385, value1))
    (child4475 : Flapjack.WordAlloc.removeDeadStructural input4475 value385 value1 value2 = (output4475, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4476 value5 value1 value2 = (output4476, value1810, value1) := by
  rw [input4476_def, output4476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child762]
  try dsimp only
  rw [child4475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output762_skip, output4475_skip]
  kernel_rfl

theorem node4477_cond_eq
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value379 value1 value2 = (output759, value5, value1))
    (child4476 : Flapjack.WordAlloc.removeDeadStructural input4476 value5 value1 value2 = (output4476, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4477 value379 value1 value2 = (output4477, value1810, value1) := by
  rw [input4477_def, output4477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child759]
  try dsimp only
  rw [child4476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output759_skip, output4476_skip]
  kernel_rfl

theorem node4478_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value379 value1 value2 = (output750, value379, value1))
    (child4477 : Flapjack.WordAlloc.removeDeadStructural input4477 value379 value1 value2 = (output4477, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4478 value379 value1 value2 = (output4478, value1810, value1) := by
  rw [input4478_def, output4478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  try dsimp only
  rw [child4477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output750_skip, output4477_skip]
  kernel_rfl

theorem node4479_cond_eq
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value378 value1 value2 = (output749, value379, value1))
    (child4478 : Flapjack.WordAlloc.removeDeadStructural input4478 value379 value1 value2 = (output4478, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4479 value378 value1 value2 = (output4479, value1810, value1) := by
  rw [input4479_def, output4479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child749]
  try dsimp only
  rw [child4478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output749_skip, output4478_skip]
  kernel_rfl

theorem node4480_cond_eq
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value5 value1 value2 = (output748, value378, value1))
    (child4479 : Flapjack.WordAlloc.removeDeadStructural input4479 value378 value1 value2 = (output4479, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4480 value5 value1 value2 = (output4480, value1810, value1) := by
  rw [input4480_def, output4480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child748]
  try dsimp only
  rw [child4479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output748_skip, output4479_skip]
  kernel_rfl

theorem node4481_cond_eq
    (child745 : Flapjack.WordAlloc.removeDeadStructural input745 value372 value1 value2 = (output745, value5, value1))
    (child4480 : Flapjack.WordAlloc.removeDeadStructural input4480 value5 value1 value2 = (output4480, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4481 value372 value1 value2 = (output4481, value1810, value1) := by
  rw [input4481_def, output4481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child745]
  try dsimp only
  rw [child4480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output745_skip, output4480_skip]
  kernel_rfl

theorem node4482_cond_eq
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value372 value1 value2 = (output736, value372, value1))
    (child4481 : Flapjack.WordAlloc.removeDeadStructural input4481 value372 value1 value2 = (output4481, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4482 value372 value1 value2 = (output4482, value1810, value1) := by
  rw [input4482_def, output4482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child736]
  try dsimp only
  rw [child4481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output736_skip, output4481_skip]
  kernel_rfl

theorem node4483_cond_eq
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value371 value1 value2 = (output735, value372, value1))
    (child4482 : Flapjack.WordAlloc.removeDeadStructural input4482 value372 value1 value2 = (output4482, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4483 value371 value1 value2 = (output4483, value1810, value1) := by
  rw [input4483_def, output4483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child735]
  try dsimp only
  rw [child4482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output735_skip, output4482_skip]
  kernel_rfl

theorem node4484_cond_eq
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value5 value1 value2 = (output734, value371, value1))
    (child4483 : Flapjack.WordAlloc.removeDeadStructural input4483 value371 value1 value2 = (output4483, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4484 value5 value1 value2 = (output4484, value1810, value1) := by
  rw [input4484_def, output4484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child734]
  try dsimp only
  rw [child4483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output734_skip, output4483_skip]
  kernel_rfl

theorem node4485_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value365 value1 value2 = (output731, value5, value1))
    (child4484 : Flapjack.WordAlloc.removeDeadStructural input4484 value5 value1 value2 = (output4484, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4485 value365 value1 value2 = (output4485, value1810, value1) := by
  rw [input4485_def, output4485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  try dsimp only
  rw [child4484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output4484_skip]
  kernel_rfl

theorem node4486_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value365 value1 value2 = (output722, value365, value1))
    (child4485 : Flapjack.WordAlloc.removeDeadStructural input4485 value365 value1 value2 = (output4485, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4486 value365 value1 value2 = (output4486, value1810, value1) := by
  rw [input4486_def, output4486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  try dsimp only
  rw [child4485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output722_skip, output4485_skip]
  kernel_rfl

theorem node4487_cond_eq
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value364 value1 value2 = (output721, value365, value1))
    (child4486 : Flapjack.WordAlloc.removeDeadStructural input4486 value365 value1 value2 = (output4486, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4487 value364 value1 value2 = (output4487, value1810, value1) := by
  rw [input4487_def, output4487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child721]
  try dsimp only
  rw [child4486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output721_skip, output4486_skip]
  kernel_rfl

theorem node4488_cond_eq
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value5 value1 value2 = (output720, value364, value1))
    (child4487 : Flapjack.WordAlloc.removeDeadStructural input4487 value364 value1 value2 = (output4487, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4488 value5 value1 value2 = (output4488, value1810, value1) := by
  rw [input4488_def, output4488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child720]
  try dsimp only
  rw [child4487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output720_skip, output4487_skip]
  kernel_rfl

theorem node4489_cond_eq
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value358 value1 value2 = (output717, value5, value1))
    (child4488 : Flapjack.WordAlloc.removeDeadStructural input4488 value5 value1 value2 = (output4488, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4489 value358 value1 value2 = (output4489, value1810, value1) := by
  rw [input4489_def, output4489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child717]
  try dsimp only
  rw [child4488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output717_skip, output4488_skip]
  kernel_rfl

theorem node4490_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value358 value1 value2 = (output708, value358, value1))
    (child4489 : Flapjack.WordAlloc.removeDeadStructural input4489 value358 value1 value2 = (output4489, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4490 value358 value1 value2 = (output4490, value1810, value1) := by
  rw [input4490_def, output4490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child4489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output4489_skip]
  kernel_rfl

theorem node4491_cond_eq
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value357 value1 value2 = (output707, value358, value1))
    (child4490 : Flapjack.WordAlloc.removeDeadStructural input4490 value358 value1 value2 = (output4490, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4491 value357 value1 value2 = (output4491, value1810, value1) := by
  rw [input4491_def, output4491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child707]
  try dsimp only
  rw [child4490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output707_skip, output4490_skip]
  kernel_rfl

theorem node4492_cond_eq
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value5 value1 value2 = (output706, value357, value1))
    (child4491 : Flapjack.WordAlloc.removeDeadStructural input4491 value357 value1 value2 = (output4491, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4492 value5 value1 value2 = (output4492, value1810, value1) := by
  rw [input4492_def, output4492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child706]
  try dsimp only
  rw [child4491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output706_skip, output4491_skip]
  kernel_rfl

theorem node4493_cond_eq
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value351 value1 value2 = (output703, value5, value1))
    (child4492 : Flapjack.WordAlloc.removeDeadStructural input4492 value5 value1 value2 = (output4492, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4493 value351 value1 value2 = (output4493, value1810, value1) := by
  rw [input4493_def, output4493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child703]
  try dsimp only
  rw [child4492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output703_skip, output4492_skip]
  kernel_rfl

theorem node4494_cond_eq
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value351 value1 value2 = (output694, value351, value1))
    (child4493 : Flapjack.WordAlloc.removeDeadStructural input4493 value351 value1 value2 = (output4493, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4494 value351 value1 value2 = (output4494, value1810, value1) := by
  rw [input4494_def, output4494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child694]
  try dsimp only
  rw [child4493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output694_skip, output4493_skip]
  kernel_rfl

theorem node4495_cond_eq
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value350 value1 value2 = (output693, value351, value1))
    (child4494 : Flapjack.WordAlloc.removeDeadStructural input4494 value351 value1 value2 = (output4494, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4495 value350 value1 value2 = (output4495, value1810, value1) := by
  rw [input4495_def, output4495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child693]
  try dsimp only
  rw [child4494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output693_skip, output4494_skip]
  kernel_rfl

theorem node4496_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value5 value1 value2 = (output692, value350, value1))
    (child4495 : Flapjack.WordAlloc.removeDeadStructural input4495 value350 value1 value2 = (output4495, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4496 value5 value1 value2 = (output4496, value1810, value1) := by
  rw [input4496_def, output4496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  try dsimp only
  rw [child4495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output4495_skip]
  kernel_rfl

theorem node4497_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value344 value1 value2 = (output689, value5, value1))
    (child4496 : Flapjack.WordAlloc.removeDeadStructural input4496 value5 value1 value2 = (output4496, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4497 value344 value1 value2 = (output4497, value1810, value1) := by
  rw [input4497_def, output4497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child4496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output689_skip, output4496_skip]
  kernel_rfl

theorem node4498_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value344 value1 value2 = (output680, value344, value1))
    (child4497 : Flapjack.WordAlloc.removeDeadStructural input4497 value344 value1 value2 = (output4497, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4498 value344 value1 value2 = (output4498, value1810, value1) := by
  rw [input4498_def, output4498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child4497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output4497_skip]
  kernel_rfl

theorem node4499_cond_eq
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value343 value1 value2 = (output679, value344, value1))
    (child4498 : Flapjack.WordAlloc.removeDeadStructural input4498 value344 value1 value2 = (output4498, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4499 value343 value1 value2 = (output4499, value1810, value1) := by
  rw [input4499_def, output4499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child679]
  try dsimp only
  rw [child4498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output679_skip, output4498_skip]
  kernel_rfl

theorem node4500_cond_eq
    (child678 : Flapjack.WordAlloc.removeDeadStructural input678 value5 value1 value2 = (output678, value343, value1))
    (child4499 : Flapjack.WordAlloc.removeDeadStructural input4499 value343 value1 value2 = (output4499, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4500 value5 value1 value2 = (output4500, value1810, value1) := by
  rw [input4500_def, output4500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child678]
  try dsimp only
  rw [child4499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output678_skip, output4499_skip]
  kernel_rfl

theorem node4501_cond_eq
    (child675 : Flapjack.WordAlloc.removeDeadStructural input675 value337 value1 value2 = (output675, value5, value1))
    (child4500 : Flapjack.WordAlloc.removeDeadStructural input4500 value5 value1 value2 = (output4500, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4501 value337 value1 value2 = (output4501, value1810, value1) := by
  rw [input4501_def, output4501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child675]
  try dsimp only
  rw [child4500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output675_skip, output4500_skip]
  kernel_rfl

theorem node4502_cond_eq
    (child666 : Flapjack.WordAlloc.removeDeadStructural input666 value337 value1 value2 = (output666, value337, value1))
    (child4501 : Flapjack.WordAlloc.removeDeadStructural input4501 value337 value1 value2 = (output4501, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4502 value337 value1 value2 = (output4502, value1810, value1) := by
  rw [input4502_def, output4502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child666]
  try dsimp only
  rw [child4501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output666_skip, output4501_skip]
  kernel_rfl

theorem node4503_cond_eq
    (child665 : Flapjack.WordAlloc.removeDeadStructural input665 value336 value1 value2 = (output665, value337, value1))
    (child4502 : Flapjack.WordAlloc.removeDeadStructural input4502 value337 value1 value2 = (output4502, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4503 value336 value1 value2 = (output4503, value1810, value1) := by
  rw [input4503_def, output4503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child665]
  try dsimp only
  rw [child4502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output665_skip, output4502_skip]
  kernel_rfl

theorem node4504_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value5 value1 value2 = (output664, value336, value1))
    (child4503 : Flapjack.WordAlloc.removeDeadStructural input4503 value336 value1 value2 = (output4503, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4504 value5 value1 value2 = (output4504, value1810, value1) := by
  rw [input4504_def, output4504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child4503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output4503_skip]
  kernel_rfl

theorem node4505_cond_eq
    (child661 : Flapjack.WordAlloc.removeDeadStructural input661 value330 value1 value2 = (output661, value5, value1))
    (child4504 : Flapjack.WordAlloc.removeDeadStructural input4504 value5 value1 value2 = (output4504, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4505 value330 value1 value2 = (output4505, value1810, value1) := by
  rw [input4505_def, output4505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child661]
  try dsimp only
  rw [child4504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output661_skip, output4504_skip]
  kernel_rfl

theorem node4506_cond_eq
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value330 value1 value2 = (output652, value330, value1))
    (child4505 : Flapjack.WordAlloc.removeDeadStructural input4505 value330 value1 value2 = (output4505, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4506 value330 value1 value2 = (output4506, value1810, value1) := by
  rw [input4506_def, output4506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child652]
  try dsimp only
  rw [child4505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output652_skip, output4505_skip]
  kernel_rfl

theorem node4507_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value329 value1 value2 = (output651, value330, value1))
    (child4506 : Flapjack.WordAlloc.removeDeadStructural input4506 value330 value1 value2 = (output4506, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4507 value329 value1 value2 = (output4507, value1810, value1) := by
  rw [input4507_def, output4507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child4506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output4506_skip]
  kernel_rfl

theorem node4508_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value5 value1 value2 = (output650, value329, value1))
    (child4507 : Flapjack.WordAlloc.removeDeadStructural input4507 value329 value1 value2 = (output4507, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4508 value5 value1 value2 = (output4508, value1810, value1) := by
  rw [input4508_def, output4508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child4507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output4507_skip]
  kernel_rfl

theorem node4509_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value323 value1 value2 = (output647, value5, value1))
    (child4508 : Flapjack.WordAlloc.removeDeadStructural input4508 value5 value1 value2 = (output4508, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4509 value323 value1 value2 = (output4509, value1810, value1) := by
  rw [input4509_def, output4509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child4508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output4508_skip]
  kernel_rfl

theorem node4510_cond_eq
    (child638 : Flapjack.WordAlloc.removeDeadStructural input638 value323 value1 value2 = (output638, value323, value1))
    (child4509 : Flapjack.WordAlloc.removeDeadStructural input4509 value323 value1 value2 = (output4509, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4510 value323 value1 value2 = (output4510, value1810, value1) := by
  rw [input4510_def, output4510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child638]
  try dsimp only
  rw [child4509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output638_skip, output4509_skip]
  kernel_rfl

theorem node4511_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value322 value1 value2 = (output637, value323, value1))
    (child4510 : Flapjack.WordAlloc.removeDeadStructural input4510 value323 value1 value2 = (output4510, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4511 value322 value1 value2 = (output4511, value1810, value1) := by
  rw [input4511_def, output4511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child4510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output4510_skip]
  kernel_rfl

theorem node4512_cond_eq
    (child636 : Flapjack.WordAlloc.removeDeadStructural input636 value5 value1 value2 = (output636, value322, value1))
    (child4511 : Flapjack.WordAlloc.removeDeadStructural input4511 value322 value1 value2 = (output4511, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4512 value5 value1 value2 = (output4512, value1810, value1) := by
  rw [input4512_def, output4512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child636]
  try dsimp only
  rw [child4511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output636_skip, output4511_skip]
  kernel_rfl

theorem node4513_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value316 value1 value2 = (output633, value5, value1))
    (child4512 : Flapjack.WordAlloc.removeDeadStructural input4512 value5 value1 value2 = (output4512, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4513 value316 value1 value2 = (output4513, value1810, value1) := by
  rw [input4513_def, output4513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child4512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output4512_skip]
  kernel_rfl

theorem node4514_cond_eq
    (child624 : Flapjack.WordAlloc.removeDeadStructural input624 value316 value1 value2 = (output624, value316, value1))
    (child4513 : Flapjack.WordAlloc.removeDeadStructural input4513 value316 value1 value2 = (output4513, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4514 value316 value1 value2 = (output4514, value1810, value1) := by
  rw [input4514_def, output4514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child624]
  try dsimp only
  rw [child4513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output624_skip, output4513_skip]
  kernel_rfl

theorem node4515_cond_eq
    (child623 : Flapjack.WordAlloc.removeDeadStructural input623 value315 value1 value2 = (output623, value316, value1))
    (child4514 : Flapjack.WordAlloc.removeDeadStructural input4514 value316 value1 value2 = (output4514, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4515 value315 value1 value2 = (output4515, value1810, value1) := by
  rw [input4515_def, output4515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child623]
  try dsimp only
  rw [child4514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output623_skip, output4514_skip]
  kernel_rfl

theorem node4516_cond_eq
    (child622 : Flapjack.WordAlloc.removeDeadStructural input622 value5 value1 value2 = (output622, value315, value1))
    (child4515 : Flapjack.WordAlloc.removeDeadStructural input4515 value315 value1 value2 = (output4515, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4516 value5 value1 value2 = (output4516, value1810, value1) := by
  rw [input4516_def, output4516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child622]
  try dsimp only
  rw [child4515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output622_skip, output4515_skip]
  kernel_rfl

theorem node4517_cond_eq
    (child619 : Flapjack.WordAlloc.removeDeadStructural input619 value309 value1 value2 = (output619, value5, value1))
    (child4516 : Flapjack.WordAlloc.removeDeadStructural input4516 value5 value1 value2 = (output4516, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4517 value309 value1 value2 = (output4517, value1810, value1) := by
  rw [input4517_def, output4517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child619]
  try dsimp only
  rw [child4516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output619_skip, output4516_skip]
  kernel_rfl

theorem node4518_cond_eq
    (child610 : Flapjack.WordAlloc.removeDeadStructural input610 value309 value1 value2 = (output610, value309, value1))
    (child4517 : Flapjack.WordAlloc.removeDeadStructural input4517 value309 value1 value2 = (output4517, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4518 value309 value1 value2 = (output4518, value1810, value1) := by
  rw [input4518_def, output4518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child610]
  try dsimp only
  rw [child4517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output610_skip, output4517_skip]
  kernel_rfl

theorem node4519_cond_eq
    (child609 : Flapjack.WordAlloc.removeDeadStructural input609 value308 value1 value2 = (output609, value309, value1))
    (child4518 : Flapjack.WordAlloc.removeDeadStructural input4518 value309 value1 value2 = (output4518, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4519 value308 value1 value2 = (output4519, value1810, value1) := by
  rw [input4519_def, output4519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child609]
  try dsimp only
  rw [child4518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output609_skip, output4518_skip]
  kernel_rfl

theorem node4520_cond_eq
    (child608 : Flapjack.WordAlloc.removeDeadStructural input608 value5 value1 value2 = (output608, value308, value1))
    (child4519 : Flapjack.WordAlloc.removeDeadStructural input4519 value308 value1 value2 = (output4519, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4520 value5 value1 value2 = (output4520, value1810, value1) := by
  rw [input4520_def, output4520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child608]
  try dsimp only
  rw [child4519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output608_skip, output4519_skip]
  kernel_rfl

theorem node4521_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value302 value1 value2 = (output605, value5, value1))
    (child4520 : Flapjack.WordAlloc.removeDeadStructural input4520 value5 value1 value2 = (output4520, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4521 value302 value1 value2 = (output4521, value1810, value1) := by
  rw [input4521_def, output4521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  try dsimp only
  rw [child4520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output605_skip, output4520_skip]
  kernel_rfl

theorem node4522_cond_eq
    (child596 : Flapjack.WordAlloc.removeDeadStructural input596 value302 value1 value2 = (output596, value302, value1))
    (child4521 : Flapjack.WordAlloc.removeDeadStructural input4521 value302 value1 value2 = (output4521, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4522 value302 value1 value2 = (output4522, value1810, value1) := by
  rw [input4522_def, output4522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child596]
  try dsimp only
  rw [child4521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output596_skip, output4521_skip]
  kernel_rfl

theorem node4523_cond_eq
    (child595 : Flapjack.WordAlloc.removeDeadStructural input595 value301 value1 value2 = (output595, value302, value1))
    (child4522 : Flapjack.WordAlloc.removeDeadStructural input4522 value302 value1 value2 = (output4522, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4523 value301 value1 value2 = (output4523, value1810, value1) := by
  rw [input4523_def, output4523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child595]
  try dsimp only
  rw [child4522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output595_skip, output4522_skip]
  kernel_rfl

theorem node4524_cond_eq
    (child594 : Flapjack.WordAlloc.removeDeadStructural input594 value5 value1 value2 = (output594, value301, value1))
    (child4523 : Flapjack.WordAlloc.removeDeadStructural input4523 value301 value1 value2 = (output4523, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4524 value5 value1 value2 = (output4524, value1810, value1) := by
  rw [input4524_def, output4524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child594]
  try dsimp only
  rw [child4523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output594_skip, output4523_skip]
  kernel_rfl

theorem node4525_cond_eq
    (child591 : Flapjack.WordAlloc.removeDeadStructural input591 value295 value1 value2 = (output591, value5, value1))
    (child4524 : Flapjack.WordAlloc.removeDeadStructural input4524 value5 value1 value2 = (output4524, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4525 value295 value1 value2 = (output4525, value1810, value1) := by
  rw [input4525_def, output4525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child591]
  try dsimp only
  rw [child4524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output591_skip, output4524_skip]
  kernel_rfl

theorem node4526_cond_eq
    (child582 : Flapjack.WordAlloc.removeDeadStructural input582 value295 value1 value2 = (output582, value295, value1))
    (child4525 : Flapjack.WordAlloc.removeDeadStructural input4525 value295 value1 value2 = (output4525, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4526 value295 value1 value2 = (output4526, value1810, value1) := by
  rw [input4526_def, output4526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child582]
  try dsimp only
  rw [child4525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output582_skip, output4525_skip]
  kernel_rfl

theorem node4527_cond_eq
    (child581 : Flapjack.WordAlloc.removeDeadStructural input581 value294 value1 value2 = (output581, value295, value1))
    (child4526 : Flapjack.WordAlloc.removeDeadStructural input4526 value295 value1 value2 = (output4526, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4527 value294 value1 value2 = (output4527, value1810, value1) := by
  rw [input4527_def, output4527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child581]
  try dsimp only
  rw [child4526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output581_skip, output4526_skip]
  kernel_rfl

theorem node4528_cond_eq
    (child580 : Flapjack.WordAlloc.removeDeadStructural input580 value5 value1 value2 = (output580, value294, value1))
    (child4527 : Flapjack.WordAlloc.removeDeadStructural input4527 value294 value1 value2 = (output4527, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4528 value5 value1 value2 = (output4528, value1810, value1) := by
  rw [input4528_def, output4528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child580]
  try dsimp only
  rw [child4527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output580_skip, output4527_skip]
  kernel_rfl

theorem node4529_cond_eq
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value288 value1 value2 = (output577, value5, value1))
    (child4528 : Flapjack.WordAlloc.removeDeadStructural input4528 value5 value1 value2 = (output4528, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4529 value288 value1 value2 = (output4529, value1810, value1) := by
  rw [input4529_def, output4529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child577]
  try dsimp only
  rw [child4528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output577_skip, output4528_skip]
  kernel_rfl

theorem node4530_cond_eq
    (child568 : Flapjack.WordAlloc.removeDeadStructural input568 value288 value1 value2 = (output568, value288, value1))
    (child4529 : Flapjack.WordAlloc.removeDeadStructural input4529 value288 value1 value2 = (output4529, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4530 value288 value1 value2 = (output4530, value1810, value1) := by
  rw [input4530_def, output4530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child568]
  try dsimp only
  rw [child4529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output568_skip, output4529_skip]
  kernel_rfl

theorem node4531_cond_eq
    (child567 : Flapjack.WordAlloc.removeDeadStructural input567 value287 value1 value2 = (output567, value288, value1))
    (child4530 : Flapjack.WordAlloc.removeDeadStructural input4530 value288 value1 value2 = (output4530, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4531 value287 value1 value2 = (output4531, value1810, value1) := by
  rw [input4531_def, output4531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child567]
  try dsimp only
  rw [child4530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output567_skip, output4530_skip]
  kernel_rfl

theorem node4532_cond_eq
    (child566 : Flapjack.WordAlloc.removeDeadStructural input566 value5 value1 value2 = (output566, value287, value1))
    (child4531 : Flapjack.WordAlloc.removeDeadStructural input4531 value287 value1 value2 = (output4531, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4532 value5 value1 value2 = (output4532, value1810, value1) := by
  rw [input4532_def, output4532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child566]
  try dsimp only
  rw [child4531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output566_skip, output4531_skip]
  kernel_rfl

theorem node4533_cond_eq
    (child563 : Flapjack.WordAlloc.removeDeadStructural input563 value281 value1 value2 = (output563, value5, value1))
    (child4532 : Flapjack.WordAlloc.removeDeadStructural input4532 value5 value1 value2 = (output4532, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4533 value281 value1 value2 = (output4533, value1810, value1) := by
  rw [input4533_def, output4533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child563]
  try dsimp only
  rw [child4532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output563_skip, output4532_skip]
  kernel_rfl

theorem node4534_cond_eq
    (child554 : Flapjack.WordAlloc.removeDeadStructural input554 value281 value1 value2 = (output554, value281, value1))
    (child4533 : Flapjack.WordAlloc.removeDeadStructural input4533 value281 value1 value2 = (output4533, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4534 value281 value1 value2 = (output4534, value1810, value1) := by
  rw [input4534_def, output4534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child554]
  try dsimp only
  rw [child4533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output554_skip, output4533_skip]
  kernel_rfl

theorem node4535_cond_eq
    (child553 : Flapjack.WordAlloc.removeDeadStructural input553 value280 value1 value2 = (output553, value281, value1))
    (child4534 : Flapjack.WordAlloc.removeDeadStructural input4534 value281 value1 value2 = (output4534, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4535 value280 value1 value2 = (output4535, value1810, value1) := by
  rw [input4535_def, output4535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child553]
  try dsimp only
  rw [child4534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output553_skip, output4534_skip]
  kernel_rfl

theorem node4536_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value5 value1 value2 = (output552, value280, value1))
    (child4535 : Flapjack.WordAlloc.removeDeadStructural input4535 value280 value1 value2 = (output4535, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4536 value5 value1 value2 = (output4536, value1810, value1) := by
  rw [input4536_def, output4536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child4535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output552_skip, output4535_skip]
  kernel_rfl

theorem node4537_cond_eq
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value274 value1 value2 = (output549, value5, value1))
    (child4536 : Flapjack.WordAlloc.removeDeadStructural input4536 value5 value1 value2 = (output4536, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4537 value274 value1 value2 = (output4537, value1810, value1) := by
  rw [input4537_def, output4537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child549]
  try dsimp only
  rw [child4536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output549_skip, output4536_skip]
  kernel_rfl

theorem node4538_cond_eq
    (child540 : Flapjack.WordAlloc.removeDeadStructural input540 value274 value1 value2 = (output540, value274, value1))
    (child4537 : Flapjack.WordAlloc.removeDeadStructural input4537 value274 value1 value2 = (output4537, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4538 value274 value1 value2 = (output4538, value1810, value1) := by
  rw [input4538_def, output4538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child540]
  try dsimp only
  rw [child4537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output540_skip, output4537_skip]
  kernel_rfl

theorem node4539_cond_eq
    (child539 : Flapjack.WordAlloc.removeDeadStructural input539 value273 value1 value2 = (output539, value274, value1))
    (child4538 : Flapjack.WordAlloc.removeDeadStructural input4538 value274 value1 value2 = (output4538, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4539 value273 value1 value2 = (output4539, value1810, value1) := by
  rw [input4539_def, output4539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child539]
  try dsimp only
  rw [child4538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output539_skip, output4538_skip]
  kernel_rfl

theorem node4540_cond_eq
    (child538 : Flapjack.WordAlloc.removeDeadStructural input538 value5 value1 value2 = (output538, value273, value1))
    (child4539 : Flapjack.WordAlloc.removeDeadStructural input4539 value273 value1 value2 = (output4539, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4540 value5 value1 value2 = (output4540, value1810, value1) := by
  rw [input4540_def, output4540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child538]
  try dsimp only
  rw [child4539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output538_skip, output4539_skip]
  kernel_rfl

theorem node4541_cond_eq
    (child535 : Flapjack.WordAlloc.removeDeadStructural input535 value267 value1 value2 = (output535, value5, value1))
    (child4540 : Flapjack.WordAlloc.removeDeadStructural input4540 value5 value1 value2 = (output4540, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4541 value267 value1 value2 = (output4541, value1810, value1) := by
  rw [input4541_def, output4541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child535]
  try dsimp only
  rw [child4540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output535_skip, output4540_skip]
  kernel_rfl

theorem node4542_cond_eq
    (child526 : Flapjack.WordAlloc.removeDeadStructural input526 value267 value1 value2 = (output526, value267, value1))
    (child4541 : Flapjack.WordAlloc.removeDeadStructural input4541 value267 value1 value2 = (output4541, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4542 value267 value1 value2 = (output4542, value1810, value1) := by
  rw [input4542_def, output4542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child526]
  try dsimp only
  rw [child4541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output526_skip, output4541_skip]
  kernel_rfl

theorem node4543_cond_eq
    (child525 : Flapjack.WordAlloc.removeDeadStructural input525 value266 value1 value2 = (output525, value267, value1))
    (child4542 : Flapjack.WordAlloc.removeDeadStructural input4542 value267 value1 value2 = (output4542, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4543 value266 value1 value2 = (output4543, value1810, value1) := by
  rw [input4543_def, output4543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child525]
  try dsimp only
  rw [child4542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output525_skip, output4542_skip]
  kernel_rfl

theorem node4544_cond_eq
    (child524 : Flapjack.WordAlloc.removeDeadStructural input524 value5 value1 value2 = (output524, value266, value1))
    (child4543 : Flapjack.WordAlloc.removeDeadStructural input4543 value266 value1 value2 = (output4543, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4544 value5 value1 value2 = (output4544, value1810, value1) := by
  rw [input4544_def, output4544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child524]
  try dsimp only
  rw [child4543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output524_skip, output4543_skip]
  kernel_rfl

theorem node4545_cond_eq
    (child521 : Flapjack.WordAlloc.removeDeadStructural input521 value260 value1 value2 = (output521, value5, value1))
    (child4544 : Flapjack.WordAlloc.removeDeadStructural input4544 value5 value1 value2 = (output4544, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4545 value260 value1 value2 = (output4545, value1810, value1) := by
  rw [input4545_def, output4545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child521]
  try dsimp only
  rw [child4544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output521_skip, output4544_skip]
  kernel_rfl

theorem node4546_cond_eq
    (child512 : Flapjack.WordAlloc.removeDeadStructural input512 value260 value1 value2 = (output512, value260, value1))
    (child4545 : Flapjack.WordAlloc.removeDeadStructural input4545 value260 value1 value2 = (output4545, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4546 value260 value1 value2 = (output4546, value1810, value1) := by
  rw [input4546_def, output4546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child512]
  try dsimp only
  rw [child4545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output512_skip, output4545_skip]
  kernel_rfl

theorem node4547_cond_eq
    (child511 : Flapjack.WordAlloc.removeDeadStructural input511 value259 value1 value2 = (output511, value260, value1))
    (child4546 : Flapjack.WordAlloc.removeDeadStructural input4546 value260 value1 value2 = (output4546, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4547 value259 value1 value2 = (output4547, value1810, value1) := by
  rw [input4547_def, output4547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child511]
  try dsimp only
  rw [child4546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output511_skip, output4546_skip]
  kernel_rfl

theorem node4548_cond_eq
    (child510 : Flapjack.WordAlloc.removeDeadStructural input510 value5 value1 value2 = (output510, value259, value1))
    (child4547 : Flapjack.WordAlloc.removeDeadStructural input4547 value259 value1 value2 = (output4547, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4548 value5 value1 value2 = (output4548, value1810, value1) := by
  rw [input4548_def, output4548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child510]
  try dsimp only
  rw [child4547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output510_skip, output4547_skip]
  kernel_rfl

theorem node4549_cond_eq
    (child507 : Flapjack.WordAlloc.removeDeadStructural input507 value253 value1 value2 = (output507, value5, value1))
    (child4548 : Flapjack.WordAlloc.removeDeadStructural input4548 value5 value1 value2 = (output4548, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4549 value253 value1 value2 = (output4549, value1810, value1) := by
  rw [input4549_def, output4549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child507]
  try dsimp only
  rw [child4548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output507_skip, output4548_skip]
  kernel_rfl

theorem node4550_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value253 value1 value2 = (output498, value253, value1))
    (child4549 : Flapjack.WordAlloc.removeDeadStructural input4549 value253 value1 value2 = (output4549, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4550 value253 value1 value2 = (output4550, value1810, value1) := by
  rw [input4550_def, output4550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child4549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output4549_skip]
  kernel_rfl

theorem node4551_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value252 value1 value2 = (output497, value253, value1))
    (child4550 : Flapjack.WordAlloc.removeDeadStructural input4550 value253 value1 value2 = (output4550, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4551 value252 value1 value2 = (output4551, value1810, value1) := by
  rw [input4551_def, output4551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  try dsimp only
  rw [child4550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output497_skip, output4550_skip]
  kernel_rfl

theorem node4552_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value5 value1 value2 = (output496, value252, value1))
    (child4551 : Flapjack.WordAlloc.removeDeadStructural input4551 value252 value1 value2 = (output4551, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4552 value5 value1 value2 = (output4552, value1810, value1) := by
  rw [input4552_def, output4552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child4551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output4551_skip]
  kernel_rfl

theorem node4553_cond_eq
    (child493 : Flapjack.WordAlloc.removeDeadStructural input493 value246 value1 value2 = (output493, value5, value1))
    (child4552 : Flapjack.WordAlloc.removeDeadStructural input4552 value5 value1 value2 = (output4552, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4553 value246 value1 value2 = (output4553, value1810, value1) := by
  rw [input4553_def, output4553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child493]
  try dsimp only
  rw [child4552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output493_skip, output4552_skip]
  kernel_rfl

theorem node4554_cond_eq
    (child484 : Flapjack.WordAlloc.removeDeadStructural input484 value246 value1 value2 = (output484, value246, value1))
    (child4553 : Flapjack.WordAlloc.removeDeadStructural input4553 value246 value1 value2 = (output4553, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4554 value246 value1 value2 = (output4554, value1810, value1) := by
  rw [input4554_def, output4554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child484]
  try dsimp only
  rw [child4553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output484_skip, output4553_skip]
  kernel_rfl

theorem node4555_cond_eq
    (child483 : Flapjack.WordAlloc.removeDeadStructural input483 value245 value1 value2 = (output483, value246, value1))
    (child4554 : Flapjack.WordAlloc.removeDeadStructural input4554 value246 value1 value2 = (output4554, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4555 value245 value1 value2 = (output4555, value1810, value1) := by
  rw [input4555_def, output4555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child483]
  try dsimp only
  rw [child4554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output483_skip, output4554_skip]
  kernel_rfl

theorem node4556_cond_eq
    (child482 : Flapjack.WordAlloc.removeDeadStructural input482 value5 value1 value2 = (output482, value245, value1))
    (child4555 : Flapjack.WordAlloc.removeDeadStructural input4555 value245 value1 value2 = (output4555, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4556 value5 value1 value2 = (output4556, value1810, value1) := by
  rw [input4556_def, output4556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child482]
  try dsimp only
  rw [child4555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output482_skip, output4555_skip]
  kernel_rfl

theorem node4557_cond_eq
    (child479 : Flapjack.WordAlloc.removeDeadStructural input479 value239 value1 value2 = (output479, value5, value1))
    (child4556 : Flapjack.WordAlloc.removeDeadStructural input4556 value5 value1 value2 = (output4556, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4557 value239 value1 value2 = (output4557, value1810, value1) := by
  rw [input4557_def, output4557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child479]
  try dsimp only
  rw [child4556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output479_skip, output4556_skip]
  kernel_rfl

theorem node4558_cond_eq
    (child470 : Flapjack.WordAlloc.removeDeadStructural input470 value239 value1 value2 = (output470, value239, value1))
    (child4557 : Flapjack.WordAlloc.removeDeadStructural input4557 value239 value1 value2 = (output4557, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4558 value239 value1 value2 = (output4558, value1810, value1) := by
  rw [input4558_def, output4558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child470]
  try dsimp only
  rw [child4557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output470_skip, output4557_skip]
  kernel_rfl

theorem node4559_cond_eq
    (child469 : Flapjack.WordAlloc.removeDeadStructural input469 value238 value1 value2 = (output469, value239, value1))
    (child4558 : Flapjack.WordAlloc.removeDeadStructural input4558 value239 value1 value2 = (output4558, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4559 value238 value1 value2 = (output4559, value1810, value1) := by
  rw [input4559_def, output4559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child469]
  try dsimp only
  rw [child4558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output469_skip, output4558_skip]
  kernel_rfl

theorem node4560_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value5 value1 value2 = (output468, value238, value1))
    (child4559 : Flapjack.WordAlloc.removeDeadStructural input4559 value238 value1 value2 = (output4559, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4560 value5 value1 value2 = (output4560, value1810, value1) := by
  rw [input4560_def, output4560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child4559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output4559_skip]
  kernel_rfl

theorem node4561_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value232 value1 value2 = (output465, value5, value1))
    (child4560 : Flapjack.WordAlloc.removeDeadStructural input4560 value5 value1 value2 = (output4560, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4561 value232 value1 value2 = (output4561, value1810, value1) := by
  rw [input4561_def, output4561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child4560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output4560_skip]
  kernel_rfl

theorem node4562_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value232 value1 value2 = (output456, value232, value1))
    (child4561 : Flapjack.WordAlloc.removeDeadStructural input4561 value232 value1 value2 = (output4561, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4562 value232 value1 value2 = (output4562, value1810, value1) := by
  rw [input4562_def, output4562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child4561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output4561_skip]
  kernel_rfl

theorem node4563_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value231 value1 value2 = (output455, value232, value1))
    (child4562 : Flapjack.WordAlloc.removeDeadStructural input4562 value232 value1 value2 = (output4562, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4563 value231 value1 value2 = (output4563, value1810, value1) := by
  rw [input4563_def, output4563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child4562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output4562_skip]
  kernel_rfl

theorem node4564_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value5 value1 value2 = (output454, value231, value1))
    (child4563 : Flapjack.WordAlloc.removeDeadStructural input4563 value231 value1 value2 = (output4563, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4564 value5 value1 value2 = (output4564, value1810, value1) := by
  rw [input4564_def, output4564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  try dsimp only
  rw [child4563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output454_skip, output4563_skip]
  kernel_rfl

theorem node4565_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value225 value1 value2 = (output451, value5, value1))
    (child4564 : Flapjack.WordAlloc.removeDeadStructural input4564 value5 value1 value2 = (output4564, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4565 value225 value1 value2 = (output4565, value1810, value1) := by
  rw [input4565_def, output4565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child4564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output4564_skip]
  kernel_rfl

theorem node4566_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value225 value1 value2 = (output442, value225, value1))
    (child4565 : Flapjack.WordAlloc.removeDeadStructural input4565 value225 value1 value2 = (output4565, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4566 value225 value1 value2 = (output4566, value1810, value1) := by
  rw [input4566_def, output4566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child4565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output4565_skip]
  kernel_rfl

theorem node4567_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value224 value1 value2 = (output441, value225, value1))
    (child4566 : Flapjack.WordAlloc.removeDeadStructural input4566 value225 value1 value2 = (output4566, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4567 value224 value1 value2 = (output4567, value1810, value1) := by
  rw [input4567_def, output4567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child4566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output4566_skip]
  kernel_rfl

theorem node4568_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value5 value1 value2 = (output440, value224, value1))
    (child4567 : Flapjack.WordAlloc.removeDeadStructural input4567 value224 value1 value2 = (output4567, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4568 value5 value1 value2 = (output4568, value1810, value1) := by
  rw [input4568_def, output4568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child4567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output4567_skip]
  kernel_rfl

theorem node4569_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value218 value1 value2 = (output437, value5, value1))
    (child4568 : Flapjack.WordAlloc.removeDeadStructural input4568 value5 value1 value2 = (output4568, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4569 value218 value1 value2 = (output4569, value1810, value1) := by
  rw [input4569_def, output4569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child4568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output4568_skip]
  kernel_rfl

theorem node4570_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value218 value1 value2 = (output428, value218, value1))
    (child4569 : Flapjack.WordAlloc.removeDeadStructural input4569 value218 value1 value2 = (output4569, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4570 value218 value1 value2 = (output4570, value1810, value1) := by
  rw [input4570_def, output4570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  try dsimp only
  rw [child4569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output428_skip, output4569_skip]
  kernel_rfl

theorem node4571_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value217 value1 value2 = (output427, value218, value1))
    (child4570 : Flapjack.WordAlloc.removeDeadStructural input4570 value218 value1 value2 = (output4570, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4571 value217 value1 value2 = (output4571, value1810, value1) := by
  rw [input4571_def, output4571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  try dsimp only
  rw [child4570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output427_skip, output4570_skip]
  kernel_rfl

theorem node4572_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value5 value1 value2 = (output426, value217, value1))
    (child4571 : Flapjack.WordAlloc.removeDeadStructural input4571 value217 value1 value2 = (output4571, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4572 value5 value1 value2 = (output4572, value1810, value1) := by
  rw [input4572_def, output4572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  try dsimp only
  rw [child4571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output4571_skip]
  kernel_rfl

theorem node4573_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value211 value1 value2 = (output423, value5, value1))
    (child4572 : Flapjack.WordAlloc.removeDeadStructural input4572 value5 value1 value2 = (output4572, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4573 value211 value1 value2 = (output4573, value1810, value1) := by
  rw [input4573_def, output4573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child4572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output4572_skip]
  kernel_rfl

theorem node4574_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value211 value1 value2 = (output414, value211, value1))
    (child4573 : Flapjack.WordAlloc.removeDeadStructural input4573 value211 value1 value2 = (output4573, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4574 value211 value1 value2 = (output4574, value1810, value1) := by
  rw [input4574_def, output4574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child4573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output4573_skip]
  kernel_rfl

theorem node4575_cond_eq
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value210 value1 value2 = (output413, value211, value1))
    (child4574 : Flapjack.WordAlloc.removeDeadStructural input4574 value211 value1 value2 = (output4574, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4575 value210 value1 value2 = (output4575, value1810, value1) := by
  rw [input4575_def, output4575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child413]
  try dsimp only
  rw [child4574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output413_skip, output4574_skip]
  kernel_rfl

theorem node4576_cond_eq
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value5 value1 value2 = (output412, value210, value1))
    (child4575 : Flapjack.WordAlloc.removeDeadStructural input4575 value210 value1 value2 = (output4575, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4576 value5 value1 value2 = (output4576, value1810, value1) := by
  rw [input4576_def, output4576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child412]
  try dsimp only
  rw [child4575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output412_skip, output4575_skip]
  kernel_rfl

theorem node4577_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value204 value1 value2 = (output409, value5, value1))
    (child4576 : Flapjack.WordAlloc.removeDeadStructural input4576 value5 value1 value2 = (output4576, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4577 value204 value1 value2 = (output4577, value1810, value1) := by
  rw [input4577_def, output4577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child4576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output4576_skip]
  kernel_rfl

theorem node4578_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value204 value1 value2 = (output400, value204, value1))
    (child4577 : Flapjack.WordAlloc.removeDeadStructural input4577 value204 value1 value2 = (output4577, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4578 value204 value1 value2 = (output4578, value1810, value1) := by
  rw [input4578_def, output4578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child4577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output4577_skip]
  kernel_rfl

theorem node4579_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value203 value1 value2 = (output399, value204, value1))
    (child4578 : Flapjack.WordAlloc.removeDeadStructural input4578 value204 value1 value2 = (output4578, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4579 value203 value1 value2 = (output4579, value1810, value1) := by
  rw [input4579_def, output4579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child4578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output4578_skip]
  kernel_rfl

theorem node4580_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value5 value1 value2 = (output398, value203, value1))
    (child4579 : Flapjack.WordAlloc.removeDeadStructural input4579 value203 value1 value2 = (output4579, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4580 value5 value1 value2 = (output4580, value1810, value1) := by
  rw [input4580_def, output4580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child4579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output4579_skip]
  kernel_rfl

theorem node4581_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value197 value1 value2 = (output395, value5, value1))
    (child4580 : Flapjack.WordAlloc.removeDeadStructural input4580 value5 value1 value2 = (output4580, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4581 value197 value1 value2 = (output4581, value1810, value1) := by
  rw [input4581_def, output4581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child4580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output4580_skip]
  kernel_rfl

theorem node4582_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value197 value1 value2 = (output386, value197, value1))
    (child4581 : Flapjack.WordAlloc.removeDeadStructural input4581 value197 value1 value2 = (output4581, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4582 value197 value1 value2 = (output4582, value1810, value1) := by
  rw [input4582_def, output4582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child4581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output4581_skip]
  kernel_rfl

theorem node4583_cond_eq
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value196 value1 value2 = (output385, value197, value1))
    (child4582 : Flapjack.WordAlloc.removeDeadStructural input4582 value197 value1 value2 = (output4582, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4583 value196 value1 value2 = (output4583, value1810, value1) := by
  rw [input4583_def, output4583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child385]
  try dsimp only
  rw [child4582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output385_skip, output4582_skip]
  kernel_rfl

theorem node4584_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value5 value1 value2 = (output384, value196, value1))
    (child4583 : Flapjack.WordAlloc.removeDeadStructural input4583 value196 value1 value2 = (output4583, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4584 value5 value1 value2 = (output4584, value1810, value1) := by
  rw [input4584_def, output4584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child4583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output4583_skip]
  kernel_rfl

theorem node4585_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value190 value1 value2 = (output381, value5, value1))
    (child4584 : Flapjack.WordAlloc.removeDeadStructural input4584 value5 value1 value2 = (output4584, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4585 value190 value1 value2 = (output4585, value1810, value1) := by
  rw [input4585_def, output4585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child4584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output4584_skip]
  kernel_rfl

theorem node4586_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value190 value1 value2 = (output372, value190, value1))
    (child4585 : Flapjack.WordAlloc.removeDeadStructural input4585 value190 value1 value2 = (output4585, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4586 value190 value1 value2 = (output4586, value1810, value1) := by
  rw [input4586_def, output4586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child4585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output4585_skip]
  kernel_rfl

theorem node4587_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value189 value1 value2 = (output371, value190, value1))
    (child4586 : Flapjack.WordAlloc.removeDeadStructural input4586 value190 value1 value2 = (output4586, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4587 value189 value1 value2 = (output4587, value1810, value1) := by
  rw [input4587_def, output4587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child4586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output4586_skip]
  kernel_rfl

theorem node4588_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value5 value1 value2 = (output370, value189, value1))
    (child4587 : Flapjack.WordAlloc.removeDeadStructural input4587 value189 value1 value2 = (output4587, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4588 value5 value1 value2 = (output4588, value1810, value1) := by
  rw [input4588_def, output4588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child4587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output4587_skip]
  kernel_rfl

theorem node4589_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value183 value1 value2 = (output367, value5, value1))
    (child4588 : Flapjack.WordAlloc.removeDeadStructural input4588 value5 value1 value2 = (output4588, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4589 value183 value1 value2 = (output4589, value1810, value1) := by
  rw [input4589_def, output4589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child4588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output4588_skip]
  kernel_rfl

theorem node4590_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value183 value1 value2 = (output358, value183, value1))
    (child4589 : Flapjack.WordAlloc.removeDeadStructural input4589 value183 value1 value2 = (output4589, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4590 value183 value1 value2 = (output4590, value1810, value1) := by
  rw [input4590_def, output4590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child4589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output4589_skip]
  kernel_rfl

theorem node4591_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value182 value1 value2 = (output357, value183, value1))
    (child4590 : Flapjack.WordAlloc.removeDeadStructural input4590 value183 value1 value2 = (output4590, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4591 value182 value1 value2 = (output4591, value1810, value1) := by
  rw [input4591_def, output4591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child4590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output4590_skip]
  kernel_rfl

theorem node4592_cond_eq
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value5 value1 value2 = (output356, value182, value1))
    (child4591 : Flapjack.WordAlloc.removeDeadStructural input4591 value182 value1 value2 = (output4591, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4592 value5 value1 value2 = (output4592, value1810, value1) := by
  rw [input4592_def, output4592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child356]
  try dsimp only
  rw [child4591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output356_skip, output4591_skip]
  kernel_rfl

theorem node4593_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value176 value1 value2 = (output353, value5, value1))
    (child4592 : Flapjack.WordAlloc.removeDeadStructural input4592 value5 value1 value2 = (output4592, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4593 value176 value1 value2 = (output4593, value1810, value1) := by
  rw [input4593_def, output4593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child4592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output4592_skip]
  kernel_rfl

theorem node4594_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value176 value1 value2 = (output344, value176, value1))
    (child4593 : Flapjack.WordAlloc.removeDeadStructural input4593 value176 value1 value2 = (output4593, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4594 value176 value1 value2 = (output4594, value1810, value1) := by
  rw [input4594_def, output4594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  try dsimp only
  rw [child4593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output344_skip, output4593_skip]
  kernel_rfl

theorem node4595_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value175 value1 value2 = (output343, value176, value1))
    (child4594 : Flapjack.WordAlloc.removeDeadStructural input4594 value176 value1 value2 = (output4594, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4595 value175 value1 value2 = (output4595, value1810, value1) := by
  rw [input4595_def, output4595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child4594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output4594_skip]
  kernel_rfl

theorem node4596_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value5 value1 value2 = (output342, value175, value1))
    (child4595 : Flapjack.WordAlloc.removeDeadStructural input4595 value175 value1 value2 = (output4595, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4596 value5 value1 value2 = (output4596, value1810, value1) := by
  rw [input4596_def, output4596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child4595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output4595_skip]
  kernel_rfl

theorem node4597_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value169 value1 value2 = (output339, value5, value1))
    (child4596 : Flapjack.WordAlloc.removeDeadStructural input4596 value5 value1 value2 = (output4596, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4597 value169 value1 value2 = (output4597, value1810, value1) := by
  rw [input4597_def, output4597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child4596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output4596_skip]
  kernel_rfl

theorem node4598_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value169 value1 value2 = (output330, value169, value1))
    (child4597 : Flapjack.WordAlloc.removeDeadStructural input4597 value169 value1 value2 = (output4597, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4598 value169 value1 value2 = (output4598, value1810, value1) := by
  rw [input4598_def, output4598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child4597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output4597_skip]
  kernel_rfl

theorem node4599_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value168 value1 value2 = (output329, value169, value1))
    (child4598 : Flapjack.WordAlloc.removeDeadStructural input4598 value169 value1 value2 = (output4598, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4599 value168 value1 value2 = (output4599, value1810, value1) := by
  rw [input4599_def, output4599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child4598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output4598_skip]
  kernel_rfl

theorem node4600_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value5 value1 value2 = (output328, value168, value1))
    (child4599 : Flapjack.WordAlloc.removeDeadStructural input4599 value168 value1 value2 = (output4599, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4600 value5 value1 value2 = (output4600, value1810, value1) := by
  rw [input4600_def, output4600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child4599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output4599_skip]
  kernel_rfl

theorem node4601_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value162 value1 value2 = (output325, value5, value1))
    (child4600 : Flapjack.WordAlloc.removeDeadStructural input4600 value5 value1 value2 = (output4600, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4601 value162 value1 value2 = (output4601, value1810, value1) := by
  rw [input4601_def, output4601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child4600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output4600_skip]
  kernel_rfl

theorem node4602_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value162 value1 value2 = (output316, value162, value1))
    (child4601 : Flapjack.WordAlloc.removeDeadStructural input4601 value162 value1 value2 = (output4601, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4602 value162 value1 value2 = (output4602, value1810, value1) := by
  rw [input4602_def, output4602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child4601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output4601_skip]
  kernel_rfl

theorem node4603_cond_eq
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value161 value1 value2 = (output315, value162, value1))
    (child4602 : Flapjack.WordAlloc.removeDeadStructural input4602 value162 value1 value2 = (output4602, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4603 value161 value1 value2 = (output4603, value1810, value1) := by
  rw [input4603_def, output4603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child315]
  try dsimp only
  rw [child4602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output315_skip, output4602_skip]
  kernel_rfl

theorem node4604_cond_eq
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value5 value1 value2 = (output314, value161, value1))
    (child4603 : Flapjack.WordAlloc.removeDeadStructural input4603 value161 value1 value2 = (output4603, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4604 value5 value1 value2 = (output4604, value1810, value1) := by
  rw [input4604_def, output4604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child314]
  try dsimp only
  rw [child4603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output314_skip, output4603_skip]
  kernel_rfl

theorem node4605_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value155 value1 value2 = (output311, value5, value1))
    (child4604 : Flapjack.WordAlloc.removeDeadStructural input4604 value5 value1 value2 = (output4604, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4605 value155 value1 value2 = (output4605, value1810, value1) := by
  rw [input4605_def, output4605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child4604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output4604_skip]
  kernel_rfl

theorem node4606_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value155 value1 value2 = (output302, value155, value1))
    (child4605 : Flapjack.WordAlloc.removeDeadStructural input4605 value155 value1 value2 = (output4605, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4606 value155 value1 value2 = (output4606, value1810, value1) := by
  rw [input4606_def, output4606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child4605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output4605_skip]
  kernel_rfl

theorem node4607_cond_eq
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value154 value1 value2 = (output301, value155, value1))
    (child4606 : Flapjack.WordAlloc.removeDeadStructural input4606 value155 value1 value2 = (output4606, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4607 value154 value1 value2 = (output4607, value1810, value1) := by
  rw [input4607_def, output4607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child301]
  try dsimp only
  rw [child4606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output301_skip, output4606_skip]
  kernel_rfl

#print axioms node4607_cond_eq
end InitECandidate.Proofs.DeadStages830.Parallel
