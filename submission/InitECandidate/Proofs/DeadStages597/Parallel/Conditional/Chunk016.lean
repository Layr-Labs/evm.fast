import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk016
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node4096_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4096 value743 value1 value2 = (output4096, value749, value1) := by
  rw [input4096_def, output4096_def]
  kernel_rfl

theorem node4097_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4097 value749 value1 value2 = (output4097, value749, value1) := by
  rw [input4097_def, output4097_def]
  kernel_rfl

theorem node4098_cond_eq
    (child4096 : Flapjack.WordAlloc.removeDeadStructural input4096 value743 value1 value2 = (output4096, value749, value1))
    (child4097 : Flapjack.WordAlloc.removeDeadStructural input4097 value749 value1 value2 = (output4097, value749, value1)) : Flapjack.WordAlloc.removeDeadStructural input4098 value743 value1 value2 = (output4098, value749, value1) := by
  rw [input4098_def, output4098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4096]
  try dsimp only
  rw [child4097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4096_skip, output4097_skip]
  kernel_rfl

theorem node4099_cond_eq
    (child4095 : Flapjack.WordAlloc.removeDeadStructural input4095 value743 value1 value2 = (output4095, value743, value1))
    (child4098 : Flapjack.WordAlloc.removeDeadStructural input4098 value743 value1 value2 = (output4098, value749, value1)) : Flapjack.WordAlloc.removeDeadStructural input4099 value743 value1 value2 = (output4099, value749, value1) := by
  rw [input4099_def, output4099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4095]
  try dsimp only
  rw [child4098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4095_skip, output4098_skip]
  kernel_rfl

theorem node4100_cond_eq
    (child4094 : Flapjack.WordAlloc.removeDeadStructural input4094 value743 value1 value2 = (output4094, value743, value1))
    (child4099 : Flapjack.WordAlloc.removeDeadStructural input4099 value743 value1 value2 = (output4099, value749, value1)) : Flapjack.WordAlloc.removeDeadStructural input4100 value743 value1 value2 = (output4100, value749, value1) := by
  rw [input4100_def, output4100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4094]
  try dsimp only
  rw [child4099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4094_skip, output4099_skip]
  kernel_rfl

theorem node4101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4101 value749 value1 value2 = (output4101, value750, value1) := by
  rw [input4101_def, output4101_def]
  kernel_rfl

theorem node4102_cond_eq
    (child4100 : Flapjack.WordAlloc.removeDeadStructural input4100 value743 value1 value2 = (output4100, value749, value1))
    (child4101 : Flapjack.WordAlloc.removeDeadStructural input4101 value749 value1 value2 = (output4101, value750, value1)) : Flapjack.WordAlloc.removeDeadStructural input4102 value743 value1 value2 = (output4102, value750, value1) := by
  rw [input4102_def, output4102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4100]
  try dsimp only
  rw [child4101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4100_skip, output4101_skip]
  kernel_rfl

theorem node4103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4103 value750 value1 value2 = (output4103, value750, value1) := by
  rw [input4103_def, output4103_def]
  kernel_rfl

theorem node4104_cond_eq
    (child4102 : Flapjack.WordAlloc.removeDeadStructural input4102 value743 value1 value2 = (output4102, value750, value1))
    (child4103 : Flapjack.WordAlloc.removeDeadStructural input4103 value750 value1 value2 = (output4103, value750, value1)) : Flapjack.WordAlloc.removeDeadStructural input4104 value743 value1 value2 = (output4104, value750, value1) := by
  rw [input4104_def, output4104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4102]
  try dsimp only
  rw [child4103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4102_skip, output4103_skip]
  kernel_rfl

theorem node4105_cond_eq
    (child4093 : Flapjack.WordAlloc.removeDeadStructural input4093 value743 value1 value2 = (output4093, value748, value1))
    (child4104 : Flapjack.WordAlloc.removeDeadStructural input4104 value743 value1 value2 = (output4104, value750, value1)) : Flapjack.WordAlloc.removeDeadStructural input4105 value743 value1 value2 = (output4105, value752, value1) := by
  rw [input4105_def, output4105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4093]
  try dsimp only
  rw [child4104]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4093_skip, output4104_skip]
  kernel_rfl

theorem node4106_cond_eq
    (child4064 : Flapjack.WordAlloc.removeDeadStructural input4064 value743 value1 value2 = (output4064, value743, value1))
    (child4105 : Flapjack.WordAlloc.removeDeadStructural input4105 value743 value1 value2 = (output4105, value752, value1)) : Flapjack.WordAlloc.removeDeadStructural input4106 value743 value1 value2 = (output4106, value752, value1) := by
  rw [input4106_def, output4106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4064]
  try dsimp only
  rw [child4105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4064_skip, output4105_skip]
  kernel_rfl

theorem node4107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4107 value752 value1 value2 = (output4107, value750, value1) := by
  rw [input4107_def, output4107_def]
  kernel_rfl

theorem node4108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4108 value750 value1 value2 = (output4108, value753, value1) := by
  rw [input4108_def, output4108_def]
  kernel_rfl

theorem node4109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4109 value753 value1 value2 = (output4109, value753, value1) := by
  rw [input4109_def, output4109_def]
  kernel_rfl

theorem node4110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4110 value753 value1 value2 = (output4110, value753, value1) := by
  rw [input4110_def, output4110_def]
  kernel_rfl

theorem node4111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4111 value753 value1 value2 = (output4111, value753, value1) := by
  rw [input4111_def, output4111_def]
  kernel_rfl

theorem node4112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4112 value753 value1 value2 = (output4112, value753, value1) := by
  rw [input4112_def, output4112_def]
  kernel_rfl

theorem node4113_cond_eq
    (child4111 : Flapjack.WordAlloc.removeDeadStructural input4111 value753 value1 value2 = (output4111, value753, value1))
    (child4112 : Flapjack.WordAlloc.removeDeadStructural input4112 value753 value1 value2 = (output4112, value753, value1)) : Flapjack.WordAlloc.removeDeadStructural input4113 value753 value1 value2 = (output4113, value753, value1) := by
  rw [input4113_def, output4113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4111]
  try dsimp only
  rw [child4112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4111_skip, output4112_skip]
  kernel_rfl

theorem node4114_cond_eq
    (child4110 : Flapjack.WordAlloc.removeDeadStructural input4110 value753 value1 value2 = (output4110, value753, value1))
    (child4113 : Flapjack.WordAlloc.removeDeadStructural input4113 value753 value1 value2 = (output4113, value753, value1)) : Flapjack.WordAlloc.removeDeadStructural input4114 value753 value1 value2 = (output4114, value753, value1) := by
  rw [input4114_def, output4114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4110]
  try dsimp only
  rw [child4113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4110_skip, output4113_skip]
  kernel_rfl

theorem node4115_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4115 value753 value1 value2 = (output4115, value753, value1) := by
  rw [input4115_def, output4115_def]
  kernel_rfl

theorem node4116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4116 value753 value1 value2 = (output4116, value753, value1) := by
  rw [input4116_def, output4116_def]
  kernel_rfl

theorem node4117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4117 value753 value1 value2 = (output4117, value748, value1) := by
  rw [input4117_def, output4117_def]
  kernel_rfl

theorem node4118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4118 value748 value1 value2 = (output4118, value748, value1) := by
  rw [input4118_def, output4118_def]
  kernel_rfl

