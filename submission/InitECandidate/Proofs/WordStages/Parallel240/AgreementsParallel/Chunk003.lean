import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel240.Data2
import InitECandidate.Proofs.WordStages.Parallel240.Data3
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk003
import InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel.Chunk002

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel
theorem input768_eq : InitECandidate.Proofs.DeadStages240.Parallel.input768 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3807 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input768_def]
  kernel_rfl

theorem output768_eq : InitECandidate.Proofs.DeadStages240.Parallel.output768 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3349 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output768_def]
  kernel_rfl

theorem input769_eq : InitECandidate.Proofs.DeadStages240.Parallel.input769 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3806 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input769_def]
  kernel_rfl

theorem output769_eq : InitECandidate.Proofs.DeadStages240.Parallel.output769 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3348 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output769_def]
  kernel_rfl

theorem input770_eq : InitECandidate.Proofs.DeadStages240.Parallel.input770 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3808 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input770_def]
  simp only [input769_eq, input768_eq]
  kernel_rfl

theorem output770_eq : InitECandidate.Proofs.DeadStages240.Parallel.output770 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3350 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output770_def]
  simp only [output769_eq, output768_eq]
  kernel_rfl

theorem input771_eq : InitECandidate.Proofs.DeadStages240.Parallel.input771 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3810 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input771_def]
  simp only [input770_eq, input767_eq]
  kernel_rfl

theorem output771_eq : InitECandidate.Proofs.DeadStages240.Parallel.output771 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3352 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output771_def]
  simp only [output770_eq, output767_eq]
  kernel_rfl

theorem input772_eq : InitECandidate.Proofs.DeadStages240.Parallel.input772 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3812 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input772_def]
  simp only [input771_eq, input766_eq]
  kernel_rfl

theorem output772_eq : InitECandidate.Proofs.DeadStages240.Parallel.output772 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3354 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output772_def]
  simp only [output771_eq, output766_eq]
  kernel_rfl

theorem input773_eq : InitECandidate.Proofs.DeadStages240.Parallel.input773 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3814 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input773_def]
  simp only [input772_eq, input765_eq]
  kernel_rfl

theorem output773_eq : InitECandidate.Proofs.DeadStages240.Parallel.output773 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3356 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output773_def]
  simp only [output772_eq, output765_eq]
  kernel_rfl

theorem input774_eq : InitECandidate.Proofs.DeadStages240.Parallel.input774 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3803 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input774_def]
  kernel_rfl

theorem output774_eq : InitECandidate.Proofs.DeadStages240.Parallel.output774 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3345 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output774_def]
  kernel_rfl

theorem input775_eq : InitECandidate.Proofs.DeadStages240.Parallel.input775 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3802 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input775_def]
  kernel_rfl

theorem output775_eq : InitECandidate.Proofs.DeadStages240.Parallel.output775 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3344 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output775_def]
  kernel_rfl

theorem input776_eq : InitECandidate.Proofs.DeadStages240.Parallel.input776 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3804 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input776_def]
  simp only [input775_eq, input774_eq]
  kernel_rfl

theorem output776_eq : InitECandidate.Proofs.DeadStages240.Parallel.output776 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3346 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output776_def]
  simp only [output775_eq, output774_eq]
  kernel_rfl

theorem input777_eq : InitECandidate.Proofs.DeadStages240.Parallel.input777 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3800 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input777_def]
  kernel_rfl

theorem output777_eq : InitECandidate.Proofs.DeadStages240.Parallel.output777 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3342 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output777_def]
  kernel_rfl

theorem input778_eq : InitECandidate.Proofs.DeadStages240.Parallel.input778 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3798 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input778_def]
  kernel_rfl

theorem output778_eq : InitECandidate.Proofs.DeadStages240.Parallel.output778 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output778_def]
  kernel_rfl

theorem input779_eq : InitECandidate.Proofs.DeadStages240.Parallel.input779 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3795 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input779_def]
  kernel_rfl

theorem output779_eq : InitECandidate.Proofs.DeadStages240.Parallel.output779 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3339 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output779_def]
  kernel_rfl

theorem input780_eq : InitECandidate.Proofs.DeadStages240.Parallel.input780 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3793 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input780_def]
  kernel_rfl

theorem output780_eq : InitECandidate.Proofs.DeadStages240.Parallel.output780 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3337 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output780_def]
  kernel_rfl

theorem input781_eq : InitECandidate.Proofs.DeadStages240.Parallel.input781 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3791 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input781_def]
  kernel_rfl

theorem output781_eq : InitECandidate.Proofs.DeadStages240.Parallel.output781 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3335 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output781_def]
  kernel_rfl

theorem input782_eq : InitECandidate.Proofs.DeadStages240.Parallel.input782 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3789 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input782_def]
  kernel_rfl

theorem output782_eq : InitECandidate.Proofs.DeadStages240.Parallel.output782 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3333 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output782_def]
  kernel_rfl

theorem input783_eq : InitECandidate.Proofs.DeadStages240.Parallel.input783 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3788 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input783_def]
  kernel_rfl

theorem output783_eq : InitECandidate.Proofs.DeadStages240.Parallel.output783 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3332 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output783_def]
  kernel_rfl

theorem input784_eq : InitECandidate.Proofs.DeadStages240.Parallel.input784 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3790 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input784_def]
  simp only [input783_eq, input782_eq]
  kernel_rfl

theorem output784_eq : InitECandidate.Proofs.DeadStages240.Parallel.output784 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3334 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output784_def]
  simp only [output783_eq, output782_eq]
  kernel_rfl

theorem input785_eq : InitECandidate.Proofs.DeadStages240.Parallel.input785 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3792 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input785_def]
  simp only [input784_eq, input781_eq]
  kernel_rfl

theorem output785_eq : InitECandidate.Proofs.DeadStages240.Parallel.output785 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3336 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output785_def]
  simp only [output784_eq, output781_eq]
  kernel_rfl

theorem input786_eq : InitECandidate.Proofs.DeadStages240.Parallel.input786 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3794 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input786_def]
  simp only [input785_eq, input780_eq]
  kernel_rfl

theorem output786_eq : InitECandidate.Proofs.DeadStages240.Parallel.output786 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3338 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output786_def]
  simp only [output785_eq, output780_eq]
  kernel_rfl

theorem input787_eq : InitECandidate.Proofs.DeadStages240.Parallel.input787 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3796 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input787_def]
  simp only [input786_eq, input779_eq]
  kernel_rfl

theorem output787_eq : InitECandidate.Proofs.DeadStages240.Parallel.output787 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3340 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output787_def]
  simp only [output786_eq, output779_eq]
  kernel_rfl

theorem input788_eq : InitECandidate.Proofs.DeadStages240.Parallel.input788 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3785 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input788_def]
  kernel_rfl

theorem output788_eq : InitECandidate.Proofs.DeadStages240.Parallel.output788 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3329 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output788_def]
  kernel_rfl

theorem input789_eq : InitECandidate.Proofs.DeadStages240.Parallel.input789 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3784 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input789_def]
  kernel_rfl

theorem output789_eq : InitECandidate.Proofs.DeadStages240.Parallel.output789 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3328 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output789_def]
  kernel_rfl

theorem input790_eq : InitECandidate.Proofs.DeadStages240.Parallel.input790 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3786 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input790_def]
  simp only [input789_eq, input788_eq]
  kernel_rfl

theorem output790_eq : InitECandidate.Proofs.DeadStages240.Parallel.output790 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3330 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output790_def]
  simp only [output789_eq, output788_eq]
  kernel_rfl

theorem input791_eq : InitECandidate.Proofs.DeadStages240.Parallel.input791 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3782 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input791_def]
  kernel_rfl

theorem output791_eq : InitECandidate.Proofs.DeadStages240.Parallel.output791 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3326 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output791_def]
  kernel_rfl

theorem input792_eq : InitECandidate.Proofs.DeadStages240.Parallel.input792 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3780 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input792_def]
  kernel_rfl

theorem output792_eq : InitECandidate.Proofs.DeadStages240.Parallel.output792 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output792_def]
  kernel_rfl

theorem input793_eq : InitECandidate.Proofs.DeadStages240.Parallel.input793 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3777 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input793_def]
  kernel_rfl

theorem output793_eq : InitECandidate.Proofs.DeadStages240.Parallel.output793 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3323 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output793_def]
  kernel_rfl

theorem input794_eq : InitECandidate.Proofs.DeadStages240.Parallel.input794 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3775 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input794_def]
  kernel_rfl

theorem output794_eq : InitECandidate.Proofs.DeadStages240.Parallel.output794 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3321 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output794_def]
  kernel_rfl

theorem input795_eq : InitECandidate.Proofs.DeadStages240.Parallel.input795 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3773 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input795_def]
  kernel_rfl

theorem output795_eq : InitECandidate.Proofs.DeadStages240.Parallel.output795 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3319 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output795_def]
  kernel_rfl

theorem input796_eq : InitECandidate.Proofs.DeadStages240.Parallel.input796 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3771 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input796_def]
  kernel_rfl

theorem output796_eq : InitECandidate.Proofs.DeadStages240.Parallel.output796 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3317 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output796_def]
  kernel_rfl

theorem input797_eq : InitECandidate.Proofs.DeadStages240.Parallel.input797 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3770 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input797_def]
  kernel_rfl

theorem output797_eq : InitECandidate.Proofs.DeadStages240.Parallel.output797 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3316 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output797_def]
  kernel_rfl

theorem input798_eq : InitECandidate.Proofs.DeadStages240.Parallel.input798 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3772 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input798_def]
  simp only [input797_eq, input796_eq]
  kernel_rfl

