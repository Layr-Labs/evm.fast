import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages656.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages656.Parallel
theorem node1280_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value11 value1 value2 = (output10, value12, value1))
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value12 value1 value2 = (output1279, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1280 value11 value1 value2 = (output1280, value394, value1) := by
  rw [input1280_def, output1280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child1279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output1279_skip]
  kernel_rfl

theorem node1281_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value10 value1 value2 = (output9, value11, value1))
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value11 value1 value2 = (output1280, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1281 value10 value1 value2 = (output1281, value394, value1) := by
  rw [input1281_def, output1281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child1280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output1280_skip]
  kernel_rfl

theorem node1282_cond_eq
    (child8 : Flapjack.WordAlloc.removeDeadStructural input8 value9 value1 value2 = (output8, value10, value1))
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value10 value1 value2 = (output1281, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1282 value9 value1 value2 = (output1282, value394, value1) := by
  rw [input1282_def, output1282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8]
  try dsimp only
  rw [child1281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8_skip, output1281_skip]
  kernel_rfl

theorem node1283_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value8 value1 value2 = (output7, value9, value1))
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value9 value1 value2 = (output1282, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1283 value8 value1 value2 = (output1283, value394, value1) := by
  rw [input1283_def, output1283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child1282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output1282_skip]
  kernel_rfl

theorem node1284_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value7 value1 value2 = (output6, value8, value1))
    (child1283 : Flapjack.WordAlloc.removeDeadStructural input1283 value8 value1 value2 = (output1283, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1284 value7 value1 value2 = (output1284, value394, value1) := by
  rw [input1284_def, output1284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child1283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output1283_skip]
  kernel_rfl

theorem node1285_cond_eq
    (child5 : Flapjack.WordAlloc.removeDeadStructural input5 value6 value1 value2 = (output5, value7, value1))
    (child1284 : Flapjack.WordAlloc.removeDeadStructural input1284 value7 value1 value2 = (output1284, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1285 value6 value1 value2 = (output1285, value394, value1) := by
  rw [input1285_def, output1285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5]
  try dsimp only
  rw [child1284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5_skip, output1284_skip]
  kernel_rfl

theorem node1286_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value6, value1))
    (child1285 : Flapjack.WordAlloc.removeDeadStructural input1285 value6 value1 value2 = (output1285, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1286 value5 value1 value2 = (output1286, value394, value1) := by
  rw [input1286_def, output1286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child1285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output1285_skip]
  kernel_rfl

theorem node1287_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1286 : Flapjack.WordAlloc.removeDeadStructural input1286 value5 value1 value2 = (output1286, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1287 value4 value1 value2 = (output1287, value394, value1) := by
  rw [input1287_def, output1287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1286_skip]
  kernel_rfl

theorem node1288_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1287 : Flapjack.WordAlloc.removeDeadStructural input1287 value4 value1 value2 = (output1287, value394, value1)) : Flapjack.WordAlloc.removeDeadStructural input1288 value0 value1 value2 = (output1288, value394, value1) := by
  rw [input1288_def, output1288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1287_skip]
  kernel_rfl

theorem node1289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1289 value394 value1 value2 = (output1289, value395, value1) := by
  rw [input1289_def, output1289_def]
  kernel_rfl

theorem node1290_cond_eq
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value0 value1 value2 = (output1288, value394, value1))
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value394 value1 value2 = (output1289, value395, value1)) : Flapjack.WordAlloc.removeDeadStructural input1290 value0 value1 value2 = (output1290, value395, value1) := by
  rw [input1290_def, output1290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1288]
  try dsimp only
  rw [child1289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1288_skip, output1289_skip]
  kernel_rfl

#print axioms node1290_cond_eq
end InitECandidate.Proofs.DeadStages656.Parallel
