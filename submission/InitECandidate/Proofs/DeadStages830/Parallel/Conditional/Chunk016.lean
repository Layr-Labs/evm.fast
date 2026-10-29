import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages830.Parallel.Data.Chunk016
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages830.Parallel
theorem node4096_cond_eq
    (child2092 : Flapjack.WordAlloc.removeDeadStructural input2092 value5 value1 value2 = (output2092, value1050, value1))
    (child4095 : Flapjack.WordAlloc.removeDeadStructural input4095 value1050 value1 value2 = (output4095, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4096 value5 value1 value2 = (output4096, value1810, value1) := by
  rw [input4096_def, output4096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2092]
  try dsimp only
  rw [child4095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2092_skip, output4095_skip]
  kernel_rfl

theorem node4097_cond_eq
    (child2089 : Flapjack.WordAlloc.removeDeadStructural input2089 value1044 value1 value2 = (output2089, value5, value1))
    (child4096 : Flapjack.WordAlloc.removeDeadStructural input4096 value5 value1 value2 = (output4096, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4097 value1044 value1 value2 = (output4097, value1810, value1) := by
  rw [input4097_def, output4097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2089]
  try dsimp only
  rw [child4096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2089_skip, output4096_skip]
  kernel_rfl

theorem node4098_cond_eq
    (child2080 : Flapjack.WordAlloc.removeDeadStructural input2080 value1044 value1 value2 = (output2080, value1044, value1))
    (child4097 : Flapjack.WordAlloc.removeDeadStructural input4097 value1044 value1 value2 = (output4097, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4098 value1044 value1 value2 = (output4098, value1810, value1) := by
  rw [input4098_def, output4098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2080]
  try dsimp only
  rw [child4097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2080_skip, output4097_skip]
  kernel_rfl

theorem node4099_cond_eq
    (child2079 : Flapjack.WordAlloc.removeDeadStructural input2079 value1043 value1 value2 = (output2079, value1044, value1))
    (child4098 : Flapjack.WordAlloc.removeDeadStructural input4098 value1044 value1 value2 = (output4098, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4099 value1043 value1 value2 = (output4099, value1810, value1) := by
  rw [input4099_def, output4099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2079]
  try dsimp only
  rw [child4098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2079_skip, output4098_skip]
  kernel_rfl

theorem node4100_cond_eq
    (child2078 : Flapjack.WordAlloc.removeDeadStructural input2078 value5 value1 value2 = (output2078, value1043, value1))
    (child4099 : Flapjack.WordAlloc.removeDeadStructural input4099 value1043 value1 value2 = (output4099, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4100 value5 value1 value2 = (output4100, value1810, value1) := by
  rw [input4100_def, output4100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2078]
  try dsimp only
  rw [child4099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2078_skip, output4099_skip]
  kernel_rfl

theorem node4101_cond_eq
    (child2075 : Flapjack.WordAlloc.removeDeadStructural input2075 value1037 value1 value2 = (output2075, value5, value1))
    (child4100 : Flapjack.WordAlloc.removeDeadStructural input4100 value5 value1 value2 = (output4100, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4101 value1037 value1 value2 = (output4101, value1810, value1) := by
  rw [input4101_def, output4101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2075]
  try dsimp only
  rw [child4100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2075_skip, output4100_skip]
  kernel_rfl

theorem node4102_cond_eq
    (child2066 : Flapjack.WordAlloc.removeDeadStructural input2066 value1037 value1 value2 = (output2066, value1037, value1))
    (child4101 : Flapjack.WordAlloc.removeDeadStructural input4101 value1037 value1 value2 = (output4101, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4102 value1037 value1 value2 = (output4102, value1810, value1) := by
  rw [input4102_def, output4102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2066]
  try dsimp only
  rw [child4101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2066_skip, output4101_skip]
  kernel_rfl

theorem node4103_cond_eq
    (child2065 : Flapjack.WordAlloc.removeDeadStructural input2065 value1036 value1 value2 = (output2065, value1037, value1))
    (child4102 : Flapjack.WordAlloc.removeDeadStructural input4102 value1037 value1 value2 = (output4102, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4103 value1036 value1 value2 = (output4103, value1810, value1) := by
  rw [input4103_def, output4103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2065]
  try dsimp only
  rw [child4102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2065_skip, output4102_skip]
  kernel_rfl

theorem node4104_cond_eq
    (child2064 : Flapjack.WordAlloc.removeDeadStructural input2064 value5 value1 value2 = (output2064, value1036, value1))
    (child4103 : Flapjack.WordAlloc.removeDeadStructural input4103 value1036 value1 value2 = (output4103, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4104 value5 value1 value2 = (output4104, value1810, value1) := by
  rw [input4104_def, output4104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2064]
  try dsimp only
  rw [child4103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2064_skip, output4103_skip]
  kernel_rfl

theorem node4105_cond_eq
    (child2061 : Flapjack.WordAlloc.removeDeadStructural input2061 value1030 value1 value2 = (output2061, value5, value1))
    (child4104 : Flapjack.WordAlloc.removeDeadStructural input4104 value5 value1 value2 = (output4104, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4105 value1030 value1 value2 = (output4105, value1810, value1) := by
  rw [input4105_def, output4105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2061]
  try dsimp only
  rw [child4104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2061_skip, output4104_skip]
  kernel_rfl

theorem node4106_cond_eq
    (child2052 : Flapjack.WordAlloc.removeDeadStructural input2052 value1030 value1 value2 = (output2052, value1030, value1))
    (child4105 : Flapjack.WordAlloc.removeDeadStructural input4105 value1030 value1 value2 = (output4105, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4106 value1030 value1 value2 = (output4106, value1810, value1) := by
  rw [input4106_def, output4106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2052]
  try dsimp only
  rw [child4105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2052_skip, output4105_skip]
  kernel_rfl

theorem node4107_cond_eq
    (child2051 : Flapjack.WordAlloc.removeDeadStructural input2051 value1029 value1 value2 = (output2051, value1030, value1))
    (child4106 : Flapjack.WordAlloc.removeDeadStructural input4106 value1030 value1 value2 = (output4106, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4107 value1029 value1 value2 = (output4107, value1810, value1) := by
  rw [input4107_def, output4107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2051]
  try dsimp only
  rw [child4106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2051_skip, output4106_skip]
  kernel_rfl

theorem node4108_cond_eq
    (child2050 : Flapjack.WordAlloc.removeDeadStructural input2050 value5 value1 value2 = (output2050, value1029, value1))
    (child4107 : Flapjack.WordAlloc.removeDeadStructural input4107 value1029 value1 value2 = (output4107, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4108 value5 value1 value2 = (output4108, value1810, value1) := by
  rw [input4108_def, output4108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2050]
  try dsimp only
  rw [child4107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2050_skip, output4107_skip]
  kernel_rfl

theorem node4109_cond_eq
    (child2047 : Flapjack.WordAlloc.removeDeadStructural input2047 value1023 value1 value2 = (output2047, value5, value1))
    (child4108 : Flapjack.WordAlloc.removeDeadStructural input4108 value5 value1 value2 = (output4108, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4109 value1023 value1 value2 = (output4109, value1810, value1) := by
  rw [input4109_def, output4109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2047]
  try dsimp only
  rw [child4108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2047_skip, output4108_skip]
  kernel_rfl

theorem node4110_cond_eq
    (child2038 : Flapjack.WordAlloc.removeDeadStructural input2038 value1023 value1 value2 = (output2038, value1023, value1))
    (child4109 : Flapjack.WordAlloc.removeDeadStructural input4109 value1023 value1 value2 = (output4109, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4110 value1023 value1 value2 = (output4110, value1810, value1) := by
  rw [input4110_def, output4110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2038]
  try dsimp only
  rw [child4109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2038_skip, output4109_skip]
  kernel_rfl

theorem node4111_cond_eq
    (child2037 : Flapjack.WordAlloc.removeDeadStructural input2037 value1022 value1 value2 = (output2037, value1023, value1))
    (child4110 : Flapjack.WordAlloc.removeDeadStructural input4110 value1023 value1 value2 = (output4110, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4111 value1022 value1 value2 = (output4111, value1810, value1) := by
  rw [input4111_def, output4111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2037]
  try dsimp only
  rw [child4110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2037_skip, output4110_skip]
  kernel_rfl

theorem node4112_cond_eq
    (child2036 : Flapjack.WordAlloc.removeDeadStructural input2036 value5 value1 value2 = (output2036, value1022, value1))
    (child4111 : Flapjack.WordAlloc.removeDeadStructural input4111 value1022 value1 value2 = (output4111, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4112 value5 value1 value2 = (output4112, value1810, value1) := by
  rw [input4112_def, output4112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2036]
  try dsimp only
  rw [child4111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2036_skip, output4111_skip]
  kernel_rfl

theorem node4113_cond_eq
    (child2033 : Flapjack.WordAlloc.removeDeadStructural input2033 value1016 value1 value2 = (output2033, value5, value1))
    (child4112 : Flapjack.WordAlloc.removeDeadStructural input4112 value5 value1 value2 = (output4112, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4113 value1016 value1 value2 = (output4113, value1810, value1) := by
  rw [input4113_def, output4113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2033]
  try dsimp only
  rw [child4112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2033_skip, output4112_skip]
  kernel_rfl

theorem node4114_cond_eq
    (child2024 : Flapjack.WordAlloc.removeDeadStructural input2024 value1016 value1 value2 = (output2024, value1016, value1))
    (child4113 : Flapjack.WordAlloc.removeDeadStructural input4113 value1016 value1 value2 = (output4113, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4114 value1016 value1 value2 = (output4114, value1810, value1) := by
  rw [input4114_def, output4114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2024]
  try dsimp only
  rw [child4113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2024_skip, output4113_skip]
  kernel_rfl

theorem node4115_cond_eq
    (child2023 : Flapjack.WordAlloc.removeDeadStructural input2023 value1015 value1 value2 = (output2023, value1016, value1))
    (child4114 : Flapjack.WordAlloc.removeDeadStructural input4114 value1016 value1 value2 = (output4114, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4115 value1015 value1 value2 = (output4115, value1810, value1) := by
  rw [input4115_def, output4115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2023]
  try dsimp only
  rw [child4114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2023_skip, output4114_skip]
  kernel_rfl

theorem node4116_cond_eq
    (child2022 : Flapjack.WordAlloc.removeDeadStructural input2022 value5 value1 value2 = (output2022, value1015, value1))
    (child4115 : Flapjack.WordAlloc.removeDeadStructural input4115 value1015 value1 value2 = (output4115, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4116 value5 value1 value2 = (output4116, value1810, value1) := by
  rw [input4116_def, output4116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2022]
  try dsimp only
  rw [child4115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2022_skip, output4115_skip]
  kernel_rfl

theorem node4117_cond_eq
    (child2019 : Flapjack.WordAlloc.removeDeadStructural input2019 value1009 value1 value2 = (output2019, value5, value1))
    (child4116 : Flapjack.WordAlloc.removeDeadStructural input4116 value5 value1 value2 = (output4116, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4117 value1009 value1 value2 = (output4117, value1810, value1) := by
  rw [input4117_def, output4117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2019]
  try dsimp only
  rw [child4116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2019_skip, output4116_skip]
  kernel_rfl

theorem node4118_cond_eq
    (child2010 : Flapjack.WordAlloc.removeDeadStructural input2010 value1009 value1 value2 = (output2010, value1009, value1))
    (child4117 : Flapjack.WordAlloc.removeDeadStructural input4117 value1009 value1 value2 = (output4117, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4118 value1009 value1 value2 = (output4118, value1810, value1) := by
  rw [input4118_def, output4118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2010]
  try dsimp only
  rw [child4117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2010_skip, output4117_skip]
  kernel_rfl

theorem node4119_cond_eq
    (child2009 : Flapjack.WordAlloc.removeDeadStructural input2009 value1008 value1 value2 = (output2009, value1009, value1))
    (child4118 : Flapjack.WordAlloc.removeDeadStructural input4118 value1009 value1 value2 = (output4118, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4119 value1008 value1 value2 = (output4119, value1810, value1) := by
  rw [input4119_def, output4119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2009]
  try dsimp only
  rw [child4118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2009_skip, output4118_skip]
  kernel_rfl

theorem node4120_cond_eq
    (child2008 : Flapjack.WordAlloc.removeDeadStructural input2008 value5 value1 value2 = (output2008, value1008, value1))
    (child4119 : Flapjack.WordAlloc.removeDeadStructural input4119 value1008 value1 value2 = (output4119, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4120 value5 value1 value2 = (output4120, value1810, value1) := by
  rw [input4120_def, output4120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2008]
  try dsimp only
  rw [child4119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2008_skip, output4119_skip]
  kernel_rfl

theorem node4121_cond_eq
    (child2005 : Flapjack.WordAlloc.removeDeadStructural input2005 value1002 value1 value2 = (output2005, value5, value1))
    (child4120 : Flapjack.WordAlloc.removeDeadStructural input4120 value5 value1 value2 = (output4120, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4121 value1002 value1 value2 = (output4121, value1810, value1) := by
  rw [input4121_def, output4121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2005]
  try dsimp only
  rw [child4120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2005_skip, output4120_skip]
  kernel_rfl

theorem node4122_cond_eq
    (child1996 : Flapjack.WordAlloc.removeDeadStructural input1996 value1002 value1 value2 = (output1996, value1002, value1))
    (child4121 : Flapjack.WordAlloc.removeDeadStructural input4121 value1002 value1 value2 = (output4121, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4122 value1002 value1 value2 = (output4122, value1810, value1) := by
  rw [input4122_def, output4122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1996]
  try dsimp only
  rw [child4121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1996_skip, output4121_skip]
  kernel_rfl

theorem node4123_cond_eq
    (child1995 : Flapjack.WordAlloc.removeDeadStructural input1995 value1001 value1 value2 = (output1995, value1002, value1))
    (child4122 : Flapjack.WordAlloc.removeDeadStructural input4122 value1002 value1 value2 = (output4122, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4123 value1001 value1 value2 = (output4123, value1810, value1) := by
  rw [input4123_def, output4123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1995]
  try dsimp only
  rw [child4122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1995_skip, output4122_skip]
  kernel_rfl

theorem node4124_cond_eq
    (child1994 : Flapjack.WordAlloc.removeDeadStructural input1994 value5 value1 value2 = (output1994, value1001, value1))
    (child4123 : Flapjack.WordAlloc.removeDeadStructural input4123 value1001 value1 value2 = (output4123, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4124 value5 value1 value2 = (output4124, value1810, value1) := by
  rw [input4124_def, output4124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1994]
  try dsimp only
  rw [child4123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1994_skip, output4123_skip]
  kernel_rfl

theorem node4125_cond_eq
    (child1991 : Flapjack.WordAlloc.removeDeadStructural input1991 value995 value1 value2 = (output1991, value5, value1))
    (child4124 : Flapjack.WordAlloc.removeDeadStructural input4124 value5 value1 value2 = (output4124, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4125 value995 value1 value2 = (output4125, value1810, value1) := by
  rw [input4125_def, output4125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1991]
  try dsimp only
  rw [child4124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1991_skip, output4124_skip]
  kernel_rfl

theorem node4126_cond_eq
    (child1982 : Flapjack.WordAlloc.removeDeadStructural input1982 value995 value1 value2 = (output1982, value995, value1))
    (child4125 : Flapjack.WordAlloc.removeDeadStructural input4125 value995 value1 value2 = (output4125, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4126 value995 value1 value2 = (output4126, value1810, value1) := by
  rw [input4126_def, output4126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1982]
  try dsimp only
  rw [child4125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1982_skip, output4125_skip]
  kernel_rfl

theorem node4127_cond_eq
    (child1981 : Flapjack.WordAlloc.removeDeadStructural input1981 value994 value1 value2 = (output1981, value995, value1))
    (child4126 : Flapjack.WordAlloc.removeDeadStructural input4126 value995 value1 value2 = (output4126, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4127 value994 value1 value2 = (output4127, value1810, value1) := by
  rw [input4127_def, output4127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1981]
  try dsimp only
  rw [child4126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1981_skip, output4126_skip]
  kernel_rfl

theorem node4128_cond_eq
    (child1980 : Flapjack.WordAlloc.removeDeadStructural input1980 value5 value1 value2 = (output1980, value994, value1))
    (child4127 : Flapjack.WordAlloc.removeDeadStructural input4127 value994 value1 value2 = (output4127, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4128 value5 value1 value2 = (output4128, value1810, value1) := by
  rw [input4128_def, output4128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1980]
  try dsimp only
  rw [child4127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1980_skip, output4127_skip]
  kernel_rfl

theorem node4129_cond_eq
    (child1977 : Flapjack.WordAlloc.removeDeadStructural input1977 value988 value1 value2 = (output1977, value5, value1))
    (child4128 : Flapjack.WordAlloc.removeDeadStructural input4128 value5 value1 value2 = (output4128, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4129 value988 value1 value2 = (output4129, value1810, value1) := by
  rw [input4129_def, output4129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1977]
  try dsimp only
  rw [child4128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1977_skip, output4128_skip]
  kernel_rfl

theorem node4130_cond_eq
    (child1968 : Flapjack.WordAlloc.removeDeadStructural input1968 value988 value1 value2 = (output1968, value988, value1))
    (child4129 : Flapjack.WordAlloc.removeDeadStructural input4129 value988 value1 value2 = (output4129, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4130 value988 value1 value2 = (output4130, value1810, value1) := by
  rw [input4130_def, output4130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1968]
  try dsimp only
  rw [child4129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1968_skip, output4129_skip]
  kernel_rfl

theorem node4131_cond_eq
    (child1967 : Flapjack.WordAlloc.removeDeadStructural input1967 value987 value1 value2 = (output1967, value988, value1))
    (child4130 : Flapjack.WordAlloc.removeDeadStructural input4130 value988 value1 value2 = (output4130, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4131 value987 value1 value2 = (output4131, value1810, value1) := by
  rw [input4131_def, output4131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1967]
  try dsimp only
  rw [child4130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1967_skip, output4130_skip]
  kernel_rfl

theorem node4132_cond_eq
    (child1966 : Flapjack.WordAlloc.removeDeadStructural input1966 value5 value1 value2 = (output1966, value987, value1))
    (child4131 : Flapjack.WordAlloc.removeDeadStructural input4131 value987 value1 value2 = (output4131, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4132 value5 value1 value2 = (output4132, value1810, value1) := by
  rw [input4132_def, output4132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1966]
  try dsimp only
  rw [child4131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1966_skip, output4131_skip]
  kernel_rfl

theorem node4133_cond_eq
    (child1963 : Flapjack.WordAlloc.removeDeadStructural input1963 value981 value1 value2 = (output1963, value5, value1))
    (child4132 : Flapjack.WordAlloc.removeDeadStructural input4132 value5 value1 value2 = (output4132, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4133 value981 value1 value2 = (output4133, value1810, value1) := by
  rw [input4133_def, output4133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1963]
  try dsimp only
  rw [child4132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1963_skip, output4132_skip]
  kernel_rfl

theorem node4134_cond_eq
    (child1954 : Flapjack.WordAlloc.removeDeadStructural input1954 value981 value1 value2 = (output1954, value981, value1))
    (child4133 : Flapjack.WordAlloc.removeDeadStructural input4133 value981 value1 value2 = (output4133, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4134 value981 value1 value2 = (output4134, value1810, value1) := by
  rw [input4134_def, output4134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1954]
  try dsimp only
  rw [child4133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1954_skip, output4133_skip]
  kernel_rfl

theorem node4135_cond_eq
    (child1953 : Flapjack.WordAlloc.removeDeadStructural input1953 value980 value1 value2 = (output1953, value981, value1))
    (child4134 : Flapjack.WordAlloc.removeDeadStructural input4134 value981 value1 value2 = (output4134, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4135 value980 value1 value2 = (output4135, value1810, value1) := by
  rw [input4135_def, output4135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1953]
  try dsimp only
  rw [child4134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1953_skip, output4134_skip]
  kernel_rfl

theorem node4136_cond_eq
    (child1952 : Flapjack.WordAlloc.removeDeadStructural input1952 value5 value1 value2 = (output1952, value980, value1))
    (child4135 : Flapjack.WordAlloc.removeDeadStructural input4135 value980 value1 value2 = (output4135, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4136 value5 value1 value2 = (output4136, value1810, value1) := by
  rw [input4136_def, output4136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1952]
  try dsimp only
  rw [child4135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1952_skip, output4135_skip]
  kernel_rfl

theorem node4137_cond_eq
    (child1949 : Flapjack.WordAlloc.removeDeadStructural input1949 value974 value1 value2 = (output1949, value5, value1))
    (child4136 : Flapjack.WordAlloc.removeDeadStructural input4136 value5 value1 value2 = (output4136, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4137 value974 value1 value2 = (output4137, value1810, value1) := by
  rw [input4137_def, output4137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1949]
  try dsimp only
  rw [child4136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1949_skip, output4136_skip]
  kernel_rfl

theorem node4138_cond_eq
    (child1940 : Flapjack.WordAlloc.removeDeadStructural input1940 value974 value1 value2 = (output1940, value974, value1))
    (child4137 : Flapjack.WordAlloc.removeDeadStructural input4137 value974 value1 value2 = (output4137, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4138 value974 value1 value2 = (output4138, value1810, value1) := by
  rw [input4138_def, output4138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1940]
  try dsimp only
  rw [child4137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1940_skip, output4137_skip]
  kernel_rfl

theorem node4139_cond_eq
    (child1939 : Flapjack.WordAlloc.removeDeadStructural input1939 value973 value1 value2 = (output1939, value974, value1))
    (child4138 : Flapjack.WordAlloc.removeDeadStructural input4138 value974 value1 value2 = (output4138, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4139 value973 value1 value2 = (output4139, value1810, value1) := by
  rw [input4139_def, output4139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1939]
  try dsimp only
  rw [child4138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1939_skip, output4138_skip]
  kernel_rfl

theorem node4140_cond_eq
    (child1938 : Flapjack.WordAlloc.removeDeadStructural input1938 value5 value1 value2 = (output1938, value973, value1))
    (child4139 : Flapjack.WordAlloc.removeDeadStructural input4139 value973 value1 value2 = (output4139, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4140 value5 value1 value2 = (output4140, value1810, value1) := by
  rw [input4140_def, output4140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1938]
  try dsimp only
  rw [child4139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1938_skip, output4139_skip]
  kernel_rfl

theorem node4141_cond_eq
    (child1935 : Flapjack.WordAlloc.removeDeadStructural input1935 value967 value1 value2 = (output1935, value5, value1))
    (child4140 : Flapjack.WordAlloc.removeDeadStructural input4140 value5 value1 value2 = (output4140, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4141 value967 value1 value2 = (output4141, value1810, value1) := by
  rw [input4141_def, output4141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1935]
  try dsimp only
  rw [child4140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1935_skip, output4140_skip]
  kernel_rfl

theorem node4142_cond_eq
    (child1926 : Flapjack.WordAlloc.removeDeadStructural input1926 value967 value1 value2 = (output1926, value967, value1))
    (child4141 : Flapjack.WordAlloc.removeDeadStructural input4141 value967 value1 value2 = (output4141, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4142 value967 value1 value2 = (output4142, value1810, value1) := by
  rw [input4142_def, output4142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1926]
  try dsimp only
  rw [child4141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1926_skip, output4141_skip]
  kernel_rfl

theorem node4143_cond_eq
    (child1925 : Flapjack.WordAlloc.removeDeadStructural input1925 value966 value1 value2 = (output1925, value967, value1))
    (child4142 : Flapjack.WordAlloc.removeDeadStructural input4142 value967 value1 value2 = (output4142, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4143 value966 value1 value2 = (output4143, value1810, value1) := by
  rw [input4143_def, output4143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1925]
  try dsimp only
  rw [child4142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1925_skip, output4142_skip]
  kernel_rfl

theorem node4144_cond_eq
    (child1924 : Flapjack.WordAlloc.removeDeadStructural input1924 value5 value1 value2 = (output1924, value966, value1))
    (child4143 : Flapjack.WordAlloc.removeDeadStructural input4143 value966 value1 value2 = (output4143, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4144 value5 value1 value2 = (output4144, value1810, value1) := by
  rw [input4144_def, output4144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1924]
  try dsimp only
  rw [child4143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1924_skip, output4143_skip]
  kernel_rfl

theorem node4145_cond_eq
    (child1921 : Flapjack.WordAlloc.removeDeadStructural input1921 value960 value1 value2 = (output1921, value5, value1))
    (child4144 : Flapjack.WordAlloc.removeDeadStructural input4144 value5 value1 value2 = (output4144, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4145 value960 value1 value2 = (output4145, value1810, value1) := by
  rw [input4145_def, output4145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1921]
  try dsimp only
  rw [child4144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1921_skip, output4144_skip]
  kernel_rfl

theorem node4146_cond_eq
    (child1912 : Flapjack.WordAlloc.removeDeadStructural input1912 value960 value1 value2 = (output1912, value960, value1))
    (child4145 : Flapjack.WordAlloc.removeDeadStructural input4145 value960 value1 value2 = (output4145, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4146 value960 value1 value2 = (output4146, value1810, value1) := by
  rw [input4146_def, output4146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1912]
  try dsimp only
  rw [child4145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1912_skip, output4145_skip]
  kernel_rfl

theorem node4147_cond_eq
    (child1911 : Flapjack.WordAlloc.removeDeadStructural input1911 value959 value1 value2 = (output1911, value960, value1))
    (child4146 : Flapjack.WordAlloc.removeDeadStructural input4146 value960 value1 value2 = (output4146, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4147 value959 value1 value2 = (output4147, value1810, value1) := by
  rw [input4147_def, output4147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1911]
  try dsimp only
  rw [child4146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1911_skip, output4146_skip]
  kernel_rfl

theorem node4148_cond_eq
    (child1910 : Flapjack.WordAlloc.removeDeadStructural input1910 value5 value1 value2 = (output1910, value959, value1))
    (child4147 : Flapjack.WordAlloc.removeDeadStructural input4147 value959 value1 value2 = (output4147, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4148 value5 value1 value2 = (output4148, value1810, value1) := by
  rw [input4148_def, output4148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1910]
  try dsimp only
  rw [child4147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1910_skip, output4147_skip]
  kernel_rfl

theorem node4149_cond_eq
    (child1907 : Flapjack.WordAlloc.removeDeadStructural input1907 value953 value1 value2 = (output1907, value5, value1))
    (child4148 : Flapjack.WordAlloc.removeDeadStructural input4148 value5 value1 value2 = (output4148, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4149 value953 value1 value2 = (output4149, value1810, value1) := by
  rw [input4149_def, output4149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1907]
  try dsimp only
  rw [child4148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1907_skip, output4148_skip]
  kernel_rfl

theorem node4150_cond_eq
    (child1898 : Flapjack.WordAlloc.removeDeadStructural input1898 value953 value1 value2 = (output1898, value953, value1))
    (child4149 : Flapjack.WordAlloc.removeDeadStructural input4149 value953 value1 value2 = (output4149, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4150 value953 value1 value2 = (output4150, value1810, value1) := by
  rw [input4150_def, output4150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1898]
  try dsimp only
  rw [child4149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1898_skip, output4149_skip]
  kernel_rfl

theorem node4151_cond_eq
    (child1897 : Flapjack.WordAlloc.removeDeadStructural input1897 value952 value1 value2 = (output1897, value953, value1))
    (child4150 : Flapjack.WordAlloc.removeDeadStructural input4150 value953 value1 value2 = (output4150, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4151 value952 value1 value2 = (output4151, value1810, value1) := by
  rw [input4151_def, output4151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1897]
  try dsimp only
  rw [child4150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1897_skip, output4150_skip]
  kernel_rfl

theorem node4152_cond_eq
    (child1896 : Flapjack.WordAlloc.removeDeadStructural input1896 value5 value1 value2 = (output1896, value952, value1))
    (child4151 : Flapjack.WordAlloc.removeDeadStructural input4151 value952 value1 value2 = (output4151, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4152 value5 value1 value2 = (output4152, value1810, value1) := by
  rw [input4152_def, output4152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1896]
  try dsimp only
  rw [child4151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1896_skip, output4151_skip]
  kernel_rfl

theorem node4153_cond_eq
    (child1893 : Flapjack.WordAlloc.removeDeadStructural input1893 value946 value1 value2 = (output1893, value5, value1))
    (child4152 : Flapjack.WordAlloc.removeDeadStructural input4152 value5 value1 value2 = (output4152, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4153 value946 value1 value2 = (output4153, value1810, value1) := by
  rw [input4153_def, output4153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1893]
  try dsimp only
  rw [child4152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1893_skip, output4152_skip]
  kernel_rfl

theorem node4154_cond_eq
    (child1884 : Flapjack.WordAlloc.removeDeadStructural input1884 value946 value1 value2 = (output1884, value946, value1))
    (child4153 : Flapjack.WordAlloc.removeDeadStructural input4153 value946 value1 value2 = (output4153, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4154 value946 value1 value2 = (output4154, value1810, value1) := by
  rw [input4154_def, output4154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1884]
  try dsimp only
  rw [child4153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1884_skip, output4153_skip]
  kernel_rfl

theorem node4155_cond_eq
    (child1883 : Flapjack.WordAlloc.removeDeadStructural input1883 value945 value1 value2 = (output1883, value946, value1))
    (child4154 : Flapjack.WordAlloc.removeDeadStructural input4154 value946 value1 value2 = (output4154, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4155 value945 value1 value2 = (output4155, value1810, value1) := by
  rw [input4155_def, output4155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1883]
  try dsimp only
  rw [child4154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1883_skip, output4154_skip]
  kernel_rfl

theorem node4156_cond_eq
    (child1882 : Flapjack.WordAlloc.removeDeadStructural input1882 value5 value1 value2 = (output1882, value945, value1))
    (child4155 : Flapjack.WordAlloc.removeDeadStructural input4155 value945 value1 value2 = (output4155, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4156 value5 value1 value2 = (output4156, value1810, value1) := by
  rw [input4156_def, output4156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1882]
  try dsimp only
  rw [child4155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1882_skip, output4155_skip]
  kernel_rfl

theorem node4157_cond_eq
    (child1879 : Flapjack.WordAlloc.removeDeadStructural input1879 value939 value1 value2 = (output1879, value5, value1))
    (child4156 : Flapjack.WordAlloc.removeDeadStructural input4156 value5 value1 value2 = (output4156, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4157 value939 value1 value2 = (output4157, value1810, value1) := by
  rw [input4157_def, output4157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1879]
  try dsimp only
  rw [child4156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1879_skip, output4156_skip]
  kernel_rfl

theorem node4158_cond_eq
    (child1870 : Flapjack.WordAlloc.removeDeadStructural input1870 value939 value1 value2 = (output1870, value939, value1))
    (child4157 : Flapjack.WordAlloc.removeDeadStructural input4157 value939 value1 value2 = (output4157, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4158 value939 value1 value2 = (output4158, value1810, value1) := by
  rw [input4158_def, output4158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1870]
  try dsimp only
  rw [child4157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1870_skip, output4157_skip]
  kernel_rfl

theorem node4159_cond_eq
    (child1869 : Flapjack.WordAlloc.removeDeadStructural input1869 value938 value1 value2 = (output1869, value939, value1))
    (child4158 : Flapjack.WordAlloc.removeDeadStructural input4158 value939 value1 value2 = (output4158, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4159 value938 value1 value2 = (output4159, value1810, value1) := by
  rw [input4159_def, output4159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1869]
  try dsimp only
  rw [child4158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1869_skip, output4158_skip]
  kernel_rfl

theorem node4160_cond_eq
    (child1868 : Flapjack.WordAlloc.removeDeadStructural input1868 value5 value1 value2 = (output1868, value938, value1))
    (child4159 : Flapjack.WordAlloc.removeDeadStructural input4159 value938 value1 value2 = (output4159, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4160 value5 value1 value2 = (output4160, value1810, value1) := by
  rw [input4160_def, output4160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1868]
  try dsimp only
  rw [child4159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1868_skip, output4159_skip]
  kernel_rfl

theorem node4161_cond_eq
    (child1865 : Flapjack.WordAlloc.removeDeadStructural input1865 value932 value1 value2 = (output1865, value5, value1))
    (child4160 : Flapjack.WordAlloc.removeDeadStructural input4160 value5 value1 value2 = (output4160, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4161 value932 value1 value2 = (output4161, value1810, value1) := by
  rw [input4161_def, output4161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1865]
  try dsimp only
  rw [child4160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1865_skip, output4160_skip]
  kernel_rfl

theorem node4162_cond_eq
    (child1856 : Flapjack.WordAlloc.removeDeadStructural input1856 value932 value1 value2 = (output1856, value932, value1))
    (child4161 : Flapjack.WordAlloc.removeDeadStructural input4161 value932 value1 value2 = (output4161, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4162 value932 value1 value2 = (output4162, value1810, value1) := by
  rw [input4162_def, output4162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1856]
  try dsimp only
  rw [child4161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1856_skip, output4161_skip]
  kernel_rfl

theorem node4163_cond_eq
    (child1855 : Flapjack.WordAlloc.removeDeadStructural input1855 value931 value1 value2 = (output1855, value932, value1))
    (child4162 : Flapjack.WordAlloc.removeDeadStructural input4162 value932 value1 value2 = (output4162, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4163 value931 value1 value2 = (output4163, value1810, value1) := by
  rw [input4163_def, output4163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1855]
  try dsimp only
  rw [child4162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1855_skip, output4162_skip]
  kernel_rfl

theorem node4164_cond_eq
    (child1854 : Flapjack.WordAlloc.removeDeadStructural input1854 value5 value1 value2 = (output1854, value931, value1))
    (child4163 : Flapjack.WordAlloc.removeDeadStructural input4163 value931 value1 value2 = (output4163, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4164 value5 value1 value2 = (output4164, value1810, value1) := by
  rw [input4164_def, output4164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1854]
  try dsimp only
  rw [child4163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1854_skip, output4163_skip]
  kernel_rfl

theorem node4165_cond_eq
    (child1851 : Flapjack.WordAlloc.removeDeadStructural input1851 value925 value1 value2 = (output1851, value5, value1))
    (child4164 : Flapjack.WordAlloc.removeDeadStructural input4164 value5 value1 value2 = (output4164, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4165 value925 value1 value2 = (output4165, value1810, value1) := by
  rw [input4165_def, output4165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1851]
  try dsimp only
  rw [child4164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1851_skip, output4164_skip]
  kernel_rfl

theorem node4166_cond_eq
    (child1842 : Flapjack.WordAlloc.removeDeadStructural input1842 value925 value1 value2 = (output1842, value925, value1))
    (child4165 : Flapjack.WordAlloc.removeDeadStructural input4165 value925 value1 value2 = (output4165, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4166 value925 value1 value2 = (output4166, value1810, value1) := by
  rw [input4166_def, output4166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1842]
  try dsimp only
  rw [child4165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1842_skip, output4165_skip]
  kernel_rfl

theorem node4167_cond_eq
    (child1841 : Flapjack.WordAlloc.removeDeadStructural input1841 value924 value1 value2 = (output1841, value925, value1))
    (child4166 : Flapjack.WordAlloc.removeDeadStructural input4166 value925 value1 value2 = (output4166, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4167 value924 value1 value2 = (output4167, value1810, value1) := by
  rw [input4167_def, output4167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1841]
  try dsimp only
  rw [child4166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1841_skip, output4166_skip]
  kernel_rfl

theorem node4168_cond_eq
    (child1840 : Flapjack.WordAlloc.removeDeadStructural input1840 value5 value1 value2 = (output1840, value924, value1))
    (child4167 : Flapjack.WordAlloc.removeDeadStructural input4167 value924 value1 value2 = (output4167, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4168 value5 value1 value2 = (output4168, value1810, value1) := by
  rw [input4168_def, output4168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1840]
  try dsimp only
  rw [child4167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1840_skip, output4167_skip]
  kernel_rfl

theorem node4169_cond_eq
    (child1837 : Flapjack.WordAlloc.removeDeadStructural input1837 value918 value1 value2 = (output1837, value5, value1))
    (child4168 : Flapjack.WordAlloc.removeDeadStructural input4168 value5 value1 value2 = (output4168, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4169 value918 value1 value2 = (output4169, value1810, value1) := by
  rw [input4169_def, output4169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1837]
  try dsimp only
  rw [child4168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1837_skip, output4168_skip]
  kernel_rfl

theorem node4170_cond_eq
    (child1828 : Flapjack.WordAlloc.removeDeadStructural input1828 value918 value1 value2 = (output1828, value918, value1))
    (child4169 : Flapjack.WordAlloc.removeDeadStructural input4169 value918 value1 value2 = (output4169, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4170 value918 value1 value2 = (output4170, value1810, value1) := by
  rw [input4170_def, output4170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1828]
  try dsimp only
  rw [child4169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1828_skip, output4169_skip]
  kernel_rfl

theorem node4171_cond_eq
    (child1827 : Flapjack.WordAlloc.removeDeadStructural input1827 value917 value1 value2 = (output1827, value918, value1))
    (child4170 : Flapjack.WordAlloc.removeDeadStructural input4170 value918 value1 value2 = (output4170, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4171 value917 value1 value2 = (output4171, value1810, value1) := by
  rw [input4171_def, output4171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1827]
  try dsimp only
  rw [child4170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1827_skip, output4170_skip]
  kernel_rfl

theorem node4172_cond_eq
    (child1826 : Flapjack.WordAlloc.removeDeadStructural input1826 value5 value1 value2 = (output1826, value917, value1))
    (child4171 : Flapjack.WordAlloc.removeDeadStructural input4171 value917 value1 value2 = (output4171, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4172 value5 value1 value2 = (output4172, value1810, value1) := by
  rw [input4172_def, output4172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1826]
  try dsimp only
  rw [child4171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1826_skip, output4171_skip]
  kernel_rfl

theorem node4173_cond_eq
    (child1823 : Flapjack.WordAlloc.removeDeadStructural input1823 value911 value1 value2 = (output1823, value5, value1))
    (child4172 : Flapjack.WordAlloc.removeDeadStructural input4172 value5 value1 value2 = (output4172, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4173 value911 value1 value2 = (output4173, value1810, value1) := by
  rw [input4173_def, output4173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1823]
  try dsimp only
  rw [child4172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1823_skip, output4172_skip]
  kernel_rfl

theorem node4174_cond_eq
    (child1814 : Flapjack.WordAlloc.removeDeadStructural input1814 value911 value1 value2 = (output1814, value911, value1))
    (child4173 : Flapjack.WordAlloc.removeDeadStructural input4173 value911 value1 value2 = (output4173, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4174 value911 value1 value2 = (output4174, value1810, value1) := by
  rw [input4174_def, output4174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1814]
  try dsimp only
  rw [child4173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1814_skip, output4173_skip]
  kernel_rfl

theorem node4175_cond_eq
    (child1813 : Flapjack.WordAlloc.removeDeadStructural input1813 value910 value1 value2 = (output1813, value911, value1))
    (child4174 : Flapjack.WordAlloc.removeDeadStructural input4174 value911 value1 value2 = (output4174, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4175 value910 value1 value2 = (output4175, value1810, value1) := by
  rw [input4175_def, output4175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1813]
  try dsimp only
  rw [child4174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1813_skip, output4174_skip]
  kernel_rfl

theorem node4176_cond_eq
    (child1812 : Flapjack.WordAlloc.removeDeadStructural input1812 value5 value1 value2 = (output1812, value910, value1))
    (child4175 : Flapjack.WordAlloc.removeDeadStructural input4175 value910 value1 value2 = (output4175, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4176 value5 value1 value2 = (output4176, value1810, value1) := by
  rw [input4176_def, output4176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1812]
  try dsimp only
  rw [child4175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1812_skip, output4175_skip]
  kernel_rfl

theorem node4177_cond_eq
    (child1809 : Flapjack.WordAlloc.removeDeadStructural input1809 value904 value1 value2 = (output1809, value5, value1))
    (child4176 : Flapjack.WordAlloc.removeDeadStructural input4176 value5 value1 value2 = (output4176, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4177 value904 value1 value2 = (output4177, value1810, value1) := by
  rw [input4177_def, output4177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1809]
  try dsimp only
  rw [child4176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1809_skip, output4176_skip]
  kernel_rfl

theorem node4178_cond_eq
    (child1800 : Flapjack.WordAlloc.removeDeadStructural input1800 value904 value1 value2 = (output1800, value904, value1))
    (child4177 : Flapjack.WordAlloc.removeDeadStructural input4177 value904 value1 value2 = (output4177, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4178 value904 value1 value2 = (output4178, value1810, value1) := by
  rw [input4178_def, output4178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1800]
  try dsimp only
  rw [child4177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1800_skip, output4177_skip]
  kernel_rfl

theorem node4179_cond_eq
    (child1799 : Flapjack.WordAlloc.removeDeadStructural input1799 value903 value1 value2 = (output1799, value904, value1))
    (child4178 : Flapjack.WordAlloc.removeDeadStructural input4178 value904 value1 value2 = (output4178, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4179 value903 value1 value2 = (output4179, value1810, value1) := by
  rw [input4179_def, output4179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1799]
  try dsimp only
  rw [child4178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1799_skip, output4178_skip]
  kernel_rfl

theorem node4180_cond_eq
    (child1798 : Flapjack.WordAlloc.removeDeadStructural input1798 value5 value1 value2 = (output1798, value903, value1))
    (child4179 : Flapjack.WordAlloc.removeDeadStructural input4179 value903 value1 value2 = (output4179, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4180 value5 value1 value2 = (output4180, value1810, value1) := by
  rw [input4180_def, output4180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1798]
  try dsimp only
  rw [child4179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1798_skip, output4179_skip]
  kernel_rfl

theorem node4181_cond_eq
    (child1795 : Flapjack.WordAlloc.removeDeadStructural input1795 value897 value1 value2 = (output1795, value5, value1))
    (child4180 : Flapjack.WordAlloc.removeDeadStructural input4180 value5 value1 value2 = (output4180, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4181 value897 value1 value2 = (output4181, value1810, value1) := by
  rw [input4181_def, output4181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1795]
  try dsimp only
  rw [child4180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1795_skip, output4180_skip]
  kernel_rfl

theorem node4182_cond_eq
    (child1786 : Flapjack.WordAlloc.removeDeadStructural input1786 value897 value1 value2 = (output1786, value897, value1))
    (child4181 : Flapjack.WordAlloc.removeDeadStructural input4181 value897 value1 value2 = (output4181, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4182 value897 value1 value2 = (output4182, value1810, value1) := by
  rw [input4182_def, output4182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1786]
  try dsimp only
  rw [child4181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1786_skip, output4181_skip]
  kernel_rfl

theorem node4183_cond_eq
    (child1785 : Flapjack.WordAlloc.removeDeadStructural input1785 value896 value1 value2 = (output1785, value897, value1))
    (child4182 : Flapjack.WordAlloc.removeDeadStructural input4182 value897 value1 value2 = (output4182, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4183 value896 value1 value2 = (output4183, value1810, value1) := by
  rw [input4183_def, output4183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1785]
  try dsimp only
  rw [child4182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1785_skip, output4182_skip]
  kernel_rfl

theorem node4184_cond_eq
    (child1784 : Flapjack.WordAlloc.removeDeadStructural input1784 value5 value1 value2 = (output1784, value896, value1))
    (child4183 : Flapjack.WordAlloc.removeDeadStructural input4183 value896 value1 value2 = (output4183, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4184 value5 value1 value2 = (output4184, value1810, value1) := by
  rw [input4184_def, output4184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1784]
  try dsimp only
  rw [child4183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1784_skip, output4183_skip]
  kernel_rfl

theorem node4185_cond_eq
    (child1781 : Flapjack.WordAlloc.removeDeadStructural input1781 value890 value1 value2 = (output1781, value5, value1))
    (child4184 : Flapjack.WordAlloc.removeDeadStructural input4184 value5 value1 value2 = (output4184, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4185 value890 value1 value2 = (output4185, value1810, value1) := by
  rw [input4185_def, output4185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1781]
  try dsimp only
  rw [child4184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1781_skip, output4184_skip]
  kernel_rfl

theorem node4186_cond_eq
    (child1772 : Flapjack.WordAlloc.removeDeadStructural input1772 value890 value1 value2 = (output1772, value890, value1))
    (child4185 : Flapjack.WordAlloc.removeDeadStructural input4185 value890 value1 value2 = (output4185, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4186 value890 value1 value2 = (output4186, value1810, value1) := by
  rw [input4186_def, output4186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1772]
  try dsimp only
  rw [child4185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1772_skip, output4185_skip]
  kernel_rfl

theorem node4187_cond_eq
    (child1771 : Flapjack.WordAlloc.removeDeadStructural input1771 value889 value1 value2 = (output1771, value890, value1))
    (child4186 : Flapjack.WordAlloc.removeDeadStructural input4186 value890 value1 value2 = (output4186, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4187 value889 value1 value2 = (output4187, value1810, value1) := by
  rw [input4187_def, output4187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1771]
  try dsimp only
  rw [child4186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1771_skip, output4186_skip]
  kernel_rfl

theorem node4188_cond_eq
    (child1770 : Flapjack.WordAlloc.removeDeadStructural input1770 value5 value1 value2 = (output1770, value889, value1))
    (child4187 : Flapjack.WordAlloc.removeDeadStructural input4187 value889 value1 value2 = (output4187, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4188 value5 value1 value2 = (output4188, value1810, value1) := by
  rw [input4188_def, output4188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1770]
  try dsimp only
  rw [child4187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1770_skip, output4187_skip]
  kernel_rfl

theorem node4189_cond_eq
    (child1767 : Flapjack.WordAlloc.removeDeadStructural input1767 value883 value1 value2 = (output1767, value5, value1))
    (child4188 : Flapjack.WordAlloc.removeDeadStructural input4188 value5 value1 value2 = (output4188, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4189 value883 value1 value2 = (output4189, value1810, value1) := by
  rw [input4189_def, output4189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1767]
  try dsimp only
  rw [child4188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1767_skip, output4188_skip]
  kernel_rfl

theorem node4190_cond_eq
    (child1758 : Flapjack.WordAlloc.removeDeadStructural input1758 value883 value1 value2 = (output1758, value883, value1))
    (child4189 : Flapjack.WordAlloc.removeDeadStructural input4189 value883 value1 value2 = (output4189, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4190 value883 value1 value2 = (output4190, value1810, value1) := by
  rw [input4190_def, output4190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1758]
  try dsimp only
  rw [child4189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1758_skip, output4189_skip]
  kernel_rfl

theorem node4191_cond_eq
    (child1757 : Flapjack.WordAlloc.removeDeadStructural input1757 value882 value1 value2 = (output1757, value883, value1))
    (child4190 : Flapjack.WordAlloc.removeDeadStructural input4190 value883 value1 value2 = (output4190, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4191 value882 value1 value2 = (output4191, value1810, value1) := by
  rw [input4191_def, output4191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1757]
  try dsimp only
  rw [child4190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1757_skip, output4190_skip]
  kernel_rfl

theorem node4192_cond_eq
    (child1756 : Flapjack.WordAlloc.removeDeadStructural input1756 value5 value1 value2 = (output1756, value882, value1))
    (child4191 : Flapjack.WordAlloc.removeDeadStructural input4191 value882 value1 value2 = (output4191, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4192 value5 value1 value2 = (output4192, value1810, value1) := by
  rw [input4192_def, output4192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1756]
  try dsimp only
  rw [child4191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1756_skip, output4191_skip]
  kernel_rfl

theorem node4193_cond_eq
    (child1753 : Flapjack.WordAlloc.removeDeadStructural input1753 value876 value1 value2 = (output1753, value5, value1))
    (child4192 : Flapjack.WordAlloc.removeDeadStructural input4192 value5 value1 value2 = (output4192, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4193 value876 value1 value2 = (output4193, value1810, value1) := by
  rw [input4193_def, output4193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1753]
  try dsimp only
  rw [child4192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1753_skip, output4192_skip]
  kernel_rfl

theorem node4194_cond_eq
    (child1744 : Flapjack.WordAlloc.removeDeadStructural input1744 value876 value1 value2 = (output1744, value876, value1))
    (child4193 : Flapjack.WordAlloc.removeDeadStructural input4193 value876 value1 value2 = (output4193, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4194 value876 value1 value2 = (output4194, value1810, value1) := by
  rw [input4194_def, output4194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1744]
  try dsimp only
  rw [child4193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1744_skip, output4193_skip]
  kernel_rfl

theorem node4195_cond_eq
    (child1743 : Flapjack.WordAlloc.removeDeadStructural input1743 value875 value1 value2 = (output1743, value876, value1))
    (child4194 : Flapjack.WordAlloc.removeDeadStructural input4194 value876 value1 value2 = (output4194, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4195 value875 value1 value2 = (output4195, value1810, value1) := by
  rw [input4195_def, output4195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1743]
  try dsimp only
  rw [child4194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1743_skip, output4194_skip]
  kernel_rfl

theorem node4196_cond_eq
    (child1742 : Flapjack.WordAlloc.removeDeadStructural input1742 value5 value1 value2 = (output1742, value875, value1))
    (child4195 : Flapjack.WordAlloc.removeDeadStructural input4195 value875 value1 value2 = (output4195, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4196 value5 value1 value2 = (output4196, value1810, value1) := by
  rw [input4196_def, output4196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1742]
  try dsimp only
  rw [child4195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1742_skip, output4195_skip]
  kernel_rfl

theorem node4197_cond_eq
    (child1739 : Flapjack.WordAlloc.removeDeadStructural input1739 value869 value1 value2 = (output1739, value5, value1))
    (child4196 : Flapjack.WordAlloc.removeDeadStructural input4196 value5 value1 value2 = (output4196, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4197 value869 value1 value2 = (output4197, value1810, value1) := by
  rw [input4197_def, output4197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1739]
  try dsimp only
  rw [child4196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1739_skip, output4196_skip]
  kernel_rfl

theorem node4198_cond_eq
    (child1730 : Flapjack.WordAlloc.removeDeadStructural input1730 value869 value1 value2 = (output1730, value869, value1))
    (child4197 : Flapjack.WordAlloc.removeDeadStructural input4197 value869 value1 value2 = (output4197, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4198 value869 value1 value2 = (output4198, value1810, value1) := by
  rw [input4198_def, output4198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1730]
  try dsimp only
  rw [child4197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1730_skip, output4197_skip]
  kernel_rfl

theorem node4199_cond_eq
    (child1729 : Flapjack.WordAlloc.removeDeadStructural input1729 value868 value1 value2 = (output1729, value869, value1))
    (child4198 : Flapjack.WordAlloc.removeDeadStructural input4198 value869 value1 value2 = (output4198, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4199 value868 value1 value2 = (output4199, value1810, value1) := by
  rw [input4199_def, output4199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1729]
  try dsimp only
  rw [child4198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1729_skip, output4198_skip]
  kernel_rfl

theorem node4200_cond_eq
    (child1728 : Flapjack.WordAlloc.removeDeadStructural input1728 value5 value1 value2 = (output1728, value868, value1))
    (child4199 : Flapjack.WordAlloc.removeDeadStructural input4199 value868 value1 value2 = (output4199, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4200 value5 value1 value2 = (output4200, value1810, value1) := by
  rw [input4200_def, output4200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1728]
  try dsimp only
  rw [child4199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1728_skip, output4199_skip]
  kernel_rfl

theorem node4201_cond_eq
    (child1725 : Flapjack.WordAlloc.removeDeadStructural input1725 value862 value1 value2 = (output1725, value5, value1))
    (child4200 : Flapjack.WordAlloc.removeDeadStructural input4200 value5 value1 value2 = (output4200, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4201 value862 value1 value2 = (output4201, value1810, value1) := by
  rw [input4201_def, output4201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1725]
  try dsimp only
  rw [child4200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1725_skip, output4200_skip]
  kernel_rfl

theorem node4202_cond_eq
    (child1716 : Flapjack.WordAlloc.removeDeadStructural input1716 value862 value1 value2 = (output1716, value862, value1))
    (child4201 : Flapjack.WordAlloc.removeDeadStructural input4201 value862 value1 value2 = (output4201, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4202 value862 value1 value2 = (output4202, value1810, value1) := by
  rw [input4202_def, output4202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1716]
  try dsimp only
  rw [child4201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1716_skip, output4201_skip]
  kernel_rfl

theorem node4203_cond_eq
    (child1715 : Flapjack.WordAlloc.removeDeadStructural input1715 value861 value1 value2 = (output1715, value862, value1))
    (child4202 : Flapjack.WordAlloc.removeDeadStructural input4202 value862 value1 value2 = (output4202, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4203 value861 value1 value2 = (output4203, value1810, value1) := by
  rw [input4203_def, output4203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1715]
  try dsimp only
  rw [child4202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1715_skip, output4202_skip]
  kernel_rfl

theorem node4204_cond_eq
    (child1714 : Flapjack.WordAlloc.removeDeadStructural input1714 value5 value1 value2 = (output1714, value861, value1))
    (child4203 : Flapjack.WordAlloc.removeDeadStructural input4203 value861 value1 value2 = (output4203, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4204 value5 value1 value2 = (output4204, value1810, value1) := by
  rw [input4204_def, output4204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1714]
  try dsimp only
  rw [child4203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1714_skip, output4203_skip]
  kernel_rfl

theorem node4205_cond_eq
    (child1711 : Flapjack.WordAlloc.removeDeadStructural input1711 value855 value1 value2 = (output1711, value5, value1))
    (child4204 : Flapjack.WordAlloc.removeDeadStructural input4204 value5 value1 value2 = (output4204, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4205 value855 value1 value2 = (output4205, value1810, value1) := by
  rw [input4205_def, output4205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1711]
  try dsimp only
  rw [child4204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1711_skip, output4204_skip]
  kernel_rfl

theorem node4206_cond_eq
    (child1702 : Flapjack.WordAlloc.removeDeadStructural input1702 value855 value1 value2 = (output1702, value855, value1))
    (child4205 : Flapjack.WordAlloc.removeDeadStructural input4205 value855 value1 value2 = (output4205, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4206 value855 value1 value2 = (output4206, value1810, value1) := by
  rw [input4206_def, output4206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1702]
  try dsimp only
  rw [child4205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1702_skip, output4205_skip]
  kernel_rfl

theorem node4207_cond_eq
    (child1701 : Flapjack.WordAlloc.removeDeadStructural input1701 value854 value1 value2 = (output1701, value855, value1))
    (child4206 : Flapjack.WordAlloc.removeDeadStructural input4206 value855 value1 value2 = (output4206, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4207 value854 value1 value2 = (output4207, value1810, value1) := by
  rw [input4207_def, output4207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1701]
  try dsimp only
  rw [child4206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1701_skip, output4206_skip]
  kernel_rfl

theorem node4208_cond_eq
    (child1700 : Flapjack.WordAlloc.removeDeadStructural input1700 value5 value1 value2 = (output1700, value854, value1))
    (child4207 : Flapjack.WordAlloc.removeDeadStructural input4207 value854 value1 value2 = (output4207, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4208 value5 value1 value2 = (output4208, value1810, value1) := by
  rw [input4208_def, output4208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1700]
  try dsimp only
  rw [child4207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1700_skip, output4207_skip]
  kernel_rfl

theorem node4209_cond_eq
    (child1697 : Flapjack.WordAlloc.removeDeadStructural input1697 value848 value1 value2 = (output1697, value5, value1))
    (child4208 : Flapjack.WordAlloc.removeDeadStructural input4208 value5 value1 value2 = (output4208, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4209 value848 value1 value2 = (output4209, value1810, value1) := by
  rw [input4209_def, output4209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1697]
  try dsimp only
  rw [child4208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1697_skip, output4208_skip]
  kernel_rfl

theorem node4210_cond_eq
    (child1688 : Flapjack.WordAlloc.removeDeadStructural input1688 value848 value1 value2 = (output1688, value848, value1))
    (child4209 : Flapjack.WordAlloc.removeDeadStructural input4209 value848 value1 value2 = (output4209, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4210 value848 value1 value2 = (output4210, value1810, value1) := by
  rw [input4210_def, output4210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1688]
  try dsimp only
  rw [child4209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1688_skip, output4209_skip]
  kernel_rfl

theorem node4211_cond_eq
    (child1687 : Flapjack.WordAlloc.removeDeadStructural input1687 value847 value1 value2 = (output1687, value848, value1))
    (child4210 : Flapjack.WordAlloc.removeDeadStructural input4210 value848 value1 value2 = (output4210, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4211 value847 value1 value2 = (output4211, value1810, value1) := by
  rw [input4211_def, output4211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1687]
  try dsimp only
  rw [child4210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1687_skip, output4210_skip]
  kernel_rfl

theorem node4212_cond_eq
    (child1686 : Flapjack.WordAlloc.removeDeadStructural input1686 value5 value1 value2 = (output1686, value847, value1))
    (child4211 : Flapjack.WordAlloc.removeDeadStructural input4211 value847 value1 value2 = (output4211, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4212 value5 value1 value2 = (output4212, value1810, value1) := by
  rw [input4212_def, output4212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1686]
  try dsimp only
  rw [child4211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1686_skip, output4211_skip]
  kernel_rfl

theorem node4213_cond_eq
    (child1683 : Flapjack.WordAlloc.removeDeadStructural input1683 value841 value1 value2 = (output1683, value5, value1))
    (child4212 : Flapjack.WordAlloc.removeDeadStructural input4212 value5 value1 value2 = (output4212, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4213 value841 value1 value2 = (output4213, value1810, value1) := by
  rw [input4213_def, output4213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1683]
  try dsimp only
  rw [child4212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1683_skip, output4212_skip]
  kernel_rfl

theorem node4214_cond_eq
    (child1674 : Flapjack.WordAlloc.removeDeadStructural input1674 value841 value1 value2 = (output1674, value841, value1))
    (child4213 : Flapjack.WordAlloc.removeDeadStructural input4213 value841 value1 value2 = (output4213, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4214 value841 value1 value2 = (output4214, value1810, value1) := by
  rw [input4214_def, output4214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1674]
  try dsimp only
  rw [child4213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1674_skip, output4213_skip]
  kernel_rfl

theorem node4215_cond_eq
    (child1673 : Flapjack.WordAlloc.removeDeadStructural input1673 value840 value1 value2 = (output1673, value841, value1))
    (child4214 : Flapjack.WordAlloc.removeDeadStructural input4214 value841 value1 value2 = (output4214, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4215 value840 value1 value2 = (output4215, value1810, value1) := by
  rw [input4215_def, output4215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1673]
  try dsimp only
  rw [child4214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1673_skip, output4214_skip]
  kernel_rfl

theorem node4216_cond_eq
    (child1672 : Flapjack.WordAlloc.removeDeadStructural input1672 value5 value1 value2 = (output1672, value840, value1))
    (child4215 : Flapjack.WordAlloc.removeDeadStructural input4215 value840 value1 value2 = (output4215, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4216 value5 value1 value2 = (output4216, value1810, value1) := by
  rw [input4216_def, output4216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1672]
  try dsimp only
  rw [child4215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1672_skip, output4215_skip]
  kernel_rfl

theorem node4217_cond_eq
    (child1669 : Flapjack.WordAlloc.removeDeadStructural input1669 value834 value1 value2 = (output1669, value5, value1))
    (child4216 : Flapjack.WordAlloc.removeDeadStructural input4216 value5 value1 value2 = (output4216, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4217 value834 value1 value2 = (output4217, value1810, value1) := by
  rw [input4217_def, output4217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1669]
  try dsimp only
  rw [child4216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1669_skip, output4216_skip]
  kernel_rfl

theorem node4218_cond_eq
    (child1660 : Flapjack.WordAlloc.removeDeadStructural input1660 value834 value1 value2 = (output1660, value834, value1))
    (child4217 : Flapjack.WordAlloc.removeDeadStructural input4217 value834 value1 value2 = (output4217, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4218 value834 value1 value2 = (output4218, value1810, value1) := by
  rw [input4218_def, output4218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1660]
  try dsimp only
  rw [child4217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1660_skip, output4217_skip]
  kernel_rfl

theorem node4219_cond_eq
    (child1659 : Flapjack.WordAlloc.removeDeadStructural input1659 value833 value1 value2 = (output1659, value834, value1))
    (child4218 : Flapjack.WordAlloc.removeDeadStructural input4218 value834 value1 value2 = (output4218, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4219 value833 value1 value2 = (output4219, value1810, value1) := by
  rw [input4219_def, output4219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1659]
  try dsimp only
  rw [child4218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1659_skip, output4218_skip]
  kernel_rfl

theorem node4220_cond_eq
    (child1658 : Flapjack.WordAlloc.removeDeadStructural input1658 value5 value1 value2 = (output1658, value833, value1))
    (child4219 : Flapjack.WordAlloc.removeDeadStructural input4219 value833 value1 value2 = (output4219, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4220 value5 value1 value2 = (output4220, value1810, value1) := by
  rw [input4220_def, output4220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1658]
  try dsimp only
  rw [child4219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1658_skip, output4219_skip]
  kernel_rfl

theorem node4221_cond_eq
    (child1655 : Flapjack.WordAlloc.removeDeadStructural input1655 value827 value1 value2 = (output1655, value5, value1))
    (child4220 : Flapjack.WordAlloc.removeDeadStructural input4220 value5 value1 value2 = (output4220, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4221 value827 value1 value2 = (output4221, value1810, value1) := by
  rw [input4221_def, output4221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1655]
  try dsimp only
  rw [child4220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1655_skip, output4220_skip]
  kernel_rfl

theorem node4222_cond_eq
    (child1646 : Flapjack.WordAlloc.removeDeadStructural input1646 value827 value1 value2 = (output1646, value827, value1))
    (child4221 : Flapjack.WordAlloc.removeDeadStructural input4221 value827 value1 value2 = (output4221, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4222 value827 value1 value2 = (output4222, value1810, value1) := by
  rw [input4222_def, output4222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1646]
  try dsimp only
  rw [child4221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1646_skip, output4221_skip]
  kernel_rfl

theorem node4223_cond_eq
    (child1645 : Flapjack.WordAlloc.removeDeadStructural input1645 value826 value1 value2 = (output1645, value827, value1))
    (child4222 : Flapjack.WordAlloc.removeDeadStructural input4222 value827 value1 value2 = (output4222, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4223 value826 value1 value2 = (output4223, value1810, value1) := by
  rw [input4223_def, output4223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1645]
  try dsimp only
  rw [child4222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1645_skip, output4222_skip]
  kernel_rfl

theorem node4224_cond_eq
    (child1644 : Flapjack.WordAlloc.removeDeadStructural input1644 value5 value1 value2 = (output1644, value826, value1))
    (child4223 : Flapjack.WordAlloc.removeDeadStructural input4223 value826 value1 value2 = (output4223, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4224 value5 value1 value2 = (output4224, value1810, value1) := by
  rw [input4224_def, output4224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1644]
  try dsimp only
  rw [child4223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1644_skip, output4223_skip]
  kernel_rfl

theorem node4225_cond_eq
    (child1641 : Flapjack.WordAlloc.removeDeadStructural input1641 value820 value1 value2 = (output1641, value5, value1))
    (child4224 : Flapjack.WordAlloc.removeDeadStructural input4224 value5 value1 value2 = (output4224, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4225 value820 value1 value2 = (output4225, value1810, value1) := by
  rw [input4225_def, output4225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1641]
  try dsimp only
  rw [child4224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1641_skip, output4224_skip]
  kernel_rfl

theorem node4226_cond_eq
    (child1632 : Flapjack.WordAlloc.removeDeadStructural input1632 value820 value1 value2 = (output1632, value820, value1))
    (child4225 : Flapjack.WordAlloc.removeDeadStructural input4225 value820 value1 value2 = (output4225, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4226 value820 value1 value2 = (output4226, value1810, value1) := by
  rw [input4226_def, output4226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1632]
  try dsimp only
  rw [child4225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1632_skip, output4225_skip]
  kernel_rfl

theorem node4227_cond_eq
    (child1631 : Flapjack.WordAlloc.removeDeadStructural input1631 value819 value1 value2 = (output1631, value820, value1))
    (child4226 : Flapjack.WordAlloc.removeDeadStructural input4226 value820 value1 value2 = (output4226, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4227 value819 value1 value2 = (output4227, value1810, value1) := by
  rw [input4227_def, output4227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1631]
  try dsimp only
  rw [child4226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1631_skip, output4226_skip]
  kernel_rfl

theorem node4228_cond_eq
    (child1630 : Flapjack.WordAlloc.removeDeadStructural input1630 value5 value1 value2 = (output1630, value819, value1))
    (child4227 : Flapjack.WordAlloc.removeDeadStructural input4227 value819 value1 value2 = (output4227, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4228 value5 value1 value2 = (output4228, value1810, value1) := by
  rw [input4228_def, output4228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1630]
  try dsimp only
  rw [child4227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1630_skip, output4227_skip]
  kernel_rfl

theorem node4229_cond_eq
    (child1627 : Flapjack.WordAlloc.removeDeadStructural input1627 value813 value1 value2 = (output1627, value5, value1))
    (child4228 : Flapjack.WordAlloc.removeDeadStructural input4228 value5 value1 value2 = (output4228, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4229 value813 value1 value2 = (output4229, value1810, value1) := by
  rw [input4229_def, output4229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1627]
  try dsimp only
  rw [child4228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1627_skip, output4228_skip]
  kernel_rfl

theorem node4230_cond_eq
    (child1618 : Flapjack.WordAlloc.removeDeadStructural input1618 value813 value1 value2 = (output1618, value813, value1))
    (child4229 : Flapjack.WordAlloc.removeDeadStructural input4229 value813 value1 value2 = (output4229, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4230 value813 value1 value2 = (output4230, value1810, value1) := by
  rw [input4230_def, output4230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1618]
  try dsimp only
  rw [child4229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1618_skip, output4229_skip]
  kernel_rfl

theorem node4231_cond_eq
    (child1617 : Flapjack.WordAlloc.removeDeadStructural input1617 value812 value1 value2 = (output1617, value813, value1))
    (child4230 : Flapjack.WordAlloc.removeDeadStructural input4230 value813 value1 value2 = (output4230, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4231 value812 value1 value2 = (output4231, value1810, value1) := by
  rw [input4231_def, output4231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1617]
  try dsimp only
  rw [child4230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1617_skip, output4230_skip]
  kernel_rfl

theorem node4232_cond_eq
    (child1616 : Flapjack.WordAlloc.removeDeadStructural input1616 value5 value1 value2 = (output1616, value812, value1))
    (child4231 : Flapjack.WordAlloc.removeDeadStructural input4231 value812 value1 value2 = (output4231, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4232 value5 value1 value2 = (output4232, value1810, value1) := by
  rw [input4232_def, output4232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1616]
  try dsimp only
  rw [child4231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1616_skip, output4231_skip]
  kernel_rfl

theorem node4233_cond_eq
    (child1613 : Flapjack.WordAlloc.removeDeadStructural input1613 value806 value1 value2 = (output1613, value5, value1))
    (child4232 : Flapjack.WordAlloc.removeDeadStructural input4232 value5 value1 value2 = (output4232, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4233 value806 value1 value2 = (output4233, value1810, value1) := by
  rw [input4233_def, output4233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1613]
  try dsimp only
  rw [child4232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1613_skip, output4232_skip]
  kernel_rfl

theorem node4234_cond_eq
    (child1604 : Flapjack.WordAlloc.removeDeadStructural input1604 value806 value1 value2 = (output1604, value806, value1))
    (child4233 : Flapjack.WordAlloc.removeDeadStructural input4233 value806 value1 value2 = (output4233, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4234 value806 value1 value2 = (output4234, value1810, value1) := by
  rw [input4234_def, output4234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1604]
  try dsimp only
  rw [child4233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1604_skip, output4233_skip]
  kernel_rfl

theorem node4235_cond_eq
    (child1603 : Flapjack.WordAlloc.removeDeadStructural input1603 value805 value1 value2 = (output1603, value806, value1))
    (child4234 : Flapjack.WordAlloc.removeDeadStructural input4234 value806 value1 value2 = (output4234, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4235 value805 value1 value2 = (output4235, value1810, value1) := by
  rw [input4235_def, output4235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1603]
  try dsimp only
  rw [child4234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1603_skip, output4234_skip]
  kernel_rfl

theorem node4236_cond_eq
    (child1602 : Flapjack.WordAlloc.removeDeadStructural input1602 value5 value1 value2 = (output1602, value805, value1))
    (child4235 : Flapjack.WordAlloc.removeDeadStructural input4235 value805 value1 value2 = (output4235, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4236 value5 value1 value2 = (output4236, value1810, value1) := by
  rw [input4236_def, output4236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1602]
  try dsimp only
  rw [child4235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1602_skip, output4235_skip]
  kernel_rfl

theorem node4237_cond_eq
    (child1599 : Flapjack.WordAlloc.removeDeadStructural input1599 value799 value1 value2 = (output1599, value5, value1))
    (child4236 : Flapjack.WordAlloc.removeDeadStructural input4236 value5 value1 value2 = (output4236, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4237 value799 value1 value2 = (output4237, value1810, value1) := by
  rw [input4237_def, output4237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1599]
  try dsimp only
  rw [child4236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1599_skip, output4236_skip]
  kernel_rfl

theorem node4238_cond_eq
    (child1590 : Flapjack.WordAlloc.removeDeadStructural input1590 value799 value1 value2 = (output1590, value799, value1))
    (child4237 : Flapjack.WordAlloc.removeDeadStructural input4237 value799 value1 value2 = (output4237, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4238 value799 value1 value2 = (output4238, value1810, value1) := by
  rw [input4238_def, output4238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1590]
  try dsimp only
  rw [child4237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1590_skip, output4237_skip]
  kernel_rfl

theorem node4239_cond_eq
    (child1589 : Flapjack.WordAlloc.removeDeadStructural input1589 value798 value1 value2 = (output1589, value799, value1))
    (child4238 : Flapjack.WordAlloc.removeDeadStructural input4238 value799 value1 value2 = (output4238, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4239 value798 value1 value2 = (output4239, value1810, value1) := by
  rw [input4239_def, output4239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1589]
  try dsimp only
  rw [child4238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1589_skip, output4238_skip]
  kernel_rfl

theorem node4240_cond_eq
    (child1588 : Flapjack.WordAlloc.removeDeadStructural input1588 value5 value1 value2 = (output1588, value798, value1))
    (child4239 : Flapjack.WordAlloc.removeDeadStructural input4239 value798 value1 value2 = (output4239, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4240 value5 value1 value2 = (output4240, value1810, value1) := by
  rw [input4240_def, output4240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1588]
  try dsimp only
  rw [child4239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1588_skip, output4239_skip]
  kernel_rfl

theorem node4241_cond_eq
    (child1585 : Flapjack.WordAlloc.removeDeadStructural input1585 value792 value1 value2 = (output1585, value5, value1))
    (child4240 : Flapjack.WordAlloc.removeDeadStructural input4240 value5 value1 value2 = (output4240, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4241 value792 value1 value2 = (output4241, value1810, value1) := by
  rw [input4241_def, output4241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1585]
  try dsimp only
  rw [child4240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1585_skip, output4240_skip]
  kernel_rfl

theorem node4242_cond_eq
    (child1576 : Flapjack.WordAlloc.removeDeadStructural input1576 value792 value1 value2 = (output1576, value792, value1))
    (child4241 : Flapjack.WordAlloc.removeDeadStructural input4241 value792 value1 value2 = (output4241, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4242 value792 value1 value2 = (output4242, value1810, value1) := by
  rw [input4242_def, output4242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1576]
  try dsimp only
  rw [child4241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1576_skip, output4241_skip]
  kernel_rfl

theorem node4243_cond_eq
    (child1575 : Flapjack.WordAlloc.removeDeadStructural input1575 value791 value1 value2 = (output1575, value792, value1))
    (child4242 : Flapjack.WordAlloc.removeDeadStructural input4242 value792 value1 value2 = (output4242, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4243 value791 value1 value2 = (output4243, value1810, value1) := by
  rw [input4243_def, output4243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1575]
  try dsimp only
  rw [child4242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1575_skip, output4242_skip]
  kernel_rfl

theorem node4244_cond_eq
    (child1574 : Flapjack.WordAlloc.removeDeadStructural input1574 value5 value1 value2 = (output1574, value791, value1))
    (child4243 : Flapjack.WordAlloc.removeDeadStructural input4243 value791 value1 value2 = (output4243, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4244 value5 value1 value2 = (output4244, value1810, value1) := by
  rw [input4244_def, output4244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1574]
  try dsimp only
  rw [child4243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1574_skip, output4243_skip]
  kernel_rfl

theorem node4245_cond_eq
    (child1571 : Flapjack.WordAlloc.removeDeadStructural input1571 value785 value1 value2 = (output1571, value5, value1))
    (child4244 : Flapjack.WordAlloc.removeDeadStructural input4244 value5 value1 value2 = (output4244, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4245 value785 value1 value2 = (output4245, value1810, value1) := by
  rw [input4245_def, output4245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1571]
  try dsimp only
  rw [child4244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1571_skip, output4244_skip]
  kernel_rfl

theorem node4246_cond_eq
    (child1562 : Flapjack.WordAlloc.removeDeadStructural input1562 value785 value1 value2 = (output1562, value785, value1))
    (child4245 : Flapjack.WordAlloc.removeDeadStructural input4245 value785 value1 value2 = (output4245, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4246 value785 value1 value2 = (output4246, value1810, value1) := by
  rw [input4246_def, output4246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1562]
  try dsimp only
  rw [child4245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1562_skip, output4245_skip]
  kernel_rfl

theorem node4247_cond_eq
    (child1561 : Flapjack.WordAlloc.removeDeadStructural input1561 value784 value1 value2 = (output1561, value785, value1))
    (child4246 : Flapjack.WordAlloc.removeDeadStructural input4246 value785 value1 value2 = (output4246, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4247 value784 value1 value2 = (output4247, value1810, value1) := by
  rw [input4247_def, output4247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1561]
  try dsimp only
  rw [child4246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1561_skip, output4246_skip]
  kernel_rfl

theorem node4248_cond_eq
    (child1560 : Flapjack.WordAlloc.removeDeadStructural input1560 value5 value1 value2 = (output1560, value784, value1))
    (child4247 : Flapjack.WordAlloc.removeDeadStructural input4247 value784 value1 value2 = (output4247, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4248 value5 value1 value2 = (output4248, value1810, value1) := by
  rw [input4248_def, output4248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1560]
  try dsimp only
  rw [child4247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1560_skip, output4247_skip]
  kernel_rfl

theorem node4249_cond_eq
    (child1557 : Flapjack.WordAlloc.removeDeadStructural input1557 value778 value1 value2 = (output1557, value5, value1))
    (child4248 : Flapjack.WordAlloc.removeDeadStructural input4248 value5 value1 value2 = (output4248, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4249 value778 value1 value2 = (output4249, value1810, value1) := by
  rw [input4249_def, output4249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1557]
  try dsimp only
  rw [child4248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1557_skip, output4248_skip]
  kernel_rfl

theorem node4250_cond_eq
    (child1548 : Flapjack.WordAlloc.removeDeadStructural input1548 value778 value1 value2 = (output1548, value778, value1))
    (child4249 : Flapjack.WordAlloc.removeDeadStructural input4249 value778 value1 value2 = (output4249, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4250 value778 value1 value2 = (output4250, value1810, value1) := by
  rw [input4250_def, output4250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1548]
  try dsimp only
  rw [child4249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1548_skip, output4249_skip]
  kernel_rfl

theorem node4251_cond_eq
    (child1547 : Flapjack.WordAlloc.removeDeadStructural input1547 value777 value1 value2 = (output1547, value778, value1))
    (child4250 : Flapjack.WordAlloc.removeDeadStructural input4250 value778 value1 value2 = (output4250, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4251 value777 value1 value2 = (output4251, value1810, value1) := by
  rw [input4251_def, output4251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1547]
  try dsimp only
  rw [child4250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1547_skip, output4250_skip]
  kernel_rfl

theorem node4252_cond_eq
    (child1546 : Flapjack.WordAlloc.removeDeadStructural input1546 value5 value1 value2 = (output1546, value777, value1))
    (child4251 : Flapjack.WordAlloc.removeDeadStructural input4251 value777 value1 value2 = (output4251, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4252 value5 value1 value2 = (output4252, value1810, value1) := by
  rw [input4252_def, output4252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1546]
  try dsimp only
  rw [child4251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1546_skip, output4251_skip]
  kernel_rfl

theorem node4253_cond_eq
    (child1543 : Flapjack.WordAlloc.removeDeadStructural input1543 value771 value1 value2 = (output1543, value5, value1))
    (child4252 : Flapjack.WordAlloc.removeDeadStructural input4252 value5 value1 value2 = (output4252, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4253 value771 value1 value2 = (output4253, value1810, value1) := by
  rw [input4253_def, output4253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1543]
  try dsimp only
  rw [child4252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1543_skip, output4252_skip]
  kernel_rfl

theorem node4254_cond_eq
    (child1534 : Flapjack.WordAlloc.removeDeadStructural input1534 value771 value1 value2 = (output1534, value771, value1))
    (child4253 : Flapjack.WordAlloc.removeDeadStructural input4253 value771 value1 value2 = (output4253, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4254 value771 value1 value2 = (output4254, value1810, value1) := by
  rw [input4254_def, output4254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1534]
  try dsimp only
  rw [child4253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1534_skip, output4253_skip]
  kernel_rfl

theorem node4255_cond_eq
    (child1533 : Flapjack.WordAlloc.removeDeadStructural input1533 value770 value1 value2 = (output1533, value771, value1))
    (child4254 : Flapjack.WordAlloc.removeDeadStructural input4254 value771 value1 value2 = (output4254, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4255 value770 value1 value2 = (output4255, value1810, value1) := by
  rw [input4255_def, output4255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1533]
  try dsimp only
  rw [child4254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1533_skip, output4254_skip]
  kernel_rfl

theorem node4256_cond_eq
    (child1532 : Flapjack.WordAlloc.removeDeadStructural input1532 value5 value1 value2 = (output1532, value770, value1))
    (child4255 : Flapjack.WordAlloc.removeDeadStructural input4255 value770 value1 value2 = (output4255, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4256 value5 value1 value2 = (output4256, value1810, value1) := by
  rw [input4256_def, output4256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1532]
  try dsimp only
  rw [child4255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1532_skip, output4255_skip]
  kernel_rfl

theorem node4257_cond_eq
    (child1529 : Flapjack.WordAlloc.removeDeadStructural input1529 value764 value1 value2 = (output1529, value5, value1))
    (child4256 : Flapjack.WordAlloc.removeDeadStructural input4256 value5 value1 value2 = (output4256, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4257 value764 value1 value2 = (output4257, value1810, value1) := by
  rw [input4257_def, output4257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1529]
  try dsimp only
  rw [child4256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1529_skip, output4256_skip]
  kernel_rfl

theorem node4258_cond_eq
    (child1520 : Flapjack.WordAlloc.removeDeadStructural input1520 value764 value1 value2 = (output1520, value764, value1))
    (child4257 : Flapjack.WordAlloc.removeDeadStructural input4257 value764 value1 value2 = (output4257, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4258 value764 value1 value2 = (output4258, value1810, value1) := by
  rw [input4258_def, output4258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1520]
  try dsimp only
  rw [child4257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1520_skip, output4257_skip]
  kernel_rfl

theorem node4259_cond_eq
    (child1519 : Flapjack.WordAlloc.removeDeadStructural input1519 value763 value1 value2 = (output1519, value764, value1))
    (child4258 : Flapjack.WordAlloc.removeDeadStructural input4258 value764 value1 value2 = (output4258, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4259 value763 value1 value2 = (output4259, value1810, value1) := by
  rw [input4259_def, output4259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1519]
  try dsimp only
  rw [child4258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1519_skip, output4258_skip]
  kernel_rfl

theorem node4260_cond_eq
    (child1518 : Flapjack.WordAlloc.removeDeadStructural input1518 value5 value1 value2 = (output1518, value763, value1))
    (child4259 : Flapjack.WordAlloc.removeDeadStructural input4259 value763 value1 value2 = (output4259, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4260 value5 value1 value2 = (output4260, value1810, value1) := by
  rw [input4260_def, output4260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1518]
  try dsimp only
  rw [child4259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1518_skip, output4259_skip]
  kernel_rfl

theorem node4261_cond_eq
    (child1515 : Flapjack.WordAlloc.removeDeadStructural input1515 value757 value1 value2 = (output1515, value5, value1))
    (child4260 : Flapjack.WordAlloc.removeDeadStructural input4260 value5 value1 value2 = (output4260, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4261 value757 value1 value2 = (output4261, value1810, value1) := by
  rw [input4261_def, output4261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1515]
  try dsimp only
  rw [child4260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1515_skip, output4260_skip]
  kernel_rfl

theorem node4262_cond_eq
    (child1506 : Flapjack.WordAlloc.removeDeadStructural input1506 value757 value1 value2 = (output1506, value757, value1))
    (child4261 : Flapjack.WordAlloc.removeDeadStructural input4261 value757 value1 value2 = (output4261, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4262 value757 value1 value2 = (output4262, value1810, value1) := by
  rw [input4262_def, output4262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1506]
  try dsimp only
  rw [child4261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1506_skip, output4261_skip]
  kernel_rfl

theorem node4263_cond_eq
    (child1505 : Flapjack.WordAlloc.removeDeadStructural input1505 value756 value1 value2 = (output1505, value757, value1))
    (child4262 : Flapjack.WordAlloc.removeDeadStructural input4262 value757 value1 value2 = (output4262, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4263 value756 value1 value2 = (output4263, value1810, value1) := by
  rw [input4263_def, output4263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1505]
  try dsimp only
  rw [child4262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1505_skip, output4262_skip]
  kernel_rfl

theorem node4264_cond_eq
    (child1504 : Flapjack.WordAlloc.removeDeadStructural input1504 value5 value1 value2 = (output1504, value756, value1))
    (child4263 : Flapjack.WordAlloc.removeDeadStructural input4263 value756 value1 value2 = (output4263, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4264 value5 value1 value2 = (output4264, value1810, value1) := by
  rw [input4264_def, output4264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1504]
  try dsimp only
  rw [child4263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1504_skip, output4263_skip]
  kernel_rfl

theorem node4265_cond_eq
    (child1501 : Flapjack.WordAlloc.removeDeadStructural input1501 value750 value1 value2 = (output1501, value5, value1))
    (child4264 : Flapjack.WordAlloc.removeDeadStructural input4264 value5 value1 value2 = (output4264, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4265 value750 value1 value2 = (output4265, value1810, value1) := by
  rw [input4265_def, output4265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1501]
  try dsimp only
  rw [child4264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1501_skip, output4264_skip]
  kernel_rfl

theorem node4266_cond_eq
    (child1492 : Flapjack.WordAlloc.removeDeadStructural input1492 value750 value1 value2 = (output1492, value750, value1))
    (child4265 : Flapjack.WordAlloc.removeDeadStructural input4265 value750 value1 value2 = (output4265, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4266 value750 value1 value2 = (output4266, value1810, value1) := by
  rw [input4266_def, output4266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1492]
  try dsimp only
  rw [child4265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1492_skip, output4265_skip]
  kernel_rfl

theorem node4267_cond_eq
    (child1491 : Flapjack.WordAlloc.removeDeadStructural input1491 value749 value1 value2 = (output1491, value750, value1))
    (child4266 : Flapjack.WordAlloc.removeDeadStructural input4266 value750 value1 value2 = (output4266, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4267 value749 value1 value2 = (output4267, value1810, value1) := by
  rw [input4267_def, output4267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1491]
  try dsimp only
  rw [child4266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1491_skip, output4266_skip]
  kernel_rfl

theorem node4268_cond_eq
    (child1490 : Flapjack.WordAlloc.removeDeadStructural input1490 value5 value1 value2 = (output1490, value749, value1))
    (child4267 : Flapjack.WordAlloc.removeDeadStructural input4267 value749 value1 value2 = (output4267, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4268 value5 value1 value2 = (output4268, value1810, value1) := by
  rw [input4268_def, output4268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1490]
  try dsimp only
  rw [child4267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1490_skip, output4267_skip]
  kernel_rfl

theorem node4269_cond_eq
    (child1487 : Flapjack.WordAlloc.removeDeadStructural input1487 value743 value1 value2 = (output1487, value5, value1))
    (child4268 : Flapjack.WordAlloc.removeDeadStructural input4268 value5 value1 value2 = (output4268, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4269 value743 value1 value2 = (output4269, value1810, value1) := by
  rw [input4269_def, output4269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1487]
  try dsimp only
  rw [child4268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1487_skip, output4268_skip]
  kernel_rfl

theorem node4270_cond_eq
    (child1478 : Flapjack.WordAlloc.removeDeadStructural input1478 value743 value1 value2 = (output1478, value743, value1))
    (child4269 : Flapjack.WordAlloc.removeDeadStructural input4269 value743 value1 value2 = (output4269, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4270 value743 value1 value2 = (output4270, value1810, value1) := by
  rw [input4270_def, output4270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1478]
  try dsimp only
  rw [child4269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1478_skip, output4269_skip]
  kernel_rfl

theorem node4271_cond_eq
    (child1477 : Flapjack.WordAlloc.removeDeadStructural input1477 value742 value1 value2 = (output1477, value743, value1))
    (child4270 : Flapjack.WordAlloc.removeDeadStructural input4270 value743 value1 value2 = (output4270, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4271 value742 value1 value2 = (output4271, value1810, value1) := by
  rw [input4271_def, output4271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1477]
  try dsimp only
  rw [child4270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1477_skip, output4270_skip]
  kernel_rfl

theorem node4272_cond_eq
    (child1476 : Flapjack.WordAlloc.removeDeadStructural input1476 value5 value1 value2 = (output1476, value742, value1))
    (child4271 : Flapjack.WordAlloc.removeDeadStructural input4271 value742 value1 value2 = (output4271, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4272 value5 value1 value2 = (output4272, value1810, value1) := by
  rw [input4272_def, output4272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1476]
  try dsimp only
  rw [child4271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1476_skip, output4271_skip]
  kernel_rfl

theorem node4273_cond_eq
    (child1473 : Flapjack.WordAlloc.removeDeadStructural input1473 value736 value1 value2 = (output1473, value5, value1))
    (child4272 : Flapjack.WordAlloc.removeDeadStructural input4272 value5 value1 value2 = (output4272, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4273 value736 value1 value2 = (output4273, value1810, value1) := by
  rw [input4273_def, output4273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1473]
  try dsimp only
  rw [child4272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1473_skip, output4272_skip]
  kernel_rfl

theorem node4274_cond_eq
    (child1464 : Flapjack.WordAlloc.removeDeadStructural input1464 value736 value1 value2 = (output1464, value736, value1))
    (child4273 : Flapjack.WordAlloc.removeDeadStructural input4273 value736 value1 value2 = (output4273, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4274 value736 value1 value2 = (output4274, value1810, value1) := by
  rw [input4274_def, output4274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1464]
  try dsimp only
  rw [child4273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1464_skip, output4273_skip]
  kernel_rfl

theorem node4275_cond_eq
    (child1463 : Flapjack.WordAlloc.removeDeadStructural input1463 value735 value1 value2 = (output1463, value736, value1))
    (child4274 : Flapjack.WordAlloc.removeDeadStructural input4274 value736 value1 value2 = (output4274, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4275 value735 value1 value2 = (output4275, value1810, value1) := by
  rw [input4275_def, output4275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1463]
  try dsimp only
  rw [child4274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1463_skip, output4274_skip]
  kernel_rfl

theorem node4276_cond_eq
    (child1462 : Flapjack.WordAlloc.removeDeadStructural input1462 value5 value1 value2 = (output1462, value735, value1))
    (child4275 : Flapjack.WordAlloc.removeDeadStructural input4275 value735 value1 value2 = (output4275, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4276 value5 value1 value2 = (output4276, value1810, value1) := by
  rw [input4276_def, output4276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1462]
  try dsimp only
  rw [child4275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1462_skip, output4275_skip]
  kernel_rfl

theorem node4277_cond_eq
    (child1459 : Flapjack.WordAlloc.removeDeadStructural input1459 value729 value1 value2 = (output1459, value5, value1))
    (child4276 : Flapjack.WordAlloc.removeDeadStructural input4276 value5 value1 value2 = (output4276, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4277 value729 value1 value2 = (output4277, value1810, value1) := by
  rw [input4277_def, output4277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1459]
  try dsimp only
  rw [child4276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1459_skip, output4276_skip]
  kernel_rfl

theorem node4278_cond_eq
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value729 value1 value2 = (output1450, value729, value1))
    (child4277 : Flapjack.WordAlloc.removeDeadStructural input4277 value729 value1 value2 = (output4277, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4278 value729 value1 value2 = (output4278, value1810, value1) := by
  rw [input4278_def, output4278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1450]
  try dsimp only
  rw [child4277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1450_skip, output4277_skip]
  kernel_rfl

theorem node4279_cond_eq
    (child1449 : Flapjack.WordAlloc.removeDeadStructural input1449 value728 value1 value2 = (output1449, value729, value1))
    (child4278 : Flapjack.WordAlloc.removeDeadStructural input4278 value729 value1 value2 = (output4278, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4279 value728 value1 value2 = (output4279, value1810, value1) := by
  rw [input4279_def, output4279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1449]
  try dsimp only
  rw [child4278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1449_skip, output4278_skip]
  kernel_rfl

theorem node4280_cond_eq
    (child1448 : Flapjack.WordAlloc.removeDeadStructural input1448 value5 value1 value2 = (output1448, value728, value1))
    (child4279 : Flapjack.WordAlloc.removeDeadStructural input4279 value728 value1 value2 = (output4279, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4280 value5 value1 value2 = (output4280, value1810, value1) := by
  rw [input4280_def, output4280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1448]
  try dsimp only
  rw [child4279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1448_skip, output4279_skip]
  kernel_rfl

theorem node4281_cond_eq
    (child1445 : Flapjack.WordAlloc.removeDeadStructural input1445 value722 value1 value2 = (output1445, value5, value1))
    (child4280 : Flapjack.WordAlloc.removeDeadStructural input4280 value5 value1 value2 = (output4280, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4281 value722 value1 value2 = (output4281, value1810, value1) := by
  rw [input4281_def, output4281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1445]
  try dsimp only
  rw [child4280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1445_skip, output4280_skip]
  kernel_rfl

theorem node4282_cond_eq
    (child1436 : Flapjack.WordAlloc.removeDeadStructural input1436 value722 value1 value2 = (output1436, value722, value1))
    (child4281 : Flapjack.WordAlloc.removeDeadStructural input4281 value722 value1 value2 = (output4281, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4282 value722 value1 value2 = (output4282, value1810, value1) := by
  rw [input4282_def, output4282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1436]
  try dsimp only
  rw [child4281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1436_skip, output4281_skip]
  kernel_rfl

theorem node4283_cond_eq
    (child1435 : Flapjack.WordAlloc.removeDeadStructural input1435 value721 value1 value2 = (output1435, value722, value1))
    (child4282 : Flapjack.WordAlloc.removeDeadStructural input4282 value722 value1 value2 = (output4282, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4283 value721 value1 value2 = (output4283, value1810, value1) := by
  rw [input4283_def, output4283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1435]
  try dsimp only
  rw [child4282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1435_skip, output4282_skip]
  kernel_rfl

theorem node4284_cond_eq
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value5 value1 value2 = (output1434, value721, value1))
    (child4283 : Flapjack.WordAlloc.removeDeadStructural input4283 value721 value1 value2 = (output4283, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4284 value5 value1 value2 = (output4284, value1810, value1) := by
  rw [input4284_def, output4284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1434]
  try dsimp only
  rw [child4283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1434_skip, output4283_skip]
  kernel_rfl

theorem node4285_cond_eq
    (child1431 : Flapjack.WordAlloc.removeDeadStructural input1431 value715 value1 value2 = (output1431, value5, value1))
    (child4284 : Flapjack.WordAlloc.removeDeadStructural input4284 value5 value1 value2 = (output4284, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4285 value715 value1 value2 = (output4285, value1810, value1) := by
  rw [input4285_def, output4285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1431]
  try dsimp only
  rw [child4284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1431_skip, output4284_skip]
  kernel_rfl

theorem node4286_cond_eq
    (child1422 : Flapjack.WordAlloc.removeDeadStructural input1422 value715 value1 value2 = (output1422, value715, value1))
    (child4285 : Flapjack.WordAlloc.removeDeadStructural input4285 value715 value1 value2 = (output4285, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4286 value715 value1 value2 = (output4286, value1810, value1) := by
  rw [input4286_def, output4286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1422]
  try dsimp only
  rw [child4285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1422_skip, output4285_skip]
  kernel_rfl

theorem node4287_cond_eq
    (child1421 : Flapjack.WordAlloc.removeDeadStructural input1421 value714 value1 value2 = (output1421, value715, value1))
    (child4286 : Flapjack.WordAlloc.removeDeadStructural input4286 value715 value1 value2 = (output4286, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4287 value714 value1 value2 = (output4287, value1810, value1) := by
  rw [input4287_def, output4287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1421]
  try dsimp only
  rw [child4286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1421_skip, output4286_skip]
  kernel_rfl

theorem node4288_cond_eq
    (child1420 : Flapjack.WordAlloc.removeDeadStructural input1420 value5 value1 value2 = (output1420, value714, value1))
    (child4287 : Flapjack.WordAlloc.removeDeadStructural input4287 value714 value1 value2 = (output4287, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4288 value5 value1 value2 = (output4288, value1810, value1) := by
  rw [input4288_def, output4288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1420]
  try dsimp only
  rw [child4287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1420_skip, output4287_skip]
  kernel_rfl

theorem node4289_cond_eq
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value708 value1 value2 = (output1417, value5, value1))
    (child4288 : Flapjack.WordAlloc.removeDeadStructural input4288 value5 value1 value2 = (output4288, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4289 value708 value1 value2 = (output4289, value1810, value1) := by
  rw [input4289_def, output4289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1417]
  try dsimp only
  rw [child4288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1417_skip, output4288_skip]
  kernel_rfl

theorem node4290_cond_eq
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value708 value1 value2 = (output1408, value708, value1))
    (child4289 : Flapjack.WordAlloc.removeDeadStructural input4289 value708 value1 value2 = (output4289, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4290 value708 value1 value2 = (output4290, value1810, value1) := by
  rw [input4290_def, output4290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1408]
  try dsimp only
  rw [child4289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1408_skip, output4289_skip]
  kernel_rfl

theorem node4291_cond_eq
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value707 value1 value2 = (output1407, value708, value1))
    (child4290 : Flapjack.WordAlloc.removeDeadStructural input4290 value708 value1 value2 = (output4290, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4291 value707 value1 value2 = (output4291, value1810, value1) := by
  rw [input4291_def, output4291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1407]
  try dsimp only
  rw [child4290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1407_skip, output4290_skip]
  kernel_rfl

theorem node4292_cond_eq
    (child1406 : Flapjack.WordAlloc.removeDeadStructural input1406 value5 value1 value2 = (output1406, value707, value1))
    (child4291 : Flapjack.WordAlloc.removeDeadStructural input4291 value707 value1 value2 = (output4291, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4292 value5 value1 value2 = (output4292, value1810, value1) := by
  rw [input4292_def, output4292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1406]
  try dsimp only
  rw [child4291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1406_skip, output4291_skip]
  kernel_rfl

theorem node4293_cond_eq
    (child1403 : Flapjack.WordAlloc.removeDeadStructural input1403 value701 value1 value2 = (output1403, value5, value1))
    (child4292 : Flapjack.WordAlloc.removeDeadStructural input4292 value5 value1 value2 = (output4292, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4293 value701 value1 value2 = (output4293, value1810, value1) := by
  rw [input4293_def, output4293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1403]
  try dsimp only
  rw [child4292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1403_skip, output4292_skip]
  kernel_rfl

theorem node4294_cond_eq
    (child1394 : Flapjack.WordAlloc.removeDeadStructural input1394 value701 value1 value2 = (output1394, value701, value1))
    (child4293 : Flapjack.WordAlloc.removeDeadStructural input4293 value701 value1 value2 = (output4293, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4294 value701 value1 value2 = (output4294, value1810, value1) := by
  rw [input4294_def, output4294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1394]
  try dsimp only
  rw [child4293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1394_skip, output4293_skip]
  kernel_rfl

theorem node4295_cond_eq
    (child1393 : Flapjack.WordAlloc.removeDeadStructural input1393 value700 value1 value2 = (output1393, value701, value1))
    (child4294 : Flapjack.WordAlloc.removeDeadStructural input4294 value701 value1 value2 = (output4294, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4295 value700 value1 value2 = (output4295, value1810, value1) := by
  rw [input4295_def, output4295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1393]
  try dsimp only
  rw [child4294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1393_skip, output4294_skip]
  kernel_rfl

theorem node4296_cond_eq
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value5 value1 value2 = (output1392, value700, value1))
    (child4295 : Flapjack.WordAlloc.removeDeadStructural input4295 value700 value1 value2 = (output4295, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4296 value5 value1 value2 = (output4296, value1810, value1) := by
  rw [input4296_def, output4296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1392]
  try dsimp only
  rw [child4295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1392_skip, output4295_skip]
  kernel_rfl

theorem node4297_cond_eq
    (child1389 : Flapjack.WordAlloc.removeDeadStructural input1389 value694 value1 value2 = (output1389, value5, value1))
    (child4296 : Flapjack.WordAlloc.removeDeadStructural input4296 value5 value1 value2 = (output4296, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4297 value694 value1 value2 = (output4297, value1810, value1) := by
  rw [input4297_def, output4297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1389]
  try dsimp only
  rw [child4296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1389_skip, output4296_skip]
  kernel_rfl

theorem node4298_cond_eq
    (child1380 : Flapjack.WordAlloc.removeDeadStructural input1380 value694 value1 value2 = (output1380, value694, value1))
    (child4297 : Flapjack.WordAlloc.removeDeadStructural input4297 value694 value1 value2 = (output4297, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4298 value694 value1 value2 = (output4298, value1810, value1) := by
  rw [input4298_def, output4298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1380]
  try dsimp only
  rw [child4297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1380_skip, output4297_skip]
  kernel_rfl

theorem node4299_cond_eq
    (child1379 : Flapjack.WordAlloc.removeDeadStructural input1379 value693 value1 value2 = (output1379, value694, value1))
    (child4298 : Flapjack.WordAlloc.removeDeadStructural input4298 value694 value1 value2 = (output4298, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4299 value693 value1 value2 = (output4299, value1810, value1) := by
  rw [input4299_def, output4299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1379]
  try dsimp only
  rw [child4298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1379_skip, output4298_skip]
  kernel_rfl

theorem node4300_cond_eq
    (child1378 : Flapjack.WordAlloc.removeDeadStructural input1378 value5 value1 value2 = (output1378, value693, value1))
    (child4299 : Flapjack.WordAlloc.removeDeadStructural input4299 value693 value1 value2 = (output4299, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4300 value5 value1 value2 = (output4300, value1810, value1) := by
  rw [input4300_def, output4300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1378]
  try dsimp only
  rw [child4299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1378_skip, output4299_skip]
  kernel_rfl

theorem node4301_cond_eq
    (child1375 : Flapjack.WordAlloc.removeDeadStructural input1375 value687 value1 value2 = (output1375, value5, value1))
    (child4300 : Flapjack.WordAlloc.removeDeadStructural input4300 value5 value1 value2 = (output4300, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4301 value687 value1 value2 = (output4301, value1810, value1) := by
  rw [input4301_def, output4301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1375]
  try dsimp only
  rw [child4300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1375_skip, output4300_skip]
  kernel_rfl

theorem node4302_cond_eq
    (child1366 : Flapjack.WordAlloc.removeDeadStructural input1366 value687 value1 value2 = (output1366, value687, value1))
    (child4301 : Flapjack.WordAlloc.removeDeadStructural input4301 value687 value1 value2 = (output4301, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4302 value687 value1 value2 = (output4302, value1810, value1) := by
  rw [input4302_def, output4302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1366]
  try dsimp only
  rw [child4301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1366_skip, output4301_skip]
  kernel_rfl

theorem node4303_cond_eq
    (child1365 : Flapjack.WordAlloc.removeDeadStructural input1365 value686 value1 value2 = (output1365, value687, value1))
    (child4302 : Flapjack.WordAlloc.removeDeadStructural input4302 value687 value1 value2 = (output4302, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4303 value686 value1 value2 = (output4303, value1810, value1) := by
  rw [input4303_def, output4303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1365]
  try dsimp only
  rw [child4302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1365_skip, output4302_skip]
  kernel_rfl

theorem node4304_cond_eq
    (child1364 : Flapjack.WordAlloc.removeDeadStructural input1364 value5 value1 value2 = (output1364, value686, value1))
    (child4303 : Flapjack.WordAlloc.removeDeadStructural input4303 value686 value1 value2 = (output4303, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4304 value5 value1 value2 = (output4304, value1810, value1) := by
  rw [input4304_def, output4304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1364]
  try dsimp only
  rw [child4303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1364_skip, output4303_skip]
  kernel_rfl

theorem node4305_cond_eq
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value680 value1 value2 = (output1361, value5, value1))
    (child4304 : Flapjack.WordAlloc.removeDeadStructural input4304 value5 value1 value2 = (output4304, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4305 value680 value1 value2 = (output4305, value1810, value1) := by
  rw [input4305_def, output4305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1361]
  try dsimp only
  rw [child4304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1361_skip, output4304_skip]
  kernel_rfl

theorem node4306_cond_eq
    (child1352 : Flapjack.WordAlloc.removeDeadStructural input1352 value680 value1 value2 = (output1352, value680, value1))
    (child4305 : Flapjack.WordAlloc.removeDeadStructural input4305 value680 value1 value2 = (output4305, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4306 value680 value1 value2 = (output4306, value1810, value1) := by
  rw [input4306_def, output4306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1352]
  try dsimp only
  rw [child4305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1352_skip, output4305_skip]
  kernel_rfl

theorem node4307_cond_eq
    (child1351 : Flapjack.WordAlloc.removeDeadStructural input1351 value679 value1 value2 = (output1351, value680, value1))
    (child4306 : Flapjack.WordAlloc.removeDeadStructural input4306 value680 value1 value2 = (output4306, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4307 value679 value1 value2 = (output4307, value1810, value1) := by
  rw [input4307_def, output4307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1351]
  try dsimp only
  rw [child4306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1351_skip, output4306_skip]
  kernel_rfl

theorem node4308_cond_eq
    (child1350 : Flapjack.WordAlloc.removeDeadStructural input1350 value5 value1 value2 = (output1350, value679, value1))
    (child4307 : Flapjack.WordAlloc.removeDeadStructural input4307 value679 value1 value2 = (output4307, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4308 value5 value1 value2 = (output4308, value1810, value1) := by
  rw [input4308_def, output4308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1350]
  try dsimp only
  rw [child4307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1350_skip, output4307_skip]
  kernel_rfl

theorem node4309_cond_eq
    (child1347 : Flapjack.WordAlloc.removeDeadStructural input1347 value673 value1 value2 = (output1347, value5, value1))
    (child4308 : Flapjack.WordAlloc.removeDeadStructural input4308 value5 value1 value2 = (output4308, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4309 value673 value1 value2 = (output4309, value1810, value1) := by
  rw [input4309_def, output4309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1347]
  try dsimp only
  rw [child4308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1347_skip, output4308_skip]
  kernel_rfl

theorem node4310_cond_eq
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value673 value1 value2 = (output1338, value673, value1))
    (child4309 : Flapjack.WordAlloc.removeDeadStructural input4309 value673 value1 value2 = (output4309, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4310 value673 value1 value2 = (output4310, value1810, value1) := by
  rw [input4310_def, output4310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1338]
  try dsimp only
  rw [child4309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1338_skip, output4309_skip]
  kernel_rfl

theorem node4311_cond_eq
    (child1337 : Flapjack.WordAlloc.removeDeadStructural input1337 value672 value1 value2 = (output1337, value673, value1))
    (child4310 : Flapjack.WordAlloc.removeDeadStructural input4310 value673 value1 value2 = (output4310, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4311 value672 value1 value2 = (output4311, value1810, value1) := by
  rw [input4311_def, output4311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1337]
  try dsimp only
  rw [child4310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1337_skip, output4310_skip]
  kernel_rfl

theorem node4312_cond_eq
    (child1336 : Flapjack.WordAlloc.removeDeadStructural input1336 value5 value1 value2 = (output1336, value672, value1))
    (child4311 : Flapjack.WordAlloc.removeDeadStructural input4311 value672 value1 value2 = (output4311, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4312 value5 value1 value2 = (output4312, value1810, value1) := by
  rw [input4312_def, output4312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1336]
  try dsimp only
  rw [child4311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1336_skip, output4311_skip]
  kernel_rfl

theorem node4313_cond_eq
    (child1333 : Flapjack.WordAlloc.removeDeadStructural input1333 value666 value1 value2 = (output1333, value5, value1))
    (child4312 : Flapjack.WordAlloc.removeDeadStructural input4312 value5 value1 value2 = (output4312, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4313 value666 value1 value2 = (output4313, value1810, value1) := by
  rw [input4313_def, output4313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1333]
  try dsimp only
  rw [child4312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1333_skip, output4312_skip]
  kernel_rfl

theorem node4314_cond_eq
    (child1324 : Flapjack.WordAlloc.removeDeadStructural input1324 value666 value1 value2 = (output1324, value666, value1))
    (child4313 : Flapjack.WordAlloc.removeDeadStructural input4313 value666 value1 value2 = (output4313, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4314 value666 value1 value2 = (output4314, value1810, value1) := by
  rw [input4314_def, output4314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1324]
  try dsimp only
  rw [child4313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1324_skip, output4313_skip]
  kernel_rfl

theorem node4315_cond_eq
    (child1323 : Flapjack.WordAlloc.removeDeadStructural input1323 value665 value1 value2 = (output1323, value666, value1))
    (child4314 : Flapjack.WordAlloc.removeDeadStructural input4314 value666 value1 value2 = (output4314, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4315 value665 value1 value2 = (output4315, value1810, value1) := by
  rw [input4315_def, output4315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1323]
  try dsimp only
  rw [child4314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1323_skip, output4314_skip]
  kernel_rfl

theorem node4316_cond_eq
    (child1322 : Flapjack.WordAlloc.removeDeadStructural input1322 value5 value1 value2 = (output1322, value665, value1))
    (child4315 : Flapjack.WordAlloc.removeDeadStructural input4315 value665 value1 value2 = (output4315, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4316 value5 value1 value2 = (output4316, value1810, value1) := by
  rw [input4316_def, output4316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1322]
  try dsimp only
  rw [child4315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1322_skip, output4315_skip]
  kernel_rfl

theorem node4317_cond_eq
    (child1319 : Flapjack.WordAlloc.removeDeadStructural input1319 value659 value1 value2 = (output1319, value5, value1))
    (child4316 : Flapjack.WordAlloc.removeDeadStructural input4316 value5 value1 value2 = (output4316, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4317 value659 value1 value2 = (output4317, value1810, value1) := by
  rw [input4317_def, output4317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1319]
  try dsimp only
  rw [child4316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1319_skip, output4316_skip]
  kernel_rfl

theorem node4318_cond_eq
    (child1310 : Flapjack.WordAlloc.removeDeadStructural input1310 value659 value1 value2 = (output1310, value659, value1))
    (child4317 : Flapjack.WordAlloc.removeDeadStructural input4317 value659 value1 value2 = (output4317, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4318 value659 value1 value2 = (output4318, value1810, value1) := by
  rw [input4318_def, output4318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1310]
  try dsimp only
  rw [child4317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1310_skip, output4317_skip]
  kernel_rfl

theorem node4319_cond_eq
    (child1309 : Flapjack.WordAlloc.removeDeadStructural input1309 value658 value1 value2 = (output1309, value659, value1))
    (child4318 : Flapjack.WordAlloc.removeDeadStructural input4318 value659 value1 value2 = (output4318, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4319 value658 value1 value2 = (output4319, value1810, value1) := by
  rw [input4319_def, output4319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1309]
  try dsimp only
  rw [child4318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1309_skip, output4318_skip]
  kernel_rfl

theorem node4320_cond_eq
    (child1308 : Flapjack.WordAlloc.removeDeadStructural input1308 value5 value1 value2 = (output1308, value658, value1))
    (child4319 : Flapjack.WordAlloc.removeDeadStructural input4319 value658 value1 value2 = (output4319, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4320 value5 value1 value2 = (output4320, value1810, value1) := by
  rw [input4320_def, output4320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1308]
  try dsimp only
  rw [child4319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1308_skip, output4319_skip]
  kernel_rfl

theorem node4321_cond_eq
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value652 value1 value2 = (output1305, value5, value1))
    (child4320 : Flapjack.WordAlloc.removeDeadStructural input4320 value5 value1 value2 = (output4320, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4321 value652 value1 value2 = (output4321, value1810, value1) := by
  rw [input4321_def, output4321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1305]
  try dsimp only
  rw [child4320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1305_skip, output4320_skip]
  kernel_rfl

theorem node4322_cond_eq
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value652 value1 value2 = (output1296, value652, value1))
    (child4321 : Flapjack.WordAlloc.removeDeadStructural input4321 value652 value1 value2 = (output4321, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4322 value652 value1 value2 = (output4322, value1810, value1) := by
  rw [input4322_def, output4322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1296]
  try dsimp only
  rw [child4321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1296_skip, output4321_skip]
  kernel_rfl

theorem node4323_cond_eq
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value651 value1 value2 = (output1295, value652, value1))
    (child4322 : Flapjack.WordAlloc.removeDeadStructural input4322 value652 value1 value2 = (output4322, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4323 value651 value1 value2 = (output4323, value1810, value1) := by
  rw [input4323_def, output4323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1295]
  try dsimp only
  rw [child4322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1295_skip, output4322_skip]
  kernel_rfl

theorem node4324_cond_eq
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value5 value1 value2 = (output1294, value651, value1))
    (child4323 : Flapjack.WordAlloc.removeDeadStructural input4323 value651 value1 value2 = (output4323, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4324 value5 value1 value2 = (output4324, value1810, value1) := by
  rw [input4324_def, output4324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1294]
  try dsimp only
  rw [child4323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1294_skip, output4323_skip]
  kernel_rfl

theorem node4325_cond_eq
    (child1291 : Flapjack.WordAlloc.removeDeadStructural input1291 value645 value1 value2 = (output1291, value5, value1))
    (child4324 : Flapjack.WordAlloc.removeDeadStructural input4324 value5 value1 value2 = (output4324, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4325 value645 value1 value2 = (output4325, value1810, value1) := by
  rw [input4325_def, output4325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1291]
  try dsimp only
  rw [child4324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1291_skip, output4324_skip]
  kernel_rfl

theorem node4326_cond_eq
    (child1282 : Flapjack.WordAlloc.removeDeadStructural input1282 value645 value1 value2 = (output1282, value645, value1))
    (child4325 : Flapjack.WordAlloc.removeDeadStructural input4325 value645 value1 value2 = (output4325, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4326 value645 value1 value2 = (output4326, value1810, value1) := by
  rw [input4326_def, output4326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1282]
  try dsimp only
  rw [child4325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1282_skip, output4325_skip]
  kernel_rfl

theorem node4327_cond_eq
    (child1281 : Flapjack.WordAlloc.removeDeadStructural input1281 value644 value1 value2 = (output1281, value645, value1))
    (child4326 : Flapjack.WordAlloc.removeDeadStructural input4326 value645 value1 value2 = (output4326, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4327 value644 value1 value2 = (output4327, value1810, value1) := by
  rw [input4327_def, output4327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1281]
  try dsimp only
  rw [child4326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1281_skip, output4326_skip]
  kernel_rfl

theorem node4328_cond_eq
    (child1280 : Flapjack.WordAlloc.removeDeadStructural input1280 value5 value1 value2 = (output1280, value644, value1))
    (child4327 : Flapjack.WordAlloc.removeDeadStructural input4327 value644 value1 value2 = (output4327, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4328 value5 value1 value2 = (output4328, value1810, value1) := by
  rw [input4328_def, output4328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1280]
  try dsimp only
  rw [child4327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1280_skip, output4327_skip]
  kernel_rfl

theorem node4329_cond_eq
    (child1277 : Flapjack.WordAlloc.removeDeadStructural input1277 value638 value1 value2 = (output1277, value5, value1))
    (child4328 : Flapjack.WordAlloc.removeDeadStructural input4328 value5 value1 value2 = (output4328, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4329 value638 value1 value2 = (output4329, value1810, value1) := by
  rw [input4329_def, output4329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1277]
  try dsimp only
  rw [child4328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1277_skip, output4328_skip]
  kernel_rfl

theorem node4330_cond_eq
    (child1268 : Flapjack.WordAlloc.removeDeadStructural input1268 value638 value1 value2 = (output1268, value638, value1))
    (child4329 : Flapjack.WordAlloc.removeDeadStructural input4329 value638 value1 value2 = (output4329, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4330 value638 value1 value2 = (output4330, value1810, value1) := by
  rw [input4330_def, output4330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1268]
  try dsimp only
  rw [child4329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1268_skip, output4329_skip]
  kernel_rfl

theorem node4331_cond_eq
    (child1267 : Flapjack.WordAlloc.removeDeadStructural input1267 value637 value1 value2 = (output1267, value638, value1))
    (child4330 : Flapjack.WordAlloc.removeDeadStructural input4330 value638 value1 value2 = (output4330, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4331 value637 value1 value2 = (output4331, value1810, value1) := by
  rw [input4331_def, output4331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1267]
  try dsimp only
  rw [child4330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1267_skip, output4330_skip]
  kernel_rfl

theorem node4332_cond_eq
    (child1266 : Flapjack.WordAlloc.removeDeadStructural input1266 value5 value1 value2 = (output1266, value637, value1))
    (child4331 : Flapjack.WordAlloc.removeDeadStructural input4331 value637 value1 value2 = (output4331, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4332 value5 value1 value2 = (output4332, value1810, value1) := by
  rw [input4332_def, output4332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1266]
  try dsimp only
  rw [child4331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1266_skip, output4331_skip]
  kernel_rfl

theorem node4333_cond_eq
    (child1263 : Flapjack.WordAlloc.removeDeadStructural input1263 value631 value1 value2 = (output1263, value5, value1))
    (child4332 : Flapjack.WordAlloc.removeDeadStructural input4332 value5 value1 value2 = (output4332, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4333 value631 value1 value2 = (output4333, value1810, value1) := by
  rw [input4333_def, output4333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1263]
  try dsimp only
  rw [child4332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1263_skip, output4332_skip]
  kernel_rfl

theorem node4334_cond_eq
    (child1254 : Flapjack.WordAlloc.removeDeadStructural input1254 value631 value1 value2 = (output1254, value631, value1))
    (child4333 : Flapjack.WordAlloc.removeDeadStructural input4333 value631 value1 value2 = (output4333, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4334 value631 value1 value2 = (output4334, value1810, value1) := by
  rw [input4334_def, output4334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1254]
  try dsimp only
  rw [child4333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1254_skip, output4333_skip]
  kernel_rfl

theorem node4335_cond_eq
    (child1253 : Flapjack.WordAlloc.removeDeadStructural input1253 value630 value1 value2 = (output1253, value631, value1))
    (child4334 : Flapjack.WordAlloc.removeDeadStructural input4334 value631 value1 value2 = (output4334, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4335 value630 value1 value2 = (output4335, value1810, value1) := by
  rw [input4335_def, output4335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1253]
  try dsimp only
  rw [child4334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1253_skip, output4334_skip]
  kernel_rfl

theorem node4336_cond_eq
    (child1252 : Flapjack.WordAlloc.removeDeadStructural input1252 value5 value1 value2 = (output1252, value630, value1))
    (child4335 : Flapjack.WordAlloc.removeDeadStructural input4335 value630 value1 value2 = (output4335, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4336 value5 value1 value2 = (output4336, value1810, value1) := by
  rw [input4336_def, output4336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1252]
  try dsimp only
  rw [child4335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1252_skip, output4335_skip]
  kernel_rfl

theorem node4337_cond_eq
    (child1249 : Flapjack.WordAlloc.removeDeadStructural input1249 value624 value1 value2 = (output1249, value5, value1))
    (child4336 : Flapjack.WordAlloc.removeDeadStructural input4336 value5 value1 value2 = (output4336, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4337 value624 value1 value2 = (output4337, value1810, value1) := by
  rw [input4337_def, output4337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1249]
  try dsimp only
  rw [child4336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1249_skip, output4336_skip]
  kernel_rfl

theorem node4338_cond_eq
    (child1240 : Flapjack.WordAlloc.removeDeadStructural input1240 value624 value1 value2 = (output1240, value624, value1))
    (child4337 : Flapjack.WordAlloc.removeDeadStructural input4337 value624 value1 value2 = (output4337, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4338 value624 value1 value2 = (output4338, value1810, value1) := by
  rw [input4338_def, output4338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1240]
  try dsimp only
  rw [child4337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1240_skip, output4337_skip]
  kernel_rfl

theorem node4339_cond_eq
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value623 value1 value2 = (output1239, value624, value1))
    (child4338 : Flapjack.WordAlloc.removeDeadStructural input4338 value624 value1 value2 = (output4338, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4339 value623 value1 value2 = (output4339, value1810, value1) := by
  rw [input4339_def, output4339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1239]
  try dsimp only
  rw [child4338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1239_skip, output4338_skip]
  kernel_rfl

theorem node4340_cond_eq
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value5 value1 value2 = (output1238, value623, value1))
    (child4339 : Flapjack.WordAlloc.removeDeadStructural input4339 value623 value1 value2 = (output4339, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4340 value5 value1 value2 = (output4340, value1810, value1) := by
  rw [input4340_def, output4340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1238]
  try dsimp only
  rw [child4339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1238_skip, output4339_skip]
  kernel_rfl

theorem node4341_cond_eq
    (child1235 : Flapjack.WordAlloc.removeDeadStructural input1235 value617 value1 value2 = (output1235, value5, value1))
    (child4340 : Flapjack.WordAlloc.removeDeadStructural input4340 value5 value1 value2 = (output4340, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4341 value617 value1 value2 = (output4341, value1810, value1) := by
  rw [input4341_def, output4341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1235]
  try dsimp only
  rw [child4340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1235_skip, output4340_skip]
  kernel_rfl

theorem node4342_cond_eq
    (child1226 : Flapjack.WordAlloc.removeDeadStructural input1226 value617 value1 value2 = (output1226, value617, value1))
    (child4341 : Flapjack.WordAlloc.removeDeadStructural input4341 value617 value1 value2 = (output4341, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4342 value617 value1 value2 = (output4342, value1810, value1) := by
  rw [input4342_def, output4342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1226]
  try dsimp only
  rw [child4341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1226_skip, output4341_skip]
  kernel_rfl

theorem node4343_cond_eq
    (child1225 : Flapjack.WordAlloc.removeDeadStructural input1225 value616 value1 value2 = (output1225, value617, value1))
    (child4342 : Flapjack.WordAlloc.removeDeadStructural input4342 value617 value1 value2 = (output4342, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4343 value616 value1 value2 = (output4343, value1810, value1) := by
  rw [input4343_def, output4343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1225]
  try dsimp only
  rw [child4342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1225_skip, output4342_skip]
  kernel_rfl

theorem node4344_cond_eq
    (child1224 : Flapjack.WordAlloc.removeDeadStructural input1224 value5 value1 value2 = (output1224, value616, value1))
    (child4343 : Flapjack.WordAlloc.removeDeadStructural input4343 value616 value1 value2 = (output4343, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4344 value5 value1 value2 = (output4344, value1810, value1) := by
  rw [input4344_def, output4344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1224]
  try dsimp only
  rw [child4343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1224_skip, output4343_skip]
  kernel_rfl

theorem node4345_cond_eq
    (child1221 : Flapjack.WordAlloc.removeDeadStructural input1221 value610 value1 value2 = (output1221, value5, value1))
    (child4344 : Flapjack.WordAlloc.removeDeadStructural input4344 value5 value1 value2 = (output4344, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4345 value610 value1 value2 = (output4345, value1810, value1) := by
  rw [input4345_def, output4345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1221]
  try dsimp only
  rw [child4344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1221_skip, output4344_skip]
  kernel_rfl

theorem node4346_cond_eq
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value610 value1 value2 = (output1212, value610, value1))
    (child4345 : Flapjack.WordAlloc.removeDeadStructural input4345 value610 value1 value2 = (output4345, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4346 value610 value1 value2 = (output4346, value1810, value1) := by
  rw [input4346_def, output4346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1212]
  try dsimp only
  rw [child4345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1212_skip, output4345_skip]
  kernel_rfl

theorem node4347_cond_eq
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value609 value1 value2 = (output1211, value610, value1))
    (child4346 : Flapjack.WordAlloc.removeDeadStructural input4346 value610 value1 value2 = (output4346, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4347 value609 value1 value2 = (output4347, value1810, value1) := by
  rw [input4347_def, output4347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1211]
  try dsimp only
  rw [child4346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1211_skip, output4346_skip]
  kernel_rfl

theorem node4348_cond_eq
    (child1210 : Flapjack.WordAlloc.removeDeadStructural input1210 value5 value1 value2 = (output1210, value609, value1))
    (child4347 : Flapjack.WordAlloc.removeDeadStructural input4347 value609 value1 value2 = (output4347, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4348 value5 value1 value2 = (output4348, value1810, value1) := by
  rw [input4348_def, output4348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1210]
  try dsimp only
  rw [child4347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1210_skip, output4347_skip]
  kernel_rfl

theorem node4349_cond_eq
    (child1207 : Flapjack.WordAlloc.removeDeadStructural input1207 value603 value1 value2 = (output1207, value5, value1))
    (child4348 : Flapjack.WordAlloc.removeDeadStructural input4348 value5 value1 value2 = (output4348, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4349 value603 value1 value2 = (output4349, value1810, value1) := by
  rw [input4349_def, output4349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1207]
  try dsimp only
  rw [child4348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1207_skip, output4348_skip]
  kernel_rfl

theorem node4350_cond_eq
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value603 value1 value2 = (output1198, value603, value1))
    (child4349 : Flapjack.WordAlloc.removeDeadStructural input4349 value603 value1 value2 = (output4349, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4350 value603 value1 value2 = (output4350, value1810, value1) := by
  rw [input4350_def, output4350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1198]
  try dsimp only
  rw [child4349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1198_skip, output4349_skip]
  kernel_rfl

theorem node4351_cond_eq
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value602 value1 value2 = (output1197, value603, value1))
    (child4350 : Flapjack.WordAlloc.removeDeadStructural input4350 value603 value1 value2 = (output4350, value1810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4351 value602 value1 value2 = (output4351, value1810, value1) := by
  rw [input4351_def, output4351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1197]
  try dsimp only
  rw [child4350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1197_skip, output4350_skip]
  kernel_rfl

#print axioms node4351_cond_eq
end InitECandidate.Proofs.DeadStages830.Parallel