theorem node4119_cond_eq
    (child4117 : Flapjack.WordAlloc.removeDeadStructural input4117 value753 value1 value2 = (output4117, value748, value1))
    (child4118 : Flapjack.WordAlloc.removeDeadStructural input4118 value748 value1 value2 = (output4118, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input4119 value753 value1 value2 = (output4119, value748, value1) := by
  rw [input4119_def, output4119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4117]
  try dsimp only
  rw [child4118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4117_skip, output4118_skip]
  kernel_rfl

theorem node4120_cond_eq
    (child4116 : Flapjack.WordAlloc.removeDeadStructural input4116 value753 value1 value2 = (output4116, value753, value1))
    (child4119 : Flapjack.WordAlloc.removeDeadStructural input4119 value753 value1 value2 = (output4119, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input4120 value753 value1 value2 = (output4120, value748, value1) := by
  rw [input4120_def, output4120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4116]
  try dsimp only
  rw [child4119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4116_skip, output4119_skip]
  kernel_rfl

theorem node4121_cond_eq
    (child4115 : Flapjack.WordAlloc.removeDeadStructural input4115 value753 value1 value2 = (output4115, value753, value1))
    (child4120 : Flapjack.WordAlloc.removeDeadStructural input4120 value753 value1 value2 = (output4120, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input4121 value753 value1 value2 = (output4121, value748, value1) := by
  rw [input4121_def, output4121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4115]
  try dsimp only
  rw [child4120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4115_skip, output4120_skip]
  kernel_rfl

theorem node4122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4122 value748 value1 value2 = (output4122, value754, value1) := by
  rw [input4122_def, output4122_def]
  kernel_rfl

theorem node4123_cond_eq
    (child4121 : Flapjack.WordAlloc.removeDeadStructural input4121 value753 value1 value2 = (output4121, value748, value1))
    (child4122 : Flapjack.WordAlloc.removeDeadStructural input4122 value748 value1 value2 = (output4122, value754, value1)) : Flapjack.WordAlloc.removeDeadStructural input4123 value753 value1 value2 = (output4123, value754, value1) := by
  rw [input4123_def, output4123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4121]
  try dsimp only
  rw [child4122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4121_skip, output4122_skip]
  kernel_rfl

theorem node4124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4124 value754 value1 value2 = (output4124, value755, value1) := by
  rw [input4124_def, output4124_def]
  kernel_rfl

theorem node4125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4125 value755 value1 value2 = (output4125, value756, value1) := by
  rw [input4125_def, output4125_def]
  kernel_rfl

theorem node4126_cond_eq
    (child4124 : Flapjack.WordAlloc.removeDeadStructural input4124 value754 value1 value2 = (output4124, value755, value1))
    (child4125 : Flapjack.WordAlloc.removeDeadStructural input4125 value755 value1 value2 = (output4125, value756, value1)) : Flapjack.WordAlloc.removeDeadStructural input4126 value754 value1 value2 = (output4126, value756, value1) := by
  rw [input4126_def, output4126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4124]
  try dsimp only
  rw [child4125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4124_skip, output4125_skip]
  kernel_rfl

theorem node4127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4127 value756 value1 value2 = (output4127, value754, value1) := by
  rw [input4127_def, output4127_def]
  kernel_rfl

theorem node4128_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4128 value754 value1 value2 = (output4128, value754, value1) := by
  rw [input4128_def, output4128_def]
  kernel_rfl

theorem node4129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4129 value754 value1 value2 = (output4129, value757, value1) := by
  rw [input4129_def, output4129_def]
  kernel_rfl

theorem node4130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4130 value757 value1 value2 = (output4130, value757, value1) := by
  rw [input4130_def, output4130_def]
  kernel_rfl

theorem node4131_cond_eq
    (child4129 : Flapjack.WordAlloc.removeDeadStructural input4129 value754 value1 value2 = (output4129, value757, value1))
    (child4130 : Flapjack.WordAlloc.removeDeadStructural input4130 value757 value1 value2 = (output4130, value757, value1)) : Flapjack.WordAlloc.removeDeadStructural input4131 value754 value1 value2 = (output4131, value757, value1) := by
  rw [input4131_def, output4131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4129]
  try dsimp only
  rw [child4130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4129_skip, output4130_skip]
  kernel_rfl

theorem node4132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4132 value757 value1 value2 = (output4132, value758, value1) := by
  rw [input4132_def, output4132_def]
  kernel_rfl

theorem node4133_cond_eq
    (child4131 : Flapjack.WordAlloc.removeDeadStructural input4131 value754 value1 value2 = (output4131, value757, value1))
    (child4132 : Flapjack.WordAlloc.removeDeadStructural input4132 value757 value1 value2 = (output4132, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4133 value754 value1 value2 = (output4133, value758, value1) := by
  rw [input4133_def, output4133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4131]
  try dsimp only
  rw [child4132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4131_skip, output4132_skip]
  kernel_rfl

theorem node4134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4134 value758 value1 value2 = (output4134, value758, value1) := by
  rw [input4134_def, output4134_def]
  kernel_rfl

theorem node4135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4135 value758 value1 value2 = (output4135, value758, value1) := by
  rw [input4135_def, output4135_def]
  kernel_rfl

theorem node4136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4136 value758 value1 value2 = (output4136, value758, value1) := by
  rw [input4136_def, output4136_def]
  kernel_rfl

theorem node4137_cond_eq
    (child4135 : Flapjack.WordAlloc.removeDeadStructural input4135 value758 value1 value2 = (output4135, value758, value1))
    (child4136 : Flapjack.WordAlloc.removeDeadStructural input4136 value758 value1 value2 = (output4136, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4137 value758 value1 value2 = (output4137, value758, value1) := by
  rw [input4137_def, output4137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4135]
  try dsimp only
  rw [child4136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4135_skip, output4136_skip]
  kernel_rfl

theorem node4138_cond_eq
    (child4134 : Flapjack.WordAlloc.removeDeadStructural input4134 value758 value1 value2 = (output4134, value758, value1))
    (child4137 : Flapjack.WordAlloc.removeDeadStructural input4137 value758 value1 value2 = (output4137, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4138 value758 value1 value2 = (output4138, value758, value1) := by
  rw [input4138_def, output4138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4134]
  try dsimp only
  rw [child4137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4134_skip, output4137_skip]
  kernel_rfl

theorem node4139_cond_eq
    (child4133 : Flapjack.WordAlloc.removeDeadStructural input4133 value754 value1 value2 = (output4133, value758, value1))
    (child4138 : Flapjack.WordAlloc.removeDeadStructural input4138 value758 value1 value2 = (output4138, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4139 value754 value1 value2 = (output4139, value758, value1) := by
  rw [input4139_def, output4139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4133]
  try dsimp only
  rw [child4138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4133_skip, output4138_skip]
  kernel_rfl

theorem node4140_cond_eq
    (child4128 : Flapjack.WordAlloc.removeDeadStructural input4128 value754 value1 value2 = (output4128, value754, value1))
    (child4139 : Flapjack.WordAlloc.removeDeadStructural input4139 value754 value1 value2 = (output4139, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4140 value754 value1 value2 = (output4140, value758, value1) := by
  rw [input4140_def, output4140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4128]
  try dsimp only
  rw [child4139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4128_skip, output4139_skip]
  kernel_rfl

theorem node4141_cond_eq
    (child4127 : Flapjack.WordAlloc.removeDeadStructural input4127 value756 value1 value2 = (output4127, value754, value1))
    (child4140 : Flapjack.WordAlloc.removeDeadStructural input4140 value754 value1 value2 = (output4140, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4141 value756 value1 value2 = (output4141, value758, value1) := by
  rw [input4141_def, output4141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4127]
  try dsimp only
  rw [child4140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4127_skip, output4140_skip]
  kernel_rfl

theorem node4142_cond_eq
    (child4126 : Flapjack.WordAlloc.removeDeadStructural input4126 value754 value1 value2 = (output4126, value756, value1))
    (child4141 : Flapjack.WordAlloc.removeDeadStructural input4141 value756 value1 value2 = (output4141, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4142 value754 value1 value2 = (output4142, value758, value1) := by
  rw [input4142_def, output4142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4126]
  try dsimp only
  rw [child4141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4126_skip, output4141_skip]
  kernel_rfl

theorem node4143_cond_eq
    (child4123 : Flapjack.WordAlloc.removeDeadStructural input4123 value753 value1 value2 = (output4123, value754, value1))
    (child4142 : Flapjack.WordAlloc.removeDeadStructural input4142 value754 value1 value2 = (output4142, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4143 value753 value1 value2 = (output4143, value758, value1) := by
  rw [input4143_def, output4143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4123]
  try dsimp only
  rw [child4142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4123_skip, output4142_skip]
  kernel_rfl

theorem node4144_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4144 value753 value1 value2 = (output4144, value753, value1) := by
  rw [input4144_def, output4144_def]
  kernel_rfl

theorem node4145_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4145 value753 value1 value2 = (output4145, value753, value1) := by
  rw [input4145_def, output4145_def]
  kernel_rfl

theorem node4146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4146 value753 value1 value2 = (output4146, value759, value1) := by
  rw [input4146_def, output4146_def]
  kernel_rfl

theorem node4147_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4147 value759 value1 value2 = (output4147, value759, value1) := by
  rw [input4147_def, output4147_def]
  kernel_rfl

theorem node4148_cond_eq
    (child4146 : Flapjack.WordAlloc.removeDeadStructural input4146 value753 value1 value2 = (output4146, value759, value1))
    (child4147 : Flapjack.WordAlloc.removeDeadStructural input4147 value759 value1 value2 = (output4147, value759, value1)) : Flapjack.WordAlloc.removeDeadStructural input4148 value753 value1 value2 = (output4148, value759, value1) := by
  rw [input4148_def, output4148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4146]
  try dsimp only
  rw [child4147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4146_skip, output4147_skip]
  kernel_rfl

theorem node4149_cond_eq
    (child4145 : Flapjack.WordAlloc.removeDeadStructural input4145 value753 value1 value2 = (output4145, value753, value1))
    (child4148 : Flapjack.WordAlloc.removeDeadStructural input4148 value753 value1 value2 = (output4148, value759, value1)) : Flapjack.WordAlloc.removeDeadStructural input4149 value753 value1 value2 = (output4149, value759, value1) := by
  rw [input4149_def, output4149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4145]
  try dsimp only
  rw [child4148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4145_skip, output4148_skip]
  kernel_rfl

theorem node4150_cond_eq
    (child4144 : Flapjack.WordAlloc.removeDeadStructural input4144 value753 value1 value2 = (output4144, value753, value1))
    (child4149 : Flapjack.WordAlloc.removeDeadStructural input4149 value753 value1 value2 = (output4149, value759, value1)) : Flapjack.WordAlloc.removeDeadStructural input4150 value753 value1 value2 = (output4150, value759, value1) := by
  rw [input4150_def, output4150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4144]
  try dsimp only
  rw [child4149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4144_skip, output4149_skip]
  kernel_rfl

theorem node4151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4151 value759 value1 value2 = (output4151, value760, value1) := by
  rw [input4151_def, output4151_def]
  kernel_rfl

theorem node4152_cond_eq
    (child4150 : Flapjack.WordAlloc.removeDeadStructural input4150 value753 value1 value2 = (output4150, value759, value1))
    (child4151 : Flapjack.WordAlloc.removeDeadStructural input4151 value759 value1 value2 = (output4151, value760, value1)) : Flapjack.WordAlloc.removeDeadStructural input4152 value753 value1 value2 = (output4152, value760, value1) := by
  rw [input4152_def, output4152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4150]
  try dsimp only
  rw [child4151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4150_skip, output4151_skip]
  kernel_rfl

theorem node4153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4153 value760 value1 value2 = (output4153, value760, value1) := by
  rw [input4153_def, output4153_def]
  kernel_rfl

theorem node4154_cond_eq
    (child4152 : Flapjack.WordAlloc.removeDeadStructural input4152 value753 value1 value2 = (output4152, value760, value1))
    (child4153 : Flapjack.WordAlloc.removeDeadStructural input4153 value760 value1 value2 = (output4153, value760, value1)) : Flapjack.WordAlloc.removeDeadStructural input4154 value753 value1 value2 = (output4154, value760, value1) := by
  rw [input4154_def, output4154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4152]
  try dsimp only
  rw [child4153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4152_skip, output4153_skip]
  kernel_rfl

theorem node4155_cond_eq
    (child4143 : Flapjack.WordAlloc.removeDeadStructural input4143 value753 value1 value2 = (output4143, value758, value1))
    (child4154 : Flapjack.WordAlloc.removeDeadStructural input4154 value753 value1 value2 = (output4154, value760, value1)) : Flapjack.WordAlloc.removeDeadStructural input4155 value753 value1 value2 = (output4155, value762, value1) := by
  rw [input4155_def, output4155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4143]
  try dsimp only
  rw [child4154]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4143_skip, output4154_skip]
  kernel_rfl

theorem node4156_cond_eq
    (child4114 : Flapjack.WordAlloc.removeDeadStructural input4114 value753 value1 value2 = (output4114, value753, value1))
    (child4155 : Flapjack.WordAlloc.removeDeadStructural input4155 value753 value1 value2 = (output4155, value762, value1)) : Flapjack.WordAlloc.removeDeadStructural input4156 value753 value1 value2 = (output4156, value762, value1) := by
  rw [input4156_def, output4156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4114]
  try dsimp only
  rw [child4155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4114_skip, output4155_skip]
  kernel_rfl

theorem node4157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4157 value762 value1 value2 = (output4157, value760, value1) := by
  rw [input4157_def, output4157_def]
  kernel_rfl

theorem node4158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4158 value760 value1 value2 = (output4158, value763, value1) := by
  rw [input4158_def, output4158_def]
  kernel_rfl

theorem node4159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4159 value763 value1 value2 = (output4159, value763, value1) := by
  rw [input4159_def, output4159_def]
  kernel_rfl

theorem node4160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4160 value763 value1 value2 = (output4160, value763, value1) := by
  rw [input4160_def, output4160_def]
  kernel_rfl

theorem node4161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4161 value763 value1 value2 = (output4161, value763, value1) := by
  rw [input4161_def, output4161_def]
  kernel_rfl

theorem node4162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4162 value763 value1 value2 = (output4162, value763, value1) := by
  rw [input4162_def, output4162_def]
  kernel_rfl

theorem node4163_cond_eq
    (child4161 : Flapjack.WordAlloc.removeDeadStructural input4161 value763 value1 value2 = (output4161, value763, value1))
    (child4162 : Flapjack.WordAlloc.removeDeadStructural input4162 value763 value1 value2 = (output4162, value763, value1)) : Flapjack.WordAlloc.removeDeadStructural input4163 value763 value1 value2 = (output4163, value763, value1) := by
  rw [input4163_def, output4163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4161]
  try dsimp only
  rw [child4162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4161_skip, output4162_skip]
  kernel_rfl

theorem node4164_cond_eq
    (child4160 : Flapjack.WordAlloc.removeDeadStructural input4160 value763 value1 value2 = (output4160, value763, value1))
    (child4163 : Flapjack.WordAlloc.removeDeadStructural input4163 value763 value1 value2 = (output4163, value763, value1)) : Flapjack.WordAlloc.removeDeadStructural input4164 value763 value1 value2 = (output4164, value763, value1) := by
  rw [input4164_def, output4164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4160]
  try dsimp only
  rw [child4163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4160_skip, output4163_skip]
  kernel_rfl

theorem node4165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4165 value763 value1 value2 = (output4165, value763, value1) := by
  rw [input4165_def, output4165_def]
  kernel_rfl

theorem node4166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4166 value763 value1 value2 = (output4166, value763, value1) := by
  rw [input4166_def, output4166_def]
  kernel_rfl

theorem node4167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4167 value763 value1 value2 = (output4167, value758, value1) := by
  rw [input4167_def, output4167_def]
  kernel_rfl

theorem node4168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4168 value758 value1 value2 = (output4168, value758, value1) := by
  rw [input4168_def, output4168_def]
  kernel_rfl

theorem node4169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4169 value758 value1 value2 = (output4169, value758, value1) := by
  rw [input4169_def, output4169_def]
  kernel_rfl

theorem node4170_cond_eq
    (child4168 : Flapjack.WordAlloc.removeDeadStructural input4168 value758 value1 value2 = (output4168, value758, value1))
    (child4169 : Flapjack.WordAlloc.removeDeadStructural input4169 value758 value1 value2 = (output4169, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4170 value758 value1 value2 = (output4170, value758, value1) := by
  rw [input4170_def, output4170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4168]
  try dsimp only
  rw [child4169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4168_skip, output4169_skip]
  kernel_rfl

theorem node4171_cond_eq
    (child4167 : Flapjack.WordAlloc.removeDeadStructural input4167 value763 value1 value2 = (output4167, value758, value1))
    (child4170 : Flapjack.WordAlloc.removeDeadStructural input4170 value758 value1 value2 = (output4170, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4171 value763 value1 value2 = (output4171, value758, value1) := by
  rw [input4171_def, output4171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4167]
  try dsimp only
  rw [child4170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4167_skip, output4170_skip]
  kernel_rfl

theorem node4172_cond_eq
    (child4166 : Flapjack.WordAlloc.removeDeadStructural input4166 value763 value1 value2 = (output4166, value763, value1))
    (child4171 : Flapjack.WordAlloc.removeDeadStructural input4171 value763 value1 value2 = (output4171, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4172 value763 value1 value2 = (output4172, value758, value1) := by
  rw [input4172_def, output4172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4166]
  try dsimp only
  rw [child4171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4166_skip, output4171_skip]
  kernel_rfl

theorem node4173_cond_eq
    (child4165 : Flapjack.WordAlloc.removeDeadStructural input4165 value763 value1 value2 = (output4165, value763, value1))
    (child4172 : Flapjack.WordAlloc.removeDeadStructural input4172 value763 value1 value2 = (output4172, value758, value1)) : Flapjack.WordAlloc.removeDeadStructural input4173 value763 value1 value2 = (output4173, value758, value1) := by
  rw [input4173_def, output4173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4165]
  try dsimp only
  rw [child4172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4165_skip, output4172_skip]
  kernel_rfl

theorem node4174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4174 value758 value1 value2 = (output4174, value764, value1) := by
  rw [input4174_def, output4174_def]
  kernel_rfl

theorem node4175_cond_eq
    (child4173 : Flapjack.WordAlloc.removeDeadStructural input4173 value763 value1 value2 = (output4173, value758, value1))
    (child4174 : Flapjack.WordAlloc.removeDeadStructural input4174 value758 value1 value2 = (output4174, value764, value1)) : Flapjack.WordAlloc.removeDeadStructural input4175 value763 value1 value2 = (output4175, value764, value1) := by
  rw [input4175_def, output4175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4173]
  try dsimp only
  rw [child4174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4173_skip, output4174_skip]
  kernel_rfl

theorem node4176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4176 value764 value1 value2 = (output4176, value765, value1) := by
  rw [input4176_def, output4176_def]
  kernel_rfl

theorem node4177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4177 value765 value1 value2 = (output4177, value766, value1) := by
  rw [input4177_def, output4177_def]
  kernel_rfl

theorem node4178_cond_eq
    (child4176 : Flapjack.WordAlloc.removeDeadStructural input4176 value764 value1 value2 = (output4176, value765, value1))
    (child4177 : Flapjack.WordAlloc.removeDeadStructural input4177 value765 value1 value2 = (output4177, value766, value1)) : Flapjack.WordAlloc.removeDeadStructural input4178 value764 value1 value2 = (output4178, value766, value1) := by
  rw [input4178_def, output4178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4176]
  try dsimp only
  rw [child4177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4176_skip, output4177_skip]
  kernel_rfl

theorem node4179_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4179 value766 value1 value2 = (output4179, value764, value1) := by
  rw [input4179_def, output4179_def]
  kernel_rfl

theorem node4180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4180 value764 value1 value2 = (output4180, value764, value1) := by
  rw [input4180_def, output4180_def]
  kernel_rfl

theorem node4181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4181 value764 value1 value2 = (output4181, value767, value1) := by
  rw [input4181_def, output4181_def]
  kernel_rfl

theorem node4182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4182 value767 value1 value2 = (output4182, value767, value1) := by
  rw [input4182_def, output4182_def]
  kernel_rfl

theorem node4183_cond_eq
    (child4181 : Flapjack.WordAlloc.removeDeadStructural input4181 value764 value1 value2 = (output4181, value767, value1))
    (child4182 : Flapjack.WordAlloc.removeDeadStructural input4182 value767 value1 value2 = (output4182, value767, value1)) : Flapjack.WordAlloc.removeDeadStructural input4183 value764 value1 value2 = (output4183, value767, value1) := by
  rw [input4183_def, output4183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4181]
  try dsimp only
  rw [child4182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4181_skip, output4182_skip]
  kernel_rfl

theorem node4184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4184 value767 value1 value2 = (output4184, value768, value1) := by
  rw [input4184_def, output4184_def]
  kernel_rfl

theorem node4185_cond_eq
    (child4183 : Flapjack.WordAlloc.removeDeadStructural input4183 value764 value1 value2 = (output4183, value767, value1))
    (child4184 : Flapjack.WordAlloc.removeDeadStructural input4184 value767 value1 value2 = (output4184, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input4185 value764 value1 value2 = (output4185, value768, value1) := by
  rw [input4185_def, output4185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4183]
  try dsimp only
  rw [child4184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4183_skip, output4184_skip]
  kernel_rfl

theorem node4186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4186 value768 value1 value2 = (output4186, value768, value1) := by
  rw [input4186_def, output4186_def]
  kernel_rfl

theorem node4187_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4187 value768 value1 value2 = (output4187, value768, value1) := by
  rw [input4187_def, output4187_def]
  kernel_rfl

theorem node4188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4188 value768 value1 value2 = (output4188, value768, value1) := by
  rw [input4188_def, output4188_def]
  kernel_rfl

theorem node4189_cond_eq
    (child4187 : Flapjack.WordAlloc.removeDeadStructural input4187 value768 value1 value2 = (output4187, value768, value1))
    (child4188 : Flapjack.WordAlloc.removeDeadStructural input4188 value768 value1 value2 = (output4188, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input4189 value768 value1 value2 = (output4189, value768, value1) := by
  rw [input4189_def, output4189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4187]
  try dsimp only
  rw [child4188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4187_skip, output4188_skip]
  kernel_rfl

theorem node4190_cond_eq
    (child4186 : Flapjack.WordAlloc.removeDeadStructural input4186 value768 value1 value2 = (output4186, value768, value1))
    (child4189 : Flapjack.WordAlloc.removeDeadStructural input4189 value768 value1 value2 = (output4189, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input4190 value768 value1 value2 = (output4190, value768, value1) := by
  rw [input4190_def, output4190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4186]
  try dsimp only
  rw [child4189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4186_skip, output4189_skip]
  kernel_rfl

theorem node4191_cond_eq
    (child4185 : Flapjack.WordAlloc.removeDeadStructural input4185 value764 value1 value2 = (output4185, value768, value1))
    (child4190 : Flapjack.WordAlloc.removeDeadStructural input4190 value768 value1 value2 = (output4190, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input4191 value764 value1 value2 = (output4191, value768, value1) := by
  rw [input4191_def, output4191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4185]
  try dsimp only
  rw [child4190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4185_skip, output4190_skip]
  kernel_rfl

theorem node4192_cond_eq
    (child4180 : Flapjack.WordAlloc.removeDeadStructural input4180 value764 value1 value2 = (output4180, value764, value1))
    (child4191 : Flapjack.WordAlloc.removeDeadStructural input4191 value764 value1 value2 = (output4191, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input4192 value764 value1 value2 = (output4192, value768, value1) := by
  rw [input4192_def, output4192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4180]
  try dsimp only
  rw [child4191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4180_skip, output4191_skip]
  kernel_rfl

theorem node4193_cond_eq
    (child4179 : Flapjack.WordAlloc.removeDeadStructural input4179 value766 value1 value2 = (output4179, value764, value1))
    (child4192 : Flapjack.WordAlloc.removeDeadStructural input4192 value764 value1 value2 = (output4192, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input4193 value766 value1 value2 = (output4193, value768, value1) := by
  rw [input4193_def, output4193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4179]
  try dsimp only
  rw [child4192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4179_skip, output4192_skip]
  kernel_rfl

theorem node4194_cond_eq
    (child4178 : Flapjack.WordAlloc.removeDeadStructural input4178 value764 value1 value2 = (output4178, value766, value1))
    (child4193 : Flapjack.WordAlloc.removeDeadStructural input4193 value766 value1 value2 = (output4193, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input4194 value764 value1 value2 = (output4194, value768, value1) := by
  rw [input4194_def, output4194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4178]
  try dsimp only
  rw [child4193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4178_skip, output4193_skip]
  kernel_rfl

theorem node4195_cond_eq
    (child4175 : Flapjack.WordAlloc.removeDeadStructural input4175 value763 value1 value2 = (output4175, value764, value1))
    (child4194 : Flapjack.WordAlloc.removeDeadStructural input4194 value764 value1 value2 = (output4194, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input4195 value763 value1 value2 = (output4195, value768, value1) := by
  rw [input4195_def, output4195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4175]
  try dsimp only
  rw [child4194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4175_skip, output4194_skip]
  kernel_rfl

theorem node4196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4196 value763 value1 value2 = (output4196, value763, value1) := by
  rw [input4196_def, output4196_def]
  kernel_rfl

theorem node4197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4197 value763 value1 value2 = (output4197, value763, value1) := by
  rw [input4197_def, output4197_def]
  kernel_rfl

theorem node4198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4198 value763 value1 value2 = (output4198, value769, value1) := by
  rw [input4198_def, output4198_def]
  kernel_rfl

theorem node4199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4199 value769 value1 value2 = (output4199, value769, value1) := by
  rw [input4199_def, output4199_def]
  kernel_rfl

theorem node4200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4200 value769 value1 value2 = (output4200, value769, value1) := by
  rw [input4200_def, output4200_def]
  kernel_rfl

theorem node4201_cond_eq
    (child4199 : Flapjack.WordAlloc.removeDeadStructural input4199 value769 value1 value2 = (output4199, value769, value1))
    (child4200 : Flapjack.WordAlloc.removeDeadStructural input4200 value769 value1 value2 = (output4200, value769, value1)) : Flapjack.WordAlloc.removeDeadStructural input4201 value769 value1 value2 = (output4201, value769, value1) := by
  rw [input4201_def, output4201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4199]
  try dsimp only
  rw [child4200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4199_skip, output4200_skip]
  kernel_rfl

theorem node4202_cond_eq
    (child4198 : Flapjack.WordAlloc.removeDeadStructural input4198 value763 value1 value2 = (output4198, value769, value1))
    (child4201 : Flapjack.WordAlloc.removeDeadStructural input4201 value769 value1 value2 = (output4201, value769, value1)) : Flapjack.WordAlloc.removeDeadStructural input4202 value763 value1 value2 = (output4202, value769, value1) := by
  rw [input4202_def, output4202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4198]
  try dsimp only
  rw [child4201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4198_skip, output4201_skip]
  kernel_rfl

theorem node4203_cond_eq
    (child4197 : Flapjack.WordAlloc.removeDeadStructural input4197 value763 value1 value2 = (output4197, value763, value1))
    (child4202 : Flapjack.WordAlloc.removeDeadStructural input4202 value763 value1 value2 = (output4202, value769, value1)) : Flapjack.WordAlloc.removeDeadStructural input4203 value763 value1 value2 = (output4203, value769, value1) := by
  rw [input4203_def, output4203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4197]
  try dsimp only
  rw [child4202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4197_skip, output4202_skip]
  kernel_rfl

theorem node4204_cond_eq
    (child4196 : Flapjack.WordAlloc.removeDeadStructural input4196 value763 value1 value2 = (output4196, value763, value1))
    (child4203 : Flapjack.WordAlloc.removeDeadStructural input4203 value763 value1 value2 = (output4203, value769, value1)) : Flapjack.WordAlloc.removeDeadStructural input4204 value763 value1 value2 = (output4204, value769, value1) := by
  rw [input4204_def, output4204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4196]
  try dsimp only
  rw [child4203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4196_skip, output4203_skip]
  kernel_rfl

theorem node4205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4205 value769 value1 value2 = (output4205, value770, value1) := by
  rw [input4205_def, output4205_def]
  kernel_rfl

theorem node4206_cond_eq
    (child4204 : Flapjack.WordAlloc.removeDeadStructural input4204 value763 value1 value2 = (output4204, value769, value1))
    (child4205 : Flapjack.WordAlloc.removeDeadStructural input4205 value769 value1 value2 = (output4205, value770, value1)) : Flapjack.WordAlloc.removeDeadStructural input4206 value763 value1 value2 = (output4206, value770, value1) := by
  rw [input4206_def, output4206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4204]
  try dsimp only
  rw [child4205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4204_skip, output4205_skip]
  kernel_rfl

theorem node4207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4207 value770 value1 value2 = (output4207, value770, value1) := by
  rw [input4207_def, output4207_def]
  kernel_rfl

theorem node4208_cond_eq
    (child4206 : Flapjack.WordAlloc.removeDeadStructural input4206 value763 value1 value2 = (output4206, value770, value1))
    (child4207 : Flapjack.WordAlloc.removeDeadStructural input4207 value770 value1 value2 = (output4207, value770, value1)) : Flapjack.WordAlloc.removeDeadStructural input4208 value763 value1 value2 = (output4208, value770, value1) := by
  rw [input4208_def, output4208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4206]
  try dsimp only
  rw [child4207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4206_skip, output4207_skip]
  kernel_rfl

theorem node4209_cond_eq
    (child4195 : Flapjack.WordAlloc.removeDeadStructural input4195 value763 value1 value2 = (output4195, value768, value1))
    (child4208 : Flapjack.WordAlloc.removeDeadStructural input4208 value763 value1 value2 = (output4208, value770, value1)) : Flapjack.WordAlloc.removeDeadStructural input4209 value763 value1 value2 = (output4209, value772, value1) := by
  rw [input4209_def, output4209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4195]
  try dsimp only
  rw [child4208]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4195_skip, output4208_skip]
  kernel_rfl

theorem node4210_cond_eq
    (child4164 : Flapjack.WordAlloc.removeDeadStructural input4164 value763 value1 value2 = (output4164, value763, value1))
    (child4209 : Flapjack.WordAlloc.removeDeadStructural input4209 value763 value1 value2 = (output4209, value772, value1)) : Flapjack.WordAlloc.removeDeadStructural input4210 value763 value1 value2 = (output4210, value772, value1) := by
  rw [input4210_def, output4210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4164]
  try dsimp only
  rw [child4209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4164_skip, output4209_skip]
  kernel_rfl

theorem node4211_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4211 value772 value1 value2 = (output4211, value770, value1) := by
  rw [input4211_def, output4211_def]
  kernel_rfl

theorem node4212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4212 value770 value1 value2 = (output4212, value773, value1) := by
  rw [input4212_def, output4212_def]
  kernel_rfl

theorem node4213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4213 value773 value1 value2 = (output4213, value773, value1) := by
  rw [input4213_def, output4213_def]
  kernel_rfl

theorem node4214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4214 value773 value1 value2 = (output4214, value773, value1) := by
  rw [input4214_def, output4214_def]
  kernel_rfl

theorem node4215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4215 value773 value1 value2 = (output4215, value773, value1) := by
  rw [input4215_def, output4215_def]
  kernel_rfl

theorem node4216_cond_eq
    (child4214 : Flapjack.WordAlloc.removeDeadStructural input4214 value773 value1 value2 = (output4214, value773, value1))
    (child4215 : Flapjack.WordAlloc.removeDeadStructural input4215 value773 value1 value2 = (output4215, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4216 value773 value1 value2 = (output4216, value773, value1) := by
  rw [input4216_def, output4216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4214]
  try dsimp only
  rw [child4215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4214_skip, output4215_skip]
  kernel_rfl

theorem node4217_cond_eq
    (child4213 : Flapjack.WordAlloc.removeDeadStructural input4213 value773 value1 value2 = (output4213, value773, value1))
    (child4216 : Flapjack.WordAlloc.removeDeadStructural input4216 value773 value1 value2 = (output4216, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4217 value773 value1 value2 = (output4217, value773, value1) := by
  rw [input4217_def, output4217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4213]
  try dsimp only
  rw [child4216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4213_skip, output4216_skip]
  kernel_rfl

theorem node4218_cond_eq
    (child4212 : Flapjack.WordAlloc.removeDeadStructural input4212 value770 value1 value2 = (output4212, value773, value1))
    (child4217 : Flapjack.WordAlloc.removeDeadStructural input4217 value773 value1 value2 = (output4217, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4218 value770 value1 value2 = (output4218, value773, value1) := by
  rw [input4218_def, output4218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4212]
  try dsimp only
  rw [child4217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4212_skip, output4217_skip]
  kernel_rfl

theorem node4219_cond_eq
    (child4211 : Flapjack.WordAlloc.removeDeadStructural input4211 value772 value1 value2 = (output4211, value770, value1))
    (child4218 : Flapjack.WordAlloc.removeDeadStructural input4218 value770 value1 value2 = (output4218, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4219 value772 value1 value2 = (output4219, value773, value1) := by
  rw [input4219_def, output4219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4211]
  try dsimp only
  rw [child4218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4211_skip, output4218_skip]
  kernel_rfl

theorem node4220_cond_eq
    (child4210 : Flapjack.WordAlloc.removeDeadStructural input4210 value763 value1 value2 = (output4210, value772, value1))
    (child4219 : Flapjack.WordAlloc.removeDeadStructural input4219 value772 value1 value2 = (output4219, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4220 value763 value1 value2 = (output4220, value773, value1) := by
  rw [input4220_def, output4220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4210]
  try dsimp only
  rw [child4219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4210_skip, output4219_skip]
  kernel_rfl

theorem node4221_cond_eq
    (child4159 : Flapjack.WordAlloc.removeDeadStructural input4159 value763 value1 value2 = (output4159, value763, value1))
    (child4220 : Flapjack.WordAlloc.removeDeadStructural input4220 value763 value1 value2 = (output4220, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4221 value763 value1 value2 = (output4221, value773, value1) := by
  rw [input4221_def, output4221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4159]
  try dsimp only
  rw [child4220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4159_skip, output4220_skip]
  kernel_rfl

theorem node4222_cond_eq
    (child4158 : Flapjack.WordAlloc.removeDeadStructural input4158 value760 value1 value2 = (output4158, value763, value1))
    (child4221 : Flapjack.WordAlloc.removeDeadStructural input4221 value763 value1 value2 = (output4221, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4222 value760 value1 value2 = (output4222, value773, value1) := by
  rw [input4222_def, output4222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4158]
  try dsimp only
  rw [child4221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4158_skip, output4221_skip]
  kernel_rfl

theorem node4223_cond_eq
    (child4157 : Flapjack.WordAlloc.removeDeadStructural input4157 value762 value1 value2 = (output4157, value760, value1))
    (child4222 : Flapjack.WordAlloc.removeDeadStructural input4222 value760 value1 value2 = (output4222, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4223 value762 value1 value2 = (output4223, value773, value1) := by
  rw [input4223_def, output4223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4157]
  try dsimp only
  rw [child4222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4157_skip, output4222_skip]
  kernel_rfl

theorem node4224_cond_eq
    (child4156 : Flapjack.WordAlloc.removeDeadStructural input4156 value753 value1 value2 = (output4156, value762, value1))
    (child4223 : Flapjack.WordAlloc.removeDeadStructural input4223 value762 value1 value2 = (output4223, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4224 value753 value1 value2 = (output4224, value773, value1) := by
  rw [input4224_def, output4224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4156]
  try dsimp only
  rw [child4223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4156_skip, output4223_skip]
  kernel_rfl

theorem node4225_cond_eq
    (child4109 : Flapjack.WordAlloc.removeDeadStructural input4109 value753 value1 value2 = (output4109, value753, value1))
    (child4224 : Flapjack.WordAlloc.removeDeadStructural input4224 value753 value1 value2 = (output4224, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4225 value753 value1 value2 = (output4225, value773, value1) := by
  rw [input4225_def, output4225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4109]
  try dsimp only
  rw [child4224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4109_skip, output4224_skip]
  kernel_rfl

theorem node4226_cond_eq
    (child4108 : Flapjack.WordAlloc.removeDeadStructural input4108 value750 value1 value2 = (output4108, value753, value1))
    (child4225 : Flapjack.WordAlloc.removeDeadStructural input4225 value753 value1 value2 = (output4225, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4226 value750 value1 value2 = (output4226, value773, value1) := by
  rw [input4226_def, output4226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4108]
  try dsimp only
  rw [child4225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4108_skip, output4225_skip]
  kernel_rfl

theorem node4227_cond_eq
    (child4107 : Flapjack.WordAlloc.removeDeadStructural input4107 value752 value1 value2 = (output4107, value750, value1))
    (child4226 : Flapjack.WordAlloc.removeDeadStructural input4226 value750 value1 value2 = (output4226, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4227 value752 value1 value2 = (output4227, value773, value1) := by
  rw [input4227_def, output4227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4107]
  try dsimp only
  rw [child4226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4107_skip, output4226_skip]
  kernel_rfl

theorem node4228_cond_eq
    (child4106 : Flapjack.WordAlloc.removeDeadStructural input4106 value743 value1 value2 = (output4106, value752, value1))
    (child4227 : Flapjack.WordAlloc.removeDeadStructural input4227 value752 value1 value2 = (output4227, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4228 value743 value1 value2 = (output4228, value773, value1) := by
  rw [input4228_def, output4228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4106]
  try dsimp only
  rw [child4227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4106_skip, output4227_skip]
  kernel_rfl

theorem node4229_cond_eq
    (child4059 : Flapjack.WordAlloc.removeDeadStructural input4059 value743 value1 value2 = (output4059, value743, value1))
    (child4228 : Flapjack.WordAlloc.removeDeadStructural input4228 value743 value1 value2 = (output4228, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4229 value743 value1 value2 = (output4229, value773, value1) := by
  rw [input4229_def, output4229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4059]
  try dsimp only
  rw [child4228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4059_skip, output4228_skip]
  kernel_rfl

theorem node4230_cond_eq
    (child4058 : Flapjack.WordAlloc.removeDeadStructural input4058 value740 value1 value2 = (output4058, value743, value1))
    (child4229 : Flapjack.WordAlloc.removeDeadStructural input4229 value743 value1 value2 = (output4229, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4230 value740 value1 value2 = (output4230, value773, value1) := by
  rw [input4230_def, output4230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4058]
  try dsimp only
  rw [child4229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4058_skip, output4229_skip]
  kernel_rfl

theorem node4231_cond_eq
    (child4057 : Flapjack.WordAlloc.removeDeadStructural input4057 value742 value1 value2 = (output4057, value740, value1))
    (child4230 : Flapjack.WordAlloc.removeDeadStructural input4230 value740 value1 value2 = (output4230, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4231 value742 value1 value2 = (output4231, value773, value1) := by
  rw [input4231_def, output4231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4057]
  try dsimp only
  rw [child4230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4057_skip, output4230_skip]
  kernel_rfl

theorem node4232_cond_eq
    (child4056 : Flapjack.WordAlloc.removeDeadStructural input4056 value733 value1 value2 = (output4056, value742, value1))
    (child4231 : Flapjack.WordAlloc.removeDeadStructural input4231 value742 value1 value2 = (output4231, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4232 value733 value1 value2 = (output4232, value773, value1) := by
  rw [input4232_def, output4232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4056]
  try dsimp only
  rw [child4231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4056_skip, output4231_skip]
  kernel_rfl

theorem node4233_cond_eq
    (child4009 : Flapjack.WordAlloc.removeDeadStructural input4009 value733 value1 value2 = (output4009, value733, value1))
    (child4232 : Flapjack.WordAlloc.removeDeadStructural input4232 value733 value1 value2 = (output4232, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4233 value733 value1 value2 = (output4233, value773, value1) := by
  rw [input4233_def, output4233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4009]
  try dsimp only
  rw [child4232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4009_skip, output4232_skip]
  kernel_rfl

theorem node4234_cond_eq
    (child4008 : Flapjack.WordAlloc.removeDeadStructural input4008 value730 value1 value2 = (output4008, value733, value1))
    (child4233 : Flapjack.WordAlloc.removeDeadStructural input4233 value733 value1 value2 = (output4233, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4234 value730 value1 value2 = (output4234, value773, value1) := by
  rw [input4234_def, output4234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4008]
  try dsimp only
  rw [child4233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4008_skip, output4233_skip]
  kernel_rfl

theorem node4235_cond_eq
    (child4007 : Flapjack.WordAlloc.removeDeadStructural input4007 value732 value1 value2 = (output4007, value730, value1))
    (child4234 : Flapjack.WordAlloc.removeDeadStructural input4234 value730 value1 value2 = (output4234, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4235 value732 value1 value2 = (output4235, value773, value1) := by
  rw [input4235_def, output4235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4007]
  try dsimp only
  rw [child4234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4007_skip, output4234_skip]
  kernel_rfl

theorem node4236_cond_eq
    (child4006 : Flapjack.WordAlloc.removeDeadStructural input4006 value723 value1 value2 = (output4006, value732, value1))
    (child4235 : Flapjack.WordAlloc.removeDeadStructural input4235 value732 value1 value2 = (output4235, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4236 value723 value1 value2 = (output4236, value773, value1) := by
  rw [input4236_def, output4236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4006]
  try dsimp only
  rw [child4235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4006_skip, output4235_skip]
  kernel_rfl

theorem node4237_cond_eq
    (child3959 : Flapjack.WordAlloc.removeDeadStructural input3959 value723 value1 value2 = (output3959, value723, value1))
    (child4236 : Flapjack.WordAlloc.removeDeadStructural input4236 value723 value1 value2 = (output4236, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4237 value723 value1 value2 = (output4237, value773, value1) := by
  rw [input4237_def, output4237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3959]
  try dsimp only
  rw [child4236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3959_skip, output4236_skip]
  kernel_rfl

theorem node4238_cond_eq
    (child3958 : Flapjack.WordAlloc.removeDeadStructural input3958 value720 value1 value2 = (output3958, value723, value1))
    (child4237 : Flapjack.WordAlloc.removeDeadStructural input4237 value723 value1 value2 = (output4237, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4238 value720 value1 value2 = (output4238, value773, value1) := by
  rw [input4238_def, output4238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3958]
  try dsimp only
  rw [child4237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3958_skip, output4237_skip]
  kernel_rfl

theorem node4239_cond_eq
    (child3957 : Flapjack.WordAlloc.removeDeadStructural input3957 value722 value1 value2 = (output3957, value720, value1))
    (child4238 : Flapjack.WordAlloc.removeDeadStructural input4238 value720 value1 value2 = (output4238, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4239 value722 value1 value2 = (output4239, value773, value1) := by
  rw [input4239_def, output4239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3957]
  try dsimp only
  rw [child4238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3957_skip, output4238_skip]
  kernel_rfl

theorem node4240_cond_eq
    (child3956 : Flapjack.WordAlloc.removeDeadStructural input3956 value713 value1 value2 = (output3956, value722, value1))
    (child4239 : Flapjack.WordAlloc.removeDeadStructural input4239 value722 value1 value2 = (output4239, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4240 value713 value1 value2 = (output4240, value773, value1) := by
  rw [input4240_def, output4240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3956]
  try dsimp only
  rw [child4239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3956_skip, output4239_skip]
  kernel_rfl

theorem node4241_cond_eq
    (child3909 : Flapjack.WordAlloc.removeDeadStructural input3909 value713 value1 value2 = (output3909, value713, value1))
    (child4240 : Flapjack.WordAlloc.removeDeadStructural input4240 value713 value1 value2 = (output4240, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4241 value713 value1 value2 = (output4241, value773, value1) := by
  rw [input4241_def, output4241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3909]
  try dsimp only
  rw [child4240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3909_skip, output4240_skip]
  kernel_rfl

theorem node4242_cond_eq
    (child3908 : Flapjack.WordAlloc.removeDeadStructural input3908 value710 value1 value2 = (output3908, value713, value1))
    (child4241 : Flapjack.WordAlloc.removeDeadStructural input4241 value713 value1 value2 = (output4241, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4242 value710 value1 value2 = (output4242, value773, value1) := by
  rw [input4242_def, output4242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3908]
  try dsimp only
  rw [child4241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3908_skip, output4241_skip]
  kernel_rfl

theorem node4243_cond_eq
    (child3907 : Flapjack.WordAlloc.removeDeadStructural input3907 value712 value1 value2 = (output3907, value710, value1))
    (child4242 : Flapjack.WordAlloc.removeDeadStructural input4242 value710 value1 value2 = (output4242, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4243 value712 value1 value2 = (output4243, value773, value1) := by
  rw [input4243_def, output4243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3907]
  try dsimp only
  rw [child4242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3907_skip, output4242_skip]
  kernel_rfl

theorem node4244_cond_eq
    (child3906 : Flapjack.WordAlloc.removeDeadStructural input3906 value703 value1 value2 = (output3906, value712, value1))
    (child4243 : Flapjack.WordAlloc.removeDeadStructural input4243 value712 value1 value2 = (output4243, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4244 value703 value1 value2 = (output4244, value773, value1) := by
  rw [input4244_def, output4244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3906]
  try dsimp only
  rw [child4243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3906_skip, output4243_skip]
  kernel_rfl

theorem node4245_cond_eq
    (child3859 : Flapjack.WordAlloc.removeDeadStructural input3859 value703 value1 value2 = (output3859, value703, value1))
    (child4244 : Flapjack.WordAlloc.removeDeadStructural input4244 value703 value1 value2 = (output4244, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4245 value703 value1 value2 = (output4245, value773, value1) := by
  rw [input4245_def, output4245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3859]
  try dsimp only
  rw [child4244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3859_skip, output4244_skip]
  kernel_rfl

theorem node4246_cond_eq
    (child3858 : Flapjack.WordAlloc.removeDeadStructural input3858 value700 value1 value2 = (output3858, value703, value1))
    (child4245 : Flapjack.WordAlloc.removeDeadStructural input4245 value703 value1 value2 = (output4245, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4246 value700 value1 value2 = (output4246, value773, value1) := by
  rw [input4246_def, output4246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3858]
  try dsimp only
  rw [child4245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3858_skip, output4245_skip]
  kernel_rfl

theorem node4247_cond_eq
    (child3857 : Flapjack.WordAlloc.removeDeadStructural input3857 value702 value1 value2 = (output3857, value700, value1))
    (child4246 : Flapjack.WordAlloc.removeDeadStructural input4246 value700 value1 value2 = (output4246, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4247 value702 value1 value2 = (output4247, value773, value1) := by
  rw [input4247_def, output4247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3857]
  try dsimp only
  rw [child4246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3857_skip, output4246_skip]
  kernel_rfl

theorem node4248_cond_eq
    (child3856 : Flapjack.WordAlloc.removeDeadStructural input3856 value693 value1 value2 = (output3856, value702, value1))
    (child4247 : Flapjack.WordAlloc.removeDeadStructural input4247 value702 value1 value2 = (output4247, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4248 value693 value1 value2 = (output4248, value773, value1) := by
  rw [input4248_def, output4248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3856]
  try dsimp only
  rw [child4247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3856_skip, output4247_skip]
  kernel_rfl

theorem node4249_cond_eq
    (child3809 : Flapjack.WordAlloc.removeDeadStructural input3809 value693 value1 value2 = (output3809, value693, value1))
    (child4248 : Flapjack.WordAlloc.removeDeadStructural input4248 value693 value1 value2 = (output4248, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4249 value693 value1 value2 = (output4249, value773, value1) := by
  rw [input4249_def, output4249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3809]
  try dsimp only
  rw [child4248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3809_skip, output4248_skip]
  kernel_rfl

theorem node4250_cond_eq
    (child3808 : Flapjack.WordAlloc.removeDeadStructural input3808 value690 value1 value2 = (output3808, value693, value1))
    (child4249 : Flapjack.WordAlloc.removeDeadStructural input4249 value693 value1 value2 = (output4249, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4250 value690 value1 value2 = (output4250, value773, value1) := by
  rw [input4250_def, output4250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3808]
  try dsimp only
  rw [child4249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3808_skip, output4249_skip]
  kernel_rfl

theorem node4251_cond_eq
    (child3807 : Flapjack.WordAlloc.removeDeadStructural input3807 value692 value1 value2 = (output3807, value690, value1))
    (child4250 : Flapjack.WordAlloc.removeDeadStructural input4250 value690 value1 value2 = (output4250, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4251 value692 value1 value2 = (output4251, value773, value1) := by
  rw [input4251_def, output4251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3807]
  try dsimp only
  rw [child4250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3807_skip, output4250_skip]
  kernel_rfl

theorem node4252_cond_eq
    (child3806 : Flapjack.WordAlloc.removeDeadStructural input3806 value683 value1 value2 = (output3806, value692, value1))
    (child4251 : Flapjack.WordAlloc.removeDeadStructural input4251 value692 value1 value2 = (output4251, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4252 value683 value1 value2 = (output4252, value773, value1) := by
  rw [input4252_def, output4252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3806]
  try dsimp only
  rw [child4251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3806_skip, output4251_skip]
  kernel_rfl

theorem node4253_cond_eq
    (child3759 : Flapjack.WordAlloc.removeDeadStructural input3759 value683 value1 value2 = (output3759, value683, value1))
    (child4252 : Flapjack.WordAlloc.removeDeadStructural input4252 value683 value1 value2 = (output4252, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4253 value683 value1 value2 = (output4253, value773, value1) := by
  rw [input4253_def, output4253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3759]
  try dsimp only
  rw [child4252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3759_skip, output4252_skip]
  kernel_rfl

theorem node4254_cond_eq
    (child3758 : Flapjack.WordAlloc.removeDeadStructural input3758 value680 value1 value2 = (output3758, value683, value1))
    (child4253 : Flapjack.WordAlloc.removeDeadStructural input4253 value683 value1 value2 = (output4253, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4254 value680 value1 value2 = (output4254, value773, value1) := by
  rw [input4254_def, output4254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3758]
  try dsimp only
  rw [child4253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3758_skip, output4253_skip]
  kernel_rfl

theorem node4255_cond_eq
    (child3757 : Flapjack.WordAlloc.removeDeadStructural input3757 value682 value1 value2 = (output3757, value680, value1))
    (child4254 : Flapjack.WordAlloc.removeDeadStructural input4254 value680 value1 value2 = (output4254, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4255 value682 value1 value2 = (output4255, value773, value1) := by
  rw [input4255_def, output4255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3757]
  try dsimp only
  rw [child4254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3757_skip, output4254_skip]
  kernel_rfl

theorem node4256_cond_eq
    (child3756 : Flapjack.WordAlloc.removeDeadStructural input3756 value673 value1 value2 = (output3756, value682, value1))
    (child4255 : Flapjack.WordAlloc.removeDeadStructural input4255 value682 value1 value2 = (output4255, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4256 value673 value1 value2 = (output4256, value773, value1) := by
  rw [input4256_def, output4256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3756]
  try dsimp only
  rw [child4255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3756_skip, output4255_skip]
  kernel_rfl

theorem node4257_cond_eq
    (child3709 : Flapjack.WordAlloc.removeDeadStructural input3709 value673 value1 value2 = (output3709, value673, value1))
    (child4256 : Flapjack.WordAlloc.removeDeadStructural input4256 value673 value1 value2 = (output4256, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4257 value673 value1 value2 = (output4257, value773, value1) := by
  rw [input4257_def, output4257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3709]
  try dsimp only
  rw [child4256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3709_skip, output4256_skip]
  kernel_rfl

theorem node4258_cond_eq
    (child3708 : Flapjack.WordAlloc.removeDeadStructural input3708 value670 value1 value2 = (output3708, value673, value1))
    (child4257 : Flapjack.WordAlloc.removeDeadStructural input4257 value673 value1 value2 = (output4257, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4258 value670 value1 value2 = (output4258, value773, value1) := by
  rw [input4258_def, output4258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3708]
  try dsimp only
  rw [child4257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3708_skip, output4257_skip]
  kernel_rfl

theorem node4259_cond_eq
    (child3707 : Flapjack.WordAlloc.removeDeadStructural input3707 value672 value1 value2 = (output3707, value670, value1))
    (child4258 : Flapjack.WordAlloc.removeDeadStructural input4258 value670 value1 value2 = (output4258, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4259 value672 value1 value2 = (output4259, value773, value1) := by
  rw [input4259_def, output4259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3707]
  try dsimp only
  rw [child4258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3707_skip, output4258_skip]
  kernel_rfl

theorem node4260_cond_eq
    (child3706 : Flapjack.WordAlloc.removeDeadStructural input3706 value663 value1 value2 = (output3706, value672, value1))
    (child4259 : Flapjack.WordAlloc.removeDeadStructural input4259 value672 value1 value2 = (output4259, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4260 value663 value1 value2 = (output4260, value773, value1) := by
  rw [input4260_def, output4260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3706]
  try dsimp only
  rw [child4259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3706_skip, output4259_skip]
  kernel_rfl

theorem node4261_cond_eq
    (child3659 : Flapjack.WordAlloc.removeDeadStructural input3659 value663 value1 value2 = (output3659, value663, value1))
    (child4260 : Flapjack.WordAlloc.removeDeadStructural input4260 value663 value1 value2 = (output4260, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4261 value663 value1 value2 = (output4261, value773, value1) := by
  rw [input4261_def, output4261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3659]
  try dsimp only
  rw [child4260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3659_skip, output4260_skip]
  kernel_rfl

theorem node4262_cond_eq
    (child3658 : Flapjack.WordAlloc.removeDeadStructural input3658 value660 value1 value2 = (output3658, value663, value1))
    (child4261 : Flapjack.WordAlloc.removeDeadStructural input4261 value663 value1 value2 = (output4261, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4262 value660 value1 value2 = (output4262, value773, value1) := by
  rw [input4262_def, output4262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3658]
  try dsimp only
  rw [child4261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3658_skip, output4261_skip]
  kernel_rfl

theorem node4263_cond_eq
    (child3657 : Flapjack.WordAlloc.removeDeadStructural input3657 value662 value1 value2 = (output3657, value660, value1))
    (child4262 : Flapjack.WordAlloc.removeDeadStructural input4262 value660 value1 value2 = (output4262, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4263 value662 value1 value2 = (output4263, value773, value1) := by
  rw [input4263_def, output4263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3657]
  try dsimp only
  rw [child4262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3657_skip, output4262_skip]
  kernel_rfl

theorem node4264_cond_eq
    (child3656 : Flapjack.WordAlloc.removeDeadStructural input3656 value652 value8 value2 = (output3656, value662, value1))
    (child4263 : Flapjack.WordAlloc.removeDeadStructural input4263 value662 value1 value2 = (output4263, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4264 value652 value8 value2 = (output4264, value773, value1) := by
  rw [input4264_def, output4264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3656]
  try dsimp only
  rw [child4263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3656_skip, output4263_skip]
  kernel_rfl

theorem node4265_cond_eq
    (child3609 : Flapjack.WordAlloc.removeDeadStructural input3609 value652 value8 value2 = (output3609, value652, value8))
    (child4264 : Flapjack.WordAlloc.removeDeadStructural input4264 value652 value8 value2 = (output4264, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4265 value652 value8 value2 = (output4265, value773, value1) := by
  rw [input4265_def, output4265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3609]
  try dsimp only
  rw [child4264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3609_skip, output4264_skip]
  kernel_rfl

theorem node4266_cond_eq
    (child3608 : Flapjack.WordAlloc.removeDeadStructural input3608 value647 value8 value2 = (output3608, value652, value8))
    (child4265 : Flapjack.WordAlloc.removeDeadStructural input4265 value652 value8 value2 = (output4265, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input4266 value647 value8 value2 = (output4266, value773, value1) := by
  rw [input4266_def, output4266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3608]
  try dsimp only
  rw [child4265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3608_skip, output4265_skip]
  kernel_rfl

theorem node4267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4267 value647 value8 value2 = (output4267, value647, value8) := by
  rw [input4267_def, output4267_def]
  kernel_rfl

theorem node4268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4268 value647 value8 value2 = (output4268, value774, value8) := by
  rw [input4268_def, output4268_def]
  kernel_rfl

theorem node4269_cond_eq
    (child4267 : Flapjack.WordAlloc.removeDeadStructural input4267 value647 value8 value2 = (output4267, value647, value8))
    (child4268 : Flapjack.WordAlloc.removeDeadStructural input4268 value647 value8 value2 = (output4268, value774, value8)) : Flapjack.WordAlloc.removeDeadStructural input4269 value647 value8 value2 = (output4269, value774, value8) := by
  rw [input4269_def, output4269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4267]
  try dsimp only
  rw [child4268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4267_skip, output4268_skip]
  kernel_rfl

theorem node4270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4270 value774 value8 value2 = (output4270, value774, value8) := by
  rw [input4270_def, output4270_def]
  kernel_rfl

theorem node4271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4271 value774 value8 value2 = (output4271, value774, value8) := by
  rw [input4271_def, output4271_def]
  kernel_rfl

theorem node4272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4272 value774 value8 value2 = (output4272, value774, value8) := by
  rw [input4272_def, output4272_def]
  kernel_rfl

theorem node4273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4273 value774 value8 value2 = (output4273, value774, value8) := by
  rw [input4273_def, output4273_def]
  kernel_rfl

theorem node4274_cond_eq
    (child4272 : Flapjack.WordAlloc.removeDeadStructural input4272 value774 value8 value2 = (output4272, value774, value8))
    (child4273 : Flapjack.WordAlloc.removeDeadStructural input4273 value774 value8 value2 = (output4273, value774, value8)) : Flapjack.WordAlloc.removeDeadStructural input4274 value774 value8 value2 = (output4274, value774, value8) := by
  rw [input4274_def, output4274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4272]
  try dsimp only
  rw [child4273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4272_skip, output4273_skip]
  kernel_rfl

theorem node4275_cond_eq
    (child4271 : Flapjack.WordAlloc.removeDeadStructural input4271 value774 value8 value2 = (output4271, value774, value8))
    (child4274 : Flapjack.WordAlloc.removeDeadStructural input4274 value774 value8 value2 = (output4274, value774, value8)) : Flapjack.WordAlloc.removeDeadStructural input4275 value774 value8 value2 = (output4275, value774, value8) := by
  rw [input4275_def, output4275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4271]
  try dsimp only
  rw [child4274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4271_skip, output4274_skip]
  kernel_rfl

theorem node4276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4276 value774 value8 value2 = (output4276, value774, value8) := by
  rw [input4276_def, output4276_def]
  kernel_rfl

theorem node4277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4277 value774 value8 value2 = (output4277, value774, value8) := by
  rw [input4277_def, output4277_def]
  kernel_rfl

theorem node4278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4278 value774 value8 value2 = (output4278, value775, value8) := by
  rw [input4278_def, output4278_def]
  kernel_rfl

theorem node4279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4279 value775 value8 value2 = (output4279, value775, value8) := by
  rw [input4279_def, output4279_def]
  kernel_rfl

theorem node4280_cond_eq
    (child4278 : Flapjack.WordAlloc.removeDeadStructural input4278 value774 value8 value2 = (output4278, value775, value8))
    (child4279 : Flapjack.WordAlloc.removeDeadStructural input4279 value775 value8 value2 = (output4279, value775, value8)) : Flapjack.WordAlloc.removeDeadStructural input4280 value774 value8 value2 = (output4280, value775, value8) := by
  rw [input4280_def, output4280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4278]
  try dsimp only
  rw [child4279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4278_skip, output4279_skip]
  kernel_rfl

theorem node4281_cond_eq
    (child4277 : Flapjack.WordAlloc.removeDeadStructural input4277 value774 value8 value2 = (output4277, value774, value8))
    (child4280 : Flapjack.WordAlloc.removeDeadStructural input4280 value774 value8 value2 = (output4280, value775, value8)) : Flapjack.WordAlloc.removeDeadStructural input4281 value774 value8 value2 = (output4281, value775, value8) := by
  rw [input4281_def, output4281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4277]
  try dsimp only
  rw [child4280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4277_skip, output4280_skip]
  kernel_rfl

theorem node4282_cond_eq
    (child4276 : Flapjack.WordAlloc.removeDeadStructural input4276 value774 value8 value2 = (output4276, value774, value8))
    (child4281 : Flapjack.WordAlloc.removeDeadStructural input4281 value774 value8 value2 = (output4281, value775, value8)) : Flapjack.WordAlloc.removeDeadStructural input4282 value774 value8 value2 = (output4282, value775, value8) := by
  rw [input4282_def, output4282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4276]
  try dsimp only
  rw [child4281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4276_skip, output4281_skip]
  kernel_rfl

theorem node4283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4283 value775 value8 value2 = (output4283, value776, value8) := by
  rw [input4283_def, output4283_def]
  kernel_rfl

theorem node4284_cond_eq
    (child4282 : Flapjack.WordAlloc.removeDeadStructural input4282 value774 value8 value2 = (output4282, value775, value8))
    (child4283 : Flapjack.WordAlloc.removeDeadStructural input4283 value775 value8 value2 = (output4283, value776, value8)) : Flapjack.WordAlloc.removeDeadStructural input4284 value774 value8 value2 = (output4284, value776, value8) := by
  rw [input4284_def, output4284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4282]
  try dsimp only
  rw [child4283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4282_skip, output4283_skip]
  kernel_rfl

theorem node4285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4285 value776 value8 value2 = (output4285, value777, value1) := by
  rw [input4285_def, output4285_def]
  kernel_rfl

theorem node4286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4286 value777 value1 value2 = (output4286, value778, value1) := by
  rw [input4286_def, output4286_def]
  kernel_rfl

theorem node4287_cond_eq
    (child4285 : Flapjack.WordAlloc.removeDeadStructural input4285 value776 value8 value2 = (output4285, value777, value1))
    (child4286 : Flapjack.WordAlloc.removeDeadStructural input4286 value777 value1 value2 = (output4286, value778, value1)) : Flapjack.WordAlloc.removeDeadStructural input4287 value776 value8 value2 = (output4287, value778, value1) := by
  rw [input4287_def, output4287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4285]
  try dsimp only
  rw [child4286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4285_skip, output4286_skip]
  kernel_rfl

theorem node4288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4288 value778 value1 value2 = (output4288, value776, value1) := by
  rw [input4288_def, output4288_def]
  kernel_rfl

theorem node4289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4289 value776 value1 value2 = (output4289, value776, value1) := by
  rw [input4289_def, output4289_def]
  kernel_rfl

theorem node4290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4290 value776 value1 value2 = (output4290, value779, value1) := by
  rw [input4290_def, output4290_def]
  kernel_rfl

theorem node4291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4291 value779 value1 value2 = (output4291, value779, value1) := by
  rw [input4291_def, output4291_def]
  kernel_rfl

theorem node4292_cond_eq
    (child4290 : Flapjack.WordAlloc.removeDeadStructural input4290 value776 value1 value2 = (output4290, value779, value1))
    (child4291 : Flapjack.WordAlloc.removeDeadStructural input4291 value779 value1 value2 = (output4291, value779, value1)) : Flapjack.WordAlloc.removeDeadStructural input4292 value776 value1 value2 = (output4292, value779, value1) := by
  rw [input4292_def, output4292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4290]
  try dsimp only
  rw [child4291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4290_skip, output4291_skip]
  kernel_rfl

theorem node4293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4293 value779 value1 value2 = (output4293, value780, value1) := by
  rw [input4293_def, output4293_def]
  kernel_rfl

theorem node4294_cond_eq
    (child4292 : Flapjack.WordAlloc.removeDeadStructural input4292 value776 value1 value2 = (output4292, value779, value1))
    (child4293 : Flapjack.WordAlloc.removeDeadStructural input4293 value779 value1 value2 = (output4293, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input4294 value776 value1 value2 = (output4294, value780, value1) := by
  rw [input4294_def, output4294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4292]
  try dsimp only
  rw [child4293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4292_skip, output4293_skip]
  kernel_rfl

theorem node4295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4295 value780 value1 value2 = (output4295, value780, value1) := by
  rw [input4295_def, output4295_def]
  kernel_rfl

theorem node4296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4296 value780 value1 value2 = (output4296, value780, value1) := by
  rw [input4296_def, output4296_def]
  kernel_rfl

theorem node4297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4297 value780 value1 value2 = (output4297, value780, value1) := by
  rw [input4297_def, output4297_def]
  kernel_rfl

theorem node4298_cond_eq
    (child4296 : Flapjack.WordAlloc.removeDeadStructural input4296 value780 value1 value2 = (output4296, value780, value1))
    (child4297 : Flapjack.WordAlloc.removeDeadStructural input4297 value780 value1 value2 = (output4297, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input4298 value780 value1 value2 = (output4298, value780, value1) := by
  rw [input4298_def, output4298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4296]
  try dsimp only
  rw [child4297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4296_skip, output4297_skip]
  kernel_rfl

theorem node4299_cond_eq
    (child4295 : Flapjack.WordAlloc.removeDeadStructural input4295 value780 value1 value2 = (output4295, value780, value1))
    (child4298 : Flapjack.WordAlloc.removeDeadStructural input4298 value780 value1 value2 = (output4298, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input4299 value780 value1 value2 = (output4299, value780, value1) := by
  rw [input4299_def, output4299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4295]
  try dsimp only
  rw [child4298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4295_skip, output4298_skip]
  kernel_rfl

theorem node4300_cond_eq
    (child4294 : Flapjack.WordAlloc.removeDeadStructural input4294 value776 value1 value2 = (output4294, value780, value1))
    (child4299 : Flapjack.WordAlloc.removeDeadStructural input4299 value780 value1 value2 = (output4299, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input4300 value776 value1 value2 = (output4300, value780, value1) := by
  rw [input4300_def, output4300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4294]
  try dsimp only
  rw [child4299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4294_skip, output4299_skip]
  kernel_rfl

theorem node4301_cond_eq
    (child4289 : Flapjack.WordAlloc.removeDeadStructural input4289 value776 value1 value2 = (output4289, value776, value1))
    (child4300 : Flapjack.WordAlloc.removeDeadStructural input4300 value776 value1 value2 = (output4300, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input4301 value776 value1 value2 = (output4301, value780, value1) := by
  rw [input4301_def, output4301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4289]
  try dsimp only
  rw [child4300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4289_skip, output4300_skip]
  kernel_rfl

theorem node4302_cond_eq
    (child4288 : Flapjack.WordAlloc.removeDeadStructural input4288 value778 value1 value2 = (output4288, value776, value1))
    (child4301 : Flapjack.WordAlloc.removeDeadStructural input4301 value776 value1 value2 = (output4301, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input4302 value778 value1 value2 = (output4302, value780, value1) := by
  rw [input4302_def, output4302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4288]
  try dsimp only
  rw [child4301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4288_skip, output4301_skip]
  kernel_rfl

theorem node4303_cond_eq
    (child4287 : Flapjack.WordAlloc.removeDeadStructural input4287 value776 value8 value2 = (output4287, value778, value1))
    (child4302 : Flapjack.WordAlloc.removeDeadStructural input4302 value778 value1 value2 = (output4302, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input4303 value776 value8 value2 = (output4303, value780, value1) := by
  rw [input4303_def, output4303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4287]
  try dsimp only
  rw [child4302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4287_skip, output4302_skip]
  kernel_rfl

theorem node4304_cond_eq
    (child4284 : Flapjack.WordAlloc.removeDeadStructural input4284 value774 value8 value2 = (output4284, value776, value8))
    (child4303 : Flapjack.WordAlloc.removeDeadStructural input4303 value776 value8 value2 = (output4303, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input4304 value774 value8 value2 = (output4304, value780, value1) := by
  rw [input4304_def, output4304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4284]
  try dsimp only
  rw [child4303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4284_skip, output4303_skip]
  kernel_rfl

theorem node4305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4305 value774 value8 value2 = (output4305, value774, value8) := by
  rw [input4305_def, output4305_def]
  kernel_rfl

theorem node4306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4306 value774 value8 value2 = (output4306, value774, value8) := by
  rw [input4306_def, output4306_def]
  kernel_rfl

theorem node4307_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4307 value774 value8 value2 = (output4307, value781, value8) := by
  rw [input4307_def, output4307_def]
  kernel_rfl

theorem node4308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4308 value781 value8 value2 = (output4308, value781, value8) := by
  rw [input4308_def, output4308_def]
  kernel_rfl

theorem node4309_cond_eq
    (child4307 : Flapjack.WordAlloc.removeDeadStructural input4307 value774 value8 value2 = (output4307, value781, value8))
    (child4308 : Flapjack.WordAlloc.removeDeadStructural input4308 value781 value8 value2 = (output4308, value781, value8)) : Flapjack.WordAlloc.removeDeadStructural input4309 value774 value8 value2 = (output4309, value781, value8) := by
  rw [input4309_def, output4309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4307]
  try dsimp only
  rw [child4308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4307_skip, output4308_skip]
  kernel_rfl

theorem node4310_cond_eq
    (child4306 : Flapjack.WordAlloc.removeDeadStructural input4306 value774 value8 value2 = (output4306, value774, value8))
    (child4309 : Flapjack.WordAlloc.removeDeadStructural input4309 value774 value8 value2 = (output4309, value781, value8)) : Flapjack.WordAlloc.removeDeadStructural input4310 value774 value8 value2 = (output4310, value781, value8) := by
  rw [input4310_def, output4310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4306]
  try dsimp only
  rw [child4309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4306_skip, output4309_skip]
  kernel_rfl

theorem node4311_cond_eq
    (child4305 : Flapjack.WordAlloc.removeDeadStructural input4305 value774 value8 value2 = (output4305, value774, value8))
    (child4310 : Flapjack.WordAlloc.removeDeadStructural input4310 value774 value8 value2 = (output4310, value781, value8)) : Flapjack.WordAlloc.removeDeadStructural input4311 value774 value8 value2 = (output4311, value781, value8) := by
  rw [input4311_def, output4311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4305]
  try dsimp only
  rw [child4310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4305_skip, output4310_skip]
  kernel_rfl

theorem node4312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4312 value781 value8 value2 = (output4312, value782, value8) := by
  rw [input4312_def, output4312_def]
  kernel_rfl

theorem node4313_cond_eq
    (child4311 : Flapjack.WordAlloc.removeDeadStructural input4311 value774 value8 value2 = (output4311, value781, value8))
    (child4312 : Flapjack.WordAlloc.removeDeadStructural input4312 value781 value8 value2 = (output4312, value782, value8)) : Flapjack.WordAlloc.removeDeadStructural input4313 value774 value8 value2 = (output4313, value782, value8) := by
  rw [input4313_def, output4313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4311]
  try dsimp only
  rw [child4312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4311_skip, output4312_skip]
  kernel_rfl

theorem node4314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4314 value782 value8 value2 = (output4314, value782, value8) := by
  rw [input4314_def, output4314_def]
  kernel_rfl

theorem node4315_cond_eq
    (child4313 : Flapjack.WordAlloc.removeDeadStructural input4313 value774 value8 value2 = (output4313, value782, value8))
    (child4314 : Flapjack.WordAlloc.removeDeadStructural input4314 value782 value8 value2 = (output4314, value782, value8)) : Flapjack.WordAlloc.removeDeadStructural input4315 value774 value8 value2 = (output4315, value782, value8) := by
  rw [input4315_def, output4315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4313]
  try dsimp only
  rw [child4314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4313_skip, output4314_skip]
  kernel_rfl

theorem node4316_cond_eq
    (child4304 : Flapjack.WordAlloc.removeDeadStructural input4304 value774 value8 value2 = (output4304, value780, value1))
    (child4315 : Flapjack.WordAlloc.removeDeadStructural input4315 value774 value8 value2 = (output4315, value782, value8)) : Flapjack.WordAlloc.removeDeadStructural input4316 value774 value8 value2 = (output4316, value784, value1) := by
  rw [input4316_def, output4316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4304]
  try dsimp only
  rw [child4315]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4304_skip, output4315_skip]
  kernel_rfl

theorem node4317_cond_eq
    (child4275 : Flapjack.WordAlloc.removeDeadStructural input4275 value774 value8 value2 = (output4275, value774, value8))
    (child4316 : Flapjack.WordAlloc.removeDeadStructural input4316 value774 value8 value2 = (output4316, value784, value1)) : Flapjack.WordAlloc.removeDeadStructural input4317 value774 value8 value2 = (output4317, value784, value1) := by
  rw [input4317_def, output4317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4275]
  try dsimp only
  rw [child4316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4275_skip, output4316_skip]
  kernel_rfl

theorem node4318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4318 value784 value1 value2 = (output4318, value782, value1) := by
  rw [input4318_def, output4318_def]
  kernel_rfl

theorem node4319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4319 value782 value1 value2 = (output4319, value785, value1) := by
  rw [input4319_def, output4319_def]
  kernel_rfl

theorem node4320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4320 value785 value1 value2 = (output4320, value785, value1) := by
  rw [input4320_def, output4320_def]
  kernel_rfl

theorem node4321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4321 value785 value1 value2 = (output4321, value785, value1) := by
  rw [input4321_def, output4321_def]
  kernel_rfl

theorem node4322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4322 value785 value1 value2 = (output4322, value785, value1) := by
  rw [input4322_def, output4322_def]
  kernel_rfl

theorem node4323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4323 value785 value1 value2 = (output4323, value785, value1) := by
  rw [input4323_def, output4323_def]
  kernel_rfl

theorem node4324_cond_eq
    (child4322 : Flapjack.WordAlloc.removeDeadStructural input4322 value785 value1 value2 = (output4322, value785, value1))
    (child4323 : Flapjack.WordAlloc.removeDeadStructural input4323 value785 value1 value2 = (output4323, value785, value1)) : Flapjack.WordAlloc.removeDeadStructural input4324 value785 value1 value2 = (output4324, value785, value1) := by
  rw [input4324_def, output4324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4322]
  try dsimp only
  rw [child4323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4322_skip, output4323_skip]
  kernel_rfl

theorem node4325_cond_eq
    (child4321 : Flapjack.WordAlloc.removeDeadStructural input4321 value785 value1 value2 = (output4321, value785, value1))
    (child4324 : Flapjack.WordAlloc.removeDeadStructural input4324 value785 value1 value2 = (output4324, value785, value1)) : Flapjack.WordAlloc.removeDeadStructural input4325 value785 value1 value2 = (output4325, value785, value1) := by
  rw [input4325_def, output4325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4321]
  try dsimp only
  rw [child4324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4321_skip, output4324_skip]
  kernel_rfl

theorem node4326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4326 value785 value1 value2 = (output4326, value785, value1) := by
  rw [input4326_def, output4326_def]
  kernel_rfl

theorem node4327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4327 value785 value1 value2 = (output4327, value785, value1) := by
  rw [input4327_def, output4327_def]
  kernel_rfl

theorem node4328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4328 value785 value1 value2 = (output4328, value780, value1) := by
  rw [input4328_def, output4328_def]
  kernel_rfl

theorem node4329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4329 value780 value1 value2 = (output4329, value780, value1) := by
  rw [input4329_def, output4329_def]
  kernel_rfl

theorem node4330_cond_eq
    (child4328 : Flapjack.WordAlloc.removeDeadStructural input4328 value785 value1 value2 = (output4328, value780, value1))
    (child4329 : Flapjack.WordAlloc.removeDeadStructural input4329 value780 value1 value2 = (output4329, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input4330 value785 value1 value2 = (output4330, value780, value1) := by
  rw [input4330_def, output4330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4328]
  try dsimp only
  rw [child4329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4328_skip, output4329_skip]
  kernel_rfl

theorem node4331_cond_eq
    (child4327 : Flapjack.WordAlloc.removeDeadStructural input4327 value785 value1 value2 = (output4327, value785, value1))
    (child4330 : Flapjack.WordAlloc.removeDeadStructural input4330 value785 value1 value2 = (output4330, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input4331 value785 value1 value2 = (output4331, value780, value1) := by
  rw [input4331_def, output4331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4327]
  try dsimp only
  rw [child4330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4327_skip, output4330_skip]
  kernel_rfl

theorem node4332_cond_eq
    (child4326 : Flapjack.WordAlloc.removeDeadStructural input4326 value785 value1 value2 = (output4326, value785, value1))
    (child4331 : Flapjack.WordAlloc.removeDeadStructural input4331 value785 value1 value2 = (output4331, value780, value1)) : Flapjack.WordAlloc.removeDeadStructural input4332 value785 value1 value2 = (output4332, value780, value1) := by
  rw [input4332_def, output4332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4326]
  try dsimp only
  rw [child4331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4326_skip, output4331_skip]
  kernel_rfl

theorem node4333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4333 value780 value1 value2 = (output4333, value786, value1) := by
  rw [input4333_def, output4333_def]
  kernel_rfl

theorem node4334_cond_eq
    (child4332 : Flapjack.WordAlloc.removeDeadStructural input4332 value785 value1 value2 = (output4332, value780, value1))
    (child4333 : Flapjack.WordAlloc.removeDeadStructural input4333 value780 value1 value2 = (output4333, value786, value1)) : Flapjack.WordAlloc.removeDeadStructural input4334 value785 value1 value2 = (output4334, value786, value1) := by
  rw [input4334_def, output4334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4332]
  try dsimp only
  rw [child4333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4332_skip, output4333_skip]
  kernel_rfl

theorem node4335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4335 value786 value1 value2 = (output4335, value787, value1) := by
  rw [input4335_def, output4335_def]
  kernel_rfl

theorem node4336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4336 value787 value1 value2 = (output4336, value788, value1) := by
  rw [input4336_def, output4336_def]
  kernel_rfl

theorem node4337_cond_eq
    (child4335 : Flapjack.WordAlloc.removeDeadStructural input4335 value786 value1 value2 = (output4335, value787, value1))
    (child4336 : Flapjack.WordAlloc.removeDeadStructural input4336 value787 value1 value2 = (output4336, value788, value1)) : Flapjack.WordAlloc.removeDeadStructural input4337 value786 value1 value2 = (output4337, value788, value1) := by
  rw [input4337_def, output4337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4335]
  try dsimp only
  rw [child4336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4335_skip, output4336_skip]
  kernel_rfl

theorem node4338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4338 value788 value1 value2 = (output4338, value786, value1) := by
  rw [input4338_def, output4338_def]
  kernel_rfl

theorem node4339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4339 value786 value1 value2 = (output4339, value786, value1) := by
  rw [input4339_def, output4339_def]
  kernel_rfl

theorem node4340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4340 value786 value1 value2 = (output4340, value789, value1) := by
  rw [input4340_def, output4340_def]
  kernel_rfl

theorem node4341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4341 value789 value1 value2 = (output4341, value789, value1) := by
  rw [input4341_def, output4341_def]
  kernel_rfl

theorem node4342_cond_eq
    (child4340 : Flapjack.WordAlloc.removeDeadStructural input4340 value786 value1 value2 = (output4340, value789, value1))
    (child4341 : Flapjack.WordAlloc.removeDeadStructural input4341 value789 value1 value2 = (output4341, value789, value1)) : Flapjack.WordAlloc.removeDeadStructural input4342 value786 value1 value2 = (output4342, value789, value1) := by
  rw [input4342_def, output4342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4340]
  try dsimp only
  rw [child4341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4340_skip, output4341_skip]
  kernel_rfl

theorem node4343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4343 value789 value1 value2 = (output4343, value790, value1) := by
  rw [input4343_def, output4343_def]
  kernel_rfl

theorem node4344_cond_eq
    (child4342 : Flapjack.WordAlloc.removeDeadStructural input4342 value786 value1 value2 = (output4342, value789, value1))
    (child4343 : Flapjack.WordAlloc.removeDeadStructural input4343 value789 value1 value2 = (output4343, value790, value1)) : Flapjack.WordAlloc.removeDeadStructural input4344 value786 value1 value2 = (output4344, value790, value1) := by
  rw [input4344_def, output4344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4342]
  try dsimp only
  rw [child4343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4342_skip, output4343_skip]
  kernel_rfl

theorem node4345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4345 value790 value1 value2 = (output4345, value790, value1) := by
  rw [input4345_def, output4345_def]
  kernel_rfl

theorem node4346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4346 value790 value1 value2 = (output4346, value790, value1) := by
  rw [input4346_def, output4346_def]
  kernel_rfl

theorem node4347_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4347 value790 value1 value2 = (output4347, value790, value1) := by
  rw [input4347_def, output4347_def]
  kernel_rfl

theorem node4348_cond_eq
    (child4346 : Flapjack.WordAlloc.removeDeadStructural input4346 value790 value1 value2 = (output4346, value790, value1))
    (child4347 : Flapjack.WordAlloc.removeDeadStructural input4347 value790 value1 value2 = (output4347, value790, value1)) : Flapjack.WordAlloc.removeDeadStructural input4348 value790 value1 value2 = (output4348, value790, value1) := by
  rw [input4348_def, output4348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4346]
  try dsimp only
  rw [child4347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4346_skip, output4347_skip]
  kernel_rfl

theorem node4349_cond_eq
    (child4345 : Flapjack.WordAlloc.removeDeadStructural input4345 value790 value1 value2 = (output4345, value790, value1))
    (child4348 : Flapjack.WordAlloc.removeDeadStructural input4348 value790 value1 value2 = (output4348, value790, value1)) : Flapjack.WordAlloc.removeDeadStructural input4349 value790 value1 value2 = (output4349, value790, value1) := by
  rw [input4349_def, output4349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4345]
  try dsimp only
  rw [child4348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4345_skip, output4348_skip]
  kernel_rfl

theorem node4350_cond_eq
    (child4344 : Flapjack.WordAlloc.removeDeadStructural input4344 value786 value1 value2 = (output4344, value790, value1))
    (child4349 : Flapjack.WordAlloc.removeDeadStructural input4349 value790 value1 value2 = (output4349, value790, value1)) : Flapjack.WordAlloc.removeDeadStructural input4350 value786 value1 value2 = (output4350, value790, value1) := by
  rw [input4350_def, output4350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4344]
  try dsimp only
  rw [child4349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4344_skip, output4349_skip]
  kernel_rfl

theorem node4351_cond_eq
    (child4339 : Flapjack.WordAlloc.removeDeadStructural input4339 value786 value1 value2 = (output4339, value786, value1))
    (child4350 : Flapjack.WordAlloc.removeDeadStructural input4350 value786 value1 value2 = (output4350, value790, value1)) : Flapjack.WordAlloc.removeDeadStructural input4351 value786 value1 value2 = (output4351, value790, value1) := by
  rw [input4351_def, output4351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4339]
  try dsimp only
  rw [child4350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4339_skip, output4350_skip]
  kernel_rfl

#print axioms node4351_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
