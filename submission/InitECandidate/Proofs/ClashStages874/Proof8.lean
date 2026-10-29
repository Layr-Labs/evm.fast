import InitECandidate.Proofs.ClashStages874.Proof7
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages874
theorem tree768_agree : tree768 = literal768 := by
  rw [tree768_def, tree766_agree, tree767_agree]
  rfl
theorem node768_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree768 live768 coloured768 = result768 := by
  rw [tree768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node766_eq
  unfold live766 coloured766 at child
  try dsimp only [live768, coloured768]
  rw [child]
  dsimp only [result766]
  have child := node767_eq
  unfold live767 coloured767 at child
  try dsimp only [live768, coloured768]
  rw [child]
  dsimp only [result767]
  try dsimp only [colour, result768]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree769_agree : tree769 = literal769 := by
  rw [tree769_def]
  rfl
theorem node769_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree769 live769 coloured769 = result769 := by
  rw [tree769_def]
  try dsimp only [colour, result769]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree770_agree : tree770 = literal770 := by
  rw [tree770_def, tree768_agree, tree769_agree]
  rfl
theorem node770_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree770 live770 coloured770 = result770 := by
  rw [tree770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node768_eq
  unfold live768 coloured768 at child
  try dsimp only [live770, coloured770]
  rw [child]
  dsimp only [result768]
  have child := node769_eq
  unfold live769 coloured769 at child
  try dsimp only [live770, coloured770]
  rw [child]
  dsimp only [result769]
  try dsimp only [colour, result770]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree771_agree : tree771 = literal771 := by
  rw [tree771_def, tree765_agree, tree770_agree]
  rfl
theorem node771_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree771 live771 coloured771 = result771 := by
  rw [tree771_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node765_eq
  unfold live765 coloured765 at child
  try dsimp only [live771, coloured771]
  rw [child]
  dsimp only [result765]
  have child := node770_eq
  unfold live770 coloured770 at child
  try dsimp only [live771, coloured771]
  rw [child]
  dsimp only [result770]
  try dsimp only [colour, result771]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree772_agree : tree772 = literal772 := by
  rw [tree772_def, tree762_agree, tree771_agree]
  rfl
theorem node772_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree772 live772 coloured772 = result772 := by
  rw [tree772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node762_eq
  unfold live762 coloured762 at child
  try dsimp only [live772, coloured772]
  rw [child]
  dsimp only [result762]
  have child := node771_eq
  unfold live771 coloured771 at child
  try dsimp only [live772, coloured772]
  rw [child]
  dsimp only [result771]
  try dsimp only [colour, result772]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree773_agree : tree773 = literal773 := by
  rw [tree773_def]
  rfl
theorem node773_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree773 live773 coloured773 = result773 := by
  rw [tree773_def]
  try dsimp only [colour, result773]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree774_agree : tree774 = literal774 := by
  rw [tree774_def, tree772_agree, tree773_agree]
  rfl
theorem node774_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree774 live774 coloured774 = result774 := by
  rw [tree774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node772_eq
  unfold live772 coloured772 at child
  try dsimp only [live774, coloured774]
  rw [child]
  dsimp only [result772]
  have child := node773_eq
  unfold live773 coloured773 at child
  try dsimp only [live774, coloured774]
  rw [child]
  dsimp only [result773]
  try dsimp only [colour, result774]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree775_agree : tree775 = literal775 := by
  rw [tree775_def]
  rfl
theorem node775_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree775 live775 coloured775 = result775 := by
  rw [tree775_def]
  try dsimp only [colour, result775]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree776_agree : tree776 = literal776 := by
  rw [tree776_def, tree774_agree, tree775_agree]
  rfl
theorem node776_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree776 live776 coloured776 = result776 := by
  rw [tree776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node774_eq
  unfold live774 coloured774 at child
  try dsimp only [live776, coloured776]
  rw [child]
  dsimp only [result774]
  have child := node775_eq
  unfold live775 coloured775 at child
  try dsimp only [live776, coloured776]
  rw [child]
  dsimp only [result775]
  try dsimp only [colour, result776]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree777_agree : tree777 = literal777 := by
  rw [tree777_def]
  rfl
theorem node777_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree777 live777 coloured777 = result777 := by
  rw [tree777_def]
  try dsimp only [colour, result777]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree778_agree : tree778 = literal778 := by
  rw [tree778_def]
  rfl
theorem node778_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree778 live778 coloured778 = result778 := by
  rw [tree778_def]
  try dsimp only [colour, result778]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree779_agree : tree779 = literal779 := by
  rw [tree779_def, tree777_agree, tree778_agree]
  rfl
theorem node779_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree779 live779 coloured779 = result779 := by
  rw [tree779_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node777_eq
  unfold live777 coloured777 at child
  try dsimp only [live779, coloured779]
  rw [child]
  dsimp only [result777]
  have child := node778_eq
  unfold live778 coloured778 at child
  try dsimp only [live779, coloured779]
  rw [child]
  dsimp only [result778]
  try dsimp only [colour, result779]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree780_agree : tree780 = literal780 := by
  rw [tree780_def]
  rfl
theorem node780_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree780 live780 coloured780 = result780 := by
  rw [tree780_def]
  try dsimp only [colour, result780]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree781_agree : tree781 = literal781 := by
  rw [tree781_def]
  rfl
theorem node781_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree781 live781 coloured781 = result781 := by
  rw [tree781_def]
  try dsimp only [colour, result781]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree782_agree : tree782 = literal782 := by
  rw [tree782_def, tree780_agree, tree781_agree]
  rfl
theorem node782_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree782 live782 coloured782 = result782 := by
  rw [tree782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node780_eq
  unfold live780 coloured780 at child
  try dsimp only [live782, coloured782]
  rw [child]
  dsimp only [result780]
  have child := node781_eq
  unfold live781 coloured781 at child
  try dsimp only [live782, coloured782]
  rw [child]
  dsimp only [result781]
  try dsimp only [colour, result782]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree783_agree : tree783 = literal783 := by
  rw [tree783_def, tree779_agree, tree782_agree]
  rfl
theorem node783_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree783 live783 coloured783 = result783 := by
  rw [tree783_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node779_eq
  unfold live779 coloured779 at child
  try dsimp only [live783, coloured783]
  rw [child]
  dsimp only [result779]
  have child := node782_eq
  unfold live782 coloured782 at child
  try dsimp only [live783, coloured783]
  rw [child]
  dsimp only [result782]
  try dsimp only [colour, result783]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree784_agree : tree784 = literal784 := by
  rw [tree784_def]
  rfl
theorem node784_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree784 live784 coloured784 = result784 := by
  rw [tree784_def]
  try dsimp only [colour, result784]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree785_agree : tree785 = literal785 := by
  rw [tree785_def, tree783_agree, tree784_agree]
  rfl
theorem node785_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree785 live785 coloured785 = result785 := by
  rw [tree785_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node783_eq
  unfold live783 coloured783 at child
  try dsimp only [live785, coloured785]
  rw [child]
  dsimp only [result783]
  have child := node784_eq
  unfold live784 coloured784 at child
  try dsimp only [live785, coloured785]
  rw [child]
  dsimp only [result784]
  try dsimp only [colour, result785]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree786_agree : tree786 = literal786 := by
  rw [tree786_def, tree776_agree, tree785_agree]
  rfl
theorem node786_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree786 live786 coloured786 = result786 := by
  rw [tree786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node776_eq
  unfold live776 coloured776 at child
  try dsimp only [live786, coloured786]
  rw [child]
  dsimp only [result776]
  have child := node785_eq
  unfold live785 coloured785 at child
  try dsimp only [live786, coloured786]
  rw [child]
  dsimp only [result785]
  try dsimp only [colour, result786]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree787_agree : tree787 = literal787 := by
  rw [tree787_def]
  rfl
theorem node787_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree787 live787 coloured787 = result787 := by
  rw [tree787_def]
  try dsimp only [colour, result787]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree788_agree : tree788 = literal788 := by
  rw [tree788_def, tree786_agree, tree787_agree]
  rfl
theorem node788_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree788 live788 coloured788 = result788 := by
  rw [tree788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node786_eq
  unfold live786 coloured786 at child
  try dsimp only [live788, coloured788]
  rw [child]
  dsimp only [result786]
  have child := node787_eq
  unfold live787 coloured787 at child
  try dsimp only [live788, coloured788]
  rw [child]
  dsimp only [result787]
  try dsimp only [colour, result788]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree789_agree : tree789 = literal789 := by
  rw [tree789_def]
  rfl
theorem node789_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree789 live789 coloured789 = result789 := by
  rw [tree789_def]
  try dsimp only [colour, result789]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree790_agree : tree790 = literal790 := by
  rw [tree790_def, tree788_agree, tree789_agree]
  rfl
theorem node790_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree790 live790 coloured790 = result790 := by
  rw [tree790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node788_eq
  unfold live788 coloured788 at child
  try dsimp only [live790, coloured790]
  rw [child]
  dsimp only [result788]
  have child := node789_eq
  unfold live789 coloured789 at child
  try dsimp only [live790, coloured790]
  rw [child]
  dsimp only [result789]
  try dsimp only [colour, result790]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree791_agree : tree791 = literal791 := by
  rw [tree791_def]
  rfl
theorem node791_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree791 live791 coloured791 = result791 := by
  rw [tree791_def]
  try dsimp only [colour, result791]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree792_agree : tree792 = literal792 := by
  rw [tree792_def, tree790_agree, tree791_agree]
  rfl
theorem node792_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree792 live792 coloured792 = result792 := by
  rw [tree792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node790_eq
  unfold live790 coloured790 at child
  try dsimp only [live792, coloured792]
  rw [child]
  dsimp only [result790]
  have child := node791_eq
  unfold live791 coloured791 at child
  try dsimp only [live792, coloured792]
  rw [child]
  dsimp only [result791]
  try dsimp only [colour, result792]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree793_agree : tree793 = literal793 := by
  rw [tree793_def]
  rfl
theorem node793_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree793 live793 coloured793 = result793 := by
  rw [tree793_def]
  try dsimp only [colour, result793]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree794_agree : tree794 = literal794 := by
  rw [tree794_def]
  rfl
theorem node794_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree794 live794 coloured794 = result794 := by
  rw [tree794_def]
  try dsimp only [colour, result794]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree795_agree : tree795 = literal795 := by
  rw [tree795_def, tree793_agree, tree794_agree]
  rfl
theorem node795_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree795 live795 coloured795 = result795 := by
  rw [tree795_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node793_eq
  unfold live793 coloured793 at child
  try dsimp only [live795, coloured795]
  rw [child]
  dsimp only [result793]
  have child := node794_eq
  unfold live794 coloured794 at child
  try dsimp only [live795, coloured795]
  rw [child]
  dsimp only [result794]
  try dsimp only [colour, result795]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree796_agree : tree796 = literal796 := by
  rw [tree796_def]
  rfl
theorem node796_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree796 live796 coloured796 = result796 := by
  rw [tree796_def]
  try dsimp only [colour, result796]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree797_agree : tree797 = literal797 := by
  rw [tree797_def]
  rfl
theorem node797_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree797 live797 coloured797 = result797 := by
  rw [tree797_def]
  try dsimp only [colour, result797]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree798_agree : tree798 = literal798 := by
  rw [tree798_def, tree796_agree, tree797_agree]
  rfl
theorem node798_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree798 live798 coloured798 = result798 := by
  rw [tree798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node796_eq
  unfold live796 coloured796 at child
  try dsimp only [live798, coloured798]
  rw [child]
  dsimp only [result796]
  have child := node797_eq
  unfold live797 coloured797 at child
  try dsimp only [live798, coloured798]
  rw [child]
  dsimp only [result797]
  try dsimp only [colour, result798]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree799_agree : tree799 = literal799 := by
  rw [tree799_def]
  rfl
theorem node799_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree799 live799 coloured799 = result799 := by
  rw [tree799_def]
  try dsimp only [colour, result799]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree800_agree : tree800 = literal800 := by
  rw [tree800_def, tree798_agree, tree799_agree]
  rfl
theorem node800_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree800 live800 coloured800 = result800 := by
  rw [tree800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node798_eq
  unfold live798 coloured798 at child
  try dsimp only [live800, coloured800]
  rw [child]
  dsimp only [result798]
  have child := node799_eq
  unfold live799 coloured799 at child
  try dsimp only [live800, coloured800]
  rw [child]
  dsimp only [result799]
  try dsimp only [colour, result800]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree801_agree : tree801 = literal801 := by
  rw [tree801_def, tree795_agree, tree800_agree]
  rfl
theorem node801_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree801 live801 coloured801 = result801 := by
  rw [tree801_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node795_eq
  unfold live795 coloured795 at child
  try dsimp only [live801, coloured801]
  rw [child]
  dsimp only [result795]
  have child := node800_eq
  unfold live800 coloured800 at child
  try dsimp only [live801, coloured801]
  rw [child]
  dsimp only [result800]
  try dsimp only [colour, result801]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree802_agree : tree802 = literal802 := by
  rw [tree802_def, tree792_agree, tree801_agree]
  rfl
theorem node802_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree802 live802 coloured802 = result802 := by
  rw [tree802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node792_eq
  unfold live792 coloured792 at child
  try dsimp only [live802, coloured802]
  rw [child]
  dsimp only [result792]
  have child := node801_eq
  unfold live801 coloured801 at child
  try dsimp only [live802, coloured802]
  rw [child]
  dsimp only [result801]
  try dsimp only [colour, result802]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree803_agree : tree803 = literal803 := by
  rw [tree803_def]
  rfl
theorem node803_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree803 live803 coloured803 = result803 := by
  rw [tree803_def]
  try dsimp only [colour, result803]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree804_agree : tree804 = literal804 := by
  rw [tree804_def, tree802_agree, tree803_agree]
  rfl
theorem node804_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree804 live804 coloured804 = result804 := by
  rw [tree804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node802_eq
  unfold live802 coloured802 at child
  try dsimp only [live804, coloured804]
  rw [child]
  dsimp only [result802]
  have child := node803_eq
  unfold live803 coloured803 at child
  try dsimp only [live804, coloured804]
  rw [child]
  dsimp only [result803]
  try dsimp only [colour, result804]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree805_agree : tree805 = literal805 := by
  rw [tree805_def]
  rfl
theorem node805_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree805 live805 coloured805 = result805 := by
  rw [tree805_def]
  try dsimp only [colour, result805]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree806_agree : tree806 = literal806 := by
  rw [tree806_def, tree804_agree, tree805_agree]
  rfl
theorem node806_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree806 live806 coloured806 = result806 := by
  rw [tree806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node804_eq
  unfold live804 coloured804 at child
  try dsimp only [live806, coloured806]
  rw [child]
  dsimp only [result804]
  have child := node805_eq
  unfold live805 coloured805 at child
  try dsimp only [live806, coloured806]
  rw [child]
  dsimp only [result805]
  try dsimp only [colour, result806]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree807_agree : tree807 = literal807 := by
  rw [tree807_def]
  rfl
theorem node807_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree807 live807 coloured807 = result807 := by
  rw [tree807_def]
  try dsimp only [colour, result807]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree808_agree : tree808 = literal808 := by
  rw [tree808_def]
  rfl
theorem node808_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree808 live808 coloured808 = result808 := by
  rw [tree808_def]
  try dsimp only [colour, result808]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree809_agree : tree809 = literal809 := by
  rw [tree809_def, tree807_agree, tree808_agree]
  rfl
theorem node809_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree809 live809 coloured809 = result809 := by
  rw [tree809_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node807_eq
  unfold live807 coloured807 at child
  try dsimp only [live809, coloured809]
  rw [child]
  dsimp only [result807]
  have child := node808_eq
  unfold live808 coloured808 at child
  try dsimp only [live809, coloured809]
  rw [child]
  dsimp only [result808]
  try dsimp only [colour, result809]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree810_agree : tree810 = literal810 := by
  rw [tree810_def]
  rfl
theorem node810_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree810 live810 coloured810 = result810 := by
  rw [tree810_def]
  try dsimp only [colour, result810]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree811_agree : tree811 = literal811 := by
  rw [tree811_def]
  rfl
theorem node811_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree811 live811 coloured811 = result811 := by
  rw [tree811_def]
  try dsimp only [colour, result811]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree812_agree : tree812 = literal812 := by
  rw [tree812_def, tree810_agree, tree811_agree]
  rfl
theorem node812_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree812 live812 coloured812 = result812 := by
  rw [tree812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node810_eq
  unfold live810 coloured810 at child
  try dsimp only [live812, coloured812]
  rw [child]
  dsimp only [result810]
  have child := node811_eq
  unfold live811 coloured811 at child
  try dsimp only [live812, coloured812]
  rw [child]
  dsimp only [result811]
  try dsimp only [colour, result812]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree813_agree : tree813 = literal813 := by
  rw [tree813_def]
  rfl
theorem node813_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree813 live813 coloured813 = result813 := by
  rw [tree813_def]
  try dsimp only [colour, result813]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree814_agree : tree814 = literal814 := by
  rw [tree814_def, tree812_agree, tree813_agree]
  rfl
theorem node814_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree814 live814 coloured814 = result814 := by
  rw [tree814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node812_eq
  unfold live812 coloured812 at child
  try dsimp only [live814, coloured814]
  rw [child]
  dsimp only [result812]
  have child := node813_eq
  unfold live813 coloured813 at child
  try dsimp only [live814, coloured814]
  rw [child]
  dsimp only [result813]
  try dsimp only [colour, result814]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree815_agree : tree815 = literal815 := by
  rw [tree815_def, tree809_agree, tree814_agree]
  rfl
theorem node815_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree815 live815 coloured815 = result815 := by
  rw [tree815_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node809_eq
  unfold live809 coloured809 at child
  try dsimp only [live815, coloured815]
  rw [child]
  dsimp only [result809]
  have child := node814_eq
  unfold live814 coloured814 at child
  try dsimp only [live815, coloured815]
  rw [child]
  dsimp only [result814]
  try dsimp only [colour, result815]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree816_agree : tree816 = literal816 := by
  rw [tree816_def, tree806_agree, tree815_agree]
  rfl
theorem node816_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree816 live816 coloured816 = result816 := by
  rw [tree816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node806_eq
  unfold live806 coloured806 at child
  try dsimp only [live816, coloured816]
  rw [child]
  dsimp only [result806]
  have child := node815_eq
  unfold live815 coloured815 at child
  try dsimp only [live816, coloured816]
  rw [child]
  dsimp only [result815]
  try dsimp only [colour, result816]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree817_agree : tree817 = literal817 := by
  rw [tree817_def]
  rfl
theorem node817_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree817 live817 coloured817 = result817 := by
  rw [tree817_def]
  try dsimp only [colour, result817]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree818_agree : tree818 = literal818 := by
  rw [tree818_def, tree816_agree, tree817_agree]
  rfl
theorem node818_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree818 live818 coloured818 = result818 := by
  rw [tree818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node816_eq
  unfold live816 coloured816 at child
  try dsimp only [live818, coloured818]
  rw [child]
  dsimp only [result816]
  have child := node817_eq
  unfold live817 coloured817 at child
  try dsimp only [live818, coloured818]
  rw [child]
  dsimp only [result817]
  try dsimp only [colour, result818]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree819_agree : tree819 = literal819 := by
  rw [tree819_def]
  rfl
theorem node819_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree819 live819 coloured819 = result819 := by
  rw [tree819_def]
  try dsimp only [colour, result819]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree820_agree : tree820 = literal820 := by
  rw [tree820_def, tree818_agree, tree819_agree]
  rfl
theorem node820_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree820 live820 coloured820 = result820 := by
  rw [tree820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node818_eq
  unfold live818 coloured818 at child
  try dsimp only [live820, coloured820]
  rw [child]
  dsimp only [result818]
  have child := node819_eq
  unfold live819 coloured819 at child
  try dsimp only [live820, coloured820]
  rw [child]
  dsimp only [result819]
  try dsimp only [colour, result820]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree821_agree : tree821 = literal821 := by
  rw [tree821_def]
  rfl
theorem node821_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree821 live821 coloured821 = result821 := by
  rw [tree821_def]
  try dsimp only [colour, result821]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree822_agree : tree822 = literal822 := by
  rw [tree822_def, tree820_agree, tree821_agree]
  rfl
theorem node822_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree822 live822 coloured822 = result822 := by
  rw [tree822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node820_eq
  unfold live820 coloured820 at child
  try dsimp only [live822, coloured822]
  rw [child]
  dsimp only [result820]
  have child := node821_eq
  unfold live821 coloured821 at child
  try dsimp only [live822, coloured822]
  rw [child]
  dsimp only [result821]
  try dsimp only [colour, result822]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree823_agree : tree823 = literal823 := by
  rw [tree823_def]
  rfl
theorem node823_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree823 live823 coloured823 = result823 := by
  rw [tree823_def]
  try dsimp only [colour, result823]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree824_agree : tree824 = literal824 := by
  rw [tree824_def]
  rfl
theorem node824_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree824 live824 coloured824 = result824 := by
  rw [tree824_def]
  try dsimp only [colour, result824]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree825_agree : tree825 = literal825 := by
  rw [tree825_def, tree823_agree, tree824_agree]
  rfl
theorem node825_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree825 live825 coloured825 = result825 := by
  rw [tree825_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node823_eq
  unfold live823 coloured823 at child
  try dsimp only [live825, coloured825]
  rw [child]
  dsimp only [result823]
  have child := node824_eq
  unfold live824 coloured824 at child
  try dsimp only [live825, coloured825]
  rw [child]
  dsimp only [result824]
  try dsimp only [colour, result825]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree826_agree : tree826 = literal826 := by
  rw [tree826_def]
  rfl
theorem node826_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree826 live826 coloured826 = result826 := by
  rw [tree826_def]
  try dsimp only [colour, result826]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree827_agree : tree827 = literal827 := by
  rw [tree827_def, tree825_agree, tree826_agree]
  rfl
theorem node827_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree827 live827 coloured827 = result827 := by
  rw [tree827_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node825_eq
  unfold live825 coloured825 at child
  try dsimp only [live827, coloured827]
  rw [child]
  dsimp only [result825]
  have child := node826_eq
  unfold live826 coloured826 at child
  try dsimp only [live827, coloured827]
  rw [child]
  dsimp only [result826]
  try dsimp only [colour, result827]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree828_agree : tree828 = literal828 := by
  rw [tree828_def]
  rfl
theorem node828_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree828 live828 coloured828 = result828 := by
  rw [tree828_def]
  try dsimp only [colour, result828]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree829_agree : tree829 = literal829 := by
  rw [tree829_def, tree827_agree, tree828_agree]
  rfl
theorem node829_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree829 live829 coloured829 = result829 := by
  rw [tree829_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node827_eq
  unfold live827 coloured827 at child
  try dsimp only [live829, coloured829]
  rw [child]
  dsimp only [result827]
  have child := node828_eq
  unfold live828 coloured828 at child
  try dsimp only [live829, coloured829]
  rw [child]
  dsimp only [result828]
  try dsimp only [colour, result829]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree830_agree : tree830 = literal830 := by
  rw [tree830_def]
  rfl
theorem node830_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree830 live830 coloured830 = result830 := by
  rw [tree830_def]
  try dsimp only [colour, result830]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree831_agree : tree831 = literal831 := by
  rw [tree831_def, tree829_agree, tree830_agree]
  rfl
theorem node831_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree831 live831 coloured831 = result831 := by
  rw [tree831_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node829_eq
  unfold live829 coloured829 at child
  try dsimp only [live831, coloured831]
  rw [child]
  dsimp only [result829]
  have child := node830_eq
  unfold live830 coloured830 at child
  try dsimp only [live831, coloured831]
  rw [child]
  dsimp only [result830]
  try dsimp only [colour, result831]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree832_agree : tree832 = literal832 := by
  rw [tree832_def]
  rfl
theorem node832_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree832 live832 coloured832 = result832 := by
  rw [tree832_def]
  try dsimp only [colour, result832]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree833_agree : tree833 = literal833 := by
  rw [tree833_def, tree831_agree, tree832_agree]
  rfl
theorem node833_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree833 live833 coloured833 = result833 := by
  rw [tree833_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node831_eq
  unfold live831 coloured831 at child
  try dsimp only [live833, coloured833]
  rw [child]
  dsimp only [result831]
  have child := node832_eq
  unfold live832 coloured832 at child
  try dsimp only [live833, coloured833]
  rw [child]
  dsimp only [result832]
  try dsimp only [colour, result833]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree834_agree : tree834 = literal834 := by
  rw [tree834_def]
  rfl
theorem node834_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree834 live834 coloured834 = result834 := by
  rw [tree834_def]
  try dsimp only [colour, result834]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree835_agree : tree835 = literal835 := by
  rw [tree835_def, tree833_agree, tree834_agree]
  rfl
theorem node835_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree835 live835 coloured835 = result835 := by
  rw [tree835_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node833_eq
  unfold live833 coloured833 at child
  try dsimp only [live835, coloured835]
  rw [child]
  dsimp only [result833]
  have child := node834_eq
  unfold live834 coloured834 at child
  try dsimp only [live835, coloured835]
  rw [child]
  dsimp only [result834]
  try dsimp only [colour, result835]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree836_agree : tree836 = literal836 := by
  rw [tree836_def]
  rfl
theorem node836_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree836 live836 coloured836 = result836 := by
  rw [tree836_def]
  try dsimp only [colour, result836]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree837_agree : tree837 = literal837 := by
  rw [tree837_def, tree835_agree, tree836_agree]
  rfl
theorem node837_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree837 live837 coloured837 = result837 := by
  rw [tree837_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node835_eq
  unfold live835 coloured835 at child
  try dsimp only [live837, coloured837]
  rw [child]
  dsimp only [result835]
  have child := node836_eq
  unfold live836 coloured836 at child
  try dsimp only [live837, coloured837]
  rw [child]
  dsimp only [result836]
  try dsimp only [colour, result837]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree838_agree : tree838 = literal838 := by
  rw [tree838_def]
  rfl
theorem node838_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree838 live838 coloured838 = result838 := by
  rw [tree838_def]
  try dsimp only [colour, result838]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree839_agree : tree839 = literal839 := by
  rw [tree839_def, tree837_agree, tree838_agree]
  rfl
theorem node839_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree839 live839 coloured839 = result839 := by
  rw [tree839_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node837_eq
  unfold live837 coloured837 at child
  try dsimp only [live839, coloured839]
  rw [child]
  dsimp only [result837]
  have child := node838_eq
  unfold live838 coloured838 at child
  try dsimp only [live839, coloured839]
  rw [child]
  dsimp only [result838]
  try dsimp only [colour, result839]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree840_agree : tree840 = literal840 := by
  rw [tree840_def, tree822_agree, tree839_agree]
  rfl
theorem node840_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree840 live840 coloured840 = result840 := by
  rw [tree840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node822_eq
  unfold live822 coloured822 at child
  try dsimp only [live840, coloured840]
  rw [child]
  dsimp only [result822]
  have child := node839_eq
  unfold live839 coloured839 at child
  try dsimp only [live840, coloured840]
  rw [child]
  dsimp only [result839]
  try dsimp only [colour, result840]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree841_agree : tree841 = literal841 := by
  rw [tree841_def]
  rfl
theorem node841_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree841 live841 coloured841 = result841 := by
  rw [tree841_def]
  try dsimp only [colour, result841]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree842_agree : tree842 = literal842 := by
  rw [tree842_def, tree840_agree, tree841_agree]
  rfl
theorem node842_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree842 live842 coloured842 = result842 := by
  rw [tree842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node840_eq
  unfold live840 coloured840 at child
  try dsimp only [live842, coloured842]
  rw [child]
  dsimp only [result840]
  have child := node841_eq
  unfold live841 coloured841 at child
  try dsimp only [live842, coloured842]
  rw [child]
  dsimp only [result841]
  try dsimp only [colour, result842]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree843_agree : tree843 = literal843 := by
  rw [tree843_def]
  rfl
theorem node843_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree843 live843 coloured843 = result843 := by
  rw [tree843_def]
  try dsimp only [colour, result843]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree844_agree : tree844 = literal844 := by
  rw [tree844_def, tree842_agree, tree843_agree]
  rfl
theorem node844_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree844 live844 coloured844 = result844 := by
  rw [tree844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node842_eq
  unfold live842 coloured842 at child
  try dsimp only [live844, coloured844]
  rw [child]
  dsimp only [result842]
  have child := node843_eq
  unfold live843 coloured843 at child
  try dsimp only [live844, coloured844]
  rw [child]
  dsimp only [result843]
  try dsimp only [colour, result844]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree845_agree : tree845 = literal845 := by
  rw [tree845_def]
  rfl
theorem node845_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree845 live845 coloured845 = result845 := by
  rw [tree845_def]
  try dsimp only [colour, result845]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree846_agree : tree846 = literal846 := by
  rw [tree846_def, tree844_agree, tree845_agree]
  rfl
theorem node846_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree846 live846 coloured846 = result846 := by
  rw [tree846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node844_eq
  unfold live844 coloured844 at child
  try dsimp only [live846, coloured846]
  rw [child]
  dsimp only [result844]
  have child := node845_eq
  unfold live845 coloured845 at child
  try dsimp only [live846, coloured846]
  rw [child]
  dsimp only [result845]
  try dsimp only [colour, result846]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree847_agree : tree847 = literal847 := by
  rw [tree847_def]
  rfl
theorem node847_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree847 live847 coloured847 = result847 := by
  rw [tree847_def]
  try dsimp only [colour, result847]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree848_agree : tree848 = literal848 := by
  rw [tree848_def]
  rfl
theorem node848_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree848 live848 coloured848 = result848 := by
  rw [tree848_def]
  try dsimp only [colour, result848]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree849_agree : tree849 = literal849 := by
  rw [tree849_def, tree847_agree, tree848_agree]
  rfl
theorem node849_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree849 live849 coloured849 = result849 := by
  rw [tree849_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node847_eq
  unfold live847 coloured847 at child
  try dsimp only [live849, coloured849]
  rw [child]
  dsimp only [result847]
  have child := node848_eq
  unfold live848 coloured848 at child
  try dsimp only [live849, coloured849]
  rw [child]
  dsimp only [result848]
  try dsimp only [colour, result849]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree850_agree : tree850 = literal850 := by
  rw [tree850_def]
  rfl
theorem node850_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree850 live850 coloured850 = result850 := by
  rw [tree850_def]
  try dsimp only [colour, result850]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree851_agree : tree851 = literal851 := by
  rw [tree851_def]
  rfl
theorem node851_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree851 live851 coloured851 = result851 := by
  rw [tree851_def]
  try dsimp only [colour, result851]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree852_agree : tree852 = literal852 := by
  rw [tree852_def, tree850_agree, tree851_agree]
  rfl
theorem node852_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree852 live852 coloured852 = result852 := by
  rw [tree852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node850_eq
  unfold live850 coloured850 at child
  try dsimp only [live852, coloured852]
  rw [child]
  dsimp only [result850]
  have child := node851_eq
  unfold live851 coloured851 at child
  try dsimp only [live852, coloured852]
  rw [child]
  dsimp only [result851]
  try dsimp only [colour, result852]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree853_agree : tree853 = literal853 := by
  rw [tree853_def]
  rfl
theorem node853_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree853 live853 coloured853 = result853 := by
  rw [tree853_def]
  try dsimp only [colour, result853]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree854_agree : tree854 = literal854 := by
  rw [tree854_def, tree852_agree, tree853_agree]
  rfl
theorem node854_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree854 live854 coloured854 = result854 := by
  rw [tree854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node852_eq
  unfold live852 coloured852 at child
  try dsimp only [live854, coloured854]
  rw [child]
  dsimp only [result852]
  have child := node853_eq
  unfold live853 coloured853 at child
  try dsimp only [live854, coloured854]
  rw [child]
  dsimp only [result853]
  try dsimp only [colour, result854]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree855_agree : tree855 = literal855 := by
  rw [tree855_def, tree849_agree, tree854_agree]
  rfl
theorem node855_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree855 live855 coloured855 = result855 := by
  rw [tree855_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node849_eq
  unfold live849 coloured849 at child
  try dsimp only [live855, coloured855]
  rw [child]
  dsimp only [result849]
  have child := node854_eq
  unfold live854 coloured854 at child
  try dsimp only [live855, coloured855]
  rw [child]
  dsimp only [result854]
  try dsimp only [colour, result855]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree856_agree : tree856 = literal856 := by
  rw [tree856_def, tree846_agree, tree855_agree]
  rfl
theorem node856_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree856 live856 coloured856 = result856 := by
  rw [tree856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node846_eq
  unfold live846 coloured846 at child
  try dsimp only [live856, coloured856]
  rw [child]
  dsimp only [result846]
  have child := node855_eq
  unfold live855 coloured855 at child
  try dsimp only [live856, coloured856]
  rw [child]
  dsimp only [result855]
  try dsimp only [colour, result856]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree857_agree : tree857 = literal857 := by
  rw [tree857_def]
  rfl
theorem node857_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree857 live857 coloured857 = result857 := by
  rw [tree857_def]
  try dsimp only [colour, result857]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree858_agree : tree858 = literal858 := by
  rw [tree858_def, tree856_agree, tree857_agree]
  rfl
theorem node858_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree858 live858 coloured858 = result858 := by
  rw [tree858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node856_eq
  unfold live856 coloured856 at child
  try dsimp only [live858, coloured858]
  rw [child]
  dsimp only [result856]
  have child := node857_eq
  unfold live857 coloured857 at child
  try dsimp only [live858, coloured858]
  rw [child]
  dsimp only [result857]
  try dsimp only [colour, result858]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree859_agree : tree859 = literal859 := by
  rw [tree859_def]
  rfl
theorem node859_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree859 live859 coloured859 = result859 := by
  rw [tree859_def]
  try dsimp only [colour, result859]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree860_agree : tree860 = literal860 := by
  rw [tree860_def, tree858_agree, tree859_agree]
  rfl
theorem node860_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree860 live860 coloured860 = result860 := by
  rw [tree860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node858_eq
  unfold live858 coloured858 at child
  try dsimp only [live860, coloured860]
  rw [child]
  dsimp only [result858]
  have child := node859_eq
  unfold live859 coloured859 at child
  try dsimp only [live860, coloured860]
  rw [child]
  dsimp only [result859]
  try dsimp only [colour, result860]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree861_agree : tree861 = literal861 := by
  rw [tree861_def]
  rfl
theorem node861_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree861 live861 coloured861 = result861 := by
  rw [tree861_def]
  try dsimp only [colour, result861]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree862_agree : tree862 = literal862 := by
  rw [tree862_def, tree860_agree, tree861_agree]
  rfl
theorem node862_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree862 live862 coloured862 = result862 := by
  rw [tree862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node860_eq
  unfold live860 coloured860 at child
  try dsimp only [live862, coloured862]
  rw [child]
  dsimp only [result860]
  have child := node861_eq
  unfold live861 coloured861 at child
  try dsimp only [live862, coloured862]
  rw [child]
  dsimp only [result861]
  try dsimp only [colour, result862]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree863_agree : tree863 = literal863 := by
  rw [tree863_def]
  rfl
theorem node863_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree863 live863 coloured863 = result863 := by
  rw [tree863_def]
  try dsimp only [colour, result863]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages874
