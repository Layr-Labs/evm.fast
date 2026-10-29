import InitECandidate.Proofs.DeadStages64.Parallel.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages64.Parallel
theorem node768_cond_eq
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value387 value1 value2 = (output766, value388, value1))
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value388 value1 value2 = (output767, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input768 value387 value1 value2 = (output768, value4, value1) := by
  rw [input768_def, output768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child766]
  dsimp only
  rw [child767]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node769_cond_eq
    (child765 : Flapjack.WordAlloc.removeDeadStructural input765 value386 value1 value2 = (output765, value387, value1))
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value387 value1 value2 = (output768, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input769 value386 value1 value2 = (output769, value4, value1) := by
  rw [input769_def, output769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child765]
  dsimp only
  rw [child768]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node770_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value385 value1 value2 = (output764, value386, value1))
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value386 value1 value2 = (output769, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input770 value385 value1 value2 = (output770, value4, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  dsimp only
  rw [child769]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node771_cond_eq : Flapjack.WordAlloc.removeDeadStructural input771 value4 value1 value2 = (output771, value389, value1) := by
  rw [input771_def, output771_def]
  try (conv => lhs; cbv)
  try rfl

theorem node772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input772 value389 value1 value2 = (output772, value390, value1) := by
  rw [input772_def, output772_def]
  try (conv => lhs; cbv)
  try rfl

theorem node773_cond_eq
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value4 value1 value2 = (output771, value389, value1))
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value389 value1 value2 = (output772, value390, value1)) : Flapjack.WordAlloc.removeDeadStructural input773 value4 value1 value2 = (output773, value390, value1) := by
  rw [input773_def, output773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child771]
  dsimp only
  rw [child772]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input774 value390 value1 value2 = (output774, value391, value1) := by
  rw [input774_def, output774_def]
  try (conv => lhs; cbv)
  try rfl

theorem node775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input775 value391 value1 value2 = (output775, value391, value1) := by
  rw [input775_def, output775_def]
  try (conv => lhs; cbv)
  try rfl

theorem node776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input776 value391 value1 value2 = (output776, value392, value1) := by
  rw [input776_def, output776_def]
  try (conv => lhs; cbv)
  try rfl

theorem node777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input777 value392 value1 value2 = (output777, value393, value1) := by
  rw [input777_def, output777_def]
  try (conv => lhs; cbv)
  try rfl

theorem node778_cond_eq : Flapjack.WordAlloc.removeDeadStructural input778 value393 value1 value2 = (output778, value394, value1) := by
  rw [input778_def, output778_def]
  try (conv => lhs; cbv)
  try rfl

theorem node779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input779 value394 value1 value2 = (output779, value4, value1) := by
  rw [input779_def, output779_def]
  try (conv => lhs; cbv)
  try rfl

theorem node780_cond_eq
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value393 value1 value2 = (output778, value394, value1))
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value394 value1 value2 = (output779, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input780 value393 value1 value2 = (output780, value4, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child778]
  dsimp only
  rw [child779]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node781_cond_eq
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value392 value1 value2 = (output777, value393, value1))
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value393 value1 value2 = (output780, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input781 value392 value1 value2 = (output781, value4, value1) := by
  rw [input781_def, output781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child777]
  dsimp only
  rw [child780]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node782_cond_eq
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value391 value1 value2 = (output776, value392, value1))
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value392 value1 value2 = (output781, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input782 value391 value1 value2 = (output782, value4, value1) := by
  rw [input782_def, output782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child776]
  dsimp only
  rw [child781]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input783 value4 value1 value2 = (output783, value395, value1) := by
  rw [input783_def, output783_def]
  try (conv => lhs; cbv)
  try rfl

theorem node784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input784 value395 value1 value2 = (output784, value396, value1) := by
  rw [input784_def, output784_def]
  try (conv => lhs; cbv)
  try rfl

theorem node785_cond_eq
    (child783 : Flapjack.WordAlloc.removeDeadStructural input783 value4 value1 value2 = (output783, value395, value1))
    (child784 : Flapjack.WordAlloc.removeDeadStructural input784 value395 value1 value2 = (output784, value396, value1)) : Flapjack.WordAlloc.removeDeadStructural input785 value4 value1 value2 = (output785, value396, value1) := by
  rw [input785_def, output785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child783]
  dsimp only
  rw [child784]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input786 value396 value1 value2 = (output786, value397, value1) := by
  rw [input786_def, output786_def]
  try (conv => lhs; cbv)
  try rfl

theorem node787_cond_eq : Flapjack.WordAlloc.removeDeadStructural input787 value397 value1 value2 = (output787, value397, value1) := by
  rw [input787_def, output787_def]
  try (conv => lhs; cbv)
  try rfl

theorem node788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input788 value397 value1 value2 = (output788, value398, value1) := by
  rw [input788_def, output788_def]
  try (conv => lhs; cbv)
  try rfl

theorem node789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input789 value398 value1 value2 = (output789, value399, value1) := by
  rw [input789_def, output789_def]
  try (conv => lhs; cbv)
  try rfl

theorem node790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input790 value399 value1 value2 = (output790, value400, value1) := by
  rw [input790_def, output790_def]
  try (conv => lhs; cbv)
  try rfl

theorem node791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input791 value400 value1 value2 = (output791, value4, value1) := by
  rw [input791_def, output791_def]
  try (conv => lhs; cbv)
  try rfl

theorem node792_cond_eq
    (child790 : Flapjack.WordAlloc.removeDeadStructural input790 value399 value1 value2 = (output790, value400, value1))
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value400 value1 value2 = (output791, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input792 value399 value1 value2 = (output792, value4, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child790]
  dsimp only
  rw [child791]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node793_cond_eq
    (child789 : Flapjack.WordAlloc.removeDeadStructural input789 value398 value1 value2 = (output789, value399, value1))
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value399 value1 value2 = (output792, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input793 value398 value1 value2 = (output793, value4, value1) := by
  rw [input793_def, output793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child789]
  dsimp only
  rw [child792]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node794_cond_eq
    (child788 : Flapjack.WordAlloc.removeDeadStructural input788 value397 value1 value2 = (output788, value398, value1))
    (child793 : Flapjack.WordAlloc.removeDeadStructural input793 value398 value1 value2 = (output793, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input794 value397 value1 value2 = (output794, value4, value1) := by
  rw [input794_def, output794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child788]
  dsimp only
  rw [child793]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input795 value4 value1 value2 = (output795, value401, value1) := by
  rw [input795_def, output795_def]
  try (conv => lhs; cbv)
  try rfl

theorem node796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input796 value401 value1 value2 = (output796, value402, value1) := by
  rw [input796_def, output796_def]
  try (conv => lhs; cbv)
  try rfl

theorem node797_cond_eq
    (child795 : Flapjack.WordAlloc.removeDeadStructural input795 value4 value1 value2 = (output795, value401, value1))
    (child796 : Flapjack.WordAlloc.removeDeadStructural input796 value401 value1 value2 = (output796, value402, value1)) : Flapjack.WordAlloc.removeDeadStructural input797 value4 value1 value2 = (output797, value402, value1) := by
  rw [input797_def, output797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child795]
  dsimp only
  rw [child796]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input798 value402 value1 value2 = (output798, value403, value1) := by
  rw [input798_def, output798_def]
  try (conv => lhs; cbv)
  try rfl

theorem node799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input799 value403 value1 value2 = (output799, value403, value1) := by
  rw [input799_def, output799_def]
  try (conv => lhs; cbv)
  try rfl

theorem node800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input800 value403 value1 value2 = (output800, value404, value1) := by
  rw [input800_def, output800_def]
  try (conv => lhs; cbv)
  try rfl

theorem node801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input801 value404 value1 value2 = (output801, value405, value1) := by
  rw [input801_def, output801_def]
  try (conv => lhs; cbv)
  try rfl

theorem node802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input802 value405 value1 value2 = (output802, value406, value1) := by
  rw [input802_def, output802_def]
  try (conv => lhs; cbv)
  try rfl

theorem node803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input803 value406 value1 value2 = (output803, value4, value1) := by
  rw [input803_def, output803_def]
  try (conv => lhs; cbv)
  try rfl

theorem node804_cond_eq
    (child802 : Flapjack.WordAlloc.removeDeadStructural input802 value405 value1 value2 = (output802, value406, value1))
    (child803 : Flapjack.WordAlloc.removeDeadStructural input803 value406 value1 value2 = (output803, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input804 value405 value1 value2 = (output804, value4, value1) := by
  rw [input804_def, output804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child802]
  dsimp only
  rw [child803]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node805_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value404 value1 value2 = (output801, value405, value1))
    (child804 : Flapjack.WordAlloc.removeDeadStructural input804 value405 value1 value2 = (output804, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input805 value404 value1 value2 = (output805, value4, value1) := by
  rw [input805_def, output805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  dsimp only
  rw [child804]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node806_cond_eq
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value403 value1 value2 = (output800, value404, value1))
    (child805 : Flapjack.WordAlloc.removeDeadStructural input805 value404 value1 value2 = (output805, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input806 value403 value1 value2 = (output806, value4, value1) := by
  rw [input806_def, output806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child800]
  dsimp only
  rw [child805]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input807 value4 value1 value2 = (output807, value407, value1) := by
  rw [input807_def, output807_def]
  try (conv => lhs; cbv)
  try rfl

theorem node808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input808 value407 value1 value2 = (output808, value408, value1) := by
  rw [input808_def, output808_def]
  try (conv => lhs; cbv)
  try rfl

theorem node809_cond_eq
    (child807 : Flapjack.WordAlloc.removeDeadStructural input807 value4 value1 value2 = (output807, value407, value1))
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value407 value1 value2 = (output808, value408, value1)) : Flapjack.WordAlloc.removeDeadStructural input809 value4 value1 value2 = (output809, value408, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child807]
  dsimp only
  rw [child808]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input810 value408 value1 value2 = (output810, value409, value1) := by
  rw [input810_def, output810_def]
  try (conv => lhs; cbv)
  try rfl

theorem node811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input811 value409 value1 value2 = (output811, value409, value1) := by
  rw [input811_def, output811_def]
  try (conv => lhs; cbv)
  try rfl

theorem node812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input812 value409 value1 value2 = (output812, value410, value1) := by
  rw [input812_def, output812_def]
  try (conv => lhs; cbv)
  try rfl

theorem node813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input813 value410 value1 value2 = (output813, value411, value1) := by
  rw [input813_def, output813_def]
  try (conv => lhs; cbv)
  try rfl

theorem node814_cond_eq : Flapjack.WordAlloc.removeDeadStructural input814 value411 value1 value2 = (output814, value412, value1) := by
  rw [input814_def, output814_def]
  try (conv => lhs; cbv)
  try rfl

theorem node815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input815 value412 value1 value2 = (output815, value4, value1) := by
  rw [input815_def, output815_def]
  try (conv => lhs; cbv)
  try rfl

theorem node816_cond_eq
    (child814 : Flapjack.WordAlloc.removeDeadStructural input814 value411 value1 value2 = (output814, value412, value1))
    (child815 : Flapjack.WordAlloc.removeDeadStructural input815 value412 value1 value2 = (output815, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input816 value411 value1 value2 = (output816, value4, value1) := by
  rw [input816_def, output816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child814]
  dsimp only
  rw [child815]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node817_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value410 value1 value2 = (output813, value411, value1))
    (child816 : Flapjack.WordAlloc.removeDeadStructural input816 value411 value1 value2 = (output816, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input817 value410 value1 value2 = (output817, value4, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  dsimp only
  rw [child816]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node818_cond_eq
    (child812 : Flapjack.WordAlloc.removeDeadStructural input812 value409 value1 value2 = (output812, value410, value1))
    (child817 : Flapjack.WordAlloc.removeDeadStructural input817 value410 value1 value2 = (output817, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input818 value409 value1 value2 = (output818, value4, value1) := by
  rw [input818_def, output818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child812]
  dsimp only
  rw [child817]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input819 value4 value1 value2 = (output819, value413, value1) := by
  rw [input819_def, output819_def]
  try (conv => lhs; cbv)
  try rfl

theorem node820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input820 value413 value1 value2 = (output820, value414, value1) := by
  rw [input820_def, output820_def]
  try (conv => lhs; cbv)
  try rfl

theorem node821_cond_eq
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value4 value1 value2 = (output819, value413, value1))
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value413 value1 value2 = (output820, value414, value1)) : Flapjack.WordAlloc.removeDeadStructural input821 value4 value1 value2 = (output821, value414, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child819]
  dsimp only
  rw [child820]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input822 value414 value1 value2 = (output822, value415, value1) := by
  rw [input822_def, output822_def]
  try (conv => lhs; cbv)
  try rfl

theorem node823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input823 value415 value1 value2 = (output823, value415, value1) := by
  rw [input823_def, output823_def]
  try (conv => lhs; cbv)
  try rfl

theorem node824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input824 value415 value1 value2 = (output824, value416, value1) := by
  rw [input824_def, output824_def]
  try (conv => lhs; cbv)
  try rfl

theorem node825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input825 value416 value1 value2 = (output825, value417, value1) := by
  rw [input825_def, output825_def]
  try (conv => lhs; cbv)
  try rfl

theorem node826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input826 value417 value1 value2 = (output826, value418, value1) := by
  rw [input826_def, output826_def]
  try (conv => lhs; cbv)
  try rfl

theorem node827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input827 value418 value1 value2 = (output827, value4, value1) := by
  rw [input827_def, output827_def]
  try (conv => lhs; cbv)
  try rfl

theorem node828_cond_eq
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value417 value1 value2 = (output826, value418, value1))
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value418 value1 value2 = (output827, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input828 value417 value1 value2 = (output828, value4, value1) := by
  rw [input828_def, output828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child826]
  dsimp only
  rw [child827]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node829_cond_eq
    (child825 : Flapjack.WordAlloc.removeDeadStructural input825 value416 value1 value2 = (output825, value417, value1))
    (child828 : Flapjack.WordAlloc.removeDeadStructural input828 value417 value1 value2 = (output828, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input829 value416 value1 value2 = (output829, value4, value1) := by
  rw [input829_def, output829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child825]
  dsimp only
  rw [child828]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node830_cond_eq
    (child824 : Flapjack.WordAlloc.removeDeadStructural input824 value415 value1 value2 = (output824, value416, value1))
    (child829 : Flapjack.WordAlloc.removeDeadStructural input829 value416 value1 value2 = (output829, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input830 value415 value1 value2 = (output830, value4, value1) := by
  rw [input830_def, output830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child824]
  dsimp only
  rw [child829]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input831 value4 value1 value2 = (output831, value419, value1) := by
  rw [input831_def, output831_def]
  try (conv => lhs; cbv)
  try rfl

theorem node832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input832 value419 value1 value2 = (output832, value420, value1) := by
  rw [input832_def, output832_def]
  try (conv => lhs; cbv)
  try rfl

theorem node833_cond_eq
    (child831 : Flapjack.WordAlloc.removeDeadStructural input831 value4 value1 value2 = (output831, value419, value1))
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value419 value1 value2 = (output832, value420, value1)) : Flapjack.WordAlloc.removeDeadStructural input833 value4 value1 value2 = (output833, value420, value1) := by
  rw [input833_def, output833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child831]
  dsimp only
  rw [child832]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input834 value420 value1 value2 = (output834, value421, value1) := by
  rw [input834_def, output834_def]
  try (conv => lhs; cbv)
  try rfl

theorem node835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input835 value421 value1 value2 = (output835, value421, value1) := by
  rw [input835_def, output835_def]
  try (conv => lhs; cbv)
  try rfl

theorem node836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input836 value421 value1 value2 = (output836, value422, value1) := by
  rw [input836_def, output836_def]
  try (conv => lhs; cbv)
  try rfl

theorem node837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input837 value422 value1 value2 = (output837, value423, value1) := by
  rw [input837_def, output837_def]
  try (conv => lhs; cbv)
  try rfl

theorem node838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input838 value423 value1 value2 = (output838, value424, value1) := by
  rw [input838_def, output838_def]
  try (conv => lhs; cbv)
  try rfl

theorem node839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input839 value424 value1 value2 = (output839, value4, value1) := by
  rw [input839_def, output839_def]
  try (conv => lhs; cbv)
  try rfl

theorem node840_cond_eq
    (child838 : Flapjack.WordAlloc.removeDeadStructural input838 value423 value1 value2 = (output838, value424, value1))
    (child839 : Flapjack.WordAlloc.removeDeadStructural input839 value424 value1 value2 = (output839, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input840 value423 value1 value2 = (output840, value4, value1) := by
  rw [input840_def, output840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child838]
  dsimp only
  rw [child839]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node841_cond_eq
    (child837 : Flapjack.WordAlloc.removeDeadStructural input837 value422 value1 value2 = (output837, value423, value1))
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value423 value1 value2 = (output840, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input841 value422 value1 value2 = (output841, value4, value1) := by
  rw [input841_def, output841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child837]
  dsimp only
  rw [child840]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node842_cond_eq
    (child836 : Flapjack.WordAlloc.removeDeadStructural input836 value421 value1 value2 = (output836, value422, value1))
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value422 value1 value2 = (output841, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input842 value421 value1 value2 = (output842, value4, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child836]
  dsimp only
  rw [child841]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node843_cond_eq : Flapjack.WordAlloc.removeDeadStructural input843 value4 value1 value2 = (output843, value425, value1) := by
  rw [input843_def, output843_def]
  try (conv => lhs; cbv)
  try rfl

theorem node844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input844 value425 value1 value2 = (output844, value426, value1) := by
  rw [input844_def, output844_def]
  try (conv => lhs; cbv)
  try rfl

theorem node845_cond_eq
    (child843 : Flapjack.WordAlloc.removeDeadStructural input843 value4 value1 value2 = (output843, value425, value1))
    (child844 : Flapjack.WordAlloc.removeDeadStructural input844 value425 value1 value2 = (output844, value426, value1)) : Flapjack.WordAlloc.removeDeadStructural input845 value4 value1 value2 = (output845, value426, value1) := by
  rw [input845_def, output845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child843]
  dsimp only
  rw [child844]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input846 value426 value1 value2 = (output846, value427, value1) := by
  rw [input846_def, output846_def]
  try (conv => lhs; cbv)
  try rfl

theorem node847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input847 value427 value1 value2 = (output847, value427, value1) := by
  rw [input847_def, output847_def]
  try (conv => lhs; cbv)
  try rfl

theorem node848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input848 value427 value1 value2 = (output848, value428, value1) := by
  rw [input848_def, output848_def]
  try (conv => lhs; cbv)
  try rfl

theorem node849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input849 value428 value1 value2 = (output849, value429, value1) := by
  rw [input849_def, output849_def]
  try (conv => lhs; cbv)
  try rfl

theorem node850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input850 value429 value1 value2 = (output850, value430, value1) := by
  rw [input850_def, output850_def]
  try (conv => lhs; cbv)
  try rfl

theorem node851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input851 value430 value1 value2 = (output851, value4, value1) := by
  rw [input851_def, output851_def]
  try (conv => lhs; cbv)
  try rfl

theorem node852_cond_eq
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value429 value1 value2 = (output850, value430, value1))
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value430 value1 value2 = (output851, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input852 value429 value1 value2 = (output852, value4, value1) := by
  rw [input852_def, output852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child850]
  dsimp only
  rw [child851]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node853_cond_eq
    (child849 : Flapjack.WordAlloc.removeDeadStructural input849 value428 value1 value2 = (output849, value429, value1))
    (child852 : Flapjack.WordAlloc.removeDeadStructural input852 value429 value1 value2 = (output852, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input853 value428 value1 value2 = (output853, value4, value1) := by
  rw [input853_def, output853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child849]
  dsimp only
  rw [child852]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node854_cond_eq
    (child848 : Flapjack.WordAlloc.removeDeadStructural input848 value427 value1 value2 = (output848, value428, value1))
    (child853 : Flapjack.WordAlloc.removeDeadStructural input853 value428 value1 value2 = (output853, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input854 value427 value1 value2 = (output854, value4, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child848]
  dsimp only
  rw [child853]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input855 value4 value1 value2 = (output855, value431, value1) := by
  rw [input855_def, output855_def]
  try (conv => lhs; cbv)
  try rfl

theorem node856_cond_eq : Flapjack.WordAlloc.removeDeadStructural input856 value431 value1 value2 = (output856, value432, value1) := by
  rw [input856_def, output856_def]
  try (conv => lhs; cbv)
  try rfl

theorem node857_cond_eq
    (child855 : Flapjack.WordAlloc.removeDeadStructural input855 value4 value1 value2 = (output855, value431, value1))
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value431 value1 value2 = (output856, value432, value1)) : Flapjack.WordAlloc.removeDeadStructural input857 value4 value1 value2 = (output857, value432, value1) := by
  rw [input857_def, output857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child855]
  dsimp only
  rw [child856]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input858 value432 value1 value2 = (output858, value433, value1) := by
  rw [input858_def, output858_def]
  try (conv => lhs; cbv)
  try rfl

theorem node859_cond_eq : Flapjack.WordAlloc.removeDeadStructural input859 value433 value1 value2 = (output859, value433, value1) := by
  rw [input859_def, output859_def]
  try (conv => lhs; cbv)
  try rfl

theorem node860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input860 value433 value1 value2 = (output860, value434, value1) := by
  rw [input860_def, output860_def]
  try (conv => lhs; cbv)
  try rfl

theorem node861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input861 value434 value1 value2 = (output861, value435, value1) := by
  rw [input861_def, output861_def]
  try (conv => lhs; cbv)
  try rfl

theorem node862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input862 value435 value1 value2 = (output862, value436, value1) := by
  rw [input862_def, output862_def]
  try (conv => lhs; cbv)
  try rfl

theorem node863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input863 value436 value1 value2 = (output863, value4, value1) := by
  rw [input863_def, output863_def]
  try (conv => lhs; cbv)
  try rfl

theorem node864_cond_eq
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value435 value1 value2 = (output862, value436, value1))
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value436 value1 value2 = (output863, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input864 value435 value1 value2 = (output864, value4, value1) := by
  rw [input864_def, output864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child862]
  dsimp only
  rw [child863]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node865_cond_eq
    (child861 : Flapjack.WordAlloc.removeDeadStructural input861 value434 value1 value2 = (output861, value435, value1))
    (child864 : Flapjack.WordAlloc.removeDeadStructural input864 value435 value1 value2 = (output864, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input865 value434 value1 value2 = (output865, value4, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child861]
  dsimp only
  rw [child864]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node866_cond_eq
    (child860 : Flapjack.WordAlloc.removeDeadStructural input860 value433 value1 value2 = (output860, value434, value1))
    (child865 : Flapjack.WordAlloc.removeDeadStructural input865 value434 value1 value2 = (output865, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input866 value433 value1 value2 = (output866, value4, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child860]
  dsimp only
  rw [child865]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input867 value4 value1 value2 = (output867, value437, value1) := by
  rw [input867_def, output867_def]
  try (conv => lhs; cbv)
  try rfl

theorem node868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input868 value437 value1 value2 = (output868, value438, value1) := by
  rw [input868_def, output868_def]
  try (conv => lhs; cbv)
  try rfl

theorem node869_cond_eq
    (child867 : Flapjack.WordAlloc.removeDeadStructural input867 value4 value1 value2 = (output867, value437, value1))
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value437 value1 value2 = (output868, value438, value1)) : Flapjack.WordAlloc.removeDeadStructural input869 value4 value1 value2 = (output869, value438, value1) := by
  rw [input869_def, output869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child867]
  dsimp only
  rw [child868]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node870_cond_eq : Flapjack.WordAlloc.removeDeadStructural input870 value438 value1 value2 = (output870, value439, value1) := by
  rw [input870_def, output870_def]
  try (conv => lhs; cbv)
  try rfl

theorem node871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input871 value439 value1 value2 = (output871, value439, value1) := by
  rw [input871_def, output871_def]
  try (conv => lhs; cbv)
  try rfl

theorem node872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input872 value439 value1 value2 = (output872, value440, value1) := by
  rw [input872_def, output872_def]
  try (conv => lhs; cbv)
  try rfl

theorem node873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input873 value440 value1 value2 = (output873, value441, value1) := by
  rw [input873_def, output873_def]
  try (conv => lhs; cbv)
  try rfl

theorem node874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input874 value441 value1 value2 = (output874, value442, value1) := by
  rw [input874_def, output874_def]
  try (conv => lhs; cbv)
  try rfl

theorem node875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input875 value442 value1 value2 = (output875, value4, value1) := by
  rw [input875_def, output875_def]
  try (conv => lhs; cbv)
  try rfl

theorem node876_cond_eq
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value441 value1 value2 = (output874, value442, value1))
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value442 value1 value2 = (output875, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input876 value441 value1 value2 = (output876, value4, value1) := by
  rw [input876_def, output876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child874]
  dsimp only
  rw [child875]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node877_cond_eq
    (child873 : Flapjack.WordAlloc.removeDeadStructural input873 value440 value1 value2 = (output873, value441, value1))
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value441 value1 value2 = (output876, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input877 value440 value1 value2 = (output877, value4, value1) := by
  rw [input877_def, output877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child873]
  dsimp only
  rw [child876]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node878_cond_eq
    (child872 : Flapjack.WordAlloc.removeDeadStructural input872 value439 value1 value2 = (output872, value440, value1))
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value440 value1 value2 = (output877, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input878 value439 value1 value2 = (output878, value4, value1) := by
  rw [input878_def, output878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child872]
  dsimp only
  rw [child877]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input879 value4 value1 value2 = (output879, value443, value1) := by
  rw [input879_def, output879_def]
  try (conv => lhs; cbv)
  try rfl

theorem node880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input880 value443 value1 value2 = (output880, value444, value1) := by
  rw [input880_def, output880_def]
  try (conv => lhs; cbv)
  try rfl

theorem node881_cond_eq
    (child879 : Flapjack.WordAlloc.removeDeadStructural input879 value4 value1 value2 = (output879, value443, value1))
    (child880 : Flapjack.WordAlloc.removeDeadStructural input880 value443 value1 value2 = (output880, value444, value1)) : Flapjack.WordAlloc.removeDeadStructural input881 value4 value1 value2 = (output881, value444, value1) := by
  rw [input881_def, output881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child879]
  dsimp only
  rw [child880]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input882 value444 value1 value2 = (output882, value445, value1) := by
  rw [input882_def, output882_def]
  try (conv => lhs; cbv)
  try rfl

theorem node883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input883 value445 value1 value2 = (output883, value445, value1) := by
  rw [input883_def, output883_def]
  try (conv => lhs; cbv)
  try rfl

theorem node884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input884 value445 value1 value2 = (output884, value446, value1) := by
  rw [input884_def, output884_def]
  try (conv => lhs; cbv)
  try rfl

theorem node885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input885 value446 value1 value2 = (output885, value447, value1) := by
  rw [input885_def, output885_def]
  try (conv => lhs; cbv)
  try rfl

theorem node886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input886 value447 value1 value2 = (output886, value448, value1) := by
  rw [input886_def, output886_def]
  try (conv => lhs; cbv)
  try rfl

theorem node887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input887 value448 value1 value2 = (output887, value4, value1) := by
  rw [input887_def, output887_def]
  try (conv => lhs; cbv)
  try rfl

theorem node888_cond_eq
    (child886 : Flapjack.WordAlloc.removeDeadStructural input886 value447 value1 value2 = (output886, value448, value1))
    (child887 : Flapjack.WordAlloc.removeDeadStructural input887 value448 value1 value2 = (output887, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input888 value447 value1 value2 = (output888, value4, value1) := by
  rw [input888_def, output888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child886]
  dsimp only
  rw [child887]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node889_cond_eq
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value446 value1 value2 = (output885, value447, value1))
    (child888 : Flapjack.WordAlloc.removeDeadStructural input888 value447 value1 value2 = (output888, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input889 value446 value1 value2 = (output889, value4, value1) := by
  rw [input889_def, output889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child885]
  dsimp only
  rw [child888]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node890_cond_eq
    (child884 : Flapjack.WordAlloc.removeDeadStructural input884 value445 value1 value2 = (output884, value446, value1))
    (child889 : Flapjack.WordAlloc.removeDeadStructural input889 value446 value1 value2 = (output889, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input890 value445 value1 value2 = (output890, value4, value1) := by
  rw [input890_def, output890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child884]
  dsimp only
  rw [child889]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node891_cond_eq : Flapjack.WordAlloc.removeDeadStructural input891 value4 value1 value2 = (output891, value449, value1) := by
  rw [input891_def, output891_def]
  try (conv => lhs; cbv)
  try rfl

theorem node892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input892 value449 value1 value2 = (output892, value450, value1) := by
  rw [input892_def, output892_def]
  try (conv => lhs; cbv)
  try rfl

theorem node893_cond_eq
    (child891 : Flapjack.WordAlloc.removeDeadStructural input891 value4 value1 value2 = (output891, value449, value1))
    (child892 : Flapjack.WordAlloc.removeDeadStructural input892 value449 value1 value2 = (output892, value450, value1)) : Flapjack.WordAlloc.removeDeadStructural input893 value4 value1 value2 = (output893, value450, value1) := by
  rw [input893_def, output893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child891]
  dsimp only
  rw [child892]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input894 value450 value1 value2 = (output894, value451, value1) := by
  rw [input894_def, output894_def]
  try (conv => lhs; cbv)
  try rfl

theorem node895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input895 value451 value1 value2 = (output895, value451, value1) := by
  rw [input895_def, output895_def]
  try (conv => lhs; cbv)
  try rfl

theorem node896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input896 value451 value1 value2 = (output896, value452, value1) := by
  rw [input896_def, output896_def]
  try (conv => lhs; cbv)
  try rfl

theorem node897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input897 value452 value1 value2 = (output897, value453, value1) := by
  rw [input897_def, output897_def]
  try (conv => lhs; cbv)
  try rfl

theorem node898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input898 value453 value1 value2 = (output898, value454, value1) := by
  rw [input898_def, output898_def]
  try (conv => lhs; cbv)
  try rfl

theorem node899_cond_eq : Flapjack.WordAlloc.removeDeadStructural input899 value454 value1 value2 = (output899, value4, value1) := by
  rw [input899_def, output899_def]
  try (conv => lhs; cbv)
  try rfl

theorem node900_cond_eq
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value453 value1 value2 = (output898, value454, value1))
    (child899 : Flapjack.WordAlloc.removeDeadStructural input899 value454 value1 value2 = (output899, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input900 value453 value1 value2 = (output900, value4, value1) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child898]
  dsimp only
  rw [child899]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node901_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value452 value1 value2 = (output897, value453, value1))
    (child900 : Flapjack.WordAlloc.removeDeadStructural input900 value453 value1 value2 = (output900, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input901 value452 value1 value2 = (output901, value4, value1) := by
  rw [input901_def, output901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  dsimp only
  rw [child900]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node902_cond_eq
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value451 value1 value2 = (output896, value452, value1))
    (child901 : Flapjack.WordAlloc.removeDeadStructural input901 value452 value1 value2 = (output901, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input902 value451 value1 value2 = (output902, value4, value1) := by
  rw [input902_def, output902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child896]
  dsimp only
  rw [child901]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input903 value4 value1 value2 = (output903, value455, value1) := by
  rw [input903_def, output903_def]
  try (conv => lhs; cbv)
  try rfl

theorem node904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input904 value455 value1 value2 = (output904, value456, value1) := by
  rw [input904_def, output904_def]
  try (conv => lhs; cbv)
  try rfl

theorem node905_cond_eq
    (child903 : Flapjack.WordAlloc.removeDeadStructural input903 value4 value1 value2 = (output903, value455, value1))
    (child904 : Flapjack.WordAlloc.removeDeadStructural input904 value455 value1 value2 = (output904, value456, value1)) : Flapjack.WordAlloc.removeDeadStructural input905 value4 value1 value2 = (output905, value456, value1) := by
  rw [input905_def, output905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child903]
  dsimp only
  rw [child904]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input906 value456 value1 value2 = (output906, value457, value1) := by
  rw [input906_def, output906_def]
  try (conv => lhs; cbv)
  try rfl

theorem node907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input907 value457 value1 value2 = (output907, value457, value1) := by
  rw [input907_def, output907_def]
  try (conv => lhs; cbv)
  try rfl

theorem node908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input908 value457 value1 value2 = (output908, value458, value1) := by
  rw [input908_def, output908_def]
  try (conv => lhs; cbv)
  try rfl

theorem node909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input909 value458 value1 value2 = (output909, value459, value1) := by
  rw [input909_def, output909_def]
  try (conv => lhs; cbv)
  try rfl

theorem node910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input910 value459 value1 value2 = (output910, value460, value1) := by
  rw [input910_def, output910_def]
  try (conv => lhs; cbv)
  try rfl

theorem node911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input911 value460 value1 value2 = (output911, value4, value1) := by
  rw [input911_def, output911_def]
  try (conv => lhs; cbv)
  try rfl

theorem node912_cond_eq
    (child910 : Flapjack.WordAlloc.removeDeadStructural input910 value459 value1 value2 = (output910, value460, value1))
    (child911 : Flapjack.WordAlloc.removeDeadStructural input911 value460 value1 value2 = (output911, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input912 value459 value1 value2 = (output912, value4, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child910]
  dsimp only
  rw [child911]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node913_cond_eq
    (child909 : Flapjack.WordAlloc.removeDeadStructural input909 value458 value1 value2 = (output909, value459, value1))
    (child912 : Flapjack.WordAlloc.removeDeadStructural input912 value459 value1 value2 = (output912, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input913 value458 value1 value2 = (output913, value4, value1) := by
  rw [input913_def, output913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child909]
  dsimp only
  rw [child912]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node914_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value457 value1 value2 = (output908, value458, value1))
    (child913 : Flapjack.WordAlloc.removeDeadStructural input913 value458 value1 value2 = (output913, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input914 value457 value1 value2 = (output914, value4, value1) := by
  rw [input914_def, output914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  dsimp only
  rw [child913]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node915_cond_eq : Flapjack.WordAlloc.removeDeadStructural input915 value4 value1 value2 = (output915, value461, value1) := by
  rw [input915_def, output915_def]
  try (conv => lhs; cbv)
  try rfl

theorem node916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input916 value461 value1 value2 = (output916, value462, value1) := by
  rw [input916_def, output916_def]
  try (conv => lhs; cbv)
  try rfl

theorem node917_cond_eq
    (child915 : Flapjack.WordAlloc.removeDeadStructural input915 value4 value1 value2 = (output915, value461, value1))
    (child916 : Flapjack.WordAlloc.removeDeadStructural input916 value461 value1 value2 = (output916, value462, value1)) : Flapjack.WordAlloc.removeDeadStructural input917 value4 value1 value2 = (output917, value462, value1) := by
  rw [input917_def, output917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child915]
  dsimp only
  rw [child916]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input918 value462 value1 value2 = (output918, value463, value1) := by
  rw [input918_def, output918_def]
  try (conv => lhs; cbv)
  try rfl

theorem node919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input919 value463 value1 value2 = (output919, value463, value1) := by
  rw [input919_def, output919_def]
  try (conv => lhs; cbv)
  try rfl

theorem node920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input920 value463 value1 value2 = (output920, value464, value1) := by
  rw [input920_def, output920_def]
  try (conv => lhs; cbv)
  try rfl

theorem node921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input921 value464 value1 value2 = (output921, value465, value1) := by
  rw [input921_def, output921_def]
  try (conv => lhs; cbv)
  try rfl

theorem node922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input922 value465 value1 value2 = (output922, value466, value1) := by
  rw [input922_def, output922_def]
  try (conv => lhs; cbv)
  try rfl

theorem node923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input923 value466 value1 value2 = (output923, value4, value1) := by
  rw [input923_def, output923_def]
  try (conv => lhs; cbv)
  try rfl

theorem node924_cond_eq
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value465 value1 value2 = (output922, value466, value1))
    (child923 : Flapjack.WordAlloc.removeDeadStructural input923 value466 value1 value2 = (output923, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input924 value465 value1 value2 = (output924, value4, value1) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child922]
  dsimp only
  rw [child923]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node925_cond_eq
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value464 value1 value2 = (output921, value465, value1))
    (child924 : Flapjack.WordAlloc.removeDeadStructural input924 value465 value1 value2 = (output924, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input925 value464 value1 value2 = (output925, value4, value1) := by
  rw [input925_def, output925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child921]
  dsimp only
  rw [child924]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node926_cond_eq
    (child920 : Flapjack.WordAlloc.removeDeadStructural input920 value463 value1 value2 = (output920, value464, value1))
    (child925 : Flapjack.WordAlloc.removeDeadStructural input925 value464 value1 value2 = (output925, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input926 value463 value1 value2 = (output926, value4, value1) := by
  rw [input926_def, output926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child920]
  dsimp only
  rw [child925]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input927 value4 value1 value2 = (output927, value467, value1) := by
  rw [input927_def, output927_def]
  try (conv => lhs; cbv)
  try rfl

theorem node928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input928 value467 value1 value2 = (output928, value468, value1) := by
  rw [input928_def, output928_def]
  try (conv => lhs; cbv)
  try rfl

theorem node929_cond_eq
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value4 value1 value2 = (output927, value467, value1))
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value467 value1 value2 = (output928, value468, value1)) : Flapjack.WordAlloc.removeDeadStructural input929 value4 value1 value2 = (output929, value468, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child927]
  dsimp only
  rw [child928]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input930 value468 value1 value2 = (output930, value469, value1) := by
  rw [input930_def, output930_def]
  try (conv => lhs; cbv)
  try rfl

theorem node931_cond_eq : Flapjack.WordAlloc.removeDeadStructural input931 value469 value1 value2 = (output931, value469, value1) := by
  rw [input931_def, output931_def]
  try (conv => lhs; cbv)
  try rfl

theorem node932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input932 value469 value1 value2 = (output932, value470, value1) := by
  rw [input932_def, output932_def]
  try (conv => lhs; cbv)
  try rfl

theorem node933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input933 value470 value1 value2 = (output933, value471, value1) := by
  rw [input933_def, output933_def]
  try (conv => lhs; cbv)
  try rfl

theorem node934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input934 value471 value1 value2 = (output934, value472, value1) := by
  rw [input934_def, output934_def]
  try (conv => lhs; cbv)
  try rfl

theorem node935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input935 value472 value1 value2 = (output935, value4, value1) := by
  rw [input935_def, output935_def]
  try (conv => lhs; cbv)
  try rfl

theorem node936_cond_eq
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value471 value1 value2 = (output934, value472, value1))
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value472 value1 value2 = (output935, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input936 value471 value1 value2 = (output936, value4, value1) := by
  rw [input936_def, output936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child934]
  dsimp only
  rw [child935]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node937_cond_eq
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value470 value1 value2 = (output933, value471, value1))
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value471 value1 value2 = (output936, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input937 value470 value1 value2 = (output937, value4, value1) := by
  rw [input937_def, output937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child933]
  dsimp only
  rw [child936]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node938_cond_eq
    (child932 : Flapjack.WordAlloc.removeDeadStructural input932 value469 value1 value2 = (output932, value470, value1))
    (child937 : Flapjack.WordAlloc.removeDeadStructural input937 value470 value1 value2 = (output937, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input938 value469 value1 value2 = (output938, value4, value1) := by
  rw [input938_def, output938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child932]
  dsimp only
  rw [child937]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input939 value4 value1 value2 = (output939, value473, value1) := by
  rw [input939_def, output939_def]
  try (conv => lhs; cbv)
  try rfl

theorem node940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input940 value473 value1 value2 = (output940, value474, value1) := by
  rw [input940_def, output940_def]
  try (conv => lhs; cbv)
  try rfl

theorem node941_cond_eq
    (child939 : Flapjack.WordAlloc.removeDeadStructural input939 value4 value1 value2 = (output939, value473, value1))
    (child940 : Flapjack.WordAlloc.removeDeadStructural input940 value473 value1 value2 = (output940, value474, value1)) : Flapjack.WordAlloc.removeDeadStructural input941 value4 value1 value2 = (output941, value474, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child939]
  dsimp only
  rw [child940]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input942 value474 value1 value2 = (output942, value475, value1) := by
  rw [input942_def, output942_def]
  try (conv => lhs; cbv)
  try rfl

theorem node943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input943 value475 value1 value2 = (output943, value475, value1) := by
  rw [input943_def, output943_def]
  try (conv => lhs; cbv)
  try rfl

theorem node944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input944 value475 value1 value2 = (output944, value476, value1) := by
  rw [input944_def, output944_def]
  try (conv => lhs; cbv)
  try rfl

theorem node945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input945 value476 value1 value2 = (output945, value477, value1) := by
  rw [input945_def, output945_def]
  try (conv => lhs; cbv)
  try rfl

theorem node946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input946 value477 value1 value2 = (output946, value478, value1) := by
  rw [input946_def, output946_def]
  try (conv => lhs; cbv)
  try rfl

theorem node947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input947 value478 value1 value2 = (output947, value4, value1) := by
  rw [input947_def, output947_def]
  try (conv => lhs; cbv)
  try rfl

theorem node948_cond_eq
    (child946 : Flapjack.WordAlloc.removeDeadStructural input946 value477 value1 value2 = (output946, value478, value1))
    (child947 : Flapjack.WordAlloc.removeDeadStructural input947 value478 value1 value2 = (output947, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input948 value477 value1 value2 = (output948, value4, value1) := by
  rw [input948_def, output948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child946]
  dsimp only
  rw [child947]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node949_cond_eq
    (child945 : Flapjack.WordAlloc.removeDeadStructural input945 value476 value1 value2 = (output945, value477, value1))
    (child948 : Flapjack.WordAlloc.removeDeadStructural input948 value477 value1 value2 = (output948, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input949 value476 value1 value2 = (output949, value4, value1) := by
  rw [input949_def, output949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child945]
  dsimp only
  rw [child948]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node950_cond_eq
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value475 value1 value2 = (output944, value476, value1))
    (child949 : Flapjack.WordAlloc.removeDeadStructural input949 value476 value1 value2 = (output949, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input950 value475 value1 value2 = (output950, value4, value1) := by
  rw [input950_def, output950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child944]
  dsimp only
  rw [child949]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input951 value4 value1 value2 = (output951, value479, value1) := by
  rw [input951_def, output951_def]
  try (conv => lhs; cbv)
  try rfl

theorem node952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input952 value479 value1 value2 = (output952, value480, value1) := by
  rw [input952_def, output952_def]
  try (conv => lhs; cbv)
  try rfl

theorem node953_cond_eq
    (child951 : Flapjack.WordAlloc.removeDeadStructural input951 value4 value1 value2 = (output951, value479, value1))
    (child952 : Flapjack.WordAlloc.removeDeadStructural input952 value479 value1 value2 = (output952, value480, value1)) : Flapjack.WordAlloc.removeDeadStructural input953 value4 value1 value2 = (output953, value480, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child951]
  dsimp only
  rw [child952]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input954 value480 value1 value2 = (output954, value481, value1) := by
  rw [input954_def, output954_def]
  try (conv => lhs; cbv)
  try rfl

theorem node955_cond_eq : Flapjack.WordAlloc.removeDeadStructural input955 value481 value1 value2 = (output955, value481, value1) := by
  rw [input955_def, output955_def]
  try (conv => lhs; cbv)
  try rfl

theorem node956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input956 value481 value1 value2 = (output956, value482, value1) := by
  rw [input956_def, output956_def]
  try (conv => lhs; cbv)
  try rfl

theorem node957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input957 value482 value1 value2 = (output957, value483, value1) := by
  rw [input957_def, output957_def]
  try (conv => lhs; cbv)
  try rfl

theorem node958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input958 value483 value1 value2 = (output958, value484, value1) := by
  rw [input958_def, output958_def]
  try (conv => lhs; cbv)
  try rfl

theorem node959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input959 value484 value1 value2 = (output959, value4, value1) := by
  rw [input959_def, output959_def]
  try (conv => lhs; cbv)
  try rfl

theorem node960_cond_eq
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value483 value1 value2 = (output958, value484, value1))
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value484 value1 value2 = (output959, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input960 value483 value1 value2 = (output960, value4, value1) := by
  rw [input960_def, output960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child958]
  dsimp only
  rw [child959]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node961_cond_eq
    (child957 : Flapjack.WordAlloc.removeDeadStructural input957 value482 value1 value2 = (output957, value483, value1))
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value483 value1 value2 = (output960, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input961 value482 value1 value2 = (output961, value4, value1) := by
  rw [input961_def, output961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child957]
  dsimp only
  rw [child960]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node962_cond_eq
    (child956 : Flapjack.WordAlloc.removeDeadStructural input956 value481 value1 value2 = (output956, value482, value1))
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value482 value1 value2 = (output961, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input962 value481 value1 value2 = (output962, value4, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child956]
  dsimp only
  rw [child961]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node963_cond_eq : Flapjack.WordAlloc.removeDeadStructural input963 value4 value1 value2 = (output963, value485, value1) := by
  rw [input963_def, output963_def]
  try (conv => lhs; cbv)
  try rfl

theorem node964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input964 value485 value1 value2 = (output964, value486, value1) := by
  rw [input964_def, output964_def]
  try (conv => lhs; cbv)
  try rfl

theorem node965_cond_eq
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value4 value1 value2 = (output963, value485, value1))
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value485 value1 value2 = (output964, value486, value1)) : Flapjack.WordAlloc.removeDeadStructural input965 value4 value1 value2 = (output965, value486, value1) := by
  rw [input965_def, output965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child963]
  dsimp only
  rw [child964]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input966 value486 value1 value2 = (output966, value487, value1) := by
  rw [input966_def, output966_def]
  try (conv => lhs; cbv)
  try rfl

theorem node967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input967 value487 value1 value2 = (output967, value487, value1) := by
  rw [input967_def, output967_def]
  try (conv => lhs; cbv)
  try rfl

theorem node968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input968 value487 value1 value2 = (output968, value488, value1) := by
  rw [input968_def, output968_def]
  try (conv => lhs; cbv)
  try rfl

theorem node969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input969 value488 value1 value2 = (output969, value489, value1) := by
  rw [input969_def, output969_def]
  try (conv => lhs; cbv)
  try rfl

theorem node970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input970 value489 value1 value2 = (output970, value490, value1) := by
  rw [input970_def, output970_def]
  try (conv => lhs; cbv)
  try rfl

theorem node971_cond_eq : Flapjack.WordAlloc.removeDeadStructural input971 value490 value1 value2 = (output971, value4, value1) := by
  rw [input971_def, output971_def]
  try (conv => lhs; cbv)
  try rfl

theorem node972_cond_eq
    (child970 : Flapjack.WordAlloc.removeDeadStructural input970 value489 value1 value2 = (output970, value490, value1))
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value490 value1 value2 = (output971, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input972 value489 value1 value2 = (output972, value4, value1) := by
  rw [input972_def, output972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child970]
  dsimp only
  rw [child971]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node973_cond_eq
    (child969 : Flapjack.WordAlloc.removeDeadStructural input969 value488 value1 value2 = (output969, value489, value1))
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value489 value1 value2 = (output972, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input973 value488 value1 value2 = (output973, value4, value1) := by
  rw [input973_def, output973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child969]
  dsimp only
  rw [child972]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node974_cond_eq
    (child968 : Flapjack.WordAlloc.removeDeadStructural input968 value487 value1 value2 = (output968, value488, value1))
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value488 value1 value2 = (output973, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input974 value487 value1 value2 = (output974, value4, value1) := by
  rw [input974_def, output974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child968]
  dsimp only
  rw [child973]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input975 value4 value1 value2 = (output975, value491, value1) := by
  rw [input975_def, output975_def]
  try (conv => lhs; cbv)
  try rfl

theorem node976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input976 value491 value1 value2 = (output976, value492, value1) := by
  rw [input976_def, output976_def]
  try (conv => lhs; cbv)
  try rfl

theorem node977_cond_eq
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value4 value1 value2 = (output975, value491, value1))
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value491 value1 value2 = (output976, value492, value1)) : Flapjack.WordAlloc.removeDeadStructural input977 value4 value1 value2 = (output977, value492, value1) := by
  rw [input977_def, output977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child975]
  dsimp only
  rw [child976]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input978 value492 value1 value2 = (output978, value493, value1) := by
  rw [input978_def, output978_def]
  try (conv => lhs; cbv)
  try rfl

theorem node979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input979 value493 value1 value2 = (output979, value493, value1) := by
  rw [input979_def, output979_def]
  try (conv => lhs; cbv)
  try rfl

theorem node980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input980 value493 value1 value2 = (output980, value494, value1) := by
  rw [input980_def, output980_def]
  try (conv => lhs; cbv)
  try rfl

theorem node981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input981 value494 value1 value2 = (output981, value495, value1) := by
  rw [input981_def, output981_def]
  try (conv => lhs; cbv)
  try rfl

theorem node982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input982 value495 value1 value2 = (output982, value496, value1) := by
  rw [input982_def, output982_def]
  try (conv => lhs; cbv)
  try rfl

theorem node983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input983 value496 value1 value2 = (output983, value4, value1) := by
  rw [input983_def, output983_def]
  try (conv => lhs; cbv)
  try rfl

theorem node984_cond_eq
    (child982 : Flapjack.WordAlloc.removeDeadStructural input982 value495 value1 value2 = (output982, value496, value1))
    (child983 : Flapjack.WordAlloc.removeDeadStructural input983 value496 value1 value2 = (output983, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input984 value495 value1 value2 = (output984, value4, value1) := by
  rw [input984_def, output984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child982]
  dsimp only
  rw [child983]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node985_cond_eq
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value494 value1 value2 = (output981, value495, value1))
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value495 value1 value2 = (output984, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input985 value494 value1 value2 = (output985, value4, value1) := by
  rw [input985_def, output985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child981]
  dsimp only
  rw [child984]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node986_cond_eq
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value493 value1 value2 = (output980, value494, value1))
    (child985 : Flapjack.WordAlloc.removeDeadStructural input985 value494 value1 value2 = (output985, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input986 value493 value1 value2 = (output986, value4, value1) := by
  rw [input986_def, output986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child980]
  dsimp only
  rw [child985]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input987 value4 value1 value2 = (output987, value497, value1) := by
  rw [input987_def, output987_def]
  try (conv => lhs; cbv)
  try rfl

theorem node988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input988 value497 value1 value2 = (output988, value498, value1) := by
  rw [input988_def, output988_def]
  try (conv => lhs; cbv)
  try rfl

theorem node989_cond_eq
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value4 value1 value2 = (output987, value497, value1))
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value497 value1 value2 = (output988, value498, value1)) : Flapjack.WordAlloc.removeDeadStructural input989 value4 value1 value2 = (output989, value498, value1) := by
  rw [input989_def, output989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child987]
  dsimp only
  rw [child988]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input990 value498 value1 value2 = (output990, value499, value1) := by
  rw [input990_def, output990_def]
  try (conv => lhs; cbv)
  try rfl

theorem node991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input991 value499 value1 value2 = (output991, value499, value1) := by
  rw [input991_def, output991_def]
  try (conv => lhs; cbv)
  try rfl

theorem node992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input992 value499 value1 value2 = (output992, value500, value1) := by
  rw [input992_def, output992_def]
  try (conv => lhs; cbv)
  try rfl

theorem node993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input993 value500 value1 value2 = (output993, value501, value1) := by
  rw [input993_def, output993_def]
  try (conv => lhs; cbv)
  try rfl

theorem node994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input994 value501 value1 value2 = (output994, value502, value1) := by
  rw [input994_def, output994_def]
  try (conv => lhs; cbv)
  try rfl

theorem node995_cond_eq : Flapjack.WordAlloc.removeDeadStructural input995 value502 value1 value2 = (output995, value4, value1) := by
  rw [input995_def, output995_def]
  try (conv => lhs; cbv)
  try rfl

theorem node996_cond_eq
    (child994 : Flapjack.WordAlloc.removeDeadStructural input994 value501 value1 value2 = (output994, value502, value1))
    (child995 : Flapjack.WordAlloc.removeDeadStructural input995 value502 value1 value2 = (output995, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input996 value501 value1 value2 = (output996, value4, value1) := by
  rw [input996_def, output996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child994]
  dsimp only
  rw [child995]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node997_cond_eq
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value500 value1 value2 = (output993, value501, value1))
    (child996 : Flapjack.WordAlloc.removeDeadStructural input996 value501 value1 value2 = (output996, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input997 value500 value1 value2 = (output997, value4, value1) := by
  rw [input997_def, output997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child993]
  dsimp only
  rw [child996]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node998_cond_eq
    (child992 : Flapjack.WordAlloc.removeDeadStructural input992 value499 value1 value2 = (output992, value500, value1))
    (child997 : Flapjack.WordAlloc.removeDeadStructural input997 value500 value1 value2 = (output997, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input998 value499 value1 value2 = (output998, value4, value1) := by
  rw [input998_def, output998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child992]
  dsimp only
  rw [child997]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input999 value4 value1 value2 = (output999, value503, value1) := by
  rw [input999_def, output999_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1000 value503 value1 value2 = (output1000, value504, value1) := by
  rw [input1000_def, output1000_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1001_cond_eq
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value4 value1 value2 = (output999, value503, value1))
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value503 value1 value2 = (output1000, value504, value1)) : Flapjack.WordAlloc.removeDeadStructural input1001 value4 value1 value2 = (output1001, value504, value1) := by
  rw [input1001_def, output1001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child999]
  dsimp only
  rw [child1000]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1002 value504 value1 value2 = (output1002, value505, value1) := by
  rw [input1002_def, output1002_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1003 value505 value1 value2 = (output1003, value505, value1) := by
  rw [input1003_def, output1003_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1004 value505 value1 value2 = (output1004, value506, value1) := by
  rw [input1004_def, output1004_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1005 value506 value1 value2 = (output1005, value507, value1) := by
  rw [input1005_def, output1005_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1006 value507 value1 value2 = (output1006, value508, value1) := by
  rw [input1006_def, output1006_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1007 value508 value1 value2 = (output1007, value4, value1) := by
  rw [input1007_def, output1007_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1008_cond_eq
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value507 value1 value2 = (output1006, value508, value1))
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value508 value1 value2 = (output1007, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1008 value507 value1 value2 = (output1008, value4, value1) := by
  rw [input1008_def, output1008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1006]
  dsimp only
  rw [child1007]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1009_cond_eq
    (child1005 : Flapjack.WordAlloc.removeDeadStructural input1005 value506 value1 value2 = (output1005, value507, value1))
    (child1008 : Flapjack.WordAlloc.removeDeadStructural input1008 value507 value1 value2 = (output1008, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1009 value506 value1 value2 = (output1009, value4, value1) := by
  rw [input1009_def, output1009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1005]
  dsimp only
  rw [child1008]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1010_cond_eq
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value505 value1 value2 = (output1004, value506, value1))
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value506 value1 value2 = (output1009, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1010 value505 value1 value2 = (output1010, value4, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1004]
  dsimp only
  rw [child1009]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1011_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1011 value4 value1 value2 = (output1011, value509, value1) := by
  rw [input1011_def, output1011_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1012 value509 value1 value2 = (output1012, value510, value1) := by
  rw [input1012_def, output1012_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1013_cond_eq
    (child1011 : Flapjack.WordAlloc.removeDeadStructural input1011 value4 value1 value2 = (output1011, value509, value1))
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value509 value1 value2 = (output1012, value510, value1)) : Flapjack.WordAlloc.removeDeadStructural input1013 value4 value1 value2 = (output1013, value510, value1) := by
  rw [input1013_def, output1013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1011]
  dsimp only
  rw [child1012]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1014 value510 value1 value2 = (output1014, value511, value1) := by
  rw [input1014_def, output1014_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1015 value511 value1 value2 = (output1015, value511, value1) := by
  rw [input1015_def, output1015_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1016 value511 value1 value2 = (output1016, value512, value1) := by
  rw [input1016_def, output1016_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1017 value512 value1 value2 = (output1017, value513, value1) := by
  rw [input1017_def, output1017_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1018 value513 value1 value2 = (output1018, value514, value1) := by
  rw [input1018_def, output1018_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1019_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1019 value514 value1 value2 = (output1019, value4, value1) := by
  rw [input1019_def, output1019_def]
  try (conv => lhs; cbv)
  try rfl

theorem node1020_cond_eq
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value513 value1 value2 = (output1018, value514, value1))
    (child1019 : Flapjack.WordAlloc.removeDeadStructural input1019 value514 value1 value2 = (output1019, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1020 value513 value1 value2 = (output1020, value4, value1) := by
  rw [input1020_def, output1020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1018]
  dsimp only
  rw [child1019]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1021_cond_eq
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value512 value1 value2 = (output1017, value513, value1))
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value513 value1 value2 = (output1020, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1021 value512 value1 value2 = (output1021, value4, value1) := by
  rw [input1021_def, output1021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1017]
  dsimp only
  rw [child1020]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1022_cond_eq
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value511 value1 value2 = (output1016, value512, value1))
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value512 value1 value2 = (output1021, value4, value1)) : Flapjack.WordAlloc.removeDeadStructural input1022 value511 value1 value2 = (output1022, value4, value1) := by
  rw [input1022_def, output1022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1016]
  dsimp only
  rw [child1021]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

theorem node1023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input1023 value4 value1 value2 = (output1023, value515, value1) := by
  rw [input1023_def, output1023_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node1023_cond_eq
end InitECandidate.Proofs.DeadStages64.Parallel
