import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages646.Parallel.Data.Chunk010
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages646.Parallel
@[irreducible, cbv_opaque] def input2816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2815 input1606)).val
theorem input2816_def : input2816 = (.seq input2815 input1606) := by
  unfold input2816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2815 output1606)).val
theorem output2816_def : output2816 = (.seq output2815 output1606) := by
  unfold output2816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2816_skip : Flapjack.WordAlloc.isSkip output2816 = false := by
  rw [output2816_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2816 input1601)).val
theorem input2817_def : input2817 = (.seq input2816 input1601) := by
  unfold input2817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2816 output1601)).val
theorem output2817_def : output2817 = (.seq output2816 output1601) := by
  unfold output2817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2817_skip : Flapjack.WordAlloc.isSkip output2817 = false := by
  rw [output2817_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2817 input1600)).val
theorem input2818_def : input2818 = (.seq input2817 input1600) := by
  unfold input2818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2817 output1600)).val
theorem output2818_def : output2818 = (.seq output2817 output1600) := by
  unfold output2818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2818_skip : Flapjack.WordAlloc.isSkip output2818 = false := by
  rw [output2818_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2818 input1591)).val
theorem input2819_def : input2819 = (.seq input2818 input1591) := by
  unfold input2819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2818 output1591)).val
theorem output2819_def : output2819 = (.seq output2818 output1591) := by
  unfold output2819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2819_skip : Flapjack.WordAlloc.isSkip output2819 = false := by
  rw [output2819_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2819 input1590)).val
theorem input2820_def : input2820 = (.seq input2819 input1590) := by
  unfold input2820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2819 output1590)).val
theorem output2820_def : output2820 = (.seq output2819 output1590) := by
  unfold output2820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2820_skip : Flapjack.WordAlloc.isSkip output2820 = false := by
  rw [output2820_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2820 input1583)).val
theorem input2821_def : input2821 = (.seq input2820 input1583) := by
  unfold input2821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2820 output1583)).val
theorem output2821_def : output2821 = (.seq output2820 output1583) := by
  unfold output2821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2821_skip : Flapjack.WordAlloc.isSkip output2821 = false := by
  rw [output2821_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2821 input1582)).val
theorem input2822_def : input2822 = (.seq input2821 input1582) := by
  unfold input2822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2821 output1582)).val
theorem output2822_def : output2822 = (.seq output2821 output1582) := by
  unfold output2822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2822_skip : Flapjack.WordAlloc.isSkip output2822 = false := by
  rw [output2822_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2822 input1581)).val
theorem input2823_def : input2823 = (.seq input2822 input1581) := by
  unfold input2823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2822 output1581)).val
theorem output2823_def : output2823 = (.seq output2822 output1581) := by
  unfold output2823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2823_skip : Flapjack.WordAlloc.isSkip output2823 = false := by
  rw [output2823_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2823 input1580)).val
theorem input2824_def : input2824 = (.seq input2823 input1580) := by
  unfold input2824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2823 output1580)).val
theorem output2824_def : output2824 = (.seq output2823 output1580) := by
  unfold output2824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2824_skip : Flapjack.WordAlloc.isSkip output2824 = false := by
  rw [output2824_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2824 input1575)).val
theorem input2825_def : input2825 = (.seq input2824 input1575) := by
  unfold input2825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2824 output1575)).val
theorem output2825_def : output2825 = (.seq output2824 output1575) := by
  unfold output2825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2825_skip : Flapjack.WordAlloc.isSkip output2825 = false := by
  rw [output2825_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2825 input1574)).val
theorem input2826_def : input2826 = (.seq input2825 input1574) := by
  unfold input2826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2825 output1574)).val
theorem output2826_def : output2826 = (.seq output2825 output1574) := by
  unfold output2826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2826_skip : Flapjack.WordAlloc.isSkip output2826 = false := by
  rw [output2826_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2826 input1565)).val
theorem input2827_def : input2827 = (.seq input2826 input1565) := by
  unfold input2827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2826 output1565)).val
theorem output2827_def : output2827 = (.seq output2826 output1565) := by
  unfold output2827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2827_skip : Flapjack.WordAlloc.isSkip output2827 = false := by
  rw [output2827_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2827 input1564)).val
theorem input2828_def : input2828 = (.seq input2827 input1564) := by
  unfold input2828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2827 output1564)).val
theorem output2828_def : output2828 = (.seq output2827 output1564) := by
  unfold output2828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2828_skip : Flapjack.WordAlloc.isSkip output2828 = false := by
  rw [output2828_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2828 input1557)).val
theorem input2829_def : input2829 = (.seq input2828 input1557) := by
  unfold input2829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2828 output1557)).val
theorem output2829_def : output2829 = (.seq output2828 output1557) := by
  unfold output2829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2829_skip : Flapjack.WordAlloc.isSkip output2829 = false := by
  rw [output2829_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2829 input1556)).val
theorem input2830_def : input2830 = (.seq input2829 input1556) := by
  unfold input2830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2829 output1556)).val
theorem output2830_def : output2830 = (.seq output2829 output1556) := by
  unfold output2830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2830_skip : Flapjack.WordAlloc.isSkip output2830 = false := by
  rw [output2830_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2830 input1555)).val
theorem input2831_def : input2831 = (.seq input2830 input1555) := by
  unfold input2831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2830 output1555)).val
theorem output2831_def : output2831 = (.seq output2830 output1555) := by
  unfold output2831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2831_skip : Flapjack.WordAlloc.isSkip output2831 = false := by
  rw [output2831_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2831 input1554)).val
theorem input2832_def : input2832 = (.seq input2831 input1554) := by
  unfold input2832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2831 output1554)).val
theorem output2832_def : output2832 = (.seq output2831 output1554) := by
  unfold output2832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2832_skip : Flapjack.WordAlloc.isSkip output2832 = false := by
  rw [output2832_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2832 input1549)).val
theorem input2833_def : input2833 = (.seq input2832 input1549) := by
  unfold input2833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2832 output1549)).val
theorem output2833_def : output2833 = (.seq output2832 output1549) := by
  unfold output2833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2833_skip : Flapjack.WordAlloc.isSkip output2833 = false := by
  rw [output2833_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2833 input1548)).val
theorem input2834_def : input2834 = (.seq input2833 input1548) := by
  unfold input2834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2833 output1548)).val
theorem output2834_def : output2834 = (.seq output2833 output1548) := by
  unfold output2834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2834_skip : Flapjack.WordAlloc.isSkip output2834 = false := by
  rw [output2834_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2834 input1539)).val
theorem input2835_def : input2835 = (.seq input2834 input1539) := by
  unfold input2835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2834 output1539)).val
theorem output2835_def : output2835 = (.seq output2834 output1539) := by
  unfold output2835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2835_skip : Flapjack.WordAlloc.isSkip output2835 = false := by
  rw [output2835_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2835 input1538)).val
theorem input2836_def : input2836 = (.seq input2835 input1538) := by
  unfold input2836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2835 output1538)).val
theorem output2836_def : output2836 = (.seq output2835 output1538) := by
  unfold output2836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2836_skip : Flapjack.WordAlloc.isSkip output2836 = false := by
  rw [output2836_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2836 input1531)).val
theorem input2837_def : input2837 = (.seq input2836 input1531) := by
  unfold input2837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2836 output1531)).val
theorem output2837_def : output2837 = (.seq output2836 output1531) := by
  unfold output2837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2837_skip : Flapjack.WordAlloc.isSkip output2837 = false := by
  rw [output2837_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2837 input1530)).val
theorem input2838_def : input2838 = (.seq input2837 input1530) := by
  unfold input2838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2837 output1530)).val
theorem output2838_def : output2838 = (.seq output2837 output1530) := by
  unfold output2838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2838_skip : Flapjack.WordAlloc.isSkip output2838 = false := by
  rw [output2838_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2838 input1529)).val
theorem input2839_def : input2839 = (.seq input2838 input1529) := by
  unfold input2839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2838 output1529)).val
theorem output2839_def : output2839 = (.seq output2838 output1529) := by
  unfold output2839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2839_skip : Flapjack.WordAlloc.isSkip output2839 = false := by
  rw [output2839_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2839 input1528)).val
theorem input2840_def : input2840 = (.seq input2839 input1528) := by
  unfold input2840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2839 output1528)).val
theorem output2840_def : output2840 = (.seq output2839 output1528) := by
  unfold output2840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2840_skip : Flapjack.WordAlloc.isSkip output2840 = false := by
  rw [output2840_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2840 input1523)).val
theorem input2841_def : input2841 = (.seq input2840 input1523) := by
  unfold input2841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2840 output1523)).val
theorem output2841_def : output2841 = (.seq output2840 output1523) := by
  unfold output2841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2841_skip : Flapjack.WordAlloc.isSkip output2841 = false := by
  rw [output2841_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2841 input1522)).val
theorem input2842_def : input2842 = (.seq input2841 input1522) := by
  unfold input2842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2841 output1522)).val
theorem output2842_def : output2842 = (.seq output2841 output1522) := by
  unfold output2842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2842_skip : Flapjack.WordAlloc.isSkip output2842 = false := by
  rw [output2842_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2842 input1513)).val
theorem input2843_def : input2843 = (.seq input2842 input1513) := by
  unfold input2843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2842 output1513)).val
theorem output2843_def : output2843 = (.seq output2842 output1513) := by
  unfold output2843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2843_skip : Flapjack.WordAlloc.isSkip output2843 = false := by
  rw [output2843_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2843 input1512)).val
theorem input2844_def : input2844 = (.seq input2843 input1512) := by
  unfold input2844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2843 output1512)).val
theorem output2844_def : output2844 = (.seq output2843 output1512) := by
  unfold output2844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2844_skip : Flapjack.WordAlloc.isSkip output2844 = false := by
  rw [output2844_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2844 input1505)).val
theorem input2845_def : input2845 = (.seq input2844 input1505) := by
  unfold input2845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2844 output1505)).val
theorem output2845_def : output2845 = (.seq output2844 output1505) := by
  unfold output2845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2845_skip : Flapjack.WordAlloc.isSkip output2845 = false := by
  rw [output2845_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2845 input1504)).val
theorem input2846_def : input2846 = (.seq input2845 input1504) := by
  unfold input2846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2845 output1504)).val
theorem output2846_def : output2846 = (.seq output2845 output1504) := by
  unfold output2846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2846_skip : Flapjack.WordAlloc.isSkip output2846 = false := by
  rw [output2846_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2846 input1503)).val
theorem input2847_def : input2847 = (.seq input2846 input1503) := by
  unfold input2847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2846 output1503)).val