theorem output798_eq : InitECandidate.Proofs.DeadStages240.Parallel.output798 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3318 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output798_def]
  simp only [output797_eq, output796_eq]
  kernel_rfl

theorem input799_eq : InitECandidate.Proofs.DeadStages240.Parallel.input799 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3774 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input799_def]
  simp only [input798_eq, input795_eq]
  kernel_rfl

theorem output799_eq : InitECandidate.Proofs.DeadStages240.Parallel.output799 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3320 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output799_def]
  simp only [output798_eq, output795_eq]
  kernel_rfl

theorem input800_eq : InitECandidate.Proofs.DeadStages240.Parallel.input800 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3776 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input800_def]
  simp only [input799_eq, input794_eq]
  kernel_rfl

theorem output800_eq : InitECandidate.Proofs.DeadStages240.Parallel.output800 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3322 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output800_def]
  simp only [output799_eq, output794_eq]
  kernel_rfl

theorem input801_eq : InitECandidate.Proofs.DeadStages240.Parallel.input801 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3778 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input801_def]
  simp only [input800_eq, input793_eq]
  kernel_rfl

theorem output801_eq : InitECandidate.Proofs.DeadStages240.Parallel.output801 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3324 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output801_def]
  simp only [output800_eq, output793_eq]
  kernel_rfl

theorem input802_eq : InitECandidate.Proofs.DeadStages240.Parallel.input802 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3767 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input802_def]
  kernel_rfl

theorem output802_eq : InitECandidate.Proofs.DeadStages240.Parallel.output802 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3313 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output802_def]
  kernel_rfl

theorem input803_eq : InitECandidate.Proofs.DeadStages240.Parallel.input803 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3766 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input803_def]
  kernel_rfl

theorem output803_eq : InitECandidate.Proofs.DeadStages240.Parallel.output803 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3312 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output803_def]
  kernel_rfl

theorem input804_eq : InitECandidate.Proofs.DeadStages240.Parallel.input804 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3768 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input804_def]
  simp only [input803_eq, input802_eq]
  kernel_rfl

theorem output804_eq : InitECandidate.Proofs.DeadStages240.Parallel.output804 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3314 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output804_def]
  simp only [output803_eq, output802_eq]
  kernel_rfl

theorem input805_eq : InitECandidate.Proofs.DeadStages240.Parallel.input805 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3764 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input805_def]
  kernel_rfl

theorem output805_eq : InitECandidate.Proofs.DeadStages240.Parallel.output805 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3310 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output805_def]
  kernel_rfl

theorem input806_eq : InitECandidate.Proofs.DeadStages240.Parallel.input806 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3762 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input806_def]
  kernel_rfl

theorem output806_eq : InitECandidate.Proofs.DeadStages240.Parallel.output806 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output806_def]
  kernel_rfl

theorem input807_eq : InitECandidate.Proofs.DeadStages240.Parallel.input807 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3759 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input807_def]
  kernel_rfl

theorem output807_eq : InitECandidate.Proofs.DeadStages240.Parallel.output807 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3307 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output807_def]
  kernel_rfl

theorem input808_eq : InitECandidate.Proofs.DeadStages240.Parallel.input808 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3757 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input808_def]
  kernel_rfl

theorem output808_eq : InitECandidate.Proofs.DeadStages240.Parallel.output808 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3305 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output808_def]
  kernel_rfl

theorem input809_eq : InitECandidate.Proofs.DeadStages240.Parallel.input809 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3755 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input809_def]
  kernel_rfl

theorem output809_eq : InitECandidate.Proofs.DeadStages240.Parallel.output809 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3303 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output809_def]
  kernel_rfl

theorem input810_eq : InitECandidate.Proofs.DeadStages240.Parallel.input810 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3753 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input810_def]
  kernel_rfl

theorem output810_eq : InitECandidate.Proofs.DeadStages240.Parallel.output810 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3301 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output810_def]
  kernel_rfl

theorem input811_eq : InitECandidate.Proofs.DeadStages240.Parallel.input811 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3752 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input811_def]
  kernel_rfl

theorem output811_eq : InitECandidate.Proofs.DeadStages240.Parallel.output811 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3300 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output811_def]
  kernel_rfl

theorem input812_eq : InitECandidate.Proofs.DeadStages240.Parallel.input812 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3754 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input812_def]
  simp only [input811_eq, input810_eq]
  kernel_rfl

theorem output812_eq : InitECandidate.Proofs.DeadStages240.Parallel.output812 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3302 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output812_def]
  simp only [output811_eq, output810_eq]
  kernel_rfl

theorem input813_eq : InitECandidate.Proofs.DeadStages240.Parallel.input813 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3756 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input813_def]
  simp only [input812_eq, input809_eq]
  kernel_rfl

theorem output813_eq : InitECandidate.Proofs.DeadStages240.Parallel.output813 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3304 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output813_def]
  simp only [output812_eq, output809_eq]
  kernel_rfl

theorem input814_eq : InitECandidate.Proofs.DeadStages240.Parallel.input814 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3758 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input814_def]
  simp only [input813_eq, input808_eq]
  kernel_rfl

theorem output814_eq : InitECandidate.Proofs.DeadStages240.Parallel.output814 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3306 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output814_def]
  simp only [output813_eq, output808_eq]
  kernel_rfl

theorem input815_eq : InitECandidate.Proofs.DeadStages240.Parallel.input815 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3760 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input815_def]
  simp only [input814_eq, input807_eq]
  kernel_rfl

theorem output815_eq : InitECandidate.Proofs.DeadStages240.Parallel.output815 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3308 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output815_def]
  simp only [output814_eq, output807_eq]
  kernel_rfl

theorem input816_eq : InitECandidate.Proofs.DeadStages240.Parallel.input816 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3749 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input816_def]
  kernel_rfl

theorem output816_eq : InitECandidate.Proofs.DeadStages240.Parallel.output816 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3297 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output816_def]
  kernel_rfl

theorem input817_eq : InitECandidate.Proofs.DeadStages240.Parallel.input817 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3748 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input817_def]
  kernel_rfl

theorem output817_eq : InitECandidate.Proofs.DeadStages240.Parallel.output817 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3296 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output817_def]
  kernel_rfl

theorem input818_eq : InitECandidate.Proofs.DeadStages240.Parallel.input818 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3750 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input818_def]
  simp only [input817_eq, input816_eq]
  kernel_rfl

theorem output818_eq : InitECandidate.Proofs.DeadStages240.Parallel.output818 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3298 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output818_def]
  simp only [output817_eq, output816_eq]
  kernel_rfl

theorem input819_eq : InitECandidate.Proofs.DeadStages240.Parallel.input819 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3746 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input819_def]
  kernel_rfl

theorem output819_eq : InitECandidate.Proofs.DeadStages240.Parallel.output819 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3294 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output819_def]
  kernel_rfl

theorem input820_eq : InitECandidate.Proofs.DeadStages240.Parallel.input820 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3744 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input820_def]
  kernel_rfl

theorem output820_eq : InitECandidate.Proofs.DeadStages240.Parallel.output820 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output820_def]
  kernel_rfl

theorem input821_eq : InitECandidate.Proofs.DeadStages240.Parallel.input821 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3741 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input821_def]
  kernel_rfl

theorem output821_eq : InitECandidate.Proofs.DeadStages240.Parallel.output821 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3291 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output821_def]
  kernel_rfl

theorem input822_eq : InitECandidate.Proofs.DeadStages240.Parallel.input822 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3739 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input822_def]
  kernel_rfl

theorem output822_eq : InitECandidate.Proofs.DeadStages240.Parallel.output822 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3289 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output822_def]
  kernel_rfl

theorem input823_eq : InitECandidate.Proofs.DeadStages240.Parallel.input823 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3737 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input823_def]
  kernel_rfl

theorem output823_eq : InitECandidate.Proofs.DeadStages240.Parallel.output823 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3287 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output823_def]
  kernel_rfl

theorem input824_eq : InitECandidate.Proofs.DeadStages240.Parallel.input824 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3735 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input824_def]
  kernel_rfl

theorem output824_eq : InitECandidate.Proofs.DeadStages240.Parallel.output824 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3285 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output824_def]
  kernel_rfl

theorem input825_eq : InitECandidate.Proofs.DeadStages240.Parallel.input825 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3734 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input825_def]
  kernel_rfl

theorem output825_eq : InitECandidate.Proofs.DeadStages240.Parallel.output825 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3284 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output825_def]
  kernel_rfl

theorem input826_eq : InitECandidate.Proofs.DeadStages240.Parallel.input826 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3736 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input826_def]
  simp only [input825_eq, input824_eq]
  kernel_rfl

theorem output826_eq : InitECandidate.Proofs.DeadStages240.Parallel.output826 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3286 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output826_def]
  simp only [output825_eq, output824_eq]
  kernel_rfl

theorem input827_eq : InitECandidate.Proofs.DeadStages240.Parallel.input827 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3738 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input827_def]
  simp only [input826_eq, input823_eq]
  kernel_rfl

theorem output827_eq : InitECandidate.Proofs.DeadStages240.Parallel.output827 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3288 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output827_def]
  simp only [output826_eq, output823_eq]
  kernel_rfl

theorem input828_eq : InitECandidate.Proofs.DeadStages240.Parallel.input828 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3740 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input828_def]
  simp only [input827_eq, input822_eq]
  kernel_rfl

theorem output828_eq : InitECandidate.Proofs.DeadStages240.Parallel.output828 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3290 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output828_def]
  simp only [output827_eq, output822_eq]
  kernel_rfl

