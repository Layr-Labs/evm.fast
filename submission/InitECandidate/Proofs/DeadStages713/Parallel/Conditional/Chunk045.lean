import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk045
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node11520_cond_eq
    (child11518 : Flapjack.WordAlloc.removeDeadStructural input11518 value5764 value1 value2 = (output11518, value5765, value1))
    (child11519 : Flapjack.WordAlloc.removeDeadStructural input11519 value5765 value1 value2 = (output11519, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11520 value5764 value1 value2 = (output11520, value5, value1) := by
  rw [input11520_def, output11520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11518]
  dsimp only
  rw [child11519]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11518_skip, output11519_skip]
  kernel_rfl

theorem node11521_cond_eq
    (child11517 : Flapjack.WordAlloc.removeDeadStructural input11517 value5763 value1 value2 = (output11517, value5764, value1))
    (child11520 : Flapjack.WordAlloc.removeDeadStructural input11520 value5764 value1 value2 = (output11520, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11521 value5763 value1 value2 = (output11521, value5, value1) := by
  rw [input11521_def, output11521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11517]
  dsimp only
  rw [child11520]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11517_skip, output11520_skip]
  kernel_rfl

theorem node11522_cond_eq
    (child11516 : Flapjack.WordAlloc.removeDeadStructural input11516 value5762 value1 value2 = (output11516, value5763, value1))
    (child11521 : Flapjack.WordAlloc.removeDeadStructural input11521 value5763 value1 value2 = (output11521, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11522 value5762 value1 value2 = (output11522, value5, value1) := by
  rw [input11522_def, output11522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11516]
  dsimp only
  rw [child11521]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11516_skip, output11521_skip]
  kernel_rfl

theorem node11523_cond_eq
    (child11515 : Flapjack.WordAlloc.removeDeadStructural input11515 value5761 value1 value2 = (output11515, value5762, value1))
    (child11522 : Flapjack.WordAlloc.removeDeadStructural input11522 value5762 value1 value2 = (output11522, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11523 value5761 value1 value2 = (output11523, value5, value1) := by
  rw [input11523_def, output11523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11515]
  dsimp only
  rw [child11522]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11515_skip, output11522_skip]
  kernel_rfl

theorem node11524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11524 value5 value1 value2 = (output11524, value5766, value1) := by
  rw [input11524_def, output11524_def]
  kernel_rfl

theorem node11525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11525 value5766 value1 value2 = (output11525, value5767, value1) := by
  rw [input11525_def, output11525_def]
  kernel_rfl

theorem node11526_cond_eq
    (child11524 : Flapjack.WordAlloc.removeDeadStructural input11524 value5 value1 value2 = (output11524, value5766, value1))
    (child11525 : Flapjack.WordAlloc.removeDeadStructural input11525 value5766 value1 value2 = (output11525, value5767, value1)) : Flapjack.WordAlloc.removeDeadStructural input11526 value5 value1 value2 = (output11526, value5767, value1) := by
  rw [input11526_def, output11526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11524]
  dsimp only
  rw [child11525]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11524_skip, output11525_skip]
  kernel_rfl

theorem node11527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11527 value5767 value1 value2 = (output11527, value5768, value1) := by
  rw [input11527_def, output11527_def]
  kernel_rfl

theorem node11528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11528 value5768 value1 value2 = (output11528, value5768, value1) := by
  rw [input11528_def, output11528_def]
  kernel_rfl

theorem node11529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11529 value5768 value1 value2 = (output11529, value5769, value1) := by
  rw [input11529_def, output11529_def]
  kernel_rfl

theorem node11530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11530 value5769 value1 value2 = (output11530, value5770, value1) := by
  rw [input11530_def, output11530_def]
  kernel_rfl

theorem node11531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11531 value5770 value1 value2 = (output11531, value5771, value1) := by
  rw [input11531_def, output11531_def]
  kernel_rfl

theorem node11532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11532 value5771 value1 value2 = (output11532, value5772, value1) := by
  rw [input11532_def, output11532_def]
  kernel_rfl

theorem node11533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11533 value5772 value1 value2 = (output11533, value5, value1) := by
  rw [input11533_def, output11533_def]
  kernel_rfl

theorem node11534_cond_eq
    (child11532 : Flapjack.WordAlloc.removeDeadStructural input11532 value5771 value1 value2 = (output11532, value5772, value1))
    (child11533 : Flapjack.WordAlloc.removeDeadStructural input11533 value5772 value1 value2 = (output11533, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11534 value5771 value1 value2 = (output11534, value5, value1) := by
  rw [input11534_def, output11534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11532]
  dsimp only
  rw [child11533]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11532_skip, output11533_skip]
  kernel_rfl

theorem node11535_cond_eq
    (child11531 : Flapjack.WordAlloc.removeDeadStructural input11531 value5770 value1 value2 = (output11531, value5771, value1))
    (child11534 : Flapjack.WordAlloc.removeDeadStructural input11534 value5771 value1 value2 = (output11534, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11535 value5770 value1 value2 = (output11535, value5, value1) := by
  rw [input11535_def, output11535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11531]
  dsimp only
  rw [child11534]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11531_skip, output11534_skip]
  kernel_rfl

theorem node11536_cond_eq
    (child11530 : Flapjack.WordAlloc.removeDeadStructural input11530 value5769 value1 value2 = (output11530, value5770, value1))
    (child11535 : Flapjack.WordAlloc.removeDeadStructural input11535 value5770 value1 value2 = (output11535, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11536 value5769 value1 value2 = (output11536, value5, value1) := by
  rw [input11536_def, output11536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11530]
  dsimp only
  rw [child11535]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11530_skip, output11535_skip]
  kernel_rfl

theorem node11537_cond_eq
    (child11529 : Flapjack.WordAlloc.removeDeadStructural input11529 value5768 value1 value2 = (output11529, value5769, value1))
    (child11536 : Flapjack.WordAlloc.removeDeadStructural input11536 value5769 value1 value2 = (output11536, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11537 value5768 value1 value2 = (output11537, value5, value1) := by
  rw [input11537_def, output11537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11529]
  dsimp only
  rw [child11536]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11529_skip, output11536_skip]
  kernel_rfl

theorem node11538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11538 value5 value1 value2 = (output11538, value5773, value1) := by
  rw [input11538_def, output11538_def]
  kernel_rfl

theorem node11539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11539 value5773 value1 value2 = (output11539, value5774, value1) := by
  rw [input11539_def, output11539_def]
  kernel_rfl

theorem node11540_cond_eq
    (child11538 : Flapjack.WordAlloc.removeDeadStructural input11538 value5 value1 value2 = (output11538, value5773, value1))
    (child11539 : Flapjack.WordAlloc.removeDeadStructural input11539 value5773 value1 value2 = (output11539, value5774, value1)) : Flapjack.WordAlloc.removeDeadStructural input11540 value5 value1 value2 = (output11540, value5774, value1) := by
  rw [input11540_def, output11540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11538]
  dsimp only
  rw [child11539]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11538_skip, output11539_skip]
  kernel_rfl

theorem node11541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11541 value5774 value1 value2 = (output11541, value5775, value1) := by
  rw [input11541_def, output11541_def]
  kernel_rfl

theorem node11542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11542 value5775 value1 value2 = (output11542, value5775, value1) := by
  rw [input11542_def, output11542_def]
  kernel_rfl

theorem node11543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11543 value5775 value1 value2 = (output11543, value5776, value1) := by
  rw [input11543_def, output11543_def]
  kernel_rfl

theorem node11544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11544 value5776 value1 value2 = (output11544, value5777, value1) := by
  rw [input11544_def, output11544_def]
  kernel_rfl

theorem node11545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11545 value5777 value1 value2 = (output11545, value5778, value1) := by
  rw [input11545_def, output11545_def]
  kernel_rfl

theorem node11546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11546 value5778 value1 value2 = (output11546, value5779, value1) := by
  rw [input11546_def, output11546_def]
  kernel_rfl

theorem node11547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11547 value5779 value1 value2 = (output11547, value5, value1) := by
  rw [input11547_def, output11547_def]
  kernel_rfl

theorem node11548_cond_eq
    (child11546 : Flapjack.WordAlloc.removeDeadStructural input11546 value5778 value1 value2 = (output11546, value5779, value1))
    (child11547 : Flapjack.WordAlloc.removeDeadStructural input11547 value5779 value1 value2 = (output11547, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11548 value5778 value1 value2 = (output11548, value5, value1) := by
  rw [input11548_def, output11548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11546]
  dsimp only
  rw [child11547]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11546_skip, output11547_skip]
  kernel_rfl

theorem node11549_cond_eq
    (child11545 : Flapjack.WordAlloc.removeDeadStructural input11545 value5777 value1 value2 = (output11545, value5778, value1))
    (child11548 : Flapjack.WordAlloc.removeDeadStructural input11548 value5778 value1 value2 = (output11548, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11549 value5777 value1 value2 = (output11549, value5, value1) := by
  rw [input11549_def, output11549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11545]
  dsimp only
  rw [child11548]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11545_skip, output11548_skip]
  kernel_rfl

theorem node11550_cond_eq
    (child11544 : Flapjack.WordAlloc.removeDeadStructural input11544 value5776 value1 value2 = (output11544, value5777, value1))
    (child11549 : Flapjack.WordAlloc.removeDeadStructural input11549 value5777 value1 value2 = (output11549, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11550 value5776 value1 value2 = (output11550, value5, value1) := by
  rw [input11550_def, output11550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11544]
  dsimp only
  rw [child11549]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11544_skip, output11549_skip]
  kernel_rfl

theorem node11551_cond_eq
    (child11543 : Flapjack.WordAlloc.removeDeadStructural input11543 value5775 value1 value2 = (output11543, value5776, value1))
    (child11550 : Flapjack.WordAlloc.removeDeadStructural input11550 value5776 value1 value2 = (output11550, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11551 value5775 value1 value2 = (output11551, value5, value1) := by
  rw [input11551_def, output11551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11543]
  dsimp only
  rw [child11550]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11543_skip, output11550_skip]
  kernel_rfl

theorem node11552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11552 value5 value1 value2 = (output11552, value5780, value1) := by
  rw [input11552_def, output11552_def]
  kernel_rfl

theorem node11553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11553 value5780 value1 value2 = (output11553, value5781, value1) := by
  rw [input11553_def, output11553_def]
  kernel_rfl

theorem node11554_cond_eq
    (child11552 : Flapjack.WordAlloc.removeDeadStructural input11552 value5 value1 value2 = (output11552, value5780, value1))
    (child11553 : Flapjack.WordAlloc.removeDeadStructural input11553 value5780 value1 value2 = (output11553, value5781, value1)) : Flapjack.WordAlloc.removeDeadStructural input11554 value5 value1 value2 = (output11554, value5781, value1) := by
  rw [input11554_def, output11554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11552]
  dsimp only
  rw [child11553]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11552_skip, output11553_skip]
  kernel_rfl

theorem node11555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11555 value5781 value1 value2 = (output11555, value5782, value1) := by
  rw [input11555_def, output11555_def]
  kernel_rfl

theorem node11556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11556 value5782 value1 value2 = (output11556, value5782, value1) := by
  rw [input11556_def, output11556_def]
  kernel_rfl

theorem node11557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11557 value5782 value1 value2 = (output11557, value5783, value1) := by
  rw [input11557_def, output11557_def]
  kernel_rfl

theorem node11558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11558 value5783 value1 value2 = (output11558, value5784, value1) := by
  rw [input11558_def, output11558_def]
  kernel_rfl

theorem node11559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11559 value5784 value1 value2 = (output11559, value5785, value1) := by
  rw [input11559_def, output11559_def]
  kernel_rfl

theorem node11560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11560 value5785 value1 value2 = (output11560, value5786, value1) := by
  rw [input11560_def, output11560_def]
  kernel_rfl

theorem node11561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11561 value5786 value1 value2 = (output11561, value5, value1) := by
  rw [input11561_def, output11561_def]
  kernel_rfl

theorem node11562_cond_eq
    (child11560 : Flapjack.WordAlloc.removeDeadStructural input11560 value5785 value1 value2 = (output11560, value5786, value1))
    (child11561 : Flapjack.WordAlloc.removeDeadStructural input11561 value5786 value1 value2 = (output11561, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11562 value5785 value1 value2 = (output11562, value5, value1) := by
  rw [input11562_def, output11562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11560]
  dsimp only
  rw [child11561]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11560_skip, output11561_skip]
  kernel_rfl

theorem node11563_cond_eq
    (child11559 : Flapjack.WordAlloc.removeDeadStructural input11559 value5784 value1 value2 = (output11559, value5785, value1))
    (child11562 : Flapjack.WordAlloc.removeDeadStructural input11562 value5785 value1 value2 = (output11562, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11563 value5784 value1 value2 = (output11563, value5, value1) := by
  rw [input11563_def, output11563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11559]
  dsimp only
  rw [child11562]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11559_skip, output11562_skip]
  kernel_rfl

theorem node11564_cond_eq
    (child11558 : Flapjack.WordAlloc.removeDeadStructural input11558 value5783 value1 value2 = (output11558, value5784, value1))
    (child11563 : Flapjack.WordAlloc.removeDeadStructural input11563 value5784 value1 value2 = (output11563, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11564 value5783 value1 value2 = (output11564, value5, value1) := by
  rw [input11564_def, output11564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11558]
  dsimp only
  rw [child11563]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11558_skip, output11563_skip]
  kernel_rfl

theorem node11565_cond_eq
    (child11557 : Flapjack.WordAlloc.removeDeadStructural input11557 value5782 value1 value2 = (output11557, value5783, value1))
    (child11564 : Flapjack.WordAlloc.removeDeadStructural input11564 value5783 value1 value2 = (output11564, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11565 value5782 value1 value2 = (output11565, value5, value1) := by
  rw [input11565_def, output11565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11557]
  dsimp only
  rw [child11564]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11557_skip, output11564_skip]
  kernel_rfl

theorem node11566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11566 value5 value1 value2 = (output11566, value5787, value1) := by
  rw [input11566_def, output11566_def]
  kernel_rfl

theorem node11567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11567 value5787 value1 value2 = (output11567, value5788, value1) := by
  rw [input11567_def, output11567_def]
  kernel_rfl

theorem node11568_cond_eq
    (child11566 : Flapjack.WordAlloc.removeDeadStructural input11566 value5 value1 value2 = (output11566, value5787, value1))
    (child11567 : Flapjack.WordAlloc.removeDeadStructural input11567 value5787 value1 value2 = (output11567, value5788, value1)) : Flapjack.WordAlloc.removeDeadStructural input11568 value5 value1 value2 = (output11568, value5788, value1) := by
  rw [input11568_def, output11568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11566]
  dsimp only
  rw [child11567]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11566_skip, output11567_skip]
  kernel_rfl

theorem node11569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11569 value5788 value1 value2 = (output11569, value5789, value1) := by
  rw [input11569_def, output11569_def]
  kernel_rfl

theorem node11570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11570 value5789 value1 value2 = (output11570, value5789, value1) := by
  rw [input11570_def, output11570_def]
  kernel_rfl

theorem node11571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11571 value5789 value1 value2 = (output11571, value5790, value1) := by
  rw [input11571_def, output11571_def]
  kernel_rfl

theorem node11572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11572 value5790 value1 value2 = (output11572, value5791, value1) := by
  rw [input11572_def, output11572_def]
  kernel_rfl

theorem node11573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11573 value5791 value1 value2 = (output11573, value5792, value1) := by
  rw [input11573_def, output11573_def]
  kernel_rfl

theorem node11574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11574 value5792 value1 value2 = (output11574, value5793, value1) := by
  rw [input11574_def, output11574_def]
  kernel_rfl

theorem node11575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11575 value5793 value1 value2 = (output11575, value5, value1) := by
  rw [input11575_def, output11575_def]
  kernel_rfl

theorem node11576_cond_eq
    (child11574 : Flapjack.WordAlloc.removeDeadStructural input11574 value5792 value1 value2 = (output11574, value5793, value1))
    (child11575 : Flapjack.WordAlloc.removeDeadStructural input11575 value5793 value1 value2 = (output11575, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11576 value5792 value1 value2 = (output11576, value5, value1) := by
  rw [input11576_def, output11576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11574]
  dsimp only
  rw [child11575]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11574_skip, output11575_skip]
  kernel_rfl

theorem node11577_cond_eq
    (child11573 : Flapjack.WordAlloc.removeDeadStructural input11573 value5791 value1 value2 = (output11573, value5792, value1))
    (child11576 : Flapjack.WordAlloc.removeDeadStructural input11576 value5792 value1 value2 = (output11576, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11577 value5791 value1 value2 = (output11577, value5, value1) := by
  rw [input11577_def, output11577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11573]
  dsimp only
  rw [child11576]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11573_skip, output11576_skip]
  kernel_rfl

theorem node11578_cond_eq
    (child11572 : Flapjack.WordAlloc.removeDeadStructural input11572 value5790 value1 value2 = (output11572, value5791, value1))
    (child11577 : Flapjack.WordAlloc.removeDeadStructural input11577 value5791 value1 value2 = (output11577, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11578 value5790 value1 value2 = (output11578, value5, value1) := by
  rw [input11578_def, output11578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11572]
  dsimp only
  rw [child11577]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11572_skip, output11577_skip]
  kernel_rfl

theorem node11579_cond_eq
    (child11571 : Flapjack.WordAlloc.removeDeadStructural input11571 value5789 value1 value2 = (output11571, value5790, value1))
    (child11578 : Flapjack.WordAlloc.removeDeadStructural input11578 value5790 value1 value2 = (output11578, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11579 value5789 value1 value2 = (output11579, value5, value1) := by
  rw [input11579_def, output11579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11571]
  dsimp only
  rw [child11578]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11571_skip, output11578_skip]
  kernel_rfl

theorem node11580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11580 value5 value1 value2 = (output11580, value5794, value1) := by
  rw [input11580_def, output11580_def]
  kernel_rfl

theorem node11581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11581 value5794 value1 value2 = (output11581, value5795, value1) := by
  rw [input11581_def, output11581_def]
  kernel_rfl

theorem node11582_cond_eq
    (child11580 : Flapjack.WordAlloc.removeDeadStructural input11580 value5 value1 value2 = (output11580, value5794, value1))
    (child11581 : Flapjack.WordAlloc.removeDeadStructural input11581 value5794 value1 value2 = (output11581, value5795, value1)) : Flapjack.WordAlloc.removeDeadStructural input11582 value5 value1 value2 = (output11582, value5795, value1) := by
  rw [input11582_def, output11582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11580]
  dsimp only
  rw [child11581]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11580_skip, output11581_skip]
  kernel_rfl

theorem node11583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11583 value5795 value1 value2 = (output11583, value5796, value1) := by
  rw [input11583_def, output11583_def]
  kernel_rfl

theorem node11584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11584 value5796 value1 value2 = (output11584, value5796, value1) := by
  rw [input11584_def, output11584_def]
  kernel_rfl

theorem node11585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11585 value5796 value1 value2 = (output11585, value5797, value1) := by
  rw [input11585_def, output11585_def]
  kernel_rfl

theorem node11586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11586 value5797 value1 value2 = (output11586, value5798, value1) := by
  rw [input11586_def, output11586_def]
  kernel_rfl

theorem node11587_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11587 value5798 value1 value2 = (output11587, value5799, value1) := by
  rw [input11587_def, output11587_def]
  kernel_rfl

theorem node11588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11588 value5799 value1 value2 = (output11588, value5800, value1) := by
  rw [input11588_def, output11588_def]
  kernel_rfl

theorem node11589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11589 value5800 value1 value2 = (output11589, value5, value1) := by
  rw [input11589_def, output11589_def]
  kernel_rfl

theorem node11590_cond_eq
    (child11588 : Flapjack.WordAlloc.removeDeadStructural input11588 value5799 value1 value2 = (output11588, value5800, value1))
    (child11589 : Flapjack.WordAlloc.removeDeadStructural input11589 value5800 value1 value2 = (output11589, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11590 value5799 value1 value2 = (output11590, value5, value1) := by
  rw [input11590_def, output11590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11588]
  dsimp only
  rw [child11589]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11588_skip, output11589_skip]
  kernel_rfl

theorem node11591_cond_eq
    (child11587 : Flapjack.WordAlloc.removeDeadStructural input11587 value5798 value1 value2 = (output11587, value5799, value1))
    (child11590 : Flapjack.WordAlloc.removeDeadStructural input11590 value5799 value1 value2 = (output11590, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11591 value5798 value1 value2 = (output11591, value5, value1) := by
  rw [input11591_def, output11591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11587]
  dsimp only
  rw [child11590]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11587_skip, output11590_skip]
  kernel_rfl

theorem node11592_cond_eq
    (child11586 : Flapjack.WordAlloc.removeDeadStructural input11586 value5797 value1 value2 = (output11586, value5798, value1))
    (child11591 : Flapjack.WordAlloc.removeDeadStructural input11591 value5798 value1 value2 = (output11591, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11592 value5797 value1 value2 = (output11592, value5, value1) := by
  rw [input11592_def, output11592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11586]
  dsimp only
  rw [child11591]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11586_skip, output11591_skip]
  kernel_rfl

theorem node11593_cond_eq
    (child11585 : Flapjack.WordAlloc.removeDeadStructural input11585 value5796 value1 value2 = (output11585, value5797, value1))
    (child11592 : Flapjack.WordAlloc.removeDeadStructural input11592 value5797 value1 value2 = (output11592, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11593 value5796 value1 value2 = (output11593, value5, value1) := by
  rw [input11593_def, output11593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11585]
  dsimp only
  rw [child11592]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11585_skip, output11592_skip]
  kernel_rfl

theorem node11594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11594 value5 value1 value2 = (output11594, value5801, value1) := by
  rw [input11594_def, output11594_def]
  kernel_rfl

theorem node11595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11595 value5801 value1 value2 = (output11595, value5802, value1) := by
  rw [input11595_def, output11595_def]
  kernel_rfl

theorem node11596_cond_eq
    (child11594 : Flapjack.WordAlloc.removeDeadStructural input11594 value5 value1 value2 = (output11594, value5801, value1))
    (child11595 : Flapjack.WordAlloc.removeDeadStructural input11595 value5801 value1 value2 = (output11595, value5802, value1)) : Flapjack.WordAlloc.removeDeadStructural input11596 value5 value1 value2 = (output11596, value5802, value1) := by
  rw [input11596_def, output11596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11594]
  dsimp only
  rw [child11595]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11594_skip, output11595_skip]
  kernel_rfl

theorem node11597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11597 value5802 value1 value2 = (output11597, value5803, value1) := by
  rw [input11597_def, output11597_def]
  kernel_rfl

theorem node11598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11598 value5803 value1 value2 = (output11598, value5803, value1) := by
  rw [input11598_def, output11598_def]
  kernel_rfl

theorem node11599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11599 value5803 value1 value2 = (output11599, value5804, value1) := by
  rw [input11599_def, output11599_def]
  kernel_rfl

theorem node11600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11600 value5804 value1 value2 = (output11600, value5805, value1) := by
  rw [input11600_def, output11600_def]
  kernel_rfl

theorem node11601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11601 value5805 value1 value2 = (output11601, value5806, value1) := by
  rw [input11601_def, output11601_def]
  kernel_rfl

theorem node11602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11602 value5806 value1 value2 = (output11602, value5807, value1) := by
  rw [input11602_def, output11602_def]
  kernel_rfl

theorem node11603_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11603 value5807 value1 value2 = (output11603, value5, value1) := by
  rw [input11603_def, output11603_def]
  kernel_rfl

theorem node11604_cond_eq
    (child11602 : Flapjack.WordAlloc.removeDeadStructural input11602 value5806 value1 value2 = (output11602, value5807, value1))
    (child11603 : Flapjack.WordAlloc.removeDeadStructural input11603 value5807 value1 value2 = (output11603, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11604 value5806 value1 value2 = (output11604, value5, value1) := by
  rw [input11604_def, output11604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11602]
  dsimp only
  rw [child11603]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11602_skip, output11603_skip]
  kernel_rfl

theorem node11605_cond_eq
    (child11601 : Flapjack.WordAlloc.removeDeadStructural input11601 value5805 value1 value2 = (output11601, value5806, value1))
    (child11604 : Flapjack.WordAlloc.removeDeadStructural input11604 value5806 value1 value2 = (output11604, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11605 value5805 value1 value2 = (output11605, value5, value1) := by
  rw [input11605_def, output11605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11601]
  dsimp only
  rw [child11604]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11601_skip, output11604_skip]
  kernel_rfl

theorem node11606_cond_eq
    (child11600 : Flapjack.WordAlloc.removeDeadStructural input11600 value5804 value1 value2 = (output11600, value5805, value1))
    (child11605 : Flapjack.WordAlloc.removeDeadStructural input11605 value5805 value1 value2 = (output11605, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11606 value5804 value1 value2 = (output11606, value5, value1) := by
  rw [input11606_def, output11606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11600]
  dsimp only
  rw [child11605]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11600_skip, output11605_skip]
  kernel_rfl

theorem node11607_cond_eq
    (child11599 : Flapjack.WordAlloc.removeDeadStructural input11599 value5803 value1 value2 = (output11599, value5804, value1))
    (child11606 : Flapjack.WordAlloc.removeDeadStructural input11606 value5804 value1 value2 = (output11606, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11607 value5803 value1 value2 = (output11607, value5, value1) := by
  rw [input11607_def, output11607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11599]
  dsimp only
  rw [child11606]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11599_skip, output11606_skip]
  kernel_rfl

theorem node11608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11608 value5 value1 value2 = (output11608, value5808, value1) := by
  rw [input11608_def, output11608_def]
  kernel_rfl

theorem node11609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11609 value5808 value1 value2 = (output11609, value5809, value1) := by
  rw [input11609_def, output11609_def]
  kernel_rfl

theorem node11610_cond_eq
    (child11608 : Flapjack.WordAlloc.removeDeadStructural input11608 value5 value1 value2 = (output11608, value5808, value1))
    (child11609 : Flapjack.WordAlloc.removeDeadStructural input11609 value5808 value1 value2 = (output11609, value5809, value1)) : Flapjack.WordAlloc.removeDeadStructural input11610 value5 value1 value2 = (output11610, value5809, value1) := by
  rw [input11610_def, output11610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11608]
  dsimp only
  rw [child11609]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11608_skip, output11609_skip]
  kernel_rfl

theorem node11611_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11611 value5809 value1 value2 = (output11611, value5810, value1) := by
  rw [input11611_def, output11611_def]
  kernel_rfl

theorem node11612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11612 value5810 value1 value2 = (output11612, value5810, value1) := by
  rw [input11612_def, output11612_def]
  kernel_rfl

theorem node11613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11613 value5810 value1 value2 = (output11613, value5811, value1) := by
  rw [input11613_def, output11613_def]
  kernel_rfl

theorem node11614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11614 value5811 value1 value2 = (output11614, value5812, value1) := by
  rw [input11614_def, output11614_def]
  kernel_rfl

theorem node11615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11615 value5812 value1 value2 = (output11615, value5813, value1) := by
  rw [input11615_def, output11615_def]
  kernel_rfl

theorem node11616_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11616 value5813 value1 value2 = (output11616, value5814, value1) := by
  rw [input11616_def, output11616_def]
  kernel_rfl

theorem node11617_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11617 value5814 value1 value2 = (output11617, value5, value1) := by
  rw [input11617_def, output11617_def]
  kernel_rfl

theorem node11618_cond_eq
    (child11616 : Flapjack.WordAlloc.removeDeadStructural input11616 value5813 value1 value2 = (output11616, value5814, value1))
    (child11617 : Flapjack.WordAlloc.removeDeadStructural input11617 value5814 value1 value2 = (output11617, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11618 value5813 value1 value2 = (output11618, value5, value1) := by
  rw [input11618_def, output11618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11616]
  dsimp only
  rw [child11617]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11616_skip, output11617_skip]
  kernel_rfl

theorem node11619_cond_eq
    (child11615 : Flapjack.WordAlloc.removeDeadStructural input11615 value5812 value1 value2 = (output11615, value5813, value1))
    (child11618 : Flapjack.WordAlloc.removeDeadStructural input11618 value5813 value1 value2 = (output11618, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11619 value5812 value1 value2 = (output11619, value5, value1) := by
  rw [input11619_def, output11619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11615]
  dsimp only
  rw [child11618]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11615_skip, output11618_skip]
  kernel_rfl

theorem node11620_cond_eq
    (child11614 : Flapjack.WordAlloc.removeDeadStructural input11614 value5811 value1 value2 = (output11614, value5812, value1))
    (child11619 : Flapjack.WordAlloc.removeDeadStructural input11619 value5812 value1 value2 = (output11619, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11620 value5811 value1 value2 = (output11620, value5, value1) := by
  rw [input11620_def, output11620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11614]
  dsimp only
  rw [child11619]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11614_skip, output11619_skip]
  kernel_rfl

theorem node11621_cond_eq
    (child11613 : Flapjack.WordAlloc.removeDeadStructural input11613 value5810 value1 value2 = (output11613, value5811, value1))
    (child11620 : Flapjack.WordAlloc.removeDeadStructural input11620 value5811 value1 value2 = (output11620, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11621 value5810 value1 value2 = (output11621, value5, value1) := by
  rw [input11621_def, output11621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11613]
  dsimp only
  rw [child11620]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11613_skip, output11620_skip]
  kernel_rfl

theorem node11622_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11622 value5 value1 value2 = (output11622, value5815, value1) := by
  rw [input11622_def, output11622_def]
  kernel_rfl

theorem node11623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11623 value5815 value1 value2 = (output11623, value5816, value1) := by
  rw [input11623_def, output11623_def]
  kernel_rfl

theorem node11624_cond_eq
    (child11622 : Flapjack.WordAlloc.removeDeadStructural input11622 value5 value1 value2 = (output11622, value5815, value1))
    (child11623 : Flapjack.WordAlloc.removeDeadStructural input11623 value5815 value1 value2 = (output11623, value5816, value1)) : Flapjack.WordAlloc.removeDeadStructural input11624 value5 value1 value2 = (output11624, value5816, value1) := by
  rw [input11624_def, output11624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11622]
  dsimp only
  rw [child11623]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11622_skip, output11623_skip]
  kernel_rfl

theorem node11625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11625 value5816 value1 value2 = (output11625, value5817, value1) := by
  rw [input11625_def, output11625_def]
  kernel_rfl

theorem node11626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11626 value5817 value1 value2 = (output11626, value5817, value1) := by
  rw [input11626_def, output11626_def]
  kernel_rfl

theorem node11627_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11627 value5817 value1 value2 = (output11627, value5818, value1) := by
  rw [input11627_def, output11627_def]
  kernel_rfl

theorem node11628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11628 value5818 value1 value2 = (output11628, value5819, value1) := by
  rw [input11628_def, output11628_def]
  kernel_rfl

theorem node11629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11629 value5819 value1 value2 = (output11629, value5820, value1) := by
  rw [input11629_def, output11629_def]
  kernel_rfl

theorem node11630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11630 value5820 value1 value2 = (output11630, value5821, value1) := by
  rw [input11630_def, output11630_def]
  kernel_rfl

theorem node11631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11631 value5821 value1 value2 = (output11631, value5, value1) := by
  rw [input11631_def, output11631_def]
  kernel_rfl

theorem node11632_cond_eq
    (child11630 : Flapjack.WordAlloc.removeDeadStructural input11630 value5820 value1 value2 = (output11630, value5821, value1))
    (child11631 : Flapjack.WordAlloc.removeDeadStructural input11631 value5821 value1 value2 = (output11631, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11632 value5820 value1 value2 = (output11632, value5, value1) := by
  rw [input11632_def, output11632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11630]
  dsimp only
  rw [child11631]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11630_skip, output11631_skip]
  kernel_rfl

theorem node11633_cond_eq
    (child11629 : Flapjack.WordAlloc.removeDeadStructural input11629 value5819 value1 value2 = (output11629, value5820, value1))
    (child11632 : Flapjack.WordAlloc.removeDeadStructural input11632 value5820 value1 value2 = (output11632, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11633 value5819 value1 value2 = (output11633, value5, value1) := by
  rw [input11633_def, output11633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11629]
  dsimp only
  rw [child11632]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11629_skip, output11632_skip]
  kernel_rfl

theorem node11634_cond_eq
    (child11628 : Flapjack.WordAlloc.removeDeadStructural input11628 value5818 value1 value2 = (output11628, value5819, value1))
    (child11633 : Flapjack.WordAlloc.removeDeadStructural input11633 value5819 value1 value2 = (output11633, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11634 value5818 value1 value2 = (output11634, value5, value1) := by
  rw [input11634_def, output11634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11628]
  dsimp only
  rw [child11633]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11628_skip, output11633_skip]
  kernel_rfl

theorem node11635_cond_eq
    (child11627 : Flapjack.WordAlloc.removeDeadStructural input11627 value5817 value1 value2 = (output11627, value5818, value1))
    (child11634 : Flapjack.WordAlloc.removeDeadStructural input11634 value5818 value1 value2 = (output11634, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11635 value5817 value1 value2 = (output11635, value5, value1) := by
  rw [input11635_def, output11635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11627]
  dsimp only
  rw [child11634]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11627_skip, output11634_skip]
  kernel_rfl

theorem node11636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11636 value5 value1 value2 = (output11636, value5822, value1) := by
  rw [input11636_def, output11636_def]
  kernel_rfl

theorem node11637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11637 value5822 value1 value2 = (output11637, value5823, value1) := by
  rw [input11637_def, output11637_def]
  kernel_rfl

theorem node11638_cond_eq
    (child11636 : Flapjack.WordAlloc.removeDeadStructural input11636 value5 value1 value2 = (output11636, value5822, value1))
    (child11637 : Flapjack.WordAlloc.removeDeadStructural input11637 value5822 value1 value2 = (output11637, value5823, value1)) : Flapjack.WordAlloc.removeDeadStructural input11638 value5 value1 value2 = (output11638, value5823, value1) := by
  rw [input11638_def, output11638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11636]
  dsimp only
  rw [child11637]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11636_skip, output11637_skip]
  kernel_rfl

theorem node11639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11639 value5823 value1 value2 = (output11639, value5824, value1) := by
  rw [input11639_def, output11639_def]
  kernel_rfl

theorem node11640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11640 value5824 value1 value2 = (output11640, value5824, value1) := by
  rw [input11640_def, output11640_def]
  kernel_rfl

theorem node11641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11641 value5824 value1 value2 = (output11641, value5825, value1) := by
  rw [input11641_def, output11641_def]
  kernel_rfl

theorem node11642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11642 value5825 value1 value2 = (output11642, value5826, value1) := by
  rw [input11642_def, output11642_def]
  kernel_rfl

theorem node11643_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11643 value5826 value1 value2 = (output11643, value5827, value1) := by
  rw [input11643_def, output11643_def]
  kernel_rfl

theorem node11644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11644 value5827 value1 value2 = (output11644, value5828, value1) := by
  rw [input11644_def, output11644_def]
  kernel_rfl

theorem node11645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11645 value5828 value1 value2 = (output11645, value5, value1) := by
  rw [input11645_def, output11645_def]
  kernel_rfl

theorem node11646_cond_eq
    (child11644 : Flapjack.WordAlloc.removeDeadStructural input11644 value5827 value1 value2 = (output11644, value5828, value1))
    (child11645 : Flapjack.WordAlloc.removeDeadStructural input11645 value5828 value1 value2 = (output11645, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11646 value5827 value1 value2 = (output11646, value5, value1) := by
  rw [input11646_def, output11646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11644]
  dsimp only
  rw [child11645]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11644_skip, output11645_skip]
  kernel_rfl

theorem node11647_cond_eq
    (child11643 : Flapjack.WordAlloc.removeDeadStructural input11643 value5826 value1 value2 = (output11643, value5827, value1))
    (child11646 : Flapjack.WordAlloc.removeDeadStructural input11646 value5827 value1 value2 = (output11646, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11647 value5826 value1 value2 = (output11647, value5, value1) := by
  rw [input11647_def, output11647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11643]
  dsimp only
  rw [child11646]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11643_skip, output11646_skip]
  kernel_rfl

theorem node11648_cond_eq
    (child11642 : Flapjack.WordAlloc.removeDeadStructural input11642 value5825 value1 value2 = (output11642, value5826, value1))
    (child11647 : Flapjack.WordAlloc.removeDeadStructural input11647 value5826 value1 value2 = (output11647, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11648 value5825 value1 value2 = (output11648, value5, value1) := by
  rw [input11648_def, output11648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11642]
  dsimp only
  rw [child11647]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11642_skip, output11647_skip]
  kernel_rfl

theorem node11649_cond_eq
    (child11641 : Flapjack.WordAlloc.removeDeadStructural input11641 value5824 value1 value2 = (output11641, value5825, value1))
    (child11648 : Flapjack.WordAlloc.removeDeadStructural input11648 value5825 value1 value2 = (output11648, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11649 value5824 value1 value2 = (output11649, value5, value1) := by
  rw [input11649_def, output11649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11641]
  dsimp only
  rw [child11648]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11641_skip, output11648_skip]
  kernel_rfl

theorem node11650_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11650 value5 value1 value2 = (output11650, value5829, value1) := by
  rw [input11650_def, output11650_def]
  kernel_rfl

theorem node11651_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11651 value5829 value1 value2 = (output11651, value5830, value1) := by
  rw [input11651_def, output11651_def]
  kernel_rfl

theorem node11652_cond_eq
    (child11650 : Flapjack.WordAlloc.removeDeadStructural input11650 value5 value1 value2 = (output11650, value5829, value1))
    (child11651 : Flapjack.WordAlloc.removeDeadStructural input11651 value5829 value1 value2 = (output11651, value5830, value1)) : Flapjack.WordAlloc.removeDeadStructural input11652 value5 value1 value2 = (output11652, value5830, value1) := by
  rw [input11652_def, output11652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11650]
  dsimp only
  rw [child11651]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11650_skip, output11651_skip]
  kernel_rfl

theorem node11653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11653 value5830 value1 value2 = (output11653, value5831, value1) := by
  rw [input11653_def, output11653_def]
  kernel_rfl

theorem node11654_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11654 value5831 value1 value2 = (output11654, value5831, value1) := by
  rw [input11654_def, output11654_def]
  kernel_rfl

theorem node11655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11655 value5831 value1 value2 = (output11655, value5832, value1) := by
  rw [input11655_def, output11655_def]
  kernel_rfl

theorem node11656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11656 value5832 value1 value2 = (output11656, value5833, value1) := by
  rw [input11656_def, output11656_def]
  kernel_rfl

theorem node11657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11657 value5833 value1 value2 = (output11657, value5834, value1) := by
  rw [input11657_def, output11657_def]
  kernel_rfl

theorem node11658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11658 value5834 value1 value2 = (output11658, value5835, value1) := by
  rw [input11658_def, output11658_def]
  kernel_rfl

theorem node11659_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11659 value5835 value1 value2 = (output11659, value5, value1) := by
  rw [input11659_def, output11659_def]
  kernel_rfl

theorem node11660_cond_eq
    (child11658 : Flapjack.WordAlloc.removeDeadStructural input11658 value5834 value1 value2 = (output11658, value5835, value1))
    (child11659 : Flapjack.WordAlloc.removeDeadStructural input11659 value5835 value1 value2 = (output11659, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11660 value5834 value1 value2 = (output11660, value5, value1) := by
  rw [input11660_def, output11660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11658]
  dsimp only
  rw [child11659]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11658_skip, output11659_skip]
  kernel_rfl

theorem node11661_cond_eq
    (child11657 : Flapjack.WordAlloc.removeDeadStructural input11657 value5833 value1 value2 = (output11657, value5834, value1))
    (child11660 : Flapjack.WordAlloc.removeDeadStructural input11660 value5834 value1 value2 = (output11660, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11661 value5833 value1 value2 = (output11661, value5, value1) := by
  rw [input11661_def, output11661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11657]
  dsimp only
  rw [child11660]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11657_skip, output11660_skip]
  kernel_rfl

theorem node11662_cond_eq
    (child11656 : Flapjack.WordAlloc.removeDeadStructural input11656 value5832 value1 value2 = (output11656, value5833, value1))
    (child11661 : Flapjack.WordAlloc.removeDeadStructural input11661 value5833 value1 value2 = (output11661, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11662 value5832 value1 value2 = (output11662, value5, value1) := by
  rw [input11662_def, output11662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11656]
  dsimp only
  rw [child11661]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11656_skip, output11661_skip]
  kernel_rfl

theorem node11663_cond_eq
    (child11655 : Flapjack.WordAlloc.removeDeadStructural input11655 value5831 value1 value2 = (output11655, value5832, value1))
    (child11662 : Flapjack.WordAlloc.removeDeadStructural input11662 value5832 value1 value2 = (output11662, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11663 value5831 value1 value2 = (output11663, value5, value1) := by
  rw [input11663_def, output11663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11655]
  dsimp only
  rw [child11662]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11655_skip, output11662_skip]
  kernel_rfl

theorem node11664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11664 value5 value1 value2 = (output11664, value5836, value1) := by
  rw [input11664_def, output11664_def]
  kernel_rfl

theorem node11665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11665 value5836 value1 value2 = (output11665, value5837, value1) := by
  rw [input11665_def, output11665_def]
  kernel_rfl

theorem node11666_cond_eq
    (child11664 : Flapjack.WordAlloc.removeDeadStructural input11664 value5 value1 value2 = (output11664, value5836, value1))
    (child11665 : Flapjack.WordAlloc.removeDeadStructural input11665 value5836 value1 value2 = (output11665, value5837, value1)) : Flapjack.WordAlloc.removeDeadStructural input11666 value5 value1 value2 = (output11666, value5837, value1) := by
  rw [input11666_def, output11666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11664]
  dsimp only
  rw [child11665]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11664_skip, output11665_skip]
  kernel_rfl

theorem node11667_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11667 value5837 value1 value2 = (output11667, value5838, value1) := by
  rw [input11667_def, output11667_def]
  kernel_rfl

theorem node11668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11668 value5838 value1 value2 = (output11668, value5838, value1) := by
  rw [input11668_def, output11668_def]
  kernel_rfl

theorem node11669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11669 value5838 value1 value2 = (output11669, value5839, value1) := by
  rw [input11669_def, output11669_def]
  kernel_rfl

theorem node11670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11670 value5839 value1 value2 = (output11670, value5840, value1) := by
  rw [input11670_def, output11670_def]
  kernel_rfl

theorem node11671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11671 value5840 value1 value2 = (output11671, value5841, value1) := by
  rw [input11671_def, output11671_def]
  kernel_rfl

theorem node11672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11672 value5841 value1 value2 = (output11672, value5842, value1) := by
  rw [input11672_def, output11672_def]
  kernel_rfl

theorem node11673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11673 value5842 value1 value2 = (output11673, value5, value1) := by
  rw [input11673_def, output11673_def]
  kernel_rfl

theorem node11674_cond_eq
    (child11672 : Flapjack.WordAlloc.removeDeadStructural input11672 value5841 value1 value2 = (output11672, value5842, value1))
    (child11673 : Flapjack.WordAlloc.removeDeadStructural input11673 value5842 value1 value2 = (output11673, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11674 value5841 value1 value2 = (output11674, value5, value1) := by
  rw [input11674_def, output11674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11672]
  dsimp only
  rw [child11673]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11672_skip, output11673_skip]
  kernel_rfl

theorem node11675_cond_eq
    (child11671 : Flapjack.WordAlloc.removeDeadStructural input11671 value5840 value1 value2 = (output11671, value5841, value1))
    (child11674 : Flapjack.WordAlloc.removeDeadStructural input11674 value5841 value1 value2 = (output11674, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11675 value5840 value1 value2 = (output11675, value5, value1) := by
  rw [input11675_def, output11675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11671]
  dsimp only
  rw [child11674]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11671_skip, output11674_skip]
  kernel_rfl

theorem node11676_cond_eq
    (child11670 : Flapjack.WordAlloc.removeDeadStructural input11670 value5839 value1 value2 = (output11670, value5840, value1))
    (child11675 : Flapjack.WordAlloc.removeDeadStructural input11675 value5840 value1 value2 = (output11675, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11676 value5839 value1 value2 = (output11676, value5, value1) := by
  rw [input11676_def, output11676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11670]
  dsimp only
  rw [child11675]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11670_skip, output11675_skip]
  kernel_rfl

theorem node11677_cond_eq
    (child11669 : Flapjack.WordAlloc.removeDeadStructural input11669 value5838 value1 value2 = (output11669, value5839, value1))
    (child11676 : Flapjack.WordAlloc.removeDeadStructural input11676 value5839 value1 value2 = (output11676, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11677 value5838 value1 value2 = (output11677, value5, value1) := by
  rw [input11677_def, output11677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11669]
  dsimp only
  rw [child11676]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11669_skip, output11676_skip]
  kernel_rfl

theorem node11678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11678 value5 value1 value2 = (output11678, value5843, value1) := by
  rw [input11678_def, output11678_def]
  kernel_rfl

theorem node11679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11679 value5843 value1 value2 = (output11679, value5844, value1) := by
  rw [input11679_def, output11679_def]
  kernel_rfl

theorem node11680_cond_eq
    (child11678 : Flapjack.WordAlloc.removeDeadStructural input11678 value5 value1 value2 = (output11678, value5843, value1))
    (child11679 : Flapjack.WordAlloc.removeDeadStructural input11679 value5843 value1 value2 = (output11679, value5844, value1)) : Flapjack.WordAlloc.removeDeadStructural input11680 value5 value1 value2 = (output11680, value5844, value1) := by
  rw [input11680_def, output11680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11678]
  dsimp only
  rw [child11679]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11678_skip, output11679_skip]
  kernel_rfl

theorem node11681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11681 value5844 value1 value2 = (output11681, value5845, value1) := by
  rw [input11681_def, output11681_def]
  kernel_rfl

theorem node11682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11682 value5845 value1 value2 = (output11682, value5845, value1) := by
  rw [input11682_def, output11682_def]
  kernel_rfl

theorem node11683_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11683 value5845 value1 value2 = (output11683, value5846, value1) := by
  rw [input11683_def, output11683_def]
  kernel_rfl

theorem node11684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11684 value5846 value1 value2 = (output11684, value5847, value1) := by
  rw [input11684_def, output11684_def]
  kernel_rfl

theorem node11685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11685 value5847 value1 value2 = (output11685, value5848, value1) := by
  rw [input11685_def, output11685_def]
  kernel_rfl

theorem node11686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11686 value5848 value1 value2 = (output11686, value5849, value1) := by
  rw [input11686_def, output11686_def]
  kernel_rfl

theorem node11687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11687 value5849 value1 value2 = (output11687, value5, value1) := by
  rw [input11687_def, output11687_def]
  kernel_rfl

theorem node11688_cond_eq
    (child11686 : Flapjack.WordAlloc.removeDeadStructural input11686 value5848 value1 value2 = (output11686, value5849, value1))
    (child11687 : Flapjack.WordAlloc.removeDeadStructural input11687 value5849 value1 value2 = (output11687, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11688 value5848 value1 value2 = (output11688, value5, value1) := by
  rw [input11688_def, output11688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11686]
  dsimp only
  rw [child11687]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11686_skip, output11687_skip]
  kernel_rfl

theorem node11689_cond_eq
    (child11685 : Flapjack.WordAlloc.removeDeadStructural input11685 value5847 value1 value2 = (output11685, value5848, value1))
    (child11688 : Flapjack.WordAlloc.removeDeadStructural input11688 value5848 value1 value2 = (output11688, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11689 value5847 value1 value2 = (output11689, value5, value1) := by
  rw [input11689_def, output11689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11685]
  dsimp only
  rw [child11688]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11685_skip, output11688_skip]
  kernel_rfl

theorem node11690_cond_eq
    (child11684 : Flapjack.WordAlloc.removeDeadStructural input11684 value5846 value1 value2 = (output11684, value5847, value1))
    (child11689 : Flapjack.WordAlloc.removeDeadStructural input11689 value5847 value1 value2 = (output11689, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11690 value5846 value1 value2 = (output11690, value5, value1) := by
  rw [input11690_def, output11690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11684]
  dsimp only
  rw [child11689]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11684_skip, output11689_skip]
  kernel_rfl

theorem node11691_cond_eq
    (child11683 : Flapjack.WordAlloc.removeDeadStructural input11683 value5845 value1 value2 = (output11683, value5846, value1))
    (child11690 : Flapjack.WordAlloc.removeDeadStructural input11690 value5846 value1 value2 = (output11690, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11691 value5845 value1 value2 = (output11691, value5, value1) := by
  rw [input11691_def, output11691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11683]
  dsimp only
  rw [child11690]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11683_skip, output11690_skip]
  kernel_rfl

theorem node11692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11692 value5 value1 value2 = (output11692, value5850, value1) := by
  rw [input11692_def, output11692_def]
  kernel_rfl

theorem node11693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11693 value5850 value1 value2 = (output11693, value5851, value1) := by
  rw [input11693_def, output11693_def]
  kernel_rfl

theorem node11694_cond_eq
    (child11692 : Flapjack.WordAlloc.removeDeadStructural input11692 value5 value1 value2 = (output11692, value5850, value1))
    (child11693 : Flapjack.WordAlloc.removeDeadStructural input11693 value5850 value1 value2 = (output11693, value5851, value1)) : Flapjack.WordAlloc.removeDeadStructural input11694 value5 value1 value2 = (output11694, value5851, value1) := by
  rw [input11694_def, output11694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11692]
  dsimp only
  rw [child11693]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11692_skip, output11693_skip]
  kernel_rfl

theorem node11695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11695 value5851 value1 value2 = (output11695, value5852, value1) := by
  rw [input11695_def, output11695_def]
  kernel_rfl

theorem node11696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11696 value5852 value1 value2 = (output11696, value5852, value1) := by
  rw [input11696_def, output11696_def]
  kernel_rfl

theorem node11697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11697 value5852 value1 value2 = (output11697, value5853, value1) := by
  rw [input11697_def, output11697_def]
  kernel_rfl

theorem node11698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11698 value5853 value1 value2 = (output11698, value5854, value1) := by
  rw [input11698_def, output11698_def]
  kernel_rfl

theorem node11699_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11699 value5854 value1 value2 = (output11699, value5855, value1) := by
  rw [input11699_def, output11699_def]
  kernel_rfl

theorem node11700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11700 value5855 value1 value2 = (output11700, value5856, value1) := by
  rw [input11700_def, output11700_def]
  kernel_rfl

theorem node11701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11701 value5856 value1 value2 = (output11701, value5, value1) := by
  rw [input11701_def, output11701_def]
  kernel_rfl

theorem node11702_cond_eq
    (child11700 : Flapjack.WordAlloc.removeDeadStructural input11700 value5855 value1 value2 = (output11700, value5856, value1))
    (child11701 : Flapjack.WordAlloc.removeDeadStructural input11701 value5856 value1 value2 = (output11701, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11702 value5855 value1 value2 = (output11702, value5, value1) := by
  rw [input11702_def, output11702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11700]
  dsimp only
  rw [child11701]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11700_skip, output11701_skip]
  kernel_rfl

theorem node11703_cond_eq
    (child11699 : Flapjack.WordAlloc.removeDeadStructural input11699 value5854 value1 value2 = (output11699, value5855, value1))
    (child11702 : Flapjack.WordAlloc.removeDeadStructural input11702 value5855 value1 value2 = (output11702, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11703 value5854 value1 value2 = (output11703, value5, value1) := by
  rw [input11703_def, output11703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11699]
  dsimp only
  rw [child11702]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11699_skip, output11702_skip]
  kernel_rfl

theorem node11704_cond_eq
    (child11698 : Flapjack.WordAlloc.removeDeadStructural input11698 value5853 value1 value2 = (output11698, value5854, value1))
    (child11703 : Flapjack.WordAlloc.removeDeadStructural input11703 value5854 value1 value2 = (output11703, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11704 value5853 value1 value2 = (output11704, value5, value1) := by
  rw [input11704_def, output11704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11698]
  dsimp only
  rw [child11703]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11698_skip, output11703_skip]
  kernel_rfl

theorem node11705_cond_eq
    (child11697 : Flapjack.WordAlloc.removeDeadStructural input11697 value5852 value1 value2 = (output11697, value5853, value1))
    (child11704 : Flapjack.WordAlloc.removeDeadStructural input11704 value5853 value1 value2 = (output11704, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11705 value5852 value1 value2 = (output11705, value5, value1) := by
  rw [input11705_def, output11705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11697]
  dsimp only
  rw [child11704]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11697_skip, output11704_skip]
  kernel_rfl

theorem node11706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11706 value5 value1 value2 = (output11706, value5857, value1) := by
  rw [input11706_def, output11706_def]
  kernel_rfl

theorem node11707_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11707 value5857 value1 value2 = (output11707, value5858, value1) := by
  rw [input11707_def, output11707_def]
  kernel_rfl

theorem node11708_cond_eq
    (child11706 : Flapjack.WordAlloc.removeDeadStructural input11706 value5 value1 value2 = (output11706, value5857, value1))
    (child11707 : Flapjack.WordAlloc.removeDeadStructural input11707 value5857 value1 value2 = (output11707, value5858, value1)) : Flapjack.WordAlloc.removeDeadStructural input11708 value5 value1 value2 = (output11708, value5858, value1) := by
  rw [input11708_def, output11708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11706]
  dsimp only
  rw [child11707]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11706_skip, output11707_skip]
  kernel_rfl

theorem node11709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11709 value5858 value1 value2 = (output11709, value5859, value1) := by
  rw [input11709_def, output11709_def]
  kernel_rfl

theorem node11710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11710 value5859 value1 value2 = (output11710, value5859, value1) := by
  rw [input11710_def, output11710_def]
  kernel_rfl

theorem node11711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11711 value5859 value1 value2 = (output11711, value5860, value1) := by
  rw [input11711_def, output11711_def]
  kernel_rfl

theorem node11712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11712 value5860 value1 value2 = (output11712, value5861, value1) := by
  rw [input11712_def, output11712_def]
  kernel_rfl

theorem node11713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11713 value5861 value1 value2 = (output11713, value5862, value1) := by
  rw [input11713_def, output11713_def]
  kernel_rfl

theorem node11714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11714 value5862 value1 value2 = (output11714, value5863, value1) := by
  rw [input11714_def, output11714_def]
  kernel_rfl

theorem node11715_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11715 value5863 value1 value2 = (output11715, value5, value1) := by
  rw [input11715_def, output11715_def]
  kernel_rfl

theorem node11716_cond_eq
    (child11714 : Flapjack.WordAlloc.removeDeadStructural input11714 value5862 value1 value2 = (output11714, value5863, value1))
    (child11715 : Flapjack.WordAlloc.removeDeadStructural input11715 value5863 value1 value2 = (output11715, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11716 value5862 value1 value2 = (output11716, value5, value1) := by
  rw [input11716_def, output11716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11714]
  dsimp only
  rw [child11715]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11714_skip, output11715_skip]
  kernel_rfl

theorem node11717_cond_eq
    (child11713 : Flapjack.WordAlloc.removeDeadStructural input11713 value5861 value1 value2 = (output11713, value5862, value1))
    (child11716 : Flapjack.WordAlloc.removeDeadStructural input11716 value5862 value1 value2 = (output11716, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11717 value5861 value1 value2 = (output11717, value5, value1) := by
  rw [input11717_def, output11717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11713]
  dsimp only
  rw [child11716]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11713_skip, output11716_skip]
  kernel_rfl

theorem node11718_cond_eq
    (child11712 : Flapjack.WordAlloc.removeDeadStructural input11712 value5860 value1 value2 = (output11712, value5861, value1))
    (child11717 : Flapjack.WordAlloc.removeDeadStructural input11717 value5861 value1 value2 = (output11717, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11718 value5860 value1 value2 = (output11718, value5, value1) := by
  rw [input11718_def, output11718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11712]
  dsimp only
  rw [child11717]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11712_skip, output11717_skip]
  kernel_rfl

theorem node11719_cond_eq
    (child11711 : Flapjack.WordAlloc.removeDeadStructural input11711 value5859 value1 value2 = (output11711, value5860, value1))
    (child11718 : Flapjack.WordAlloc.removeDeadStructural input11718 value5860 value1 value2 = (output11718, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11719 value5859 value1 value2 = (output11719, value5, value1) := by
  rw [input11719_def, output11719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11711]
  dsimp only
  rw [child11718]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11711_skip, output11718_skip]
  kernel_rfl

theorem node11720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11720 value5 value1 value2 = (output11720, value5864, value1) := by
  rw [input11720_def, output11720_def]
  kernel_rfl

theorem node11721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11721 value5864 value1 value2 = (output11721, value5865, value1) := by
  rw [input11721_def, output11721_def]
  kernel_rfl

theorem node11722_cond_eq
    (child11720 : Flapjack.WordAlloc.removeDeadStructural input11720 value5 value1 value2 = (output11720, value5864, value1))
    (child11721 : Flapjack.WordAlloc.removeDeadStructural input11721 value5864 value1 value2 = (output11721, value5865, value1)) : Flapjack.WordAlloc.removeDeadStructural input11722 value5 value1 value2 = (output11722, value5865, value1) := by
  rw [input11722_def, output11722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11720]
  dsimp only
  rw [child11721]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11720_skip, output11721_skip]
  kernel_rfl

theorem node11723_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11723 value5865 value1 value2 = (output11723, value5866, value1) := by
  rw [input11723_def, output11723_def]
  kernel_rfl

theorem node11724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11724 value5866 value1 value2 = (output11724, value5866, value1) := by
  rw [input11724_def, output11724_def]
  kernel_rfl

theorem node11725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11725 value5866 value1 value2 = (output11725, value5867, value1) := by
  rw [input11725_def, output11725_def]
  kernel_rfl

theorem node11726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11726 value5867 value1 value2 = (output11726, value5868, value1) := by
  rw [input11726_def, output11726_def]
  kernel_rfl

theorem node11727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11727 value5868 value1 value2 = (output11727, value5869, value1) := by
  rw [input11727_def, output11727_def]
  kernel_rfl

theorem node11728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11728 value5869 value1 value2 = (output11728, value5870, value1) := by
  rw [input11728_def, output11728_def]
  kernel_rfl

theorem node11729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11729 value5870 value1 value2 = (output11729, value5, value1) := by
  rw [input11729_def, output11729_def]
  kernel_rfl

theorem node11730_cond_eq
    (child11728 : Flapjack.WordAlloc.removeDeadStructural input11728 value5869 value1 value2 = (output11728, value5870, value1))
    (child11729 : Flapjack.WordAlloc.removeDeadStructural input11729 value5870 value1 value2 = (output11729, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11730 value5869 value1 value2 = (output11730, value5, value1) := by
  rw [input11730_def, output11730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11728]
  dsimp only
  rw [child11729]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11728_skip, output11729_skip]
  kernel_rfl

theorem node11731_cond_eq
    (child11727 : Flapjack.WordAlloc.removeDeadStructural input11727 value5868 value1 value2 = (output11727, value5869, value1))
    (child11730 : Flapjack.WordAlloc.removeDeadStructural input11730 value5869 value1 value2 = (output11730, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11731 value5868 value1 value2 = (output11731, value5, value1) := by
  rw [input11731_def, output11731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11727]
  dsimp only
  rw [child11730]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11727_skip, output11730_skip]
  kernel_rfl

theorem node11732_cond_eq
    (child11726 : Flapjack.WordAlloc.removeDeadStructural input11726 value5867 value1 value2 = (output11726, value5868, value1))
    (child11731 : Flapjack.WordAlloc.removeDeadStructural input11731 value5868 value1 value2 = (output11731, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11732 value5867 value1 value2 = (output11732, value5, value1) := by
  rw [input11732_def, output11732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11726]
  dsimp only
  rw [child11731]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11726_skip, output11731_skip]
  kernel_rfl

theorem node11733_cond_eq
    (child11725 : Flapjack.WordAlloc.removeDeadStructural input11725 value5866 value1 value2 = (output11725, value5867, value1))
    (child11732 : Flapjack.WordAlloc.removeDeadStructural input11732 value5867 value1 value2 = (output11732, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11733 value5866 value1 value2 = (output11733, value5, value1) := by
  rw [input11733_def, output11733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11725]
  dsimp only
  rw [child11732]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11725_skip, output11732_skip]
  kernel_rfl

theorem node11734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11734 value5 value1 value2 = (output11734, value5871, value1) := by
  rw [input11734_def, output11734_def]
  kernel_rfl

theorem node11735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11735 value5871 value1 value2 = (output11735, value5872, value1) := by
  rw [input11735_def, output11735_def]
  kernel_rfl

theorem node11736_cond_eq
    (child11734 : Flapjack.WordAlloc.removeDeadStructural input11734 value5 value1 value2 = (output11734, value5871, value1))
    (child11735 : Flapjack.WordAlloc.removeDeadStructural input11735 value5871 value1 value2 = (output11735, value5872, value1)) : Flapjack.WordAlloc.removeDeadStructural input11736 value5 value1 value2 = (output11736, value5872, value1) := by
  rw [input11736_def, output11736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11734]
  dsimp only
  rw [child11735]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11734_skip, output11735_skip]
  kernel_rfl

theorem node11737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11737 value5872 value1 value2 = (output11737, value5873, value1) := by
  rw [input11737_def, output11737_def]
  kernel_rfl

theorem node11738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11738 value5873 value1 value2 = (output11738, value5873, value1) := by
  rw [input11738_def, output11738_def]
  kernel_rfl

theorem node11739_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11739 value5873 value1 value2 = (output11739, value5874, value1) := by
  rw [input11739_def, output11739_def]
  kernel_rfl

theorem node11740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11740 value5874 value1 value2 = (output11740, value5875, value1) := by
  rw [input11740_def, output11740_def]
  kernel_rfl

theorem node11741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11741 value5875 value1 value2 = (output11741, value5876, value1) := by
  rw [input11741_def, output11741_def]
  kernel_rfl

theorem node11742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11742 value5876 value1 value2 = (output11742, value5877, value1) := by
  rw [input11742_def, output11742_def]
  kernel_rfl

theorem node11743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11743 value5877 value1 value2 = (output11743, value5, value1) := by
  rw [input11743_def, output11743_def]
  kernel_rfl

theorem node11744_cond_eq
    (child11742 : Flapjack.WordAlloc.removeDeadStructural input11742 value5876 value1 value2 = (output11742, value5877, value1))
    (child11743 : Flapjack.WordAlloc.removeDeadStructural input11743 value5877 value1 value2 = (output11743, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11744 value5876 value1 value2 = (output11744, value5, value1) := by
  rw [input11744_def, output11744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11742]
  dsimp only
  rw [child11743]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11742_skip, output11743_skip]
  kernel_rfl

theorem node11745_cond_eq
    (child11741 : Flapjack.WordAlloc.removeDeadStructural input11741 value5875 value1 value2 = (output11741, value5876, value1))
    (child11744 : Flapjack.WordAlloc.removeDeadStructural input11744 value5876 value1 value2 = (output11744, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11745 value5875 value1 value2 = (output11745, value5, value1) := by
  rw [input11745_def, output11745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11741]
  dsimp only
  rw [child11744]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11741_skip, output11744_skip]
  kernel_rfl

theorem node11746_cond_eq
    (child11740 : Flapjack.WordAlloc.removeDeadStructural input11740 value5874 value1 value2 = (output11740, value5875, value1))
    (child11745 : Flapjack.WordAlloc.removeDeadStructural input11745 value5875 value1 value2 = (output11745, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11746 value5874 value1 value2 = (output11746, value5, value1) := by
  rw [input11746_def, output11746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11740]
  dsimp only
  rw [child11745]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11740_skip, output11745_skip]
  kernel_rfl

theorem node11747_cond_eq
    (child11739 : Flapjack.WordAlloc.removeDeadStructural input11739 value5873 value1 value2 = (output11739, value5874, value1))
    (child11746 : Flapjack.WordAlloc.removeDeadStructural input11746 value5874 value1 value2 = (output11746, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11747 value5873 value1 value2 = (output11747, value5, value1) := by
  rw [input11747_def, output11747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11739]
  dsimp only
  rw [child11746]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11739_skip, output11746_skip]
  kernel_rfl

theorem node11748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11748 value5 value1 value2 = (output11748, value5878, value1) := by
  rw [input11748_def, output11748_def]
  kernel_rfl

theorem node11749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11749 value5878 value1 value2 = (output11749, value5879, value1) := by
  rw [input11749_def, output11749_def]
  kernel_rfl

theorem node11750_cond_eq
    (child11748 : Flapjack.WordAlloc.removeDeadStructural input11748 value5 value1 value2 = (output11748, value5878, value1))
    (child11749 : Flapjack.WordAlloc.removeDeadStructural input11749 value5878 value1 value2 = (output11749, value5879, value1)) : Flapjack.WordAlloc.removeDeadStructural input11750 value5 value1 value2 = (output11750, value5879, value1) := by
  rw [input11750_def, output11750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11748]
  dsimp only
  rw [child11749]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11748_skip, output11749_skip]
  kernel_rfl

theorem node11751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11751 value5879 value1 value2 = (output11751, value5880, value1) := by
  rw [input11751_def, output11751_def]
  kernel_rfl

theorem node11752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11752 value5880 value1 value2 = (output11752, value5880, value1) := by
  rw [input11752_def, output11752_def]
  kernel_rfl

theorem node11753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11753 value5880 value1 value2 = (output11753, value5881, value1) := by
  rw [input11753_def, output11753_def]
  kernel_rfl

theorem node11754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11754 value5881 value1 value2 = (output11754, value5882, value1) := by
  rw [input11754_def, output11754_def]
  kernel_rfl

theorem node11755_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11755 value5882 value1 value2 = (output11755, value5883, value1) := by
  rw [input11755_def, output11755_def]
  kernel_rfl

theorem node11756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11756 value5883 value1 value2 = (output11756, value5884, value1) := by
  rw [input11756_def, output11756_def]
  kernel_rfl

theorem node11757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11757 value5884 value1 value2 = (output11757, value5, value1) := by
  rw [input11757_def, output11757_def]
  kernel_rfl

theorem node11758_cond_eq
    (child11756 : Flapjack.WordAlloc.removeDeadStructural input11756 value5883 value1 value2 = (output11756, value5884, value1))
    (child11757 : Flapjack.WordAlloc.removeDeadStructural input11757 value5884 value1 value2 = (output11757, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11758 value5883 value1 value2 = (output11758, value5, value1) := by
  rw [input11758_def, output11758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11756]
  dsimp only
  rw [child11757]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11756_skip, output11757_skip]
  kernel_rfl

theorem node11759_cond_eq
    (child11755 : Flapjack.WordAlloc.removeDeadStructural input11755 value5882 value1 value2 = (output11755, value5883, value1))
    (child11758 : Flapjack.WordAlloc.removeDeadStructural input11758 value5883 value1 value2 = (output11758, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11759 value5882 value1 value2 = (output11759, value5, value1) := by
  rw [input11759_def, output11759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11755]
  dsimp only
  rw [child11758]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11755_skip, output11758_skip]
  kernel_rfl

theorem node11760_cond_eq
    (child11754 : Flapjack.WordAlloc.removeDeadStructural input11754 value5881 value1 value2 = (output11754, value5882, value1))
    (child11759 : Flapjack.WordAlloc.removeDeadStructural input11759 value5882 value1 value2 = (output11759, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11760 value5881 value1 value2 = (output11760, value5, value1) := by
  rw [input11760_def, output11760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11754]
  dsimp only
  rw [child11759]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11754_skip, output11759_skip]
  kernel_rfl

theorem node11761_cond_eq
    (child11753 : Flapjack.WordAlloc.removeDeadStructural input11753 value5880 value1 value2 = (output11753, value5881, value1))
    (child11760 : Flapjack.WordAlloc.removeDeadStructural input11760 value5881 value1 value2 = (output11760, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11761 value5880 value1 value2 = (output11761, value5, value1) := by
  rw [input11761_def, output11761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11753]
  dsimp only
  rw [child11760]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11753_skip, output11760_skip]
  kernel_rfl

theorem node11762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11762 value5 value1 value2 = (output11762, value5885, value1) := by
  rw [input11762_def, output11762_def]
  kernel_rfl

theorem node11763_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11763 value5885 value1 value2 = (output11763, value5886, value1) := by
  rw [input11763_def, output11763_def]
  kernel_rfl

theorem node11764_cond_eq
    (child11762 : Flapjack.WordAlloc.removeDeadStructural input11762 value5 value1 value2 = (output11762, value5885, value1))
    (child11763 : Flapjack.WordAlloc.removeDeadStructural input11763 value5885 value1 value2 = (output11763, value5886, value1)) : Flapjack.WordAlloc.removeDeadStructural input11764 value5 value1 value2 = (output11764, value5886, value1) := by
  rw [input11764_def, output11764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11762]
  dsimp only
  rw [child11763]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11762_skip, output11763_skip]
  kernel_rfl

theorem node11765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11765 value5886 value1 value2 = (output11765, value5887, value1) := by
  rw [input11765_def, output11765_def]
  kernel_rfl

theorem node11766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11766 value5887 value1 value2 = (output11766, value5887, value1) := by
  rw [input11766_def, output11766_def]
  kernel_rfl

theorem node11767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11767 value5887 value1 value2 = (output11767, value5888, value1) := by
  rw [input11767_def, output11767_def]
  kernel_rfl

theorem node11768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11768 value5888 value1 value2 = (output11768, value5889, value1) := by
  rw [input11768_def, output11768_def]
  kernel_rfl

theorem node11769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11769 value5889 value1 value2 = (output11769, value5890, value1) := by
  rw [input11769_def, output11769_def]
  kernel_rfl

theorem node11770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11770 value5890 value1 value2 = (output11770, value5891, value1) := by
  rw [input11770_def, output11770_def]
  kernel_rfl

theorem node11771_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11771 value5891 value1 value2 = (output11771, value5, value1) := by
  rw [input11771_def, output11771_def]
  kernel_rfl

theorem node11772_cond_eq
    (child11770 : Flapjack.WordAlloc.removeDeadStructural input11770 value5890 value1 value2 = (output11770, value5891, value1))
    (child11771 : Flapjack.WordAlloc.removeDeadStructural input11771 value5891 value1 value2 = (output11771, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11772 value5890 value1 value2 = (output11772, value5, value1) := by
  rw [input11772_def, output11772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11770]
  dsimp only
  rw [child11771]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11770_skip, output11771_skip]
  kernel_rfl

theorem node11773_cond_eq
    (child11769 : Flapjack.WordAlloc.removeDeadStructural input11769 value5889 value1 value2 = (output11769, value5890, value1))
    (child11772 : Flapjack.WordAlloc.removeDeadStructural input11772 value5890 value1 value2 = (output11772, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11773 value5889 value1 value2 = (output11773, value5, value1) := by
  rw [input11773_def, output11773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11769]
  dsimp only
  rw [child11772]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11769_skip, output11772_skip]
  kernel_rfl

theorem node11774_cond_eq
    (child11768 : Flapjack.WordAlloc.removeDeadStructural input11768 value5888 value1 value2 = (output11768, value5889, value1))
    (child11773 : Flapjack.WordAlloc.removeDeadStructural input11773 value5889 value1 value2 = (output11773, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11774 value5888 value1 value2 = (output11774, value5, value1) := by
  rw [input11774_def, output11774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11768]
  dsimp only
  rw [child11773]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11768_skip, output11773_skip]
  kernel_rfl

theorem node11775_cond_eq
    (child11767 : Flapjack.WordAlloc.removeDeadStructural input11767 value5887 value1 value2 = (output11767, value5888, value1))
    (child11774 : Flapjack.WordAlloc.removeDeadStructural input11774 value5888 value1 value2 = (output11774, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11775 value5887 value1 value2 = (output11775, value5, value1) := by
  rw [input11775_def, output11775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11767]
  dsimp only
  rw [child11774]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11767_skip, output11774_skip]
  kernel_rfl

#print axioms node11775_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
