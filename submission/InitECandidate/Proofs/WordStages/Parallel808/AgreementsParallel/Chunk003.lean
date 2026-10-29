import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel808.Data2
import InitECandidate.Proofs.WordStages.Parallel808.Data3
import InitECandidate.Proofs.DeadStages808.Parallel.Data.Chunk003
import InitECandidate.Proofs.WordStages.Parallel808.AgreementsParallel.Chunk002

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel808.AgreementsParallel
theorem input768_eq : InitECandidate.Proofs.DeadStages808.Parallel.input768 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_891 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input768_def]
  kernel_rfl

theorem input769_eq : InitECandidate.Proofs.DeadStages808.Parallel.input769 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_892 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input769_def]
  simp only [input768_eq, input767_eq]
  kernel_rfl

theorem output769_eq : InitECandidate.Proofs.DeadStages808.Parallel.output769 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output769_def]
  simp only [output767_eq]

theorem input770_eq : InitECandidate.Proofs.DeadStages808.Parallel.input770 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_894 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input770_def]
  simp only [input769_eq, input766_eq]
  kernel_rfl

theorem output770_eq : InitECandidate.Proofs.DeadStages808.Parallel.output770 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output770_def]
  simp only [output769_eq]

theorem input771_eq : InitECandidate.Proofs.DeadStages808.Parallel.input771 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_917 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input771_def]
  simp only [input770_eq, input765_eq]
  kernel_rfl

theorem output771_eq : InitECandidate.Proofs.DeadStages808.Parallel.output771 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_751 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output771_def]
  simp only [output770_eq, output765_eq]
  kernel_rfl

theorem input772_eq : InitECandidate.Proofs.DeadStages808.Parallel.input772 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_918 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input772_def]
  simp only [input742_eq, input771_eq]
  kernel_rfl

theorem output772_eq : InitECandidate.Proofs.DeadStages808.Parallel.output772 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_752 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output772_def]
  simp only [output742_eq, output771_eq]
  kernel_rfl

theorem input773_eq : InitECandidate.Proofs.DeadStages808.Parallel.input773 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_790 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input773_def]
  kernel_rfl

theorem output773_eq : InitECandidate.Proofs.DeadStages808.Parallel.output773 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_683 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output773_def]
  kernel_rfl

theorem input774_eq : InitECandidate.Proofs.DeadStages808.Parallel.input774 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_788 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input774_def]
  kernel_rfl

theorem output774_eq : InitECandidate.Proofs.DeadStages808.Parallel.output774 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_681 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output774_def]
  kernel_rfl

theorem input775_eq : InitECandidate.Proofs.DeadStages808.Parallel.input775 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input775_def]
  kernel_rfl

theorem output775_eq : InitECandidate.Proofs.DeadStages808.Parallel.output775 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output775_def]
  kernel_rfl

theorem input776_eq : InitECandidate.Proofs.DeadStages808.Parallel.input776 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_783 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input776_def]
  kernel_rfl

theorem output776_eq : InitECandidate.Proofs.DeadStages808.Parallel.output776 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_676 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output776_def]
  kernel_rfl

theorem input777_eq : InitECandidate.Proofs.DeadStages808.Parallel.input777 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_761 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input777_def]
  kernel_rfl

theorem output777_eq : InitECandidate.Proofs.DeadStages808.Parallel.output777 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_663 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output777_def]
  kernel_rfl

theorem input778_eq : InitECandidate.Proofs.DeadStages808.Parallel.input778 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_784 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input778_def]
  simp only [input777_eq, input776_eq]
  kernel_rfl

theorem output778_eq : InitECandidate.Proofs.DeadStages808.Parallel.output778 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_677 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output778_def]
  simp only [output777_eq, output776_eq]
  kernel_rfl

theorem input779_eq : InitECandidate.Proofs.DeadStages808.Parallel.input779 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_760 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input779_def]
  kernel_rfl

theorem output779_eq : InitECandidate.Proofs.DeadStages808.Parallel.output779 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_662 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output779_def]
  kernel_rfl

theorem input780_eq : InitECandidate.Proofs.DeadStages808.Parallel.input780 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_785 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input780_def]
  simp only [input779_eq, input778_eq]
  kernel_rfl

theorem output780_eq : InitECandidate.Proofs.DeadStages808.Parallel.output780 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_678 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output780_def]
  simp only [output779_eq, output778_eq]
  kernel_rfl

theorem input781_eq : InitECandidate.Proofs.DeadStages808.Parallel.input781 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_758 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input781_def]
  kernel_rfl

theorem output781_eq : InitECandidate.Proofs.DeadStages808.Parallel.output781 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_660 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output781_def]
  kernel_rfl

theorem input782_eq : InitECandidate.Proofs.DeadStages808.Parallel.input782 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_756 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input782_def]
  kernel_rfl

theorem output782_eq : InitECandidate.Proofs.DeadStages808.Parallel.output782 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_658 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output782_def]
  kernel_rfl

theorem input783_eq : InitECandidate.Proofs.DeadStages808.Parallel.input783 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_754 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input783_def]
  kernel_rfl

theorem output783_eq : InitECandidate.Proofs.DeadStages808.Parallel.output783 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_656 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output783_def]
  kernel_rfl

theorem input784_eq : InitECandidate.Proofs.DeadStages808.Parallel.input784 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_752 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input784_def]
  kernel_rfl

theorem output784_eq : InitECandidate.Proofs.DeadStages808.Parallel.output784 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_654 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output784_def]
  kernel_rfl

theorem input785_eq : InitECandidate.Proofs.DeadStages808.Parallel.input785 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_750 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input785_def]
  kernel_rfl

theorem output785_eq : InitECandidate.Proofs.DeadStages808.Parallel.output785 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_652 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output785_def]
  kernel_rfl

theorem input786_eq : InitECandidate.Proofs.DeadStages808.Parallel.input786 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_748 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input786_def]
  kernel_rfl

theorem output786_eq : InitECandidate.Proofs.DeadStages808.Parallel.output786 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_650 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output786_def]
  kernel_rfl

theorem input787_eq : InitECandidate.Proofs.DeadStages808.Parallel.input787 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input787_def]
  kernel_rfl

theorem output787_eq : InitECandidate.Proofs.DeadStages808.Parallel.output787 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output787_def]
  kernel_rfl

theorem input788_eq : InitECandidate.Proofs.DeadStages808.Parallel.input788 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_743 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input788_def]
  kernel_rfl

theorem output788_eq : InitECandidate.Proofs.DeadStages808.Parallel.output788 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_645 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output788_def]
  kernel_rfl

theorem input789_eq : InitECandidate.Proofs.DeadStages808.Parallel.input789 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_701 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input789_def]
  kernel_rfl

theorem output789_eq : InitECandidate.Proofs.DeadStages808.Parallel.output789 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_612 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output789_def]
  kernel_rfl

theorem input790_eq : InitECandidate.Proofs.DeadStages808.Parallel.input790 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_744 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input790_def]
  simp only [input789_eq, input788_eq]
  kernel_rfl

theorem output790_eq : InitECandidate.Proofs.DeadStages808.Parallel.output790 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_646 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output790_def]
  simp only [output789_eq, output788_eq]
  kernel_rfl

theorem input791_eq : InitECandidate.Proofs.DeadStages808.Parallel.input791 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_700 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input791_def]
  kernel_rfl

theorem output791_eq : InitECandidate.Proofs.DeadStages808.Parallel.output791 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_611 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output791_def]
  kernel_rfl

theorem input792_eq : InitECandidate.Proofs.DeadStages808.Parallel.input792 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_745 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input792_def]
  simp only [input791_eq, input790_eq]
  kernel_rfl

theorem output792_eq : InitECandidate.Proofs.DeadStages808.Parallel.output792 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_647 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output792_def]
  simp only [output791_eq, output790_eq]
  kernel_rfl

theorem input793_eq : InitECandidate.Proofs.DeadStages808.Parallel.input793 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_698 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input793_def]
  kernel_rfl

theorem output793_eq : InitECandidate.Proofs.DeadStages808.Parallel.output793 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_609 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output793_def]
  kernel_rfl

theorem input794_eq : InitECandidate.Proofs.DeadStages808.Parallel.input794 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_696 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input794_def]
  kernel_rfl

theorem output794_eq : InitECandidate.Proofs.DeadStages808.Parallel.output794 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_607 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output794_def]
  kernel_rfl

theorem input795_eq : InitECandidate.Proofs.DeadStages808.Parallel.input795 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_694 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input795_def]
  kernel_rfl

theorem output795_eq : InitECandidate.Proofs.DeadStages808.Parallel.output795 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_605 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output795_def]
  kernel_rfl

theorem input796_eq : InitECandidate.Proofs.DeadStages808.Parallel.input796 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_692 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input796_def]
  kernel_rfl

theorem output796_eq : InitECandidate.Proofs.DeadStages808.Parallel.output796 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_603 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output796_def]
  kernel_rfl

theorem input797_eq : InitECandidate.Proofs.DeadStages808.Parallel.input797 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_690 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input797_def]
  kernel_rfl

