import InitECandidate.Proofs.ClashStages713.Proof90
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree8736_agree : tree8736 = literal8736 := by
  rw [tree8736_def, tree8734_agree, tree8735_agree]
  rfl
theorem node8736_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8736 live8736 coloured8736 = result8736 := by
  rw [tree8736_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8734_eq
  unfold live8734 coloured8734 at child
  try dsimp only [live8736, coloured8736]
  rw [child]
  dsimp only [result8734]
  have child := node8735_eq
  unfold live8735 coloured8735 at child
  try dsimp only [live8736, coloured8736]
  rw [child]
  dsimp only [result8735]
  try dsimp only [colour, result8736]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8737_agree : tree8737 = literal8737 := by
  rw [tree8737_def]
  rfl
theorem node8737_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8737 live8737 coloured8737 = result8737 := by
  rw [tree8737_def]
  try dsimp only [colour, result8737]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8738_agree : tree8738 = literal8738 := by
  rw [tree8738_def, tree8736_agree, tree8737_agree]
  rfl
theorem node8738_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8738 live8738 coloured8738 = result8738 := by
  rw [tree8738_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8736_eq
  unfold live8736 coloured8736 at child
  try dsimp only [live8738, coloured8738]
  rw [child]
  dsimp only [result8736]
  have child := node8737_eq
  unfold live8737 coloured8737 at child
  try dsimp only [live8738, coloured8738]
  rw [child]
  dsimp only [result8737]
  try dsimp only [colour, result8738]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8739_agree : tree8739 = literal8739 := by
  rw [tree8739_def]
  rfl
theorem node8739_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8739 live8739 coloured8739 = result8739 := by
  rw [tree8739_def]
  try dsimp only [colour, result8739]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8740_agree : tree8740 = literal8740 := by
  rw [tree8740_def, tree8738_agree, tree8739_agree]
  rfl
theorem node8740_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8740 live8740 coloured8740 = result8740 := by
  rw [tree8740_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8738_eq
  unfold live8738 coloured8738 at child
  try dsimp only [live8740, coloured8740]
  rw [child]
  dsimp only [result8738]
  have child := node8739_eq
  unfold live8739 coloured8739 at child
  try dsimp only [live8740, coloured8740]
  rw [child]
  dsimp only [result8739]
  try dsimp only [colour, result8740]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8741_agree : tree8741 = literal8741 := by
  rw [tree8741_def]
  rfl
theorem node8741_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8741 live8741 coloured8741 = result8741 := by
  rw [tree8741_def]
  try dsimp only [colour, result8741]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8742_agree : tree8742 = literal8742 := by
  rw [tree8742_def, tree8740_agree, tree8741_agree]
  rfl
theorem node8742_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8742 live8742 coloured8742 = result8742 := by
  rw [tree8742_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8740_eq
  unfold live8740 coloured8740 at child
  try dsimp only [live8742, coloured8742]
  rw [child]
  dsimp only [result8740]
  have child := node8741_eq
  unfold live8741 coloured8741 at child
  try dsimp only [live8742, coloured8742]
  rw [child]
  dsimp only [result8741]
  try dsimp only [colour, result8742]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8743_agree : tree8743 = literal8743 := by
  rw [tree8743_def]
  rfl
theorem node8743_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8743 live8743 coloured8743 = result8743 := by
  rw [tree8743_def]
  try dsimp only [colour, result8743]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8744_agree : tree8744 = literal8744 := by
  rw [tree8744_def, tree8742_agree, tree8743_agree]
  rfl
theorem node8744_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8744 live8744 coloured8744 = result8744 := by
  rw [tree8744_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8742_eq
  unfold live8742 coloured8742 at child
  try dsimp only [live8744, coloured8744]
  rw [child]
  dsimp only [result8742]
  have child := node8743_eq
  unfold live8743 coloured8743 at child
  try dsimp only [live8744, coloured8744]
  rw [child]
  dsimp only [result8743]
  try dsimp only [colour, result8744]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8745_agree : tree8745 = literal8745 := by
  rw [tree8745_def]
  rfl
theorem node8745_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8745 live8745 coloured8745 = result8745 := by
  rw [tree8745_def]
  try dsimp only [colour, result8745]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8746_agree : tree8746 = literal8746 := by
  rw [tree8746_def, tree8744_agree, tree8745_agree]
  rfl
theorem node8746_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8746 live8746 coloured8746 = result8746 := by
  rw [tree8746_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8744_eq
  unfold live8744 coloured8744 at child
  try dsimp only [live8746, coloured8746]
  rw [child]
  dsimp only [result8744]
  have child := node8745_eq
  unfold live8745 coloured8745 at child
  try dsimp only [live8746, coloured8746]
  rw [child]
  dsimp only [result8745]
  try dsimp only [colour, result8746]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8747_agree : tree8747 = literal8747 := by
  rw [tree8747_def]
  rfl
theorem node8747_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8747 live8747 coloured8747 = result8747 := by
  rw [tree8747_def]
  try dsimp only [colour, result8747]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8748_agree : tree8748 = literal8748 := by
  rw [tree8748_def, tree8746_agree, tree8747_agree]
  rfl
theorem node8748_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8748 live8748 coloured8748 = result8748 := by
  rw [tree8748_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8746_eq
  unfold live8746 coloured8746 at child
  try dsimp only [live8748, coloured8748]
  rw [child]
  dsimp only [result8746]
  have child := node8747_eq
  unfold live8747 coloured8747 at child
  try dsimp only [live8748, coloured8748]
  rw [child]
  dsimp only [result8747]
  try dsimp only [colour, result8748]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8749_agree : tree8749 = literal8749 := by
  rw [tree8749_def]
  rfl
theorem node8749_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8749 live8749 coloured8749 = result8749 := by
  rw [tree8749_def]
  try dsimp only [colour, result8749]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8750_agree : tree8750 = literal8750 := by
  rw [tree8750_def, tree8748_agree, tree8749_agree]
  rfl
theorem node8750_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8750 live8750 coloured8750 = result8750 := by
  rw [tree8750_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8748_eq
  unfold live8748 coloured8748 at child
  try dsimp only [live8750, coloured8750]
  rw [child]
  dsimp only [result8748]
  have child := node8749_eq
  unfold live8749 coloured8749 at child
  try dsimp only [live8750, coloured8750]
  rw [child]
  dsimp only [result8749]
  try dsimp only [colour, result8750]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8751_agree : tree8751 = literal8751 := by
  rw [tree8751_def]
  rfl
theorem node8751_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8751 live8751 coloured8751 = result8751 := by
  rw [tree8751_def]
  try dsimp only [colour, result8751]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8752_agree : tree8752 = literal8752 := by
  rw [tree8752_def, tree8750_agree, tree8751_agree]
  rfl
theorem node8752_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8752 live8752 coloured8752 = result8752 := by
  rw [tree8752_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8750_eq
  unfold live8750 coloured8750 at child
  try dsimp only [live8752, coloured8752]
  rw [child]
  dsimp only [result8750]
  have child := node8751_eq
  unfold live8751 coloured8751 at child
  try dsimp only [live8752, coloured8752]
  rw [child]
  dsimp only [result8751]
  try dsimp only [colour, result8752]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8753_agree : tree8753 = literal8753 := by
  rw [tree8753_def]
  rfl
theorem node8753_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8753 live8753 coloured8753 = result8753 := by
  rw [tree8753_def]
  try dsimp only [colour, result8753]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8754_agree : tree8754 = literal8754 := by
  rw [tree8754_def, tree8752_agree, tree8753_agree]
  rfl
theorem node8754_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8754 live8754 coloured8754 = result8754 := by
  rw [tree8754_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8752_eq
  unfold live8752 coloured8752 at child
  try dsimp only [live8754, coloured8754]
  rw [child]
  dsimp only [result8752]
  have child := node8753_eq
  unfold live8753 coloured8753 at child
  try dsimp only [live8754, coloured8754]
  rw [child]
  dsimp only [result8753]
  try dsimp only [colour, result8754]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8755_agree : tree8755 = literal8755 := by
  rw [tree8755_def]
  rfl
theorem node8755_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8755 live8755 coloured8755 = result8755 := by
  rw [tree8755_def]
  try dsimp only [colour, result8755]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8756_agree : tree8756 = literal8756 := by
  rw [tree8756_def, tree8754_agree, tree8755_agree]
  rfl
theorem node8756_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8756 live8756 coloured8756 = result8756 := by
  rw [tree8756_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8754_eq
  unfold live8754 coloured8754 at child
  try dsimp only [live8756, coloured8756]
  rw [child]
  dsimp only [result8754]
  have child := node8755_eq
  unfold live8755 coloured8755 at child
  try dsimp only [live8756, coloured8756]
  rw [child]
  dsimp only [result8755]
  try dsimp only [colour, result8756]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8757_agree : tree8757 = literal8757 := by
  rw [tree8757_def]
  rfl
theorem node8757_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8757 live8757 coloured8757 = result8757 := by
  rw [tree8757_def]
  try dsimp only [colour, result8757]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8758_agree : tree8758 = literal8758 := by
  rw [tree8758_def, tree8756_agree, tree8757_agree]
  rfl
theorem node8758_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8758 live8758 coloured8758 = result8758 := by
  rw [tree8758_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8756_eq
  unfold live8756 coloured8756 at child
  try dsimp only [live8758, coloured8758]
  rw [child]
  dsimp only [result8756]
  have child := node8757_eq
  unfold live8757 coloured8757 at child
  try dsimp only [live8758, coloured8758]
  rw [child]
  dsimp only [result8757]
  try dsimp only [colour, result8758]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8759_agree : tree8759 = literal8759 := by
  rw [tree8759_def]
  rfl
theorem node8759_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8759 live8759 coloured8759 = result8759 := by
  rw [tree8759_def]
  try dsimp only [colour, result8759]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8760_agree : tree8760 = literal8760 := by
  rw [tree8760_def, tree8758_agree, tree8759_agree]
  rfl
theorem node8760_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8760 live8760 coloured8760 = result8760 := by
  rw [tree8760_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8758_eq
  unfold live8758 coloured8758 at child
  try dsimp only [live8760, coloured8760]
  rw [child]
  dsimp only [result8758]
  have child := node8759_eq
  unfold live8759 coloured8759 at child
  try dsimp only [live8760, coloured8760]
  rw [child]
  dsimp only [result8759]
  try dsimp only [colour, result8760]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8761_agree : tree8761 = literal8761 := by
  rw [tree8761_def]
  rfl
theorem node8761_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8761 live8761 coloured8761 = result8761 := by
  rw [tree8761_def]
  try dsimp only [colour, result8761]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8762_agree : tree8762 = literal8762 := by
  rw [tree8762_def, tree8760_agree, tree8761_agree]
  rfl
theorem node8762_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8762 live8762 coloured8762 = result8762 := by
  rw [tree8762_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8760_eq
  unfold live8760 coloured8760 at child
  try dsimp only [live8762, coloured8762]
  rw [child]
  dsimp only [result8760]
  have child := node8761_eq
  unfold live8761 coloured8761 at child
  try dsimp only [live8762, coloured8762]
  rw [child]
  dsimp only [result8761]
  try dsimp only [colour, result8762]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8763_agree : tree8763 = literal8763 := by
  rw [tree8763_def]
  rfl
theorem node8763_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8763 live8763 coloured8763 = result8763 := by
  rw [tree8763_def]
  try dsimp only [colour, result8763]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8764_agree : tree8764 = literal8764 := by
  rw [tree8764_def, tree8762_agree, tree8763_agree]
  rfl
theorem node8764_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8764 live8764 coloured8764 = result8764 := by
  rw [tree8764_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8762_eq
  unfold live8762 coloured8762 at child
  try dsimp only [live8764, coloured8764]
  rw [child]
  dsimp only [result8762]
  have child := node8763_eq
  unfold live8763 coloured8763 at child
  try dsimp only [live8764, coloured8764]
  rw [child]
  dsimp only [result8763]
  try dsimp only [colour, result8764]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8765_agree : tree8765 = literal8765 := by
  rw [tree8765_def]
  rfl
theorem node8765_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8765 live8765 coloured8765 = result8765 := by
  rw [tree8765_def]
  try dsimp only [colour, result8765]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8766_agree : tree8766 = literal8766 := by
  rw [tree8766_def, tree8764_agree, tree8765_agree]
  rfl
theorem node8766_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8766 live8766 coloured8766 = result8766 := by
  rw [tree8766_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8764_eq
  unfold live8764 coloured8764 at child
  try dsimp only [live8766, coloured8766]
  rw [child]
  dsimp only [result8764]
  have child := node8765_eq
  unfold live8765 coloured8765 at child
  try dsimp only [live8766, coloured8766]
  rw [child]
  dsimp only [result8765]
  try dsimp only [colour, result8766]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8767_agree : tree8767 = literal8767 := by
  rw [tree8767_def]
  rfl
theorem node8767_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8767 live8767 coloured8767 = result8767 := by
  rw [tree8767_def]
  try dsimp only [colour, result8767]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8768_agree : tree8768 = literal8768 := by
  rw [tree8768_def, tree8766_agree, tree8767_agree]
  rfl
theorem node8768_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8768 live8768 coloured8768 = result8768 := by
  rw [tree8768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8766_eq
  unfold live8766 coloured8766 at child
  try dsimp only [live8768, coloured8768]
  rw [child]
  dsimp only [result8766]
  have child := node8767_eq
  unfold live8767 coloured8767 at child
  try dsimp only [live8768, coloured8768]
  rw [child]
  dsimp only [result8767]
  try dsimp only [colour, result8768]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8769_agree : tree8769 = literal8769 := by
  rw [tree8769_def]
  rfl
theorem node8769_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8769 live8769 coloured8769 = result8769 := by
  rw [tree8769_def]
  try dsimp only [colour, result8769]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8770_agree : tree8770 = literal8770 := by
  rw [tree8770_def, tree8768_agree, tree8769_agree]
  rfl
theorem node8770_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8770 live8770 coloured8770 = result8770 := by
  rw [tree8770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8768_eq
  unfold live8768 coloured8768 at child
  try dsimp only [live8770, coloured8770]
  rw [child]
  dsimp only [result8768]
  have child := node8769_eq
  unfold live8769 coloured8769 at child
  try dsimp only [live8770, coloured8770]
  rw [child]
  dsimp only [result8769]
  try dsimp only [colour, result8770]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8771_agree : tree8771 = literal8771 := by
  rw [tree8771_def]
  rfl
theorem node8771_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8771 live8771 coloured8771 = result8771 := by
  rw [tree8771_def]
  try dsimp only [colour, result8771]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8772_agree : tree8772 = literal8772 := by
  rw [tree8772_def, tree8770_agree, tree8771_agree]
  rfl
theorem node8772_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8772 live8772 coloured8772 = result8772 := by
  rw [tree8772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8770_eq
  unfold live8770 coloured8770 at child
  try dsimp only [live8772, coloured8772]
  rw [child]
  dsimp only [result8770]
  have child := node8771_eq
  unfold live8771 coloured8771 at child
  try dsimp only [live8772, coloured8772]
  rw [child]
  dsimp only [result8771]
  try dsimp only [colour, result8772]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8773_agree : tree8773 = literal8773 := by
  rw [tree8773_def]
  rfl
theorem node8773_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8773 live8773 coloured8773 = result8773 := by
  rw [tree8773_def]
  try dsimp only [colour, result8773]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8774_agree : tree8774 = literal8774 := by
  rw [tree8774_def, tree8772_agree, tree8773_agree]
  rfl
theorem node8774_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8774 live8774 coloured8774 = result8774 := by
  rw [tree8774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8772_eq
  unfold live8772 coloured8772 at child
  try dsimp only [live8774, coloured8774]
  rw [child]
  dsimp only [result8772]
  have child := node8773_eq
  unfold live8773 coloured8773 at child
  try dsimp only [live8774, coloured8774]
  rw [child]
  dsimp only [result8773]
  try dsimp only [colour, result8774]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8775_agree : tree8775 = literal8775 := by
  rw [tree8775_def]
  rfl
theorem node8775_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8775 live8775 coloured8775 = result8775 := by
  rw [tree8775_def]
  try dsimp only [colour, result8775]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8776_agree : tree8776 = literal8776 := by
  rw [tree8776_def, tree8774_agree, tree8775_agree]
  rfl
theorem node8776_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8776 live8776 coloured8776 = result8776 := by
  rw [tree8776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8774_eq
  unfold live8774 coloured8774 at child
  try dsimp only [live8776, coloured8776]
  rw [child]
  dsimp only [result8774]
  have child := node8775_eq
  unfold live8775 coloured8775 at child
  try dsimp only [live8776, coloured8776]
  rw [child]
  dsimp only [result8775]
  try dsimp only [colour, result8776]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8777_agree : tree8777 = literal8777 := by
  rw [tree8777_def]
  rfl
theorem node8777_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8777 live8777 coloured8777 = result8777 := by
  rw [tree8777_def]
  try dsimp only [colour, result8777]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8778_agree : tree8778 = literal8778 := by
  rw [tree8778_def, tree8776_agree, tree8777_agree]
  rfl
theorem node8778_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8778 live8778 coloured8778 = result8778 := by
  rw [tree8778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8776_eq
  unfold live8776 coloured8776 at child
  try dsimp only [live8778, coloured8778]
  rw [child]
  dsimp only [result8776]
  have child := node8777_eq
  unfold live8777 coloured8777 at child
  try dsimp only [live8778, coloured8778]
  rw [child]
  dsimp only [result8777]
  try dsimp only [colour, result8778]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8779_agree : tree8779 = literal8779 := by
  rw [tree8779_def]
  rfl
theorem node8779_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8779 live8779 coloured8779 = result8779 := by
  rw [tree8779_def]
  try dsimp only [colour, result8779]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8780_agree : tree8780 = literal8780 := by
  rw [tree8780_def, tree8778_agree, tree8779_agree]
  rfl
theorem node8780_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8780 live8780 coloured8780 = result8780 := by
  rw [tree8780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8778_eq
  unfold live8778 coloured8778 at child
  try dsimp only [live8780, coloured8780]
  rw [child]
  dsimp only [result8778]
  have child := node8779_eq
  unfold live8779 coloured8779 at child
  try dsimp only [live8780, coloured8780]
  rw [child]
  dsimp only [result8779]
  try dsimp only [colour, result8780]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8781_agree : tree8781 = literal8781 := by
  rw [tree8781_def]
  rfl
theorem node8781_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8781 live8781 coloured8781 = result8781 := by
  rw [tree8781_def]
  try dsimp only [colour, result8781]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8782_agree : tree8782 = literal8782 := by
  rw [tree8782_def, tree8780_agree, tree8781_agree]
  rfl
theorem node8782_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8782 live8782 coloured8782 = result8782 := by
  rw [tree8782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8780_eq
  unfold live8780 coloured8780 at child
  try dsimp only [live8782, coloured8782]
  rw [child]
  dsimp only [result8780]
  have child := node8781_eq
  unfold live8781 coloured8781 at child
  try dsimp only [live8782, coloured8782]
  rw [child]
  dsimp only [result8781]
  try dsimp only [colour, result8782]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8783_agree : tree8783 = literal8783 := by
  rw [tree8783_def]
  rfl
theorem node8783_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8783 live8783 coloured8783 = result8783 := by
  rw [tree8783_def]
  try dsimp only [colour, result8783]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8784_agree : tree8784 = literal8784 := by
  rw [tree8784_def, tree8782_agree, tree8783_agree]
  rfl
theorem node8784_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8784 live8784 coloured8784 = result8784 := by
  rw [tree8784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8782_eq
  unfold live8782 coloured8782 at child
  try dsimp only [live8784, coloured8784]
  rw [child]
  dsimp only [result8782]
  have child := node8783_eq
  unfold live8783 coloured8783 at child
  try dsimp only [live8784, coloured8784]
  rw [child]
  dsimp only [result8783]
  try dsimp only [colour, result8784]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8785_agree : tree8785 = literal8785 := by
  rw [tree8785_def]
  rfl
theorem node8785_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8785 live8785 coloured8785 = result8785 := by
  rw [tree8785_def]
  try dsimp only [colour, result8785]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8786_agree : tree8786 = literal8786 := by
  rw [tree8786_def, tree8784_agree, tree8785_agree]
  rfl
theorem node8786_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8786 live8786 coloured8786 = result8786 := by
  rw [tree8786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8784_eq
  unfold live8784 coloured8784 at child
  try dsimp only [live8786, coloured8786]
  rw [child]
  dsimp only [result8784]
  have child := node8785_eq
  unfold live8785 coloured8785 at child
  try dsimp only [live8786, coloured8786]
  rw [child]
  dsimp only [result8785]
  try dsimp only [colour, result8786]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8787_agree : tree8787 = literal8787 := by
  rw [tree8787_def]
  rfl
theorem node8787_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8787 live8787 coloured8787 = result8787 := by
  rw [tree8787_def]
  try dsimp only [colour, result8787]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8788_agree : tree8788 = literal8788 := by
  rw [tree8788_def, tree8786_agree, tree8787_agree]
  rfl
theorem node8788_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8788 live8788 coloured8788 = result8788 := by
  rw [tree8788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8786_eq
  unfold live8786 coloured8786 at child
  try dsimp only [live8788, coloured8788]
  rw [child]
  dsimp only [result8786]
  have child := node8787_eq
  unfold live8787 coloured8787 at child
  try dsimp only [live8788, coloured8788]
  rw [child]
  dsimp only [result8787]
  try dsimp only [colour, result8788]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8789_agree : tree8789 = literal8789 := by
  rw [tree8789_def]
  rfl
theorem node8789_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8789 live8789 coloured8789 = result8789 := by
  rw [tree8789_def]
  try dsimp only [colour, result8789]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8790_agree : tree8790 = literal8790 := by
  rw [tree8790_def, tree8788_agree, tree8789_agree]
  rfl
theorem node8790_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8790 live8790 coloured8790 = result8790 := by
  rw [tree8790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8788_eq
  unfold live8788 coloured8788 at child
  try dsimp only [live8790, coloured8790]
  rw [child]
  dsimp only [result8788]
  have child := node8789_eq
  unfold live8789 coloured8789 at child
  try dsimp only [live8790, coloured8790]
  rw [child]
  dsimp only [result8789]
  try dsimp only [colour, result8790]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8791_agree : tree8791 = literal8791 := by
  rw [tree8791_def]
  rfl
theorem node8791_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8791 live8791 coloured8791 = result8791 := by
  rw [tree8791_def]
  try dsimp only [colour, result8791]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8792_agree : tree8792 = literal8792 := by
  rw [tree8792_def, tree8790_agree, tree8791_agree]
  rfl
theorem node8792_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8792 live8792 coloured8792 = result8792 := by
  rw [tree8792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8790_eq
  unfold live8790 coloured8790 at child
  try dsimp only [live8792, coloured8792]
  rw [child]
  dsimp only [result8790]
  have child := node8791_eq
  unfold live8791 coloured8791 at child
  try dsimp only [live8792, coloured8792]
  rw [child]
  dsimp only [result8791]
  try dsimp only [colour, result8792]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8793_agree : tree8793 = literal8793 := by
  rw [tree8793_def]
  rfl
theorem node8793_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8793 live8793 coloured8793 = result8793 := by
  rw [tree8793_def]
  try dsimp only [colour, result8793]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8794_agree : tree8794 = literal8794 := by
  rw [tree8794_def, tree8792_agree, tree8793_agree]
  rfl
theorem node8794_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8794 live8794 coloured8794 = result8794 := by
  rw [tree8794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8792_eq
  unfold live8792 coloured8792 at child
  try dsimp only [live8794, coloured8794]
  rw [child]
  dsimp only [result8792]
  have child := node8793_eq
  unfold live8793 coloured8793 at child
  try dsimp only [live8794, coloured8794]
  rw [child]
  dsimp only [result8793]
  try dsimp only [colour, result8794]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8795_agree : tree8795 = literal8795 := by
  rw [tree8795_def]
  rfl
theorem node8795_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8795 live8795 coloured8795 = result8795 := by
  rw [tree8795_def]
  try dsimp only [colour, result8795]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8796_agree : tree8796 = literal8796 := by
  rw [tree8796_def, tree8794_agree, tree8795_agree]
  rfl
theorem node8796_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8796 live8796 coloured8796 = result8796 := by
  rw [tree8796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8794_eq
  unfold live8794 coloured8794 at child
  try dsimp only [live8796, coloured8796]
  rw [child]
  dsimp only [result8794]
  have child := node8795_eq
  unfold live8795 coloured8795 at child
  try dsimp only [live8796, coloured8796]
  rw [child]
  dsimp only [result8795]
  try dsimp only [colour, result8796]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8797_agree : tree8797 = literal8797 := by
  rw [tree8797_def]
  rfl
theorem node8797_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8797 live8797 coloured8797 = result8797 := by
  rw [tree8797_def]
  try dsimp only [colour, result8797]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8798_agree : tree8798 = literal8798 := by
  rw [tree8798_def, tree8796_agree, tree8797_agree]
  rfl
theorem node8798_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8798 live8798 coloured8798 = result8798 := by
  rw [tree8798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8796_eq
  unfold live8796 coloured8796 at child
  try dsimp only [live8798, coloured8798]
  rw [child]
  dsimp only [result8796]
  have child := node8797_eq
  unfold live8797 coloured8797 at child
  try dsimp only [live8798, coloured8798]
  rw [child]
  dsimp only [result8797]
  try dsimp only [colour, result8798]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8799_agree : tree8799 = literal8799 := by
  rw [tree8799_def]
  rfl
theorem node8799_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8799 live8799 coloured8799 = result8799 := by
  rw [tree8799_def]
  try dsimp only [colour, result8799]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8800_agree : tree8800 = literal8800 := by
  rw [tree8800_def, tree8798_agree, tree8799_agree]
  rfl
theorem node8800_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8800 live8800 coloured8800 = result8800 := by
  rw [tree8800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8798_eq
  unfold live8798 coloured8798 at child
  try dsimp only [live8800, coloured8800]
  rw [child]
  dsimp only [result8798]
  have child := node8799_eq
  unfold live8799 coloured8799 at child
  try dsimp only [live8800, coloured8800]
  rw [child]
  dsimp only [result8799]
  try dsimp only [colour, result8800]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8801_agree : tree8801 = literal8801 := by
  rw [tree8801_def]
  rfl
theorem node8801_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8801 live8801 coloured8801 = result8801 := by
  rw [tree8801_def]
  try dsimp only [colour, result8801]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8802_agree : tree8802 = literal8802 := by
  rw [tree8802_def, tree8800_agree, tree8801_agree]
  rfl
theorem node8802_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8802 live8802 coloured8802 = result8802 := by
  rw [tree8802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8800_eq
  unfold live8800 coloured8800 at child
  try dsimp only [live8802, coloured8802]
  rw [child]
  dsimp only [result8800]
  have child := node8801_eq
  unfold live8801 coloured8801 at child
  try dsimp only [live8802, coloured8802]
  rw [child]
  dsimp only [result8801]
  try dsimp only [colour, result8802]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8803_agree : tree8803 = literal8803 := by
  rw [tree8803_def]
  rfl
theorem node8803_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8803 live8803 coloured8803 = result8803 := by
  rw [tree8803_def]
  try dsimp only [colour, result8803]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8804_agree : tree8804 = literal8804 := by
  rw [tree8804_def, tree8802_agree, tree8803_agree]
  rfl
theorem node8804_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8804 live8804 coloured8804 = result8804 := by
  rw [tree8804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8802_eq
  unfold live8802 coloured8802 at child
  try dsimp only [live8804, coloured8804]
  rw [child]
  dsimp only [result8802]
  have child := node8803_eq
  unfold live8803 coloured8803 at child
  try dsimp only [live8804, coloured8804]
  rw [child]
  dsimp only [result8803]
  try dsimp only [colour, result8804]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8805_agree : tree8805 = literal8805 := by
  rw [tree8805_def]
  rfl
theorem node8805_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8805 live8805 coloured8805 = result8805 := by
  rw [tree8805_def]
  try dsimp only [colour, result8805]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8806_agree : tree8806 = literal8806 := by
  rw [tree8806_def, tree8804_agree, tree8805_agree]
  rfl
theorem node8806_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8806 live8806 coloured8806 = result8806 := by
  rw [tree8806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8804_eq
  unfold live8804 coloured8804 at child
  try dsimp only [live8806, coloured8806]
  rw [child]
  dsimp only [result8804]
  have child := node8805_eq
  unfold live8805 coloured8805 at child
  try dsimp only [live8806, coloured8806]
  rw [child]
  dsimp only [result8805]
  try dsimp only [colour, result8806]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8807_agree : tree8807 = literal8807 := by
  rw [tree8807_def]
  rfl
theorem node8807_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8807 live8807 coloured8807 = result8807 := by
  rw [tree8807_def]
  try dsimp only [colour, result8807]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8808_agree : tree8808 = literal8808 := by
  rw [tree8808_def, tree8806_agree, tree8807_agree]
  rfl
theorem node8808_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8808 live8808 coloured8808 = result8808 := by
  rw [tree8808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8806_eq
  unfold live8806 coloured8806 at child
  try dsimp only [live8808, coloured8808]
  rw [child]
  dsimp only [result8806]
  have child := node8807_eq
  unfold live8807 coloured8807 at child
  try dsimp only [live8808, coloured8808]
  rw [child]
  dsimp only [result8807]
  try dsimp only [colour, result8808]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8809_agree : tree8809 = literal8809 := by
  rw [tree8809_def]
  rfl
theorem node8809_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8809 live8809 coloured8809 = result8809 := by
  rw [tree8809_def]
  try dsimp only [colour, result8809]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8810_agree : tree8810 = literal8810 := by
  rw [tree8810_def, tree8808_agree, tree8809_agree]
  rfl
theorem node8810_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8810 live8810 coloured8810 = result8810 := by
  rw [tree8810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8808_eq
  unfold live8808 coloured8808 at child
  try dsimp only [live8810, coloured8810]
  rw [child]
  dsimp only [result8808]
  have child := node8809_eq
  unfold live8809 coloured8809 at child
  try dsimp only [live8810, coloured8810]
  rw [child]
  dsimp only [result8809]
  try dsimp only [colour, result8810]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8811_agree : tree8811 = literal8811 := by
  rw [tree8811_def]
  rfl
theorem node8811_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8811 live8811 coloured8811 = result8811 := by
  rw [tree8811_def]
  try dsimp only [colour, result8811]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8812_agree : tree8812 = literal8812 := by
  rw [tree8812_def, tree8810_agree, tree8811_agree]
  rfl
theorem node8812_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8812 live8812 coloured8812 = result8812 := by
  rw [tree8812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8810_eq
  unfold live8810 coloured8810 at child
  try dsimp only [live8812, coloured8812]
  rw [child]
  dsimp only [result8810]
  have child := node8811_eq
  unfold live8811 coloured8811 at child
  try dsimp only [live8812, coloured8812]
  rw [child]
  dsimp only [result8811]
  try dsimp only [colour, result8812]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8813_agree : tree8813 = literal8813 := by
  rw [tree8813_def]
  rfl
theorem node8813_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8813 live8813 coloured8813 = result8813 := by
  rw [tree8813_def]
  try dsimp only [colour, result8813]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8814_agree : tree8814 = literal8814 := by
  rw [tree8814_def, tree8812_agree, tree8813_agree]
  rfl
theorem node8814_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8814 live8814 coloured8814 = result8814 := by
  rw [tree8814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8812_eq
  unfold live8812 coloured8812 at child
  try dsimp only [live8814, coloured8814]
  rw [child]
  dsimp only [result8812]
  have child := node8813_eq
  unfold live8813 coloured8813 at child
  try dsimp only [live8814, coloured8814]
  rw [child]
  dsimp only [result8813]
  try dsimp only [colour, result8814]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8815_agree : tree8815 = literal8815 := by
  rw [tree8815_def]
  rfl
theorem node8815_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8815 live8815 coloured8815 = result8815 := by
  rw [tree8815_def]
  try dsimp only [colour, result8815]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8816_agree : tree8816 = literal8816 := by
  rw [tree8816_def, tree8814_agree, tree8815_agree]
  rfl
theorem node8816_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8816 live8816 coloured8816 = result8816 := by
  rw [tree8816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8814_eq
  unfold live8814 coloured8814 at child
  try dsimp only [live8816, coloured8816]
  rw [child]
  dsimp only [result8814]
  have child := node8815_eq
  unfold live8815 coloured8815 at child
  try dsimp only [live8816, coloured8816]
  rw [child]
  dsimp only [result8815]
  try dsimp only [colour, result8816]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8817_agree : tree8817 = literal8817 := by
  rw [tree8817_def]
  rfl
theorem node8817_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8817 live8817 coloured8817 = result8817 := by
  rw [tree8817_def]
  try dsimp only [colour, result8817]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8818_agree : tree8818 = literal8818 := by
  rw [tree8818_def, tree8816_agree, tree8817_agree]
  rfl
theorem node8818_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8818 live8818 coloured8818 = result8818 := by
  rw [tree8818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8816_eq
  unfold live8816 coloured8816 at child
  try dsimp only [live8818, coloured8818]
  rw [child]
  dsimp only [result8816]
  have child := node8817_eq
  unfold live8817 coloured8817 at child
  try dsimp only [live8818, coloured8818]
  rw [child]
  dsimp only [result8817]
  try dsimp only [colour, result8818]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8819_agree : tree8819 = literal8819 := by
  rw [tree8819_def]
  rfl
theorem node8819_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8819 live8819 coloured8819 = result8819 := by
  rw [tree8819_def]
  try dsimp only [colour, result8819]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8820_agree : tree8820 = literal8820 := by
  rw [tree8820_def, tree8818_agree, tree8819_agree]
  rfl
theorem node8820_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8820 live8820 coloured8820 = result8820 := by
  rw [tree8820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8818_eq
  unfold live8818 coloured8818 at child
  try dsimp only [live8820, coloured8820]
  rw [child]
  dsimp only [result8818]
  have child := node8819_eq
  unfold live8819 coloured8819 at child
  try dsimp only [live8820, coloured8820]
  rw [child]
  dsimp only [result8819]
  try dsimp only [colour, result8820]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8821_agree : tree8821 = literal8821 := by
  rw [tree8821_def]
  rfl
theorem node8821_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8821 live8821 coloured8821 = result8821 := by
  rw [tree8821_def]
  try dsimp only [colour, result8821]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8822_agree : tree8822 = literal8822 := by
  rw [tree8822_def, tree8820_agree, tree8821_agree]
  rfl
theorem node8822_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8822 live8822 coloured8822 = result8822 := by
  rw [tree8822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8820_eq
  unfold live8820 coloured8820 at child
  try dsimp only [live8822, coloured8822]
  rw [child]
  dsimp only [result8820]
  have child := node8821_eq
  unfold live8821 coloured8821 at child
  try dsimp only [live8822, coloured8822]
  rw [child]
  dsimp only [result8821]
  try dsimp only [colour, result8822]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8823_agree : tree8823 = literal8823 := by
  rw [tree8823_def]
  rfl
theorem node8823_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8823 live8823 coloured8823 = result8823 := by
  rw [tree8823_def]
  try dsimp only [colour, result8823]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8824_agree : tree8824 = literal8824 := by
  rw [tree8824_def, tree8822_agree, tree8823_agree]
  rfl
theorem node8824_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8824 live8824 coloured8824 = result8824 := by
  rw [tree8824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8822_eq
  unfold live8822 coloured8822 at child
  try dsimp only [live8824, coloured8824]
  rw [child]
  dsimp only [result8822]
  have child := node8823_eq
  unfold live8823 coloured8823 at child
  try dsimp only [live8824, coloured8824]
  rw [child]
  dsimp only [result8823]
  try dsimp only [colour, result8824]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8825_agree : tree8825 = literal8825 := by
  rw [tree8825_def]
  rfl
theorem node8825_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8825 live8825 coloured8825 = result8825 := by
  rw [tree8825_def]
  try dsimp only [colour, result8825]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8826_agree : tree8826 = literal8826 := by
  rw [tree8826_def, tree8824_agree, tree8825_agree]
  rfl
theorem node8826_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8826 live8826 coloured8826 = result8826 := by
  rw [tree8826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8824_eq
  unfold live8824 coloured8824 at child
  try dsimp only [live8826, coloured8826]
  rw [child]
  dsimp only [result8824]
  have child := node8825_eq
  unfold live8825 coloured8825 at child
  try dsimp only [live8826, coloured8826]
  rw [child]
  dsimp only [result8825]
  try dsimp only [colour, result8826]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8827_agree : tree8827 = literal8827 := by
  rw [tree8827_def]
  rfl
theorem node8827_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8827 live8827 coloured8827 = result8827 := by
  rw [tree8827_def]
  try dsimp only [colour, result8827]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8828_agree : tree8828 = literal8828 := by
  rw [tree8828_def, tree8826_agree, tree8827_agree]
  rfl
theorem node8828_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8828 live8828 coloured8828 = result8828 := by
  rw [tree8828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8826_eq
  unfold live8826 coloured8826 at child
  try dsimp only [live8828, coloured8828]
  rw [child]
  dsimp only [result8826]
  have child := node8827_eq
  unfold live8827 coloured8827 at child
  try dsimp only [live8828, coloured8828]
  rw [child]
  dsimp only [result8827]
  try dsimp only [colour, result8828]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8829_agree : tree8829 = literal8829 := by
  rw [tree8829_def]
  rfl
theorem node8829_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8829 live8829 coloured8829 = result8829 := by
  rw [tree8829_def]
  try dsimp only [colour, result8829]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8830_agree : tree8830 = literal8830 := by
  rw [tree8830_def, tree8828_agree, tree8829_agree]
  rfl
theorem node8830_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8830 live8830 coloured8830 = result8830 := by
  rw [tree8830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node8828_eq
  unfold live8828 coloured8828 at child
  try dsimp only [live8830, coloured8830]
  rw [child]
  dsimp only [result8828]
  have child := node8829_eq
  unfold live8829 coloured8829 at child
  try dsimp only [live8830, coloured8830]
  rw [child]
  dsimp only [result8829]
  try dsimp only [colour, result8830]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree8831_agree : tree8831 = literal8831 := by
  rw [tree8831_def]
  rfl
theorem node8831_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8831 live8831 coloured8831 = result8831 := by
  rw [tree8831_def]
  try dsimp only [colour, result8831]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