theorem output2847_def : output2847 = (.seq output2846 output1503) := by
  unfold output2847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2847_skip : Flapjack.WordAlloc.isSkip output2847 = false := by
  rw [output2847_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2847 input1502)).val
theorem input2848_def : input2848 = (.seq input2847 input1502) := by
  unfold input2848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2847 output1502)).val
theorem output2848_def : output2848 = (.seq output2847 output1502) := by
  unfold output2848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2848_skip : Flapjack.WordAlloc.isSkip output2848 = false := by
  rw [output2848_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2848 input1497)).val
theorem input2849_def : input2849 = (.seq input2848 input1497) := by
  unfold input2849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2848 output1497)).val
theorem output2849_def : output2849 = (.seq output2848 output1497) := by
  unfold output2849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2849_skip : Flapjack.WordAlloc.isSkip output2849 = false := by
  rw [output2849_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2849 input1496)).val
theorem input2850_def : input2850 = (.seq input2849 input1496) := by
  unfold input2850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2849 output1496)).val
theorem output2850_def : output2850 = (.seq output2849 output1496) := by
  unfold output2850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2850_skip : Flapjack.WordAlloc.isSkip output2850 = false := by
  rw [output2850_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2850 input1487)).val
theorem input2851_def : input2851 = (.seq input2850 input1487) := by
  unfold input2851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2850 output1487)).val
theorem output2851_def : output2851 = (.seq output2850 output1487) := by
  unfold output2851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2851_skip : Flapjack.WordAlloc.isSkip output2851 = false := by
  rw [output2851_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2851 input1486)).val
theorem input2852_def : input2852 = (.seq input2851 input1486) := by
  unfold input2852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2851 output1486)).val
theorem output2852_def : output2852 = (.seq output2851 output1486) := by
  unfold output2852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2852_skip : Flapjack.WordAlloc.isSkip output2852 = false := by
  rw [output2852_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2852 input1479)).val
theorem input2853_def : input2853 = (.seq input2852 input1479) := by
  unfold input2853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2852 output1479)).val
theorem output2853_def : output2853 = (.seq output2852 output1479) := by
  unfold output2853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2853_skip : Flapjack.WordAlloc.isSkip output2853 = false := by
  rw [output2853_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2853 input1478)).val
theorem input2854_def : input2854 = (.seq input2853 input1478) := by
  unfold input2854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2853 output1478)).val
theorem output2854_def : output2854 = (.seq output2853 output1478) := by
  unfold output2854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2854_skip : Flapjack.WordAlloc.isSkip output2854 = false := by
  rw [output2854_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2854 input1477)).val
theorem input2855_def : input2855 = (.seq input2854 input1477) := by
  unfold input2855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2854 output1477)).val
theorem output2855_def : output2855 = (.seq output2854 output1477) := by
  unfold output2855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2855_skip : Flapjack.WordAlloc.isSkip output2855 = false := by
  rw [output2855_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2855 input1476)).val
theorem input2856_def : input2856 = (.seq input2855 input1476) := by
  unfold input2856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2855 output1476)).val
theorem output2856_def : output2856 = (.seq output2855 output1476) := by
  unfold output2856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2856_skip : Flapjack.WordAlloc.isSkip output2856 = false := by
  rw [output2856_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2856 input1471)).val
theorem input2857_def : input2857 = (.seq input2856 input1471) := by
  unfold input2857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2856 output1471)).val
theorem output2857_def : output2857 = (.seq output2856 output1471) := by
  unfold output2857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2857_skip : Flapjack.WordAlloc.isSkip output2857 = false := by
  rw [output2857_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2857 input1470)).val
theorem input2858_def : input2858 = (.seq input2857 input1470) := by
  unfold input2858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2857 output1470)).val
theorem output2858_def : output2858 = (.seq output2857 output1470) := by
  unfold output2858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2858_skip : Flapjack.WordAlloc.isSkip output2858 = false := by
  rw [output2858_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2858 input1461)).val
theorem input2859_def : input2859 = (.seq input2858 input1461) := by
  unfold input2859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2858 output1461)).val
theorem output2859_def : output2859 = (.seq output2858 output1461) := by
  unfold output2859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2859_skip : Flapjack.WordAlloc.isSkip output2859 = false := by
  rw [output2859_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2859 input1460)).val
theorem input2860_def : input2860 = (.seq input2859 input1460) := by
  unfold input2860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2859 output1460)).val
theorem output2860_def : output2860 = (.seq output2859 output1460) := by
  unfold output2860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2860_skip : Flapjack.WordAlloc.isSkip output2860 = false := by
  rw [output2860_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2860 input1453)).val
theorem input2861_def : input2861 = (.seq input2860 input1453) := by
  unfold input2861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2860 output1453)).val
theorem output2861_def : output2861 = (.seq output2860 output1453) := by
  unfold output2861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2861_skip : Flapjack.WordAlloc.isSkip output2861 = false := by
  rw [output2861_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2861 input1452)).val
theorem input2862_def : input2862 = (.seq input2861 input1452) := by
  unfold input2862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2861 output1452)).val
theorem output2862_def : output2862 = (.seq output2861 output1452) := by
  unfold output2862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2862_skip : Flapjack.WordAlloc.isSkip output2862 = false := by
  rw [output2862_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2862 input1447)).val
theorem input2863_def : input2863 = (.seq input2862 input1447) := by
  unfold input2863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2862 output1447)).val
theorem output2863_def : output2863 = (.seq output2862 output1447) := by
  unfold output2863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2863_skip : Flapjack.WordAlloc.isSkip output2863 = false := by
  rw [output2863_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2863 input1442)).val
theorem input2864_def : input2864 = (.seq input2863 input1442) := by
  unfold input2864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2863 output1442)).val
theorem output2864_def : output2864 = (.seq output2863 output1442) := by
  unfold output2864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2864_skip : Flapjack.WordAlloc.isSkip output2864 = false := by
  rw [output2864_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2864 input1435)).val
theorem input2865_def : input2865 = (.seq input2864 input1435) := by
  unfold input2865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2864)).val
theorem output2865_def : output2865 = (output2864) := by
  unfold output2865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2865_skip : Flapjack.WordAlloc.isSkip output2865 = false := by
  rw [output2865_def]
  exact output2864_skip


@[irreducible, cbv_opaque] def input2866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2865 input1434)).val
theorem input2866_def : input2866 = (.seq input2865 input1434) := by
  unfold input2866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2865)).val
theorem output2866_def : output2866 = (output2865) := by
  unfold output2866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2866_skip : Flapjack.WordAlloc.isSkip output2866 = false := by
  rw [output2866_def]
  exact output2865_skip


@[irreducible, cbv_opaque] def input2867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2866 input1433)).val
theorem input2867_def : input2867 = (.seq input2866 input1433) := by
  unfold input2867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2866 output1433)).val
theorem output2867_def : output2867 = (.seq output2866 output1433) := by
  unfold output2867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2867_skip : Flapjack.WordAlloc.isSkip output2867 = false := by
  rw [output2867_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2867 input1432)).val
theorem input2868_def : input2868 = (.seq input2867 input1432) := by
  unfold input2868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2867 output1432)).val
theorem output2868_def : output2868 = (.seq output2867 output1432) := by
  unfold output2868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2868_skip : Flapjack.WordAlloc.isSkip output2868 = false := by
  rw [output2868_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2868 input1431)).val
theorem input2869_def : input2869 = (.seq input2868 input1431) := by
  unfold input2869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2868 output1431)).val
theorem output2869_def : output2869 = (.seq output2868 output1431) := by
  unfold output2869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2869_skip : Flapjack.WordAlloc.isSkip output2869 = false := by
  rw [output2869_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2869 input1426)).val
theorem input2870_def : input2870 = (.seq input2869 input1426) := by
  unfold input2870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2869 output1426)).val
theorem output2870_def : output2870 = (.seq output2869 output1426) := by
  unfold output2870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2870_skip : Flapjack.WordAlloc.isSkip output2870 = false := by
  rw [output2870_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2870 input1425)).val
theorem input2871_def : input2871 = (.seq input2870 input1425) := by
  unfold input2871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2870 output1425)).val
theorem output2871_def : output2871 = (.seq output2870 output1425) := by
  unfold output2871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2871_skip : Flapjack.WordAlloc.isSkip output2871 = false := by
  rw [output2871_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2871 input1420)).val
theorem input2872_def : input2872 = (.seq input2871 input1420) := by
  unfold input2872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2871 output1420)).val
theorem output2872_def : output2872 = (.seq output2871 output1420) := by
  unfold output2872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2872_skip : Flapjack.WordAlloc.isSkip output2872 = false := by
  rw [output2872_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2872 input1419)).val
theorem input2873_def : input2873 = (.seq input2872 input1419) := by
  unfold input2873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2872 output1419)).val
theorem output2873_def : output2873 = (.seq output2872 output1419) := by
  unfold output2873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2873_skip : Flapjack.WordAlloc.isSkip output2873 = false := by
  rw [output2873_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2873 input1416)).val
theorem input2874_def : input2874 = (.seq input2873 input1416) := by
  unfold input2874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2873 output1416)).val
theorem output2874_def : output2874 = (.seq output2873 output1416) := by
  unfold output2874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2874_skip : Flapjack.WordAlloc.isSkip output2874 = false := by
  rw [output2874_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2874 input1415)).val
theorem input2875_def : input2875 = (.seq input2874 input1415) := by
  unfold input2875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2874 output1415)).val
theorem output2875_def : output2875 = (.seq output2874 output1415) := by
  unfold output2875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2875_skip : Flapjack.WordAlloc.isSkip output2875 = false := by
  rw [output2875_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2875 input1414)).val
theorem input2876_def : input2876 = (.seq input2875 input1414) := by
  unfold input2876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2875 output1414)).val
theorem output2876_def : output2876 = (.seq output2875 output1414) := by
  unfold output2876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2876_skip : Flapjack.WordAlloc.isSkip output2876 = false := by
  rw [output2876_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2876 input1413)).val
theorem input2877_def : input2877 = (.seq input2876 input1413) := by
  unfold input2877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2876 output1413)).val
theorem output2877_def : output2877 = (.seq output2876 output1413) := by
  unfold output2877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2877_skip : Flapjack.WordAlloc.isSkip output2877 = false := by
  rw [output2877_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2877 input1408)).val
theorem input2878_def : input2878 = (.seq input2877 input1408) := by
  unfold input2878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2877 output1408)).val
theorem output2878_def : output2878 = (.seq output2877 output1408) := by
  unfold output2878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2878_skip : Flapjack.WordAlloc.isSkip output2878 = false := by
  rw [output2878_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2878 input1407)).val
theorem input2879_def : input2879 = (.seq input2878 input1407) := by
  unfold input2879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2878 output1407)).val