theorem output797_eq : InitECandidate.Proofs.DeadStages808.Parallel.output797 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_601 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output797_def]
  kernel_rfl

theorem input798_eq : InitECandidate.Proofs.DeadStages808.Parallel.input798 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_688 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input798_def]
  kernel_rfl

theorem output798_eq : InitECandidate.Proofs.DeadStages808.Parallel.output798 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_599 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output798_def]
  kernel_rfl

theorem input799_eq : InitECandidate.Proofs.DeadStages808.Parallel.input799 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_686 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input799_def]
  kernel_rfl

theorem output799_eq : InitECandidate.Proofs.DeadStages808.Parallel.output799 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_597 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output799_def]
  kernel_rfl

theorem input800_eq : InitECandidate.Proofs.DeadStages808.Parallel.input800 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_684 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input800_def]
  kernel_rfl

theorem output800_eq : InitECandidate.Proofs.DeadStages808.Parallel.output800 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_595 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output800_def]
  kernel_rfl

theorem input801_eq : InitECandidate.Proofs.DeadStages808.Parallel.input801 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_682 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input801_def]
  kernel_rfl

theorem output801_eq : InitECandidate.Proofs.DeadStages808.Parallel.output801 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_593 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output801_def]
  kernel_rfl

theorem input802_eq : InitECandidate.Proofs.DeadStages808.Parallel.input802 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_680 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input802_def]
  kernel_rfl

theorem output802_eq : InitECandidate.Proofs.DeadStages808.Parallel.output802 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_591 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output802_def]
  kernel_rfl

theorem input803_eq : InitECandidate.Proofs.DeadStages808.Parallel.input803 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_678 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input803_def]
  kernel_rfl

theorem output803_eq : InitECandidate.Proofs.DeadStages808.Parallel.output803 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_589 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output803_def]
  kernel_rfl

theorem input804_eq : InitECandidate.Proofs.DeadStages808.Parallel.input804 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_676 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input804_def]
  kernel_rfl

theorem output804_eq : InitECandidate.Proofs.DeadStages808.Parallel.output804 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_587 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output804_def]
  kernel_rfl

theorem input805_eq : InitECandidate.Proofs.DeadStages808.Parallel.input805 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input805_def]
  kernel_rfl

theorem output805_eq : InitECandidate.Proofs.DeadStages808.Parallel.output805 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output805_def]
  kernel_rfl

theorem input806_eq : InitECandidate.Proofs.DeadStages808.Parallel.input806 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_671 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input806_def]
  kernel_rfl

theorem output806_eq : InitECandidate.Proofs.DeadStages808.Parallel.output806 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_582 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output806_def]
  kernel_rfl

theorem input807_eq : InitECandidate.Proofs.DeadStages808.Parallel.input807 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_629 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input807_def]
  kernel_rfl

theorem output807_eq : InitECandidate.Proofs.DeadStages808.Parallel.output807 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_549 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output807_def]
  kernel_rfl

theorem input808_eq : InitECandidate.Proofs.DeadStages808.Parallel.input808 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_672 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input808_def]
  simp only [input807_eq, input806_eq]
  kernel_rfl

theorem output808_eq : InitECandidate.Proofs.DeadStages808.Parallel.output808 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_583 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output808_def]
  simp only [output807_eq, output806_eq]
  kernel_rfl

theorem input809_eq : InitECandidate.Proofs.DeadStages808.Parallel.input809 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_628 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input809_def]
  kernel_rfl

theorem output809_eq : InitECandidate.Proofs.DeadStages808.Parallel.output809 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_548 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output809_def]
  kernel_rfl

theorem input810_eq : InitECandidate.Proofs.DeadStages808.Parallel.input810 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_673 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input810_def]
  simp only [input809_eq, input808_eq]
  kernel_rfl

theorem output810_eq : InitECandidate.Proofs.DeadStages808.Parallel.output810 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_584 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output810_def]
  simp only [output809_eq, output808_eq]
  kernel_rfl

theorem input811_eq : InitECandidate.Proofs.DeadStages808.Parallel.input811 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_626 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input811_def]
  kernel_rfl

theorem output811_eq : InitECandidate.Proofs.DeadStages808.Parallel.output811 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_546 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output811_def]
  kernel_rfl

theorem input812_eq : InitECandidate.Proofs.DeadStages808.Parallel.input812 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_624 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input812_def]
  kernel_rfl

theorem output812_eq : InitECandidate.Proofs.DeadStages808.Parallel.output812 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_544 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output812_def]
  kernel_rfl

theorem input813_eq : InitECandidate.Proofs.DeadStages808.Parallel.input813 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_622 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input813_def]
  kernel_rfl

theorem output813_eq : InitECandidate.Proofs.DeadStages808.Parallel.output813 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_542 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output813_def]
  kernel_rfl

theorem input814_eq : InitECandidate.Proofs.DeadStages808.Parallel.input814 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_620 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input814_def]
  kernel_rfl

theorem output814_eq : InitECandidate.Proofs.DeadStages808.Parallel.output814 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_540 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output814_def]
  kernel_rfl

theorem input815_eq : InitECandidate.Proofs.DeadStages808.Parallel.input815 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_618 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input815_def]
  kernel_rfl

theorem output815_eq : InitECandidate.Proofs.DeadStages808.Parallel.output815 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_538 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output815_def]
  kernel_rfl

theorem input816_eq : InitECandidate.Proofs.DeadStages808.Parallel.input816 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_616 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input816_def]
  kernel_rfl

theorem output816_eq : InitECandidate.Proofs.DeadStages808.Parallel.output816 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_536 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output816_def]
  kernel_rfl

theorem input817_eq : InitECandidate.Proofs.DeadStages808.Parallel.input817 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_614 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input817_def]
  kernel_rfl

theorem input818_eq : InitECandidate.Proofs.DeadStages808.Parallel.input818 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_612 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input818_def]
  kernel_rfl

theorem input819_eq : InitECandidate.Proofs.DeadStages808.Parallel.input819 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_610 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input819_def]
  kernel_rfl

theorem input820_eq : InitECandidate.Proofs.DeadStages808.Parallel.input820 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_608 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input820_def]
  kernel_rfl

theorem input821_eq : InitECandidate.Proofs.DeadStages808.Parallel.input821 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_606 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input821_def]
  kernel_rfl

theorem input822_eq : InitECandidate.Proofs.DeadStages808.Parallel.input822 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_604 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input822_def]
  kernel_rfl

theorem input823_eq : InitECandidate.Proofs.DeadStages808.Parallel.input823 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_602 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input823_def]
  kernel_rfl

theorem output823_eq : InitECandidate.Proofs.DeadStages808.Parallel.output823 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_534 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output823_def]
  kernel_rfl

theorem input824_eq : InitECandidate.Proofs.DeadStages808.Parallel.input824 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_600 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input824_def]
  kernel_rfl

theorem output824_eq : InitECandidate.Proofs.DeadStages808.Parallel.output824 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_532 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output824_def]
  kernel_rfl

theorem input825_eq : InitECandidate.Proofs.DeadStages808.Parallel.input825 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_598 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input825_def]
  kernel_rfl

theorem output825_eq : InitECandidate.Proofs.DeadStages808.Parallel.output825 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_530 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output825_def]
  kernel_rfl

theorem input826_eq : InitECandidate.Proofs.DeadStages808.Parallel.input826 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_596 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input826_def]
  kernel_rfl

theorem output826_eq : InitECandidate.Proofs.DeadStages808.Parallel.output826 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_528 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output826_def]
  kernel_rfl

theorem input827_eq : InitECandidate.Proofs.DeadStages808.Parallel.input827 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_594 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input827_def]
  kernel_rfl

theorem output827_eq : InitECandidate.Proofs.DeadStages808.Parallel.output827 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_526 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output827_def]
  kernel_rfl

theorem input828_eq : InitECandidate.Proofs.DeadStages808.Parallel.input828 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_592 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input828_def]
  kernel_rfl

theorem output828_eq : InitECandidate.Proofs.DeadStages808.Parallel.output828 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_524 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output828_def]
  kernel_rfl

theorem input829_eq : InitECandidate.Proofs.DeadStages808.Parallel.input829 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_590 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input829_def]
  kernel_rfl

theorem input830_eq : InitECandidate.Proofs.DeadStages808.Parallel.input830 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_588 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input830_def]
  kernel_rfl

theorem input831_eq : InitECandidate.Proofs.DeadStages808.Parallel.input831 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_586 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input831_def]
  kernel_rfl

theorem input832_eq : InitECandidate.Proofs.DeadStages808.Parallel.input832 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_584 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input832_def]
  kernel_rfl

theorem input833_eq : InitECandidate.Proofs.DeadStages808.Parallel.input833 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_582 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input833_def]
  kernel_rfl

theorem input834_eq : InitECandidate.Proofs.DeadStages808.Parallel.input834 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_580 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input834_def]
  kernel_rfl

theorem input835_eq : InitECandidate.Proofs.DeadStages808.Parallel.input835 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input835_def]
  kernel_rfl

theorem output835_eq : InitECandidate.Proofs.DeadStages808.Parallel.output835 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output835_def]
  kernel_rfl

