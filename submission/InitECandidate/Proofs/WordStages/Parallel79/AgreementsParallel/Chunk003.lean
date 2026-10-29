import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel79.Data2
import InitECandidate.Proofs.WordStages.Parallel79.Data3
import InitECandidate.Proofs.DeadStages79.Parallel.Data.Chunk003
import InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel.Chunk002

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
theorem input768_eq : InitECandidate.Proofs.DeadStages79.Parallel.input768 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_963 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input768_def]
  kernel_rfl

theorem input769_eq : InitECandidate.Proofs.DeadStages79.Parallel.input769 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_964 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input769_def]
  simp only [input768_eq, input767_eq]
  kernel_rfl

theorem input770_eq : InitECandidate.Proofs.DeadStages79.Parallel.input770 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_839 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input770_def]
  kernel_rfl

theorem output770_eq : InitECandidate.Proofs.DeadStages79.Parallel.output770 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_493 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output770_def]
  kernel_rfl

theorem input771_eq : InitECandidate.Proofs.DeadStages79.Parallel.input771 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_960 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input771_def]
  kernel_rfl

theorem output771_eq : InitECandidate.Proofs.DeadStages79.Parallel.output771 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_568 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output771_def]
  kernel_rfl

theorem input772_eq : InitECandidate.Proofs.DeadStages79.Parallel.input772 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_961 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input772_def]
  simp only [input771_eq, input770_eq]
  kernel_rfl

theorem output772_eq : InitECandidate.Proofs.DeadStages79.Parallel.output772 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_569 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output772_def]
  simp only [output771_eq, output770_eq]
  kernel_rfl

theorem input773_eq : InitECandidate.Proofs.DeadStages79.Parallel.input773 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_958 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input773_def]
  kernel_rfl

theorem output773_eq : InitECandidate.Proofs.DeadStages79.Parallel.output773 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_566 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output773_def]
  kernel_rfl

theorem input774_eq : InitECandidate.Proofs.DeadStages79.Parallel.input774 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_956 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input774_def]
  kernel_rfl

theorem input775_eq : InitECandidate.Proofs.DeadStages79.Parallel.input775 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input775_def]
  kernel_rfl

theorem output775_eq : InitECandidate.Proofs.DeadStages79.Parallel.output775 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output775_def]
  kernel_rfl

theorem input776_eq : InitECandidate.Proofs.DeadStages79.Parallel.input776 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_954 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input776_def]
  kernel_rfl

theorem input777_eq : InitECandidate.Proofs.DeadStages79.Parallel.input777 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_955 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input777_def]
  simp only [input776_eq, input775_eq]
  kernel_rfl

theorem output777_eq : InitECandidate.Proofs.DeadStages79.Parallel.output777 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output777_def]
  simp only [output775_eq]

theorem input778_eq : InitECandidate.Proofs.DeadStages79.Parallel.input778 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_957 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input778_def]
  simp only [input777_eq, input774_eq]
  kernel_rfl

theorem output778_eq : InitECandidate.Proofs.DeadStages79.Parallel.output778 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output778_def]
  simp only [output777_eq]

theorem input779_eq : InitECandidate.Proofs.DeadStages79.Parallel.input779 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_959 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input779_def]
  simp only [input778_eq, input773_eq]
  kernel_rfl

theorem output779_eq : InitECandidate.Proofs.DeadStages79.Parallel.output779 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_567 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output779_def]
  simp only [output778_eq, output773_eq]
  kernel_rfl

theorem input780_eq : InitECandidate.Proofs.DeadStages79.Parallel.input780 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_962 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input780_def]
  simp only [input779_eq, input772_eq]
  kernel_rfl

theorem output780_eq : InitECandidate.Proofs.DeadStages79.Parallel.output780 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_570 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output780_def]
  simp only [output779_eq, output772_eq]
  kernel_rfl

theorem input781_eq : InitECandidate.Proofs.DeadStages79.Parallel.input781 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_965 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input781_def]
  simp only [input780_eq, input769_eq]
  kernel_rfl

theorem output781_eq : InitECandidate.Proofs.DeadStages79.Parallel.output781 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_570 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output781_def]
  simp only [output780_eq]

theorem input782_eq : InitECandidate.Proofs.DeadStages79.Parallel.input782 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input782_def]
  kernel_rfl

theorem output782_eq : InitECandidate.Proofs.DeadStages79.Parallel.output782 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output782_def]
  kernel_rfl

theorem input783_eq : InitECandidate.Proofs.DeadStages79.Parallel.input783 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_966 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input783_def]
  kernel_rfl

theorem input784_eq : InitECandidate.Proofs.DeadStages79.Parallel.input784 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_967 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input784_def]
  simp only [input783_eq, input782_eq]
  kernel_rfl

theorem output784_eq : InitECandidate.Proofs.DeadStages79.Parallel.output784 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output784_def]
  simp only [output782_eq]

theorem input785_eq : InitECandidate.Proofs.DeadStages79.Parallel.input785 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input785_def]
  kernel_rfl

theorem input786_eq : InitECandidate.Proofs.DeadStages79.Parallel.input786 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_968 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input786_def]
  simp only [input785_eq, input784_eq]
  kernel_rfl

theorem output786_eq : InitECandidate.Proofs.DeadStages79.Parallel.output786 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output786_def]
  simp only [output784_eq]

theorem input787_eq : InitECandidate.Proofs.DeadStages79.Parallel.input787 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_969 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input787_def]
  simp only [input781_eq, input786_eq]
  kernel_rfl

theorem output787_eq : InitECandidate.Proofs.DeadStages79.Parallel.output787 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_571 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output787_def]
  simp only [output781_eq, output786_eq]
  kernel_rfl

theorem input788_eq : InitECandidate.Proofs.DeadStages79.Parallel.input788 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_974 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input788_def]
  simp only [input787_eq, input766_eq]
  kernel_rfl

theorem output788_eq : InitECandidate.Proofs.DeadStages79.Parallel.output788 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_572 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output788_def]
  simp only [output787_eq, output766_eq]
  kernel_rfl

theorem input789_eq : InitECandidate.Proofs.DeadStages79.Parallel.input789 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_951 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input789_def]
  kernel_rfl

theorem output789_eq : InitECandidate.Proofs.DeadStages79.Parallel.output789 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_563 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output789_def]
  kernel_rfl

theorem input790_eq : InitECandidate.Proofs.DeadStages79.Parallel.input790 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_948 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input790_def]
  kernel_rfl

theorem output790_eq : InitECandidate.Proofs.DeadStages79.Parallel.output790 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_560 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output790_def]
  kernel_rfl

theorem input791_eq : InitECandidate.Proofs.DeadStages79.Parallel.input791 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_947 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input791_def]
  kernel_rfl

theorem output791_eq : InitECandidate.Proofs.DeadStages79.Parallel.output791 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_559 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output791_def]
  kernel_rfl

theorem input792_eq : InitECandidate.Proofs.DeadStages79.Parallel.input792 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_949 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input792_def]
  simp only [input791_eq, input790_eq]
  kernel_rfl

theorem output792_eq : InitECandidate.Proofs.DeadStages79.Parallel.output792 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_561 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output792_def]
  simp only [output791_eq, output790_eq]
  kernel_rfl

theorem input793_eq : InitECandidate.Proofs.DeadStages79.Parallel.input793 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_946 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input793_def]
  kernel_rfl

theorem output793_eq : InitECandidate.Proofs.DeadStages79.Parallel.output793 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_558 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output793_def]
  kernel_rfl

theorem input794_eq : InitECandidate.Proofs.DeadStages79.Parallel.input794 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_950 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input794_def]
  simp only [input793_eq, input792_eq]
  kernel_rfl

theorem output794_eq : InitECandidate.Proofs.DeadStages79.Parallel.output794 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_562 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output794_def]
  simp only [output793_eq, output792_eq]
  kernel_rfl

theorem input795_eq : InitECandidate.Proofs.DeadStages79.Parallel.input795 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_952 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input795_def]
  simp only [input794_eq, input789_eq]
  kernel_rfl

theorem output795_eq : InitECandidate.Proofs.DeadStages79.Parallel.output795 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_564 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output795_def]
  simp only [output794_eq, output789_eq]
  kernel_rfl

theorem input796_eq : InitECandidate.Proofs.DeadStages79.Parallel.input796 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_943 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input796_def]
  kernel_rfl

theorem output796_eq : InitECandidate.Proofs.DeadStages79.Parallel.output796 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_555 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output796_def]
  kernel_rfl

theorem input797_eq : InitECandidate.Proofs.DeadStages79.Parallel.input797 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_940 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input797_def]
  kernel_rfl

theorem output797_eq : InitECandidate.Proofs.DeadStages79.Parallel.output797 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_552 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output797_def]
  kernel_rfl