theorem output2879_def : output2879 = (.seq output2878 output1407) := by
  unfold output2879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2879_skip : Flapjack.WordAlloc.isSkip output2879 = false := by
  rw [output2879_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2879 input1398)).val
theorem input2880_def : input2880 = (.seq input2879 input1398) := by
  unfold input2880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2879 output1398)).val
theorem output2880_def : output2880 = (.seq output2879 output1398) := by
  unfold output2880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2880_skip : Flapjack.WordAlloc.isSkip output2880 = false := by
  rw [output2880_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2880 input1397)).val
theorem input2881_def : input2881 = (.seq input2880 input1397) := by
  unfold input2881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2880 output1397)).val
theorem output2881_def : output2881 = (.seq output2880 output1397) := by
  unfold output2881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2881_skip : Flapjack.WordAlloc.isSkip output2881 = false := by
  rw [output2881_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2881 input1390)).val
theorem input2882_def : input2882 = (.seq input2881 input1390) := by
  unfold input2882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2881 output1390)).val
theorem output2882_def : output2882 = (.seq output2881 output1390) := by
  unfold output2882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2882_skip : Flapjack.WordAlloc.isSkip output2882 = false := by
  rw [output2882_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2882 input1389)).val
theorem input2883_def : input2883 = (.seq input2882 input1389) := by
  unfold input2883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2882 output1389)).val
theorem output2883_def : output2883 = (.seq output2882 output1389) := by
  unfold output2883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2883_skip : Flapjack.WordAlloc.isSkip output2883 = false := by
  rw [output2883_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2883 input1388)).val
theorem input2884_def : input2884 = (.seq input2883 input1388) := by
  unfold input2884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2883 output1388)).val
theorem output2884_def : output2884 = (.seq output2883 output1388) := by
  unfold output2884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2884_skip : Flapjack.WordAlloc.isSkip output2884 = false := by
  rw [output2884_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2884 input1387)).val
theorem input2885_def : input2885 = (.seq input2884 input1387) := by
  unfold input2885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2884 output1387)).val
theorem output2885_def : output2885 = (.seq output2884 output1387) := by
  unfold output2885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2885_skip : Flapjack.WordAlloc.isSkip output2885 = false := by
  rw [output2885_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2885 input1382)).val
theorem input2886_def : input2886 = (.seq input2885 input1382) := by
  unfold input2886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2885 output1382)).val
theorem output2886_def : output2886 = (.seq output2885 output1382) := by
  unfold output2886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2886_skip : Flapjack.WordAlloc.isSkip output2886 = false := by
  rw [output2886_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2886 input1381)).val
theorem input2887_def : input2887 = (.seq input2886 input1381) := by
  unfold input2887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2886 output1381)).val
theorem output2887_def : output2887 = (.seq output2886 output1381) := by
  unfold output2887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2887_skip : Flapjack.WordAlloc.isSkip output2887 = false := by
  rw [output2887_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2887 input1372)).val
theorem input2888_def : input2888 = (.seq input2887 input1372) := by
  unfold input2888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2887 output1372)).val
theorem output2888_def : output2888 = (.seq output2887 output1372) := by
  unfold output2888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2888_skip : Flapjack.WordAlloc.isSkip output2888 = false := by
  rw [output2888_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2888 input1371)).val
theorem input2889_def : input2889 = (.seq input2888 input1371) := by
  unfold input2889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2888 output1371)).val
theorem output2889_def : output2889 = (.seq output2888 output1371) := by
  unfold output2889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2889_skip : Flapjack.WordAlloc.isSkip output2889 = false := by
  rw [output2889_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2889 input1364)).val
theorem input2890_def : input2890 = (.seq input2889 input1364) := by
  unfold input2890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2889 output1364)).val
theorem output2890_def : output2890 = (.seq output2889 output1364) := by
  unfold output2890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2890_skip : Flapjack.WordAlloc.isSkip output2890 = false := by
  rw [output2890_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2890 input1363)).val
theorem input2891_def : input2891 = (.seq input2890 input1363) := by
  unfold input2891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2890 output1363)).val
theorem output2891_def : output2891 = (.seq output2890 output1363) := by
  unfold output2891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2891_skip : Flapjack.WordAlloc.isSkip output2891 = false := by
  rw [output2891_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2891 input1362)).val
theorem input2892_def : input2892 = (.seq input2891 input1362) := by
  unfold input2892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2891 output1362)).val
theorem output2892_def : output2892 = (.seq output2891 output1362) := by
  unfold output2892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2892_skip : Flapjack.WordAlloc.isSkip output2892 = false := by
  rw [output2892_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2892 input1361)).val
theorem input2893_def : input2893 = (.seq input2892 input1361) := by
  unfold input2893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2892 output1361)).val
theorem output2893_def : output2893 = (.seq output2892 output1361) := by
  unfold output2893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2893_skip : Flapjack.WordAlloc.isSkip output2893 = false := by
  rw [output2893_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2893 input1356)).val
theorem input2894_def : input2894 = (.seq input2893 input1356) := by
  unfold input2894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2893 output1356)).val
theorem output2894_def : output2894 = (.seq output2893 output1356) := by
  unfold output2894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2894_skip : Flapjack.WordAlloc.isSkip output2894 = false := by
  rw [output2894_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2894 input1355)).val
theorem input2895_def : input2895 = (.seq input2894 input1355) := by
  unfold input2895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2894 output1355)).val
theorem output2895_def : output2895 = (.seq output2894 output1355) := by
  unfold output2895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2895_skip : Flapjack.WordAlloc.isSkip output2895 = false := by
  rw [output2895_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2895 input1346)).val
theorem input2896_def : input2896 = (.seq input2895 input1346) := by
  unfold input2896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2895 output1346)).val
theorem output2896_def : output2896 = (.seq output2895 output1346) := by
  unfold output2896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2896_skip : Flapjack.WordAlloc.isSkip output2896 = false := by
  rw [output2896_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2896 input1345)).val
theorem input2897_def : input2897 = (.seq input2896 input1345) := by
  unfold input2897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2896 output1345)).val
theorem output2897_def : output2897 = (.seq output2896 output1345) := by
  unfold output2897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2897_skip : Flapjack.WordAlloc.isSkip output2897 = false := by
  rw [output2897_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2897 input1338)).val
theorem input2898_def : input2898 = (.seq input2897 input1338) := by
  unfold input2898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2897 output1338)).val
theorem output2898_def : output2898 = (.seq output2897 output1338) := by
  unfold output2898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2898_skip : Flapjack.WordAlloc.isSkip output2898 = false := by
  rw [output2898_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2898 input1337)).val
theorem input2899_def : input2899 = (.seq input2898 input1337) := by
  unfold input2899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2898 output1337)).val
theorem output2899_def : output2899 = (.seq output2898 output1337) := by
  unfold output2899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2899_skip : Flapjack.WordAlloc.isSkip output2899 = false := by
  rw [output2899_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2899 input1336)).val
theorem input2900_def : input2900 = (.seq input2899 input1336) := by
  unfold input2900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2899 output1336)).val
theorem output2900_def : output2900 = (.seq output2899 output1336) := by
  unfold output2900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2900_skip : Flapjack.WordAlloc.isSkip output2900 = false := by
  rw [output2900_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2900 input1335)).val
theorem input2901_def : input2901 = (.seq input2900 input1335) := by
  unfold input2901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2900 output1335)).val
theorem output2901_def : output2901 = (.seq output2900 output1335) := by
  unfold output2901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2901_skip : Flapjack.WordAlloc.isSkip output2901 = false := by
  rw [output2901_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2901 input1330)).val
theorem input2902_def : input2902 = (.seq input2901 input1330) := by
  unfold input2902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2901 output1330)).val
theorem output2902_def : output2902 = (.seq output2901 output1330) := by
  unfold output2902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2902_skip : Flapjack.WordAlloc.isSkip output2902 = false := by
  rw [output2902_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2902 input1329)).val
theorem input2903_def : input2903 = (.seq input2902 input1329) := by
  unfold input2903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2902 output1329)).val
theorem output2903_def : output2903 = (.seq output2902 output1329) := by
  unfold output2903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2903_skip : Flapjack.WordAlloc.isSkip output2903 = false := by
  rw [output2903_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2903 input1320)).val
theorem input2904_def : input2904 = (.seq input2903 input1320) := by
  unfold input2904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2903 output1320)).val
theorem output2904_def : output2904 = (.seq output2903 output1320) := by
  unfold output2904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2904_skip : Flapjack.WordAlloc.isSkip output2904 = false := by
  rw [output2904_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2904 input1319)).val
theorem input2905_def : input2905 = (.seq input2904 input1319) := by
  unfold input2905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2904 output1319)).val
theorem output2905_def : output2905 = (.seq output2904 output1319) := by
  unfold output2905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2905_skip : Flapjack.WordAlloc.isSkip output2905 = false := by
  rw [output2905_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2905 input1312)).val
theorem input2906_def : input2906 = (.seq input2905 input1312) := by
  unfold input2906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2905 output1312)).val
theorem output2906_def : output2906 = (.seq output2905 output1312) := by
  unfold output2906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2906_skip : Flapjack.WordAlloc.isSkip output2906 = false := by
  rw [output2906_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2906 input1311)).val
theorem input2907_def : input2907 = (.seq input2906 input1311) := by
  unfold input2907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2906 output1311)).val
theorem output2907_def : output2907 = (.seq output2906 output1311) := by
  unfold output2907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2907_skip : Flapjack.WordAlloc.isSkip output2907 = false := by
  rw [output2907_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2907 input1310)).val
theorem input2908_def : input2908 = (.seq input2907 input1310) := by
  unfold input2908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2907 output1310)).val
theorem output2908_def : output2908 = (.seq output2907 output1310) := by
  unfold output2908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2908_skip : Flapjack.WordAlloc.isSkip output2908 = false := by
  rw [output2908_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2908 input1309)).val
theorem input2909_def : input2909 = (.seq input2908 input1309) := by
  unfold input2909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2908 output1309)).val
theorem output2909_def : output2909 = (.seq output2908 output1309) := by
  unfold output2909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2909_skip : Flapjack.WordAlloc.isSkip output2909 = false := by
  rw [output2909_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2909 input1304)).val
theorem input2910_def : input2910 = (.seq input2909 input1304) := by
  unfold input2910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2909 output1304)).val
theorem output2910_def : output2910 = (.seq output2909 output1304) := by
  unfold output2910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2910_skip : Flapjack.WordAlloc.isSkip output2910 = false := by
  rw [output2910_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2910 input1303)).val
theorem input2911_def : input2911 = (.seq input2910 input1303) := by
  unfold input2911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2910 output1303)).val