theorem input829_eq : InitECandidate.Proofs.DeadStages240.Parallel.input829 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3742 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input829_def]
  simp only [input828_eq, input821_eq]
  kernel_rfl

theorem output829_eq : InitECandidate.Proofs.DeadStages240.Parallel.output829 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3292 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output829_def]
  simp only [output828_eq, output821_eq]
  kernel_rfl

theorem input830_eq : InitECandidate.Proofs.DeadStages240.Parallel.input830 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3731 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input830_def]
  kernel_rfl

theorem output830_eq : InitECandidate.Proofs.DeadStages240.Parallel.output830 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3281 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output830_def]
  kernel_rfl

theorem input831_eq : InitECandidate.Proofs.DeadStages240.Parallel.input831 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3730 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input831_def]
  kernel_rfl

theorem output831_eq : InitECandidate.Proofs.DeadStages240.Parallel.output831 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3280 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output831_def]
  kernel_rfl

theorem input832_eq : InitECandidate.Proofs.DeadStages240.Parallel.input832 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3732 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input832_def]
  simp only [input831_eq, input830_eq]
  kernel_rfl

theorem output832_eq : InitECandidate.Proofs.DeadStages240.Parallel.output832 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3282 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output832_def]
  simp only [output831_eq, output830_eq]
  kernel_rfl

theorem input833_eq : InitECandidate.Proofs.DeadStages240.Parallel.input833 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3728 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input833_def]
  kernel_rfl

theorem output833_eq : InitECandidate.Proofs.DeadStages240.Parallel.output833 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3278 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output833_def]
  kernel_rfl

theorem input834_eq : InitECandidate.Proofs.DeadStages240.Parallel.input834 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3726 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input834_def]
  kernel_rfl

theorem output834_eq : InitECandidate.Proofs.DeadStages240.Parallel.output834 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output834_def]
  kernel_rfl

theorem input835_eq : InitECandidate.Proofs.DeadStages240.Parallel.input835 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3723 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input835_def]
  kernel_rfl

theorem output835_eq : InitECandidate.Proofs.DeadStages240.Parallel.output835 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3275 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output835_def]
  kernel_rfl

theorem input836_eq : InitECandidate.Proofs.DeadStages240.Parallel.input836 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3721 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input836_def]
  kernel_rfl

theorem output836_eq : InitECandidate.Proofs.DeadStages240.Parallel.output836 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3273 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output836_def]
  kernel_rfl

theorem input837_eq : InitECandidate.Proofs.DeadStages240.Parallel.input837 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3719 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input837_def]
  kernel_rfl

theorem output837_eq : InitECandidate.Proofs.DeadStages240.Parallel.output837 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3271 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output837_def]
  kernel_rfl

theorem input838_eq : InitECandidate.Proofs.DeadStages240.Parallel.input838 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3717 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input838_def]
  kernel_rfl

theorem output838_eq : InitECandidate.Proofs.DeadStages240.Parallel.output838 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3269 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output838_def]
  kernel_rfl

theorem input839_eq : InitECandidate.Proofs.DeadStages240.Parallel.input839 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3716 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input839_def]
  kernel_rfl

theorem output839_eq : InitECandidate.Proofs.DeadStages240.Parallel.output839 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3268 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output839_def]
  kernel_rfl

theorem input840_eq : InitECandidate.Proofs.DeadStages240.Parallel.input840 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3718 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input840_def]
  simp only [input839_eq, input838_eq]
  kernel_rfl

theorem output840_eq : InitECandidate.Proofs.DeadStages240.Parallel.output840 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3270 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output840_def]
  simp only [output839_eq, output838_eq]
  kernel_rfl

theorem input841_eq : InitECandidate.Proofs.DeadStages240.Parallel.input841 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3720 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input841_def]
  simp only [input840_eq, input837_eq]
  kernel_rfl

theorem output841_eq : InitECandidate.Proofs.DeadStages240.Parallel.output841 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3272 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output841_def]
  simp only [output840_eq, output837_eq]
  kernel_rfl

theorem input842_eq : InitECandidate.Proofs.DeadStages240.Parallel.input842 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3722 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input842_def]
  simp only [input841_eq, input836_eq]
  kernel_rfl

theorem output842_eq : InitECandidate.Proofs.DeadStages240.Parallel.output842 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3274 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output842_def]
  simp only [output841_eq, output836_eq]
  kernel_rfl

theorem input843_eq : InitECandidate.Proofs.DeadStages240.Parallel.input843 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3724 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input843_def]
  simp only [input842_eq, input835_eq]
  kernel_rfl

theorem output843_eq : InitECandidate.Proofs.DeadStages240.Parallel.output843 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3276 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output843_def]
  simp only [output842_eq, output835_eq]
  kernel_rfl

theorem input844_eq : InitECandidate.Proofs.DeadStages240.Parallel.input844 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3713 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input844_def]
  kernel_rfl

theorem output844_eq : InitECandidate.Proofs.DeadStages240.Parallel.output844 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3265 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output844_def]
  kernel_rfl

theorem input845_eq : InitECandidate.Proofs.DeadStages240.Parallel.input845 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3712 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input845_def]
  kernel_rfl

theorem output845_eq : InitECandidate.Proofs.DeadStages240.Parallel.output845 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3264 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output845_def]
  kernel_rfl

theorem input846_eq : InitECandidate.Proofs.DeadStages240.Parallel.input846 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3714 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input846_def]
  simp only [input845_eq, input844_eq]
  kernel_rfl

theorem output846_eq : InitECandidate.Proofs.DeadStages240.Parallel.output846 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3266 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output846_def]
  simp only [output845_eq, output844_eq]
  kernel_rfl

theorem input847_eq : InitECandidate.Proofs.DeadStages240.Parallel.input847 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3710 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input847_def]
  kernel_rfl

theorem output847_eq : InitECandidate.Proofs.DeadStages240.Parallel.output847 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3262 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output847_def]
  kernel_rfl

theorem input848_eq : InitECandidate.Proofs.DeadStages240.Parallel.input848 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3708 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input848_def]
  kernel_rfl

theorem output848_eq : InitECandidate.Proofs.DeadStages240.Parallel.output848 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output848_def]
  kernel_rfl

theorem input849_eq : InitECandidate.Proofs.DeadStages240.Parallel.input849 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3705 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input849_def]
  kernel_rfl

theorem output849_eq : InitECandidate.Proofs.DeadStages240.Parallel.output849 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3259 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output849_def]
  kernel_rfl

theorem input850_eq : InitECandidate.Proofs.DeadStages240.Parallel.input850 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3703 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input850_def]
  kernel_rfl

theorem output850_eq : InitECandidate.Proofs.DeadStages240.Parallel.output850 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3257 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output850_def]
  kernel_rfl

theorem input851_eq : InitECandidate.Proofs.DeadStages240.Parallel.input851 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3701 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input851_def]
  kernel_rfl

theorem output851_eq : InitECandidate.Proofs.DeadStages240.Parallel.output851 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3255 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output851_def]
  kernel_rfl

theorem input852_eq : InitECandidate.Proofs.DeadStages240.Parallel.input852 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3699 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input852_def]
  kernel_rfl

theorem output852_eq : InitECandidate.Proofs.DeadStages240.Parallel.output852 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3253 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output852_def]
  kernel_rfl

theorem input853_eq : InitECandidate.Proofs.DeadStages240.Parallel.input853 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3698 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input853_def]
  kernel_rfl

theorem output853_eq : InitECandidate.Proofs.DeadStages240.Parallel.output853 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3252 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output853_def]
  kernel_rfl

theorem input854_eq : InitECandidate.Proofs.DeadStages240.Parallel.input854 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3700 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input854_def]
  simp only [input853_eq, input852_eq]
  kernel_rfl

theorem output854_eq : InitECandidate.Proofs.DeadStages240.Parallel.output854 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3254 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output854_def]
  simp only [output853_eq, output852_eq]
  kernel_rfl

theorem input855_eq : InitECandidate.Proofs.DeadStages240.Parallel.input855 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3702 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input855_def]
  simp only [input854_eq, input851_eq]
  kernel_rfl

theorem output855_eq : InitECandidate.Proofs.DeadStages240.Parallel.output855 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3256 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output855_def]
  simp only [output854_eq, output851_eq]
  kernel_rfl

theorem input856_eq : InitECandidate.Proofs.DeadStages240.Parallel.input856 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3704 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input856_def]
  simp only [input855_eq, input850_eq]
  kernel_rfl

theorem output856_eq : InitECandidate.Proofs.DeadStages240.Parallel.output856 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3258 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output856_def]
  simp only [output855_eq, output850_eq]
  kernel_rfl

theorem input857_eq : InitECandidate.Proofs.DeadStages240.Parallel.input857 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3706 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input857_def]
  simp only [input856_eq, input849_eq]
  kernel_rfl

theorem output857_eq : InitECandidate.Proofs.DeadStages240.Parallel.output857 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3260 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output857_def]
  simp only [output856_eq, output849_eq]
  kernel_rfl

theorem input858_eq : InitECandidate.Proofs.DeadStages240.Parallel.input858 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3695 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input858_def]
  kernel_rfl

theorem output858_eq : InitECandidate.Proofs.DeadStages240.Parallel.output858 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3249 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output858_def]
  kernel_rfl

theorem input859_eq : InitECandidate.Proofs.DeadStages240.Parallel.input859 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3694 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input859_def]
  kernel_rfl

theorem output859_eq : InitECandidate.Proofs.DeadStages240.Parallel.output859 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3248 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output859_def]
  kernel_rfl

