import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk020
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node5120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5120 value928 value1 value2 = (output5120, value926, value1) := by
  rw [input5120_def, output5120_def]
  kernel_rfl

theorem node5121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5121 value926 value1 value2 = (output5121, value929, value1) := by
  rw [input5121_def, output5121_def]
  kernel_rfl

theorem node5122_cond_eq
    (child5120 : Flapjack.WordAlloc.removeDeadStructural input5120 value928 value1 value2 = (output5120, value926, value1))
    (child5121 : Flapjack.WordAlloc.removeDeadStructural input5121 value926 value1 value2 = (output5121, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5122 value928 value1 value2 = (output5122, value929, value1) := by
  rw [input5122_def, output5122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5120]
  try dsimp only
  rw [child5121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5120_skip, output5121_skip]
  kernel_rfl

theorem node5123_cond_eq
    (child5119 : Flapjack.WordAlloc.removeDeadStructural input5119 value646 value1 value2 = (output5119, value928, value1))
    (child5122 : Flapjack.WordAlloc.removeDeadStructural input5122 value928 value1 value2 = (output5122, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5123 value646 value1 value2 = (output5123, value929, value1) := by
  rw [input5123_def, output5123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5119]
  try dsimp only
  rw [child5122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5119_skip, output5122_skip]
  kernel_rfl

theorem node5124_cond_eq
    (child3582 : Flapjack.WordAlloc.removeDeadStructural input3582 value646 value1 value2 = (output3582, value646, value1))
    (child5123 : Flapjack.WordAlloc.removeDeadStructural input5123 value646 value1 value2 = (output5123, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5124 value646 value1 value2 = (output5124, value929, value1) := by
  rw [input5124_def, output5124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3582]
  try dsimp only
  rw [child5123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3582_skip, output5123_skip]
  kernel_rfl

theorem node5125_cond_eq
    (child3581 : Flapjack.WordAlloc.removeDeadStructural input3581 value643 value1 value2 = (output3581, value646, value1))
    (child5124 : Flapjack.WordAlloc.removeDeadStructural input5124 value646 value1 value2 = (output5124, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5125 value643 value1 value2 = (output5125, value929, value1) := by
  rw [input5125_def, output5125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3581]
  try dsimp only
  rw [child5124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3581_skip, output5124_skip]
  kernel_rfl

theorem node5126_cond_eq
    (child3580 : Flapjack.WordAlloc.removeDeadStructural input3580 value645 value1 value2 = (output3580, value643, value1))
    (child5125 : Flapjack.WordAlloc.removeDeadStructural input5125 value643 value1 value2 = (output5125, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5126 value645 value1 value2 = (output5126, value929, value1) := by
  rw [input5126_def, output5126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3580]
  try dsimp only
  rw [child5125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3580_skip, output5125_skip]
  kernel_rfl

theorem node5127_cond_eq
    (child3579 : Flapjack.WordAlloc.removeDeadStructural input3579 value181 value1 value2 = (output3579, value645, value1))
    (child5126 : Flapjack.WordAlloc.removeDeadStructural input5126 value645 value1 value2 = (output5126, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5127 value181 value1 value2 = (output5127, value929, value1) := by
  rw [input5127_def, output5127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3579]
  try dsimp only
  rw [child5126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3579_skip, output5126_skip]
  kernel_rfl

theorem node5128_cond_eq
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value181 value1 value2 = (output900, value181, value1))
    (child5127 : Flapjack.WordAlloc.removeDeadStructural input5127 value181 value1 value2 = (output5127, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5128 value181 value1 value2 = (output5128, value929, value1) := by
  rw [input5128_def, output5128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child900]
  try dsimp only
  rw [child5127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output900_skip, output5127_skip]
  kernel_rfl

theorem node5129_cond_eq
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value177 value1 value2 = (output899, value181, value1))
    (child5128 : Flapjack.WordAlloc.removeDeadStructural input5128 value181 value1 value2 = (output5128, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5129 value177 value1 value2 = (output5129, value929, value1) := by
  rw [input5129_def, output5129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child899]
  try dsimp only
  rw [child5128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output899_skip, output5128_skip]
  kernel_rfl

theorem node5130_cond_eq
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value180 value1 value2 = (output898, value177, value1))
    (child5129 : Flapjack.WordAlloc.removeDeadStructural input5129 value177 value1 value2 = (output5129, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5130 value180 value1 value2 = (output5130, value929, value1) := by
  rw [input5130_def, output5130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child898]
  try dsimp only
  rw [child5129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output898_skip, output5129_skip]
  kernel_rfl

theorem node5131_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value142 value1 value2 = (output897, value180, value1))
    (child5130 : Flapjack.WordAlloc.removeDeadStructural input5130 value180 value1 value2 = (output5130, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5131 value142 value1 value2 = (output5131, value929, value1) := by
  rw [input5131_def, output5131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child5130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output5130_skip]
  kernel_rfl

theorem node5132_cond_eq
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value142 value1 value2 = (output718, value142, value1))
    (child5131 : Flapjack.WordAlloc.removeDeadStructural input5131 value142 value1 value2 = (output5131, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5132 value142 value1 value2 = (output5132, value929, value1) := by
  rw [input5132_def, output5132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child718]
  try dsimp only
  rw [child5131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output718_skip, output5131_skip]
  kernel_rfl

theorem node5133_cond_eq
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value137 value1 value2 = (output717, value142, value1))
    (child5132 : Flapjack.WordAlloc.removeDeadStructural input5132 value142 value1 value2 = (output5132, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5133 value137 value1 value2 = (output5133, value929, value1) := by
  rw [input5133_def, output5133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child717]
  try dsimp only
  rw [child5132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output717_skip, output5132_skip]
  kernel_rfl

theorem node5134_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value141 value1 value2 = (output716, value137, value1))
    (child5133 : Flapjack.WordAlloc.removeDeadStructural input5133 value137 value1 value2 = (output5133, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5134 value141 value1 value2 = (output5134, value929, value1) := by
  rw [input5134_def, output5134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  try dsimp only
  rw [child5133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output716_skip, output5133_skip]
  kernel_rfl

theorem node5135_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value129 value1 value2 = (output715, value141, value1))
    (child5134 : Flapjack.WordAlloc.removeDeadStructural input5134 value141 value1 value2 = (output5134, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5135 value129 value1 value2 = (output5135, value929, value1) := by
  rw [input5135_def, output5135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  try dsimp only
  rw [child5134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output715_skip, output5134_skip]
  kernel_rfl

theorem node5136_cond_eq
    (child660 : Flapjack.WordAlloc.removeDeadStructural input660 value129 value1 value2 = (output660, value129, value1))
    (child5135 : Flapjack.WordAlloc.removeDeadStructural input5135 value129 value1 value2 = (output5135, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5136 value129 value1 value2 = (output5136, value929, value1) := by
  rw [input5136_def, output5136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child660]
  try dsimp only
  rw [child5135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output660_skip, output5135_skip]
  kernel_rfl

theorem node5137_cond_eq
    (child659 : Flapjack.WordAlloc.removeDeadStructural input659 value126 value1 value2 = (output659, value129, value1))
    (child5136 : Flapjack.WordAlloc.removeDeadStructural input5136 value129 value1 value2 = (output5136, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5137 value126 value1 value2 = (output5137, value929, value1) := by
  rw [input5137_def, output5137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child659]
  try dsimp only
  rw [child5136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output659_skip, output5136_skip]
  kernel_rfl

theorem node5138_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value128 value1 value2 = (output658, value126, value1))
    (child5137 : Flapjack.WordAlloc.removeDeadStructural input5137 value126 value1 value2 = (output5137, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5138 value128 value1 value2 = (output5138, value929, value1) := by
  rw [input5138_def, output5138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child5137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output5137_skip]
  kernel_rfl

theorem node5139_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value119 value1 value2 = (output657, value128, value1))
    (child5138 : Flapjack.WordAlloc.removeDeadStructural input5138 value128 value1 value2 = (output5138, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5139 value119 value1 value2 = (output5139, value929, value1) := by
  rw [input5139_def, output5139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child5138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output5138_skip]
  kernel_rfl

theorem node5140_cond_eq
    (child606 : Flapjack.WordAlloc.removeDeadStructural input606 value119 value1 value2 = (output606, value119, value1))
    (child5139 : Flapjack.WordAlloc.removeDeadStructural input5139 value119 value1 value2 = (output5139, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5140 value119 value1 value2 = (output5140, value929, value1) := by
  rw [input5140_def, output5140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child606]
  try dsimp only
  rw [child5139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output606_skip, output5139_skip]
  kernel_rfl

theorem node5141_cond_eq
    (child605 : Flapjack.WordAlloc.removeDeadStructural input605 value116 value1 value2 = (output605, value119, value1))
    (child5140 : Flapjack.WordAlloc.removeDeadStructural input5140 value119 value1 value2 = (output5140, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5141 value116 value1 value2 = (output5141, value929, value1) := by
  rw [input5141_def, output5141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child605]
  try dsimp only
  rw [child5140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output605_skip, output5140_skip]
  kernel_rfl

theorem node5142_cond_eq
    (child604 : Flapjack.WordAlloc.removeDeadStructural input604 value118 value1 value2 = (output604, value116, value1))
    (child5141 : Flapjack.WordAlloc.removeDeadStructural input5141 value116 value1 value2 = (output5141, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5142 value118 value1 value2 = (output5142, value929, value1) := by
  rw [input5142_def, output5142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child604]
  try dsimp only
  rw [child5141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output604_skip, output5141_skip]
  kernel_rfl

theorem node5143_cond_eq
    (child603 : Flapjack.WordAlloc.removeDeadStructural input603 value109 value1 value2 = (output603, value118, value1))
    (child5142 : Flapjack.WordAlloc.removeDeadStructural input5142 value118 value1 value2 = (output5142, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5143 value109 value1 value2 = (output5143, value929, value1) := by
  rw [input5143_def, output5143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child603]
  try dsimp only
  rw [child5142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output603_skip, output5142_skip]
  kernel_rfl

theorem node5144_cond_eq
    (child552 : Flapjack.WordAlloc.removeDeadStructural input552 value109 value1 value2 = (output552, value109, value1))
    (child5143 : Flapjack.WordAlloc.removeDeadStructural input5143 value109 value1 value2 = (output5143, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5144 value109 value1 value2 = (output5144, value929, value1) := by
  rw [input5144_def, output5144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child552]
  try dsimp only
  rw [child5143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output552_skip, output5143_skip]
  kernel_rfl

theorem node5145_cond_eq
    (child551 : Flapjack.WordAlloc.removeDeadStructural input551 value106 value1 value2 = (output551, value109, value1))
    (child5144 : Flapjack.WordAlloc.removeDeadStructural input5144 value109 value1 value2 = (output5144, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5145 value106 value1 value2 = (output5145, value929, value1) := by
  rw [input5145_def, output5145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child551]
  try dsimp only
  rw [child5144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output551_skip, output5144_skip]
  kernel_rfl

theorem node5146_cond_eq
    (child550 : Flapjack.WordAlloc.removeDeadStructural input550 value108 value1 value2 = (output550, value106, value1))
    (child5145 : Flapjack.WordAlloc.removeDeadStructural input5145 value106 value1 value2 = (output5145, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5146 value108 value1 value2 = (output5146, value929, value1) := by
  rw [input5146_def, output5146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child550]
  try dsimp only
  rw [child5145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output550_skip, output5145_skip]
  kernel_rfl

theorem node5147_cond_eq
    (child549 : Flapjack.WordAlloc.removeDeadStructural input549 value99 value1 value2 = (output549, value108, value1))
    (child5146 : Flapjack.WordAlloc.removeDeadStructural input5146 value108 value1 value2 = (output5146, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5147 value99 value1 value2 = (output5147, value929, value1) := by
  rw [input5147_def, output5147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child549]
  try dsimp only
  rw [child5146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output549_skip, output5146_skip]
  kernel_rfl

theorem node5148_cond_eq
    (child498 : Flapjack.WordAlloc.removeDeadStructural input498 value99 value1 value2 = (output498, value99, value1))
    (child5147 : Flapjack.WordAlloc.removeDeadStructural input5147 value99 value1 value2 = (output5147, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5148 value99 value1 value2 = (output5148, value929, value1) := by
  rw [input5148_def, output5148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child498]
  try dsimp only
  rw [child5147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output498_skip, output5147_skip]
  kernel_rfl

theorem node5149_cond_eq
    (child497 : Flapjack.WordAlloc.removeDeadStructural input497 value96 value1 value2 = (output497, value99, value1))
    (child5148 : Flapjack.WordAlloc.removeDeadStructural input5148 value99 value1 value2 = (output5148, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5149 value96 value1 value2 = (output5149, value929, value1) := by
  rw [input5149_def, output5149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child497]
  try dsimp only
  rw [child5148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output497_skip, output5148_skip]
  kernel_rfl

theorem node5150_cond_eq
    (child496 : Flapjack.WordAlloc.removeDeadStructural input496 value98 value1 value2 = (output496, value96, value1))
    (child5149 : Flapjack.WordAlloc.removeDeadStructural input5149 value96 value1 value2 = (output5149, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5150 value98 value1 value2 = (output5150, value929, value1) := by
  rw [input5150_def, output5150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child496]
  try dsimp only
  rw [child5149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output496_skip, output5149_skip]
  kernel_rfl

theorem node5151_cond_eq
    (child495 : Flapjack.WordAlloc.removeDeadStructural input495 value89 value1 value2 = (output495, value98, value1))
    (child5150 : Flapjack.WordAlloc.removeDeadStructural input5150 value98 value1 value2 = (output5150, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5151 value89 value1 value2 = (output5151, value929, value1) := by
  rw [input5151_def, output5151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child495]
  try dsimp only
  rw [child5150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output495_skip, output5150_skip]
  kernel_rfl

theorem node5152_cond_eq
    (child444 : Flapjack.WordAlloc.removeDeadStructural input444 value89 value1 value2 = (output444, value89, value1))
    (child5151 : Flapjack.WordAlloc.removeDeadStructural input5151 value89 value1 value2 = (output5151, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5152 value89 value1 value2 = (output5152, value929, value1) := by
  rw [input5152_def, output5152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child444]
  try dsimp only
  rw [child5151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output444_skip, output5151_skip]
  kernel_rfl

theorem node5153_cond_eq
    (child443 : Flapjack.WordAlloc.removeDeadStructural input443 value86 value1 value2 = (output443, value89, value1))
    (child5152 : Flapjack.WordAlloc.removeDeadStructural input5152 value89 value1 value2 = (output5152, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5153 value86 value1 value2 = (output5153, value929, value1) := by
  rw [input5153_def, output5153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child443]
  try dsimp only
  rw [child5152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output443_skip, output5152_skip]
  kernel_rfl

theorem node5154_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value88 value1 value2 = (output442, value86, value1))
    (child5153 : Flapjack.WordAlloc.removeDeadStructural input5153 value86 value1 value2 = (output5153, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5154 value88 value1 value2 = (output5154, value929, value1) := by
  rw [input5154_def, output5154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child5153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output5153_skip]
  kernel_rfl

theorem node5155_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value79 value1 value2 = (output441, value88, value1))
    (child5154 : Flapjack.WordAlloc.removeDeadStructural input5154 value88 value1 value2 = (output5154, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5155 value79 value1 value2 = (output5155, value929, value1) := by
  rw [input5155_def, output5155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child5154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output5154_skip]
  kernel_rfl

theorem node5156_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value79 value1 value2 = (output390, value79, value1))
    (child5155 : Flapjack.WordAlloc.removeDeadStructural input5155 value79 value1 value2 = (output5155, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5156 value79 value1 value2 = (output5156, value929, value1) := by
  rw [input5156_def, output5156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  try dsimp only
  rw [child5155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output390_skip, output5155_skip]
  kernel_rfl

theorem node5157_cond_eq
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value76 value1 value2 = (output389, value79, value1))
    (child5156 : Flapjack.WordAlloc.removeDeadStructural input5156 value79 value1 value2 = (output5156, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5157 value76 value1 value2 = (output5157, value929, value1) := by
  rw [input5157_def, output5157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child389]
  try dsimp only
  rw [child5156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output389_skip, output5156_skip]
  kernel_rfl

theorem node5158_cond_eq
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value78 value1 value2 = (output388, value76, value1))
    (child5157 : Flapjack.WordAlloc.removeDeadStructural input5157 value76 value1 value2 = (output5157, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5158 value78 value1 value2 = (output5158, value929, value1) := by
  rw [input5158_def, output5158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child388]
  try dsimp only
  rw [child5157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output388_skip, output5157_skip]
  kernel_rfl

theorem node5159_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value69 value1 value2 = (output387, value78, value1))
    (child5158 : Flapjack.WordAlloc.removeDeadStructural input5158 value78 value1 value2 = (output5158, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5159 value69 value1 value2 = (output5159, value929, value1) := by
  rw [input5159_def, output5159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  try dsimp only
  rw [child5158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output387_skip, output5158_skip]
  kernel_rfl

theorem node5160_cond_eq
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value69 value1 value2 = (output336, value69, value1))
    (child5159 : Flapjack.WordAlloc.removeDeadStructural input5159 value69 value1 value2 = (output5159, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5160 value69 value1 value2 = (output5160, value929, value1) := by
  rw [input5160_def, output5160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child336]
  try dsimp only
  rw [child5159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output336_skip, output5159_skip]
  kernel_rfl

theorem node5161_cond_eq
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value66 value1 value2 = (output335, value69, value1))
    (child5160 : Flapjack.WordAlloc.removeDeadStructural input5160 value69 value1 value2 = (output5160, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5161 value66 value1 value2 = (output5161, value929, value1) := by
  rw [input5161_def, output5161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child335]
  try dsimp only
  rw [child5160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output335_skip, output5160_skip]
  kernel_rfl

theorem node5162_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value68 value1 value2 = (output334, value66, value1))
    (child5161 : Flapjack.WordAlloc.removeDeadStructural input5161 value66 value1 value2 = (output5161, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5162 value68 value1 value2 = (output5162, value929, value1) := by
  rw [input5162_def, output5162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child5161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output5161_skip]
  kernel_rfl

theorem node5163_cond_eq
    (child333 : Flapjack.WordAlloc.removeDeadStructural input333 value59 value1 value2 = (output333, value68, value1))
    (child5162 : Flapjack.WordAlloc.removeDeadStructural input5162 value68 value1 value2 = (output5162, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5163 value59 value1 value2 = (output5163, value929, value1) := by
  rw [input5163_def, output5163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child333]
  try dsimp only
  rw [child5162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output333_skip, output5162_skip]
  kernel_rfl

theorem node5164_cond_eq
    (child282 : Flapjack.WordAlloc.removeDeadStructural input282 value59 value1 value2 = (output282, value59, value1))
    (child5163 : Flapjack.WordAlloc.removeDeadStructural input5163 value59 value1 value2 = (output5163, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5164 value59 value1 value2 = (output5164, value929, value1) := by
  rw [input5164_def, output5164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child282]
  try dsimp only
  rw [child5163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output282_skip, output5163_skip]
  kernel_rfl

theorem node5165_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value56 value1 value2 = (output281, value59, value1))
    (child5164 : Flapjack.WordAlloc.removeDeadStructural input5164 value59 value1 value2 = (output5164, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5165 value56 value1 value2 = (output5165, value929, value1) := by
  rw [input5165_def, output5165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  try dsimp only
  rw [child5164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output281_skip, output5164_skip]
  kernel_rfl

theorem node5166_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value58 value1 value2 = (output280, value56, value1))
    (child5165 : Flapjack.WordAlloc.removeDeadStructural input5165 value56 value1 value2 = (output5165, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5166 value58 value1 value2 = (output5166, value929, value1) := by
  rw [input5166_def, output5166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child5165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output5165_skip]
  kernel_rfl

theorem node5167_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value49 value1 value2 = (output279, value58, value1))
    (child5166 : Flapjack.WordAlloc.removeDeadStructural input5166 value58 value1 value2 = (output5166, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5167 value49 value1 value2 = (output5167, value929, value1) := by
  rw [input5167_def, output5167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  try dsimp only
  rw [child5166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output279_skip, output5166_skip]
  kernel_rfl

theorem node5168_cond_eq
    (child228 : Flapjack.WordAlloc.removeDeadStructural input228 value49 value1 value2 = (output228, value49, value1))
    (child5167 : Flapjack.WordAlloc.removeDeadStructural input5167 value49 value1 value2 = (output5167, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5168 value49 value1 value2 = (output5168, value929, value1) := by
  rw [input5168_def, output5168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child228]
  try dsimp only
  rw [child5167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output228_skip, output5167_skip]
  kernel_rfl

theorem node5169_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value46 value1 value2 = (output227, value49, value1))
    (child5168 : Flapjack.WordAlloc.removeDeadStructural input5168 value49 value1 value2 = (output5168, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5169 value46 value1 value2 = (output5169, value929, value1) := by
  rw [input5169_def, output5169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child5168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output5168_skip]
  kernel_rfl

theorem node5170_cond_eq
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value48 value1 value2 = (output226, value46, value1))
    (child5169 : Flapjack.WordAlloc.removeDeadStructural input5169 value46 value1 value2 = (output5169, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5170 value48 value1 value2 = (output5170, value929, value1) := by
  rw [input5170_def, output5170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child226]
  try dsimp only
  rw [child5169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output226_skip, output5169_skip]
  kernel_rfl

theorem node5171_cond_eq
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value39 value1 value2 = (output225, value48, value1))
    (child5170 : Flapjack.WordAlloc.removeDeadStructural input5170 value48 value1 value2 = (output5170, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5171 value39 value1 value2 = (output5171, value929, value1) := by
  rw [input5171_def, output5171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child225]
  try dsimp only
  rw [child5170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output225_skip, output5170_skip]
  kernel_rfl

theorem node5172_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value39 value1 value2 = (output174, value39, value1))
    (child5171 : Flapjack.WordAlloc.removeDeadStructural input5171 value39 value1 value2 = (output5171, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5172 value39 value1 value2 = (output5172, value929, value1) := by
  rw [input5172_def, output5172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child5171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output5171_skip]
  kernel_rfl

theorem node5173_cond_eq
    (child173 : Flapjack.WordAlloc.removeDeadStructural input173 value36 value1 value2 = (output173, value39, value1))
    (child5172 : Flapjack.WordAlloc.removeDeadStructural input5172 value39 value1 value2 = (output5172, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5173 value36 value1 value2 = (output5173, value929, value1) := by
  rw [input5173_def, output5173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child173]
  try dsimp only
  rw [child5172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output173_skip, output5172_skip]
  kernel_rfl

theorem node5174_cond_eq
    (child172 : Flapjack.WordAlloc.removeDeadStructural input172 value38 value1 value2 = (output172, value36, value1))
    (child5173 : Flapjack.WordAlloc.removeDeadStructural input5173 value36 value1 value2 = (output5173, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5174 value38 value1 value2 = (output5174, value929, value1) := by
  rw [input5174_def, output5174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child172]
  try dsimp only
  rw [child5173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output172_skip, output5173_skip]
  kernel_rfl

theorem node5175_cond_eq
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value29 value1 value2 = (output171, value38, value1))
    (child5174 : Flapjack.WordAlloc.removeDeadStructural input5174 value38 value1 value2 = (output5174, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5175 value29 value1 value2 = (output5175, value929, value1) := by
  rw [input5175_def, output5175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child171]
  try dsimp only
  rw [child5174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output171_skip, output5174_skip]
  kernel_rfl

theorem node5176_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value29 value1 value2 = (output120, value29, value1))
    (child5175 : Flapjack.WordAlloc.removeDeadStructural input5175 value29 value1 value2 = (output5175, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5176 value29 value1 value2 = (output5176, value929, value1) := by
  rw [input5176_def, output5176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child120]
  try dsimp only
  rw [child5175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output5175_skip]
  kernel_rfl

theorem node5177_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value26 value1 value2 = (output119, value29, value1))
    (child5176 : Flapjack.WordAlloc.removeDeadStructural input5176 value29 value1 value2 = (output5176, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5177 value26 value1 value2 = (output5177, value929, value1) := by
  rw [input5177_def, output5177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child5176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output5176_skip]
  kernel_rfl

theorem node5178_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value28 value1 value2 = (output118, value26, value1))
    (child5177 : Flapjack.WordAlloc.removeDeadStructural input5177 value26 value1 value2 = (output5177, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5178 value28 value1 value2 = (output5178, value929, value1) := by
  rw [input5178_def, output5178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child5177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output5177_skip]
  kernel_rfl

theorem node5179_cond_eq
    (child117 : Flapjack.WordAlloc.removeDeadStructural input117 value19 value1 value2 = (output117, value28, value1))
    (child5178 : Flapjack.WordAlloc.removeDeadStructural input5178 value28 value1 value2 = (output5178, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5179 value19 value1 value2 = (output5179, value929, value1) := by
  rw [input5179_def, output5179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child117]
  try dsimp only
  rw [child5178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output117_skip, output5178_skip]
  kernel_rfl

theorem node5180_cond_eq
    (child66 : Flapjack.WordAlloc.removeDeadStructural input66 value19 value1 value2 = (output66, value19, value1))
    (child5179 : Flapjack.WordAlloc.removeDeadStructural input5179 value19 value1 value2 = (output5179, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5180 value19 value1 value2 = (output5180, value929, value1) := by
  rw [input5180_def, output5180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child66]
  try dsimp only
  rw [child5179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output66_skip, output5179_skip]
  kernel_rfl

theorem node5181_cond_eq
    (child65 : Flapjack.WordAlloc.removeDeadStructural input65 value18 value1 value2 = (output65, value19, value1))
    (child5180 : Flapjack.WordAlloc.removeDeadStructural input5180 value19 value1 value2 = (output5180, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5181 value18 value1 value2 = (output5181, value929, value1) := by
  rw [input5181_def, output5181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child65]
  try dsimp only
  rw [child5180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output65_skip, output5180_skip]
  kernel_rfl

theorem node5182_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value17 value1 value2 = (output64, value18, value1))
    (child5181 : Flapjack.WordAlloc.removeDeadStructural input5181 value18 value1 value2 = (output5181, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5182 value17 value1 value2 = (output5182, value929, value1) := by
  rw [input5182_def, output5182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child5181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output5181_skip]
  kernel_rfl

theorem node5183_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value5 value8 value2 = (output63, value17, value1))
    (child5182 : Flapjack.WordAlloc.removeDeadStructural input5182 value17 value1 value2 = (output5182, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5183 value5 value8 value2 = (output5183, value929, value1) := by
  rw [input5183_def, output5183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  try dsimp only
  rw [child5182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output5182_skip]
  kernel_rfl

theorem node5184_cond_eq
    (child12 : Flapjack.WordAlloc.removeDeadStructural input12 value5 value8 value2 = (output12, value5, value8))
    (child5183 : Flapjack.WordAlloc.removeDeadStructural input5183 value5 value8 value2 = (output5183, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5184 value5 value8 value2 = (output5184, value929, value1) := by
  rw [input5184_def, output5184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12]
  try dsimp only
  rw [child5183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12_skip, output5183_skip]
  kernel_rfl

theorem node5185_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value9 value8 value2 = (output11, value5, value8))
    (child5184 : Flapjack.WordAlloc.removeDeadStructural input5184 value5 value8 value2 = (output5184, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5185 value9 value8 value2 = (output5185, value929, value1) := by
  rw [input5185_def, output5185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child5184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output5184_skip]
  kernel_rfl

theorem node5186_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value5 value1 value2 = (output10, value9, value8))
    (child5185 : Flapjack.WordAlloc.removeDeadStructural input5185 value9 value8 value2 = (output5185, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5186 value5 value1 value2 = (output5186, value929, value1) := by
  rw [input5186_def, output5186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child5185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output5185_skip]
  kernel_rfl

theorem node5187_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value6 value1 value2 = (output7, value5, value1))
    (child5186 : Flapjack.WordAlloc.removeDeadStructural input5186 value5 value1 value2 = (output5186, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5187 value6 value1 value2 = (output5187, value929, value1) := by
  rw [input5187_def, output5187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child5186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output5186_skip]
  kernel_rfl

theorem node5188_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value6, value1))
    (child5187 : Flapjack.WordAlloc.removeDeadStructural input5187 value6 value1 value2 = (output5187, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5188 value5 value1 value2 = (output5188, value929, value1) := by
  rw [input5188_def, output5188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child5187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output5187_skip]
  kernel_rfl

theorem node5189_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child5188 : Flapjack.WordAlloc.removeDeadStructural input5188 value5 value1 value2 = (output5188, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5189 value4 value1 value2 = (output5189, value929, value1) := by
  rw [input5189_def, output5189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child5188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output5188_skip]
  kernel_rfl

theorem node5190_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child5189 : Flapjack.WordAlloc.removeDeadStructural input5189 value4 value1 value2 = (output5189, value929, value1)) : Flapjack.WordAlloc.removeDeadStructural input5190 value0 value1 value2 = (output5190, value929, value1) := by
  rw [input5190_def, output5190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child5189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output5189_skip]
  kernel_rfl

theorem node5191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5191 value929 value1 value2 = (output5191, value930, value1) := by
  rw [input5191_def, output5191_def]
  kernel_rfl

theorem node5192_cond_eq
    (child5190 : Flapjack.WordAlloc.removeDeadStructural input5190 value0 value1 value2 = (output5190, value929, value1))
    (child5191 : Flapjack.WordAlloc.removeDeadStructural input5191 value929 value1 value2 = (output5191, value930, value1)) : Flapjack.WordAlloc.removeDeadStructural input5192 value0 value1 value2 = (output5192, value930, value1) := by
  rw [input5192_def, output5192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5190]
  try dsimp only
  rw [child5191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5190_skip, output5191_skip]
  kernel_rfl

#print axioms node5192_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