theorem output2911_def : output2911 = (.seq output2910 output1303) := by
  unfold output2911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2911_skip : Flapjack.WordAlloc.isSkip output2911 = false := by
  rw [output2911_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2911 input1294)).val
theorem input2912_def : input2912 = (.seq input2911 input1294) := by
  unfold input2912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2911 output1294)).val
theorem output2912_def : output2912 = (.seq output2911 output1294) := by
  unfold output2912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2912_skip : Flapjack.WordAlloc.isSkip output2912 = false := by
  rw [output2912_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2912 input1293)).val
theorem input2913_def : input2913 = (.seq input2912 input1293) := by
  unfold input2913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2912 output1293)).val
theorem output2913_def : output2913 = (.seq output2912 output1293) := by
  unfold output2913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2913_skip : Flapjack.WordAlloc.isSkip output2913 = false := by
  rw [output2913_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2913 input1286)).val
theorem input2914_def : input2914 = (.seq input2913 input1286) := by
  unfold input2914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2913 output1286)).val
theorem output2914_def : output2914 = (.seq output2913 output1286) := by
  unfold output2914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2914_skip : Flapjack.WordAlloc.isSkip output2914 = false := by
  rw [output2914_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2914 input1285)).val
theorem input2915_def : input2915 = (.seq input2914 input1285) := by
  unfold input2915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2914 output1285)).val
theorem output2915_def : output2915 = (.seq output2914 output1285) := by
  unfold output2915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2915_skip : Flapjack.WordAlloc.isSkip output2915 = false := by
  rw [output2915_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2915 input1284)).val
theorem input2916_def : input2916 = (.seq input2915 input1284) := by
  unfold input2916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2915 output1284)).val
theorem output2916_def : output2916 = (.seq output2915 output1284) := by
  unfold output2916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2916_skip : Flapjack.WordAlloc.isSkip output2916 = false := by
  rw [output2916_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2916 input1283)).val
theorem input2917_def : input2917 = (.seq input2916 input1283) := by
  unfold input2917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2916 output1283)).val
theorem output2917_def : output2917 = (.seq output2916 output1283) := by
  unfold output2917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2917_skip : Flapjack.WordAlloc.isSkip output2917 = false := by
  rw [output2917_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2917 input1278)).val
theorem input2918_def : input2918 = (.seq input2917 input1278) := by
  unfold input2918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2917 output1278)).val
theorem output2918_def : output2918 = (.seq output2917 output1278) := by
  unfold output2918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2918_skip : Flapjack.WordAlloc.isSkip output2918 = false := by
  rw [output2918_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2918 input1277)).val
theorem input2919_def : input2919 = (.seq input2918 input1277) := by
  unfold input2919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2918 output1277)).val
theorem output2919_def : output2919 = (.seq output2918 output1277) := by
  unfold output2919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2919_skip : Flapjack.WordAlloc.isSkip output2919 = false := by
  rw [output2919_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2919 input1268)).val
theorem input2920_def : input2920 = (.seq input2919 input1268) := by
  unfold input2920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2919 output1268)).val
theorem output2920_def : output2920 = (.seq output2919 output1268) := by
  unfold output2920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2920_skip : Flapjack.WordAlloc.isSkip output2920 = false := by
  rw [output2920_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2920 input1267)).val
theorem input2921_def : input2921 = (.seq input2920 input1267) := by
  unfold input2921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2920 output1267)).val
theorem output2921_def : output2921 = (.seq output2920 output1267) := by
  unfold output2921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2921_skip : Flapjack.WordAlloc.isSkip output2921 = false := by
  rw [output2921_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2921 input1260)).val
theorem input2922_def : input2922 = (.seq input2921 input1260) := by
  unfold input2922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2921 output1260)).val
theorem output2922_def : output2922 = (.seq output2921 output1260) := by
  unfold output2922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2922_skip : Flapjack.WordAlloc.isSkip output2922 = false := by
  rw [output2922_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2922 input1259)).val
theorem input2923_def : input2923 = (.seq input2922 input1259) := by
  unfold input2923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2922 output1259)).val
theorem output2923_def : output2923 = (.seq output2922 output1259) := by
  unfold output2923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2923_skip : Flapjack.WordAlloc.isSkip output2923 = false := by
  rw [output2923_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2923 input1254)).val
theorem input2924_def : input2924 = (.seq input2923 input1254) := by
  unfold input2924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2923 output1254)).val
theorem output2924_def : output2924 = (.seq output2923 output1254) := by
  unfold output2924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2924_skip : Flapjack.WordAlloc.isSkip output2924 = false := by
  rw [output2924_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2924 input1249)).val
theorem input2925_def : input2925 = (.seq input2924 input1249) := by
  unfold input2925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2924 output1249)).val
theorem output2925_def : output2925 = (.seq output2924 output1249) := by
  unfold output2925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2925_skip : Flapjack.WordAlloc.isSkip output2925 = false := by
  rw [output2925_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2925 input1242)).val
theorem input2926_def : input2926 = (.seq input2925 input1242) := by
  unfold input2926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2925)).val
theorem output2926_def : output2926 = (output2925) := by
  unfold output2926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2926_skip : Flapjack.WordAlloc.isSkip output2926 = false := by
  rw [output2926_def]
  exact output2925_skip


@[irreducible, cbv_opaque] def input2927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2926 input1241)).val
theorem input2927_def : input2927 = (.seq input2926 input1241) := by
  unfold input2927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2926)).val
theorem output2927_def : output2927 = (output2926) := by
  unfold output2927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2927_skip : Flapjack.WordAlloc.isSkip output2927 = false := by
  rw [output2927_def]
  exact output2926_skip


@[irreducible, cbv_opaque] def input2928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2927 input1240)).val
theorem input2928_def : input2928 = (.seq input2927 input1240) := by
  unfold input2928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2927 output1240)).val
theorem output2928_def : output2928 = (.seq output2927 output1240) := by
  unfold output2928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2928_skip : Flapjack.WordAlloc.isSkip output2928 = false := by
  rw [output2928_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2928 input1239)).val
theorem input2929_def : input2929 = (.seq input2928 input1239) := by
  unfold input2929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2928 output1239)).val
theorem output2929_def : output2929 = (.seq output2928 output1239) := by
  unfold output2929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2929_skip : Flapjack.WordAlloc.isSkip output2929 = false := by
  rw [output2929_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2929 input1238)).val
theorem input2930_def : input2930 = (.seq input2929 input1238) := by
  unfold input2930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2929 output1238)).val
theorem output2930_def : output2930 = (.seq output2929 output1238) := by
  unfold output2930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2930_skip : Flapjack.WordAlloc.isSkip output2930 = false := by
  rw [output2930_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2930 input1233)).val
theorem input2931_def : input2931 = (.seq input2930 input1233) := by
  unfold input2931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2930 output1233)).val
theorem output2931_def : output2931 = (.seq output2930 output1233) := by
  unfold output2931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2931_skip : Flapjack.WordAlloc.isSkip output2931 = false := by
  rw [output2931_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2931 input1232)).val
theorem input2932_def : input2932 = (.seq input2931 input1232) := by
  unfold input2932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2931 output1232)).val
theorem output2932_def : output2932 = (.seq output2931 output1232) := by
  unfold output2932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2932_skip : Flapjack.WordAlloc.isSkip output2932 = false := by
  rw [output2932_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2932 input1227)).val
theorem input2933_def : input2933 = (.seq input2932 input1227) := by
  unfold input2933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2932 output1227)).val
theorem output2933_def : output2933 = (.seq output2932 output1227) := by
  unfold output2933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2933_skip : Flapjack.WordAlloc.isSkip output2933 = false := by
  rw [output2933_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2933 input1226)).val
theorem input2934_def : input2934 = (.seq input2933 input1226) := by
  unfold input2934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2933 output1226)).val
theorem output2934_def : output2934 = (.seq output2933 output1226) := by
  unfold output2934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2934_skip : Flapjack.WordAlloc.isSkip output2934 = false := by
  rw [output2934_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2934 input1223)).val
theorem input2935_def : input2935 = (.seq input2934 input1223) := by
  unfold input2935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2934 output1223)).val
theorem output2935_def : output2935 = (.seq output2934 output1223) := by
  unfold output2935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2935_skip : Flapjack.WordAlloc.isSkip output2935 = false := by
  rw [output2935_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2935 input1222)).val
theorem input2936_def : input2936 = (.seq input2935 input1222) := by
  unfold input2936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2935 output1222)).val
theorem output2936_def : output2936 = (.seq output2935 output1222) := by
  unfold output2936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2936_skip : Flapjack.WordAlloc.isSkip output2936 = false := by
  rw [output2936_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2936 input1221)).val
theorem input2937_def : input2937 = (.seq input2936 input1221) := by
  unfold input2937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2936 output1221)).val
theorem output2937_def : output2937 = (.seq output2936 output1221) := by
  unfold output2937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2937_skip : Flapjack.WordAlloc.isSkip output2937 = false := by
  rw [output2937_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2937 input1220)).val
theorem input2938_def : input2938 = (.seq input2937 input1220) := by
  unfold input2938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2937 output1220)).val
theorem output2938_def : output2938 = (.seq output2937 output1220) := by
  unfold output2938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2938_skip : Flapjack.WordAlloc.isSkip output2938 = false := by
  rw [output2938_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2938 input1215)).val
theorem input2939_def : input2939 = (.seq input2938 input1215) := by
  unfold input2939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2938 output1215)).val
theorem output2939_def : output2939 = (.seq output2938 output1215) := by
  unfold output2939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2939_skip : Flapjack.WordAlloc.isSkip output2939 = false := by
  rw [output2939_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2939 input1214)).val
theorem input2940_def : input2940 = (.seq input2939 input1214) := by
  unfold input2940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2939 output1214)).val
theorem output2940_def : output2940 = (.seq output2939 output1214) := by
  unfold output2940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2940_skip : Flapjack.WordAlloc.isSkip output2940 = false := by
  rw [output2940_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2940 input1205)).val
theorem input2941_def : input2941 = (.seq input2940 input1205) := by
  unfold input2941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2940 output1205)).val
theorem output2941_def : output2941 = (.seq output2940 output1205) := by
  unfold output2941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2941_skip : Flapjack.WordAlloc.isSkip output2941 = false := by
  rw [output2941_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2941 input1204)).val
theorem input2942_def : input2942 = (.seq input2941 input1204) := by
  unfold input2942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2941 output1204)).val
theorem output2942_def : output2942 = (.seq output2941 output1204) := by
  unfold output2942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2942_skip : Flapjack.WordAlloc.isSkip output2942 = false := by
  rw [output2942_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2942 input1197)).val