theorem input860_eq : InitECandidate.Proofs.DeadStages240.Parallel.input860 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3696 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input860_def]
  simp only [input859_eq, input858_eq]
  kernel_rfl

theorem output860_eq : InitECandidate.Proofs.DeadStages240.Parallel.output860 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3250 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output860_def]
  simp only [output859_eq, output858_eq]
  kernel_rfl

theorem input861_eq : InitECandidate.Proofs.DeadStages240.Parallel.input861 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3692 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input861_def]
  kernel_rfl

theorem output861_eq : InitECandidate.Proofs.DeadStages240.Parallel.output861 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3246 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output861_def]
  kernel_rfl

theorem input862_eq : InitECandidate.Proofs.DeadStages240.Parallel.input862 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3690 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input862_def]
  kernel_rfl

theorem output862_eq : InitECandidate.Proofs.DeadStages240.Parallel.output862 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output862_def]
  kernel_rfl

theorem input863_eq : InitECandidate.Proofs.DeadStages240.Parallel.input863 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3687 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input863_def]
  kernel_rfl

theorem output863_eq : InitECandidate.Proofs.DeadStages240.Parallel.output863 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3243 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output863_def]
  kernel_rfl

theorem input864_eq : InitECandidate.Proofs.DeadStages240.Parallel.input864 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3685 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input864_def]
  kernel_rfl

theorem output864_eq : InitECandidate.Proofs.DeadStages240.Parallel.output864 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3241 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output864_def]
  kernel_rfl

theorem input865_eq : InitECandidate.Proofs.DeadStages240.Parallel.input865 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3683 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input865_def]
  kernel_rfl

theorem output865_eq : InitECandidate.Proofs.DeadStages240.Parallel.output865 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3239 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output865_def]
  kernel_rfl

theorem input866_eq : InitECandidate.Proofs.DeadStages240.Parallel.input866 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3681 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input866_def]
  kernel_rfl

theorem output866_eq : InitECandidate.Proofs.DeadStages240.Parallel.output866 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3237 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output866_def]
  kernel_rfl

theorem input867_eq : InitECandidate.Proofs.DeadStages240.Parallel.input867 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3680 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input867_def]
  kernel_rfl

theorem output867_eq : InitECandidate.Proofs.DeadStages240.Parallel.output867 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3236 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output867_def]
  kernel_rfl

theorem input868_eq : InitECandidate.Proofs.DeadStages240.Parallel.input868 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3682 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input868_def]
  simp only [input867_eq, input866_eq]
  kernel_rfl

theorem output868_eq : InitECandidate.Proofs.DeadStages240.Parallel.output868 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3238 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output868_def]
  simp only [output867_eq, output866_eq]
  kernel_rfl

theorem input869_eq : InitECandidate.Proofs.DeadStages240.Parallel.input869 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3684 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input869_def]
  simp only [input868_eq, input865_eq]
  kernel_rfl

theorem output869_eq : InitECandidate.Proofs.DeadStages240.Parallel.output869 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3240 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output869_def]
  simp only [output868_eq, output865_eq]
  kernel_rfl

theorem input870_eq : InitECandidate.Proofs.DeadStages240.Parallel.input870 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3686 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input870_def]
  simp only [input869_eq, input864_eq]
  kernel_rfl

theorem output870_eq : InitECandidate.Proofs.DeadStages240.Parallel.output870 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3242 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output870_def]
  simp only [output869_eq, output864_eq]
  kernel_rfl

theorem input871_eq : InitECandidate.Proofs.DeadStages240.Parallel.input871 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3688 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input871_def]
  simp only [input870_eq, input863_eq]
  kernel_rfl

theorem output871_eq : InitECandidate.Proofs.DeadStages240.Parallel.output871 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3244 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output871_def]
  simp only [output870_eq, output863_eq]
  kernel_rfl

theorem input872_eq : InitECandidate.Proofs.DeadStages240.Parallel.input872 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3677 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input872_def]
  kernel_rfl

theorem output872_eq : InitECandidate.Proofs.DeadStages240.Parallel.output872 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3233 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output872_def]
  kernel_rfl

theorem input873_eq : InitECandidate.Proofs.DeadStages240.Parallel.input873 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3676 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input873_def]
  kernel_rfl

theorem output873_eq : InitECandidate.Proofs.DeadStages240.Parallel.output873 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3232 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output873_def]
  kernel_rfl

theorem input874_eq : InitECandidate.Proofs.DeadStages240.Parallel.input874 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3678 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input874_def]
  simp only [input873_eq, input872_eq]
  kernel_rfl

theorem output874_eq : InitECandidate.Proofs.DeadStages240.Parallel.output874 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3234 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output874_def]
  simp only [output873_eq, output872_eq]
  kernel_rfl

theorem input875_eq : InitECandidate.Proofs.DeadStages240.Parallel.input875 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3674 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input875_def]
  kernel_rfl

theorem output875_eq : InitECandidate.Proofs.DeadStages240.Parallel.output875 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3230 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output875_def]
  kernel_rfl

theorem input876_eq : InitECandidate.Proofs.DeadStages240.Parallel.input876 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3672 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input876_def]
  kernel_rfl

theorem output876_eq : InitECandidate.Proofs.DeadStages240.Parallel.output876 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output876_def]
  kernel_rfl

theorem input877_eq : InitECandidate.Proofs.DeadStages240.Parallel.input877 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3669 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input877_def]
  kernel_rfl

theorem output877_eq : InitECandidate.Proofs.DeadStages240.Parallel.output877 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3227 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output877_def]
  kernel_rfl

theorem input878_eq : InitECandidate.Proofs.DeadStages240.Parallel.input878 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3667 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input878_def]
  kernel_rfl

theorem output878_eq : InitECandidate.Proofs.DeadStages240.Parallel.output878 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3225 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output878_def]
  kernel_rfl

theorem input879_eq : InitECandidate.Proofs.DeadStages240.Parallel.input879 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3665 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input879_def]
  kernel_rfl

theorem output879_eq : InitECandidate.Proofs.DeadStages240.Parallel.output879 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3223 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output879_def]
  kernel_rfl

theorem input880_eq : InitECandidate.Proofs.DeadStages240.Parallel.input880 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3663 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input880_def]
  kernel_rfl

theorem output880_eq : InitECandidate.Proofs.DeadStages240.Parallel.output880 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3221 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output880_def]
  kernel_rfl

theorem input881_eq : InitECandidate.Proofs.DeadStages240.Parallel.input881 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3662 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input881_def]
  kernel_rfl

theorem output881_eq : InitECandidate.Proofs.DeadStages240.Parallel.output881 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3220 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output881_def]
  kernel_rfl

theorem input882_eq : InitECandidate.Proofs.DeadStages240.Parallel.input882 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3664 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input882_def]
  simp only [input881_eq, input880_eq]
  kernel_rfl

theorem output882_eq : InitECandidate.Proofs.DeadStages240.Parallel.output882 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3222 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output882_def]
  simp only [output881_eq, output880_eq]
  kernel_rfl

theorem input883_eq : InitECandidate.Proofs.DeadStages240.Parallel.input883 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3666 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input883_def]
  simp only [input882_eq, input879_eq]
  kernel_rfl

theorem output883_eq : InitECandidate.Proofs.DeadStages240.Parallel.output883 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3224 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output883_def]
  simp only [output882_eq, output879_eq]
  kernel_rfl

theorem input884_eq : InitECandidate.Proofs.DeadStages240.Parallel.input884 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3668 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input884_def]
  simp only [input883_eq, input878_eq]
  kernel_rfl

theorem output884_eq : InitECandidate.Proofs.DeadStages240.Parallel.output884 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3226 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output884_def]
  simp only [output883_eq, output878_eq]
  kernel_rfl

theorem input885_eq : InitECandidate.Proofs.DeadStages240.Parallel.input885 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3670 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input885_def]
  simp only [input884_eq, input877_eq]
  kernel_rfl

theorem output885_eq : InitECandidate.Proofs.DeadStages240.Parallel.output885 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3228 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output885_def]
  simp only [output884_eq, output877_eq]
  kernel_rfl

theorem input886_eq : InitECandidate.Proofs.DeadStages240.Parallel.input886 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3659 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input886_def]
  kernel_rfl

theorem output886_eq : InitECandidate.Proofs.DeadStages240.Parallel.output886 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3217 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output886_def]
  kernel_rfl

theorem input887_eq : InitECandidate.Proofs.DeadStages240.Parallel.input887 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3658 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input887_def]
  kernel_rfl

theorem output887_eq : InitECandidate.Proofs.DeadStages240.Parallel.output887 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3216 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output887_def]
  kernel_rfl

theorem input888_eq : InitECandidate.Proofs.DeadStages240.Parallel.input888 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3660 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input888_def]
  simp only [input887_eq, input886_eq]
  kernel_rfl

theorem output888_eq : InitECandidate.Proofs.DeadStages240.Parallel.output888 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3218 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output888_def]
  simp only [output887_eq, output886_eq]
  kernel_rfl

theorem input889_eq : InitECandidate.Proofs.DeadStages240.Parallel.input889 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3656 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input889_def]
  kernel_rfl

theorem output889_eq : InitECandidate.Proofs.DeadStages240.Parallel.output889 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3214 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output889_def]
  kernel_rfl

theorem input890_eq : InitECandidate.Proofs.DeadStages240.Parallel.input890 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3654 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input890_def]
  kernel_rfl

theorem output890_eq : InitECandidate.Proofs.DeadStages240.Parallel.output890 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output890_def]
  kernel_rfl

