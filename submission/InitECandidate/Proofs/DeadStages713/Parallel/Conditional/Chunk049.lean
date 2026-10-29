import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk049
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node12544_cond_eq
    (child12538 : Flapjack.WordAlloc.removeDeadStructural input12538 value6273 value1 value2 = (output12538, value6274, value1))
    (child12543 : Flapjack.WordAlloc.removeDeadStructural input12543 value6274 value1 value2 = (output12543, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12544 value6273 value1 value2 = (output12544, value5, value1) := by
  rw [input12544_def, output12544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12538]
  dsimp only
  rw [child12543]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12538_skip, output12543_skip]
  kernel_rfl

theorem node12545_cond_eq
    (child12537 : Flapjack.WordAlloc.removeDeadStructural input12537 value6272 value1 value2 = (output12537, value6273, value1))
    (child12544 : Flapjack.WordAlloc.removeDeadStructural input12544 value6273 value1 value2 = (output12544, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12545 value6272 value1 value2 = (output12545, value5, value1) := by
  rw [input12545_def, output12545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12537]
  dsimp only
  rw [child12544]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12537_skip, output12544_skip]
  kernel_rfl

theorem node12546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12546 value5 value1 value2 = (output12546, value6277, value1) := by
  rw [input12546_def, output12546_def]
  kernel_rfl

theorem node12547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12547 value6277 value1 value2 = (output12547, value6278, value1) := by
  rw [input12547_def, output12547_def]
  kernel_rfl

theorem node12548_cond_eq
    (child12546 : Flapjack.WordAlloc.removeDeadStructural input12546 value5 value1 value2 = (output12546, value6277, value1))
    (child12547 : Flapjack.WordAlloc.removeDeadStructural input12547 value6277 value1 value2 = (output12547, value6278, value1)) : Flapjack.WordAlloc.removeDeadStructural input12548 value5 value1 value2 = (output12548, value6278, value1) := by
  rw [input12548_def, output12548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12546]
  dsimp only
  rw [child12547]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12546_skip, output12547_skip]
  kernel_rfl

theorem node12549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12549 value6278 value1 value2 = (output12549, value6279, value1) := by
  rw [input12549_def, output12549_def]
  kernel_rfl

theorem node12550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12550 value6279 value1 value2 = (output12550, value6279, value1) := by
  rw [input12550_def, output12550_def]
  kernel_rfl

theorem node12551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12551 value6279 value1 value2 = (output12551, value6280, value1) := by
  rw [input12551_def, output12551_def]
  kernel_rfl

theorem node12552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12552 value6280 value1 value2 = (output12552, value6281, value1) := by
  rw [input12552_def, output12552_def]
  kernel_rfl

theorem node12553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12553 value6281 value1 value2 = (output12553, value6282, value1) := by
  rw [input12553_def, output12553_def]
  kernel_rfl

theorem node12554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12554 value6282 value1 value2 = (output12554, value6283, value1) := by
  rw [input12554_def, output12554_def]
  kernel_rfl

theorem node12555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12555 value6283 value1 value2 = (output12555, value5, value1) := by
  rw [input12555_def, output12555_def]
  kernel_rfl

theorem node12556_cond_eq
    (child12554 : Flapjack.WordAlloc.removeDeadStructural input12554 value6282 value1 value2 = (output12554, value6283, value1))
    (child12555 : Flapjack.WordAlloc.removeDeadStructural input12555 value6283 value1 value2 = (output12555, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12556 value6282 value1 value2 = (output12556, value5, value1) := by
  rw [input12556_def, output12556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12554]
  dsimp only
  rw [child12555]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12554_skip, output12555_skip]
  kernel_rfl

theorem node12557_cond_eq
    (child12553 : Flapjack.WordAlloc.removeDeadStructural input12553 value6281 value1 value2 = (output12553, value6282, value1))
    (child12556 : Flapjack.WordAlloc.removeDeadStructural input12556 value6282 value1 value2 = (output12556, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12557 value6281 value1 value2 = (output12557, value5, value1) := by
  rw [input12557_def, output12557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12553]
  dsimp only
  rw [child12556]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12553_skip, output12556_skip]
  kernel_rfl

theorem node12558_cond_eq
    (child12552 : Flapjack.WordAlloc.removeDeadStructural input12552 value6280 value1 value2 = (output12552, value6281, value1))
    (child12557 : Flapjack.WordAlloc.removeDeadStructural input12557 value6281 value1 value2 = (output12557, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12558 value6280 value1 value2 = (output12558, value5, value1) := by
  rw [input12558_def, output12558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12552]
  dsimp only
  rw [child12557]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12552_skip, output12557_skip]
  kernel_rfl

theorem node12559_cond_eq
    (child12551 : Flapjack.WordAlloc.removeDeadStructural input12551 value6279 value1 value2 = (output12551, value6280, value1))
    (child12558 : Flapjack.WordAlloc.removeDeadStructural input12558 value6280 value1 value2 = (output12558, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12559 value6279 value1 value2 = (output12559, value5, value1) := by
  rw [input12559_def, output12559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12551]
  dsimp only
  rw [child12558]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12551_skip, output12558_skip]
  kernel_rfl

theorem node12560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12560 value5 value1 value2 = (output12560, value6284, value1) := by
  rw [input12560_def, output12560_def]
  kernel_rfl

theorem node12561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12561 value6284 value1 value2 = (output12561, value6285, value1) := by
  rw [input12561_def, output12561_def]
  kernel_rfl

theorem node12562_cond_eq
    (child12560 : Flapjack.WordAlloc.removeDeadStructural input12560 value5 value1 value2 = (output12560, value6284, value1))
    (child12561 : Flapjack.WordAlloc.removeDeadStructural input12561 value6284 value1 value2 = (output12561, value6285, value1)) : Flapjack.WordAlloc.removeDeadStructural input12562 value5 value1 value2 = (output12562, value6285, value1) := by
  rw [input12562_def, output12562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12560]
  dsimp only
  rw [child12561]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12560_skip, output12561_skip]
  kernel_rfl

theorem node12563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12563 value6285 value1 value2 = (output12563, value6286, value1) := by
  rw [input12563_def, output12563_def]
  kernel_rfl

theorem node12564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12564 value6286 value1 value2 = (output12564, value6286, value1) := by
  rw [input12564_def, output12564_def]
  kernel_rfl

theorem node12565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12565 value6286 value1 value2 = (output12565, value6287, value1) := by
  rw [input12565_def, output12565_def]
  kernel_rfl

theorem node12566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12566 value6287 value1 value2 = (output12566, value6288, value1) := by
  rw [input12566_def, output12566_def]
  kernel_rfl

theorem node12567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12567 value6288 value1 value2 = (output12567, value6289, value1) := by
  rw [input12567_def, output12567_def]
  kernel_rfl

theorem node12568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12568 value6289 value1 value2 = (output12568, value6290, value1) := by
  rw [input12568_def, output12568_def]
  kernel_rfl

theorem node12569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12569 value6290 value1 value2 = (output12569, value5, value1) := by
  rw [input12569_def, output12569_def]
  kernel_rfl

theorem node12570_cond_eq
    (child12568 : Flapjack.WordAlloc.removeDeadStructural input12568 value6289 value1 value2 = (output12568, value6290, value1))
    (child12569 : Flapjack.WordAlloc.removeDeadStructural input12569 value6290 value1 value2 = (output12569, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12570 value6289 value1 value2 = (output12570, value5, value1) := by
  rw [input12570_def, output12570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12568]
  dsimp only
  rw [child12569]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12568_skip, output12569_skip]
  kernel_rfl

theorem node12571_cond_eq
    (child12567 : Flapjack.WordAlloc.removeDeadStructural input12567 value6288 value1 value2 = (output12567, value6289, value1))
    (child12570 : Flapjack.WordAlloc.removeDeadStructural input12570 value6289 value1 value2 = (output12570, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12571 value6288 value1 value2 = (output12571, value5, value1) := by
  rw [input12571_def, output12571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12567]
  dsimp only
  rw [child12570]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12567_skip, output12570_skip]
  kernel_rfl

theorem node12572_cond_eq
    (child12566 : Flapjack.WordAlloc.removeDeadStructural input12566 value6287 value1 value2 = (output12566, value6288, value1))
    (child12571 : Flapjack.WordAlloc.removeDeadStructural input12571 value6288 value1 value2 = (output12571, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12572 value6287 value1 value2 = (output12572, value5, value1) := by
  rw [input12572_def, output12572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12566]
  dsimp only
  rw [child12571]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12566_skip, output12571_skip]
  kernel_rfl

theorem node12573_cond_eq
    (child12565 : Flapjack.WordAlloc.removeDeadStructural input12565 value6286 value1 value2 = (output12565, value6287, value1))
    (child12572 : Flapjack.WordAlloc.removeDeadStructural input12572 value6287 value1 value2 = (output12572, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12573 value6286 value1 value2 = (output12573, value5, value1) := by
  rw [input12573_def, output12573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12565]
  dsimp only
  rw [child12572]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12565_skip, output12572_skip]
  kernel_rfl

theorem node12574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12574 value5 value1 value2 = (output12574, value6291, value1) := by
  rw [input12574_def, output12574_def]
  kernel_rfl

theorem node12575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12575 value6291 value1 value2 = (output12575, value6292, value1) := by
  rw [input12575_def, output12575_def]
  kernel_rfl

theorem node12576_cond_eq
    (child12574 : Flapjack.WordAlloc.removeDeadStructural input12574 value5 value1 value2 = (output12574, value6291, value1))
    (child12575 : Flapjack.WordAlloc.removeDeadStructural input12575 value6291 value1 value2 = (output12575, value6292, value1)) : Flapjack.WordAlloc.removeDeadStructural input12576 value5 value1 value2 = (output12576, value6292, value1) := by
  rw [input12576_def, output12576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12574]
  dsimp only
  rw [child12575]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12574_skip, output12575_skip]
  kernel_rfl

theorem node12577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12577 value6292 value1 value2 = (output12577, value6293, value1) := by
  rw [input12577_def, output12577_def]
  kernel_rfl

theorem node12578_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12578 value6293 value1 value2 = (output12578, value6293, value1) := by
  rw [input12578_def, output12578_def]
  kernel_rfl

theorem node12579_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12579 value6293 value1 value2 = (output12579, value6294, value1) := by
  rw [input12579_def, output12579_def]
  kernel_rfl

theorem node12580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12580 value6294 value1 value2 = (output12580, value6295, value1) := by
  rw [input12580_def, output12580_def]
  kernel_rfl

theorem node12581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12581 value6295 value1 value2 = (output12581, value6296, value1) := by
  rw [input12581_def, output12581_def]
  kernel_rfl

theorem node12582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12582 value6296 value1 value2 = (output12582, value6297, value1) := by
  rw [input12582_def, output12582_def]
  kernel_rfl

theorem node12583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12583 value6297 value1 value2 = (output12583, value5, value1) := by
  rw [input12583_def, output12583_def]
  kernel_rfl

theorem node12584_cond_eq
    (child12582 : Flapjack.WordAlloc.removeDeadStructural input12582 value6296 value1 value2 = (output12582, value6297, value1))
    (child12583 : Flapjack.WordAlloc.removeDeadStructural input12583 value6297 value1 value2 = (output12583, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12584 value6296 value1 value2 = (output12584, value5, value1) := by
  rw [input12584_def, output12584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12582]
  dsimp only
  rw [child12583]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12582_skip, output12583_skip]
  kernel_rfl

theorem node12585_cond_eq
    (child12581 : Flapjack.WordAlloc.removeDeadStructural input12581 value6295 value1 value2 = (output12581, value6296, value1))
    (child12584 : Flapjack.WordAlloc.removeDeadStructural input12584 value6296 value1 value2 = (output12584, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12585 value6295 value1 value2 = (output12585, value5, value1) := by
  rw [input12585_def, output12585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12581]
  dsimp only
  rw [child12584]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12581_skip, output12584_skip]
  kernel_rfl

theorem node12586_cond_eq
    (child12580 : Flapjack.WordAlloc.removeDeadStructural input12580 value6294 value1 value2 = (output12580, value6295, value1))
    (child12585 : Flapjack.WordAlloc.removeDeadStructural input12585 value6295 value1 value2 = (output12585, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12586 value6294 value1 value2 = (output12586, value5, value1) := by
  rw [input12586_def, output12586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12580]
  dsimp only
  rw [child12585]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12580_skip, output12585_skip]
  kernel_rfl

theorem node12587_cond_eq
    (child12579 : Flapjack.WordAlloc.removeDeadStructural input12579 value6293 value1 value2 = (output12579, value6294, value1))
    (child12586 : Flapjack.WordAlloc.removeDeadStructural input12586 value6294 value1 value2 = (output12586, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12587 value6293 value1 value2 = (output12587, value5, value1) := by
  rw [input12587_def, output12587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12579]
  dsimp only
  rw [child12586]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12579_skip, output12586_skip]
  kernel_rfl

theorem node12588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12588 value5 value1 value2 = (output12588, value6298, value1) := by
  rw [input12588_def, output12588_def]
  kernel_rfl

theorem node12589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12589 value6298 value1 value2 = (output12589, value6299, value1) := by
  rw [input12589_def, output12589_def]
  kernel_rfl

theorem node12590_cond_eq
    (child12588 : Flapjack.WordAlloc.removeDeadStructural input12588 value5 value1 value2 = (output12588, value6298, value1))
    (child12589 : Flapjack.WordAlloc.removeDeadStructural input12589 value6298 value1 value2 = (output12589, value6299, value1)) : Flapjack.WordAlloc.removeDeadStructural input12590 value5 value1 value2 = (output12590, value6299, value1) := by
  rw [input12590_def, output12590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12588]
  dsimp only
  rw [child12589]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12588_skip, output12589_skip]
  kernel_rfl

theorem node12591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12591 value6299 value1 value2 = (output12591, value6300, value1) := by
  rw [input12591_def, output12591_def]
  kernel_rfl

theorem node12592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12592 value6300 value1 value2 = (output12592, value6300, value1) := by
  rw [input12592_def, output12592_def]
  kernel_rfl

theorem node12593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12593 value6300 value1 value2 = (output12593, value6301, value1) := by
  rw [input12593_def, output12593_def]
  kernel_rfl

theorem node12594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12594 value6301 value1 value2 = (output12594, value6302, value1) := by
  rw [input12594_def, output12594_def]
  kernel_rfl

theorem node12595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12595 value6302 value1 value2 = (output12595, value6303, value1) := by
  rw [input12595_def, output12595_def]
  kernel_rfl

theorem node12596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12596 value6303 value1 value2 = (output12596, value6304, value1) := by
  rw [input12596_def, output12596_def]
  kernel_rfl

theorem node12597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12597 value6304 value1 value2 = (output12597, value5, value1) := by
  rw [input12597_def, output12597_def]
  kernel_rfl

theorem node12598_cond_eq
    (child12596 : Flapjack.WordAlloc.removeDeadStructural input12596 value6303 value1 value2 = (output12596, value6304, value1))
    (child12597 : Flapjack.WordAlloc.removeDeadStructural input12597 value6304 value1 value2 = (output12597, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12598 value6303 value1 value2 = (output12598, value5, value1) := by
  rw [input12598_def, output12598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12596]
  dsimp only
  rw [child12597]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12596_skip, output12597_skip]
  kernel_rfl

theorem node12599_cond_eq
    (child12595 : Flapjack.WordAlloc.removeDeadStructural input12595 value6302 value1 value2 = (output12595, value6303, value1))
    (child12598 : Flapjack.WordAlloc.removeDeadStructural input12598 value6303 value1 value2 = (output12598, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12599 value6302 value1 value2 = (output12599, value5, value1) := by
  rw [input12599_def, output12599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12595]
  dsimp only
  rw [child12598]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12595_skip, output12598_skip]
  kernel_rfl

theorem node12600_cond_eq
    (child12594 : Flapjack.WordAlloc.removeDeadStructural input12594 value6301 value1 value2 = (output12594, value6302, value1))
    (child12599 : Flapjack.WordAlloc.removeDeadStructural input12599 value6302 value1 value2 = (output12599, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12600 value6301 value1 value2 = (output12600, value5, value1) := by
  rw [input12600_def, output12600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12594]
  dsimp only
  rw [child12599]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12594_skip, output12599_skip]
  kernel_rfl

theorem node12601_cond_eq
    (child12593 : Flapjack.WordAlloc.removeDeadStructural input12593 value6300 value1 value2 = (output12593, value6301, value1))
    (child12600 : Flapjack.WordAlloc.removeDeadStructural input12600 value6301 value1 value2 = (output12600, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12601 value6300 value1 value2 = (output12601, value5, value1) := by
  rw [input12601_def, output12601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12593]
  dsimp only
  rw [child12600]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12593_skip, output12600_skip]
  kernel_rfl

theorem node12602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12602 value5 value1 value2 = (output12602, value6305, value1) := by
  rw [input12602_def, output12602_def]
  kernel_rfl

theorem node12603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12603 value6305 value1 value2 = (output12603, value6306, value1) := by
  rw [input12603_def, output12603_def]
  kernel_rfl

theorem node12604_cond_eq
    (child12602 : Flapjack.WordAlloc.removeDeadStructural input12602 value5 value1 value2 = (output12602, value6305, value1))
    (child12603 : Flapjack.WordAlloc.removeDeadStructural input12603 value6305 value1 value2 = (output12603, value6306, value1)) : Flapjack.WordAlloc.removeDeadStructural input12604 value5 value1 value2 = (output12604, value6306, value1) := by
  rw [input12604_def, output12604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12602]
  dsimp only
  rw [child12603]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12602_skip, output12603_skip]
  kernel_rfl

theorem node12605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12605 value6306 value1 value2 = (output12605, value6307, value1) := by
  rw [input12605_def, output12605_def]
  kernel_rfl

theorem node12606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12606 value6307 value1 value2 = (output12606, value6307, value1) := by
  rw [input12606_def, output12606_def]
  kernel_rfl

theorem node12607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12607 value6307 value1 value2 = (output12607, value6308, value1) := by
  rw [input12607_def, output12607_def]
  kernel_rfl

theorem node12608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12608 value6308 value1 value2 = (output12608, value6309, value1) := by
  rw [input12608_def, output12608_def]
  kernel_rfl

theorem node12609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12609 value6309 value1 value2 = (output12609, value6310, value1) := by
  rw [input12609_def, output12609_def]
  kernel_rfl

theorem node12610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12610 value6310 value1 value2 = (output12610, value6311, value1) := by
  rw [input12610_def, output12610_def]
  kernel_rfl

theorem node12611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12611 value6311 value1 value2 = (output12611, value5, value1) := by
  rw [input12611_def, output12611_def]
  kernel_rfl

theorem node12612_cond_eq
    (child12610 : Flapjack.WordAlloc.removeDeadStructural input12610 value6310 value1 value2 = (output12610, value6311, value1))
    (child12611 : Flapjack.WordAlloc.removeDeadStructural input12611 value6311 value1 value2 = (output12611, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12612 value6310 value1 value2 = (output12612, value5, value1) := by
  rw [input12612_def, output12612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12610]
  dsimp only
  rw [child12611]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12610_skip, output12611_skip]
  kernel_rfl

theorem node12613_cond_eq
    (child12609 : Flapjack.WordAlloc.removeDeadStructural input12609 value6309 value1 value2 = (output12609, value6310, value1))
    (child12612 : Flapjack.WordAlloc.removeDeadStructural input12612 value6310 value1 value2 = (output12612, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12613 value6309 value1 value2 = (output12613, value5, value1) := by
  rw [input12613_def, output12613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12609]
  dsimp only
  rw [child12612]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12609_skip, output12612_skip]
  kernel_rfl

theorem node12614_cond_eq
    (child12608 : Flapjack.WordAlloc.removeDeadStructural input12608 value6308 value1 value2 = (output12608, value6309, value1))
    (child12613 : Flapjack.WordAlloc.removeDeadStructural input12613 value6309 value1 value2 = (output12613, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12614 value6308 value1 value2 = (output12614, value5, value1) := by
  rw [input12614_def, output12614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12608]
  dsimp only
  rw [child12613]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12608_skip, output12613_skip]
  kernel_rfl

theorem node12615_cond_eq
    (child12607 : Flapjack.WordAlloc.removeDeadStructural input12607 value6307 value1 value2 = (output12607, value6308, value1))
    (child12614 : Flapjack.WordAlloc.removeDeadStructural input12614 value6308 value1 value2 = (output12614, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12615 value6307 value1 value2 = (output12615, value5, value1) := by
  rw [input12615_def, output12615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12607]
  dsimp only
  rw [child12614]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12607_skip, output12614_skip]
  kernel_rfl

theorem node12616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12616 value5 value1 value2 = (output12616, value6312, value1) := by
  rw [input12616_def, output12616_def]
  kernel_rfl

theorem node12617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12617 value6312 value1 value2 = (output12617, value6313, value1) := by
  rw [input12617_def, output12617_def]
  kernel_rfl

theorem node12618_cond_eq
    (child12616 : Flapjack.WordAlloc.removeDeadStructural input12616 value5 value1 value2 = (output12616, value6312, value1))
    (child12617 : Flapjack.WordAlloc.removeDeadStructural input12617 value6312 value1 value2 = (output12617, value6313, value1)) : Flapjack.WordAlloc.removeDeadStructural input12618 value5 value1 value2 = (output12618, value6313, value1) := by
  rw [input12618_def, output12618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12616]
  dsimp only
  rw [child12617]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12616_skip, output12617_skip]
  kernel_rfl

theorem node12619_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12619 value6313 value1 value2 = (output12619, value6314, value1) := by
  rw [input12619_def, output12619_def]
  kernel_rfl

theorem node12620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12620 value6314 value1 value2 = (output12620, value6314, value1) := by
  rw [input12620_def, output12620_def]
  kernel_rfl

theorem node12621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12621 value6314 value1 value2 = (output12621, value6315, value1) := by
  rw [input12621_def, output12621_def]
  kernel_rfl

theorem node12622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12622 value6315 value1 value2 = (output12622, value6316, value1) := by
  rw [input12622_def, output12622_def]
  kernel_rfl

theorem node12623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12623 value6316 value1 value2 = (output12623, value6317, value1) := by
  rw [input12623_def, output12623_def]
  kernel_rfl

theorem node12624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12624 value6317 value1 value2 = (output12624, value6318, value1) := by
  rw [input12624_def, output12624_def]
  kernel_rfl

theorem node12625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12625 value6318 value1 value2 = (output12625, value5, value1) := by
  rw [input12625_def, output12625_def]
  kernel_rfl

theorem node12626_cond_eq
    (child12624 : Flapjack.WordAlloc.removeDeadStructural input12624 value6317 value1 value2 = (output12624, value6318, value1))
    (child12625 : Flapjack.WordAlloc.removeDeadStructural input12625 value6318 value1 value2 = (output12625, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12626 value6317 value1 value2 = (output12626, value5, value1) := by
  rw [input12626_def, output12626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12624]
  dsimp only
  rw [child12625]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12624_skip, output12625_skip]
  kernel_rfl

theorem node12627_cond_eq
    (child12623 : Flapjack.WordAlloc.removeDeadStructural input12623 value6316 value1 value2 = (output12623, value6317, value1))
    (child12626 : Flapjack.WordAlloc.removeDeadStructural input12626 value6317 value1 value2 = (output12626, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12627 value6316 value1 value2 = (output12627, value5, value1) := by
  rw [input12627_def, output12627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12623]
  dsimp only
  rw [child12626]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12623_skip, output12626_skip]
  kernel_rfl

theorem node12628_cond_eq
    (child12622 : Flapjack.WordAlloc.removeDeadStructural input12622 value6315 value1 value2 = (output12622, value6316, value1))
    (child12627 : Flapjack.WordAlloc.removeDeadStructural input12627 value6316 value1 value2 = (output12627, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12628 value6315 value1 value2 = (output12628, value5, value1) := by
  rw [input12628_def, output12628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12622]
  dsimp only
  rw [child12627]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12622_skip, output12627_skip]
  kernel_rfl

theorem node12629_cond_eq
    (child12621 : Flapjack.WordAlloc.removeDeadStructural input12621 value6314 value1 value2 = (output12621, value6315, value1))
    (child12628 : Flapjack.WordAlloc.removeDeadStructural input12628 value6315 value1 value2 = (output12628, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12629 value6314 value1 value2 = (output12629, value5, value1) := by
  rw [input12629_def, output12629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12621]
  dsimp only
  rw [child12628]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12621_skip, output12628_skip]
  kernel_rfl

theorem node12630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12630 value5 value1 value2 = (output12630, value6319, value1) := by
  rw [input12630_def, output12630_def]
  kernel_rfl

theorem node12631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12631 value6319 value1 value2 = (output12631, value6320, value1) := by
  rw [input12631_def, output12631_def]
  kernel_rfl

theorem node12632_cond_eq
    (child12630 : Flapjack.WordAlloc.removeDeadStructural input12630 value5 value1 value2 = (output12630, value6319, value1))
    (child12631 : Flapjack.WordAlloc.removeDeadStructural input12631 value6319 value1 value2 = (output12631, value6320, value1)) : Flapjack.WordAlloc.removeDeadStructural input12632 value5 value1 value2 = (output12632, value6320, value1) := by
  rw [input12632_def, output12632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12630]
  dsimp only
  rw [child12631]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12630_skip, output12631_skip]
  kernel_rfl

theorem node12633_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12633 value6320 value1 value2 = (output12633, value6321, value1) := by
  rw [input12633_def, output12633_def]
  kernel_rfl

theorem node12634_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12634 value6321 value1 value2 = (output12634, value6321, value1) := by
  rw [input12634_def, output12634_def]
  kernel_rfl

theorem node12635_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12635 value6321 value1 value2 = (output12635, value6322, value1) := by
  rw [input12635_def, output12635_def]
  kernel_rfl

theorem node12636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12636 value6322 value1 value2 = (output12636, value6323, value1) := by
  rw [input12636_def, output12636_def]
  kernel_rfl

theorem node12637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12637 value6323 value1 value2 = (output12637, value6324, value1) := by
  rw [input12637_def, output12637_def]
  kernel_rfl

theorem node12638_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12638 value6324 value1 value2 = (output12638, value6325, value1) := by
  rw [input12638_def, output12638_def]
  kernel_rfl

theorem node12639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12639 value6325 value1 value2 = (output12639, value5, value1) := by
  rw [input12639_def, output12639_def]
  kernel_rfl

theorem node12640_cond_eq
    (child12638 : Flapjack.WordAlloc.removeDeadStructural input12638 value6324 value1 value2 = (output12638, value6325, value1))
    (child12639 : Flapjack.WordAlloc.removeDeadStructural input12639 value6325 value1 value2 = (output12639, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12640 value6324 value1 value2 = (output12640, value5, value1) := by
  rw [input12640_def, output12640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12638]
  dsimp only
  rw [child12639]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12638_skip, output12639_skip]
  kernel_rfl

theorem node12641_cond_eq
    (child12637 : Flapjack.WordAlloc.removeDeadStructural input12637 value6323 value1 value2 = (output12637, value6324, value1))
    (child12640 : Flapjack.WordAlloc.removeDeadStructural input12640 value6324 value1 value2 = (output12640, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12641 value6323 value1 value2 = (output12641, value5, value1) := by
  rw [input12641_def, output12641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12637]
  dsimp only
  rw [child12640]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12637_skip, output12640_skip]
  kernel_rfl

theorem node12642_cond_eq
    (child12636 : Flapjack.WordAlloc.removeDeadStructural input12636 value6322 value1 value2 = (output12636, value6323, value1))
    (child12641 : Flapjack.WordAlloc.removeDeadStructural input12641 value6323 value1 value2 = (output12641, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12642 value6322 value1 value2 = (output12642, value5, value1) := by
  rw [input12642_def, output12642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12636]
  dsimp only
  rw [child12641]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12636_skip, output12641_skip]
  kernel_rfl

theorem node12643_cond_eq
    (child12635 : Flapjack.WordAlloc.removeDeadStructural input12635 value6321 value1 value2 = (output12635, value6322, value1))
    (child12642 : Flapjack.WordAlloc.removeDeadStructural input12642 value6322 value1 value2 = (output12642, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12643 value6321 value1 value2 = (output12643, value5, value1) := by
  rw [input12643_def, output12643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12635]
  dsimp only
  rw [child12642]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12635_skip, output12642_skip]
  kernel_rfl

theorem node12644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12644 value5 value1 value2 = (output12644, value6326, value1) := by
  rw [input12644_def, output12644_def]
  kernel_rfl

theorem node12645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12645 value6326 value1 value2 = (output12645, value6327, value1) := by
  rw [input12645_def, output12645_def]
  kernel_rfl

theorem node12646_cond_eq
    (child12644 : Flapjack.WordAlloc.removeDeadStructural input12644 value5 value1 value2 = (output12644, value6326, value1))
    (child12645 : Flapjack.WordAlloc.removeDeadStructural input12645 value6326 value1 value2 = (output12645, value6327, value1)) : Flapjack.WordAlloc.removeDeadStructural input12646 value5 value1 value2 = (output12646, value6327, value1) := by
  rw [input12646_def, output12646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12644]
  dsimp only
  rw [child12645]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12644_skip, output12645_skip]
  kernel_rfl

theorem node12647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12647 value6327 value1 value2 = (output12647, value6328, value1) := by
  rw [input12647_def, output12647_def]
  kernel_rfl

theorem node12648_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12648 value6328 value1 value2 = (output12648, value6328, value1) := by
  rw [input12648_def, output12648_def]
  kernel_rfl

theorem node12649_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12649 value6328 value1 value2 = (output12649, value6329, value1) := by
  rw [input12649_def, output12649_def]
  kernel_rfl

theorem node12650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12650 value6329 value1 value2 = (output12650, value6330, value1) := by
  rw [input12650_def, output12650_def]
  kernel_rfl

theorem node12651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12651 value6330 value1 value2 = (output12651, value6331, value1) := by
  rw [input12651_def, output12651_def]
  kernel_rfl

theorem node12652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12652 value6331 value1 value2 = (output12652, value6332, value1) := by
  rw [input12652_def, output12652_def]
  kernel_rfl

theorem node12653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12653 value6332 value1 value2 = (output12653, value5, value1) := by
  rw [input12653_def, output12653_def]
  kernel_rfl

theorem node12654_cond_eq
    (child12652 : Flapjack.WordAlloc.removeDeadStructural input12652 value6331 value1 value2 = (output12652, value6332, value1))
    (child12653 : Flapjack.WordAlloc.removeDeadStructural input12653 value6332 value1 value2 = (output12653, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12654 value6331 value1 value2 = (output12654, value5, value1) := by
  rw [input12654_def, output12654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12652]
  dsimp only
  rw [child12653]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12652_skip, output12653_skip]
  kernel_rfl

theorem node12655_cond_eq
    (child12651 : Flapjack.WordAlloc.removeDeadStructural input12651 value6330 value1 value2 = (output12651, value6331, value1))
    (child12654 : Flapjack.WordAlloc.removeDeadStructural input12654 value6331 value1 value2 = (output12654, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12655 value6330 value1 value2 = (output12655, value5, value1) := by
  rw [input12655_def, output12655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12651]
  dsimp only
  rw [child12654]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12651_skip, output12654_skip]
  kernel_rfl

theorem node12656_cond_eq
    (child12650 : Flapjack.WordAlloc.removeDeadStructural input12650 value6329 value1 value2 = (output12650, value6330, value1))
    (child12655 : Flapjack.WordAlloc.removeDeadStructural input12655 value6330 value1 value2 = (output12655, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12656 value6329 value1 value2 = (output12656, value5, value1) := by
  rw [input12656_def, output12656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12650]
  dsimp only
  rw [child12655]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12650_skip, output12655_skip]
  kernel_rfl

theorem node12657_cond_eq
    (child12649 : Flapjack.WordAlloc.removeDeadStructural input12649 value6328 value1 value2 = (output12649, value6329, value1))
    (child12656 : Flapjack.WordAlloc.removeDeadStructural input12656 value6329 value1 value2 = (output12656, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12657 value6328 value1 value2 = (output12657, value5, value1) := by
  rw [input12657_def, output12657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12649]
  dsimp only
  rw [child12656]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12649_skip, output12656_skip]
  kernel_rfl

theorem node12658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12658 value5 value1 value2 = (output12658, value6333, value1) := by
  rw [input12658_def, output12658_def]
  kernel_rfl

theorem node12659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12659 value6333 value1 value2 = (output12659, value6334, value1) := by
  rw [input12659_def, output12659_def]
  kernel_rfl

theorem node12660_cond_eq
    (child12658 : Flapjack.WordAlloc.removeDeadStructural input12658 value5 value1 value2 = (output12658, value6333, value1))
    (child12659 : Flapjack.WordAlloc.removeDeadStructural input12659 value6333 value1 value2 = (output12659, value6334, value1)) : Flapjack.WordAlloc.removeDeadStructural input12660 value5 value1 value2 = (output12660, value6334, value1) := by
  rw [input12660_def, output12660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12658]
  dsimp only
  rw [child12659]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12658_skip, output12659_skip]
  kernel_rfl

theorem node12661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12661 value6334 value1 value2 = (output12661, value6335, value1) := by
  rw [input12661_def, output12661_def]
  kernel_rfl

theorem node12662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12662 value6335 value1 value2 = (output12662, value6335, value1) := by
  rw [input12662_def, output12662_def]
  kernel_rfl

theorem node12663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12663 value6335 value1 value2 = (output12663, value6336, value1) := by
  rw [input12663_def, output12663_def]
  kernel_rfl

theorem node12664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12664 value6336 value1 value2 = (output12664, value6337, value1) := by
  rw [input12664_def, output12664_def]
  kernel_rfl

theorem node12665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12665 value6337 value1 value2 = (output12665, value6338, value1) := by
  rw [input12665_def, output12665_def]
  kernel_rfl

theorem node12666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12666 value6338 value1 value2 = (output12666, value6339, value1) := by
  rw [input12666_def, output12666_def]
  kernel_rfl

theorem node12667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12667 value6339 value1 value2 = (output12667, value5, value1) := by
  rw [input12667_def, output12667_def]
  kernel_rfl

theorem node12668_cond_eq
    (child12666 : Flapjack.WordAlloc.removeDeadStructural input12666 value6338 value1 value2 = (output12666, value6339, value1))
    (child12667 : Flapjack.WordAlloc.removeDeadStructural input12667 value6339 value1 value2 = (output12667, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12668 value6338 value1 value2 = (output12668, value5, value1) := by
  rw [input12668_def, output12668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12666]
  dsimp only
  rw [child12667]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12666_skip, output12667_skip]
  kernel_rfl

theorem node12669_cond_eq
    (child12665 : Flapjack.WordAlloc.removeDeadStructural input12665 value6337 value1 value2 = (output12665, value6338, value1))
    (child12668 : Flapjack.WordAlloc.removeDeadStructural input12668 value6338 value1 value2 = (output12668, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12669 value6337 value1 value2 = (output12669, value5, value1) := by
  rw [input12669_def, output12669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12665]
  dsimp only
  rw [child12668]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12665_skip, output12668_skip]
  kernel_rfl

theorem node12670_cond_eq
    (child12664 : Flapjack.WordAlloc.removeDeadStructural input12664 value6336 value1 value2 = (output12664, value6337, value1))
    (child12669 : Flapjack.WordAlloc.removeDeadStructural input12669 value6337 value1 value2 = (output12669, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12670 value6336 value1 value2 = (output12670, value5, value1) := by
  rw [input12670_def, output12670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12664]
  dsimp only
  rw [child12669]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12664_skip, output12669_skip]
  kernel_rfl

theorem node12671_cond_eq
    (child12663 : Flapjack.WordAlloc.removeDeadStructural input12663 value6335 value1 value2 = (output12663, value6336, value1))
    (child12670 : Flapjack.WordAlloc.removeDeadStructural input12670 value6336 value1 value2 = (output12670, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12671 value6335 value1 value2 = (output12671, value5, value1) := by
  rw [input12671_def, output12671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12663]
  dsimp only
  rw [child12670]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12663_skip, output12670_skip]
  kernel_rfl

theorem node12672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12672 value5 value1 value2 = (output12672, value6340, value1) := by
  rw [input12672_def, output12672_def]
  kernel_rfl

theorem node12673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12673 value6340 value1 value2 = (output12673, value6341, value1) := by
  rw [input12673_def, output12673_def]
  kernel_rfl

theorem node12674_cond_eq
    (child12672 : Flapjack.WordAlloc.removeDeadStructural input12672 value5 value1 value2 = (output12672, value6340, value1))
    (child12673 : Flapjack.WordAlloc.removeDeadStructural input12673 value6340 value1 value2 = (output12673, value6341, value1)) : Flapjack.WordAlloc.removeDeadStructural input12674 value5 value1 value2 = (output12674, value6341, value1) := by
  rw [input12674_def, output12674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12672]
  dsimp only
  rw [child12673]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12672_skip, output12673_skip]
  kernel_rfl

theorem node12675_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12675 value6341 value1 value2 = (output12675, value6342, value1) := by
  rw [input12675_def, output12675_def]
  kernel_rfl

theorem node12676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12676 value6342 value1 value2 = (output12676, value6342, value1) := by
  rw [input12676_def, output12676_def]
  kernel_rfl

theorem node12677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12677 value6342 value1 value2 = (output12677, value6343, value1) := by
  rw [input12677_def, output12677_def]
  kernel_rfl

theorem node12678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12678 value6343 value1 value2 = (output12678, value6344, value1) := by
  rw [input12678_def, output12678_def]
  kernel_rfl

theorem node12679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12679 value6344 value1 value2 = (output12679, value6345, value1) := by
  rw [input12679_def, output12679_def]
  kernel_rfl

theorem node12680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12680 value6345 value1 value2 = (output12680, value6346, value1) := by
  rw [input12680_def, output12680_def]
  kernel_rfl

theorem node12681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12681 value6346 value1 value2 = (output12681, value5, value1) := by
  rw [input12681_def, output12681_def]
  kernel_rfl

theorem node12682_cond_eq
    (child12680 : Flapjack.WordAlloc.removeDeadStructural input12680 value6345 value1 value2 = (output12680, value6346, value1))
    (child12681 : Flapjack.WordAlloc.removeDeadStructural input12681 value6346 value1 value2 = (output12681, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12682 value6345 value1 value2 = (output12682, value5, value1) := by
  rw [input12682_def, output12682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12680]
  dsimp only
  rw [child12681]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12680_skip, output12681_skip]
  kernel_rfl

theorem node12683_cond_eq
    (child12679 : Flapjack.WordAlloc.removeDeadStructural input12679 value6344 value1 value2 = (output12679, value6345, value1))
    (child12682 : Flapjack.WordAlloc.removeDeadStructural input12682 value6345 value1 value2 = (output12682, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12683 value6344 value1 value2 = (output12683, value5, value1) := by
  rw [input12683_def, output12683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12679]
  dsimp only
  rw [child12682]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12679_skip, output12682_skip]
  kernel_rfl

theorem node12684_cond_eq
    (child12678 : Flapjack.WordAlloc.removeDeadStructural input12678 value6343 value1 value2 = (output12678, value6344, value1))
    (child12683 : Flapjack.WordAlloc.removeDeadStructural input12683 value6344 value1 value2 = (output12683, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12684 value6343 value1 value2 = (output12684, value5, value1) := by
  rw [input12684_def, output12684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12678]
  dsimp only
  rw [child12683]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12678_skip, output12683_skip]
  kernel_rfl

theorem node12685_cond_eq
    (child12677 : Flapjack.WordAlloc.removeDeadStructural input12677 value6342 value1 value2 = (output12677, value6343, value1))
    (child12684 : Flapjack.WordAlloc.removeDeadStructural input12684 value6343 value1 value2 = (output12684, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12685 value6342 value1 value2 = (output12685, value5, value1) := by
  rw [input12685_def, output12685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12677]
  dsimp only
  rw [child12684]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12677_skip, output12684_skip]
  kernel_rfl

theorem node12686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12686 value5 value1 value2 = (output12686, value6347, value1) := by
  rw [input12686_def, output12686_def]
  kernel_rfl

theorem node12687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12687 value6347 value1 value2 = (output12687, value6348, value1) := by
  rw [input12687_def, output12687_def]
  kernel_rfl

theorem node12688_cond_eq
    (child12686 : Flapjack.WordAlloc.removeDeadStructural input12686 value5 value1 value2 = (output12686, value6347, value1))
    (child12687 : Flapjack.WordAlloc.removeDeadStructural input12687 value6347 value1 value2 = (output12687, value6348, value1)) : Flapjack.WordAlloc.removeDeadStructural input12688 value5 value1 value2 = (output12688, value6348, value1) := by
  rw [input12688_def, output12688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12686]
  dsimp only
  rw [child12687]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12686_skip, output12687_skip]
  kernel_rfl

theorem node12689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12689 value6348 value1 value2 = (output12689, value6349, value1) := by
  rw [input12689_def, output12689_def]
  kernel_rfl

theorem node12690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12690 value6349 value1 value2 = (output12690, value6349, value1) := by
  rw [input12690_def, output12690_def]
  kernel_rfl

theorem node12691_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12691 value6349 value1 value2 = (output12691, value6350, value1) := by
  rw [input12691_def, output12691_def]
  kernel_rfl

theorem node12692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12692 value6350 value1 value2 = (output12692, value6351, value1) := by
  rw [input12692_def, output12692_def]
  kernel_rfl

theorem node12693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12693 value6351 value1 value2 = (output12693, value6352, value1) := by
  rw [input12693_def, output12693_def]
  kernel_rfl

theorem node12694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12694 value6352 value1 value2 = (output12694, value6353, value1) := by
  rw [input12694_def, output12694_def]
  kernel_rfl

theorem node12695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12695 value6353 value1 value2 = (output12695, value5, value1) := by
  rw [input12695_def, output12695_def]
  kernel_rfl

theorem node12696_cond_eq
    (child12694 : Flapjack.WordAlloc.removeDeadStructural input12694 value6352 value1 value2 = (output12694, value6353, value1))
    (child12695 : Flapjack.WordAlloc.removeDeadStructural input12695 value6353 value1 value2 = (output12695, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12696 value6352 value1 value2 = (output12696, value5, value1) := by
  rw [input12696_def, output12696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12694]
  dsimp only
  rw [child12695]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12694_skip, output12695_skip]
  kernel_rfl

theorem node12697_cond_eq
    (child12693 : Flapjack.WordAlloc.removeDeadStructural input12693 value6351 value1 value2 = (output12693, value6352, value1))
    (child12696 : Flapjack.WordAlloc.removeDeadStructural input12696 value6352 value1 value2 = (output12696, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12697 value6351 value1 value2 = (output12697, value5, value1) := by
  rw [input12697_def, output12697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12693]
  dsimp only
  rw [child12696]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12693_skip, output12696_skip]
  kernel_rfl

theorem node12698_cond_eq
    (child12692 : Flapjack.WordAlloc.removeDeadStructural input12692 value6350 value1 value2 = (output12692, value6351, value1))
    (child12697 : Flapjack.WordAlloc.removeDeadStructural input12697 value6351 value1 value2 = (output12697, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12698 value6350 value1 value2 = (output12698, value5, value1) := by
  rw [input12698_def, output12698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12692]
  dsimp only
  rw [child12697]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12692_skip, output12697_skip]
  kernel_rfl

theorem node12699_cond_eq
    (child12691 : Flapjack.WordAlloc.removeDeadStructural input12691 value6349 value1 value2 = (output12691, value6350, value1))
    (child12698 : Flapjack.WordAlloc.removeDeadStructural input12698 value6350 value1 value2 = (output12698, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12699 value6349 value1 value2 = (output12699, value5, value1) := by
  rw [input12699_def, output12699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12691]
  dsimp only
  rw [child12698]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12691_skip, output12698_skip]
  kernel_rfl

theorem node12700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12700 value5 value1 value2 = (output12700, value6354, value1) := by
  rw [input12700_def, output12700_def]
  kernel_rfl

theorem node12701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12701 value6354 value1 value2 = (output12701, value6355, value1) := by
  rw [input12701_def, output12701_def]
  kernel_rfl

theorem node12702_cond_eq
    (child12700 : Flapjack.WordAlloc.removeDeadStructural input12700 value5 value1 value2 = (output12700, value6354, value1))
    (child12701 : Flapjack.WordAlloc.removeDeadStructural input12701 value6354 value1 value2 = (output12701, value6355, value1)) : Flapjack.WordAlloc.removeDeadStructural input12702 value5 value1 value2 = (output12702, value6355, value1) := by
  rw [input12702_def, output12702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12700]
  dsimp only
  rw [child12701]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12700_skip, output12701_skip]
  kernel_rfl

theorem node12703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12703 value6355 value1 value2 = (output12703, value6356, value1) := by
  rw [input12703_def, output12703_def]
  kernel_rfl

theorem node12704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12704 value6356 value1 value2 = (output12704, value6356, value1) := by
  rw [input12704_def, output12704_def]
  kernel_rfl

theorem node12705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12705 value6356 value1 value2 = (output12705, value6357, value1) := by
  rw [input12705_def, output12705_def]
  kernel_rfl

theorem node12706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12706 value6357 value1 value2 = (output12706, value6358, value1) := by
  rw [input12706_def, output12706_def]
  kernel_rfl

theorem node12707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12707 value6358 value1 value2 = (output12707, value6359, value1) := by
  rw [input12707_def, output12707_def]
  kernel_rfl

theorem node12708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12708 value6359 value1 value2 = (output12708, value6360, value1) := by
  rw [input12708_def, output12708_def]
  kernel_rfl

theorem node12709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12709 value6360 value1 value2 = (output12709, value5, value1) := by
  rw [input12709_def, output12709_def]
  kernel_rfl

theorem node12710_cond_eq
    (child12708 : Flapjack.WordAlloc.removeDeadStructural input12708 value6359 value1 value2 = (output12708, value6360, value1))
    (child12709 : Flapjack.WordAlloc.removeDeadStructural input12709 value6360 value1 value2 = (output12709, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12710 value6359 value1 value2 = (output12710, value5, value1) := by
  rw [input12710_def, output12710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12708]
  dsimp only
  rw [child12709]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12708_skip, output12709_skip]
  kernel_rfl

theorem node12711_cond_eq
    (child12707 : Flapjack.WordAlloc.removeDeadStructural input12707 value6358 value1 value2 = (output12707, value6359, value1))
    (child12710 : Flapjack.WordAlloc.removeDeadStructural input12710 value6359 value1 value2 = (output12710, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12711 value6358 value1 value2 = (output12711, value5, value1) := by
  rw [input12711_def, output12711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12707]
  dsimp only
  rw [child12710]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12707_skip, output12710_skip]
  kernel_rfl

theorem node12712_cond_eq
    (child12706 : Flapjack.WordAlloc.removeDeadStructural input12706 value6357 value1 value2 = (output12706, value6358, value1))
    (child12711 : Flapjack.WordAlloc.removeDeadStructural input12711 value6358 value1 value2 = (output12711, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12712 value6357 value1 value2 = (output12712, value5, value1) := by
  rw [input12712_def, output12712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12706]
  dsimp only
  rw [child12711]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12706_skip, output12711_skip]
  kernel_rfl

theorem node12713_cond_eq
    (child12705 : Flapjack.WordAlloc.removeDeadStructural input12705 value6356 value1 value2 = (output12705, value6357, value1))
    (child12712 : Flapjack.WordAlloc.removeDeadStructural input12712 value6357 value1 value2 = (output12712, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12713 value6356 value1 value2 = (output12713, value5, value1) := by
  rw [input12713_def, output12713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12705]
  dsimp only
  rw [child12712]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12705_skip, output12712_skip]
  kernel_rfl

theorem node12714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12714 value5 value1 value2 = (output12714, value6361, value1) := by
  rw [input12714_def, output12714_def]
  kernel_rfl

theorem node12715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12715 value6361 value1 value2 = (output12715, value6362, value1) := by
  rw [input12715_def, output12715_def]
  kernel_rfl

theorem node12716_cond_eq
    (child12714 : Flapjack.WordAlloc.removeDeadStructural input12714 value5 value1 value2 = (output12714, value6361, value1))
    (child12715 : Flapjack.WordAlloc.removeDeadStructural input12715 value6361 value1 value2 = (output12715, value6362, value1)) : Flapjack.WordAlloc.removeDeadStructural input12716 value5 value1 value2 = (output12716, value6362, value1) := by
  rw [input12716_def, output12716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12714]
  dsimp only
  rw [child12715]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12714_skip, output12715_skip]
  kernel_rfl

theorem node12717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12717 value6362 value1 value2 = (output12717, value6363, value1) := by
  rw [input12717_def, output12717_def]
  kernel_rfl

theorem node12718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12718 value6363 value1 value2 = (output12718, value6363, value1) := by
  rw [input12718_def, output12718_def]
  kernel_rfl

theorem node12719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12719 value6363 value1 value2 = (output12719, value6364, value1) := by
  rw [input12719_def, output12719_def]
  kernel_rfl

theorem node12720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12720 value6364 value1 value2 = (output12720, value6365, value1) := by
  rw [input12720_def, output12720_def]
  kernel_rfl

theorem node12721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12721 value6365 value1 value2 = (output12721, value6366, value1) := by
  rw [input12721_def, output12721_def]
  kernel_rfl

theorem node12722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12722 value6366 value1 value2 = (output12722, value6367, value1) := by
  rw [input12722_def, output12722_def]
  kernel_rfl

theorem node12723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12723 value6367 value1 value2 = (output12723, value5, value1) := by
  rw [input12723_def, output12723_def]
  kernel_rfl

theorem node12724_cond_eq
    (child12722 : Flapjack.WordAlloc.removeDeadStructural input12722 value6366 value1 value2 = (output12722, value6367, value1))
    (child12723 : Flapjack.WordAlloc.removeDeadStructural input12723 value6367 value1 value2 = (output12723, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12724 value6366 value1 value2 = (output12724, value5, value1) := by
  rw [input12724_def, output12724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12722]
  dsimp only
  rw [child12723]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12722_skip, output12723_skip]
  kernel_rfl

theorem node12725_cond_eq
    (child12721 : Flapjack.WordAlloc.removeDeadStructural input12721 value6365 value1 value2 = (output12721, value6366, value1))
    (child12724 : Flapjack.WordAlloc.removeDeadStructural input12724 value6366 value1 value2 = (output12724, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12725 value6365 value1 value2 = (output12725, value5, value1) := by
  rw [input12725_def, output12725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12721]
  dsimp only
  rw [child12724]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12721_skip, output12724_skip]
  kernel_rfl

theorem node12726_cond_eq
    (child12720 : Flapjack.WordAlloc.removeDeadStructural input12720 value6364 value1 value2 = (output12720, value6365, value1))
    (child12725 : Flapjack.WordAlloc.removeDeadStructural input12725 value6365 value1 value2 = (output12725, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12726 value6364 value1 value2 = (output12726, value5, value1) := by
  rw [input12726_def, output12726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12720]
  dsimp only
  rw [child12725]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12720_skip, output12725_skip]
  kernel_rfl

theorem node12727_cond_eq
    (child12719 : Flapjack.WordAlloc.removeDeadStructural input12719 value6363 value1 value2 = (output12719, value6364, value1))
    (child12726 : Flapjack.WordAlloc.removeDeadStructural input12726 value6364 value1 value2 = (output12726, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12727 value6363 value1 value2 = (output12727, value5, value1) := by
  rw [input12727_def, output12727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12719]
  dsimp only
  rw [child12726]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12719_skip, output12726_skip]
  kernel_rfl

theorem node12728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12728 value5 value1 value2 = (output12728, value6368, value1) := by
  rw [input12728_def, output12728_def]
  kernel_rfl

theorem node12729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12729 value6368 value1 value2 = (output12729, value6369, value1) := by
  rw [input12729_def, output12729_def]
  kernel_rfl

theorem node12730_cond_eq
    (child12728 : Flapjack.WordAlloc.removeDeadStructural input12728 value5 value1 value2 = (output12728, value6368, value1))
    (child12729 : Flapjack.WordAlloc.removeDeadStructural input12729 value6368 value1 value2 = (output12729, value6369, value1)) : Flapjack.WordAlloc.removeDeadStructural input12730 value5 value1 value2 = (output12730, value6369, value1) := by
  rw [input12730_def, output12730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12728]
  dsimp only
  rw [child12729]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12728_skip, output12729_skip]
  kernel_rfl

theorem node12731_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12731 value6369 value1 value2 = (output12731, value6370, value1) := by
  rw [input12731_def, output12731_def]
  kernel_rfl

theorem node12732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12732 value6370 value1 value2 = (output12732, value6370, value1) := by
  rw [input12732_def, output12732_def]
  kernel_rfl

theorem node12733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12733 value6370 value1 value2 = (output12733, value6371, value1) := by
  rw [input12733_def, output12733_def]
  kernel_rfl

theorem node12734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12734 value6371 value1 value2 = (output12734, value6372, value1) := by
  rw [input12734_def, output12734_def]
  kernel_rfl

theorem node12735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12735 value6372 value1 value2 = (output12735, value6373, value1) := by
  rw [input12735_def, output12735_def]
  kernel_rfl

theorem node12736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12736 value6373 value1 value2 = (output12736, value6374, value1) := by
  rw [input12736_def, output12736_def]
  kernel_rfl

theorem node12737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12737 value6374 value1 value2 = (output12737, value5, value1) := by
  rw [input12737_def, output12737_def]
  kernel_rfl

theorem node12738_cond_eq
    (child12736 : Flapjack.WordAlloc.removeDeadStructural input12736 value6373 value1 value2 = (output12736, value6374, value1))
    (child12737 : Flapjack.WordAlloc.removeDeadStructural input12737 value6374 value1 value2 = (output12737, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12738 value6373 value1 value2 = (output12738, value5, value1) := by
  rw [input12738_def, output12738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12736]
  dsimp only
  rw [child12737]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12736_skip, output12737_skip]
  kernel_rfl

theorem node12739_cond_eq
    (child12735 : Flapjack.WordAlloc.removeDeadStructural input12735 value6372 value1 value2 = (output12735, value6373, value1))
    (child12738 : Flapjack.WordAlloc.removeDeadStructural input12738 value6373 value1 value2 = (output12738, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12739 value6372 value1 value2 = (output12739, value5, value1) := by
  rw [input12739_def, output12739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12735]
  dsimp only
  rw [child12738]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12735_skip, output12738_skip]
  kernel_rfl

theorem node12740_cond_eq
    (child12734 : Flapjack.WordAlloc.removeDeadStructural input12734 value6371 value1 value2 = (output12734, value6372, value1))
    (child12739 : Flapjack.WordAlloc.removeDeadStructural input12739 value6372 value1 value2 = (output12739, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12740 value6371 value1 value2 = (output12740, value5, value1) := by
  rw [input12740_def, output12740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12734]
  dsimp only
  rw [child12739]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12734_skip, output12739_skip]
  kernel_rfl

theorem node12741_cond_eq
    (child12733 : Flapjack.WordAlloc.removeDeadStructural input12733 value6370 value1 value2 = (output12733, value6371, value1))
    (child12740 : Flapjack.WordAlloc.removeDeadStructural input12740 value6371 value1 value2 = (output12740, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12741 value6370 value1 value2 = (output12741, value5, value1) := by
  rw [input12741_def, output12741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12733]
  dsimp only
  rw [child12740]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12733_skip, output12740_skip]
  kernel_rfl

theorem node12742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12742 value5 value1 value2 = (output12742, value6375, value1) := by
  rw [input12742_def, output12742_def]
  kernel_rfl

theorem node12743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12743 value6375 value1 value2 = (output12743, value6376, value1) := by
  rw [input12743_def, output12743_def]
  kernel_rfl

theorem node12744_cond_eq
    (child12742 : Flapjack.WordAlloc.removeDeadStructural input12742 value5 value1 value2 = (output12742, value6375, value1))
    (child12743 : Flapjack.WordAlloc.removeDeadStructural input12743 value6375 value1 value2 = (output12743, value6376, value1)) : Flapjack.WordAlloc.removeDeadStructural input12744 value5 value1 value2 = (output12744, value6376, value1) := by
  rw [input12744_def, output12744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12742]
  dsimp only
  rw [child12743]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12742_skip, output12743_skip]
  kernel_rfl

theorem node12745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12745 value6376 value1 value2 = (output12745, value6377, value1) := by
  rw [input12745_def, output12745_def]
  kernel_rfl

theorem node12746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12746 value6377 value1 value2 = (output12746, value6377, value1) := by
  rw [input12746_def, output12746_def]
  kernel_rfl

theorem node12747_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12747 value6377 value1 value2 = (output12747, value6378, value1) := by
  rw [input12747_def, output12747_def]
  kernel_rfl

theorem node12748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12748 value6378 value1 value2 = (output12748, value6379, value1) := by
  rw [input12748_def, output12748_def]
  kernel_rfl

theorem node12749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12749 value6379 value1 value2 = (output12749, value6380, value1) := by
  rw [input12749_def, output12749_def]
  kernel_rfl

theorem node12750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12750 value6380 value1 value2 = (output12750, value6381, value1) := by
  rw [input12750_def, output12750_def]
  kernel_rfl

theorem node12751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12751 value6381 value1 value2 = (output12751, value5, value1) := by
  rw [input12751_def, output12751_def]
  kernel_rfl

theorem node12752_cond_eq
    (child12750 : Flapjack.WordAlloc.removeDeadStructural input12750 value6380 value1 value2 = (output12750, value6381, value1))
    (child12751 : Flapjack.WordAlloc.removeDeadStructural input12751 value6381 value1 value2 = (output12751, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12752 value6380 value1 value2 = (output12752, value5, value1) := by
  rw [input12752_def, output12752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12750]
  dsimp only
  rw [child12751]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12750_skip, output12751_skip]
  kernel_rfl

theorem node12753_cond_eq
    (child12749 : Flapjack.WordAlloc.removeDeadStructural input12749 value6379 value1 value2 = (output12749, value6380, value1))
    (child12752 : Flapjack.WordAlloc.removeDeadStructural input12752 value6380 value1 value2 = (output12752, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12753 value6379 value1 value2 = (output12753, value5, value1) := by
  rw [input12753_def, output12753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12749]
  dsimp only
  rw [child12752]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12749_skip, output12752_skip]
  kernel_rfl

theorem node12754_cond_eq
    (child12748 : Flapjack.WordAlloc.removeDeadStructural input12748 value6378 value1 value2 = (output12748, value6379, value1))
    (child12753 : Flapjack.WordAlloc.removeDeadStructural input12753 value6379 value1 value2 = (output12753, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12754 value6378 value1 value2 = (output12754, value5, value1) := by
  rw [input12754_def, output12754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12748]
  dsimp only
  rw [child12753]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12748_skip, output12753_skip]
  kernel_rfl

theorem node12755_cond_eq
    (child12747 : Flapjack.WordAlloc.removeDeadStructural input12747 value6377 value1 value2 = (output12747, value6378, value1))
    (child12754 : Flapjack.WordAlloc.removeDeadStructural input12754 value6378 value1 value2 = (output12754, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12755 value6377 value1 value2 = (output12755, value5, value1) := by
  rw [input12755_def, output12755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12747]
  dsimp only
  rw [child12754]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12747_skip, output12754_skip]
  kernel_rfl

theorem node12756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12756 value5 value1 value2 = (output12756, value6382, value1) := by
  rw [input12756_def, output12756_def]
  kernel_rfl

theorem node12757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12757 value6382 value1 value2 = (output12757, value6383, value1) := by
  rw [input12757_def, output12757_def]
  kernel_rfl

theorem node12758_cond_eq
    (child12756 : Flapjack.WordAlloc.removeDeadStructural input12756 value5 value1 value2 = (output12756, value6382, value1))
    (child12757 : Flapjack.WordAlloc.removeDeadStructural input12757 value6382 value1 value2 = (output12757, value6383, value1)) : Flapjack.WordAlloc.removeDeadStructural input12758 value5 value1 value2 = (output12758, value6383, value1) := by
  rw [input12758_def, output12758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12756]
  dsimp only
  rw [child12757]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12756_skip, output12757_skip]
  kernel_rfl

theorem node12759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12759 value6383 value1 value2 = (output12759, value6384, value1) := by
  rw [input12759_def, output12759_def]
  kernel_rfl

theorem node12760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12760 value6384 value1 value2 = (output12760, value6384, value1) := by
  rw [input12760_def, output12760_def]
  kernel_rfl

theorem node12761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12761 value6384 value1 value2 = (output12761, value6385, value1) := by
  rw [input12761_def, output12761_def]
  kernel_rfl

theorem node12762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12762 value6385 value1 value2 = (output12762, value6386, value1) := by
  rw [input12762_def, output12762_def]
  kernel_rfl

theorem node12763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12763 value6386 value1 value2 = (output12763, value6387, value1) := by
  rw [input12763_def, output12763_def]
  kernel_rfl

theorem node12764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12764 value6387 value1 value2 = (output12764, value6388, value1) := by
  rw [input12764_def, output12764_def]
  kernel_rfl

theorem node12765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12765 value6388 value1 value2 = (output12765, value5, value1) := by
  rw [input12765_def, output12765_def]
  kernel_rfl

theorem node12766_cond_eq
    (child12764 : Flapjack.WordAlloc.removeDeadStructural input12764 value6387 value1 value2 = (output12764, value6388, value1))
    (child12765 : Flapjack.WordAlloc.removeDeadStructural input12765 value6388 value1 value2 = (output12765, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12766 value6387 value1 value2 = (output12766, value5, value1) := by
  rw [input12766_def, output12766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12764]
  dsimp only
  rw [child12765]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12764_skip, output12765_skip]
  kernel_rfl

theorem node12767_cond_eq
    (child12763 : Flapjack.WordAlloc.removeDeadStructural input12763 value6386 value1 value2 = (output12763, value6387, value1))
    (child12766 : Flapjack.WordAlloc.removeDeadStructural input12766 value6387 value1 value2 = (output12766, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12767 value6386 value1 value2 = (output12767, value5, value1) := by
  rw [input12767_def, output12767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12763]
  dsimp only
  rw [child12766]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12763_skip, output12766_skip]
  kernel_rfl

theorem node12768_cond_eq
    (child12762 : Flapjack.WordAlloc.removeDeadStructural input12762 value6385 value1 value2 = (output12762, value6386, value1))
    (child12767 : Flapjack.WordAlloc.removeDeadStructural input12767 value6386 value1 value2 = (output12767, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12768 value6385 value1 value2 = (output12768, value5, value1) := by
  rw [input12768_def, output12768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12762]
  dsimp only
  rw [child12767]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12762_skip, output12767_skip]
  kernel_rfl

theorem node12769_cond_eq
    (child12761 : Flapjack.WordAlloc.removeDeadStructural input12761 value6384 value1 value2 = (output12761, value6385, value1))
    (child12768 : Flapjack.WordAlloc.removeDeadStructural input12768 value6385 value1 value2 = (output12768, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12769 value6384 value1 value2 = (output12769, value5, value1) := by
  rw [input12769_def, output12769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12761]
  dsimp only
  rw [child12768]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12761_skip, output12768_skip]
  kernel_rfl

theorem node12770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12770 value5 value1 value2 = (output12770, value6389, value1) := by
  rw [input12770_def, output12770_def]
  kernel_rfl

theorem node12771_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12771 value6389 value1 value2 = (output12771, value6390, value1) := by
  rw [input12771_def, output12771_def]
  kernel_rfl

theorem node12772_cond_eq
    (child12770 : Flapjack.WordAlloc.removeDeadStructural input12770 value5 value1 value2 = (output12770, value6389, value1))
    (child12771 : Flapjack.WordAlloc.removeDeadStructural input12771 value6389 value1 value2 = (output12771, value6390, value1)) : Flapjack.WordAlloc.removeDeadStructural input12772 value5 value1 value2 = (output12772, value6390, value1) := by
  rw [input12772_def, output12772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12770]
  dsimp only
  rw [child12771]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12770_skip, output12771_skip]
  kernel_rfl

theorem node12773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12773 value6390 value1 value2 = (output12773, value6391, value1) := by
  rw [input12773_def, output12773_def]
  kernel_rfl

theorem node12774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12774 value6391 value1 value2 = (output12774, value6391, value1) := by
  rw [input12774_def, output12774_def]
  kernel_rfl

theorem node12775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12775 value6391 value1 value2 = (output12775, value6392, value1) := by
  rw [input12775_def, output12775_def]
  kernel_rfl

theorem node12776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12776 value6392 value1 value2 = (output12776, value6393, value1) := by
  rw [input12776_def, output12776_def]
  kernel_rfl

theorem node12777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12777 value6393 value1 value2 = (output12777, value6394, value1) := by
  rw [input12777_def, output12777_def]
  kernel_rfl

theorem node12778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12778 value6394 value1 value2 = (output12778, value6395, value1) := by
  rw [input12778_def, output12778_def]
  kernel_rfl

theorem node12779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12779 value6395 value1 value2 = (output12779, value5, value1) := by
  rw [input12779_def, output12779_def]
  kernel_rfl

theorem node12780_cond_eq
    (child12778 : Flapjack.WordAlloc.removeDeadStructural input12778 value6394 value1 value2 = (output12778, value6395, value1))
    (child12779 : Flapjack.WordAlloc.removeDeadStructural input12779 value6395 value1 value2 = (output12779, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12780 value6394 value1 value2 = (output12780, value5, value1) := by
  rw [input12780_def, output12780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12778]
  dsimp only
  rw [child12779]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12778_skip, output12779_skip]
  kernel_rfl

theorem node12781_cond_eq
    (child12777 : Flapjack.WordAlloc.removeDeadStructural input12777 value6393 value1 value2 = (output12777, value6394, value1))
    (child12780 : Flapjack.WordAlloc.removeDeadStructural input12780 value6394 value1 value2 = (output12780, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12781 value6393 value1 value2 = (output12781, value5, value1) := by
  rw [input12781_def, output12781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12777]
  dsimp only
  rw [child12780]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12777_skip, output12780_skip]
  kernel_rfl

theorem node12782_cond_eq
    (child12776 : Flapjack.WordAlloc.removeDeadStructural input12776 value6392 value1 value2 = (output12776, value6393, value1))
    (child12781 : Flapjack.WordAlloc.removeDeadStructural input12781 value6393 value1 value2 = (output12781, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12782 value6392 value1 value2 = (output12782, value5, value1) := by
  rw [input12782_def, output12782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12776]
  dsimp only
  rw [child12781]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12776_skip, output12781_skip]
  kernel_rfl

theorem node12783_cond_eq
    (child12775 : Flapjack.WordAlloc.removeDeadStructural input12775 value6391 value1 value2 = (output12775, value6392, value1))
    (child12782 : Flapjack.WordAlloc.removeDeadStructural input12782 value6392 value1 value2 = (output12782, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12783 value6391 value1 value2 = (output12783, value5, value1) := by
  rw [input12783_def, output12783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12775]
  dsimp only
  rw [child12782]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12775_skip, output12782_skip]
  kernel_rfl

theorem node12784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12784 value5 value1 value2 = (output12784, value6396, value1) := by
  rw [input12784_def, output12784_def]
  kernel_rfl

theorem node12785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12785 value6396 value1 value2 = (output12785, value6397, value1) := by
  rw [input12785_def, output12785_def]
  kernel_rfl

theorem node12786_cond_eq
    (child12784 : Flapjack.WordAlloc.removeDeadStructural input12784 value5 value1 value2 = (output12784, value6396, value1))
    (child12785 : Flapjack.WordAlloc.removeDeadStructural input12785 value6396 value1 value2 = (output12785, value6397, value1)) : Flapjack.WordAlloc.removeDeadStructural input12786 value5 value1 value2 = (output12786, value6397, value1) := by
  rw [input12786_def, output12786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12784]
  dsimp only
  rw [child12785]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12784_skip, output12785_skip]
  kernel_rfl

theorem node12787_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12787 value6397 value1 value2 = (output12787, value6398, value1) := by
  rw [input12787_def, output12787_def]
  kernel_rfl

theorem node12788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12788 value6398 value1 value2 = (output12788, value6398, value1) := by
  rw [input12788_def, output12788_def]
  kernel_rfl

theorem node12789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12789 value6398 value1 value2 = (output12789, value6399, value1) := by
  rw [input12789_def, output12789_def]
  kernel_rfl

theorem node12790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12790 value6399 value1 value2 = (output12790, value6400, value1) := by
  rw [input12790_def, output12790_def]
  kernel_rfl

theorem node12791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12791 value6400 value1 value2 = (output12791, value6401, value1) := by
  rw [input12791_def, output12791_def]
  kernel_rfl

theorem node12792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12792 value6401 value1 value2 = (output12792, value6402, value1) := by
  rw [input12792_def, output12792_def]
  kernel_rfl

theorem node12793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12793 value6402 value1 value2 = (output12793, value5, value1) := by
  rw [input12793_def, output12793_def]
  kernel_rfl

theorem node12794_cond_eq
    (child12792 : Flapjack.WordAlloc.removeDeadStructural input12792 value6401 value1 value2 = (output12792, value6402, value1))
    (child12793 : Flapjack.WordAlloc.removeDeadStructural input12793 value6402 value1 value2 = (output12793, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12794 value6401 value1 value2 = (output12794, value5, value1) := by
  rw [input12794_def, output12794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12792]
  dsimp only
  rw [child12793]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12792_skip, output12793_skip]
  kernel_rfl

theorem node12795_cond_eq
    (child12791 : Flapjack.WordAlloc.removeDeadStructural input12791 value6400 value1 value2 = (output12791, value6401, value1))
    (child12794 : Flapjack.WordAlloc.removeDeadStructural input12794 value6401 value1 value2 = (output12794, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12795 value6400 value1 value2 = (output12795, value5, value1) := by
  rw [input12795_def, output12795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12791]
  dsimp only
  rw [child12794]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12791_skip, output12794_skip]
  kernel_rfl

theorem node12796_cond_eq
    (child12790 : Flapjack.WordAlloc.removeDeadStructural input12790 value6399 value1 value2 = (output12790, value6400, value1))
    (child12795 : Flapjack.WordAlloc.removeDeadStructural input12795 value6400 value1 value2 = (output12795, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12796 value6399 value1 value2 = (output12796, value5, value1) := by
  rw [input12796_def, output12796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12790]
  dsimp only
  rw [child12795]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12790_skip, output12795_skip]
  kernel_rfl

theorem node12797_cond_eq
    (child12789 : Flapjack.WordAlloc.removeDeadStructural input12789 value6398 value1 value2 = (output12789, value6399, value1))
    (child12796 : Flapjack.WordAlloc.removeDeadStructural input12796 value6399 value1 value2 = (output12796, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12797 value6398 value1 value2 = (output12797, value5, value1) := by
  rw [input12797_def, output12797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12789]
  dsimp only
  rw [child12796]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12789_skip, output12796_skip]
  kernel_rfl

theorem node12798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12798 value5 value1 value2 = (output12798, value6403, value1) := by
  rw [input12798_def, output12798_def]
  kernel_rfl

theorem node12799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12799 value6403 value1 value2 = (output12799, value6404, value1) := by
  rw [input12799_def, output12799_def]
  kernel_rfl

#print axioms node12799_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
