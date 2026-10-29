import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages874.Data
import InitECandidate.Proofs.ClashComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages874
theorem tree768_agree_conditional
    (child0 : tree766 = literal766)
    (child1 : tree767 = literal767) : tree768 = literal768 := by
  rw [tree768_def, child0, child1]
  rfl
theorem node768_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree766 live766 coloured766 = result766)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree767 live767 coloured767 = result767) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree768 live768 coloured768 = result768 := by
  rw [tree768_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live766 coloured766 at child
  try dsimp only [live768, coloured768]
  rw [child]
  dsimp only [result766]
  have child := child1
  unfold live767 coloured767 at child
  try dsimp only [live768, coloured768]
  rw [child]
  dsimp only [result767]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree769_agree_conditional : tree769 = literal769 := by
  rw [tree769_def]
  rfl
theorem node769_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree769 live769 coloured769 = result769 := by
  rw [tree769_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree770_agree_conditional
    (child0 : tree768 = literal768)
    (child1 : tree769 = literal769) : tree770 = literal770 := by
  rw [tree770_def, child0, child1]
  rfl
theorem node770_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree768 live768 coloured768 = result768)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree769 live769 coloured769 = result769) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree770 live770 coloured770 = result770 := by
  rw [tree770_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live768 coloured768 at child
  try dsimp only [live770, coloured770]
  rw [child]
  dsimp only [result768]
  have child := child1
  unfold live769 coloured769 at child
  try dsimp only [live770, coloured770]
  rw [child]
  dsimp only [result769]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree771_agree_conditional
    (child0 : tree765 = literal765)
    (child1 : tree770 = literal770) : tree771 = literal771 := by
  rw [tree771_def, child0, child1]
  rfl
theorem node771_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree765 live765 coloured765 = result765)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree770 live770 coloured770 = result770) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree771 live771 coloured771 = result771 := by
  rw [tree771_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live765 coloured765 at child
  try dsimp only [live771, coloured771]
  rw [child]
  dsimp only [result765]
  have child := child1
  unfold live770 coloured770 at child
  try dsimp only [live771, coloured771]
  rw [child]
  dsimp only [result770]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree772_agree_conditional
    (child0 : tree762 = literal762)
    (child1 : tree771 = literal771) : tree772 = literal772 := by
  rw [tree772_def, child0, child1]
  rfl
theorem node772_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree762 live762 coloured762 = result762)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree771 live771 coloured771 = result771) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree772 live772 coloured772 = result772 := by
  rw [tree772_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live762 coloured762 at child
  try dsimp only [live772, coloured772]
  rw [child]
  dsimp only [result762]
  have child := child1
  unfold live771 coloured771 at child
  try dsimp only [live772, coloured772]
  rw [child]
  dsimp only [result771]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree773_agree_conditional : tree773 = literal773 := by
  rw [tree773_def]
  rfl
theorem node773_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree773 live773 coloured773 = result773 := by
  rw [tree773_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree774_agree_conditional
    (child0 : tree772 = literal772)
    (child1 : tree773 = literal773) : tree774 = literal774 := by
  rw [tree774_def, child0, child1]
  rfl
theorem node774_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree772 live772 coloured772 = result772)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree773 live773 coloured773 = result773) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree774 live774 coloured774 = result774 := by
  rw [tree774_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live772 coloured772 at child
  try dsimp only [live774, coloured774]
  rw [child]
  dsimp only [result772]
  have child := child1
  unfold live773 coloured773 at child
  try dsimp only [live774, coloured774]
  rw [child]
  dsimp only [result773]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree775_agree_conditional : tree775 = literal775 := by
  rw [tree775_def]
  rfl
theorem node775_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree775 live775 coloured775 = result775 := by
  rw [tree775_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree776_agree_conditional
    (child0 : tree774 = literal774)
    (child1 : tree775 = literal775) : tree776 = literal776 := by
  rw [tree776_def, child0, child1]
  rfl
theorem node776_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree774 live774 coloured774 = result774)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree775 live775 coloured775 = result775) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree776 live776 coloured776 = result776 := by
  rw [tree776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live774 coloured774 at child
  try dsimp only [live776, coloured776]
  rw [child]
  dsimp only [result774]
  have child := child1
  unfold live775 coloured775 at child
  try dsimp only [live776, coloured776]
  rw [child]
  dsimp only [result775]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree777_agree_conditional : tree777 = literal777 := by
  rw [tree777_def]
  rfl
theorem node777_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree777 live777 coloured777 = result777 := by
  rw [tree777_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree778_agree_conditional : tree778 = literal778 := by
  rw [tree778_def]
  rfl
theorem node778_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree778 live778 coloured778 = result778 := by
  rw [tree778_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree779_agree_conditional
    (child0 : tree777 = literal777)
    (child1 : tree778 = literal778) : tree779 = literal779 := by
  rw [tree779_def, child0, child1]
  rfl
theorem node779_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree777 live777 coloured777 = result777)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree778 live778 coloured778 = result778) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree779 live779 coloured779 = result779 := by
  rw [tree779_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live777 coloured777 at child
  try dsimp only [live779, coloured779]
  rw [child]
  dsimp only [result777]
  have child := child1
  unfold live778 coloured778 at child
  try dsimp only [live779, coloured779]
  rw [child]
  dsimp only [result778]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree780_agree_conditional : tree780 = literal780 := by
  rw [tree780_def]
  rfl
theorem node780_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree780 live780 coloured780 = result780 := by
  rw [tree780_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree781_agree_conditional : tree781 = literal781 := by
  rw [tree781_def]
  rfl
theorem node781_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree781 live781 coloured781 = result781 := by
  rw [tree781_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree782_agree_conditional
    (child0 : tree780 = literal780)
    (child1 : tree781 = literal781) : tree782 = literal782 := by
  rw [tree782_def, child0, child1]
  rfl
theorem node782_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree780 live780 coloured780 = result780)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree781 live781 coloured781 = result781) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree782 live782 coloured782 = result782 := by
  rw [tree782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live780 coloured780 at child
  try dsimp only [live782, coloured782]
  rw [child]
  dsimp only [result780]
  have child := child1
  unfold live781 coloured781 at child
  try dsimp only [live782, coloured782]
  rw [child]
  dsimp only [result781]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree783_agree_conditional
    (child0 : tree779 = literal779)
    (child1 : tree782 = literal782) : tree783 = literal783 := by
  rw [tree783_def, child0, child1]
  rfl
theorem node783_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree779 live779 coloured779 = result779)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree782 live782 coloured782 = result782) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree783 live783 coloured783 = result783 := by
  rw [tree783_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live779 coloured779 at child
  try dsimp only [live783, coloured783]
  rw [child]
  dsimp only [result779]
  have child := child1
  unfold live782 coloured782 at child
  try dsimp only [live783, coloured783]
  rw [child]
  dsimp only [result782]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree784_agree_conditional : tree784 = literal784 := by
  rw [tree784_def]
  rfl
theorem node784_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree784 live784 coloured784 = result784 := by
  rw [tree784_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree785_agree_conditional
    (child0 : tree783 = literal783)
    (child1 : tree784 = literal784) : tree785 = literal785 := by
  rw [tree785_def, child0, child1]
  rfl
theorem node785_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree783 live783 coloured783 = result783)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree784 live784 coloured784 = result784) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree785 live785 coloured785 = result785 := by
  rw [tree785_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live783 coloured783 at child
  try dsimp only [live785, coloured785]
  rw [child]
  dsimp only [result783]
  have child := child1
  unfold live784 coloured784 at child
  try dsimp only [live785, coloured785]
  rw [child]
  dsimp only [result784]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree786_agree_conditional
    (child0 : tree776 = literal776)
    (child1 : tree785 = literal785) : tree786 = literal786 := by
  rw [tree786_def, child0, child1]
  rfl
theorem node786_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree776 live776 coloured776 = result776)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree785 live785 coloured785 = result785) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree786 live786 coloured786 = result786 := by
  rw [tree786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live776 coloured776 at child
  try dsimp only [live786, coloured786]
  rw [child]
  dsimp only [result776]
  have child := child1
  unfold live785 coloured785 at child
  try dsimp only [live786, coloured786]
  rw [child]
  dsimp only [result785]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree787_agree_conditional : tree787 = literal787 := by
  rw [tree787_def]
  rfl
theorem node787_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree787 live787 coloured787 = result787 := by
  rw [tree787_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree788_agree_conditional
    (child0 : tree786 = literal786)
    (child1 : tree787 = literal787) : tree788 = literal788 := by
  rw [tree788_def, child0, child1]
  rfl
theorem node788_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree786 live786 coloured786 = result786)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree787 live787 coloured787 = result787) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree788 live788 coloured788 = result788 := by
  rw [tree788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live786 coloured786 at child
  try dsimp only [live788, coloured788]
  rw [child]
  dsimp only [result786]
  have child := child1
  unfold live787 coloured787 at child
  try dsimp only [live788, coloured788]
  rw [child]
  dsimp only [result787]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree789_agree_conditional : tree789 = literal789 := by
  rw [tree789_def]
  rfl
theorem node789_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree789 live789 coloured789 = result789 := by
  rw [tree789_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree790_agree_conditional
    (child0 : tree788 = literal788)
    (child1 : tree789 = literal789) : tree790 = literal790 := by
  rw [tree790_def, child0, child1]
  rfl
theorem node790_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree788 live788 coloured788 = result788)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree789 live789 coloured789 = result789) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree790 live790 coloured790 = result790 := by
  rw [tree790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live788 coloured788 at child
  try dsimp only [live790, coloured790]
  rw [child]
  dsimp only [result788]
  have child := child1
  unfold live789 coloured789 at child
  try dsimp only [live790, coloured790]
  rw [child]
  dsimp only [result789]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree791_agree_conditional : tree791 = literal791 := by
  rw [tree791_def]
  rfl
theorem node791_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree791 live791 coloured791 = result791 := by
  rw [tree791_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree792_agree_conditional
    (child0 : tree790 = literal790)
    (child1 : tree791 = literal791) : tree792 = literal792 := by
  rw [tree792_def, child0, child1]
  rfl
theorem node792_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree790 live790 coloured790 = result790)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree791 live791 coloured791 = result791) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree792 live792 coloured792 = result792 := by
  rw [tree792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live790 coloured790 at child
  try dsimp only [live792, coloured792]
  rw [child]
  dsimp only [result790]
  have child := child1
  unfold live791 coloured791 at child
  try dsimp only [live792, coloured792]
  rw [child]
  dsimp only [result791]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree793_agree_conditional : tree793 = literal793 := by
  rw [tree793_def]
  rfl
theorem node793_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree793 live793 coloured793 = result793 := by
  rw [tree793_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree794_agree_conditional : tree794 = literal794 := by
  rw [tree794_def]
  rfl
theorem node794_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree794 live794 coloured794 = result794 := by
  rw [tree794_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree795_agree_conditional
    (child0 : tree793 = literal793)
    (child1 : tree794 = literal794) : tree795 = literal795 := by
  rw [tree795_def, child0, child1]
  rfl
theorem node795_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree793 live793 coloured793 = result793)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree794 live794 coloured794 = result794) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree795 live795 coloured795 = result795 := by
  rw [tree795_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live793 coloured793 at child
  try dsimp only [live795, coloured795]
  rw [child]
  dsimp only [result793]
  have child := child1
  unfold live794 coloured794 at child
  try dsimp only [live795, coloured795]
  rw [child]
  dsimp only [result794]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree796_agree_conditional : tree796 = literal796 := by
  rw [tree796_def]
  rfl
theorem node796_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree796 live796 coloured796 = result796 := by
  rw [tree796_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree797_agree_conditional : tree797 = literal797 := by
  rw [tree797_def]
  rfl
theorem node797_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree797 live797 coloured797 = result797 := by
  rw [tree797_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree798_agree_conditional
    (child0 : tree796 = literal796)
    (child1 : tree797 = literal797) : tree798 = literal798 := by
  rw [tree798_def, child0, child1]
  rfl
theorem node798_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree796 live796 coloured796 = result796)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree797 live797 coloured797 = result797) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree798 live798 coloured798 = result798 := by
  rw [tree798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live796 coloured796 at child
  try dsimp only [live798, coloured798]
  rw [child]
  dsimp only [result796]
  have child := child1
  unfold live797 coloured797 at child
  try dsimp only [live798, coloured798]
  rw [child]
  dsimp only [result797]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree799_agree_conditional : tree799 = literal799 := by
  rw [tree799_def]
  rfl
theorem node799_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree799 live799 coloured799 = result799 := by
  rw [tree799_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree800_agree_conditional
    (child0 : tree798 = literal798)
    (child1 : tree799 = literal799) : tree800 = literal800 := by
  rw [tree800_def, child0, child1]
  rfl
theorem node800_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree798 live798 coloured798 = result798)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree799 live799 coloured799 = result799) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree800 live800 coloured800 = result800 := by
  rw [tree800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live798 coloured798 at child
  try dsimp only [live800, coloured800]
  rw [child]
  dsimp only [result798]
  have child := child1
  unfold live799 coloured799 at child
  try dsimp only [live800, coloured800]
  rw [child]
  dsimp only [result799]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree801_agree_conditional
    (child0 : tree795 = literal795)
    (child1 : tree800 = literal800) : tree801 = literal801 := by
  rw [tree801_def, child0, child1]
  rfl
theorem node801_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree795 live795 coloured795 = result795)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree800 live800 coloured800 = result800) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree801 live801 coloured801 = result801 := by
  rw [tree801_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live795 coloured795 at child
  try dsimp only [live801, coloured801]
  rw [child]
  dsimp only [result795]
  have child := child1
  unfold live800 coloured800 at child
  try dsimp only [live801, coloured801]
  rw [child]
  dsimp only [result800]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree802_agree_conditional
    (child0 : tree792 = literal792)
    (child1 : tree801 = literal801) : tree802 = literal802 := by
  rw [tree802_def, child0, child1]
  rfl
theorem node802_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree792 live792 coloured792 = result792)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree801 live801 coloured801 = result801) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree802 live802 coloured802 = result802 := by
  rw [tree802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live792 coloured792 at child
  try dsimp only [live802, coloured802]
  rw [child]
  dsimp only [result792]
  have child := child1
  unfold live801 coloured801 at child
  try dsimp only [live802, coloured802]
  rw [child]
  dsimp only [result801]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree803_agree_conditional : tree803 = literal803 := by
  rw [tree803_def]
  rfl
theorem node803_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree803 live803 coloured803 = result803 := by
  rw [tree803_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree804_agree_conditional
    (child0 : tree802 = literal802)
    (child1 : tree803 = literal803) : tree804 = literal804 := by
  rw [tree804_def, child0, child1]
  rfl
theorem node804_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree802 live802 coloured802 = result802)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree803 live803 coloured803 = result803) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree804 live804 coloured804 = result804 := by
  rw [tree804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live802 coloured802 at child
  try dsimp only [live804, coloured804]
  rw [child]
  dsimp only [result802]
  have child := child1
  unfold live803 coloured803 at child
  try dsimp only [live804, coloured804]
  rw [child]
  dsimp only [result803]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree805_agree_conditional : tree805 = literal805 := by
  rw [tree805_def]
  rfl
theorem node805_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree805 live805 coloured805 = result805 := by
  rw [tree805_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree806_agree_conditional
    (child0 : tree804 = literal804)
    (child1 : tree805 = literal805) : tree806 = literal806 := by
  rw [tree806_def, child0, child1]
  rfl
theorem node806_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree804 live804 coloured804 = result804)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree805 live805 coloured805 = result805) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree806 live806 coloured806 = result806 := by
  rw [tree806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live804 coloured804 at child
  try dsimp only [live806, coloured806]
  rw [child]
  dsimp only [result804]
  have child := child1
  unfold live805 coloured805 at child
  try dsimp only [live806, coloured806]
  rw [child]
  dsimp only [result805]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree807_agree_conditional : tree807 = literal807 := by
  rw [tree807_def]
  rfl
theorem node807_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree807 live807 coloured807 = result807 := by
  rw [tree807_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree808_agree_conditional : tree808 = literal808 := by
  rw [tree808_def]
  rfl
theorem node808_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree808 live808 coloured808 = result808 := by
  rw [tree808_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree809_agree_conditional
    (child0 : tree807 = literal807)
    (child1 : tree808 = literal808) : tree809 = literal809 := by
  rw [tree809_def, child0, child1]
  rfl
theorem node809_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree807 live807 coloured807 = result807)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree808 live808 coloured808 = result808) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree809 live809 coloured809 = result809 := by
  rw [tree809_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live807 coloured807 at child
  try dsimp only [live809, coloured809]
  rw [child]
  dsimp only [result807]
  have child := child1
  unfold live808 coloured808 at child
  try dsimp only [live809, coloured809]
  rw [child]
  dsimp only [result808]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree810_agree_conditional : tree810 = literal810 := by
  rw [tree810_def]
  rfl
theorem node810_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree810 live810 coloured810 = result810 := by
  rw [tree810_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree811_agree_conditional : tree811 = literal811 := by
  rw [tree811_def]
  rfl
theorem node811_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree811 live811 coloured811 = result811 := by
  rw [tree811_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree812_agree_conditional
    (child0 : tree810 = literal810)
    (child1 : tree811 = literal811) : tree812 = literal812 := by
  rw [tree812_def, child0, child1]
  rfl
theorem node812_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree810 live810 coloured810 = result810)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree811 live811 coloured811 = result811) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree812 live812 coloured812 = result812 := by
  rw [tree812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live810 coloured810 at child
  try dsimp only [live812, coloured812]
  rw [child]
  dsimp only [result810]
  have child := child1
  unfold live811 coloured811 at child
  try dsimp only [live812, coloured812]
  rw [child]
  dsimp only [result811]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree813_agree_conditional : tree813 = literal813 := by
  rw [tree813_def]
  rfl
theorem node813_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree813 live813 coloured813 = result813 := by
  rw [tree813_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree814_agree_conditional
    (child0 : tree812 = literal812)
    (child1 : tree813 = literal813) : tree814 = literal814 := by
  rw [tree814_def, child0, child1]
  rfl
theorem node814_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree812 live812 coloured812 = result812)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree813 live813 coloured813 = result813) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree814 live814 coloured814 = result814 := by
  rw [tree814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live812 coloured812 at child
  try dsimp only [live814, coloured814]
  rw [child]
  dsimp only [result812]
  have child := child1
  unfold live813 coloured813 at child
  try dsimp only [live814, coloured814]
  rw [child]
  dsimp only [result813]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree815_agree_conditional
    (child0 : tree809 = literal809)
    (child1 : tree814 = literal814) : tree815 = literal815 := by
  rw [tree815_def, child0, child1]
  rfl
theorem node815_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree809 live809 coloured809 = result809)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree814 live814 coloured814 = result814) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree815 live815 coloured815 = result815 := by
  rw [tree815_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live809 coloured809 at child
  try dsimp only [live815, coloured815]
  rw [child]
  dsimp only [result809]
  have child := child1
  unfold live814 coloured814 at child
  try dsimp only [live815, coloured815]
  rw [child]
  dsimp only [result814]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree816_agree_conditional
    (child0 : tree806 = literal806)
    (child1 : tree815 = literal815) : tree816 = literal816 := by
  rw [tree816_def, child0, child1]
  rfl
theorem node816_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree806 live806 coloured806 = result806)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree815 live815 coloured815 = result815) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree816 live816 coloured816 = result816 := by
  rw [tree816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live806 coloured806 at child
  try dsimp only [live816, coloured816]
  rw [child]
  dsimp only [result806]
  have child := child1
  unfold live815 coloured815 at child
  try dsimp only [live816, coloured816]
  rw [child]
  dsimp only [result815]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree817_agree_conditional : tree817 = literal817 := by
  rw [tree817_def]
  rfl
theorem node817_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree817 live817 coloured817 = result817 := by
  rw [tree817_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree818_agree_conditional
    (child0 : tree816 = literal816)
    (child1 : tree817 = literal817) : tree818 = literal818 := by
  rw [tree818_def, child0, child1]
  rfl
theorem node818_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree816 live816 coloured816 = result816)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree817 live817 coloured817 = result817) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree818 live818 coloured818 = result818 := by
  rw [tree818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live816 coloured816 at child
  try dsimp only [live818, coloured818]
  rw [child]
  dsimp only [result816]
  have child := child1
  unfold live817 coloured817 at child
  try dsimp only [live818, coloured818]
  rw [child]
  dsimp only [result817]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree819_agree_conditional : tree819 = literal819 := by
  rw [tree819_def]
  rfl
theorem node819_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree819 live819 coloured819 = result819 := by
  rw [tree819_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree820_agree_conditional
    (child0 : tree818 = literal818)
    (child1 : tree819 = literal819) : tree820 = literal820 := by
  rw [tree820_def, child0, child1]
  rfl
theorem node820_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree818 live818 coloured818 = result818)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree819 live819 coloured819 = result819) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree820 live820 coloured820 = result820 := by
  rw [tree820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live818 coloured818 at child
  try dsimp only [live820, coloured820]
  rw [child]
  dsimp only [result818]
  have child := child1
  unfold live819 coloured819 at child
  try dsimp only [live820, coloured820]
  rw [child]
  dsimp only [result819]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree821_agree_conditional : tree821 = literal821 := by
  rw [tree821_def]
  rfl
theorem node821_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree821 live821 coloured821 = result821 := by
  rw [tree821_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree822_agree_conditional
    (child0 : tree820 = literal820)
    (child1 : tree821 = literal821) : tree822 = literal822 := by
  rw [tree822_def, child0, child1]
  rfl
theorem node822_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree820 live820 coloured820 = result820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree821 live821 coloured821 = result821) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree822 live822 coloured822 = result822 := by
  rw [tree822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live820 coloured820 at child
  try dsimp only [live822, coloured822]
  rw [child]
  dsimp only [result820]
  have child := child1
  unfold live821 coloured821 at child
  try dsimp only [live822, coloured822]
  rw [child]
  dsimp only [result821]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree823_agree_conditional : tree823 = literal823 := by
  rw [tree823_def]
  rfl
theorem node823_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree823 live823 coloured823 = result823 := by
  rw [tree823_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree824_agree_conditional : tree824 = literal824 := by
  rw [tree824_def]
  rfl
theorem node824_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree824 live824 coloured824 = result824 := by
  rw [tree824_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree825_agree_conditional
    (child0 : tree823 = literal823)
    (child1 : tree824 = literal824) : tree825 = literal825 := by
  rw [tree825_def, child0, child1]
  rfl
theorem node825_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree823 live823 coloured823 = result823)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree824 live824 coloured824 = result824) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree825 live825 coloured825 = result825 := by
  rw [tree825_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live823 coloured823 at child
  try dsimp only [live825, coloured825]
  rw [child]
  dsimp only [result823]
  have child := child1
  unfold live824 coloured824 at child
  try dsimp only [live825, coloured825]
  rw [child]
  dsimp only [result824]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree826_agree_conditional : tree826 = literal826 := by
  rw [tree826_def]
  rfl
theorem node826_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree826 live826 coloured826 = result826 := by
  rw [tree826_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree827_agree_conditional
    (child0 : tree825 = literal825)
    (child1 : tree826 = literal826) : tree827 = literal827 := by
  rw [tree827_def, child0, child1]
  rfl
theorem node827_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree825 live825 coloured825 = result825)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree826 live826 coloured826 = result826) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree827 live827 coloured827 = result827 := by
  rw [tree827_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live825 coloured825 at child
  try dsimp only [live827, coloured827]
  rw [child]
  dsimp only [result825]
  have child := child1
  unfold live826 coloured826 at child
  try dsimp only [live827, coloured827]
  rw [child]
  dsimp only [result826]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree828_agree_conditional : tree828 = literal828 := by
  rw [tree828_def]
  rfl
theorem node828_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree828 live828 coloured828 = result828 := by
  rw [tree828_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree829_agree_conditional
    (child0 : tree827 = literal827)
    (child1 : tree828 = literal828) : tree829 = literal829 := by
  rw [tree829_def, child0, child1]
  rfl
theorem node829_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree827 live827 coloured827 = result827)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree828 live828 coloured828 = result828) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree829 live829 coloured829 = result829 := by
  rw [tree829_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live827 coloured827 at child
  try dsimp only [live829, coloured829]
  rw [child]
  dsimp only [result827]
  have child := child1
  unfold live828 coloured828 at child
  try dsimp only [live829, coloured829]
  rw [child]
  dsimp only [result828]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree830_agree_conditional : tree830 = literal830 := by
  rw [tree830_def]
  rfl
theorem node830_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree830 live830 coloured830 = result830 := by
  rw [tree830_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree831_agree_conditional
    (child0 : tree829 = literal829)
    (child1 : tree830 = literal830) : tree831 = literal831 := by
  rw [tree831_def, child0, child1]
  rfl
theorem node831_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree829 live829 coloured829 = result829)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree830 live830 coloured830 = result830) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree831 live831 coloured831 = result831 := by
  rw [tree831_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live829 coloured829 at child
  try dsimp only [live831, coloured831]
  rw [child]
  dsimp only [result829]
  have child := child1
  unfold live830 coloured830 at child
  try dsimp only [live831, coloured831]
  rw [child]
  dsimp only [result830]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree832_agree_conditional : tree832 = literal832 := by
  rw [tree832_def]
  rfl
theorem node832_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree832 live832 coloured832 = result832 := by
  rw [tree832_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree833_agree_conditional
    (child0 : tree831 = literal831)
    (child1 : tree832 = literal832) : tree833 = literal833 := by
  rw [tree833_def, child0, child1]
  rfl
theorem node833_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree831 live831 coloured831 = result831)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree832 live832 coloured832 = result832) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree833 live833 coloured833 = result833 := by
  rw [tree833_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live831 coloured831 at child
  try dsimp only [live833, coloured833]
  rw [child]
  dsimp only [result831]
  have child := child1
  unfold live832 coloured832 at child
  try dsimp only [live833, coloured833]
  rw [child]
  dsimp only [result832]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree834_agree_conditional : tree834 = literal834 := by
  rw [tree834_def]
  rfl
theorem node834_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree834 live834 coloured834 = result834 := by
  rw [tree834_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree835_agree_conditional
    (child0 : tree833 = literal833)
    (child1 : tree834 = literal834) : tree835 = literal835 := by
  rw [tree835_def, child0, child1]
  rfl
theorem node835_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree833 live833 coloured833 = result833)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree834 live834 coloured834 = result834) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree835 live835 coloured835 = result835 := by
  rw [tree835_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live833 coloured833 at child
  try dsimp only [live835, coloured835]
  rw [child]
  dsimp only [result833]
  have child := child1
  unfold live834 coloured834 at child
  try dsimp only [live835, coloured835]
  rw [child]
  dsimp only [result834]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree836_agree_conditional : tree836 = literal836 := by
  rw [tree836_def]
  rfl
theorem node836_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree836 live836 coloured836 = result836 := by
  rw [tree836_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree837_agree_conditional
    (child0 : tree835 = literal835)
    (child1 : tree836 = literal836) : tree837 = literal837 := by
  rw [tree837_def, child0, child1]
  rfl
theorem node837_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree835 live835 coloured835 = result835)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree836 live836 coloured836 = result836) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree837 live837 coloured837 = result837 := by
  rw [tree837_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live835 coloured835 at child
  try dsimp only [live837, coloured837]
  rw [child]
  dsimp only [result835]
  have child := child1
  unfold live836 coloured836 at child
  try dsimp only [live837, coloured837]
  rw [child]
  dsimp only [result836]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree838_agree_conditional : tree838 = literal838 := by
  rw [tree838_def]
  rfl
theorem node838_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree838 live838 coloured838 = result838 := by
  rw [tree838_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree839_agree_conditional
    (child0 : tree837 = literal837)
    (child1 : tree838 = literal838) : tree839 = literal839 := by
  rw [tree839_def, child0, child1]
  rfl
theorem node839_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree837 live837 coloured837 = result837)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree838 live838 coloured838 = result838) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree839 live839 coloured839 = result839 := by
  rw [tree839_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live837 coloured837 at child
  try dsimp only [live839, coloured839]
  rw [child]
  dsimp only [result837]
  have child := child1
  unfold live838 coloured838 at child
  try dsimp only [live839, coloured839]
  rw [child]
  dsimp only [result838]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree840_agree_conditional
    (child0 : tree822 = literal822)
    (child1 : tree839 = literal839) : tree840 = literal840 := by
  rw [tree840_def, child0, child1]
  rfl
theorem node840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree822 live822 coloured822 = result822)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree839 live839 coloured839 = result839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree840 live840 coloured840 = result840 := by
  rw [tree840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live822 coloured822 at child
  try dsimp only [live840, coloured840]
  rw [child]
  dsimp only [result822]
  have child := child1
  unfold live839 coloured839 at child
  try dsimp only [live840, coloured840]
  rw [child]
  dsimp only [result839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree841_agree_conditional : tree841 = literal841 := by
  rw [tree841_def]
  rfl
theorem node841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree841 live841 coloured841 = result841 := by
  rw [tree841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree842_agree_conditional
    (child0 : tree840 = literal840)
    (child1 : tree841 = literal841) : tree842 = literal842 := by
  rw [tree842_def, child0, child1]
  rfl
theorem node842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree840 live840 coloured840 = result840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree841 live841 coloured841 = result841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree842 live842 coloured842 = result842 := by
  rw [tree842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live840 coloured840 at child
  try dsimp only [live842, coloured842]
  rw [child]
  dsimp only [result840]
  have child := child1
  unfold live841 coloured841 at child
  try dsimp only [live842, coloured842]
  rw [child]
  dsimp only [result841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree843_agree_conditional : tree843 = literal843 := by
  rw [tree843_def]
  rfl
theorem node843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree843 live843 coloured843 = result843 := by
  rw [tree843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree844_agree_conditional
    (child0 : tree842 = literal842)
    (child1 : tree843 = literal843) : tree844 = literal844 := by
  rw [tree844_def, child0, child1]
  rfl
theorem node844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree842 live842 coloured842 = result842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree843 live843 coloured843 = result843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree844 live844 coloured844 = result844 := by
  rw [tree844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live842 coloured842 at child
  try dsimp only [live844, coloured844]
  rw [child]
  dsimp only [result842]
  have child := child1
  unfold live843 coloured843 at child
  try dsimp only [live844, coloured844]
  rw [child]
  dsimp only [result843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree845_agree_conditional : tree845 = literal845 := by
  rw [tree845_def]
  rfl
theorem node845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree845 live845 coloured845 = result845 := by
  rw [tree845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree846_agree_conditional
    (child0 : tree844 = literal844)
    (child1 : tree845 = literal845) : tree846 = literal846 := by
  rw [tree846_def, child0, child1]
  rfl
theorem node846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree844 live844 coloured844 = result844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree845 live845 coloured845 = result845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree846 live846 coloured846 = result846 := by
  rw [tree846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live844 coloured844 at child
  try dsimp only [live846, coloured846]
  rw [child]
  dsimp only [result844]
  have child := child1
  unfold live845 coloured845 at child
  try dsimp only [live846, coloured846]
  rw [child]
  dsimp only [result845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree847_agree_conditional : tree847 = literal847 := by
  rw [tree847_def]
  rfl
theorem node847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree847 live847 coloured847 = result847 := by
  rw [tree847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree848_agree_conditional : tree848 = literal848 := by
  rw [tree848_def]
  rfl
theorem node848_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree848 live848 coloured848 = result848 := by
  rw [tree848_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree849_agree_conditional
    (child0 : tree847 = literal847)
    (child1 : tree848 = literal848) : tree849 = literal849 := by
  rw [tree849_def, child0, child1]
  rfl
theorem node849_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree847 live847 coloured847 = result847)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree848 live848 coloured848 = result848) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree849 live849 coloured849 = result849 := by
  rw [tree849_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live847 coloured847 at child
  try dsimp only [live849, coloured849]
  rw [child]
  dsimp only [result847]
  have child := child1
  unfold live848 coloured848 at child
  try dsimp only [live849, coloured849]
  rw [child]
  dsimp only [result848]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree850_agree_conditional : tree850 = literal850 := by
  rw [tree850_def]
  rfl
theorem node850_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree850 live850 coloured850 = result850 := by
  rw [tree850_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree851_agree_conditional : tree851 = literal851 := by
  rw [tree851_def]
  rfl
theorem node851_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree851 live851 coloured851 = result851 := by
  rw [tree851_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree852_agree_conditional
    (child0 : tree850 = literal850)
    (child1 : tree851 = literal851) : tree852 = literal852 := by
  rw [tree852_def, child0, child1]
  rfl
theorem node852_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree850 live850 coloured850 = result850)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree851 live851 coloured851 = result851) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree852 live852 coloured852 = result852 := by
  rw [tree852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live850 coloured850 at child
  try dsimp only [live852, coloured852]
  rw [child]
  dsimp only [result850]
  have child := child1
  unfold live851 coloured851 at child
  try dsimp only [live852, coloured852]
  rw [child]
  dsimp only [result851]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree853_agree_conditional : tree853 = literal853 := by
  rw [tree853_def]
  rfl
theorem node853_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree853 live853 coloured853 = result853 := by
  rw [tree853_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree854_agree_conditional
    (child0 : tree852 = literal852)
    (child1 : tree853 = literal853) : tree854 = literal854 := by
  rw [tree854_def, child0, child1]
  rfl
theorem node854_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree852 live852 coloured852 = result852)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree853 live853 coloured853 = result853) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree854 live854 coloured854 = result854 := by
  rw [tree854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live852 coloured852 at child
  try dsimp only [live854, coloured854]
  rw [child]
  dsimp only [result852]
  have child := child1
  unfold live853 coloured853 at child
  try dsimp only [live854, coloured854]
  rw [child]
  dsimp only [result853]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree855_agree_conditional
    (child0 : tree849 = literal849)
    (child1 : tree854 = literal854) : tree855 = literal855 := by
  rw [tree855_def, child0, child1]
  rfl
theorem node855_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree849 live849 coloured849 = result849)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree854 live854 coloured854 = result854) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree855 live855 coloured855 = result855 := by
  rw [tree855_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live849 coloured849 at child
  try dsimp only [live855, coloured855]
  rw [child]
  dsimp only [result849]
  have child := child1
  unfold live854 coloured854 at child
  try dsimp only [live855, coloured855]
  rw [child]
  dsimp only [result854]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree856_agree_conditional
    (child0 : tree846 = literal846)
    (child1 : tree855 = literal855) : tree856 = literal856 := by
  rw [tree856_def, child0, child1]
  rfl
theorem node856_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree846 live846 coloured846 = result846)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree855 live855 coloured855 = result855) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree856 live856 coloured856 = result856 := by
  rw [tree856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live846 coloured846 at child
  try dsimp only [live856, coloured856]
  rw [child]
  dsimp only [result846]
  have child := child1
  unfold live855 coloured855 at child
  try dsimp only [live856, coloured856]
  rw [child]
  dsimp only [result855]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree857_agree_conditional : tree857 = literal857 := by
  rw [tree857_def]
  rfl
theorem node857_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree857 live857 coloured857 = result857 := by
  rw [tree857_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree858_agree_conditional
    (child0 : tree856 = literal856)
    (child1 : tree857 = literal857) : tree858 = literal858 := by
  rw [tree858_def, child0, child1]
  rfl
theorem node858_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree856 live856 coloured856 = result856)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree857 live857 coloured857 = result857) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree858 live858 coloured858 = result858 := by
  rw [tree858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live856 coloured856 at child
  try dsimp only [live858, coloured858]
  rw [child]
  dsimp only [result856]
  have child := child1
  unfold live857 coloured857 at child
  try dsimp only [live858, coloured858]
  rw [child]
  dsimp only [result857]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree859_agree_conditional : tree859 = literal859 := by
  rw [tree859_def]
  rfl
theorem node859_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree859 live859 coloured859 = result859 := by
  rw [tree859_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree860_agree_conditional
    (child0 : tree858 = literal858)
    (child1 : tree859 = literal859) : tree860 = literal860 := by
  rw [tree860_def, child0, child1]
  rfl
theorem node860_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree858 live858 coloured858 = result858)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree859 live859 coloured859 = result859) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree860 live860 coloured860 = result860 := by
  rw [tree860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live858 coloured858 at child
  try dsimp only [live860, coloured860]
  rw [child]
  dsimp only [result858]
  have child := child1
  unfold live859 coloured859 at child
  try dsimp only [live860, coloured860]
  rw [child]
  dsimp only [result859]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree861_agree_conditional : tree861 = literal861 := by
  rw [tree861_def]
  rfl
theorem node861_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree861 live861 coloured861 = result861 := by
  rw [tree861_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree862_agree_conditional
    (child0 : tree860 = literal860)
    (child1 : tree861 = literal861) : tree862 = literal862 := by
  rw [tree862_def, child0, child1]
  rfl
theorem node862_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree860 live860 coloured860 = result860)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree861 live861 coloured861 = result861) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree862 live862 coloured862 = result862 := by
  rw [tree862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live860 coloured860 at child
  try dsimp only [live862, coloured862]
  rw [child]
  dsimp only [result860]
  have child := child1
  unfold live861 coloured861 at child
  try dsimp only [live862, coloured862]
  rw [child]
  dsimp only [result861]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree863_agree_conditional : tree863 = literal863 := by
  rw [tree863_def]
  rfl
theorem node863_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree863 live863 coloured863 = result863 := by
  rw [tree863_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages874
