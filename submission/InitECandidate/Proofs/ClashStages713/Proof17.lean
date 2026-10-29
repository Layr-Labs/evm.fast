import InitECandidate.Proofs.ClashStages713.Proof16
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree1632_agree : tree1632 = literal1632 := by
  rw [tree1632_def, tree1630_agree, tree1631_agree]
  rfl
theorem node1632_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1632 live1632 coloured1632 = result1632 := by
  rw [tree1632_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1630_eq
  unfold live1630 coloured1630 at child
  try dsimp only [live1632, coloured1632]
  rw [child]
  dsimp only [result1630]
  have child := node1631_eq
  unfold live1631 coloured1631 at child
  try dsimp only [live1632, coloured1632]
  rw [child]
  dsimp only [result1631]
  try dsimp only [colour, result1632]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1633_agree : tree1633 = literal1633 := by
  rw [tree1633_def]
  rfl
theorem node1633_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1633 live1633 coloured1633 = result1633 := by
  rw [tree1633_def]
  try dsimp only [colour, result1633]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1634_agree : tree1634 = literal1634 := by
  rw [tree1634_def, tree1632_agree, tree1633_agree]
  rfl
theorem node1634_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1634 live1634 coloured1634 = result1634 := by
  rw [tree1634_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1632_eq
  unfold live1632 coloured1632 at child
  try dsimp only [live1634, coloured1634]
  rw [child]
  dsimp only [result1632]
  have child := node1633_eq
  unfold live1633 coloured1633 at child
  try dsimp only [live1634, coloured1634]
  rw [child]
  dsimp only [result1633]
  try dsimp only [colour, result1634]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1635_agree : tree1635 = literal1635 := by
  rw [tree1635_def]
  rfl
theorem node1635_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1635 live1635 coloured1635 = result1635 := by
  rw [tree1635_def]
  try dsimp only [colour, result1635]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1636_agree : tree1636 = literal1636 := by
  rw [tree1636_def, tree1634_agree, tree1635_agree]
  rfl
theorem node1636_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1636 live1636 coloured1636 = result1636 := by
  rw [tree1636_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1634_eq
  unfold live1634 coloured1634 at child
  try dsimp only [live1636, coloured1636]
  rw [child]
  dsimp only [result1634]
  have child := node1635_eq
  unfold live1635 coloured1635 at child
  try dsimp only [live1636, coloured1636]
  rw [child]
  dsimp only [result1635]
  try dsimp only [colour, result1636]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1637_agree : tree1637 = literal1637 := by
  rw [tree1637_def]
  rfl
theorem node1637_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1637 live1637 coloured1637 = result1637 := by
  rw [tree1637_def]
  try dsimp only [colour, result1637]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1638_agree : tree1638 = literal1638 := by
  rw [tree1638_def, tree1636_agree, tree1637_agree]
  rfl
theorem node1638_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1638 live1638 coloured1638 = result1638 := by
  rw [tree1638_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1636_eq
  unfold live1636 coloured1636 at child
  try dsimp only [live1638, coloured1638]
  rw [child]
  dsimp only [result1636]
  have child := node1637_eq
  unfold live1637 coloured1637 at child
  try dsimp only [live1638, coloured1638]
  rw [child]
  dsimp only [result1637]
  try dsimp only [colour, result1638]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1639_agree : tree1639 = literal1639 := by
  rw [tree1639_def]
  rfl
theorem node1639_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1639 live1639 coloured1639 = result1639 := by
  rw [tree1639_def]
  try dsimp only [colour, result1639]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1640_agree : tree1640 = literal1640 := by
  rw [tree1640_def, tree1638_agree, tree1639_agree]
  rfl
theorem node1640_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1640 live1640 coloured1640 = result1640 := by
  rw [tree1640_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1638_eq
  unfold live1638 coloured1638 at child
  try dsimp only [live1640, coloured1640]
  rw [child]
  dsimp only [result1638]
  have child := node1639_eq
  unfold live1639 coloured1639 at child
  try dsimp only [live1640, coloured1640]
  rw [child]
  dsimp only [result1639]
  try dsimp only [colour, result1640]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1641_agree : tree1641 = literal1641 := by
  rw [tree1641_def]
  rfl
theorem node1641_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1641 live1641 coloured1641 = result1641 := by
  rw [tree1641_def]
  try dsimp only [colour, result1641]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1642_agree : tree1642 = literal1642 := by
  rw [tree1642_def, tree1640_agree, tree1641_agree]
  rfl
theorem node1642_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1642 live1642 coloured1642 = result1642 := by
  rw [tree1642_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1640_eq
  unfold live1640 coloured1640 at child
  try dsimp only [live1642, coloured1642]
  rw [child]
  dsimp only [result1640]
  have child := node1641_eq
  unfold live1641 coloured1641 at child
  try dsimp only [live1642, coloured1642]
  rw [child]
  dsimp only [result1641]
  try dsimp only [colour, result1642]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1643_agree : tree1643 = literal1643 := by
  rw [tree1643_def]
  rfl
theorem node1643_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1643 live1643 coloured1643 = result1643 := by
  rw [tree1643_def]
  try dsimp only [colour, result1643]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1644_agree : tree1644 = literal1644 := by
  rw [tree1644_def, tree1642_agree, tree1643_agree]
  rfl
theorem node1644_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1644 live1644 coloured1644 = result1644 := by
  rw [tree1644_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1642_eq
  unfold live1642 coloured1642 at child
  try dsimp only [live1644, coloured1644]
  rw [child]
  dsimp only [result1642]
  have child := node1643_eq
  unfold live1643 coloured1643 at child
  try dsimp only [live1644, coloured1644]
  rw [child]
  dsimp only [result1643]
  try dsimp only [colour, result1644]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1645_agree : tree1645 = literal1645 := by
  rw [tree1645_def]
  rfl
theorem node1645_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1645 live1645 coloured1645 = result1645 := by
  rw [tree1645_def]
  try dsimp only [colour, result1645]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1646_agree : tree1646 = literal1646 := by
  rw [tree1646_def, tree1644_agree, tree1645_agree]
  rfl
theorem node1646_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1646 live1646 coloured1646 = result1646 := by
  rw [tree1646_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1644_eq
  unfold live1644 coloured1644 at child
  try dsimp only [live1646, coloured1646]
  rw [child]
  dsimp only [result1644]
  have child := node1645_eq
  unfold live1645 coloured1645 at child
  try dsimp only [live1646, coloured1646]
  rw [child]
  dsimp only [result1645]
  try dsimp only [colour, result1646]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1647_agree : tree1647 = literal1647 := by
  rw [tree1647_def]
  rfl
theorem node1647_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1647 live1647 coloured1647 = result1647 := by
  rw [tree1647_def]
  try dsimp only [colour, result1647]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1648_agree : tree1648 = literal1648 := by
  rw [tree1648_def, tree1646_agree, tree1647_agree]
  rfl
theorem node1648_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1648 live1648 coloured1648 = result1648 := by
  rw [tree1648_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1646_eq
  unfold live1646 coloured1646 at child
  try dsimp only [live1648, coloured1648]
  rw [child]
  dsimp only [result1646]
  have child := node1647_eq
  unfold live1647 coloured1647 at child
  try dsimp only [live1648, coloured1648]
  rw [child]
  dsimp only [result1647]
  try dsimp only [colour, result1648]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1649_agree : tree1649 = literal1649 := by
  rw [tree1649_def]
  rfl
theorem node1649_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1649 live1649 coloured1649 = result1649 := by
  rw [tree1649_def]
  try dsimp only [colour, result1649]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1650_agree : tree1650 = literal1650 := by
  rw [tree1650_def, tree1648_agree, tree1649_agree]
  rfl
theorem node1650_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1650 live1650 coloured1650 = result1650 := by
  rw [tree1650_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1648_eq
  unfold live1648 coloured1648 at child
  try dsimp only [live1650, coloured1650]
  rw [child]
  dsimp only [result1648]
  have child := node1649_eq
  unfold live1649 coloured1649 at child
  try dsimp only [live1650, coloured1650]
  rw [child]
  dsimp only [result1649]
  try dsimp only [colour, result1650]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1651_agree : tree1651 = literal1651 := by
  rw [tree1651_def]
  rfl
theorem node1651_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1651 live1651 coloured1651 = result1651 := by
  rw [tree1651_def]
  try dsimp only [colour, result1651]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1652_agree : tree1652 = literal1652 := by
  rw [tree1652_def, tree1650_agree, tree1651_agree]
  rfl
theorem node1652_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1652 live1652 coloured1652 = result1652 := by
  rw [tree1652_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1650_eq
  unfold live1650 coloured1650 at child
  try dsimp only [live1652, coloured1652]
  rw [child]
  dsimp only [result1650]
  have child := node1651_eq
  unfold live1651 coloured1651 at child
  try dsimp only [live1652, coloured1652]
  rw [child]
  dsimp only [result1651]
  try dsimp only [colour, result1652]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1653_agree : tree1653 = literal1653 := by
  rw [tree1653_def]
  rfl
theorem node1653_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1653 live1653 coloured1653 = result1653 := by
  rw [tree1653_def]
  try dsimp only [colour, result1653]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1654_agree : tree1654 = literal1654 := by
  rw [tree1654_def, tree1652_agree, tree1653_agree]
  rfl
theorem node1654_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1654 live1654 coloured1654 = result1654 := by
  rw [tree1654_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1652_eq
  unfold live1652 coloured1652 at child
  try dsimp only [live1654, coloured1654]
  rw [child]
  dsimp only [result1652]
  have child := node1653_eq
  unfold live1653 coloured1653 at child
  try dsimp only [live1654, coloured1654]
  rw [child]
  dsimp only [result1653]
  try dsimp only [colour, result1654]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1655_agree : tree1655 = literal1655 := by
  rw [tree1655_def]
  rfl
theorem node1655_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1655 live1655 coloured1655 = result1655 := by
  rw [tree1655_def]
  try dsimp only [colour, result1655]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1656_agree : tree1656 = literal1656 := by
  rw [tree1656_def, tree1654_agree, tree1655_agree]
  rfl
theorem node1656_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1656 live1656 coloured1656 = result1656 := by
  rw [tree1656_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1654_eq
  unfold live1654 coloured1654 at child
  try dsimp only [live1656, coloured1656]
  rw [child]
  dsimp only [result1654]
  have child := node1655_eq
  unfold live1655 coloured1655 at child
  try dsimp only [live1656, coloured1656]
  rw [child]
  dsimp only [result1655]
  try dsimp only [colour, result1656]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1657_agree : tree1657 = literal1657 := by
  rw [tree1657_def]
  rfl
theorem node1657_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1657 live1657 coloured1657 = result1657 := by
  rw [tree1657_def]
  try dsimp only [colour, result1657]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1658_agree : tree1658 = literal1658 := by
  rw [tree1658_def, tree1656_agree, tree1657_agree]
  rfl
theorem node1658_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1658 live1658 coloured1658 = result1658 := by
  rw [tree1658_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1656_eq
  unfold live1656 coloured1656 at child
  try dsimp only [live1658, coloured1658]
  rw [child]
  dsimp only [result1656]
  have child := node1657_eq
  unfold live1657 coloured1657 at child
  try dsimp only [live1658, coloured1658]
  rw [child]
  dsimp only [result1657]
  try dsimp only [colour, result1658]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1659_agree : tree1659 = literal1659 := by
  rw [tree1659_def]
  rfl
theorem node1659_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1659 live1659 coloured1659 = result1659 := by
  rw [tree1659_def]
  try dsimp only [colour, result1659]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1660_agree : tree1660 = literal1660 := by
  rw [tree1660_def, tree1658_agree, tree1659_agree]
  rfl
theorem node1660_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1660 live1660 coloured1660 = result1660 := by
  rw [tree1660_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1658_eq
  unfold live1658 coloured1658 at child
  try dsimp only [live1660, coloured1660]
  rw [child]
  dsimp only [result1658]
  have child := node1659_eq
  unfold live1659 coloured1659 at child
  try dsimp only [live1660, coloured1660]
  rw [child]
  dsimp only [result1659]
  try dsimp only [colour, result1660]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1661_agree : tree1661 = literal1661 := by
  rw [tree1661_def]
  rfl
theorem node1661_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1661 live1661 coloured1661 = result1661 := by
  rw [tree1661_def]
  try dsimp only [colour, result1661]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1662_agree : tree1662 = literal1662 := by
  rw [tree1662_def, tree1660_agree, tree1661_agree]
  rfl
theorem node1662_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1662 live1662 coloured1662 = result1662 := by
  rw [tree1662_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1660_eq
  unfold live1660 coloured1660 at child
  try dsimp only [live1662, coloured1662]
  rw [child]
  dsimp only [result1660]
  have child := node1661_eq
  unfold live1661 coloured1661 at child
  try dsimp only [live1662, coloured1662]
  rw [child]
  dsimp only [result1661]
  try dsimp only [colour, result1662]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1663_agree : tree1663 = literal1663 := by
  rw [tree1663_def]
  rfl
theorem node1663_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1663 live1663 coloured1663 = result1663 := by
  rw [tree1663_def]
  try dsimp only [colour, result1663]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1664_agree : tree1664 = literal1664 := by
  rw [tree1664_def, tree1662_agree, tree1663_agree]
  rfl
theorem node1664_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1664 live1664 coloured1664 = result1664 := by
  rw [tree1664_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1662_eq
  unfold live1662 coloured1662 at child
  try dsimp only [live1664, coloured1664]
  rw [child]
  dsimp only [result1662]
  have child := node1663_eq
  unfold live1663 coloured1663 at child
  try dsimp only [live1664, coloured1664]
  rw [child]
  dsimp only [result1663]
  try dsimp only [colour, result1664]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1665_agree : tree1665 = literal1665 := by
  rw [tree1665_def]
  rfl
theorem node1665_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1665 live1665 coloured1665 = result1665 := by
  rw [tree1665_def]
  try dsimp only [colour, result1665]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1666_agree : tree1666 = literal1666 := by
  rw [tree1666_def, tree1664_agree, tree1665_agree]
  rfl
theorem node1666_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1666 live1666 coloured1666 = result1666 := by
  rw [tree1666_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1664_eq
  unfold live1664 coloured1664 at child
  try dsimp only [live1666, coloured1666]
  rw [child]
  dsimp only [result1664]
  have child := node1665_eq
  unfold live1665 coloured1665 at child
  try dsimp only [live1666, coloured1666]
  rw [child]
  dsimp only [result1665]
  try dsimp only [colour, result1666]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1667_agree : tree1667 = literal1667 := by
  rw [tree1667_def]
  rfl
theorem node1667_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1667 live1667 coloured1667 = result1667 := by
  rw [tree1667_def]
  try dsimp only [colour, result1667]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1668_agree : tree1668 = literal1668 := by
  rw [tree1668_def, tree1666_agree, tree1667_agree]
  rfl
theorem node1668_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1668 live1668 coloured1668 = result1668 := by
  rw [tree1668_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1666_eq
  unfold live1666 coloured1666 at child
  try dsimp only [live1668, coloured1668]
  rw [child]
  dsimp only [result1666]
  have child := node1667_eq
  unfold live1667 coloured1667 at child
  try dsimp only [live1668, coloured1668]
  rw [child]
  dsimp only [result1667]
  try dsimp only [colour, result1668]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1669_agree : tree1669 = literal1669 := by
  rw [tree1669_def]
  rfl
theorem node1669_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1669 live1669 coloured1669 = result1669 := by
  rw [tree1669_def]
  try dsimp only [colour, result1669]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1670_agree : tree1670 = literal1670 := by
  rw [tree1670_def, tree1668_agree, tree1669_agree]
  rfl
theorem node1670_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1670 live1670 coloured1670 = result1670 := by
  rw [tree1670_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1668_eq
  unfold live1668 coloured1668 at child
  try dsimp only [live1670, coloured1670]
  rw [child]
  dsimp only [result1668]
  have child := node1669_eq
  unfold live1669 coloured1669 at child
  try dsimp only [live1670, coloured1670]
  rw [child]
  dsimp only [result1669]
  try dsimp only [colour, result1670]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1671_agree : tree1671 = literal1671 := by
  rw [tree1671_def]
  rfl
theorem node1671_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1671 live1671 coloured1671 = result1671 := by
  rw [tree1671_def]
  try dsimp only [colour, result1671]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1672_agree : tree1672 = literal1672 := by
  rw [tree1672_def, tree1670_agree, tree1671_agree]
  rfl
theorem node1672_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1672 live1672 coloured1672 = result1672 := by
  rw [tree1672_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1670_eq
  unfold live1670 coloured1670 at child
  try dsimp only [live1672, coloured1672]
  rw [child]
  dsimp only [result1670]
  have child := node1671_eq
  unfold live1671 coloured1671 at child
  try dsimp only [live1672, coloured1672]
  rw [child]
  dsimp only [result1671]
  try dsimp only [colour, result1672]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1673_agree : tree1673 = literal1673 := by
  rw [tree1673_def]
  rfl
theorem node1673_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1673 live1673 coloured1673 = result1673 := by
  rw [tree1673_def]
  try dsimp only [colour, result1673]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1674_agree : tree1674 = literal1674 := by
  rw [tree1674_def, tree1672_agree, tree1673_agree]
  rfl
theorem node1674_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1674 live1674 coloured1674 = result1674 := by
  rw [tree1674_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1672_eq
  unfold live1672 coloured1672 at child
  try dsimp only [live1674, coloured1674]
  rw [child]
  dsimp only [result1672]
  have child := node1673_eq
  unfold live1673 coloured1673 at child
  try dsimp only [live1674, coloured1674]
  rw [child]
  dsimp only [result1673]
  try dsimp only [colour, result1674]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1675_agree : tree1675 = literal1675 := by
  rw [tree1675_def]
  rfl
theorem node1675_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1675 live1675 coloured1675 = result1675 := by
  rw [tree1675_def]
  try dsimp only [colour, result1675]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1676_agree : tree1676 = literal1676 := by
  rw [tree1676_def, tree1674_agree, tree1675_agree]
  rfl
theorem node1676_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1676 live1676 coloured1676 = result1676 := by
  rw [tree1676_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1674_eq
  unfold live1674 coloured1674 at child
  try dsimp only [live1676, coloured1676]
  rw [child]
  dsimp only [result1674]
  have child := node1675_eq
  unfold live1675 coloured1675 at child
  try dsimp only [live1676, coloured1676]
  rw [child]
  dsimp only [result1675]
  try dsimp only [colour, result1676]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1677_agree : tree1677 = literal1677 := by
  rw [tree1677_def]
  rfl
theorem node1677_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1677 live1677 coloured1677 = result1677 := by
  rw [tree1677_def]
  try dsimp only [colour, result1677]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1678_agree : tree1678 = literal1678 := by
  rw [tree1678_def, tree1676_agree, tree1677_agree]
  rfl
theorem node1678_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1678 live1678 coloured1678 = result1678 := by
  rw [tree1678_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1676_eq
  unfold live1676 coloured1676 at child
  try dsimp only [live1678, coloured1678]
  rw [child]
  dsimp only [result1676]
  have child := node1677_eq
  unfold live1677 coloured1677 at child
  try dsimp only [live1678, coloured1678]
  rw [child]
  dsimp only [result1677]
  try dsimp only [colour, result1678]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1679_agree : tree1679 = literal1679 := by
  rw [tree1679_def]
  rfl
theorem node1679_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1679 live1679 coloured1679 = result1679 := by
  rw [tree1679_def]
  try dsimp only [colour, result1679]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1680_agree : tree1680 = literal1680 := by
  rw [tree1680_def, tree1678_agree, tree1679_agree]
  rfl
theorem node1680_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1680 live1680 coloured1680 = result1680 := by
  rw [tree1680_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1678_eq
  unfold live1678 coloured1678 at child
  try dsimp only [live1680, coloured1680]
  rw [child]
  dsimp only [result1678]
  have child := node1679_eq
  unfold live1679 coloured1679 at child
  try dsimp only [live1680, coloured1680]
  rw [child]
  dsimp only [result1679]
  try dsimp only [colour, result1680]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1681_agree : tree1681 = literal1681 := by
  rw [tree1681_def]
  rfl
theorem node1681_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1681 live1681 coloured1681 = result1681 := by
  rw [tree1681_def]
  try dsimp only [colour, result1681]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1682_agree : tree1682 = literal1682 := by
  rw [tree1682_def, tree1680_agree, tree1681_agree]
  rfl
theorem node1682_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1682 live1682 coloured1682 = result1682 := by
  rw [tree1682_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1680_eq
  unfold live1680 coloured1680 at child
  try dsimp only [live1682, coloured1682]
  rw [child]
  dsimp only [result1680]
  have child := node1681_eq
  unfold live1681 coloured1681 at child
  try dsimp only [live1682, coloured1682]
  rw [child]
  dsimp only [result1681]
  try dsimp only [colour, result1682]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1683_agree : tree1683 = literal1683 := by
  rw [tree1683_def]
  rfl
theorem node1683_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1683 live1683 coloured1683 = result1683 := by
  rw [tree1683_def]
  try dsimp only [colour, result1683]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1684_agree : tree1684 = literal1684 := by
  rw [tree1684_def, tree1682_agree, tree1683_agree]
  rfl
theorem node1684_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1684 live1684 coloured1684 = result1684 := by
  rw [tree1684_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1682_eq
  unfold live1682 coloured1682 at child
  try dsimp only [live1684, coloured1684]
  rw [child]
  dsimp only [result1682]
  have child := node1683_eq
  unfold live1683 coloured1683 at child
  try dsimp only [live1684, coloured1684]
  rw [child]
  dsimp only [result1683]
  try dsimp only [colour, result1684]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1685_agree : tree1685 = literal1685 := by
  rw [tree1685_def]
  rfl
theorem node1685_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1685 live1685 coloured1685 = result1685 := by
  rw [tree1685_def]
  try dsimp only [colour, result1685]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1686_agree : tree1686 = literal1686 := by
  rw [tree1686_def, tree1684_agree, tree1685_agree]
  rfl
theorem node1686_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1686 live1686 coloured1686 = result1686 := by
  rw [tree1686_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1684_eq
  unfold live1684 coloured1684 at child
  try dsimp only [live1686, coloured1686]
  rw [child]
  dsimp only [result1684]
  have child := node1685_eq
  unfold live1685 coloured1685 at child
  try dsimp only [live1686, coloured1686]
  rw [child]
  dsimp only [result1685]
  try dsimp only [colour, result1686]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1687_agree : tree1687 = literal1687 := by
  rw [tree1687_def]
  rfl
theorem node1687_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1687 live1687 coloured1687 = result1687 := by
  rw [tree1687_def]
  try dsimp only [colour, result1687]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1688_agree : tree1688 = literal1688 := by
  rw [tree1688_def, tree1686_agree, tree1687_agree]
  rfl
theorem node1688_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1688 live1688 coloured1688 = result1688 := by
  rw [tree1688_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1686_eq
  unfold live1686 coloured1686 at child
  try dsimp only [live1688, coloured1688]
  rw [child]
  dsimp only [result1686]
  have child := node1687_eq
  unfold live1687 coloured1687 at child
  try dsimp only [live1688, coloured1688]
  rw [child]
  dsimp only [result1687]
  try dsimp only [colour, result1688]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1689_agree : tree1689 = literal1689 := by
  rw [tree1689_def]
  rfl
theorem node1689_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1689 live1689 coloured1689 = result1689 := by
  rw [tree1689_def]
  try dsimp only [colour, result1689]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1690_agree : tree1690 = literal1690 := by
  rw [tree1690_def, tree1688_agree, tree1689_agree]
  rfl
theorem node1690_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1690 live1690 coloured1690 = result1690 := by
  rw [tree1690_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1688_eq
  unfold live1688 coloured1688 at child
  try dsimp only [live1690, coloured1690]
  rw [child]
  dsimp only [result1688]
  have child := node1689_eq
  unfold live1689 coloured1689 at child
  try dsimp only [live1690, coloured1690]
  rw [child]
  dsimp only [result1689]
  try dsimp only [colour, result1690]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1691_agree : tree1691 = literal1691 := by
  rw [tree1691_def]
  rfl
theorem node1691_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1691 live1691 coloured1691 = result1691 := by
  rw [tree1691_def]
  try dsimp only [colour, result1691]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1692_agree : tree1692 = literal1692 := by
  rw [tree1692_def, tree1690_agree, tree1691_agree]
  rfl
theorem node1692_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1692 live1692 coloured1692 = result1692 := by
  rw [tree1692_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1690_eq
  unfold live1690 coloured1690 at child
  try dsimp only [live1692, coloured1692]
  rw [child]
  dsimp only [result1690]
  have child := node1691_eq
  unfold live1691 coloured1691 at child
  try dsimp only [live1692, coloured1692]
  rw [child]
  dsimp only [result1691]
  try dsimp only [colour, result1692]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1693_agree : tree1693 = literal1693 := by
  rw [tree1693_def]
  rfl
theorem node1693_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1693 live1693 coloured1693 = result1693 := by
  rw [tree1693_def]
  try dsimp only [colour, result1693]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1694_agree : tree1694 = literal1694 := by
  rw [tree1694_def, tree1692_agree, tree1693_agree]
  rfl
theorem node1694_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1694 live1694 coloured1694 = result1694 := by
  rw [tree1694_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1692_eq
  unfold live1692 coloured1692 at child
  try dsimp only [live1694, coloured1694]
  rw [child]
  dsimp only [result1692]
  have child := node1693_eq
  unfold live1693 coloured1693 at child
  try dsimp only [live1694, coloured1694]
  rw [child]
  dsimp only [result1693]
  try dsimp only [colour, result1694]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1695_agree : tree1695 = literal1695 := by
  rw [tree1695_def]
  rfl
theorem node1695_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1695 live1695 coloured1695 = result1695 := by
  rw [tree1695_def]
  try dsimp only [colour, result1695]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1696_agree : tree1696 = literal1696 := by
  rw [tree1696_def, tree1694_agree, tree1695_agree]
  rfl
theorem node1696_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1696 live1696 coloured1696 = result1696 := by
  rw [tree1696_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1694_eq
  unfold live1694 coloured1694 at child
  try dsimp only [live1696, coloured1696]
  rw [child]
  dsimp only [result1694]
  have child := node1695_eq
  unfold live1695 coloured1695 at child
  try dsimp only [live1696, coloured1696]
  rw [child]
  dsimp only [result1695]
  try dsimp only [colour, result1696]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1697_agree : tree1697 = literal1697 := by
  rw [tree1697_def]
  rfl
theorem node1697_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1697 live1697 coloured1697 = result1697 := by
  rw [tree1697_def]
  try dsimp only [colour, result1697]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1698_agree : tree1698 = literal1698 := by
  rw [tree1698_def, tree1696_agree, tree1697_agree]
  rfl
theorem node1698_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1698 live1698 coloured1698 = result1698 := by
  rw [tree1698_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1696_eq
  unfold live1696 coloured1696 at child
  try dsimp only [live1698, coloured1698]
  rw [child]
  dsimp only [result1696]
  have child := node1697_eq
  unfold live1697 coloured1697 at child
  try dsimp only [live1698, coloured1698]
  rw [child]
  dsimp only [result1697]
  try dsimp only [colour, result1698]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1699_agree : tree1699 = literal1699 := by
  rw [tree1699_def]
  rfl
theorem node1699_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1699 live1699 coloured1699 = result1699 := by
  rw [tree1699_def]
  try dsimp only [colour, result1699]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1700_agree : tree1700 = literal1700 := by
  rw [tree1700_def, tree1698_agree, tree1699_agree]
  rfl
theorem node1700_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1700 live1700 coloured1700 = result1700 := by
  rw [tree1700_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1698_eq
  unfold live1698 coloured1698 at child
  try dsimp only [live1700, coloured1700]
  rw [child]
  dsimp only [result1698]
  have child := node1699_eq
  unfold live1699 coloured1699 at child
  try dsimp only [live1700, coloured1700]
  rw [child]
  dsimp only [result1699]
  try dsimp only [colour, result1700]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1701_agree : tree1701 = literal1701 := by
  rw [tree1701_def]
  rfl
theorem node1701_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1701 live1701 coloured1701 = result1701 := by
  rw [tree1701_def]
  try dsimp only [colour, result1701]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1702_agree : tree1702 = literal1702 := by
  rw [tree1702_def, tree1700_agree, tree1701_agree]
  rfl
theorem node1702_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1702 live1702 coloured1702 = result1702 := by
  rw [tree1702_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1700_eq
  unfold live1700 coloured1700 at child
  try dsimp only [live1702, coloured1702]
  rw [child]
  dsimp only [result1700]
  have child := node1701_eq
  unfold live1701 coloured1701 at child
  try dsimp only [live1702, coloured1702]
  rw [child]
  dsimp only [result1701]
  try dsimp only [colour, result1702]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1703_agree : tree1703 = literal1703 := by
  rw [tree1703_def]
  rfl
theorem node1703_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1703 live1703 coloured1703 = result1703 := by
  rw [tree1703_def]
  try dsimp only [colour, result1703]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1704_agree : tree1704 = literal1704 := by
  rw [tree1704_def, tree1702_agree, tree1703_agree]
  rfl
theorem node1704_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1704 live1704 coloured1704 = result1704 := by
  rw [tree1704_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1702_eq
  unfold live1702 coloured1702 at child
  try dsimp only [live1704, coloured1704]
  rw [child]
  dsimp only [result1702]
  have child := node1703_eq
  unfold live1703 coloured1703 at child
  try dsimp only [live1704, coloured1704]
  rw [child]
  dsimp only [result1703]
  try dsimp only [colour, result1704]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1705_agree : tree1705 = literal1705 := by
  rw [tree1705_def]
  rfl
theorem node1705_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1705 live1705 coloured1705 = result1705 := by
  rw [tree1705_def]
  try dsimp only [colour, result1705]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1706_agree : tree1706 = literal1706 := by
  rw [tree1706_def, tree1704_agree, tree1705_agree]
  rfl
theorem node1706_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1706 live1706 coloured1706 = result1706 := by
  rw [tree1706_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1704_eq
  unfold live1704 coloured1704 at child
  try dsimp only [live1706, coloured1706]
  rw [child]
  dsimp only [result1704]
  have child := node1705_eq
  unfold live1705 coloured1705 at child
  try dsimp only [live1706, coloured1706]
  rw [child]
  dsimp only [result1705]
  try dsimp only [colour, result1706]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1707_agree : tree1707 = literal1707 := by
  rw [tree1707_def]
  rfl
theorem node1707_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1707 live1707 coloured1707 = result1707 := by
  rw [tree1707_def]
  try dsimp only [colour, result1707]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1708_agree : tree1708 = literal1708 := by
  rw [tree1708_def, tree1706_agree, tree1707_agree]
  rfl
theorem node1708_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1708 live1708 coloured1708 = result1708 := by
  rw [tree1708_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1706_eq
  unfold live1706 coloured1706 at child
  try dsimp only [live1708, coloured1708]
  rw [child]
  dsimp only [result1706]
  have child := node1707_eq
  unfold live1707 coloured1707 at child
  try dsimp only [live1708, coloured1708]
  rw [child]
  dsimp only [result1707]
  try dsimp only [colour, result1708]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1709_agree : tree1709 = literal1709 := by
  rw [tree1709_def]
  rfl
theorem node1709_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1709 live1709 coloured1709 = result1709 := by
  rw [tree1709_def]
  try dsimp only [colour, result1709]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1710_agree : tree1710 = literal1710 := by
  rw [tree1710_def, tree1708_agree, tree1709_agree]
  rfl
theorem node1710_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1710 live1710 coloured1710 = result1710 := by
  rw [tree1710_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1708_eq
  unfold live1708 coloured1708 at child
  try dsimp only [live1710, coloured1710]
  rw [child]
  dsimp only [result1708]
  have child := node1709_eq
  unfold live1709 coloured1709 at child
  try dsimp only [live1710, coloured1710]
  rw [child]
  dsimp only [result1709]
  try dsimp only [colour, result1710]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1711_agree : tree1711 = literal1711 := by
  rw [tree1711_def]
  rfl
theorem node1711_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1711 live1711 coloured1711 = result1711 := by
  rw [tree1711_def]
  try dsimp only [colour, result1711]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1712_agree : tree1712 = literal1712 := by
  rw [tree1712_def, tree1710_agree, tree1711_agree]
  rfl
theorem node1712_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1712 live1712 coloured1712 = result1712 := by
  rw [tree1712_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1710_eq
  unfold live1710 coloured1710 at child
  try dsimp only [live1712, coloured1712]
  rw [child]
  dsimp only [result1710]
  have child := node1711_eq
  unfold live1711 coloured1711 at child
  try dsimp only [live1712, coloured1712]
  rw [child]
  dsimp only [result1711]
  try dsimp only [colour, result1712]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1713_agree : tree1713 = literal1713 := by
  rw [tree1713_def]
  rfl
theorem node1713_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1713 live1713 coloured1713 = result1713 := by
  rw [tree1713_def]
  try dsimp only [colour, result1713]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1714_agree : tree1714 = literal1714 := by
  rw [tree1714_def, tree1712_agree, tree1713_agree]
  rfl
theorem node1714_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1714 live1714 coloured1714 = result1714 := by
  rw [tree1714_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1712_eq
  unfold live1712 coloured1712 at child
  try dsimp only [live1714, coloured1714]
  rw [child]
  dsimp only [result1712]
  have child := node1713_eq
  unfold live1713 coloured1713 at child
  try dsimp only [live1714, coloured1714]
  rw [child]
  dsimp only [result1713]
  try dsimp only [colour, result1714]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1715_agree : tree1715 = literal1715 := by
  rw [tree1715_def]
  rfl
theorem node1715_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1715 live1715 coloured1715 = result1715 := by
  rw [tree1715_def]
  try dsimp only [colour, result1715]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1716_agree : tree1716 = literal1716 := by
  rw [tree1716_def, tree1714_agree, tree1715_agree]
  rfl
theorem node1716_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1716 live1716 coloured1716 = result1716 := by
  rw [tree1716_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1714_eq
  unfold live1714 coloured1714 at child
  try dsimp only [live1716, coloured1716]
  rw [child]
  dsimp only [result1714]
  have child := node1715_eq
  unfold live1715 coloured1715 at child
  try dsimp only [live1716, coloured1716]
  rw [child]
  dsimp only [result1715]
  try dsimp only [colour, result1716]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1717_agree : tree1717 = literal1717 := by
  rw [tree1717_def]
  rfl
theorem node1717_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1717 live1717 coloured1717 = result1717 := by
  rw [tree1717_def]
  try dsimp only [colour, result1717]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1718_agree : tree1718 = literal1718 := by
  rw [tree1718_def, tree1716_agree, tree1717_agree]
  rfl
theorem node1718_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1718 live1718 coloured1718 = result1718 := by
  rw [tree1718_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1716_eq
  unfold live1716 coloured1716 at child
  try dsimp only [live1718, coloured1718]
  rw [child]
  dsimp only [result1716]
  have child := node1717_eq
  unfold live1717 coloured1717 at child
  try dsimp only [live1718, coloured1718]
  rw [child]
  dsimp only [result1717]
  try dsimp only [colour, result1718]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1719_agree : tree1719 = literal1719 := by
  rw [tree1719_def]
  rfl
theorem node1719_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1719 live1719 coloured1719 = result1719 := by
  rw [tree1719_def]
  try dsimp only [colour, result1719]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1720_agree : tree1720 = literal1720 := by
  rw [tree1720_def, tree1718_agree, tree1719_agree]
  rfl
theorem node1720_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1720 live1720 coloured1720 = result1720 := by
  rw [tree1720_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1718_eq
  unfold live1718 coloured1718 at child
  try dsimp only [live1720, coloured1720]
  rw [child]
  dsimp only [result1718]
  have child := node1719_eq
  unfold live1719 coloured1719 at child
  try dsimp only [live1720, coloured1720]
  rw [child]
  dsimp only [result1719]
  try dsimp only [colour, result1720]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1721_agree : tree1721 = literal1721 := by
  rw [tree1721_def]
  rfl
theorem node1721_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1721 live1721 coloured1721 = result1721 := by
  rw [tree1721_def]
  try dsimp only [colour, result1721]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1722_agree : tree1722 = literal1722 := by
  rw [tree1722_def, tree1720_agree, tree1721_agree]
  rfl
theorem node1722_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1722 live1722 coloured1722 = result1722 := by
  rw [tree1722_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1720_eq
  unfold live1720 coloured1720 at child
  try dsimp only [live1722, coloured1722]
  rw [child]
  dsimp only [result1720]
  have child := node1721_eq
  unfold live1721 coloured1721 at child
  try dsimp only [live1722, coloured1722]
  rw [child]
  dsimp only [result1721]
  try dsimp only [colour, result1722]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1723_agree : tree1723 = literal1723 := by
  rw [tree1723_def]
  rfl
theorem node1723_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1723 live1723 coloured1723 = result1723 := by
  rw [tree1723_def]
  try dsimp only [colour, result1723]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1724_agree : tree1724 = literal1724 := by
  rw [tree1724_def, tree1722_agree, tree1723_agree]
  rfl
theorem node1724_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1724 live1724 coloured1724 = result1724 := by
  rw [tree1724_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1722_eq
  unfold live1722 coloured1722 at child
  try dsimp only [live1724, coloured1724]
  rw [child]
  dsimp only [result1722]
  have child := node1723_eq
  unfold live1723 coloured1723 at child
  try dsimp only [live1724, coloured1724]
  rw [child]
  dsimp only [result1723]
  try dsimp only [colour, result1724]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1725_agree : tree1725 = literal1725 := by
  rw [tree1725_def]
  rfl
theorem node1725_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1725 live1725 coloured1725 = result1725 := by
  rw [tree1725_def]
  try dsimp only [colour, result1725]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1726_agree : tree1726 = literal1726 := by
  rw [tree1726_def, tree1724_agree, tree1725_agree]
  rfl
theorem node1726_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1726 live1726 coloured1726 = result1726 := by
  rw [tree1726_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node1724_eq
  unfold live1724 coloured1724 at child
  try dsimp only [live1726, coloured1726]
  rw [child]
  dsimp only [result1724]
  have child := node1725_eq
  unfold live1725 coloured1725 at child
  try dsimp only [live1726, coloured1726]
  rw [child]
  dsimp only [result1725]
  try dsimp only [colour, result1726]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree1727_agree : tree1727 = literal1727 := by
  rw [tree1727_def]
  rfl
theorem node1727_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1727 live1727 coloured1727 = result1727 := by
  rw [tree1727_def]
  try dsimp only [colour, result1727]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