theorem input836_eq : InitECandidate.Proofs.DeadStages808.Parallel.input836 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_575 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input836_def]
  kernel_rfl

theorem output836_eq : InitECandidate.Proofs.DeadStages808.Parallel.output836 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_519 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output836_def]
  kernel_rfl

theorem input837_eq : InitECandidate.Proofs.DeadStages808.Parallel.input837 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_533 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input837_def]
  kernel_rfl

theorem output837_eq : InitECandidate.Proofs.DeadStages808.Parallel.output837 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_486 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output837_def]
  kernel_rfl

theorem input838_eq : InitECandidate.Proofs.DeadStages808.Parallel.input838 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_576 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input838_def]
  simp only [input837_eq, input836_eq]
  kernel_rfl

theorem output838_eq : InitECandidate.Proofs.DeadStages808.Parallel.output838 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_520 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output838_def]
  simp only [output837_eq, output836_eq]
  kernel_rfl

theorem input839_eq : InitECandidate.Proofs.DeadStages808.Parallel.input839 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_532 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input839_def]
  kernel_rfl

theorem output839_eq : InitECandidate.Proofs.DeadStages808.Parallel.output839 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_485 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output839_def]
  kernel_rfl

theorem input840_eq : InitECandidate.Proofs.DeadStages808.Parallel.input840 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_577 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input840_def]
  simp only [input839_eq, input838_eq]
  kernel_rfl

theorem output840_eq : InitECandidate.Proofs.DeadStages808.Parallel.output840 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_521 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output840_def]
  simp only [output839_eq, output838_eq]
  kernel_rfl

theorem input841_eq : InitECandidate.Proofs.DeadStages808.Parallel.input841 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_530 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input841_def]
  kernel_rfl

theorem output841_eq : InitECandidate.Proofs.DeadStages808.Parallel.output841 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_483 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output841_def]
  kernel_rfl

theorem input842_eq : InitECandidate.Proofs.DeadStages808.Parallel.input842 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_528 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input842_def]
  kernel_rfl

theorem output842_eq : InitECandidate.Proofs.DeadStages808.Parallel.output842 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_481 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output842_def]
  kernel_rfl

theorem input843_eq : InitECandidate.Proofs.DeadStages808.Parallel.input843 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_526 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input843_def]
  kernel_rfl

theorem output843_eq : InitECandidate.Proofs.DeadStages808.Parallel.output843 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_479 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output843_def]
  kernel_rfl

theorem input844_eq : InitECandidate.Proofs.DeadStages808.Parallel.input844 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_524 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input844_def]
  kernel_rfl

theorem output844_eq : InitECandidate.Proofs.DeadStages808.Parallel.output844 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_477 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output844_def]
  kernel_rfl

theorem input845_eq : InitECandidate.Proofs.DeadStages808.Parallel.input845 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_522 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input845_def]
  kernel_rfl

theorem output845_eq : InitECandidate.Proofs.DeadStages808.Parallel.output845 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_475 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output845_def]
  kernel_rfl

theorem input846_eq : InitECandidate.Proofs.DeadStages808.Parallel.input846 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_520 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input846_def]
  kernel_rfl

theorem output846_eq : InitECandidate.Proofs.DeadStages808.Parallel.output846 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_473 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output846_def]
  kernel_rfl

theorem input847_eq : InitECandidate.Proofs.DeadStages808.Parallel.input847 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input847_def]
  kernel_rfl

theorem output847_eq : InitECandidate.Proofs.DeadStages808.Parallel.output847 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output847_def]
  kernel_rfl

theorem input848_eq : InitECandidate.Proofs.DeadStages808.Parallel.input848 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_515 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input848_def]
  kernel_rfl

theorem output848_eq : InitECandidate.Proofs.DeadStages808.Parallel.output848 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_468 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output848_def]
  kernel_rfl

theorem input849_eq : InitECandidate.Proofs.DeadStages808.Parallel.input849 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_473 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input849_def]
  kernel_rfl

theorem output849_eq : InitECandidate.Proofs.DeadStages808.Parallel.output849 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_435 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output849_def]
  kernel_rfl

theorem input850_eq : InitECandidate.Proofs.DeadStages808.Parallel.input850 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_516 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input850_def]
  simp only [input849_eq, input848_eq]
  kernel_rfl

theorem output850_eq : InitECandidate.Proofs.DeadStages808.Parallel.output850 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_469 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output850_def]
  simp only [output849_eq, output848_eq]
  kernel_rfl

theorem input851_eq : InitECandidate.Proofs.DeadStages808.Parallel.input851 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_472 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input851_def]
  kernel_rfl

theorem output851_eq : InitECandidate.Proofs.DeadStages808.Parallel.output851 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_434 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output851_def]
  kernel_rfl

theorem input852_eq : InitECandidate.Proofs.DeadStages808.Parallel.input852 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_517 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input852_def]
  simp only [input851_eq, input850_eq]
  kernel_rfl

theorem output852_eq : InitECandidate.Proofs.DeadStages808.Parallel.output852 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_470 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output852_def]
  simp only [output851_eq, output850_eq]
  kernel_rfl

theorem input853_eq : InitECandidate.Proofs.DeadStages808.Parallel.input853 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_470 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input853_def]
  kernel_rfl

theorem output853_eq : InitECandidate.Proofs.DeadStages808.Parallel.output853 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_432 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output853_def]
  kernel_rfl

theorem input854_eq : InitECandidate.Proofs.DeadStages808.Parallel.input854 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_468 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input854_def]
  kernel_rfl

theorem output854_eq : InitECandidate.Proofs.DeadStages808.Parallel.output854 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_430 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output854_def]
  kernel_rfl

theorem input855_eq : InitECandidate.Proofs.DeadStages808.Parallel.input855 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_466 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input855_def]
  kernel_rfl

theorem output855_eq : InitECandidate.Proofs.DeadStages808.Parallel.output855 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_428 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output855_def]
  kernel_rfl

theorem input856_eq : InitECandidate.Proofs.DeadStages808.Parallel.input856 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_464 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input856_def]
  kernel_rfl

theorem output856_eq : InitECandidate.Proofs.DeadStages808.Parallel.output856 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_426 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output856_def]
  kernel_rfl

theorem input857_eq : InitECandidate.Proofs.DeadStages808.Parallel.input857 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_462 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input857_def]
  kernel_rfl

theorem output857_eq : InitECandidate.Proofs.DeadStages808.Parallel.output857 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_424 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output857_def]
  kernel_rfl

theorem input858_eq : InitECandidate.Proofs.DeadStages808.Parallel.input858 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_460 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input858_def]
  kernel_rfl

theorem output858_eq : InitECandidate.Proofs.DeadStages808.Parallel.output858 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_422 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output858_def]
  kernel_rfl

theorem input859_eq : InitECandidate.Proofs.DeadStages808.Parallel.input859 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_458 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input859_def]
  kernel_rfl

theorem output859_eq : InitECandidate.Proofs.DeadStages808.Parallel.output859 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_420 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output859_def]
  kernel_rfl

theorem input860_eq : InitECandidate.Proofs.DeadStages808.Parallel.input860 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_456 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input860_def]
  kernel_rfl

theorem output860_eq : InitECandidate.Proofs.DeadStages808.Parallel.output860 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_418 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output860_def]
  kernel_rfl

theorem input861_eq : InitECandidate.Proofs.DeadStages808.Parallel.input861 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_454 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input861_def]
  kernel_rfl

theorem output861_eq : InitECandidate.Proofs.DeadStages808.Parallel.output861 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_416 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output861_def]
  kernel_rfl

theorem input862_eq : InitECandidate.Proofs.DeadStages808.Parallel.input862 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_452 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input862_def]
  kernel_rfl

theorem output862_eq : InitECandidate.Proofs.DeadStages808.Parallel.output862 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_414 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output862_def]
  kernel_rfl

theorem input863_eq : InitECandidate.Proofs.DeadStages808.Parallel.input863 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_450 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input863_def]
  kernel_rfl

theorem output863_eq : InitECandidate.Proofs.DeadStages808.Parallel.output863 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_412 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output863_def]
  kernel_rfl

theorem input864_eq : InitECandidate.Proofs.DeadStages808.Parallel.input864 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_448 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input864_def]
  kernel_rfl

theorem output864_eq : InitECandidate.Proofs.DeadStages808.Parallel.output864 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_410 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output864_def]
  kernel_rfl

theorem input865_eq : InitECandidate.Proofs.DeadStages808.Parallel.input865 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input865_def]
  kernel_rfl

theorem output865_eq : InitECandidate.Proofs.DeadStages808.Parallel.output865 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output865_def]
  kernel_rfl

theorem input866_eq : InitECandidate.Proofs.DeadStages808.Parallel.input866 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_443 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input866_def]
  kernel_rfl

theorem output866_eq : InitECandidate.Proofs.DeadStages808.Parallel.output866 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_405 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output866_def]
  kernel_rfl

theorem input867_eq : InitECandidate.Proofs.DeadStages808.Parallel.input867 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_401 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input867_def]
  kernel_rfl