theorem input2943_def : input2943 = (.seq input2942 input1197) := by
  unfold input2943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2942 output1197)).val
theorem output2943_def : output2943 = (.seq output2942 output1197) := by
  unfold output2943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2943_skip : Flapjack.WordAlloc.isSkip output2943 = false := by
  rw [output2943_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2943 input1196)).val
theorem input2944_def : input2944 = (.seq input2943 input1196) := by
  unfold input2944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2943 output1196)).val
theorem output2944_def : output2944 = (.seq output2943 output1196) := by
  unfold output2944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2944_skip : Flapjack.WordAlloc.isSkip output2944 = false := by
  rw [output2944_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2944 input1195)).val
theorem input2945_def : input2945 = (.seq input2944 input1195) := by
  unfold input2945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2944 output1195)).val
theorem output2945_def : output2945 = (.seq output2944 output1195) := by
  unfold output2945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2945_skip : Flapjack.WordAlloc.isSkip output2945 = false := by
  rw [output2945_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2945 input1194)).val
theorem input2946_def : input2946 = (.seq input2945 input1194) := by
  unfold input2946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2945 output1194)).val
theorem output2946_def : output2946 = (.seq output2945 output1194) := by
  unfold output2946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2946_skip : Flapjack.WordAlloc.isSkip output2946 = false := by
  rw [output2946_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2946 input1189)).val
theorem input2947_def : input2947 = (.seq input2946 input1189) := by
  unfold input2947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2946 output1189)).val
theorem output2947_def : output2947 = (.seq output2946 output1189) := by
  unfold output2947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2947_skip : Flapjack.WordAlloc.isSkip output2947 = false := by
  rw [output2947_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2947 input1188)).val
theorem input2948_def : input2948 = (.seq input2947 input1188) := by
  unfold input2948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2947 output1188)).val
theorem output2948_def : output2948 = (.seq output2947 output1188) := by
  unfold output2948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2948_skip : Flapjack.WordAlloc.isSkip output2948 = false := by
  rw [output2948_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2948 input1179)).val
theorem input2949_def : input2949 = (.seq input2948 input1179) := by
  unfold input2949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2948 output1179)).val
theorem output2949_def : output2949 = (.seq output2948 output1179) := by
  unfold output2949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2949_skip : Flapjack.WordAlloc.isSkip output2949 = false := by
  rw [output2949_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2949 input1178)).val
theorem input2950_def : input2950 = (.seq input2949 input1178) := by
  unfold input2950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2949 output1178)).val
theorem output2950_def : output2950 = (.seq output2949 output1178) := by
  unfold output2950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2950_skip : Flapjack.WordAlloc.isSkip output2950 = false := by
  rw [output2950_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2950 input1171)).val
theorem input2951_def : input2951 = (.seq input2950 input1171) := by
  unfold input2951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2950 output1171)).val
theorem output2951_def : output2951 = (.seq output2950 output1171) := by
  unfold output2951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2951_skip : Flapjack.WordAlloc.isSkip output2951 = false := by
  rw [output2951_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2951 input1170)).val
theorem input2952_def : input2952 = (.seq input2951 input1170) := by
  unfold input2952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2951 output1170)).val
theorem output2952_def : output2952 = (.seq output2951 output1170) := by
  unfold output2952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2952_skip : Flapjack.WordAlloc.isSkip output2952 = false := by
  rw [output2952_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2952 input1169)).val
theorem input2953_def : input2953 = (.seq input2952 input1169) := by
  unfold input2953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2952 output1169)).val
theorem output2953_def : output2953 = (.seq output2952 output1169) := by
  unfold output2953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2953_skip : Flapjack.WordAlloc.isSkip output2953 = false := by
  rw [output2953_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2953 input1168)).val
theorem input2954_def : input2954 = (.seq input2953 input1168) := by
  unfold input2954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2953 output1168)).val
theorem output2954_def : output2954 = (.seq output2953 output1168) := by
  unfold output2954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2954_skip : Flapjack.WordAlloc.isSkip output2954 = false := by
  rw [output2954_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2954 input1163)).val
theorem input2955_def : input2955 = (.seq input2954 input1163) := by
  unfold input2955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2954 output1163)).val
theorem output2955_def : output2955 = (.seq output2954 output1163) := by
  unfold output2955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2955_skip : Flapjack.WordAlloc.isSkip output2955 = false := by
  rw [output2955_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2955 input1162)).val
theorem input2956_def : input2956 = (.seq input2955 input1162) := by
  unfold input2956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2955 output1162)).val
theorem output2956_def : output2956 = (.seq output2955 output1162) := by
  unfold output2956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2956_skip : Flapjack.WordAlloc.isSkip output2956 = false := by
  rw [output2956_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2956 input1153)).val
theorem input2957_def : input2957 = (.seq input2956 input1153) := by
  unfold input2957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2956 output1153)).val
theorem output2957_def : output2957 = (.seq output2956 output1153) := by
  unfold output2957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2957_skip : Flapjack.WordAlloc.isSkip output2957 = false := by
  rw [output2957_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2957 input1152)).val
theorem input2958_def : input2958 = (.seq input2957 input1152) := by
  unfold input2958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2957 output1152)).val
theorem output2958_def : output2958 = (.seq output2957 output1152) := by
  unfold output2958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2958_skip : Flapjack.WordAlloc.isSkip output2958 = false := by
  rw [output2958_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2958 input1145)).val
theorem input2959_def : input2959 = (.seq input2958 input1145) := by
  unfold input2959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2958 output1145)).val
theorem output2959_def : output2959 = (.seq output2958 output1145) := by
  unfold output2959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2959_skip : Flapjack.WordAlloc.isSkip output2959 = false := by
  rw [output2959_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2959 input1144)).val
theorem input2960_def : input2960 = (.seq input2959 input1144) := by
  unfold input2960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2959 output1144)).val
theorem output2960_def : output2960 = (.seq output2959 output1144) := by
  unfold output2960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2960_skip : Flapjack.WordAlloc.isSkip output2960 = false := by
  rw [output2960_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2960 input1143)).val
theorem input2961_def : input2961 = (.seq input2960 input1143) := by
  unfold input2961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2960 output1143)).val
theorem output2961_def : output2961 = (.seq output2960 output1143) := by
  unfold output2961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2961_skip : Flapjack.WordAlloc.isSkip output2961 = false := by
  rw [output2961_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2961 input1142)).val
theorem input2962_def : input2962 = (.seq input2961 input1142) := by
  unfold input2962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2961 output1142)).val
theorem output2962_def : output2962 = (.seq output2961 output1142) := by
  unfold output2962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2962_skip : Flapjack.WordAlloc.isSkip output2962 = false := by
  rw [output2962_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2962 input1137)).val
theorem input2963_def : input2963 = (.seq input2962 input1137) := by
  unfold input2963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2962 output1137)).val
theorem output2963_def : output2963 = (.seq output2962 output1137) := by
  unfold output2963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2963_skip : Flapjack.WordAlloc.isSkip output2963 = false := by
  rw [output2963_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2963 input1136)).val
theorem input2964_def : input2964 = (.seq input2963 input1136) := by
  unfold input2964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2963 output1136)).val
theorem output2964_def : output2964 = (.seq output2963 output1136) := by
  unfold output2964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2964_skip : Flapjack.WordAlloc.isSkip output2964 = false := by
  rw [output2964_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2964 input1127)).val
theorem input2965_def : input2965 = (.seq input2964 input1127) := by
  unfold input2965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2964 output1127)).val
theorem output2965_def : output2965 = (.seq output2964 output1127) := by
  unfold output2965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2965_skip : Flapjack.WordAlloc.isSkip output2965 = false := by
  rw [output2965_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2965 input1126)).val
theorem input2966_def : input2966 = (.seq input2965 input1126) := by
  unfold input2966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2965 output1126)).val
theorem output2966_def : output2966 = (.seq output2965 output1126) := by
  unfold output2966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2966_skip : Flapjack.WordAlloc.isSkip output2966 = false := by
  rw [output2966_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2966 input1119)).val
theorem input2967_def : input2967 = (.seq input2966 input1119) := by
  unfold input2967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2966 output1119)).val
theorem output2967_def : output2967 = (.seq output2966 output1119) := by
  unfold output2967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2967_skip : Flapjack.WordAlloc.isSkip output2967 = false := by
  rw [output2967_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2967 input1118)).val
theorem input2968_def : input2968 = (.seq input2967 input1118) := by
  unfold input2968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2967 output1118)).val
theorem output2968_def : output2968 = (.seq output2967 output1118) := by
  unfold output2968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2968_skip : Flapjack.WordAlloc.isSkip output2968 = false := by
  rw [output2968_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2968 input1117)).val
theorem input2969_def : input2969 = (.seq input2968 input1117) := by
  unfold input2969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2968 output1117)).val
theorem output2969_def : output2969 = (.seq output2968 output1117) := by
  unfold output2969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2969_skip : Flapjack.WordAlloc.isSkip output2969 = false := by
  rw [output2969_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2969 input1116)).val
theorem input2970_def : input2970 = (.seq input2969 input1116) := by
  unfold input2970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2969 output1116)).val
theorem output2970_def : output2970 = (.seq output2969 output1116) := by
  unfold output2970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2970_skip : Flapjack.WordAlloc.isSkip output2970 = false := by
  rw [output2970_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2970 input1111)).val
theorem input2971_def : input2971 = (.seq input2970 input1111) := by
  unfold input2971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2970 output1111)).val
theorem output2971_def : output2971 = (.seq output2970 output1111) := by
  unfold output2971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2971_skip : Flapjack.WordAlloc.isSkip output2971 = false := by
  rw [output2971_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2971 input1110)).val
theorem input2972_def : input2972 = (.seq input2971 input1110) := by
  unfold input2972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2971 output1110)).val
theorem output2972_def : output2972 = (.seq output2971 output1110) := by
  unfold output2972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2972_skip : Flapjack.WordAlloc.isSkip output2972 = false := by
  rw [output2972_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2972 input1101)).val
theorem input2973_def : input2973 = (.seq input2972 input1101) := by
  unfold input2973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2972 output1101)).val
theorem output2973_def : output2973 = (.seq output2972 output1101) := by
  unfold output2973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2973_skip : Flapjack.WordAlloc.isSkip output2973 = false := by
  rw [output2973_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2973 input1100)).val
theorem input2974_def : input2974 = (.seq input2973 input1100) := by
  unfold input2974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2973 output1100)).val
theorem output2974_def : output2974 = (.seq output2973 output1100) := by
  unfold output2974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2974_skip : Flapjack.WordAlloc.isSkip output2974 = false := by
  rw [output2974_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2974 input1093)).val
