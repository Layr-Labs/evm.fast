import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk016
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node4096_cond_eq
    (child4094 : Flapjack.WordAlloc.removeDeadStructural input4094 value2052 value1 value2 = (output4094, value2053, value1))
    (child4095 : Flapjack.WordAlloc.removeDeadStructural input4095 value2053 value1 value2 = (output4095, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4096 value2052 value1 value2 = (output4096, value5, value1) := by
  rw [input4096_def, output4096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4094]
  dsimp only
  rw [child4095]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4094_skip, output4095_skip]
  kernel_rfl

theorem node4097_cond_eq
    (child4093 : Flapjack.WordAlloc.removeDeadStructural input4093 value2051 value1 value2 = (output4093, value2052, value1))
    (child4096 : Flapjack.WordAlloc.removeDeadStructural input4096 value2052 value1 value2 = (output4096, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4097 value2051 value1 value2 = (output4097, value5, value1) := by
  rw [input4097_def, output4097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4093]
  dsimp only
  rw [child4096]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4093_skip, output4096_skip]
  kernel_rfl

theorem node4098_cond_eq
    (child4092 : Flapjack.WordAlloc.removeDeadStructural input4092 value2050 value1 value2 = (output4092, value2051, value1))
    (child4097 : Flapjack.WordAlloc.removeDeadStructural input4097 value2051 value1 value2 = (output4097, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4098 value2050 value1 value2 = (output4098, value5, value1) := by
  rw [input4098_def, output4098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4092]
  dsimp only
  rw [child4097]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4092_skip, output4097_skip]
  kernel_rfl

theorem node4099_cond_eq
    (child4091 : Flapjack.WordAlloc.removeDeadStructural input4091 value2048 value1 value2 = (output4091, value2050, value1))
    (child4098 : Flapjack.WordAlloc.removeDeadStructural input4098 value2050 value1 value2 = (output4098, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4099 value2048 value1 value2 = (output4099, value5, value1) := by
  rw [input4099_def, output4099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4091]
  dsimp only
  rw [child4098]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4091_skip, output4098_skip]
  kernel_rfl

theorem node4100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4100 value5 value1 value2 = (output4100, value2054, value1) := by
  rw [input4100_def, output4100_def]
  kernel_rfl

theorem node4101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4101 value2054 value1 value2 = (output4101, value2055, value1) := by
  rw [input4101_def, output4101_def]
  kernel_rfl

theorem node4102_cond_eq
    (child4100 : Flapjack.WordAlloc.removeDeadStructural input4100 value5 value1 value2 = (output4100, value2054, value1))
    (child4101 : Flapjack.WordAlloc.removeDeadStructural input4101 value2054 value1 value2 = (output4101, value2055, value1)) : Flapjack.WordAlloc.removeDeadStructural input4102 value5 value1 value2 = (output4102, value2055, value1) := by
  rw [input4102_def, output4102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4100]
  dsimp only
  rw [child4101]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4100_skip, output4101_skip]
  kernel_rfl

theorem node4103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4103 value2055 value1 value2 = (output4103, value2056, value1) := by
  rw [input4103_def, output4103_def]
  kernel_rfl

theorem node4104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4104 value2056 value1 value2 = (output4104, value2056, value1) := by
  rw [input4104_def, output4104_def]
  kernel_rfl

theorem node4105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4105 value2056 value1 value2 = (output4105, value2057, value1) := by
  rw [input4105_def, output4105_def]
  kernel_rfl

theorem node4106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4106 value2057 value1 value2 = (output4106, value2058, value1) := by
  rw [input4106_def, output4106_def]
  kernel_rfl

theorem node4107_cond_eq
    (child4105 : Flapjack.WordAlloc.removeDeadStructural input4105 value2056 value1 value2 = (output4105, value2057, value1))
    (child4106 : Flapjack.WordAlloc.removeDeadStructural input4106 value2057 value1 value2 = (output4106, value2058, value1)) : Flapjack.WordAlloc.removeDeadStructural input4107 value2056 value1 value2 = (output4107, value2058, value1) := by
  rw [input4107_def, output4107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4105]
  dsimp only
  rw [child4106]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4105_skip, output4106_skip]
  kernel_rfl

theorem node4108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4108 value2058 value1 value2 = (output4108, value2059, value1) := by
  rw [input4108_def, output4108_def]
  kernel_rfl

theorem node4109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4109 value2059 value1 value2 = (output4109, value2060, value1) := by
  rw [input4109_def, output4109_def]
  kernel_rfl

theorem node4110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4110 value2060 value1 value2 = (output4110, value2061, value1) := by
  rw [input4110_def, output4110_def]
  kernel_rfl

theorem node4111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4111 value2061 value1 value2 = (output4111, value5, value1) := by
  rw [input4111_def, output4111_def]
  kernel_rfl

theorem node4112_cond_eq
    (child4110 : Flapjack.WordAlloc.removeDeadStructural input4110 value2060 value1 value2 = (output4110, value2061, value1))
    (child4111 : Flapjack.WordAlloc.removeDeadStructural input4111 value2061 value1 value2 = (output4111, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4112 value2060 value1 value2 = (output4112, value5, value1) := by
  rw [input4112_def, output4112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4110]
  dsimp only
  rw [child4111]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4110_skip, output4111_skip]
  kernel_rfl

theorem node4113_cond_eq
    (child4109 : Flapjack.WordAlloc.removeDeadStructural input4109 value2059 value1 value2 = (output4109, value2060, value1))
    (child4112 : Flapjack.WordAlloc.removeDeadStructural input4112 value2060 value1 value2 = (output4112, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4113 value2059 value1 value2 = (output4113, value5, value1) := by
  rw [input4113_def, output4113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4109]
  dsimp only
  rw [child4112]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4109_skip, output4112_skip]
  kernel_rfl

theorem node4114_cond_eq
    (child4108 : Flapjack.WordAlloc.removeDeadStructural input4108 value2058 value1 value2 = (output4108, value2059, value1))
    (child4113 : Flapjack.WordAlloc.removeDeadStructural input4113 value2059 value1 value2 = (output4113, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4114 value2058 value1 value2 = (output4114, value5, value1) := by
  rw [input4114_def, output4114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4108]
  dsimp only
  rw [child4113]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4108_skip, output4113_skip]
  kernel_rfl

theorem node4115_cond_eq
    (child4107 : Flapjack.WordAlloc.removeDeadStructural input4107 value2056 value1 value2 = (output4107, value2058, value1))
    (child4114 : Flapjack.WordAlloc.removeDeadStructural input4114 value2058 value1 value2 = (output4114, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4115 value2056 value1 value2 = (output4115, value5, value1) := by
  rw [input4115_def, output4115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4107]
  dsimp only
  rw [child4114]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4107_skip, output4114_skip]
  kernel_rfl

theorem node4116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4116 value5 value1 value2 = (output4116, value2062, value1) := by
  rw [input4116_def, output4116_def]
  kernel_rfl

theorem node4117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4117 value2062 value1 value2 = (output4117, value2063, value1) := by
  rw [input4117_def, output4117_def]
  kernel_rfl

theorem node4118_cond_eq
    (child4116 : Flapjack.WordAlloc.removeDeadStructural input4116 value5 value1 value2 = (output4116, value2062, value1))
    (child4117 : Flapjack.WordAlloc.removeDeadStructural input4117 value2062 value1 value2 = (output4117, value2063, value1)) : Flapjack.WordAlloc.removeDeadStructural input4118 value5 value1 value2 = (output4118, value2063, value1) := by
  rw [input4118_def, output4118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4116]
  dsimp only
  rw [child4117]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4116_skip, output4117_skip]
  kernel_rfl

theorem node4119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4119 value2063 value1 value2 = (output4119, value2064, value1) := by
  rw [input4119_def, output4119_def]
  kernel_rfl

theorem node4120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4120 value2064 value1 value2 = (output4120, value2064, value1) := by
  rw [input4120_def, output4120_def]
  kernel_rfl

theorem node4121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4121 value2064 value1 value2 = (output4121, value2065, value1) := by
  rw [input4121_def, output4121_def]
  kernel_rfl

theorem node4122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4122 value2065 value1 value2 = (output4122, value2066, value1) := by
  rw [input4122_def, output4122_def]
  kernel_rfl

theorem node4123_cond_eq
    (child4121 : Flapjack.WordAlloc.removeDeadStructural input4121 value2064 value1 value2 = (output4121, value2065, value1))
    (child4122 : Flapjack.WordAlloc.removeDeadStructural input4122 value2065 value1 value2 = (output4122, value2066, value1)) : Flapjack.WordAlloc.removeDeadStructural input4123 value2064 value1 value2 = (output4123, value2066, value1) := by
  rw [input4123_def, output4123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4121]
  dsimp only
  rw [child4122]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4121_skip, output4122_skip]
  kernel_rfl

theorem node4124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4124 value2066 value1 value2 = (output4124, value2067, value1) := by
  rw [input4124_def, output4124_def]
  kernel_rfl

theorem node4125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4125 value2067 value1 value2 = (output4125, value2068, value1) := by
  rw [input4125_def, output4125_def]
  kernel_rfl

theorem node4126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4126 value2068 value1 value2 = (output4126, value2069, value1) := by
  rw [input4126_def, output4126_def]
  kernel_rfl

theorem node4127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4127 value2069 value1 value2 = (output4127, value5, value1) := by
  rw [input4127_def, output4127_def]
  kernel_rfl

theorem node4128_cond_eq
    (child4126 : Flapjack.WordAlloc.removeDeadStructural input4126 value2068 value1 value2 = (output4126, value2069, value1))
    (child4127 : Flapjack.WordAlloc.removeDeadStructural input4127 value2069 value1 value2 = (output4127, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4128 value2068 value1 value2 = (output4128, value5, value1) := by
  rw [input4128_def, output4128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4126]
  dsimp only
  rw [child4127]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4126_skip, output4127_skip]
  kernel_rfl

theorem node4129_cond_eq
    (child4125 : Flapjack.WordAlloc.removeDeadStructural input4125 value2067 value1 value2 = (output4125, value2068, value1))
    (child4128 : Flapjack.WordAlloc.removeDeadStructural input4128 value2068 value1 value2 = (output4128, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4129 value2067 value1 value2 = (output4129, value5, value1) := by
  rw [input4129_def, output4129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4125]
  dsimp only
  rw [child4128]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4125_skip, output4128_skip]
  kernel_rfl

theorem node4130_cond_eq
    (child4124 : Flapjack.WordAlloc.removeDeadStructural input4124 value2066 value1 value2 = (output4124, value2067, value1))
    (child4129 : Flapjack.WordAlloc.removeDeadStructural input4129 value2067 value1 value2 = (output4129, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4130 value2066 value1 value2 = (output4130, value5, value1) := by
  rw [input4130_def, output4130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4124]
  dsimp only
  rw [child4129]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4124_skip, output4129_skip]
  kernel_rfl

theorem node4131_cond_eq
    (child4123 : Flapjack.WordAlloc.removeDeadStructural input4123 value2064 value1 value2 = (output4123, value2066, value1))
    (child4130 : Flapjack.WordAlloc.removeDeadStructural input4130 value2066 value1 value2 = (output4130, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4131 value2064 value1 value2 = (output4131, value5, value1) := by
  rw [input4131_def, output4131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4123]
  dsimp only
  rw [child4130]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4123_skip, output4130_skip]
  kernel_rfl

theorem node4132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4132 value5 value1 value2 = (output4132, value2070, value1) := by
  rw [input4132_def, output4132_def]
  kernel_rfl

theorem node4133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4133 value2070 value1 value2 = (output4133, value2071, value1) := by
  rw [input4133_def, output4133_def]
  kernel_rfl

theorem node4134_cond_eq
    (child4132 : Flapjack.WordAlloc.removeDeadStructural input4132 value5 value1 value2 = (output4132, value2070, value1))
    (child4133 : Flapjack.WordAlloc.removeDeadStructural input4133 value2070 value1 value2 = (output4133, value2071, value1)) : Flapjack.WordAlloc.removeDeadStructural input4134 value5 value1 value2 = (output4134, value2071, value1) := by
  rw [input4134_def, output4134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4132]
  dsimp only
  rw [child4133]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4132_skip, output4133_skip]
  kernel_rfl

theorem node4135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4135 value2071 value1 value2 = (output4135, value2072, value1) := by
  rw [input4135_def, output4135_def]
  kernel_rfl

theorem node4136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4136 value2072 value1 value2 = (output4136, value2072, value1) := by
  rw [input4136_def, output4136_def]
  kernel_rfl

theorem node4137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4137 value2072 value1 value2 = (output4137, value2073, value1) := by
  rw [input4137_def, output4137_def]
  kernel_rfl

theorem node4138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4138 value2073 value1 value2 = (output4138, value2074, value1) := by
  rw [input4138_def, output4138_def]
  kernel_rfl

theorem node4139_cond_eq
    (child4137 : Flapjack.WordAlloc.removeDeadStructural input4137 value2072 value1 value2 = (output4137, value2073, value1))
    (child4138 : Flapjack.WordAlloc.removeDeadStructural input4138 value2073 value1 value2 = (output4138, value2074, value1)) : Flapjack.WordAlloc.removeDeadStructural input4139 value2072 value1 value2 = (output4139, value2074, value1) := by
  rw [input4139_def, output4139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4137]
  dsimp only
  rw [child4138]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4137_skip, output4138_skip]
  kernel_rfl

theorem node4140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4140 value2074 value1 value2 = (output4140, value2075, value1) := by
  rw [input4140_def, output4140_def]
  kernel_rfl

theorem node4141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4141 value2075 value1 value2 = (output4141, value2076, value1) := by
  rw [input4141_def, output4141_def]
  kernel_rfl

theorem node4142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4142 value2076 value1 value2 = (output4142, value2077, value1) := by
  rw [input4142_def, output4142_def]
  kernel_rfl

theorem node4143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4143 value2077 value1 value2 = (output4143, value5, value1) := by
  rw [input4143_def, output4143_def]
  kernel_rfl

theorem node4144_cond_eq
    (child4142 : Flapjack.WordAlloc.removeDeadStructural input4142 value2076 value1 value2 = (output4142, value2077, value1))
    (child4143 : Flapjack.WordAlloc.removeDeadStructural input4143 value2077 value1 value2 = (output4143, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4144 value2076 value1 value2 = (output4144, value5, value1) := by
  rw [input4144_def, output4144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4142]
  dsimp only
  rw [child4143]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4142_skip, output4143_skip]
  kernel_rfl

theorem node4145_cond_eq
    (child4141 : Flapjack.WordAlloc.removeDeadStructural input4141 value2075 value1 value2 = (output4141, value2076, value1))
    (child4144 : Flapjack.WordAlloc.removeDeadStructural input4144 value2076 value1 value2 = (output4144, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4145 value2075 value1 value2 = (output4145, value5, value1) := by
  rw [input4145_def, output4145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4141]
  dsimp only
  rw [child4144]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4141_skip, output4144_skip]
  kernel_rfl

theorem node4146_cond_eq
    (child4140 : Flapjack.WordAlloc.removeDeadStructural input4140 value2074 value1 value2 = (output4140, value2075, value1))
    (child4145 : Flapjack.WordAlloc.removeDeadStructural input4145 value2075 value1 value2 = (output4145, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4146 value2074 value1 value2 = (output4146, value5, value1) := by
  rw [input4146_def, output4146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4140]
  dsimp only
  rw [child4145]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4140_skip, output4145_skip]
  kernel_rfl

theorem node4147_cond_eq
    (child4139 : Flapjack.WordAlloc.removeDeadStructural input4139 value2072 value1 value2 = (output4139, value2074, value1))
    (child4146 : Flapjack.WordAlloc.removeDeadStructural input4146 value2074 value1 value2 = (output4146, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4147 value2072 value1 value2 = (output4147, value5, value1) := by
  rw [input4147_def, output4147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4139]
  dsimp only
  rw [child4146]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4139_skip, output4146_skip]
  kernel_rfl

theorem node4148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4148 value5 value1 value2 = (output4148, value2078, value1) := by
  rw [input4148_def, output4148_def]
  kernel_rfl

theorem node4149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4149 value2078 value1 value2 = (output4149, value2079, value1) := by
  rw [input4149_def, output4149_def]
  kernel_rfl

theorem node4150_cond_eq
    (child4148 : Flapjack.WordAlloc.removeDeadStructural input4148 value5 value1 value2 = (output4148, value2078, value1))
    (child4149 : Flapjack.WordAlloc.removeDeadStructural input4149 value2078 value1 value2 = (output4149, value2079, value1)) : Flapjack.WordAlloc.removeDeadStructural input4150 value5 value1 value2 = (output4150, value2079, value1) := by
  rw [input4150_def, output4150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4148]
  dsimp only
  rw [child4149]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4148_skip, output4149_skip]
  kernel_rfl

theorem node4151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4151 value2079 value1 value2 = (output4151, value2080, value1) := by
  rw [input4151_def, output4151_def]
  kernel_rfl

theorem node4152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4152 value2080 value1 value2 = (output4152, value2080, value1) := by
  rw [input4152_def, output4152_def]
  kernel_rfl

theorem node4153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4153 value2080 value1 value2 = (output4153, value2081, value1) := by
  rw [input4153_def, output4153_def]
  kernel_rfl

theorem node4154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4154 value2081 value1 value2 = (output4154, value2082, value1) := by
  rw [input4154_def, output4154_def]
  kernel_rfl

theorem node4155_cond_eq
    (child4153 : Flapjack.WordAlloc.removeDeadStructural input4153 value2080 value1 value2 = (output4153, value2081, value1))
    (child4154 : Flapjack.WordAlloc.removeDeadStructural input4154 value2081 value1 value2 = (output4154, value2082, value1)) : Flapjack.WordAlloc.removeDeadStructural input4155 value2080 value1 value2 = (output4155, value2082, value1) := by
  rw [input4155_def, output4155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4153]
  dsimp only
  rw [child4154]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4153_skip, output4154_skip]
  kernel_rfl

theorem node4156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4156 value2082 value1 value2 = (output4156, value2083, value1) := by
  rw [input4156_def, output4156_def]
  kernel_rfl

theorem node4157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4157 value2083 value1 value2 = (output4157, value2084, value1) := by
  rw [input4157_def, output4157_def]
  kernel_rfl

theorem node4158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4158 value2084 value1 value2 = (output4158, value2085, value1) := by
  rw [input4158_def, output4158_def]
  kernel_rfl

theorem node4159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4159 value2085 value1 value2 = (output4159, value5, value1) := by
  rw [input4159_def, output4159_def]
  kernel_rfl

theorem node4160_cond_eq
    (child4158 : Flapjack.WordAlloc.removeDeadStructural input4158 value2084 value1 value2 = (output4158, value2085, value1))
    (child4159 : Flapjack.WordAlloc.removeDeadStructural input4159 value2085 value1 value2 = (output4159, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4160 value2084 value1 value2 = (output4160, value5, value1) := by
  rw [input4160_def, output4160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4158]
  dsimp only
  rw [child4159]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4158_skip, output4159_skip]
  kernel_rfl

theorem node4161_cond_eq
    (child4157 : Flapjack.WordAlloc.removeDeadStructural input4157 value2083 value1 value2 = (output4157, value2084, value1))
    (child4160 : Flapjack.WordAlloc.removeDeadStructural input4160 value2084 value1 value2 = (output4160, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4161 value2083 value1 value2 = (output4161, value5, value1) := by
  rw [input4161_def, output4161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4157]
  dsimp only
  rw [child4160]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4157_skip, output4160_skip]
  kernel_rfl

theorem node4162_cond_eq
    (child4156 : Flapjack.WordAlloc.removeDeadStructural input4156 value2082 value1 value2 = (output4156, value2083, value1))
    (child4161 : Flapjack.WordAlloc.removeDeadStructural input4161 value2083 value1 value2 = (output4161, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4162 value2082 value1 value2 = (output4162, value5, value1) := by
  rw [input4162_def, output4162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4156]
  dsimp only
  rw [child4161]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4156_skip, output4161_skip]
  kernel_rfl

theorem node4163_cond_eq
    (child4155 : Flapjack.WordAlloc.removeDeadStructural input4155 value2080 value1 value2 = (output4155, value2082, value1))
    (child4162 : Flapjack.WordAlloc.removeDeadStructural input4162 value2082 value1 value2 = (output4162, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4163 value2080 value1 value2 = (output4163, value5, value1) := by
  rw [input4163_def, output4163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4155]
  dsimp only
  rw [child4162]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4155_skip, output4162_skip]
  kernel_rfl

theorem node4164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4164 value5 value1 value2 = (output4164, value2086, value1) := by
  rw [input4164_def, output4164_def]
  kernel_rfl

theorem node4165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4165 value2086 value1 value2 = (output4165, value2087, value1) := by
  rw [input4165_def, output4165_def]
  kernel_rfl

theorem node4166_cond_eq
    (child4164 : Flapjack.WordAlloc.removeDeadStructural input4164 value5 value1 value2 = (output4164, value2086, value1))
    (child4165 : Flapjack.WordAlloc.removeDeadStructural input4165 value2086 value1 value2 = (output4165, value2087, value1)) : Flapjack.WordAlloc.removeDeadStructural input4166 value5 value1 value2 = (output4166, value2087, value1) := by
  rw [input4166_def, output4166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4164]
  dsimp only
  rw [child4165]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4164_skip, output4165_skip]
  kernel_rfl

theorem node4167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4167 value2087 value1 value2 = (output4167, value2088, value1) := by
  rw [input4167_def, output4167_def]
  kernel_rfl

theorem node4168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4168 value2088 value1 value2 = (output4168, value2088, value1) := by
  rw [input4168_def, output4168_def]
  kernel_rfl

theorem node4169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4169 value2088 value1 value2 = (output4169, value2089, value1) := by
  rw [input4169_def, output4169_def]
  kernel_rfl

theorem node4170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4170 value2089 value1 value2 = (output4170, value2090, value1) := by
  rw [input4170_def, output4170_def]
  kernel_rfl

theorem node4171_cond_eq
    (child4169 : Flapjack.WordAlloc.removeDeadStructural input4169 value2088 value1 value2 = (output4169, value2089, value1))
    (child4170 : Flapjack.WordAlloc.removeDeadStructural input4170 value2089 value1 value2 = (output4170, value2090, value1)) : Flapjack.WordAlloc.removeDeadStructural input4171 value2088 value1 value2 = (output4171, value2090, value1) := by
  rw [input4171_def, output4171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4169]
  dsimp only
  rw [child4170]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4169_skip, output4170_skip]
  kernel_rfl

theorem node4172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4172 value2090 value1 value2 = (output4172, value2091, value1) := by
  rw [input4172_def, output4172_def]
  kernel_rfl

theorem node4173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4173 value2091 value1 value2 = (output4173, value2092, value1) := by
  rw [input4173_def, output4173_def]
  kernel_rfl

theorem node4174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4174 value2092 value1 value2 = (output4174, value2093, value1) := by
  rw [input4174_def, output4174_def]
  kernel_rfl

theorem node4175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4175 value2093 value1 value2 = (output4175, value5, value1) := by
  rw [input4175_def, output4175_def]
  kernel_rfl

theorem node4176_cond_eq
    (child4174 : Flapjack.WordAlloc.removeDeadStructural input4174 value2092 value1 value2 = (output4174, value2093, value1))
    (child4175 : Flapjack.WordAlloc.removeDeadStructural input4175 value2093 value1 value2 = (output4175, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4176 value2092 value1 value2 = (output4176, value5, value1) := by
  rw [input4176_def, output4176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4174]
  dsimp only
  rw [child4175]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4174_skip, output4175_skip]
  kernel_rfl

theorem node4177_cond_eq
    (child4173 : Flapjack.WordAlloc.removeDeadStructural input4173 value2091 value1 value2 = (output4173, value2092, value1))
    (child4176 : Flapjack.WordAlloc.removeDeadStructural input4176 value2092 value1 value2 = (output4176, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4177 value2091 value1 value2 = (output4177, value5, value1) := by
  rw [input4177_def, output4177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4173]
  dsimp only
  rw [child4176]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4173_skip, output4176_skip]
  kernel_rfl

theorem node4178_cond_eq
    (child4172 : Flapjack.WordAlloc.removeDeadStructural input4172 value2090 value1 value2 = (output4172, value2091, value1))
    (child4177 : Flapjack.WordAlloc.removeDeadStructural input4177 value2091 value1 value2 = (output4177, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4178 value2090 value1 value2 = (output4178, value5, value1) := by
  rw [input4178_def, output4178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4172]
  dsimp only
  rw [child4177]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4172_skip, output4177_skip]
  kernel_rfl

theorem node4179_cond_eq
    (child4171 : Flapjack.WordAlloc.removeDeadStructural input4171 value2088 value1 value2 = (output4171, value2090, value1))
    (child4178 : Flapjack.WordAlloc.removeDeadStructural input4178 value2090 value1 value2 = (output4178, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4179 value2088 value1 value2 = (output4179, value5, value1) := by
  rw [input4179_def, output4179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4171]
  dsimp only
  rw [child4178]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4171_skip, output4178_skip]
  kernel_rfl

theorem node4180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4180 value5 value1 value2 = (output4180, value2094, value1) := by
  rw [input4180_def, output4180_def]
  kernel_rfl

theorem node4181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4181 value2094 value1 value2 = (output4181, value2095, value1) := by
  rw [input4181_def, output4181_def]
  kernel_rfl

theorem node4182_cond_eq
    (child4180 : Flapjack.WordAlloc.removeDeadStructural input4180 value5 value1 value2 = (output4180, value2094, value1))
    (child4181 : Flapjack.WordAlloc.removeDeadStructural input4181 value2094 value1 value2 = (output4181, value2095, value1)) : Flapjack.WordAlloc.removeDeadStructural input4182 value5 value1 value2 = (output4182, value2095, value1) := by
  rw [input4182_def, output4182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4180]
  dsimp only
  rw [child4181]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4180_skip, output4181_skip]
  kernel_rfl

theorem node4183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4183 value2095 value1 value2 = (output4183, value2096, value1) := by
  rw [input4183_def, output4183_def]
  kernel_rfl

theorem node4184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4184 value2096 value1 value2 = (output4184, value2096, value1) := by
  rw [input4184_def, output4184_def]
  kernel_rfl

theorem node4185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4185 value2096 value1 value2 = (output4185, value2097, value1) := by
  rw [input4185_def, output4185_def]
  kernel_rfl

theorem node4186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4186 value2097 value1 value2 = (output4186, value2098, value1) := by
  rw [input4186_def, output4186_def]
  kernel_rfl

theorem node4187_cond_eq
    (child4185 : Flapjack.WordAlloc.removeDeadStructural input4185 value2096 value1 value2 = (output4185, value2097, value1))
    (child4186 : Flapjack.WordAlloc.removeDeadStructural input4186 value2097 value1 value2 = (output4186, value2098, value1)) : Flapjack.WordAlloc.removeDeadStructural input4187 value2096 value1 value2 = (output4187, value2098, value1) := by
  rw [input4187_def, output4187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4185]
  dsimp only
  rw [child4186]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4185_skip, output4186_skip]
  kernel_rfl

theorem node4188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4188 value2098 value1 value2 = (output4188, value2099, value1) := by
  rw [input4188_def, output4188_def]
  kernel_rfl

theorem node4189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4189 value2099 value1 value2 = (output4189, value2100, value1) := by
  rw [input4189_def, output4189_def]
  kernel_rfl

theorem node4190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4190 value2100 value1 value2 = (output4190, value2101, value1) := by
  rw [input4190_def, output4190_def]
  kernel_rfl

theorem node4191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4191 value2101 value1 value2 = (output4191, value5, value1) := by
  rw [input4191_def, output4191_def]
  kernel_rfl

theorem node4192_cond_eq
    (child4190 : Flapjack.WordAlloc.removeDeadStructural input4190 value2100 value1 value2 = (output4190, value2101, value1))
    (child4191 : Flapjack.WordAlloc.removeDeadStructural input4191 value2101 value1 value2 = (output4191, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4192 value2100 value1 value2 = (output4192, value5, value1) := by
  rw [input4192_def, output4192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4190]
  dsimp only
  rw [child4191]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4190_skip, output4191_skip]
  kernel_rfl

theorem node4193_cond_eq
    (child4189 : Flapjack.WordAlloc.removeDeadStructural input4189 value2099 value1 value2 = (output4189, value2100, value1))
    (child4192 : Flapjack.WordAlloc.removeDeadStructural input4192 value2100 value1 value2 = (output4192, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4193 value2099 value1 value2 = (output4193, value5, value1) := by
  rw [input4193_def, output4193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4189]
  dsimp only
  rw [child4192]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4189_skip, output4192_skip]
  kernel_rfl

theorem node4194_cond_eq
    (child4188 : Flapjack.WordAlloc.removeDeadStructural input4188 value2098 value1 value2 = (output4188, value2099, value1))
    (child4193 : Flapjack.WordAlloc.removeDeadStructural input4193 value2099 value1 value2 = (output4193, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4194 value2098 value1 value2 = (output4194, value5, value1) := by
  rw [input4194_def, output4194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4188]
  dsimp only
  rw [child4193]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4188_skip, output4193_skip]
  kernel_rfl

theorem node4195_cond_eq
    (child4187 : Flapjack.WordAlloc.removeDeadStructural input4187 value2096 value1 value2 = (output4187, value2098, value1))
    (child4194 : Flapjack.WordAlloc.removeDeadStructural input4194 value2098 value1 value2 = (output4194, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4195 value2096 value1 value2 = (output4195, value5, value1) := by
  rw [input4195_def, output4195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4187]
  dsimp only
  rw [child4194]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4187_skip, output4194_skip]
  kernel_rfl

theorem node4196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4196 value5 value1 value2 = (output4196, value2102, value1) := by
  rw [input4196_def, output4196_def]
  kernel_rfl

theorem node4197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4197 value2102 value1 value2 = (output4197, value2103, value1) := by
  rw [input4197_def, output4197_def]
  kernel_rfl

theorem node4198_cond_eq
    (child4196 : Flapjack.WordAlloc.removeDeadStructural input4196 value5 value1 value2 = (output4196, value2102, value1))
    (child4197 : Flapjack.WordAlloc.removeDeadStructural input4197 value2102 value1 value2 = (output4197, value2103, value1)) : Flapjack.WordAlloc.removeDeadStructural input4198 value5 value1 value2 = (output4198, value2103, value1) := by
  rw [input4198_def, output4198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4196]
  dsimp only
  rw [child4197]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4196_skip, output4197_skip]
  kernel_rfl

theorem node4199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4199 value2103 value1 value2 = (output4199, value2104, value1) := by
  rw [input4199_def, output4199_def]
  kernel_rfl

theorem node4200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4200 value2104 value1 value2 = (output4200, value2104, value1) := by
  rw [input4200_def, output4200_def]
  kernel_rfl

theorem node4201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4201 value2104 value1 value2 = (output4201, value2105, value1) := by
  rw [input4201_def, output4201_def]
  kernel_rfl

theorem node4202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4202 value2105 value1 value2 = (output4202, value2106, value1) := by
  rw [input4202_def, output4202_def]
  kernel_rfl

theorem node4203_cond_eq
    (child4201 : Flapjack.WordAlloc.removeDeadStructural input4201 value2104 value1 value2 = (output4201, value2105, value1))
    (child4202 : Flapjack.WordAlloc.removeDeadStructural input4202 value2105 value1 value2 = (output4202, value2106, value1)) : Flapjack.WordAlloc.removeDeadStructural input4203 value2104 value1 value2 = (output4203, value2106, value1) := by
  rw [input4203_def, output4203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4201]
  dsimp only
  rw [child4202]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4201_skip, output4202_skip]
  kernel_rfl

theorem node4204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4204 value2106 value1 value2 = (output4204, value2107, value1) := by
  rw [input4204_def, output4204_def]
  kernel_rfl

theorem node4205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4205 value2107 value1 value2 = (output4205, value2108, value1) := by
  rw [input4205_def, output4205_def]
  kernel_rfl

theorem node4206_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4206 value2108 value1 value2 = (output4206, value2109, value1) := by
  rw [input4206_def, output4206_def]
  kernel_rfl

theorem node4207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4207 value2109 value1 value2 = (output4207, value5, value1) := by
  rw [input4207_def, output4207_def]
  kernel_rfl

theorem node4208_cond_eq
    (child4206 : Flapjack.WordAlloc.removeDeadStructural input4206 value2108 value1 value2 = (output4206, value2109, value1))
    (child4207 : Flapjack.WordAlloc.removeDeadStructural input4207 value2109 value1 value2 = (output4207, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4208 value2108 value1 value2 = (output4208, value5, value1) := by
  rw [input4208_def, output4208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4206]
  dsimp only
  rw [child4207]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4206_skip, output4207_skip]
  kernel_rfl

theorem node4209_cond_eq
    (child4205 : Flapjack.WordAlloc.removeDeadStructural input4205 value2107 value1 value2 = (output4205, value2108, value1))
    (child4208 : Flapjack.WordAlloc.removeDeadStructural input4208 value2108 value1 value2 = (output4208, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4209 value2107 value1 value2 = (output4209, value5, value1) := by
  rw [input4209_def, output4209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4205]
  dsimp only
  rw [child4208]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4205_skip, output4208_skip]
  kernel_rfl

theorem node4210_cond_eq
    (child4204 : Flapjack.WordAlloc.removeDeadStructural input4204 value2106 value1 value2 = (output4204, value2107, value1))
    (child4209 : Flapjack.WordAlloc.removeDeadStructural input4209 value2107 value1 value2 = (output4209, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4210 value2106 value1 value2 = (output4210, value5, value1) := by
  rw [input4210_def, output4210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4204]
  dsimp only
  rw [child4209]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4204_skip, output4209_skip]
  kernel_rfl

theorem node4211_cond_eq
    (child4203 : Flapjack.WordAlloc.removeDeadStructural input4203 value2104 value1 value2 = (output4203, value2106, value1))
    (child4210 : Flapjack.WordAlloc.removeDeadStructural input4210 value2106 value1 value2 = (output4210, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4211 value2104 value1 value2 = (output4211, value5, value1) := by
  rw [input4211_def, output4211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4203]
  dsimp only
  rw [child4210]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4203_skip, output4210_skip]
  kernel_rfl

theorem node4212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4212 value5 value1 value2 = (output4212, value2110, value1) := by
  rw [input4212_def, output4212_def]
  kernel_rfl

theorem node4213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4213 value2110 value1 value2 = (output4213, value2111, value1) := by
  rw [input4213_def, output4213_def]
  kernel_rfl

theorem node4214_cond_eq
    (child4212 : Flapjack.WordAlloc.removeDeadStructural input4212 value5 value1 value2 = (output4212, value2110, value1))
    (child4213 : Flapjack.WordAlloc.removeDeadStructural input4213 value2110 value1 value2 = (output4213, value2111, value1)) : Flapjack.WordAlloc.removeDeadStructural input4214 value5 value1 value2 = (output4214, value2111, value1) := by
  rw [input4214_def, output4214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4212]
  dsimp only
  rw [child4213]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4212_skip, output4213_skip]
  kernel_rfl

theorem node4215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4215 value2111 value1 value2 = (output4215, value2112, value1) := by
  rw [input4215_def, output4215_def]
  kernel_rfl

theorem node4216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4216 value2112 value1 value2 = (output4216, value2112, value1) := by
  rw [input4216_def, output4216_def]
  kernel_rfl

theorem node4217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4217 value2112 value1 value2 = (output4217, value2113, value1) := by
  rw [input4217_def, output4217_def]
  kernel_rfl

theorem node4218_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4218 value2113 value1 value2 = (output4218, value2114, value1) := by
  rw [input4218_def, output4218_def]
  kernel_rfl

theorem node4219_cond_eq
    (child4217 : Flapjack.WordAlloc.removeDeadStructural input4217 value2112 value1 value2 = (output4217, value2113, value1))
    (child4218 : Flapjack.WordAlloc.removeDeadStructural input4218 value2113 value1 value2 = (output4218, value2114, value1)) : Flapjack.WordAlloc.removeDeadStructural input4219 value2112 value1 value2 = (output4219, value2114, value1) := by
  rw [input4219_def, output4219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4217]
  dsimp only
  rw [child4218]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4217_skip, output4218_skip]
  kernel_rfl

theorem node4220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4220 value2114 value1 value2 = (output4220, value2115, value1) := by
  rw [input4220_def, output4220_def]
  kernel_rfl

theorem node4221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4221 value2115 value1 value2 = (output4221, value2116, value1) := by
  rw [input4221_def, output4221_def]
  kernel_rfl

theorem node4222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4222 value2116 value1 value2 = (output4222, value2117, value1) := by
  rw [input4222_def, output4222_def]
  kernel_rfl

theorem node4223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4223 value2117 value1 value2 = (output4223, value5, value1) := by
  rw [input4223_def, output4223_def]
  kernel_rfl

theorem node4224_cond_eq
    (child4222 : Flapjack.WordAlloc.removeDeadStructural input4222 value2116 value1 value2 = (output4222, value2117, value1))
    (child4223 : Flapjack.WordAlloc.removeDeadStructural input4223 value2117 value1 value2 = (output4223, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4224 value2116 value1 value2 = (output4224, value5, value1) := by
  rw [input4224_def, output4224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4222]
  dsimp only
  rw [child4223]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4222_skip, output4223_skip]
  kernel_rfl

theorem node4225_cond_eq
    (child4221 : Flapjack.WordAlloc.removeDeadStructural input4221 value2115 value1 value2 = (output4221, value2116, value1))
    (child4224 : Flapjack.WordAlloc.removeDeadStructural input4224 value2116 value1 value2 = (output4224, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4225 value2115 value1 value2 = (output4225, value5, value1) := by
  rw [input4225_def, output4225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4221]
  dsimp only
  rw [child4224]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4221_skip, output4224_skip]
  kernel_rfl

theorem node4226_cond_eq
    (child4220 : Flapjack.WordAlloc.removeDeadStructural input4220 value2114 value1 value2 = (output4220, value2115, value1))
    (child4225 : Flapjack.WordAlloc.removeDeadStructural input4225 value2115 value1 value2 = (output4225, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4226 value2114 value1 value2 = (output4226, value5, value1) := by
  rw [input4226_def, output4226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4220]
  dsimp only
  rw [child4225]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4220_skip, output4225_skip]
  kernel_rfl

theorem node4227_cond_eq
    (child4219 : Flapjack.WordAlloc.removeDeadStructural input4219 value2112 value1 value2 = (output4219, value2114, value1))
    (child4226 : Flapjack.WordAlloc.removeDeadStructural input4226 value2114 value1 value2 = (output4226, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4227 value2112 value1 value2 = (output4227, value5, value1) := by
  rw [input4227_def, output4227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4219]
  dsimp only
  rw [child4226]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4219_skip, output4226_skip]
  kernel_rfl

theorem node4228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4228 value5 value1 value2 = (output4228, value2118, value1) := by
  rw [input4228_def, output4228_def]
  kernel_rfl

theorem node4229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4229 value2118 value1 value2 = (output4229, value2119, value1) := by
  rw [input4229_def, output4229_def]
  kernel_rfl

theorem node4230_cond_eq
    (child4228 : Flapjack.WordAlloc.removeDeadStructural input4228 value5 value1 value2 = (output4228, value2118, value1))
    (child4229 : Flapjack.WordAlloc.removeDeadStructural input4229 value2118 value1 value2 = (output4229, value2119, value1)) : Flapjack.WordAlloc.removeDeadStructural input4230 value5 value1 value2 = (output4230, value2119, value1) := by
  rw [input4230_def, output4230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4228]
  dsimp only
  rw [child4229]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4228_skip, output4229_skip]
  kernel_rfl

theorem node4231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4231 value2119 value1 value2 = (output4231, value2120, value1) := by
  rw [input4231_def, output4231_def]
  kernel_rfl

theorem node4232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4232 value2120 value1 value2 = (output4232, value2120, value1) := by
  rw [input4232_def, output4232_def]
  kernel_rfl

theorem node4233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4233 value2120 value1 value2 = (output4233, value2121, value1) := by
  rw [input4233_def, output4233_def]
  kernel_rfl

theorem node4234_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4234 value2121 value1 value2 = (output4234, value2122, value1) := by
  rw [input4234_def, output4234_def]
  kernel_rfl

theorem node4235_cond_eq
    (child4233 : Flapjack.WordAlloc.removeDeadStructural input4233 value2120 value1 value2 = (output4233, value2121, value1))
    (child4234 : Flapjack.WordAlloc.removeDeadStructural input4234 value2121 value1 value2 = (output4234, value2122, value1)) : Flapjack.WordAlloc.removeDeadStructural input4235 value2120 value1 value2 = (output4235, value2122, value1) := by
  rw [input4235_def, output4235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4233]
  dsimp only
  rw [child4234]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4233_skip, output4234_skip]
  kernel_rfl

theorem node4236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4236 value2122 value1 value2 = (output4236, value2123, value1) := by
  rw [input4236_def, output4236_def]
  kernel_rfl

theorem node4237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4237 value2123 value1 value2 = (output4237, value2124, value1) := by
  rw [input4237_def, output4237_def]
  kernel_rfl

theorem node4238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4238 value2124 value1 value2 = (output4238, value2125, value1) := by
  rw [input4238_def, output4238_def]
  kernel_rfl

theorem node4239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4239 value2125 value1 value2 = (output4239, value5, value1) := by
  rw [input4239_def, output4239_def]
  kernel_rfl

theorem node4240_cond_eq
    (child4238 : Flapjack.WordAlloc.removeDeadStructural input4238 value2124 value1 value2 = (output4238, value2125, value1))
    (child4239 : Flapjack.WordAlloc.removeDeadStructural input4239 value2125 value1 value2 = (output4239, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4240 value2124 value1 value2 = (output4240, value5, value1) := by
  rw [input4240_def, output4240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4238]
  dsimp only
  rw [child4239]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4238_skip, output4239_skip]
  kernel_rfl

theorem node4241_cond_eq
    (child4237 : Flapjack.WordAlloc.removeDeadStructural input4237 value2123 value1 value2 = (output4237, value2124, value1))
    (child4240 : Flapjack.WordAlloc.removeDeadStructural input4240 value2124 value1 value2 = (output4240, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4241 value2123 value1 value2 = (output4241, value5, value1) := by
  rw [input4241_def, output4241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4237]
  dsimp only
  rw [child4240]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4237_skip, output4240_skip]
  kernel_rfl

theorem node4242_cond_eq
    (child4236 : Flapjack.WordAlloc.removeDeadStructural input4236 value2122 value1 value2 = (output4236, value2123, value1))
    (child4241 : Flapjack.WordAlloc.removeDeadStructural input4241 value2123 value1 value2 = (output4241, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4242 value2122 value1 value2 = (output4242, value5, value1) := by
  rw [input4242_def, output4242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4236]
  dsimp only
  rw [child4241]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4236_skip, output4241_skip]
  kernel_rfl

theorem node4243_cond_eq
    (child4235 : Flapjack.WordAlloc.removeDeadStructural input4235 value2120 value1 value2 = (output4235, value2122, value1))
    (child4242 : Flapjack.WordAlloc.removeDeadStructural input4242 value2122 value1 value2 = (output4242, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4243 value2120 value1 value2 = (output4243, value5, value1) := by
  rw [input4243_def, output4243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4235]
  dsimp only
  rw [child4242]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4235_skip, output4242_skip]
  kernel_rfl

theorem node4244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4244 value5 value1 value2 = (output4244, value2126, value1) := by
  rw [input4244_def, output4244_def]
  kernel_rfl

theorem node4245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4245 value2126 value1 value2 = (output4245, value2127, value1) := by
  rw [input4245_def, output4245_def]
  kernel_rfl

theorem node4246_cond_eq
    (child4244 : Flapjack.WordAlloc.removeDeadStructural input4244 value5 value1 value2 = (output4244, value2126, value1))
    (child4245 : Flapjack.WordAlloc.removeDeadStructural input4245 value2126 value1 value2 = (output4245, value2127, value1)) : Flapjack.WordAlloc.removeDeadStructural input4246 value5 value1 value2 = (output4246, value2127, value1) := by
  rw [input4246_def, output4246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4244]
  dsimp only
  rw [child4245]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4244_skip, output4245_skip]
  kernel_rfl

theorem node4247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4247 value2127 value1 value2 = (output4247, value2128, value1) := by
  rw [input4247_def, output4247_def]
  kernel_rfl

theorem node4248_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4248 value2128 value1 value2 = (output4248, value2128, value1) := by
  rw [input4248_def, output4248_def]
  kernel_rfl

theorem node4249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4249 value2128 value1 value2 = (output4249, value2129, value1) := by
  rw [input4249_def, output4249_def]
  kernel_rfl

theorem node4250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4250 value2129 value1 value2 = (output4250, value2130, value1) := by
  rw [input4250_def, output4250_def]
  kernel_rfl

theorem node4251_cond_eq
    (child4249 : Flapjack.WordAlloc.removeDeadStructural input4249 value2128 value1 value2 = (output4249, value2129, value1))
    (child4250 : Flapjack.WordAlloc.removeDeadStructural input4250 value2129 value1 value2 = (output4250, value2130, value1)) : Flapjack.WordAlloc.removeDeadStructural input4251 value2128 value1 value2 = (output4251, value2130, value1) := by
  rw [input4251_def, output4251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4249]
  dsimp only
  rw [child4250]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4249_skip, output4250_skip]
  kernel_rfl

theorem node4252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4252 value2130 value1 value2 = (output4252, value2131, value1) := by
  rw [input4252_def, output4252_def]
  kernel_rfl

theorem node4253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4253 value2131 value1 value2 = (output4253, value2132, value1) := by
  rw [input4253_def, output4253_def]
  kernel_rfl

theorem node4254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4254 value2132 value1 value2 = (output4254, value2133, value1) := by
  rw [input4254_def, output4254_def]
  kernel_rfl

theorem node4255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4255 value2133 value1 value2 = (output4255, value5, value1) := by
  rw [input4255_def, output4255_def]
  kernel_rfl

theorem node4256_cond_eq
    (child4254 : Flapjack.WordAlloc.removeDeadStructural input4254 value2132 value1 value2 = (output4254, value2133, value1))
    (child4255 : Flapjack.WordAlloc.removeDeadStructural input4255 value2133 value1 value2 = (output4255, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4256 value2132 value1 value2 = (output4256, value5, value1) := by
  rw [input4256_def, output4256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4254]
  dsimp only
  rw [child4255]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4254_skip, output4255_skip]
  kernel_rfl

theorem node4257_cond_eq
    (child4253 : Flapjack.WordAlloc.removeDeadStructural input4253 value2131 value1 value2 = (output4253, value2132, value1))
    (child4256 : Flapjack.WordAlloc.removeDeadStructural input4256 value2132 value1 value2 = (output4256, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4257 value2131 value1 value2 = (output4257, value5, value1) := by
  rw [input4257_def, output4257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4253]
  dsimp only
  rw [child4256]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4253_skip, output4256_skip]
  kernel_rfl

theorem node4258_cond_eq
    (child4252 : Flapjack.WordAlloc.removeDeadStructural input4252 value2130 value1 value2 = (output4252, value2131, value1))
    (child4257 : Flapjack.WordAlloc.removeDeadStructural input4257 value2131 value1 value2 = (output4257, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4258 value2130 value1 value2 = (output4258, value5, value1) := by
  rw [input4258_def, output4258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4252]
  dsimp only
  rw [child4257]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4252_skip, output4257_skip]
  kernel_rfl

theorem node4259_cond_eq
    (child4251 : Flapjack.WordAlloc.removeDeadStructural input4251 value2128 value1 value2 = (output4251, value2130, value1))
    (child4258 : Flapjack.WordAlloc.removeDeadStructural input4258 value2130 value1 value2 = (output4258, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4259 value2128 value1 value2 = (output4259, value5, value1) := by
  rw [input4259_def, output4259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4251]
  dsimp only
  rw [child4258]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4251_skip, output4258_skip]
  kernel_rfl

theorem node4260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4260 value5 value1 value2 = (output4260, value2134, value1) := by
  rw [input4260_def, output4260_def]
  kernel_rfl

theorem node4261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4261 value2134 value1 value2 = (output4261, value2135, value1) := by
  rw [input4261_def, output4261_def]
  kernel_rfl

theorem node4262_cond_eq
    (child4260 : Flapjack.WordAlloc.removeDeadStructural input4260 value5 value1 value2 = (output4260, value2134, value1))
    (child4261 : Flapjack.WordAlloc.removeDeadStructural input4261 value2134 value1 value2 = (output4261, value2135, value1)) : Flapjack.WordAlloc.removeDeadStructural input4262 value5 value1 value2 = (output4262, value2135, value1) := by
  rw [input4262_def, output4262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4260]
  dsimp only
  rw [child4261]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4260_skip, output4261_skip]
  kernel_rfl

theorem node4263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4263 value2135 value1 value2 = (output4263, value2136, value1) := by
  rw [input4263_def, output4263_def]
  kernel_rfl

theorem node4264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4264 value2136 value1 value2 = (output4264, value2136, value1) := by
  rw [input4264_def, output4264_def]
  kernel_rfl

theorem node4265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4265 value2136 value1 value2 = (output4265, value2137, value1) := by
  rw [input4265_def, output4265_def]
  kernel_rfl

theorem node4266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4266 value2137 value1 value2 = (output4266, value2138, value1) := by
  rw [input4266_def, output4266_def]
  kernel_rfl

theorem node4267_cond_eq
    (child4265 : Flapjack.WordAlloc.removeDeadStructural input4265 value2136 value1 value2 = (output4265, value2137, value1))
    (child4266 : Flapjack.WordAlloc.removeDeadStructural input4266 value2137 value1 value2 = (output4266, value2138, value1)) : Flapjack.WordAlloc.removeDeadStructural input4267 value2136 value1 value2 = (output4267, value2138, value1) := by
  rw [input4267_def, output4267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4265]
  dsimp only
  rw [child4266]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4265_skip, output4266_skip]
  kernel_rfl

theorem node4268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4268 value2138 value1 value2 = (output4268, value2139, value1) := by
  rw [input4268_def, output4268_def]
  kernel_rfl

theorem node4269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4269 value2139 value1 value2 = (output4269, value2140, value1) := by
  rw [input4269_def, output4269_def]
  kernel_rfl

theorem node4270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4270 value2140 value1 value2 = (output4270, value2141, value1) := by
  rw [input4270_def, output4270_def]
  kernel_rfl

theorem node4271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4271 value2141 value1 value2 = (output4271, value5, value1) := by
  rw [input4271_def, output4271_def]
  kernel_rfl

theorem node4272_cond_eq
    (child4270 : Flapjack.WordAlloc.removeDeadStructural input4270 value2140 value1 value2 = (output4270, value2141, value1))
    (child4271 : Flapjack.WordAlloc.removeDeadStructural input4271 value2141 value1 value2 = (output4271, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4272 value2140 value1 value2 = (output4272, value5, value1) := by
  rw [input4272_def, output4272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4270]
  dsimp only
  rw [child4271]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4270_skip, output4271_skip]
  kernel_rfl

theorem node4273_cond_eq
    (child4269 : Flapjack.WordAlloc.removeDeadStructural input4269 value2139 value1 value2 = (output4269, value2140, value1))
    (child4272 : Flapjack.WordAlloc.removeDeadStructural input4272 value2140 value1 value2 = (output4272, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4273 value2139 value1 value2 = (output4273, value5, value1) := by
  rw [input4273_def, output4273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4269]
  dsimp only
  rw [child4272]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4269_skip, output4272_skip]
  kernel_rfl

theorem node4274_cond_eq
    (child4268 : Flapjack.WordAlloc.removeDeadStructural input4268 value2138 value1 value2 = (output4268, value2139, value1))
    (child4273 : Flapjack.WordAlloc.removeDeadStructural input4273 value2139 value1 value2 = (output4273, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4274 value2138 value1 value2 = (output4274, value5, value1) := by
  rw [input4274_def, output4274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4268]
  dsimp only
  rw [child4273]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4268_skip, output4273_skip]
  kernel_rfl

theorem node4275_cond_eq
    (child4267 : Flapjack.WordAlloc.removeDeadStructural input4267 value2136 value1 value2 = (output4267, value2138, value1))
    (child4274 : Flapjack.WordAlloc.removeDeadStructural input4274 value2138 value1 value2 = (output4274, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4275 value2136 value1 value2 = (output4275, value5, value1) := by
  rw [input4275_def, output4275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4267]
  dsimp only
  rw [child4274]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4267_skip, output4274_skip]
  kernel_rfl

theorem node4276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4276 value5 value1 value2 = (output4276, value2142, value1) := by
  rw [input4276_def, output4276_def]
  kernel_rfl

theorem node4277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4277 value2142 value1 value2 = (output4277, value2143, value1) := by
  rw [input4277_def, output4277_def]
  kernel_rfl

theorem node4278_cond_eq
    (child4276 : Flapjack.WordAlloc.removeDeadStructural input4276 value5 value1 value2 = (output4276, value2142, value1))
    (child4277 : Flapjack.WordAlloc.removeDeadStructural input4277 value2142 value1 value2 = (output4277, value2143, value1)) : Flapjack.WordAlloc.removeDeadStructural input4278 value5 value1 value2 = (output4278, value2143, value1) := by
  rw [input4278_def, output4278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4276]
  dsimp only
  rw [child4277]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4276_skip, output4277_skip]
  kernel_rfl

theorem node4279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4279 value2143 value1 value2 = (output4279, value2144, value1) := by
  rw [input4279_def, output4279_def]
  kernel_rfl

theorem node4280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4280 value2144 value1 value2 = (output4280, value2144, value1) := by
  rw [input4280_def, output4280_def]
  kernel_rfl

theorem node4281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4281 value2144 value1 value2 = (output4281, value2145, value1) := by
  rw [input4281_def, output4281_def]
  kernel_rfl

theorem node4282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4282 value2145 value1 value2 = (output4282, value2146, value1) := by
  rw [input4282_def, output4282_def]
  kernel_rfl

theorem node4283_cond_eq
    (child4281 : Flapjack.WordAlloc.removeDeadStructural input4281 value2144 value1 value2 = (output4281, value2145, value1))
    (child4282 : Flapjack.WordAlloc.removeDeadStructural input4282 value2145 value1 value2 = (output4282, value2146, value1)) : Flapjack.WordAlloc.removeDeadStructural input4283 value2144 value1 value2 = (output4283, value2146, value1) := by
  rw [input4283_def, output4283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4281]
  dsimp only
  rw [child4282]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4281_skip, output4282_skip]
  kernel_rfl

theorem node4284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4284 value2146 value1 value2 = (output4284, value2147, value1) := by
  rw [input4284_def, output4284_def]
  kernel_rfl

theorem node4285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4285 value2147 value1 value2 = (output4285, value2148, value1) := by
  rw [input4285_def, output4285_def]
  kernel_rfl

theorem node4286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4286 value2148 value1 value2 = (output4286, value2149, value1) := by
  rw [input4286_def, output4286_def]
  kernel_rfl

theorem node4287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4287 value2149 value1 value2 = (output4287, value5, value1) := by
  rw [input4287_def, output4287_def]
  kernel_rfl

theorem node4288_cond_eq
    (child4286 : Flapjack.WordAlloc.removeDeadStructural input4286 value2148 value1 value2 = (output4286, value2149, value1))
    (child4287 : Flapjack.WordAlloc.removeDeadStructural input4287 value2149 value1 value2 = (output4287, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4288 value2148 value1 value2 = (output4288, value5, value1) := by
  rw [input4288_def, output4288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4286]
  dsimp only
  rw [child4287]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4286_skip, output4287_skip]
  kernel_rfl

theorem node4289_cond_eq
    (child4285 : Flapjack.WordAlloc.removeDeadStructural input4285 value2147 value1 value2 = (output4285, value2148, value1))
    (child4288 : Flapjack.WordAlloc.removeDeadStructural input4288 value2148 value1 value2 = (output4288, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4289 value2147 value1 value2 = (output4289, value5, value1) := by
  rw [input4289_def, output4289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4285]
  dsimp only
  rw [child4288]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4285_skip, output4288_skip]
  kernel_rfl

theorem node4290_cond_eq
    (child4284 : Flapjack.WordAlloc.removeDeadStructural input4284 value2146 value1 value2 = (output4284, value2147, value1))
    (child4289 : Flapjack.WordAlloc.removeDeadStructural input4289 value2147 value1 value2 = (output4289, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4290 value2146 value1 value2 = (output4290, value5, value1) := by
  rw [input4290_def, output4290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4284]
  dsimp only
  rw [child4289]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4284_skip, output4289_skip]
  kernel_rfl

theorem node4291_cond_eq
    (child4283 : Flapjack.WordAlloc.removeDeadStructural input4283 value2144 value1 value2 = (output4283, value2146, value1))
    (child4290 : Flapjack.WordAlloc.removeDeadStructural input4290 value2146 value1 value2 = (output4290, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4291 value2144 value1 value2 = (output4291, value5, value1) := by
  rw [input4291_def, output4291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4283]
  dsimp only
  rw [child4290]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4283_skip, output4290_skip]
  kernel_rfl

theorem node4292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4292 value5 value1 value2 = (output4292, value2150, value1) := by
  rw [input4292_def, output4292_def]
  kernel_rfl

theorem node4293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4293 value2150 value1 value2 = (output4293, value2151, value1) := by
  rw [input4293_def, output4293_def]
  kernel_rfl

theorem node4294_cond_eq
    (child4292 : Flapjack.WordAlloc.removeDeadStructural input4292 value5 value1 value2 = (output4292, value2150, value1))
    (child4293 : Flapjack.WordAlloc.removeDeadStructural input4293 value2150 value1 value2 = (output4293, value2151, value1)) : Flapjack.WordAlloc.removeDeadStructural input4294 value5 value1 value2 = (output4294, value2151, value1) := by
  rw [input4294_def, output4294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4292]
  dsimp only
  rw [child4293]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4292_skip, output4293_skip]
  kernel_rfl

theorem node4295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4295 value2151 value1 value2 = (output4295, value2152, value1) := by
  rw [input4295_def, output4295_def]
  kernel_rfl

theorem node4296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4296 value2152 value1 value2 = (output4296, value2152, value1) := by
  rw [input4296_def, output4296_def]
  kernel_rfl

theorem node4297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4297 value2152 value1 value2 = (output4297, value2153, value1) := by
  rw [input4297_def, output4297_def]
  kernel_rfl

theorem node4298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4298 value2153 value1 value2 = (output4298, value2154, value1) := by
  rw [input4298_def, output4298_def]
  kernel_rfl

theorem node4299_cond_eq
    (child4297 : Flapjack.WordAlloc.removeDeadStructural input4297 value2152 value1 value2 = (output4297, value2153, value1))
    (child4298 : Flapjack.WordAlloc.removeDeadStructural input4298 value2153 value1 value2 = (output4298, value2154, value1)) : Flapjack.WordAlloc.removeDeadStructural input4299 value2152 value1 value2 = (output4299, value2154, value1) := by
  rw [input4299_def, output4299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4297]
  dsimp only
  rw [child4298]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4297_skip, output4298_skip]
  kernel_rfl

theorem node4300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4300 value2154 value1 value2 = (output4300, value2155, value1) := by
  rw [input4300_def, output4300_def]
  kernel_rfl

theorem node4301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4301 value2155 value1 value2 = (output4301, value2156, value1) := by
  rw [input4301_def, output4301_def]
  kernel_rfl

theorem node4302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4302 value2156 value1 value2 = (output4302, value2157, value1) := by
  rw [input4302_def, output4302_def]
  kernel_rfl

theorem node4303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4303 value2157 value1 value2 = (output4303, value5, value1) := by
  rw [input4303_def, output4303_def]
  kernel_rfl

theorem node4304_cond_eq
    (child4302 : Flapjack.WordAlloc.removeDeadStructural input4302 value2156 value1 value2 = (output4302, value2157, value1))
    (child4303 : Flapjack.WordAlloc.removeDeadStructural input4303 value2157 value1 value2 = (output4303, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4304 value2156 value1 value2 = (output4304, value5, value1) := by
  rw [input4304_def, output4304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4302]
  dsimp only
  rw [child4303]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4302_skip, output4303_skip]
  kernel_rfl

theorem node4305_cond_eq
    (child4301 : Flapjack.WordAlloc.removeDeadStructural input4301 value2155 value1 value2 = (output4301, value2156, value1))
    (child4304 : Flapjack.WordAlloc.removeDeadStructural input4304 value2156 value1 value2 = (output4304, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4305 value2155 value1 value2 = (output4305, value5, value1) := by
  rw [input4305_def, output4305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4301]
  dsimp only
  rw [child4304]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4301_skip, output4304_skip]
  kernel_rfl

theorem node4306_cond_eq
    (child4300 : Flapjack.WordAlloc.removeDeadStructural input4300 value2154 value1 value2 = (output4300, value2155, value1))
    (child4305 : Flapjack.WordAlloc.removeDeadStructural input4305 value2155 value1 value2 = (output4305, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4306 value2154 value1 value2 = (output4306, value5, value1) := by
  rw [input4306_def, output4306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4300]
  dsimp only
  rw [child4305]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4300_skip, output4305_skip]
  kernel_rfl

theorem node4307_cond_eq
    (child4299 : Flapjack.WordAlloc.removeDeadStructural input4299 value2152 value1 value2 = (output4299, value2154, value1))
    (child4306 : Flapjack.WordAlloc.removeDeadStructural input4306 value2154 value1 value2 = (output4306, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4307 value2152 value1 value2 = (output4307, value5, value1) := by
  rw [input4307_def, output4307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4299]
  dsimp only
  rw [child4306]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4299_skip, output4306_skip]
  kernel_rfl

theorem node4308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4308 value5 value1 value2 = (output4308, value2158, value1) := by
  rw [input4308_def, output4308_def]
  kernel_rfl

theorem node4309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4309 value2158 value1 value2 = (output4309, value2159, value1) := by
  rw [input4309_def, output4309_def]
  kernel_rfl

theorem node4310_cond_eq
    (child4308 : Flapjack.WordAlloc.removeDeadStructural input4308 value5 value1 value2 = (output4308, value2158, value1))
    (child4309 : Flapjack.WordAlloc.removeDeadStructural input4309 value2158 value1 value2 = (output4309, value2159, value1)) : Flapjack.WordAlloc.removeDeadStructural input4310 value5 value1 value2 = (output4310, value2159, value1) := by
  rw [input4310_def, output4310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4308]
  dsimp only
  rw [child4309]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4308_skip, output4309_skip]
  kernel_rfl

theorem node4311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4311 value2159 value1 value2 = (output4311, value2160, value1) := by
  rw [input4311_def, output4311_def]
  kernel_rfl

theorem node4312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4312 value2160 value1 value2 = (output4312, value2160, value1) := by
  rw [input4312_def, output4312_def]
  kernel_rfl

theorem node4313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4313 value2160 value1 value2 = (output4313, value2161, value1) := by
  rw [input4313_def, output4313_def]
  kernel_rfl

theorem node4314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4314 value2161 value1 value2 = (output4314, value2162, value1) := by
  rw [input4314_def, output4314_def]
  kernel_rfl

theorem node4315_cond_eq
    (child4313 : Flapjack.WordAlloc.removeDeadStructural input4313 value2160 value1 value2 = (output4313, value2161, value1))
    (child4314 : Flapjack.WordAlloc.removeDeadStructural input4314 value2161 value1 value2 = (output4314, value2162, value1)) : Flapjack.WordAlloc.removeDeadStructural input4315 value2160 value1 value2 = (output4315, value2162, value1) := by
  rw [input4315_def, output4315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4313]
  dsimp only
  rw [child4314]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4313_skip, output4314_skip]
  kernel_rfl

theorem node4316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4316 value2162 value1 value2 = (output4316, value2163, value1) := by
  rw [input4316_def, output4316_def]
  kernel_rfl

theorem node4317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4317 value2163 value1 value2 = (output4317, value2164, value1) := by
  rw [input4317_def, output4317_def]
  kernel_rfl

theorem node4318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4318 value2164 value1 value2 = (output4318, value2165, value1) := by
  rw [input4318_def, output4318_def]
  kernel_rfl

theorem node4319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4319 value2165 value1 value2 = (output4319, value5, value1) := by
  rw [input4319_def, output4319_def]
  kernel_rfl

theorem node4320_cond_eq
    (child4318 : Flapjack.WordAlloc.removeDeadStructural input4318 value2164 value1 value2 = (output4318, value2165, value1))
    (child4319 : Flapjack.WordAlloc.removeDeadStructural input4319 value2165 value1 value2 = (output4319, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4320 value2164 value1 value2 = (output4320, value5, value1) := by
  rw [input4320_def, output4320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4318]
  dsimp only
  rw [child4319]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4318_skip, output4319_skip]
  kernel_rfl

theorem node4321_cond_eq
    (child4317 : Flapjack.WordAlloc.removeDeadStructural input4317 value2163 value1 value2 = (output4317, value2164, value1))
    (child4320 : Flapjack.WordAlloc.removeDeadStructural input4320 value2164 value1 value2 = (output4320, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4321 value2163 value1 value2 = (output4321, value5, value1) := by
  rw [input4321_def, output4321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4317]
  dsimp only
  rw [child4320]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4317_skip, output4320_skip]
  kernel_rfl

theorem node4322_cond_eq
    (child4316 : Flapjack.WordAlloc.removeDeadStructural input4316 value2162 value1 value2 = (output4316, value2163, value1))
    (child4321 : Flapjack.WordAlloc.removeDeadStructural input4321 value2163 value1 value2 = (output4321, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4322 value2162 value1 value2 = (output4322, value5, value1) := by
  rw [input4322_def, output4322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4316]
  dsimp only
  rw [child4321]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4316_skip, output4321_skip]
  kernel_rfl

theorem node4323_cond_eq
    (child4315 : Flapjack.WordAlloc.removeDeadStructural input4315 value2160 value1 value2 = (output4315, value2162, value1))
    (child4322 : Flapjack.WordAlloc.removeDeadStructural input4322 value2162 value1 value2 = (output4322, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4323 value2160 value1 value2 = (output4323, value5, value1) := by
  rw [input4323_def, output4323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4315]
  dsimp only
  rw [child4322]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4315_skip, output4322_skip]
  kernel_rfl

theorem node4324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4324 value5 value1 value2 = (output4324, value2166, value1) := by
  rw [input4324_def, output4324_def]
  kernel_rfl

theorem node4325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4325 value2166 value1 value2 = (output4325, value2167, value1) := by
  rw [input4325_def, output4325_def]
  kernel_rfl

theorem node4326_cond_eq
    (child4324 : Flapjack.WordAlloc.removeDeadStructural input4324 value5 value1 value2 = (output4324, value2166, value1))
    (child4325 : Flapjack.WordAlloc.removeDeadStructural input4325 value2166 value1 value2 = (output4325, value2167, value1)) : Flapjack.WordAlloc.removeDeadStructural input4326 value5 value1 value2 = (output4326, value2167, value1) := by
  rw [input4326_def, output4326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4324]
  dsimp only
  rw [child4325]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4324_skip, output4325_skip]
  kernel_rfl

theorem node4327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4327 value2167 value1 value2 = (output4327, value2168, value1) := by
  rw [input4327_def, output4327_def]
  kernel_rfl

theorem node4328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4328 value2168 value1 value2 = (output4328, value2168, value1) := by
  rw [input4328_def, output4328_def]
  kernel_rfl

theorem node4329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4329 value2168 value1 value2 = (output4329, value2169, value1) := by
  rw [input4329_def, output4329_def]
  kernel_rfl

theorem node4330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4330 value2169 value1 value2 = (output4330, value2170, value1) := by
  rw [input4330_def, output4330_def]
  kernel_rfl

theorem node4331_cond_eq
    (child4329 : Flapjack.WordAlloc.removeDeadStructural input4329 value2168 value1 value2 = (output4329, value2169, value1))
    (child4330 : Flapjack.WordAlloc.removeDeadStructural input4330 value2169 value1 value2 = (output4330, value2170, value1)) : Flapjack.WordAlloc.removeDeadStructural input4331 value2168 value1 value2 = (output4331, value2170, value1) := by
  rw [input4331_def, output4331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4329]
  dsimp only
  rw [child4330]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4329_skip, output4330_skip]
  kernel_rfl

theorem node4332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4332 value2170 value1 value2 = (output4332, value2171, value1) := by
  rw [input4332_def, output4332_def]
  kernel_rfl

theorem node4333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4333 value2171 value1 value2 = (output4333, value2172, value1) := by
  rw [input4333_def, output4333_def]
  kernel_rfl

theorem node4334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4334 value2172 value1 value2 = (output4334, value2173, value1) := by
  rw [input4334_def, output4334_def]
  kernel_rfl

theorem node4335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4335 value2173 value1 value2 = (output4335, value5, value1) := by
  rw [input4335_def, output4335_def]
  kernel_rfl

theorem node4336_cond_eq
    (child4334 : Flapjack.WordAlloc.removeDeadStructural input4334 value2172 value1 value2 = (output4334, value2173, value1))
    (child4335 : Flapjack.WordAlloc.removeDeadStructural input4335 value2173 value1 value2 = (output4335, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4336 value2172 value1 value2 = (output4336, value5, value1) := by
  rw [input4336_def, output4336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4334]
  dsimp only
  rw [child4335]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4334_skip, output4335_skip]
  kernel_rfl

theorem node4337_cond_eq
    (child4333 : Flapjack.WordAlloc.removeDeadStructural input4333 value2171 value1 value2 = (output4333, value2172, value1))
    (child4336 : Flapjack.WordAlloc.removeDeadStructural input4336 value2172 value1 value2 = (output4336, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4337 value2171 value1 value2 = (output4337, value5, value1) := by
  rw [input4337_def, output4337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4333]
  dsimp only
  rw [child4336]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4333_skip, output4336_skip]
  kernel_rfl

theorem node4338_cond_eq
    (child4332 : Flapjack.WordAlloc.removeDeadStructural input4332 value2170 value1 value2 = (output4332, value2171, value1))
    (child4337 : Flapjack.WordAlloc.removeDeadStructural input4337 value2171 value1 value2 = (output4337, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4338 value2170 value1 value2 = (output4338, value5, value1) := by
  rw [input4338_def, output4338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4332]
  dsimp only
  rw [child4337]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4332_skip, output4337_skip]
  kernel_rfl

theorem node4339_cond_eq
    (child4331 : Flapjack.WordAlloc.removeDeadStructural input4331 value2168 value1 value2 = (output4331, value2170, value1))
    (child4338 : Flapjack.WordAlloc.removeDeadStructural input4338 value2170 value1 value2 = (output4338, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4339 value2168 value1 value2 = (output4339, value5, value1) := by
  rw [input4339_def, output4339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4331]
  dsimp only
  rw [child4338]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4331_skip, output4338_skip]
  kernel_rfl

theorem node4340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4340 value5 value1 value2 = (output4340, value2174, value1) := by
  rw [input4340_def, output4340_def]
  kernel_rfl

theorem node4341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4341 value2174 value1 value2 = (output4341, value2175, value1) := by
  rw [input4341_def, output4341_def]
  kernel_rfl

theorem node4342_cond_eq
    (child4340 : Flapjack.WordAlloc.removeDeadStructural input4340 value5 value1 value2 = (output4340, value2174, value1))
    (child4341 : Flapjack.WordAlloc.removeDeadStructural input4341 value2174 value1 value2 = (output4341, value2175, value1)) : Flapjack.WordAlloc.removeDeadStructural input4342 value5 value1 value2 = (output4342, value2175, value1) := by
  rw [input4342_def, output4342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4340]
  dsimp only
  rw [child4341]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4340_skip, output4341_skip]
  kernel_rfl

theorem node4343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4343 value2175 value1 value2 = (output4343, value2176, value1) := by
  rw [input4343_def, output4343_def]
  kernel_rfl

theorem node4344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4344 value2176 value1 value2 = (output4344, value2176, value1) := by
  rw [input4344_def, output4344_def]
  kernel_rfl

theorem node4345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4345 value2176 value1 value2 = (output4345, value2177, value1) := by
  rw [input4345_def, output4345_def]
  kernel_rfl

theorem node4346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4346 value2177 value1 value2 = (output4346, value2178, value1) := by
  rw [input4346_def, output4346_def]
  kernel_rfl

theorem node4347_cond_eq
    (child4345 : Flapjack.WordAlloc.removeDeadStructural input4345 value2176 value1 value2 = (output4345, value2177, value1))
    (child4346 : Flapjack.WordAlloc.removeDeadStructural input4346 value2177 value1 value2 = (output4346, value2178, value1)) : Flapjack.WordAlloc.removeDeadStructural input4347 value2176 value1 value2 = (output4347, value2178, value1) := by
  rw [input4347_def, output4347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4345]
  dsimp only
  rw [child4346]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4345_skip, output4346_skip]
  kernel_rfl

theorem node4348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4348 value2178 value1 value2 = (output4348, value2179, value1) := by
  rw [input4348_def, output4348_def]
  kernel_rfl

theorem node4349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4349 value2179 value1 value2 = (output4349, value2180, value1) := by
  rw [input4349_def, output4349_def]
  kernel_rfl

theorem node4350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4350 value2180 value1 value2 = (output4350, value2181, value1) := by
  rw [input4350_def, output4350_def]
  kernel_rfl

theorem node4351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4351 value2181 value1 value2 = (output4351, value5, value1) := by
  rw [input4351_def, output4351_def]
  kernel_rfl

#print axioms node4351_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