theorem output867_eq : InitECandidate.Proofs.DeadStages808.Parallel.output867 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_372 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output867_def]
  kernel_rfl

theorem input868_eq : InitECandidate.Proofs.DeadStages808.Parallel.input868 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_444 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input868_def]
  simp only [input867_eq, input866_eq]
  kernel_rfl

theorem output868_eq : InitECandidate.Proofs.DeadStages808.Parallel.output868 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_406 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output868_def]
  simp only [output867_eq, output866_eq]
  kernel_rfl

theorem input869_eq : InitECandidate.Proofs.DeadStages808.Parallel.input869 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_400 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input869_def]
  kernel_rfl

theorem output869_eq : InitECandidate.Proofs.DeadStages808.Parallel.output869 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_371 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output869_def]
  kernel_rfl

theorem input870_eq : InitECandidate.Proofs.DeadStages808.Parallel.input870 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_445 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input870_def]
  simp only [input869_eq, input868_eq]
  kernel_rfl

theorem output870_eq : InitECandidate.Proofs.DeadStages808.Parallel.output870 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_407 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output870_def]
  simp only [output869_eq, output868_eq]
  kernel_rfl

theorem input871_eq : InitECandidate.Proofs.DeadStages808.Parallel.input871 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_398 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input871_def]
  kernel_rfl

theorem output871_eq : InitECandidate.Proofs.DeadStages808.Parallel.output871 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_369 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output871_def]
  kernel_rfl

theorem input872_eq : InitECandidate.Proofs.DeadStages808.Parallel.input872 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_396 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input872_def]
  kernel_rfl

theorem output872_eq : InitECandidate.Proofs.DeadStages808.Parallel.output872 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_367 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output872_def]
  kernel_rfl

theorem input873_eq : InitECandidate.Proofs.DeadStages808.Parallel.input873 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_394 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input873_def]
  kernel_rfl

theorem output873_eq : InitECandidate.Proofs.DeadStages808.Parallel.output873 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_365 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output873_def]
  kernel_rfl

theorem input874_eq : InitECandidate.Proofs.DeadStages808.Parallel.input874 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_392 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input874_def]
  kernel_rfl

theorem output874_eq : InitECandidate.Proofs.DeadStages808.Parallel.output874 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_363 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output874_def]
  kernel_rfl

theorem input875_eq : InitECandidate.Proofs.DeadStages808.Parallel.input875 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_390 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input875_def]
  kernel_rfl

theorem output875_eq : InitECandidate.Proofs.DeadStages808.Parallel.output875 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_361 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output875_def]
  kernel_rfl

theorem input876_eq : InitECandidate.Proofs.DeadStages808.Parallel.input876 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_388 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input876_def]
  kernel_rfl

theorem output876_eq : InitECandidate.Proofs.DeadStages808.Parallel.output876 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_359 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output876_def]
  kernel_rfl

theorem input877_eq : InitECandidate.Proofs.DeadStages808.Parallel.input877 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_386 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input877_def]
  kernel_rfl

theorem output877_eq : InitECandidate.Proofs.DeadStages808.Parallel.output877 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_357 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output877_def]
  kernel_rfl

theorem input878_eq : InitECandidate.Proofs.DeadStages808.Parallel.input878 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_384 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input878_def]
  kernel_rfl

theorem output878_eq : InitECandidate.Proofs.DeadStages808.Parallel.output878 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_355 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output878_def]
  kernel_rfl

theorem input879_eq : InitECandidate.Proofs.DeadStages808.Parallel.input879 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_382 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input879_def]
  kernel_rfl

theorem output879_eq : InitECandidate.Proofs.DeadStages808.Parallel.output879 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_353 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output879_def]
  kernel_rfl

theorem input880_eq : InitECandidate.Proofs.DeadStages808.Parallel.input880 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_380 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input880_def]
  kernel_rfl

theorem output880_eq : InitECandidate.Proofs.DeadStages808.Parallel.output880 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_351 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output880_def]
  kernel_rfl

theorem input881_eq : InitECandidate.Proofs.DeadStages808.Parallel.input881 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_378 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input881_def]
  kernel_rfl

theorem output881_eq : InitECandidate.Proofs.DeadStages808.Parallel.output881 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_349 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output881_def]
  kernel_rfl

theorem input882_eq : InitECandidate.Proofs.DeadStages808.Parallel.input882 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_376 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input882_def]
  kernel_rfl

theorem output882_eq : InitECandidate.Proofs.DeadStages808.Parallel.output882 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_347 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output882_def]
  kernel_rfl

theorem input883_eq : InitECandidate.Proofs.DeadStages808.Parallel.input883 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input883_def]
  kernel_rfl

theorem output883_eq : InitECandidate.Proofs.DeadStages808.Parallel.output883 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output883_def]
  kernel_rfl

theorem input884_eq : InitECandidate.Proofs.DeadStages808.Parallel.input884 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_371 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input884_def]
  kernel_rfl

theorem output884_eq : InitECandidate.Proofs.DeadStages808.Parallel.output884 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_342 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output884_def]
  kernel_rfl

theorem input885_eq : InitECandidate.Proofs.DeadStages808.Parallel.input885 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_329 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input885_def]
  kernel_rfl

theorem output885_eq : InitECandidate.Proofs.DeadStages808.Parallel.output885 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_309 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output885_def]
  kernel_rfl

theorem input886_eq : InitECandidate.Proofs.DeadStages808.Parallel.input886 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_372 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input886_def]
  simp only [input885_eq, input884_eq]
  kernel_rfl

theorem output886_eq : InitECandidate.Proofs.DeadStages808.Parallel.output886 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_343 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output886_def]
  simp only [output885_eq, output884_eq]
  kernel_rfl

theorem input887_eq : InitECandidate.Proofs.DeadStages808.Parallel.input887 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_328 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input887_def]
  kernel_rfl

theorem output887_eq : InitECandidate.Proofs.DeadStages808.Parallel.output887 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_308 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output887_def]
  kernel_rfl

theorem input888_eq : InitECandidate.Proofs.DeadStages808.Parallel.input888 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_373 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input888_def]
  simp only [input887_eq, input886_eq]
  kernel_rfl

theorem output888_eq : InitECandidate.Proofs.DeadStages808.Parallel.output888 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_344 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output888_def]
  simp only [output887_eq, output886_eq]
  kernel_rfl

theorem input889_eq : InitECandidate.Proofs.DeadStages808.Parallel.input889 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_326 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input889_def]
  kernel_rfl

theorem output889_eq : InitECandidate.Proofs.DeadStages808.Parallel.output889 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_306 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output889_def]
  kernel_rfl

theorem input890_eq : InitECandidate.Proofs.DeadStages808.Parallel.input890 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_324 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input890_def]
  kernel_rfl

theorem output890_eq : InitECandidate.Proofs.DeadStages808.Parallel.output890 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_304 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output890_def]
  kernel_rfl

theorem input891_eq : InitECandidate.Proofs.DeadStages808.Parallel.input891 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_322 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input891_def]
  kernel_rfl

theorem output891_eq : InitECandidate.Proofs.DeadStages808.Parallel.output891 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_302 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output891_def]
  kernel_rfl

theorem input892_eq : InitECandidate.Proofs.DeadStages808.Parallel.input892 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_320 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input892_def]
  kernel_rfl

theorem output892_eq : InitECandidate.Proofs.DeadStages808.Parallel.output892 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_300 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output892_def]
  kernel_rfl

theorem input893_eq : InitECandidate.Proofs.DeadStages808.Parallel.input893 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_318 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input893_def]
  kernel_rfl

theorem output893_eq : InitECandidate.Proofs.DeadStages808.Parallel.output893 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_298 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output893_def]
  kernel_rfl

theorem input894_eq : InitECandidate.Proofs.DeadStages808.Parallel.input894 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_316 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input894_def]
  kernel_rfl

theorem output894_eq : InitECandidate.Proofs.DeadStages808.Parallel.output894 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_296 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output894_def]
  kernel_rfl

theorem input895_eq : InitECandidate.Proofs.DeadStages808.Parallel.input895 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input895_def]
  kernel_rfl

theorem output895_eq : InitECandidate.Proofs.DeadStages808.Parallel.output895 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output895_def]
  kernel_rfl

theorem input896_eq : InitECandidate.Proofs.DeadStages808.Parallel.input896 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_311 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input896_def]
  kernel_rfl

theorem output896_eq : InitECandidate.Proofs.DeadStages808.Parallel.output896 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_291 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output896_def]
  kernel_rfl

theorem input897_eq : InitECandidate.Proofs.DeadStages808.Parallel.input897 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_269 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input897_def]
  kernel_rfl

theorem output897_eq : InitECandidate.Proofs.DeadStages808.Parallel.output897 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_258 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output897_def]
  kernel_rfl

theorem input898_eq : InitECandidate.Proofs.DeadStages808.Parallel.input898 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_312 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input898_def]
  simp only [input897_eq, input896_eq]
  kernel_rfl

theorem output898_eq : InitECandidate.Proofs.DeadStages808.Parallel.output898 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_292 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output898_def]
  simp only [output897_eq, output896_eq]
  kernel_rfl

