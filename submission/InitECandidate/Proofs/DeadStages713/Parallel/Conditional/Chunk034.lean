import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk034
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node8704_cond_eq
    (child8702 : Flapjack.WordAlloc.removeDeadStructural input8702 value4356 value1 value2 = (output8702, value4357, value1))
    (child8703 : Flapjack.WordAlloc.removeDeadStructural input8703 value4357 value1 value2 = (output8703, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8704 value4356 value1 value2 = (output8704, value5, value1) := by
  rw [input8704_def, output8704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8702]
  dsimp only
  rw [child8703]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8702_skip, output8703_skip]
  kernel_rfl

theorem node8705_cond_eq
    (child8701 : Flapjack.WordAlloc.removeDeadStructural input8701 value4355 value1 value2 = (output8701, value4356, value1))
    (child8704 : Flapjack.WordAlloc.removeDeadStructural input8704 value4356 value1 value2 = (output8704, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8705 value4355 value1 value2 = (output8705, value5, value1) := by
  rw [input8705_def, output8705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8701]
  dsimp only
  rw [child8704]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8701_skip, output8704_skip]
  kernel_rfl

theorem node8706_cond_eq
    (child8700 : Flapjack.WordAlloc.removeDeadStructural input8700 value4354 value1 value2 = (output8700, value4355, value1))
    (child8705 : Flapjack.WordAlloc.removeDeadStructural input8705 value4355 value1 value2 = (output8705, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8706 value4354 value1 value2 = (output8706, value5, value1) := by
  rw [input8706_def, output8706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8700]
  dsimp only
  rw [child8705]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8700_skip, output8705_skip]
  kernel_rfl

theorem node8707_cond_eq
    (child8699 : Flapjack.WordAlloc.removeDeadStructural input8699 value4352 value1 value2 = (output8699, value4354, value1))
    (child8706 : Flapjack.WordAlloc.removeDeadStructural input8706 value4354 value1 value2 = (output8706, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8707 value4352 value1 value2 = (output8707, value5, value1) := by
  rw [input8707_def, output8707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8699]
  dsimp only
  rw [child8706]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8699_skip, output8706_skip]
  kernel_rfl

theorem node8708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8708 value5 value1 value2 = (output8708, value4358, value1) := by
  rw [input8708_def, output8708_def]
  kernel_rfl

theorem node8709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8709 value4358 value1 value2 = (output8709, value4359, value1) := by
  rw [input8709_def, output8709_def]
  kernel_rfl

theorem node8710_cond_eq
    (child8708 : Flapjack.WordAlloc.removeDeadStructural input8708 value5 value1 value2 = (output8708, value4358, value1))
    (child8709 : Flapjack.WordAlloc.removeDeadStructural input8709 value4358 value1 value2 = (output8709, value4359, value1)) : Flapjack.WordAlloc.removeDeadStructural input8710 value5 value1 value2 = (output8710, value4359, value1) := by
  rw [input8710_def, output8710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8708]
  dsimp only
  rw [child8709]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8708_skip, output8709_skip]
  kernel_rfl

theorem node8711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8711 value4359 value1 value2 = (output8711, value4360, value1) := by
  rw [input8711_def, output8711_def]
  kernel_rfl

theorem node8712_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8712 value4360 value1 value2 = (output8712, value4360, value1) := by
  rw [input8712_def, output8712_def]
  kernel_rfl

theorem node8713_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8713 value4360 value1 value2 = (output8713, value4361, value1) := by
  rw [input8713_def, output8713_def]
  kernel_rfl

theorem node8714_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8714 value4361 value1 value2 = (output8714, value4362, value1) := by
  rw [input8714_def, output8714_def]
  kernel_rfl

theorem node8715_cond_eq
    (child8713 : Flapjack.WordAlloc.removeDeadStructural input8713 value4360 value1 value2 = (output8713, value4361, value1))
    (child8714 : Flapjack.WordAlloc.removeDeadStructural input8714 value4361 value1 value2 = (output8714, value4362, value1)) : Flapjack.WordAlloc.removeDeadStructural input8715 value4360 value1 value2 = (output8715, value4362, value1) := by
  rw [input8715_def, output8715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8713]
  dsimp only
  rw [child8714]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8713_skip, output8714_skip]
  kernel_rfl

theorem node8716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8716 value4362 value1 value2 = (output8716, value4363, value1) := by
  rw [input8716_def, output8716_def]
  kernel_rfl

theorem node8717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8717 value4363 value1 value2 = (output8717, value4364, value1) := by
  rw [input8717_def, output8717_def]
  kernel_rfl

theorem node8718_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8718 value4364 value1 value2 = (output8718, value4365, value1) := by
  rw [input8718_def, output8718_def]
  kernel_rfl

theorem node8719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8719 value4365 value1 value2 = (output8719, value5, value1) := by
  rw [input8719_def, output8719_def]
  kernel_rfl

theorem node8720_cond_eq
    (child8718 : Flapjack.WordAlloc.removeDeadStructural input8718 value4364 value1 value2 = (output8718, value4365, value1))
    (child8719 : Flapjack.WordAlloc.removeDeadStructural input8719 value4365 value1 value2 = (output8719, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8720 value4364 value1 value2 = (output8720, value5, value1) := by
  rw [input8720_def, output8720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8718]
  dsimp only
  rw [child8719]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8718_skip, output8719_skip]
  kernel_rfl

theorem node8721_cond_eq
    (child8717 : Flapjack.WordAlloc.removeDeadStructural input8717 value4363 value1 value2 = (output8717, value4364, value1))
    (child8720 : Flapjack.WordAlloc.removeDeadStructural input8720 value4364 value1 value2 = (output8720, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8721 value4363 value1 value2 = (output8721, value5, value1) := by
  rw [input8721_def, output8721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8717]
  dsimp only
  rw [child8720]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8717_skip, output8720_skip]
  kernel_rfl

theorem node8722_cond_eq
    (child8716 : Flapjack.WordAlloc.removeDeadStructural input8716 value4362 value1 value2 = (output8716, value4363, value1))
    (child8721 : Flapjack.WordAlloc.removeDeadStructural input8721 value4363 value1 value2 = (output8721, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8722 value4362 value1 value2 = (output8722, value5, value1) := by
  rw [input8722_def, output8722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8716]
  dsimp only
  rw [child8721]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8716_skip, output8721_skip]
  kernel_rfl

theorem node8723_cond_eq
    (child8715 : Flapjack.WordAlloc.removeDeadStructural input8715 value4360 value1 value2 = (output8715, value4362, value1))
    (child8722 : Flapjack.WordAlloc.removeDeadStructural input8722 value4362 value1 value2 = (output8722, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8723 value4360 value1 value2 = (output8723, value5, value1) := by
  rw [input8723_def, output8723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8715]
  dsimp only
  rw [child8722]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8715_skip, output8722_skip]
  kernel_rfl

theorem node8724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8724 value5 value1 value2 = (output8724, value4366, value1) := by
  rw [input8724_def, output8724_def]
  kernel_rfl

theorem node8725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8725 value4366 value1 value2 = (output8725, value4367, value1) := by
  rw [input8725_def, output8725_def]
  kernel_rfl

theorem node8726_cond_eq
    (child8724 : Flapjack.WordAlloc.removeDeadStructural input8724 value5 value1 value2 = (output8724, value4366, value1))
    (child8725 : Flapjack.WordAlloc.removeDeadStructural input8725 value4366 value1 value2 = (output8725, value4367, value1)) : Flapjack.WordAlloc.removeDeadStructural input8726 value5 value1 value2 = (output8726, value4367, value1) := by
  rw [input8726_def, output8726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8724]
  dsimp only
  rw [child8725]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8724_skip, output8725_skip]
  kernel_rfl

theorem node8727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8727 value4367 value1 value2 = (output8727, value4368, value1) := by
  rw [input8727_def, output8727_def]
  kernel_rfl

theorem node8728_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8728 value4368 value1 value2 = (output8728, value4368, value1) := by
  rw [input8728_def, output8728_def]
  kernel_rfl

theorem node8729_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8729 value4368 value1 value2 = (output8729, value4369, value1) := by
  rw [input8729_def, output8729_def]
  kernel_rfl

theorem node8730_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8730 value4369 value1 value2 = (output8730, value4370, value1) := by
  rw [input8730_def, output8730_def]
  kernel_rfl

theorem node8731_cond_eq
    (child8729 : Flapjack.WordAlloc.removeDeadStructural input8729 value4368 value1 value2 = (output8729, value4369, value1))
    (child8730 : Flapjack.WordAlloc.removeDeadStructural input8730 value4369 value1 value2 = (output8730, value4370, value1)) : Flapjack.WordAlloc.removeDeadStructural input8731 value4368 value1 value2 = (output8731, value4370, value1) := by
  rw [input8731_def, output8731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8729]
  dsimp only
  rw [child8730]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8729_skip, output8730_skip]
  kernel_rfl

theorem node8732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8732 value4370 value1 value2 = (output8732, value4371, value1) := by
  rw [input8732_def, output8732_def]
  kernel_rfl

theorem node8733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8733 value4371 value1 value2 = (output8733, value4372, value1) := by
  rw [input8733_def, output8733_def]
  kernel_rfl

theorem node8734_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8734 value4372 value1 value2 = (output8734, value4373, value1) := by
  rw [input8734_def, output8734_def]
  kernel_rfl

theorem node8735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8735 value4373 value1 value2 = (output8735, value5, value1) := by
  rw [input8735_def, output8735_def]
  kernel_rfl

theorem node8736_cond_eq
    (child8734 : Flapjack.WordAlloc.removeDeadStructural input8734 value4372 value1 value2 = (output8734, value4373, value1))
    (child8735 : Flapjack.WordAlloc.removeDeadStructural input8735 value4373 value1 value2 = (output8735, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8736 value4372 value1 value2 = (output8736, value5, value1) := by
  rw [input8736_def, output8736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8734]
  dsimp only
  rw [child8735]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8734_skip, output8735_skip]
  kernel_rfl

theorem node8737_cond_eq
    (child8733 : Flapjack.WordAlloc.removeDeadStructural input8733 value4371 value1 value2 = (output8733, value4372, value1))
    (child8736 : Flapjack.WordAlloc.removeDeadStructural input8736 value4372 value1 value2 = (output8736, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8737 value4371 value1 value2 = (output8737, value5, value1) := by
  rw [input8737_def, output8737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8733]
  dsimp only
  rw [child8736]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8733_skip, output8736_skip]
  kernel_rfl

theorem node8738_cond_eq
    (child8732 : Flapjack.WordAlloc.removeDeadStructural input8732 value4370 value1 value2 = (output8732, value4371, value1))
    (child8737 : Flapjack.WordAlloc.removeDeadStructural input8737 value4371 value1 value2 = (output8737, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8738 value4370 value1 value2 = (output8738, value5, value1) := by
  rw [input8738_def, output8738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8732]
  dsimp only
  rw [child8737]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8732_skip, output8737_skip]
  kernel_rfl

theorem node8739_cond_eq
    (child8731 : Flapjack.WordAlloc.removeDeadStructural input8731 value4368 value1 value2 = (output8731, value4370, value1))
    (child8738 : Flapjack.WordAlloc.removeDeadStructural input8738 value4370 value1 value2 = (output8738, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8739 value4368 value1 value2 = (output8739, value5, value1) := by
  rw [input8739_def, output8739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8731]
  dsimp only
  rw [child8738]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8731_skip, output8738_skip]
  kernel_rfl

theorem node8740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8740 value5 value1 value2 = (output8740, value4374, value1) := by
  rw [input8740_def, output8740_def]
  kernel_rfl

theorem node8741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8741 value4374 value1 value2 = (output8741, value4375, value1) := by
  rw [input8741_def, output8741_def]
  kernel_rfl

theorem node8742_cond_eq
    (child8740 : Flapjack.WordAlloc.removeDeadStructural input8740 value5 value1 value2 = (output8740, value4374, value1))
    (child8741 : Flapjack.WordAlloc.removeDeadStructural input8741 value4374 value1 value2 = (output8741, value4375, value1)) : Flapjack.WordAlloc.removeDeadStructural input8742 value5 value1 value2 = (output8742, value4375, value1) := by
  rw [input8742_def, output8742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8740]
  dsimp only
  rw [child8741]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8740_skip, output8741_skip]
  kernel_rfl

theorem node8743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8743 value4375 value1 value2 = (output8743, value4376, value1) := by
  rw [input8743_def, output8743_def]
  kernel_rfl

theorem node8744_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8744 value4376 value1 value2 = (output8744, value4376, value1) := by
  rw [input8744_def, output8744_def]
  kernel_rfl

theorem node8745_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8745 value4376 value1 value2 = (output8745, value4377, value1) := by
  rw [input8745_def, output8745_def]
  kernel_rfl

theorem node8746_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8746 value4377 value1 value2 = (output8746, value4378, value1) := by
  rw [input8746_def, output8746_def]
  kernel_rfl

theorem node8747_cond_eq
    (child8745 : Flapjack.WordAlloc.removeDeadStructural input8745 value4376 value1 value2 = (output8745, value4377, value1))
    (child8746 : Flapjack.WordAlloc.removeDeadStructural input8746 value4377 value1 value2 = (output8746, value4378, value1)) : Flapjack.WordAlloc.removeDeadStructural input8747 value4376 value1 value2 = (output8747, value4378, value1) := by
  rw [input8747_def, output8747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8745]
  dsimp only
  rw [child8746]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8745_skip, output8746_skip]
  kernel_rfl

theorem node8748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8748 value4378 value1 value2 = (output8748, value4379, value1) := by
  rw [input8748_def, output8748_def]
  kernel_rfl

theorem node8749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8749 value4379 value1 value2 = (output8749, value4380, value1) := by
  rw [input8749_def, output8749_def]
  kernel_rfl

theorem node8750_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8750 value4380 value1 value2 = (output8750, value4381, value1) := by
  rw [input8750_def, output8750_def]
  kernel_rfl

theorem node8751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8751 value4381 value1 value2 = (output8751, value5, value1) := by
  rw [input8751_def, output8751_def]
  kernel_rfl

theorem node8752_cond_eq
    (child8750 : Flapjack.WordAlloc.removeDeadStructural input8750 value4380 value1 value2 = (output8750, value4381, value1))
    (child8751 : Flapjack.WordAlloc.removeDeadStructural input8751 value4381 value1 value2 = (output8751, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8752 value4380 value1 value2 = (output8752, value5, value1) := by
  rw [input8752_def, output8752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8750]
  dsimp only
  rw [child8751]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8750_skip, output8751_skip]
  kernel_rfl

theorem node8753_cond_eq
    (child8749 : Flapjack.WordAlloc.removeDeadStructural input8749 value4379 value1 value2 = (output8749, value4380, value1))
    (child8752 : Flapjack.WordAlloc.removeDeadStructural input8752 value4380 value1 value2 = (output8752, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8753 value4379 value1 value2 = (output8753, value5, value1) := by
  rw [input8753_def, output8753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8749]
  dsimp only
  rw [child8752]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8749_skip, output8752_skip]
  kernel_rfl

theorem node8754_cond_eq
    (child8748 : Flapjack.WordAlloc.removeDeadStructural input8748 value4378 value1 value2 = (output8748, value4379, value1))
    (child8753 : Flapjack.WordAlloc.removeDeadStructural input8753 value4379 value1 value2 = (output8753, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8754 value4378 value1 value2 = (output8754, value5, value1) := by
  rw [input8754_def, output8754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8748]
  dsimp only
  rw [child8753]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8748_skip, output8753_skip]
  kernel_rfl

theorem node8755_cond_eq
    (child8747 : Flapjack.WordAlloc.removeDeadStructural input8747 value4376 value1 value2 = (output8747, value4378, value1))
    (child8754 : Flapjack.WordAlloc.removeDeadStructural input8754 value4378 value1 value2 = (output8754, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8755 value4376 value1 value2 = (output8755, value5, value1) := by
  rw [input8755_def, output8755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8747]
  dsimp only
  rw [child8754]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8747_skip, output8754_skip]
  kernel_rfl

theorem node8756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8756 value5 value1 value2 = (output8756, value4382, value1) := by
  rw [input8756_def, output8756_def]
  kernel_rfl

theorem node8757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8757 value4382 value1 value2 = (output8757, value4383, value1) := by
  rw [input8757_def, output8757_def]
  kernel_rfl

theorem node8758_cond_eq
    (child8756 : Flapjack.WordAlloc.removeDeadStructural input8756 value5 value1 value2 = (output8756, value4382, value1))
    (child8757 : Flapjack.WordAlloc.removeDeadStructural input8757 value4382 value1 value2 = (output8757, value4383, value1)) : Flapjack.WordAlloc.removeDeadStructural input8758 value5 value1 value2 = (output8758, value4383, value1) := by
  rw [input8758_def, output8758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8756]
  dsimp only
  rw [child8757]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8756_skip, output8757_skip]
  kernel_rfl

theorem node8759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8759 value4383 value1 value2 = (output8759, value4384, value1) := by
  rw [input8759_def, output8759_def]
  kernel_rfl

theorem node8760_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8760 value4384 value1 value2 = (output8760, value4384, value1) := by
  rw [input8760_def, output8760_def]
  kernel_rfl

theorem node8761_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8761 value4384 value1 value2 = (output8761, value4385, value1) := by
  rw [input8761_def, output8761_def]
  kernel_rfl

theorem node8762_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8762 value4385 value1 value2 = (output8762, value4386, value1) := by
  rw [input8762_def, output8762_def]
  kernel_rfl

theorem node8763_cond_eq
    (child8761 : Flapjack.WordAlloc.removeDeadStructural input8761 value4384 value1 value2 = (output8761, value4385, value1))
    (child8762 : Flapjack.WordAlloc.removeDeadStructural input8762 value4385 value1 value2 = (output8762, value4386, value1)) : Flapjack.WordAlloc.removeDeadStructural input8763 value4384 value1 value2 = (output8763, value4386, value1) := by
  rw [input8763_def, output8763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8761]
  dsimp only
  rw [child8762]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8761_skip, output8762_skip]
  kernel_rfl

theorem node8764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8764 value4386 value1 value2 = (output8764, value4387, value1) := by
  rw [input8764_def, output8764_def]
  kernel_rfl

theorem node8765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8765 value4387 value1 value2 = (output8765, value4388, value1) := by
  rw [input8765_def, output8765_def]
  kernel_rfl

theorem node8766_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8766 value4388 value1 value2 = (output8766, value4389, value1) := by
  rw [input8766_def, output8766_def]
  kernel_rfl

theorem node8767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8767 value4389 value1 value2 = (output8767, value5, value1) := by
  rw [input8767_def, output8767_def]
  kernel_rfl

theorem node8768_cond_eq
    (child8766 : Flapjack.WordAlloc.removeDeadStructural input8766 value4388 value1 value2 = (output8766, value4389, value1))
    (child8767 : Flapjack.WordAlloc.removeDeadStructural input8767 value4389 value1 value2 = (output8767, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8768 value4388 value1 value2 = (output8768, value5, value1) := by
  rw [input8768_def, output8768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8766]
  dsimp only
  rw [child8767]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8766_skip, output8767_skip]
  kernel_rfl

theorem node8769_cond_eq
    (child8765 : Flapjack.WordAlloc.removeDeadStructural input8765 value4387 value1 value2 = (output8765, value4388, value1))
    (child8768 : Flapjack.WordAlloc.removeDeadStructural input8768 value4388 value1 value2 = (output8768, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8769 value4387 value1 value2 = (output8769, value5, value1) := by
  rw [input8769_def, output8769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8765]
  dsimp only
  rw [child8768]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8765_skip, output8768_skip]
  kernel_rfl

theorem node8770_cond_eq
    (child8764 : Flapjack.WordAlloc.removeDeadStructural input8764 value4386 value1 value2 = (output8764, value4387, value1))
    (child8769 : Flapjack.WordAlloc.removeDeadStructural input8769 value4387 value1 value2 = (output8769, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8770 value4386 value1 value2 = (output8770, value5, value1) := by
  rw [input8770_def, output8770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8764]
  dsimp only
  rw [child8769]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8764_skip, output8769_skip]
  kernel_rfl

theorem node8771_cond_eq
    (child8763 : Flapjack.WordAlloc.removeDeadStructural input8763 value4384 value1 value2 = (output8763, value4386, value1))
    (child8770 : Flapjack.WordAlloc.removeDeadStructural input8770 value4386 value1 value2 = (output8770, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8771 value4384 value1 value2 = (output8771, value5, value1) := by
  rw [input8771_def, output8771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8763]
  dsimp only
  rw [child8770]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8763_skip, output8770_skip]
  kernel_rfl

theorem node8772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8772 value5 value1 value2 = (output8772, value4390, value1) := by
  rw [input8772_def, output8772_def]
  kernel_rfl

theorem node8773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8773 value4390 value1 value2 = (output8773, value4391, value1) := by
  rw [input8773_def, output8773_def]
  kernel_rfl

theorem node8774_cond_eq
    (child8772 : Flapjack.WordAlloc.removeDeadStructural input8772 value5 value1 value2 = (output8772, value4390, value1))
    (child8773 : Flapjack.WordAlloc.removeDeadStructural input8773 value4390 value1 value2 = (output8773, value4391, value1)) : Flapjack.WordAlloc.removeDeadStructural input8774 value5 value1 value2 = (output8774, value4391, value1) := by
  rw [input8774_def, output8774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8772]
  dsimp only
  rw [child8773]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8772_skip, output8773_skip]
  kernel_rfl

theorem node8775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8775 value4391 value1 value2 = (output8775, value4392, value1) := by
  rw [input8775_def, output8775_def]
  kernel_rfl

theorem node8776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8776 value4392 value1 value2 = (output8776, value4392, value1) := by
  rw [input8776_def, output8776_def]
  kernel_rfl

theorem node8777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8777 value4392 value1 value2 = (output8777, value4393, value1) := by
  rw [input8777_def, output8777_def]
  kernel_rfl

theorem node8778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8778 value4393 value1 value2 = (output8778, value4394, value1) := by
  rw [input8778_def, output8778_def]
  kernel_rfl

theorem node8779_cond_eq
    (child8777 : Flapjack.WordAlloc.removeDeadStructural input8777 value4392 value1 value2 = (output8777, value4393, value1))
    (child8778 : Flapjack.WordAlloc.removeDeadStructural input8778 value4393 value1 value2 = (output8778, value4394, value1)) : Flapjack.WordAlloc.removeDeadStructural input8779 value4392 value1 value2 = (output8779, value4394, value1) := by
  rw [input8779_def, output8779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8777]
  dsimp only
  rw [child8778]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8777_skip, output8778_skip]
  kernel_rfl

theorem node8780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8780 value4394 value1 value2 = (output8780, value4395, value1) := by
  rw [input8780_def, output8780_def]
  kernel_rfl

theorem node8781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8781 value4395 value1 value2 = (output8781, value4396, value1) := by
  rw [input8781_def, output8781_def]
  kernel_rfl

theorem node8782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8782 value4396 value1 value2 = (output8782, value4397, value1) := by
  rw [input8782_def, output8782_def]
  kernel_rfl

theorem node8783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8783 value4397 value1 value2 = (output8783, value5, value1) := by
  rw [input8783_def, output8783_def]
  kernel_rfl

theorem node8784_cond_eq
    (child8782 : Flapjack.WordAlloc.removeDeadStructural input8782 value4396 value1 value2 = (output8782, value4397, value1))
    (child8783 : Flapjack.WordAlloc.removeDeadStructural input8783 value4397 value1 value2 = (output8783, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8784 value4396 value1 value2 = (output8784, value5, value1) := by
  rw [input8784_def, output8784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8782]
  dsimp only
  rw [child8783]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8782_skip, output8783_skip]
  kernel_rfl

theorem node8785_cond_eq
    (child8781 : Flapjack.WordAlloc.removeDeadStructural input8781 value4395 value1 value2 = (output8781, value4396, value1))
    (child8784 : Flapjack.WordAlloc.removeDeadStructural input8784 value4396 value1 value2 = (output8784, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8785 value4395 value1 value2 = (output8785, value5, value1) := by
  rw [input8785_def, output8785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8781]
  dsimp only
  rw [child8784]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8781_skip, output8784_skip]
  kernel_rfl

theorem node8786_cond_eq
    (child8780 : Flapjack.WordAlloc.removeDeadStructural input8780 value4394 value1 value2 = (output8780, value4395, value1))
    (child8785 : Flapjack.WordAlloc.removeDeadStructural input8785 value4395 value1 value2 = (output8785, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8786 value4394 value1 value2 = (output8786, value5, value1) := by
  rw [input8786_def, output8786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8780]
  dsimp only
  rw [child8785]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8780_skip, output8785_skip]
  kernel_rfl

theorem node8787_cond_eq
    (child8779 : Flapjack.WordAlloc.removeDeadStructural input8779 value4392 value1 value2 = (output8779, value4394, value1))
    (child8786 : Flapjack.WordAlloc.removeDeadStructural input8786 value4394 value1 value2 = (output8786, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8787 value4392 value1 value2 = (output8787, value5, value1) := by
  rw [input8787_def, output8787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8779]
  dsimp only
  rw [child8786]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8779_skip, output8786_skip]
  kernel_rfl

theorem node8788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8788 value5 value1 value2 = (output8788, value4398, value1) := by
  rw [input8788_def, output8788_def]
  kernel_rfl

theorem node8789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8789 value4398 value1 value2 = (output8789, value4399, value1) := by
  rw [input8789_def, output8789_def]
  kernel_rfl

theorem node8790_cond_eq
    (child8788 : Flapjack.WordAlloc.removeDeadStructural input8788 value5 value1 value2 = (output8788, value4398, value1))
    (child8789 : Flapjack.WordAlloc.removeDeadStructural input8789 value4398 value1 value2 = (output8789, value4399, value1)) : Flapjack.WordAlloc.removeDeadStructural input8790 value5 value1 value2 = (output8790, value4399, value1) := by
  rw [input8790_def, output8790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8788]
  dsimp only
  rw [child8789]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8788_skip, output8789_skip]
  kernel_rfl

theorem node8791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8791 value4399 value1 value2 = (output8791, value4400, value1) := by
  rw [input8791_def, output8791_def]
  kernel_rfl

theorem node8792_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8792 value4400 value1 value2 = (output8792, value4400, value1) := by
  rw [input8792_def, output8792_def]
  kernel_rfl

theorem node8793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8793 value4400 value1 value2 = (output8793, value4401, value1) := by
  rw [input8793_def, output8793_def]
  kernel_rfl

theorem node8794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8794 value4401 value1 value2 = (output8794, value4402, value1) := by
  rw [input8794_def, output8794_def]
  kernel_rfl

theorem node8795_cond_eq
    (child8793 : Flapjack.WordAlloc.removeDeadStructural input8793 value4400 value1 value2 = (output8793, value4401, value1))
    (child8794 : Flapjack.WordAlloc.removeDeadStructural input8794 value4401 value1 value2 = (output8794, value4402, value1)) : Flapjack.WordAlloc.removeDeadStructural input8795 value4400 value1 value2 = (output8795, value4402, value1) := by
  rw [input8795_def, output8795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8793]
  dsimp only
  rw [child8794]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8793_skip, output8794_skip]
  kernel_rfl

theorem node8796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8796 value4402 value1 value2 = (output8796, value4403, value1) := by
  rw [input8796_def, output8796_def]
  kernel_rfl

theorem node8797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8797 value4403 value1 value2 = (output8797, value4404, value1) := by
  rw [input8797_def, output8797_def]
  kernel_rfl

theorem node8798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8798 value4404 value1 value2 = (output8798, value4405, value1) := by
  rw [input8798_def, output8798_def]
  kernel_rfl

theorem node8799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8799 value4405 value1 value2 = (output8799, value5, value1) := by
  rw [input8799_def, output8799_def]
  kernel_rfl

theorem node8800_cond_eq
    (child8798 : Flapjack.WordAlloc.removeDeadStructural input8798 value4404 value1 value2 = (output8798, value4405, value1))
    (child8799 : Flapjack.WordAlloc.removeDeadStructural input8799 value4405 value1 value2 = (output8799, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8800 value4404 value1 value2 = (output8800, value5, value1) := by
  rw [input8800_def, output8800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8798]
  dsimp only
  rw [child8799]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8798_skip, output8799_skip]
  kernel_rfl

theorem node8801_cond_eq
    (child8797 : Flapjack.WordAlloc.removeDeadStructural input8797 value4403 value1 value2 = (output8797, value4404, value1))
    (child8800 : Flapjack.WordAlloc.removeDeadStructural input8800 value4404 value1 value2 = (output8800, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8801 value4403 value1 value2 = (output8801, value5, value1) := by
  rw [input8801_def, output8801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8797]
  dsimp only
  rw [child8800]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8797_skip, output8800_skip]
  kernel_rfl

theorem node8802_cond_eq
    (child8796 : Flapjack.WordAlloc.removeDeadStructural input8796 value4402 value1 value2 = (output8796, value4403, value1))
    (child8801 : Flapjack.WordAlloc.removeDeadStructural input8801 value4403 value1 value2 = (output8801, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8802 value4402 value1 value2 = (output8802, value5, value1) := by
  rw [input8802_def, output8802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8796]
  dsimp only
  rw [child8801]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8796_skip, output8801_skip]
  kernel_rfl

theorem node8803_cond_eq
    (child8795 : Flapjack.WordAlloc.removeDeadStructural input8795 value4400 value1 value2 = (output8795, value4402, value1))
    (child8802 : Flapjack.WordAlloc.removeDeadStructural input8802 value4402 value1 value2 = (output8802, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8803 value4400 value1 value2 = (output8803, value5, value1) := by
  rw [input8803_def, output8803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8795]
  dsimp only
  rw [child8802]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8795_skip, output8802_skip]
  kernel_rfl

theorem node8804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8804 value5 value1 value2 = (output8804, value4406, value1) := by
  rw [input8804_def, output8804_def]
  kernel_rfl

theorem node8805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8805 value4406 value1 value2 = (output8805, value4407, value1) := by
  rw [input8805_def, output8805_def]
  kernel_rfl

theorem node8806_cond_eq
    (child8804 : Flapjack.WordAlloc.removeDeadStructural input8804 value5 value1 value2 = (output8804, value4406, value1))
    (child8805 : Flapjack.WordAlloc.removeDeadStructural input8805 value4406 value1 value2 = (output8805, value4407, value1)) : Flapjack.WordAlloc.removeDeadStructural input8806 value5 value1 value2 = (output8806, value4407, value1) := by
  rw [input8806_def, output8806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8804]
  dsimp only
  rw [child8805]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8804_skip, output8805_skip]
  kernel_rfl

theorem node8807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8807 value4407 value1 value2 = (output8807, value4408, value1) := by
  rw [input8807_def, output8807_def]
  kernel_rfl

theorem node8808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8808 value4408 value1 value2 = (output8808, value4408, value1) := by
  rw [input8808_def, output8808_def]
  kernel_rfl

theorem node8809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8809 value4408 value1 value2 = (output8809, value4409, value1) := by
  rw [input8809_def, output8809_def]
  kernel_rfl

theorem node8810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8810 value4409 value1 value2 = (output8810, value4410, value1) := by
  rw [input8810_def, output8810_def]
  kernel_rfl

theorem node8811_cond_eq
    (child8809 : Flapjack.WordAlloc.removeDeadStructural input8809 value4408 value1 value2 = (output8809, value4409, value1))
    (child8810 : Flapjack.WordAlloc.removeDeadStructural input8810 value4409 value1 value2 = (output8810, value4410, value1)) : Flapjack.WordAlloc.removeDeadStructural input8811 value4408 value1 value2 = (output8811, value4410, value1) := by
  rw [input8811_def, output8811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8809]
  dsimp only
  rw [child8810]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8809_skip, output8810_skip]
  kernel_rfl

theorem node8812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8812 value4410 value1 value2 = (output8812, value4411, value1) := by
  rw [input8812_def, output8812_def]
  kernel_rfl

theorem node8813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8813 value4411 value1 value2 = (output8813, value4412, value1) := by
  rw [input8813_def, output8813_def]
  kernel_rfl

theorem node8814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8814 value4412 value1 value2 = (output8814, value4413, value1) := by
  rw [input8814_def, output8814_def]
  kernel_rfl

theorem node8815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8815 value4413 value1 value2 = (output8815, value5, value1) := by
  rw [input8815_def, output8815_def]
  kernel_rfl

theorem node8816_cond_eq
    (child8814 : Flapjack.WordAlloc.removeDeadStructural input8814 value4412 value1 value2 = (output8814, value4413, value1))
    (child8815 : Flapjack.WordAlloc.removeDeadStructural input8815 value4413 value1 value2 = (output8815, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8816 value4412 value1 value2 = (output8816, value5, value1) := by
  rw [input8816_def, output8816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8814]
  dsimp only
  rw [child8815]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8814_skip, output8815_skip]
  kernel_rfl

theorem node8817_cond_eq
    (child8813 : Flapjack.WordAlloc.removeDeadStructural input8813 value4411 value1 value2 = (output8813, value4412, value1))
    (child8816 : Flapjack.WordAlloc.removeDeadStructural input8816 value4412 value1 value2 = (output8816, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8817 value4411 value1 value2 = (output8817, value5, value1) := by
  rw [input8817_def, output8817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8813]
  dsimp only
  rw [child8816]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8813_skip, output8816_skip]
  kernel_rfl

theorem node8818_cond_eq
    (child8812 : Flapjack.WordAlloc.removeDeadStructural input8812 value4410 value1 value2 = (output8812, value4411, value1))
    (child8817 : Flapjack.WordAlloc.removeDeadStructural input8817 value4411 value1 value2 = (output8817, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8818 value4410 value1 value2 = (output8818, value5, value1) := by
  rw [input8818_def, output8818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8812]
  dsimp only
  rw [child8817]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8812_skip, output8817_skip]
  kernel_rfl

theorem node8819_cond_eq
    (child8811 : Flapjack.WordAlloc.removeDeadStructural input8811 value4408 value1 value2 = (output8811, value4410, value1))
    (child8818 : Flapjack.WordAlloc.removeDeadStructural input8818 value4410 value1 value2 = (output8818, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8819 value4408 value1 value2 = (output8819, value5, value1) := by
  rw [input8819_def, output8819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8811]
  dsimp only
  rw [child8818]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8811_skip, output8818_skip]
  kernel_rfl

theorem node8820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8820 value5 value1 value2 = (output8820, value4414, value1) := by
  rw [input8820_def, output8820_def]
  kernel_rfl

theorem node8821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8821 value4414 value1 value2 = (output8821, value4415, value1) := by
  rw [input8821_def, output8821_def]
  kernel_rfl

theorem node8822_cond_eq
    (child8820 : Flapjack.WordAlloc.removeDeadStructural input8820 value5 value1 value2 = (output8820, value4414, value1))
    (child8821 : Flapjack.WordAlloc.removeDeadStructural input8821 value4414 value1 value2 = (output8821, value4415, value1)) : Flapjack.WordAlloc.removeDeadStructural input8822 value5 value1 value2 = (output8822, value4415, value1) := by
  rw [input8822_def, output8822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8820]
  dsimp only
  rw [child8821]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8820_skip, output8821_skip]
  kernel_rfl

theorem node8823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8823 value4415 value1 value2 = (output8823, value4416, value1) := by
  rw [input8823_def, output8823_def]
  kernel_rfl

theorem node8824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8824 value4416 value1 value2 = (output8824, value4416, value1) := by
  rw [input8824_def, output8824_def]
  kernel_rfl

theorem node8825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8825 value4416 value1 value2 = (output8825, value4417, value1) := by
  rw [input8825_def, output8825_def]
  kernel_rfl

theorem node8826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8826 value4417 value1 value2 = (output8826, value4418, value1) := by
  rw [input8826_def, output8826_def]
  kernel_rfl

theorem node8827_cond_eq
    (child8825 : Flapjack.WordAlloc.removeDeadStructural input8825 value4416 value1 value2 = (output8825, value4417, value1))
    (child8826 : Flapjack.WordAlloc.removeDeadStructural input8826 value4417 value1 value2 = (output8826, value4418, value1)) : Flapjack.WordAlloc.removeDeadStructural input8827 value4416 value1 value2 = (output8827, value4418, value1) := by
  rw [input8827_def, output8827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8825]
  dsimp only
  rw [child8826]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8825_skip, output8826_skip]
  kernel_rfl

theorem node8828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8828 value4418 value1 value2 = (output8828, value4419, value1) := by
  rw [input8828_def, output8828_def]
  kernel_rfl

theorem node8829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8829 value4419 value1 value2 = (output8829, value4420, value1) := by
  rw [input8829_def, output8829_def]
  kernel_rfl

theorem node8830_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8830 value4420 value1 value2 = (output8830, value4421, value1) := by
  rw [input8830_def, output8830_def]
  kernel_rfl

theorem node8831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8831 value4421 value1 value2 = (output8831, value5, value1) := by
  rw [input8831_def, output8831_def]
  kernel_rfl

theorem node8832_cond_eq
    (child8830 : Flapjack.WordAlloc.removeDeadStructural input8830 value4420 value1 value2 = (output8830, value4421, value1))
    (child8831 : Flapjack.WordAlloc.removeDeadStructural input8831 value4421 value1 value2 = (output8831, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8832 value4420 value1 value2 = (output8832, value5, value1) := by
  rw [input8832_def, output8832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8830]
  dsimp only
  rw [child8831]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8830_skip, output8831_skip]
  kernel_rfl

theorem node8833_cond_eq
    (child8829 : Flapjack.WordAlloc.removeDeadStructural input8829 value4419 value1 value2 = (output8829, value4420, value1))
    (child8832 : Flapjack.WordAlloc.removeDeadStructural input8832 value4420 value1 value2 = (output8832, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8833 value4419 value1 value2 = (output8833, value5, value1) := by
  rw [input8833_def, output8833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8829]
  dsimp only
  rw [child8832]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8829_skip, output8832_skip]
  kernel_rfl

theorem node8834_cond_eq
    (child8828 : Flapjack.WordAlloc.removeDeadStructural input8828 value4418 value1 value2 = (output8828, value4419, value1))
    (child8833 : Flapjack.WordAlloc.removeDeadStructural input8833 value4419 value1 value2 = (output8833, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8834 value4418 value1 value2 = (output8834, value5, value1) := by
  rw [input8834_def, output8834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8828]
  dsimp only
  rw [child8833]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8828_skip, output8833_skip]
  kernel_rfl

theorem node8835_cond_eq
    (child8827 : Flapjack.WordAlloc.removeDeadStructural input8827 value4416 value1 value2 = (output8827, value4418, value1))
    (child8834 : Flapjack.WordAlloc.removeDeadStructural input8834 value4418 value1 value2 = (output8834, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8835 value4416 value1 value2 = (output8835, value5, value1) := by
  rw [input8835_def, output8835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8827]
  dsimp only
  rw [child8834]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8827_skip, output8834_skip]
  kernel_rfl

theorem node8836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8836 value5 value1 value2 = (output8836, value4422, value1) := by
  rw [input8836_def, output8836_def]
  kernel_rfl

theorem node8837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8837 value4422 value1 value2 = (output8837, value4423, value1) := by
  rw [input8837_def, output8837_def]
  kernel_rfl

theorem node8838_cond_eq
    (child8836 : Flapjack.WordAlloc.removeDeadStructural input8836 value5 value1 value2 = (output8836, value4422, value1))
    (child8837 : Flapjack.WordAlloc.removeDeadStructural input8837 value4422 value1 value2 = (output8837, value4423, value1)) : Flapjack.WordAlloc.removeDeadStructural input8838 value5 value1 value2 = (output8838, value4423, value1) := by
  rw [input8838_def, output8838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8836]
  dsimp only
  rw [child8837]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8836_skip, output8837_skip]
  kernel_rfl

theorem node8839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8839 value4423 value1 value2 = (output8839, value4424, value1) := by
  rw [input8839_def, output8839_def]
  kernel_rfl

theorem node8840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8840 value4424 value1 value2 = (output8840, value4424, value1) := by
  rw [input8840_def, output8840_def]
  kernel_rfl

theorem node8841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8841 value4424 value1 value2 = (output8841, value4425, value1) := by
  rw [input8841_def, output8841_def]
  kernel_rfl

theorem node8842_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8842 value4425 value1 value2 = (output8842, value4426, value1) := by
  rw [input8842_def, output8842_def]
  kernel_rfl

theorem node8843_cond_eq
    (child8841 : Flapjack.WordAlloc.removeDeadStructural input8841 value4424 value1 value2 = (output8841, value4425, value1))
    (child8842 : Flapjack.WordAlloc.removeDeadStructural input8842 value4425 value1 value2 = (output8842, value4426, value1)) : Flapjack.WordAlloc.removeDeadStructural input8843 value4424 value1 value2 = (output8843, value4426, value1) := by
  rw [input8843_def, output8843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8841]
  dsimp only
  rw [child8842]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8841_skip, output8842_skip]
  kernel_rfl

theorem node8844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8844 value4426 value1 value2 = (output8844, value4427, value1) := by
  rw [input8844_def, output8844_def]
  kernel_rfl

theorem node8845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8845 value4427 value1 value2 = (output8845, value4428, value1) := by
  rw [input8845_def, output8845_def]
  kernel_rfl

theorem node8846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8846 value4428 value1 value2 = (output8846, value4429, value1) := by
  rw [input8846_def, output8846_def]
  kernel_rfl

theorem node8847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8847 value4429 value1 value2 = (output8847, value5, value1) := by
  rw [input8847_def, output8847_def]
  kernel_rfl

theorem node8848_cond_eq
    (child8846 : Flapjack.WordAlloc.removeDeadStructural input8846 value4428 value1 value2 = (output8846, value4429, value1))
    (child8847 : Flapjack.WordAlloc.removeDeadStructural input8847 value4429 value1 value2 = (output8847, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8848 value4428 value1 value2 = (output8848, value5, value1) := by
  rw [input8848_def, output8848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8846]
  dsimp only
  rw [child8847]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8846_skip, output8847_skip]
  kernel_rfl

theorem node8849_cond_eq
    (child8845 : Flapjack.WordAlloc.removeDeadStructural input8845 value4427 value1 value2 = (output8845, value4428, value1))
    (child8848 : Flapjack.WordAlloc.removeDeadStructural input8848 value4428 value1 value2 = (output8848, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8849 value4427 value1 value2 = (output8849, value5, value1) := by
  rw [input8849_def, output8849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8845]
  dsimp only
  rw [child8848]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8845_skip, output8848_skip]
  kernel_rfl

theorem node8850_cond_eq
    (child8844 : Flapjack.WordAlloc.removeDeadStructural input8844 value4426 value1 value2 = (output8844, value4427, value1))
    (child8849 : Flapjack.WordAlloc.removeDeadStructural input8849 value4427 value1 value2 = (output8849, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8850 value4426 value1 value2 = (output8850, value5, value1) := by
  rw [input8850_def, output8850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8844]
  dsimp only
  rw [child8849]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8844_skip, output8849_skip]
  kernel_rfl

theorem node8851_cond_eq
    (child8843 : Flapjack.WordAlloc.removeDeadStructural input8843 value4424 value1 value2 = (output8843, value4426, value1))
    (child8850 : Flapjack.WordAlloc.removeDeadStructural input8850 value4426 value1 value2 = (output8850, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8851 value4424 value1 value2 = (output8851, value5, value1) := by
  rw [input8851_def, output8851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8843]
  dsimp only
  rw [child8850]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8843_skip, output8850_skip]
  kernel_rfl

theorem node8852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8852 value5 value1 value2 = (output8852, value4430, value1) := by
  rw [input8852_def, output8852_def]
  kernel_rfl

theorem node8853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8853 value4430 value1 value2 = (output8853, value4431, value1) := by
  rw [input8853_def, output8853_def]
  kernel_rfl

theorem node8854_cond_eq
    (child8852 : Flapjack.WordAlloc.removeDeadStructural input8852 value5 value1 value2 = (output8852, value4430, value1))
    (child8853 : Flapjack.WordAlloc.removeDeadStructural input8853 value4430 value1 value2 = (output8853, value4431, value1)) : Flapjack.WordAlloc.removeDeadStructural input8854 value5 value1 value2 = (output8854, value4431, value1) := by
  rw [input8854_def, output8854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8852]
  dsimp only
  rw [child8853]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8852_skip, output8853_skip]
  kernel_rfl

theorem node8855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8855 value4431 value1 value2 = (output8855, value4432, value1) := by
  rw [input8855_def, output8855_def]
  kernel_rfl

theorem node8856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8856 value4432 value1 value2 = (output8856, value4432, value1) := by
  rw [input8856_def, output8856_def]
  kernel_rfl

theorem node8857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8857 value4432 value1 value2 = (output8857, value4433, value1) := by
  rw [input8857_def, output8857_def]
  kernel_rfl

theorem node8858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8858 value4433 value1 value2 = (output8858, value4434, value1) := by
  rw [input8858_def, output8858_def]
  kernel_rfl

theorem node8859_cond_eq
    (child8857 : Flapjack.WordAlloc.removeDeadStructural input8857 value4432 value1 value2 = (output8857, value4433, value1))
    (child8858 : Flapjack.WordAlloc.removeDeadStructural input8858 value4433 value1 value2 = (output8858, value4434, value1)) : Flapjack.WordAlloc.removeDeadStructural input8859 value4432 value1 value2 = (output8859, value4434, value1) := by
  rw [input8859_def, output8859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8857]
  dsimp only
  rw [child8858]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8857_skip, output8858_skip]
  kernel_rfl

theorem node8860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8860 value4434 value1 value2 = (output8860, value4435, value1) := by
  rw [input8860_def, output8860_def]
  kernel_rfl

theorem node8861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8861 value4435 value1 value2 = (output8861, value4436, value1) := by
  rw [input8861_def, output8861_def]
  kernel_rfl

theorem node8862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8862 value4436 value1 value2 = (output8862, value4437, value1) := by
  rw [input8862_def, output8862_def]
  kernel_rfl

theorem node8863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8863 value4437 value1 value2 = (output8863, value5, value1) := by
  rw [input8863_def, output8863_def]
  kernel_rfl

theorem node8864_cond_eq
    (child8862 : Flapjack.WordAlloc.removeDeadStructural input8862 value4436 value1 value2 = (output8862, value4437, value1))
    (child8863 : Flapjack.WordAlloc.removeDeadStructural input8863 value4437 value1 value2 = (output8863, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8864 value4436 value1 value2 = (output8864, value5, value1) := by
  rw [input8864_def, output8864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8862]
  dsimp only
  rw [child8863]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8862_skip, output8863_skip]
  kernel_rfl

theorem node8865_cond_eq
    (child8861 : Flapjack.WordAlloc.removeDeadStructural input8861 value4435 value1 value2 = (output8861, value4436, value1))
    (child8864 : Flapjack.WordAlloc.removeDeadStructural input8864 value4436 value1 value2 = (output8864, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8865 value4435 value1 value2 = (output8865, value5, value1) := by
  rw [input8865_def, output8865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8861]
  dsimp only
  rw [child8864]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8861_skip, output8864_skip]
  kernel_rfl

theorem node8866_cond_eq
    (child8860 : Flapjack.WordAlloc.removeDeadStructural input8860 value4434 value1 value2 = (output8860, value4435, value1))
    (child8865 : Flapjack.WordAlloc.removeDeadStructural input8865 value4435 value1 value2 = (output8865, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8866 value4434 value1 value2 = (output8866, value5, value1) := by
  rw [input8866_def, output8866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8860]
  dsimp only
  rw [child8865]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8860_skip, output8865_skip]
  kernel_rfl

theorem node8867_cond_eq
    (child8859 : Flapjack.WordAlloc.removeDeadStructural input8859 value4432 value1 value2 = (output8859, value4434, value1))
    (child8866 : Flapjack.WordAlloc.removeDeadStructural input8866 value4434 value1 value2 = (output8866, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8867 value4432 value1 value2 = (output8867, value5, value1) := by
  rw [input8867_def, output8867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8859]
  dsimp only
  rw [child8866]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8859_skip, output8866_skip]
  kernel_rfl

theorem node8868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8868 value5 value1 value2 = (output8868, value4438, value1) := by
  rw [input8868_def, output8868_def]
  kernel_rfl

theorem node8869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8869 value4438 value1 value2 = (output8869, value4439, value1) := by
  rw [input8869_def, output8869_def]
  kernel_rfl

theorem node8870_cond_eq
    (child8868 : Flapjack.WordAlloc.removeDeadStructural input8868 value5 value1 value2 = (output8868, value4438, value1))
    (child8869 : Flapjack.WordAlloc.removeDeadStructural input8869 value4438 value1 value2 = (output8869, value4439, value1)) : Flapjack.WordAlloc.removeDeadStructural input8870 value5 value1 value2 = (output8870, value4439, value1) := by
  rw [input8870_def, output8870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8868]
  dsimp only
  rw [child8869]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8868_skip, output8869_skip]
  kernel_rfl

theorem node8871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8871 value4439 value1 value2 = (output8871, value4440, value1) := by
  rw [input8871_def, output8871_def]
  kernel_rfl

theorem node8872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8872 value4440 value1 value2 = (output8872, value4440, value1) := by
  rw [input8872_def, output8872_def]
  kernel_rfl

theorem node8873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8873 value4440 value1 value2 = (output8873, value4441, value1) := by
  rw [input8873_def, output8873_def]
  kernel_rfl

theorem node8874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8874 value4441 value1 value2 = (output8874, value4442, value1) := by
  rw [input8874_def, output8874_def]
  kernel_rfl

theorem node8875_cond_eq
    (child8873 : Flapjack.WordAlloc.removeDeadStructural input8873 value4440 value1 value2 = (output8873, value4441, value1))
    (child8874 : Flapjack.WordAlloc.removeDeadStructural input8874 value4441 value1 value2 = (output8874, value4442, value1)) : Flapjack.WordAlloc.removeDeadStructural input8875 value4440 value1 value2 = (output8875, value4442, value1) := by
  rw [input8875_def, output8875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8873]
  dsimp only
  rw [child8874]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8873_skip, output8874_skip]
  kernel_rfl

theorem node8876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8876 value4442 value1 value2 = (output8876, value4443, value1) := by
  rw [input8876_def, output8876_def]
  kernel_rfl

theorem node8877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8877 value4443 value1 value2 = (output8877, value4444, value1) := by
  rw [input8877_def, output8877_def]
  kernel_rfl

theorem node8878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8878 value4444 value1 value2 = (output8878, value4445, value1) := by
  rw [input8878_def, output8878_def]
  kernel_rfl

theorem node8879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8879 value4445 value1 value2 = (output8879, value5, value1) := by
  rw [input8879_def, output8879_def]
  kernel_rfl

theorem node8880_cond_eq
    (child8878 : Flapjack.WordAlloc.removeDeadStructural input8878 value4444 value1 value2 = (output8878, value4445, value1))
    (child8879 : Flapjack.WordAlloc.removeDeadStructural input8879 value4445 value1 value2 = (output8879, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8880 value4444 value1 value2 = (output8880, value5, value1) := by
  rw [input8880_def, output8880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8878]
  dsimp only
  rw [child8879]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8878_skip, output8879_skip]
  kernel_rfl

theorem node8881_cond_eq
    (child8877 : Flapjack.WordAlloc.removeDeadStructural input8877 value4443 value1 value2 = (output8877, value4444, value1))
    (child8880 : Flapjack.WordAlloc.removeDeadStructural input8880 value4444 value1 value2 = (output8880, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8881 value4443 value1 value2 = (output8881, value5, value1) := by
  rw [input8881_def, output8881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8877]
  dsimp only
  rw [child8880]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8877_skip, output8880_skip]
  kernel_rfl

theorem node8882_cond_eq
    (child8876 : Flapjack.WordAlloc.removeDeadStructural input8876 value4442 value1 value2 = (output8876, value4443, value1))
    (child8881 : Flapjack.WordAlloc.removeDeadStructural input8881 value4443 value1 value2 = (output8881, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8882 value4442 value1 value2 = (output8882, value5, value1) := by
  rw [input8882_def, output8882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8876]
  dsimp only
  rw [child8881]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8876_skip, output8881_skip]
  kernel_rfl

theorem node8883_cond_eq
    (child8875 : Flapjack.WordAlloc.removeDeadStructural input8875 value4440 value1 value2 = (output8875, value4442, value1))
    (child8882 : Flapjack.WordAlloc.removeDeadStructural input8882 value4442 value1 value2 = (output8882, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8883 value4440 value1 value2 = (output8883, value5, value1) := by
  rw [input8883_def, output8883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8875]
  dsimp only
  rw [child8882]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8875_skip, output8882_skip]
  kernel_rfl

theorem node8884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8884 value5 value1 value2 = (output8884, value4446, value1) := by
  rw [input8884_def, output8884_def]
  kernel_rfl

theorem node8885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8885 value4446 value1 value2 = (output8885, value4447, value1) := by
  rw [input8885_def, output8885_def]
  kernel_rfl

theorem node8886_cond_eq
    (child8884 : Flapjack.WordAlloc.removeDeadStructural input8884 value5 value1 value2 = (output8884, value4446, value1))
    (child8885 : Flapjack.WordAlloc.removeDeadStructural input8885 value4446 value1 value2 = (output8885, value4447, value1)) : Flapjack.WordAlloc.removeDeadStructural input8886 value5 value1 value2 = (output8886, value4447, value1) := by
  rw [input8886_def, output8886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8884]
  dsimp only
  rw [child8885]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8884_skip, output8885_skip]
  kernel_rfl

theorem node8887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8887 value4447 value1 value2 = (output8887, value4448, value1) := by
  rw [input8887_def, output8887_def]
  kernel_rfl

theorem node8888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8888 value4448 value1 value2 = (output8888, value4448, value1) := by
  rw [input8888_def, output8888_def]
  kernel_rfl

theorem node8889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8889 value4448 value1 value2 = (output8889, value4449, value1) := by
  rw [input8889_def, output8889_def]
  kernel_rfl

theorem node8890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8890 value4449 value1 value2 = (output8890, value4450, value1) := by
  rw [input8890_def, output8890_def]
  kernel_rfl

theorem node8891_cond_eq
    (child8889 : Flapjack.WordAlloc.removeDeadStructural input8889 value4448 value1 value2 = (output8889, value4449, value1))
    (child8890 : Flapjack.WordAlloc.removeDeadStructural input8890 value4449 value1 value2 = (output8890, value4450, value1)) : Flapjack.WordAlloc.removeDeadStructural input8891 value4448 value1 value2 = (output8891, value4450, value1) := by
  rw [input8891_def, output8891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8889]
  dsimp only
  rw [child8890]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8889_skip, output8890_skip]
  kernel_rfl

theorem node8892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8892 value4450 value1 value2 = (output8892, value4451, value1) := by
  rw [input8892_def, output8892_def]
  kernel_rfl

theorem node8893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8893 value4451 value1 value2 = (output8893, value4452, value1) := by
  rw [input8893_def, output8893_def]
  kernel_rfl

theorem node8894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8894 value4452 value1 value2 = (output8894, value4453, value1) := by
  rw [input8894_def, output8894_def]
  kernel_rfl

theorem node8895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8895 value4453 value1 value2 = (output8895, value5, value1) := by
  rw [input8895_def, output8895_def]
  kernel_rfl

theorem node8896_cond_eq
    (child8894 : Flapjack.WordAlloc.removeDeadStructural input8894 value4452 value1 value2 = (output8894, value4453, value1))
    (child8895 : Flapjack.WordAlloc.removeDeadStructural input8895 value4453 value1 value2 = (output8895, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8896 value4452 value1 value2 = (output8896, value5, value1) := by
  rw [input8896_def, output8896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8894]
  dsimp only
  rw [child8895]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8894_skip, output8895_skip]
  kernel_rfl

theorem node8897_cond_eq
    (child8893 : Flapjack.WordAlloc.removeDeadStructural input8893 value4451 value1 value2 = (output8893, value4452, value1))
    (child8896 : Flapjack.WordAlloc.removeDeadStructural input8896 value4452 value1 value2 = (output8896, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8897 value4451 value1 value2 = (output8897, value5, value1) := by
  rw [input8897_def, output8897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8893]
  dsimp only
  rw [child8896]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8893_skip, output8896_skip]
  kernel_rfl

theorem node8898_cond_eq
    (child8892 : Flapjack.WordAlloc.removeDeadStructural input8892 value4450 value1 value2 = (output8892, value4451, value1))
    (child8897 : Flapjack.WordAlloc.removeDeadStructural input8897 value4451 value1 value2 = (output8897, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8898 value4450 value1 value2 = (output8898, value5, value1) := by
  rw [input8898_def, output8898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8892]
  dsimp only
  rw [child8897]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8892_skip, output8897_skip]
  kernel_rfl

theorem node8899_cond_eq
    (child8891 : Flapjack.WordAlloc.removeDeadStructural input8891 value4448 value1 value2 = (output8891, value4450, value1))
    (child8898 : Flapjack.WordAlloc.removeDeadStructural input8898 value4450 value1 value2 = (output8898, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8899 value4448 value1 value2 = (output8899, value5, value1) := by
  rw [input8899_def, output8899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8891]
  dsimp only
  rw [child8898]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8891_skip, output8898_skip]
  kernel_rfl

theorem node8900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8900 value5 value1 value2 = (output8900, value4454, value1) := by
  rw [input8900_def, output8900_def]
  kernel_rfl

theorem node8901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8901 value4454 value1 value2 = (output8901, value4455, value1) := by
  rw [input8901_def, output8901_def]
  kernel_rfl

theorem node8902_cond_eq
    (child8900 : Flapjack.WordAlloc.removeDeadStructural input8900 value5 value1 value2 = (output8900, value4454, value1))
    (child8901 : Flapjack.WordAlloc.removeDeadStructural input8901 value4454 value1 value2 = (output8901, value4455, value1)) : Flapjack.WordAlloc.removeDeadStructural input8902 value5 value1 value2 = (output8902, value4455, value1) := by
  rw [input8902_def, output8902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8900]
  dsimp only
  rw [child8901]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8900_skip, output8901_skip]
  kernel_rfl

theorem node8903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8903 value4455 value1 value2 = (output8903, value4456, value1) := by
  rw [input8903_def, output8903_def]
  kernel_rfl

theorem node8904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8904 value4456 value1 value2 = (output8904, value4456, value1) := by
  rw [input8904_def, output8904_def]
  kernel_rfl

theorem node8905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8905 value4456 value1 value2 = (output8905, value4457, value1) := by
  rw [input8905_def, output8905_def]
  kernel_rfl

theorem node8906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8906 value4457 value1 value2 = (output8906, value4458, value1) := by
  rw [input8906_def, output8906_def]
  kernel_rfl

theorem node8907_cond_eq
    (child8905 : Flapjack.WordAlloc.removeDeadStructural input8905 value4456 value1 value2 = (output8905, value4457, value1))
    (child8906 : Flapjack.WordAlloc.removeDeadStructural input8906 value4457 value1 value2 = (output8906, value4458, value1)) : Flapjack.WordAlloc.removeDeadStructural input8907 value4456 value1 value2 = (output8907, value4458, value1) := by
  rw [input8907_def, output8907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8905]
  dsimp only
  rw [child8906]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8905_skip, output8906_skip]
  kernel_rfl

theorem node8908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8908 value4458 value1 value2 = (output8908, value4459, value1) := by
  rw [input8908_def, output8908_def]
  kernel_rfl

theorem node8909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8909 value4459 value1 value2 = (output8909, value4460, value1) := by
  rw [input8909_def, output8909_def]
  kernel_rfl

theorem node8910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8910 value4460 value1 value2 = (output8910, value4461, value1) := by
  rw [input8910_def, output8910_def]
  kernel_rfl

theorem node8911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8911 value4461 value1 value2 = (output8911, value5, value1) := by
  rw [input8911_def, output8911_def]
  kernel_rfl

theorem node8912_cond_eq
    (child8910 : Flapjack.WordAlloc.removeDeadStructural input8910 value4460 value1 value2 = (output8910, value4461, value1))
    (child8911 : Flapjack.WordAlloc.removeDeadStructural input8911 value4461 value1 value2 = (output8911, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8912 value4460 value1 value2 = (output8912, value5, value1) := by
  rw [input8912_def, output8912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8910]
  dsimp only
  rw [child8911]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8910_skip, output8911_skip]
  kernel_rfl

theorem node8913_cond_eq
    (child8909 : Flapjack.WordAlloc.removeDeadStructural input8909 value4459 value1 value2 = (output8909, value4460, value1))
    (child8912 : Flapjack.WordAlloc.removeDeadStructural input8912 value4460 value1 value2 = (output8912, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8913 value4459 value1 value2 = (output8913, value5, value1) := by
  rw [input8913_def, output8913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8909]
  dsimp only
  rw [child8912]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8909_skip, output8912_skip]
  kernel_rfl

theorem node8914_cond_eq
    (child8908 : Flapjack.WordAlloc.removeDeadStructural input8908 value4458 value1 value2 = (output8908, value4459, value1))
    (child8913 : Flapjack.WordAlloc.removeDeadStructural input8913 value4459 value1 value2 = (output8913, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8914 value4458 value1 value2 = (output8914, value5, value1) := by
  rw [input8914_def, output8914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8908]
  dsimp only
  rw [child8913]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8908_skip, output8913_skip]
  kernel_rfl

theorem node8915_cond_eq
    (child8907 : Flapjack.WordAlloc.removeDeadStructural input8907 value4456 value1 value2 = (output8907, value4458, value1))
    (child8914 : Flapjack.WordAlloc.removeDeadStructural input8914 value4458 value1 value2 = (output8914, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8915 value4456 value1 value2 = (output8915, value5, value1) := by
  rw [input8915_def, output8915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8907]
  dsimp only
  rw [child8914]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8907_skip, output8914_skip]
  kernel_rfl

theorem node8916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8916 value5 value1 value2 = (output8916, value4462, value1) := by
  rw [input8916_def, output8916_def]
  kernel_rfl

theorem node8917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8917 value4462 value1 value2 = (output8917, value4463, value1) := by
  rw [input8917_def, output8917_def]
  kernel_rfl

theorem node8918_cond_eq
    (child8916 : Flapjack.WordAlloc.removeDeadStructural input8916 value5 value1 value2 = (output8916, value4462, value1))
    (child8917 : Flapjack.WordAlloc.removeDeadStructural input8917 value4462 value1 value2 = (output8917, value4463, value1)) : Flapjack.WordAlloc.removeDeadStructural input8918 value5 value1 value2 = (output8918, value4463, value1) := by
  rw [input8918_def, output8918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8916]
  dsimp only
  rw [child8917]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8916_skip, output8917_skip]
  kernel_rfl

theorem node8919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8919 value4463 value1 value2 = (output8919, value4464, value1) := by
  rw [input8919_def, output8919_def]
  kernel_rfl

theorem node8920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8920 value4464 value1 value2 = (output8920, value4464, value1) := by
  rw [input8920_def, output8920_def]
  kernel_rfl

theorem node8921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8921 value4464 value1 value2 = (output8921, value4465, value1) := by
  rw [input8921_def, output8921_def]
  kernel_rfl

theorem node8922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8922 value4465 value1 value2 = (output8922, value4466, value1) := by
  rw [input8922_def, output8922_def]
  kernel_rfl

theorem node8923_cond_eq
    (child8921 : Flapjack.WordAlloc.removeDeadStructural input8921 value4464 value1 value2 = (output8921, value4465, value1))
    (child8922 : Flapjack.WordAlloc.removeDeadStructural input8922 value4465 value1 value2 = (output8922, value4466, value1)) : Flapjack.WordAlloc.removeDeadStructural input8923 value4464 value1 value2 = (output8923, value4466, value1) := by
  rw [input8923_def, output8923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8921]
  dsimp only
  rw [child8922]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8921_skip, output8922_skip]
  kernel_rfl

theorem node8924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8924 value4466 value1 value2 = (output8924, value4467, value1) := by
  rw [input8924_def, output8924_def]
  kernel_rfl

theorem node8925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8925 value4467 value1 value2 = (output8925, value4468, value1) := by
  rw [input8925_def, output8925_def]
  kernel_rfl

theorem node8926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8926 value4468 value1 value2 = (output8926, value4469, value1) := by
  rw [input8926_def, output8926_def]
  kernel_rfl

theorem node8927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8927 value4469 value1 value2 = (output8927, value5, value1) := by
  rw [input8927_def, output8927_def]
  kernel_rfl

theorem node8928_cond_eq
    (child8926 : Flapjack.WordAlloc.removeDeadStructural input8926 value4468 value1 value2 = (output8926, value4469, value1))
    (child8927 : Flapjack.WordAlloc.removeDeadStructural input8927 value4469 value1 value2 = (output8927, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8928 value4468 value1 value2 = (output8928, value5, value1) := by
  rw [input8928_def, output8928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8926]
  dsimp only
  rw [child8927]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8926_skip, output8927_skip]
  kernel_rfl

theorem node8929_cond_eq
    (child8925 : Flapjack.WordAlloc.removeDeadStructural input8925 value4467 value1 value2 = (output8925, value4468, value1))
    (child8928 : Flapjack.WordAlloc.removeDeadStructural input8928 value4468 value1 value2 = (output8928, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8929 value4467 value1 value2 = (output8929, value5, value1) := by
  rw [input8929_def, output8929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8925]
  dsimp only
  rw [child8928]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8925_skip, output8928_skip]
  kernel_rfl

theorem node8930_cond_eq
    (child8924 : Flapjack.WordAlloc.removeDeadStructural input8924 value4466 value1 value2 = (output8924, value4467, value1))
    (child8929 : Flapjack.WordAlloc.removeDeadStructural input8929 value4467 value1 value2 = (output8929, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8930 value4466 value1 value2 = (output8930, value5, value1) := by
  rw [input8930_def, output8930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8924]
  dsimp only
  rw [child8929]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8924_skip, output8929_skip]
  kernel_rfl

theorem node8931_cond_eq
    (child8923 : Flapjack.WordAlloc.removeDeadStructural input8923 value4464 value1 value2 = (output8923, value4466, value1))
    (child8930 : Flapjack.WordAlloc.removeDeadStructural input8930 value4466 value1 value2 = (output8930, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8931 value4464 value1 value2 = (output8931, value5, value1) := by
  rw [input8931_def, output8931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8923]
  dsimp only
  rw [child8930]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8923_skip, output8930_skip]
  kernel_rfl

theorem node8932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8932 value5 value1 value2 = (output8932, value4470, value1) := by
  rw [input8932_def, output8932_def]
  kernel_rfl

theorem node8933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8933 value4470 value1 value2 = (output8933, value4471, value1) := by
  rw [input8933_def, output8933_def]
  kernel_rfl

theorem node8934_cond_eq
    (child8932 : Flapjack.WordAlloc.removeDeadStructural input8932 value5 value1 value2 = (output8932, value4470, value1))
    (child8933 : Flapjack.WordAlloc.removeDeadStructural input8933 value4470 value1 value2 = (output8933, value4471, value1)) : Flapjack.WordAlloc.removeDeadStructural input8934 value5 value1 value2 = (output8934, value4471, value1) := by
  rw [input8934_def, output8934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8932]
  dsimp only
  rw [child8933]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8932_skip, output8933_skip]
  kernel_rfl

theorem node8935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8935 value4471 value1 value2 = (output8935, value4472, value1) := by
  rw [input8935_def, output8935_def]
  kernel_rfl

theorem node8936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8936 value4472 value1 value2 = (output8936, value4472, value1) := by
  rw [input8936_def, output8936_def]
  kernel_rfl

theorem node8937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8937 value4472 value1 value2 = (output8937, value4473, value1) := by
  rw [input8937_def, output8937_def]
  kernel_rfl

theorem node8938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8938 value4473 value1 value2 = (output8938, value4474, value1) := by
  rw [input8938_def, output8938_def]
  kernel_rfl

theorem node8939_cond_eq
    (child8937 : Flapjack.WordAlloc.removeDeadStructural input8937 value4472 value1 value2 = (output8937, value4473, value1))
    (child8938 : Flapjack.WordAlloc.removeDeadStructural input8938 value4473 value1 value2 = (output8938, value4474, value1)) : Flapjack.WordAlloc.removeDeadStructural input8939 value4472 value1 value2 = (output8939, value4474, value1) := by
  rw [input8939_def, output8939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8937]
  dsimp only
  rw [child8938]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8937_skip, output8938_skip]
  kernel_rfl

theorem node8940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8940 value4474 value1 value2 = (output8940, value4475, value1) := by
  rw [input8940_def, output8940_def]
  kernel_rfl

theorem node8941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8941 value4475 value1 value2 = (output8941, value4476, value1) := by
  rw [input8941_def, output8941_def]
  kernel_rfl

theorem node8942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8942 value4476 value1 value2 = (output8942, value4477, value1) := by
  rw [input8942_def, output8942_def]
  kernel_rfl

theorem node8943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8943 value4477 value1 value2 = (output8943, value5, value1) := by
  rw [input8943_def, output8943_def]
  kernel_rfl

theorem node8944_cond_eq
    (child8942 : Flapjack.WordAlloc.removeDeadStructural input8942 value4476 value1 value2 = (output8942, value4477, value1))
    (child8943 : Flapjack.WordAlloc.removeDeadStructural input8943 value4477 value1 value2 = (output8943, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8944 value4476 value1 value2 = (output8944, value5, value1) := by
  rw [input8944_def, output8944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8942]
  dsimp only
  rw [child8943]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8942_skip, output8943_skip]
  kernel_rfl

theorem node8945_cond_eq
    (child8941 : Flapjack.WordAlloc.removeDeadStructural input8941 value4475 value1 value2 = (output8941, value4476, value1))
    (child8944 : Flapjack.WordAlloc.removeDeadStructural input8944 value4476 value1 value2 = (output8944, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8945 value4475 value1 value2 = (output8945, value5, value1) := by
  rw [input8945_def, output8945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8941]
  dsimp only
  rw [child8944]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8941_skip, output8944_skip]
  kernel_rfl

theorem node8946_cond_eq
    (child8940 : Flapjack.WordAlloc.removeDeadStructural input8940 value4474 value1 value2 = (output8940, value4475, value1))
    (child8945 : Flapjack.WordAlloc.removeDeadStructural input8945 value4475 value1 value2 = (output8945, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8946 value4474 value1 value2 = (output8946, value5, value1) := by
  rw [input8946_def, output8946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8940]
  dsimp only
  rw [child8945]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8940_skip, output8945_skip]
  kernel_rfl

theorem node8947_cond_eq
    (child8939 : Flapjack.WordAlloc.removeDeadStructural input8939 value4472 value1 value2 = (output8939, value4474, value1))
    (child8946 : Flapjack.WordAlloc.removeDeadStructural input8946 value4474 value1 value2 = (output8946, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8947 value4472 value1 value2 = (output8947, value5, value1) := by
  rw [input8947_def, output8947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8939]
  dsimp only
  rw [child8946]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8939_skip, output8946_skip]
  kernel_rfl

theorem node8948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8948 value5 value1 value2 = (output8948, value4478, value1) := by
  rw [input8948_def, output8948_def]
  kernel_rfl

theorem node8949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8949 value4478 value1 value2 = (output8949, value4479, value1) := by
  rw [input8949_def, output8949_def]
  kernel_rfl

theorem node8950_cond_eq
    (child8948 : Flapjack.WordAlloc.removeDeadStructural input8948 value5 value1 value2 = (output8948, value4478, value1))
    (child8949 : Flapjack.WordAlloc.removeDeadStructural input8949 value4478 value1 value2 = (output8949, value4479, value1)) : Flapjack.WordAlloc.removeDeadStructural input8950 value5 value1 value2 = (output8950, value4479, value1) := by
  rw [input8950_def, output8950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8948]
  dsimp only
  rw [child8949]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8948_skip, output8949_skip]
  kernel_rfl

theorem node8951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8951 value4479 value1 value2 = (output8951, value4480, value1) := by
  rw [input8951_def, output8951_def]
  kernel_rfl

theorem node8952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8952 value4480 value1 value2 = (output8952, value4480, value1) := by
  rw [input8952_def, output8952_def]
  kernel_rfl

theorem node8953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8953 value4480 value1 value2 = (output8953, value4481, value1) := by
  rw [input8953_def, output8953_def]
  kernel_rfl

theorem node8954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8954 value4481 value1 value2 = (output8954, value4482, value1) := by
  rw [input8954_def, output8954_def]
  kernel_rfl

theorem node8955_cond_eq
    (child8953 : Flapjack.WordAlloc.removeDeadStructural input8953 value4480 value1 value2 = (output8953, value4481, value1))
    (child8954 : Flapjack.WordAlloc.removeDeadStructural input8954 value4481 value1 value2 = (output8954, value4482, value1)) : Flapjack.WordAlloc.removeDeadStructural input8955 value4480 value1 value2 = (output8955, value4482, value1) := by
  rw [input8955_def, output8955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8953]
  dsimp only
  rw [child8954]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8953_skip, output8954_skip]
  kernel_rfl

theorem node8956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8956 value4482 value1 value2 = (output8956, value4483, value1) := by
  rw [input8956_def, output8956_def]
  kernel_rfl

theorem node8957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8957 value4483 value1 value2 = (output8957, value4484, value1) := by
  rw [input8957_def, output8957_def]
  kernel_rfl

theorem node8958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8958 value4484 value1 value2 = (output8958, value4485, value1) := by
  rw [input8958_def, output8958_def]
  kernel_rfl

theorem node8959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8959 value4485 value1 value2 = (output8959, value5, value1) := by
  rw [input8959_def, output8959_def]
  kernel_rfl

#print axioms node8959_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
