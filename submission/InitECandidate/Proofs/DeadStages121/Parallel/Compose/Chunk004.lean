import InitECandidate.Proofs.DeadStages121.Parallel.Conditional.Chunk004
import InitECandidate.Proofs.DeadStages121.Parallel.Compose.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages121.Parallel
theorem node1024_eq : Flapjack.WordAlloc.removeDeadStructural input1024 value28 value1 value2 = (output1024, value474, value1) :=
  node1024_cond_eq node34_eq node1023_eq

theorem node1025_eq : Flapjack.WordAlloc.removeDeadStructural input1025 value28 value1 value2 = (output1025, value474, value1) :=
  node1025_cond_eq node33_eq node1024_eq

theorem node1026_eq : Flapjack.WordAlloc.removeDeadStructural input1026 value27 value1 value2 = (output1026, value474, value1) :=
  node1026_cond_eq node32_eq node1025_eq

theorem node1027_eq : Flapjack.WordAlloc.removeDeadStructural input1027 value24 value1 value2 = (output1027, value474, value1) :=
  node1027_cond_eq node31_eq node1026_eq

theorem node1028_eq : Flapjack.WordAlloc.removeDeadStructural input1028 value23 value1 value2 = (output1028, value474, value1) :=
  node1028_cond_eq node26_eq node1027_eq

theorem node1029_eq : Flapjack.WordAlloc.removeDeadStructural input1029 value22 value1 value2 = (output1029, value474, value1) :=
  node1029_cond_eq node25_eq node1028_eq

theorem node1030_eq : Flapjack.WordAlloc.removeDeadStructural input1030 value21 value1 value2 = (output1030, value474, value1) :=
  node1030_cond_eq node24_eq node1029_eq

theorem node1031_eq : Flapjack.WordAlloc.removeDeadStructural input1031 value18 value1 value2 = (output1031, value474, value1) :=
  node1031_cond_eq node23_eq node1030_eq

theorem node1032_eq : Flapjack.WordAlloc.removeDeadStructural input1032 value17 value1 value2 = (output1032, value474, value1) :=
  node1032_cond_eq node18_eq node1031_eq

theorem node1033_eq : Flapjack.WordAlloc.removeDeadStructural input1033 value16 value1 value2 = (output1033, value474, value1) :=
  node1033_cond_eq node17_eq node1032_eq

theorem node1034_eq : Flapjack.WordAlloc.removeDeadStructural input1034 value15 value1 value2 = (output1034, value474, value1) :=
  node1034_cond_eq node16_eq node1033_eq

theorem node1035_eq : Flapjack.WordAlloc.removeDeadStructural input1035 value12 value1 value2 = (output1035, value474, value1) :=
  node1035_cond_eq node15_eq node1034_eq

theorem node1036_eq : Flapjack.WordAlloc.removeDeadStructural input1036 value11 value1 value2 = (output1036, value474, value1) :=
  node1036_cond_eq node10_eq node1035_eq

theorem node1037_eq : Flapjack.WordAlloc.removeDeadStructural input1037 value10 value1 value2 = (output1037, value474, value1) :=
  node1037_cond_eq node9_eq node1036_eq

theorem node1038_eq : Flapjack.WordAlloc.removeDeadStructural input1038 value9 value1 value2 = (output1038, value474, value1) :=
  node1038_cond_eq node8_eq node1037_eq

theorem node1039_eq : Flapjack.WordAlloc.removeDeadStructural input1039 value8 value1 value2 = (output1039, value474, value1) :=
  node1039_cond_eq node7_eq node1038_eq

theorem node1040_eq : Flapjack.WordAlloc.removeDeadStructural input1040 value7 value1 value2 = (output1040, value474, value1) :=
  node1040_cond_eq node6_eq node1039_eq

theorem node1041_eq : Flapjack.WordAlloc.removeDeadStructural input1041 value6 value1 value2 = (output1041, value474, value1) :=
  node1041_cond_eq node5_eq node1040_eq

theorem node1042_eq : Flapjack.WordAlloc.removeDeadStructural input1042 value5 value1 value2 = (output1042, value474, value1) :=
  node1042_cond_eq node4_eq node1041_eq

theorem node1043_eq : Flapjack.WordAlloc.removeDeadStructural input1043 value4 value1 value2 = (output1043, value474, value1) :=
  node1043_cond_eq node3_eq node1042_eq

theorem node1044_eq : Flapjack.WordAlloc.removeDeadStructural input1044 value0 value1 value2 = (output1044, value474, value1) :=
  node1044_cond_eq node2_eq node1043_eq

theorem node1045_eq : Flapjack.WordAlloc.removeDeadStructural input1045 value474 value1 value2 = (output1045, value475, value1) :=
  node1045_cond_eq

theorem node1046_eq : Flapjack.WordAlloc.removeDeadStructural input1046 value0 value1 value2 = (output1046, value475, value1) :=
  node1046_cond_eq node1044_eq node1045_eq

#print axioms node1046_eq
end InitECandidate.Proofs.DeadStages121.Parallel
