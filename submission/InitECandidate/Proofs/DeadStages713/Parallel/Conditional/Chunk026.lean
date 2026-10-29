import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk026
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node6656_cond_eq
    (child6654 : Flapjack.WordAlloc.removeDeadStructural input6654 value3332 value1 value2 = (output6654, value3333, value1))
    (child6655 : Flapjack.WordAlloc.removeDeadStructural input6655 value3333 value1 value2 = (output6655, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6656 value3332 value1 value2 = (output6656, value5, value1) := by
  rw [input6656_def, output6656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6654]
  dsimp only
  rw [child6655]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6654_skip, output6655_skip]
  kernel_rfl

theorem node6657_cond_eq
    (child6653 : Flapjack.WordAlloc.removeDeadStructural input6653 value3331 value1 value2 = (output6653, value3332, value1))
    (child6656 : Flapjack.WordAlloc.removeDeadStructural input6656 value3332 value1 value2 = (output6656, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6657 value3331 value1 value2 = (output6657, value5, value1) := by
  rw [input6657_def, output6657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6653]
  dsimp only
  rw [child6656]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6653_skip, output6656_skip]
  kernel_rfl

theorem node6658_cond_eq
    (child6652 : Flapjack.WordAlloc.removeDeadStructural input6652 value3330 value1 value2 = (output6652, value3331, value1))
    (child6657 : Flapjack.WordAlloc.removeDeadStructural input6657 value3331 value1 value2 = (output6657, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6658 value3330 value1 value2 = (output6658, value5, value1) := by
  rw [input6658_def, output6658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6652]
  dsimp only
  rw [child6657]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6652_skip, output6657_skip]
  kernel_rfl

theorem node6659_cond_eq
    (child6651 : Flapjack.WordAlloc.removeDeadStructural input6651 value3328 value1 value2 = (output6651, value3330, value1))
    (child6658 : Flapjack.WordAlloc.removeDeadStructural input6658 value3330 value1 value2 = (output6658, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6659 value3328 value1 value2 = (output6659, value5, value1) := by
  rw [input6659_def, output6659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6651]
  dsimp only
  rw [child6658]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6651_skip, output6658_skip]
  kernel_rfl

theorem node6660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6660 value5 value1 value2 = (output6660, value3334, value1) := by
  rw [input6660_def, output6660_def]
  kernel_rfl

theorem node6661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6661 value3334 value1 value2 = (output6661, value3335, value1) := by
  rw [input6661_def, output6661_def]
  kernel_rfl

theorem node6662_cond_eq
    (child6660 : Flapjack.WordAlloc.removeDeadStructural input6660 value5 value1 value2 = (output6660, value3334, value1))
    (child6661 : Flapjack.WordAlloc.removeDeadStructural input6661 value3334 value1 value2 = (output6661, value3335, value1)) : Flapjack.WordAlloc.removeDeadStructural input6662 value5 value1 value2 = (output6662, value3335, value1) := by
  rw [input6662_def, output6662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6660]
  dsimp only
  rw [child6661]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6660_skip, output6661_skip]
  kernel_rfl

theorem node6663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6663 value3335 value1 value2 = (output6663, value3336, value1) := by
  rw [input6663_def, output6663_def]
  kernel_rfl

theorem node6664_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6664 value3336 value1 value2 = (output6664, value3336, value1) := by
  rw [input6664_def, output6664_def]
  kernel_rfl

theorem node6665_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6665 value3336 value1 value2 = (output6665, value3337, value1) := by
  rw [input6665_def, output6665_def]
  kernel_rfl

theorem node6666_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6666 value3337 value1 value2 = (output6666, value3338, value1) := by
  rw [input6666_def, output6666_def]
  kernel_rfl

theorem node6667_cond_eq
    (child6665 : Flapjack.WordAlloc.removeDeadStructural input6665 value3336 value1 value2 = (output6665, value3337, value1))
    (child6666 : Flapjack.WordAlloc.removeDeadStructural input6666 value3337 value1 value2 = (output6666, value3338, value1)) : Flapjack.WordAlloc.removeDeadStructural input6667 value3336 value1 value2 = (output6667, value3338, value1) := by
  rw [input6667_def, output6667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6665]
  dsimp only
  rw [child6666]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6665_skip, output6666_skip]
  kernel_rfl

theorem node6668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6668 value3338 value1 value2 = (output6668, value3339, value1) := by
  rw [input6668_def, output6668_def]
  kernel_rfl

theorem node6669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6669 value3339 value1 value2 = (output6669, value3340, value1) := by
  rw [input6669_def, output6669_def]
  kernel_rfl

theorem node6670_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6670 value3340 value1 value2 = (output6670, value3341, value1) := by
  rw [input6670_def, output6670_def]
  kernel_rfl

theorem node6671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6671 value3341 value1 value2 = (output6671, value5, value1) := by
  rw [input6671_def, output6671_def]
  kernel_rfl

theorem node6672_cond_eq
    (child6670 : Flapjack.WordAlloc.removeDeadStructural input6670 value3340 value1 value2 = (output6670, value3341, value1))
    (child6671 : Flapjack.WordAlloc.removeDeadStructural input6671 value3341 value1 value2 = (output6671, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6672 value3340 value1 value2 = (output6672, value5, value1) := by
  rw [input6672_def, output6672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6670]
  dsimp only
  rw [child6671]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6670_skip, output6671_skip]
  kernel_rfl

theorem node6673_cond_eq
    (child6669 : Flapjack.WordAlloc.removeDeadStructural input6669 value3339 value1 value2 = (output6669, value3340, value1))
    (child6672 : Flapjack.WordAlloc.removeDeadStructural input6672 value3340 value1 value2 = (output6672, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6673 value3339 value1 value2 = (output6673, value5, value1) := by
  rw [input6673_def, output6673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6669]
  dsimp only
  rw [child6672]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6669_skip, output6672_skip]
  kernel_rfl

theorem node6674_cond_eq
    (child6668 : Flapjack.WordAlloc.removeDeadStructural input6668 value3338 value1 value2 = (output6668, value3339, value1))
    (child6673 : Flapjack.WordAlloc.removeDeadStructural input6673 value3339 value1 value2 = (output6673, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6674 value3338 value1 value2 = (output6674, value5, value1) := by
  rw [input6674_def, output6674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6668]
  dsimp only
  rw [child6673]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6668_skip, output6673_skip]
  kernel_rfl

theorem node6675_cond_eq
    (child6667 : Flapjack.WordAlloc.removeDeadStructural input6667 value3336 value1 value2 = (output6667, value3338, value1))
    (child6674 : Flapjack.WordAlloc.removeDeadStructural input6674 value3338 value1 value2 = (output6674, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6675 value3336 value1 value2 = (output6675, value5, value1) := by
  rw [input6675_def, output6675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6667]
  dsimp only
  rw [child6674]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6667_skip, output6674_skip]
  kernel_rfl

theorem node6676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6676 value5 value1 value2 = (output6676, value3342, value1) := by
  rw [input6676_def, output6676_def]
  kernel_rfl

theorem node6677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6677 value3342 value1 value2 = (output6677, value3343, value1) := by
  rw [input6677_def, output6677_def]
  kernel_rfl

theorem node6678_cond_eq
    (child6676 : Flapjack.WordAlloc.removeDeadStructural input6676 value5 value1 value2 = (output6676, value3342, value1))
    (child6677 : Flapjack.WordAlloc.removeDeadStructural input6677 value3342 value1 value2 = (output6677, value3343, value1)) : Flapjack.WordAlloc.removeDeadStructural input6678 value5 value1 value2 = (output6678, value3343, value1) := by
  rw [input6678_def, output6678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6676]
  dsimp only
  rw [child6677]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6676_skip, output6677_skip]
  kernel_rfl

theorem node6679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6679 value3343 value1 value2 = (output6679, value3344, value1) := by
  rw [input6679_def, output6679_def]
  kernel_rfl

theorem node6680_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6680 value3344 value1 value2 = (output6680, value3344, value1) := by
  rw [input6680_def, output6680_def]
  kernel_rfl

theorem node6681_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6681 value3344 value1 value2 = (output6681, value3345, value1) := by
  rw [input6681_def, output6681_def]
  kernel_rfl

theorem node6682_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6682 value3345 value1 value2 = (output6682, value3346, value1) := by
  rw [input6682_def, output6682_def]
  kernel_rfl

theorem node6683_cond_eq
    (child6681 : Flapjack.WordAlloc.removeDeadStructural input6681 value3344 value1 value2 = (output6681, value3345, value1))
    (child6682 : Flapjack.WordAlloc.removeDeadStructural input6682 value3345 value1 value2 = (output6682, value3346, value1)) : Flapjack.WordAlloc.removeDeadStructural input6683 value3344 value1 value2 = (output6683, value3346, value1) := by
  rw [input6683_def, output6683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6681]
  dsimp only
  rw [child6682]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6681_skip, output6682_skip]
  kernel_rfl

theorem node6684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6684 value3346 value1 value2 = (output6684, value3347, value1) := by
  rw [input6684_def, output6684_def]
  kernel_rfl

theorem node6685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6685 value3347 value1 value2 = (output6685, value3348, value1) := by
  rw [input6685_def, output6685_def]
  kernel_rfl

theorem node6686_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6686 value3348 value1 value2 = (output6686, value3349, value1) := by
  rw [input6686_def, output6686_def]
  kernel_rfl

theorem node6687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6687 value3349 value1 value2 = (output6687, value5, value1) := by
  rw [input6687_def, output6687_def]
  kernel_rfl

theorem node6688_cond_eq
    (child6686 : Flapjack.WordAlloc.removeDeadStructural input6686 value3348 value1 value2 = (output6686, value3349, value1))
    (child6687 : Flapjack.WordAlloc.removeDeadStructural input6687 value3349 value1 value2 = (output6687, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6688 value3348 value1 value2 = (output6688, value5, value1) := by
  rw [input6688_def, output6688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6686]
  dsimp only
  rw [child6687]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6686_skip, output6687_skip]
  kernel_rfl

theorem node6689_cond_eq
    (child6685 : Flapjack.WordAlloc.removeDeadStructural input6685 value3347 value1 value2 = (output6685, value3348, value1))
    (child6688 : Flapjack.WordAlloc.removeDeadStructural input6688 value3348 value1 value2 = (output6688, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6689 value3347 value1 value2 = (output6689, value5, value1) := by
  rw [input6689_def, output6689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6685]
  dsimp only
  rw [child6688]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6685_skip, output6688_skip]
  kernel_rfl

theorem node6690_cond_eq
    (child6684 : Flapjack.WordAlloc.removeDeadStructural input6684 value3346 value1 value2 = (output6684, value3347, value1))
    (child6689 : Flapjack.WordAlloc.removeDeadStructural input6689 value3347 value1 value2 = (output6689, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6690 value3346 value1 value2 = (output6690, value5, value1) := by
  rw [input6690_def, output6690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6684]
  dsimp only
  rw [child6689]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6684_skip, output6689_skip]
  kernel_rfl

theorem node6691_cond_eq
    (child6683 : Flapjack.WordAlloc.removeDeadStructural input6683 value3344 value1 value2 = (output6683, value3346, value1))
    (child6690 : Flapjack.WordAlloc.removeDeadStructural input6690 value3346 value1 value2 = (output6690, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6691 value3344 value1 value2 = (output6691, value5, value1) := by
  rw [input6691_def, output6691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6683]
  dsimp only
  rw [child6690]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6683_skip, output6690_skip]
  kernel_rfl

theorem node6692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6692 value5 value1 value2 = (output6692, value3350, value1) := by
  rw [input6692_def, output6692_def]
  kernel_rfl

theorem node6693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6693 value3350 value1 value2 = (output6693, value3351, value1) := by
  rw [input6693_def, output6693_def]
  kernel_rfl

theorem node6694_cond_eq
    (child6692 : Flapjack.WordAlloc.removeDeadStructural input6692 value5 value1 value2 = (output6692, value3350, value1))
    (child6693 : Flapjack.WordAlloc.removeDeadStructural input6693 value3350 value1 value2 = (output6693, value3351, value1)) : Flapjack.WordAlloc.removeDeadStructural input6694 value5 value1 value2 = (output6694, value3351, value1) := by
  rw [input6694_def, output6694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6692]
  dsimp only
  rw [child6693]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6692_skip, output6693_skip]
  kernel_rfl

theorem node6695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6695 value3351 value1 value2 = (output6695, value3352, value1) := by
  rw [input6695_def, output6695_def]
  kernel_rfl

theorem node6696_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6696 value3352 value1 value2 = (output6696, value3352, value1) := by
  rw [input6696_def, output6696_def]
  kernel_rfl

theorem node6697_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6697 value3352 value1 value2 = (output6697, value3353, value1) := by
  rw [input6697_def, output6697_def]
  kernel_rfl

theorem node6698_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6698 value3353 value1 value2 = (output6698, value3354, value1) := by
  rw [input6698_def, output6698_def]
  kernel_rfl

theorem node6699_cond_eq
    (child6697 : Flapjack.WordAlloc.removeDeadStructural input6697 value3352 value1 value2 = (output6697, value3353, value1))
    (child6698 : Flapjack.WordAlloc.removeDeadStructural input6698 value3353 value1 value2 = (output6698, value3354, value1)) : Flapjack.WordAlloc.removeDeadStructural input6699 value3352 value1 value2 = (output6699, value3354, value1) := by
  rw [input6699_def, output6699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6697]
  dsimp only
  rw [child6698]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6697_skip, output6698_skip]
  kernel_rfl

theorem node6700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6700 value3354 value1 value2 = (output6700, value3355, value1) := by
  rw [input6700_def, output6700_def]
  kernel_rfl

theorem node6701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6701 value3355 value1 value2 = (output6701, value3356, value1) := by
  rw [input6701_def, output6701_def]
  kernel_rfl

theorem node6702_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6702 value3356 value1 value2 = (output6702, value3357, value1) := by
  rw [input6702_def, output6702_def]
  kernel_rfl

theorem node6703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6703 value3357 value1 value2 = (output6703, value5, value1) := by
  rw [input6703_def, output6703_def]
  kernel_rfl

theorem node6704_cond_eq
    (child6702 : Flapjack.WordAlloc.removeDeadStructural input6702 value3356 value1 value2 = (output6702, value3357, value1))
    (child6703 : Flapjack.WordAlloc.removeDeadStructural input6703 value3357 value1 value2 = (output6703, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6704 value3356 value1 value2 = (output6704, value5, value1) := by
  rw [input6704_def, output6704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6702]
  dsimp only
  rw [child6703]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6702_skip, output6703_skip]
  kernel_rfl

theorem node6705_cond_eq
    (child6701 : Flapjack.WordAlloc.removeDeadStructural input6701 value3355 value1 value2 = (output6701, value3356, value1))
    (child6704 : Flapjack.WordAlloc.removeDeadStructural input6704 value3356 value1 value2 = (output6704, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6705 value3355 value1 value2 = (output6705, value5, value1) := by
  rw [input6705_def, output6705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6701]
  dsimp only
  rw [child6704]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6701_skip, output6704_skip]
  kernel_rfl

theorem node6706_cond_eq
    (child6700 : Flapjack.WordAlloc.removeDeadStructural input6700 value3354 value1 value2 = (output6700, value3355, value1))
    (child6705 : Flapjack.WordAlloc.removeDeadStructural input6705 value3355 value1 value2 = (output6705, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6706 value3354 value1 value2 = (output6706, value5, value1) := by
  rw [input6706_def, output6706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6700]
  dsimp only
  rw [child6705]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6700_skip, output6705_skip]
  kernel_rfl

theorem node6707_cond_eq
    (child6699 : Flapjack.WordAlloc.removeDeadStructural input6699 value3352 value1 value2 = (output6699, value3354, value1))
    (child6706 : Flapjack.WordAlloc.removeDeadStructural input6706 value3354 value1 value2 = (output6706, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6707 value3352 value1 value2 = (output6707, value5, value1) := by
  rw [input6707_def, output6707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6699]
  dsimp only
  rw [child6706]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6699_skip, output6706_skip]
  kernel_rfl

theorem node6708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6708 value5 value1 value2 = (output6708, value3358, value1) := by
  rw [input6708_def, output6708_def]
  kernel_rfl

theorem node6709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6709 value3358 value1 value2 = (output6709, value3359, value1) := by
  rw [input6709_def, output6709_def]
  kernel_rfl

theorem node6710_cond_eq
    (child6708 : Flapjack.WordAlloc.removeDeadStructural input6708 value5 value1 value2 = (output6708, value3358, value1))
    (child6709 : Flapjack.WordAlloc.removeDeadStructural input6709 value3358 value1 value2 = (output6709, value3359, value1)) : Flapjack.WordAlloc.removeDeadStructural input6710 value5 value1 value2 = (output6710, value3359, value1) := by
  rw [input6710_def, output6710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6708]
  dsimp only
  rw [child6709]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6708_skip, output6709_skip]
  kernel_rfl

theorem node6711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6711 value3359 value1 value2 = (output6711, value3360, value1) := by
  rw [input6711_def, output6711_def]
  kernel_rfl

theorem node6712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6712 value3360 value1 value2 = (output6712, value3360, value1) := by
  rw [input6712_def, output6712_def]
  kernel_rfl

theorem node6713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6713 value3360 value1 value2 = (output6713, value3361, value1) := by
  rw [input6713_def, output6713_def]
  kernel_rfl

theorem node6714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6714 value3361 value1 value2 = (output6714, value3362, value1) := by
  rw [input6714_def, output6714_def]
  kernel_rfl

theorem node6715_cond_eq
    (child6713 : Flapjack.WordAlloc.removeDeadStructural input6713 value3360 value1 value2 = (output6713, value3361, value1))
    (child6714 : Flapjack.WordAlloc.removeDeadStructural input6714 value3361 value1 value2 = (output6714, value3362, value1)) : Flapjack.WordAlloc.removeDeadStructural input6715 value3360 value1 value2 = (output6715, value3362, value1) := by
  rw [input6715_def, output6715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6713]
  dsimp only
  rw [child6714]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6713_skip, output6714_skip]
  kernel_rfl

theorem node6716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6716 value3362 value1 value2 = (output6716, value3363, value1) := by
  rw [input6716_def, output6716_def]
  kernel_rfl

theorem node6717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6717 value3363 value1 value2 = (output6717, value3364, value1) := by
  rw [input6717_def, output6717_def]
  kernel_rfl

theorem node6718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6718 value3364 value1 value2 = (output6718, value3365, value1) := by
  rw [input6718_def, output6718_def]
  kernel_rfl

theorem node6719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6719 value3365 value1 value2 = (output6719, value5, value1) := by
  rw [input6719_def, output6719_def]
  kernel_rfl

theorem node6720_cond_eq
    (child6718 : Flapjack.WordAlloc.removeDeadStructural input6718 value3364 value1 value2 = (output6718, value3365, value1))
    (child6719 : Flapjack.WordAlloc.removeDeadStructural input6719 value3365 value1 value2 = (output6719, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6720 value3364 value1 value2 = (output6720, value5, value1) := by
  rw [input6720_def, output6720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6718]
  dsimp only
  rw [child6719]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6718_skip, output6719_skip]
  kernel_rfl

theorem node6721_cond_eq
    (child6717 : Flapjack.WordAlloc.removeDeadStructural input6717 value3363 value1 value2 = (output6717, value3364, value1))
    (child6720 : Flapjack.WordAlloc.removeDeadStructural input6720 value3364 value1 value2 = (output6720, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6721 value3363 value1 value2 = (output6721, value5, value1) := by
  rw [input6721_def, output6721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6717]
  dsimp only
  rw [child6720]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6717_skip, output6720_skip]
  kernel_rfl

theorem node6722_cond_eq
    (child6716 : Flapjack.WordAlloc.removeDeadStructural input6716 value3362 value1 value2 = (output6716, value3363, value1))
    (child6721 : Flapjack.WordAlloc.removeDeadStructural input6721 value3363 value1 value2 = (output6721, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6722 value3362 value1 value2 = (output6722, value5, value1) := by
  rw [input6722_def, output6722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6716]
  dsimp only
  rw [child6721]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6716_skip, output6721_skip]
  kernel_rfl

theorem node6723_cond_eq
    (child6715 : Flapjack.WordAlloc.removeDeadStructural input6715 value3360 value1 value2 = (output6715, value3362, value1))
    (child6722 : Flapjack.WordAlloc.removeDeadStructural input6722 value3362 value1 value2 = (output6722, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6723 value3360 value1 value2 = (output6723, value5, value1) := by
  rw [input6723_def, output6723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6715]
  dsimp only
  rw [child6722]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6715_skip, output6722_skip]
  kernel_rfl

theorem node6724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6724 value5 value1 value2 = (output6724, value3366, value1) := by
  rw [input6724_def, output6724_def]
  kernel_rfl

theorem node6725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6725 value3366 value1 value2 = (output6725, value3367, value1) := by
  rw [input6725_def, output6725_def]
  kernel_rfl

theorem node6726_cond_eq
    (child6724 : Flapjack.WordAlloc.removeDeadStructural input6724 value5 value1 value2 = (output6724, value3366, value1))
    (child6725 : Flapjack.WordAlloc.removeDeadStructural input6725 value3366 value1 value2 = (output6725, value3367, value1)) : Flapjack.WordAlloc.removeDeadStructural input6726 value5 value1 value2 = (output6726, value3367, value1) := by
  rw [input6726_def, output6726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6724]
  dsimp only
  rw [child6725]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6724_skip, output6725_skip]
  kernel_rfl

theorem node6727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6727 value3367 value1 value2 = (output6727, value3368, value1) := by
  rw [input6727_def, output6727_def]
  kernel_rfl

theorem node6728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6728 value3368 value1 value2 = (output6728, value3368, value1) := by
  rw [input6728_def, output6728_def]
  kernel_rfl

theorem node6729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6729 value3368 value1 value2 = (output6729, value3369, value1) := by
  rw [input6729_def, output6729_def]
  kernel_rfl

theorem node6730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6730 value3369 value1 value2 = (output6730, value3370, value1) := by
  rw [input6730_def, output6730_def]
  kernel_rfl

theorem node6731_cond_eq
    (child6729 : Flapjack.WordAlloc.removeDeadStructural input6729 value3368 value1 value2 = (output6729, value3369, value1))
    (child6730 : Flapjack.WordAlloc.removeDeadStructural input6730 value3369 value1 value2 = (output6730, value3370, value1)) : Flapjack.WordAlloc.removeDeadStructural input6731 value3368 value1 value2 = (output6731, value3370, value1) := by
  rw [input6731_def, output6731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6729]
  dsimp only
  rw [child6730]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6729_skip, output6730_skip]
  kernel_rfl

theorem node6732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6732 value3370 value1 value2 = (output6732, value3371, value1) := by
  rw [input6732_def, output6732_def]
  kernel_rfl

theorem node6733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6733 value3371 value1 value2 = (output6733, value3372, value1) := by
  rw [input6733_def, output6733_def]
  kernel_rfl

theorem node6734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6734 value3372 value1 value2 = (output6734, value3373, value1) := by
  rw [input6734_def, output6734_def]
  kernel_rfl

theorem node6735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6735 value3373 value1 value2 = (output6735, value5, value1) := by
  rw [input6735_def, output6735_def]
  kernel_rfl

theorem node6736_cond_eq
    (child6734 : Flapjack.WordAlloc.removeDeadStructural input6734 value3372 value1 value2 = (output6734, value3373, value1))
    (child6735 : Flapjack.WordAlloc.removeDeadStructural input6735 value3373 value1 value2 = (output6735, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6736 value3372 value1 value2 = (output6736, value5, value1) := by
  rw [input6736_def, output6736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6734]
  dsimp only
  rw [child6735]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6734_skip, output6735_skip]
  kernel_rfl

theorem node6737_cond_eq
    (child6733 : Flapjack.WordAlloc.removeDeadStructural input6733 value3371 value1 value2 = (output6733, value3372, value1))
    (child6736 : Flapjack.WordAlloc.removeDeadStructural input6736 value3372 value1 value2 = (output6736, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6737 value3371 value1 value2 = (output6737, value5, value1) := by
  rw [input6737_def, output6737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6733]
  dsimp only
  rw [child6736]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6733_skip, output6736_skip]
  kernel_rfl

theorem node6738_cond_eq
    (child6732 : Flapjack.WordAlloc.removeDeadStructural input6732 value3370 value1 value2 = (output6732, value3371, value1))
    (child6737 : Flapjack.WordAlloc.removeDeadStructural input6737 value3371 value1 value2 = (output6737, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6738 value3370 value1 value2 = (output6738, value5, value1) := by
  rw [input6738_def, output6738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6732]
  dsimp only
  rw [child6737]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6732_skip, output6737_skip]
  kernel_rfl

theorem node6739_cond_eq
    (child6731 : Flapjack.WordAlloc.removeDeadStructural input6731 value3368 value1 value2 = (output6731, value3370, value1))
    (child6738 : Flapjack.WordAlloc.removeDeadStructural input6738 value3370 value1 value2 = (output6738, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6739 value3368 value1 value2 = (output6739, value5, value1) := by
  rw [input6739_def, output6739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6731]
  dsimp only
  rw [child6738]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6731_skip, output6738_skip]
  kernel_rfl

theorem node6740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6740 value5 value1 value2 = (output6740, value3374, value1) := by
  rw [input6740_def, output6740_def]
  kernel_rfl

theorem node6741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6741 value3374 value1 value2 = (output6741, value3375, value1) := by
  rw [input6741_def, output6741_def]
  kernel_rfl

theorem node6742_cond_eq
    (child6740 : Flapjack.WordAlloc.removeDeadStructural input6740 value5 value1 value2 = (output6740, value3374, value1))
    (child6741 : Flapjack.WordAlloc.removeDeadStructural input6741 value3374 value1 value2 = (output6741, value3375, value1)) : Flapjack.WordAlloc.removeDeadStructural input6742 value5 value1 value2 = (output6742, value3375, value1) := by
  rw [input6742_def, output6742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6740]
  dsimp only
  rw [child6741]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6740_skip, output6741_skip]
  kernel_rfl

theorem node6743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6743 value3375 value1 value2 = (output6743, value3376, value1) := by
  rw [input6743_def, output6743_def]
  kernel_rfl

theorem node6744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6744 value3376 value1 value2 = (output6744, value3376, value1) := by
  rw [input6744_def, output6744_def]
  kernel_rfl

theorem node6745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6745 value3376 value1 value2 = (output6745, value3377, value1) := by
  rw [input6745_def, output6745_def]
  kernel_rfl

theorem node6746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6746 value3377 value1 value2 = (output6746, value3378, value1) := by
  rw [input6746_def, output6746_def]
  kernel_rfl

theorem node6747_cond_eq
    (child6745 : Flapjack.WordAlloc.removeDeadStructural input6745 value3376 value1 value2 = (output6745, value3377, value1))
    (child6746 : Flapjack.WordAlloc.removeDeadStructural input6746 value3377 value1 value2 = (output6746, value3378, value1)) : Flapjack.WordAlloc.removeDeadStructural input6747 value3376 value1 value2 = (output6747, value3378, value1) := by
  rw [input6747_def, output6747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6745]
  dsimp only
  rw [child6746]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6745_skip, output6746_skip]
  kernel_rfl

theorem node6748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6748 value3378 value1 value2 = (output6748, value3379, value1) := by
  rw [input6748_def, output6748_def]
  kernel_rfl

theorem node6749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6749 value3379 value1 value2 = (output6749, value3380, value1) := by
  rw [input6749_def, output6749_def]
  kernel_rfl

theorem node6750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6750 value3380 value1 value2 = (output6750, value3381, value1) := by
  rw [input6750_def, output6750_def]
  kernel_rfl

theorem node6751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6751 value3381 value1 value2 = (output6751, value5, value1) := by
  rw [input6751_def, output6751_def]
  kernel_rfl

theorem node6752_cond_eq
    (child6750 : Flapjack.WordAlloc.removeDeadStructural input6750 value3380 value1 value2 = (output6750, value3381, value1))
    (child6751 : Flapjack.WordAlloc.removeDeadStructural input6751 value3381 value1 value2 = (output6751, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6752 value3380 value1 value2 = (output6752, value5, value1) := by
  rw [input6752_def, output6752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6750]
  dsimp only
  rw [child6751]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6750_skip, output6751_skip]
  kernel_rfl

theorem node6753_cond_eq
    (child6749 : Flapjack.WordAlloc.removeDeadStructural input6749 value3379 value1 value2 = (output6749, value3380, value1))
    (child6752 : Flapjack.WordAlloc.removeDeadStructural input6752 value3380 value1 value2 = (output6752, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6753 value3379 value1 value2 = (output6753, value5, value1) := by
  rw [input6753_def, output6753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6749]
  dsimp only
  rw [child6752]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6749_skip, output6752_skip]
  kernel_rfl

theorem node6754_cond_eq
    (child6748 : Flapjack.WordAlloc.removeDeadStructural input6748 value3378 value1 value2 = (output6748, value3379, value1))
    (child6753 : Flapjack.WordAlloc.removeDeadStructural input6753 value3379 value1 value2 = (output6753, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6754 value3378 value1 value2 = (output6754, value5, value1) := by
  rw [input6754_def, output6754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6748]
  dsimp only
  rw [child6753]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6748_skip, output6753_skip]
  kernel_rfl

theorem node6755_cond_eq
    (child6747 : Flapjack.WordAlloc.removeDeadStructural input6747 value3376 value1 value2 = (output6747, value3378, value1))
    (child6754 : Flapjack.WordAlloc.removeDeadStructural input6754 value3378 value1 value2 = (output6754, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6755 value3376 value1 value2 = (output6755, value5, value1) := by
  rw [input6755_def, output6755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6747]
  dsimp only
  rw [child6754]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6747_skip, output6754_skip]
  kernel_rfl

theorem node6756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6756 value5 value1 value2 = (output6756, value3382, value1) := by
  rw [input6756_def, output6756_def]
  kernel_rfl

theorem node6757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6757 value3382 value1 value2 = (output6757, value3383, value1) := by
  rw [input6757_def, output6757_def]
  kernel_rfl

theorem node6758_cond_eq
    (child6756 : Flapjack.WordAlloc.removeDeadStructural input6756 value5 value1 value2 = (output6756, value3382, value1))
    (child6757 : Flapjack.WordAlloc.removeDeadStructural input6757 value3382 value1 value2 = (output6757, value3383, value1)) : Flapjack.WordAlloc.removeDeadStructural input6758 value5 value1 value2 = (output6758, value3383, value1) := by
  rw [input6758_def, output6758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6756]
  dsimp only
  rw [child6757]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6756_skip, output6757_skip]
  kernel_rfl

theorem node6759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6759 value3383 value1 value2 = (output6759, value3384, value1) := by
  rw [input6759_def, output6759_def]
  kernel_rfl

theorem node6760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6760 value3384 value1 value2 = (output6760, value3384, value1) := by
  rw [input6760_def, output6760_def]
  kernel_rfl

theorem node6761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6761 value3384 value1 value2 = (output6761, value3385, value1) := by
  rw [input6761_def, output6761_def]
  kernel_rfl

theorem node6762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6762 value3385 value1 value2 = (output6762, value3386, value1) := by
  rw [input6762_def, output6762_def]
  kernel_rfl

theorem node6763_cond_eq
    (child6761 : Flapjack.WordAlloc.removeDeadStructural input6761 value3384 value1 value2 = (output6761, value3385, value1))
    (child6762 : Flapjack.WordAlloc.removeDeadStructural input6762 value3385 value1 value2 = (output6762, value3386, value1)) : Flapjack.WordAlloc.removeDeadStructural input6763 value3384 value1 value2 = (output6763, value3386, value1) := by
  rw [input6763_def, output6763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6761]
  dsimp only
  rw [child6762]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6761_skip, output6762_skip]
  kernel_rfl

theorem node6764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6764 value3386 value1 value2 = (output6764, value3387, value1) := by
  rw [input6764_def, output6764_def]
  kernel_rfl

theorem node6765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6765 value3387 value1 value2 = (output6765, value3388, value1) := by
  rw [input6765_def, output6765_def]
  kernel_rfl

theorem node6766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6766 value3388 value1 value2 = (output6766, value3389, value1) := by
  rw [input6766_def, output6766_def]
  kernel_rfl

theorem node6767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6767 value3389 value1 value2 = (output6767, value5, value1) := by
  rw [input6767_def, output6767_def]
  kernel_rfl

theorem node6768_cond_eq
    (child6766 : Flapjack.WordAlloc.removeDeadStructural input6766 value3388 value1 value2 = (output6766, value3389, value1))
    (child6767 : Flapjack.WordAlloc.removeDeadStructural input6767 value3389 value1 value2 = (output6767, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6768 value3388 value1 value2 = (output6768, value5, value1) := by
  rw [input6768_def, output6768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6766]
  dsimp only
  rw [child6767]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6766_skip, output6767_skip]
  kernel_rfl

theorem node6769_cond_eq
    (child6765 : Flapjack.WordAlloc.removeDeadStructural input6765 value3387 value1 value2 = (output6765, value3388, value1))
    (child6768 : Flapjack.WordAlloc.removeDeadStructural input6768 value3388 value1 value2 = (output6768, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6769 value3387 value1 value2 = (output6769, value5, value1) := by
  rw [input6769_def, output6769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6765]
  dsimp only
  rw [child6768]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6765_skip, output6768_skip]
  kernel_rfl

theorem node6770_cond_eq
    (child6764 : Flapjack.WordAlloc.removeDeadStructural input6764 value3386 value1 value2 = (output6764, value3387, value1))
    (child6769 : Flapjack.WordAlloc.removeDeadStructural input6769 value3387 value1 value2 = (output6769, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6770 value3386 value1 value2 = (output6770, value5, value1) := by
  rw [input6770_def, output6770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6764]
  dsimp only
  rw [child6769]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6764_skip, output6769_skip]
  kernel_rfl

theorem node6771_cond_eq
    (child6763 : Flapjack.WordAlloc.removeDeadStructural input6763 value3384 value1 value2 = (output6763, value3386, value1))
    (child6770 : Flapjack.WordAlloc.removeDeadStructural input6770 value3386 value1 value2 = (output6770, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6771 value3384 value1 value2 = (output6771, value5, value1) := by
  rw [input6771_def, output6771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6763]
  dsimp only
  rw [child6770]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6763_skip, output6770_skip]
  kernel_rfl

theorem node6772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6772 value5 value1 value2 = (output6772, value3390, value1) := by
  rw [input6772_def, output6772_def]
  kernel_rfl

theorem node6773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6773 value3390 value1 value2 = (output6773, value3391, value1) := by
  rw [input6773_def, output6773_def]
  kernel_rfl

theorem node6774_cond_eq
    (child6772 : Flapjack.WordAlloc.removeDeadStructural input6772 value5 value1 value2 = (output6772, value3390, value1))
    (child6773 : Flapjack.WordAlloc.removeDeadStructural input6773 value3390 value1 value2 = (output6773, value3391, value1)) : Flapjack.WordAlloc.removeDeadStructural input6774 value5 value1 value2 = (output6774, value3391, value1) := by
  rw [input6774_def, output6774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6772]
  dsimp only
  rw [child6773]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6772_skip, output6773_skip]
  kernel_rfl

theorem node6775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6775 value3391 value1 value2 = (output6775, value3392, value1) := by
  rw [input6775_def, output6775_def]
  kernel_rfl

theorem node6776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6776 value3392 value1 value2 = (output6776, value3392, value1) := by
  rw [input6776_def, output6776_def]
  kernel_rfl

theorem node6777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6777 value3392 value1 value2 = (output6777, value3393, value1) := by
  rw [input6777_def, output6777_def]
  kernel_rfl

theorem node6778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6778 value3393 value1 value2 = (output6778, value3394, value1) := by
  rw [input6778_def, output6778_def]
  kernel_rfl

theorem node6779_cond_eq
    (child6777 : Flapjack.WordAlloc.removeDeadStructural input6777 value3392 value1 value2 = (output6777, value3393, value1))
    (child6778 : Flapjack.WordAlloc.removeDeadStructural input6778 value3393 value1 value2 = (output6778, value3394, value1)) : Flapjack.WordAlloc.removeDeadStructural input6779 value3392 value1 value2 = (output6779, value3394, value1) := by
  rw [input6779_def, output6779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6777]
  dsimp only
  rw [child6778]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6777_skip, output6778_skip]
  kernel_rfl

theorem node6780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6780 value3394 value1 value2 = (output6780, value3395, value1) := by
  rw [input6780_def, output6780_def]
  kernel_rfl

theorem node6781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6781 value3395 value1 value2 = (output6781, value3396, value1) := by
  rw [input6781_def, output6781_def]
  kernel_rfl

theorem node6782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6782 value3396 value1 value2 = (output6782, value3397, value1) := by
  rw [input6782_def, output6782_def]
  kernel_rfl

theorem node6783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6783 value3397 value1 value2 = (output6783, value5, value1) := by
  rw [input6783_def, output6783_def]
  kernel_rfl

theorem node6784_cond_eq
    (child6782 : Flapjack.WordAlloc.removeDeadStructural input6782 value3396 value1 value2 = (output6782, value3397, value1))
    (child6783 : Flapjack.WordAlloc.removeDeadStructural input6783 value3397 value1 value2 = (output6783, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6784 value3396 value1 value2 = (output6784, value5, value1) := by
  rw [input6784_def, output6784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6782]
  dsimp only
  rw [child6783]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6782_skip, output6783_skip]
  kernel_rfl

theorem node6785_cond_eq
    (child6781 : Flapjack.WordAlloc.removeDeadStructural input6781 value3395 value1 value2 = (output6781, value3396, value1))
    (child6784 : Flapjack.WordAlloc.removeDeadStructural input6784 value3396 value1 value2 = (output6784, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6785 value3395 value1 value2 = (output6785, value5, value1) := by
  rw [input6785_def, output6785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6781]
  dsimp only
  rw [child6784]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6781_skip, output6784_skip]
  kernel_rfl

theorem node6786_cond_eq
    (child6780 : Flapjack.WordAlloc.removeDeadStructural input6780 value3394 value1 value2 = (output6780, value3395, value1))
    (child6785 : Flapjack.WordAlloc.removeDeadStructural input6785 value3395 value1 value2 = (output6785, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6786 value3394 value1 value2 = (output6786, value5, value1) := by
  rw [input6786_def, output6786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6780]
  dsimp only
  rw [child6785]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6780_skip, output6785_skip]
  kernel_rfl

theorem node6787_cond_eq
    (child6779 : Flapjack.WordAlloc.removeDeadStructural input6779 value3392 value1 value2 = (output6779, value3394, value1))
    (child6786 : Flapjack.WordAlloc.removeDeadStructural input6786 value3394 value1 value2 = (output6786, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6787 value3392 value1 value2 = (output6787, value5, value1) := by
  rw [input6787_def, output6787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6779]
  dsimp only
  rw [child6786]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6779_skip, output6786_skip]
  kernel_rfl

theorem node6788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6788 value5 value1 value2 = (output6788, value3398, value1) := by
  rw [input6788_def, output6788_def]
  kernel_rfl

theorem node6789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6789 value3398 value1 value2 = (output6789, value3399, value1) := by
  rw [input6789_def, output6789_def]
  kernel_rfl

theorem node6790_cond_eq
    (child6788 : Flapjack.WordAlloc.removeDeadStructural input6788 value5 value1 value2 = (output6788, value3398, value1))
    (child6789 : Flapjack.WordAlloc.removeDeadStructural input6789 value3398 value1 value2 = (output6789, value3399, value1)) : Flapjack.WordAlloc.removeDeadStructural input6790 value5 value1 value2 = (output6790, value3399, value1) := by
  rw [input6790_def, output6790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6788]
  dsimp only
  rw [child6789]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6788_skip, output6789_skip]
  kernel_rfl

theorem node6791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6791 value3399 value1 value2 = (output6791, value3400, value1) := by
  rw [input6791_def, output6791_def]
  kernel_rfl

theorem node6792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6792 value3400 value1 value2 = (output6792, value3400, value1) := by
  rw [input6792_def, output6792_def]
  kernel_rfl

theorem node6793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6793 value3400 value1 value2 = (output6793, value3401, value1) := by
  rw [input6793_def, output6793_def]
  kernel_rfl

theorem node6794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6794 value3401 value1 value2 = (output6794, value3402, value1) := by
  rw [input6794_def, output6794_def]
  kernel_rfl

theorem node6795_cond_eq
    (child6793 : Flapjack.WordAlloc.removeDeadStructural input6793 value3400 value1 value2 = (output6793, value3401, value1))
    (child6794 : Flapjack.WordAlloc.removeDeadStructural input6794 value3401 value1 value2 = (output6794, value3402, value1)) : Flapjack.WordAlloc.removeDeadStructural input6795 value3400 value1 value2 = (output6795, value3402, value1) := by
  rw [input6795_def, output6795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6793]
  dsimp only
  rw [child6794]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6793_skip, output6794_skip]
  kernel_rfl

theorem node6796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6796 value3402 value1 value2 = (output6796, value3403, value1) := by
  rw [input6796_def, output6796_def]
  kernel_rfl

theorem node6797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6797 value3403 value1 value2 = (output6797, value3404, value1) := by
  rw [input6797_def, output6797_def]
  kernel_rfl

theorem node6798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6798 value3404 value1 value2 = (output6798, value3405, value1) := by
  rw [input6798_def, output6798_def]
  kernel_rfl

theorem node6799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6799 value3405 value1 value2 = (output6799, value5, value1) := by
  rw [input6799_def, output6799_def]
  kernel_rfl

theorem node6800_cond_eq
    (child6798 : Flapjack.WordAlloc.removeDeadStructural input6798 value3404 value1 value2 = (output6798, value3405, value1))
    (child6799 : Flapjack.WordAlloc.removeDeadStructural input6799 value3405 value1 value2 = (output6799, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6800 value3404 value1 value2 = (output6800, value5, value1) := by
  rw [input6800_def, output6800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6798]
  dsimp only
  rw [child6799]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6798_skip, output6799_skip]
  kernel_rfl

theorem node6801_cond_eq
    (child6797 : Flapjack.WordAlloc.removeDeadStructural input6797 value3403 value1 value2 = (output6797, value3404, value1))
    (child6800 : Flapjack.WordAlloc.removeDeadStructural input6800 value3404 value1 value2 = (output6800, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6801 value3403 value1 value2 = (output6801, value5, value1) := by
  rw [input6801_def, output6801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6797]
  dsimp only
  rw [child6800]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6797_skip, output6800_skip]
  kernel_rfl

theorem node6802_cond_eq
    (child6796 : Flapjack.WordAlloc.removeDeadStructural input6796 value3402 value1 value2 = (output6796, value3403, value1))
    (child6801 : Flapjack.WordAlloc.removeDeadStructural input6801 value3403 value1 value2 = (output6801, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6802 value3402 value1 value2 = (output6802, value5, value1) := by
  rw [input6802_def, output6802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6796]
  dsimp only
  rw [child6801]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6796_skip, output6801_skip]
  kernel_rfl

theorem node6803_cond_eq
    (child6795 : Flapjack.WordAlloc.removeDeadStructural input6795 value3400 value1 value2 = (output6795, value3402, value1))
    (child6802 : Flapjack.WordAlloc.removeDeadStructural input6802 value3402 value1 value2 = (output6802, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6803 value3400 value1 value2 = (output6803, value5, value1) := by
  rw [input6803_def, output6803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6795]
  dsimp only
  rw [child6802]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6795_skip, output6802_skip]
  kernel_rfl

theorem node6804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6804 value5 value1 value2 = (output6804, value3406, value1) := by
  rw [input6804_def, output6804_def]
  kernel_rfl

theorem node6805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6805 value3406 value1 value2 = (output6805, value3407, value1) := by
  rw [input6805_def, output6805_def]
  kernel_rfl

theorem node6806_cond_eq
    (child6804 : Flapjack.WordAlloc.removeDeadStructural input6804 value5 value1 value2 = (output6804, value3406, value1))
    (child6805 : Flapjack.WordAlloc.removeDeadStructural input6805 value3406 value1 value2 = (output6805, value3407, value1)) : Flapjack.WordAlloc.removeDeadStructural input6806 value5 value1 value2 = (output6806, value3407, value1) := by
  rw [input6806_def, output6806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6804]
  dsimp only
  rw [child6805]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6804_skip, output6805_skip]
  kernel_rfl

theorem node6807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6807 value3407 value1 value2 = (output6807, value3408, value1) := by
  rw [input6807_def, output6807_def]
  kernel_rfl

theorem node6808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6808 value3408 value1 value2 = (output6808, value3408, value1) := by
  rw [input6808_def, output6808_def]
  kernel_rfl

theorem node6809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6809 value3408 value1 value2 = (output6809, value3409, value1) := by
  rw [input6809_def, output6809_def]
  kernel_rfl

theorem node6810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6810 value3409 value1 value2 = (output6810, value3410, value1) := by
  rw [input6810_def, output6810_def]
  kernel_rfl

theorem node6811_cond_eq
    (child6809 : Flapjack.WordAlloc.removeDeadStructural input6809 value3408 value1 value2 = (output6809, value3409, value1))
    (child6810 : Flapjack.WordAlloc.removeDeadStructural input6810 value3409 value1 value2 = (output6810, value3410, value1)) : Flapjack.WordAlloc.removeDeadStructural input6811 value3408 value1 value2 = (output6811, value3410, value1) := by
  rw [input6811_def, output6811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6809]
  dsimp only
  rw [child6810]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6809_skip, output6810_skip]
  kernel_rfl

theorem node6812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6812 value3410 value1 value2 = (output6812, value3411, value1) := by
  rw [input6812_def, output6812_def]
  kernel_rfl

theorem node6813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6813 value3411 value1 value2 = (output6813, value3412, value1) := by
  rw [input6813_def, output6813_def]
  kernel_rfl

theorem node6814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6814 value3412 value1 value2 = (output6814, value3413, value1) := by
  rw [input6814_def, output6814_def]
  kernel_rfl

theorem node6815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6815 value3413 value1 value2 = (output6815, value5, value1) := by
  rw [input6815_def, output6815_def]
  kernel_rfl

theorem node6816_cond_eq
    (child6814 : Flapjack.WordAlloc.removeDeadStructural input6814 value3412 value1 value2 = (output6814, value3413, value1))
    (child6815 : Flapjack.WordAlloc.removeDeadStructural input6815 value3413 value1 value2 = (output6815, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6816 value3412 value1 value2 = (output6816, value5, value1) := by
  rw [input6816_def, output6816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6814]
  dsimp only
  rw [child6815]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6814_skip, output6815_skip]
  kernel_rfl

theorem node6817_cond_eq
    (child6813 : Flapjack.WordAlloc.removeDeadStructural input6813 value3411 value1 value2 = (output6813, value3412, value1))
    (child6816 : Flapjack.WordAlloc.removeDeadStructural input6816 value3412 value1 value2 = (output6816, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6817 value3411 value1 value2 = (output6817, value5, value1) := by
  rw [input6817_def, output6817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6813]
  dsimp only
  rw [child6816]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6813_skip, output6816_skip]
  kernel_rfl

theorem node6818_cond_eq
    (child6812 : Flapjack.WordAlloc.removeDeadStructural input6812 value3410 value1 value2 = (output6812, value3411, value1))
    (child6817 : Flapjack.WordAlloc.removeDeadStructural input6817 value3411 value1 value2 = (output6817, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6818 value3410 value1 value2 = (output6818, value5, value1) := by
  rw [input6818_def, output6818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6812]
  dsimp only
  rw [child6817]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6812_skip, output6817_skip]
  kernel_rfl

theorem node6819_cond_eq
    (child6811 : Flapjack.WordAlloc.removeDeadStructural input6811 value3408 value1 value2 = (output6811, value3410, value1))
    (child6818 : Flapjack.WordAlloc.removeDeadStructural input6818 value3410 value1 value2 = (output6818, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6819 value3408 value1 value2 = (output6819, value5, value1) := by
  rw [input6819_def, output6819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6811]
  dsimp only
  rw [child6818]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6811_skip, output6818_skip]
  kernel_rfl

theorem node6820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6820 value5 value1 value2 = (output6820, value3414, value1) := by
  rw [input6820_def, output6820_def]
  kernel_rfl

theorem node6821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6821 value3414 value1 value2 = (output6821, value3415, value1) := by
  rw [input6821_def, output6821_def]
  kernel_rfl

theorem node6822_cond_eq
    (child6820 : Flapjack.WordAlloc.removeDeadStructural input6820 value5 value1 value2 = (output6820, value3414, value1))
    (child6821 : Flapjack.WordAlloc.removeDeadStructural input6821 value3414 value1 value2 = (output6821, value3415, value1)) : Flapjack.WordAlloc.removeDeadStructural input6822 value5 value1 value2 = (output6822, value3415, value1) := by
  rw [input6822_def, output6822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6820]
  dsimp only
  rw [child6821]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6820_skip, output6821_skip]
  kernel_rfl

theorem node6823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6823 value3415 value1 value2 = (output6823, value3416, value1) := by
  rw [input6823_def, output6823_def]
  kernel_rfl

theorem node6824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6824 value3416 value1 value2 = (output6824, value3416, value1) := by
  rw [input6824_def, output6824_def]
  kernel_rfl

theorem node6825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6825 value3416 value1 value2 = (output6825, value3417, value1) := by
  rw [input6825_def, output6825_def]
  kernel_rfl

theorem node6826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6826 value3417 value1 value2 = (output6826, value3418, value1) := by
  rw [input6826_def, output6826_def]
  kernel_rfl

theorem node6827_cond_eq
    (child6825 : Flapjack.WordAlloc.removeDeadStructural input6825 value3416 value1 value2 = (output6825, value3417, value1))
    (child6826 : Flapjack.WordAlloc.removeDeadStructural input6826 value3417 value1 value2 = (output6826, value3418, value1)) : Flapjack.WordAlloc.removeDeadStructural input6827 value3416 value1 value2 = (output6827, value3418, value1) := by
  rw [input6827_def, output6827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6825]
  dsimp only
  rw [child6826]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6825_skip, output6826_skip]
  kernel_rfl

theorem node6828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6828 value3418 value1 value2 = (output6828, value3419, value1) := by
  rw [input6828_def, output6828_def]
  kernel_rfl

theorem node6829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6829 value3419 value1 value2 = (output6829, value3420, value1) := by
  rw [input6829_def, output6829_def]
  kernel_rfl

theorem node6830_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6830 value3420 value1 value2 = (output6830, value3421, value1) := by
  rw [input6830_def, output6830_def]
  kernel_rfl

theorem node6831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6831 value3421 value1 value2 = (output6831, value5, value1) := by
  rw [input6831_def, output6831_def]
  kernel_rfl

theorem node6832_cond_eq
    (child6830 : Flapjack.WordAlloc.removeDeadStructural input6830 value3420 value1 value2 = (output6830, value3421, value1))
    (child6831 : Flapjack.WordAlloc.removeDeadStructural input6831 value3421 value1 value2 = (output6831, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6832 value3420 value1 value2 = (output6832, value5, value1) := by
  rw [input6832_def, output6832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6830]
  dsimp only
  rw [child6831]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6830_skip, output6831_skip]
  kernel_rfl

theorem node6833_cond_eq
    (child6829 : Flapjack.WordAlloc.removeDeadStructural input6829 value3419 value1 value2 = (output6829, value3420, value1))
    (child6832 : Flapjack.WordAlloc.removeDeadStructural input6832 value3420 value1 value2 = (output6832, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6833 value3419 value1 value2 = (output6833, value5, value1) := by
  rw [input6833_def, output6833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6829]
  dsimp only
  rw [child6832]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6829_skip, output6832_skip]
  kernel_rfl

theorem node6834_cond_eq
    (child6828 : Flapjack.WordAlloc.removeDeadStructural input6828 value3418 value1 value2 = (output6828, value3419, value1))
    (child6833 : Flapjack.WordAlloc.removeDeadStructural input6833 value3419 value1 value2 = (output6833, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6834 value3418 value1 value2 = (output6834, value5, value1) := by
  rw [input6834_def, output6834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6828]
  dsimp only
  rw [child6833]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6828_skip, output6833_skip]
  kernel_rfl

theorem node6835_cond_eq
    (child6827 : Flapjack.WordAlloc.removeDeadStructural input6827 value3416 value1 value2 = (output6827, value3418, value1))
    (child6834 : Flapjack.WordAlloc.removeDeadStructural input6834 value3418 value1 value2 = (output6834, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6835 value3416 value1 value2 = (output6835, value5, value1) := by
  rw [input6835_def, output6835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6827]
  dsimp only
  rw [child6834]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6827_skip, output6834_skip]
  kernel_rfl

theorem node6836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6836 value5 value1 value2 = (output6836, value3422, value1) := by
  rw [input6836_def, output6836_def]
  kernel_rfl

theorem node6837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6837 value3422 value1 value2 = (output6837, value3423, value1) := by
  rw [input6837_def, output6837_def]
  kernel_rfl

theorem node6838_cond_eq
    (child6836 : Flapjack.WordAlloc.removeDeadStructural input6836 value5 value1 value2 = (output6836, value3422, value1))
    (child6837 : Flapjack.WordAlloc.removeDeadStructural input6837 value3422 value1 value2 = (output6837, value3423, value1)) : Flapjack.WordAlloc.removeDeadStructural input6838 value5 value1 value2 = (output6838, value3423, value1) := by
  rw [input6838_def, output6838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6836]
  dsimp only
  rw [child6837]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6836_skip, output6837_skip]
  kernel_rfl

theorem node6839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6839 value3423 value1 value2 = (output6839, value3424, value1) := by
  rw [input6839_def, output6839_def]
  kernel_rfl

theorem node6840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6840 value3424 value1 value2 = (output6840, value3424, value1) := by
  rw [input6840_def, output6840_def]
  kernel_rfl

theorem node6841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6841 value3424 value1 value2 = (output6841, value3425, value1) := by
  rw [input6841_def, output6841_def]
  kernel_rfl

theorem node6842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6842 value3425 value1 value2 = (output6842, value3426, value1) := by
  rw [input6842_def, output6842_def]
  kernel_rfl

theorem node6843_cond_eq
    (child6841 : Flapjack.WordAlloc.removeDeadStructural input6841 value3424 value1 value2 = (output6841, value3425, value1))
    (child6842 : Flapjack.WordAlloc.removeDeadStructural input6842 value3425 value1 value2 = (output6842, value3426, value1)) : Flapjack.WordAlloc.removeDeadStructural input6843 value3424 value1 value2 = (output6843, value3426, value1) := by
  rw [input6843_def, output6843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6841]
  dsimp only
  rw [child6842]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6841_skip, output6842_skip]
  kernel_rfl

theorem node6844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6844 value3426 value1 value2 = (output6844, value3427, value1) := by
  rw [input6844_def, output6844_def]
  kernel_rfl

theorem node6845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6845 value3427 value1 value2 = (output6845, value3428, value1) := by
  rw [input6845_def, output6845_def]
  kernel_rfl

theorem node6846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6846 value3428 value1 value2 = (output6846, value3429, value1) := by
  rw [input6846_def, output6846_def]
  kernel_rfl

theorem node6847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6847 value3429 value1 value2 = (output6847, value5, value1) := by
  rw [input6847_def, output6847_def]
  kernel_rfl

theorem node6848_cond_eq
    (child6846 : Flapjack.WordAlloc.removeDeadStructural input6846 value3428 value1 value2 = (output6846, value3429, value1))
    (child6847 : Flapjack.WordAlloc.removeDeadStructural input6847 value3429 value1 value2 = (output6847, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6848 value3428 value1 value2 = (output6848, value5, value1) := by
  rw [input6848_def, output6848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6846]
  dsimp only
  rw [child6847]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6846_skip, output6847_skip]
  kernel_rfl

theorem node6849_cond_eq
    (child6845 : Flapjack.WordAlloc.removeDeadStructural input6845 value3427 value1 value2 = (output6845, value3428, value1))
    (child6848 : Flapjack.WordAlloc.removeDeadStructural input6848 value3428 value1 value2 = (output6848, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6849 value3427 value1 value2 = (output6849, value5, value1) := by
  rw [input6849_def, output6849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6845]
  dsimp only
  rw [child6848]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6845_skip, output6848_skip]
  kernel_rfl

theorem node6850_cond_eq
    (child6844 : Flapjack.WordAlloc.removeDeadStructural input6844 value3426 value1 value2 = (output6844, value3427, value1))
    (child6849 : Flapjack.WordAlloc.removeDeadStructural input6849 value3427 value1 value2 = (output6849, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6850 value3426 value1 value2 = (output6850, value5, value1) := by
  rw [input6850_def, output6850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6844]
  dsimp only
  rw [child6849]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6844_skip, output6849_skip]
  kernel_rfl

theorem node6851_cond_eq
    (child6843 : Flapjack.WordAlloc.removeDeadStructural input6843 value3424 value1 value2 = (output6843, value3426, value1))
    (child6850 : Flapjack.WordAlloc.removeDeadStructural input6850 value3426 value1 value2 = (output6850, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6851 value3424 value1 value2 = (output6851, value5, value1) := by
  rw [input6851_def, output6851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6843]
  dsimp only
  rw [child6850]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6843_skip, output6850_skip]
  kernel_rfl

theorem node6852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6852 value5 value1 value2 = (output6852, value3430, value1) := by
  rw [input6852_def, output6852_def]
  kernel_rfl

theorem node6853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6853 value3430 value1 value2 = (output6853, value3431, value1) := by
  rw [input6853_def, output6853_def]
  kernel_rfl

theorem node6854_cond_eq
    (child6852 : Flapjack.WordAlloc.removeDeadStructural input6852 value5 value1 value2 = (output6852, value3430, value1))
    (child6853 : Flapjack.WordAlloc.removeDeadStructural input6853 value3430 value1 value2 = (output6853, value3431, value1)) : Flapjack.WordAlloc.removeDeadStructural input6854 value5 value1 value2 = (output6854, value3431, value1) := by
  rw [input6854_def, output6854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6852]
  dsimp only
  rw [child6853]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6852_skip, output6853_skip]
  kernel_rfl

theorem node6855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6855 value3431 value1 value2 = (output6855, value3432, value1) := by
  rw [input6855_def, output6855_def]
  kernel_rfl

theorem node6856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6856 value3432 value1 value2 = (output6856, value3432, value1) := by
  rw [input6856_def, output6856_def]
  kernel_rfl

theorem node6857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6857 value3432 value1 value2 = (output6857, value3433, value1) := by
  rw [input6857_def, output6857_def]
  kernel_rfl

theorem node6858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6858 value3433 value1 value2 = (output6858, value3434, value1) := by
  rw [input6858_def, output6858_def]
  kernel_rfl

theorem node6859_cond_eq
    (child6857 : Flapjack.WordAlloc.removeDeadStructural input6857 value3432 value1 value2 = (output6857, value3433, value1))
    (child6858 : Flapjack.WordAlloc.removeDeadStructural input6858 value3433 value1 value2 = (output6858, value3434, value1)) : Flapjack.WordAlloc.removeDeadStructural input6859 value3432 value1 value2 = (output6859, value3434, value1) := by
  rw [input6859_def, output6859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6857]
  dsimp only
  rw [child6858]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6857_skip, output6858_skip]
  kernel_rfl

theorem node6860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6860 value3434 value1 value2 = (output6860, value3435, value1) := by
  rw [input6860_def, output6860_def]
  kernel_rfl

theorem node6861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6861 value3435 value1 value2 = (output6861, value3436, value1) := by
  rw [input6861_def, output6861_def]
  kernel_rfl

theorem node6862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6862 value3436 value1 value2 = (output6862, value3437, value1) := by
  rw [input6862_def, output6862_def]
  kernel_rfl

theorem node6863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6863 value3437 value1 value2 = (output6863, value5, value1) := by
  rw [input6863_def, output6863_def]
  kernel_rfl

theorem node6864_cond_eq
    (child6862 : Flapjack.WordAlloc.removeDeadStructural input6862 value3436 value1 value2 = (output6862, value3437, value1))
    (child6863 : Flapjack.WordAlloc.removeDeadStructural input6863 value3437 value1 value2 = (output6863, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6864 value3436 value1 value2 = (output6864, value5, value1) := by
  rw [input6864_def, output6864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6862]
  dsimp only
  rw [child6863]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6862_skip, output6863_skip]
  kernel_rfl

theorem node6865_cond_eq
    (child6861 : Flapjack.WordAlloc.removeDeadStructural input6861 value3435 value1 value2 = (output6861, value3436, value1))
    (child6864 : Flapjack.WordAlloc.removeDeadStructural input6864 value3436 value1 value2 = (output6864, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6865 value3435 value1 value2 = (output6865, value5, value1) := by
  rw [input6865_def, output6865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6861]
  dsimp only
  rw [child6864]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6861_skip, output6864_skip]
  kernel_rfl

theorem node6866_cond_eq
    (child6860 : Flapjack.WordAlloc.removeDeadStructural input6860 value3434 value1 value2 = (output6860, value3435, value1))
    (child6865 : Flapjack.WordAlloc.removeDeadStructural input6865 value3435 value1 value2 = (output6865, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6866 value3434 value1 value2 = (output6866, value5, value1) := by
  rw [input6866_def, output6866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6860]
  dsimp only
  rw [child6865]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6860_skip, output6865_skip]
  kernel_rfl

theorem node6867_cond_eq
    (child6859 : Flapjack.WordAlloc.removeDeadStructural input6859 value3432 value1 value2 = (output6859, value3434, value1))
    (child6866 : Flapjack.WordAlloc.removeDeadStructural input6866 value3434 value1 value2 = (output6866, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6867 value3432 value1 value2 = (output6867, value5, value1) := by
  rw [input6867_def, output6867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6859]
  dsimp only
  rw [child6866]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6859_skip, output6866_skip]
  kernel_rfl

theorem node6868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6868 value5 value1 value2 = (output6868, value3438, value1) := by
  rw [input6868_def, output6868_def]
  kernel_rfl

theorem node6869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6869 value3438 value1 value2 = (output6869, value3439, value1) := by
  rw [input6869_def, output6869_def]
  kernel_rfl

theorem node6870_cond_eq
    (child6868 : Flapjack.WordAlloc.removeDeadStructural input6868 value5 value1 value2 = (output6868, value3438, value1))
    (child6869 : Flapjack.WordAlloc.removeDeadStructural input6869 value3438 value1 value2 = (output6869, value3439, value1)) : Flapjack.WordAlloc.removeDeadStructural input6870 value5 value1 value2 = (output6870, value3439, value1) := by
  rw [input6870_def, output6870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6868]
  dsimp only
  rw [child6869]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6868_skip, output6869_skip]
  kernel_rfl

theorem node6871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6871 value3439 value1 value2 = (output6871, value3440, value1) := by
  rw [input6871_def, output6871_def]
  kernel_rfl

theorem node6872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6872 value3440 value1 value2 = (output6872, value3440, value1) := by
  rw [input6872_def, output6872_def]
  kernel_rfl

theorem node6873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6873 value3440 value1 value2 = (output6873, value3441, value1) := by
  rw [input6873_def, output6873_def]
  kernel_rfl

theorem node6874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6874 value3441 value1 value2 = (output6874, value3442, value1) := by
  rw [input6874_def, output6874_def]
  kernel_rfl

theorem node6875_cond_eq
    (child6873 : Flapjack.WordAlloc.removeDeadStructural input6873 value3440 value1 value2 = (output6873, value3441, value1))
    (child6874 : Flapjack.WordAlloc.removeDeadStructural input6874 value3441 value1 value2 = (output6874, value3442, value1)) : Flapjack.WordAlloc.removeDeadStructural input6875 value3440 value1 value2 = (output6875, value3442, value1) := by
  rw [input6875_def, output6875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6873]
  dsimp only
  rw [child6874]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6873_skip, output6874_skip]
  kernel_rfl

theorem node6876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6876 value3442 value1 value2 = (output6876, value3443, value1) := by
  rw [input6876_def, output6876_def]
  kernel_rfl

theorem node6877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6877 value3443 value1 value2 = (output6877, value3444, value1) := by
  rw [input6877_def, output6877_def]
  kernel_rfl

theorem node6878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6878 value3444 value1 value2 = (output6878, value3445, value1) := by
  rw [input6878_def, output6878_def]
  kernel_rfl

theorem node6879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6879 value3445 value1 value2 = (output6879, value5, value1) := by
  rw [input6879_def, output6879_def]
  kernel_rfl

theorem node6880_cond_eq
    (child6878 : Flapjack.WordAlloc.removeDeadStructural input6878 value3444 value1 value2 = (output6878, value3445, value1))
    (child6879 : Flapjack.WordAlloc.removeDeadStructural input6879 value3445 value1 value2 = (output6879, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6880 value3444 value1 value2 = (output6880, value5, value1) := by
  rw [input6880_def, output6880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6878]
  dsimp only
  rw [child6879]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6878_skip, output6879_skip]
  kernel_rfl

theorem node6881_cond_eq
    (child6877 : Flapjack.WordAlloc.removeDeadStructural input6877 value3443 value1 value2 = (output6877, value3444, value1))
    (child6880 : Flapjack.WordAlloc.removeDeadStructural input6880 value3444 value1 value2 = (output6880, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6881 value3443 value1 value2 = (output6881, value5, value1) := by
  rw [input6881_def, output6881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6877]
  dsimp only
  rw [child6880]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6877_skip, output6880_skip]
  kernel_rfl

theorem node6882_cond_eq
    (child6876 : Flapjack.WordAlloc.removeDeadStructural input6876 value3442 value1 value2 = (output6876, value3443, value1))
    (child6881 : Flapjack.WordAlloc.removeDeadStructural input6881 value3443 value1 value2 = (output6881, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6882 value3442 value1 value2 = (output6882, value5, value1) := by
  rw [input6882_def, output6882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6876]
  dsimp only
  rw [child6881]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6876_skip, output6881_skip]
  kernel_rfl

theorem node6883_cond_eq
    (child6875 : Flapjack.WordAlloc.removeDeadStructural input6875 value3440 value1 value2 = (output6875, value3442, value1))
    (child6882 : Flapjack.WordAlloc.removeDeadStructural input6882 value3442 value1 value2 = (output6882, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6883 value3440 value1 value2 = (output6883, value5, value1) := by
  rw [input6883_def, output6883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6875]
  dsimp only
  rw [child6882]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6875_skip, output6882_skip]
  kernel_rfl

theorem node6884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6884 value5 value1 value2 = (output6884, value3446, value1) := by
  rw [input6884_def, output6884_def]
  kernel_rfl

theorem node6885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6885 value3446 value1 value2 = (output6885, value3447, value1) := by
  rw [input6885_def, output6885_def]
  kernel_rfl

theorem node6886_cond_eq
    (child6884 : Flapjack.WordAlloc.removeDeadStructural input6884 value5 value1 value2 = (output6884, value3446, value1))
    (child6885 : Flapjack.WordAlloc.removeDeadStructural input6885 value3446 value1 value2 = (output6885, value3447, value1)) : Flapjack.WordAlloc.removeDeadStructural input6886 value5 value1 value2 = (output6886, value3447, value1) := by
  rw [input6886_def, output6886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6884]
  dsimp only
  rw [child6885]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6884_skip, output6885_skip]
  kernel_rfl

theorem node6887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6887 value3447 value1 value2 = (output6887, value3448, value1) := by
  rw [input6887_def, output6887_def]
  kernel_rfl

theorem node6888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6888 value3448 value1 value2 = (output6888, value3448, value1) := by
  rw [input6888_def, output6888_def]
  kernel_rfl

theorem node6889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6889 value3448 value1 value2 = (output6889, value3449, value1) := by
  rw [input6889_def, output6889_def]
  kernel_rfl

theorem node6890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6890 value3449 value1 value2 = (output6890, value3450, value1) := by
  rw [input6890_def, output6890_def]
  kernel_rfl

theorem node6891_cond_eq
    (child6889 : Flapjack.WordAlloc.removeDeadStructural input6889 value3448 value1 value2 = (output6889, value3449, value1))
    (child6890 : Flapjack.WordAlloc.removeDeadStructural input6890 value3449 value1 value2 = (output6890, value3450, value1)) : Flapjack.WordAlloc.removeDeadStructural input6891 value3448 value1 value2 = (output6891, value3450, value1) := by
  rw [input6891_def, output6891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6889]
  dsimp only
  rw [child6890]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6889_skip, output6890_skip]
  kernel_rfl

theorem node6892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6892 value3450 value1 value2 = (output6892, value3451, value1) := by
  rw [input6892_def, output6892_def]
  kernel_rfl

theorem node6893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6893 value3451 value1 value2 = (output6893, value3452, value1) := by
  rw [input6893_def, output6893_def]
  kernel_rfl

theorem node6894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6894 value3452 value1 value2 = (output6894, value3453, value1) := by
  rw [input6894_def, output6894_def]
  kernel_rfl

theorem node6895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6895 value3453 value1 value2 = (output6895, value5, value1) := by
  rw [input6895_def, output6895_def]
  kernel_rfl

theorem node6896_cond_eq
    (child6894 : Flapjack.WordAlloc.removeDeadStructural input6894 value3452 value1 value2 = (output6894, value3453, value1))
    (child6895 : Flapjack.WordAlloc.removeDeadStructural input6895 value3453 value1 value2 = (output6895, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6896 value3452 value1 value2 = (output6896, value5, value1) := by
  rw [input6896_def, output6896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6894]
  dsimp only
  rw [child6895]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6894_skip, output6895_skip]
  kernel_rfl

theorem node6897_cond_eq
    (child6893 : Flapjack.WordAlloc.removeDeadStructural input6893 value3451 value1 value2 = (output6893, value3452, value1))
    (child6896 : Flapjack.WordAlloc.removeDeadStructural input6896 value3452 value1 value2 = (output6896, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6897 value3451 value1 value2 = (output6897, value5, value1) := by
  rw [input6897_def, output6897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6893]
  dsimp only
  rw [child6896]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6893_skip, output6896_skip]
  kernel_rfl

theorem node6898_cond_eq
    (child6892 : Flapjack.WordAlloc.removeDeadStructural input6892 value3450 value1 value2 = (output6892, value3451, value1))
    (child6897 : Flapjack.WordAlloc.removeDeadStructural input6897 value3451 value1 value2 = (output6897, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6898 value3450 value1 value2 = (output6898, value5, value1) := by
  rw [input6898_def, output6898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6892]
  dsimp only
  rw [child6897]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6892_skip, output6897_skip]
  kernel_rfl

theorem node6899_cond_eq
    (child6891 : Flapjack.WordAlloc.removeDeadStructural input6891 value3448 value1 value2 = (output6891, value3450, value1))
    (child6898 : Flapjack.WordAlloc.removeDeadStructural input6898 value3450 value1 value2 = (output6898, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6899 value3448 value1 value2 = (output6899, value5, value1) := by
  rw [input6899_def, output6899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6891]
  dsimp only
  rw [child6898]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6891_skip, output6898_skip]
  kernel_rfl

theorem node6900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6900 value5 value1 value2 = (output6900, value3454, value1) := by
  rw [input6900_def, output6900_def]
  kernel_rfl

theorem node6901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6901 value3454 value1 value2 = (output6901, value3455, value1) := by
  rw [input6901_def, output6901_def]
  kernel_rfl

theorem node6902_cond_eq
    (child6900 : Flapjack.WordAlloc.removeDeadStructural input6900 value5 value1 value2 = (output6900, value3454, value1))
    (child6901 : Flapjack.WordAlloc.removeDeadStructural input6901 value3454 value1 value2 = (output6901, value3455, value1)) : Flapjack.WordAlloc.removeDeadStructural input6902 value5 value1 value2 = (output6902, value3455, value1) := by
  rw [input6902_def, output6902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6900]
  dsimp only
  rw [child6901]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6900_skip, output6901_skip]
  kernel_rfl

theorem node6903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6903 value3455 value1 value2 = (output6903, value3456, value1) := by
  rw [input6903_def, output6903_def]
  kernel_rfl

theorem node6904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6904 value3456 value1 value2 = (output6904, value3456, value1) := by
  rw [input6904_def, output6904_def]
  kernel_rfl

theorem node6905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6905 value3456 value1 value2 = (output6905, value3457, value1) := by
  rw [input6905_def, output6905_def]
  kernel_rfl

theorem node6906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6906 value3457 value1 value2 = (output6906, value3458, value1) := by
  rw [input6906_def, output6906_def]
  kernel_rfl

theorem node6907_cond_eq
    (child6905 : Flapjack.WordAlloc.removeDeadStructural input6905 value3456 value1 value2 = (output6905, value3457, value1))
    (child6906 : Flapjack.WordAlloc.removeDeadStructural input6906 value3457 value1 value2 = (output6906, value3458, value1)) : Flapjack.WordAlloc.removeDeadStructural input6907 value3456 value1 value2 = (output6907, value3458, value1) := by
  rw [input6907_def, output6907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6905]
  dsimp only
  rw [child6906]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6905_skip, output6906_skip]
  kernel_rfl

theorem node6908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6908 value3458 value1 value2 = (output6908, value3459, value1) := by
  rw [input6908_def, output6908_def]
  kernel_rfl

theorem node6909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6909 value3459 value1 value2 = (output6909, value3460, value1) := by
  rw [input6909_def, output6909_def]
  kernel_rfl

theorem node6910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6910 value3460 value1 value2 = (output6910, value3461, value1) := by
  rw [input6910_def, output6910_def]
  kernel_rfl

theorem node6911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6911 value3461 value1 value2 = (output6911, value5, value1) := by
  rw [input6911_def, output6911_def]
  kernel_rfl

#print axioms node6911_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