theorem input899_eq : InitECandidate.Proofs.DeadStages808.Parallel.input899 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_268 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input899_def]
  kernel_rfl

theorem output899_eq : InitECandidate.Proofs.DeadStages808.Parallel.output899 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_257 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output899_def]
  kernel_rfl

theorem input900_eq : InitECandidate.Proofs.DeadStages808.Parallel.input900 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_313 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input900_def]
  simp only [input899_eq, input898_eq]
  kernel_rfl

theorem output900_eq : InitECandidate.Proofs.DeadStages808.Parallel.output900 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_293 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output900_def]
  simp only [output899_eq, output898_eq]
  kernel_rfl

theorem input901_eq : InitECandidate.Proofs.DeadStages808.Parallel.input901 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_266 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input901_def]
  kernel_rfl

theorem output901_eq : InitECandidate.Proofs.DeadStages808.Parallel.output901 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_255 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output901_def]
  kernel_rfl

theorem input902_eq : InitECandidate.Proofs.DeadStages808.Parallel.input902 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_264 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input902_def]
  kernel_rfl

theorem output902_eq : InitECandidate.Proofs.DeadStages808.Parallel.output902 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_253 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output902_def]
  kernel_rfl

theorem input903_eq : InitECandidate.Proofs.DeadStages808.Parallel.input903 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_262 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input903_def]
  kernel_rfl

theorem output903_eq : InitECandidate.Proofs.DeadStages808.Parallel.output903 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_251 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output903_def]
  kernel_rfl

theorem input904_eq : InitECandidate.Proofs.DeadStages808.Parallel.input904 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_260 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input904_def]
  kernel_rfl

theorem output904_eq : InitECandidate.Proofs.DeadStages808.Parallel.output904 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_249 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output904_def]
  kernel_rfl

theorem input905_eq : InitECandidate.Proofs.DeadStages808.Parallel.input905 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_258 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input905_def]
  kernel_rfl

theorem output905_eq : InitECandidate.Proofs.DeadStages808.Parallel.output905 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_247 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output905_def]
  kernel_rfl

theorem input906_eq : InitECandidate.Proofs.DeadStages808.Parallel.input906 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_256 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input906_def]
  kernel_rfl

theorem output906_eq : InitECandidate.Proofs.DeadStages808.Parallel.output906 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_245 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output906_def]
  kernel_rfl

theorem input907_eq : InitECandidate.Proofs.DeadStages808.Parallel.input907 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_254 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input907_def]
  kernel_rfl

theorem output907_eq : InitECandidate.Proofs.DeadStages808.Parallel.output907 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_243 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output907_def]
  kernel_rfl

theorem input908_eq : InitECandidate.Proofs.DeadStages808.Parallel.input908 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_252 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input908_def]
  kernel_rfl

theorem output908_eq : InitECandidate.Proofs.DeadStages808.Parallel.output908 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_241 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output908_def]
  kernel_rfl

theorem input909_eq : InitECandidate.Proofs.DeadStages808.Parallel.input909 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_250 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input909_def]
  kernel_rfl

theorem output909_eq : InitECandidate.Proofs.DeadStages808.Parallel.output909 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_239 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output909_def]
  kernel_rfl

theorem input910_eq : InitECandidate.Proofs.DeadStages808.Parallel.input910 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_248 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input910_def]
  kernel_rfl

theorem output910_eq : InitECandidate.Proofs.DeadStages808.Parallel.output910 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_237 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output910_def]
  kernel_rfl

theorem input911_eq : InitECandidate.Proofs.DeadStages808.Parallel.input911 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_246 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input911_def]
  kernel_rfl

theorem output911_eq : InitECandidate.Proofs.DeadStages808.Parallel.output911 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_235 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output911_def]
  kernel_rfl

theorem input912_eq : InitECandidate.Proofs.DeadStages808.Parallel.input912 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_244 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input912_def]
  kernel_rfl

theorem output912_eq : InitECandidate.Proofs.DeadStages808.Parallel.output912 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_233 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output912_def]
  kernel_rfl

theorem input913_eq : InitECandidate.Proofs.DeadStages808.Parallel.input913 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_242 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input913_def]
  kernel_rfl

theorem output913_eq : InitECandidate.Proofs.DeadStages808.Parallel.output913 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_231 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output913_def]
  kernel_rfl

theorem input914_eq : InitECandidate.Proofs.DeadStages808.Parallel.input914 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_238 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input914_def]
  kernel_rfl

theorem output914_eq : InitECandidate.Proofs.DeadStages808.Parallel.output914 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_227 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output914_def]
  kernel_rfl

theorem input915_eq : InitECandidate.Proofs.DeadStages808.Parallel.input915 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_193 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input915_def]
  kernel_rfl

theorem output915_eq : InitECandidate.Proofs.DeadStages808.Parallel.output915 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_193 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output915_def]
  kernel_rfl

theorem input916_eq : InitECandidate.Proofs.DeadStages808.Parallel.input916 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_239 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input916_def]
  simp only [input915_eq, input914_eq]
  kernel_rfl

theorem output916_eq : InitECandidate.Proofs.DeadStages808.Parallel.output916 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_228 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output916_def]
  simp only [output915_eq, output914_eq]
  kernel_rfl

theorem input917_eq : InitECandidate.Proofs.DeadStages808.Parallel.input917 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_192 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input917_def]
  kernel_rfl

theorem output917_eq : InitECandidate.Proofs.DeadStages808.Parallel.output917 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_192 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output917_def]
  kernel_rfl

theorem input918_eq : InitECandidate.Proofs.DeadStages808.Parallel.input918 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_240 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input918_def]
  simp only [input917_eq, input916_eq]
  kernel_rfl

theorem output918_eq : InitECandidate.Proofs.DeadStages808.Parallel.output918 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_229 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output918_def]
  simp only [output917_eq, output916_eq]
  kernel_rfl

theorem input919_eq : InitECandidate.Proofs.DeadStages808.Parallel.input919 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_190 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input919_def]
  kernel_rfl

theorem output919_eq : InitECandidate.Proofs.DeadStages808.Parallel.output919 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_190 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output919_def]
  kernel_rfl

theorem input920_eq : InitECandidate.Proofs.DeadStages808.Parallel.input920 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_188 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input920_def]
  kernel_rfl

theorem output920_eq : InitECandidate.Proofs.DeadStages808.Parallel.output920 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_188 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output920_def]
  kernel_rfl

theorem input921_eq : InitECandidate.Proofs.DeadStages808.Parallel.input921 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_186 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input921_def]
  kernel_rfl

theorem output921_eq : InitECandidate.Proofs.DeadStages808.Parallel.output921 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_186 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output921_def]
  kernel_rfl

theorem input922_eq : InitECandidate.Proofs.DeadStages808.Parallel.input922 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_184 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input922_def]
  kernel_rfl

theorem output922_eq : InitECandidate.Proofs.DeadStages808.Parallel.output922 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_184 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output922_def]
  kernel_rfl

theorem input923_eq : InitECandidate.Proofs.DeadStages808.Parallel.input923 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_182 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input923_def]
  kernel_rfl

theorem output923_eq : InitECandidate.Proofs.DeadStages808.Parallel.output923 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_182 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output923_def]
  kernel_rfl

theorem input924_eq : InitECandidate.Proofs.DeadStages808.Parallel.input924 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_180 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input924_def]
  kernel_rfl

theorem output924_eq : InitECandidate.Proofs.DeadStages808.Parallel.output924 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_180 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output924_def]
  kernel_rfl

theorem input925_eq : InitECandidate.Proofs.DeadStages808.Parallel.input925 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_177 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input925_def]
  kernel_rfl

theorem output925_eq : InitECandidate.Proofs.DeadStages808.Parallel.output925 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_177 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output925_def]
  kernel_rfl

theorem input926_eq : InitECandidate.Proofs.DeadStages808.Parallel.input926 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_175 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input926_def]
  kernel_rfl

theorem output926_eq : InitECandidate.Proofs.DeadStages808.Parallel.output926 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_175 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output926_def]
  kernel_rfl

theorem input927_eq : InitECandidate.Proofs.DeadStages808.Parallel.input927 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_173 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input927_def]
  kernel_rfl

theorem output927_eq : InitECandidate.Proofs.DeadStages808.Parallel.output927 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_173 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output927_def]
  kernel_rfl

theorem input928_eq : InitECandidate.Proofs.DeadStages808.Parallel.input928 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_171 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input928_def]
  kernel_rfl

theorem output928_eq : InitECandidate.Proofs.DeadStages808.Parallel.output928 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_171 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output928_def]
  kernel_rfl

theorem input929_eq : InitECandidate.Proofs.DeadStages808.Parallel.input929 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_170 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input929_def]
  kernel_rfl

theorem output929_eq : InitECandidate.Proofs.DeadStages808.Parallel.output929 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_170 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output929_def]
  kernel_rfl

theorem input930_eq : InitECandidate.Proofs.DeadStages808.Parallel.input930 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_172 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input930_def]
  simp only [input929_eq, input928_eq]
  kernel_rfl