theorem input891_eq : InitECandidate.Proofs.DeadStages240.Parallel.input891 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3651 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input891_def]
  kernel_rfl

theorem output891_eq : InitECandidate.Proofs.DeadStages240.Parallel.output891 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3211 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output891_def]
  kernel_rfl

theorem input892_eq : InitECandidate.Proofs.DeadStages240.Parallel.input892 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3649 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input892_def]
  kernel_rfl

theorem output892_eq : InitECandidate.Proofs.DeadStages240.Parallel.output892 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3209 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output892_def]
  kernel_rfl

theorem input893_eq : InitECandidate.Proofs.DeadStages240.Parallel.input893 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3647 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input893_def]
  kernel_rfl

theorem output893_eq : InitECandidate.Proofs.DeadStages240.Parallel.output893 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3207 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output893_def]
  kernel_rfl

theorem input894_eq : InitECandidate.Proofs.DeadStages240.Parallel.input894 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3645 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input894_def]
  kernel_rfl

theorem output894_eq : InitECandidate.Proofs.DeadStages240.Parallel.output894 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3205 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output894_def]
  kernel_rfl

theorem input895_eq : InitECandidate.Proofs.DeadStages240.Parallel.input895 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3644 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input895_def]
  kernel_rfl

theorem output895_eq : InitECandidate.Proofs.DeadStages240.Parallel.output895 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3204 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output895_def]
  kernel_rfl

theorem input896_eq : InitECandidate.Proofs.DeadStages240.Parallel.input896 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3646 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input896_def]
  simp only [input895_eq, input894_eq]
  kernel_rfl

theorem output896_eq : InitECandidate.Proofs.DeadStages240.Parallel.output896 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3206 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output896_def]
  simp only [output895_eq, output894_eq]
  kernel_rfl

theorem input897_eq : InitECandidate.Proofs.DeadStages240.Parallel.input897 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3648 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input897_def]
  simp only [input896_eq, input893_eq]
  kernel_rfl

theorem output897_eq : InitECandidate.Proofs.DeadStages240.Parallel.output897 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3208 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output897_def]
  simp only [output896_eq, output893_eq]
  kernel_rfl

theorem input898_eq : InitECandidate.Proofs.DeadStages240.Parallel.input898 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3650 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input898_def]
  simp only [input897_eq, input892_eq]
  kernel_rfl

theorem output898_eq : InitECandidate.Proofs.DeadStages240.Parallel.output898 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3210 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output898_def]
  simp only [output897_eq, output892_eq]
  kernel_rfl

theorem input899_eq : InitECandidate.Proofs.DeadStages240.Parallel.input899 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3652 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input899_def]
  simp only [input898_eq, input891_eq]
  kernel_rfl

theorem output899_eq : InitECandidate.Proofs.DeadStages240.Parallel.output899 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3212 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output899_def]
  simp only [output898_eq, output891_eq]
  kernel_rfl

theorem input900_eq : InitECandidate.Proofs.DeadStages240.Parallel.input900 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3641 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input900_def]
  kernel_rfl

theorem output900_eq : InitECandidate.Proofs.DeadStages240.Parallel.output900 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3201 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output900_def]
  kernel_rfl

theorem input901_eq : InitECandidate.Proofs.DeadStages240.Parallel.input901 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3640 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input901_def]
  kernel_rfl

theorem output901_eq : InitECandidate.Proofs.DeadStages240.Parallel.output901 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3200 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output901_def]
  kernel_rfl

theorem input902_eq : InitECandidate.Proofs.DeadStages240.Parallel.input902 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3642 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input902_def]
  simp only [input901_eq, input900_eq]
  kernel_rfl

theorem output902_eq : InitECandidate.Proofs.DeadStages240.Parallel.output902 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3202 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output902_def]
  simp only [output901_eq, output900_eq]
  kernel_rfl

theorem input903_eq : InitECandidate.Proofs.DeadStages240.Parallel.input903 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3638 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input903_def]
  kernel_rfl

theorem output903_eq : InitECandidate.Proofs.DeadStages240.Parallel.output903 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3198 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output903_def]
  kernel_rfl

theorem input904_eq : InitECandidate.Proofs.DeadStages240.Parallel.input904 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3636 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input904_def]
  kernel_rfl

theorem output904_eq : InitECandidate.Proofs.DeadStages240.Parallel.output904 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output904_def]
  kernel_rfl

theorem input905_eq : InitECandidate.Proofs.DeadStages240.Parallel.input905 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3633 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input905_def]
  kernel_rfl

theorem output905_eq : InitECandidate.Proofs.DeadStages240.Parallel.output905 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3195 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output905_def]
  kernel_rfl

theorem input906_eq : InitECandidate.Proofs.DeadStages240.Parallel.input906 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3631 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input906_def]
  kernel_rfl

theorem output906_eq : InitECandidate.Proofs.DeadStages240.Parallel.output906 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3193 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output906_def]
  kernel_rfl

theorem input907_eq : InitECandidate.Proofs.DeadStages240.Parallel.input907 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3629 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input907_def]
  kernel_rfl

theorem output907_eq : InitECandidate.Proofs.DeadStages240.Parallel.output907 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3191 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output907_def]
  kernel_rfl

theorem input908_eq : InitECandidate.Proofs.DeadStages240.Parallel.input908 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3627 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input908_def]
  kernel_rfl

theorem output908_eq : InitECandidate.Proofs.DeadStages240.Parallel.output908 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3189 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output908_def]
  kernel_rfl

theorem input909_eq : InitECandidate.Proofs.DeadStages240.Parallel.input909 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3626 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input909_def]
  kernel_rfl

theorem output909_eq : InitECandidate.Proofs.DeadStages240.Parallel.output909 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3188 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output909_def]
  kernel_rfl

theorem input910_eq : InitECandidate.Proofs.DeadStages240.Parallel.input910 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3628 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input910_def]
  simp only [input909_eq, input908_eq]
  kernel_rfl

theorem output910_eq : InitECandidate.Proofs.DeadStages240.Parallel.output910 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3190 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output910_def]
  simp only [output909_eq, output908_eq]
  kernel_rfl

theorem input911_eq : InitECandidate.Proofs.DeadStages240.Parallel.input911 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3630 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input911_def]
  simp only [input910_eq, input907_eq]
  kernel_rfl

theorem output911_eq : InitECandidate.Proofs.DeadStages240.Parallel.output911 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3192 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output911_def]
  simp only [output910_eq, output907_eq]
  kernel_rfl

theorem input912_eq : InitECandidate.Proofs.DeadStages240.Parallel.input912 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3632 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input912_def]
  simp only [input911_eq, input906_eq]
  kernel_rfl

theorem output912_eq : InitECandidate.Proofs.DeadStages240.Parallel.output912 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3194 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output912_def]
  simp only [output911_eq, output906_eq]
  kernel_rfl

theorem input913_eq : InitECandidate.Proofs.DeadStages240.Parallel.input913 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3634 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input913_def]
  simp only [input912_eq, input905_eq]
  kernel_rfl

theorem output913_eq : InitECandidate.Proofs.DeadStages240.Parallel.output913 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3196 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output913_def]
  simp only [output912_eq, output905_eq]
  kernel_rfl

theorem input914_eq : InitECandidate.Proofs.DeadStages240.Parallel.input914 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3623 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input914_def]
  kernel_rfl

theorem output914_eq : InitECandidate.Proofs.DeadStages240.Parallel.output914 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3185 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output914_def]
  kernel_rfl

theorem input915_eq : InitECandidate.Proofs.DeadStages240.Parallel.input915 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3622 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input915_def]
  kernel_rfl

theorem output915_eq : InitECandidate.Proofs.DeadStages240.Parallel.output915 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3184 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output915_def]
  kernel_rfl

theorem input916_eq : InitECandidate.Proofs.DeadStages240.Parallel.input916 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3624 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input916_def]
  simp only [input915_eq, input914_eq]
  kernel_rfl

theorem output916_eq : InitECandidate.Proofs.DeadStages240.Parallel.output916 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3186 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output916_def]
  simp only [output915_eq, output914_eq]
  kernel_rfl

theorem input917_eq : InitECandidate.Proofs.DeadStages240.Parallel.input917 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3620 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input917_def]
  kernel_rfl

theorem output917_eq : InitECandidate.Proofs.DeadStages240.Parallel.output917 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3182 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output917_def]
  kernel_rfl

theorem input918_eq : InitECandidate.Proofs.DeadStages240.Parallel.input918 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3618 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input918_def]
  kernel_rfl

theorem output918_eq : InitECandidate.Proofs.DeadStages240.Parallel.output918 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output918_def]
  kernel_rfl

theorem input919_eq : InitECandidate.Proofs.DeadStages240.Parallel.input919 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3615 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input919_def]
  kernel_rfl

theorem output919_eq : InitECandidate.Proofs.DeadStages240.Parallel.output919 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3179 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output919_def]
  kernel_rfl

theorem input920_eq : InitECandidate.Proofs.DeadStages240.Parallel.input920 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3613 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input920_def]
  kernel_rfl

theorem output920_eq : InitECandidate.Proofs.DeadStages240.Parallel.output920 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3177 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output920_def]
  kernel_rfl

theorem input921_eq : InitECandidate.Proofs.DeadStages240.Parallel.input921 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3611 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input921_def]
  kernel_rfl

theorem output921_eq : InitECandidate.Proofs.DeadStages240.Parallel.output921 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3175 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output921_def]
  kernel_rfl

theorem input922_eq : InitECandidate.Proofs.DeadStages240.Parallel.input922 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3609 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input922_def]
  kernel_rfl