theorem input2975_def : input2975 = (.seq input2974 input1093) := by
  unfold input2975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2974 output1093)).val
theorem output2975_def : output2975 = (.seq output2974 output1093) := by
  unfold output2975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2975_skip : Flapjack.WordAlloc.isSkip output2975 = false := by
  rw [output2975_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2975 input1092)).val
theorem input2976_def : input2976 = (.seq input2975 input1092) := by
  unfold input2976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2975 output1092)).val
theorem output2976_def : output2976 = (.seq output2975 output1092) := by
  unfold output2976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2976_skip : Flapjack.WordAlloc.isSkip output2976 = false := by
  rw [output2976_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2976 input1087)).val
theorem input2977_def : input2977 = (.seq input2976 input1087) := by
  unfold input2977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2976 output1087)).val
theorem output2977_def : output2977 = (.seq output2976 output1087) := by
  unfold output2977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2977_skip : Flapjack.WordAlloc.isSkip output2977 = false := by
  rw [output2977_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2977 input1082)).val
theorem input2978_def : input2978 = (.seq input2977 input1082) := by
  unfold input2978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2977 output1082)).val
theorem output2978_def : output2978 = (.seq output2977 output1082) := by
  unfold output2978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2978_skip : Flapjack.WordAlloc.isSkip output2978 = false := by
  rw [output2978_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2978 input1075)).val
theorem input2979_def : input2979 = (.seq input2978 input1075) := by
  unfold input2979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2978)).val
theorem output2979_def : output2979 = (output2978) := by
  unfold output2979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2979_skip : Flapjack.WordAlloc.isSkip output2979 = false := by
  rw [output2979_def]
  exact output2978_skip


@[irreducible, cbv_opaque] def input2980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2979 input1074)).val
theorem input2980_def : input2980 = (.seq input2979 input1074) := by
  unfold input2980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output2979)).val
theorem output2980_def : output2980 = (output2979) := by
  unfold output2980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2980_skip : Flapjack.WordAlloc.isSkip output2980 = false := by
  rw [output2980_def]
  exact output2979_skip


@[irreducible, cbv_opaque] def input2981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2980 input1073)).val
theorem input2981_def : input2981 = (.seq input2980 input1073) := by
  unfold input2981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2980 output1073)).val
theorem output2981_def : output2981 = (.seq output2980 output1073) := by
  unfold output2981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2981_skip : Flapjack.WordAlloc.isSkip output2981 = false := by
  rw [output2981_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2981 input1072)).val
theorem input2982_def : input2982 = (.seq input2981 input1072) := by
  unfold input2982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2981 output1072)).val
theorem output2982_def : output2982 = (.seq output2981 output1072) := by
  unfold output2982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2982_skip : Flapjack.WordAlloc.isSkip output2982 = false := by
  rw [output2982_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2982 input1071)).val
theorem input2983_def : input2983 = (.seq input2982 input1071) := by
  unfold input2983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2982 output1071)).val
theorem output2983_def : output2983 = (.seq output2982 output1071) := by
  unfold output2983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2983_skip : Flapjack.WordAlloc.isSkip output2983 = false := by
  rw [output2983_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2983 input1066)).val
theorem input2984_def : input2984 = (.seq input2983 input1066) := by
  unfold input2984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2983 output1066)).val
theorem output2984_def : output2984 = (.seq output2983 output1066) := by
  unfold output2984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2984_skip : Flapjack.WordAlloc.isSkip output2984 = false := by
  rw [output2984_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2984 input1065)).val
theorem input2985_def : input2985 = (.seq input2984 input1065) := by
  unfold input2985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2984 output1065)).val
theorem output2985_def : output2985 = (.seq output2984 output1065) := by
  unfold output2985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2985_skip : Flapjack.WordAlloc.isSkip output2985 = false := by
  rw [output2985_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2985 input1060)).val
theorem input2986_def : input2986 = (.seq input2985 input1060) := by
  unfold input2986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2985 output1060)).val
theorem output2986_def : output2986 = (.seq output2985 output1060) := by
  unfold output2986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2986_skip : Flapjack.WordAlloc.isSkip output2986 = false := by
  rw [output2986_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2986 input1059)).val
theorem input2987_def : input2987 = (.seq input2986 input1059) := by
  unfold input2987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2986 output1059)).val
theorem output2987_def : output2987 = (.seq output2986 output1059) := by
  unfold output2987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2987_skip : Flapjack.WordAlloc.isSkip output2987 = false := by
  rw [output2987_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2987 input1056)).val
theorem input2988_def : input2988 = (.seq input2987 input1056) := by
  unfold input2988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2987 output1056)).val
theorem output2988_def : output2988 = (.seq output2987 output1056) := by
  unfold output2988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2988_skip : Flapjack.WordAlloc.isSkip output2988 = false := by
  rw [output2988_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2988 input1055)).val
theorem input2989_def : input2989 = (.seq input2988 input1055) := by
  unfold input2989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2988 output1055)).val
theorem output2989_def : output2989 = (.seq output2988 output1055) := by
  unfold output2989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2989_skip : Flapjack.WordAlloc.isSkip output2989 = false := by
  rw [output2989_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2989 input1054)).val
theorem input2990_def : input2990 = (.seq input2989 input1054) := by
  unfold input2990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2989 output1054)).val
theorem output2990_def : output2990 = (.seq output2989 output1054) := by
  unfold output2990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2990_skip : Flapjack.WordAlloc.isSkip output2990 = false := by
  rw [output2990_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2990 input1053)).val
theorem input2991_def : input2991 = (.seq input2990 input1053) := by
  unfold input2991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2990 output1053)).val
theorem output2991_def : output2991 = (.seq output2990 output1053) := by
  unfold output2991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2991_skip : Flapjack.WordAlloc.isSkip output2991 = false := by
  rw [output2991_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2991 input1048)).val
theorem input2992_def : input2992 = (.seq input2991 input1048) := by
  unfold input2992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2991 output1048)).val
theorem output2992_def : output2992 = (.seq output2991 output1048) := by
  unfold output2992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2992_skip : Flapjack.WordAlloc.isSkip output2992 = false := by
  rw [output2992_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2992 input1047)).val
theorem input2993_def : input2993 = (.seq input2992 input1047) := by
  unfold input2993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2992 output1047)).val
theorem output2993_def : output2993 = (.seq output2992 output1047) := by
  unfold output2993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2993_skip : Flapjack.WordAlloc.isSkip output2993 = false := by
  rw [output2993_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2993 input1038)).val
theorem input2994_def : input2994 = (.seq input2993 input1038) := by
  unfold input2994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2993 output1038)).val
theorem output2994_def : output2994 = (.seq output2993 output1038) := by
  unfold output2994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2994_skip : Flapjack.WordAlloc.isSkip output2994 = false := by
  rw [output2994_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2994 input1037)).val
theorem input2995_def : input2995 = (.seq input2994 input1037) := by
  unfold input2995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2994 output1037)).val
theorem output2995_def : output2995 = (.seq output2994 output1037) := by
  unfold output2995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2995_skip : Flapjack.WordAlloc.isSkip output2995 = false := by
  rw [output2995_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2995 input1030)).val
theorem input2996_def : input2996 = (.seq input2995 input1030) := by
  unfold input2996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2995 output1030)).val
theorem output2996_def : output2996 = (.seq output2995 output1030) := by
  unfold output2996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2996_skip : Flapjack.WordAlloc.isSkip output2996 = false := by
  rw [output2996_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2996 input1029)).val
theorem input2997_def : input2997 = (.seq input2996 input1029) := by
  unfold input2997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2996 output1029)).val
theorem output2997_def : output2997 = (.seq output2996 output1029) := by
  unfold output2997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2997_skip : Flapjack.WordAlloc.isSkip output2997 = false := by
  rw [output2997_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2997 input1028)).val
theorem input2998_def : input2998 = (.seq input2997 input1028) := by
  unfold input2998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2997 output1028)).val
theorem output2998_def : output2998 = (.seq output2997 output1028) := by
  unfold output2998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2998_skip : Flapjack.WordAlloc.isSkip output2998 = false := by
  rw [output2998_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input2999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2998 input1027)).val
theorem input2999_def : input2999 = (.seq input2998 input1027) := by
  unfold input2999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output2999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2998 output1027)).val
theorem output2999_def : output2999 = (.seq output2998 output1027) := by
  unfold output2999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output2999_skip : Flapjack.WordAlloc.isSkip output2999 = false := by
  rw [output2999_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input2999 input1022)).val
theorem input3000_def : input3000 = (.seq input2999 input1022) := by
  unfold input3000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output2999 output1022)).val
theorem output3000_def : output3000 = (.seq output2999 output1022) := by
  unfold output3000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3000_skip : Flapjack.WordAlloc.isSkip output3000 = false := by
  rw [output3000_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3000 input1021)).val
theorem input3001_def : input3001 = (.seq input3000 input1021) := by
  unfold input3001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3000 output1021)).val
theorem output3001_def : output3001 = (.seq output3000 output1021) := by
  unfold output3001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3001_skip : Flapjack.WordAlloc.isSkip output3001 = false := by
  rw [output3001_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3001 input1012)).val
theorem input3002_def : input3002 = (.seq input3001 input1012) := by
  unfold input3002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3001 output1012)).val
theorem output3002_def : output3002 = (.seq output3001 output1012) := by
  unfold output3002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3002_skip : Flapjack.WordAlloc.isSkip output3002 = false := by
  rw [output3002_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3002 input1011)).val
theorem input3003_def : input3003 = (.seq input3002 input1011) := by
  unfold input3003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3002 output1011)).val
theorem output3003_def : output3003 = (.seq output3002 output1011) := by
  unfold output3003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3003_skip : Flapjack.WordAlloc.isSkip output3003 = false := by
  rw [output3003_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3003 input1004)).val
theorem input3004_def : input3004 = (.seq input3003 input1004) := by
  unfold input3004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3003 output1004)).val
theorem output3004_def : output3004 = (.seq output3003 output1004) := by
  unfold output3004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3004_skip : Flapjack.WordAlloc.isSkip output3004 = false := by
  rw [output3004_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3004 input1003)).val
theorem input3005_def : input3005 = (.seq input3004 input1003) := by
  unfold input3005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3004 output1003)).val
theorem output3005_def : output3005 = (.seq output3004 output1003) := by
  unfold output3005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3005_skip : Flapjack.WordAlloc.isSkip output3005 = false := by
  rw [output3005_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3005 input1002)).val
theorem input3006_def : input3006 = (.seq input3005 input1002) := by
  unfold input3006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3005 output1002)).val
theorem output3006_def : output3006 = (.seq output3005 output1002) := by
  unfold output3006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3006_skip : Flapjack.WordAlloc.isSkip output3006 = false := by
  rw [output3006_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3006 input1001)).val