theorem input798_eq : InitECandidate.Proofs.DeadStages79.Parallel.input798 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_939 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input798_def]
  kernel_rfl

theorem output798_eq : InitECandidate.Proofs.DeadStages79.Parallel.output798 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_551 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output798_def]
  kernel_rfl

theorem input799_eq : InitECandidate.Proofs.DeadStages79.Parallel.input799 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_941 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input799_def]
  simp only [input798_eq, input797_eq]
  kernel_rfl

theorem output799_eq : InitECandidate.Proofs.DeadStages79.Parallel.output799 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_553 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output799_def]
  simp only [output798_eq, output797_eq]
  kernel_rfl

theorem input800_eq : InitECandidate.Proofs.DeadStages79.Parallel.input800 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_938 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input800_def]
  kernel_rfl

theorem output800_eq : InitECandidate.Proofs.DeadStages79.Parallel.output800 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_550 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output800_def]
  kernel_rfl

theorem input801_eq : InitECandidate.Proofs.DeadStages79.Parallel.input801 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_942 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input801_def]
  simp only [input800_eq, input799_eq]
  kernel_rfl

theorem output801_eq : InitECandidate.Proofs.DeadStages79.Parallel.output801 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_554 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output801_def]
  simp only [output800_eq, output799_eq]
  kernel_rfl

theorem input802_eq : InitECandidate.Proofs.DeadStages79.Parallel.input802 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_944 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input802_def]
  simp only [input801_eq, input796_eq]
  kernel_rfl

theorem output802_eq : InitECandidate.Proofs.DeadStages79.Parallel.output802 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_556 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output802_def]
  simp only [output801_eq, output796_eq]
  kernel_rfl

theorem input803_eq : InitECandidate.Proofs.DeadStages79.Parallel.input803 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input803_def]
  kernel_rfl

theorem output803_eq : InitECandidate.Proofs.DeadStages79.Parallel.output803 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output803_def]
  kernel_rfl

theorem input804_eq : InitECandidate.Proofs.DeadStages79.Parallel.input804 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_933 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input804_def]
  kernel_rfl

theorem input805_eq : InitECandidate.Proofs.DeadStages79.Parallel.input805 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input805_def]
  kernel_rfl

theorem output805_eq : InitECandidate.Proofs.DeadStages79.Parallel.output805 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output805_def]
  kernel_rfl

theorem input806_eq : InitECandidate.Proofs.DeadStages79.Parallel.input806 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_931 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input806_def]
  kernel_rfl

theorem input807_eq : InitECandidate.Proofs.DeadStages79.Parallel.input807 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_932 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input807_def]
  simp only [input806_eq, input805_eq]
  kernel_rfl

theorem output807_eq : InitECandidate.Proofs.DeadStages79.Parallel.output807 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output807_def]
  simp only [output805_eq]

theorem input808_eq : InitECandidate.Proofs.DeadStages79.Parallel.input808 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_934 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input808_def]
  simp only [input807_eq, input804_eq]
  kernel_rfl

theorem output808_eq : InitECandidate.Proofs.DeadStages79.Parallel.output808 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output808_def]
  simp only [output807_eq]

theorem input809_eq : InitECandidate.Proofs.DeadStages79.Parallel.input809 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input809_def]
  kernel_rfl

theorem input810_eq : InitECandidate.Proofs.DeadStages79.Parallel.input810 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_924 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input810_def]
  kernel_rfl

theorem input811_eq : InitECandidate.Proofs.DeadStages79.Parallel.input811 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_925 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input811_def]
  simp only [input810_eq, input809_eq]
  kernel_rfl

theorem input812_eq : InitECandidate.Proofs.DeadStages79.Parallel.input812 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_839 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input812_def]
  kernel_rfl

theorem output812_eq : InitECandidate.Proofs.DeadStages79.Parallel.output812 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_493 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output812_def]
  kernel_rfl

theorem input813_eq : InitECandidate.Proofs.DeadStages79.Parallel.input813 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_921 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input813_def]
  kernel_rfl

theorem output813_eq : InitECandidate.Proofs.DeadStages79.Parallel.output813 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_543 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output813_def]
  kernel_rfl

theorem input814_eq : InitECandidate.Proofs.DeadStages79.Parallel.input814 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_922 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input814_def]
  simp only [input813_eq, input812_eq]
  kernel_rfl

theorem output814_eq : InitECandidate.Proofs.DeadStages79.Parallel.output814 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_544 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output814_def]
  simp only [output813_eq, output812_eq]
  kernel_rfl

theorem input815_eq : InitECandidate.Proofs.DeadStages79.Parallel.input815 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_919 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input815_def]
  kernel_rfl

theorem output815_eq : InitECandidate.Proofs.DeadStages79.Parallel.output815 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_541 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output815_def]
  kernel_rfl

theorem input816_eq : InitECandidate.Proofs.DeadStages79.Parallel.input816 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_917 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input816_def]
  kernel_rfl

theorem input817_eq : InitECandidate.Proofs.DeadStages79.Parallel.input817 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input817_def]
  kernel_rfl

theorem output817_eq : InitECandidate.Proofs.DeadStages79.Parallel.output817 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output817_def]
  kernel_rfl

theorem input818_eq : InitECandidate.Proofs.DeadStages79.Parallel.input818 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_915 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input818_def]
  kernel_rfl

theorem input819_eq : InitECandidate.Proofs.DeadStages79.Parallel.input819 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_916 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input819_def]
  simp only [input818_eq, input817_eq]
  kernel_rfl

theorem output819_eq : InitECandidate.Proofs.DeadStages79.Parallel.output819 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output819_def]
  simp only [output817_eq]

theorem input820_eq : InitECandidate.Proofs.DeadStages79.Parallel.input820 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_918 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input820_def]
  simp only [input819_eq, input816_eq]
  kernel_rfl

theorem output820_eq : InitECandidate.Proofs.DeadStages79.Parallel.output820 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output820_def]
  simp only [output819_eq]

theorem input821_eq : InitECandidate.Proofs.DeadStages79.Parallel.input821 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_920 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input821_def]
  simp only [input820_eq, input815_eq]
  kernel_rfl

theorem output821_eq : InitECandidate.Proofs.DeadStages79.Parallel.output821 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_542 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output821_def]
  simp only [output820_eq, output815_eq]
  kernel_rfl

theorem input822_eq : InitECandidate.Proofs.DeadStages79.Parallel.input822 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_923 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input822_def]
  simp only [input821_eq, input814_eq]
  kernel_rfl

theorem output822_eq : InitECandidate.Proofs.DeadStages79.Parallel.output822 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_545 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output822_def]
  simp only [output821_eq, output814_eq]
  kernel_rfl

theorem input823_eq : InitECandidate.Proofs.DeadStages79.Parallel.input823 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_926 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input823_def]
  simp only [input822_eq, input811_eq]
  kernel_rfl

theorem output823_eq : InitECandidate.Proofs.DeadStages79.Parallel.output823 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_545 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output823_def]
  simp only [output822_eq]

theorem input824_eq : InitECandidate.Proofs.DeadStages79.Parallel.input824 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input824_def]
  kernel_rfl

theorem output824_eq : InitECandidate.Proofs.DeadStages79.Parallel.output824 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output824_def]
  kernel_rfl

theorem input825_eq : InitECandidate.Proofs.DeadStages79.Parallel.input825 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_927 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input825_def]
  kernel_rfl

theorem input826_eq : InitECandidate.Proofs.DeadStages79.Parallel.input826 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_928 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input826_def]
  simp only [input825_eq, input824_eq]
  kernel_rfl

theorem output826_eq : InitECandidate.Proofs.DeadStages79.Parallel.output826 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output826_def]
  simp only [output824_eq]

theorem input827_eq : InitECandidate.Proofs.DeadStages79.Parallel.input827 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input827_def]
  kernel_rfl

theorem input828_eq : InitECandidate.Proofs.DeadStages79.Parallel.input828 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_929 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input828_def]
  simp only [input827_eq, input826_eq]
  kernel_rfl

theorem output828_eq : InitECandidate.Proofs.DeadStages79.Parallel.output828 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output828_def]
  simp only [output826_eq]

theorem input829_eq : InitECandidate.Proofs.DeadStages79.Parallel.input829 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_930 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input829_def]
  simp only [input823_eq, input828_eq]
  kernel_rfl

theorem output829_eq : InitECandidate.Proofs.DeadStages79.Parallel.output829 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_546 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output829_def]
  simp only [output823_eq, output828_eq]
  kernel_rfl

theorem input830_eq : InitECandidate.Proofs.DeadStages79.Parallel.input830 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_935 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input830_def]
  simp only [input829_eq, input808_eq]
  kernel_rfl