theorem output922_eq : InitECandidate.Proofs.DeadStages240.Parallel.output922 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3173 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output922_def]
  kernel_rfl

theorem input923_eq : InitECandidate.Proofs.DeadStages240.Parallel.input923 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3608 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input923_def]
  kernel_rfl

theorem output923_eq : InitECandidate.Proofs.DeadStages240.Parallel.output923 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3172 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output923_def]
  kernel_rfl

theorem input924_eq : InitECandidate.Proofs.DeadStages240.Parallel.input924 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3610 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input924_def]
  simp only [input923_eq, input922_eq]
  kernel_rfl

theorem output924_eq : InitECandidate.Proofs.DeadStages240.Parallel.output924 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3174 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output924_def]
  simp only [output923_eq, output922_eq]
  kernel_rfl

theorem input925_eq : InitECandidate.Proofs.DeadStages240.Parallel.input925 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3612 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input925_def]
  simp only [input924_eq, input921_eq]
  kernel_rfl

theorem output925_eq : InitECandidate.Proofs.DeadStages240.Parallel.output925 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3176 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output925_def]
  simp only [output924_eq, output921_eq]
  kernel_rfl

theorem input926_eq : InitECandidate.Proofs.DeadStages240.Parallel.input926 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3614 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input926_def]
  simp only [input925_eq, input920_eq]
  kernel_rfl

theorem output926_eq : InitECandidate.Proofs.DeadStages240.Parallel.output926 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3178 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output926_def]
  simp only [output925_eq, output920_eq]
  kernel_rfl

theorem input927_eq : InitECandidate.Proofs.DeadStages240.Parallel.input927 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3616 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input927_def]
  simp only [input926_eq, input919_eq]
  kernel_rfl

theorem output927_eq : InitECandidate.Proofs.DeadStages240.Parallel.output927 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3180 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output927_def]
  simp only [output926_eq, output919_eq]
  kernel_rfl

theorem input928_eq : InitECandidate.Proofs.DeadStages240.Parallel.input928 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3605 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input928_def]
  kernel_rfl

theorem output928_eq : InitECandidate.Proofs.DeadStages240.Parallel.output928 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3169 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output928_def]
  kernel_rfl

theorem input929_eq : InitECandidate.Proofs.DeadStages240.Parallel.input929 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3604 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input929_def]
  kernel_rfl

theorem output929_eq : InitECandidate.Proofs.DeadStages240.Parallel.output929 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3168 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output929_def]
  kernel_rfl

theorem input930_eq : InitECandidate.Proofs.DeadStages240.Parallel.input930 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3606 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input930_def]
  simp only [input929_eq, input928_eq]
  kernel_rfl

theorem output930_eq : InitECandidate.Proofs.DeadStages240.Parallel.output930 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3170 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output930_def]
  simp only [output929_eq, output928_eq]
  kernel_rfl

theorem input931_eq : InitECandidate.Proofs.DeadStages240.Parallel.input931 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3602 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input931_def]
  kernel_rfl

theorem output931_eq : InitECandidate.Proofs.DeadStages240.Parallel.output931 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3166 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output931_def]
  kernel_rfl

theorem input932_eq : InitECandidate.Proofs.DeadStages240.Parallel.input932 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3600 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input932_def]
  kernel_rfl

theorem output932_eq : InitECandidate.Proofs.DeadStages240.Parallel.output932 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output932_def]
  kernel_rfl

theorem input933_eq : InitECandidate.Proofs.DeadStages240.Parallel.input933 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3597 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input933_def]
  kernel_rfl

theorem output933_eq : InitECandidate.Proofs.DeadStages240.Parallel.output933 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3163 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output933_def]
  kernel_rfl

theorem input934_eq : InitECandidate.Proofs.DeadStages240.Parallel.input934 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3595 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input934_def]
  kernel_rfl

theorem output934_eq : InitECandidate.Proofs.DeadStages240.Parallel.output934 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3161 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output934_def]
  kernel_rfl

theorem input935_eq : InitECandidate.Proofs.DeadStages240.Parallel.input935 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3593 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input935_def]
  kernel_rfl

theorem output935_eq : InitECandidate.Proofs.DeadStages240.Parallel.output935 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3159 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output935_def]
  kernel_rfl

theorem input936_eq : InitECandidate.Proofs.DeadStages240.Parallel.input936 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3591 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input936_def]
  kernel_rfl

theorem output936_eq : InitECandidate.Proofs.DeadStages240.Parallel.output936 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3157 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output936_def]
  kernel_rfl

theorem input937_eq : InitECandidate.Proofs.DeadStages240.Parallel.input937 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3590 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input937_def]
  kernel_rfl

theorem output937_eq : InitECandidate.Proofs.DeadStages240.Parallel.output937 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3156 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output937_def]
  kernel_rfl

theorem input938_eq : InitECandidate.Proofs.DeadStages240.Parallel.input938 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3592 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input938_def]
  simp only [input937_eq, input936_eq]
  kernel_rfl

theorem output938_eq : InitECandidate.Proofs.DeadStages240.Parallel.output938 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3158 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output938_def]
  simp only [output937_eq, output936_eq]
  kernel_rfl

theorem input939_eq : InitECandidate.Proofs.DeadStages240.Parallel.input939 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3594 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input939_def]
  simp only [input938_eq, input935_eq]
  kernel_rfl

theorem output939_eq : InitECandidate.Proofs.DeadStages240.Parallel.output939 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3160 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output939_def]
  simp only [output938_eq, output935_eq]
  kernel_rfl

theorem input940_eq : InitECandidate.Proofs.DeadStages240.Parallel.input940 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3596 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input940_def]
  simp only [input939_eq, input934_eq]
  kernel_rfl

theorem output940_eq : InitECandidate.Proofs.DeadStages240.Parallel.output940 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3162 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output940_def]
  simp only [output939_eq, output934_eq]
  kernel_rfl

theorem input941_eq : InitECandidate.Proofs.DeadStages240.Parallel.input941 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3598 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input941_def]
  simp only [input940_eq, input933_eq]
  kernel_rfl

theorem output941_eq : InitECandidate.Proofs.DeadStages240.Parallel.output941 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3164 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output941_def]
  simp only [output940_eq, output933_eq]
  kernel_rfl

theorem input942_eq : InitECandidate.Proofs.DeadStages240.Parallel.input942 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3587 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input942_def]
  kernel_rfl

theorem output942_eq : InitECandidate.Proofs.DeadStages240.Parallel.output942 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3153 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output942_def]
  kernel_rfl

theorem input943_eq : InitECandidate.Proofs.DeadStages240.Parallel.input943 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3586 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input943_def]
  kernel_rfl

theorem output943_eq : InitECandidate.Proofs.DeadStages240.Parallel.output943 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3152 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output943_def]
  kernel_rfl

theorem input944_eq : InitECandidate.Proofs.DeadStages240.Parallel.input944 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3588 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input944_def]
  simp only [input943_eq, input942_eq]
  kernel_rfl

theorem output944_eq : InitECandidate.Proofs.DeadStages240.Parallel.output944 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3154 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output944_def]
  simp only [output943_eq, output942_eq]
  kernel_rfl

theorem input945_eq : InitECandidate.Proofs.DeadStages240.Parallel.input945 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3584 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input945_def]
  kernel_rfl

theorem output945_eq : InitECandidate.Proofs.DeadStages240.Parallel.output945 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3150 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output945_def]
  kernel_rfl

theorem input946_eq : InitECandidate.Proofs.DeadStages240.Parallel.input946 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3582 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input946_def]
  kernel_rfl

theorem output946_eq : InitECandidate.Proofs.DeadStages240.Parallel.output946 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output946_def]
  kernel_rfl

theorem input947_eq : InitECandidate.Proofs.DeadStages240.Parallel.input947 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3579 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input947_def]
  kernel_rfl

theorem output947_eq : InitECandidate.Proofs.DeadStages240.Parallel.output947 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3147 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output947_def]
  kernel_rfl

theorem input948_eq : InitECandidate.Proofs.DeadStages240.Parallel.input948 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3577 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input948_def]
  kernel_rfl

theorem output948_eq : InitECandidate.Proofs.DeadStages240.Parallel.output948 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3145 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output948_def]
  kernel_rfl

theorem input949_eq : InitECandidate.Proofs.DeadStages240.Parallel.input949 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3575 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input949_def]
  kernel_rfl

theorem output949_eq : InitECandidate.Proofs.DeadStages240.Parallel.output949 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3143 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output949_def]
  kernel_rfl

theorem input950_eq : InitECandidate.Proofs.DeadStages240.Parallel.input950 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3573 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input950_def]
  kernel_rfl

theorem output950_eq : InitECandidate.Proofs.DeadStages240.Parallel.output950 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3141 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output950_def]
  kernel_rfl

theorem input951_eq : InitECandidate.Proofs.DeadStages240.Parallel.input951 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3572 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input951_def]
  kernel_rfl

theorem output951_eq : InitECandidate.Proofs.DeadStages240.Parallel.output951 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3140 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output951_def]
  kernel_rfl

theorem input952_eq : InitECandidate.Proofs.DeadStages240.Parallel.input952 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3574 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input952_def]
  simp only [input951_eq, input950_eq]
  kernel_rfl

theorem output952_eq : InitECandidate.Proofs.DeadStages240.Parallel.output952 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3142 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output952_def]
  simp only [output951_eq, output950_eq]
  kernel_rfl

theorem input953_eq : InitECandidate.Proofs.DeadStages240.Parallel.input953 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3576 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input953_def]
  simp only [input952_eq, input949_eq]
  kernel_rfl