theorem output930_eq : InitECandidate.Proofs.DeadStages808.Parallel.output930 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_172 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output930_def]
  simp only [output929_eq, output928_eq]
  kernel_rfl

theorem input931_eq : InitECandidate.Proofs.DeadStages808.Parallel.input931 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_174 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input931_def]
  simp only [input930_eq, input927_eq]
  kernel_rfl

theorem output931_eq : InitECandidate.Proofs.DeadStages808.Parallel.output931 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_174 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output931_def]
  simp only [output930_eq, output927_eq]
  kernel_rfl

theorem input932_eq : InitECandidate.Proofs.DeadStages808.Parallel.input932 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_176 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input932_def]
  simp only [input931_eq, input926_eq]
  kernel_rfl

theorem output932_eq : InitECandidate.Proofs.DeadStages808.Parallel.output932 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_176 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output932_def]
  simp only [output931_eq, output926_eq]
  kernel_rfl

theorem input933_eq : InitECandidate.Proofs.DeadStages808.Parallel.input933 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_178 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input933_def]
  simp only [input932_eq, input925_eq]
  kernel_rfl

theorem output933_eq : InitECandidate.Proofs.DeadStages808.Parallel.output933 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_178 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output933_def]
  simp only [output932_eq, output925_eq]
  kernel_rfl

theorem input934_eq : InitECandidate.Proofs.DeadStages808.Parallel.input934 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_167 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input934_def]
  kernel_rfl

theorem output934_eq : InitECandidate.Proofs.DeadStages808.Parallel.output934 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_167 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output934_def]
  kernel_rfl

theorem input935_eq : InitECandidate.Proofs.DeadStages808.Parallel.input935 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_165 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input935_def]
  kernel_rfl

theorem output935_eq : InitECandidate.Proofs.DeadStages808.Parallel.output935 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_165 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output935_def]
  kernel_rfl

theorem input936_eq : InitECandidate.Proofs.DeadStages808.Parallel.input936 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_163 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input936_def]
  kernel_rfl

theorem output936_eq : InitECandidate.Proofs.DeadStages808.Parallel.output936 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_163 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output936_def]
  kernel_rfl

theorem input937_eq : InitECandidate.Proofs.DeadStages808.Parallel.input937 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_161 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input937_def]
  kernel_rfl

theorem output937_eq : InitECandidate.Proofs.DeadStages808.Parallel.output937 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_161 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output937_def]
  kernel_rfl

theorem input938_eq : InitECandidate.Proofs.DeadStages808.Parallel.input938 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_160 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input938_def]
  kernel_rfl

theorem output938_eq : InitECandidate.Proofs.DeadStages808.Parallel.output938 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_160 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output938_def]
  kernel_rfl

theorem input939_eq : InitECandidate.Proofs.DeadStages808.Parallel.input939 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_162 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input939_def]
  simp only [input938_eq, input937_eq]
  kernel_rfl

theorem output939_eq : InitECandidate.Proofs.DeadStages808.Parallel.output939 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_162 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output939_def]
  simp only [output938_eq, output937_eq]
  kernel_rfl

theorem input940_eq : InitECandidate.Proofs.DeadStages808.Parallel.input940 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_164 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input940_def]
  simp only [input939_eq, input936_eq]
  kernel_rfl

theorem output940_eq : InitECandidate.Proofs.DeadStages808.Parallel.output940 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_164 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output940_def]
  simp only [output939_eq, output936_eq]
  kernel_rfl

theorem input941_eq : InitECandidate.Proofs.DeadStages808.Parallel.input941 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_166 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input941_def]
  simp only [input940_eq, input935_eq]
  kernel_rfl

theorem output941_eq : InitECandidate.Proofs.DeadStages808.Parallel.output941 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_166 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output941_def]
  simp only [output940_eq, output935_eq]
  kernel_rfl

theorem input942_eq : InitECandidate.Proofs.DeadStages808.Parallel.input942 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_168 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input942_def]
  simp only [input941_eq, input934_eq]
  kernel_rfl

theorem output942_eq : InitECandidate.Proofs.DeadStages808.Parallel.output942 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_168 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output942_def]
  simp only [output941_eq, output934_eq]
  kernel_rfl

theorem input943_eq : InitECandidate.Proofs.DeadStages808.Parallel.input943 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_157 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input943_def]
  kernel_rfl

theorem output943_eq : InitECandidate.Proofs.DeadStages808.Parallel.output943 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_157 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output943_def]
  kernel_rfl

theorem input944_eq : InitECandidate.Proofs.DeadStages808.Parallel.input944 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_155 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input944_def]
  kernel_rfl

theorem output944_eq : InitECandidate.Proofs.DeadStages808.Parallel.output944 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_155 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output944_def]
  kernel_rfl

theorem input945_eq : InitECandidate.Proofs.DeadStages808.Parallel.input945 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_153 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input945_def]
  kernel_rfl

theorem output945_eq : InitECandidate.Proofs.DeadStages808.Parallel.output945 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_153 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output945_def]
  kernel_rfl

theorem input946_eq : InitECandidate.Proofs.DeadStages808.Parallel.input946 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_151 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input946_def]
  kernel_rfl

theorem output946_eq : InitECandidate.Proofs.DeadStages808.Parallel.output946 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_151 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output946_def]
  kernel_rfl

theorem input947_eq : InitECandidate.Proofs.DeadStages808.Parallel.input947 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_150 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input947_def]
  kernel_rfl

theorem output947_eq : InitECandidate.Proofs.DeadStages808.Parallel.output947 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_150 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output947_def]
  kernel_rfl

theorem input948_eq : InitECandidate.Proofs.DeadStages808.Parallel.input948 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_152 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input948_def]
  simp only [input947_eq, input946_eq]
  kernel_rfl

theorem output948_eq : InitECandidate.Proofs.DeadStages808.Parallel.output948 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_152 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output948_def]
  simp only [output947_eq, output946_eq]
  kernel_rfl

theorem input949_eq : InitECandidate.Proofs.DeadStages808.Parallel.input949 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_154 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input949_def]
  simp only [input948_eq, input945_eq]
  kernel_rfl

theorem output949_eq : InitECandidate.Proofs.DeadStages808.Parallel.output949 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_154 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output949_def]
  simp only [output948_eq, output945_eq]
  kernel_rfl

theorem input950_eq : InitECandidate.Proofs.DeadStages808.Parallel.input950 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_156 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input950_def]
  simp only [input949_eq, input944_eq]
  kernel_rfl

theorem output950_eq : InitECandidate.Proofs.DeadStages808.Parallel.output950 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_156 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output950_def]
  simp only [output949_eq, output944_eq]
  kernel_rfl

theorem input951_eq : InitECandidate.Proofs.DeadStages808.Parallel.input951 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_158 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input951_def]
  simp only [input950_eq, input943_eq]
  kernel_rfl

theorem output951_eq : InitECandidate.Proofs.DeadStages808.Parallel.output951 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_158 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output951_def]
  simp only [output950_eq, output943_eq]
  kernel_rfl

theorem input952_eq : InitECandidate.Proofs.DeadStages808.Parallel.input952 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_147 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input952_def]
  kernel_rfl

theorem output952_eq : InitECandidate.Proofs.DeadStages808.Parallel.output952 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_147 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output952_def]
  kernel_rfl

theorem input953_eq : InitECandidate.Proofs.DeadStages808.Parallel.input953 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_145 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input953_def]
  kernel_rfl

theorem output953_eq : InitECandidate.Proofs.DeadStages808.Parallel.output953 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_145 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output953_def]
  kernel_rfl

theorem input954_eq : InitECandidate.Proofs.DeadStages808.Parallel.input954 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_143 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input954_def]
  kernel_rfl

theorem output954_eq : InitECandidate.Proofs.DeadStages808.Parallel.output954 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_143 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output954_def]
  kernel_rfl

theorem input955_eq : InitECandidate.Proofs.DeadStages808.Parallel.input955 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_141 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input955_def]
  kernel_rfl

theorem output955_eq : InitECandidate.Proofs.DeadStages808.Parallel.output955 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_141 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output955_def]
  kernel_rfl

theorem input956_eq : InitECandidate.Proofs.DeadStages808.Parallel.input956 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_140 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input956_def]
  kernel_rfl

theorem output956_eq : InitECandidate.Proofs.DeadStages808.Parallel.output956 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_140 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output956_def]
  kernel_rfl

theorem input957_eq : InitECandidate.Proofs.DeadStages808.Parallel.input957 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_142 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input957_def]
  simp only [input956_eq, input955_eq]
  kernel_rfl

theorem output957_eq : InitECandidate.Proofs.DeadStages808.Parallel.output957 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_142 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output957_def]
  simp only [output956_eq, output955_eq]
  kernel_rfl

theorem input958_eq : InitECandidate.Proofs.DeadStages808.Parallel.input958 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_144 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input958_def]
  simp only [input957_eq, input954_eq]
  kernel_rfl

theorem output958_eq : InitECandidate.Proofs.DeadStages808.Parallel.output958 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_144 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output958_def]
  simp only [output957_eq, output954_eq]
  kernel_rfl