theorem output830_eq : InitECandidate.Proofs.DeadStages79.Parallel.output830 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_547 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output830_def]
  simp only [output829_eq, output808_eq]
  kernel_rfl

theorem input831_eq : InitECandidate.Proofs.DeadStages79.Parallel.input831 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_912 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input831_def]
  kernel_rfl

theorem output831_eq : InitECandidate.Proofs.DeadStages79.Parallel.output831 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_538 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output831_def]
  kernel_rfl

theorem input832_eq : InitECandidate.Proofs.DeadStages79.Parallel.input832 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_909 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input832_def]
  kernel_rfl

theorem output832_eq : InitECandidate.Proofs.DeadStages79.Parallel.output832 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_535 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output832_def]
  kernel_rfl

theorem input833_eq : InitECandidate.Proofs.DeadStages79.Parallel.input833 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_908 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input833_def]
  kernel_rfl

theorem output833_eq : InitECandidate.Proofs.DeadStages79.Parallel.output833 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_534 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output833_def]
  kernel_rfl

theorem input834_eq : InitECandidate.Proofs.DeadStages79.Parallel.input834 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_910 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input834_def]
  simp only [input833_eq, input832_eq]
  kernel_rfl

theorem output834_eq : InitECandidate.Proofs.DeadStages79.Parallel.output834 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_536 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output834_def]
  simp only [output833_eq, output832_eq]
  kernel_rfl

theorem input835_eq : InitECandidate.Proofs.DeadStages79.Parallel.input835 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_907 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input835_def]
  kernel_rfl

theorem output835_eq : InitECandidate.Proofs.DeadStages79.Parallel.output835 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_533 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output835_def]
  kernel_rfl

theorem input836_eq : InitECandidate.Proofs.DeadStages79.Parallel.input836 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_911 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input836_def]
  simp only [input835_eq, input834_eq]
  kernel_rfl

theorem output836_eq : InitECandidate.Proofs.DeadStages79.Parallel.output836 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_537 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output836_def]
  simp only [output835_eq, output834_eq]
  kernel_rfl

theorem input837_eq : InitECandidate.Proofs.DeadStages79.Parallel.input837 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_913 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input837_def]
  simp only [input836_eq, input831_eq]
  kernel_rfl

theorem output837_eq : InitECandidate.Proofs.DeadStages79.Parallel.output837 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_539 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output837_def]
  simp only [output836_eq, output831_eq]
  kernel_rfl

theorem input838_eq : InitECandidate.Proofs.DeadStages79.Parallel.input838 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_904 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input838_def]
  kernel_rfl

theorem output838_eq : InitECandidate.Proofs.DeadStages79.Parallel.output838 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_530 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output838_def]
  kernel_rfl

theorem input839_eq : InitECandidate.Proofs.DeadStages79.Parallel.input839 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_901 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input839_def]
  kernel_rfl

theorem output839_eq : InitECandidate.Proofs.DeadStages79.Parallel.output839 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_527 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output839_def]
  kernel_rfl

theorem input840_eq : InitECandidate.Proofs.DeadStages79.Parallel.input840 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_900 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input840_def]
  kernel_rfl

theorem output840_eq : InitECandidate.Proofs.DeadStages79.Parallel.output840 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_526 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output840_def]
  kernel_rfl

theorem input841_eq : InitECandidate.Proofs.DeadStages79.Parallel.input841 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_902 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input841_def]
  simp only [input840_eq, input839_eq]
  kernel_rfl

theorem output841_eq : InitECandidate.Proofs.DeadStages79.Parallel.output841 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_528 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output841_def]
  simp only [output840_eq, output839_eq]
  kernel_rfl

theorem input842_eq : InitECandidate.Proofs.DeadStages79.Parallel.input842 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_899 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input842_def]
  kernel_rfl

theorem output842_eq : InitECandidate.Proofs.DeadStages79.Parallel.output842 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_525 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output842_def]
  kernel_rfl

theorem input843_eq : InitECandidate.Proofs.DeadStages79.Parallel.input843 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_903 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input843_def]
  simp only [input842_eq, input841_eq]
  kernel_rfl

theorem output843_eq : InitECandidate.Proofs.DeadStages79.Parallel.output843 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_529 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output843_def]
  simp only [output842_eq, output841_eq]
  kernel_rfl

theorem input844_eq : InitECandidate.Proofs.DeadStages79.Parallel.input844 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_905 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input844_def]
  simp only [input843_eq, input838_eq]
  kernel_rfl

theorem output844_eq : InitECandidate.Proofs.DeadStages79.Parallel.output844 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_531 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output844_def]
  simp only [output843_eq, output838_eq]
  kernel_rfl

theorem input845_eq : InitECandidate.Proofs.DeadStages79.Parallel.input845 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input845_def]
  kernel_rfl

theorem output845_eq : InitECandidate.Proofs.DeadStages79.Parallel.output845 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output845_def]
  kernel_rfl

theorem input846_eq : InitECandidate.Proofs.DeadStages79.Parallel.input846 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_894 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input846_def]
  kernel_rfl

theorem input847_eq : InitECandidate.Proofs.DeadStages79.Parallel.input847 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input847_def]
  kernel_rfl

theorem output847_eq : InitECandidate.Proofs.DeadStages79.Parallel.output847 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output847_def]
  kernel_rfl

theorem input848_eq : InitECandidate.Proofs.DeadStages79.Parallel.input848 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_892 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input848_def]
  kernel_rfl

theorem input849_eq : InitECandidate.Proofs.DeadStages79.Parallel.input849 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_893 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input849_def]
  simp only [input848_eq, input847_eq]
  kernel_rfl

theorem output849_eq : InitECandidate.Proofs.DeadStages79.Parallel.output849 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output849_def]
  simp only [output847_eq]

theorem input850_eq : InitECandidate.Proofs.DeadStages79.Parallel.input850 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_895 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input850_def]
  simp only [input849_eq, input846_eq]
  kernel_rfl

theorem output850_eq : InitECandidate.Proofs.DeadStages79.Parallel.output850 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output850_def]
  simp only [output849_eq]

theorem input851_eq : InitECandidate.Proofs.DeadStages79.Parallel.input851 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input851_def]
  kernel_rfl

theorem input852_eq : InitECandidate.Proofs.DeadStages79.Parallel.input852 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_885 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input852_def]
  kernel_rfl

theorem input853_eq : InitECandidate.Proofs.DeadStages79.Parallel.input853 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_886 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input853_def]
  simp only [input852_eq, input851_eq]
  kernel_rfl

theorem input854_eq : InitECandidate.Proofs.DeadStages79.Parallel.input854 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_839 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input854_def]
  kernel_rfl

theorem output854_eq : InitECandidate.Proofs.DeadStages79.Parallel.output854 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_493 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output854_def]
  kernel_rfl

theorem input855_eq : InitECandidate.Proofs.DeadStages79.Parallel.input855 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_882 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input855_def]
  kernel_rfl

theorem output855_eq : InitECandidate.Proofs.DeadStages79.Parallel.output855 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_518 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output855_def]
  kernel_rfl

theorem input856_eq : InitECandidate.Proofs.DeadStages79.Parallel.input856 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_883 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input856_def]
  simp only [input855_eq, input854_eq]
  kernel_rfl

theorem output856_eq : InitECandidate.Proofs.DeadStages79.Parallel.output856 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_519 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output856_def]
  simp only [output855_eq, output854_eq]
  kernel_rfl

theorem input857_eq : InitECandidate.Proofs.DeadStages79.Parallel.input857 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_880 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input857_def]
  kernel_rfl

theorem output857_eq : InitECandidate.Proofs.DeadStages79.Parallel.output857 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_516 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output857_def]
  kernel_rfl

theorem input858_eq : InitECandidate.Proofs.DeadStages79.Parallel.input858 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_878 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input858_def]
  kernel_rfl

theorem input859_eq : InitECandidate.Proofs.DeadStages79.Parallel.input859 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input859_def]
  kernel_rfl

theorem output859_eq : InitECandidate.Proofs.DeadStages79.Parallel.output859 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output859_def]
  kernel_rfl

theorem input860_eq : InitECandidate.Proofs.DeadStages79.Parallel.input860 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_876 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input860_def]
  kernel_rfl

theorem input861_eq : InitECandidate.Proofs.DeadStages79.Parallel.input861 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_877 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input861_def]
  simp only [input860_eq, input859_eq]
  kernel_rfl

theorem output861_eq : InitECandidate.Proofs.DeadStages79.Parallel.output861 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output861_def]
  simp only [output859_eq]

theorem input862_eq : InitECandidate.Proofs.DeadStages79.Parallel.input862 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_879 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input862_def]
  simp only [input861_eq, input858_eq]
  kernel_rfl