theorem input3007_def : input3007 = (.seq input3006 input1001) := by
  unfold input3007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3006 output1001)).val
theorem output3007_def : output3007 = (.seq output3006 output1001) := by
  unfold output3007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3007_skip : Flapjack.WordAlloc.isSkip output3007 = false := by
  rw [output3007_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3007 input996)).val
theorem input3008_def : input3008 = (.seq input3007 input996) := by
  unfold input3008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3007 output996)).val
theorem output3008_def : output3008 = (.seq output3007 output996) := by
  unfold output3008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3008_skip : Flapjack.WordAlloc.isSkip output3008 = false := by
  rw [output3008_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3008 input995)).val
theorem input3009_def : input3009 = (.seq input3008 input995) := by
  unfold input3009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3008 output995)).val
theorem output3009_def : output3009 = (.seq output3008 output995) := by
  unfold output3009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3009_skip : Flapjack.WordAlloc.isSkip output3009 = false := by
  rw [output3009_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3009 input986)).val
theorem input3010_def : input3010 = (.seq input3009 input986) := by
  unfold input3010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3009 output986)).val
theorem output3010_def : output3010 = (.seq output3009 output986) := by
  unfold output3010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3010_skip : Flapjack.WordAlloc.isSkip output3010 = false := by
  rw [output3010_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3010 input985)).val
theorem input3011_def : input3011 = (.seq input3010 input985) := by
  unfold input3011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3010 output985)).val
theorem output3011_def : output3011 = (.seq output3010 output985) := by
  unfold output3011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3011_skip : Flapjack.WordAlloc.isSkip output3011 = false := by
  rw [output3011_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3011 input978)).val
theorem input3012_def : input3012 = (.seq input3011 input978) := by
  unfold input3012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3011 output978)).val
theorem output3012_def : output3012 = (.seq output3011 output978) := by
  unfold output3012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3012_skip : Flapjack.WordAlloc.isSkip output3012 = false := by
  rw [output3012_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3012 input977)).val
theorem input3013_def : input3013 = (.seq input3012 input977) := by
  unfold input3013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3012 output977)).val
theorem output3013_def : output3013 = (.seq output3012 output977) := by
  unfold output3013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3013_skip : Flapjack.WordAlloc.isSkip output3013 = false := by
  rw [output3013_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3013 input976)).val
theorem input3014_def : input3014 = (.seq input3013 input976) := by
  unfold input3014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3013 output976)).val
theorem output3014_def : output3014 = (.seq output3013 output976) := by
  unfold output3014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3014_skip : Flapjack.WordAlloc.isSkip output3014 = false := by
  rw [output3014_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3014 input975)).val
theorem input3015_def : input3015 = (.seq input3014 input975) := by
  unfold input3015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3014 output975)).val
theorem output3015_def : output3015 = (.seq output3014 output975) := by
  unfold output3015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3015_skip : Flapjack.WordAlloc.isSkip output3015 = false := by
  rw [output3015_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3015 input970)).val
theorem input3016_def : input3016 = (.seq input3015 input970) := by
  unfold input3016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3015 output970)).val
theorem output3016_def : output3016 = (.seq output3015 output970) := by
  unfold output3016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3016_skip : Flapjack.WordAlloc.isSkip output3016 = false := by
  rw [output3016_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3016 input969)).val
theorem input3017_def : input3017 = (.seq input3016 input969) := by
  unfold input3017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3016 output969)).val
theorem output3017_def : output3017 = (.seq output3016 output969) := by
  unfold output3017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3017_skip : Flapjack.WordAlloc.isSkip output3017 = false := by
  rw [output3017_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3017 input960)).val
theorem input3018_def : input3018 = (.seq input3017 input960) := by
  unfold input3018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3017 output960)).val
theorem output3018_def : output3018 = (.seq output3017 output960) := by
  unfold output3018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3018_skip : Flapjack.WordAlloc.isSkip output3018 = false := by
  rw [output3018_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3018 input959)).val
theorem input3019_def : input3019 = (.seq input3018 input959) := by
  unfold input3019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3018 output959)).val
theorem output3019_def : output3019 = (.seq output3018 output959) := by
  unfold output3019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3019_skip : Flapjack.WordAlloc.isSkip output3019 = false := by
  rw [output3019_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3019 input952)).val
theorem input3020_def : input3020 = (.seq input3019 input952) := by
  unfold input3020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3019 output952)).val
theorem output3020_def : output3020 = (.seq output3019 output952) := by
  unfold output3020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3020_skip : Flapjack.WordAlloc.isSkip output3020 = false := by
  rw [output3020_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3020 input951)).val
theorem input3021_def : input3021 = (.seq input3020 input951) := by
  unfold input3021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3020 output951)).val
theorem output3021_def : output3021 = (.seq output3020 output951) := by
  unfold output3021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3021_skip : Flapjack.WordAlloc.isSkip output3021 = false := by
  rw [output3021_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3021 input946)).val
theorem input3022_def : input3022 = (.seq input3021 input946) := by
  unfold input3022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3021 output946)).val
theorem output3022_def : output3022 = (.seq output3021 output946) := by
  unfold output3022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3022_skip : Flapjack.WordAlloc.isSkip output3022 = false := by
  rw [output3022_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3022 input941)).val
theorem input3023_def : input3023 = (.seq input3022 input941) := by
  unfold input3023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3022 output941)).val
theorem output3023_def : output3023 = (.seq output3022 output941) := by
  unfold output3023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3023_skip : Flapjack.WordAlloc.isSkip output3023 = false := by
  rw [output3023_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3023 input934)).val
theorem input3024_def : input3024 = (.seq input3023 input934) := by
  unfold input3024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3023)).val
theorem output3024_def : output3024 = (output3023) := by
  unfold output3024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3024_skip : Flapjack.WordAlloc.isSkip output3024 = false := by
  rw [output3024_def]
  exact output3023_skip


@[irreducible, cbv_opaque] def input3025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3024 input933)).val
theorem input3025_def : input3025 = (.seq input3024 input933) := by
  unfold input3025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3024)).val
theorem output3025_def : output3025 = (output3024) := by
  unfold output3025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3025_skip : Flapjack.WordAlloc.isSkip output3025 = false := by
  rw [output3025_def]
  exact output3024_skip


@[irreducible, cbv_opaque] def input3026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3025 input932)).val
theorem input3026_def : input3026 = (.seq input3025 input932) := by
  unfold input3026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3025 output932)).val
theorem output3026_def : output3026 = (.seq output3025 output932) := by
  unfold output3026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3026_skip : Flapjack.WordAlloc.isSkip output3026 = false := by
  rw [output3026_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3026 input931)).val
theorem input3027_def : input3027 = (.seq input3026 input931) := by
  unfold input3027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3026 output931)).val
theorem output3027_def : output3027 = (.seq output3026 output931) := by
  unfold output3027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3027_skip : Flapjack.WordAlloc.isSkip output3027 = false := by
  rw [output3027_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3027 input930)).val
theorem input3028_def : input3028 = (.seq input3027 input930) := by
  unfold input3028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3027 output930)).val
theorem output3028_def : output3028 = (.seq output3027 output930) := by
  unfold output3028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3028_skip : Flapjack.WordAlloc.isSkip output3028 = false := by
  rw [output3028_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3028 input925)).val
theorem input3029_def : input3029 = (.seq input3028 input925) := by
  unfold input3029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3028 output925)).val
theorem output3029_def : output3029 = (.seq output3028 output925) := by
  unfold output3029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3029_skip : Flapjack.WordAlloc.isSkip output3029 = false := by
  rw [output3029_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3029 input924)).val
theorem input3030_def : input3030 = (.seq input3029 input924) := by
  unfold input3030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3029 output924)).val
theorem output3030_def : output3030 = (.seq output3029 output924) := by
  unfold output3030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3030_skip : Flapjack.WordAlloc.isSkip output3030 = false := by
  rw [output3030_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3030 input919)).val
theorem input3031_def : input3031 = (.seq input3030 input919) := by
  unfold input3031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3030 output919)).val
theorem output3031_def : output3031 = (.seq output3030 output919) := by
  unfold output3031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3031_skip : Flapjack.WordAlloc.isSkip output3031 = false := by
  rw [output3031_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3031 input918)).val
theorem input3032_def : input3032 = (.seq input3031 input918) := by
  unfold input3032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3031 output918)).val
theorem output3032_def : output3032 = (.seq output3031 output918) := by
  unfold output3032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3032_skip : Flapjack.WordAlloc.isSkip output3032 = false := by
  rw [output3032_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3032 input915)).val
theorem input3033_def : input3033 = (.seq input3032 input915) := by
  unfold input3033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3032 output915)).val
theorem output3033_def : output3033 = (.seq output3032 output915) := by
  unfold output3033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3033_skip : Flapjack.WordAlloc.isSkip output3033 = false := by
  rw [output3033_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3033 input914)).val
theorem input3034_def : input3034 = (.seq input3033 input914) := by
  unfold input3034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3033 output914)).val
theorem output3034_def : output3034 = (.seq output3033 output914) := by
  unfold output3034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3034_skip : Flapjack.WordAlloc.isSkip output3034 = false := by
  rw [output3034_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3034 input913)).val
theorem input3035_def : input3035 = (.seq input3034 input913) := by
  unfold input3035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3034 output913)).val
theorem output3035_def : output3035 = (.seq output3034 output913) := by
  unfold output3035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3035_skip : Flapjack.WordAlloc.isSkip output3035 = false := by
  rw [output3035_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3035 input912)).val
theorem input3036_def : input3036 = (.seq input3035 input912) := by
  unfold input3036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3035 output912)).val
theorem output3036_def : output3036 = (.seq output3035 output912) := by
  unfold output3036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3036_skip : Flapjack.WordAlloc.isSkip output3036 = false := by
  rw [output3036_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3036 input907)).val
theorem input3037_def : input3037 = (.seq input3036 input907) := by
  unfold input3037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3036 output907)).val
theorem output3037_def : output3037 = (.seq output3036 output907) := by
  unfold output3037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3037_skip : Flapjack.WordAlloc.isSkip output3037 = false := by
  rw [output3037_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3037 input906)).val
theorem input3038_def : input3038 = (.seq input3037 input906) := by
  unfold input3038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3037 output906)).val
theorem output3038_def : output3038 = (.seq output3037 output906) := by
  unfold output3038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3038_skip : Flapjack.WordAlloc.isSkip output3038 = false := by
  rw [output3038_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3038 input897)).val
theorem input3039_def : input3039 = (.seq input3038 input897) := by
  unfold input3039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3038 output897)).val