theorem input959_eq : InitECandidate.Proofs.DeadStages808.Parallel.input959 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_146 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input959_def]
  simp only [input958_eq, input953_eq]
  kernel_rfl

theorem output959_eq : InitECandidate.Proofs.DeadStages808.Parallel.output959 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_146 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output959_def]
  simp only [output958_eq, output953_eq]
  kernel_rfl

theorem input960_eq : InitECandidate.Proofs.DeadStages808.Parallel.input960 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_148 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input960_def]
  simp only [input959_eq, input952_eq]
  kernel_rfl

theorem output960_eq : InitECandidate.Proofs.DeadStages808.Parallel.output960 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_148 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output960_def]
  simp only [output959_eq, output952_eq]
  kernel_rfl

theorem input961_eq : InitECandidate.Proofs.DeadStages808.Parallel.input961 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_137 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input961_def]
  kernel_rfl

theorem output961_eq : InitECandidate.Proofs.DeadStages808.Parallel.output961 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_137 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output961_def]
  kernel_rfl

theorem input962_eq : InitECandidate.Proofs.DeadStages808.Parallel.input962 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_135 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input962_def]
  kernel_rfl

theorem output962_eq : InitECandidate.Proofs.DeadStages808.Parallel.output962 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_135 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output962_def]
  kernel_rfl

theorem input963_eq : InitECandidate.Proofs.DeadStages808.Parallel.input963 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_133 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input963_def]
  kernel_rfl

theorem output963_eq : InitECandidate.Proofs.DeadStages808.Parallel.output963 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_133 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output963_def]
  kernel_rfl

theorem input964_eq : InitECandidate.Proofs.DeadStages808.Parallel.input964 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_131 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input964_def]
  kernel_rfl

theorem output964_eq : InitECandidate.Proofs.DeadStages808.Parallel.output964 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_131 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output964_def]
  kernel_rfl

theorem input965_eq : InitECandidate.Proofs.DeadStages808.Parallel.input965 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_130 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input965_def]
  kernel_rfl

theorem output965_eq : InitECandidate.Proofs.DeadStages808.Parallel.output965 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_130 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output965_def]
  kernel_rfl

theorem input966_eq : InitECandidate.Proofs.DeadStages808.Parallel.input966 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_132 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input966_def]
  simp only [input965_eq, input964_eq]
  kernel_rfl

theorem output966_eq : InitECandidate.Proofs.DeadStages808.Parallel.output966 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_132 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output966_def]
  simp only [output965_eq, output964_eq]
  kernel_rfl

theorem input967_eq : InitECandidate.Proofs.DeadStages808.Parallel.input967 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_134 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input967_def]
  simp only [input966_eq, input963_eq]
  kernel_rfl

theorem output967_eq : InitECandidate.Proofs.DeadStages808.Parallel.output967 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_134 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output967_def]
  simp only [output966_eq, output963_eq]
  kernel_rfl

theorem input968_eq : InitECandidate.Proofs.DeadStages808.Parallel.input968 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_136 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input968_def]
  simp only [input967_eq, input962_eq]
  kernel_rfl

theorem output968_eq : InitECandidate.Proofs.DeadStages808.Parallel.output968 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_136 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output968_def]
  simp only [output967_eq, output962_eq]
  kernel_rfl

theorem input969_eq : InitECandidate.Proofs.DeadStages808.Parallel.input969 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_138 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input969_def]
  simp only [input968_eq, input961_eq]
  kernel_rfl

theorem output969_eq : InitECandidate.Proofs.DeadStages808.Parallel.output969 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_138 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output969_def]
  simp only [output968_eq, output961_eq]
  kernel_rfl

theorem input970_eq : InitECandidate.Proofs.DeadStages808.Parallel.input970 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_127 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input970_def]
  kernel_rfl

theorem output970_eq : InitECandidate.Proofs.DeadStages808.Parallel.output970 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_127 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output970_def]
  kernel_rfl

theorem input971_eq : InitECandidate.Proofs.DeadStages808.Parallel.input971 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_125 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input971_def]
  kernel_rfl

theorem output971_eq : InitECandidate.Proofs.DeadStages808.Parallel.output971 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_125 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output971_def]
  kernel_rfl

theorem input972_eq : InitECandidate.Proofs.DeadStages808.Parallel.input972 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_123 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input972_def]
  kernel_rfl

theorem output972_eq : InitECandidate.Proofs.DeadStages808.Parallel.output972 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_123 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output972_def]
  kernel_rfl

theorem input973_eq : InitECandidate.Proofs.DeadStages808.Parallel.input973 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_121 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input973_def]
  kernel_rfl

theorem output973_eq : InitECandidate.Proofs.DeadStages808.Parallel.output973 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_121 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output973_def]
  kernel_rfl

theorem input974_eq : InitECandidate.Proofs.DeadStages808.Parallel.input974 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_120 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input974_def]
  kernel_rfl

theorem output974_eq : InitECandidate.Proofs.DeadStages808.Parallel.output974 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_120 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output974_def]
  kernel_rfl

theorem input975_eq : InitECandidate.Proofs.DeadStages808.Parallel.input975 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_122 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input975_def]
  simp only [input974_eq, input973_eq]
  kernel_rfl

theorem output975_eq : InitECandidate.Proofs.DeadStages808.Parallel.output975 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_122 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output975_def]
  simp only [output974_eq, output973_eq]
  kernel_rfl

theorem input976_eq : InitECandidate.Proofs.DeadStages808.Parallel.input976 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_124 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input976_def]
  simp only [input975_eq, input972_eq]
  kernel_rfl

theorem output976_eq : InitECandidate.Proofs.DeadStages808.Parallel.output976 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_124 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output976_def]
  simp only [output975_eq, output972_eq]
  kernel_rfl

theorem input977_eq : InitECandidate.Proofs.DeadStages808.Parallel.input977 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_126 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input977_def]
  simp only [input976_eq, input971_eq]
  kernel_rfl

theorem output977_eq : InitECandidate.Proofs.DeadStages808.Parallel.output977 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_126 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output977_def]
  simp only [output976_eq, output971_eq]
  kernel_rfl

theorem input978_eq : InitECandidate.Proofs.DeadStages808.Parallel.input978 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_128 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input978_def]
  simp only [input977_eq, input970_eq]
  kernel_rfl

theorem output978_eq : InitECandidate.Proofs.DeadStages808.Parallel.output978 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_128 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output978_def]
  simp only [output977_eq, output970_eq]
  kernel_rfl

theorem input979_eq : InitECandidate.Proofs.DeadStages808.Parallel.input979 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_117 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input979_def]
  kernel_rfl

theorem output979_eq : InitECandidate.Proofs.DeadStages808.Parallel.output979 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_117 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output979_def]
  kernel_rfl

theorem input980_eq : InitECandidate.Proofs.DeadStages808.Parallel.input980 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_115 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input980_def]
  kernel_rfl

theorem output980_eq : InitECandidate.Proofs.DeadStages808.Parallel.output980 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_115 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output980_def]
  kernel_rfl

theorem input981_eq : InitECandidate.Proofs.DeadStages808.Parallel.input981 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_113 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input981_def]
  kernel_rfl

theorem output981_eq : InitECandidate.Proofs.DeadStages808.Parallel.output981 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_113 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output981_def]
  kernel_rfl

theorem input982_eq : InitECandidate.Proofs.DeadStages808.Parallel.input982 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_111 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input982_def]
  kernel_rfl

theorem output982_eq : InitECandidate.Proofs.DeadStages808.Parallel.output982 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_111 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output982_def]
  kernel_rfl

theorem input983_eq : InitECandidate.Proofs.DeadStages808.Parallel.input983 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_110 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input983_def]
  kernel_rfl

theorem output983_eq : InitECandidate.Proofs.DeadStages808.Parallel.output983 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_110 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output983_def]
  kernel_rfl

theorem input984_eq : InitECandidate.Proofs.DeadStages808.Parallel.input984 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_112 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input984_def]
  simp only [input983_eq, input982_eq]
  kernel_rfl

theorem output984_eq : InitECandidate.Proofs.DeadStages808.Parallel.output984 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_112 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output984_def]
  simp only [output983_eq, output982_eq]
  kernel_rfl

theorem input985_eq : InitECandidate.Proofs.DeadStages808.Parallel.input985 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_114 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input985_def]
  simp only [input984_eq, input981_eq]
  kernel_rfl

theorem output985_eq : InitECandidate.Proofs.DeadStages808.Parallel.output985 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_114 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output985_def]
  simp only [output984_eq, output981_eq]
  kernel_rfl

theorem input986_eq : InitECandidate.Proofs.DeadStages808.Parallel.input986 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_116 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input986_def]
  simp only [input985_eq, input980_eq]
  kernel_rfl

theorem output986_eq : InitECandidate.Proofs.DeadStages808.Parallel.output986 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_116 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output986_def]
  simp only [output985_eq, output980_eq]
  kernel_rfl

theorem input987_eq : InitECandidate.Proofs.DeadStages808.Parallel.input987 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_118 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input987_def]
  simp only [input986_eq, input979_eq]
  kernel_rfl