theorem output862_eq : InitECandidate.Proofs.DeadStages79.Parallel.output862 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output862_def]
  simp only [output861_eq]

theorem input863_eq : InitECandidate.Proofs.DeadStages79.Parallel.input863 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_881 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input863_def]
  simp only [input862_eq, input857_eq]
  kernel_rfl

theorem output863_eq : InitECandidate.Proofs.DeadStages79.Parallel.output863 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_517 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output863_def]
  simp only [output862_eq, output857_eq]
  kernel_rfl

theorem input864_eq : InitECandidate.Proofs.DeadStages79.Parallel.input864 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_884 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input864_def]
  simp only [input863_eq, input856_eq]
  kernel_rfl

theorem output864_eq : InitECandidate.Proofs.DeadStages79.Parallel.output864 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_520 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output864_def]
  simp only [output863_eq, output856_eq]
  kernel_rfl

theorem input865_eq : InitECandidate.Proofs.DeadStages79.Parallel.input865 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_887 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input865_def]
  simp only [input864_eq, input853_eq]
  kernel_rfl

theorem output865_eq : InitECandidate.Proofs.DeadStages79.Parallel.output865 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_520 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output865_def]
  simp only [output864_eq]

theorem input866_eq : InitECandidate.Proofs.DeadStages79.Parallel.input866 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input866_def]
  kernel_rfl

theorem output866_eq : InitECandidate.Proofs.DeadStages79.Parallel.output866 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output866_def]
  kernel_rfl

theorem input867_eq : InitECandidate.Proofs.DeadStages79.Parallel.input867 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_888 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input867_def]
  kernel_rfl

theorem input868_eq : InitECandidate.Proofs.DeadStages79.Parallel.input868 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_889 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input868_def]
  simp only [input867_eq, input866_eq]
  kernel_rfl

theorem output868_eq : InitECandidate.Proofs.DeadStages79.Parallel.output868 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output868_def]
  simp only [output866_eq]

theorem input869_eq : InitECandidate.Proofs.DeadStages79.Parallel.input869 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input869_def]
  kernel_rfl

theorem input870_eq : InitECandidate.Proofs.DeadStages79.Parallel.input870 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_890 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input870_def]
  simp only [input869_eq, input868_eq]
  kernel_rfl

theorem output870_eq : InitECandidate.Proofs.DeadStages79.Parallel.output870 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output870_def]
  simp only [output868_eq]

theorem input871_eq : InitECandidate.Proofs.DeadStages79.Parallel.input871 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_891 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input871_def]
  simp only [input865_eq, input870_eq]
  kernel_rfl

theorem output871_eq : InitECandidate.Proofs.DeadStages79.Parallel.output871 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_521 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output871_def]
  simp only [output865_eq, output870_eq]
  kernel_rfl

theorem input872_eq : InitECandidate.Proofs.DeadStages79.Parallel.input872 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_896 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input872_def]
  simp only [input871_eq, input850_eq]
  kernel_rfl

theorem output872_eq : InitECandidate.Proofs.DeadStages79.Parallel.output872 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_522 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output872_def]
  simp only [output871_eq, output850_eq]
  kernel_rfl

theorem input873_eq : InitECandidate.Proofs.DeadStages79.Parallel.input873 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_873 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input873_def]
  kernel_rfl

theorem output873_eq : InitECandidate.Proofs.DeadStages79.Parallel.output873 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_513 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output873_def]
  kernel_rfl

theorem input874_eq : InitECandidate.Proofs.DeadStages79.Parallel.input874 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_870 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input874_def]
  kernel_rfl

theorem output874_eq : InitECandidate.Proofs.DeadStages79.Parallel.output874 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_510 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output874_def]
  kernel_rfl

theorem input875_eq : InitECandidate.Proofs.DeadStages79.Parallel.input875 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_869 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input875_def]
  kernel_rfl

theorem output875_eq : InitECandidate.Proofs.DeadStages79.Parallel.output875 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_509 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output875_def]
  kernel_rfl

theorem input876_eq : InitECandidate.Proofs.DeadStages79.Parallel.input876 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_871 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input876_def]
  simp only [input875_eq, input874_eq]
  kernel_rfl

theorem output876_eq : InitECandidate.Proofs.DeadStages79.Parallel.output876 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_511 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output876_def]
  simp only [output875_eq, output874_eq]
  kernel_rfl

theorem input877_eq : InitECandidate.Proofs.DeadStages79.Parallel.input877 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_868 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input877_def]
  kernel_rfl

theorem output877_eq : InitECandidate.Proofs.DeadStages79.Parallel.output877 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_508 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output877_def]
  kernel_rfl

theorem input878_eq : InitECandidate.Proofs.DeadStages79.Parallel.input878 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_872 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input878_def]
  simp only [input877_eq, input876_eq]
  kernel_rfl

theorem output878_eq : InitECandidate.Proofs.DeadStages79.Parallel.output878 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_512 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output878_def]
  simp only [output877_eq, output876_eq]
  kernel_rfl

theorem input879_eq : InitECandidate.Proofs.DeadStages79.Parallel.input879 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_874 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input879_def]
  simp only [input878_eq, input873_eq]
  kernel_rfl

theorem output879_eq : InitECandidate.Proofs.DeadStages79.Parallel.output879 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_514 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output879_def]
  simp only [output878_eq, output873_eq]
  kernel_rfl

theorem input880_eq : InitECandidate.Proofs.DeadStages79.Parallel.input880 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_865 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input880_def]
  kernel_rfl

theorem output880_eq : InitECandidate.Proofs.DeadStages79.Parallel.output880 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_505 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output880_def]
  kernel_rfl

theorem input881_eq : InitECandidate.Proofs.DeadStages79.Parallel.input881 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_862 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input881_def]
  kernel_rfl

theorem output881_eq : InitECandidate.Proofs.DeadStages79.Parallel.output881 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_502 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output881_def]
  kernel_rfl

theorem input882_eq : InitECandidate.Proofs.DeadStages79.Parallel.input882 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_861 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input882_def]
  kernel_rfl

theorem output882_eq : InitECandidate.Proofs.DeadStages79.Parallel.output882 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_501 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output882_def]
  kernel_rfl

theorem input883_eq : InitECandidate.Proofs.DeadStages79.Parallel.input883 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_863 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input883_def]
  simp only [input882_eq, input881_eq]
  kernel_rfl

theorem output883_eq : InitECandidate.Proofs.DeadStages79.Parallel.output883 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_503 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output883_def]
  simp only [output882_eq, output881_eq]
  kernel_rfl

theorem input884_eq : InitECandidate.Proofs.DeadStages79.Parallel.input884 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_860 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input884_def]
  kernel_rfl

theorem output884_eq : InitECandidate.Proofs.DeadStages79.Parallel.output884 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_500 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output884_def]
  kernel_rfl

theorem input885_eq : InitECandidate.Proofs.DeadStages79.Parallel.input885 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_864 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input885_def]
  simp only [input884_eq, input883_eq]
  kernel_rfl

theorem output885_eq : InitECandidate.Proofs.DeadStages79.Parallel.output885 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_504 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output885_def]
  simp only [output884_eq, output883_eq]
  kernel_rfl

theorem input886_eq : InitECandidate.Proofs.DeadStages79.Parallel.input886 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_866 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input886_def]
  simp only [input885_eq, input880_eq]
  kernel_rfl

theorem output886_eq : InitECandidate.Proofs.DeadStages79.Parallel.output886 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_506 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output886_def]
  simp only [output885_eq, output880_eq]
  kernel_rfl

theorem input887_eq : InitECandidate.Proofs.DeadStages79.Parallel.input887 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input887_def]
  kernel_rfl

theorem output887_eq : InitECandidate.Proofs.DeadStages79.Parallel.output887 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output887_def]
  kernel_rfl

theorem input888_eq : InitECandidate.Proofs.DeadStages79.Parallel.input888 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_855 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input888_def]
  kernel_rfl

theorem input889_eq : InitECandidate.Proofs.DeadStages79.Parallel.input889 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input889_def]
  kernel_rfl

theorem output889_eq : InitECandidate.Proofs.DeadStages79.Parallel.output889 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output889_def]
  kernel_rfl

theorem input890_eq : InitECandidate.Proofs.DeadStages79.Parallel.input890 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_853 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input890_def]
  kernel_rfl

theorem input891_eq : InitECandidate.Proofs.DeadStages79.Parallel.input891 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_854 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input891_def]
  simp only [input890_eq, input889_eq]
  kernel_rfl

theorem output891_eq : InitECandidate.Proofs.DeadStages79.Parallel.output891 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output891_def]
  simp only [output889_eq]

theorem input892_eq : InitECandidate.Proofs.DeadStages79.Parallel.input892 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_856 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input892_def]
  simp only [input891_eq, input888_eq]
  kernel_rfl