theorem output3039_def : output3039 = (.seq output3038 output897) := by
  unfold output3039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3039_skip : Flapjack.WordAlloc.isSkip output3039 = false := by
  rw [output3039_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3039 input896)).val
theorem input3040_def : input3040 = (.seq input3039 input896) := by
  unfold input3040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3039 output896)).val
theorem output3040_def : output3040 = (.seq output3039 output896) := by
  unfold output3040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3040_skip : Flapjack.WordAlloc.isSkip output3040 = false := by
  rw [output3040_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3040 input889)).val
theorem input3041_def : input3041 = (.seq input3040 input889) := by
  unfold input3041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3040 output889)).val
theorem output3041_def : output3041 = (.seq output3040 output889) := by
  unfold output3041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3041_skip : Flapjack.WordAlloc.isSkip output3041 = false := by
  rw [output3041_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3041 input888)).val
theorem input3042_def : input3042 = (.seq input3041 input888) := by
  unfold input3042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3041 output888)).val
theorem output3042_def : output3042 = (.seq output3041 output888) := by
  unfold output3042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3042_skip : Flapjack.WordAlloc.isSkip output3042 = false := by
  rw [output3042_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3042 input887)).val
theorem input3043_def : input3043 = (.seq input3042 input887) := by
  unfold input3043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3042 output887)).val
theorem output3043_def : output3043 = (.seq output3042 output887) := by
  unfold output3043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3043_skip : Flapjack.WordAlloc.isSkip output3043 = false := by
  rw [output3043_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3043 input886)).val
theorem input3044_def : input3044 = (.seq input3043 input886) := by
  unfold input3044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3043 output886)).val
theorem output3044_def : output3044 = (.seq output3043 output886) := by
  unfold output3044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3044_skip : Flapjack.WordAlloc.isSkip output3044 = false := by
  rw [output3044_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3044 input881)).val
theorem input3045_def : input3045 = (.seq input3044 input881) := by
  unfold input3045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3044 output881)).val
theorem output3045_def : output3045 = (.seq output3044 output881) := by
  unfold output3045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3045_skip : Flapjack.WordAlloc.isSkip output3045 = false := by
  rw [output3045_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3045 input880)).val
theorem input3046_def : input3046 = (.seq input3045 input880) := by
  unfold input3046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3045 output880)).val
theorem output3046_def : output3046 = (.seq output3045 output880) := by
  unfold output3046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3046_skip : Flapjack.WordAlloc.isSkip output3046 = false := by
  rw [output3046_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3046 input871)).val
theorem input3047_def : input3047 = (.seq input3046 input871) := by
  unfold input3047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3046 output871)).val
theorem output3047_def : output3047 = (.seq output3046 output871) := by
  unfold output3047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3047_skip : Flapjack.WordAlloc.isSkip output3047 = false := by
  rw [output3047_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3047 input870)).val
theorem input3048_def : input3048 = (.seq input3047 input870) := by
  unfold input3048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3047 output870)).val
theorem output3048_def : output3048 = (.seq output3047 output870) := by
  unfold output3048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3048_skip : Flapjack.WordAlloc.isSkip output3048 = false := by
  rw [output3048_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3048 input863)).val
theorem input3049_def : input3049 = (.seq input3048 input863) := by
  unfold input3049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3048 output863)).val
theorem output3049_def : output3049 = (.seq output3048 output863) := by
  unfold output3049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3049_skip : Flapjack.WordAlloc.isSkip output3049 = false := by
  rw [output3049_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3049 input862)).val
theorem input3050_def : input3050 = (.seq input3049 input862) := by
  unfold input3050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3049 output862)).val
theorem output3050_def : output3050 = (.seq output3049 output862) := by
  unfold output3050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3050_skip : Flapjack.WordAlloc.isSkip output3050 = false := by
  rw [output3050_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3050 input861)).val
theorem input3051_def : input3051 = (.seq input3050 input861) := by
  unfold input3051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3050 output861)).val
theorem output3051_def : output3051 = (.seq output3050 output861) := by
  unfold output3051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3051_skip : Flapjack.WordAlloc.isSkip output3051 = false := by
  rw [output3051_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3051 input860)).val
theorem input3052_def : input3052 = (.seq input3051 input860) := by
  unfold input3052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3051 output860)).val
theorem output3052_def : output3052 = (.seq output3051 output860) := by
  unfold output3052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3052_skip : Flapjack.WordAlloc.isSkip output3052 = false := by
  rw [output3052_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3052 input855)).val
theorem input3053_def : input3053 = (.seq input3052 input855) := by
  unfold input3053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3052 output855)).val
theorem output3053_def : output3053 = (.seq output3052 output855) := by
  unfold output3053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3053_skip : Flapjack.WordAlloc.isSkip output3053 = false := by
  rw [output3053_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3053 input854)).val
theorem input3054_def : input3054 = (.seq input3053 input854) := by
  unfold input3054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3053 output854)).val
theorem output3054_def : output3054 = (.seq output3053 output854) := by
  unfold output3054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3054_skip : Flapjack.WordAlloc.isSkip output3054 = false := by
  rw [output3054_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3054 input845)).val
theorem input3055_def : input3055 = (.seq input3054 input845) := by
  unfold input3055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3054 output845)).val
theorem output3055_def : output3055 = (.seq output3054 output845) := by
  unfold output3055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3055_skip : Flapjack.WordAlloc.isSkip output3055 = false := by
  rw [output3055_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3055 input844)).val
theorem input3056_def : input3056 = (.seq input3055 input844) := by
  unfold input3056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3055 output844)).val
theorem output3056_def : output3056 = (.seq output3055 output844) := by
  unfold output3056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3056_skip : Flapjack.WordAlloc.isSkip output3056 = false := by
  rw [output3056_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3056 input837)).val
theorem input3057_def : input3057 = (.seq input3056 input837) := by
  unfold input3057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3056 output837)).val
theorem output3057_def : output3057 = (.seq output3056 output837) := by
  unfold output3057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3057_skip : Flapjack.WordAlloc.isSkip output3057 = false := by
  rw [output3057_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3057 input836)).val
theorem input3058_def : input3058 = (.seq input3057 input836) := by
  unfold input3058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3057 output836)).val
theorem output3058_def : output3058 = (.seq output3057 output836) := by
  unfold output3058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3058_skip : Flapjack.WordAlloc.isSkip output3058 = false := by
  rw [output3058_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3058 input831)).val
theorem input3059_def : input3059 = (.seq input3058 input831) := by
  unfold input3059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3058 output831)).val
theorem output3059_def : output3059 = (.seq output3058 output831) := by
  unfold output3059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3059_skip : Flapjack.WordAlloc.isSkip output3059 = false := by
  rw [output3059_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3059 input826)).val
theorem input3060_def : input3060 = (.seq input3059 input826) := by
  unfold input3060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3059 output826)).val
theorem output3060_def : output3060 = (.seq output3059 output826) := by
  unfold output3060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3060_skip : Flapjack.WordAlloc.isSkip output3060 = false := by
  rw [output3060_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3060 input819)).val
theorem input3061_def : input3061 = (.seq input3060 input819) := by
  unfold input3061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3060)).val
theorem output3061_def : output3061 = (output3060) := by
  unfold output3061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3061_skip : Flapjack.WordAlloc.isSkip output3061 = false := by
  rw [output3061_def]
  exact output3060_skip


@[irreducible, cbv_opaque] def input3062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3061 input818)).val
theorem input3062_def : input3062 = (.seq input3061 input818) := by
  unfold input3062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3061)).val
theorem output3062_def : output3062 = (output3061) := by
  unfold output3062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3062_skip : Flapjack.WordAlloc.isSkip output3062 = false := by
  rw [output3062_def]
  exact output3061_skip


@[irreducible, cbv_opaque] def input3063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3062 input817)).val
theorem input3063_def : input3063 = (.seq input3062 input817) := by
  unfold input3063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3062 output817)).val
theorem output3063_def : output3063 = (.seq output3062 output817) := by
  unfold output3063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3063_skip : Flapjack.WordAlloc.isSkip output3063 = false := by
  rw [output3063_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3063 input816)).val
theorem input3064_def : input3064 = (.seq input3063 input816) := by
  unfold input3064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3063 output816)).val
theorem output3064_def : output3064 = (.seq output3063 output816) := by
  unfold output3064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3064_skip : Flapjack.WordAlloc.isSkip output3064 = false := by
  rw [output3064_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3064 input815)).val
theorem input3065_def : input3065 = (.seq input3064 input815) := by
  unfold input3065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3064 output815)).val
theorem output3065_def : output3065 = (.seq output3064 output815) := by
  unfold output3065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3065_skip : Flapjack.WordAlloc.isSkip output3065 = false := by
  rw [output3065_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3065 input810)).val
theorem input3066_def : input3066 = (.seq input3065 input810) := by
  unfold input3066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3065 output810)).val
theorem output3066_def : output3066 = (.seq output3065 output810) := by
  unfold output3066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3066_skip : Flapjack.WordAlloc.isSkip output3066 = false := by
  rw [output3066_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3066 input809)).val
theorem input3067_def : input3067 = (.seq input3066 input809) := by
  unfold input3067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3066 output809)).val
theorem output3067_def : output3067 = (.seq output3066 output809) := by
  unfold output3067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3067_skip : Flapjack.WordAlloc.isSkip output3067 = false := by
  rw [output3067_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3067 input804)).val
theorem input3068_def : input3068 = (.seq input3067 input804) := by
  unfold input3068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3067 output804)).val
theorem output3068_def : output3068 = (.seq output3067 output804) := by
  unfold output3068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3068_skip : Flapjack.WordAlloc.isSkip output3068 = false := by
  rw [output3068_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3068 input803)).val
theorem input3069_def : input3069 = (.seq input3068 input803) := by
  unfold input3069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3068 output803)).val
theorem output3069_def : output3069 = (.seq output3068 output803) := by
  unfold output3069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3069_skip : Flapjack.WordAlloc.isSkip output3069 = false := by
  rw [output3069_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3069 input800)).val
theorem input3070_def : input3070 = (.seq input3069 input800) := by
  unfold input3070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3069 output800)).val
theorem output3070_def : output3070 = (.seq output3069 output800) := by
  unfold output3070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3070_skip : Flapjack.WordAlloc.isSkip output3070 = false := by
  rw [output3070_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input3071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3070 input799)).val
theorem input3071_def : input3071 = (.seq input3070 input799) := by
  unfold input3071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3070 output799)).val
theorem output3071_def : output3071 = (.seq output3070 output799) := by
  unfold output3071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3071_skip : Flapjack.WordAlloc.isSkip output3071 = false := by
  rw [output3071_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages646.Parallel
