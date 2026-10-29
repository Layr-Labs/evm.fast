import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk020
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node5120_cond_eq
    (child5118 : Flapjack.WordAlloc.removeDeadStructural input5118 value2564 value1 value2 = (output5118, value2565, value1))
    (child5119 : Flapjack.WordAlloc.removeDeadStructural input5119 value2565 value1 value2 = (output5119, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5120 value2564 value1 value2 = (output5120, value5, value1) := by
  rw [input5120_def, output5120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5118]
  dsimp only
  rw [child5119]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5118_skip, output5119_skip]
  kernel_rfl

theorem node5121_cond_eq
    (child5117 : Flapjack.WordAlloc.removeDeadStructural input5117 value2563 value1 value2 = (output5117, value2564, value1))
    (child5120 : Flapjack.WordAlloc.removeDeadStructural input5120 value2564 value1 value2 = (output5120, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5121 value2563 value1 value2 = (output5121, value5, value1) := by
  rw [input5121_def, output5121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5117]
  dsimp only
  rw [child5120]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5117_skip, output5120_skip]
  kernel_rfl

theorem node5122_cond_eq
    (child5116 : Flapjack.WordAlloc.removeDeadStructural input5116 value2562 value1 value2 = (output5116, value2563, value1))
    (child5121 : Flapjack.WordAlloc.removeDeadStructural input5121 value2563 value1 value2 = (output5121, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5122 value2562 value1 value2 = (output5122, value5, value1) := by
  rw [input5122_def, output5122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5116]
  dsimp only
  rw [child5121]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5116_skip, output5121_skip]
  kernel_rfl

theorem node5123_cond_eq
    (child5115 : Flapjack.WordAlloc.removeDeadStructural input5115 value2560 value1 value2 = (output5115, value2562, value1))
    (child5122 : Flapjack.WordAlloc.removeDeadStructural input5122 value2562 value1 value2 = (output5122, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5123 value2560 value1 value2 = (output5123, value5, value1) := by
  rw [input5123_def, output5123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5115]
  dsimp only
  rw [child5122]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5115_skip, output5122_skip]
  kernel_rfl

theorem node5124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5124 value5 value1 value2 = (output5124, value2566, value1) := by
  rw [input5124_def, output5124_def]
  kernel_rfl

theorem node5125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5125 value2566 value1 value2 = (output5125, value2567, value1) := by
  rw [input5125_def, output5125_def]
  kernel_rfl

theorem node5126_cond_eq
    (child5124 : Flapjack.WordAlloc.removeDeadStructural input5124 value5 value1 value2 = (output5124, value2566, value1))
    (child5125 : Flapjack.WordAlloc.removeDeadStructural input5125 value2566 value1 value2 = (output5125, value2567, value1)) : Flapjack.WordAlloc.removeDeadStructural input5126 value5 value1 value2 = (output5126, value2567, value1) := by
  rw [input5126_def, output5126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5124]
  dsimp only
  rw [child5125]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5124_skip, output5125_skip]
  kernel_rfl

theorem node5127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5127 value2567 value1 value2 = (output5127, value2568, value1) := by
  rw [input5127_def, output5127_def]
  kernel_rfl

theorem node5128_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5128 value2568 value1 value2 = (output5128, value2568, value1) := by
  rw [input5128_def, output5128_def]
  kernel_rfl

theorem node5129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5129 value2568 value1 value2 = (output5129, value2569, value1) := by
  rw [input5129_def, output5129_def]
  kernel_rfl

theorem node5130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5130 value2569 value1 value2 = (output5130, value2570, value1) := by
  rw [input5130_def, output5130_def]
  kernel_rfl

theorem node5131_cond_eq
    (child5129 : Flapjack.WordAlloc.removeDeadStructural input5129 value2568 value1 value2 = (output5129, value2569, value1))
    (child5130 : Flapjack.WordAlloc.removeDeadStructural input5130 value2569 value1 value2 = (output5130, value2570, value1)) : Flapjack.WordAlloc.removeDeadStructural input5131 value2568 value1 value2 = (output5131, value2570, value1) := by
  rw [input5131_def, output5131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5129]
  dsimp only
  rw [child5130]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5129_skip, output5130_skip]
  kernel_rfl

theorem node5132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5132 value2570 value1 value2 = (output5132, value2571, value1) := by
  rw [input5132_def, output5132_def]
  kernel_rfl

theorem node5133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5133 value2571 value1 value2 = (output5133, value2572, value1) := by
  rw [input5133_def, output5133_def]
  kernel_rfl

theorem node5134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5134 value2572 value1 value2 = (output5134, value2573, value1) := by
  rw [input5134_def, output5134_def]
  kernel_rfl

theorem node5135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5135 value2573 value1 value2 = (output5135, value5, value1) := by
  rw [input5135_def, output5135_def]
  kernel_rfl

theorem node5136_cond_eq
    (child5134 : Flapjack.WordAlloc.removeDeadStructural input5134 value2572 value1 value2 = (output5134, value2573, value1))
    (child5135 : Flapjack.WordAlloc.removeDeadStructural input5135 value2573 value1 value2 = (output5135, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5136 value2572 value1 value2 = (output5136, value5, value1) := by
  rw [input5136_def, output5136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5134]
  dsimp only
  rw [child5135]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5134_skip, output5135_skip]
  kernel_rfl

theorem node5137_cond_eq
    (child5133 : Flapjack.WordAlloc.removeDeadStructural input5133 value2571 value1 value2 = (output5133, value2572, value1))
    (child5136 : Flapjack.WordAlloc.removeDeadStructural input5136 value2572 value1 value2 = (output5136, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5137 value2571 value1 value2 = (output5137, value5, value1) := by
  rw [input5137_def, output5137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5133]
  dsimp only
  rw [child5136]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5133_skip, output5136_skip]
  kernel_rfl

theorem node5138_cond_eq
    (child5132 : Flapjack.WordAlloc.removeDeadStructural input5132 value2570 value1 value2 = (output5132, value2571, value1))
    (child5137 : Flapjack.WordAlloc.removeDeadStructural input5137 value2571 value1 value2 = (output5137, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5138 value2570 value1 value2 = (output5138, value5, value1) := by
  rw [input5138_def, output5138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5132]
  dsimp only
  rw [child5137]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5132_skip, output5137_skip]
  kernel_rfl

theorem node5139_cond_eq
    (child5131 : Flapjack.WordAlloc.removeDeadStructural input5131 value2568 value1 value2 = (output5131, value2570, value1))
    (child5138 : Flapjack.WordAlloc.removeDeadStructural input5138 value2570 value1 value2 = (output5138, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5139 value2568 value1 value2 = (output5139, value5, value1) := by
  rw [input5139_def, output5139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5131]
  dsimp only
  rw [child5138]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5131_skip, output5138_skip]
  kernel_rfl

theorem node5140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5140 value5 value1 value2 = (output5140, value2574, value1) := by
  rw [input5140_def, output5140_def]
  kernel_rfl

theorem node5141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5141 value2574 value1 value2 = (output5141, value2575, value1) := by
  rw [input5141_def, output5141_def]
  kernel_rfl

theorem node5142_cond_eq
    (child5140 : Flapjack.WordAlloc.removeDeadStructural input5140 value5 value1 value2 = (output5140, value2574, value1))
    (child5141 : Flapjack.WordAlloc.removeDeadStructural input5141 value2574 value1 value2 = (output5141, value2575, value1)) : Flapjack.WordAlloc.removeDeadStructural input5142 value5 value1 value2 = (output5142, value2575, value1) := by
  rw [input5142_def, output5142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5140]
  dsimp only
  rw [child5141]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5140_skip, output5141_skip]
  kernel_rfl

theorem node5143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5143 value2575 value1 value2 = (output5143, value2576, value1) := by
  rw [input5143_def, output5143_def]
  kernel_rfl

theorem node5144_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5144 value2576 value1 value2 = (output5144, value2576, value1) := by
  rw [input5144_def, output5144_def]
  kernel_rfl

theorem node5145_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5145 value2576 value1 value2 = (output5145, value2577, value1) := by
  rw [input5145_def, output5145_def]
  kernel_rfl

theorem node5146_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5146 value2577 value1 value2 = (output5146, value2578, value1) := by
  rw [input5146_def, output5146_def]
  kernel_rfl

theorem node5147_cond_eq
    (child5145 : Flapjack.WordAlloc.removeDeadStructural input5145 value2576 value1 value2 = (output5145, value2577, value1))
    (child5146 : Flapjack.WordAlloc.removeDeadStructural input5146 value2577 value1 value2 = (output5146, value2578, value1)) : Flapjack.WordAlloc.removeDeadStructural input5147 value2576 value1 value2 = (output5147, value2578, value1) := by
  rw [input5147_def, output5147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5145]
  dsimp only
  rw [child5146]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5145_skip, output5146_skip]
  kernel_rfl

theorem node5148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5148 value2578 value1 value2 = (output5148, value2579, value1) := by
  rw [input5148_def, output5148_def]
  kernel_rfl

theorem node5149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5149 value2579 value1 value2 = (output5149, value2580, value1) := by
  rw [input5149_def, output5149_def]
  kernel_rfl

theorem node5150_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5150 value2580 value1 value2 = (output5150, value2581, value1) := by
  rw [input5150_def, output5150_def]
  kernel_rfl

theorem node5151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5151 value2581 value1 value2 = (output5151, value5, value1) := by
  rw [input5151_def, output5151_def]
  kernel_rfl

theorem node5152_cond_eq
    (child5150 : Flapjack.WordAlloc.removeDeadStructural input5150 value2580 value1 value2 = (output5150, value2581, value1))
    (child5151 : Flapjack.WordAlloc.removeDeadStructural input5151 value2581 value1 value2 = (output5151, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5152 value2580 value1 value2 = (output5152, value5, value1) := by
  rw [input5152_def, output5152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5150]
  dsimp only
  rw [child5151]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5150_skip, output5151_skip]
  kernel_rfl

theorem node5153_cond_eq
    (child5149 : Flapjack.WordAlloc.removeDeadStructural input5149 value2579 value1 value2 = (output5149, value2580, value1))
    (child5152 : Flapjack.WordAlloc.removeDeadStructural input5152 value2580 value1 value2 = (output5152, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5153 value2579 value1 value2 = (output5153, value5, value1) := by
  rw [input5153_def, output5153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5149]
  dsimp only
  rw [child5152]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5149_skip, output5152_skip]
  kernel_rfl

theorem node5154_cond_eq
    (child5148 : Flapjack.WordAlloc.removeDeadStructural input5148 value2578 value1 value2 = (output5148, value2579, value1))
    (child5153 : Flapjack.WordAlloc.removeDeadStructural input5153 value2579 value1 value2 = (output5153, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5154 value2578 value1 value2 = (output5154, value5, value1) := by
  rw [input5154_def, output5154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5148]
  dsimp only
  rw [child5153]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5148_skip, output5153_skip]
  kernel_rfl

theorem node5155_cond_eq
    (child5147 : Flapjack.WordAlloc.removeDeadStructural input5147 value2576 value1 value2 = (output5147, value2578, value1))
    (child5154 : Flapjack.WordAlloc.removeDeadStructural input5154 value2578 value1 value2 = (output5154, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5155 value2576 value1 value2 = (output5155, value5, value1) := by
  rw [input5155_def, output5155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5147]
  dsimp only
  rw [child5154]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5147_skip, output5154_skip]
  kernel_rfl

theorem node5156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5156 value5 value1 value2 = (output5156, value2582, value1) := by
  rw [input5156_def, output5156_def]
  kernel_rfl

theorem node5157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5157 value2582 value1 value2 = (output5157, value2583, value1) := by
  rw [input5157_def, output5157_def]
  kernel_rfl

theorem node5158_cond_eq
    (child5156 : Flapjack.WordAlloc.removeDeadStructural input5156 value5 value1 value2 = (output5156, value2582, value1))
    (child5157 : Flapjack.WordAlloc.removeDeadStructural input5157 value2582 value1 value2 = (output5157, value2583, value1)) : Flapjack.WordAlloc.removeDeadStructural input5158 value5 value1 value2 = (output5158, value2583, value1) := by
  rw [input5158_def, output5158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5156]
  dsimp only
  rw [child5157]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5156_skip, output5157_skip]
  kernel_rfl

theorem node5159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5159 value2583 value1 value2 = (output5159, value2584, value1) := by
  rw [input5159_def, output5159_def]
  kernel_rfl

theorem node5160_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5160 value2584 value1 value2 = (output5160, value2584, value1) := by
  rw [input5160_def, output5160_def]
  kernel_rfl

theorem node5161_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5161 value2584 value1 value2 = (output5161, value2585, value1) := by
  rw [input5161_def, output5161_def]
  kernel_rfl

theorem node5162_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5162 value2585 value1 value2 = (output5162, value2586, value1) := by
  rw [input5162_def, output5162_def]
  kernel_rfl

theorem node5163_cond_eq
    (child5161 : Flapjack.WordAlloc.removeDeadStructural input5161 value2584 value1 value2 = (output5161, value2585, value1))
    (child5162 : Flapjack.WordAlloc.removeDeadStructural input5162 value2585 value1 value2 = (output5162, value2586, value1)) : Flapjack.WordAlloc.removeDeadStructural input5163 value2584 value1 value2 = (output5163, value2586, value1) := by
  rw [input5163_def, output5163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5161]
  dsimp only
  rw [child5162]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5161_skip, output5162_skip]
  kernel_rfl

theorem node5164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5164 value2586 value1 value2 = (output5164, value2587, value1) := by
  rw [input5164_def, output5164_def]
  kernel_rfl

theorem node5165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5165 value2587 value1 value2 = (output5165, value2588, value1) := by
  rw [input5165_def, output5165_def]
  kernel_rfl

theorem node5166_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5166 value2588 value1 value2 = (output5166, value2589, value1) := by
  rw [input5166_def, output5166_def]
  kernel_rfl

theorem node5167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5167 value2589 value1 value2 = (output5167, value5, value1) := by
  rw [input5167_def, output5167_def]
  kernel_rfl

theorem node5168_cond_eq
    (child5166 : Flapjack.WordAlloc.removeDeadStructural input5166 value2588 value1 value2 = (output5166, value2589, value1))
    (child5167 : Flapjack.WordAlloc.removeDeadStructural input5167 value2589 value1 value2 = (output5167, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5168 value2588 value1 value2 = (output5168, value5, value1) := by
  rw [input5168_def, output5168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5166]
  dsimp only
  rw [child5167]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5166_skip, output5167_skip]
  kernel_rfl

theorem node5169_cond_eq
    (child5165 : Flapjack.WordAlloc.removeDeadStructural input5165 value2587 value1 value2 = (output5165, value2588, value1))
    (child5168 : Flapjack.WordAlloc.removeDeadStructural input5168 value2588 value1 value2 = (output5168, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5169 value2587 value1 value2 = (output5169, value5, value1) := by
  rw [input5169_def, output5169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5165]
  dsimp only
  rw [child5168]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5165_skip, output5168_skip]
  kernel_rfl

theorem node5170_cond_eq
    (child5164 : Flapjack.WordAlloc.removeDeadStructural input5164 value2586 value1 value2 = (output5164, value2587, value1))
    (child5169 : Flapjack.WordAlloc.removeDeadStructural input5169 value2587 value1 value2 = (output5169, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5170 value2586 value1 value2 = (output5170, value5, value1) := by
  rw [input5170_def, output5170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5164]
  dsimp only
  rw [child5169]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5164_skip, output5169_skip]
  kernel_rfl

theorem node5171_cond_eq
    (child5163 : Flapjack.WordAlloc.removeDeadStructural input5163 value2584 value1 value2 = (output5163, value2586, value1))
    (child5170 : Flapjack.WordAlloc.removeDeadStructural input5170 value2586 value1 value2 = (output5170, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5171 value2584 value1 value2 = (output5171, value5, value1) := by
  rw [input5171_def, output5171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5163]
  dsimp only
  rw [child5170]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5163_skip, output5170_skip]
  kernel_rfl

theorem node5172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5172 value5 value1 value2 = (output5172, value2590, value1) := by
  rw [input5172_def, output5172_def]
  kernel_rfl

theorem node5173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5173 value2590 value1 value2 = (output5173, value2591, value1) := by
  rw [input5173_def, output5173_def]
  kernel_rfl

theorem node5174_cond_eq
    (child5172 : Flapjack.WordAlloc.removeDeadStructural input5172 value5 value1 value2 = (output5172, value2590, value1))
    (child5173 : Flapjack.WordAlloc.removeDeadStructural input5173 value2590 value1 value2 = (output5173, value2591, value1)) : Flapjack.WordAlloc.removeDeadStructural input5174 value5 value1 value2 = (output5174, value2591, value1) := by
  rw [input5174_def, output5174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5172]
  dsimp only
  rw [child5173]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5172_skip, output5173_skip]
  kernel_rfl

theorem node5175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5175 value2591 value1 value2 = (output5175, value2592, value1) := by
  rw [input5175_def, output5175_def]
  kernel_rfl

theorem node5176_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5176 value2592 value1 value2 = (output5176, value2592, value1) := by
  rw [input5176_def, output5176_def]
  kernel_rfl

theorem node5177_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5177 value2592 value1 value2 = (output5177, value2593, value1) := by
  rw [input5177_def, output5177_def]
  kernel_rfl

theorem node5178_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5178 value2593 value1 value2 = (output5178, value2594, value1) := by
  rw [input5178_def, output5178_def]
  kernel_rfl

theorem node5179_cond_eq
    (child5177 : Flapjack.WordAlloc.removeDeadStructural input5177 value2592 value1 value2 = (output5177, value2593, value1))
    (child5178 : Flapjack.WordAlloc.removeDeadStructural input5178 value2593 value1 value2 = (output5178, value2594, value1)) : Flapjack.WordAlloc.removeDeadStructural input5179 value2592 value1 value2 = (output5179, value2594, value1) := by
  rw [input5179_def, output5179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5177]
  dsimp only
  rw [child5178]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5177_skip, output5178_skip]
  kernel_rfl

theorem node5180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5180 value2594 value1 value2 = (output5180, value2595, value1) := by
  rw [input5180_def, output5180_def]
  kernel_rfl

theorem node5181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5181 value2595 value1 value2 = (output5181, value2596, value1) := by
  rw [input5181_def, output5181_def]
  kernel_rfl

theorem node5182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5182 value2596 value1 value2 = (output5182, value2597, value1) := by
  rw [input5182_def, output5182_def]
  kernel_rfl

theorem node5183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5183 value2597 value1 value2 = (output5183, value5, value1) := by
  rw [input5183_def, output5183_def]
  kernel_rfl

theorem node5184_cond_eq
    (child5182 : Flapjack.WordAlloc.removeDeadStructural input5182 value2596 value1 value2 = (output5182, value2597, value1))
    (child5183 : Flapjack.WordAlloc.removeDeadStructural input5183 value2597 value1 value2 = (output5183, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5184 value2596 value1 value2 = (output5184, value5, value1) := by
  rw [input5184_def, output5184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5182]
  dsimp only
  rw [child5183]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5182_skip, output5183_skip]
  kernel_rfl

theorem node5185_cond_eq
    (child5181 : Flapjack.WordAlloc.removeDeadStructural input5181 value2595 value1 value2 = (output5181, value2596, value1))
    (child5184 : Flapjack.WordAlloc.removeDeadStructural input5184 value2596 value1 value2 = (output5184, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5185 value2595 value1 value2 = (output5185, value5, value1) := by
  rw [input5185_def, output5185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5181]
  dsimp only
  rw [child5184]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5181_skip, output5184_skip]
  kernel_rfl

theorem node5186_cond_eq
    (child5180 : Flapjack.WordAlloc.removeDeadStructural input5180 value2594 value1 value2 = (output5180, value2595, value1))
    (child5185 : Flapjack.WordAlloc.removeDeadStructural input5185 value2595 value1 value2 = (output5185, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5186 value2594 value1 value2 = (output5186, value5, value1) := by
  rw [input5186_def, output5186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5180]
  dsimp only
  rw [child5185]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5180_skip, output5185_skip]
  kernel_rfl

theorem node5187_cond_eq
    (child5179 : Flapjack.WordAlloc.removeDeadStructural input5179 value2592 value1 value2 = (output5179, value2594, value1))
    (child5186 : Flapjack.WordAlloc.removeDeadStructural input5186 value2594 value1 value2 = (output5186, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5187 value2592 value1 value2 = (output5187, value5, value1) := by
  rw [input5187_def, output5187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5179]
  dsimp only
  rw [child5186]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5179_skip, output5186_skip]
  kernel_rfl

theorem node5188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5188 value5 value1 value2 = (output5188, value2598, value1) := by
  rw [input5188_def, output5188_def]
  kernel_rfl

theorem node5189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5189 value2598 value1 value2 = (output5189, value2599, value1) := by
  rw [input5189_def, output5189_def]
  kernel_rfl

theorem node5190_cond_eq
    (child5188 : Flapjack.WordAlloc.removeDeadStructural input5188 value5 value1 value2 = (output5188, value2598, value1))
    (child5189 : Flapjack.WordAlloc.removeDeadStructural input5189 value2598 value1 value2 = (output5189, value2599, value1)) : Flapjack.WordAlloc.removeDeadStructural input5190 value5 value1 value2 = (output5190, value2599, value1) := by
  rw [input5190_def, output5190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5188]
  dsimp only
  rw [child5189]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5188_skip, output5189_skip]
  kernel_rfl

theorem node5191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5191 value2599 value1 value2 = (output5191, value2600, value1) := by
  rw [input5191_def, output5191_def]
  kernel_rfl

theorem node5192_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5192 value2600 value1 value2 = (output5192, value2600, value1) := by
  rw [input5192_def, output5192_def]
  kernel_rfl

theorem node5193_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5193 value2600 value1 value2 = (output5193, value2601, value1) := by
  rw [input5193_def, output5193_def]
  kernel_rfl

theorem node5194_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5194 value2601 value1 value2 = (output5194, value2602, value1) := by
  rw [input5194_def, output5194_def]
  kernel_rfl

theorem node5195_cond_eq
    (child5193 : Flapjack.WordAlloc.removeDeadStructural input5193 value2600 value1 value2 = (output5193, value2601, value1))
    (child5194 : Flapjack.WordAlloc.removeDeadStructural input5194 value2601 value1 value2 = (output5194, value2602, value1)) : Flapjack.WordAlloc.removeDeadStructural input5195 value2600 value1 value2 = (output5195, value2602, value1) := by
  rw [input5195_def, output5195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5193]
  dsimp only
  rw [child5194]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5193_skip, output5194_skip]
  kernel_rfl

theorem node5196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5196 value2602 value1 value2 = (output5196, value2603, value1) := by
  rw [input5196_def, output5196_def]
  kernel_rfl

theorem node5197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5197 value2603 value1 value2 = (output5197, value2604, value1) := by
  rw [input5197_def, output5197_def]
  kernel_rfl

theorem node5198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5198 value2604 value1 value2 = (output5198, value2605, value1) := by
  rw [input5198_def, output5198_def]
  kernel_rfl

theorem node5199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5199 value2605 value1 value2 = (output5199, value5, value1) := by
  rw [input5199_def, output5199_def]
  kernel_rfl

theorem node5200_cond_eq
    (child5198 : Flapjack.WordAlloc.removeDeadStructural input5198 value2604 value1 value2 = (output5198, value2605, value1))
    (child5199 : Flapjack.WordAlloc.removeDeadStructural input5199 value2605 value1 value2 = (output5199, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5200 value2604 value1 value2 = (output5200, value5, value1) := by
  rw [input5200_def, output5200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5198]
  dsimp only
  rw [child5199]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5198_skip, output5199_skip]
  kernel_rfl

theorem node5201_cond_eq
    (child5197 : Flapjack.WordAlloc.removeDeadStructural input5197 value2603 value1 value2 = (output5197, value2604, value1))
    (child5200 : Flapjack.WordAlloc.removeDeadStructural input5200 value2604 value1 value2 = (output5200, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5201 value2603 value1 value2 = (output5201, value5, value1) := by
  rw [input5201_def, output5201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5197]
  dsimp only
  rw [child5200]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5197_skip, output5200_skip]
  kernel_rfl

theorem node5202_cond_eq
    (child5196 : Flapjack.WordAlloc.removeDeadStructural input5196 value2602 value1 value2 = (output5196, value2603, value1))
    (child5201 : Flapjack.WordAlloc.removeDeadStructural input5201 value2603 value1 value2 = (output5201, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5202 value2602 value1 value2 = (output5202, value5, value1) := by
  rw [input5202_def, output5202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5196]
  dsimp only
  rw [child5201]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5196_skip, output5201_skip]
  kernel_rfl

theorem node5203_cond_eq
    (child5195 : Flapjack.WordAlloc.removeDeadStructural input5195 value2600 value1 value2 = (output5195, value2602, value1))
    (child5202 : Flapjack.WordAlloc.removeDeadStructural input5202 value2602 value1 value2 = (output5202, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5203 value2600 value1 value2 = (output5203, value5, value1) := by
  rw [input5203_def, output5203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5195]
  dsimp only
  rw [child5202]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5195_skip, output5202_skip]
  kernel_rfl

theorem node5204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5204 value5 value1 value2 = (output5204, value2606, value1) := by
  rw [input5204_def, output5204_def]
  kernel_rfl

theorem node5205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5205 value2606 value1 value2 = (output5205, value2607, value1) := by
  rw [input5205_def, output5205_def]
  kernel_rfl

theorem node5206_cond_eq
    (child5204 : Flapjack.WordAlloc.removeDeadStructural input5204 value5 value1 value2 = (output5204, value2606, value1))
    (child5205 : Flapjack.WordAlloc.removeDeadStructural input5205 value2606 value1 value2 = (output5205, value2607, value1)) : Flapjack.WordAlloc.removeDeadStructural input5206 value5 value1 value2 = (output5206, value2607, value1) := by
  rw [input5206_def, output5206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5204]
  dsimp only
  rw [child5205]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5204_skip, output5205_skip]
  kernel_rfl

theorem node5207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5207 value2607 value1 value2 = (output5207, value2608, value1) := by
  rw [input5207_def, output5207_def]
  kernel_rfl

theorem node5208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5208 value2608 value1 value2 = (output5208, value2608, value1) := by
  rw [input5208_def, output5208_def]
  kernel_rfl

theorem node5209_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5209 value2608 value1 value2 = (output5209, value2609, value1) := by
  rw [input5209_def, output5209_def]
  kernel_rfl

theorem node5210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5210 value2609 value1 value2 = (output5210, value2610, value1) := by
  rw [input5210_def, output5210_def]
  kernel_rfl

theorem node5211_cond_eq
    (child5209 : Flapjack.WordAlloc.removeDeadStructural input5209 value2608 value1 value2 = (output5209, value2609, value1))
    (child5210 : Flapjack.WordAlloc.removeDeadStructural input5210 value2609 value1 value2 = (output5210, value2610, value1)) : Flapjack.WordAlloc.removeDeadStructural input5211 value2608 value1 value2 = (output5211, value2610, value1) := by
  rw [input5211_def, output5211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5209]
  dsimp only
  rw [child5210]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5209_skip, output5210_skip]
  kernel_rfl

theorem node5212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5212 value2610 value1 value2 = (output5212, value2611, value1) := by
  rw [input5212_def, output5212_def]
  kernel_rfl

theorem node5213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5213 value2611 value1 value2 = (output5213, value2612, value1) := by
  rw [input5213_def, output5213_def]
  kernel_rfl

theorem node5214_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5214 value2612 value1 value2 = (output5214, value2613, value1) := by
  rw [input5214_def, output5214_def]
  kernel_rfl

theorem node5215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5215 value2613 value1 value2 = (output5215, value5, value1) := by
  rw [input5215_def, output5215_def]
  kernel_rfl

theorem node5216_cond_eq
    (child5214 : Flapjack.WordAlloc.removeDeadStructural input5214 value2612 value1 value2 = (output5214, value2613, value1))
    (child5215 : Flapjack.WordAlloc.removeDeadStructural input5215 value2613 value1 value2 = (output5215, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5216 value2612 value1 value2 = (output5216, value5, value1) := by
  rw [input5216_def, output5216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5214]
  dsimp only
  rw [child5215]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5214_skip, output5215_skip]
  kernel_rfl

theorem node5217_cond_eq
    (child5213 : Flapjack.WordAlloc.removeDeadStructural input5213 value2611 value1 value2 = (output5213, value2612, value1))
    (child5216 : Flapjack.WordAlloc.removeDeadStructural input5216 value2612 value1 value2 = (output5216, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5217 value2611 value1 value2 = (output5217, value5, value1) := by
  rw [input5217_def, output5217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5213]
  dsimp only
  rw [child5216]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5213_skip, output5216_skip]
  kernel_rfl

theorem node5218_cond_eq
    (child5212 : Flapjack.WordAlloc.removeDeadStructural input5212 value2610 value1 value2 = (output5212, value2611, value1))
    (child5217 : Flapjack.WordAlloc.removeDeadStructural input5217 value2611 value1 value2 = (output5217, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5218 value2610 value1 value2 = (output5218, value5, value1) := by
  rw [input5218_def, output5218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5212]
  dsimp only
  rw [child5217]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5212_skip, output5217_skip]
  kernel_rfl

theorem node5219_cond_eq
    (child5211 : Flapjack.WordAlloc.removeDeadStructural input5211 value2608 value1 value2 = (output5211, value2610, value1))
    (child5218 : Flapjack.WordAlloc.removeDeadStructural input5218 value2610 value1 value2 = (output5218, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5219 value2608 value1 value2 = (output5219, value5, value1) := by
  rw [input5219_def, output5219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5211]
  dsimp only
  rw [child5218]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5211_skip, output5218_skip]
  kernel_rfl

theorem node5220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5220 value5 value1 value2 = (output5220, value2614, value1) := by
  rw [input5220_def, output5220_def]
  kernel_rfl

theorem node5221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5221 value2614 value1 value2 = (output5221, value2615, value1) := by
  rw [input5221_def, output5221_def]
  kernel_rfl

theorem node5222_cond_eq
    (child5220 : Flapjack.WordAlloc.removeDeadStructural input5220 value5 value1 value2 = (output5220, value2614, value1))
    (child5221 : Flapjack.WordAlloc.removeDeadStructural input5221 value2614 value1 value2 = (output5221, value2615, value1)) : Flapjack.WordAlloc.removeDeadStructural input5222 value5 value1 value2 = (output5222, value2615, value1) := by
  rw [input5222_def, output5222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5220]
  dsimp only
  rw [child5221]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5220_skip, output5221_skip]
  kernel_rfl

theorem node5223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5223 value2615 value1 value2 = (output5223, value2616, value1) := by
  rw [input5223_def, output5223_def]
  kernel_rfl

theorem node5224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5224 value2616 value1 value2 = (output5224, value2616, value1) := by
  rw [input5224_def, output5224_def]
  kernel_rfl

theorem node5225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5225 value2616 value1 value2 = (output5225, value2617, value1) := by
  rw [input5225_def, output5225_def]
  kernel_rfl

theorem node5226_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5226 value2617 value1 value2 = (output5226, value2618, value1) := by
  rw [input5226_def, output5226_def]
  kernel_rfl

theorem node5227_cond_eq
    (child5225 : Flapjack.WordAlloc.removeDeadStructural input5225 value2616 value1 value2 = (output5225, value2617, value1))
    (child5226 : Flapjack.WordAlloc.removeDeadStructural input5226 value2617 value1 value2 = (output5226, value2618, value1)) : Flapjack.WordAlloc.removeDeadStructural input5227 value2616 value1 value2 = (output5227, value2618, value1) := by
  rw [input5227_def, output5227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5225]
  dsimp only
  rw [child5226]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5225_skip, output5226_skip]
  kernel_rfl

theorem node5228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5228 value2618 value1 value2 = (output5228, value2619, value1) := by
  rw [input5228_def, output5228_def]
  kernel_rfl

theorem node5229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5229 value2619 value1 value2 = (output5229, value2620, value1) := by
  rw [input5229_def, output5229_def]
  kernel_rfl

theorem node5230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5230 value2620 value1 value2 = (output5230, value2621, value1) := by
  rw [input5230_def, output5230_def]
  kernel_rfl

theorem node5231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5231 value2621 value1 value2 = (output5231, value5, value1) := by
  rw [input5231_def, output5231_def]
  kernel_rfl

theorem node5232_cond_eq
    (child5230 : Flapjack.WordAlloc.removeDeadStructural input5230 value2620 value1 value2 = (output5230, value2621, value1))
    (child5231 : Flapjack.WordAlloc.removeDeadStructural input5231 value2621 value1 value2 = (output5231, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5232 value2620 value1 value2 = (output5232, value5, value1) := by
  rw [input5232_def, output5232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5230]
  dsimp only
  rw [child5231]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5230_skip, output5231_skip]
  kernel_rfl

theorem node5233_cond_eq
    (child5229 : Flapjack.WordAlloc.removeDeadStructural input5229 value2619 value1 value2 = (output5229, value2620, value1))
    (child5232 : Flapjack.WordAlloc.removeDeadStructural input5232 value2620 value1 value2 = (output5232, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5233 value2619 value1 value2 = (output5233, value5, value1) := by
  rw [input5233_def, output5233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5229]
  dsimp only
  rw [child5232]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5229_skip, output5232_skip]
  kernel_rfl

theorem node5234_cond_eq
    (child5228 : Flapjack.WordAlloc.removeDeadStructural input5228 value2618 value1 value2 = (output5228, value2619, value1))
    (child5233 : Flapjack.WordAlloc.removeDeadStructural input5233 value2619 value1 value2 = (output5233, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5234 value2618 value1 value2 = (output5234, value5, value1) := by
  rw [input5234_def, output5234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5228]
  dsimp only
  rw [child5233]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5228_skip, output5233_skip]
  kernel_rfl

theorem node5235_cond_eq
    (child5227 : Flapjack.WordAlloc.removeDeadStructural input5227 value2616 value1 value2 = (output5227, value2618, value1))
    (child5234 : Flapjack.WordAlloc.removeDeadStructural input5234 value2618 value1 value2 = (output5234, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5235 value2616 value1 value2 = (output5235, value5, value1) := by
  rw [input5235_def, output5235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5227]
  dsimp only
  rw [child5234]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5227_skip, output5234_skip]
  kernel_rfl

theorem node5236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5236 value5 value1 value2 = (output5236, value2622, value1) := by
  rw [input5236_def, output5236_def]
  kernel_rfl

theorem node5237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5237 value2622 value1 value2 = (output5237, value2623, value1) := by
  rw [input5237_def, output5237_def]
  kernel_rfl

theorem node5238_cond_eq
    (child5236 : Flapjack.WordAlloc.removeDeadStructural input5236 value5 value1 value2 = (output5236, value2622, value1))
    (child5237 : Flapjack.WordAlloc.removeDeadStructural input5237 value2622 value1 value2 = (output5237, value2623, value1)) : Flapjack.WordAlloc.removeDeadStructural input5238 value5 value1 value2 = (output5238, value2623, value1) := by
  rw [input5238_def, output5238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5236]
  dsimp only
  rw [child5237]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5236_skip, output5237_skip]
  kernel_rfl

theorem node5239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5239 value2623 value1 value2 = (output5239, value2624, value1) := by
  rw [input5239_def, output5239_def]
  kernel_rfl

theorem node5240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5240 value2624 value1 value2 = (output5240, value2624, value1) := by
  rw [input5240_def, output5240_def]
  kernel_rfl

theorem node5241_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5241 value2624 value1 value2 = (output5241, value2625, value1) := by
  rw [input5241_def, output5241_def]
  kernel_rfl

theorem node5242_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5242 value2625 value1 value2 = (output5242, value2626, value1) := by
  rw [input5242_def, output5242_def]
  kernel_rfl

theorem node5243_cond_eq
    (child5241 : Flapjack.WordAlloc.removeDeadStructural input5241 value2624 value1 value2 = (output5241, value2625, value1))
    (child5242 : Flapjack.WordAlloc.removeDeadStructural input5242 value2625 value1 value2 = (output5242, value2626, value1)) : Flapjack.WordAlloc.removeDeadStructural input5243 value2624 value1 value2 = (output5243, value2626, value1) := by
  rw [input5243_def, output5243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5241]
  dsimp only
  rw [child5242]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5241_skip, output5242_skip]
  kernel_rfl

theorem node5244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5244 value2626 value1 value2 = (output5244, value2627, value1) := by
  rw [input5244_def, output5244_def]
  kernel_rfl

theorem node5245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5245 value2627 value1 value2 = (output5245, value2628, value1) := by
  rw [input5245_def, output5245_def]
  kernel_rfl

theorem node5246_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5246 value2628 value1 value2 = (output5246, value2629, value1) := by
  rw [input5246_def, output5246_def]
  kernel_rfl

theorem node5247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5247 value2629 value1 value2 = (output5247, value5, value1) := by
  rw [input5247_def, output5247_def]
  kernel_rfl

theorem node5248_cond_eq
    (child5246 : Flapjack.WordAlloc.removeDeadStructural input5246 value2628 value1 value2 = (output5246, value2629, value1))
    (child5247 : Flapjack.WordAlloc.removeDeadStructural input5247 value2629 value1 value2 = (output5247, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5248 value2628 value1 value2 = (output5248, value5, value1) := by
  rw [input5248_def, output5248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5246]
  dsimp only
  rw [child5247]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5246_skip, output5247_skip]
  kernel_rfl

theorem node5249_cond_eq
    (child5245 : Flapjack.WordAlloc.removeDeadStructural input5245 value2627 value1 value2 = (output5245, value2628, value1))
    (child5248 : Flapjack.WordAlloc.removeDeadStructural input5248 value2628 value1 value2 = (output5248, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5249 value2627 value1 value2 = (output5249, value5, value1) := by
  rw [input5249_def, output5249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5245]
  dsimp only
  rw [child5248]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5245_skip, output5248_skip]
  kernel_rfl

theorem node5250_cond_eq
    (child5244 : Flapjack.WordAlloc.removeDeadStructural input5244 value2626 value1 value2 = (output5244, value2627, value1))
    (child5249 : Flapjack.WordAlloc.removeDeadStructural input5249 value2627 value1 value2 = (output5249, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5250 value2626 value1 value2 = (output5250, value5, value1) := by
  rw [input5250_def, output5250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5244]
  dsimp only
  rw [child5249]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5244_skip, output5249_skip]
  kernel_rfl

theorem node5251_cond_eq
    (child5243 : Flapjack.WordAlloc.removeDeadStructural input5243 value2624 value1 value2 = (output5243, value2626, value1))
    (child5250 : Flapjack.WordAlloc.removeDeadStructural input5250 value2626 value1 value2 = (output5250, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5251 value2624 value1 value2 = (output5251, value5, value1) := by
  rw [input5251_def, output5251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5243]
  dsimp only
  rw [child5250]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5243_skip, output5250_skip]
  kernel_rfl

theorem node5252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5252 value5 value1 value2 = (output5252, value2630, value1) := by
  rw [input5252_def, output5252_def]
  kernel_rfl

theorem node5253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5253 value2630 value1 value2 = (output5253, value2631, value1) := by
  rw [input5253_def, output5253_def]
  kernel_rfl

theorem node5254_cond_eq
    (child5252 : Flapjack.WordAlloc.removeDeadStructural input5252 value5 value1 value2 = (output5252, value2630, value1))
    (child5253 : Flapjack.WordAlloc.removeDeadStructural input5253 value2630 value1 value2 = (output5253, value2631, value1)) : Flapjack.WordAlloc.removeDeadStructural input5254 value5 value1 value2 = (output5254, value2631, value1) := by
  rw [input5254_def, output5254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5252]
  dsimp only
  rw [child5253]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5252_skip, output5253_skip]
  kernel_rfl

theorem node5255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5255 value2631 value1 value2 = (output5255, value2632, value1) := by
  rw [input5255_def, output5255_def]
  kernel_rfl

theorem node5256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5256 value2632 value1 value2 = (output5256, value2632, value1) := by
  rw [input5256_def, output5256_def]
  kernel_rfl

theorem node5257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5257 value2632 value1 value2 = (output5257, value2633, value1) := by
  rw [input5257_def, output5257_def]
  kernel_rfl

theorem node5258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5258 value2633 value1 value2 = (output5258, value2634, value1) := by
  rw [input5258_def, output5258_def]
  kernel_rfl

theorem node5259_cond_eq
    (child5257 : Flapjack.WordAlloc.removeDeadStructural input5257 value2632 value1 value2 = (output5257, value2633, value1))
    (child5258 : Flapjack.WordAlloc.removeDeadStructural input5258 value2633 value1 value2 = (output5258, value2634, value1)) : Flapjack.WordAlloc.removeDeadStructural input5259 value2632 value1 value2 = (output5259, value2634, value1) := by
  rw [input5259_def, output5259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5257]
  dsimp only
  rw [child5258]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5257_skip, output5258_skip]
  kernel_rfl

theorem node5260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5260 value2634 value1 value2 = (output5260, value2635, value1) := by
  rw [input5260_def, output5260_def]
  kernel_rfl

theorem node5261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5261 value2635 value1 value2 = (output5261, value2636, value1) := by
  rw [input5261_def, output5261_def]
  kernel_rfl

theorem node5262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5262 value2636 value1 value2 = (output5262, value2637, value1) := by
  rw [input5262_def, output5262_def]
  kernel_rfl

theorem node5263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5263 value2637 value1 value2 = (output5263, value5, value1) := by
  rw [input5263_def, output5263_def]
  kernel_rfl

theorem node5264_cond_eq
    (child5262 : Flapjack.WordAlloc.removeDeadStructural input5262 value2636 value1 value2 = (output5262, value2637, value1))
    (child5263 : Flapjack.WordAlloc.removeDeadStructural input5263 value2637 value1 value2 = (output5263, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5264 value2636 value1 value2 = (output5264, value5, value1) := by
  rw [input5264_def, output5264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5262]
  dsimp only
  rw [child5263]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5262_skip, output5263_skip]
  kernel_rfl

theorem node5265_cond_eq
    (child5261 : Flapjack.WordAlloc.removeDeadStructural input5261 value2635 value1 value2 = (output5261, value2636, value1))
    (child5264 : Flapjack.WordAlloc.removeDeadStructural input5264 value2636 value1 value2 = (output5264, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5265 value2635 value1 value2 = (output5265, value5, value1) := by
  rw [input5265_def, output5265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5261]
  dsimp only
  rw [child5264]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5261_skip, output5264_skip]
  kernel_rfl

theorem node5266_cond_eq
    (child5260 : Flapjack.WordAlloc.removeDeadStructural input5260 value2634 value1 value2 = (output5260, value2635, value1))
    (child5265 : Flapjack.WordAlloc.removeDeadStructural input5265 value2635 value1 value2 = (output5265, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5266 value2634 value1 value2 = (output5266, value5, value1) := by
  rw [input5266_def, output5266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5260]
  dsimp only
  rw [child5265]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5260_skip, output5265_skip]
  kernel_rfl

theorem node5267_cond_eq
    (child5259 : Flapjack.WordAlloc.removeDeadStructural input5259 value2632 value1 value2 = (output5259, value2634, value1))
    (child5266 : Flapjack.WordAlloc.removeDeadStructural input5266 value2634 value1 value2 = (output5266, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5267 value2632 value1 value2 = (output5267, value5, value1) := by
  rw [input5267_def, output5267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5259]
  dsimp only
  rw [child5266]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5259_skip, output5266_skip]
  kernel_rfl

theorem node5268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5268 value5 value1 value2 = (output5268, value2638, value1) := by
  rw [input5268_def, output5268_def]
  kernel_rfl

theorem node5269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5269 value2638 value1 value2 = (output5269, value2639, value1) := by
  rw [input5269_def, output5269_def]
  kernel_rfl

theorem node5270_cond_eq
    (child5268 : Flapjack.WordAlloc.removeDeadStructural input5268 value5 value1 value2 = (output5268, value2638, value1))
    (child5269 : Flapjack.WordAlloc.removeDeadStructural input5269 value2638 value1 value2 = (output5269, value2639, value1)) : Flapjack.WordAlloc.removeDeadStructural input5270 value5 value1 value2 = (output5270, value2639, value1) := by
  rw [input5270_def, output5270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5268]
  dsimp only
  rw [child5269]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5268_skip, output5269_skip]
  kernel_rfl

theorem node5271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5271 value2639 value1 value2 = (output5271, value2640, value1) := by
  rw [input5271_def, output5271_def]
  kernel_rfl

theorem node5272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5272 value2640 value1 value2 = (output5272, value2640, value1) := by
  rw [input5272_def, output5272_def]
  kernel_rfl

theorem node5273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5273 value2640 value1 value2 = (output5273, value2641, value1) := by
  rw [input5273_def, output5273_def]
  kernel_rfl

theorem node5274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5274 value2641 value1 value2 = (output5274, value2642, value1) := by
  rw [input5274_def, output5274_def]
  kernel_rfl

theorem node5275_cond_eq
    (child5273 : Flapjack.WordAlloc.removeDeadStructural input5273 value2640 value1 value2 = (output5273, value2641, value1))
    (child5274 : Flapjack.WordAlloc.removeDeadStructural input5274 value2641 value1 value2 = (output5274, value2642, value1)) : Flapjack.WordAlloc.removeDeadStructural input5275 value2640 value1 value2 = (output5275, value2642, value1) := by
  rw [input5275_def, output5275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5273]
  dsimp only
  rw [child5274]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5273_skip, output5274_skip]
  kernel_rfl

theorem node5276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5276 value2642 value1 value2 = (output5276, value2643, value1) := by
  rw [input5276_def, output5276_def]
  kernel_rfl

theorem node5277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5277 value2643 value1 value2 = (output5277, value2644, value1) := by
  rw [input5277_def, output5277_def]
  kernel_rfl

theorem node5278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5278 value2644 value1 value2 = (output5278, value2645, value1) := by
  rw [input5278_def, output5278_def]
  kernel_rfl

theorem node5279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5279 value2645 value1 value2 = (output5279, value5, value1) := by
  rw [input5279_def, output5279_def]
  kernel_rfl

theorem node5280_cond_eq
    (child5278 : Flapjack.WordAlloc.removeDeadStructural input5278 value2644 value1 value2 = (output5278, value2645, value1))
    (child5279 : Flapjack.WordAlloc.removeDeadStructural input5279 value2645 value1 value2 = (output5279, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5280 value2644 value1 value2 = (output5280, value5, value1) := by
  rw [input5280_def, output5280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5278]
  dsimp only
  rw [child5279]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5278_skip, output5279_skip]
  kernel_rfl

theorem node5281_cond_eq
    (child5277 : Flapjack.WordAlloc.removeDeadStructural input5277 value2643 value1 value2 = (output5277, value2644, value1))
    (child5280 : Flapjack.WordAlloc.removeDeadStructural input5280 value2644 value1 value2 = (output5280, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5281 value2643 value1 value2 = (output5281, value5, value1) := by
  rw [input5281_def, output5281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5277]
  dsimp only
  rw [child5280]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5277_skip, output5280_skip]
  kernel_rfl

theorem node5282_cond_eq
    (child5276 : Flapjack.WordAlloc.removeDeadStructural input5276 value2642 value1 value2 = (output5276, value2643, value1))
    (child5281 : Flapjack.WordAlloc.removeDeadStructural input5281 value2643 value1 value2 = (output5281, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5282 value2642 value1 value2 = (output5282, value5, value1) := by
  rw [input5282_def, output5282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5276]
  dsimp only
  rw [child5281]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5276_skip, output5281_skip]
  kernel_rfl

theorem node5283_cond_eq
    (child5275 : Flapjack.WordAlloc.removeDeadStructural input5275 value2640 value1 value2 = (output5275, value2642, value1))
    (child5282 : Flapjack.WordAlloc.removeDeadStructural input5282 value2642 value1 value2 = (output5282, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5283 value2640 value1 value2 = (output5283, value5, value1) := by
  rw [input5283_def, output5283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5275]
  dsimp only
  rw [child5282]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5275_skip, output5282_skip]
  kernel_rfl

theorem node5284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5284 value5 value1 value2 = (output5284, value2646, value1) := by
  rw [input5284_def, output5284_def]
  kernel_rfl

theorem node5285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5285 value2646 value1 value2 = (output5285, value2647, value1) := by
  rw [input5285_def, output5285_def]
  kernel_rfl

theorem node5286_cond_eq
    (child5284 : Flapjack.WordAlloc.removeDeadStructural input5284 value5 value1 value2 = (output5284, value2646, value1))
    (child5285 : Flapjack.WordAlloc.removeDeadStructural input5285 value2646 value1 value2 = (output5285, value2647, value1)) : Flapjack.WordAlloc.removeDeadStructural input5286 value5 value1 value2 = (output5286, value2647, value1) := by
  rw [input5286_def, output5286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5284]
  dsimp only
  rw [child5285]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5284_skip, output5285_skip]
  kernel_rfl

theorem node5287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5287 value2647 value1 value2 = (output5287, value2648, value1) := by
  rw [input5287_def, output5287_def]
  kernel_rfl

theorem node5288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5288 value2648 value1 value2 = (output5288, value2648, value1) := by
  rw [input5288_def, output5288_def]
  kernel_rfl

theorem node5289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5289 value2648 value1 value2 = (output5289, value2649, value1) := by
  rw [input5289_def, output5289_def]
  kernel_rfl

theorem node5290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5290 value2649 value1 value2 = (output5290, value2650, value1) := by
  rw [input5290_def, output5290_def]
  kernel_rfl

theorem node5291_cond_eq
    (child5289 : Flapjack.WordAlloc.removeDeadStructural input5289 value2648 value1 value2 = (output5289, value2649, value1))
    (child5290 : Flapjack.WordAlloc.removeDeadStructural input5290 value2649 value1 value2 = (output5290, value2650, value1)) : Flapjack.WordAlloc.removeDeadStructural input5291 value2648 value1 value2 = (output5291, value2650, value1) := by
  rw [input5291_def, output5291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5289]
  dsimp only
  rw [child5290]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5289_skip, output5290_skip]
  kernel_rfl

theorem node5292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5292 value2650 value1 value2 = (output5292, value2651, value1) := by
  rw [input5292_def, output5292_def]
  kernel_rfl

theorem node5293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5293 value2651 value1 value2 = (output5293, value2652, value1) := by
  rw [input5293_def, output5293_def]
  kernel_rfl

theorem node5294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5294 value2652 value1 value2 = (output5294, value2653, value1) := by
  rw [input5294_def, output5294_def]
  kernel_rfl

theorem node5295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5295 value2653 value1 value2 = (output5295, value5, value1) := by
  rw [input5295_def, output5295_def]
  kernel_rfl

theorem node5296_cond_eq
    (child5294 : Flapjack.WordAlloc.removeDeadStructural input5294 value2652 value1 value2 = (output5294, value2653, value1))
    (child5295 : Flapjack.WordAlloc.removeDeadStructural input5295 value2653 value1 value2 = (output5295, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5296 value2652 value1 value2 = (output5296, value5, value1) := by
  rw [input5296_def, output5296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5294]
  dsimp only
  rw [child5295]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5294_skip, output5295_skip]
  kernel_rfl

theorem node5297_cond_eq
    (child5293 : Flapjack.WordAlloc.removeDeadStructural input5293 value2651 value1 value2 = (output5293, value2652, value1))
    (child5296 : Flapjack.WordAlloc.removeDeadStructural input5296 value2652 value1 value2 = (output5296, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5297 value2651 value1 value2 = (output5297, value5, value1) := by
  rw [input5297_def, output5297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5293]
  dsimp only
  rw [child5296]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5293_skip, output5296_skip]
  kernel_rfl

theorem node5298_cond_eq
    (child5292 : Flapjack.WordAlloc.removeDeadStructural input5292 value2650 value1 value2 = (output5292, value2651, value1))
    (child5297 : Flapjack.WordAlloc.removeDeadStructural input5297 value2651 value1 value2 = (output5297, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5298 value2650 value1 value2 = (output5298, value5, value1) := by
  rw [input5298_def, output5298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5292]
  dsimp only
  rw [child5297]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5292_skip, output5297_skip]
  kernel_rfl

theorem node5299_cond_eq
    (child5291 : Flapjack.WordAlloc.removeDeadStructural input5291 value2648 value1 value2 = (output5291, value2650, value1))
    (child5298 : Flapjack.WordAlloc.removeDeadStructural input5298 value2650 value1 value2 = (output5298, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5299 value2648 value1 value2 = (output5299, value5, value1) := by
  rw [input5299_def, output5299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5291]
  dsimp only
  rw [child5298]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5291_skip, output5298_skip]
  kernel_rfl

theorem node5300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5300 value5 value1 value2 = (output5300, value2654, value1) := by
  rw [input5300_def, output5300_def]
  kernel_rfl

theorem node5301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5301 value2654 value1 value2 = (output5301, value2655, value1) := by
  rw [input5301_def, output5301_def]
  kernel_rfl

theorem node5302_cond_eq
    (child5300 : Flapjack.WordAlloc.removeDeadStructural input5300 value5 value1 value2 = (output5300, value2654, value1))
    (child5301 : Flapjack.WordAlloc.removeDeadStructural input5301 value2654 value1 value2 = (output5301, value2655, value1)) : Flapjack.WordAlloc.removeDeadStructural input5302 value5 value1 value2 = (output5302, value2655, value1) := by
  rw [input5302_def, output5302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5300]
  dsimp only
  rw [child5301]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5300_skip, output5301_skip]
  kernel_rfl

theorem node5303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5303 value2655 value1 value2 = (output5303, value2656, value1) := by
  rw [input5303_def, output5303_def]
  kernel_rfl

theorem node5304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5304 value2656 value1 value2 = (output5304, value2656, value1) := by
  rw [input5304_def, output5304_def]
  kernel_rfl

theorem node5305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5305 value2656 value1 value2 = (output5305, value2657, value1) := by
  rw [input5305_def, output5305_def]
  kernel_rfl

theorem node5306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5306 value2657 value1 value2 = (output5306, value2658, value1) := by
  rw [input5306_def, output5306_def]
  kernel_rfl

theorem node5307_cond_eq
    (child5305 : Flapjack.WordAlloc.removeDeadStructural input5305 value2656 value1 value2 = (output5305, value2657, value1))
    (child5306 : Flapjack.WordAlloc.removeDeadStructural input5306 value2657 value1 value2 = (output5306, value2658, value1)) : Flapjack.WordAlloc.removeDeadStructural input5307 value2656 value1 value2 = (output5307, value2658, value1) := by
  rw [input5307_def, output5307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5305]
  dsimp only
  rw [child5306]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5305_skip, output5306_skip]
  kernel_rfl

theorem node5308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5308 value2658 value1 value2 = (output5308, value2659, value1) := by
  rw [input5308_def, output5308_def]
  kernel_rfl

theorem node5309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5309 value2659 value1 value2 = (output5309, value2660, value1) := by
  rw [input5309_def, output5309_def]
  kernel_rfl

theorem node5310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5310 value2660 value1 value2 = (output5310, value2661, value1) := by
  rw [input5310_def, output5310_def]
  kernel_rfl

theorem node5311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5311 value2661 value1 value2 = (output5311, value5, value1) := by
  rw [input5311_def, output5311_def]
  kernel_rfl

theorem node5312_cond_eq
    (child5310 : Flapjack.WordAlloc.removeDeadStructural input5310 value2660 value1 value2 = (output5310, value2661, value1))
    (child5311 : Flapjack.WordAlloc.removeDeadStructural input5311 value2661 value1 value2 = (output5311, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5312 value2660 value1 value2 = (output5312, value5, value1) := by
  rw [input5312_def, output5312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5310]
  dsimp only
  rw [child5311]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5310_skip, output5311_skip]
  kernel_rfl

theorem node5313_cond_eq
    (child5309 : Flapjack.WordAlloc.removeDeadStructural input5309 value2659 value1 value2 = (output5309, value2660, value1))
    (child5312 : Flapjack.WordAlloc.removeDeadStructural input5312 value2660 value1 value2 = (output5312, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5313 value2659 value1 value2 = (output5313, value5, value1) := by
  rw [input5313_def, output5313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5309]
  dsimp only
  rw [child5312]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5309_skip, output5312_skip]
  kernel_rfl

theorem node5314_cond_eq
    (child5308 : Flapjack.WordAlloc.removeDeadStructural input5308 value2658 value1 value2 = (output5308, value2659, value1))
    (child5313 : Flapjack.WordAlloc.removeDeadStructural input5313 value2659 value1 value2 = (output5313, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5314 value2658 value1 value2 = (output5314, value5, value1) := by
  rw [input5314_def, output5314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5308]
  dsimp only
  rw [child5313]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5308_skip, output5313_skip]
  kernel_rfl

theorem node5315_cond_eq
    (child5307 : Flapjack.WordAlloc.removeDeadStructural input5307 value2656 value1 value2 = (output5307, value2658, value1))
    (child5314 : Flapjack.WordAlloc.removeDeadStructural input5314 value2658 value1 value2 = (output5314, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5315 value2656 value1 value2 = (output5315, value5, value1) := by
  rw [input5315_def, output5315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5307]
  dsimp only
  rw [child5314]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5307_skip, output5314_skip]
  kernel_rfl

theorem node5316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5316 value5 value1 value2 = (output5316, value2662, value1) := by
  rw [input5316_def, output5316_def]
  kernel_rfl

theorem node5317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5317 value2662 value1 value2 = (output5317, value2663, value1) := by
  rw [input5317_def, output5317_def]
  kernel_rfl

theorem node5318_cond_eq
    (child5316 : Flapjack.WordAlloc.removeDeadStructural input5316 value5 value1 value2 = (output5316, value2662, value1))
    (child5317 : Flapjack.WordAlloc.removeDeadStructural input5317 value2662 value1 value2 = (output5317, value2663, value1)) : Flapjack.WordAlloc.removeDeadStructural input5318 value5 value1 value2 = (output5318, value2663, value1) := by
  rw [input5318_def, output5318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5316]
  dsimp only
  rw [child5317]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5316_skip, output5317_skip]
  kernel_rfl

theorem node5319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5319 value2663 value1 value2 = (output5319, value2664, value1) := by
  rw [input5319_def, output5319_def]
  kernel_rfl

theorem node5320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5320 value2664 value1 value2 = (output5320, value2664, value1) := by
  rw [input5320_def, output5320_def]
  kernel_rfl

theorem node5321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5321 value2664 value1 value2 = (output5321, value2665, value1) := by
  rw [input5321_def, output5321_def]
  kernel_rfl

theorem node5322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5322 value2665 value1 value2 = (output5322, value2666, value1) := by
  rw [input5322_def, output5322_def]
  kernel_rfl

theorem node5323_cond_eq
    (child5321 : Flapjack.WordAlloc.removeDeadStructural input5321 value2664 value1 value2 = (output5321, value2665, value1))
    (child5322 : Flapjack.WordAlloc.removeDeadStructural input5322 value2665 value1 value2 = (output5322, value2666, value1)) : Flapjack.WordAlloc.removeDeadStructural input5323 value2664 value1 value2 = (output5323, value2666, value1) := by
  rw [input5323_def, output5323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5321]
  dsimp only
  rw [child5322]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5321_skip, output5322_skip]
  kernel_rfl

theorem node5324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5324 value2666 value1 value2 = (output5324, value2667, value1) := by
  rw [input5324_def, output5324_def]
  kernel_rfl

theorem node5325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5325 value2667 value1 value2 = (output5325, value2668, value1) := by
  rw [input5325_def, output5325_def]
  kernel_rfl

theorem node5326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5326 value2668 value1 value2 = (output5326, value2669, value1) := by
  rw [input5326_def, output5326_def]
  kernel_rfl

theorem node5327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5327 value2669 value1 value2 = (output5327, value5, value1) := by
  rw [input5327_def, output5327_def]
  kernel_rfl

theorem node5328_cond_eq
    (child5326 : Flapjack.WordAlloc.removeDeadStructural input5326 value2668 value1 value2 = (output5326, value2669, value1))
    (child5327 : Flapjack.WordAlloc.removeDeadStructural input5327 value2669 value1 value2 = (output5327, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5328 value2668 value1 value2 = (output5328, value5, value1) := by
  rw [input5328_def, output5328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5326]
  dsimp only
  rw [child5327]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5326_skip, output5327_skip]
  kernel_rfl

theorem node5329_cond_eq
    (child5325 : Flapjack.WordAlloc.removeDeadStructural input5325 value2667 value1 value2 = (output5325, value2668, value1))
    (child5328 : Flapjack.WordAlloc.removeDeadStructural input5328 value2668 value1 value2 = (output5328, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5329 value2667 value1 value2 = (output5329, value5, value1) := by
  rw [input5329_def, output5329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5325]
  dsimp only
  rw [child5328]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5325_skip, output5328_skip]
  kernel_rfl

theorem node5330_cond_eq
    (child5324 : Flapjack.WordAlloc.removeDeadStructural input5324 value2666 value1 value2 = (output5324, value2667, value1))
    (child5329 : Flapjack.WordAlloc.removeDeadStructural input5329 value2667 value1 value2 = (output5329, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5330 value2666 value1 value2 = (output5330, value5, value1) := by
  rw [input5330_def, output5330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5324]
  dsimp only
  rw [child5329]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5324_skip, output5329_skip]
  kernel_rfl

theorem node5331_cond_eq
    (child5323 : Flapjack.WordAlloc.removeDeadStructural input5323 value2664 value1 value2 = (output5323, value2666, value1))
    (child5330 : Flapjack.WordAlloc.removeDeadStructural input5330 value2666 value1 value2 = (output5330, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5331 value2664 value1 value2 = (output5331, value5, value1) := by
  rw [input5331_def, output5331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5323]
  dsimp only
  rw [child5330]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5323_skip, output5330_skip]
  kernel_rfl

theorem node5332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5332 value5 value1 value2 = (output5332, value2670, value1) := by
  rw [input5332_def, output5332_def]
  kernel_rfl

theorem node5333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5333 value2670 value1 value2 = (output5333, value2671, value1) := by
  rw [input5333_def, output5333_def]
  kernel_rfl

theorem node5334_cond_eq
    (child5332 : Flapjack.WordAlloc.removeDeadStructural input5332 value5 value1 value2 = (output5332, value2670, value1))
    (child5333 : Flapjack.WordAlloc.removeDeadStructural input5333 value2670 value1 value2 = (output5333, value2671, value1)) : Flapjack.WordAlloc.removeDeadStructural input5334 value5 value1 value2 = (output5334, value2671, value1) := by
  rw [input5334_def, output5334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5332]
  dsimp only
  rw [child5333]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5332_skip, output5333_skip]
  kernel_rfl

theorem node5335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5335 value2671 value1 value2 = (output5335, value2672, value1) := by
  rw [input5335_def, output5335_def]
  kernel_rfl

theorem node5336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5336 value2672 value1 value2 = (output5336, value2672, value1) := by
  rw [input5336_def, output5336_def]
  kernel_rfl

theorem node5337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5337 value2672 value1 value2 = (output5337, value2673, value1) := by
  rw [input5337_def, output5337_def]
  kernel_rfl

theorem node5338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5338 value2673 value1 value2 = (output5338, value2674, value1) := by
  rw [input5338_def, output5338_def]
  kernel_rfl

theorem node5339_cond_eq
    (child5337 : Flapjack.WordAlloc.removeDeadStructural input5337 value2672 value1 value2 = (output5337, value2673, value1))
    (child5338 : Flapjack.WordAlloc.removeDeadStructural input5338 value2673 value1 value2 = (output5338, value2674, value1)) : Flapjack.WordAlloc.removeDeadStructural input5339 value2672 value1 value2 = (output5339, value2674, value1) := by
  rw [input5339_def, output5339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5337]
  dsimp only
  rw [child5338]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5337_skip, output5338_skip]
  kernel_rfl

theorem node5340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5340 value2674 value1 value2 = (output5340, value2675, value1) := by
  rw [input5340_def, output5340_def]
  kernel_rfl

theorem node5341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5341 value2675 value1 value2 = (output5341, value2676, value1) := by
  rw [input5341_def, output5341_def]
  kernel_rfl

theorem node5342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5342 value2676 value1 value2 = (output5342, value2677, value1) := by
  rw [input5342_def, output5342_def]
  kernel_rfl

theorem node5343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5343 value2677 value1 value2 = (output5343, value5, value1) := by
  rw [input5343_def, output5343_def]
  kernel_rfl

theorem node5344_cond_eq
    (child5342 : Flapjack.WordAlloc.removeDeadStructural input5342 value2676 value1 value2 = (output5342, value2677, value1))
    (child5343 : Flapjack.WordAlloc.removeDeadStructural input5343 value2677 value1 value2 = (output5343, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5344 value2676 value1 value2 = (output5344, value5, value1) := by
  rw [input5344_def, output5344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5342]
  dsimp only
  rw [child5343]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5342_skip, output5343_skip]
  kernel_rfl

theorem node5345_cond_eq
    (child5341 : Flapjack.WordAlloc.removeDeadStructural input5341 value2675 value1 value2 = (output5341, value2676, value1))
    (child5344 : Flapjack.WordAlloc.removeDeadStructural input5344 value2676 value1 value2 = (output5344, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5345 value2675 value1 value2 = (output5345, value5, value1) := by
  rw [input5345_def, output5345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5341]
  dsimp only
  rw [child5344]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5341_skip, output5344_skip]
  kernel_rfl

theorem node5346_cond_eq
    (child5340 : Flapjack.WordAlloc.removeDeadStructural input5340 value2674 value1 value2 = (output5340, value2675, value1))
    (child5345 : Flapjack.WordAlloc.removeDeadStructural input5345 value2675 value1 value2 = (output5345, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5346 value2674 value1 value2 = (output5346, value5, value1) := by
  rw [input5346_def, output5346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5340]
  dsimp only
  rw [child5345]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5340_skip, output5345_skip]
  kernel_rfl

theorem node5347_cond_eq
    (child5339 : Flapjack.WordAlloc.removeDeadStructural input5339 value2672 value1 value2 = (output5339, value2674, value1))
    (child5346 : Flapjack.WordAlloc.removeDeadStructural input5346 value2674 value1 value2 = (output5346, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5347 value2672 value1 value2 = (output5347, value5, value1) := by
  rw [input5347_def, output5347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5339]
  dsimp only
  rw [child5346]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5339_skip, output5346_skip]
  kernel_rfl

theorem node5348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5348 value5 value1 value2 = (output5348, value2678, value1) := by
  rw [input5348_def, output5348_def]
  kernel_rfl

theorem node5349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5349 value2678 value1 value2 = (output5349, value2679, value1) := by
  rw [input5349_def, output5349_def]
  kernel_rfl

theorem node5350_cond_eq
    (child5348 : Flapjack.WordAlloc.removeDeadStructural input5348 value5 value1 value2 = (output5348, value2678, value1))
    (child5349 : Flapjack.WordAlloc.removeDeadStructural input5349 value2678 value1 value2 = (output5349, value2679, value1)) : Flapjack.WordAlloc.removeDeadStructural input5350 value5 value1 value2 = (output5350, value2679, value1) := by
  rw [input5350_def, output5350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5348]
  dsimp only
  rw [child5349]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5348_skip, output5349_skip]
  kernel_rfl

theorem node5351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5351 value2679 value1 value2 = (output5351, value2680, value1) := by
  rw [input5351_def, output5351_def]
  kernel_rfl

theorem node5352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5352 value2680 value1 value2 = (output5352, value2680, value1) := by
  rw [input5352_def, output5352_def]
  kernel_rfl

theorem node5353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5353 value2680 value1 value2 = (output5353, value2681, value1) := by
  rw [input5353_def, output5353_def]
  kernel_rfl

theorem node5354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5354 value2681 value1 value2 = (output5354, value2682, value1) := by
  rw [input5354_def, output5354_def]
  kernel_rfl

theorem node5355_cond_eq
    (child5353 : Flapjack.WordAlloc.removeDeadStructural input5353 value2680 value1 value2 = (output5353, value2681, value1))
    (child5354 : Flapjack.WordAlloc.removeDeadStructural input5354 value2681 value1 value2 = (output5354, value2682, value1)) : Flapjack.WordAlloc.removeDeadStructural input5355 value2680 value1 value2 = (output5355, value2682, value1) := by
  rw [input5355_def, output5355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5353]
  dsimp only
  rw [child5354]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5353_skip, output5354_skip]
  kernel_rfl

theorem node5356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5356 value2682 value1 value2 = (output5356, value2683, value1) := by
  rw [input5356_def, output5356_def]
  kernel_rfl

theorem node5357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5357 value2683 value1 value2 = (output5357, value2684, value1) := by
  rw [input5357_def, output5357_def]
  kernel_rfl

theorem node5358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5358 value2684 value1 value2 = (output5358, value2685, value1) := by
  rw [input5358_def, output5358_def]
  kernel_rfl

theorem node5359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5359 value2685 value1 value2 = (output5359, value5, value1) := by
  rw [input5359_def, output5359_def]
  kernel_rfl

theorem node5360_cond_eq
    (child5358 : Flapjack.WordAlloc.removeDeadStructural input5358 value2684 value1 value2 = (output5358, value2685, value1))
    (child5359 : Flapjack.WordAlloc.removeDeadStructural input5359 value2685 value1 value2 = (output5359, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5360 value2684 value1 value2 = (output5360, value5, value1) := by
  rw [input5360_def, output5360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5358]
  dsimp only
  rw [child5359]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5358_skip, output5359_skip]
  kernel_rfl

theorem node5361_cond_eq
    (child5357 : Flapjack.WordAlloc.removeDeadStructural input5357 value2683 value1 value2 = (output5357, value2684, value1))
    (child5360 : Flapjack.WordAlloc.removeDeadStructural input5360 value2684 value1 value2 = (output5360, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5361 value2683 value1 value2 = (output5361, value5, value1) := by
  rw [input5361_def, output5361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5357]
  dsimp only
  rw [child5360]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5357_skip, output5360_skip]
  kernel_rfl

theorem node5362_cond_eq
    (child5356 : Flapjack.WordAlloc.removeDeadStructural input5356 value2682 value1 value2 = (output5356, value2683, value1))
    (child5361 : Flapjack.WordAlloc.removeDeadStructural input5361 value2683 value1 value2 = (output5361, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5362 value2682 value1 value2 = (output5362, value5, value1) := by
  rw [input5362_def, output5362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5356]
  dsimp only
  rw [child5361]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5356_skip, output5361_skip]
  kernel_rfl

theorem node5363_cond_eq
    (child5355 : Flapjack.WordAlloc.removeDeadStructural input5355 value2680 value1 value2 = (output5355, value2682, value1))
    (child5362 : Flapjack.WordAlloc.removeDeadStructural input5362 value2682 value1 value2 = (output5362, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5363 value2680 value1 value2 = (output5363, value5, value1) := by
  rw [input5363_def, output5363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5355]
  dsimp only
  rw [child5362]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5355_skip, output5362_skip]
  kernel_rfl

theorem node5364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5364 value5 value1 value2 = (output5364, value2686, value1) := by
  rw [input5364_def, output5364_def]
  kernel_rfl

theorem node5365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5365 value2686 value1 value2 = (output5365, value2687, value1) := by
  rw [input5365_def, output5365_def]
  kernel_rfl

theorem node5366_cond_eq
    (child5364 : Flapjack.WordAlloc.removeDeadStructural input5364 value5 value1 value2 = (output5364, value2686, value1))
    (child5365 : Flapjack.WordAlloc.removeDeadStructural input5365 value2686 value1 value2 = (output5365, value2687, value1)) : Flapjack.WordAlloc.removeDeadStructural input5366 value5 value1 value2 = (output5366, value2687, value1) := by
  rw [input5366_def, output5366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5364]
  dsimp only
  rw [child5365]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5364_skip, output5365_skip]
  kernel_rfl

theorem node5367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5367 value2687 value1 value2 = (output5367, value2688, value1) := by
  rw [input5367_def, output5367_def]
  kernel_rfl

theorem node5368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5368 value2688 value1 value2 = (output5368, value2688, value1) := by
  rw [input5368_def, output5368_def]
  kernel_rfl

theorem node5369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5369 value2688 value1 value2 = (output5369, value2689, value1) := by
  rw [input5369_def, output5369_def]
  kernel_rfl

theorem node5370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5370 value2689 value1 value2 = (output5370, value2690, value1) := by
  rw [input5370_def, output5370_def]
  kernel_rfl

theorem node5371_cond_eq
    (child5369 : Flapjack.WordAlloc.removeDeadStructural input5369 value2688 value1 value2 = (output5369, value2689, value1))
    (child5370 : Flapjack.WordAlloc.removeDeadStructural input5370 value2689 value1 value2 = (output5370, value2690, value1)) : Flapjack.WordAlloc.removeDeadStructural input5371 value2688 value1 value2 = (output5371, value2690, value1) := by
  rw [input5371_def, output5371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5369]
  dsimp only
  rw [child5370]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5369_skip, output5370_skip]
  kernel_rfl

theorem node5372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5372 value2690 value1 value2 = (output5372, value2691, value1) := by
  rw [input5372_def, output5372_def]
  kernel_rfl

theorem node5373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5373 value2691 value1 value2 = (output5373, value2692, value1) := by
  rw [input5373_def, output5373_def]
  kernel_rfl

theorem node5374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5374 value2692 value1 value2 = (output5374, value2693, value1) := by
  rw [input5374_def, output5374_def]
  kernel_rfl

theorem node5375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5375 value2693 value1 value2 = (output5375, value5, value1) := by
  rw [input5375_def, output5375_def]
  kernel_rfl

#print axioms node5375_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