theorem output892_eq : InitECandidate.Proofs.DeadStages79.Parallel.output892 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output892_def]
  simp only [output891_eq]

theorem input893_eq : InitECandidate.Proofs.DeadStages79.Parallel.input893 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_843 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input893_def]
  kernel_rfl

theorem input894_eq : InitECandidate.Proofs.DeadStages79.Parallel.input894 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input894_def]
  kernel_rfl

theorem input895_eq : InitECandidate.Proofs.DeadStages79.Parallel.input895 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_844 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input895_def]
  simp only [input894_eq, input893_eq]
  kernel_rfl

theorem input896_eq : InitECandidate.Proofs.DeadStages79.Parallel.input896 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_842 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input896_def]
  kernel_rfl

theorem input897_eq : InitECandidate.Proofs.DeadStages79.Parallel.input897 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_845 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input897_def]
  simp only [input896_eq, input895_eq]
  kernel_rfl

theorem input898_eq : InitECandidate.Proofs.DeadStages79.Parallel.input898 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_839 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input898_def]
  kernel_rfl

theorem output898_eq : InitECandidate.Proofs.DeadStages79.Parallel.output898 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_493 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output898_def]
  kernel_rfl

theorem input899_eq : InitECandidate.Proofs.DeadStages79.Parallel.input899 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_838 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input899_def]
  kernel_rfl

theorem output899_eq : InitECandidate.Proofs.DeadStages79.Parallel.output899 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_492 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output899_def]
  kernel_rfl

theorem input900_eq : InitECandidate.Proofs.DeadStages79.Parallel.input900 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_840 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input900_def]
  simp only [input899_eq, input898_eq]
  kernel_rfl

theorem output900_eq : InitECandidate.Proofs.DeadStages79.Parallel.output900 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_494 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output900_def]
  simp only [output899_eq, output898_eq]
  kernel_rfl

theorem input901_eq : InitECandidate.Proofs.DeadStages79.Parallel.input901 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_836 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input901_def]
  kernel_rfl

theorem output901_eq : InitECandidate.Proofs.DeadStages79.Parallel.output901 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_490 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output901_def]
  kernel_rfl

theorem input902_eq : InitECandidate.Proofs.DeadStages79.Parallel.input902 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_834 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input902_def]
  kernel_rfl

theorem input903_eq : InitECandidate.Proofs.DeadStages79.Parallel.input903 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input903_def]
  kernel_rfl

theorem output903_eq : InitECandidate.Proofs.DeadStages79.Parallel.output903 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output903_def]
  kernel_rfl

theorem input904_eq : InitECandidate.Proofs.DeadStages79.Parallel.input904 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_832 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input904_def]
  kernel_rfl

theorem input905_eq : InitECandidate.Proofs.DeadStages79.Parallel.input905 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_833 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input905_def]
  simp only [input904_eq, input903_eq]
  kernel_rfl

theorem output905_eq : InitECandidate.Proofs.DeadStages79.Parallel.output905 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output905_def]
  simp only [output903_eq]

theorem input906_eq : InitECandidate.Proofs.DeadStages79.Parallel.input906 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_835 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input906_def]
  simp only [input905_eq, input902_eq]
  kernel_rfl

theorem output906_eq : InitECandidate.Proofs.DeadStages79.Parallel.output906 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output906_def]
  simp only [output905_eq]

theorem input907_eq : InitECandidate.Proofs.DeadStages79.Parallel.input907 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_837 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input907_def]
  simp only [input906_eq, input901_eq]
  kernel_rfl

theorem output907_eq : InitECandidate.Proofs.DeadStages79.Parallel.output907 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_491 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output907_def]
  simp only [output906_eq, output901_eq]
  kernel_rfl

theorem input908_eq : InitECandidate.Proofs.DeadStages79.Parallel.input908 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_841 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input908_def]
  simp only [input907_eq, input900_eq]
  kernel_rfl

theorem output908_eq : InitECandidate.Proofs.DeadStages79.Parallel.output908 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_495 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output908_def]
  simp only [output907_eq, output900_eq]
  kernel_rfl

theorem input909_eq : InitECandidate.Proofs.DeadStages79.Parallel.input909 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_846 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input909_def]
  simp only [input908_eq, input897_eq]
  kernel_rfl

theorem output909_eq : InitECandidate.Proofs.DeadStages79.Parallel.output909 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_495 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output909_def]
  simp only [output908_eq]

theorem input910_eq : InitECandidate.Proofs.DeadStages79.Parallel.input910 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_848 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input910_def]
  kernel_rfl

theorem output910_eq : InitECandidate.Proofs.DeadStages79.Parallel.output910 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output910_def]
  kernel_rfl

theorem input911_eq : InitECandidate.Proofs.DeadStages79.Parallel.input911 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input911_def]
  kernel_rfl

theorem input912_eq : InitECandidate.Proofs.DeadStages79.Parallel.input912 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_849 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input912_def]
  simp only [input911_eq, input910_eq]
  kernel_rfl

theorem output912_eq : InitECandidate.Proofs.DeadStages79.Parallel.output912 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output912_def]
  simp only [output910_eq]

theorem input913_eq : InitECandidate.Proofs.DeadStages79.Parallel.input913 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_847 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input913_def]
  kernel_rfl

theorem input914_eq : InitECandidate.Proofs.DeadStages79.Parallel.input914 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_850 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input914_def]
  simp only [input913_eq, input912_eq]
  kernel_rfl

theorem output914_eq : InitECandidate.Proofs.DeadStages79.Parallel.output914 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output914_def]
  simp only [output912_eq]

theorem input915_eq : InitECandidate.Proofs.DeadStages79.Parallel.input915 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input915_def]
  kernel_rfl

theorem input916_eq : InitECandidate.Proofs.DeadStages79.Parallel.input916 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_851 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input916_def]
  simp only [input915_eq, input914_eq]
  kernel_rfl

theorem output916_eq : InitECandidate.Proofs.DeadStages79.Parallel.output916 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output916_def]
  simp only [output914_eq]

theorem input917_eq : InitECandidate.Proofs.DeadStages79.Parallel.input917 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_852 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input917_def]
  simp only [input909_eq, input916_eq]
  kernel_rfl

theorem output917_eq : InitECandidate.Proofs.DeadStages79.Parallel.output917 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_496 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output917_def]
  simp only [output909_eq, output916_eq]
  kernel_rfl

theorem input918_eq : InitECandidate.Proofs.DeadStages79.Parallel.input918 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_857 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input918_def]
  simp only [input917_eq, input892_eq]
  kernel_rfl

theorem output918_eq : InitECandidate.Proofs.DeadStages79.Parallel.output918 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_497 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output918_def]
  simp only [output917_eq, output892_eq]
  kernel_rfl

theorem input919_eq : InitECandidate.Proofs.DeadStages79.Parallel.input919 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_829 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input919_def]
  kernel_rfl

theorem output919_eq : InitECandidate.Proofs.DeadStages79.Parallel.output919 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_487 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output919_def]
  kernel_rfl

theorem input920_eq : InitECandidate.Proofs.DeadStages79.Parallel.input920 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_826 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input920_def]
  kernel_rfl

theorem output920_eq : InitECandidate.Proofs.DeadStages79.Parallel.output920 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_484 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output920_def]
  kernel_rfl

theorem input921_eq : InitECandidate.Proofs.DeadStages79.Parallel.input921 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_825 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input921_def]
  kernel_rfl

theorem output921_eq : InitECandidate.Proofs.DeadStages79.Parallel.output921 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_483 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output921_def]
  kernel_rfl

theorem input922_eq : InitECandidate.Proofs.DeadStages79.Parallel.input922 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_827 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input922_def]
  simp only [input921_eq, input920_eq]
  kernel_rfl

theorem output922_eq : InitECandidate.Proofs.DeadStages79.Parallel.output922 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_485 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output922_def]
  simp only [output921_eq, output920_eq]
  kernel_rfl

theorem input923_eq : InitECandidate.Proofs.DeadStages79.Parallel.input923 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_824 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input923_def]
  kernel_rfl

theorem output923_eq : InitECandidate.Proofs.DeadStages79.Parallel.output923 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_482 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output923_def]
  kernel_rfl

theorem input924_eq : InitECandidate.Proofs.DeadStages79.Parallel.input924 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_828 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input924_def]
  simp only [input923_eq, input922_eq]
  kernel_rfl

theorem output924_eq : InitECandidate.Proofs.DeadStages79.Parallel.output924 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_486 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output924_def]
  simp only [output923_eq, output922_eq]
  kernel_rfl

theorem input925_eq : InitECandidate.Proofs.DeadStages79.Parallel.input925 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_830 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input925_def]
  simp only [input924_eq, input919_eq]
  kernel_rfl

