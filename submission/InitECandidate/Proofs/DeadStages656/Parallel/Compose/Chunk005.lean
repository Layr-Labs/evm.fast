import InitECandidate.Proofs.DeadStages656.Parallel.Conditional.Chunk005
import InitECandidate.Proofs.DeadStages656.Parallel.Compose.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages656.Parallel
theorem node1280_eq : Flapjack.WordAlloc.removeDeadStructural input1280 value11 value1 value2 = (output1280, value394, value1) :=
  node1280_cond_eq node10_eq node1279_eq

theorem node1281_eq : Flapjack.WordAlloc.removeDeadStructural input1281 value10 value1 value2 = (output1281, value394, value1) :=
  node1281_cond_eq node9_eq node1280_eq

theorem node1282_eq : Flapjack.WordAlloc.removeDeadStructural input1282 value9 value1 value2 = (output1282, value394, value1) :=
  node1282_cond_eq node8_eq node1281_eq

theorem node1283_eq : Flapjack.WordAlloc.removeDeadStructural input1283 value8 value1 value2 = (output1283, value394, value1) :=
  node1283_cond_eq node7_eq node1282_eq

theorem node1284_eq : Flapjack.WordAlloc.removeDeadStructural input1284 value7 value1 value2 = (output1284, value394, value1) :=
  node1284_cond_eq node6_eq node1283_eq

theorem node1285_eq : Flapjack.WordAlloc.removeDeadStructural input1285 value6 value1 value2 = (output1285, value394, value1) :=
  node1285_cond_eq node5_eq node1284_eq

theorem node1286_eq : Flapjack.WordAlloc.removeDeadStructural input1286 value5 value1 value2 = (output1286, value394, value1) :=
  node1286_cond_eq node4_eq node1285_eq

theorem node1287_eq : Flapjack.WordAlloc.removeDeadStructural input1287 value4 value1 value2 = (output1287, value394, value1) :=
  node1287_cond_eq node3_eq node1286_eq

theorem node1288_eq : Flapjack.WordAlloc.removeDeadStructural input1288 value0 value1 value2 = (output1288, value394, value1) :=
  node1288_cond_eq node2_eq node1287_eq

theorem node1289_eq : Flapjack.WordAlloc.removeDeadStructural input1289 value394 value1 value2 = (output1289, value395, value1) :=
  node1289_cond_eq

theorem node1290_eq : Flapjack.WordAlloc.removeDeadStructural input1290 value0 value1 value2 = (output1290, value395, value1) :=
  node1290_cond_eq node1288_eq node1289_eq

#print axioms node1290_eq
end InitECandidate.Proofs.DeadStages656.Parallel
