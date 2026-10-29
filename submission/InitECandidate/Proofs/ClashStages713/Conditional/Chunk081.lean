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
theorem tree7776_agree_conditional
    (child0 : tree7774 = literal7774)
    (child1 : tree7775 = literal7775) : tree7776 = literal7776 := by
  rw [tree7776_def, child0, child1]
  rfl
theorem node7776_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7774 live7774 coloured7774 = result7774)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7775 live7775 coloured7775 = result7775) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7776 live7776 coloured7776 = result7776 := by
  rw [tree7776_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7774 coloured7774 at child
  try dsimp only [live7776, coloured7776]
  rw [child]
  dsimp only [result7774]
  have child := child1
  unfold live7775 coloured7775 at child
  try dsimp only [live7776, coloured7776]
  rw [child]
  dsimp only [result7775]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7777_agree_conditional : tree7777 = literal7777 := by
  rw [tree7777_def]
  rfl
theorem node7777_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7777 live7777 coloured7777 = result7777 := by
  rw [tree7777_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7778_agree_conditional
    (child0 : tree7776 = literal7776)
    (child1 : tree7777 = literal7777) : tree7778 = literal7778 := by
  rw [tree7778_def, child0, child1]
  rfl
theorem node7778_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7776 live7776 coloured7776 = result7776)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7777 live7777 coloured7777 = result7777) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7778 live7778 coloured7778 = result7778 := by
  rw [tree7778_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7776 coloured7776 at child
  try dsimp only [live7778, coloured7778]
  rw [child]
  dsimp only [result7776]
  have child := child1
  unfold live7777 coloured7777 at child
  try dsimp only [live7778, coloured7778]
  rw [child]
  dsimp only [result7777]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7779_agree_conditional : tree7779 = literal7779 := by
  rw [tree7779_def]
  rfl
theorem node7779_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7779 live7779 coloured7779 = result7779 := by
  rw [tree7779_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7780_agree_conditional
    (child0 : tree7778 = literal7778)
    (child1 : tree7779 = literal7779) : tree7780 = literal7780 := by
  rw [tree7780_def, child0, child1]
  rfl
theorem node7780_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7778 live7778 coloured7778 = result7778)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7779 live7779 coloured7779 = result7779) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7780 live7780 coloured7780 = result7780 := by
  rw [tree7780_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7778 coloured7778 at child
  try dsimp only [live7780, coloured7780]
  rw [child]
  dsimp only [result7778]
  have child := child1
  unfold live7779 coloured7779 at child
  try dsimp only [live7780, coloured7780]
  rw [child]
  dsimp only [result7779]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7781_agree_conditional : tree7781 = literal7781 := by
  rw [tree7781_def]
  rfl
theorem node7781_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7781 live7781 coloured7781 = result7781 := by
  rw [tree7781_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7782_agree_conditional
    (child0 : tree7780 = literal7780)
    (child1 : tree7781 = literal7781) : tree7782 = literal7782 := by
  rw [tree7782_def, child0, child1]
  rfl
theorem node7782_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7780 live7780 coloured7780 = result7780)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7781 live7781 coloured7781 = result7781) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7782 live7782 coloured7782 = result7782 := by
  rw [tree7782_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7780 coloured7780 at child
  try dsimp only [live7782, coloured7782]
  rw [child]
  dsimp only [result7780]
  have child := child1
  unfold live7781 coloured7781 at child
  try dsimp only [live7782, coloured7782]
  rw [child]
  dsimp only [result7781]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7783_agree_conditional : tree7783 = literal7783 := by
  rw [tree7783_def]
  rfl
theorem node7783_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7783 live7783 coloured7783 = result7783 := by
  rw [tree7783_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7784_agree_conditional
    (child0 : tree7782 = literal7782)
    (child1 : tree7783 = literal7783) : tree7784 = literal7784 := by
  rw [tree7784_def, child0, child1]
  rfl
theorem node7784_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7782 live7782 coloured7782 = result7782)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7783 live7783 coloured7783 = result7783) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7784 live7784 coloured7784 = result7784 := by
  rw [tree7784_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7782 coloured7782 at child
  try dsimp only [live7784, coloured7784]
  rw [child]
  dsimp only [result7782]
  have child := child1
  unfold live7783 coloured7783 at child
  try dsimp only [live7784, coloured7784]
  rw [child]
  dsimp only [result7783]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7785_agree_conditional : tree7785 = literal7785 := by
  rw [tree7785_def]
  rfl
theorem node7785_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7785 live7785 coloured7785 = result7785 := by
  rw [tree7785_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7786_agree_conditional
    (child0 : tree7784 = literal7784)
    (child1 : tree7785 = literal7785) : tree7786 = literal7786 := by
  rw [tree7786_def, child0, child1]
  rfl
theorem node7786_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7784 live7784 coloured7784 = result7784)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7785 live7785 coloured7785 = result7785) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7786 live7786 coloured7786 = result7786 := by
  rw [tree7786_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7784 coloured7784 at child
  try dsimp only [live7786, coloured7786]
  rw [child]
  dsimp only [result7784]
  have child := child1
  unfold live7785 coloured7785 at child
  try dsimp only [live7786, coloured7786]
  rw [child]
  dsimp only [result7785]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7787_agree_conditional : tree7787 = literal7787 := by
  rw [tree7787_def]
  rfl
theorem node7787_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7787 live7787 coloured7787 = result7787 := by
  rw [tree7787_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7788_agree_conditional
    (child0 : tree7786 = literal7786)
    (child1 : tree7787 = literal7787) : tree7788 = literal7788 := by
  rw [tree7788_def, child0, child1]
  rfl
theorem node7788_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7786 live7786 coloured7786 = result7786)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7787 live7787 coloured7787 = result7787) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7788 live7788 coloured7788 = result7788 := by
  rw [tree7788_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7786 coloured7786 at child
  try dsimp only [live7788, coloured7788]
  rw [child]
  dsimp only [result7786]
  have child := child1
  unfold live7787 coloured7787 at child
  try dsimp only [live7788, coloured7788]
  rw [child]
  dsimp only [result7787]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7789_agree_conditional : tree7789 = literal7789 := by
  rw [tree7789_def]
  rfl
theorem node7789_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7789 live7789 coloured7789 = result7789 := by
  rw [tree7789_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7790_agree_conditional
    (child0 : tree7788 = literal7788)
    (child1 : tree7789 = literal7789) : tree7790 = literal7790 := by
  rw [tree7790_def, child0, child1]
  rfl
theorem node7790_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7788 live7788 coloured7788 = result7788)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7789 live7789 coloured7789 = result7789) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7790 live7790 coloured7790 = result7790 := by
  rw [tree7790_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7788 coloured7788 at child
  try dsimp only [live7790, coloured7790]
  rw [child]
  dsimp only [result7788]
  have child := child1
  unfold live7789 coloured7789 at child
  try dsimp only [live7790, coloured7790]
  rw [child]
  dsimp only [result7789]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7791_agree_conditional : tree7791 = literal7791 := by
  rw [tree7791_def]
  rfl
theorem node7791_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7791 live7791 coloured7791 = result7791 := by
  rw [tree7791_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7792_agree_conditional
    (child0 : tree7790 = literal7790)
    (child1 : tree7791 = literal7791) : tree7792 = literal7792 := by
  rw [tree7792_def, child0, child1]
  rfl
theorem node7792_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7790 live7790 coloured7790 = result7790)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7791 live7791 coloured7791 = result7791) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7792 live7792 coloured7792 = result7792 := by
  rw [tree7792_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7790 coloured7790 at child
  try dsimp only [live7792, coloured7792]
  rw [child]
  dsimp only [result7790]
  have child := child1
  unfold live7791 coloured7791 at child
  try dsimp only [live7792, coloured7792]
  rw [child]
  dsimp only [result7791]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7793_agree_conditional : tree7793 = literal7793 := by
  rw [tree7793_def]
  rfl
theorem node7793_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7793 live7793 coloured7793 = result7793 := by
  rw [tree7793_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7794_agree_conditional
    (child0 : tree7792 = literal7792)
    (child1 : tree7793 = literal7793) : tree7794 = literal7794 := by
  rw [tree7794_def, child0, child1]
  rfl
theorem node7794_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7792 live7792 coloured7792 = result7792)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7793 live7793 coloured7793 = result7793) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7794 live7794 coloured7794 = result7794 := by
  rw [tree7794_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7792 coloured7792 at child
  try dsimp only [live7794, coloured7794]
  rw [child]
  dsimp only [result7792]
  have child := child1
  unfold live7793 coloured7793 at child
  try dsimp only [live7794, coloured7794]
  rw [child]
  dsimp only [result7793]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7795_agree_conditional : tree7795 = literal7795 := by
  rw [tree7795_def]
  rfl
theorem node7795_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7795 live7795 coloured7795 = result7795 := by
  rw [tree7795_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7796_agree_conditional
    (child0 : tree7794 = literal7794)
    (child1 : tree7795 = literal7795) : tree7796 = literal7796 := by
  rw [tree7796_def, child0, child1]
  rfl
theorem node7796_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7794 live7794 coloured7794 = result7794)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7795 live7795 coloured7795 = result7795) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7796 live7796 coloured7796 = result7796 := by
  rw [tree7796_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7794 coloured7794 at child
  try dsimp only [live7796, coloured7796]
  rw [child]
  dsimp only [result7794]
  have child := child1
  unfold live7795 coloured7795 at child
  try dsimp only [live7796, coloured7796]
  rw [child]
  dsimp only [result7795]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7797_agree_conditional : tree7797 = literal7797 := by
  rw [tree7797_def]
  rfl
theorem node7797_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7797 live7797 coloured7797 = result7797 := by
  rw [tree7797_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7798_agree_conditional
    (child0 : tree7796 = literal7796)
    (child1 : tree7797 = literal7797) : tree7798 = literal7798 := by
  rw [tree7798_def, child0, child1]
  rfl
theorem node7798_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7796 live7796 coloured7796 = result7796)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7797 live7797 coloured7797 = result7797) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7798 live7798 coloured7798 = result7798 := by
  rw [tree7798_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7796 coloured7796 at child
  try dsimp only [live7798, coloured7798]
  rw [child]
  dsimp only [result7796]
  have child := child1
  unfold live7797 coloured7797 at child
  try dsimp only [live7798, coloured7798]
  rw [child]
  dsimp only [result7797]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7799_agree_conditional : tree7799 = literal7799 := by
  rw [tree7799_def]
  rfl
theorem node7799_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7799 live7799 coloured7799 = result7799 := by
  rw [tree7799_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7800_agree_conditional
    (child0 : tree7798 = literal7798)
    (child1 : tree7799 = literal7799) : tree7800 = literal7800 := by
  rw [tree7800_def, child0, child1]
  rfl
theorem node7800_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7798 live7798 coloured7798 = result7798)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7799 live7799 coloured7799 = result7799) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7800 live7800 coloured7800 = result7800 := by
  rw [tree7800_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7798 coloured7798 at child
  try dsimp only [live7800, coloured7800]
  rw [child]
  dsimp only [result7798]
  have child := child1
  unfold live7799 coloured7799 at child
  try dsimp only [live7800, coloured7800]
  rw [child]
  dsimp only [result7799]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7801_agree_conditional : tree7801 = literal7801 := by
  rw [tree7801_def]
  rfl
theorem node7801_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7801 live7801 coloured7801 = result7801 := by
  rw [tree7801_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7802_agree_conditional
    (child0 : tree7800 = literal7800)
    (child1 : tree7801 = literal7801) : tree7802 = literal7802 := by
  rw [tree7802_def, child0, child1]
  rfl
theorem node7802_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7800 live7800 coloured7800 = result7800)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7801 live7801 coloured7801 = result7801) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7802 live7802 coloured7802 = result7802 := by
  rw [tree7802_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7800 coloured7800 at child
  try dsimp only [live7802, coloured7802]
  rw [child]
  dsimp only [result7800]
  have child := child1
  unfold live7801 coloured7801 at child
  try dsimp only [live7802, coloured7802]
  rw [child]
  dsimp only [result7801]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7803_agree_conditional : tree7803 = literal7803 := by
  rw [tree7803_def]
  rfl
theorem node7803_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7803 live7803 coloured7803 = result7803 := by
  rw [tree7803_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7804_agree_conditional
    (child0 : tree7802 = literal7802)
    (child1 : tree7803 = literal7803) : tree7804 = literal7804 := by
  rw [tree7804_def, child0, child1]
  rfl
theorem node7804_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7802 live7802 coloured7802 = result7802)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7803 live7803 coloured7803 = result7803) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7804 live7804 coloured7804 = result7804 := by
  rw [tree7804_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7802 coloured7802 at child
  try dsimp only [live7804, coloured7804]
  rw [child]
  dsimp only [result7802]
  have child := child1
  unfold live7803 coloured7803 at child
  try dsimp only [live7804, coloured7804]
  rw [child]
  dsimp only [result7803]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7805_agree_conditional : tree7805 = literal7805 := by
  rw [tree7805_def]
  rfl
theorem node7805_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7805 live7805 coloured7805 = result7805 := by
  rw [tree7805_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7806_agree_conditional
    (child0 : tree7804 = literal7804)
    (child1 : tree7805 = literal7805) : tree7806 = literal7806 := by
  rw [tree7806_def, child0, child1]
  rfl
theorem node7806_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7804 live7804 coloured7804 = result7804)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7805 live7805 coloured7805 = result7805) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7806 live7806 coloured7806 = result7806 := by
  rw [tree7806_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7804 coloured7804 at child
  try dsimp only [live7806, coloured7806]
  rw [child]
  dsimp only [result7804]
  have child := child1
  unfold live7805 coloured7805 at child
  try dsimp only [live7806, coloured7806]
  rw [child]
  dsimp only [result7805]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7807_agree_conditional : tree7807 = literal7807 := by
  rw [tree7807_def]
  rfl
theorem node7807_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7807 live7807 coloured7807 = result7807 := by
  rw [tree7807_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7808_agree_conditional
    (child0 : tree7806 = literal7806)
    (child1 : tree7807 = literal7807) : tree7808 = literal7808 := by
  rw [tree7808_def, child0, child1]
  rfl
theorem node7808_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7806 live7806 coloured7806 = result7806)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7807 live7807 coloured7807 = result7807) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7808 live7808 coloured7808 = result7808 := by
  rw [tree7808_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7806 coloured7806 at child
  try dsimp only [live7808, coloured7808]
  rw [child]
  dsimp only [result7806]
  have child := child1
  unfold live7807 coloured7807 at child
  try dsimp only [live7808, coloured7808]
  rw [child]
  dsimp only [result7807]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7809_agree_conditional : tree7809 = literal7809 := by
  rw [tree7809_def]
  rfl
theorem node7809_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7809 live7809 coloured7809 = result7809 := by
  rw [tree7809_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7810_agree_conditional
    (child0 : tree7808 = literal7808)
    (child1 : tree7809 = literal7809) : tree7810 = literal7810 := by
  rw [tree7810_def, child0, child1]
  rfl
theorem node7810_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7808 live7808 coloured7808 = result7808)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7809 live7809 coloured7809 = result7809) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7810 live7810 coloured7810 = result7810 := by
  rw [tree7810_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7808 coloured7808 at child
  try dsimp only [live7810, coloured7810]
  rw [child]
  dsimp only [result7808]
  have child := child1
  unfold live7809 coloured7809 at child
  try dsimp only [live7810, coloured7810]
  rw [child]
  dsimp only [result7809]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7811_agree_conditional : tree7811 = literal7811 := by
  rw [tree7811_def]
  rfl
theorem node7811_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7811 live7811 coloured7811 = result7811 := by
  rw [tree7811_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7812_agree_conditional
    (child0 : tree7810 = literal7810)
    (child1 : tree7811 = literal7811) : tree7812 = literal7812 := by
  rw [tree7812_def, child0, child1]
  rfl
theorem node7812_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7810 live7810 coloured7810 = result7810)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7811 live7811 coloured7811 = result7811) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7812 live7812 coloured7812 = result7812 := by
  rw [tree7812_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7810 coloured7810 at child
  try dsimp only [live7812, coloured7812]
  rw [child]
  dsimp only [result7810]
  have child := child1
  unfold live7811 coloured7811 at child
  try dsimp only [live7812, coloured7812]
  rw [child]
  dsimp only [result7811]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7813_agree_conditional : tree7813 = literal7813 := by
  rw [tree7813_def]
  rfl
theorem node7813_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7813 live7813 coloured7813 = result7813 := by
  rw [tree7813_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7814_agree_conditional
    (child0 : tree7812 = literal7812)
    (child1 : tree7813 = literal7813) : tree7814 = literal7814 := by
  rw [tree7814_def, child0, child1]
  rfl
theorem node7814_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7812 live7812 coloured7812 = result7812)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7813 live7813 coloured7813 = result7813) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7814 live7814 coloured7814 = result7814 := by
  rw [tree7814_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7812 coloured7812 at child
  try dsimp only [live7814, coloured7814]
  rw [child]
  dsimp only [result7812]
  have child := child1
  unfold live7813 coloured7813 at child
  try dsimp only [live7814, coloured7814]
  rw [child]
  dsimp only [result7813]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7815_agree_conditional : tree7815 = literal7815 := by
  rw [tree7815_def]
  rfl
theorem node7815_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7815 live7815 coloured7815 = result7815 := by
  rw [tree7815_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7816_agree_conditional
    (child0 : tree7814 = literal7814)
    (child1 : tree7815 = literal7815) : tree7816 = literal7816 := by
  rw [tree7816_def, child0, child1]
  rfl
theorem node7816_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7814 live7814 coloured7814 = result7814)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7815 live7815 coloured7815 = result7815) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7816 live7816 coloured7816 = result7816 := by
  rw [tree7816_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7814 coloured7814 at child
  try dsimp only [live7816, coloured7816]
  rw [child]
  dsimp only [result7814]
  have child := child1
  unfold live7815 coloured7815 at child
  try dsimp only [live7816, coloured7816]
  rw [child]
  dsimp only [result7815]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7817_agree_conditional : tree7817 = literal7817 := by
  rw [tree7817_def]
  rfl
theorem node7817_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7817 live7817 coloured7817 = result7817 := by
  rw [tree7817_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7818_agree_conditional
    (child0 : tree7816 = literal7816)
    (child1 : tree7817 = literal7817) : tree7818 = literal7818 := by
  rw [tree7818_def, child0, child1]
  rfl
theorem node7818_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7816 live7816 coloured7816 = result7816)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7817 live7817 coloured7817 = result7817) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7818 live7818 coloured7818 = result7818 := by
  rw [tree7818_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7816 coloured7816 at child
  try dsimp only [live7818, coloured7818]
  rw [child]
  dsimp only [result7816]
  have child := child1
  unfold live7817 coloured7817 at child
  try dsimp only [live7818, coloured7818]
  rw [child]
  dsimp only [result7817]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7819_agree_conditional : tree7819 = literal7819 := by
  rw [tree7819_def]
  rfl
theorem node7819_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7819 live7819 coloured7819 = result7819 := by
  rw [tree7819_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7820_agree_conditional
    (child0 : tree7818 = literal7818)
    (child1 : tree7819 = literal7819) : tree7820 = literal7820 := by
  rw [tree7820_def, child0, child1]
  rfl
theorem node7820_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7818 live7818 coloured7818 = result7818)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7819 live7819 coloured7819 = result7819) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7820 live7820 coloured7820 = result7820 := by
  rw [tree7820_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7818 coloured7818 at child
  try dsimp only [live7820, coloured7820]
  rw [child]
  dsimp only [result7818]
  have child := child1
  unfold live7819 coloured7819 at child
  try dsimp only [live7820, coloured7820]
  rw [child]
  dsimp only [result7819]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7821_agree_conditional : tree7821 = literal7821 := by
  rw [tree7821_def]
  rfl
theorem node7821_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7821 live7821 coloured7821 = result7821 := by
  rw [tree7821_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7822_agree_conditional
    (child0 : tree7820 = literal7820)
    (child1 : tree7821 = literal7821) : tree7822 = literal7822 := by
  rw [tree7822_def, child0, child1]
  rfl
theorem node7822_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7820 live7820 coloured7820 = result7820)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7821 live7821 coloured7821 = result7821) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7822 live7822 coloured7822 = result7822 := by
  rw [tree7822_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7820 coloured7820 at child
  try dsimp only [live7822, coloured7822]
  rw [child]
  dsimp only [result7820]
  have child := child1
  unfold live7821 coloured7821 at child
  try dsimp only [live7822, coloured7822]
  rw [child]
  dsimp only [result7821]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7823_agree_conditional : tree7823 = literal7823 := by
  rw [tree7823_def]
  rfl
theorem node7823_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7823 live7823 coloured7823 = result7823 := by
  rw [tree7823_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7824_agree_conditional
    (child0 : tree7822 = literal7822)
    (child1 : tree7823 = literal7823) : tree7824 = literal7824 := by
  rw [tree7824_def, child0, child1]
  rfl
theorem node7824_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7822 live7822 coloured7822 = result7822)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7823 live7823 coloured7823 = result7823) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7824 live7824 coloured7824 = result7824 := by
  rw [tree7824_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7822 coloured7822 at child
  try dsimp only [live7824, coloured7824]
  rw [child]
  dsimp only [result7822]
  have child := child1
  unfold live7823 coloured7823 at child
  try dsimp only [live7824, coloured7824]
  rw [child]
  dsimp only [result7823]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7825_agree_conditional : tree7825 = literal7825 := by
  rw [tree7825_def]
  rfl
theorem node7825_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7825 live7825 coloured7825 = result7825 := by
  rw [tree7825_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7826_agree_conditional
    (child0 : tree7824 = literal7824)
    (child1 : tree7825 = literal7825) : tree7826 = literal7826 := by
  rw [tree7826_def, child0, child1]
  rfl
theorem node7826_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7824 live7824 coloured7824 = result7824)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7825 live7825 coloured7825 = result7825) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7826 live7826 coloured7826 = result7826 := by
  rw [tree7826_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7824 coloured7824 at child
  try dsimp only [live7826, coloured7826]
  rw [child]
  dsimp only [result7824]
  have child := child1
  unfold live7825 coloured7825 at child
  try dsimp only [live7826, coloured7826]
  rw [child]
  dsimp only [result7825]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7827_agree_conditional : tree7827 = literal7827 := by
  rw [tree7827_def]
  rfl
theorem node7827_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7827 live7827 coloured7827 = result7827 := by
  rw [tree7827_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7828_agree_conditional
    (child0 : tree7826 = literal7826)
    (child1 : tree7827 = literal7827) : tree7828 = literal7828 := by
  rw [tree7828_def, child0, child1]
  rfl
theorem node7828_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7826 live7826 coloured7826 = result7826)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7827 live7827 coloured7827 = result7827) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7828 live7828 coloured7828 = result7828 := by
  rw [tree7828_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7826 coloured7826 at child
  try dsimp only [live7828, coloured7828]
  rw [child]
  dsimp only [result7826]
  have child := child1
  unfold live7827 coloured7827 at child
  try dsimp only [live7828, coloured7828]
  rw [child]
  dsimp only [result7827]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7829_agree_conditional : tree7829 = literal7829 := by
  rw [tree7829_def]
  rfl
theorem node7829_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7829 live7829 coloured7829 = result7829 := by
  rw [tree7829_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7830_agree_conditional
    (child0 : tree7828 = literal7828)
    (child1 : tree7829 = literal7829) : tree7830 = literal7830 := by
  rw [tree7830_def, child0, child1]
  rfl
theorem node7830_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7828 live7828 coloured7828 = result7828)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7829 live7829 coloured7829 = result7829) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7830 live7830 coloured7830 = result7830 := by
  rw [tree7830_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7828 coloured7828 at child
  try dsimp only [live7830, coloured7830]
  rw [child]
  dsimp only [result7828]
  have child := child1
  unfold live7829 coloured7829 at child
  try dsimp only [live7830, coloured7830]
  rw [child]
  dsimp only [result7829]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7831_agree_conditional : tree7831 = literal7831 := by
  rw [tree7831_def]
  rfl
theorem node7831_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7831 live7831 coloured7831 = result7831 := by
  rw [tree7831_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7832_agree_conditional
    (child0 : tree7830 = literal7830)
    (child1 : tree7831 = literal7831) : tree7832 = literal7832 := by
  rw [tree7832_def, child0, child1]
  rfl
theorem node7832_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7830 live7830 coloured7830 = result7830)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7831 live7831 coloured7831 = result7831) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7832 live7832 coloured7832 = result7832 := by
  rw [tree7832_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7830 coloured7830 at child
  try dsimp only [live7832, coloured7832]
  rw [child]
  dsimp only [result7830]
  have child := child1
  unfold live7831 coloured7831 at child
  try dsimp only [live7832, coloured7832]
  rw [child]
  dsimp only [result7831]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7833_agree_conditional : tree7833 = literal7833 := by
  rw [tree7833_def]
  rfl
theorem node7833_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7833 live7833 coloured7833 = result7833 := by
  rw [tree7833_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7834_agree_conditional
    (child0 : tree7832 = literal7832)
    (child1 : tree7833 = literal7833) : tree7834 = literal7834 := by
  rw [tree7834_def, child0, child1]
  rfl
theorem node7834_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7832 live7832 coloured7832 = result7832)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7833 live7833 coloured7833 = result7833) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7834 live7834 coloured7834 = result7834 := by
  rw [tree7834_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7832 coloured7832 at child
  try dsimp only [live7834, coloured7834]
  rw [child]
  dsimp only [result7832]
  have child := child1
  unfold live7833 coloured7833 at child
  try dsimp only [live7834, coloured7834]
  rw [child]
  dsimp only [result7833]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7835_agree_conditional : tree7835 = literal7835 := by
  rw [tree7835_def]
  rfl
theorem node7835_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7835 live7835 coloured7835 = result7835 := by
  rw [tree7835_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7836_agree_conditional
    (child0 : tree7834 = literal7834)
    (child1 : tree7835 = literal7835) : tree7836 = literal7836 := by
  rw [tree7836_def, child0, child1]
  rfl
theorem node7836_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7834 live7834 coloured7834 = result7834)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7835 live7835 coloured7835 = result7835) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7836 live7836 coloured7836 = result7836 := by
  rw [tree7836_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7834 coloured7834 at child
  try dsimp only [live7836, coloured7836]
  rw [child]
  dsimp only [result7834]
  have child := child1
  unfold live7835 coloured7835 at child
  try dsimp only [live7836, coloured7836]
  rw [child]
  dsimp only [result7835]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7837_agree_conditional : tree7837 = literal7837 := by
  rw [tree7837_def]
  rfl
theorem node7837_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7837 live7837 coloured7837 = result7837 := by
  rw [tree7837_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7838_agree_conditional
    (child0 : tree7836 = literal7836)
    (child1 : tree7837 = literal7837) : tree7838 = literal7838 := by
  rw [tree7838_def, child0, child1]
  rfl
theorem node7838_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7836 live7836 coloured7836 = result7836)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7837 live7837 coloured7837 = result7837) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7838 live7838 coloured7838 = result7838 := by
  rw [tree7838_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7836 coloured7836 at child
  try dsimp only [live7838, coloured7838]
  rw [child]
  dsimp only [result7836]
  have child := child1
  unfold live7837 coloured7837 at child
  try dsimp only [live7838, coloured7838]
  rw [child]
  dsimp only [result7837]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7839_agree_conditional : tree7839 = literal7839 := by
  rw [tree7839_def]
  rfl
theorem node7839_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7839 live7839 coloured7839 = result7839 := by
  rw [tree7839_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7840_agree_conditional
    (child0 : tree7838 = literal7838)
    (child1 : tree7839 = literal7839) : tree7840 = literal7840 := by
  rw [tree7840_def, child0, child1]
  rfl
theorem node7840_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7838 live7838 coloured7838 = result7838)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7839 live7839 coloured7839 = result7839) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7840 live7840 coloured7840 = result7840 := by
  rw [tree7840_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7838 coloured7838 at child
  try dsimp only [live7840, coloured7840]
  rw [child]
  dsimp only [result7838]
  have child := child1
  unfold live7839 coloured7839 at child
  try dsimp only [live7840, coloured7840]
  rw [child]
  dsimp only [result7839]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7841_agree_conditional : tree7841 = literal7841 := by
  rw [tree7841_def]
  rfl
theorem node7841_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7841 live7841 coloured7841 = result7841 := by
  rw [tree7841_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7842_agree_conditional
    (child0 : tree7840 = literal7840)
    (child1 : tree7841 = literal7841) : tree7842 = literal7842 := by
  rw [tree7842_def, child0, child1]
  rfl
theorem node7842_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7840 live7840 coloured7840 = result7840)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7841 live7841 coloured7841 = result7841) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7842 live7842 coloured7842 = result7842 := by
  rw [tree7842_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7840 coloured7840 at child
  try dsimp only [live7842, coloured7842]
  rw [child]
  dsimp only [result7840]
  have child := child1
  unfold live7841 coloured7841 at child
  try dsimp only [live7842, coloured7842]
  rw [child]
  dsimp only [result7841]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7843_agree_conditional : tree7843 = literal7843 := by
  rw [tree7843_def]
  rfl
theorem node7843_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7843 live7843 coloured7843 = result7843 := by
  rw [tree7843_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7844_agree_conditional
    (child0 : tree7842 = literal7842)
    (child1 : tree7843 = literal7843) : tree7844 = literal7844 := by
  rw [tree7844_def, child0, child1]
  rfl
theorem node7844_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7842 live7842 coloured7842 = result7842)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7843 live7843 coloured7843 = result7843) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7844 live7844 coloured7844 = result7844 := by
  rw [tree7844_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7842 coloured7842 at child
  try dsimp only [live7844, coloured7844]
  rw [child]
  dsimp only [result7842]
  have child := child1
  unfold live7843 coloured7843 at child
  try dsimp only [live7844, coloured7844]
  rw [child]
  dsimp only [result7843]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7845_agree_conditional : tree7845 = literal7845 := by
  rw [tree7845_def]
  rfl
theorem node7845_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7845 live7845 coloured7845 = result7845 := by
  rw [tree7845_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7846_agree_conditional
    (child0 : tree7844 = literal7844)
    (child1 : tree7845 = literal7845) : tree7846 = literal7846 := by
  rw [tree7846_def, child0, child1]
  rfl
theorem node7846_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7844 live7844 coloured7844 = result7844)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7845 live7845 coloured7845 = result7845) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7846 live7846 coloured7846 = result7846 := by
  rw [tree7846_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7844 coloured7844 at child
  try dsimp only [live7846, coloured7846]
  rw [child]
  dsimp only [result7844]
  have child := child1
  unfold live7845 coloured7845 at child
  try dsimp only [live7846, coloured7846]
  rw [child]
  dsimp only [result7845]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7847_agree_conditional : tree7847 = literal7847 := by
  rw [tree7847_def]
  rfl
theorem node7847_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7847 live7847 coloured7847 = result7847 := by
  rw [tree7847_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7848_agree_conditional
    (child0 : tree7846 = literal7846)
    (child1 : tree7847 = literal7847) : tree7848 = literal7848 := by
  rw [tree7848_def, child0, child1]
  rfl
theorem node7848_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7846 live7846 coloured7846 = result7846)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7847 live7847 coloured7847 = result7847) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7848 live7848 coloured7848 = result7848 := by
  rw [tree7848_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7846 coloured7846 at child
  try dsimp only [live7848, coloured7848]
  rw [child]
  dsimp only [result7846]
  have child := child1
  unfold live7847 coloured7847 at child
  try dsimp only [live7848, coloured7848]
  rw [child]
  dsimp only [result7847]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7849_agree_conditional : tree7849 = literal7849 := by
  rw [tree7849_def]
  rfl
theorem node7849_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7849 live7849 coloured7849 = result7849 := by
  rw [tree7849_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7850_agree_conditional
    (child0 : tree7848 = literal7848)
    (child1 : tree7849 = literal7849) : tree7850 = literal7850 := by
  rw [tree7850_def, child0, child1]
  rfl
theorem node7850_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7848 live7848 coloured7848 = result7848)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7849 live7849 coloured7849 = result7849) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7850 live7850 coloured7850 = result7850 := by
  rw [tree7850_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7848 coloured7848 at child
  try dsimp only [live7850, coloured7850]
  rw [child]
  dsimp only [result7848]
  have child := child1
  unfold live7849 coloured7849 at child
  try dsimp only [live7850, coloured7850]
  rw [child]
  dsimp only [result7849]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7851_agree_conditional : tree7851 = literal7851 := by
  rw [tree7851_def]
  rfl
theorem node7851_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7851 live7851 coloured7851 = result7851 := by
  rw [tree7851_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7852_agree_conditional
    (child0 : tree7850 = literal7850)
    (child1 : tree7851 = literal7851) : tree7852 = literal7852 := by
  rw [tree7852_def, child0, child1]
  rfl
theorem node7852_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7850 live7850 coloured7850 = result7850)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7851 live7851 coloured7851 = result7851) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7852 live7852 coloured7852 = result7852 := by
  rw [tree7852_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7850 coloured7850 at child
  try dsimp only [live7852, coloured7852]
  rw [child]
  dsimp only [result7850]
  have child := child1
  unfold live7851 coloured7851 at child
  try dsimp only [live7852, coloured7852]
  rw [child]
  dsimp only [result7851]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7853_agree_conditional : tree7853 = literal7853 := by
  rw [tree7853_def]
  rfl
theorem node7853_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7853 live7853 coloured7853 = result7853 := by
  rw [tree7853_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7854_agree_conditional
    (child0 : tree7852 = literal7852)
    (child1 : tree7853 = literal7853) : tree7854 = literal7854 := by
  rw [tree7854_def, child0, child1]
  rfl
theorem node7854_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7852 live7852 coloured7852 = result7852)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7853 live7853 coloured7853 = result7853) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7854 live7854 coloured7854 = result7854 := by
  rw [tree7854_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7852 coloured7852 at child
  try dsimp only [live7854, coloured7854]
  rw [child]
  dsimp only [result7852]
  have child := child1
  unfold live7853 coloured7853 at child
  try dsimp only [live7854, coloured7854]
  rw [child]
  dsimp only [result7853]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7855_agree_conditional : tree7855 = literal7855 := by
  rw [tree7855_def]
  rfl
theorem node7855_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7855 live7855 coloured7855 = result7855 := by
  rw [tree7855_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7856_agree_conditional
    (child0 : tree7854 = literal7854)
    (child1 : tree7855 = literal7855) : tree7856 = literal7856 := by
  rw [tree7856_def, child0, child1]
  rfl
theorem node7856_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7854 live7854 coloured7854 = result7854)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7855 live7855 coloured7855 = result7855) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7856 live7856 coloured7856 = result7856 := by
  rw [tree7856_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7854 coloured7854 at child
  try dsimp only [live7856, coloured7856]
  rw [child]
  dsimp only [result7854]
  have child := child1
  unfold live7855 coloured7855 at child
  try dsimp only [live7856, coloured7856]
  rw [child]
  dsimp only [result7855]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7857_agree_conditional : tree7857 = literal7857 := by
  rw [tree7857_def]
  rfl
theorem node7857_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7857 live7857 coloured7857 = result7857 := by
  rw [tree7857_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7858_agree_conditional
    (child0 : tree7856 = literal7856)
    (child1 : tree7857 = literal7857) : tree7858 = literal7858 := by
  rw [tree7858_def, child0, child1]
  rfl
theorem node7858_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7856 live7856 coloured7856 = result7856)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7857 live7857 coloured7857 = result7857) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7858 live7858 coloured7858 = result7858 := by
  rw [tree7858_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7856 coloured7856 at child
  try dsimp only [live7858, coloured7858]
  rw [child]
  dsimp only [result7856]
  have child := child1
  unfold live7857 coloured7857 at child
  try dsimp only [live7858, coloured7858]
  rw [child]
  dsimp only [result7857]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7859_agree_conditional : tree7859 = literal7859 := by
  rw [tree7859_def]
  rfl
theorem node7859_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7859 live7859 coloured7859 = result7859 := by
  rw [tree7859_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7860_agree_conditional
    (child0 : tree7858 = literal7858)
    (child1 : tree7859 = literal7859) : tree7860 = literal7860 := by
  rw [tree7860_def, child0, child1]
  rfl
theorem node7860_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7858 live7858 coloured7858 = result7858)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7859 live7859 coloured7859 = result7859) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7860 live7860 coloured7860 = result7860 := by
  rw [tree7860_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7858 coloured7858 at child
  try dsimp only [live7860, coloured7860]
  rw [child]
  dsimp only [result7858]
  have child := child1
  unfold live7859 coloured7859 at child
  try dsimp only [live7860, coloured7860]
  rw [child]
  dsimp only [result7859]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7861_agree_conditional : tree7861 = literal7861 := by
  rw [tree7861_def]
  rfl
theorem node7861_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7861 live7861 coloured7861 = result7861 := by
  rw [tree7861_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7862_agree_conditional
    (child0 : tree7860 = literal7860)
    (child1 : tree7861 = literal7861) : tree7862 = literal7862 := by
  rw [tree7862_def, child0, child1]
  rfl
theorem node7862_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7860 live7860 coloured7860 = result7860)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7861 live7861 coloured7861 = result7861) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7862 live7862 coloured7862 = result7862 := by
  rw [tree7862_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7860 coloured7860 at child
  try dsimp only [live7862, coloured7862]
  rw [child]
  dsimp only [result7860]
  have child := child1
  unfold live7861 coloured7861 at child
  try dsimp only [live7862, coloured7862]
  rw [child]
  dsimp only [result7861]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7863_agree_conditional : tree7863 = literal7863 := by
  rw [tree7863_def]
  rfl
theorem node7863_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7863 live7863 coloured7863 = result7863 := by
  rw [tree7863_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7864_agree_conditional
    (child0 : tree7862 = literal7862)
    (child1 : tree7863 = literal7863) : tree7864 = literal7864 := by
  rw [tree7864_def, child0, child1]
  rfl
theorem node7864_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7862 live7862 coloured7862 = result7862)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7863 live7863 coloured7863 = result7863) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7864 live7864 coloured7864 = result7864 := by
  rw [tree7864_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7862 coloured7862 at child
  try dsimp only [live7864, coloured7864]
  rw [child]
  dsimp only [result7862]
  have child := child1
  unfold live7863 coloured7863 at child
  try dsimp only [live7864, coloured7864]
  rw [child]
  dsimp only [result7863]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7865_agree_conditional : tree7865 = literal7865 := by
  rw [tree7865_def]
  rfl
theorem node7865_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7865 live7865 coloured7865 = result7865 := by
  rw [tree7865_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7866_agree_conditional
    (child0 : tree7864 = literal7864)
    (child1 : tree7865 = literal7865) : tree7866 = literal7866 := by
  rw [tree7866_def, child0, child1]
  rfl
theorem node7866_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7864 live7864 coloured7864 = result7864)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7865 live7865 coloured7865 = result7865) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7866 live7866 coloured7866 = result7866 := by
  rw [tree7866_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7864 coloured7864 at child
  try dsimp only [live7866, coloured7866]
  rw [child]
  dsimp only [result7864]
  have child := child1
  unfold live7865 coloured7865 at child
  try dsimp only [live7866, coloured7866]
  rw [child]
  dsimp only [result7865]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7867_agree_conditional : tree7867 = literal7867 := by
  rw [tree7867_def]
  rfl
theorem node7867_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7867 live7867 coloured7867 = result7867 := by
  rw [tree7867_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7868_agree_conditional
    (child0 : tree7866 = literal7866)
    (child1 : tree7867 = literal7867) : tree7868 = literal7868 := by
  rw [tree7868_def, child0, child1]
  rfl
theorem node7868_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7866 live7866 coloured7866 = result7866)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7867 live7867 coloured7867 = result7867) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7868 live7868 coloured7868 = result7868 := by
  rw [tree7868_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7866 coloured7866 at child
  try dsimp only [live7868, coloured7868]
  rw [child]
  dsimp only [result7866]
  have child := child1
  unfold live7867 coloured7867 at child
  try dsimp only [live7868, coloured7868]
  rw [child]
  dsimp only [result7867]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7869_agree_conditional : tree7869 = literal7869 := by
  rw [tree7869_def]
  rfl
theorem node7869_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7869 live7869 coloured7869 = result7869 := by
  rw [tree7869_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7870_agree_conditional
    (child0 : tree7868 = literal7868)
    (child1 : tree7869 = literal7869) : tree7870 = literal7870 := by
  rw [tree7870_def, child0, child1]
  rfl
theorem node7870_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7868 live7868 coloured7868 = result7868)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7869 live7869 coloured7869 = result7869) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7870 live7870 coloured7870 = result7870 := by
  rw [tree7870_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7868 coloured7868 at child
  try dsimp only [live7870, coloured7870]
  rw [child]
  dsimp only [result7868]
  have child := child1
  unfold live7869 coloured7869 at child
  try dsimp only [live7870, coloured7870]
  rw [child]
  dsimp only [result7869]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7871_agree_conditional : tree7871 = literal7871 := by
  rw [tree7871_def]
  rfl
theorem node7871_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7871 live7871 coloured7871 = result7871 := by
  rw [tree7871_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