theorem output925_eq : InitECandidate.Proofs.DeadStages79.Parallel.output925 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_488 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output925_def]
  simp only [output924_eq, output919_eq]
  kernel_rfl

theorem input926_eq : InitECandidate.Proofs.DeadStages79.Parallel.input926 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_821 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input926_def]
  kernel_rfl

theorem output926_eq : InitECandidate.Proofs.DeadStages79.Parallel.output926 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_479 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output926_def]
  kernel_rfl

theorem input927_eq : InitECandidate.Proofs.DeadStages79.Parallel.input927 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_818 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input927_def]
  kernel_rfl

theorem output927_eq : InitECandidate.Proofs.DeadStages79.Parallel.output927 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_476 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output927_def]
  kernel_rfl

theorem input928_eq : InitECandidate.Proofs.DeadStages79.Parallel.input928 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_817 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input928_def]
  kernel_rfl

theorem output928_eq : InitECandidate.Proofs.DeadStages79.Parallel.output928 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_475 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output928_def]
  kernel_rfl

theorem input929_eq : InitECandidate.Proofs.DeadStages79.Parallel.input929 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_819 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input929_def]
  simp only [input928_eq, input927_eq]
  kernel_rfl

theorem output929_eq : InitECandidate.Proofs.DeadStages79.Parallel.output929 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_477 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output929_def]
  simp only [output928_eq, output927_eq]
  kernel_rfl

theorem input930_eq : InitECandidate.Proofs.DeadStages79.Parallel.input930 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_816 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input930_def]
  kernel_rfl

theorem output930_eq : InitECandidate.Proofs.DeadStages79.Parallel.output930 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_474 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output930_def]
  kernel_rfl

theorem input931_eq : InitECandidate.Proofs.DeadStages79.Parallel.input931 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_820 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input931_def]
  simp only [input930_eq, input929_eq]
  kernel_rfl

theorem output931_eq : InitECandidate.Proofs.DeadStages79.Parallel.output931 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_478 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output931_def]
  simp only [output930_eq, output929_eq]
  kernel_rfl

theorem input932_eq : InitECandidate.Proofs.DeadStages79.Parallel.input932 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_822 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input932_def]
  simp only [input931_eq, input926_eq]
  kernel_rfl

theorem output932_eq : InitECandidate.Proofs.DeadStages79.Parallel.output932 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_480 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output932_def]
  simp only [output931_eq, output926_eq]
  kernel_rfl

theorem input933_eq : InitECandidate.Proofs.DeadStages79.Parallel.input933 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_814 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input933_def]
  kernel_rfl

theorem input934_eq : InitECandidate.Proofs.DeadStages79.Parallel.input934 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input934_def]
  kernel_rfl

theorem output934_eq : InitECandidate.Proofs.DeadStages79.Parallel.output934 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output934_def]
  kernel_rfl

theorem input935_eq : InitECandidate.Proofs.DeadStages79.Parallel.input935 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_812 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input935_def]
  kernel_rfl

theorem input936_eq : InitECandidate.Proofs.DeadStages79.Parallel.input936 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_813 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input936_def]
  simp only [input935_eq, input934_eq]
  kernel_rfl

theorem output936_eq : InitECandidate.Proofs.DeadStages79.Parallel.output936 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output936_def]
  simp only [output934_eq]

theorem input937_eq : InitECandidate.Proofs.DeadStages79.Parallel.input937 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_815 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input937_def]
  simp only [input936_eq, input933_eq]
  kernel_rfl

theorem output937_eq : InitECandidate.Proofs.DeadStages79.Parallel.output937 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output937_def]
  simp only [output936_eq]

theorem input938_eq : InitECandidate.Proofs.DeadStages79.Parallel.input938 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_823 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input938_def]
  simp only [input937_eq, input932_eq]
  kernel_rfl

theorem output938_eq : InitECandidate.Proofs.DeadStages79.Parallel.output938 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_481 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output938_def]
  simp only [output937_eq, output932_eq]
  kernel_rfl

theorem input939_eq : InitECandidate.Proofs.DeadStages79.Parallel.input939 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_831 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input939_def]
  simp only [input938_eq, input925_eq]
  kernel_rfl

theorem output939_eq : InitECandidate.Proofs.DeadStages79.Parallel.output939 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_489 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output939_def]
  simp only [output938_eq, output925_eq]
  kernel_rfl

theorem input940_eq : InitECandidate.Proofs.DeadStages79.Parallel.input940 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_858 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input940_def]
  simp only [input939_eq, input918_eq]
  kernel_rfl

theorem output940_eq : InitECandidate.Proofs.DeadStages79.Parallel.output940 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_498 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output940_def]
  simp only [output939_eq, output918_eq]
  kernel_rfl

theorem input941_eq : InitECandidate.Proofs.DeadStages79.Parallel.input941 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_859 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input941_def]
  simp only [input940_eq, input887_eq]
  kernel_rfl

theorem output941_eq : InitECandidate.Proofs.DeadStages79.Parallel.output941 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_499 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output941_def]
  simp only [output940_eq, output887_eq]
  kernel_rfl

theorem input942_eq : InitECandidate.Proofs.DeadStages79.Parallel.input942 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_867 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input942_def]
  simp only [input941_eq, input886_eq]
  kernel_rfl

theorem output942_eq : InitECandidate.Proofs.DeadStages79.Parallel.output942 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_507 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output942_def]
  simp only [output941_eq, output886_eq]
  kernel_rfl

theorem input943_eq : InitECandidate.Proofs.DeadStages79.Parallel.input943 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_875 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input943_def]
  simp only [input942_eq, input879_eq]
  kernel_rfl

theorem output943_eq : InitECandidate.Proofs.DeadStages79.Parallel.output943 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_515 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output943_def]
  simp only [output942_eq, output879_eq]
  kernel_rfl

theorem input944_eq : InitECandidate.Proofs.DeadStages79.Parallel.input944 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_897 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input944_def]
  simp only [input943_eq, input872_eq]
  kernel_rfl

theorem output944_eq : InitECandidate.Proofs.DeadStages79.Parallel.output944 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_523 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output944_def]
  simp only [output943_eq, output872_eq]
  kernel_rfl

theorem input945_eq : InitECandidate.Proofs.DeadStages79.Parallel.input945 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_898 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input945_def]
  simp only [input944_eq, input845_eq]
  kernel_rfl

theorem output945_eq : InitECandidate.Proofs.DeadStages79.Parallel.output945 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_524 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output945_def]
  simp only [output944_eq, output845_eq]
  kernel_rfl

theorem input946_eq : InitECandidate.Proofs.DeadStages79.Parallel.input946 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_906 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input946_def]
  simp only [input945_eq, input844_eq]
  kernel_rfl

theorem output946_eq : InitECandidate.Proofs.DeadStages79.Parallel.output946 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_532 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output946_def]
  simp only [output945_eq, output844_eq]
  kernel_rfl

theorem input947_eq : InitECandidate.Proofs.DeadStages79.Parallel.input947 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_914 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input947_def]
  simp only [input946_eq, input837_eq]
  kernel_rfl

theorem output947_eq : InitECandidate.Proofs.DeadStages79.Parallel.output947 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_540 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output947_def]
  simp only [output946_eq, output837_eq]
  kernel_rfl

theorem input948_eq : InitECandidate.Proofs.DeadStages79.Parallel.input948 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_936 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input948_def]
  simp only [input947_eq, input830_eq]
  kernel_rfl

theorem output948_eq : InitECandidate.Proofs.DeadStages79.Parallel.output948 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_548 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output948_def]
  simp only [output947_eq, output830_eq]
  kernel_rfl

theorem input949_eq : InitECandidate.Proofs.DeadStages79.Parallel.input949 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_937 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input949_def]
  simp only [input948_eq, input803_eq]
  kernel_rfl

theorem output949_eq : InitECandidate.Proofs.DeadStages79.Parallel.output949 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_549 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output949_def]
  simp only [output948_eq, output803_eq]
  kernel_rfl

theorem input950_eq : InitECandidate.Proofs.DeadStages79.Parallel.input950 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_945 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input950_def]
  simp only [input949_eq, input802_eq]
  kernel_rfl

theorem output950_eq : InitECandidate.Proofs.DeadStages79.Parallel.output950 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_557 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output950_def]
  simp only [output949_eq, output802_eq]
  kernel_rfl

theorem input951_eq : InitECandidate.Proofs.DeadStages79.Parallel.input951 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_953 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input951_def]
  simp only [input950_eq, input795_eq]
  kernel_rfl

theorem output951_eq : InitECandidate.Proofs.DeadStages79.Parallel.output951 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_565 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output951_def]
  simp only [output950_eq, output795_eq]
  kernel_rfl