theorem output953_eq : InitECandidate.Proofs.DeadStages240.Parallel.output953 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3144 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output953_def]
  simp only [output952_eq, output949_eq]
  kernel_rfl

theorem input954_eq : InitECandidate.Proofs.DeadStages240.Parallel.input954 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3578 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input954_def]
  simp only [input953_eq, input948_eq]
  kernel_rfl

theorem output954_eq : InitECandidate.Proofs.DeadStages240.Parallel.output954 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3146 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output954_def]
  simp only [output953_eq, output948_eq]
  kernel_rfl

theorem input955_eq : InitECandidate.Proofs.DeadStages240.Parallel.input955 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3580 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input955_def]
  simp only [input954_eq, input947_eq]
  kernel_rfl

theorem output955_eq : InitECandidate.Proofs.DeadStages240.Parallel.output955 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3148 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output955_def]
  simp only [output954_eq, output947_eq]
  kernel_rfl

theorem input956_eq : InitECandidate.Proofs.DeadStages240.Parallel.input956 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3569 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input956_def]
  kernel_rfl

theorem output956_eq : InitECandidate.Proofs.DeadStages240.Parallel.output956 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3137 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output956_def]
  kernel_rfl

theorem input957_eq : InitECandidate.Proofs.DeadStages240.Parallel.input957 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3568 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input957_def]
  kernel_rfl

theorem output957_eq : InitECandidate.Proofs.DeadStages240.Parallel.output957 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3136 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output957_def]
  kernel_rfl

theorem input958_eq : InitECandidate.Proofs.DeadStages240.Parallel.input958 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3570 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input958_def]
  simp only [input957_eq, input956_eq]
  kernel_rfl

theorem output958_eq : InitECandidate.Proofs.DeadStages240.Parallel.output958 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3138 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output958_def]
  simp only [output957_eq, output956_eq]
  kernel_rfl

theorem input959_eq : InitECandidate.Proofs.DeadStages240.Parallel.input959 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3566 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input959_def]
  kernel_rfl

theorem output959_eq : InitECandidate.Proofs.DeadStages240.Parallel.output959 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3134 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output959_def]
  kernel_rfl

theorem input960_eq : InitECandidate.Proofs.DeadStages240.Parallel.input960 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3564 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input960_def]
  kernel_rfl

theorem output960_eq : InitECandidate.Proofs.DeadStages240.Parallel.output960 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output960_def]
  kernel_rfl

theorem input961_eq : InitECandidate.Proofs.DeadStages240.Parallel.input961 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3561 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input961_def]
  kernel_rfl

theorem output961_eq : InitECandidate.Proofs.DeadStages240.Parallel.output961 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3131 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output961_def]
  kernel_rfl

theorem input962_eq : InitECandidate.Proofs.DeadStages240.Parallel.input962 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3559 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input962_def]
  kernel_rfl

theorem output962_eq : InitECandidate.Proofs.DeadStages240.Parallel.output962 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3129 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output962_def]
  kernel_rfl

theorem input963_eq : InitECandidate.Proofs.DeadStages240.Parallel.input963 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3557 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input963_def]
  kernel_rfl

theorem output963_eq : InitECandidate.Proofs.DeadStages240.Parallel.output963 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3127 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output963_def]
  kernel_rfl

theorem input964_eq : InitECandidate.Proofs.DeadStages240.Parallel.input964 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3555 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input964_def]
  kernel_rfl

theorem output964_eq : InitECandidate.Proofs.DeadStages240.Parallel.output964 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3125 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output964_def]
  kernel_rfl

theorem input965_eq : InitECandidate.Proofs.DeadStages240.Parallel.input965 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3554 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input965_def]
  kernel_rfl

theorem output965_eq : InitECandidate.Proofs.DeadStages240.Parallel.output965 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3124 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output965_def]
  kernel_rfl

theorem input966_eq : InitECandidate.Proofs.DeadStages240.Parallel.input966 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3556 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input966_def]
  simp only [input965_eq, input964_eq]
  kernel_rfl

theorem output966_eq : InitECandidate.Proofs.DeadStages240.Parallel.output966 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3126 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output966_def]
  simp only [output965_eq, output964_eq]
  kernel_rfl

theorem input967_eq : InitECandidate.Proofs.DeadStages240.Parallel.input967 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3558 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input967_def]
  simp only [input966_eq, input963_eq]
  kernel_rfl

theorem output967_eq : InitECandidate.Proofs.DeadStages240.Parallel.output967 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3128 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output967_def]
  simp only [output966_eq, output963_eq]
  kernel_rfl

theorem input968_eq : InitECandidate.Proofs.DeadStages240.Parallel.input968 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3560 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input968_def]
  simp only [input967_eq, input962_eq]
  kernel_rfl

theorem output968_eq : InitECandidate.Proofs.DeadStages240.Parallel.output968 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3130 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output968_def]
  simp only [output967_eq, output962_eq]
  kernel_rfl

theorem input969_eq : InitECandidate.Proofs.DeadStages240.Parallel.input969 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3562 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input969_def]
  simp only [input968_eq, input961_eq]
  kernel_rfl

theorem output969_eq : InitECandidate.Proofs.DeadStages240.Parallel.output969 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3132 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output969_def]
  simp only [output968_eq, output961_eq]
  kernel_rfl

theorem input970_eq : InitECandidate.Proofs.DeadStages240.Parallel.input970 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3551 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input970_def]
  kernel_rfl

theorem output970_eq : InitECandidate.Proofs.DeadStages240.Parallel.output970 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3121 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output970_def]
  kernel_rfl

theorem input971_eq : InitECandidate.Proofs.DeadStages240.Parallel.input971 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3550 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input971_def]
  kernel_rfl

theorem output971_eq : InitECandidate.Proofs.DeadStages240.Parallel.output971 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3120 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output971_def]
  kernel_rfl

theorem input972_eq : InitECandidate.Proofs.DeadStages240.Parallel.input972 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3552 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input972_def]
  simp only [input971_eq, input970_eq]
  kernel_rfl

theorem output972_eq : InitECandidate.Proofs.DeadStages240.Parallel.output972 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3122 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output972_def]
  simp only [output971_eq, output970_eq]
  kernel_rfl

theorem input973_eq : InitECandidate.Proofs.DeadStages240.Parallel.input973 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3548 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input973_def]
  kernel_rfl

theorem output973_eq : InitECandidate.Proofs.DeadStages240.Parallel.output973 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3118 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output973_def]
  kernel_rfl

theorem input974_eq : InitECandidate.Proofs.DeadStages240.Parallel.input974 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3546 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input974_def]
  kernel_rfl

theorem output974_eq : InitECandidate.Proofs.DeadStages240.Parallel.output974 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output974_def]
  kernel_rfl

theorem input975_eq : InitECandidate.Proofs.DeadStages240.Parallel.input975 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3543 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input975_def]
  kernel_rfl

theorem output975_eq : InitECandidate.Proofs.DeadStages240.Parallel.output975 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3115 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output975_def]
  kernel_rfl

theorem input976_eq : InitECandidate.Proofs.DeadStages240.Parallel.input976 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3541 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input976_def]
  kernel_rfl

theorem output976_eq : InitECandidate.Proofs.DeadStages240.Parallel.output976 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3113 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output976_def]
  kernel_rfl

theorem input977_eq : InitECandidate.Proofs.DeadStages240.Parallel.input977 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3539 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input977_def]
  kernel_rfl

theorem output977_eq : InitECandidate.Proofs.DeadStages240.Parallel.output977 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3111 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output977_def]
  kernel_rfl

theorem input978_eq : InitECandidate.Proofs.DeadStages240.Parallel.input978 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3537 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input978_def]
  kernel_rfl

theorem output978_eq : InitECandidate.Proofs.DeadStages240.Parallel.output978 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3109 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output978_def]
  kernel_rfl

theorem input979_eq : InitECandidate.Proofs.DeadStages240.Parallel.input979 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3536 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input979_def]
  kernel_rfl

theorem output979_eq : InitECandidate.Proofs.DeadStages240.Parallel.output979 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3108 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output979_def]
  kernel_rfl

theorem input980_eq : InitECandidate.Proofs.DeadStages240.Parallel.input980 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3538 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input980_def]
  simp only [input979_eq, input978_eq]
  kernel_rfl

theorem output980_eq : InitECandidate.Proofs.DeadStages240.Parallel.output980 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3110 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output980_def]
  simp only [output979_eq, output978_eq]
  kernel_rfl

theorem input981_eq : InitECandidate.Proofs.DeadStages240.Parallel.input981 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3540 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input981_def]
  simp only [input980_eq, input977_eq]
  kernel_rfl

theorem output981_eq : InitECandidate.Proofs.DeadStages240.Parallel.output981 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3112 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output981_def]
  simp only [output980_eq, output977_eq]
  kernel_rfl

theorem input982_eq : InitECandidate.Proofs.DeadStages240.Parallel.input982 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3542 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input982_def]
  simp only [input981_eq, input976_eq]
  kernel_rfl

theorem output982_eq : InitECandidate.Proofs.DeadStages240.Parallel.output982 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3114 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output982_def]
  simp only [output981_eq, output976_eq]
  kernel_rfl

theorem input983_eq : InitECandidate.Proofs.DeadStages240.Parallel.input983 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3544 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input983_def]
  simp only [input982_eq, input975_eq]
  kernel_rfl

theorem output983_eq : InitECandidate.Proofs.DeadStages240.Parallel.output983 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3116 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output983_def]
  simp only [output982_eq, output975_eq]
  kernel_rfl

