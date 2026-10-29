import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages875.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages875
theorem tree1632_agree_conditional
    (child0 : tree1630 = literal1630)
    (child1 : tree1631 = literal1631) : tree1632 = literal1632 := by
  rw [tree1632_def, child0, child1]
  rfl
theorem node1632_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1630 live1630 coloured1630 = result1630)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1631 live1631 coloured1631 = result1631) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1632 live1632 coloured1632 = result1632 := by
  rw [tree1632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1630 coloured1630 at child
  try dsimp only [live1632, coloured1632]
  rw [child]
  dsimp only [result1630]
  have child := child1
  unfold live1631 coloured1631 at child
  try dsimp only [live1632, coloured1632]
  rw [child]
  dsimp only [result1631]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1633_agree_conditional : tree1633 = literal1633 := by
  rw [tree1633_def]
  rfl
theorem node1633_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1633 live1633 coloured1633 = result1633 := by
  rw [tree1633_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1634_agree_conditional
    (child0 : tree1632 = literal1632)
    (child1 : tree1633 = literal1633) : tree1634 = literal1634 := by
  rw [tree1634_def, child0, child1]
  rfl
theorem node1634_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1632 live1632 coloured1632 = result1632)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1633 live1633 coloured1633 = result1633) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1634 live1634 coloured1634 = result1634 := by
  rw [tree1634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1632 coloured1632 at child
  try dsimp only [live1634, coloured1634]
  rw [child]
  dsimp only [result1632]
  have child := child1
  unfold live1633 coloured1633 at child
  try dsimp only [live1634, coloured1634]
  rw [child]
  dsimp only [result1633]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1635_agree_conditional : tree1635 = literal1635 := by
  rw [tree1635_def]
  rfl
theorem node1635_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1635 live1635 coloured1635 = result1635 := by
  rw [tree1635_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1636_agree_conditional
    (child0 : tree1634 = literal1634)
    (child1 : tree1635 = literal1635) : tree1636 = literal1636 := by
  rw [tree1636_def, child0, child1]
  rfl
theorem node1636_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1634 live1634 coloured1634 = result1634)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1635 live1635 coloured1635 = result1635) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1636 live1636 coloured1636 = result1636 := by
  rw [tree1636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1634 coloured1634 at child
  try dsimp only [live1636, coloured1636]
  rw [child]
  dsimp only [result1634]
  have child := child1
  unfold live1635 coloured1635 at child
  try dsimp only [live1636, coloured1636]
  rw [child]
  dsimp only [result1635]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1637_agree_conditional : tree1637 = literal1637 := by
  rw [tree1637_def]
  rfl
theorem node1637_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1637 live1637 coloured1637 = result1637 := by
  rw [tree1637_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1638_agree_conditional
    (child0 : tree1636 = literal1636)
    (child1 : tree1637 = literal1637) : tree1638 = literal1638 := by
  rw [tree1638_def, child0, child1]
  rfl
theorem node1638_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1636 live1636 coloured1636 = result1636)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1637 live1637 coloured1637 = result1637) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1638 live1638 coloured1638 = result1638 := by
  rw [tree1638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1636 coloured1636 at child
  try dsimp only [live1638, coloured1638]
  rw [child]
  dsimp only [result1636]
  have child := child1
  unfold live1637 coloured1637 at child
  try dsimp only [live1638, coloured1638]
  rw [child]
  dsimp only [result1637]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1639_agree_conditional : tree1639 = literal1639 := by
  rw [tree1639_def]
  rfl
theorem node1639_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1639 live1639 coloured1639 = result1639 := by
  rw [tree1639_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1640_agree_conditional
    (child0 : tree1638 = literal1638)
    (child1 : tree1639 = literal1639) : tree1640 = literal1640 := by
  rw [tree1640_def, child0, child1]
  rfl
theorem node1640_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1638 live1638 coloured1638 = result1638)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1639 live1639 coloured1639 = result1639) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1640 live1640 coloured1640 = result1640 := by
  rw [tree1640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1638 coloured1638 at child
  try dsimp only [live1640, coloured1640]
  rw [child]
  dsimp only [result1638]
  have child := child1
  unfold live1639 coloured1639 at child
  try dsimp only [live1640, coloured1640]
  rw [child]
  dsimp only [result1639]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1641_agree_conditional : tree1641 = literal1641 := by
  rw [tree1641_def]
  rfl
theorem node1641_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1641 live1641 coloured1641 = result1641 := by
  rw [tree1641_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1642_agree_conditional
    (child0 : tree1640 = literal1640)
    (child1 : tree1641 = literal1641) : tree1642 = literal1642 := by
  rw [tree1642_def, child0, child1]
  rfl
theorem node1642_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1640 live1640 coloured1640 = result1640)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1641 live1641 coloured1641 = result1641) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1642 live1642 coloured1642 = result1642 := by
  rw [tree1642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1640 coloured1640 at child
  try dsimp only [live1642, coloured1642]
  rw [child]
  dsimp only [result1640]
  have child := child1
  unfold live1641 coloured1641 at child
  try dsimp only [live1642, coloured1642]
  rw [child]
  dsimp only [result1641]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1643_agree_conditional : tree1643 = literal1643 := by
  rw [tree1643_def]
  rfl
theorem node1643_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1643 live1643 coloured1643 = result1643 := by
  rw [tree1643_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1644_agree_conditional
    (child0 : tree1642 = literal1642)
    (child1 : tree1643 = literal1643) : tree1644 = literal1644 := by
  rw [tree1644_def, child0, child1]
  rfl
theorem node1644_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1642 live1642 coloured1642 = result1642)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1643 live1643 coloured1643 = result1643) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1644 live1644 coloured1644 = result1644 := by
  rw [tree1644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1642 coloured1642 at child
  try dsimp only [live1644, coloured1644]
  rw [child]
  dsimp only [result1642]
  have child := child1
  unfold live1643 coloured1643 at child
  try dsimp only [live1644, coloured1644]
  rw [child]
  dsimp only [result1643]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1645_agree_conditional : tree1645 = literal1645 := by
  rw [tree1645_def]
  rfl
theorem node1645_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1645 live1645 coloured1645 = result1645 := by
  rw [tree1645_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1646_agree_conditional
    (child0 : tree1644 = literal1644)
    (child1 : tree1645 = literal1645) : tree1646 = literal1646 := by
  rw [tree1646_def, child0, child1]
  rfl
theorem node1646_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1644 live1644 coloured1644 = result1644)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1645 live1645 coloured1645 = result1645) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1646 live1646 coloured1646 = result1646 := by
  rw [tree1646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1644 coloured1644 at child
  try dsimp only [live1646, coloured1646]
  rw [child]
  dsimp only [result1644]
  have child := child1
  unfold live1645 coloured1645 at child
  try dsimp only [live1646, coloured1646]
  rw [child]
  dsimp only [result1645]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1647_agree_conditional : tree1647 = literal1647 := by
  rw [tree1647_def]
  rfl
theorem node1647_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1647 live1647 coloured1647 = result1647 := by
  rw [tree1647_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1648_agree_conditional
    (child0 : tree1646 = literal1646)
    (child1 : tree1647 = literal1647) : tree1648 = literal1648 := by
  rw [tree1648_def, child0, child1]
  rfl
theorem node1648_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1646 live1646 coloured1646 = result1646)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1647 live1647 coloured1647 = result1647) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1648 live1648 coloured1648 = result1648 := by
  rw [tree1648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1646 coloured1646 at child
  try dsimp only [live1648, coloured1648]
  rw [child]
  dsimp only [result1646]
  have child := child1
  unfold live1647 coloured1647 at child
  try dsimp only [live1648, coloured1648]
  rw [child]
  dsimp only [result1647]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1649_agree_conditional : tree1649 = literal1649 := by
  rw [tree1649_def]
  rfl
theorem node1649_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1649 live1649 coloured1649 = result1649 := by
  rw [tree1649_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1650_agree_conditional
    (child0 : tree1648 = literal1648)
    (child1 : tree1649 = literal1649) : tree1650 = literal1650 := by
  rw [tree1650_def, child0, child1]
  rfl
theorem node1650_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1648 live1648 coloured1648 = result1648)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1649 live1649 coloured1649 = result1649) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1650 live1650 coloured1650 = result1650 := by
  rw [tree1650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1648 coloured1648 at child
  try dsimp only [live1650, coloured1650]
  rw [child]
  dsimp only [result1648]
  have child := child1
  unfold live1649 coloured1649 at child
  try dsimp only [live1650, coloured1650]
  rw [child]
  dsimp only [result1649]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1651_agree_conditional : tree1651 = literal1651 := by
  rw [tree1651_def]
  rfl
theorem node1651_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1651 live1651 coloured1651 = result1651 := by
  rw [tree1651_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1652_agree_conditional : tree1652 = literal1652 := by
  rw [tree1652_def]
  rfl
theorem node1652_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1652 live1652 coloured1652 = result1652 := by
  rw [tree1652_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1653_agree_conditional : tree1653 = literal1653 := by
  rw [tree1653_def]
  rfl
theorem node1653_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1653 live1653 coloured1653 = result1653 := by
  rw [tree1653_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1654_agree_conditional
    (child0 : tree1652 = literal1652)
    (child1 : tree1653 = literal1653) : tree1654 = literal1654 := by
  rw [tree1654_def, child0, child1]
  rfl
theorem node1654_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1652 live1652 coloured1652 = result1652)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1653 live1653 coloured1653 = result1653) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1654 live1654 coloured1654 = result1654 := by
  rw [tree1654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1652 coloured1652 at child
  try dsimp only [live1654, coloured1654]
  rw [child]
  dsimp only [result1652]
  have child := child1
  unfold live1653 coloured1653 at child
  try dsimp only [live1654, coloured1654]
  rw [child]
  dsimp only [result1653]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1655_agree_conditional : tree1655 = literal1655 := by
  rw [tree1655_def]
  rfl
theorem node1655_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1655 live1655 coloured1655 = result1655 := by
  rw [tree1655_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1656_agree_conditional : tree1656 = literal1656 := by
  rw [tree1656_def]
  rfl
theorem node1656_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1656 live1656 coloured1656 = result1656 := by
  rw [tree1656_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1657_agree_conditional
    (child0 : tree1655 = literal1655)
    (child1 : tree1656 = literal1656) : tree1657 = literal1657 := by
  rw [tree1657_def, child0, child1]
  rfl
theorem node1657_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1655 live1655 coloured1655 = result1655)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1656 live1656 coloured1656 = result1656) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1657 live1657 coloured1657 = result1657 := by
  rw [tree1657_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1655 coloured1655 at child
  try dsimp only [live1657, coloured1657]
  rw [child]
  dsimp only [result1655]
  have child := child1
  unfold live1656 coloured1656 at child
  try dsimp only [live1657, coloured1657]
  rw [child]
  dsimp only [result1656]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1658_agree_conditional : tree1658 = literal1658 := by
  rw [tree1658_def]
  rfl
theorem node1658_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1658 live1658 coloured1658 = result1658 := by
  rw [tree1658_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1659_agree_conditional
    (child0 : tree1657 = literal1657)
    (child1 : tree1658 = literal1658) : tree1659 = literal1659 := by
  rw [tree1659_def, child0, child1]
  rfl
theorem node1659_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1657 live1657 coloured1657 = result1657)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1658 live1658 coloured1658 = result1658) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1659 live1659 coloured1659 = result1659 := by
  rw [tree1659_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1657 coloured1657 at child
  try dsimp only [live1659, coloured1659]
  rw [child]
  dsimp only [result1657]
  have child := child1
  unfold live1658 coloured1658 at child
  try dsimp only [live1659, coloured1659]
  rw [child]
  dsimp only [result1658]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1660_agree_conditional : tree1660 = literal1660 := by
  rw [tree1660_def]
  rfl
theorem node1660_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1660 live1660 coloured1660 = result1660 := by
  rw [tree1660_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1661_agree_conditional
    (child0 : tree1659 = literal1659)
    (child1 : tree1660 = literal1660) : tree1661 = literal1661 := by
  rw [tree1661_def, child0, child1]
  rfl
theorem node1661_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1659 live1659 coloured1659 = result1659)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1660 live1660 coloured1660 = result1660) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1661 live1661 coloured1661 = result1661 := by
  rw [tree1661_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1659 coloured1659 at child
  try dsimp only [live1661, coloured1661]
  rw [child]
  dsimp only [result1659]
  have child := child1
  unfold live1660 coloured1660 at child
  try dsimp only [live1661, coloured1661]
  rw [child]
  dsimp only [result1660]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1662_agree_conditional : tree1662 = literal1662 := by
  rw [tree1662_def]
  rfl
theorem node1662_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1662 live1662 coloured1662 = result1662 := by
  rw [tree1662_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1663_agree_conditional
    (child0 : tree1661 = literal1661)
    (child1 : tree1662 = literal1662) : tree1663 = literal1663 := by
  rw [tree1663_def, child0, child1]
  rfl
theorem node1663_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1661 live1661 coloured1661 = result1661)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1662 live1662 coloured1662 = result1662) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1663 live1663 coloured1663 = result1663 := by
  rw [tree1663_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1661 coloured1661 at child
  try dsimp only [live1663, coloured1663]
  rw [child]
  dsimp only [result1661]
  have child := child1
  unfold live1662 coloured1662 at child
  try dsimp only [live1663, coloured1663]
  rw [child]
  dsimp only [result1662]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1664_agree_conditional : tree1664 = literal1664 := by
  rw [tree1664_def]
  rfl
theorem node1664_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1664 live1664 coloured1664 = result1664 := by
  rw [tree1664_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1665_agree_conditional : tree1665 = literal1665 := by
  rw [tree1665_def]
  rfl
theorem node1665_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1665 live1665 coloured1665 = result1665 := by
  rw [tree1665_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1666_agree_conditional : tree1666 = literal1666 := by
  rw [tree1666_def]
  rfl
theorem node1666_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1666 live1666 coloured1666 = result1666 := by
  rw [tree1666_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1667_agree_conditional
    (child0 : tree1665 = literal1665)
    (child1 : tree1666 = literal1666) : tree1667 = literal1667 := by
  rw [tree1667_def, child0, child1]
  rfl
theorem node1667_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1665 live1665 coloured1665 = result1665)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1666 live1666 coloured1666 = result1666) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1667 live1667 coloured1667 = result1667 := by
  rw [tree1667_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1665 coloured1665 at child
  try dsimp only [live1667, coloured1667]
  rw [child]
  dsimp only [result1665]
  have child := child1
  unfold live1666 coloured1666 at child
  try dsimp only [live1667, coloured1667]
  rw [child]
  dsimp only [result1666]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1668_agree_conditional : tree1668 = literal1668 := by
  rw [tree1668_def]
  rfl
theorem node1668_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1668 live1668 coloured1668 = result1668 := by
  rw [tree1668_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1669_agree_conditional : tree1669 = literal1669 := by
  rw [tree1669_def]
  rfl
theorem node1669_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1669 live1669 coloured1669 = result1669 := by
  rw [tree1669_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1670_agree_conditional
    (child0 : tree1668 = literal1668)
    (child1 : tree1669 = literal1669) : tree1670 = literal1670 := by
  rw [tree1670_def, child0, child1]
  rfl
theorem node1670_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1668 live1668 coloured1668 = result1668)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1669 live1669 coloured1669 = result1669) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1670 live1670 coloured1670 = result1670 := by
  rw [tree1670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1668 coloured1668 at child
  try dsimp only [live1670, coloured1670]
  rw [child]
  dsimp only [result1668]
  have child := child1
  unfold live1669 coloured1669 at child
  try dsimp only [live1670, coloured1670]
  rw [child]
  dsimp only [result1669]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1671_agree_conditional : tree1671 = literal1671 := by
  rw [tree1671_def]
  rfl
theorem node1671_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1671 live1671 coloured1671 = result1671 := by
  rw [tree1671_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1672_agree_conditional
    (child0 : tree1670 = literal1670)
    (child1 : tree1671 = literal1671) : tree1672 = literal1672 := by
  rw [tree1672_def, child0, child1]
  rfl
theorem node1672_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1670 live1670 coloured1670 = result1670)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1671 live1671 coloured1671 = result1671) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1672 live1672 coloured1672 = result1672 := by
  rw [tree1672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1670 coloured1670 at child
  try dsimp only [live1672, coloured1672]
  rw [child]
  dsimp only [result1670]
  have child := child1
  unfold live1671 coloured1671 at child
  try dsimp only [live1672, coloured1672]
  rw [child]
  dsimp only [result1671]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1673_agree_conditional : tree1673 = literal1673 := by
  rw [tree1673_def]
  rfl
theorem node1673_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1673 live1673 coloured1673 = result1673 := by
  rw [tree1673_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1674_agree_conditional
    (child0 : tree1672 = literal1672)
    (child1 : tree1673 = literal1673) : tree1674 = literal1674 := by
  rw [tree1674_def, child0, child1]
  rfl
theorem node1674_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1672 live1672 coloured1672 = result1672)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1673 live1673 coloured1673 = result1673) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1674 live1674 coloured1674 = result1674 := by
  rw [tree1674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1672 coloured1672 at child
  try dsimp only [live1674, coloured1674]
  rw [child]
  dsimp only [result1672]
  have child := child1
  unfold live1673 coloured1673 at child
  try dsimp only [live1674, coloured1674]
  rw [child]
  dsimp only [result1673]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1675_agree_conditional : tree1675 = literal1675 := by
  rw [tree1675_def]
  rfl
theorem node1675_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1675 live1675 coloured1675 = result1675 := by
  rw [tree1675_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1676_agree_conditional
    (child0 : tree1674 = literal1674)
    (child1 : tree1675 = literal1675) : tree1676 = literal1676 := by
  rw [tree1676_def, child0, child1]
  rfl
theorem node1676_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1674 live1674 coloured1674 = result1674)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1675 live1675 coloured1675 = result1675) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1676 live1676 coloured1676 = result1676 := by
  rw [tree1676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1674 coloured1674 at child
  try dsimp only [live1676, coloured1676]
  rw [child]
  dsimp only [result1674]
  have child := child1
  unfold live1675 coloured1675 at child
  try dsimp only [live1676, coloured1676]
  rw [child]
  dsimp only [result1675]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1677_agree_conditional : tree1677 = literal1677 := by
  rw [tree1677_def]
  rfl
theorem node1677_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1677 live1677 coloured1677 = result1677 := by
  rw [tree1677_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1678_agree_conditional
    (child0 : tree1676 = literal1676)
    (child1 : tree1677 = literal1677) : tree1678 = literal1678 := by
  rw [tree1678_def, child0, child1]
  rfl
theorem node1678_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1676 live1676 coloured1676 = result1676)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1677 live1677 coloured1677 = result1677) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1678 live1678 coloured1678 = result1678 := by
  rw [tree1678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1676 coloured1676 at child
  try dsimp only [live1678, coloured1678]
  rw [child]
  dsimp only [result1676]
  have child := child1
  unfold live1677 coloured1677 at child
  try dsimp only [live1678, coloured1678]
  rw [child]
  dsimp only [result1677]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1679_agree_conditional : tree1679 = literal1679 := by
  rw [tree1679_def]
  rfl
theorem node1679_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1679 live1679 coloured1679 = result1679 := by
  rw [tree1679_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1680_agree_conditional
    (child0 : tree1678 = literal1678)
    (child1 : tree1679 = literal1679) : tree1680 = literal1680 := by
  rw [tree1680_def, child0, child1]
  rfl
theorem node1680_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1678 live1678 coloured1678 = result1678)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1679 live1679 coloured1679 = result1679) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1680 live1680 coloured1680 = result1680 := by
  rw [tree1680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1678 coloured1678 at child
  try dsimp only [live1680, coloured1680]
  rw [child]
  dsimp only [result1678]
  have child := child1
  unfold live1679 coloured1679 at child
  try dsimp only [live1680, coloured1680]
  rw [child]
  dsimp only [result1679]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1681_agree_conditional : tree1681 = literal1681 := by
  rw [tree1681_def]
  rfl
theorem node1681_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1681 live1681 coloured1681 = result1681 := by
  rw [tree1681_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1682_agree_conditional : tree1682 = literal1682 := by
  rw [tree1682_def]
  rfl
theorem node1682_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1682 live1682 coloured1682 = result1682 := by
  rw [tree1682_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1683_agree_conditional
    (child0 : tree1681 = literal1681)
    (child1 : tree1682 = literal1682) : tree1683 = literal1683 := by
  rw [tree1683_def, child0, child1]
  rfl
theorem node1683_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1681 live1681 coloured1681 = result1681)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1682 live1682 coloured1682 = result1682) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1683 live1683 coloured1683 = result1683 := by
  rw [tree1683_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1681 coloured1681 at child
  try dsimp only [live1683, coloured1683]
  rw [child]
  dsimp only [result1681]
  have child := child1
  unfold live1682 coloured1682 at child
  try dsimp only [live1683, coloured1683]
  rw [child]
  dsimp only [result1682]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1684_agree_conditional : tree1684 = literal1684 := by
  rw [tree1684_def]
  rfl
theorem node1684_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1684 live1684 coloured1684 = result1684 := by
  rw [tree1684_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1685_agree_conditional : tree1685 = literal1685 := by
  rw [tree1685_def]
  rfl
theorem node1685_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1685 live1685 coloured1685 = result1685 := by
  rw [tree1685_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1686_agree_conditional
    (child0 : tree1684 = literal1684)
    (child1 : tree1685 = literal1685) : tree1686 = literal1686 := by
  rw [tree1686_def, child0, child1]
  rfl
theorem node1686_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1684 live1684 coloured1684 = result1684)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1685 live1685 coloured1685 = result1685) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1686 live1686 coloured1686 = result1686 := by
  rw [tree1686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1684 coloured1684 at child
  try dsimp only [live1686, coloured1686]
  rw [child]
  dsimp only [result1684]
  have child := child1
  unfold live1685 coloured1685 at child
  try dsimp only [live1686, coloured1686]
  rw [child]
  dsimp only [result1685]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1687_agree_conditional : tree1687 = literal1687 := by
  rw [tree1687_def]
  rfl
theorem node1687_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1687 live1687 coloured1687 = result1687 := by
  rw [tree1687_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1688_agree_conditional
    (child0 : tree1686 = literal1686)
    (child1 : tree1687 = literal1687) : tree1688 = literal1688 := by
  rw [tree1688_def, child0, child1]
  rfl
theorem node1688_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1686 live1686 coloured1686 = result1686)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1687 live1687 coloured1687 = result1687) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1688 live1688 coloured1688 = result1688 := by
  rw [tree1688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1686 coloured1686 at child
  try dsimp only [live1688, coloured1688]
  rw [child]
  dsimp only [result1686]
  have child := child1
  unfold live1687 coloured1687 at child
  try dsimp only [live1688, coloured1688]
  rw [child]
  dsimp only [result1687]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1689_agree_conditional
    (child0 : tree1683 = literal1683)
    (child1 : tree1688 = literal1688) : tree1689 = literal1689 := by
  rw [tree1689_def, child0, child1]
  rfl
theorem node1689_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1683 live1683 coloured1683 = result1683)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1688 live1688 coloured1688 = result1688) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1689 live1689 coloured1689 = result1689 := by
  rw [tree1689_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1683 coloured1683 at child
  try dsimp only [live1689, coloured1689]
  rw [child]
  dsimp only [result1683]
  have child := child1
  unfold live1688 coloured1688 at child
  try dsimp only [live1689, coloured1689]
  rw [child]
  dsimp only [result1688]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1690_agree_conditional
    (child0 : tree1680 = literal1680)
    (child1 : tree1689 = literal1689) : tree1690 = literal1690 := by
  rw [tree1690_def, child0, child1]
  rfl
theorem node1690_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1680 live1680 coloured1680 = result1680)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1689 live1689 coloured1689 = result1689) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1690 live1690 coloured1690 = result1690 := by
  rw [tree1690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1680 coloured1680 at child
  try dsimp only [live1690, coloured1690]
  rw [child]
  dsimp only [result1680]
  have child := child1
  unfold live1689 coloured1689 at child
  try dsimp only [live1690, coloured1690]
  rw [child]
  dsimp only [result1689]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1691_agree_conditional : tree1691 = literal1691 := by
  rw [tree1691_def]
  rfl
theorem node1691_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1691 live1691 coloured1691 = result1691 := by
  rw [tree1691_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1692_agree_conditional
    (child0 : tree1690 = literal1690)
    (child1 : tree1691 = literal1691) : tree1692 = literal1692 := by
  rw [tree1692_def, child0, child1]
  rfl
theorem node1692_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1690 live1690 coloured1690 = result1690)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1691 live1691 coloured1691 = result1691) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1692 live1692 coloured1692 = result1692 := by
  rw [tree1692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1690 coloured1690 at child
  try dsimp only [live1692, coloured1692]
  rw [child]
  dsimp only [result1690]
  have child := child1
  unfold live1691 coloured1691 at child
  try dsimp only [live1692, coloured1692]
  rw [child]
  dsimp only [result1691]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1693_agree_conditional : tree1693 = literal1693 := by
  rw [tree1693_def]
  rfl
theorem node1693_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1693 live1693 coloured1693 = result1693 := by
  rw [tree1693_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1694_agree_conditional
    (child0 : tree1692 = literal1692)
    (child1 : tree1693 = literal1693) : tree1694 = literal1694 := by
  rw [tree1694_def, child0, child1]
  rfl
theorem node1694_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1692 live1692 coloured1692 = result1692)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1693 live1693 coloured1693 = result1693) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1694 live1694 coloured1694 = result1694 := by
  rw [tree1694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1692 coloured1692 at child
  try dsimp only [live1694, coloured1694]
  rw [child]
  dsimp only [result1692]
  have child := child1
  unfold live1693 coloured1693 at child
  try dsimp only [live1694, coloured1694]
  rw [child]
  dsimp only [result1693]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1695_agree_conditional : tree1695 = literal1695 := by
  rw [tree1695_def]
  rfl
theorem node1695_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1695 live1695 coloured1695 = result1695 := by
  rw [tree1695_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1696_agree_conditional
    (child0 : tree1694 = literal1694)
    (child1 : tree1695 = literal1695) : tree1696 = literal1696 := by
  rw [tree1696_def, child0, child1]
  rfl
theorem node1696_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1694 live1694 coloured1694 = result1694)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1695 live1695 coloured1695 = result1695) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1696 live1696 coloured1696 = result1696 := by
  rw [tree1696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1694 coloured1694 at child
  try dsimp only [live1696, coloured1696]
  rw [child]
  dsimp only [result1694]
  have child := child1
  unfold live1695 coloured1695 at child
  try dsimp only [live1696, coloured1696]
  rw [child]
  dsimp only [result1695]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1697_agree_conditional : tree1697 = literal1697 := by
  rw [tree1697_def]
  rfl
theorem node1697_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1697 live1697 coloured1697 = result1697 := by
  rw [tree1697_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1698_agree_conditional
    (child0 : tree1696 = literal1696)
    (child1 : tree1697 = literal1697) : tree1698 = literal1698 := by
  rw [tree1698_def, child0, child1]
  rfl
theorem node1698_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1696 live1696 coloured1696 = result1696)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1697 live1697 coloured1697 = result1697) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1698 live1698 coloured1698 = result1698 := by
  rw [tree1698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1696 coloured1696 at child
  try dsimp only [live1698, coloured1698]
  rw [child]
  dsimp only [result1696]
  have child := child1
  unfold live1697 coloured1697 at child
  try dsimp only [live1698, coloured1698]
  rw [child]
  dsimp only [result1697]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1699_agree_conditional : tree1699 = literal1699 := by
  rw [tree1699_def]
  rfl
theorem node1699_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1699 live1699 coloured1699 = result1699 := by
  rw [tree1699_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1700_agree_conditional
    (child0 : tree1698 = literal1698)
    (child1 : tree1699 = literal1699) : tree1700 = literal1700 := by
  rw [tree1700_def, child0, child1]
  rfl
theorem node1700_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1698 live1698 coloured1698 = result1698)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1699 live1699 coloured1699 = result1699) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1700 live1700 coloured1700 = result1700 := by
  rw [tree1700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1698 coloured1698 at child
  try dsimp only [live1700, coloured1700]
  rw [child]
  dsimp only [result1698]
  have child := child1
  unfold live1699 coloured1699 at child
  try dsimp only [live1700, coloured1700]
  rw [child]
  dsimp only [result1699]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1701_agree_conditional : tree1701 = literal1701 := by
  rw [tree1701_def]
  rfl
theorem node1701_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1701 live1701 coloured1701 = result1701 := by
  rw [tree1701_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1702_agree_conditional
    (child0 : tree1700 = literal1700)
    (child1 : tree1701 = literal1701) : tree1702 = literal1702 := by
  rw [tree1702_def, child0, child1]
  rfl
theorem node1702_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1700 live1700 coloured1700 = result1700)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1701 live1701 coloured1701 = result1701) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1702 live1702 coloured1702 = result1702 := by
  rw [tree1702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1700 coloured1700 at child
  try dsimp only [live1702, coloured1702]
  rw [child]
  dsimp only [result1700]
  have child := child1
  unfold live1701 coloured1701 at child
  try dsimp only [live1702, coloured1702]
  rw [child]
  dsimp only [result1701]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1703_agree_conditional : tree1703 = literal1703 := by
  rw [tree1703_def]
  rfl
theorem node1703_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1703 live1703 coloured1703 = result1703 := by
  rw [tree1703_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1704_agree_conditional
    (child0 : tree1702 = literal1702)
    (child1 : tree1703 = literal1703) : tree1704 = literal1704 := by
  rw [tree1704_def, child0, child1]
  rfl
theorem node1704_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1702 live1702 coloured1702 = result1702)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1703 live1703 coloured1703 = result1703) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1704 live1704 coloured1704 = result1704 := by
  rw [tree1704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1702 coloured1702 at child
  try dsimp only [live1704, coloured1704]
  rw [child]
  dsimp only [result1702]
  have child := child1
  unfold live1703 coloured1703 at child
  try dsimp only [live1704, coloured1704]
  rw [child]
  dsimp only [result1703]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1705_agree_conditional : tree1705 = literal1705 := by
  rw [tree1705_def]
  rfl
theorem node1705_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1705 live1705 coloured1705 = result1705 := by
  rw [tree1705_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1706_agree_conditional
    (child0 : tree1704 = literal1704)
    (child1 : tree1705 = literal1705) : tree1706 = literal1706 := by
  rw [tree1706_def, child0, child1]
  rfl
theorem node1706_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1704 live1704 coloured1704 = result1704)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1705 live1705 coloured1705 = result1705) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1706 live1706 coloured1706 = result1706 := by
  rw [tree1706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1704 coloured1704 at child
  try dsimp only [live1706, coloured1706]
  rw [child]
  dsimp only [result1704]
  have child := child1
  unfold live1705 coloured1705 at child
  try dsimp only [live1706, coloured1706]
  rw [child]
  dsimp only [result1705]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1707_agree_conditional : tree1707 = literal1707 := by
  rw [tree1707_def]
  rfl
theorem node1707_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1707 live1707 coloured1707 = result1707 := by
  rw [tree1707_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1708_agree_conditional
    (child0 : tree1706 = literal1706)
    (child1 : tree1707 = literal1707) : tree1708 = literal1708 := by
  rw [tree1708_def, child0, child1]
  rfl
theorem node1708_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1706 live1706 coloured1706 = result1706)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1707 live1707 coloured1707 = result1707) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1708 live1708 coloured1708 = result1708 := by
  rw [tree1708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1706 coloured1706 at child
  try dsimp only [live1708, coloured1708]
  rw [child]
  dsimp only [result1706]
  have child := child1
  unfold live1707 coloured1707 at child
  try dsimp only [live1708, coloured1708]
  rw [child]
  dsimp only [result1707]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1709_agree_conditional : tree1709 = literal1709 := by
  rw [tree1709_def]
  rfl
theorem node1709_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1709 live1709 coloured1709 = result1709 := by
  rw [tree1709_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1710_agree_conditional
    (child0 : tree1708 = literal1708)
    (child1 : tree1709 = literal1709) : tree1710 = literal1710 := by
  rw [tree1710_def, child0, child1]
  rfl
theorem node1710_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1708 live1708 coloured1708 = result1708)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1709 live1709 coloured1709 = result1709) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1710 live1710 coloured1710 = result1710 := by
  rw [tree1710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1708 coloured1708 at child
  try dsimp only [live1710, coloured1710]
  rw [child]
  dsimp only [result1708]
  have child := child1
  unfold live1709 coloured1709 at child
  try dsimp only [live1710, coloured1710]
  rw [child]
  dsimp only [result1709]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1711_agree_conditional : tree1711 = literal1711 := by
  rw [tree1711_def]
  rfl
theorem node1711_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1711 live1711 coloured1711 = result1711 := by
  rw [tree1711_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1712_agree_conditional
    (child0 : tree1710 = literal1710)
    (child1 : tree1711 = literal1711) : tree1712 = literal1712 := by
  rw [tree1712_def, child0, child1]
  rfl
theorem node1712_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1710 live1710 coloured1710 = result1710)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1711 live1711 coloured1711 = result1711) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1712 live1712 coloured1712 = result1712 := by
  rw [tree1712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1710 coloured1710 at child
  try dsimp only [live1712, coloured1712]
  rw [child]
  dsimp only [result1710]
  have child := child1
  unfold live1711 coloured1711 at child
  try dsimp only [live1712, coloured1712]
  rw [child]
  dsimp only [result1711]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1713_agree_conditional : tree1713 = literal1713 := by
  rw [tree1713_def]
  rfl
theorem node1713_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1713 live1713 coloured1713 = result1713 := by
  rw [tree1713_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1714_agree_conditional
    (child0 : tree1712 = literal1712)
    (child1 : tree1713 = literal1713) : tree1714 = literal1714 := by
  rw [tree1714_def, child0, child1]
  rfl
theorem node1714_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1712 live1712 coloured1712 = result1712)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1713 live1713 coloured1713 = result1713) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1714 live1714 coloured1714 = result1714 := by
  rw [tree1714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1712 coloured1712 at child
  try dsimp only [live1714, coloured1714]
  rw [child]
  dsimp only [result1712]
  have child := child1
  unfold live1713 coloured1713 at child
  try dsimp only [live1714, coloured1714]
  rw [child]
  dsimp only [result1713]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1715_agree_conditional : tree1715 = literal1715 := by
  rw [tree1715_def]
  rfl
theorem node1715_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1715 live1715 coloured1715 = result1715 := by
  rw [tree1715_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1716_agree_conditional
    (child0 : tree1714 = literal1714)
    (child1 : tree1715 = literal1715) : tree1716 = literal1716 := by
  rw [tree1716_def, child0, child1]
  rfl
theorem node1716_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1714 live1714 coloured1714 = result1714)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1715 live1715 coloured1715 = result1715) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1716 live1716 coloured1716 = result1716 := by
  rw [tree1716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1714 coloured1714 at child
  try dsimp only [live1716, coloured1716]
  rw [child]
  dsimp only [result1714]
  have child := child1
  unfold live1715 coloured1715 at child
  try dsimp only [live1716, coloured1716]
  rw [child]
  dsimp only [result1715]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1717_agree_conditional : tree1717 = literal1717 := by
  rw [tree1717_def]
  rfl
theorem node1717_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1717 live1717 coloured1717 = result1717 := by
  rw [tree1717_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1718_agree_conditional
    (child0 : tree1716 = literal1716)
    (child1 : tree1717 = literal1717) : tree1718 = literal1718 := by
  rw [tree1718_def, child0, child1]
  rfl
theorem node1718_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1716 live1716 coloured1716 = result1716)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1717 live1717 coloured1717 = result1717) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1718 live1718 coloured1718 = result1718 := by
  rw [tree1718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1716 coloured1716 at child
  try dsimp only [live1718, coloured1718]
  rw [child]
  dsimp only [result1716]
  have child := child1
  unfold live1717 coloured1717 at child
  try dsimp only [live1718, coloured1718]
  rw [child]
  dsimp only [result1717]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1719_agree_conditional : tree1719 = literal1719 := by
  rw [tree1719_def]
  rfl
theorem node1719_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1719 live1719 coloured1719 = result1719 := by
  rw [tree1719_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1720_agree_conditional
    (child0 : tree1718 = literal1718)
    (child1 : tree1719 = literal1719) : tree1720 = literal1720 := by
  rw [tree1720_def, child0, child1]
  rfl
theorem node1720_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1718 live1718 coloured1718 = result1718)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1719 live1719 coloured1719 = result1719) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1720 live1720 coloured1720 = result1720 := by
  rw [tree1720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1718 coloured1718 at child
  try dsimp only [live1720, coloured1720]
  rw [child]
  dsimp only [result1718]
  have child := child1
  unfold live1719 coloured1719 at child
  try dsimp only [live1720, coloured1720]
  rw [child]
  dsimp only [result1719]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1721_agree_conditional : tree1721 = literal1721 := by
  rw [tree1721_def]
  rfl
theorem node1721_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1721 live1721 coloured1721 = result1721 := by
  rw [tree1721_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1722_agree_conditional : tree1722 = literal1722 := by
  rw [tree1722_def]
  rfl
theorem node1722_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1722 live1722 coloured1722 = result1722 := by
  rw [tree1722_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1723_agree_conditional
    (child0 : tree1721 = literal1721)
    (child1 : tree1722 = literal1722) : tree1723 = literal1723 := by
  rw [tree1723_def, child0, child1]
  rfl
theorem node1723_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1721 live1721 coloured1721 = result1721)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1722 live1722 coloured1722 = result1722) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1723 live1723 coloured1723 = result1723 := by
  rw [tree1723_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1721 coloured1721 at child
  try dsimp only [live1723, coloured1723]
  rw [child]
  dsimp only [result1721]
  have child := child1
  unfold live1722 coloured1722 at child
  try dsimp only [live1723, coloured1723]
  rw [child]
  dsimp only [result1722]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1724_agree_conditional : tree1724 = literal1724 := by
  rw [tree1724_def]
  rfl
theorem node1724_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1724 live1724 coloured1724 = result1724 := by
  rw [tree1724_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1725_agree_conditional : tree1725 = literal1725 := by
  rw [tree1725_def]
  rfl
theorem node1725_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1725 live1725 coloured1725 = result1725 := by
  rw [tree1725_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1726_agree_conditional
    (child0 : tree1724 = literal1724)
    (child1 : tree1725 = literal1725) : tree1726 = literal1726 := by
  rw [tree1726_def, child0, child1]
  rfl
theorem node1726_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1724 live1724 coloured1724 = result1724)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1725 live1725 coloured1725 = result1725) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1726 live1726 coloured1726 = result1726 := by
  rw [tree1726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1724 coloured1724 at child
  try dsimp only [live1726, coloured1726]
  rw [child]
  dsimp only [result1724]
  have child := child1
  unfold live1725 coloured1725 at child
  try dsimp only [live1726, coloured1726]
  rw [child]
  dsimp only [result1725]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1727_agree_conditional : tree1727 = literal1727 := by
  rw [tree1727_def]
  rfl
theorem node1727_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1727 live1727 coloured1727 = result1727 := by
  rw [tree1727_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages875