theorem input952_eq : InitECandidate.Proofs.DeadStages79.Parallel.input952 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_975 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input952_def]
  simp only [input951_eq, input788_eq]
  kernel_rfl

theorem output952_eq : InitECandidate.Proofs.DeadStages79.Parallel.output952 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_573 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output952_def]
  simp only [output951_eq, output788_eq]
  kernel_rfl

theorem input953_eq : InitECandidate.Proofs.DeadStages79.Parallel.input953 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_976 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input953_def]
  simp only [input952_eq, input761_eq]
  kernel_rfl

theorem output953_eq : InitECandidate.Proofs.DeadStages79.Parallel.output953 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_574 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output953_def]
  simp only [output952_eq, output761_eq]
  kernel_rfl

theorem input954_eq : InitECandidate.Proofs.DeadStages79.Parallel.input954 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_980 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input954_def]
  simp only [input953_eq, input760_eq]
  kernel_rfl

theorem output954_eq : InitECandidate.Proofs.DeadStages79.Parallel.output954 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_578 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output954_def]
  simp only [output953_eq, output760_eq]
  kernel_rfl

theorem input955_eq : InitECandidate.Proofs.DeadStages79.Parallel.input955 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_982 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input955_def]
  simp only [input954_eq, input757_eq]
  kernel_rfl

theorem output955_eq : InitECandidate.Proofs.DeadStages79.Parallel.output955 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_580 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output955_def]
  simp only [output954_eq, output757_eq]
  kernel_rfl

theorem input956_eq : InitECandidate.Proofs.DeadStages79.Parallel.input956 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_986 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input956_def]
  simp only [input955_eq, input756_eq]
  kernel_rfl

theorem output956_eq : InitECandidate.Proofs.DeadStages79.Parallel.output956 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_584 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output956_def]
  simp only [output955_eq, output756_eq]
  kernel_rfl

theorem input957_eq : InitECandidate.Proofs.DeadStages79.Parallel.input957 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_993 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input957_def]
  simp only [input956_eq, input753_eq]
  kernel_rfl

theorem output957_eq : InitECandidate.Proofs.DeadStages79.Parallel.output957 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_586 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output957_def]
  simp only [output956_eq, output753_eq]
  kernel_rfl

theorem input958_eq : InitECandidate.Proofs.DeadStages79.Parallel.input958 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1005 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input958_def]
  kernel_rfl

theorem input959_eq : InitECandidate.Proofs.DeadStages79.Parallel.input959 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1003 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input959_def]
  kernel_rfl

theorem input960_eq : InitECandidate.Proofs.DeadStages79.Parallel.input960 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input960_def]
  kernel_rfl

theorem input961_eq : InitECandidate.Proofs.DeadStages79.Parallel.input961 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1004 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input961_def]
  simp only [input960_eq, input959_eq]
  kernel_rfl

theorem input962_eq : InitECandidate.Proofs.DeadStages79.Parallel.input962 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1006 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input962_def]
  simp only [input961_eq, input958_eq]
  kernel_rfl

theorem input963_eq : InitECandidate.Proofs.DeadStages79.Parallel.input963 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1002 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input963_def]
  kernel_rfl

theorem output963_eq : InitECandidate.Proofs.DeadStages79.Parallel.output963 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_591 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output963_def]
  kernel_rfl

theorem input964_eq : InitECandidate.Proofs.DeadStages79.Parallel.input964 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1007 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input964_def]
  simp only [input963_eq, input962_eq]
  kernel_rfl

theorem output964_eq : InitECandidate.Proofs.DeadStages79.Parallel.output964 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_591 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output964_def]
  simp only [output963_eq]

theorem input965_eq : InitECandidate.Proofs.DeadStages79.Parallel.input965 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_999 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input965_def]
  kernel_rfl

theorem output965_eq : InitECandidate.Proofs.DeadStages79.Parallel.output965 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_588 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output965_def]
  kernel_rfl

theorem input966_eq : InitECandidate.Proofs.DeadStages79.Parallel.input966 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_998 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input966_def]
  kernel_rfl

theorem output966_eq : InitECandidate.Proofs.DeadStages79.Parallel.output966 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_587 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output966_def]
  kernel_rfl

theorem input967_eq : InitECandidate.Proofs.DeadStages79.Parallel.input967 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1000 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input967_def]
  simp only [input966_eq, input965_eq]
  kernel_rfl

theorem output967_eq : InitECandidate.Proofs.DeadStages79.Parallel.output967 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_589 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output967_def]
  simp only [output966_eq, output965_eq]
  kernel_rfl

theorem input968_eq : InitECandidate.Proofs.DeadStages79.Parallel.input968 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_996 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input968_def]
  kernel_rfl

theorem input969_eq : InitECandidate.Proofs.DeadStages79.Parallel.input969 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input969_def]
  kernel_rfl

theorem output969_eq : InitECandidate.Proofs.DeadStages79.Parallel.output969 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output969_def]
  kernel_rfl

theorem input970_eq : InitECandidate.Proofs.DeadStages79.Parallel.input970 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_994 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input970_def]
  kernel_rfl

theorem input971_eq : InitECandidate.Proofs.DeadStages79.Parallel.input971 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_995 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input971_def]
  simp only [input970_eq, input969_eq]
  kernel_rfl

theorem output971_eq : InitECandidate.Proofs.DeadStages79.Parallel.output971 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output971_def]
  simp only [output969_eq]

theorem input972_eq : InitECandidate.Proofs.DeadStages79.Parallel.input972 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_997 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input972_def]
  simp only [input971_eq, input968_eq]
  kernel_rfl

theorem output972_eq : InitECandidate.Proofs.DeadStages79.Parallel.output972 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output972_def]
  simp only [output971_eq]

theorem input973_eq : InitECandidate.Proofs.DeadStages79.Parallel.input973 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1001 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input973_def]
  simp only [input972_eq, input967_eq]
  kernel_rfl

theorem output973_eq : InitECandidate.Proofs.DeadStages79.Parallel.output973 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_590 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output973_def]
  simp only [output972_eq, output967_eq]
  kernel_rfl

theorem input974_eq : InitECandidate.Proofs.DeadStages79.Parallel.input974 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1008 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input974_def]
  simp only [input973_eq, input964_eq]
  kernel_rfl

theorem output974_eq : InitECandidate.Proofs.DeadStages79.Parallel.output974 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_592 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output974_def]
  simp only [output973_eq, output964_eq]
  kernel_rfl

theorem input975_eq : InitECandidate.Proofs.DeadStages79.Parallel.input975 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1009 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input975_def]
  simp only [input957_eq, input974_eq]
  kernel_rfl

theorem output975_eq : InitECandidate.Proofs.DeadStages79.Parallel.output975 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_593 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output975_def]
  simp only [output957_eq, output974_eq]
  kernel_rfl

theorem input976_eq : InitECandidate.Proofs.DeadStages79.Parallel.input976 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_809 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input976_def]
  kernel_rfl

theorem output976_eq : InitECandidate.Proofs.DeadStages79.Parallel.output976 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_471 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output976_def]
  kernel_rfl

theorem input977_eq : InitECandidate.Proofs.DeadStages79.Parallel.input977 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_808 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input977_def]
  kernel_rfl

theorem output977_eq : InitECandidate.Proofs.DeadStages79.Parallel.output977 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_470 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output977_def]
  kernel_rfl

theorem input978_eq : InitECandidate.Proofs.DeadStages79.Parallel.input978 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_810 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input978_def]
  simp only [input977_eq, input976_eq]
  kernel_rfl

theorem output978_eq : InitECandidate.Proofs.DeadStages79.Parallel.output978 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_472 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output978_def]
  simp only [output977_eq, output976_eq]
  kernel_rfl

theorem input979_eq : InitECandidate.Proofs.DeadStages79.Parallel.input979 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_807 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input979_def]
  kernel_rfl

theorem output979_eq : InitECandidate.Proofs.DeadStages79.Parallel.output979 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_469 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output979_def]
  kernel_rfl

theorem input980_eq : InitECandidate.Proofs.DeadStages79.Parallel.input980 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_811 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input980_def]
  simp only [input979_eq, input978_eq]
  kernel_rfl

theorem output980_eq : InitECandidate.Proofs.DeadStages79.Parallel.output980 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_473 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output980_def]
  simp only [output979_eq, output978_eq]
  kernel_rfl

theorem input981_eq : InitECandidate.Proofs.DeadStages79.Parallel.input981 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1010 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input981_def]
  simp only [input980_eq, input975_eq]
  kernel_rfl

theorem output981_eq : InitECandidate.Proofs.DeadStages79.Parallel.output981 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_594 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output981_def]
  simp only [output980_eq, output975_eq]
  kernel_rfl

