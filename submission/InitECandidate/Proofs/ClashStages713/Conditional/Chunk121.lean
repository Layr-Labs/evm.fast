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
theorem tree11616_agree_conditional
    (child0 : tree11614 = literal11614)
    (child1 : tree11615 = literal11615) : tree11616 = literal11616 := by
  rw [tree11616_def, child0, child1]
  rfl
theorem node11616_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11614 live11614 coloured11614 = result11614)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11615 live11615 coloured11615 = result11615) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11616 live11616 coloured11616 = result11616 := by
  rw [tree11616_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11614 coloured11614 at child
  try dsimp only [live11616, coloured11616]
  rw [child]
  dsimp only [result11614]
  have child := child1
  unfold live11615 coloured11615 at child
  try dsimp only [live11616, coloured11616]
  rw [child]
  dsimp only [result11615]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11617_agree_conditional : tree11617 = literal11617 := by
  rw [tree11617_def]
  rfl
theorem node11617_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11617 live11617 coloured11617 = result11617 := by
  rw [tree11617_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11618_agree_conditional
    (child0 : tree11616 = literal11616)
    (child1 : tree11617 = literal11617) : tree11618 = literal11618 := by
  rw [tree11618_def, child0, child1]
  rfl
theorem node11618_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11616 live11616 coloured11616 = result11616)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11617 live11617 coloured11617 = result11617) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11618 live11618 coloured11618 = result11618 := by
  rw [tree11618_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11616 coloured11616 at child
  try dsimp only [live11618, coloured11618]
  rw [child]
  dsimp only [result11616]
  have child := child1
  unfold live11617 coloured11617 at child
  try dsimp only [live11618, coloured11618]
  rw [child]
  dsimp only [result11617]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11619_agree_conditional : tree11619 = literal11619 := by
  rw [tree11619_def]
  rfl
theorem node11619_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11619 live11619 coloured11619 = result11619 := by
  rw [tree11619_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11620_agree_conditional
    (child0 : tree11618 = literal11618)
    (child1 : tree11619 = literal11619) : tree11620 = literal11620 := by
  rw [tree11620_def, child0, child1]
  rfl
theorem node11620_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11618 live11618 coloured11618 = result11618)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11619 live11619 coloured11619 = result11619) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11620 live11620 coloured11620 = result11620 := by
  rw [tree11620_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11618 coloured11618 at child
  try dsimp only [live11620, coloured11620]
  rw [child]
  dsimp only [result11618]
  have child := child1
  unfold live11619 coloured11619 at child
  try dsimp only [live11620, coloured11620]
  rw [child]
  dsimp only [result11619]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11621_agree_conditional : tree11621 = literal11621 := by
  rw [tree11621_def]
  rfl
theorem node11621_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11621 live11621 coloured11621 = result11621 := by
  rw [tree11621_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11622_agree_conditional
    (child0 : tree11620 = literal11620)
    (child1 : tree11621 = literal11621) : tree11622 = literal11622 := by
  rw [tree11622_def, child0, child1]
  rfl
theorem node11622_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11620 live11620 coloured11620 = result11620)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11621 live11621 coloured11621 = result11621) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11622 live11622 coloured11622 = result11622 := by
  rw [tree11622_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11620 coloured11620 at child
  try dsimp only [live11622, coloured11622]
  rw [child]
  dsimp only [result11620]
  have child := child1
  unfold live11621 coloured11621 at child
  try dsimp only [live11622, coloured11622]
  rw [child]
  dsimp only [result11621]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11623_agree_conditional : tree11623 = literal11623 := by
  rw [tree11623_def]
  rfl
theorem node11623_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11623 live11623 coloured11623 = result11623 := by
  rw [tree11623_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11624_agree_conditional
    (child0 : tree11622 = literal11622)
    (child1 : tree11623 = literal11623) : tree11624 = literal11624 := by
  rw [tree11624_def, child0, child1]
  rfl
theorem node11624_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11622 live11622 coloured11622 = result11622)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11623 live11623 coloured11623 = result11623) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11624 live11624 coloured11624 = result11624 := by
  rw [tree11624_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11622 coloured11622 at child
  try dsimp only [live11624, coloured11624]
  rw [child]
  dsimp only [result11622]
  have child := child1
  unfold live11623 coloured11623 at child
  try dsimp only [live11624, coloured11624]
  rw [child]
  dsimp only [result11623]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11625_agree_conditional : tree11625 = literal11625 := by
  rw [tree11625_def]
  rfl
theorem node11625_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11625 live11625 coloured11625 = result11625 := by
  rw [tree11625_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11626_agree_conditional
    (child0 : tree11624 = literal11624)
    (child1 : tree11625 = literal11625) : tree11626 = literal11626 := by
  rw [tree11626_def, child0, child1]
  rfl
theorem node11626_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11624 live11624 coloured11624 = result11624)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11625 live11625 coloured11625 = result11625) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11626 live11626 coloured11626 = result11626 := by
  rw [tree11626_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11624 coloured11624 at child
  try dsimp only [live11626, coloured11626]
  rw [child]
  dsimp only [result11624]
  have child := child1
  unfold live11625 coloured11625 at child
  try dsimp only [live11626, coloured11626]
  rw [child]
  dsimp only [result11625]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11627_agree_conditional : tree11627 = literal11627 := by
  rw [tree11627_def]
  rfl
theorem node11627_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11627 live11627 coloured11627 = result11627 := by
  rw [tree11627_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11628_agree_conditional
    (child0 : tree11626 = literal11626)
    (child1 : tree11627 = literal11627) : tree11628 = literal11628 := by
  rw [tree11628_def, child0, child1]
  rfl
theorem node11628_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11626 live11626 coloured11626 = result11626)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11627 live11627 coloured11627 = result11627) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11628 live11628 coloured11628 = result11628 := by
  rw [tree11628_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11626 coloured11626 at child
  try dsimp only [live11628, coloured11628]
  rw [child]
  dsimp only [result11626]
  have child := child1
  unfold live11627 coloured11627 at child
  try dsimp only [live11628, coloured11628]
  rw [child]
  dsimp only [result11627]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11629_agree_conditional : tree11629 = literal11629 := by
  rw [tree11629_def]
  rfl
theorem node11629_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11629 live11629 coloured11629 = result11629 := by
  rw [tree11629_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11630_agree_conditional
    (child0 : tree11628 = literal11628)
    (child1 : tree11629 = literal11629) : tree11630 = literal11630 := by
  rw [tree11630_def, child0, child1]
  rfl
theorem node11630_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11628 live11628 coloured11628 = result11628)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11629 live11629 coloured11629 = result11629) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11630 live11630 coloured11630 = result11630 := by
  rw [tree11630_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11628 coloured11628 at child
  try dsimp only [live11630, coloured11630]
  rw [child]
  dsimp only [result11628]
  have child := child1
  unfold live11629 coloured11629 at child
  try dsimp only [live11630, coloured11630]
  rw [child]
  dsimp only [result11629]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11631_agree_conditional : tree11631 = literal11631 := by
  rw [tree11631_def]
  rfl
theorem node11631_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11631 live11631 coloured11631 = result11631 := by
  rw [tree11631_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11632_agree_conditional
    (child0 : tree11630 = literal11630)
    (child1 : tree11631 = literal11631) : tree11632 = literal11632 := by
  rw [tree11632_def, child0, child1]
  rfl
theorem node11632_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11630 live11630 coloured11630 = result11630)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11631 live11631 coloured11631 = result11631) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11632 live11632 coloured11632 = result11632 := by
  rw [tree11632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11630 coloured11630 at child
  try dsimp only [live11632, coloured11632]
  rw [child]
  dsimp only [result11630]
  have child := child1
  unfold live11631 coloured11631 at child
  try dsimp only [live11632, coloured11632]
  rw [child]
  dsimp only [result11631]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11633_agree_conditional : tree11633 = literal11633 := by
  rw [tree11633_def]
  rfl
theorem node11633_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11633 live11633 coloured11633 = result11633 := by
  rw [tree11633_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11634_agree_conditional
    (child0 : tree11632 = literal11632)
    (child1 : tree11633 = literal11633) : tree11634 = literal11634 := by
  rw [tree11634_def, child0, child1]
  rfl
theorem node11634_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11632 live11632 coloured11632 = result11632)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11633 live11633 coloured11633 = result11633) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11634 live11634 coloured11634 = result11634 := by
  rw [tree11634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11632 coloured11632 at child
  try dsimp only [live11634, coloured11634]
  rw [child]
  dsimp only [result11632]
  have child := child1
  unfold live11633 coloured11633 at child
  try dsimp only [live11634, coloured11634]
  rw [child]
  dsimp only [result11633]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11635_agree_conditional : tree11635 = literal11635 := by
  rw [tree11635_def]
  rfl
theorem node11635_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11635 live11635 coloured11635 = result11635 := by
  rw [tree11635_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11636_agree_conditional
    (child0 : tree11634 = literal11634)
    (child1 : tree11635 = literal11635) : tree11636 = literal11636 := by
  rw [tree11636_def, child0, child1]
  rfl
theorem node11636_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11634 live11634 coloured11634 = result11634)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11635 live11635 coloured11635 = result11635) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11636 live11636 coloured11636 = result11636 := by
  rw [tree11636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11634 coloured11634 at child
  try dsimp only [live11636, coloured11636]
  rw [child]
  dsimp only [result11634]
  have child := child1
  unfold live11635 coloured11635 at child
  try dsimp only [live11636, coloured11636]
  rw [child]
  dsimp only [result11635]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11637_agree_conditional : tree11637 = literal11637 := by
  rw [tree11637_def]
  rfl
theorem node11637_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11637 live11637 coloured11637 = result11637 := by
  rw [tree11637_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11638_agree_conditional
    (child0 : tree11636 = literal11636)
    (child1 : tree11637 = literal11637) : tree11638 = literal11638 := by
  rw [tree11638_def, child0, child1]
  rfl
theorem node11638_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11636 live11636 coloured11636 = result11636)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11637 live11637 coloured11637 = result11637) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11638 live11638 coloured11638 = result11638 := by
  rw [tree11638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11636 coloured11636 at child
  try dsimp only [live11638, coloured11638]
  rw [child]
  dsimp only [result11636]
  have child := child1
  unfold live11637 coloured11637 at child
  try dsimp only [live11638, coloured11638]
  rw [child]
  dsimp only [result11637]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11639_agree_conditional : tree11639 = literal11639 := by
  rw [tree11639_def]
  rfl
theorem node11639_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11639 live11639 coloured11639 = result11639 := by
  rw [tree11639_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11640_agree_conditional
    (child0 : tree11638 = literal11638)
    (child1 : tree11639 = literal11639) : tree11640 = literal11640 := by
  rw [tree11640_def, child0, child1]
  rfl
theorem node11640_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11638 live11638 coloured11638 = result11638)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11639 live11639 coloured11639 = result11639) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11640 live11640 coloured11640 = result11640 := by
  rw [tree11640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11638 coloured11638 at child
  try dsimp only [live11640, coloured11640]
  rw [child]
  dsimp only [result11638]
  have child := child1
  unfold live11639 coloured11639 at child
  try dsimp only [live11640, coloured11640]
  rw [child]
  dsimp only [result11639]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11641_agree_conditional : tree11641 = literal11641 := by
  rw [tree11641_def]
  rfl
theorem node11641_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11641 live11641 coloured11641 = result11641 := by
  rw [tree11641_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11642_agree_conditional
    (child0 : tree11640 = literal11640)
    (child1 : tree11641 = literal11641) : tree11642 = literal11642 := by
  rw [tree11642_def, child0, child1]
  rfl
theorem node11642_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11640 live11640 coloured11640 = result11640)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11641 live11641 coloured11641 = result11641) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11642 live11642 coloured11642 = result11642 := by
  rw [tree11642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11640 coloured11640 at child
  try dsimp only [live11642, coloured11642]
  rw [child]
  dsimp only [result11640]
  have child := child1
  unfold live11641 coloured11641 at child
  try dsimp only [live11642, coloured11642]
  rw [child]
  dsimp only [result11641]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11643_agree_conditional : tree11643 = literal11643 := by
  rw [tree11643_def]
  rfl
theorem node11643_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11643 live11643 coloured11643 = result11643 := by
  rw [tree11643_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11644_agree_conditional
    (child0 : tree11642 = literal11642)
    (child1 : tree11643 = literal11643) : tree11644 = literal11644 := by
  rw [tree11644_def, child0, child1]
  rfl
theorem node11644_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11642 live11642 coloured11642 = result11642)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11643 live11643 coloured11643 = result11643) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11644 live11644 coloured11644 = result11644 := by
  rw [tree11644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11642 coloured11642 at child
  try dsimp only [live11644, coloured11644]
  rw [child]
  dsimp only [result11642]
  have child := child1
  unfold live11643 coloured11643 at child
  try dsimp only [live11644, coloured11644]
  rw [child]
  dsimp only [result11643]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11645_agree_conditional : tree11645 = literal11645 := by
  rw [tree11645_def]
  rfl
theorem node11645_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11645 live11645 coloured11645 = result11645 := by
  rw [tree11645_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11646_agree_conditional
    (child0 : tree11644 = literal11644)
    (child1 : tree11645 = literal11645) : tree11646 = literal11646 := by
  rw [tree11646_def, child0, child1]
  rfl
theorem node11646_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11644 live11644 coloured11644 = result11644)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11645 live11645 coloured11645 = result11645) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11646 live11646 coloured11646 = result11646 := by
  rw [tree11646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11644 coloured11644 at child
  try dsimp only [live11646, coloured11646]
  rw [child]
  dsimp only [result11644]
  have child := child1
  unfold live11645 coloured11645 at child
  try dsimp only [live11646, coloured11646]
  rw [child]
  dsimp only [result11645]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11647_agree_conditional : tree11647 = literal11647 := by
  rw [tree11647_def]
  rfl
theorem node11647_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11647 live11647 coloured11647 = result11647 := by
  rw [tree11647_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11648_agree_conditional
    (child0 : tree11646 = literal11646)
    (child1 : tree11647 = literal11647) : tree11648 = literal11648 := by
  rw [tree11648_def, child0, child1]
  rfl
theorem node11648_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11646 live11646 coloured11646 = result11646)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11647 live11647 coloured11647 = result11647) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11648 live11648 coloured11648 = result11648 := by
  rw [tree11648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11646 coloured11646 at child
  try dsimp only [live11648, coloured11648]
  rw [child]
  dsimp only [result11646]
  have child := child1
  unfold live11647 coloured11647 at child
  try dsimp only [live11648, coloured11648]
  rw [child]
  dsimp only [result11647]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11649_agree_conditional : tree11649 = literal11649 := by
  rw [tree11649_def]
  rfl
theorem node11649_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11649 live11649 coloured11649 = result11649 := by
  rw [tree11649_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11650_agree_conditional
    (child0 : tree11648 = literal11648)
    (child1 : tree11649 = literal11649) : tree11650 = literal11650 := by
  rw [tree11650_def, child0, child1]
  rfl
theorem node11650_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11648 live11648 coloured11648 = result11648)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11649 live11649 coloured11649 = result11649) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11650 live11650 coloured11650 = result11650 := by
  rw [tree11650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11648 coloured11648 at child
  try dsimp only [live11650, coloured11650]
  rw [child]
  dsimp only [result11648]
  have child := child1
  unfold live11649 coloured11649 at child
  try dsimp only [live11650, coloured11650]
  rw [child]
  dsimp only [result11649]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11651_agree_conditional : tree11651 = literal11651 := by
  rw [tree11651_def]
  rfl
theorem node11651_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11651 live11651 coloured11651 = result11651 := by
  rw [tree11651_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11652_agree_conditional
    (child0 : tree11650 = literal11650)
    (child1 : tree11651 = literal11651) : tree11652 = literal11652 := by
  rw [tree11652_def, child0, child1]
  rfl
theorem node11652_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11650 live11650 coloured11650 = result11650)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11651 live11651 coloured11651 = result11651) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11652 live11652 coloured11652 = result11652 := by
  rw [tree11652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11650 coloured11650 at child
  try dsimp only [live11652, coloured11652]
  rw [child]
  dsimp only [result11650]
  have child := child1
  unfold live11651 coloured11651 at child
  try dsimp only [live11652, coloured11652]
  rw [child]
  dsimp only [result11651]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11653_agree_conditional : tree11653 = literal11653 := by
  rw [tree11653_def]
  rfl
theorem node11653_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11653 live11653 coloured11653 = result11653 := by
  rw [tree11653_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11654_agree_conditional
    (child0 : tree11652 = literal11652)
    (child1 : tree11653 = literal11653) : tree11654 = literal11654 := by
  rw [tree11654_def, child0, child1]
  rfl
theorem node11654_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11652 live11652 coloured11652 = result11652)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11653 live11653 coloured11653 = result11653) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11654 live11654 coloured11654 = result11654 := by
  rw [tree11654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11652 coloured11652 at child
  try dsimp only [live11654, coloured11654]
  rw [child]
  dsimp only [result11652]
  have child := child1
  unfold live11653 coloured11653 at child
  try dsimp only [live11654, coloured11654]
  rw [child]
  dsimp only [result11653]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11655_agree_conditional : tree11655 = literal11655 := by
  rw [tree11655_def]
  rfl
theorem node11655_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11655 live11655 coloured11655 = result11655 := by
  rw [tree11655_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11656_agree_conditional
    (child0 : tree11654 = literal11654)
    (child1 : tree11655 = literal11655) : tree11656 = literal11656 := by
  rw [tree11656_def, child0, child1]
  rfl
theorem node11656_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11654 live11654 coloured11654 = result11654)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11655 live11655 coloured11655 = result11655) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11656 live11656 coloured11656 = result11656 := by
  rw [tree11656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11654 coloured11654 at child
  try dsimp only [live11656, coloured11656]
  rw [child]
  dsimp only [result11654]
  have child := child1
  unfold live11655 coloured11655 at child
  try dsimp only [live11656, coloured11656]
  rw [child]
  dsimp only [result11655]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11657_agree_conditional : tree11657 = literal11657 := by
  rw [tree11657_def]
  rfl
theorem node11657_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11657 live11657 coloured11657 = result11657 := by
  rw [tree11657_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11658_agree_conditional
    (child0 : tree11656 = literal11656)
    (child1 : tree11657 = literal11657) : tree11658 = literal11658 := by
  rw [tree11658_def, child0, child1]
  rfl
theorem node11658_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11656 live11656 coloured11656 = result11656)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11657 live11657 coloured11657 = result11657) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11658 live11658 coloured11658 = result11658 := by
  rw [tree11658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11656 coloured11656 at child
  try dsimp only [live11658, coloured11658]
  rw [child]
  dsimp only [result11656]
  have child := child1
  unfold live11657 coloured11657 at child
  try dsimp only [live11658, coloured11658]
  rw [child]
  dsimp only [result11657]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11659_agree_conditional : tree11659 = literal11659 := by
  rw [tree11659_def]
  rfl
theorem node11659_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11659 live11659 coloured11659 = result11659 := by
  rw [tree11659_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11660_agree_conditional
    (child0 : tree11658 = literal11658)
    (child1 : tree11659 = literal11659) : tree11660 = literal11660 := by
  rw [tree11660_def, child0, child1]
  rfl
theorem node11660_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11658 live11658 coloured11658 = result11658)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11659 live11659 coloured11659 = result11659) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11660 live11660 coloured11660 = result11660 := by
  rw [tree11660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11658 coloured11658 at child
  try dsimp only [live11660, coloured11660]
  rw [child]
  dsimp only [result11658]
  have child := child1
  unfold live11659 coloured11659 at child
  try dsimp only [live11660, coloured11660]
  rw [child]
  dsimp only [result11659]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11661_agree_conditional : tree11661 = literal11661 := by
  rw [tree11661_def]
  rfl
theorem node11661_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11661 live11661 coloured11661 = result11661 := by
  rw [tree11661_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11662_agree_conditional
    (child0 : tree11660 = literal11660)
    (child1 : tree11661 = literal11661) : tree11662 = literal11662 := by
  rw [tree11662_def, child0, child1]
  rfl
theorem node11662_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11660 live11660 coloured11660 = result11660)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11661 live11661 coloured11661 = result11661) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11662 live11662 coloured11662 = result11662 := by
  rw [tree11662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11660 coloured11660 at child
  try dsimp only [live11662, coloured11662]
  rw [child]
  dsimp only [result11660]
  have child := child1
  unfold live11661 coloured11661 at child
  try dsimp only [live11662, coloured11662]
  rw [child]
  dsimp only [result11661]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11663_agree_conditional : tree11663 = literal11663 := by
  rw [tree11663_def]
  rfl
theorem node11663_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11663 live11663 coloured11663 = result11663 := by
  rw [tree11663_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11664_agree_conditional
    (child0 : tree11662 = literal11662)
    (child1 : tree11663 = literal11663) : tree11664 = literal11664 := by
  rw [tree11664_def, child0, child1]
  rfl
theorem node11664_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11662 live11662 coloured11662 = result11662)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11663 live11663 coloured11663 = result11663) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11664 live11664 coloured11664 = result11664 := by
  rw [tree11664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11662 coloured11662 at child
  try dsimp only [live11664, coloured11664]
  rw [child]
  dsimp only [result11662]
  have child := child1
  unfold live11663 coloured11663 at child
  try dsimp only [live11664, coloured11664]
  rw [child]
  dsimp only [result11663]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11665_agree_conditional : tree11665 = literal11665 := by
  rw [tree11665_def]
  rfl
theorem node11665_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11665 live11665 coloured11665 = result11665 := by
  rw [tree11665_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11666_agree_conditional
    (child0 : tree11664 = literal11664)
    (child1 : tree11665 = literal11665) : tree11666 = literal11666 := by
  rw [tree11666_def, child0, child1]
  rfl
theorem node11666_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11664 live11664 coloured11664 = result11664)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11665 live11665 coloured11665 = result11665) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11666 live11666 coloured11666 = result11666 := by
  rw [tree11666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11664 coloured11664 at child
  try dsimp only [live11666, coloured11666]
  rw [child]
  dsimp only [result11664]
  have child := child1
  unfold live11665 coloured11665 at child
  try dsimp only [live11666, coloured11666]
  rw [child]
  dsimp only [result11665]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11667_agree_conditional : tree11667 = literal11667 := by
  rw [tree11667_def]
  rfl
theorem node11667_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11667 live11667 coloured11667 = result11667 := by
  rw [tree11667_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11668_agree_conditional
    (child0 : tree11666 = literal11666)
    (child1 : tree11667 = literal11667) : tree11668 = literal11668 := by
  rw [tree11668_def, child0, child1]
  rfl
theorem node11668_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11666 live11666 coloured11666 = result11666)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11667 live11667 coloured11667 = result11667) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11668 live11668 coloured11668 = result11668 := by
  rw [tree11668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11666 coloured11666 at child
  try dsimp only [live11668, coloured11668]
  rw [child]
  dsimp only [result11666]
  have child := child1
  unfold live11667 coloured11667 at child
  try dsimp only [live11668, coloured11668]
  rw [child]
  dsimp only [result11667]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11669_agree_conditional : tree11669 = literal11669 := by
  rw [tree11669_def]
  rfl
theorem node11669_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11669 live11669 coloured11669 = result11669 := by
  rw [tree11669_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11670_agree_conditional
    (child0 : tree11668 = literal11668)
    (child1 : tree11669 = literal11669) : tree11670 = literal11670 := by
  rw [tree11670_def, child0, child1]
  rfl
theorem node11670_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11668 live11668 coloured11668 = result11668)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11669 live11669 coloured11669 = result11669) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11670 live11670 coloured11670 = result11670 := by
  rw [tree11670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11668 coloured11668 at child
  try dsimp only [live11670, coloured11670]
  rw [child]
  dsimp only [result11668]
  have child := child1
  unfold live11669 coloured11669 at child
  try dsimp only [live11670, coloured11670]
  rw [child]
  dsimp only [result11669]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11671_agree_conditional : tree11671 = literal11671 := by
  rw [tree11671_def]
  rfl
theorem node11671_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11671 live11671 coloured11671 = result11671 := by
  rw [tree11671_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11672_agree_conditional
    (child0 : tree11670 = literal11670)
    (child1 : tree11671 = literal11671) : tree11672 = literal11672 := by
  rw [tree11672_def, child0, child1]
  rfl
theorem node11672_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11670 live11670 coloured11670 = result11670)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11671 live11671 coloured11671 = result11671) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11672 live11672 coloured11672 = result11672 := by
  rw [tree11672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11670 coloured11670 at child
  try dsimp only [live11672, coloured11672]
  rw [child]
  dsimp only [result11670]
  have child := child1
  unfold live11671 coloured11671 at child
  try dsimp only [live11672, coloured11672]
  rw [child]
  dsimp only [result11671]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11673_agree_conditional : tree11673 = literal11673 := by
  rw [tree11673_def]
  rfl
theorem node11673_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11673 live11673 coloured11673 = result11673 := by
  rw [tree11673_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11674_agree_conditional
    (child0 : tree11672 = literal11672)
    (child1 : tree11673 = literal11673) : tree11674 = literal11674 := by
  rw [tree11674_def, child0, child1]
  rfl
theorem node11674_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11672 live11672 coloured11672 = result11672)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11673 live11673 coloured11673 = result11673) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11674 live11674 coloured11674 = result11674 := by
  rw [tree11674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11672 coloured11672 at child
  try dsimp only [live11674, coloured11674]
  rw [child]
  dsimp only [result11672]
  have child := child1
  unfold live11673 coloured11673 at child
  try dsimp only [live11674, coloured11674]
  rw [child]
  dsimp only [result11673]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11675_agree_conditional : tree11675 = literal11675 := by
  rw [tree11675_def]
  rfl
theorem node11675_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11675 live11675 coloured11675 = result11675 := by
  rw [tree11675_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11676_agree_conditional
    (child0 : tree11674 = literal11674)
    (child1 : tree11675 = literal11675) : tree11676 = literal11676 := by
  rw [tree11676_def, child0, child1]
  rfl
theorem node11676_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11674 live11674 coloured11674 = result11674)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11675 live11675 coloured11675 = result11675) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11676 live11676 coloured11676 = result11676 := by
  rw [tree11676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11674 coloured11674 at child
  try dsimp only [live11676, coloured11676]
  rw [child]
  dsimp only [result11674]
  have child := child1
  unfold live11675 coloured11675 at child
  try dsimp only [live11676, coloured11676]
  rw [child]
  dsimp only [result11675]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11677_agree_conditional : tree11677 = literal11677 := by
  rw [tree11677_def]
  rfl
theorem node11677_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11677 live11677 coloured11677 = result11677 := by
  rw [tree11677_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11678_agree_conditional
    (child0 : tree11676 = literal11676)
    (child1 : tree11677 = literal11677) : tree11678 = literal11678 := by
  rw [tree11678_def, child0, child1]
  rfl
theorem node11678_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11676 live11676 coloured11676 = result11676)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11677 live11677 coloured11677 = result11677) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11678 live11678 coloured11678 = result11678 := by
  rw [tree11678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11676 coloured11676 at child
  try dsimp only [live11678, coloured11678]
  rw [child]
  dsimp only [result11676]
  have child := child1
  unfold live11677 coloured11677 at child
  try dsimp only [live11678, coloured11678]
  rw [child]
  dsimp only [result11677]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11679_agree_conditional : tree11679 = literal11679 := by
  rw [tree11679_def]
  rfl
theorem node11679_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11679 live11679 coloured11679 = result11679 := by
  rw [tree11679_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11680_agree_conditional
    (child0 : tree11678 = literal11678)
    (child1 : tree11679 = literal11679) : tree11680 = literal11680 := by
  rw [tree11680_def, child0, child1]
  rfl
theorem node11680_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11678 live11678 coloured11678 = result11678)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11679 live11679 coloured11679 = result11679) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11680 live11680 coloured11680 = result11680 := by
  rw [tree11680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11678 coloured11678 at child
  try dsimp only [live11680, coloured11680]
  rw [child]
  dsimp only [result11678]
  have child := child1
  unfold live11679 coloured11679 at child
  try dsimp only [live11680, coloured11680]
  rw [child]
  dsimp only [result11679]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11681_agree_conditional : tree11681 = literal11681 := by
  rw [tree11681_def]
  rfl
theorem node11681_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11681 live11681 coloured11681 = result11681 := by
  rw [tree11681_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11682_agree_conditional
    (child0 : tree11680 = literal11680)
    (child1 : tree11681 = literal11681) : tree11682 = literal11682 := by
  rw [tree11682_def, child0, child1]
  rfl
theorem node11682_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11680 live11680 coloured11680 = result11680)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11681 live11681 coloured11681 = result11681) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11682 live11682 coloured11682 = result11682 := by
  rw [tree11682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11680 coloured11680 at child
  try dsimp only [live11682, coloured11682]
  rw [child]
  dsimp only [result11680]
  have child := child1
  unfold live11681 coloured11681 at child
  try dsimp only [live11682, coloured11682]
  rw [child]
  dsimp only [result11681]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11683_agree_conditional : tree11683 = literal11683 := by
  rw [tree11683_def]
  rfl
theorem node11683_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11683 live11683 coloured11683 = result11683 := by
  rw [tree11683_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11684_agree_conditional
    (child0 : tree11682 = literal11682)
    (child1 : tree11683 = literal11683) : tree11684 = literal11684 := by
  rw [tree11684_def, child0, child1]
  rfl
theorem node11684_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11682 live11682 coloured11682 = result11682)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11683 live11683 coloured11683 = result11683) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11684 live11684 coloured11684 = result11684 := by
  rw [tree11684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11682 coloured11682 at child
  try dsimp only [live11684, coloured11684]
  rw [child]
  dsimp only [result11682]
  have child := child1
  unfold live11683 coloured11683 at child
  try dsimp only [live11684, coloured11684]
  rw [child]
  dsimp only [result11683]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11685_agree_conditional : tree11685 = literal11685 := by
  rw [tree11685_def]
  rfl
theorem node11685_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11685 live11685 coloured11685 = result11685 := by
  rw [tree11685_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11686_agree_conditional
    (child0 : tree11684 = literal11684)
    (child1 : tree11685 = literal11685) : tree11686 = literal11686 := by
  rw [tree11686_def, child0, child1]
  rfl
theorem node11686_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11684 live11684 coloured11684 = result11684)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11685 live11685 coloured11685 = result11685) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11686 live11686 coloured11686 = result11686 := by
  rw [tree11686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11684 coloured11684 at child
  try dsimp only [live11686, coloured11686]
  rw [child]
  dsimp only [result11684]
  have child := child1
  unfold live11685 coloured11685 at child
  try dsimp only [live11686, coloured11686]
  rw [child]
  dsimp only [result11685]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11687_agree_conditional : tree11687 = literal11687 := by
  rw [tree11687_def]
  rfl
theorem node11687_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11687 live11687 coloured11687 = result11687 := by
  rw [tree11687_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11688_agree_conditional
    (child0 : tree11686 = literal11686)
    (child1 : tree11687 = literal11687) : tree11688 = literal11688 := by
  rw [tree11688_def, child0, child1]
  rfl
theorem node11688_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11686 live11686 coloured11686 = result11686)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11687 live11687 coloured11687 = result11687) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11688 live11688 coloured11688 = result11688 := by
  rw [tree11688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11686 coloured11686 at child
  try dsimp only [live11688, coloured11688]
  rw [child]
  dsimp only [result11686]
  have child := child1
  unfold live11687 coloured11687 at child
  try dsimp only [live11688, coloured11688]
  rw [child]
  dsimp only [result11687]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11689_agree_conditional : tree11689 = literal11689 := by
  rw [tree11689_def]
  rfl
theorem node11689_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11689 live11689 coloured11689 = result11689 := by
  rw [tree11689_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11690_agree_conditional
    (child0 : tree11688 = literal11688)
    (child1 : tree11689 = literal11689) : tree11690 = literal11690 := by
  rw [tree11690_def, child0, child1]
  rfl
theorem node11690_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11688 live11688 coloured11688 = result11688)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11689 live11689 coloured11689 = result11689) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11690 live11690 coloured11690 = result11690 := by
  rw [tree11690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11688 coloured11688 at child
  try dsimp only [live11690, coloured11690]
  rw [child]
  dsimp only [result11688]
  have child := child1
  unfold live11689 coloured11689 at child
  try dsimp only [live11690, coloured11690]
  rw [child]
  dsimp only [result11689]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11691_agree_conditional : tree11691 = literal11691 := by
  rw [tree11691_def]
  rfl
theorem node11691_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11691 live11691 coloured11691 = result11691 := by
  rw [tree11691_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11692_agree_conditional
    (child0 : tree11690 = literal11690)
    (child1 : tree11691 = literal11691) : tree11692 = literal11692 := by
  rw [tree11692_def, child0, child1]
  rfl
theorem node11692_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11690 live11690 coloured11690 = result11690)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11691 live11691 coloured11691 = result11691) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11692 live11692 coloured11692 = result11692 := by
  rw [tree11692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11690 coloured11690 at child
  try dsimp only [live11692, coloured11692]
  rw [child]
  dsimp only [result11690]
  have child := child1
  unfold live11691 coloured11691 at child
  try dsimp only [live11692, coloured11692]
  rw [child]
  dsimp only [result11691]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11693_agree_conditional : tree11693 = literal11693 := by
  rw [tree11693_def]
  rfl
theorem node11693_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11693 live11693 coloured11693 = result11693 := by
  rw [tree11693_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11694_agree_conditional
    (child0 : tree11692 = literal11692)
    (child1 : tree11693 = literal11693) : tree11694 = literal11694 := by
  rw [tree11694_def, child0, child1]
  rfl
theorem node11694_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11692 live11692 coloured11692 = result11692)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11693 live11693 coloured11693 = result11693) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11694 live11694 coloured11694 = result11694 := by
  rw [tree11694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11692 coloured11692 at child
  try dsimp only [live11694, coloured11694]
  rw [child]
  dsimp only [result11692]
  have child := child1
  unfold live11693 coloured11693 at child
  try dsimp only [live11694, coloured11694]
  rw [child]
  dsimp only [result11693]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11695_agree_conditional : tree11695 = literal11695 := by
  rw [tree11695_def]
  rfl
theorem node11695_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11695 live11695 coloured11695 = result11695 := by
  rw [tree11695_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11696_agree_conditional
    (child0 : tree11694 = literal11694)
    (child1 : tree11695 = literal11695) : tree11696 = literal11696 := by
  rw [tree11696_def, child0, child1]
  rfl
theorem node11696_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11694 live11694 coloured11694 = result11694)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11695 live11695 coloured11695 = result11695) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11696 live11696 coloured11696 = result11696 := by
  rw [tree11696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11694 coloured11694 at child
  try dsimp only [live11696, coloured11696]
  rw [child]
  dsimp only [result11694]
  have child := child1
  unfold live11695 coloured11695 at child
  try dsimp only [live11696, coloured11696]
  rw [child]
  dsimp only [result11695]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11697_agree_conditional : tree11697 = literal11697 := by
  rw [tree11697_def]
  rfl
theorem node11697_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11697 live11697 coloured11697 = result11697 := by
  rw [tree11697_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11698_agree_conditional
    (child0 : tree11696 = literal11696)
    (child1 : tree11697 = literal11697) : tree11698 = literal11698 := by
  rw [tree11698_def, child0, child1]
  rfl
theorem node11698_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11696 live11696 coloured11696 = result11696)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11697 live11697 coloured11697 = result11697) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11698 live11698 coloured11698 = result11698 := by
  rw [tree11698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11696 coloured11696 at child
  try dsimp only [live11698, coloured11698]
  rw [child]
  dsimp only [result11696]
  have child := child1
  unfold live11697 coloured11697 at child
  try dsimp only [live11698, coloured11698]
  rw [child]
  dsimp only [result11697]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11699_agree_conditional : tree11699 = literal11699 := by
  rw [tree11699_def]
  rfl
theorem node11699_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11699 live11699 coloured11699 = result11699 := by
  rw [tree11699_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11700_agree_conditional
    (child0 : tree11698 = literal11698)
    (child1 : tree11699 = literal11699) : tree11700 = literal11700 := by
  rw [tree11700_def, child0, child1]
  rfl
theorem node11700_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11698 live11698 coloured11698 = result11698)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11699 live11699 coloured11699 = result11699) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11700 live11700 coloured11700 = result11700 := by
  rw [tree11700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11698 coloured11698 at child
  try dsimp only [live11700, coloured11700]
  rw [child]
  dsimp only [result11698]
  have child := child1
  unfold live11699 coloured11699 at child
  try dsimp only [live11700, coloured11700]
  rw [child]
  dsimp only [result11699]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11701_agree_conditional : tree11701 = literal11701 := by
  rw [tree11701_def]
  rfl
theorem node11701_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11701 live11701 coloured11701 = result11701 := by
  rw [tree11701_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11702_agree_conditional
    (child0 : tree11700 = literal11700)
    (child1 : tree11701 = literal11701) : tree11702 = literal11702 := by
  rw [tree11702_def, child0, child1]
  rfl
theorem node11702_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11700 live11700 coloured11700 = result11700)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11701 live11701 coloured11701 = result11701) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11702 live11702 coloured11702 = result11702 := by
  rw [tree11702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11700 coloured11700 at child
  try dsimp only [live11702, coloured11702]
  rw [child]
  dsimp only [result11700]
  have child := child1
  unfold live11701 coloured11701 at child
  try dsimp only [live11702, coloured11702]
  rw [child]
  dsimp only [result11701]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11703_agree_conditional : tree11703 = literal11703 := by
  rw [tree11703_def]
  rfl
theorem node11703_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11703 live11703 coloured11703 = result11703 := by
  rw [tree11703_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11704_agree_conditional
    (child0 : tree11702 = literal11702)
    (child1 : tree11703 = literal11703) : tree11704 = literal11704 := by
  rw [tree11704_def, child0, child1]
  rfl
theorem node11704_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11702 live11702 coloured11702 = result11702)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11703 live11703 coloured11703 = result11703) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11704 live11704 coloured11704 = result11704 := by
  rw [tree11704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11702 coloured11702 at child
  try dsimp only [live11704, coloured11704]
  rw [child]
  dsimp only [result11702]
  have child := child1
  unfold live11703 coloured11703 at child
  try dsimp only [live11704, coloured11704]
  rw [child]
  dsimp only [result11703]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11705_agree_conditional : tree11705 = literal11705 := by
  rw [tree11705_def]
  rfl
theorem node11705_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11705 live11705 coloured11705 = result11705 := by
  rw [tree11705_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11706_agree_conditional
    (child0 : tree11704 = literal11704)
    (child1 : tree11705 = literal11705) : tree11706 = literal11706 := by
  rw [tree11706_def, child0, child1]
  rfl
theorem node11706_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11704 live11704 coloured11704 = result11704)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11705 live11705 coloured11705 = result11705) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11706 live11706 coloured11706 = result11706 := by
  rw [tree11706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11704 coloured11704 at child
  try dsimp only [live11706, coloured11706]
  rw [child]
  dsimp only [result11704]
  have child := child1
  unfold live11705 coloured11705 at child
  try dsimp only [live11706, coloured11706]
  rw [child]
  dsimp only [result11705]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11707_agree_conditional : tree11707 = literal11707 := by
  rw [tree11707_def]
  rfl
theorem node11707_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11707 live11707 coloured11707 = result11707 := by
  rw [tree11707_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11708_agree_conditional
    (child0 : tree11706 = literal11706)
    (child1 : tree11707 = literal11707) : tree11708 = literal11708 := by
  rw [tree11708_def, child0, child1]
  rfl
theorem node11708_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11706 live11706 coloured11706 = result11706)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11707 live11707 coloured11707 = result11707) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11708 live11708 coloured11708 = result11708 := by
  rw [tree11708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11706 coloured11706 at child
  try dsimp only [live11708, coloured11708]
  rw [child]
  dsimp only [result11706]
  have child := child1
  unfold live11707 coloured11707 at child
  try dsimp only [live11708, coloured11708]
  rw [child]
  dsimp only [result11707]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11709_agree_conditional : tree11709 = literal11709 := by
  rw [tree11709_def]
  rfl
theorem node11709_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11709 live11709 coloured11709 = result11709 := by
  rw [tree11709_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11710_agree_conditional
    (child0 : tree11708 = literal11708)
    (child1 : tree11709 = literal11709) : tree11710 = literal11710 := by
  rw [tree11710_def, child0, child1]
  rfl
theorem node11710_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11708 live11708 coloured11708 = result11708)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11709 live11709 coloured11709 = result11709) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11710 live11710 coloured11710 = result11710 := by
  rw [tree11710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11708 coloured11708 at child
  try dsimp only [live11710, coloured11710]
  rw [child]
  dsimp only [result11708]
  have child := child1
  unfold live11709 coloured11709 at child
  try dsimp only [live11710, coloured11710]
  rw [child]
  dsimp only [result11709]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11711_agree_conditional : tree11711 = literal11711 := by
  rw [tree11711_def]
  rfl
theorem node11711_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11711 live11711 coloured11711 = result11711 := by
  rw [tree11711_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
