import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree8640_agree_conditional
    (child0 : tree8638 = literal8638)
    (child1 : tree8639 = literal8639) : tree8640 = literal8640 := by
  rw [tree8640_def, child0, child1]
  rfl
theorem node8640_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8638 live8638 coloured8638 = result8638)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8639 live8639 coloured8639 = result8639) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8640 live8640 coloured8640 = result8640 := by
  rw [tree8640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8638 coloured8638 at child
  try dsimp only [live8640, coloured8640]
  rw [child]
  dsimp only [result8638]
  have child := child1
  unfold live8639 coloured8639 at child
  try dsimp only [live8640, coloured8640]
  rw [child]
  dsimp only [result8639]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8641_agree_conditional : tree8641 = literal8641 := by
  rw [tree8641_def]
  rfl
theorem node8641_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8641 live8641 coloured8641 = result8641 := by
  rw [tree8641_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8642_agree_conditional
    (child0 : tree8640 = literal8640)
    (child1 : tree8641 = literal8641) : tree8642 = literal8642 := by
  rw [tree8642_def, child0, child1]
  rfl
theorem node8642_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8640 live8640 coloured8640 = result8640)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8641 live8641 coloured8641 = result8641) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8642 live8642 coloured8642 = result8642 := by
  rw [tree8642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8640 coloured8640 at child
  try dsimp only [live8642, coloured8642]
  rw [child]
  dsimp only [result8640]
  have child := child1
  unfold live8641 coloured8641 at child
  try dsimp only [live8642, coloured8642]
  rw [child]
  dsimp only [result8641]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8643_agree_conditional : tree8643 = literal8643 := by
  rw [tree8643_def]
  rfl
theorem node8643_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8643 live8643 coloured8643 = result8643 := by
  rw [tree8643_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8644_agree_conditional
    (child0 : tree8642 = literal8642)
    (child1 : tree8643 = literal8643) : tree8644 = literal8644 := by
  rw [tree8644_def, child0, child1]
  rfl
theorem node8644_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8642 live8642 coloured8642 = result8642)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8643 live8643 coloured8643 = result8643) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8644 live8644 coloured8644 = result8644 := by
  rw [tree8644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8642 coloured8642 at child
  try dsimp only [live8644, coloured8644]
  rw [child]
  dsimp only [result8642]
  have child := child1
  unfold live8643 coloured8643 at child
  try dsimp only [live8644, coloured8644]
  rw [child]
  dsimp only [result8643]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8645_agree_conditional : tree8645 = literal8645 := by
  rw [tree8645_def]
  rfl
theorem node8645_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8645 live8645 coloured8645 = result8645 := by
  rw [tree8645_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8646_agree_conditional
    (child0 : tree8644 = literal8644)
    (child1 : tree8645 = literal8645) : tree8646 = literal8646 := by
  rw [tree8646_def, child0, child1]
  rfl
theorem node8646_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8644 live8644 coloured8644 = result8644)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8645 live8645 coloured8645 = result8645) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8646 live8646 coloured8646 = result8646 := by
  rw [tree8646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8644 coloured8644 at child
  try dsimp only [live8646, coloured8646]
  rw [child]
  dsimp only [result8644]
  have child := child1
  unfold live8645 coloured8645 at child
  try dsimp only [live8646, coloured8646]
  rw [child]
  dsimp only [result8645]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8647_agree_conditional : tree8647 = literal8647 := by
  rw [tree8647_def]
  rfl
theorem node8647_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8647 live8647 coloured8647 = result8647 := by
  rw [tree8647_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8648_agree_conditional
    (child0 : tree8646 = literal8646)
    (child1 : tree8647 = literal8647) : tree8648 = literal8648 := by
  rw [tree8648_def, child0, child1]
  rfl
theorem node8648_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8646 live8646 coloured8646 = result8646)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8647 live8647 coloured8647 = result8647) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8648 live8648 coloured8648 = result8648 := by
  rw [tree8648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8646 coloured8646 at child
  try dsimp only [live8648, coloured8648]
  rw [child]
  dsimp only [result8646]
  have child := child1
  unfold live8647 coloured8647 at child
  try dsimp only [live8648, coloured8648]
  rw [child]
  dsimp only [result8647]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8649_agree_conditional : tree8649 = literal8649 := by
  rw [tree8649_def]
  rfl
theorem node8649_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8649 live8649 coloured8649 = result8649 := by
  rw [tree8649_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8650_agree_conditional
    (child0 : tree8648 = literal8648)
    (child1 : tree8649 = literal8649) : tree8650 = literal8650 := by
  rw [tree8650_def, child0, child1]
  rfl
theorem node8650_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8648 live8648 coloured8648 = result8648)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8649 live8649 coloured8649 = result8649) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8650 live8650 coloured8650 = result8650 := by
  rw [tree8650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8648 coloured8648 at child
  try dsimp only [live8650, coloured8650]
  rw [child]
  dsimp only [result8648]
  have child := child1
  unfold live8649 coloured8649 at child
  try dsimp only [live8650, coloured8650]
  rw [child]
  dsimp only [result8649]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8651_agree_conditional : tree8651 = literal8651 := by
  rw [tree8651_def]
  rfl
theorem node8651_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8651 live8651 coloured8651 = result8651 := by
  rw [tree8651_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8652_agree_conditional
    (child0 : tree8650 = literal8650)
    (child1 : tree8651 = literal8651) : tree8652 = literal8652 := by
  rw [tree8652_def, child0, child1]
  rfl
theorem node8652_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8650 live8650 coloured8650 = result8650)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8651 live8651 coloured8651 = result8651) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8652 live8652 coloured8652 = result8652 := by
  rw [tree8652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8650 coloured8650 at child
  try dsimp only [live8652, coloured8652]
  rw [child]
  dsimp only [result8650]
  have child := child1
  unfold live8651 coloured8651 at child
  try dsimp only [live8652, coloured8652]
  rw [child]
  dsimp only [result8651]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8653_agree_conditional : tree8653 = literal8653 := by
  rw [tree8653_def]
  rfl
theorem node8653_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8653 live8653 coloured8653 = result8653 := by
  rw [tree8653_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8654_agree_conditional
    (child0 : tree8652 = literal8652)
    (child1 : tree8653 = literal8653) : tree8654 = literal8654 := by
  rw [tree8654_def, child0, child1]
  rfl
theorem node8654_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8652 live8652 coloured8652 = result8652)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8653 live8653 coloured8653 = result8653) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8654 live8654 coloured8654 = result8654 := by
  rw [tree8654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8652 coloured8652 at child
  try dsimp only [live8654, coloured8654]
  rw [child]
  dsimp only [result8652]
  have child := child1
  unfold live8653 coloured8653 at child
  try dsimp only [live8654, coloured8654]
  rw [child]
  dsimp only [result8653]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8655_agree_conditional : tree8655 = literal8655 := by
  rw [tree8655_def]
  rfl
theorem node8655_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8655 live8655 coloured8655 = result8655 := by
  rw [tree8655_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8656_agree_conditional
    (child0 : tree8654 = literal8654)
    (child1 : tree8655 = literal8655) : tree8656 = literal8656 := by
  rw [tree8656_def, child0, child1]
  rfl
theorem node8656_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8654 live8654 coloured8654 = result8654)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8655 live8655 coloured8655 = result8655) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8656 live8656 coloured8656 = result8656 := by
  rw [tree8656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8654 coloured8654 at child
  try dsimp only [live8656, coloured8656]
  rw [child]
  dsimp only [result8654]
  have child := child1
  unfold live8655 coloured8655 at child
  try dsimp only [live8656, coloured8656]
  rw [child]
  dsimp only [result8655]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8657_agree_conditional : tree8657 = literal8657 := by
  rw [tree8657_def]
  rfl
theorem node8657_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8657 live8657 coloured8657 = result8657 := by
  rw [tree8657_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8658_agree_conditional
    (child0 : tree8656 = literal8656)
    (child1 : tree8657 = literal8657) : tree8658 = literal8658 := by
  rw [tree8658_def, child0, child1]
  rfl
theorem node8658_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8656 live8656 coloured8656 = result8656)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8657 live8657 coloured8657 = result8657) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8658 live8658 coloured8658 = result8658 := by
  rw [tree8658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8656 coloured8656 at child
  try dsimp only [live8658, coloured8658]
  rw [child]
  dsimp only [result8656]
  have child := child1
  unfold live8657 coloured8657 at child
  try dsimp only [live8658, coloured8658]
  rw [child]
  dsimp only [result8657]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8659_agree_conditional : tree8659 = literal8659 := by
  rw [tree8659_def]
  rfl
theorem node8659_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8659 live8659 coloured8659 = result8659 := by
  rw [tree8659_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8660_agree_conditional
    (child0 : tree8658 = literal8658)
    (child1 : tree8659 = literal8659) : tree8660 = literal8660 := by
  rw [tree8660_def, child0, child1]
  rfl
theorem node8660_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8658 live8658 coloured8658 = result8658)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8659 live8659 coloured8659 = result8659) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8660 live8660 coloured8660 = result8660 := by
  rw [tree8660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8658 coloured8658 at child
  try dsimp only [live8660, coloured8660]
  rw [child]
  dsimp only [result8658]
  have child := child1
  unfold live8659 coloured8659 at child
  try dsimp only [live8660, coloured8660]
  rw [child]
  dsimp only [result8659]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8661_agree_conditional : tree8661 = literal8661 := by
  rw [tree8661_def]
  rfl
theorem node8661_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8661 live8661 coloured8661 = result8661 := by
  rw [tree8661_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8662_agree_conditional
    (child0 : tree8660 = literal8660)
    (child1 : tree8661 = literal8661) : tree8662 = literal8662 := by
  rw [tree8662_def, child0, child1]
  rfl
theorem node8662_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8660 live8660 coloured8660 = result8660)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8661 live8661 coloured8661 = result8661) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8662 live8662 coloured8662 = result8662 := by
  rw [tree8662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8660 coloured8660 at child
  try dsimp only [live8662, coloured8662]
  rw [child]
  dsimp only [result8660]
  have child := child1
  unfold live8661 coloured8661 at child
  try dsimp only [live8662, coloured8662]
  rw [child]
  dsimp only [result8661]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8663_agree_conditional : tree8663 = literal8663 := by
  rw [tree8663_def]
  rfl
theorem node8663_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8663 live8663 coloured8663 = result8663 := by
  rw [tree8663_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8664_agree_conditional
    (child0 : tree8662 = literal8662)
    (child1 : tree8663 = literal8663) : tree8664 = literal8664 := by
  rw [tree8664_def, child0, child1]
  rfl
theorem node8664_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8662 live8662 coloured8662 = result8662)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8663 live8663 coloured8663 = result8663) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8664 live8664 coloured8664 = result8664 := by
  rw [tree8664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8662 coloured8662 at child
  try dsimp only [live8664, coloured8664]
  rw [child]
  dsimp only [result8662]
  have child := child1
  unfold live8663 coloured8663 at child
  try dsimp only [live8664, coloured8664]
  rw [child]
  dsimp only [result8663]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8665_agree_conditional : tree8665 = literal8665 := by
  rw [tree8665_def]
  rfl
theorem node8665_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8665 live8665 coloured8665 = result8665 := by
  rw [tree8665_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8666_agree_conditional
    (child0 : tree8664 = literal8664)
    (child1 : tree8665 = literal8665) : tree8666 = literal8666 := by
  rw [tree8666_def, child0, child1]
  rfl
theorem node8666_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8664 live8664 coloured8664 = result8664)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8665 live8665 coloured8665 = result8665) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8666 live8666 coloured8666 = result8666 := by
  rw [tree8666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8664 coloured8664 at child
  try dsimp only [live8666, coloured8666]
  rw [child]
  dsimp only [result8664]
  have child := child1
  unfold live8665 coloured8665 at child
  try dsimp only [live8666, coloured8666]
  rw [child]
  dsimp only [result8665]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8667_agree_conditional : tree8667 = literal8667 := by
  rw [tree8667_def]
  rfl
theorem node8667_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8667 live8667 coloured8667 = result8667 := by
  rw [tree8667_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8668_agree_conditional
    (child0 : tree8666 = literal8666)
    (child1 : tree8667 = literal8667) : tree8668 = literal8668 := by
  rw [tree8668_def, child0, child1]
  rfl
theorem node8668_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8666 live8666 coloured8666 = result8666)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8667 live8667 coloured8667 = result8667) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8668 live8668 coloured8668 = result8668 := by
  rw [tree8668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8666 coloured8666 at child
  try dsimp only [live8668, coloured8668]
  rw [child]
  dsimp only [result8666]
  have child := child1
  unfold live8667 coloured8667 at child
  try dsimp only [live8668, coloured8668]
  rw [child]
  dsimp only [result8667]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8669_agree_conditional : tree8669 = literal8669 := by
  rw [tree8669_def]
  rfl
theorem node8669_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8669 live8669 coloured8669 = result8669 := by
  rw [tree8669_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8670_agree_conditional
    (child0 : tree8668 = literal8668)
    (child1 : tree8669 = literal8669) : tree8670 = literal8670 := by
  rw [tree8670_def, child0, child1]
  rfl
theorem node8670_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8668 live8668 coloured8668 = result8668)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8669 live8669 coloured8669 = result8669) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8670 live8670 coloured8670 = result8670 := by
  rw [tree8670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8668 coloured8668 at child
  try dsimp only [live8670, coloured8670]
  rw [child]
  dsimp only [result8668]
  have child := child1
  unfold live8669 coloured8669 at child
  try dsimp only [live8670, coloured8670]
  rw [child]
  dsimp only [result8669]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8671_agree_conditional : tree8671 = literal8671 := by
  rw [tree8671_def]
  rfl
theorem node8671_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8671 live8671 coloured8671 = result8671 := by
  rw [tree8671_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8672_agree_conditional
    (child0 : tree8670 = literal8670)
    (child1 : tree8671 = literal8671) : tree8672 = literal8672 := by
  rw [tree8672_def, child0, child1]
  rfl
theorem node8672_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8670 live8670 coloured8670 = result8670)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8671 live8671 coloured8671 = result8671) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8672 live8672 coloured8672 = result8672 := by
  rw [tree8672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8670 coloured8670 at child
  try dsimp only [live8672, coloured8672]
  rw [child]
  dsimp only [result8670]
  have child := child1
  unfold live8671 coloured8671 at child
  try dsimp only [live8672, coloured8672]
  rw [child]
  dsimp only [result8671]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8673_agree_conditional : tree8673 = literal8673 := by
  rw [tree8673_def]
  rfl
theorem node8673_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8673 live8673 coloured8673 = result8673 := by
  rw [tree8673_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8674_agree_conditional
    (child0 : tree8672 = literal8672)
    (child1 : tree8673 = literal8673) : tree8674 = literal8674 := by
  rw [tree8674_def, child0, child1]
  rfl
theorem node8674_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8672 live8672 coloured8672 = result8672)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8673 live8673 coloured8673 = result8673) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8674 live8674 coloured8674 = result8674 := by
  rw [tree8674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8672 coloured8672 at child
  try dsimp only [live8674, coloured8674]
  rw [child]
  dsimp only [result8672]
  have child := child1
  unfold live8673 coloured8673 at child
  try dsimp only [live8674, coloured8674]
  rw [child]
  dsimp only [result8673]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8675_agree_conditional : tree8675 = literal8675 := by
  rw [tree8675_def]
  rfl
theorem node8675_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8675 live8675 coloured8675 = result8675 := by
  rw [tree8675_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8676_agree_conditional
    (child0 : tree8674 = literal8674)
    (child1 : tree8675 = literal8675) : tree8676 = literal8676 := by
  rw [tree8676_def, child0, child1]
  rfl
theorem node8676_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8674 live8674 coloured8674 = result8674)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8675 live8675 coloured8675 = result8675) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8676 live8676 coloured8676 = result8676 := by
  rw [tree8676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8674 coloured8674 at child
  try dsimp only [live8676, coloured8676]
  rw [child]
  dsimp only [result8674]
  have child := child1
  unfold live8675 coloured8675 at child
  try dsimp only [live8676, coloured8676]
  rw [child]
  dsimp only [result8675]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8677_agree_conditional : tree8677 = literal8677 := by
  rw [tree8677_def]
  rfl
theorem node8677_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8677 live8677 coloured8677 = result8677 := by
  rw [tree8677_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8678_agree_conditional
    (child0 : tree8676 = literal8676)
    (child1 : tree8677 = literal8677) : tree8678 = literal8678 := by
  rw [tree8678_def, child0, child1]
  rfl
theorem node8678_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8676 live8676 coloured8676 = result8676)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8677 live8677 coloured8677 = result8677) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8678 live8678 coloured8678 = result8678 := by
  rw [tree8678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8676 coloured8676 at child
  try dsimp only [live8678, coloured8678]
  rw [child]
  dsimp only [result8676]
  have child := child1
  unfold live8677 coloured8677 at child
  try dsimp only [live8678, coloured8678]
  rw [child]
  dsimp only [result8677]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8679_agree_conditional : tree8679 = literal8679 := by
  rw [tree8679_def]
  rfl
theorem node8679_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8679 live8679 coloured8679 = result8679 := by
  rw [tree8679_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8680_agree_conditional
    (child0 : tree8678 = literal8678)
    (child1 : tree8679 = literal8679) : tree8680 = literal8680 := by
  rw [tree8680_def, child0, child1]
  rfl
theorem node8680_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8678 live8678 coloured8678 = result8678)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8679 live8679 coloured8679 = result8679) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8680 live8680 coloured8680 = result8680 := by
  rw [tree8680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8678 coloured8678 at child
  try dsimp only [live8680, coloured8680]
  rw [child]
  dsimp only [result8678]
  have child := child1
  unfold live8679 coloured8679 at child
  try dsimp only [live8680, coloured8680]
  rw [child]
  dsimp only [result8679]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8681_agree_conditional : tree8681 = literal8681 := by
  rw [tree8681_def]
  rfl
theorem node8681_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8681 live8681 coloured8681 = result8681 := by
  rw [tree8681_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8682_agree_conditional
    (child0 : tree8680 = literal8680)
    (child1 : tree8681 = literal8681) : tree8682 = literal8682 := by
  rw [tree8682_def, child0, child1]
  rfl
theorem node8682_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8680 live8680 coloured8680 = result8680)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8681 live8681 coloured8681 = result8681) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8682 live8682 coloured8682 = result8682 := by
  rw [tree8682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8680 coloured8680 at child
  try dsimp only [live8682, coloured8682]
  rw [child]
  dsimp only [result8680]
  have child := child1
  unfold live8681 coloured8681 at child
  try dsimp only [live8682, coloured8682]
  rw [child]
  dsimp only [result8681]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8683_agree_conditional : tree8683 = literal8683 := by
  rw [tree8683_def]
  rfl
theorem node8683_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8683 live8683 coloured8683 = result8683 := by
  rw [tree8683_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8684_agree_conditional
    (child0 : tree8682 = literal8682)
    (child1 : tree8683 = literal8683) : tree8684 = literal8684 := by
  rw [tree8684_def, child0, child1]
  rfl
theorem node8684_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8682 live8682 coloured8682 = result8682)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8683 live8683 coloured8683 = result8683) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8684 live8684 coloured8684 = result8684 := by
  rw [tree8684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8682 coloured8682 at child
  try dsimp only [live8684, coloured8684]
  rw [child]
  dsimp only [result8682]
  have child := child1
  unfold live8683 coloured8683 at child
  try dsimp only [live8684, coloured8684]
  rw [child]
  dsimp only [result8683]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8685_agree_conditional : tree8685 = literal8685 := by
  rw [tree8685_def]
  rfl
theorem node8685_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8685 live8685 coloured8685 = result8685 := by
  rw [tree8685_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8686_agree_conditional
    (child0 : tree8684 = literal8684)
    (child1 : tree8685 = literal8685) : tree8686 = literal8686 := by
  rw [tree8686_def, child0, child1]
  rfl
theorem node8686_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8684 live8684 coloured8684 = result8684)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8685 live8685 coloured8685 = result8685) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8686 live8686 coloured8686 = result8686 := by
  rw [tree8686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8684 coloured8684 at child
  try dsimp only [live8686, coloured8686]
  rw [child]
  dsimp only [result8684]
  have child := child1
  unfold live8685 coloured8685 at child
  try dsimp only [live8686, coloured8686]
  rw [child]
  dsimp only [result8685]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8687_agree_conditional : tree8687 = literal8687 := by
  rw [tree8687_def]
  rfl
theorem node8687_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8687 live8687 coloured8687 = result8687 := by
  rw [tree8687_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8688_agree_conditional
    (child0 : tree8686 = literal8686)
    (child1 : tree8687 = literal8687) : tree8688 = literal8688 := by
  rw [tree8688_def, child0, child1]
  rfl
theorem node8688_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8686 live8686 coloured8686 = result8686)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8687 live8687 coloured8687 = result8687) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8688 live8688 coloured8688 = result8688 := by
  rw [tree8688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8686 coloured8686 at child
  try dsimp only [live8688, coloured8688]
  rw [child]
  dsimp only [result8686]
  have child := child1
  unfold live8687 coloured8687 at child
  try dsimp only [live8688, coloured8688]
  rw [child]
  dsimp only [result8687]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8689_agree_conditional : tree8689 = literal8689 := by
  rw [tree8689_def]
  rfl
theorem node8689_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8689 live8689 coloured8689 = result8689 := by
  rw [tree8689_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8690_agree_conditional
    (child0 : tree8688 = literal8688)
    (child1 : tree8689 = literal8689) : tree8690 = literal8690 := by
  rw [tree8690_def, child0, child1]
  rfl
theorem node8690_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8688 live8688 coloured8688 = result8688)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8689 live8689 coloured8689 = result8689) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8690 live8690 coloured8690 = result8690 := by
  rw [tree8690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8688 coloured8688 at child
  try dsimp only [live8690, coloured8690]
  rw [child]
  dsimp only [result8688]
  have child := child1
  unfold live8689 coloured8689 at child
  try dsimp only [live8690, coloured8690]
  rw [child]
  dsimp only [result8689]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8691_agree_conditional : tree8691 = literal8691 := by
  rw [tree8691_def]
  rfl
theorem node8691_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8691 live8691 coloured8691 = result8691 := by
  rw [tree8691_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8692_agree_conditional
    (child0 : tree8690 = literal8690)
    (child1 : tree8691 = literal8691) : tree8692 = literal8692 := by
  rw [tree8692_def, child0, child1]
  rfl
theorem node8692_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8690 live8690 coloured8690 = result8690)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8691 live8691 coloured8691 = result8691) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8692 live8692 coloured8692 = result8692 := by
  rw [tree8692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8690 coloured8690 at child
  try dsimp only [live8692, coloured8692]
  rw [child]
  dsimp only [result8690]
  have child := child1
  unfold live8691 coloured8691 at child
  try dsimp only [live8692, coloured8692]
  rw [child]
  dsimp only [result8691]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8693_agree_conditional : tree8693 = literal8693 := by
  rw [tree8693_def]
  rfl
theorem node8693_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8693 live8693 coloured8693 = result8693 := by
  rw [tree8693_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8694_agree_conditional
    (child0 : tree8692 = literal8692)
    (child1 : tree8693 = literal8693) : tree8694 = literal8694 := by
  rw [tree8694_def, child0, child1]
  rfl
theorem node8694_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8692 live8692 coloured8692 = result8692)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8693 live8693 coloured8693 = result8693) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8694 live8694 coloured8694 = result8694 := by
  rw [tree8694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8692 coloured8692 at child
  try dsimp only [live8694, coloured8694]
  rw [child]
  dsimp only [result8692]
  have child := child1
  unfold live8693 coloured8693 at child
  try dsimp only [live8694, coloured8694]
  rw [child]
  dsimp only [result8693]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8695_agree_conditional : tree8695 = literal8695 := by
  rw [tree8695_def]
  rfl
theorem node8695_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8695 live8695 coloured8695 = result8695 := by
  rw [tree8695_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8696_agree_conditional
    (child0 : tree8694 = literal8694)
    (child1 : tree8695 = literal8695) : tree8696 = literal8696 := by
  rw [tree8696_def, child0, child1]
  rfl
theorem node8696_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8694 live8694 coloured8694 = result8694)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8695 live8695 coloured8695 = result8695) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8696 live8696 coloured8696 = result8696 := by
  rw [tree8696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8694 coloured8694 at child
  try dsimp only [live8696, coloured8696]
  rw [child]
  dsimp only [result8694]
  have child := child1
  unfold live8695 coloured8695 at child
  try dsimp only [live8696, coloured8696]
  rw [child]
  dsimp only [result8695]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8697_agree_conditional : tree8697 = literal8697 := by
  rw [tree8697_def]
  rfl
theorem node8697_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8697 live8697 coloured8697 = result8697 := by
  rw [tree8697_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8698_agree_conditional
    (child0 : tree8696 = literal8696)
    (child1 : tree8697 = literal8697) : tree8698 = literal8698 := by
  rw [tree8698_def, child0, child1]
  rfl
theorem node8698_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8696 live8696 coloured8696 = result8696)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8697 live8697 coloured8697 = result8697) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8698 live8698 coloured8698 = result8698 := by
  rw [tree8698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8696 coloured8696 at child
  try dsimp only [live8698, coloured8698]
  rw [child]
  dsimp only [result8696]
  have child := child1
  unfold live8697 coloured8697 at child
  try dsimp only [live8698, coloured8698]
  rw [child]
  dsimp only [result8697]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8699_agree_conditional : tree8699 = literal8699 := by
  rw [tree8699_def]
  rfl
theorem node8699_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8699 live8699 coloured8699 = result8699 := by
  rw [tree8699_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8700_agree_conditional
    (child0 : tree8698 = literal8698)
    (child1 : tree8699 = literal8699) : tree8700 = literal8700 := by
  rw [tree8700_def, child0, child1]
  rfl
theorem node8700_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8698 live8698 coloured8698 = result8698)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8699 live8699 coloured8699 = result8699) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8700 live8700 coloured8700 = result8700 := by
  rw [tree8700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8698 coloured8698 at child
  try dsimp only [live8700, coloured8700]
  rw [child]
  dsimp only [result8698]
  have child := child1
  unfold live8699 coloured8699 at child
  try dsimp only [live8700, coloured8700]
  rw [child]
  dsimp only [result8699]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8701_agree_conditional : tree8701 = literal8701 := by
  rw [tree8701_def]
  rfl
theorem node8701_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8701 live8701 coloured8701 = result8701 := by
  rw [tree8701_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8702_agree_conditional
    (child0 : tree8700 = literal8700)
    (child1 : tree8701 = literal8701) : tree8702 = literal8702 := by
  rw [tree8702_def, child0, child1]
  rfl
theorem node8702_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8700 live8700 coloured8700 = result8700)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8701 live8701 coloured8701 = result8701) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8702 live8702 coloured8702 = result8702 := by
  rw [tree8702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8700 coloured8700 at child
  try dsimp only [live8702, coloured8702]
  rw [child]
  dsimp only [result8700]
  have child := child1
  unfold live8701 coloured8701 at child
  try dsimp only [live8702, coloured8702]
  rw [child]
  dsimp only [result8701]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8703_agree_conditional : tree8703 = literal8703 := by
  rw [tree8703_def]
  rfl
theorem node8703_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8703 live8703 coloured8703 = result8703 := by
  rw [tree8703_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8704_agree_conditional
    (child0 : tree8702 = literal8702)
    (child1 : tree8703 = literal8703) : tree8704 = literal8704 := by
  rw [tree8704_def, child0, child1]
  rfl
theorem node8704_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8702 live8702 coloured8702 = result8702)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8703 live8703 coloured8703 = result8703) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8704 live8704 coloured8704 = result8704 := by
  rw [tree8704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8702 coloured8702 at child
  try dsimp only [live8704, coloured8704]
  rw [child]
  dsimp only [result8702]
  have child := child1
  unfold live8703 coloured8703 at child
  try dsimp only [live8704, coloured8704]
  rw [child]
  dsimp only [result8703]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8705_agree_conditional : tree8705 = literal8705 := by
  rw [tree8705_def]
  rfl
theorem node8705_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8705 live8705 coloured8705 = result8705 := by
  rw [tree8705_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8706_agree_conditional
    (child0 : tree8704 = literal8704)
    (child1 : tree8705 = literal8705) : tree8706 = literal8706 := by
  rw [tree8706_def, child0, child1]
  rfl
theorem node8706_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8704 live8704 coloured8704 = result8704)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8705 live8705 coloured8705 = result8705) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8706 live8706 coloured8706 = result8706 := by
  rw [tree8706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8704 coloured8704 at child
  try dsimp only [live8706, coloured8706]
  rw [child]
  dsimp only [result8704]
  have child := child1
  unfold live8705 coloured8705 at child
  try dsimp only [live8706, coloured8706]
  rw [child]
  dsimp only [result8705]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8707_agree_conditional : tree8707 = literal8707 := by
  rw [tree8707_def]
  rfl
theorem node8707_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8707 live8707 coloured8707 = result8707 := by
  rw [tree8707_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8708_agree_conditional
    (child0 : tree8706 = literal8706)
    (child1 : tree8707 = literal8707) : tree8708 = literal8708 := by
  rw [tree8708_def, child0, child1]
  rfl
theorem node8708_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8706 live8706 coloured8706 = result8706)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8707 live8707 coloured8707 = result8707) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8708 live8708 coloured8708 = result8708 := by
  rw [tree8708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8706 coloured8706 at child
  try dsimp only [live8708, coloured8708]
  rw [child]
  dsimp only [result8706]
  have child := child1
  unfold live8707 coloured8707 at child
  try dsimp only [live8708, coloured8708]
  rw [child]
  dsimp only [result8707]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8709_agree_conditional : tree8709 = literal8709 := by
  rw [tree8709_def]
  rfl
theorem node8709_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8709 live8709 coloured8709 = result8709 := by
  rw [tree8709_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8710_agree_conditional
    (child0 : tree8708 = literal8708)
    (child1 : tree8709 = literal8709) : tree8710 = literal8710 := by
  rw [tree8710_def, child0, child1]
  rfl
theorem node8710_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8708 live8708 coloured8708 = result8708)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8709 live8709 coloured8709 = result8709) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8710 live8710 coloured8710 = result8710 := by
  rw [tree8710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8708 coloured8708 at child
  try dsimp only [live8710, coloured8710]
  rw [child]
  dsimp only [result8708]
  have child := child1
  unfold live8709 coloured8709 at child
  try dsimp only [live8710, coloured8710]
  rw [child]
  dsimp only [result8709]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8711_agree_conditional : tree8711 = literal8711 := by
  rw [tree8711_def]
  rfl
theorem node8711_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8711 live8711 coloured8711 = result8711 := by
  rw [tree8711_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8712_agree_conditional
    (child0 : tree8710 = literal8710)
    (child1 : tree8711 = literal8711) : tree8712 = literal8712 := by
  rw [tree8712_def, child0, child1]
  rfl
theorem node8712_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8710 live8710 coloured8710 = result8710)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8711 live8711 coloured8711 = result8711) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8712 live8712 coloured8712 = result8712 := by
  rw [tree8712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8710 coloured8710 at child
  try dsimp only [live8712, coloured8712]
  rw [child]
  dsimp only [result8710]
  have child := child1
  unfold live8711 coloured8711 at child
  try dsimp only [live8712, coloured8712]
  rw [child]
  dsimp only [result8711]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8713_agree_conditional : tree8713 = literal8713 := by
  rw [tree8713_def]
  rfl
theorem node8713_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8713 live8713 coloured8713 = result8713 := by
  rw [tree8713_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8714_agree_conditional
    (child0 : tree8712 = literal8712)
    (child1 : tree8713 = literal8713) : tree8714 = literal8714 := by
  rw [tree8714_def, child0, child1]
  rfl
theorem node8714_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8712 live8712 coloured8712 = result8712)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8713 live8713 coloured8713 = result8713) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8714 live8714 coloured8714 = result8714 := by
  rw [tree8714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8712 coloured8712 at child
  try dsimp only [live8714, coloured8714]
  rw [child]
  dsimp only [result8712]
  have child := child1
  unfold live8713 coloured8713 at child
  try dsimp only [live8714, coloured8714]
  rw [child]
  dsimp only [result8713]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8715_agree_conditional : tree8715 = literal8715 := by
  rw [tree8715_def]
  rfl
theorem node8715_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8715 live8715 coloured8715 = result8715 := by
  rw [tree8715_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8716_agree_conditional
    (child0 : tree8714 = literal8714)
    (child1 : tree8715 = literal8715) : tree8716 = literal8716 := by
  rw [tree8716_def, child0, child1]
  rfl
theorem node8716_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8714 live8714 coloured8714 = result8714)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8715 live8715 coloured8715 = result8715) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8716 live8716 coloured8716 = result8716 := by
  rw [tree8716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8714 coloured8714 at child
  try dsimp only [live8716, coloured8716]
  rw [child]
  dsimp only [result8714]
  have child := child1
  unfold live8715 coloured8715 at child
  try dsimp only [live8716, coloured8716]
  rw [child]
  dsimp only [result8715]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8717_agree_conditional : tree8717 = literal8717 := by
  rw [tree8717_def]
  rfl
theorem node8717_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8717 live8717 coloured8717 = result8717 := by
  rw [tree8717_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8718_agree_conditional
    (child0 : tree8716 = literal8716)
    (child1 : tree8717 = literal8717) : tree8718 = literal8718 := by
  rw [tree8718_def, child0, child1]
  rfl
theorem node8718_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8716 live8716 coloured8716 = result8716)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8717 live8717 coloured8717 = result8717) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8718 live8718 coloured8718 = result8718 := by
  rw [tree8718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8716 coloured8716 at child
  try dsimp only [live8718, coloured8718]
  rw [child]
  dsimp only [result8716]
  have child := child1
  unfold live8717 coloured8717 at child
  try dsimp only [live8718, coloured8718]
  rw [child]
  dsimp only [result8717]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8719_agree_conditional : tree8719 = literal8719 := by
  rw [tree8719_def]
  rfl
theorem node8719_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8719 live8719 coloured8719 = result8719 := by
  rw [tree8719_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8720_agree_conditional
    (child0 : tree8718 = literal8718)
    (child1 : tree8719 = literal8719) : tree8720 = literal8720 := by
  rw [tree8720_def, child0, child1]
  rfl
theorem node8720_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8718 live8718 coloured8718 = result8718)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8719 live8719 coloured8719 = result8719) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8720 live8720 coloured8720 = result8720 := by
  rw [tree8720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8718 coloured8718 at child
  try dsimp only [live8720, coloured8720]
  rw [child]
  dsimp only [result8718]
  have child := child1
  unfold live8719 coloured8719 at child
  try dsimp only [live8720, coloured8720]
  rw [child]
  dsimp only [result8719]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8721_agree_conditional : tree8721 = literal8721 := by
  rw [tree8721_def]
  rfl
theorem node8721_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8721 live8721 coloured8721 = result8721 := by
  rw [tree8721_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8722_agree_conditional
    (child0 : tree8720 = literal8720)
    (child1 : tree8721 = literal8721) : tree8722 = literal8722 := by
  rw [tree8722_def, child0, child1]
  rfl
theorem node8722_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8720 live8720 coloured8720 = result8720)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8721 live8721 coloured8721 = result8721) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8722 live8722 coloured8722 = result8722 := by
  rw [tree8722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8720 coloured8720 at child
  try dsimp only [live8722, coloured8722]
  rw [child]
  dsimp only [result8720]
  have child := child1
  unfold live8721 coloured8721 at child
  try dsimp only [live8722, coloured8722]
  rw [child]
  dsimp only [result8721]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8723_agree_conditional : tree8723 = literal8723 := by
  rw [tree8723_def]
  rfl
theorem node8723_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8723 live8723 coloured8723 = result8723 := by
  rw [tree8723_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8724_agree_conditional
    (child0 : tree8722 = literal8722)
    (child1 : tree8723 = literal8723) : tree8724 = literal8724 := by
  rw [tree8724_def, child0, child1]
  rfl
theorem node8724_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8722 live8722 coloured8722 = result8722)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8723 live8723 coloured8723 = result8723) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8724 live8724 coloured8724 = result8724 := by
  rw [tree8724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8722 coloured8722 at child
  try dsimp only [live8724, coloured8724]
  rw [child]
  dsimp only [result8722]
  have child := child1
  unfold live8723 coloured8723 at child
  try dsimp only [live8724, coloured8724]
  rw [child]
  dsimp only [result8723]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8725_agree_conditional : tree8725 = literal8725 := by
  rw [tree8725_def]
  rfl
theorem node8725_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8725 live8725 coloured8725 = result8725 := by
  rw [tree8725_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8726_agree_conditional
    (child0 : tree8724 = literal8724)
    (child1 : tree8725 = literal8725) : tree8726 = literal8726 := by
  rw [tree8726_def, child0, child1]
  rfl
theorem node8726_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8724 live8724 coloured8724 = result8724)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8725 live8725 coloured8725 = result8725) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8726 live8726 coloured8726 = result8726 := by
  rw [tree8726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8724 coloured8724 at child
  try dsimp only [live8726, coloured8726]
  rw [child]
  dsimp only [result8724]
  have child := child1
  unfold live8725 coloured8725 at child
  try dsimp only [live8726, coloured8726]
  rw [child]
  dsimp only [result8725]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8727_agree_conditional : tree8727 = literal8727 := by
  rw [tree8727_def]
  rfl
theorem node8727_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8727 live8727 coloured8727 = result8727 := by
  rw [tree8727_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8728_agree_conditional
    (child0 : tree8726 = literal8726)
    (child1 : tree8727 = literal8727) : tree8728 = literal8728 := by
  rw [tree8728_def, child0, child1]
  rfl
theorem node8728_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8726 live8726 coloured8726 = result8726)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8727 live8727 coloured8727 = result8727) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8728 live8728 coloured8728 = result8728 := by
  rw [tree8728_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8726 coloured8726 at child
  try dsimp only [live8728, coloured8728]
  rw [child]
  dsimp only [result8726]
  have child := child1
  unfold live8727 coloured8727 at child
  try dsimp only [live8728, coloured8728]
  rw [child]
  dsimp only [result8727]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8729_agree_conditional : tree8729 = literal8729 := by
  rw [tree8729_def]
  rfl
theorem node8729_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8729 live8729 coloured8729 = result8729 := by
  rw [tree8729_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8730_agree_conditional
    (child0 : tree8728 = literal8728)
    (child1 : tree8729 = literal8729) : tree8730 = literal8730 := by
  rw [tree8730_def, child0, child1]
  rfl
theorem node8730_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8728 live8728 coloured8728 = result8728)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8729 live8729 coloured8729 = result8729) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8730 live8730 coloured8730 = result8730 := by
  rw [tree8730_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8728 coloured8728 at child
  try dsimp only [live8730, coloured8730]
  rw [child]
  dsimp only [result8728]
  have child := child1
  unfold live8729 coloured8729 at child
  try dsimp only [live8730, coloured8730]
  rw [child]
  dsimp only [result8729]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8731_agree_conditional : tree8731 = literal8731 := by
  rw [tree8731_def]
  rfl
theorem node8731_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8731 live8731 coloured8731 = result8731 := by
  rw [tree8731_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8732_agree_conditional
    (child0 : tree8730 = literal8730)
    (child1 : tree8731 = literal8731) : tree8732 = literal8732 := by
  rw [tree8732_def, child0, child1]
  rfl
theorem node8732_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8730 live8730 coloured8730 = result8730)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8731 live8731 coloured8731 = result8731) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8732 live8732 coloured8732 = result8732 := by
  rw [tree8732_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8730 coloured8730 at child
  try dsimp only [live8732, coloured8732]
  rw [child]
  dsimp only [result8730]
  have child := child1
  unfold live8731 coloured8731 at child
  try dsimp only [live8732, coloured8732]
  rw [child]
  dsimp only [result8731]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8733_agree_conditional : tree8733 = literal8733 := by
  rw [tree8733_def]
  rfl
theorem node8733_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8733 live8733 coloured8733 = result8733 := by
  rw [tree8733_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8734_agree_conditional
    (child0 : tree8732 = literal8732)
    (child1 : tree8733 = literal8733) : tree8734 = literal8734 := by
  rw [tree8734_def, child0, child1]
  rfl
theorem node8734_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8732 live8732 coloured8732 = result8732)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8733 live8733 coloured8733 = result8733) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8734 live8734 coloured8734 = result8734 := by
  rw [tree8734_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8732 coloured8732 at child
  try dsimp only [live8734, coloured8734]
  rw [child]
  dsimp only [result8732]
  have child := child1
  unfold live8733 coloured8733 at child
  try dsimp only [live8734, coloured8734]
  rw [child]
  dsimp only [result8733]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8735_agree_conditional : tree8735 = literal8735 := by
  rw [tree8735_def]
  rfl
theorem node8735_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8735 live8735 coloured8735 = result8735 := by
  rw [tree8735_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
