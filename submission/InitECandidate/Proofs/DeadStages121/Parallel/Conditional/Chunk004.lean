import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages121.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages121.Parallel
theorem node1024_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value28 value1 value2 = (output34, value29, value1))
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value29 value1 value2 = (output1023, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1024 value28 value1 value2 = (output1024, value474, value1) := by
  rw [input1024_def, output1024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  try dsimp only
  rw [child1023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output1023_skip]
  kernel_rfl

theorem node1025_cond_eq
    (child33 : Flapjack.WordAlloc.removeDeadStructural input33 value28 value1 value2 = (output33, value28, value1))
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value28 value1 value2 = (output1024, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1025 value28 value1 value2 = (output1025, value474, value1) := by
  rw [input1025_def, output1025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child33]
  try dsimp only
  rw [child1024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output33_skip, output1024_skip]
  kernel_rfl

theorem node1026_cond_eq
    (child32 : Flapjack.WordAlloc.removeDeadStructural input32 value27 value1 value2 = (output32, value28, value1))
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value28 value1 value2 = (output1025, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1026 value27 value1 value2 = (output1026, value474, value1) := by
  rw [input1026_def, output1026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child32]
  try dsimp only
  rw [child1025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output32_skip, output1025_skip]
  kernel_rfl

theorem node1027_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value24 value1 value2 = (output31, value27, value1))
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value27 value1 value2 = (output1026, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1027 value24 value1 value2 = (output1027, value474, value1) := by
  rw [input1027_def, output1027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child1026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output1026_skip]
  kernel_rfl

theorem node1028_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value23 value1 value2 = (output26, value24, value1))
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value24 value1 value2 = (output1027, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1028 value23 value1 value2 = (output1028, value474, value1) := by
  rw [input1028_def, output1028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child1027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output1027_skip]
  kernel_rfl

theorem node1029_cond_eq
    (child25 : Flapjack.WordAlloc.removeDeadStructural input25 value22 value1 value2 = (output25, value23, value1))
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value23 value1 value2 = (output1028, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1029 value22 value1 value2 = (output1029, value474, value1) := by
  rw [input1029_def, output1029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child25]
  try dsimp only
  rw [child1028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output25_skip, output1028_skip]
  kernel_rfl

theorem node1030_cond_eq
    (child24 : Flapjack.WordAlloc.removeDeadStructural input24 value21 value1 value2 = (output24, value22, value1))
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value22 value1 value2 = (output1029, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1030 value21 value1 value2 = (output1030, value474, value1) := by
  rw [input1030_def, output1030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child24]
  try dsimp only
  rw [child1029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output24_skip, output1029_skip]
  kernel_rfl

theorem node1031_cond_eq
    (child23 : Flapjack.WordAlloc.removeDeadStructural input23 value18 value1 value2 = (output23, value21, value1))
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value21 value1 value2 = (output1030, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1031 value18 value1 value2 = (output1031, value474, value1) := by
  rw [input1031_def, output1031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child23]
  try dsimp only
  rw [child1030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output23_skip, output1030_skip]
  kernel_rfl

theorem node1032_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value17 value1 value2 = (output18, value18, value1))
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value18 value1 value2 = (output1031, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1032 value17 value1 value2 = (output1032, value474, value1) := by
  rw [input1032_def, output1032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child1031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output1031_skip]
  kernel_rfl

theorem node1033_cond_eq
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value16 value1 value2 = (output17, value17, value1))
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value17 value1 value2 = (output1032, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1033 value16 value1 value2 = (output1033, value474, value1) := by
  rw [input1033_def, output1033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17]
  try dsimp only
  rw [child1032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output17_skip, output1032_skip]
  kernel_rfl

theorem node1034_cond_eq
    (child16 : Flapjack.WordAlloc.removeDeadStructural input16 value15 value1 value2 = (output16, value16, value1))
    (child1033 : Flapjack.WordAlloc.removeDeadStructural input1033 value16 value1 value2 = (output1033, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1034 value15 value1 value2 = (output1034, value474, value1) := by
  rw [input1034_def, output1034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child16]
  try dsimp only
  rw [child1033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output16_skip, output1033_skip]
  kernel_rfl

theorem node1035_cond_eq
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value12 value1 value2 = (output15, value15, value1))
    (child1034 : Flapjack.WordAlloc.removeDeadStructural input1034 value15 value1 value2 = (output1034, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1035 value12 value1 value2 = (output1035, value474, value1) := by
  rw [input1035_def, output1035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child15]
  try dsimp only
  rw [child1034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output15_skip, output1034_skip]
  kernel_rfl

theorem node1036_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value11 value1 value2 = (output10, value12, value1))
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value12 value1 value2 = (output1035, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1036 value11 value1 value2 = (output1036, value474, value1) := by
  rw [input1036_def, output1036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child1035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output1035_skip]
  kernel_rfl

theorem node1037_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value10 value1 value2 = (output9, value11, value1))
    (child1036 : Flapjack.WordAlloc.removeDeadStructural input1036 value11 value1 value2 = (output1036, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1037 value10 value1 value2 = (output1037, value474, value1) := by
  rw [input1037_def, output1037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child1036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output1036_skip]
  kernel_rfl

theorem node1038_cond_eq
    (child8 : Flapjack.WordAlloc.removeDeadStructural input8 value9 value1 value2 = (output8, value10, value1))
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value10 value1 value2 = (output1037, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1038 value9 value1 value2 = (output1038, value474, value1) := by
  rw [input1038_def, output1038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8]
  try dsimp only
  rw [child1037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8_skip, output1037_skip]
  kernel_rfl

theorem node1039_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value8 value1 value2 = (output7, value9, value1))
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value9 value1 value2 = (output1038, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1039 value8 value1 value2 = (output1039, value474, value1) := by
  rw [input1039_def, output1039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child1038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output1038_skip]
  kernel_rfl

theorem node1040_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value7 value1 value2 = (output6, value8, value1))
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value8 value1 value2 = (output1039, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1040 value7 value1 value2 = (output1040, value474, value1) := by
  rw [input1040_def, output1040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child1039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output1039_skip]
  kernel_rfl

theorem node1041_cond_eq
    (child5 : Flapjack.WordAlloc.removeDeadStructural input5 value6 value1 value2 = (output5, value7, value1))
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value7 value1 value2 = (output1040, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1041 value6 value1 value2 = (output1041, value474, value1) := by
  rw [input1041_def, output1041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5]
  try dsimp only
  rw [child1040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5_skip, output1040_skip]
  kernel_rfl

theorem node1042_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value6, value1))
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value6 value1 value2 = (output1041, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1042 value5 value1 value2 = (output1042, value474, value1) := by
  rw [input1042_def, output1042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child1041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output1041_skip]
  kernel_rfl

theorem node1043_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value5 value1 value2 = (output1042, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1043 value4 value1 value2 = (output1043, value474, value1) := by
  rw [input1043_def, output1043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1042_skip]
  kernel_rfl

theorem node1044_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value4 value1 value2 = (output1043, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input1044 value0 value1 value2 = (output1044, value474, value1) := by
  rw [input1044_def, output1044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1043_skip]
  kernel_rfl

theorem node1045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1045 value474 value1 value2 = (output1045, value475, value1) := by
  rw [input1045_def, output1045_def]
  kernel_rfl

theorem node1046_cond_eq
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value0 value1 value2 = (output1044, value474, value1))
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value474 value1 value2 = (output1045, value475, value1)) : Flapjack.WordAlloc.removeDeadStructural input1046 value0 value1 value2 = (output1046, value475, value1) := by
  rw [input1046_def, output1046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1044]
  try dsimp only
  rw [child1045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1044_skip, output1045_skip]
  kernel_rfl

#print axioms node1046_cond_eq
end InitECandidate.Proofs.DeadStages121.Parallel