theorem input982_eq : InitECandidate.Proofs.DeadStages79.Parallel.input982 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1011 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input982_def]
  simp only [input981_eq, input746_eq]
  kernel_rfl

theorem output982_eq : InitECandidate.Proofs.DeadStages79.Parallel.output982 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_595 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output982_def]
  simp only [output981_eq, output746_eq]
  kernel_rfl

theorem input983_eq : InitECandidate.Proofs.DeadStages79.Parallel.input983 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1013 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input983_def]
  simp only [input982_eq, input745_eq]
  kernel_rfl

theorem output983_eq : InitECandidate.Proofs.DeadStages79.Parallel.output983 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_597 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output983_def]
  simp only [output982_eq, output745_eq]
  kernel_rfl

theorem input984_eq : InitECandidate.Proofs.DeadStages79.Parallel.input984 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1014 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input984_def]
  simp only [input983_eq]
  kernel_rfl

theorem output984_eq : InitECandidate.Proofs.DeadStages79.Parallel.output984 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_598 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output984_def]
  simp only [output983_eq]
  kernel_rfl

theorem input985_eq : InitECandidate.Proofs.DeadStages79.Parallel.input985 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_805 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input985_def]
  kernel_rfl

theorem output985_eq : InitECandidate.Proofs.DeadStages79.Parallel.output985 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_468 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output985_def]
  kernel_rfl

theorem input986_eq : InitECandidate.Proofs.DeadStages79.Parallel.input986 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input986_def]
  kernel_rfl

theorem input987_eq : InitECandidate.Proofs.DeadStages79.Parallel.input987 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_806 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input987_def]
  simp only [input986_eq, input985_eq]
  kernel_rfl

theorem output987_eq : InitECandidate.Proofs.DeadStages79.Parallel.output987 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_468 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output987_def]
  simp only [output985_eq]

theorem input988_eq : InitECandidate.Proofs.DeadStages79.Parallel.input988 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1015 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input988_def]
  simp only [input987_eq, input984_eq]
  kernel_rfl

theorem output988_eq : InitECandidate.Proofs.DeadStages79.Parallel.output988 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_599 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output988_def]
  simp only [output987_eq, output984_eq]
  kernel_rfl

theorem input989_eq : InitECandidate.Proofs.DeadStages79.Parallel.input989 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input989_def]
  kernel_rfl

theorem output989_eq : InitECandidate.Proofs.DeadStages79.Parallel.output989 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output989_def]
  kernel_rfl

theorem input990_eq : InitECandidate.Proofs.DeadStages79.Parallel.input990 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input990_def]
  kernel_rfl

theorem output990_eq : InitECandidate.Proofs.DeadStages79.Parallel.output990 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output990_def]
  kernel_rfl

theorem input991_eq : InitECandidate.Proofs.DeadStages79.Parallel.input991 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_799 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input991_def]
  kernel_rfl

theorem input992_eq : InitECandidate.Proofs.DeadStages79.Parallel.input992 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input992_def]
  kernel_rfl

theorem output992_eq : InitECandidate.Proofs.DeadStages79.Parallel.output992 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output992_def]
  kernel_rfl

theorem input993_eq : InitECandidate.Proofs.DeadStages79.Parallel.input993 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_797 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input993_def]
  kernel_rfl

theorem input994_eq : InitECandidate.Proofs.DeadStages79.Parallel.input994 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_798 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input994_def]
  simp only [input993_eq, input992_eq]
  kernel_rfl

theorem output994_eq : InitECandidate.Proofs.DeadStages79.Parallel.output994 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output994_def]
  simp only [output992_eq]

theorem input995_eq : InitECandidate.Proofs.DeadStages79.Parallel.input995 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_800 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input995_def]
  simp only [input994_eq, input991_eq]
  kernel_rfl

theorem output995_eq : InitECandidate.Proofs.DeadStages79.Parallel.output995 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output995_def]
  simp only [output994_eq]

theorem input996_eq : InitECandidate.Proofs.DeadStages79.Parallel.input996 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input996_def]
  kernel_rfl

theorem input997_eq : InitECandidate.Proofs.DeadStages79.Parallel.input997 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_790 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input997_def]
  kernel_rfl

theorem output997_eq : InitECandidate.Proofs.DeadStages79.Parallel.output997 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_460 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output997_def]
  kernel_rfl

theorem input998_eq : InitECandidate.Proofs.DeadStages79.Parallel.input998 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_791 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input998_def]
  simp only [input997_eq, input996_eq]
  kernel_rfl

theorem output998_eq : InitECandidate.Proofs.DeadStages79.Parallel.output998 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_460 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output998_def]
  simp only [output997_eq]

theorem input999_eq : InitECandidate.Proofs.DeadStages79.Parallel.input999 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input999_def]
  kernel_rfl

theorem output999_eq : InitECandidate.Proofs.DeadStages79.Parallel.output999 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output999_def]
  kernel_rfl

theorem input1000_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1000 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_787 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1000_def]
  kernel_rfl

theorem output1000_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1000 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_457 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1000_def]
  kernel_rfl

theorem input1001_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1001 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_788 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1001_def]
  simp only [input1000_eq, input999_eq]
  kernel_rfl

theorem output1001_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1001 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_458 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1001_def]
  simp only [output1000_eq, output999_eq]
  kernel_rfl

theorem input1002_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1002 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_785 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1002_def]
  kernel_rfl

theorem output1002_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1002 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_455 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1002_def]
  kernel_rfl

theorem input1003_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1003 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1003_def]
  kernel_rfl

theorem output1003_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1003 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1003_def]
  kernel_rfl

theorem input1004_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1004 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_780 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1004_def]
  kernel_rfl

theorem input1005_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1005 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1005_def]
  kernel_rfl

theorem output1005_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1005 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1005_def]
  kernel_rfl

theorem input1006_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1006 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_778 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1006_def]
  kernel_rfl

theorem input1007_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1007 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_779 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1007_def]
  simp only [input1006_eq, input1005_eq]
  kernel_rfl

theorem output1007_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1007 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1007_def]
  simp only [output1005_eq]

theorem input1008_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1008 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_781 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1008_def]
  simp only [input1007_eq, input1004_eq]
  kernel_rfl

theorem output1008_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1008 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1008_def]
  simp only [output1007_eq]

theorem input1009_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1009 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1009_def]
  kernel_rfl

theorem input1010_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1010 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_771 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1010_def]
  kernel_rfl

theorem input1011_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1011 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_772 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1011_def]
  simp only [input1010_eq, input1009_eq]
  kernel_rfl

theorem input1012_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1012 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_40 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1012_def]
  kernel_rfl

theorem output1012_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1012 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_28 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1012_def]
  kernel_rfl

theorem input1013_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1013 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_768 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1013_def]
  kernel_rfl

theorem output1013_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1013 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_448 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1013_def]
  kernel_rfl

theorem input1014_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1014 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_769 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1014_def]
  simp only [input1013_eq, input1012_eq]
  kernel_rfl

theorem output1014_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1014 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_449 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1014_def]
  simp only [output1013_eq, output1012_eq]
  kernel_rfl

theorem input1015_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1015 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_766 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1015_def]
  kernel_rfl

theorem output1015_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1015 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_446 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1015_def]
  kernel_rfl

theorem input1016_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1016 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_764 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1016_def]
  kernel_rfl

theorem input1017_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1017 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1017_def]
  kernel_rfl

theorem output1017_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1017 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1017_def]
  kernel_rfl

theorem input1018_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1018 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_762 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1018_def]
  kernel_rfl

theorem input1019_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1019 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_763 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1019_def]
  simp only [input1018_eq, input1017_eq]
  kernel_rfl

theorem output1019_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1019 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1019_def]
  simp only [output1017_eq]

theorem input1020_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1020 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_765 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1020_def]
  simp only [input1019_eq, input1016_eq]
  kernel_rfl

theorem output1020_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1020 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1020_def]
  simp only [output1019_eq]

theorem input1021_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1021 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_767 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1021_def]
  simp only [input1020_eq, input1015_eq]
  kernel_rfl

theorem output1021_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1021 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_447 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1021_def]
  simp only [output1020_eq, output1015_eq]
  kernel_rfl

theorem input1022_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1022 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_770 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1022_def]
  simp only [input1021_eq, input1014_eq]
  kernel_rfl

theorem output1022_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1022 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_450 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1022_def]
  simp only [output1021_eq, output1014_eq]
  kernel_rfl

theorem input1023_eq : InitECandidate.Proofs.DeadStages79.Parallel.input1023 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_773 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input1023_def]
  simp only [input1022_eq, input1011_eq]
  kernel_rfl

theorem output1023_eq : InitECandidate.Proofs.DeadStages79.Parallel.output1023 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_450 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output1023_def]
  simp only [output1022_eq]

#print axioms output1023_eq
end InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