theorem input984_eq : InitECandidate.Proofs.DeadStages240.Parallel.input984 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3533 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input984_def]
  kernel_rfl

theorem output984_eq : InitECandidate.Proofs.DeadStages240.Parallel.output984 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3105 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output984_def]
  kernel_rfl

theorem input985_eq : InitECandidate.Proofs.DeadStages240.Parallel.input985 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3532 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input985_def]
  kernel_rfl

theorem output985_eq : InitECandidate.Proofs.DeadStages240.Parallel.output985 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3104 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output985_def]
  kernel_rfl

theorem input986_eq : InitECandidate.Proofs.DeadStages240.Parallel.input986 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3534 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input986_def]
  simp only [input985_eq, input984_eq]
  kernel_rfl

theorem output986_eq : InitECandidate.Proofs.DeadStages240.Parallel.output986 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3106 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output986_def]
  simp only [output985_eq, output984_eq]
  kernel_rfl

theorem input987_eq : InitECandidate.Proofs.DeadStages240.Parallel.input987 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3530 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input987_def]
  kernel_rfl

theorem output987_eq : InitECandidate.Proofs.DeadStages240.Parallel.output987 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3102 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output987_def]
  kernel_rfl

theorem input988_eq : InitECandidate.Proofs.DeadStages240.Parallel.input988 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3528 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input988_def]
  kernel_rfl

theorem output988_eq : InitECandidate.Proofs.DeadStages240.Parallel.output988 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output988_def]
  kernel_rfl

theorem input989_eq : InitECandidate.Proofs.DeadStages240.Parallel.input989 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3525 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input989_def]
  kernel_rfl

theorem output989_eq : InitECandidate.Proofs.DeadStages240.Parallel.output989 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3099 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output989_def]
  kernel_rfl

theorem input990_eq : InitECandidate.Proofs.DeadStages240.Parallel.input990 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3523 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input990_def]
  kernel_rfl

theorem output990_eq : InitECandidate.Proofs.DeadStages240.Parallel.output990 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3097 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output990_def]
  kernel_rfl

theorem input991_eq : InitECandidate.Proofs.DeadStages240.Parallel.input991 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3521 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input991_def]
  kernel_rfl

theorem output991_eq : InitECandidate.Proofs.DeadStages240.Parallel.output991 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3095 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output991_def]
  kernel_rfl

theorem input992_eq : InitECandidate.Proofs.DeadStages240.Parallel.input992 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3519 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input992_def]
  kernel_rfl

theorem output992_eq : InitECandidate.Proofs.DeadStages240.Parallel.output992 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3093 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output992_def]
  kernel_rfl

theorem input993_eq : InitECandidate.Proofs.DeadStages240.Parallel.input993 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3518 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input993_def]
  kernel_rfl

theorem output993_eq : InitECandidate.Proofs.DeadStages240.Parallel.output993 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3092 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output993_def]
  kernel_rfl

theorem input994_eq : InitECandidate.Proofs.DeadStages240.Parallel.input994 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3520 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input994_def]
  simp only [input993_eq, input992_eq]
  kernel_rfl

theorem output994_eq : InitECandidate.Proofs.DeadStages240.Parallel.output994 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3094 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output994_def]
  simp only [output993_eq, output992_eq]
  kernel_rfl

theorem input995_eq : InitECandidate.Proofs.DeadStages240.Parallel.input995 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3522 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input995_def]
  simp only [input994_eq, input991_eq]
  kernel_rfl

theorem output995_eq : InitECandidate.Proofs.DeadStages240.Parallel.output995 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3096 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output995_def]
  simp only [output994_eq, output991_eq]
  kernel_rfl

theorem input996_eq : InitECandidate.Proofs.DeadStages240.Parallel.input996 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3524 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input996_def]
  simp only [input995_eq, input990_eq]
  kernel_rfl

theorem output996_eq : InitECandidate.Proofs.DeadStages240.Parallel.output996 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3098 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output996_def]
  simp only [output995_eq, output990_eq]
  kernel_rfl

theorem input997_eq : InitECandidate.Proofs.DeadStages240.Parallel.input997 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3526 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input997_def]
  simp only [input996_eq, input989_eq]
  kernel_rfl

theorem output997_eq : InitECandidate.Proofs.DeadStages240.Parallel.output997 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3100 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output997_def]
  simp only [output996_eq, output989_eq]
  kernel_rfl

theorem input998_eq : InitECandidate.Proofs.DeadStages240.Parallel.input998 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3515 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input998_def]
  kernel_rfl

theorem output998_eq : InitECandidate.Proofs.DeadStages240.Parallel.output998 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3089 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output998_def]
  kernel_rfl

theorem input999_eq : InitECandidate.Proofs.DeadStages240.Parallel.input999 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3514 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input999_def]
  kernel_rfl

theorem output999_eq : InitECandidate.Proofs.DeadStages240.Parallel.output999 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3088 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output999_def]
  kernel_rfl

theorem input1000_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1000 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3516 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1000_def]
  simp only [input999_eq, input998_eq]
  kernel_rfl

theorem output1000_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1000 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3090 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1000_def]
  simp only [output999_eq, output998_eq]
  kernel_rfl

theorem input1001_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1001 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3512 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1001_def]
  kernel_rfl

theorem output1001_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1001 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3086 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1001_def]
  kernel_rfl

theorem input1002_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1002 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3510 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1002_def]
  kernel_rfl

theorem output1002_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1002 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1002_def]
  kernel_rfl

theorem input1003_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1003 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3507 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1003_def]
  kernel_rfl

theorem output1003_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1003 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3083 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1003_def]
  kernel_rfl

theorem input1004_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1004 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3505 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1004_def]
  kernel_rfl

theorem output1004_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1004 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3081 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1004_def]
  kernel_rfl

theorem input1005_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1005 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3503 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1005_def]
  kernel_rfl

theorem output1005_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1005 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3079 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1005_def]
  kernel_rfl

theorem input1006_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1006 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3501 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1006_def]
  kernel_rfl

theorem output1006_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1006 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3077 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1006_def]
  kernel_rfl

theorem input1007_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1007 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3500 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1007_def]
  kernel_rfl

theorem output1007_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1007 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3076 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1007_def]
  kernel_rfl

theorem input1008_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1008 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3502 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1008_def]
  simp only [input1007_eq, input1006_eq]
  kernel_rfl

theorem output1008_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1008 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3078 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1008_def]
  simp only [output1007_eq, output1006_eq]
  kernel_rfl

theorem input1009_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1009 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3504 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1009_def]
  simp only [input1008_eq, input1005_eq]
  kernel_rfl

theorem output1009_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1009 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3080 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1009_def]
  simp only [output1008_eq, output1005_eq]
  kernel_rfl

theorem input1010_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1010 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3506 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1010_def]
  simp only [input1009_eq, input1004_eq]
  kernel_rfl

theorem output1010_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1010 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3082 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1010_def]
  simp only [output1009_eq, output1004_eq]
  kernel_rfl

theorem input1011_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1011 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3508 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1011_def]
  simp only [input1010_eq, input1003_eq]
  kernel_rfl

theorem output1011_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1011 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3084 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1011_def]
  simp only [output1010_eq, output1003_eq]
  kernel_rfl

theorem input1012_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1012 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3497 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1012_def]
  kernel_rfl

theorem output1012_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1012 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3073 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1012_def]
  kernel_rfl

theorem input1013_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1013 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3496 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1013_def]
  kernel_rfl

theorem output1013_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1013 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3072 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1013_def]
  kernel_rfl

theorem input1014_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1014 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3498 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1014_def]
  simp only [input1013_eq, input1012_eq]
  kernel_rfl

theorem output1014_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1014 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3074 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1014_def]
  simp only [output1013_eq, output1012_eq]
  kernel_rfl

theorem input1015_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1015 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3494 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1015_def]
  kernel_rfl

theorem output1015_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1015 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3070 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1015_def]
  kernel_rfl

theorem input1016_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1016 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3492 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1016_def]
  kernel_rfl

theorem output1016_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1016 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1016_def]
  kernel_rfl

theorem input1017_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1017 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3489 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1017_def]
  kernel_rfl

theorem output1017_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1017 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3067 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1017_def]
  kernel_rfl

theorem input1018_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1018 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3487 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1018_def]
  kernel_rfl

theorem output1018_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1018 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3065 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1018_def]
  kernel_rfl

theorem input1019_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1019 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3485 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1019_def]
  kernel_rfl

theorem output1019_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1019 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3063 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1019_def]
  kernel_rfl

theorem input1020_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1020 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3483 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1020_def]
  kernel_rfl

theorem output1020_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1020 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3061 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1020_def]
  kernel_rfl

theorem input1021_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1021 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3482 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1021_def]
  kernel_rfl

theorem output1021_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1021 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3060 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1021_def]
  kernel_rfl

theorem input1022_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1022 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3484 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1022_def]
  simp only [input1021_eq, input1020_eq]
  kernel_rfl

theorem output1022_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1022 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3062 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1022_def]
  simp only [output1021_eq, output1020_eq]
  kernel_rfl

theorem input1023_eq : InitECandidate.Proofs.DeadStages240.Parallel.input1023 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_3486 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input1023_def]
  simp only [input1022_eq, input1019_eq]
  kernel_rfl

theorem output1023_eq : InitECandidate.Proofs.DeadStages240.Parallel.output1023 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3064 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output1023_def]
  simp only [output1022_eq, output1019_eq]
  kernel_rfl

#print axioms output1023_eq
end InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel
