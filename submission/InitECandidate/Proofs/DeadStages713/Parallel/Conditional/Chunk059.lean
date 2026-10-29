import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk059
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node15104_cond_eq
    (child9206 : Flapjack.WordAlloc.removeDeadStructural input9206 value5 value1 value2 = (output9206, value4607, value1))
    (child15103 : Flapjack.WordAlloc.removeDeadStructural input15103 value4607 value1 value2 = (output15103, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15104 value5 value1 value2 = (output15104, value6896, value1) := by
  rw [input15104_def, output15104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9206]
  try dsimp only
  rw [child15103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9206_skip, output15103_skip]
  kernel_rfl

theorem node15105_cond_eq
    (child9203 : Flapjack.WordAlloc.removeDeadStructural input9203 value4600 value1 value2 = (output9203, value5, value1))
    (child15104 : Flapjack.WordAlloc.removeDeadStructural input15104 value5 value1 value2 = (output15104, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15105 value4600 value1 value2 = (output15105, value6896, value1) := by
  rw [input15105_def, output15105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9203]
  try dsimp only
  rw [child15104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9203_skip, output15104_skip]
  kernel_rfl

theorem node15106_cond_eq
    (child9192 : Flapjack.WordAlloc.removeDeadStructural input9192 value4600 value1 value2 = (output9192, value4600, value1))
    (child15105 : Flapjack.WordAlloc.removeDeadStructural input15105 value4600 value1 value2 = (output15105, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15106 value4600 value1 value2 = (output15106, value6896, value1) := by
  rw [input15106_def, output15106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9192]
  try dsimp only
  rw [child15105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9192_skip, output15105_skip]
  kernel_rfl

theorem node15107_cond_eq
    (child9191 : Flapjack.WordAlloc.removeDeadStructural input9191 value4599 value1 value2 = (output9191, value4600, value1))
    (child15106 : Flapjack.WordAlloc.removeDeadStructural input15106 value4600 value1 value2 = (output15106, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15107 value4599 value1 value2 = (output15107, value6896, value1) := by
  rw [input15107_def, output15107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9191]
  try dsimp only
  rw [child15106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9191_skip, output15106_skip]
  kernel_rfl

theorem node15108_cond_eq
    (child9190 : Flapjack.WordAlloc.removeDeadStructural input9190 value5 value1 value2 = (output9190, value4599, value1))
    (child15107 : Flapjack.WordAlloc.removeDeadStructural input15107 value4599 value1 value2 = (output15107, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15108 value5 value1 value2 = (output15108, value6896, value1) := by
  rw [input15108_def, output15108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9190]
  try dsimp only
  rw [child15107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9190_skip, output15107_skip]
  kernel_rfl

theorem node15109_cond_eq
    (child9187 : Flapjack.WordAlloc.removeDeadStructural input9187 value4592 value1 value2 = (output9187, value5, value1))
    (child15108 : Flapjack.WordAlloc.removeDeadStructural input15108 value5 value1 value2 = (output15108, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15109 value4592 value1 value2 = (output15109, value6896, value1) := by
  rw [input15109_def, output15109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9187]
  try dsimp only
  rw [child15108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9187_skip, output15108_skip]
  kernel_rfl

theorem node15110_cond_eq
    (child9176 : Flapjack.WordAlloc.removeDeadStructural input9176 value4592 value1 value2 = (output9176, value4592, value1))
    (child15109 : Flapjack.WordAlloc.removeDeadStructural input15109 value4592 value1 value2 = (output15109, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15110 value4592 value1 value2 = (output15110, value6896, value1) := by
  rw [input15110_def, output15110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9176]
  try dsimp only
  rw [child15109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9176_skip, output15109_skip]
  kernel_rfl

theorem node15111_cond_eq
    (child9175 : Flapjack.WordAlloc.removeDeadStructural input9175 value4591 value1 value2 = (output9175, value4592, value1))
    (child15110 : Flapjack.WordAlloc.removeDeadStructural input15110 value4592 value1 value2 = (output15110, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15111 value4591 value1 value2 = (output15111, value6896, value1) := by
  rw [input15111_def, output15111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9175]
  try dsimp only
  rw [child15110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9175_skip, output15110_skip]
  kernel_rfl

theorem node15112_cond_eq
    (child9174 : Flapjack.WordAlloc.removeDeadStructural input9174 value5 value1 value2 = (output9174, value4591, value1))
    (child15111 : Flapjack.WordAlloc.removeDeadStructural input15111 value4591 value1 value2 = (output15111, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15112 value5 value1 value2 = (output15112, value6896, value1) := by
  rw [input15112_def, output15112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9174]
  try dsimp only
  rw [child15111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9174_skip, output15111_skip]
  kernel_rfl

theorem node15113_cond_eq
    (child9171 : Flapjack.WordAlloc.removeDeadStructural input9171 value4584 value1 value2 = (output9171, value5, value1))
    (child15112 : Flapjack.WordAlloc.removeDeadStructural input15112 value5 value1 value2 = (output15112, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15113 value4584 value1 value2 = (output15113, value6896, value1) := by
  rw [input15113_def, output15113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9171]
  try dsimp only
  rw [child15112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9171_skip, output15112_skip]
  kernel_rfl

theorem node15114_cond_eq
    (child9160 : Flapjack.WordAlloc.removeDeadStructural input9160 value4584 value1 value2 = (output9160, value4584, value1))
    (child15113 : Flapjack.WordAlloc.removeDeadStructural input15113 value4584 value1 value2 = (output15113, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15114 value4584 value1 value2 = (output15114, value6896, value1) := by
  rw [input15114_def, output15114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9160]
  try dsimp only
  rw [child15113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9160_skip, output15113_skip]
  kernel_rfl

theorem node15115_cond_eq
    (child9159 : Flapjack.WordAlloc.removeDeadStructural input9159 value4583 value1 value2 = (output9159, value4584, value1))
    (child15114 : Flapjack.WordAlloc.removeDeadStructural input15114 value4584 value1 value2 = (output15114, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15115 value4583 value1 value2 = (output15115, value6896, value1) := by
  rw [input15115_def, output15115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9159]
  try dsimp only
  rw [child15114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9159_skip, output15114_skip]
  kernel_rfl

theorem node15116_cond_eq
    (child9158 : Flapjack.WordAlloc.removeDeadStructural input9158 value5 value1 value2 = (output9158, value4583, value1))
    (child15115 : Flapjack.WordAlloc.removeDeadStructural input15115 value4583 value1 value2 = (output15115, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15116 value5 value1 value2 = (output15116, value6896, value1) := by
  rw [input15116_def, output15116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9158]
  try dsimp only
  rw [child15115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9158_skip, output15115_skip]
  kernel_rfl

theorem node15117_cond_eq
    (child9155 : Flapjack.WordAlloc.removeDeadStructural input9155 value4576 value1 value2 = (output9155, value5, value1))
    (child15116 : Flapjack.WordAlloc.removeDeadStructural input15116 value5 value1 value2 = (output15116, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15117 value4576 value1 value2 = (output15117, value6896, value1) := by
  rw [input15117_def, output15117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9155]
  try dsimp only
  rw [child15116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9155_skip, output15116_skip]
  kernel_rfl

theorem node15118_cond_eq
    (child9144 : Flapjack.WordAlloc.removeDeadStructural input9144 value4576 value1 value2 = (output9144, value4576, value1))
    (child15117 : Flapjack.WordAlloc.removeDeadStructural input15117 value4576 value1 value2 = (output15117, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15118 value4576 value1 value2 = (output15118, value6896, value1) := by
  rw [input15118_def, output15118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9144]
  try dsimp only
  rw [child15117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9144_skip, output15117_skip]
  kernel_rfl

theorem node15119_cond_eq
    (child9143 : Flapjack.WordAlloc.removeDeadStructural input9143 value4575 value1 value2 = (output9143, value4576, value1))
    (child15118 : Flapjack.WordAlloc.removeDeadStructural input15118 value4576 value1 value2 = (output15118, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15119 value4575 value1 value2 = (output15119, value6896, value1) := by
  rw [input15119_def, output15119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9143]
  try dsimp only
  rw [child15118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9143_skip, output15118_skip]
  kernel_rfl

theorem node15120_cond_eq
    (child9142 : Flapjack.WordAlloc.removeDeadStructural input9142 value5 value1 value2 = (output9142, value4575, value1))
    (child15119 : Flapjack.WordAlloc.removeDeadStructural input15119 value4575 value1 value2 = (output15119, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15120 value5 value1 value2 = (output15120, value6896, value1) := by
  rw [input15120_def, output15120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9142]
  try dsimp only
  rw [child15119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9142_skip, output15119_skip]
  kernel_rfl

theorem node15121_cond_eq
    (child9139 : Flapjack.WordAlloc.removeDeadStructural input9139 value4568 value1 value2 = (output9139, value5, value1))
    (child15120 : Flapjack.WordAlloc.removeDeadStructural input15120 value5 value1 value2 = (output15120, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15121 value4568 value1 value2 = (output15121, value6896, value1) := by
  rw [input15121_def, output15121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9139]
  try dsimp only
  rw [child15120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9139_skip, output15120_skip]
  kernel_rfl

theorem node15122_cond_eq
    (child9128 : Flapjack.WordAlloc.removeDeadStructural input9128 value4568 value1 value2 = (output9128, value4568, value1))
    (child15121 : Flapjack.WordAlloc.removeDeadStructural input15121 value4568 value1 value2 = (output15121, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15122 value4568 value1 value2 = (output15122, value6896, value1) := by
  rw [input15122_def, output15122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9128]
  try dsimp only
  rw [child15121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9128_skip, output15121_skip]
  kernel_rfl

theorem node15123_cond_eq
    (child9127 : Flapjack.WordAlloc.removeDeadStructural input9127 value4567 value1 value2 = (output9127, value4568, value1))
    (child15122 : Flapjack.WordAlloc.removeDeadStructural input15122 value4568 value1 value2 = (output15122, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15123 value4567 value1 value2 = (output15123, value6896, value1) := by
  rw [input15123_def, output15123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9127]
  try dsimp only
  rw [child15122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9127_skip, output15122_skip]
  kernel_rfl

theorem node15124_cond_eq
    (child9126 : Flapjack.WordAlloc.removeDeadStructural input9126 value5 value1 value2 = (output9126, value4567, value1))
    (child15123 : Flapjack.WordAlloc.removeDeadStructural input15123 value4567 value1 value2 = (output15123, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15124 value5 value1 value2 = (output15124, value6896, value1) := by
  rw [input15124_def, output15124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9126]
  try dsimp only
  rw [child15123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9126_skip, output15123_skip]
  kernel_rfl

theorem node15125_cond_eq
    (child9123 : Flapjack.WordAlloc.removeDeadStructural input9123 value4560 value1 value2 = (output9123, value5, value1))
    (child15124 : Flapjack.WordAlloc.removeDeadStructural input15124 value5 value1 value2 = (output15124, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15125 value4560 value1 value2 = (output15125, value6896, value1) := by
  rw [input15125_def, output15125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9123]
  try dsimp only
  rw [child15124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9123_skip, output15124_skip]
  kernel_rfl

theorem node15126_cond_eq
    (child9112 : Flapjack.WordAlloc.removeDeadStructural input9112 value4560 value1 value2 = (output9112, value4560, value1))
    (child15125 : Flapjack.WordAlloc.removeDeadStructural input15125 value4560 value1 value2 = (output15125, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15126 value4560 value1 value2 = (output15126, value6896, value1) := by
  rw [input15126_def, output15126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9112]
  try dsimp only
  rw [child15125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9112_skip, output15125_skip]
  kernel_rfl

theorem node15127_cond_eq
    (child9111 : Flapjack.WordAlloc.removeDeadStructural input9111 value4559 value1 value2 = (output9111, value4560, value1))
    (child15126 : Flapjack.WordAlloc.removeDeadStructural input15126 value4560 value1 value2 = (output15126, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15127 value4559 value1 value2 = (output15127, value6896, value1) := by
  rw [input15127_def, output15127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9111]
  try dsimp only
  rw [child15126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9111_skip, output15126_skip]
  kernel_rfl

theorem node15128_cond_eq
    (child9110 : Flapjack.WordAlloc.removeDeadStructural input9110 value5 value1 value2 = (output9110, value4559, value1))
    (child15127 : Flapjack.WordAlloc.removeDeadStructural input15127 value4559 value1 value2 = (output15127, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15128 value5 value1 value2 = (output15128, value6896, value1) := by
  rw [input15128_def, output15128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9110]
  try dsimp only
  rw [child15127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9110_skip, output15127_skip]
  kernel_rfl

theorem node15129_cond_eq
    (child9107 : Flapjack.WordAlloc.removeDeadStructural input9107 value4552 value1 value2 = (output9107, value5, value1))
    (child15128 : Flapjack.WordAlloc.removeDeadStructural input15128 value5 value1 value2 = (output15128, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15129 value4552 value1 value2 = (output15129, value6896, value1) := by
  rw [input15129_def, output15129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9107]
  try dsimp only
  rw [child15128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9107_skip, output15128_skip]
  kernel_rfl

theorem node15130_cond_eq
    (child9096 : Flapjack.WordAlloc.removeDeadStructural input9096 value4552 value1 value2 = (output9096, value4552, value1))
    (child15129 : Flapjack.WordAlloc.removeDeadStructural input15129 value4552 value1 value2 = (output15129, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15130 value4552 value1 value2 = (output15130, value6896, value1) := by
  rw [input15130_def, output15130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9096]
  try dsimp only
  rw [child15129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9096_skip, output15129_skip]
  kernel_rfl

theorem node15131_cond_eq
    (child9095 : Flapjack.WordAlloc.removeDeadStructural input9095 value4551 value1 value2 = (output9095, value4552, value1))
    (child15130 : Flapjack.WordAlloc.removeDeadStructural input15130 value4552 value1 value2 = (output15130, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15131 value4551 value1 value2 = (output15131, value6896, value1) := by
  rw [input15131_def, output15131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9095]
  try dsimp only
  rw [child15130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9095_skip, output15130_skip]
  kernel_rfl

theorem node15132_cond_eq
    (child9094 : Flapjack.WordAlloc.removeDeadStructural input9094 value5 value1 value2 = (output9094, value4551, value1))
    (child15131 : Flapjack.WordAlloc.removeDeadStructural input15131 value4551 value1 value2 = (output15131, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15132 value5 value1 value2 = (output15132, value6896, value1) := by
  rw [input15132_def, output15132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9094]
  try dsimp only
  rw [child15131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9094_skip, output15131_skip]
  kernel_rfl

theorem node15133_cond_eq
    (child9091 : Flapjack.WordAlloc.removeDeadStructural input9091 value4544 value1 value2 = (output9091, value5, value1))
    (child15132 : Flapjack.WordAlloc.removeDeadStructural input15132 value5 value1 value2 = (output15132, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15133 value4544 value1 value2 = (output15133, value6896, value1) := by
  rw [input15133_def, output15133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9091]
  try dsimp only
  rw [child15132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9091_skip, output15132_skip]
  kernel_rfl

theorem node15134_cond_eq
    (child9080 : Flapjack.WordAlloc.removeDeadStructural input9080 value4544 value1 value2 = (output9080, value4544, value1))
    (child15133 : Flapjack.WordAlloc.removeDeadStructural input15133 value4544 value1 value2 = (output15133, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15134 value4544 value1 value2 = (output15134, value6896, value1) := by
  rw [input15134_def, output15134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9080]
  try dsimp only
  rw [child15133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9080_skip, output15133_skip]
  kernel_rfl

theorem node15135_cond_eq
    (child9079 : Flapjack.WordAlloc.removeDeadStructural input9079 value4543 value1 value2 = (output9079, value4544, value1))
    (child15134 : Flapjack.WordAlloc.removeDeadStructural input15134 value4544 value1 value2 = (output15134, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15135 value4543 value1 value2 = (output15135, value6896, value1) := by
  rw [input15135_def, output15135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9079]
  try dsimp only
  rw [child15134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9079_skip, output15134_skip]
  kernel_rfl

theorem node15136_cond_eq
    (child9078 : Flapjack.WordAlloc.removeDeadStructural input9078 value5 value1 value2 = (output9078, value4543, value1))
    (child15135 : Flapjack.WordAlloc.removeDeadStructural input15135 value4543 value1 value2 = (output15135, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15136 value5 value1 value2 = (output15136, value6896, value1) := by
  rw [input15136_def, output15136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9078]
  try dsimp only
  rw [child15135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9078_skip, output15135_skip]
  kernel_rfl

theorem node15137_cond_eq
    (child9075 : Flapjack.WordAlloc.removeDeadStructural input9075 value4536 value1 value2 = (output9075, value5, value1))
    (child15136 : Flapjack.WordAlloc.removeDeadStructural input15136 value5 value1 value2 = (output15136, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15137 value4536 value1 value2 = (output15137, value6896, value1) := by
  rw [input15137_def, output15137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9075]
  try dsimp only
  rw [child15136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9075_skip, output15136_skip]
  kernel_rfl

theorem node15138_cond_eq
    (child9064 : Flapjack.WordAlloc.removeDeadStructural input9064 value4536 value1 value2 = (output9064, value4536, value1))
    (child15137 : Flapjack.WordAlloc.removeDeadStructural input15137 value4536 value1 value2 = (output15137, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15138 value4536 value1 value2 = (output15138, value6896, value1) := by
  rw [input15138_def, output15138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9064]
  try dsimp only
  rw [child15137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9064_skip, output15137_skip]
  kernel_rfl

theorem node15139_cond_eq
    (child9063 : Flapjack.WordAlloc.removeDeadStructural input9063 value4535 value1 value2 = (output9063, value4536, value1))
    (child15138 : Flapjack.WordAlloc.removeDeadStructural input15138 value4536 value1 value2 = (output15138, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15139 value4535 value1 value2 = (output15139, value6896, value1) := by
  rw [input15139_def, output15139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9063]
  try dsimp only
  rw [child15138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9063_skip, output15138_skip]
  kernel_rfl

theorem node15140_cond_eq
    (child9062 : Flapjack.WordAlloc.removeDeadStructural input9062 value5 value1 value2 = (output9062, value4535, value1))
    (child15139 : Flapjack.WordAlloc.removeDeadStructural input15139 value4535 value1 value2 = (output15139, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15140 value5 value1 value2 = (output15140, value6896, value1) := by
  rw [input15140_def, output15140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9062]
  try dsimp only
  rw [child15139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9062_skip, output15139_skip]
  kernel_rfl

theorem node15141_cond_eq
    (child9059 : Flapjack.WordAlloc.removeDeadStructural input9059 value4528 value1 value2 = (output9059, value5, value1))
    (child15140 : Flapjack.WordAlloc.removeDeadStructural input15140 value5 value1 value2 = (output15140, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15141 value4528 value1 value2 = (output15141, value6896, value1) := by
  rw [input15141_def, output15141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9059]
  try dsimp only
  rw [child15140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9059_skip, output15140_skip]
  kernel_rfl

theorem node15142_cond_eq
    (child9048 : Flapjack.WordAlloc.removeDeadStructural input9048 value4528 value1 value2 = (output9048, value4528, value1))
    (child15141 : Flapjack.WordAlloc.removeDeadStructural input15141 value4528 value1 value2 = (output15141, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15142 value4528 value1 value2 = (output15142, value6896, value1) := by
  rw [input15142_def, output15142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9048]
  try dsimp only
  rw [child15141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9048_skip, output15141_skip]
  kernel_rfl

theorem node15143_cond_eq
    (child9047 : Flapjack.WordAlloc.removeDeadStructural input9047 value4527 value1 value2 = (output9047, value4528, value1))
    (child15142 : Flapjack.WordAlloc.removeDeadStructural input15142 value4528 value1 value2 = (output15142, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15143 value4527 value1 value2 = (output15143, value6896, value1) := by
  rw [input15143_def, output15143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9047]
  try dsimp only
  rw [child15142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9047_skip, output15142_skip]
  kernel_rfl

theorem node15144_cond_eq
    (child9046 : Flapjack.WordAlloc.removeDeadStructural input9046 value5 value1 value2 = (output9046, value4527, value1))
    (child15143 : Flapjack.WordAlloc.removeDeadStructural input15143 value4527 value1 value2 = (output15143, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15144 value5 value1 value2 = (output15144, value6896, value1) := by
  rw [input15144_def, output15144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9046]
  try dsimp only
  rw [child15143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9046_skip, output15143_skip]
  kernel_rfl

theorem node15145_cond_eq
    (child9043 : Flapjack.WordAlloc.removeDeadStructural input9043 value4520 value1 value2 = (output9043, value5, value1))
    (child15144 : Flapjack.WordAlloc.removeDeadStructural input15144 value5 value1 value2 = (output15144, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15145 value4520 value1 value2 = (output15145, value6896, value1) := by
  rw [input15145_def, output15145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9043]
  try dsimp only
  rw [child15144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9043_skip, output15144_skip]
  kernel_rfl

theorem node15146_cond_eq
    (child9032 : Flapjack.WordAlloc.removeDeadStructural input9032 value4520 value1 value2 = (output9032, value4520, value1))
    (child15145 : Flapjack.WordAlloc.removeDeadStructural input15145 value4520 value1 value2 = (output15145, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15146 value4520 value1 value2 = (output15146, value6896, value1) := by
  rw [input15146_def, output15146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9032]
  try dsimp only
  rw [child15145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9032_skip, output15145_skip]
  kernel_rfl

theorem node15147_cond_eq
    (child9031 : Flapjack.WordAlloc.removeDeadStructural input9031 value4519 value1 value2 = (output9031, value4520, value1))
    (child15146 : Flapjack.WordAlloc.removeDeadStructural input15146 value4520 value1 value2 = (output15146, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15147 value4519 value1 value2 = (output15147, value6896, value1) := by
  rw [input15147_def, output15147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9031]
  try dsimp only
  rw [child15146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9031_skip, output15146_skip]
  kernel_rfl

theorem node15148_cond_eq
    (child9030 : Flapjack.WordAlloc.removeDeadStructural input9030 value5 value1 value2 = (output9030, value4519, value1))
    (child15147 : Flapjack.WordAlloc.removeDeadStructural input15147 value4519 value1 value2 = (output15147, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15148 value5 value1 value2 = (output15148, value6896, value1) := by
  rw [input15148_def, output15148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9030]
  try dsimp only
  rw [child15147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9030_skip, output15147_skip]
  kernel_rfl

theorem node15149_cond_eq
    (child9027 : Flapjack.WordAlloc.removeDeadStructural input9027 value4512 value1 value2 = (output9027, value5, value1))
    (child15148 : Flapjack.WordAlloc.removeDeadStructural input15148 value5 value1 value2 = (output15148, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15149 value4512 value1 value2 = (output15149, value6896, value1) := by
  rw [input15149_def, output15149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9027]
  try dsimp only
  rw [child15148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9027_skip, output15148_skip]
  kernel_rfl

theorem node15150_cond_eq
    (child9016 : Flapjack.WordAlloc.removeDeadStructural input9016 value4512 value1 value2 = (output9016, value4512, value1))
    (child15149 : Flapjack.WordAlloc.removeDeadStructural input15149 value4512 value1 value2 = (output15149, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15150 value4512 value1 value2 = (output15150, value6896, value1) := by
  rw [input15150_def, output15150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9016]
  try dsimp only
  rw [child15149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9016_skip, output15149_skip]
  kernel_rfl

theorem node15151_cond_eq
    (child9015 : Flapjack.WordAlloc.removeDeadStructural input9015 value4511 value1 value2 = (output9015, value4512, value1))
    (child15150 : Flapjack.WordAlloc.removeDeadStructural input15150 value4512 value1 value2 = (output15150, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15151 value4511 value1 value2 = (output15151, value6896, value1) := by
  rw [input15151_def, output15151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9015]
  try dsimp only
  rw [child15150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9015_skip, output15150_skip]
  kernel_rfl

theorem node15152_cond_eq
    (child9014 : Flapjack.WordAlloc.removeDeadStructural input9014 value5 value1 value2 = (output9014, value4511, value1))
    (child15151 : Flapjack.WordAlloc.removeDeadStructural input15151 value4511 value1 value2 = (output15151, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15152 value5 value1 value2 = (output15152, value6896, value1) := by
  rw [input15152_def, output15152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9014]
  try dsimp only
  rw [child15151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9014_skip, output15151_skip]
  kernel_rfl

theorem node15153_cond_eq
    (child9011 : Flapjack.WordAlloc.removeDeadStructural input9011 value4504 value1 value2 = (output9011, value5, value1))
    (child15152 : Flapjack.WordAlloc.removeDeadStructural input15152 value5 value1 value2 = (output15152, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15153 value4504 value1 value2 = (output15153, value6896, value1) := by
  rw [input15153_def, output15153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9011]
  try dsimp only
  rw [child15152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9011_skip, output15152_skip]
  kernel_rfl

theorem node15154_cond_eq
    (child9000 : Flapjack.WordAlloc.removeDeadStructural input9000 value4504 value1 value2 = (output9000, value4504, value1))
    (child15153 : Flapjack.WordAlloc.removeDeadStructural input15153 value4504 value1 value2 = (output15153, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15154 value4504 value1 value2 = (output15154, value6896, value1) := by
  rw [input15154_def, output15154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9000]
  try dsimp only
  rw [child15153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9000_skip, output15153_skip]
  kernel_rfl

theorem node15155_cond_eq
    (child8999 : Flapjack.WordAlloc.removeDeadStructural input8999 value4503 value1 value2 = (output8999, value4504, value1))
    (child15154 : Flapjack.WordAlloc.removeDeadStructural input15154 value4504 value1 value2 = (output15154, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15155 value4503 value1 value2 = (output15155, value6896, value1) := by
  rw [input15155_def, output15155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8999]
  try dsimp only
  rw [child15154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8999_skip, output15154_skip]
  kernel_rfl

theorem node15156_cond_eq
    (child8998 : Flapjack.WordAlloc.removeDeadStructural input8998 value5 value1 value2 = (output8998, value4503, value1))
    (child15155 : Flapjack.WordAlloc.removeDeadStructural input15155 value4503 value1 value2 = (output15155, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15156 value5 value1 value2 = (output15156, value6896, value1) := by
  rw [input15156_def, output15156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8998]
  try dsimp only
  rw [child15155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8998_skip, output15155_skip]
  kernel_rfl

theorem node15157_cond_eq
    (child8995 : Flapjack.WordAlloc.removeDeadStructural input8995 value4496 value1 value2 = (output8995, value5, value1))
    (child15156 : Flapjack.WordAlloc.removeDeadStructural input15156 value5 value1 value2 = (output15156, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15157 value4496 value1 value2 = (output15157, value6896, value1) := by
  rw [input15157_def, output15157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8995]
  try dsimp only
  rw [child15156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8995_skip, output15156_skip]
  kernel_rfl

theorem node15158_cond_eq
    (child8984 : Flapjack.WordAlloc.removeDeadStructural input8984 value4496 value1 value2 = (output8984, value4496, value1))
    (child15157 : Flapjack.WordAlloc.removeDeadStructural input15157 value4496 value1 value2 = (output15157, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15158 value4496 value1 value2 = (output15158, value6896, value1) := by
  rw [input15158_def, output15158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8984]
  try dsimp only
  rw [child15157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8984_skip, output15157_skip]
  kernel_rfl

theorem node15159_cond_eq
    (child8983 : Flapjack.WordAlloc.removeDeadStructural input8983 value4495 value1 value2 = (output8983, value4496, value1))
    (child15158 : Flapjack.WordAlloc.removeDeadStructural input15158 value4496 value1 value2 = (output15158, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15159 value4495 value1 value2 = (output15159, value6896, value1) := by
  rw [input15159_def, output15159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8983]
  try dsimp only
  rw [child15158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8983_skip, output15158_skip]
  kernel_rfl

theorem node15160_cond_eq
    (child8982 : Flapjack.WordAlloc.removeDeadStructural input8982 value5 value1 value2 = (output8982, value4495, value1))
    (child15159 : Flapjack.WordAlloc.removeDeadStructural input15159 value4495 value1 value2 = (output15159, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15160 value5 value1 value2 = (output15160, value6896, value1) := by
  rw [input15160_def, output15160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8982]
  try dsimp only
  rw [child15159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8982_skip, output15159_skip]
  kernel_rfl

theorem node15161_cond_eq
    (child8979 : Flapjack.WordAlloc.removeDeadStructural input8979 value4488 value1 value2 = (output8979, value5, value1))
    (child15160 : Flapjack.WordAlloc.removeDeadStructural input15160 value5 value1 value2 = (output15160, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15161 value4488 value1 value2 = (output15161, value6896, value1) := by
  rw [input15161_def, output15161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8979]
  try dsimp only
  rw [child15160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8979_skip, output15160_skip]
  kernel_rfl

theorem node15162_cond_eq
    (child8968 : Flapjack.WordAlloc.removeDeadStructural input8968 value4488 value1 value2 = (output8968, value4488, value1))
    (child15161 : Flapjack.WordAlloc.removeDeadStructural input15161 value4488 value1 value2 = (output15161, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15162 value4488 value1 value2 = (output15162, value6896, value1) := by
  rw [input15162_def, output15162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8968]
  try dsimp only
  rw [child15161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8968_skip, output15161_skip]
  kernel_rfl

theorem node15163_cond_eq
    (child8967 : Flapjack.WordAlloc.removeDeadStructural input8967 value4487 value1 value2 = (output8967, value4488, value1))
    (child15162 : Flapjack.WordAlloc.removeDeadStructural input15162 value4488 value1 value2 = (output15162, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15163 value4487 value1 value2 = (output15163, value6896, value1) := by
  rw [input15163_def, output15163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8967]
  try dsimp only
  rw [child15162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8967_skip, output15162_skip]
  kernel_rfl

theorem node15164_cond_eq
    (child8966 : Flapjack.WordAlloc.removeDeadStructural input8966 value5 value1 value2 = (output8966, value4487, value1))
    (child15163 : Flapjack.WordAlloc.removeDeadStructural input15163 value4487 value1 value2 = (output15163, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15164 value5 value1 value2 = (output15164, value6896, value1) := by
  rw [input15164_def, output15164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8966]
  try dsimp only
  rw [child15163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8966_skip, output15163_skip]
  kernel_rfl

theorem node15165_cond_eq
    (child8963 : Flapjack.WordAlloc.removeDeadStructural input8963 value4480 value1 value2 = (output8963, value5, value1))
    (child15164 : Flapjack.WordAlloc.removeDeadStructural input15164 value5 value1 value2 = (output15164, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15165 value4480 value1 value2 = (output15165, value6896, value1) := by
  rw [input15165_def, output15165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8963]
  try dsimp only
  rw [child15164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8963_skip, output15164_skip]
  kernel_rfl

theorem node15166_cond_eq
    (child8952 : Flapjack.WordAlloc.removeDeadStructural input8952 value4480 value1 value2 = (output8952, value4480, value1))
    (child15165 : Flapjack.WordAlloc.removeDeadStructural input15165 value4480 value1 value2 = (output15165, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15166 value4480 value1 value2 = (output15166, value6896, value1) := by
  rw [input15166_def, output15166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8952]
  try dsimp only
  rw [child15165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8952_skip, output15165_skip]
  kernel_rfl

theorem node15167_cond_eq
    (child8951 : Flapjack.WordAlloc.removeDeadStructural input8951 value4479 value1 value2 = (output8951, value4480, value1))
    (child15166 : Flapjack.WordAlloc.removeDeadStructural input15166 value4480 value1 value2 = (output15166, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15167 value4479 value1 value2 = (output15167, value6896, value1) := by
  rw [input15167_def, output15167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8951]
  try dsimp only
  rw [child15166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8951_skip, output15166_skip]
  kernel_rfl

theorem node15168_cond_eq
    (child8950 : Flapjack.WordAlloc.removeDeadStructural input8950 value5 value1 value2 = (output8950, value4479, value1))
    (child15167 : Flapjack.WordAlloc.removeDeadStructural input15167 value4479 value1 value2 = (output15167, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15168 value5 value1 value2 = (output15168, value6896, value1) := by
  rw [input15168_def, output15168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8950]
  try dsimp only
  rw [child15167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8950_skip, output15167_skip]
  kernel_rfl

theorem node15169_cond_eq
    (child8947 : Flapjack.WordAlloc.removeDeadStructural input8947 value4472 value1 value2 = (output8947, value5, value1))
    (child15168 : Flapjack.WordAlloc.removeDeadStructural input15168 value5 value1 value2 = (output15168, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15169 value4472 value1 value2 = (output15169, value6896, value1) := by
  rw [input15169_def, output15169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8947]
  try dsimp only
  rw [child15168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8947_skip, output15168_skip]
  kernel_rfl

theorem node15170_cond_eq
    (child8936 : Flapjack.WordAlloc.removeDeadStructural input8936 value4472 value1 value2 = (output8936, value4472, value1))
    (child15169 : Flapjack.WordAlloc.removeDeadStructural input15169 value4472 value1 value2 = (output15169, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15170 value4472 value1 value2 = (output15170, value6896, value1) := by
  rw [input15170_def, output15170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8936]
  try dsimp only
  rw [child15169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8936_skip, output15169_skip]
  kernel_rfl

theorem node15171_cond_eq
    (child8935 : Flapjack.WordAlloc.removeDeadStructural input8935 value4471 value1 value2 = (output8935, value4472, value1))
    (child15170 : Flapjack.WordAlloc.removeDeadStructural input15170 value4472 value1 value2 = (output15170, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15171 value4471 value1 value2 = (output15171, value6896, value1) := by
  rw [input15171_def, output15171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8935]
  try dsimp only
  rw [child15170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8935_skip, output15170_skip]
  kernel_rfl

theorem node15172_cond_eq
    (child8934 : Flapjack.WordAlloc.removeDeadStructural input8934 value5 value1 value2 = (output8934, value4471, value1))
    (child15171 : Flapjack.WordAlloc.removeDeadStructural input15171 value4471 value1 value2 = (output15171, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15172 value5 value1 value2 = (output15172, value6896, value1) := by
  rw [input15172_def, output15172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8934]
  try dsimp only
  rw [child15171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8934_skip, output15171_skip]
  kernel_rfl

theorem node15173_cond_eq
    (child8931 : Flapjack.WordAlloc.removeDeadStructural input8931 value4464 value1 value2 = (output8931, value5, value1))
    (child15172 : Flapjack.WordAlloc.removeDeadStructural input15172 value5 value1 value2 = (output15172, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15173 value4464 value1 value2 = (output15173, value6896, value1) := by
  rw [input15173_def, output15173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8931]
  try dsimp only
  rw [child15172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8931_skip, output15172_skip]
  kernel_rfl

theorem node15174_cond_eq
    (child8920 : Flapjack.WordAlloc.removeDeadStructural input8920 value4464 value1 value2 = (output8920, value4464, value1))
    (child15173 : Flapjack.WordAlloc.removeDeadStructural input15173 value4464 value1 value2 = (output15173, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15174 value4464 value1 value2 = (output15174, value6896, value1) := by
  rw [input15174_def, output15174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8920]
  try dsimp only
  rw [child15173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8920_skip, output15173_skip]
  kernel_rfl

theorem node15175_cond_eq
    (child8919 : Flapjack.WordAlloc.removeDeadStructural input8919 value4463 value1 value2 = (output8919, value4464, value1))
    (child15174 : Flapjack.WordAlloc.removeDeadStructural input15174 value4464 value1 value2 = (output15174, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15175 value4463 value1 value2 = (output15175, value6896, value1) := by
  rw [input15175_def, output15175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8919]
  try dsimp only
  rw [child15174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8919_skip, output15174_skip]
  kernel_rfl

theorem node15176_cond_eq
    (child8918 : Flapjack.WordAlloc.removeDeadStructural input8918 value5 value1 value2 = (output8918, value4463, value1))
    (child15175 : Flapjack.WordAlloc.removeDeadStructural input15175 value4463 value1 value2 = (output15175, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15176 value5 value1 value2 = (output15176, value6896, value1) := by
  rw [input15176_def, output15176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8918]
  try dsimp only
  rw [child15175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8918_skip, output15175_skip]
  kernel_rfl

theorem node15177_cond_eq
    (child8915 : Flapjack.WordAlloc.removeDeadStructural input8915 value4456 value1 value2 = (output8915, value5, value1))
    (child15176 : Flapjack.WordAlloc.removeDeadStructural input15176 value5 value1 value2 = (output15176, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15177 value4456 value1 value2 = (output15177, value6896, value1) := by
  rw [input15177_def, output15177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8915]
  try dsimp only
  rw [child15176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8915_skip, output15176_skip]
  kernel_rfl

theorem node15178_cond_eq
    (child8904 : Flapjack.WordAlloc.removeDeadStructural input8904 value4456 value1 value2 = (output8904, value4456, value1))
    (child15177 : Flapjack.WordAlloc.removeDeadStructural input15177 value4456 value1 value2 = (output15177, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15178 value4456 value1 value2 = (output15178, value6896, value1) := by
  rw [input15178_def, output15178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8904]
  try dsimp only
  rw [child15177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8904_skip, output15177_skip]
  kernel_rfl

theorem node15179_cond_eq
    (child8903 : Flapjack.WordAlloc.removeDeadStructural input8903 value4455 value1 value2 = (output8903, value4456, value1))
    (child15178 : Flapjack.WordAlloc.removeDeadStructural input15178 value4456 value1 value2 = (output15178, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15179 value4455 value1 value2 = (output15179, value6896, value1) := by
  rw [input15179_def, output15179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8903]
  try dsimp only
  rw [child15178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8903_skip, output15178_skip]
  kernel_rfl

theorem node15180_cond_eq
    (child8902 : Flapjack.WordAlloc.removeDeadStructural input8902 value5 value1 value2 = (output8902, value4455, value1))
    (child15179 : Flapjack.WordAlloc.removeDeadStructural input15179 value4455 value1 value2 = (output15179, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15180 value5 value1 value2 = (output15180, value6896, value1) := by
  rw [input15180_def, output15180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8902]
  try dsimp only
  rw [child15179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8902_skip, output15179_skip]
  kernel_rfl

theorem node15181_cond_eq
    (child8899 : Flapjack.WordAlloc.removeDeadStructural input8899 value4448 value1 value2 = (output8899, value5, value1))
    (child15180 : Flapjack.WordAlloc.removeDeadStructural input15180 value5 value1 value2 = (output15180, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15181 value4448 value1 value2 = (output15181, value6896, value1) := by
  rw [input15181_def, output15181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8899]
  try dsimp only
  rw [child15180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8899_skip, output15180_skip]
  kernel_rfl

theorem node15182_cond_eq
    (child8888 : Flapjack.WordAlloc.removeDeadStructural input8888 value4448 value1 value2 = (output8888, value4448, value1))
    (child15181 : Flapjack.WordAlloc.removeDeadStructural input15181 value4448 value1 value2 = (output15181, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15182 value4448 value1 value2 = (output15182, value6896, value1) := by
  rw [input15182_def, output15182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8888]
  try dsimp only
  rw [child15181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8888_skip, output15181_skip]
  kernel_rfl

theorem node15183_cond_eq
    (child8887 : Flapjack.WordAlloc.removeDeadStructural input8887 value4447 value1 value2 = (output8887, value4448, value1))
    (child15182 : Flapjack.WordAlloc.removeDeadStructural input15182 value4448 value1 value2 = (output15182, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15183 value4447 value1 value2 = (output15183, value6896, value1) := by
  rw [input15183_def, output15183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8887]
  try dsimp only
  rw [child15182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8887_skip, output15182_skip]
  kernel_rfl

theorem node15184_cond_eq
    (child8886 : Flapjack.WordAlloc.removeDeadStructural input8886 value5 value1 value2 = (output8886, value4447, value1))
    (child15183 : Flapjack.WordAlloc.removeDeadStructural input15183 value4447 value1 value2 = (output15183, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15184 value5 value1 value2 = (output15184, value6896, value1) := by
  rw [input15184_def, output15184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8886]
  try dsimp only
  rw [child15183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8886_skip, output15183_skip]
  kernel_rfl

theorem node15185_cond_eq
    (child8883 : Flapjack.WordAlloc.removeDeadStructural input8883 value4440 value1 value2 = (output8883, value5, value1))
    (child15184 : Flapjack.WordAlloc.removeDeadStructural input15184 value5 value1 value2 = (output15184, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15185 value4440 value1 value2 = (output15185, value6896, value1) := by
  rw [input15185_def, output15185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8883]
  try dsimp only
  rw [child15184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8883_skip, output15184_skip]
  kernel_rfl

theorem node15186_cond_eq
    (child8872 : Flapjack.WordAlloc.removeDeadStructural input8872 value4440 value1 value2 = (output8872, value4440, value1))
    (child15185 : Flapjack.WordAlloc.removeDeadStructural input15185 value4440 value1 value2 = (output15185, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15186 value4440 value1 value2 = (output15186, value6896, value1) := by
  rw [input15186_def, output15186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8872]
  try dsimp only
  rw [child15185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8872_skip, output15185_skip]
  kernel_rfl

theorem node15187_cond_eq
    (child8871 : Flapjack.WordAlloc.removeDeadStructural input8871 value4439 value1 value2 = (output8871, value4440, value1))
    (child15186 : Flapjack.WordAlloc.removeDeadStructural input15186 value4440 value1 value2 = (output15186, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15187 value4439 value1 value2 = (output15187, value6896, value1) := by
  rw [input15187_def, output15187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8871]
  try dsimp only
  rw [child15186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8871_skip, output15186_skip]
  kernel_rfl

theorem node15188_cond_eq
    (child8870 : Flapjack.WordAlloc.removeDeadStructural input8870 value5 value1 value2 = (output8870, value4439, value1))
    (child15187 : Flapjack.WordAlloc.removeDeadStructural input15187 value4439 value1 value2 = (output15187, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15188 value5 value1 value2 = (output15188, value6896, value1) := by
  rw [input15188_def, output15188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8870]
  try dsimp only
  rw [child15187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8870_skip, output15187_skip]
  kernel_rfl

theorem node15189_cond_eq
    (child8867 : Flapjack.WordAlloc.removeDeadStructural input8867 value4432 value1 value2 = (output8867, value5, value1))
    (child15188 : Flapjack.WordAlloc.removeDeadStructural input15188 value5 value1 value2 = (output15188, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15189 value4432 value1 value2 = (output15189, value6896, value1) := by
  rw [input15189_def, output15189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8867]
  try dsimp only
  rw [child15188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8867_skip, output15188_skip]
  kernel_rfl

theorem node15190_cond_eq
    (child8856 : Flapjack.WordAlloc.removeDeadStructural input8856 value4432 value1 value2 = (output8856, value4432, value1))
    (child15189 : Flapjack.WordAlloc.removeDeadStructural input15189 value4432 value1 value2 = (output15189, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15190 value4432 value1 value2 = (output15190, value6896, value1) := by
  rw [input15190_def, output15190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8856]
  try dsimp only
  rw [child15189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8856_skip, output15189_skip]
  kernel_rfl

theorem node15191_cond_eq
    (child8855 : Flapjack.WordAlloc.removeDeadStructural input8855 value4431 value1 value2 = (output8855, value4432, value1))
    (child15190 : Flapjack.WordAlloc.removeDeadStructural input15190 value4432 value1 value2 = (output15190, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15191 value4431 value1 value2 = (output15191, value6896, value1) := by
  rw [input15191_def, output15191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8855]
  try dsimp only
  rw [child15190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8855_skip, output15190_skip]
  kernel_rfl

theorem node15192_cond_eq
    (child8854 : Flapjack.WordAlloc.removeDeadStructural input8854 value5 value1 value2 = (output8854, value4431, value1))
    (child15191 : Flapjack.WordAlloc.removeDeadStructural input15191 value4431 value1 value2 = (output15191, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15192 value5 value1 value2 = (output15192, value6896, value1) := by
  rw [input15192_def, output15192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8854]
  try dsimp only
  rw [child15191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8854_skip, output15191_skip]
  kernel_rfl

theorem node15193_cond_eq
    (child8851 : Flapjack.WordAlloc.removeDeadStructural input8851 value4424 value1 value2 = (output8851, value5, value1))
    (child15192 : Flapjack.WordAlloc.removeDeadStructural input15192 value5 value1 value2 = (output15192, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15193 value4424 value1 value2 = (output15193, value6896, value1) := by
  rw [input15193_def, output15193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8851]
  try dsimp only
  rw [child15192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8851_skip, output15192_skip]
  kernel_rfl

theorem node15194_cond_eq
    (child8840 : Flapjack.WordAlloc.removeDeadStructural input8840 value4424 value1 value2 = (output8840, value4424, value1))
    (child15193 : Flapjack.WordAlloc.removeDeadStructural input15193 value4424 value1 value2 = (output15193, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15194 value4424 value1 value2 = (output15194, value6896, value1) := by
  rw [input15194_def, output15194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8840]
  try dsimp only
  rw [child15193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8840_skip, output15193_skip]
  kernel_rfl

theorem node15195_cond_eq
    (child8839 : Flapjack.WordAlloc.removeDeadStructural input8839 value4423 value1 value2 = (output8839, value4424, value1))
    (child15194 : Flapjack.WordAlloc.removeDeadStructural input15194 value4424 value1 value2 = (output15194, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15195 value4423 value1 value2 = (output15195, value6896, value1) := by
  rw [input15195_def, output15195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8839]
  try dsimp only
  rw [child15194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8839_skip, output15194_skip]
  kernel_rfl

theorem node15196_cond_eq
    (child8838 : Flapjack.WordAlloc.removeDeadStructural input8838 value5 value1 value2 = (output8838, value4423, value1))
    (child15195 : Flapjack.WordAlloc.removeDeadStructural input15195 value4423 value1 value2 = (output15195, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15196 value5 value1 value2 = (output15196, value6896, value1) := by
  rw [input15196_def, output15196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8838]
  try dsimp only
  rw [child15195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8838_skip, output15195_skip]
  kernel_rfl

theorem node15197_cond_eq
    (child8835 : Flapjack.WordAlloc.removeDeadStructural input8835 value4416 value1 value2 = (output8835, value5, value1))
    (child15196 : Flapjack.WordAlloc.removeDeadStructural input15196 value5 value1 value2 = (output15196, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15197 value4416 value1 value2 = (output15197, value6896, value1) := by
  rw [input15197_def, output15197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8835]
  try dsimp only
  rw [child15196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8835_skip, output15196_skip]
  kernel_rfl

theorem node15198_cond_eq
    (child8824 : Flapjack.WordAlloc.removeDeadStructural input8824 value4416 value1 value2 = (output8824, value4416, value1))
    (child15197 : Flapjack.WordAlloc.removeDeadStructural input15197 value4416 value1 value2 = (output15197, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15198 value4416 value1 value2 = (output15198, value6896, value1) := by
  rw [input15198_def, output15198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8824]
  try dsimp only
  rw [child15197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8824_skip, output15197_skip]
  kernel_rfl

theorem node15199_cond_eq
    (child8823 : Flapjack.WordAlloc.removeDeadStructural input8823 value4415 value1 value2 = (output8823, value4416, value1))
    (child15198 : Flapjack.WordAlloc.removeDeadStructural input15198 value4416 value1 value2 = (output15198, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15199 value4415 value1 value2 = (output15199, value6896, value1) := by
  rw [input15199_def, output15199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8823]
  try dsimp only
  rw [child15198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8823_skip, output15198_skip]
  kernel_rfl

theorem node15200_cond_eq
    (child8822 : Flapjack.WordAlloc.removeDeadStructural input8822 value5 value1 value2 = (output8822, value4415, value1))
    (child15199 : Flapjack.WordAlloc.removeDeadStructural input15199 value4415 value1 value2 = (output15199, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15200 value5 value1 value2 = (output15200, value6896, value1) := by
  rw [input15200_def, output15200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8822]
  try dsimp only
  rw [child15199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8822_skip, output15199_skip]
  kernel_rfl

theorem node15201_cond_eq
    (child8819 : Flapjack.WordAlloc.removeDeadStructural input8819 value4408 value1 value2 = (output8819, value5, value1))
    (child15200 : Flapjack.WordAlloc.removeDeadStructural input15200 value5 value1 value2 = (output15200, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15201 value4408 value1 value2 = (output15201, value6896, value1) := by
  rw [input15201_def, output15201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8819]
  try dsimp only
  rw [child15200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8819_skip, output15200_skip]
  kernel_rfl

theorem node15202_cond_eq
    (child8808 : Flapjack.WordAlloc.removeDeadStructural input8808 value4408 value1 value2 = (output8808, value4408, value1))
    (child15201 : Flapjack.WordAlloc.removeDeadStructural input15201 value4408 value1 value2 = (output15201, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15202 value4408 value1 value2 = (output15202, value6896, value1) := by
  rw [input15202_def, output15202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8808]
  try dsimp only
  rw [child15201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8808_skip, output15201_skip]
  kernel_rfl

theorem node15203_cond_eq
    (child8807 : Flapjack.WordAlloc.removeDeadStructural input8807 value4407 value1 value2 = (output8807, value4408, value1))
    (child15202 : Flapjack.WordAlloc.removeDeadStructural input15202 value4408 value1 value2 = (output15202, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15203 value4407 value1 value2 = (output15203, value6896, value1) := by
  rw [input15203_def, output15203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8807]
  try dsimp only
  rw [child15202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8807_skip, output15202_skip]
  kernel_rfl

theorem node15204_cond_eq
    (child8806 : Flapjack.WordAlloc.removeDeadStructural input8806 value5 value1 value2 = (output8806, value4407, value1))
    (child15203 : Flapjack.WordAlloc.removeDeadStructural input15203 value4407 value1 value2 = (output15203, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15204 value5 value1 value2 = (output15204, value6896, value1) := by
  rw [input15204_def, output15204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8806]
  try dsimp only
  rw [child15203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8806_skip, output15203_skip]
  kernel_rfl

theorem node15205_cond_eq
    (child8803 : Flapjack.WordAlloc.removeDeadStructural input8803 value4400 value1 value2 = (output8803, value5, value1))
    (child15204 : Flapjack.WordAlloc.removeDeadStructural input15204 value5 value1 value2 = (output15204, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15205 value4400 value1 value2 = (output15205, value6896, value1) := by
  rw [input15205_def, output15205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8803]
  try dsimp only
  rw [child15204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8803_skip, output15204_skip]
  kernel_rfl

theorem node15206_cond_eq
    (child8792 : Flapjack.WordAlloc.removeDeadStructural input8792 value4400 value1 value2 = (output8792, value4400, value1))
    (child15205 : Flapjack.WordAlloc.removeDeadStructural input15205 value4400 value1 value2 = (output15205, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15206 value4400 value1 value2 = (output15206, value6896, value1) := by
  rw [input15206_def, output15206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8792]
  try dsimp only
  rw [child15205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8792_skip, output15205_skip]
  kernel_rfl

theorem node15207_cond_eq
    (child8791 : Flapjack.WordAlloc.removeDeadStructural input8791 value4399 value1 value2 = (output8791, value4400, value1))
    (child15206 : Flapjack.WordAlloc.removeDeadStructural input15206 value4400 value1 value2 = (output15206, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15207 value4399 value1 value2 = (output15207, value6896, value1) := by
  rw [input15207_def, output15207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8791]
  try dsimp only
  rw [child15206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8791_skip, output15206_skip]
  kernel_rfl

theorem node15208_cond_eq
    (child8790 : Flapjack.WordAlloc.removeDeadStructural input8790 value5 value1 value2 = (output8790, value4399, value1))
    (child15207 : Flapjack.WordAlloc.removeDeadStructural input15207 value4399 value1 value2 = (output15207, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15208 value5 value1 value2 = (output15208, value6896, value1) := by
  rw [input15208_def, output15208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8790]
  try dsimp only
  rw [child15207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8790_skip, output15207_skip]
  kernel_rfl

theorem node15209_cond_eq
    (child8787 : Flapjack.WordAlloc.removeDeadStructural input8787 value4392 value1 value2 = (output8787, value5, value1))
    (child15208 : Flapjack.WordAlloc.removeDeadStructural input15208 value5 value1 value2 = (output15208, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15209 value4392 value1 value2 = (output15209, value6896, value1) := by
  rw [input15209_def, output15209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8787]
  try dsimp only
  rw [child15208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8787_skip, output15208_skip]
  kernel_rfl

theorem node15210_cond_eq
    (child8776 : Flapjack.WordAlloc.removeDeadStructural input8776 value4392 value1 value2 = (output8776, value4392, value1))
    (child15209 : Flapjack.WordAlloc.removeDeadStructural input15209 value4392 value1 value2 = (output15209, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15210 value4392 value1 value2 = (output15210, value6896, value1) := by
  rw [input15210_def, output15210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8776]
  try dsimp only
  rw [child15209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8776_skip, output15209_skip]
  kernel_rfl

theorem node15211_cond_eq
    (child8775 : Flapjack.WordAlloc.removeDeadStructural input8775 value4391 value1 value2 = (output8775, value4392, value1))
    (child15210 : Flapjack.WordAlloc.removeDeadStructural input15210 value4392 value1 value2 = (output15210, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15211 value4391 value1 value2 = (output15211, value6896, value1) := by
  rw [input15211_def, output15211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8775]
  try dsimp only
  rw [child15210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8775_skip, output15210_skip]
  kernel_rfl

theorem node15212_cond_eq
    (child8774 : Flapjack.WordAlloc.removeDeadStructural input8774 value5 value1 value2 = (output8774, value4391, value1))
    (child15211 : Flapjack.WordAlloc.removeDeadStructural input15211 value4391 value1 value2 = (output15211, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15212 value5 value1 value2 = (output15212, value6896, value1) := by
  rw [input15212_def, output15212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8774]
  try dsimp only
  rw [child15211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8774_skip, output15211_skip]
  kernel_rfl

theorem node15213_cond_eq
    (child8771 : Flapjack.WordAlloc.removeDeadStructural input8771 value4384 value1 value2 = (output8771, value5, value1))
    (child15212 : Flapjack.WordAlloc.removeDeadStructural input15212 value5 value1 value2 = (output15212, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15213 value4384 value1 value2 = (output15213, value6896, value1) := by
  rw [input15213_def, output15213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8771]
  try dsimp only
  rw [child15212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8771_skip, output15212_skip]
  kernel_rfl

theorem node15214_cond_eq
    (child8760 : Flapjack.WordAlloc.removeDeadStructural input8760 value4384 value1 value2 = (output8760, value4384, value1))
    (child15213 : Flapjack.WordAlloc.removeDeadStructural input15213 value4384 value1 value2 = (output15213, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15214 value4384 value1 value2 = (output15214, value6896, value1) := by
  rw [input15214_def, output15214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8760]
  try dsimp only
  rw [child15213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8760_skip, output15213_skip]
  kernel_rfl

theorem node15215_cond_eq
    (child8759 : Flapjack.WordAlloc.removeDeadStructural input8759 value4383 value1 value2 = (output8759, value4384, value1))
    (child15214 : Flapjack.WordAlloc.removeDeadStructural input15214 value4384 value1 value2 = (output15214, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15215 value4383 value1 value2 = (output15215, value6896, value1) := by
  rw [input15215_def, output15215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8759]
  try dsimp only
  rw [child15214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8759_skip, output15214_skip]
  kernel_rfl

theorem node15216_cond_eq
    (child8758 : Flapjack.WordAlloc.removeDeadStructural input8758 value5 value1 value2 = (output8758, value4383, value1))
    (child15215 : Flapjack.WordAlloc.removeDeadStructural input15215 value4383 value1 value2 = (output15215, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15216 value5 value1 value2 = (output15216, value6896, value1) := by
  rw [input15216_def, output15216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8758]
  try dsimp only
  rw [child15215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8758_skip, output15215_skip]
  kernel_rfl

theorem node15217_cond_eq
    (child8755 : Flapjack.WordAlloc.removeDeadStructural input8755 value4376 value1 value2 = (output8755, value5, value1))
    (child15216 : Flapjack.WordAlloc.removeDeadStructural input15216 value5 value1 value2 = (output15216, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15217 value4376 value1 value2 = (output15217, value6896, value1) := by
  rw [input15217_def, output15217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8755]
  try dsimp only
  rw [child15216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8755_skip, output15216_skip]
  kernel_rfl

theorem node15218_cond_eq
    (child8744 : Flapjack.WordAlloc.removeDeadStructural input8744 value4376 value1 value2 = (output8744, value4376, value1))
    (child15217 : Flapjack.WordAlloc.removeDeadStructural input15217 value4376 value1 value2 = (output15217, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15218 value4376 value1 value2 = (output15218, value6896, value1) := by
  rw [input15218_def, output15218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8744]
  try dsimp only
  rw [child15217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8744_skip, output15217_skip]
  kernel_rfl

theorem node15219_cond_eq
    (child8743 : Flapjack.WordAlloc.removeDeadStructural input8743 value4375 value1 value2 = (output8743, value4376, value1))
    (child15218 : Flapjack.WordAlloc.removeDeadStructural input15218 value4376 value1 value2 = (output15218, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15219 value4375 value1 value2 = (output15219, value6896, value1) := by
  rw [input15219_def, output15219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8743]
  try dsimp only
  rw [child15218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8743_skip, output15218_skip]
  kernel_rfl

theorem node15220_cond_eq
    (child8742 : Flapjack.WordAlloc.removeDeadStructural input8742 value5 value1 value2 = (output8742, value4375, value1))
    (child15219 : Flapjack.WordAlloc.removeDeadStructural input15219 value4375 value1 value2 = (output15219, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15220 value5 value1 value2 = (output15220, value6896, value1) := by
  rw [input15220_def, output15220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8742]
  try dsimp only
  rw [child15219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8742_skip, output15219_skip]
  kernel_rfl

theorem node15221_cond_eq
    (child8739 : Flapjack.WordAlloc.removeDeadStructural input8739 value4368 value1 value2 = (output8739, value5, value1))
    (child15220 : Flapjack.WordAlloc.removeDeadStructural input15220 value5 value1 value2 = (output15220, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15221 value4368 value1 value2 = (output15221, value6896, value1) := by
  rw [input15221_def, output15221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8739]
  try dsimp only
  rw [child15220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8739_skip, output15220_skip]
  kernel_rfl

theorem node15222_cond_eq
    (child8728 : Flapjack.WordAlloc.removeDeadStructural input8728 value4368 value1 value2 = (output8728, value4368, value1))
    (child15221 : Flapjack.WordAlloc.removeDeadStructural input15221 value4368 value1 value2 = (output15221, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15222 value4368 value1 value2 = (output15222, value6896, value1) := by
  rw [input15222_def, output15222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8728]
  try dsimp only
  rw [child15221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8728_skip, output15221_skip]
  kernel_rfl

theorem node15223_cond_eq
    (child8727 : Flapjack.WordAlloc.removeDeadStructural input8727 value4367 value1 value2 = (output8727, value4368, value1))
    (child15222 : Flapjack.WordAlloc.removeDeadStructural input15222 value4368 value1 value2 = (output15222, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15223 value4367 value1 value2 = (output15223, value6896, value1) := by
  rw [input15223_def, output15223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8727]
  try dsimp only
  rw [child15222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8727_skip, output15222_skip]
  kernel_rfl

theorem node15224_cond_eq
    (child8726 : Flapjack.WordAlloc.removeDeadStructural input8726 value5 value1 value2 = (output8726, value4367, value1))
    (child15223 : Flapjack.WordAlloc.removeDeadStructural input15223 value4367 value1 value2 = (output15223, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15224 value5 value1 value2 = (output15224, value6896, value1) := by
  rw [input15224_def, output15224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8726]
  try dsimp only
  rw [child15223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8726_skip, output15223_skip]
  kernel_rfl

theorem node15225_cond_eq
    (child8723 : Flapjack.WordAlloc.removeDeadStructural input8723 value4360 value1 value2 = (output8723, value5, value1))
    (child15224 : Flapjack.WordAlloc.removeDeadStructural input15224 value5 value1 value2 = (output15224, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15225 value4360 value1 value2 = (output15225, value6896, value1) := by
  rw [input15225_def, output15225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8723]
  try dsimp only
  rw [child15224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8723_skip, output15224_skip]
  kernel_rfl

theorem node15226_cond_eq
    (child8712 : Flapjack.WordAlloc.removeDeadStructural input8712 value4360 value1 value2 = (output8712, value4360, value1))
    (child15225 : Flapjack.WordAlloc.removeDeadStructural input15225 value4360 value1 value2 = (output15225, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15226 value4360 value1 value2 = (output15226, value6896, value1) := by
  rw [input15226_def, output15226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8712]
  try dsimp only
  rw [child15225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8712_skip, output15225_skip]
  kernel_rfl

theorem node15227_cond_eq
    (child8711 : Flapjack.WordAlloc.removeDeadStructural input8711 value4359 value1 value2 = (output8711, value4360, value1))
    (child15226 : Flapjack.WordAlloc.removeDeadStructural input15226 value4360 value1 value2 = (output15226, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15227 value4359 value1 value2 = (output15227, value6896, value1) := by
  rw [input15227_def, output15227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8711]
  try dsimp only
  rw [child15226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8711_skip, output15226_skip]
  kernel_rfl

theorem node15228_cond_eq
    (child8710 : Flapjack.WordAlloc.removeDeadStructural input8710 value5 value1 value2 = (output8710, value4359, value1))
    (child15227 : Flapjack.WordAlloc.removeDeadStructural input15227 value4359 value1 value2 = (output15227, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15228 value5 value1 value2 = (output15228, value6896, value1) := by
  rw [input15228_def, output15228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8710]
  try dsimp only
  rw [child15227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8710_skip, output15227_skip]
  kernel_rfl

theorem node15229_cond_eq
    (child8707 : Flapjack.WordAlloc.removeDeadStructural input8707 value4352 value1 value2 = (output8707, value5, value1))
    (child15228 : Flapjack.WordAlloc.removeDeadStructural input15228 value5 value1 value2 = (output15228, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15229 value4352 value1 value2 = (output15229, value6896, value1) := by
  rw [input15229_def, output15229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8707]
  try dsimp only
  rw [child15228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8707_skip, output15228_skip]
  kernel_rfl

theorem node15230_cond_eq
    (child8696 : Flapjack.WordAlloc.removeDeadStructural input8696 value4352 value1 value2 = (output8696, value4352, value1))
    (child15229 : Flapjack.WordAlloc.removeDeadStructural input15229 value4352 value1 value2 = (output15229, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15230 value4352 value1 value2 = (output15230, value6896, value1) := by
  rw [input15230_def, output15230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8696]
  try dsimp only
  rw [child15229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8696_skip, output15229_skip]
  kernel_rfl

theorem node15231_cond_eq
    (child8695 : Flapjack.WordAlloc.removeDeadStructural input8695 value4351 value1 value2 = (output8695, value4352, value1))
    (child15230 : Flapjack.WordAlloc.removeDeadStructural input15230 value4352 value1 value2 = (output15230, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15231 value4351 value1 value2 = (output15231, value6896, value1) := by
  rw [input15231_def, output15231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8695]
  try dsimp only
  rw [child15230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8695_skip, output15230_skip]
  kernel_rfl

theorem node15232_cond_eq
    (child8694 : Flapjack.WordAlloc.removeDeadStructural input8694 value5 value1 value2 = (output8694, value4351, value1))
    (child15231 : Flapjack.WordAlloc.removeDeadStructural input15231 value4351 value1 value2 = (output15231, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15232 value5 value1 value2 = (output15232, value6896, value1) := by
  rw [input15232_def, output15232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8694]
  try dsimp only
  rw [child15231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8694_skip, output15231_skip]
  kernel_rfl

theorem node15233_cond_eq
    (child8691 : Flapjack.WordAlloc.removeDeadStructural input8691 value4344 value1 value2 = (output8691, value5, value1))
    (child15232 : Flapjack.WordAlloc.removeDeadStructural input15232 value5 value1 value2 = (output15232, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15233 value4344 value1 value2 = (output15233, value6896, value1) := by
  rw [input15233_def, output15233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8691]
  try dsimp only
  rw [child15232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8691_skip, output15232_skip]
  kernel_rfl

theorem node15234_cond_eq
    (child8680 : Flapjack.WordAlloc.removeDeadStructural input8680 value4344 value1 value2 = (output8680, value4344, value1))
    (child15233 : Flapjack.WordAlloc.removeDeadStructural input15233 value4344 value1 value2 = (output15233, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15234 value4344 value1 value2 = (output15234, value6896, value1) := by
  rw [input15234_def, output15234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8680]
  try dsimp only
  rw [child15233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8680_skip, output15233_skip]
  kernel_rfl

theorem node15235_cond_eq
    (child8679 : Flapjack.WordAlloc.removeDeadStructural input8679 value4343 value1 value2 = (output8679, value4344, value1))
    (child15234 : Flapjack.WordAlloc.removeDeadStructural input15234 value4344 value1 value2 = (output15234, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15235 value4343 value1 value2 = (output15235, value6896, value1) := by
  rw [input15235_def, output15235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8679]
  try dsimp only
  rw [child15234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8679_skip, output15234_skip]
  kernel_rfl

theorem node15236_cond_eq
    (child8678 : Flapjack.WordAlloc.removeDeadStructural input8678 value5 value1 value2 = (output8678, value4343, value1))
    (child15235 : Flapjack.WordAlloc.removeDeadStructural input15235 value4343 value1 value2 = (output15235, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15236 value5 value1 value2 = (output15236, value6896, value1) := by
  rw [input15236_def, output15236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8678]
  try dsimp only
  rw [child15235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8678_skip, output15235_skip]
  kernel_rfl

theorem node15237_cond_eq
    (child8675 : Flapjack.WordAlloc.removeDeadStructural input8675 value4336 value1 value2 = (output8675, value5, value1))
    (child15236 : Flapjack.WordAlloc.removeDeadStructural input15236 value5 value1 value2 = (output15236, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15237 value4336 value1 value2 = (output15237, value6896, value1) := by
  rw [input15237_def, output15237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8675]
  try dsimp only
  rw [child15236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8675_skip, output15236_skip]
  kernel_rfl

theorem node15238_cond_eq
    (child8664 : Flapjack.WordAlloc.removeDeadStructural input8664 value4336 value1 value2 = (output8664, value4336, value1))
    (child15237 : Flapjack.WordAlloc.removeDeadStructural input15237 value4336 value1 value2 = (output15237, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15238 value4336 value1 value2 = (output15238, value6896, value1) := by
  rw [input15238_def, output15238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8664]
  try dsimp only
  rw [child15237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8664_skip, output15237_skip]
  kernel_rfl

theorem node15239_cond_eq
    (child8663 : Flapjack.WordAlloc.removeDeadStructural input8663 value4335 value1 value2 = (output8663, value4336, value1))
    (child15238 : Flapjack.WordAlloc.removeDeadStructural input15238 value4336 value1 value2 = (output15238, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15239 value4335 value1 value2 = (output15239, value6896, value1) := by
  rw [input15239_def, output15239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8663]
  try dsimp only
  rw [child15238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8663_skip, output15238_skip]
  kernel_rfl

theorem node15240_cond_eq
    (child8662 : Flapjack.WordAlloc.removeDeadStructural input8662 value5 value1 value2 = (output8662, value4335, value1))
    (child15239 : Flapjack.WordAlloc.removeDeadStructural input15239 value4335 value1 value2 = (output15239, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15240 value5 value1 value2 = (output15240, value6896, value1) := by
  rw [input15240_def, output15240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8662]
  try dsimp only
  rw [child15239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8662_skip, output15239_skip]
  kernel_rfl

theorem node15241_cond_eq
    (child8659 : Flapjack.WordAlloc.removeDeadStructural input8659 value4328 value1 value2 = (output8659, value5, value1))
    (child15240 : Flapjack.WordAlloc.removeDeadStructural input15240 value5 value1 value2 = (output15240, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15241 value4328 value1 value2 = (output15241, value6896, value1) := by
  rw [input15241_def, output15241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8659]
  try dsimp only
  rw [child15240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8659_skip, output15240_skip]
  kernel_rfl

theorem node15242_cond_eq
    (child8648 : Flapjack.WordAlloc.removeDeadStructural input8648 value4328 value1 value2 = (output8648, value4328, value1))
    (child15241 : Flapjack.WordAlloc.removeDeadStructural input15241 value4328 value1 value2 = (output15241, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15242 value4328 value1 value2 = (output15242, value6896, value1) := by
  rw [input15242_def, output15242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8648]
  try dsimp only
  rw [child15241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8648_skip, output15241_skip]
  kernel_rfl

theorem node15243_cond_eq
    (child8647 : Flapjack.WordAlloc.removeDeadStructural input8647 value4327 value1 value2 = (output8647, value4328, value1))
    (child15242 : Flapjack.WordAlloc.removeDeadStructural input15242 value4328 value1 value2 = (output15242, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15243 value4327 value1 value2 = (output15243, value6896, value1) := by
  rw [input15243_def, output15243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8647]
  try dsimp only
  rw [child15242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8647_skip, output15242_skip]
  kernel_rfl

theorem node15244_cond_eq
    (child8646 : Flapjack.WordAlloc.removeDeadStructural input8646 value5 value1 value2 = (output8646, value4327, value1))
    (child15243 : Flapjack.WordAlloc.removeDeadStructural input15243 value4327 value1 value2 = (output15243, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15244 value5 value1 value2 = (output15244, value6896, value1) := by
  rw [input15244_def, output15244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8646]
  try dsimp only
  rw [child15243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8646_skip, output15243_skip]
  kernel_rfl

theorem node15245_cond_eq
    (child8643 : Flapjack.WordAlloc.removeDeadStructural input8643 value4320 value1 value2 = (output8643, value5, value1))
    (child15244 : Flapjack.WordAlloc.removeDeadStructural input15244 value5 value1 value2 = (output15244, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15245 value4320 value1 value2 = (output15245, value6896, value1) := by
  rw [input15245_def, output15245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8643]
  try dsimp only
  rw [child15244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8643_skip, output15244_skip]
  kernel_rfl

theorem node15246_cond_eq
    (child8632 : Flapjack.WordAlloc.removeDeadStructural input8632 value4320 value1 value2 = (output8632, value4320, value1))
    (child15245 : Flapjack.WordAlloc.removeDeadStructural input15245 value4320 value1 value2 = (output15245, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15246 value4320 value1 value2 = (output15246, value6896, value1) := by
  rw [input15246_def, output15246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8632]
  try dsimp only
  rw [child15245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8632_skip, output15245_skip]
  kernel_rfl

theorem node15247_cond_eq
    (child8631 : Flapjack.WordAlloc.removeDeadStructural input8631 value4319 value1 value2 = (output8631, value4320, value1))
    (child15246 : Flapjack.WordAlloc.removeDeadStructural input15246 value4320 value1 value2 = (output15246, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15247 value4319 value1 value2 = (output15247, value6896, value1) := by
  rw [input15247_def, output15247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8631]
  try dsimp only
  rw [child15246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8631_skip, output15246_skip]
  kernel_rfl

theorem node15248_cond_eq
    (child8630 : Flapjack.WordAlloc.removeDeadStructural input8630 value5 value1 value2 = (output8630, value4319, value1))
    (child15247 : Flapjack.WordAlloc.removeDeadStructural input15247 value4319 value1 value2 = (output15247, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15248 value5 value1 value2 = (output15248, value6896, value1) := by
  rw [input15248_def, output15248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8630]
  try dsimp only
  rw [child15247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8630_skip, output15247_skip]
  kernel_rfl

theorem node15249_cond_eq
    (child8627 : Flapjack.WordAlloc.removeDeadStructural input8627 value4312 value1 value2 = (output8627, value5, value1))
    (child15248 : Flapjack.WordAlloc.removeDeadStructural input15248 value5 value1 value2 = (output15248, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15249 value4312 value1 value2 = (output15249, value6896, value1) := by
  rw [input15249_def, output15249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8627]
  try dsimp only
  rw [child15248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8627_skip, output15248_skip]
  kernel_rfl

theorem node15250_cond_eq
    (child8616 : Flapjack.WordAlloc.removeDeadStructural input8616 value4312 value1 value2 = (output8616, value4312, value1))
    (child15249 : Flapjack.WordAlloc.removeDeadStructural input15249 value4312 value1 value2 = (output15249, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15250 value4312 value1 value2 = (output15250, value6896, value1) := by
  rw [input15250_def, output15250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8616]
  try dsimp only
  rw [child15249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8616_skip, output15249_skip]
  kernel_rfl

theorem node15251_cond_eq
    (child8615 : Flapjack.WordAlloc.removeDeadStructural input8615 value4311 value1 value2 = (output8615, value4312, value1))
    (child15250 : Flapjack.WordAlloc.removeDeadStructural input15250 value4312 value1 value2 = (output15250, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15251 value4311 value1 value2 = (output15251, value6896, value1) := by
  rw [input15251_def, output15251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8615]
  try dsimp only
  rw [child15250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8615_skip, output15250_skip]
  kernel_rfl

theorem node15252_cond_eq
    (child8614 : Flapjack.WordAlloc.removeDeadStructural input8614 value5 value1 value2 = (output8614, value4311, value1))
    (child15251 : Flapjack.WordAlloc.removeDeadStructural input15251 value4311 value1 value2 = (output15251, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15252 value5 value1 value2 = (output15252, value6896, value1) := by
  rw [input15252_def, output15252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8614]
  try dsimp only
  rw [child15251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8614_skip, output15251_skip]
  kernel_rfl

theorem node15253_cond_eq
    (child8611 : Flapjack.WordAlloc.removeDeadStructural input8611 value4304 value1 value2 = (output8611, value5, value1))
    (child15252 : Flapjack.WordAlloc.removeDeadStructural input15252 value5 value1 value2 = (output15252, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15253 value4304 value1 value2 = (output15253, value6896, value1) := by
  rw [input15253_def, output15253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8611]
  try dsimp only
  rw [child15252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8611_skip, output15252_skip]
  kernel_rfl

theorem node15254_cond_eq
    (child8600 : Flapjack.WordAlloc.removeDeadStructural input8600 value4304 value1 value2 = (output8600, value4304, value1))
    (child15253 : Flapjack.WordAlloc.removeDeadStructural input15253 value4304 value1 value2 = (output15253, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15254 value4304 value1 value2 = (output15254, value6896, value1) := by
  rw [input15254_def, output15254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8600]
  try dsimp only
  rw [child15253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8600_skip, output15253_skip]
  kernel_rfl

theorem node15255_cond_eq
    (child8599 : Flapjack.WordAlloc.removeDeadStructural input8599 value4303 value1 value2 = (output8599, value4304, value1))
    (child15254 : Flapjack.WordAlloc.removeDeadStructural input15254 value4304 value1 value2 = (output15254, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15255 value4303 value1 value2 = (output15255, value6896, value1) := by
  rw [input15255_def, output15255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8599]
  try dsimp only
  rw [child15254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8599_skip, output15254_skip]
  kernel_rfl

theorem node15256_cond_eq
    (child8598 : Flapjack.WordAlloc.removeDeadStructural input8598 value5 value1 value2 = (output8598, value4303, value1))
    (child15255 : Flapjack.WordAlloc.removeDeadStructural input15255 value4303 value1 value2 = (output15255, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15256 value5 value1 value2 = (output15256, value6896, value1) := by
  rw [input15256_def, output15256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8598]
  try dsimp only
  rw [child15255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8598_skip, output15255_skip]
  kernel_rfl

theorem node15257_cond_eq
    (child8595 : Flapjack.WordAlloc.removeDeadStructural input8595 value4296 value1 value2 = (output8595, value5, value1))
    (child15256 : Flapjack.WordAlloc.removeDeadStructural input15256 value5 value1 value2 = (output15256, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15257 value4296 value1 value2 = (output15257, value6896, value1) := by
  rw [input15257_def, output15257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8595]
  try dsimp only
  rw [child15256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8595_skip, output15256_skip]
  kernel_rfl

theorem node15258_cond_eq
    (child8584 : Flapjack.WordAlloc.removeDeadStructural input8584 value4296 value1 value2 = (output8584, value4296, value1))
    (child15257 : Flapjack.WordAlloc.removeDeadStructural input15257 value4296 value1 value2 = (output15257, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15258 value4296 value1 value2 = (output15258, value6896, value1) := by
  rw [input15258_def, output15258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8584]
  try dsimp only
  rw [child15257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8584_skip, output15257_skip]
  kernel_rfl

theorem node15259_cond_eq
    (child8583 : Flapjack.WordAlloc.removeDeadStructural input8583 value4295 value1 value2 = (output8583, value4296, value1))
    (child15258 : Flapjack.WordAlloc.removeDeadStructural input15258 value4296 value1 value2 = (output15258, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15259 value4295 value1 value2 = (output15259, value6896, value1) := by
  rw [input15259_def, output15259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8583]
  try dsimp only
  rw [child15258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8583_skip, output15258_skip]
  kernel_rfl

theorem node15260_cond_eq
    (child8582 : Flapjack.WordAlloc.removeDeadStructural input8582 value5 value1 value2 = (output8582, value4295, value1))
    (child15259 : Flapjack.WordAlloc.removeDeadStructural input15259 value4295 value1 value2 = (output15259, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15260 value5 value1 value2 = (output15260, value6896, value1) := by
  rw [input15260_def, output15260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8582]
  try dsimp only
  rw [child15259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8582_skip, output15259_skip]
  kernel_rfl

theorem node15261_cond_eq
    (child8579 : Flapjack.WordAlloc.removeDeadStructural input8579 value4288 value1 value2 = (output8579, value5, value1))
    (child15260 : Flapjack.WordAlloc.removeDeadStructural input15260 value5 value1 value2 = (output15260, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15261 value4288 value1 value2 = (output15261, value6896, value1) := by
  rw [input15261_def, output15261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8579]
  try dsimp only
  rw [child15260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8579_skip, output15260_skip]
  kernel_rfl

theorem node15262_cond_eq
    (child8568 : Flapjack.WordAlloc.removeDeadStructural input8568 value4288 value1 value2 = (output8568, value4288, value1))
    (child15261 : Flapjack.WordAlloc.removeDeadStructural input15261 value4288 value1 value2 = (output15261, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15262 value4288 value1 value2 = (output15262, value6896, value1) := by
  rw [input15262_def, output15262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8568]
  try dsimp only
  rw [child15261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8568_skip, output15261_skip]
  kernel_rfl

theorem node15263_cond_eq
    (child8567 : Flapjack.WordAlloc.removeDeadStructural input8567 value4287 value1 value2 = (output8567, value4288, value1))
    (child15262 : Flapjack.WordAlloc.removeDeadStructural input15262 value4288 value1 value2 = (output15262, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15263 value4287 value1 value2 = (output15263, value6896, value1) := by
  rw [input15263_def, output15263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8567]
  try dsimp only
  rw [child15262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8567_skip, output15262_skip]
  kernel_rfl

theorem node15264_cond_eq
    (child8566 : Flapjack.WordAlloc.removeDeadStructural input8566 value5 value1 value2 = (output8566, value4287, value1))
    (child15263 : Flapjack.WordAlloc.removeDeadStructural input15263 value4287 value1 value2 = (output15263, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15264 value5 value1 value2 = (output15264, value6896, value1) := by
  rw [input15264_def, output15264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8566]
  try dsimp only
  rw [child15263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8566_skip, output15263_skip]
  kernel_rfl

theorem node15265_cond_eq
    (child8563 : Flapjack.WordAlloc.removeDeadStructural input8563 value4280 value1 value2 = (output8563, value5, value1))
    (child15264 : Flapjack.WordAlloc.removeDeadStructural input15264 value5 value1 value2 = (output15264, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15265 value4280 value1 value2 = (output15265, value6896, value1) := by
  rw [input15265_def, output15265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8563]
  try dsimp only
  rw [child15264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8563_skip, output15264_skip]
  kernel_rfl

theorem node15266_cond_eq
    (child8552 : Flapjack.WordAlloc.removeDeadStructural input8552 value4280 value1 value2 = (output8552, value4280, value1))
    (child15265 : Flapjack.WordAlloc.removeDeadStructural input15265 value4280 value1 value2 = (output15265, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15266 value4280 value1 value2 = (output15266, value6896, value1) := by
  rw [input15266_def, output15266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8552]
  try dsimp only
  rw [child15265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8552_skip, output15265_skip]
  kernel_rfl

theorem node15267_cond_eq
    (child8551 : Flapjack.WordAlloc.removeDeadStructural input8551 value4279 value1 value2 = (output8551, value4280, value1))
    (child15266 : Flapjack.WordAlloc.removeDeadStructural input15266 value4280 value1 value2 = (output15266, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15267 value4279 value1 value2 = (output15267, value6896, value1) := by
  rw [input15267_def, output15267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8551]
  try dsimp only
  rw [child15266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8551_skip, output15266_skip]
  kernel_rfl

theorem node15268_cond_eq
    (child8550 : Flapjack.WordAlloc.removeDeadStructural input8550 value5 value1 value2 = (output8550, value4279, value1))
    (child15267 : Flapjack.WordAlloc.removeDeadStructural input15267 value4279 value1 value2 = (output15267, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15268 value5 value1 value2 = (output15268, value6896, value1) := by
  rw [input15268_def, output15268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8550]
  try dsimp only
  rw [child15267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8550_skip, output15267_skip]
  kernel_rfl

theorem node15269_cond_eq
    (child8547 : Flapjack.WordAlloc.removeDeadStructural input8547 value4272 value1 value2 = (output8547, value5, value1))
    (child15268 : Flapjack.WordAlloc.removeDeadStructural input15268 value5 value1 value2 = (output15268, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15269 value4272 value1 value2 = (output15269, value6896, value1) := by
  rw [input15269_def, output15269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8547]
  try dsimp only
  rw [child15268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8547_skip, output15268_skip]
  kernel_rfl

theorem node15270_cond_eq
    (child8536 : Flapjack.WordAlloc.removeDeadStructural input8536 value4272 value1 value2 = (output8536, value4272, value1))
    (child15269 : Flapjack.WordAlloc.removeDeadStructural input15269 value4272 value1 value2 = (output15269, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15270 value4272 value1 value2 = (output15270, value6896, value1) := by
  rw [input15270_def, output15270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8536]
  try dsimp only
  rw [child15269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8536_skip, output15269_skip]
  kernel_rfl

theorem node15271_cond_eq
    (child8535 : Flapjack.WordAlloc.removeDeadStructural input8535 value4271 value1 value2 = (output8535, value4272, value1))
    (child15270 : Flapjack.WordAlloc.removeDeadStructural input15270 value4272 value1 value2 = (output15270, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15271 value4271 value1 value2 = (output15271, value6896, value1) := by
  rw [input15271_def, output15271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8535]
  try dsimp only
  rw [child15270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8535_skip, output15270_skip]
  kernel_rfl

theorem node15272_cond_eq
    (child8534 : Flapjack.WordAlloc.removeDeadStructural input8534 value5 value1 value2 = (output8534, value4271, value1))
    (child15271 : Flapjack.WordAlloc.removeDeadStructural input15271 value4271 value1 value2 = (output15271, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15272 value5 value1 value2 = (output15272, value6896, value1) := by
  rw [input15272_def, output15272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8534]
  try dsimp only
  rw [child15271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8534_skip, output15271_skip]
  kernel_rfl

theorem node15273_cond_eq
    (child8531 : Flapjack.WordAlloc.removeDeadStructural input8531 value4264 value1 value2 = (output8531, value5, value1))
    (child15272 : Flapjack.WordAlloc.removeDeadStructural input15272 value5 value1 value2 = (output15272, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15273 value4264 value1 value2 = (output15273, value6896, value1) := by
  rw [input15273_def, output15273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8531]
  try dsimp only
  rw [child15272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8531_skip, output15272_skip]
  kernel_rfl

theorem node15274_cond_eq
    (child8520 : Flapjack.WordAlloc.removeDeadStructural input8520 value4264 value1 value2 = (output8520, value4264, value1))
    (child15273 : Flapjack.WordAlloc.removeDeadStructural input15273 value4264 value1 value2 = (output15273, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15274 value4264 value1 value2 = (output15274, value6896, value1) := by
  rw [input15274_def, output15274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8520]
  try dsimp only
  rw [child15273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8520_skip, output15273_skip]
  kernel_rfl

theorem node15275_cond_eq
    (child8519 : Flapjack.WordAlloc.removeDeadStructural input8519 value4263 value1 value2 = (output8519, value4264, value1))
    (child15274 : Flapjack.WordAlloc.removeDeadStructural input15274 value4264 value1 value2 = (output15274, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15275 value4263 value1 value2 = (output15275, value6896, value1) := by
  rw [input15275_def, output15275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8519]
  try dsimp only
  rw [child15274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8519_skip, output15274_skip]
  kernel_rfl

theorem node15276_cond_eq
    (child8518 : Flapjack.WordAlloc.removeDeadStructural input8518 value5 value1 value2 = (output8518, value4263, value1))
    (child15275 : Flapjack.WordAlloc.removeDeadStructural input15275 value4263 value1 value2 = (output15275, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15276 value5 value1 value2 = (output15276, value6896, value1) := by
  rw [input15276_def, output15276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8518]
  try dsimp only
  rw [child15275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8518_skip, output15275_skip]
  kernel_rfl

theorem node15277_cond_eq
    (child8515 : Flapjack.WordAlloc.removeDeadStructural input8515 value4256 value1 value2 = (output8515, value5, value1))
    (child15276 : Flapjack.WordAlloc.removeDeadStructural input15276 value5 value1 value2 = (output15276, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15277 value4256 value1 value2 = (output15277, value6896, value1) := by
  rw [input15277_def, output15277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8515]
  try dsimp only
  rw [child15276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8515_skip, output15276_skip]
  kernel_rfl

theorem node15278_cond_eq
    (child8504 : Flapjack.WordAlloc.removeDeadStructural input8504 value4256 value1 value2 = (output8504, value4256, value1))
    (child15277 : Flapjack.WordAlloc.removeDeadStructural input15277 value4256 value1 value2 = (output15277, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15278 value4256 value1 value2 = (output15278, value6896, value1) := by
  rw [input15278_def, output15278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8504]
  try dsimp only
  rw [child15277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8504_skip, output15277_skip]
  kernel_rfl

theorem node15279_cond_eq
    (child8503 : Flapjack.WordAlloc.removeDeadStructural input8503 value4255 value1 value2 = (output8503, value4256, value1))
    (child15278 : Flapjack.WordAlloc.removeDeadStructural input15278 value4256 value1 value2 = (output15278, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15279 value4255 value1 value2 = (output15279, value6896, value1) := by
  rw [input15279_def, output15279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8503]
  try dsimp only
  rw [child15278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8503_skip, output15278_skip]
  kernel_rfl

theorem node15280_cond_eq
    (child8502 : Flapjack.WordAlloc.removeDeadStructural input8502 value5 value1 value2 = (output8502, value4255, value1))
    (child15279 : Flapjack.WordAlloc.removeDeadStructural input15279 value4255 value1 value2 = (output15279, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15280 value5 value1 value2 = (output15280, value6896, value1) := by
  rw [input15280_def, output15280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8502]
  try dsimp only
  rw [child15279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8502_skip, output15279_skip]
  kernel_rfl

theorem node15281_cond_eq
    (child8499 : Flapjack.WordAlloc.removeDeadStructural input8499 value4248 value1 value2 = (output8499, value5, value1))
    (child15280 : Flapjack.WordAlloc.removeDeadStructural input15280 value5 value1 value2 = (output15280, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15281 value4248 value1 value2 = (output15281, value6896, value1) := by
  rw [input15281_def, output15281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8499]
  try dsimp only
  rw [child15280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8499_skip, output15280_skip]
  kernel_rfl

theorem node15282_cond_eq
    (child8488 : Flapjack.WordAlloc.removeDeadStructural input8488 value4248 value1 value2 = (output8488, value4248, value1))
    (child15281 : Flapjack.WordAlloc.removeDeadStructural input15281 value4248 value1 value2 = (output15281, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15282 value4248 value1 value2 = (output15282, value6896, value1) := by
  rw [input15282_def, output15282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8488]
  try dsimp only
  rw [child15281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8488_skip, output15281_skip]
  kernel_rfl

theorem node15283_cond_eq
    (child8487 : Flapjack.WordAlloc.removeDeadStructural input8487 value4247 value1 value2 = (output8487, value4248, value1))
    (child15282 : Flapjack.WordAlloc.removeDeadStructural input15282 value4248 value1 value2 = (output15282, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15283 value4247 value1 value2 = (output15283, value6896, value1) := by
  rw [input15283_def, output15283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8487]
  try dsimp only
  rw [child15282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8487_skip, output15282_skip]
  kernel_rfl

theorem node15284_cond_eq
    (child8486 : Flapjack.WordAlloc.removeDeadStructural input8486 value5 value1 value2 = (output8486, value4247, value1))
    (child15283 : Flapjack.WordAlloc.removeDeadStructural input15283 value4247 value1 value2 = (output15283, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15284 value5 value1 value2 = (output15284, value6896, value1) := by
  rw [input15284_def, output15284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8486]
  try dsimp only
  rw [child15283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8486_skip, output15283_skip]
  kernel_rfl

theorem node15285_cond_eq
    (child8483 : Flapjack.WordAlloc.removeDeadStructural input8483 value4240 value1 value2 = (output8483, value5, value1))
    (child15284 : Flapjack.WordAlloc.removeDeadStructural input15284 value5 value1 value2 = (output15284, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15285 value4240 value1 value2 = (output15285, value6896, value1) := by
  rw [input15285_def, output15285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8483]
  try dsimp only
  rw [child15284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8483_skip, output15284_skip]
  kernel_rfl

theorem node15286_cond_eq
    (child8472 : Flapjack.WordAlloc.removeDeadStructural input8472 value4240 value1 value2 = (output8472, value4240, value1))
    (child15285 : Flapjack.WordAlloc.removeDeadStructural input15285 value4240 value1 value2 = (output15285, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15286 value4240 value1 value2 = (output15286, value6896, value1) := by
  rw [input15286_def, output15286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8472]
  try dsimp only
  rw [child15285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8472_skip, output15285_skip]
  kernel_rfl

theorem node15287_cond_eq
    (child8471 : Flapjack.WordAlloc.removeDeadStructural input8471 value4239 value1 value2 = (output8471, value4240, value1))
    (child15286 : Flapjack.WordAlloc.removeDeadStructural input15286 value4240 value1 value2 = (output15286, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15287 value4239 value1 value2 = (output15287, value6896, value1) := by
  rw [input15287_def, output15287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8471]
  try dsimp only
  rw [child15286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8471_skip, output15286_skip]
  kernel_rfl

theorem node15288_cond_eq
    (child8470 : Flapjack.WordAlloc.removeDeadStructural input8470 value5 value1 value2 = (output8470, value4239, value1))
    (child15287 : Flapjack.WordAlloc.removeDeadStructural input15287 value4239 value1 value2 = (output15287, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15288 value5 value1 value2 = (output15288, value6896, value1) := by
  rw [input15288_def, output15288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8470]
  try dsimp only
  rw [child15287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8470_skip, output15287_skip]
  kernel_rfl

theorem node15289_cond_eq
    (child8467 : Flapjack.WordAlloc.removeDeadStructural input8467 value4232 value1 value2 = (output8467, value5, value1))
    (child15288 : Flapjack.WordAlloc.removeDeadStructural input15288 value5 value1 value2 = (output15288, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15289 value4232 value1 value2 = (output15289, value6896, value1) := by
  rw [input15289_def, output15289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8467]
  try dsimp only
  rw [child15288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8467_skip, output15288_skip]
  kernel_rfl

theorem node15290_cond_eq
    (child8456 : Flapjack.WordAlloc.removeDeadStructural input8456 value4232 value1 value2 = (output8456, value4232, value1))
    (child15289 : Flapjack.WordAlloc.removeDeadStructural input15289 value4232 value1 value2 = (output15289, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15290 value4232 value1 value2 = (output15290, value6896, value1) := by
  rw [input15290_def, output15290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8456]
  try dsimp only
  rw [child15289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8456_skip, output15289_skip]
  kernel_rfl

theorem node15291_cond_eq
    (child8455 : Flapjack.WordAlloc.removeDeadStructural input8455 value4231 value1 value2 = (output8455, value4232, value1))
    (child15290 : Flapjack.WordAlloc.removeDeadStructural input15290 value4232 value1 value2 = (output15290, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15291 value4231 value1 value2 = (output15291, value6896, value1) := by
  rw [input15291_def, output15291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8455]
  try dsimp only
  rw [child15290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8455_skip, output15290_skip]
  kernel_rfl

theorem node15292_cond_eq
    (child8454 : Flapjack.WordAlloc.removeDeadStructural input8454 value5 value1 value2 = (output8454, value4231, value1))
    (child15291 : Flapjack.WordAlloc.removeDeadStructural input15291 value4231 value1 value2 = (output15291, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15292 value5 value1 value2 = (output15292, value6896, value1) := by
  rw [input15292_def, output15292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8454]
  try dsimp only
  rw [child15291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8454_skip, output15291_skip]
  kernel_rfl

theorem node15293_cond_eq
    (child8451 : Flapjack.WordAlloc.removeDeadStructural input8451 value4224 value1 value2 = (output8451, value5, value1))
    (child15292 : Flapjack.WordAlloc.removeDeadStructural input15292 value5 value1 value2 = (output15292, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15293 value4224 value1 value2 = (output15293, value6896, value1) := by
  rw [input15293_def, output15293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8451]
  try dsimp only
  rw [child15292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8451_skip, output15292_skip]
  kernel_rfl

theorem node15294_cond_eq
    (child8440 : Flapjack.WordAlloc.removeDeadStructural input8440 value4224 value1 value2 = (output8440, value4224, value1))
    (child15293 : Flapjack.WordAlloc.removeDeadStructural input15293 value4224 value1 value2 = (output15293, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15294 value4224 value1 value2 = (output15294, value6896, value1) := by
  rw [input15294_def, output15294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8440]
  try dsimp only
  rw [child15293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8440_skip, output15293_skip]
  kernel_rfl

theorem node15295_cond_eq
    (child8439 : Flapjack.WordAlloc.removeDeadStructural input8439 value4223 value1 value2 = (output8439, value4224, value1))
    (child15294 : Flapjack.WordAlloc.removeDeadStructural input15294 value4224 value1 value2 = (output15294, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15295 value4223 value1 value2 = (output15295, value6896, value1) := by
  rw [input15295_def, output15295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8439]
  try dsimp only
  rw [child15294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8439_skip, output15294_skip]
  kernel_rfl

theorem node15296_cond_eq
    (child8438 : Flapjack.WordAlloc.removeDeadStructural input8438 value5 value1 value2 = (output8438, value4223, value1))
    (child15295 : Flapjack.WordAlloc.removeDeadStructural input15295 value4223 value1 value2 = (output15295, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15296 value5 value1 value2 = (output15296, value6896, value1) := by
  rw [input15296_def, output15296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8438]
  try dsimp only
  rw [child15295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8438_skip, output15295_skip]
  kernel_rfl

theorem node15297_cond_eq
    (child8435 : Flapjack.WordAlloc.removeDeadStructural input8435 value4216 value1 value2 = (output8435, value5, value1))
    (child15296 : Flapjack.WordAlloc.removeDeadStructural input15296 value5 value1 value2 = (output15296, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15297 value4216 value1 value2 = (output15297, value6896, value1) := by
  rw [input15297_def, output15297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8435]
  try dsimp only
  rw [child15296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8435_skip, output15296_skip]
  kernel_rfl

theorem node15298_cond_eq
    (child8424 : Flapjack.WordAlloc.removeDeadStructural input8424 value4216 value1 value2 = (output8424, value4216, value1))
    (child15297 : Flapjack.WordAlloc.removeDeadStructural input15297 value4216 value1 value2 = (output15297, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15298 value4216 value1 value2 = (output15298, value6896, value1) := by
  rw [input15298_def, output15298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8424]
  try dsimp only
  rw [child15297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8424_skip, output15297_skip]
  kernel_rfl

theorem node15299_cond_eq
    (child8423 : Flapjack.WordAlloc.removeDeadStructural input8423 value4215 value1 value2 = (output8423, value4216, value1))
    (child15298 : Flapjack.WordAlloc.removeDeadStructural input15298 value4216 value1 value2 = (output15298, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15299 value4215 value1 value2 = (output15299, value6896, value1) := by
  rw [input15299_def, output15299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8423]
  try dsimp only
  rw [child15298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8423_skip, output15298_skip]
  kernel_rfl

theorem node15300_cond_eq
    (child8422 : Flapjack.WordAlloc.removeDeadStructural input8422 value5 value1 value2 = (output8422, value4215, value1))
    (child15299 : Flapjack.WordAlloc.removeDeadStructural input15299 value4215 value1 value2 = (output15299, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15300 value5 value1 value2 = (output15300, value6896, value1) := by
  rw [input15300_def, output15300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8422]
  try dsimp only
  rw [child15299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8422_skip, output15299_skip]
  kernel_rfl

theorem node15301_cond_eq
    (child8419 : Flapjack.WordAlloc.removeDeadStructural input8419 value4208 value1 value2 = (output8419, value5, value1))
    (child15300 : Flapjack.WordAlloc.removeDeadStructural input15300 value5 value1 value2 = (output15300, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15301 value4208 value1 value2 = (output15301, value6896, value1) := by
  rw [input15301_def, output15301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8419]
  try dsimp only
  rw [child15300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8419_skip, output15300_skip]
  kernel_rfl

theorem node15302_cond_eq
    (child8408 : Flapjack.WordAlloc.removeDeadStructural input8408 value4208 value1 value2 = (output8408, value4208, value1))
    (child15301 : Flapjack.WordAlloc.removeDeadStructural input15301 value4208 value1 value2 = (output15301, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15302 value4208 value1 value2 = (output15302, value6896, value1) := by
  rw [input15302_def, output15302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8408]
  try dsimp only
  rw [child15301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8408_skip, output15301_skip]
  kernel_rfl

theorem node15303_cond_eq
    (child8407 : Flapjack.WordAlloc.removeDeadStructural input8407 value4207 value1 value2 = (output8407, value4208, value1))
    (child15302 : Flapjack.WordAlloc.removeDeadStructural input15302 value4208 value1 value2 = (output15302, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15303 value4207 value1 value2 = (output15303, value6896, value1) := by
  rw [input15303_def, output15303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8407]
  try dsimp only
  rw [child15302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8407_skip, output15302_skip]
  kernel_rfl

theorem node15304_cond_eq
    (child8406 : Flapjack.WordAlloc.removeDeadStructural input8406 value5 value1 value2 = (output8406, value4207, value1))
    (child15303 : Flapjack.WordAlloc.removeDeadStructural input15303 value4207 value1 value2 = (output15303, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15304 value5 value1 value2 = (output15304, value6896, value1) := by
  rw [input15304_def, output15304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8406]
  try dsimp only
  rw [child15303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8406_skip, output15303_skip]
  kernel_rfl

theorem node15305_cond_eq
    (child8403 : Flapjack.WordAlloc.removeDeadStructural input8403 value4200 value1 value2 = (output8403, value5, value1))
    (child15304 : Flapjack.WordAlloc.removeDeadStructural input15304 value5 value1 value2 = (output15304, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15305 value4200 value1 value2 = (output15305, value6896, value1) := by
  rw [input15305_def, output15305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8403]
  try dsimp only
  rw [child15304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8403_skip, output15304_skip]
  kernel_rfl

theorem node15306_cond_eq
    (child8392 : Flapjack.WordAlloc.removeDeadStructural input8392 value4200 value1 value2 = (output8392, value4200, value1))
    (child15305 : Flapjack.WordAlloc.removeDeadStructural input15305 value4200 value1 value2 = (output15305, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15306 value4200 value1 value2 = (output15306, value6896, value1) := by
  rw [input15306_def, output15306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8392]
  try dsimp only
  rw [child15305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8392_skip, output15305_skip]
  kernel_rfl

theorem node15307_cond_eq
    (child8391 : Flapjack.WordAlloc.removeDeadStructural input8391 value4199 value1 value2 = (output8391, value4200, value1))
    (child15306 : Flapjack.WordAlloc.removeDeadStructural input15306 value4200 value1 value2 = (output15306, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15307 value4199 value1 value2 = (output15307, value6896, value1) := by
  rw [input15307_def, output15307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8391]
  try dsimp only
  rw [child15306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8391_skip, output15306_skip]
  kernel_rfl

theorem node15308_cond_eq
    (child8390 : Flapjack.WordAlloc.removeDeadStructural input8390 value5 value1 value2 = (output8390, value4199, value1))
    (child15307 : Flapjack.WordAlloc.removeDeadStructural input15307 value4199 value1 value2 = (output15307, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15308 value5 value1 value2 = (output15308, value6896, value1) := by
  rw [input15308_def, output15308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8390]
  try dsimp only
  rw [child15307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8390_skip, output15307_skip]
  kernel_rfl

theorem node15309_cond_eq
    (child8387 : Flapjack.WordAlloc.removeDeadStructural input8387 value4192 value1 value2 = (output8387, value5, value1))
    (child15308 : Flapjack.WordAlloc.removeDeadStructural input15308 value5 value1 value2 = (output15308, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15309 value4192 value1 value2 = (output15309, value6896, value1) := by
  rw [input15309_def, output15309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8387]
  try dsimp only
  rw [child15308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8387_skip, output15308_skip]
  kernel_rfl

theorem node15310_cond_eq
    (child8376 : Flapjack.WordAlloc.removeDeadStructural input8376 value4192 value1 value2 = (output8376, value4192, value1))
    (child15309 : Flapjack.WordAlloc.removeDeadStructural input15309 value4192 value1 value2 = (output15309, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15310 value4192 value1 value2 = (output15310, value6896, value1) := by
  rw [input15310_def, output15310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8376]
  try dsimp only
  rw [child15309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8376_skip, output15309_skip]
  kernel_rfl

theorem node15311_cond_eq
    (child8375 : Flapjack.WordAlloc.removeDeadStructural input8375 value4191 value1 value2 = (output8375, value4192, value1))
    (child15310 : Flapjack.WordAlloc.removeDeadStructural input15310 value4192 value1 value2 = (output15310, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15311 value4191 value1 value2 = (output15311, value6896, value1) := by
  rw [input15311_def, output15311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8375]
  try dsimp only
  rw [child15310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8375_skip, output15310_skip]
  kernel_rfl

theorem node15312_cond_eq
    (child8374 : Flapjack.WordAlloc.removeDeadStructural input8374 value5 value1 value2 = (output8374, value4191, value1))
    (child15311 : Flapjack.WordAlloc.removeDeadStructural input15311 value4191 value1 value2 = (output15311, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15312 value5 value1 value2 = (output15312, value6896, value1) := by
  rw [input15312_def, output15312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8374]
  try dsimp only
  rw [child15311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8374_skip, output15311_skip]
  kernel_rfl

theorem node15313_cond_eq
    (child8371 : Flapjack.WordAlloc.removeDeadStructural input8371 value4184 value1 value2 = (output8371, value5, value1))
    (child15312 : Flapjack.WordAlloc.removeDeadStructural input15312 value5 value1 value2 = (output15312, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15313 value4184 value1 value2 = (output15313, value6896, value1) := by
  rw [input15313_def, output15313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8371]
  try dsimp only
  rw [child15312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8371_skip, output15312_skip]
  kernel_rfl

theorem node15314_cond_eq
    (child8360 : Flapjack.WordAlloc.removeDeadStructural input8360 value4184 value1 value2 = (output8360, value4184, value1))
    (child15313 : Flapjack.WordAlloc.removeDeadStructural input15313 value4184 value1 value2 = (output15313, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15314 value4184 value1 value2 = (output15314, value6896, value1) := by
  rw [input15314_def, output15314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8360]
  try dsimp only
  rw [child15313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8360_skip, output15313_skip]
  kernel_rfl

theorem node15315_cond_eq
    (child8359 : Flapjack.WordAlloc.removeDeadStructural input8359 value4183 value1 value2 = (output8359, value4184, value1))
    (child15314 : Flapjack.WordAlloc.removeDeadStructural input15314 value4184 value1 value2 = (output15314, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15315 value4183 value1 value2 = (output15315, value6896, value1) := by
  rw [input15315_def, output15315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8359]
  try dsimp only
  rw [child15314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8359_skip, output15314_skip]
  kernel_rfl

theorem node15316_cond_eq
    (child8358 : Flapjack.WordAlloc.removeDeadStructural input8358 value5 value1 value2 = (output8358, value4183, value1))
    (child15315 : Flapjack.WordAlloc.removeDeadStructural input15315 value4183 value1 value2 = (output15315, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15316 value5 value1 value2 = (output15316, value6896, value1) := by
  rw [input15316_def, output15316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8358]
  try dsimp only
  rw [child15315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8358_skip, output15315_skip]
  kernel_rfl

theorem node15317_cond_eq
    (child8355 : Flapjack.WordAlloc.removeDeadStructural input8355 value4176 value1 value2 = (output8355, value5, value1))
    (child15316 : Flapjack.WordAlloc.removeDeadStructural input15316 value5 value1 value2 = (output15316, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15317 value4176 value1 value2 = (output15317, value6896, value1) := by
  rw [input15317_def, output15317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8355]
  try dsimp only
  rw [child15316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8355_skip, output15316_skip]
  kernel_rfl

theorem node15318_cond_eq
    (child8344 : Flapjack.WordAlloc.removeDeadStructural input8344 value4176 value1 value2 = (output8344, value4176, value1))
    (child15317 : Flapjack.WordAlloc.removeDeadStructural input15317 value4176 value1 value2 = (output15317, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15318 value4176 value1 value2 = (output15318, value6896, value1) := by
  rw [input15318_def, output15318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8344]
  try dsimp only
  rw [child15317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8344_skip, output15317_skip]
  kernel_rfl

theorem node15319_cond_eq
    (child8343 : Flapjack.WordAlloc.removeDeadStructural input8343 value4175 value1 value2 = (output8343, value4176, value1))
    (child15318 : Flapjack.WordAlloc.removeDeadStructural input15318 value4176 value1 value2 = (output15318, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15319 value4175 value1 value2 = (output15319, value6896, value1) := by
  rw [input15319_def, output15319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8343]
  try dsimp only
  rw [child15318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8343_skip, output15318_skip]
  kernel_rfl

theorem node15320_cond_eq
    (child8342 : Flapjack.WordAlloc.removeDeadStructural input8342 value5 value1 value2 = (output8342, value4175, value1))
    (child15319 : Flapjack.WordAlloc.removeDeadStructural input15319 value4175 value1 value2 = (output15319, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15320 value5 value1 value2 = (output15320, value6896, value1) := by
  rw [input15320_def, output15320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8342]
  try dsimp only
  rw [child15319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8342_skip, output15319_skip]
  kernel_rfl

theorem node15321_cond_eq
    (child8339 : Flapjack.WordAlloc.removeDeadStructural input8339 value4168 value1 value2 = (output8339, value5, value1))
    (child15320 : Flapjack.WordAlloc.removeDeadStructural input15320 value5 value1 value2 = (output15320, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15321 value4168 value1 value2 = (output15321, value6896, value1) := by
  rw [input15321_def, output15321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8339]
  try dsimp only
  rw [child15320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8339_skip, output15320_skip]
  kernel_rfl

theorem node15322_cond_eq
    (child8328 : Flapjack.WordAlloc.removeDeadStructural input8328 value4168 value1 value2 = (output8328, value4168, value1))
    (child15321 : Flapjack.WordAlloc.removeDeadStructural input15321 value4168 value1 value2 = (output15321, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15322 value4168 value1 value2 = (output15322, value6896, value1) := by
  rw [input15322_def, output15322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8328]
  try dsimp only
  rw [child15321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8328_skip, output15321_skip]
  kernel_rfl

theorem node15323_cond_eq
    (child8327 : Flapjack.WordAlloc.removeDeadStructural input8327 value4167 value1 value2 = (output8327, value4168, value1))
    (child15322 : Flapjack.WordAlloc.removeDeadStructural input15322 value4168 value1 value2 = (output15322, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15323 value4167 value1 value2 = (output15323, value6896, value1) := by
  rw [input15323_def, output15323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8327]
  try dsimp only
  rw [child15322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8327_skip, output15322_skip]
  kernel_rfl

theorem node15324_cond_eq
    (child8326 : Flapjack.WordAlloc.removeDeadStructural input8326 value5 value1 value2 = (output8326, value4167, value1))
    (child15323 : Flapjack.WordAlloc.removeDeadStructural input15323 value4167 value1 value2 = (output15323, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15324 value5 value1 value2 = (output15324, value6896, value1) := by
  rw [input15324_def, output15324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8326]
  try dsimp only
  rw [child15323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8326_skip, output15323_skip]
  kernel_rfl

theorem node15325_cond_eq
    (child8323 : Flapjack.WordAlloc.removeDeadStructural input8323 value4160 value1 value2 = (output8323, value5, value1))
    (child15324 : Flapjack.WordAlloc.removeDeadStructural input15324 value5 value1 value2 = (output15324, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15325 value4160 value1 value2 = (output15325, value6896, value1) := by
  rw [input15325_def, output15325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8323]
  try dsimp only
  rw [child15324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8323_skip, output15324_skip]
  kernel_rfl

theorem node15326_cond_eq
    (child8312 : Flapjack.WordAlloc.removeDeadStructural input8312 value4160 value1 value2 = (output8312, value4160, value1))
    (child15325 : Flapjack.WordAlloc.removeDeadStructural input15325 value4160 value1 value2 = (output15325, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15326 value4160 value1 value2 = (output15326, value6896, value1) := by
  rw [input15326_def, output15326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8312]
  try dsimp only
  rw [child15325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8312_skip, output15325_skip]
  kernel_rfl

theorem node15327_cond_eq
    (child8311 : Flapjack.WordAlloc.removeDeadStructural input8311 value4159 value1 value2 = (output8311, value4160, value1))
    (child15326 : Flapjack.WordAlloc.removeDeadStructural input15326 value4160 value1 value2 = (output15326, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15327 value4159 value1 value2 = (output15327, value6896, value1) := by
  rw [input15327_def, output15327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8311]
  try dsimp only
  rw [child15326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8311_skip, output15326_skip]
  kernel_rfl

theorem node15328_cond_eq
    (child8310 : Flapjack.WordAlloc.removeDeadStructural input8310 value5 value1 value2 = (output8310, value4159, value1))
    (child15327 : Flapjack.WordAlloc.removeDeadStructural input15327 value4159 value1 value2 = (output15327, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15328 value5 value1 value2 = (output15328, value6896, value1) := by
  rw [input15328_def, output15328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8310]
  try dsimp only
  rw [child15327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8310_skip, output15327_skip]
  kernel_rfl

theorem node15329_cond_eq
    (child8307 : Flapjack.WordAlloc.removeDeadStructural input8307 value4152 value1 value2 = (output8307, value5, value1))
    (child15328 : Flapjack.WordAlloc.removeDeadStructural input15328 value5 value1 value2 = (output15328, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15329 value4152 value1 value2 = (output15329, value6896, value1) := by
  rw [input15329_def, output15329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8307]
  try dsimp only
  rw [child15328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8307_skip, output15328_skip]
  kernel_rfl

theorem node15330_cond_eq
    (child8296 : Flapjack.WordAlloc.removeDeadStructural input8296 value4152 value1 value2 = (output8296, value4152, value1))
    (child15329 : Flapjack.WordAlloc.removeDeadStructural input15329 value4152 value1 value2 = (output15329, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15330 value4152 value1 value2 = (output15330, value6896, value1) := by
  rw [input15330_def, output15330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8296]
  try dsimp only
  rw [child15329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8296_skip, output15329_skip]
  kernel_rfl

theorem node15331_cond_eq
    (child8295 : Flapjack.WordAlloc.removeDeadStructural input8295 value4151 value1 value2 = (output8295, value4152, value1))
    (child15330 : Flapjack.WordAlloc.removeDeadStructural input15330 value4152 value1 value2 = (output15330, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15331 value4151 value1 value2 = (output15331, value6896, value1) := by
  rw [input15331_def, output15331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8295]
  try dsimp only
  rw [child15330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8295_skip, output15330_skip]
  kernel_rfl

theorem node15332_cond_eq
    (child8294 : Flapjack.WordAlloc.removeDeadStructural input8294 value5 value1 value2 = (output8294, value4151, value1))
    (child15331 : Flapjack.WordAlloc.removeDeadStructural input15331 value4151 value1 value2 = (output15331, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15332 value5 value1 value2 = (output15332, value6896, value1) := by
  rw [input15332_def, output15332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8294]
  try dsimp only
  rw [child15331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8294_skip, output15331_skip]
  kernel_rfl

theorem node15333_cond_eq
    (child8291 : Flapjack.WordAlloc.removeDeadStructural input8291 value4144 value1 value2 = (output8291, value5, value1))
    (child15332 : Flapjack.WordAlloc.removeDeadStructural input15332 value5 value1 value2 = (output15332, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15333 value4144 value1 value2 = (output15333, value6896, value1) := by
  rw [input15333_def, output15333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8291]
  try dsimp only
  rw [child15332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8291_skip, output15332_skip]
  kernel_rfl

theorem node15334_cond_eq
    (child8280 : Flapjack.WordAlloc.removeDeadStructural input8280 value4144 value1 value2 = (output8280, value4144, value1))
    (child15333 : Flapjack.WordAlloc.removeDeadStructural input15333 value4144 value1 value2 = (output15333, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15334 value4144 value1 value2 = (output15334, value6896, value1) := by
  rw [input15334_def, output15334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8280]
  try dsimp only
  rw [child15333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8280_skip, output15333_skip]
  kernel_rfl

theorem node15335_cond_eq
    (child8279 : Flapjack.WordAlloc.removeDeadStructural input8279 value4143 value1 value2 = (output8279, value4144, value1))
    (child15334 : Flapjack.WordAlloc.removeDeadStructural input15334 value4144 value1 value2 = (output15334, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15335 value4143 value1 value2 = (output15335, value6896, value1) := by
  rw [input15335_def, output15335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8279]
  try dsimp only
  rw [child15334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8279_skip, output15334_skip]
  kernel_rfl

theorem node15336_cond_eq
    (child8278 : Flapjack.WordAlloc.removeDeadStructural input8278 value5 value1 value2 = (output8278, value4143, value1))
    (child15335 : Flapjack.WordAlloc.removeDeadStructural input15335 value4143 value1 value2 = (output15335, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15336 value5 value1 value2 = (output15336, value6896, value1) := by
  rw [input15336_def, output15336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8278]
  try dsimp only
  rw [child15335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8278_skip, output15335_skip]
  kernel_rfl

theorem node15337_cond_eq
    (child8275 : Flapjack.WordAlloc.removeDeadStructural input8275 value4136 value1 value2 = (output8275, value5, value1))
    (child15336 : Flapjack.WordAlloc.removeDeadStructural input15336 value5 value1 value2 = (output15336, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15337 value4136 value1 value2 = (output15337, value6896, value1) := by
  rw [input15337_def, output15337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8275]
  try dsimp only
  rw [child15336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8275_skip, output15336_skip]
  kernel_rfl

theorem node15338_cond_eq
    (child8264 : Flapjack.WordAlloc.removeDeadStructural input8264 value4136 value1 value2 = (output8264, value4136, value1))
    (child15337 : Flapjack.WordAlloc.removeDeadStructural input15337 value4136 value1 value2 = (output15337, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15338 value4136 value1 value2 = (output15338, value6896, value1) := by
  rw [input15338_def, output15338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8264]
  try dsimp only
  rw [child15337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8264_skip, output15337_skip]
  kernel_rfl

theorem node15339_cond_eq
    (child8263 : Flapjack.WordAlloc.removeDeadStructural input8263 value4135 value1 value2 = (output8263, value4136, value1))
    (child15338 : Flapjack.WordAlloc.removeDeadStructural input15338 value4136 value1 value2 = (output15338, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15339 value4135 value1 value2 = (output15339, value6896, value1) := by
  rw [input15339_def, output15339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8263]
  try dsimp only
  rw [child15338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8263_skip, output15338_skip]
  kernel_rfl

theorem node15340_cond_eq
    (child8262 : Flapjack.WordAlloc.removeDeadStructural input8262 value5 value1 value2 = (output8262, value4135, value1))
    (child15339 : Flapjack.WordAlloc.removeDeadStructural input15339 value4135 value1 value2 = (output15339, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15340 value5 value1 value2 = (output15340, value6896, value1) := by
  rw [input15340_def, output15340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8262]
  try dsimp only
  rw [child15339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8262_skip, output15339_skip]
  kernel_rfl

theorem node15341_cond_eq
    (child8259 : Flapjack.WordAlloc.removeDeadStructural input8259 value4128 value1 value2 = (output8259, value5, value1))
    (child15340 : Flapjack.WordAlloc.removeDeadStructural input15340 value5 value1 value2 = (output15340, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15341 value4128 value1 value2 = (output15341, value6896, value1) := by
  rw [input15341_def, output15341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8259]
  try dsimp only
  rw [child15340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8259_skip, output15340_skip]
  kernel_rfl

theorem node15342_cond_eq
    (child8248 : Flapjack.WordAlloc.removeDeadStructural input8248 value4128 value1 value2 = (output8248, value4128, value1))
    (child15341 : Flapjack.WordAlloc.removeDeadStructural input15341 value4128 value1 value2 = (output15341, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15342 value4128 value1 value2 = (output15342, value6896, value1) := by
  rw [input15342_def, output15342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8248]
  try dsimp only
  rw [child15341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8248_skip, output15341_skip]
  kernel_rfl

theorem node15343_cond_eq
    (child8247 : Flapjack.WordAlloc.removeDeadStructural input8247 value4127 value1 value2 = (output8247, value4128, value1))
    (child15342 : Flapjack.WordAlloc.removeDeadStructural input15342 value4128 value1 value2 = (output15342, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15343 value4127 value1 value2 = (output15343, value6896, value1) := by
  rw [input15343_def, output15343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8247]
  try dsimp only
  rw [child15342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8247_skip, output15342_skip]
  kernel_rfl

theorem node15344_cond_eq
    (child8246 : Flapjack.WordAlloc.removeDeadStructural input8246 value5 value1 value2 = (output8246, value4127, value1))
    (child15343 : Flapjack.WordAlloc.removeDeadStructural input15343 value4127 value1 value2 = (output15343, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15344 value5 value1 value2 = (output15344, value6896, value1) := by
  rw [input15344_def, output15344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8246]
  try dsimp only
  rw [child15343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8246_skip, output15343_skip]
  kernel_rfl

theorem node15345_cond_eq
    (child8243 : Flapjack.WordAlloc.removeDeadStructural input8243 value4120 value1 value2 = (output8243, value5, value1))
    (child15344 : Flapjack.WordAlloc.removeDeadStructural input15344 value5 value1 value2 = (output15344, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15345 value4120 value1 value2 = (output15345, value6896, value1) := by
  rw [input15345_def, output15345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8243]
  try dsimp only
  rw [child15344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8243_skip, output15344_skip]
  kernel_rfl

theorem node15346_cond_eq
    (child8232 : Flapjack.WordAlloc.removeDeadStructural input8232 value4120 value1 value2 = (output8232, value4120, value1))
    (child15345 : Flapjack.WordAlloc.removeDeadStructural input15345 value4120 value1 value2 = (output15345, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15346 value4120 value1 value2 = (output15346, value6896, value1) := by
  rw [input15346_def, output15346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8232]
  try dsimp only
  rw [child15345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8232_skip, output15345_skip]
  kernel_rfl

theorem node15347_cond_eq
    (child8231 : Flapjack.WordAlloc.removeDeadStructural input8231 value4119 value1 value2 = (output8231, value4120, value1))
    (child15346 : Flapjack.WordAlloc.removeDeadStructural input15346 value4120 value1 value2 = (output15346, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15347 value4119 value1 value2 = (output15347, value6896, value1) := by
  rw [input15347_def, output15347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8231]
  try dsimp only
  rw [child15346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8231_skip, output15346_skip]
  kernel_rfl

theorem node15348_cond_eq
    (child8230 : Flapjack.WordAlloc.removeDeadStructural input8230 value5 value1 value2 = (output8230, value4119, value1))
    (child15347 : Flapjack.WordAlloc.removeDeadStructural input15347 value4119 value1 value2 = (output15347, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15348 value5 value1 value2 = (output15348, value6896, value1) := by
  rw [input15348_def, output15348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8230]
  try dsimp only
  rw [child15347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8230_skip, output15347_skip]
  kernel_rfl

theorem node15349_cond_eq
    (child8227 : Flapjack.WordAlloc.removeDeadStructural input8227 value4112 value1 value2 = (output8227, value5, value1))
    (child15348 : Flapjack.WordAlloc.removeDeadStructural input15348 value5 value1 value2 = (output15348, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15349 value4112 value1 value2 = (output15349, value6896, value1) := by
  rw [input15349_def, output15349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8227]
  try dsimp only
  rw [child15348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8227_skip, output15348_skip]
  kernel_rfl

theorem node15350_cond_eq
    (child8216 : Flapjack.WordAlloc.removeDeadStructural input8216 value4112 value1 value2 = (output8216, value4112, value1))
    (child15349 : Flapjack.WordAlloc.removeDeadStructural input15349 value4112 value1 value2 = (output15349, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15350 value4112 value1 value2 = (output15350, value6896, value1) := by
  rw [input15350_def, output15350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8216]
  try dsimp only
  rw [child15349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8216_skip, output15349_skip]
  kernel_rfl

theorem node15351_cond_eq
    (child8215 : Flapjack.WordAlloc.removeDeadStructural input8215 value4111 value1 value2 = (output8215, value4112, value1))
    (child15350 : Flapjack.WordAlloc.removeDeadStructural input15350 value4112 value1 value2 = (output15350, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15351 value4111 value1 value2 = (output15351, value6896, value1) := by
  rw [input15351_def, output15351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8215]
  try dsimp only
  rw [child15350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8215_skip, output15350_skip]
  kernel_rfl

theorem node15352_cond_eq
    (child8214 : Flapjack.WordAlloc.removeDeadStructural input8214 value5 value1 value2 = (output8214, value4111, value1))
    (child15351 : Flapjack.WordAlloc.removeDeadStructural input15351 value4111 value1 value2 = (output15351, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15352 value5 value1 value2 = (output15352, value6896, value1) := by
  rw [input15352_def, output15352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8214]
  try dsimp only
  rw [child15351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8214_skip, output15351_skip]
  kernel_rfl

theorem node15353_cond_eq
    (child8211 : Flapjack.WordAlloc.removeDeadStructural input8211 value4104 value1 value2 = (output8211, value5, value1))
    (child15352 : Flapjack.WordAlloc.removeDeadStructural input15352 value5 value1 value2 = (output15352, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15353 value4104 value1 value2 = (output15353, value6896, value1) := by
  rw [input15353_def, output15353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8211]
  try dsimp only
  rw [child15352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8211_skip, output15352_skip]
  kernel_rfl

theorem node15354_cond_eq
    (child8200 : Flapjack.WordAlloc.removeDeadStructural input8200 value4104 value1 value2 = (output8200, value4104, value1))
    (child15353 : Flapjack.WordAlloc.removeDeadStructural input15353 value4104 value1 value2 = (output15353, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15354 value4104 value1 value2 = (output15354, value6896, value1) := by
  rw [input15354_def, output15354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8200]
  try dsimp only
  rw [child15353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8200_skip, output15353_skip]
  kernel_rfl

theorem node15355_cond_eq
    (child8199 : Flapjack.WordAlloc.removeDeadStructural input8199 value4103 value1 value2 = (output8199, value4104, value1))
    (child15354 : Flapjack.WordAlloc.removeDeadStructural input15354 value4104 value1 value2 = (output15354, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15355 value4103 value1 value2 = (output15355, value6896, value1) := by
  rw [input15355_def, output15355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8199]
  try dsimp only
  rw [child15354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8199_skip, output15354_skip]
  kernel_rfl

theorem node15356_cond_eq
    (child8198 : Flapjack.WordAlloc.removeDeadStructural input8198 value5 value1 value2 = (output8198, value4103, value1))
    (child15355 : Flapjack.WordAlloc.removeDeadStructural input15355 value4103 value1 value2 = (output15355, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15356 value5 value1 value2 = (output15356, value6896, value1) := by
  rw [input15356_def, output15356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8198]
  try dsimp only
  rw [child15355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8198_skip, output15355_skip]
  kernel_rfl

theorem node15357_cond_eq
    (child8195 : Flapjack.WordAlloc.removeDeadStructural input8195 value4096 value1 value2 = (output8195, value5, value1))
    (child15356 : Flapjack.WordAlloc.removeDeadStructural input15356 value5 value1 value2 = (output15356, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15357 value4096 value1 value2 = (output15357, value6896, value1) := by
  rw [input15357_def, output15357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8195]
  try dsimp only
  rw [child15356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8195_skip, output15356_skip]
  kernel_rfl

theorem node15358_cond_eq
    (child8184 : Flapjack.WordAlloc.removeDeadStructural input8184 value4096 value1 value2 = (output8184, value4096, value1))
    (child15357 : Flapjack.WordAlloc.removeDeadStructural input15357 value4096 value1 value2 = (output15357, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15358 value4096 value1 value2 = (output15358, value6896, value1) := by
  rw [input15358_def, output15358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8184]
  try dsimp only
  rw [child15357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8184_skip, output15357_skip]
  kernel_rfl

theorem node15359_cond_eq
    (child8183 : Flapjack.WordAlloc.removeDeadStructural input8183 value4095 value1 value2 = (output8183, value4096, value1))
    (child15358 : Flapjack.WordAlloc.removeDeadStructural input15358 value4096 value1 value2 = (output15358, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15359 value4095 value1 value2 = (output15359, value6896, value1) := by
  rw [input15359_def, output15359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8183]
  try dsimp only
  rw [child15358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8183_skip, output15358_skip]
  kernel_rfl

#print axioms node15359_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