theorem output987_eq : InitECandidate.Proofs.DeadStages808.Parallel.output987 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_118 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output987_def]
  simp only [output986_eq, output979_eq]
  kernel_rfl

theorem input988_eq : InitECandidate.Proofs.DeadStages808.Parallel.input988 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_107 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input988_def]
  kernel_rfl

theorem output988_eq : InitECandidate.Proofs.DeadStages808.Parallel.output988 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_107 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output988_def]
  kernel_rfl

theorem input989_eq : InitECandidate.Proofs.DeadStages808.Parallel.input989 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_105 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input989_def]
  kernel_rfl

theorem output989_eq : InitECandidate.Proofs.DeadStages808.Parallel.output989 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_105 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output989_def]
  kernel_rfl

theorem input990_eq : InitECandidate.Proofs.DeadStages808.Parallel.input990 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_103 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input990_def]
  kernel_rfl

theorem output990_eq : InitECandidate.Proofs.DeadStages808.Parallel.output990 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_103 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output990_def]
  kernel_rfl

theorem input991_eq : InitECandidate.Proofs.DeadStages808.Parallel.input991 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_101 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input991_def]
  kernel_rfl

theorem output991_eq : InitECandidate.Proofs.DeadStages808.Parallel.output991 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_101 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output991_def]
  kernel_rfl

theorem input992_eq : InitECandidate.Proofs.DeadStages808.Parallel.input992 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_100 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input992_def]
  kernel_rfl

theorem output992_eq : InitECandidate.Proofs.DeadStages808.Parallel.output992 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_100 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output992_def]
  kernel_rfl

theorem input993_eq : InitECandidate.Proofs.DeadStages808.Parallel.input993 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_102 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input993_def]
  simp only [input992_eq, input991_eq]
  kernel_rfl

theorem output993_eq : InitECandidate.Proofs.DeadStages808.Parallel.output993 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_102 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output993_def]
  simp only [output992_eq, output991_eq]
  kernel_rfl

theorem input994_eq : InitECandidate.Proofs.DeadStages808.Parallel.input994 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_104 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input994_def]
  simp only [input993_eq, input990_eq]
  kernel_rfl

theorem output994_eq : InitECandidate.Proofs.DeadStages808.Parallel.output994 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_104 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output994_def]
  simp only [output993_eq, output990_eq]
  kernel_rfl

theorem input995_eq : InitECandidate.Proofs.DeadStages808.Parallel.input995 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_106 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input995_def]
  simp only [input994_eq, input989_eq]
  kernel_rfl

theorem output995_eq : InitECandidate.Proofs.DeadStages808.Parallel.output995 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_106 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output995_def]
  simp only [output994_eq, output989_eq]
  kernel_rfl

theorem input996_eq : InitECandidate.Proofs.DeadStages808.Parallel.input996 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_108 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input996_def]
  simp only [input995_eq, input988_eq]
  kernel_rfl

theorem output996_eq : InitECandidate.Proofs.DeadStages808.Parallel.output996 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_108 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output996_def]
  simp only [output995_eq, output988_eq]
  kernel_rfl

theorem input997_eq : InitECandidate.Proofs.DeadStages808.Parallel.input997 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_97 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input997_def]
  kernel_rfl

theorem output997_eq : InitECandidate.Proofs.DeadStages808.Parallel.output997 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_97 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output997_def]
  kernel_rfl

theorem input998_eq : InitECandidate.Proofs.DeadStages808.Parallel.input998 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_95 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input998_def]
  kernel_rfl

theorem output998_eq : InitECandidate.Proofs.DeadStages808.Parallel.output998 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_95 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output998_def]
  kernel_rfl

theorem input999_eq : InitECandidate.Proofs.DeadStages808.Parallel.input999 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_93 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input999_def]
  kernel_rfl

theorem output999_eq : InitECandidate.Proofs.DeadStages808.Parallel.output999 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_93 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output999_def]
  kernel_rfl

theorem input1000_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1000 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_91 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1000_def]
  kernel_rfl

theorem output1000_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1000 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_91 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1000_def]
  kernel_rfl

theorem input1001_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1001 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_90 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1001_def]
  kernel_rfl

theorem output1001_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1001 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_90 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1001_def]
  kernel_rfl

theorem input1002_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1002 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_92 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1002_def]
  simp only [input1001_eq, input1000_eq]
  kernel_rfl

theorem output1002_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1002 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_92 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1002_def]
  simp only [output1001_eq, output1000_eq]
  kernel_rfl

theorem input1003_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1003 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_94 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1003_def]
  simp only [input1002_eq, input999_eq]
  kernel_rfl

theorem output1003_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1003 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_94 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1003_def]
  simp only [output1002_eq, output999_eq]
  kernel_rfl

theorem input1004_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1004 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_96 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1004_def]
  simp only [input1003_eq, input998_eq]
  kernel_rfl

theorem output1004_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1004 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_96 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1004_def]
  simp only [output1003_eq, output998_eq]
  kernel_rfl

theorem input1005_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1005 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_98 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1005_def]
  simp only [input1004_eq, input997_eq]
  kernel_rfl

theorem output1005_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1005 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_98 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1005_def]
  simp only [output1004_eq, output997_eq]
  kernel_rfl

theorem input1006_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1006 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_87 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1006_def]
  kernel_rfl

theorem output1006_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1006 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_87 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1006_def]
  kernel_rfl

theorem input1007_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1007 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_85 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1007_def]
  kernel_rfl

theorem output1007_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1007 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_85 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1007_def]
  kernel_rfl

theorem input1008_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1008 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_83 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1008_def]
  kernel_rfl

theorem output1008_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1008 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_83 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1008_def]
  kernel_rfl

theorem input1009_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1009 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_81 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1009_def]
  kernel_rfl

theorem output1009_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1009 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_81 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1009_def]
  kernel_rfl

theorem input1010_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1010 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_80 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1010_def]
  kernel_rfl

theorem output1010_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1010 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_80 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1010_def]
  kernel_rfl

theorem input1011_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1011 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_82 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1011_def]
  simp only [input1010_eq, input1009_eq]
  kernel_rfl

theorem output1011_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1011 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_82 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1011_def]
  simp only [output1010_eq, output1009_eq]
  kernel_rfl

theorem input1012_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1012 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_84 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1012_def]
  simp only [input1011_eq, input1008_eq]
  kernel_rfl

theorem output1012_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1012 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_84 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1012_def]
  simp only [output1011_eq, output1008_eq]
  kernel_rfl

theorem input1013_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1013 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_86 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1013_def]
  simp only [input1012_eq, input1007_eq]
  kernel_rfl

theorem output1013_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1013 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_86 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1013_def]
  simp only [output1012_eq, output1007_eq]
  kernel_rfl

theorem input1014_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1014 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_88 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1014_def]
  simp only [input1013_eq, input1006_eq]
  kernel_rfl

theorem output1014_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1014 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_88 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1014_def]
  simp only [output1013_eq, output1006_eq]
  kernel_rfl

theorem input1015_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1015 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_77 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1015_def]
  kernel_rfl

theorem output1015_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1015 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_77 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1015_def]
  kernel_rfl

theorem input1016_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1016 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_75 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1016_def]
  kernel_rfl

theorem output1016_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1016 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_75 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1016_def]
  kernel_rfl

theorem input1017_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1017 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_73 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1017_def]
  kernel_rfl

theorem output1017_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1017 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_73 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1017_def]
  kernel_rfl

theorem input1018_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1018 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_71 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1018_def]
  kernel_rfl

theorem output1018_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1018 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_71 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1018_def]
  kernel_rfl

theorem input1019_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1019 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_70 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1019_def]
  kernel_rfl

theorem output1019_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1019 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_70 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1019_def]
  kernel_rfl

theorem input1020_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1020 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_72 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1020_def]
  simp only [input1019_eq, input1018_eq]
  kernel_rfl

theorem output1020_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1020 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_72 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1020_def]
  simp only [output1019_eq, output1018_eq]
  kernel_rfl

theorem input1021_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1021 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_74 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1021_def]
  simp only [input1020_eq, input1017_eq]
  kernel_rfl

theorem output1021_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1021 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_74 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1021_def]
  simp only [output1020_eq, output1017_eq]
  kernel_rfl

theorem input1022_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1022 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_76 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1022_def]
  simp only [input1021_eq, input1016_eq]
  kernel_rfl

theorem output1022_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1022 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_76 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1022_def]
  simp only [output1021_eq, output1016_eq]
  kernel_rfl

theorem input1023_eq : InitECandidate.Proofs.DeadStages808.Parallel.input1023 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_2_78 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.input1023_def]
  simp only [input1022_eq, input1015_eq]
  kernel_rfl

theorem output1023_eq : InitECandidate.Proofs.DeadStages808.Parallel.output1023 =
    InitECandidate.Proofs.WordStages.Parallel808.word808_3_78 := by
  rw [InitECandidate.Proofs.DeadStages808.Parallel.output1023_def]
  simp only [output1022_eq, output1015_eq]
  kernel_rfl

#print axioms output1023_eq
end InitECandidate.Proofs.WordStages.Parallel808.AgreementsParallel
