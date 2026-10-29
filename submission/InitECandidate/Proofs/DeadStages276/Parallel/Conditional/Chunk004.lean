import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages276.Parallel.Data.Chunk004
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages276.Parallel
theorem node1024_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value134 value1 value2 = (output286, value135, value1))
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value135 value1 value2 = (output1023, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1024 value134 value1 value2 = (output1024, value396, value1) := by
  rw [input1024_def, output1024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child1023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output1023_skip]
  kernel_rfl

theorem node1025_cond_eq
    (child285 : Flapjack.WordAlloc.removeDeadStructural input285 value133 value1 value2 = (output285, value134, value1))
    (child1024 : Flapjack.WordAlloc.removeDeadStructural input1024 value134 value1 value2 = (output1024, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1025 value133 value1 value2 = (output1025, value396, value1) := by
  rw [input1025_def, output1025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child285]
  try dsimp only
  rw [child1024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output285_skip, output1024_skip]
  kernel_rfl

theorem node1026_cond_eq
    (child284 : Flapjack.WordAlloc.removeDeadStructural input284 value132 value1 value2 = (output284, value133, value1))
    (child1025 : Flapjack.WordAlloc.removeDeadStructural input1025 value133 value1 value2 = (output1025, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1026 value132 value1 value2 = (output1026, value396, value1) := by
  rw [input1026_def, output1026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child284]
  try dsimp only
  rw [child1025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output284_skip, output1025_skip]
  kernel_rfl

theorem node1027_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value131 value1 value2 = (output283, value132, value1))
    (child1026 : Flapjack.WordAlloc.removeDeadStructural input1026 value132 value1 value2 = (output1026, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1027 value131 value1 value2 = (output1027, value396, value1) := by
  rw [input1027_def, output1027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child1026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output1026_skip]
  kernel_rfl

theorem node1028_cond_eq
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value130 value1 value2 = (output282, value131, value1))
    (child1027 : Flapjack.WordAlloc.removeDeadStructural input1027 value131 value1 value2 = (output1027, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1028 value130 value1 value2 = (output1028, value396, value1) := by
  rw [input1028_def, output1028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child282]
  try dsimp only
  rw [child1027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output282_skip, output1027_skip]
  kernel_rfl

theorem node1029_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value128 value1 value2 = (output281, value130, value1))
    (child1028 : Flapjack.WordAlloc.removeDeadStructural input1028 value130 value1 value2 = (output1028, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1029 value128 value1 value2 = (output1029, value396, value1) := by
  rw [input1029_def, output1029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  try dsimp only
  rw [child1028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output281_skip, output1028_skip]
  kernel_rfl

theorem node1030_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value127 value1 value2 = (output278, value128, value1))
    (child1029 : Flapjack.WordAlloc.removeDeadStructural input1029 value128 value1 value2 = (output1029, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1030 value127 value1 value2 = (output1030, value396, value1) := by
  rw [input1030_def, output1030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child278]
  try dsimp only
  rw [child1029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output278_skip, output1029_skip]
  kernel_rfl

theorem node1031_cond_eq
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value125 value1 value2 = (output277, value127, value1))
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value127 value1 value2 = (output1030, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1031 value125 value1 value2 = (output1031, value396, value1) := by
  rw [input1031_def, output1031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child277]
  try dsimp only
  rw [child1030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output277_skip, output1030_skip]
  kernel_rfl

theorem node1032_cond_eq
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value124 value1 value2 = (output274, value125, value1))
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value125 value1 value2 = (output1031, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1032 value124 value1 value2 = (output1032, value396, value1) := by
  rw [input1032_def, output1032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child274]
  try dsimp only
  rw [child1031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output274_skip, output1031_skip]
  kernel_rfl

theorem node1033_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value122 value1 value2 = (output273, value124, value1))
    (child1032 : Flapjack.WordAlloc.removeDeadStructural input1032 value124 value1 value2 = (output1032, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1033 value122 value1 value2 = (output1033, value396, value1) := by
  rw [input1033_def, output1033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child1032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output1032_skip]
  kernel_rfl

theorem node1034_cond_eq
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value121 value1 value2 = (output270, value122, value1))
    (child1033 : Flapjack.WordAlloc.removeDeadStructural input1033 value122 value1 value2 = (output1033, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1034 value121 value1 value2 = (output1034, value396, value1) := by
  rw [input1034_def, output1034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child270]
  try dsimp only
  rw [child1033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output270_skip, output1033_skip]
  kernel_rfl

theorem node1035_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value119 value1 value2 = (output269, value121, value1))
    (child1034 : Flapjack.WordAlloc.removeDeadStructural input1034 value121 value1 value2 = (output1034, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1035 value119 value1 value2 = (output1035, value396, value1) := by
  rw [input1035_def, output1035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child1034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output1034_skip]
  kernel_rfl

theorem node1036_cond_eq
    (child266 : Flapjack.WordAlloc.removeDeadStructural input266 value118 value1 value2 = (output266, value119, value1))
    (child1035 : Flapjack.WordAlloc.removeDeadStructural input1035 value119 value1 value2 = (output1035, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1036 value118 value1 value2 = (output1036, value396, value1) := by
  rw [input1036_def, output1036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child266]
  try dsimp only
  rw [child1035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output266_skip, output1035_skip]
  kernel_rfl

theorem node1037_cond_eq
    (child265 : Flapjack.WordAlloc.removeDeadStructural input265 value118 value1 value2 = (output265, value118, value1))
    (child1036 : Flapjack.WordAlloc.removeDeadStructural input1036 value118 value1 value2 = (output1036, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1037 value118 value1 value2 = (output1037, value396, value1) := by
  rw [input1037_def, output1037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child265]
  try dsimp only
  rw [child1036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output265_skip, output1036_skip]
  kernel_rfl

theorem node1038_cond_eq
    (child264 : Flapjack.WordAlloc.removeDeadStructural input264 value118 value1 value2 = (output264, value118, value1))
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value118 value1 value2 = (output1037, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1038 value118 value1 value2 = (output1038, value396, value1) := by
  rw [input1038_def, output1038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child264]
  try dsimp only
  rw [child1037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output264_skip, output1037_skip]
  kernel_rfl

theorem node1039_cond_eq
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value117 value1 value2 = (output263, value118, value1))
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value118 value1 value2 = (output1038, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1039 value117 value1 value2 = (output1039, value396, value1) := by
  rw [input1039_def, output1039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child263]
  try dsimp only
  rw [child1038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output263_skip, output1038_skip]
  kernel_rfl

theorem node1040_cond_eq
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value116 value1 value2 = (output262, value117, value1))
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value117 value1 value2 = (output1039, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1040 value116 value1 value2 = (output1040, value396, value1) := by
  rw [input1040_def, output1040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child262]
  try dsimp only
  rw [child1039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output262_skip, output1039_skip]
  kernel_rfl

theorem node1041_cond_eq
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value113 value1 value2 = (output261, value116, value1))
    (child1040 : Flapjack.WordAlloc.removeDeadStructural input1040 value116 value1 value2 = (output1040, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1041 value113 value1 value2 = (output1041, value396, value1) := by
  rw [input1041_def, output1041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child261]
  try dsimp only
  rw [child1040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output261_skip, output1040_skip]
  kernel_rfl

theorem node1042_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value113 value1 value2 = (output256, value113, value1))
    (child1041 : Flapjack.WordAlloc.removeDeadStructural input1041 value113 value1 value2 = (output1041, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1042 value113 value1 value2 = (output1042, value396, value1) := by
  rw [input1042_def, output1042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child1041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output1041_skip]
  kernel_rfl

theorem node1043_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value111 value1 value2 = (output255, value113, value1))
    (child1042 : Flapjack.WordAlloc.removeDeadStructural input1042 value113 value1 value2 = (output1042, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1043 value111 value1 value2 = (output1043, value396, value1) := by
  rw [input1043_def, output1043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child1042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output1042_skip]
  kernel_rfl

theorem node1044_cond_eq
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value110 value1 value2 = (output252, value111, value1))
    (child1043 : Flapjack.WordAlloc.removeDeadStructural input1043 value111 value1 value2 = (output1043, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1044 value110 value1 value2 = (output1044, value396, value1) := by
  rw [input1044_def, output1044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child252]
  try dsimp only
  rw [child1043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output252_skip, output1043_skip]
  kernel_rfl

theorem node1045_cond_eq
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value109 value1 value2 = (output251, value110, value1))
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value110 value1 value2 = (output1044, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1045 value109 value1 value2 = (output1045, value396, value1) := by
  rw [input1045_def, output1045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child251]
  try dsimp only
  rw [child1044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output251_skip, output1044_skip]
  kernel_rfl

theorem node1046_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value107 value1 value2 = (output250, value109, value1))
    (child1045 : Flapjack.WordAlloc.removeDeadStructural input1045 value109 value1 value2 = (output1045, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1046 value107 value1 value2 = (output1046, value396, value1) := by
  rw [input1046_def, output1046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child1045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output1045_skip]
  kernel_rfl

theorem node1047_cond_eq
    (child247 : Flapjack.WordAlloc.removeDeadStructural input247 value106 value1 value2 = (output247, value107, value1))
    (child1046 : Flapjack.WordAlloc.removeDeadStructural input1046 value107 value1 value2 = (output1046, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1047 value106 value1 value2 = (output1047, value396, value1) := by
  rw [input1047_def, output1047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child247]
  try dsimp only
  rw [child1046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output247_skip, output1046_skip]
  kernel_rfl

theorem node1048_cond_eq
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value106 value1 value2 = (output246, value106, value1))
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value106 value1 value2 = (output1047, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1048 value106 value1 value2 = (output1048, value396, value1) := by
  rw [input1048_def, output1048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child246]
  try dsimp only
  rw [child1047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output246_skip, output1047_skip]
  kernel_rfl

theorem node1049_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value106 value1 value2 = (output245, value106, value1))
    (child1048 : Flapjack.WordAlloc.removeDeadStructural input1048 value106 value1 value2 = (output1048, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1049 value106 value1 value2 = (output1049, value396, value1) := by
  rw [input1049_def, output1049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child1048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output1048_skip]
  kernel_rfl

theorem node1050_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value105 value1 value2 = (output244, value106, value1))
    (child1049 : Flapjack.WordAlloc.removeDeadStructural input1049 value106 value1 value2 = (output1049, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1050 value105 value1 value2 = (output1050, value396, value1) := by
  rw [input1050_def, output1050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child1049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output1049_skip]
  kernel_rfl

theorem node1051_cond_eq
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value104 value1 value2 = (output243, value105, value1))
    (child1050 : Flapjack.WordAlloc.removeDeadStructural input1050 value105 value1 value2 = (output1050, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1051 value104 value1 value2 = (output1051, value396, value1) := by
  rw [input1051_def, output1051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child243]
  try dsimp only
  rw [child1050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output243_skip, output1050_skip]
  kernel_rfl

theorem node1052_cond_eq
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value101 value1 value2 = (output242, value104, value1))
    (child1051 : Flapjack.WordAlloc.removeDeadStructural input1051 value104 value1 value2 = (output1051, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1052 value101 value1 value2 = (output1052, value396, value1) := by
  rw [input1052_def, output1052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child242]
  try dsimp only
  rw [child1051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output242_skip, output1051_skip]
  kernel_rfl

theorem node1053_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value101 value1 value2 = (output237, value101, value1))
    (child1052 : Flapjack.WordAlloc.removeDeadStructural input1052 value101 value1 value2 = (output1052, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1053 value101 value1 value2 = (output1053, value396, value1) := by
  rw [input1053_def, output1053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child1052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output1052_skip]
  kernel_rfl

theorem node1054_cond_eq
    (child236 : Flapjack.WordAlloc.removeDeadStructural input236 value100 value1 value2 = (output236, value101, value1))
    (child1053 : Flapjack.WordAlloc.removeDeadStructural input1053 value101 value1 value2 = (output1053, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1054 value100 value1 value2 = (output1054, value396, value1) := by
  rw [input1054_def, output1054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child236]
  try dsimp only
  rw [child1053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output236_skip, output1053_skip]
  kernel_rfl

theorem node1055_cond_eq
    (child235 : Flapjack.WordAlloc.removeDeadStructural input235 value100 value1 value2 = (output235, value100, value1))
    (child1054 : Flapjack.WordAlloc.removeDeadStructural input1054 value100 value1 value2 = (output1054, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1055 value100 value1 value2 = (output1055, value396, value1) := by
  rw [input1055_def, output1055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child235]
  try dsimp only
  rw [child1054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output235_skip, output1054_skip]
  kernel_rfl

theorem node1056_cond_eq
    (child234 : Flapjack.WordAlloc.removeDeadStructural input234 value99 value1 value2 = (output234, value100, value1))
    (child1055 : Flapjack.WordAlloc.removeDeadStructural input1055 value100 value1 value2 = (output1055, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1056 value99 value1 value2 = (output1056, value396, value1) := by
  rw [input1056_def, output1056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child234]
  try dsimp only
  rw [child1055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output234_skip, output1055_skip]
  kernel_rfl

theorem node1057_cond_eq
    (child233 : Flapjack.WordAlloc.removeDeadStructural input233 value96 value1 value2 = (output233, value99, value1))
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value99 value1 value2 = (output1056, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1057 value96 value1 value2 = (output1057, value396, value1) := by
  rw [input1057_def, output1057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child233]
  try dsimp only
  rw [child1056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output233_skip, output1056_skip]
  kernel_rfl

theorem node1058_cond_eq
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value96 value1 value2 = (output228, value96, value1))
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value96 value1 value2 = (output1057, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1058 value96 value1 value2 = (output1058, value396, value1) := by
  rw [input1058_def, output1058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child228]
  try dsimp only
  rw [child1057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output228_skip, output1057_skip]
  kernel_rfl

theorem node1059_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value94 value1 value2 = (output227, value96, value1))
    (child1058 : Flapjack.WordAlloc.removeDeadStructural input1058 value96 value1 value2 = (output1058, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1059 value94 value1 value2 = (output1059, value396, value1) := by
  rw [input1059_def, output1059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child1058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output1058_skip]
  kernel_rfl

theorem node1060_cond_eq
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value93 value1 value2 = (output224, value94, value1))
    (child1059 : Flapjack.WordAlloc.removeDeadStructural input1059 value94 value1 value2 = (output1059, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1060 value93 value1 value2 = (output1060, value396, value1) := by
  rw [input1060_def, output1060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child224]
  try dsimp only
  rw [child1059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output224_skip, output1059_skip]
  kernel_rfl

theorem node1061_cond_eq
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value92 value1 value2 = (output223, value93, value1))
    (child1060 : Flapjack.WordAlloc.removeDeadStructural input1060 value93 value1 value2 = (output1060, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1061 value92 value1 value2 = (output1061, value396, value1) := by
  rw [input1061_def, output1061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child223]
  try dsimp only
  rw [child1060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output223_skip, output1060_skip]
  kernel_rfl

theorem node1062_cond_eq
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value90 value1 value2 = (output222, value92, value1))
    (child1061 : Flapjack.WordAlloc.removeDeadStructural input1061 value92 value1 value2 = (output1061, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1062 value90 value1 value2 = (output1062, value396, value1) := by
  rw [input1062_def, output1062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child222]
  try dsimp only
  rw [child1061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output222_skip, output1061_skip]
  kernel_rfl

theorem node1063_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value89 value1 value2 = (output219, value90, value1))
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value90 value1 value2 = (output1062, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1063 value89 value1 value2 = (output1063, value396, value1) := by
  rw [input1063_def, output1063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  try dsimp only
  rw [child1062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output219_skip, output1062_skip]
  kernel_rfl

theorem node1064_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value89 value1 value2 = (output218, value89, value1))
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value89 value1 value2 = (output1063, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1064 value89 value1 value2 = (output1064, value396, value1) := by
  rw [input1064_def, output1064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  try dsimp only
  rw [child1063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output218_skip, output1063_skip]
  kernel_rfl

theorem node1065_cond_eq
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value89 value1 value2 = (output217, value89, value1))
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value89 value1 value2 = (output1064, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1065 value89 value1 value2 = (output1065, value396, value1) := by
  rw [input1065_def, output1065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child217]
  try dsimp only
  rw [child1064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output217_skip, output1064_skip]
  kernel_rfl

theorem node1066_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value88 value1 value2 = (output216, value89, value1))
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value89 value1 value2 = (output1065, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1066 value88 value1 value2 = (output1066, value396, value1) := by
  rw [input1066_def, output1066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child1065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output1065_skip]
  kernel_rfl

theorem node1067_cond_eq
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value87 value1 value2 = (output215, value88, value1))
    (child1066 : Flapjack.WordAlloc.removeDeadStructural input1066 value88 value1 value2 = (output1066, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1067 value87 value1 value2 = (output1067, value396, value1) := by
  rw [input1067_def, output1067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child215]
  try dsimp only
  rw [child1066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output215_skip, output1066_skip]
  kernel_rfl

theorem node1068_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value84 value1 value2 = (output214, value87, value1))
    (child1067 : Flapjack.WordAlloc.removeDeadStructural input1067 value87 value1 value2 = (output1067, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1068 value84 value1 value2 = (output1068, value396, value1) := by
  rw [input1068_def, output1068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child1067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output1067_skip]
  kernel_rfl

theorem node1069_cond_eq
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value84 value1 value2 = (output209, value84, value1))
    (child1068 : Flapjack.WordAlloc.removeDeadStructural input1068 value84 value1 value2 = (output1068, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1069 value84 value1 value2 = (output1069, value396, value1) := by
  rw [input1069_def, output1069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child209]
  try dsimp only
  rw [child1068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output209_skip, output1068_skip]
  kernel_rfl

theorem node1070_cond_eq
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value83 value1 value2 = (output208, value84, value1))
    (child1069 : Flapjack.WordAlloc.removeDeadStructural input1069 value84 value1 value2 = (output1069, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1070 value83 value1 value2 = (output1070, value396, value1) := by
  rw [input1070_def, output1070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child208]
  try dsimp only
  rw [child1069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output208_skip, output1069_skip]
  kernel_rfl

theorem node1071_cond_eq
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value83 value1 value2 = (output207, value83, value1))
    (child1070 : Flapjack.WordAlloc.removeDeadStructural input1070 value83 value1 value2 = (output1070, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1071 value83 value1 value2 = (output1071, value396, value1) := by
  rw [input1071_def, output1071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child207]
  try dsimp only
  rw [child1070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output207_skip, output1070_skip]
  kernel_rfl

theorem node1072_cond_eq
    (child206 : Flapjack.WordAlloc.removeDeadStructural input206 value82 value1 value2 = (output206, value83, value1))
    (child1071 : Flapjack.WordAlloc.removeDeadStructural input1071 value83 value1 value2 = (output1071, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1072 value82 value1 value2 = (output1072, value396, value1) := by
  rw [input1072_def, output1072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child206]
  try dsimp only
  rw [child1071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output206_skip, output1071_skip]
  kernel_rfl

theorem node1073_cond_eq
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value79 value1 value2 = (output205, value82, value1))
    (child1072 : Flapjack.WordAlloc.removeDeadStructural input1072 value82 value1 value2 = (output1072, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1073 value79 value1 value2 = (output1073, value396, value1) := by
  rw [input1073_def, output1073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child205]
  try dsimp only
  rw [child1072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output205_skip, output1072_skip]
  kernel_rfl

theorem node1074_cond_eq
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value79 value1 value2 = (output200, value79, value1))
    (child1073 : Flapjack.WordAlloc.removeDeadStructural input1073 value79 value1 value2 = (output1073, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1074 value79 value1 value2 = (output1074, value396, value1) := by
  rw [input1074_def, output1074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child200]
  try dsimp only
  rw [child1073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output200_skip, output1073_skip]
  kernel_rfl

theorem node1075_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value77 value1 value2 = (output199, value79, value1))
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value79 value1 value2 = (output1074, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1075 value77 value1 value2 = (output1075, value396, value1) := by
  rw [input1075_def, output1075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child1074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output199_skip, output1074_skip]
  kernel_rfl

theorem node1076_cond_eq
    (child196 : Flapjack.WordAlloc.removeDeadStructural input196 value76 value1 value2 = (output196, value77, value1))
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value77 value1 value2 = (output1075, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1076 value76 value1 value2 = (output1076, value396, value1) := by
  rw [input1076_def, output1076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child196]
  try dsimp only
  rw [child1075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output196_skip, output1075_skip]
  kernel_rfl

theorem node1077_cond_eq
    (child195 : Flapjack.WordAlloc.removeDeadStructural input195 value75 value1 value2 = (output195, value76, value1))
    (child1076 : Flapjack.WordAlloc.removeDeadStructural input1076 value76 value1 value2 = (output1076, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1077 value75 value1 value2 = (output1077, value396, value1) := by
  rw [input1077_def, output1077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child195]
  try dsimp only
  rw [child1076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output195_skip, output1076_skip]
  kernel_rfl

theorem node1078_cond_eq
    (child194 : Flapjack.WordAlloc.removeDeadStructural input194 value73 value1 value2 = (output194, value75, value1))
    (child1077 : Flapjack.WordAlloc.removeDeadStructural input1077 value75 value1 value2 = (output1077, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1078 value73 value1 value2 = (output1078, value396, value1) := by
  rw [input1078_def, output1078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child194]
  try dsimp only
  rw [child1077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output194_skip, output1077_skip]
  kernel_rfl

theorem node1079_cond_eq
    (child191 : Flapjack.WordAlloc.removeDeadStructural input191 value72 value1 value2 = (output191, value73, value1))
    (child1078 : Flapjack.WordAlloc.removeDeadStructural input1078 value73 value1 value2 = (output1078, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1079 value72 value1 value2 = (output1079, value396, value1) := by
  rw [input1079_def, output1079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child191]
  try dsimp only
  rw [child1078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output191_skip, output1078_skip]
  kernel_rfl

theorem node1080_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value72 value1 value2 = (output190, value72, value1))
    (child1079 : Flapjack.WordAlloc.removeDeadStructural input1079 value72 value1 value2 = (output1079, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1080 value72 value1 value2 = (output1080, value396, value1) := by
  rw [input1080_def, output1080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child1079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output1079_skip]
  kernel_rfl

theorem node1081_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value72 value1 value2 = (output189, value72, value1))
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value72 value1 value2 = (output1080, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1081 value72 value1 value2 = (output1081, value396, value1) := by
  rw [input1081_def, output1081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child1080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output1080_skip]
  kernel_rfl

theorem node1082_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value71 value1 value2 = (output188, value72, value1))
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value72 value1 value2 = (output1081, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1082 value71 value1 value2 = (output1082, value396, value1) := by
  rw [input1082_def, output1082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child1081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output1081_skip]
  kernel_rfl

theorem node1083_cond_eq
    (child187 : Flapjack.WordAlloc.removeDeadStructural input187 value70 value1 value2 = (output187, value71, value1))
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value71 value1 value2 = (output1082, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1083 value70 value1 value2 = (output1083, value396, value1) := by
  rw [input1083_def, output1083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child187]
  try dsimp only
  rw [child1082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output187_skip, output1082_skip]
  kernel_rfl

theorem node1084_cond_eq
    (child186 : Flapjack.WordAlloc.removeDeadStructural input186 value67 value1 value2 = (output186, value70, value1))
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value70 value1 value2 = (output1083, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1084 value67 value1 value2 = (output1084, value396, value1) := by
  rw [input1084_def, output1084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child186]
  try dsimp only
  rw [child1083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output186_skip, output1083_skip]
  kernel_rfl

theorem node1085_cond_eq
    (child181 : Flapjack.WordAlloc.removeDeadStructural input181 value67 value1 value2 = (output181, value67, value1))
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value67 value1 value2 = (output1084, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1085 value67 value1 value2 = (output1085, value396, value1) := by
  rw [input1085_def, output1085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child181]
  try dsimp only
  rw [child1084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output181_skip, output1084_skip]
  kernel_rfl

theorem node1086_cond_eq
    (child180 : Flapjack.WordAlloc.removeDeadStructural input180 value65 value1 value2 = (output180, value67, value1))
    (child1085 : Flapjack.WordAlloc.removeDeadStructural input1085 value67 value1 value2 = (output1085, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1086 value65 value1 value2 = (output1086, value396, value1) := by
  rw [input1086_def, output1086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child180]
  try dsimp only
  rw [child1085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output180_skip, output1085_skip]
  kernel_rfl

theorem node1087_cond_eq
    (child177 : Flapjack.WordAlloc.removeDeadStructural input177 value64 value1 value2 = (output177, value65, value1))
    (child1086 : Flapjack.WordAlloc.removeDeadStructural input1086 value65 value1 value2 = (output1086, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1087 value64 value1 value2 = (output1087, value396, value1) := by
  rw [input1087_def, output1087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child177]
  try dsimp only
  rw [child1086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output177_skip, output1086_skip]
  kernel_rfl

theorem node1088_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value63 value1 value2 = (output176, value64, value1))
    (child1087 : Flapjack.WordAlloc.removeDeadStructural input1087 value64 value1 value2 = (output1087, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1088 value63 value1 value2 = (output1088, value396, value1) := by
  rw [input1088_def, output1088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child1087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output1087_skip]
  kernel_rfl

theorem node1089_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value61 value1 value2 = (output175, value63, value1))
    (child1088 : Flapjack.WordAlloc.removeDeadStructural input1088 value63 value1 value2 = (output1088, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1089 value61 value1 value2 = (output1089, value396, value1) := by
  rw [input1089_def, output1089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child1088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output1088_skip]
  kernel_rfl

theorem node1090_cond_eq
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value60 value1 value2 = (output172, value61, value1))
    (child1089 : Flapjack.WordAlloc.removeDeadStructural input1089 value61 value1 value2 = (output1089, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1090 value60 value1 value2 = (output1090, value396, value1) := by
  rw [input1090_def, output1090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child172]
  try dsimp only
  rw [child1089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output172_skip, output1089_skip]
  kernel_rfl

theorem node1091_cond_eq
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value60 value1 value2 = (output171, value60, value1))
    (child1090 : Flapjack.WordAlloc.removeDeadStructural input1090 value60 value1 value2 = (output1090, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1091 value60 value1 value2 = (output1091, value396, value1) := by
  rw [input1091_def, output1091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child171]
  try dsimp only
  rw [child1090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output171_skip, output1090_skip]
  kernel_rfl

theorem node1092_cond_eq
    (child170 : Flapjack.WordAlloc.removeDeadStructural input170 value60 value1 value2 = (output170, value60, value1))
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value60 value1 value2 = (output1091, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1092 value60 value1 value2 = (output1092, value396, value1) := by
  rw [input1092_def, output1092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child170]
  try dsimp only
  rw [child1091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output170_skip, output1091_skip]
  kernel_rfl

theorem node1093_cond_eq
    (child169 : Flapjack.WordAlloc.removeDeadStructural input169 value59 value1 value2 = (output169, value60, value1))
    (child1092 : Flapjack.WordAlloc.removeDeadStructural input1092 value60 value1 value2 = (output1092, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1093 value59 value1 value2 = (output1093, value396, value1) := by
  rw [input1093_def, output1093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child169]
  try dsimp only
  rw [child1092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output169_skip, output1092_skip]
  kernel_rfl

theorem node1094_cond_eq
    (child168 : Flapjack.WordAlloc.removeDeadStructural input168 value58 value1 value2 = (output168, value59, value1))
    (child1093 : Flapjack.WordAlloc.removeDeadStructural input1093 value59 value1 value2 = (output1093, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1094 value58 value1 value2 = (output1094, value396, value1) := by
  rw [input1094_def, output1094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child168]
  try dsimp only
  rw [child1093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output168_skip, output1093_skip]
  kernel_rfl

theorem node1095_cond_eq
    (child167 : Flapjack.WordAlloc.removeDeadStructural input167 value55 value1 value2 = (output167, value58, value1))
    (child1094 : Flapjack.WordAlloc.removeDeadStructural input1094 value58 value1 value2 = (output1094, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1095 value55 value1 value2 = (output1095, value396, value1) := by
  rw [input1095_def, output1095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child167]
  try dsimp only
  rw [child1094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output167_skip, output1094_skip]
  kernel_rfl

theorem node1096_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value55 value1 value2 = (output162, value55, value1))
    (child1095 : Flapjack.WordAlloc.removeDeadStructural input1095 value55 value1 value2 = (output1095, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1096 value55 value1 value2 = (output1096, value396, value1) := by
  rw [input1096_def, output1096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child1095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output1095_skip]
  kernel_rfl

theorem node1097_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value53 value1 value2 = (output161, value55, value1))
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value55 value1 value2 = (output1096, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1097 value53 value1 value2 = (output1097, value396, value1) := by
  rw [input1097_def, output1097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  try dsimp only
  rw [child1096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output161_skip, output1096_skip]
  kernel_rfl

theorem node1098_cond_eq
    (child158 : Flapjack.WordAlloc.removeDeadStructural input158 value52 value1 value2 = (output158, value53, value1))
    (child1097 : Flapjack.WordAlloc.removeDeadStructural input1097 value53 value1 value2 = (output1097, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1098 value52 value1 value2 = (output1098, value396, value1) := by
  rw [input1098_def, output1098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child158]
  try dsimp only
  rw [child1097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output158_skip, output1097_skip]
  kernel_rfl

theorem node1099_cond_eq
    (child157 : Flapjack.WordAlloc.removeDeadStructural input157 value51 value1 value2 = (output157, value52, value1))
    (child1098 : Flapjack.WordAlloc.removeDeadStructural input1098 value52 value1 value2 = (output1098, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1099 value51 value1 value2 = (output1099, value396, value1) := by
  rw [input1099_def, output1099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child157]
  try dsimp only
  rw [child1098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output157_skip, output1098_skip]
  kernel_rfl

theorem node1100_cond_eq
    (child156 : Flapjack.WordAlloc.removeDeadStructural input156 value49 value1 value2 = (output156, value51, value1))
    (child1099 : Flapjack.WordAlloc.removeDeadStructural input1099 value51 value1 value2 = (output1099, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1100 value49 value1 value2 = (output1100, value396, value1) := by
  rw [input1100_def, output1100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child156]
  try dsimp only
  rw [child1099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output156_skip, output1099_skip]
  kernel_rfl

theorem node1101_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value48 value1 value2 = (output153, value49, value1))
    (child1100 : Flapjack.WordAlloc.removeDeadStructural input1100 value49 value1 value2 = (output1100, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1101 value48 value1 value2 = (output1101, value396, value1) := by
  rw [input1101_def, output1101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child1100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output1100_skip]
  kernel_rfl

theorem node1102_cond_eq
    (child152 : Flapjack.WordAlloc.removeDeadStructural input152 value47 value1 value2 = (output152, value48, value1))
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value48 value1 value2 = (output1101, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1102 value47 value1 value2 = (output1102, value396, value1) := by
  rw [input1102_def, output1102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child152]
  try dsimp only
  rw [child1101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output152_skip, output1101_skip]
  kernel_rfl

theorem node1103_cond_eq
    (child151 : Flapjack.WordAlloc.removeDeadStructural input151 value5 value1 value2 = (output151, value47, value1))
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value47 value1 value2 = (output1102, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1103 value5 value1 value2 = (output1103, value396, value1) := by
  rw [input1103_def, output1103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child151]
  try dsimp only
  rw [child1102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output151_skip, output1102_skip]
  kernel_rfl

theorem node1104_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value5, value1))
    (child1103 : Flapjack.WordAlloc.removeDeadStructural input1103 value5 value1 value2 = (output1103, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1104 value5 value1 value2 = (output1104, value396, value1) := by
  rw [input1104_def, output1104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child1103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output1103_skip]
  kernel_rfl

theorem node1105_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child1104 : Flapjack.WordAlloc.removeDeadStructural input1104 value5 value1 value2 = (output1104, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1105 value4 value1 value2 = (output1105, value396, value1) := by
  rw [input1105_def, output1105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child1104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output1104_skip]
  kernel_rfl

theorem node1106_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child1105 : Flapjack.WordAlloc.removeDeadStructural input1105 value4 value1 value2 = (output1105, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input1106 value0 value1 value2 = (output1106, value396, value1) := by
  rw [input1106_def, output1106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child1105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output1105_skip]
  kernel_rfl

theorem node1107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1107 value396 value1 value2 = (output1107, value397, value1) := by
  rw [input1107_def, output1107_def]
  kernel_rfl

theorem node1108_cond_eq
    (child1106 : Flapjack.WordAlloc.removeDeadStructural input1106 value0 value1 value2 = (output1106, value396, value1))
    (child1107 : Flapjack.WordAlloc.removeDeadStructural input1107 value396 value1 value2 = (output1107, value397, value1)) : Flapjack.WordAlloc.removeDeadStructural input1108 value0 value1 value2 = (output1108, value397, value1) := by
  rw [input1108_def, output1108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1106]
  try dsimp only
  rw [child1107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1106_skip, output1107_skip]
  kernel_rfl

#print axioms node1108_cond_eq
end InitECandidate.Proofs.DeadStages276.Parallel
