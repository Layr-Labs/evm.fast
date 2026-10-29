import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk022
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node5632_cond_eq
    (child5630 : Flapjack.WordAlloc.removeDeadStructural input5630 value2820 value1 value2 = (output5630, value2821, value1))
    (child5631 : Flapjack.WordAlloc.removeDeadStructural input5631 value2821 value1 value2 = (output5631, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5632 value2820 value1 value2 = (output5632, value5, value1) := by
  rw [input5632_def, output5632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5630]
  dsimp only
  rw [child5631]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5630_skip, output5631_skip]
  kernel_rfl

theorem node5633_cond_eq
    (child5629 : Flapjack.WordAlloc.removeDeadStructural input5629 value2819 value1 value2 = (output5629, value2820, value1))
    (child5632 : Flapjack.WordAlloc.removeDeadStructural input5632 value2820 value1 value2 = (output5632, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5633 value2819 value1 value2 = (output5633, value5, value1) := by
  rw [input5633_def, output5633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5629]
  dsimp only
  rw [child5632]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5629_skip, output5632_skip]
  kernel_rfl

theorem node5634_cond_eq
    (child5628 : Flapjack.WordAlloc.removeDeadStructural input5628 value2818 value1 value2 = (output5628, value2819, value1))
    (child5633 : Flapjack.WordAlloc.removeDeadStructural input5633 value2819 value1 value2 = (output5633, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5634 value2818 value1 value2 = (output5634, value5, value1) := by
  rw [input5634_def, output5634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5628]
  dsimp only
  rw [child5633]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5628_skip, output5633_skip]
  kernel_rfl

theorem node5635_cond_eq
    (child5627 : Flapjack.WordAlloc.removeDeadStructural input5627 value2816 value1 value2 = (output5627, value2818, value1))
    (child5634 : Flapjack.WordAlloc.removeDeadStructural input5634 value2818 value1 value2 = (output5634, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5635 value2816 value1 value2 = (output5635, value5, value1) := by
  rw [input5635_def, output5635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5627]
  dsimp only
  rw [child5634]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5627_skip, output5634_skip]
  kernel_rfl

theorem node5636_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5636 value5 value1 value2 = (output5636, value2822, value1) := by
  rw [input5636_def, output5636_def]
  kernel_rfl

theorem node5637_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5637 value2822 value1 value2 = (output5637, value2823, value1) := by
  rw [input5637_def, output5637_def]
  kernel_rfl

theorem node5638_cond_eq
    (child5636 : Flapjack.WordAlloc.removeDeadStructural input5636 value5 value1 value2 = (output5636, value2822, value1))
    (child5637 : Flapjack.WordAlloc.removeDeadStructural input5637 value2822 value1 value2 = (output5637, value2823, value1)) : Flapjack.WordAlloc.removeDeadStructural input5638 value5 value1 value2 = (output5638, value2823, value1) := by
  rw [input5638_def, output5638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5636]
  dsimp only
  rw [child5637]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5636_skip, output5637_skip]
  kernel_rfl

theorem node5639_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5639 value2823 value1 value2 = (output5639, value2824, value1) := by
  rw [input5639_def, output5639_def]
  kernel_rfl

theorem node5640_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5640 value2824 value1 value2 = (output5640, value2824, value1) := by
  rw [input5640_def, output5640_def]
  kernel_rfl

theorem node5641_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5641 value2824 value1 value2 = (output5641, value2825, value1) := by
  rw [input5641_def, output5641_def]
  kernel_rfl

theorem node5642_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5642 value2825 value1 value2 = (output5642, value2826, value1) := by
  rw [input5642_def, output5642_def]
  kernel_rfl

theorem node5643_cond_eq
    (child5641 : Flapjack.WordAlloc.removeDeadStructural input5641 value2824 value1 value2 = (output5641, value2825, value1))
    (child5642 : Flapjack.WordAlloc.removeDeadStructural input5642 value2825 value1 value2 = (output5642, value2826, value1)) : Flapjack.WordAlloc.removeDeadStructural input5643 value2824 value1 value2 = (output5643, value2826, value1) := by
  rw [input5643_def, output5643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5641]
  dsimp only
  rw [child5642]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5641_skip, output5642_skip]
  kernel_rfl

theorem node5644_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5644 value2826 value1 value2 = (output5644, value2827, value1) := by
  rw [input5644_def, output5644_def]
  kernel_rfl

theorem node5645_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5645 value2827 value1 value2 = (output5645, value2828, value1) := by
  rw [input5645_def, output5645_def]
  kernel_rfl

theorem node5646_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5646 value2828 value1 value2 = (output5646, value2829, value1) := by
  rw [input5646_def, output5646_def]
  kernel_rfl

theorem node5647_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5647 value2829 value1 value2 = (output5647, value5, value1) := by
  rw [input5647_def, output5647_def]
  kernel_rfl

theorem node5648_cond_eq
    (child5646 : Flapjack.WordAlloc.removeDeadStructural input5646 value2828 value1 value2 = (output5646, value2829, value1))
    (child5647 : Flapjack.WordAlloc.removeDeadStructural input5647 value2829 value1 value2 = (output5647, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5648 value2828 value1 value2 = (output5648, value5, value1) := by
  rw [input5648_def, output5648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5646]
  dsimp only
  rw [child5647]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5646_skip, output5647_skip]
  kernel_rfl

theorem node5649_cond_eq
    (child5645 : Flapjack.WordAlloc.removeDeadStructural input5645 value2827 value1 value2 = (output5645, value2828, value1))
    (child5648 : Flapjack.WordAlloc.removeDeadStructural input5648 value2828 value1 value2 = (output5648, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5649 value2827 value1 value2 = (output5649, value5, value1) := by
  rw [input5649_def, output5649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5645]
  dsimp only
  rw [child5648]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5645_skip, output5648_skip]
  kernel_rfl

theorem node5650_cond_eq
    (child5644 : Flapjack.WordAlloc.removeDeadStructural input5644 value2826 value1 value2 = (output5644, value2827, value1))
    (child5649 : Flapjack.WordAlloc.removeDeadStructural input5649 value2827 value1 value2 = (output5649, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5650 value2826 value1 value2 = (output5650, value5, value1) := by
  rw [input5650_def, output5650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5644]
  dsimp only
  rw [child5649]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5644_skip, output5649_skip]
  kernel_rfl

theorem node5651_cond_eq
    (child5643 : Flapjack.WordAlloc.removeDeadStructural input5643 value2824 value1 value2 = (output5643, value2826, value1))
    (child5650 : Flapjack.WordAlloc.removeDeadStructural input5650 value2826 value1 value2 = (output5650, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5651 value2824 value1 value2 = (output5651, value5, value1) := by
  rw [input5651_def, output5651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5643]
  dsimp only
  rw [child5650]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5643_skip, output5650_skip]
  kernel_rfl

theorem node5652_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5652 value5 value1 value2 = (output5652, value2830, value1) := by
  rw [input5652_def, output5652_def]
  kernel_rfl

theorem node5653_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5653 value2830 value1 value2 = (output5653, value2831, value1) := by
  rw [input5653_def, output5653_def]
  kernel_rfl

theorem node5654_cond_eq
    (child5652 : Flapjack.WordAlloc.removeDeadStructural input5652 value5 value1 value2 = (output5652, value2830, value1))
    (child5653 : Flapjack.WordAlloc.removeDeadStructural input5653 value2830 value1 value2 = (output5653, value2831, value1)) : Flapjack.WordAlloc.removeDeadStructural input5654 value5 value1 value2 = (output5654, value2831, value1) := by
  rw [input5654_def, output5654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5652]
  dsimp only
  rw [child5653]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5652_skip, output5653_skip]
  kernel_rfl

theorem node5655_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5655 value2831 value1 value2 = (output5655, value2832, value1) := by
  rw [input5655_def, output5655_def]
  kernel_rfl

theorem node5656_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5656 value2832 value1 value2 = (output5656, value2832, value1) := by
  rw [input5656_def, output5656_def]
  kernel_rfl

theorem node5657_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5657 value2832 value1 value2 = (output5657, value2833, value1) := by
  rw [input5657_def, output5657_def]
  kernel_rfl

theorem node5658_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5658 value2833 value1 value2 = (output5658, value2834, value1) := by
  rw [input5658_def, output5658_def]
  kernel_rfl

theorem node5659_cond_eq
    (child5657 : Flapjack.WordAlloc.removeDeadStructural input5657 value2832 value1 value2 = (output5657, value2833, value1))
    (child5658 : Flapjack.WordAlloc.removeDeadStructural input5658 value2833 value1 value2 = (output5658, value2834, value1)) : Flapjack.WordAlloc.removeDeadStructural input5659 value2832 value1 value2 = (output5659, value2834, value1) := by
  rw [input5659_def, output5659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5657]
  dsimp only
  rw [child5658]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5657_skip, output5658_skip]
  kernel_rfl

theorem node5660_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5660 value2834 value1 value2 = (output5660, value2835, value1) := by
  rw [input5660_def, output5660_def]
  kernel_rfl

theorem node5661_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5661 value2835 value1 value2 = (output5661, value2836, value1) := by
  rw [input5661_def, output5661_def]
  kernel_rfl

theorem node5662_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5662 value2836 value1 value2 = (output5662, value2837, value1) := by
  rw [input5662_def, output5662_def]
  kernel_rfl

theorem node5663_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5663 value2837 value1 value2 = (output5663, value5, value1) := by
  rw [input5663_def, output5663_def]
  kernel_rfl

theorem node5664_cond_eq
    (child5662 : Flapjack.WordAlloc.removeDeadStructural input5662 value2836 value1 value2 = (output5662, value2837, value1))
    (child5663 : Flapjack.WordAlloc.removeDeadStructural input5663 value2837 value1 value2 = (output5663, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5664 value2836 value1 value2 = (output5664, value5, value1) := by
  rw [input5664_def, output5664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5662]
  dsimp only
  rw [child5663]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5662_skip, output5663_skip]
  kernel_rfl

theorem node5665_cond_eq
    (child5661 : Flapjack.WordAlloc.removeDeadStructural input5661 value2835 value1 value2 = (output5661, value2836, value1))
    (child5664 : Flapjack.WordAlloc.removeDeadStructural input5664 value2836 value1 value2 = (output5664, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5665 value2835 value1 value2 = (output5665, value5, value1) := by
  rw [input5665_def, output5665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5661]
  dsimp only
  rw [child5664]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5661_skip, output5664_skip]
  kernel_rfl

theorem node5666_cond_eq
    (child5660 : Flapjack.WordAlloc.removeDeadStructural input5660 value2834 value1 value2 = (output5660, value2835, value1))
    (child5665 : Flapjack.WordAlloc.removeDeadStructural input5665 value2835 value1 value2 = (output5665, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5666 value2834 value1 value2 = (output5666, value5, value1) := by
  rw [input5666_def, output5666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5660]
  dsimp only
  rw [child5665]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5660_skip, output5665_skip]
  kernel_rfl

theorem node5667_cond_eq
    (child5659 : Flapjack.WordAlloc.removeDeadStructural input5659 value2832 value1 value2 = (output5659, value2834, value1))
    (child5666 : Flapjack.WordAlloc.removeDeadStructural input5666 value2834 value1 value2 = (output5666, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5667 value2832 value1 value2 = (output5667, value5, value1) := by
  rw [input5667_def, output5667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5659]
  dsimp only
  rw [child5666]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5659_skip, output5666_skip]
  kernel_rfl

theorem node5668_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5668 value5 value1 value2 = (output5668, value2838, value1) := by
  rw [input5668_def, output5668_def]
  kernel_rfl

theorem node5669_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5669 value2838 value1 value2 = (output5669, value2839, value1) := by
  rw [input5669_def, output5669_def]
  kernel_rfl

theorem node5670_cond_eq
    (child5668 : Flapjack.WordAlloc.removeDeadStructural input5668 value5 value1 value2 = (output5668, value2838, value1))
    (child5669 : Flapjack.WordAlloc.removeDeadStructural input5669 value2838 value1 value2 = (output5669, value2839, value1)) : Flapjack.WordAlloc.removeDeadStructural input5670 value5 value1 value2 = (output5670, value2839, value1) := by
  rw [input5670_def, output5670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5668]
  dsimp only
  rw [child5669]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5668_skip, output5669_skip]
  kernel_rfl

theorem node5671_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5671 value2839 value1 value2 = (output5671, value2840, value1) := by
  rw [input5671_def, output5671_def]
  kernel_rfl

theorem node5672_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5672 value2840 value1 value2 = (output5672, value2840, value1) := by
  rw [input5672_def, output5672_def]
  kernel_rfl

theorem node5673_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5673 value2840 value1 value2 = (output5673, value2841, value1) := by
  rw [input5673_def, output5673_def]
  kernel_rfl

theorem node5674_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5674 value2841 value1 value2 = (output5674, value2842, value1) := by
  rw [input5674_def, output5674_def]
  kernel_rfl

theorem node5675_cond_eq
    (child5673 : Flapjack.WordAlloc.removeDeadStructural input5673 value2840 value1 value2 = (output5673, value2841, value1))
    (child5674 : Flapjack.WordAlloc.removeDeadStructural input5674 value2841 value1 value2 = (output5674, value2842, value1)) : Flapjack.WordAlloc.removeDeadStructural input5675 value2840 value1 value2 = (output5675, value2842, value1) := by
  rw [input5675_def, output5675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5673]
  dsimp only
  rw [child5674]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5673_skip, output5674_skip]
  kernel_rfl

theorem node5676_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5676 value2842 value1 value2 = (output5676, value2843, value1) := by
  rw [input5676_def, output5676_def]
  kernel_rfl

theorem node5677_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5677 value2843 value1 value2 = (output5677, value2844, value1) := by
  rw [input5677_def, output5677_def]
  kernel_rfl

theorem node5678_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5678 value2844 value1 value2 = (output5678, value2845, value1) := by
  rw [input5678_def, output5678_def]
  kernel_rfl

theorem node5679_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5679 value2845 value1 value2 = (output5679, value5, value1) := by
  rw [input5679_def, output5679_def]
  kernel_rfl

theorem node5680_cond_eq
    (child5678 : Flapjack.WordAlloc.removeDeadStructural input5678 value2844 value1 value2 = (output5678, value2845, value1))
    (child5679 : Flapjack.WordAlloc.removeDeadStructural input5679 value2845 value1 value2 = (output5679, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5680 value2844 value1 value2 = (output5680, value5, value1) := by
  rw [input5680_def, output5680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5678]
  dsimp only
  rw [child5679]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5678_skip, output5679_skip]
  kernel_rfl

theorem node5681_cond_eq
    (child5677 : Flapjack.WordAlloc.removeDeadStructural input5677 value2843 value1 value2 = (output5677, value2844, value1))
    (child5680 : Flapjack.WordAlloc.removeDeadStructural input5680 value2844 value1 value2 = (output5680, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5681 value2843 value1 value2 = (output5681, value5, value1) := by
  rw [input5681_def, output5681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5677]
  dsimp only
  rw [child5680]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5677_skip, output5680_skip]
  kernel_rfl

theorem node5682_cond_eq
    (child5676 : Flapjack.WordAlloc.removeDeadStructural input5676 value2842 value1 value2 = (output5676, value2843, value1))
    (child5681 : Flapjack.WordAlloc.removeDeadStructural input5681 value2843 value1 value2 = (output5681, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5682 value2842 value1 value2 = (output5682, value5, value1) := by
  rw [input5682_def, output5682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5676]
  dsimp only
  rw [child5681]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5676_skip, output5681_skip]
  kernel_rfl

theorem node5683_cond_eq
    (child5675 : Flapjack.WordAlloc.removeDeadStructural input5675 value2840 value1 value2 = (output5675, value2842, value1))
    (child5682 : Flapjack.WordAlloc.removeDeadStructural input5682 value2842 value1 value2 = (output5682, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5683 value2840 value1 value2 = (output5683, value5, value1) := by
  rw [input5683_def, output5683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5675]
  dsimp only
  rw [child5682]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5675_skip, output5682_skip]
  kernel_rfl

theorem node5684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5684 value5 value1 value2 = (output5684, value2846, value1) := by
  rw [input5684_def, output5684_def]
  kernel_rfl

theorem node5685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5685 value2846 value1 value2 = (output5685, value2847, value1) := by
  rw [input5685_def, output5685_def]
  kernel_rfl

theorem node5686_cond_eq
    (child5684 : Flapjack.WordAlloc.removeDeadStructural input5684 value5 value1 value2 = (output5684, value2846, value1))
    (child5685 : Flapjack.WordAlloc.removeDeadStructural input5685 value2846 value1 value2 = (output5685, value2847, value1)) : Flapjack.WordAlloc.removeDeadStructural input5686 value5 value1 value2 = (output5686, value2847, value1) := by
  rw [input5686_def, output5686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5684]
  dsimp only
  rw [child5685]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5684_skip, output5685_skip]
  kernel_rfl

theorem node5687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5687 value2847 value1 value2 = (output5687, value2848, value1) := by
  rw [input5687_def, output5687_def]
  kernel_rfl

theorem node5688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5688 value2848 value1 value2 = (output5688, value2848, value1) := by
  rw [input5688_def, output5688_def]
  kernel_rfl

theorem node5689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5689 value2848 value1 value2 = (output5689, value2849, value1) := by
  rw [input5689_def, output5689_def]
  kernel_rfl

theorem node5690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5690 value2849 value1 value2 = (output5690, value2850, value1) := by
  rw [input5690_def, output5690_def]
  kernel_rfl

theorem node5691_cond_eq
    (child5689 : Flapjack.WordAlloc.removeDeadStructural input5689 value2848 value1 value2 = (output5689, value2849, value1))
    (child5690 : Flapjack.WordAlloc.removeDeadStructural input5690 value2849 value1 value2 = (output5690, value2850, value1)) : Flapjack.WordAlloc.removeDeadStructural input5691 value2848 value1 value2 = (output5691, value2850, value1) := by
  rw [input5691_def, output5691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5689]
  dsimp only
  rw [child5690]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5689_skip, output5690_skip]
  kernel_rfl

theorem node5692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5692 value2850 value1 value2 = (output5692, value2851, value1) := by
  rw [input5692_def, output5692_def]
  kernel_rfl

theorem node5693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5693 value2851 value1 value2 = (output5693, value2852, value1) := by
  rw [input5693_def, output5693_def]
  kernel_rfl

theorem node5694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5694 value2852 value1 value2 = (output5694, value2853, value1) := by
  rw [input5694_def, output5694_def]
  kernel_rfl

theorem node5695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5695 value2853 value1 value2 = (output5695, value5, value1) := by
  rw [input5695_def, output5695_def]
  kernel_rfl

theorem node5696_cond_eq
    (child5694 : Flapjack.WordAlloc.removeDeadStructural input5694 value2852 value1 value2 = (output5694, value2853, value1))
    (child5695 : Flapjack.WordAlloc.removeDeadStructural input5695 value2853 value1 value2 = (output5695, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5696 value2852 value1 value2 = (output5696, value5, value1) := by
  rw [input5696_def, output5696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5694]
  dsimp only
  rw [child5695]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5694_skip, output5695_skip]
  kernel_rfl

theorem node5697_cond_eq
    (child5693 : Flapjack.WordAlloc.removeDeadStructural input5693 value2851 value1 value2 = (output5693, value2852, value1))
    (child5696 : Flapjack.WordAlloc.removeDeadStructural input5696 value2852 value1 value2 = (output5696, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5697 value2851 value1 value2 = (output5697, value5, value1) := by
  rw [input5697_def, output5697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5693]
  dsimp only
  rw [child5696]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5693_skip, output5696_skip]
  kernel_rfl

theorem node5698_cond_eq
    (child5692 : Flapjack.WordAlloc.removeDeadStructural input5692 value2850 value1 value2 = (output5692, value2851, value1))
    (child5697 : Flapjack.WordAlloc.removeDeadStructural input5697 value2851 value1 value2 = (output5697, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5698 value2850 value1 value2 = (output5698, value5, value1) := by
  rw [input5698_def, output5698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5692]
  dsimp only
  rw [child5697]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5692_skip, output5697_skip]
  kernel_rfl

theorem node5699_cond_eq
    (child5691 : Flapjack.WordAlloc.removeDeadStructural input5691 value2848 value1 value2 = (output5691, value2850, value1))
    (child5698 : Flapjack.WordAlloc.removeDeadStructural input5698 value2850 value1 value2 = (output5698, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5699 value2848 value1 value2 = (output5699, value5, value1) := by
  rw [input5699_def, output5699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5691]
  dsimp only
  rw [child5698]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5691_skip, output5698_skip]
  kernel_rfl

theorem node5700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5700 value5 value1 value2 = (output5700, value2854, value1) := by
  rw [input5700_def, output5700_def]
  kernel_rfl

theorem node5701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5701 value2854 value1 value2 = (output5701, value2855, value1) := by
  rw [input5701_def, output5701_def]
  kernel_rfl

theorem node5702_cond_eq
    (child5700 : Flapjack.WordAlloc.removeDeadStructural input5700 value5 value1 value2 = (output5700, value2854, value1))
    (child5701 : Flapjack.WordAlloc.removeDeadStructural input5701 value2854 value1 value2 = (output5701, value2855, value1)) : Flapjack.WordAlloc.removeDeadStructural input5702 value5 value1 value2 = (output5702, value2855, value1) := by
  rw [input5702_def, output5702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5700]
  dsimp only
  rw [child5701]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5700_skip, output5701_skip]
  kernel_rfl

theorem node5703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5703 value2855 value1 value2 = (output5703, value2856, value1) := by
  rw [input5703_def, output5703_def]
  kernel_rfl

theorem node5704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5704 value2856 value1 value2 = (output5704, value2856, value1) := by
  rw [input5704_def, output5704_def]
  kernel_rfl

theorem node5705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5705 value2856 value1 value2 = (output5705, value2857, value1) := by
  rw [input5705_def, output5705_def]
  kernel_rfl

theorem node5706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5706 value2857 value1 value2 = (output5706, value2858, value1) := by
  rw [input5706_def, output5706_def]
  kernel_rfl

theorem node5707_cond_eq
    (child5705 : Flapjack.WordAlloc.removeDeadStructural input5705 value2856 value1 value2 = (output5705, value2857, value1))
    (child5706 : Flapjack.WordAlloc.removeDeadStructural input5706 value2857 value1 value2 = (output5706, value2858, value1)) : Flapjack.WordAlloc.removeDeadStructural input5707 value2856 value1 value2 = (output5707, value2858, value1) := by
  rw [input5707_def, output5707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5705]
  dsimp only
  rw [child5706]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5705_skip, output5706_skip]
  kernel_rfl

theorem node5708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5708 value2858 value1 value2 = (output5708, value2859, value1) := by
  rw [input5708_def, output5708_def]
  kernel_rfl

theorem node5709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5709 value2859 value1 value2 = (output5709, value2860, value1) := by
  rw [input5709_def, output5709_def]
  kernel_rfl

theorem node5710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5710 value2860 value1 value2 = (output5710, value2861, value1) := by
  rw [input5710_def, output5710_def]
  kernel_rfl

theorem node5711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5711 value2861 value1 value2 = (output5711, value5, value1) := by
  rw [input5711_def, output5711_def]
  kernel_rfl

theorem node5712_cond_eq
    (child5710 : Flapjack.WordAlloc.removeDeadStructural input5710 value2860 value1 value2 = (output5710, value2861, value1))
    (child5711 : Flapjack.WordAlloc.removeDeadStructural input5711 value2861 value1 value2 = (output5711, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5712 value2860 value1 value2 = (output5712, value5, value1) := by
  rw [input5712_def, output5712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5710]
  dsimp only
  rw [child5711]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5710_skip, output5711_skip]
  kernel_rfl

theorem node5713_cond_eq
    (child5709 : Flapjack.WordAlloc.removeDeadStructural input5709 value2859 value1 value2 = (output5709, value2860, value1))
    (child5712 : Flapjack.WordAlloc.removeDeadStructural input5712 value2860 value1 value2 = (output5712, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5713 value2859 value1 value2 = (output5713, value5, value1) := by
  rw [input5713_def, output5713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5709]
  dsimp only
  rw [child5712]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5709_skip, output5712_skip]
  kernel_rfl

theorem node5714_cond_eq
    (child5708 : Flapjack.WordAlloc.removeDeadStructural input5708 value2858 value1 value2 = (output5708, value2859, value1))
    (child5713 : Flapjack.WordAlloc.removeDeadStructural input5713 value2859 value1 value2 = (output5713, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5714 value2858 value1 value2 = (output5714, value5, value1) := by
  rw [input5714_def, output5714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5708]
  dsimp only
  rw [child5713]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5708_skip, output5713_skip]
  kernel_rfl

theorem node5715_cond_eq
    (child5707 : Flapjack.WordAlloc.removeDeadStructural input5707 value2856 value1 value2 = (output5707, value2858, value1))
    (child5714 : Flapjack.WordAlloc.removeDeadStructural input5714 value2858 value1 value2 = (output5714, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5715 value2856 value1 value2 = (output5715, value5, value1) := by
  rw [input5715_def, output5715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5707]
  dsimp only
  rw [child5714]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5707_skip, output5714_skip]
  kernel_rfl

theorem node5716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5716 value5 value1 value2 = (output5716, value2862, value1) := by
  rw [input5716_def, output5716_def]
  kernel_rfl

theorem node5717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5717 value2862 value1 value2 = (output5717, value2863, value1) := by
  rw [input5717_def, output5717_def]
  kernel_rfl

theorem node5718_cond_eq
    (child5716 : Flapjack.WordAlloc.removeDeadStructural input5716 value5 value1 value2 = (output5716, value2862, value1))
    (child5717 : Flapjack.WordAlloc.removeDeadStructural input5717 value2862 value1 value2 = (output5717, value2863, value1)) : Flapjack.WordAlloc.removeDeadStructural input5718 value5 value1 value2 = (output5718, value2863, value1) := by
  rw [input5718_def, output5718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5716]
  dsimp only
  rw [child5717]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5716_skip, output5717_skip]
  kernel_rfl

theorem node5719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5719 value2863 value1 value2 = (output5719, value2864, value1) := by
  rw [input5719_def, output5719_def]
  kernel_rfl

theorem node5720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5720 value2864 value1 value2 = (output5720, value2864, value1) := by
  rw [input5720_def, output5720_def]
  kernel_rfl

theorem node5721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5721 value2864 value1 value2 = (output5721, value2865, value1) := by
  rw [input5721_def, output5721_def]
  kernel_rfl

theorem node5722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5722 value2865 value1 value2 = (output5722, value2866, value1) := by
  rw [input5722_def, output5722_def]
  kernel_rfl

theorem node5723_cond_eq
    (child5721 : Flapjack.WordAlloc.removeDeadStructural input5721 value2864 value1 value2 = (output5721, value2865, value1))
    (child5722 : Flapjack.WordAlloc.removeDeadStructural input5722 value2865 value1 value2 = (output5722, value2866, value1)) : Flapjack.WordAlloc.removeDeadStructural input5723 value2864 value1 value2 = (output5723, value2866, value1) := by
  rw [input5723_def, output5723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5721]
  dsimp only
  rw [child5722]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5721_skip, output5722_skip]
  kernel_rfl

theorem node5724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5724 value2866 value1 value2 = (output5724, value2867, value1) := by
  rw [input5724_def, output5724_def]
  kernel_rfl

theorem node5725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5725 value2867 value1 value2 = (output5725, value2868, value1) := by
  rw [input5725_def, output5725_def]
  kernel_rfl

theorem node5726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5726 value2868 value1 value2 = (output5726, value2869, value1) := by
  rw [input5726_def, output5726_def]
  kernel_rfl

theorem node5727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5727 value2869 value1 value2 = (output5727, value5, value1) := by
  rw [input5727_def, output5727_def]
  kernel_rfl

theorem node5728_cond_eq
    (child5726 : Flapjack.WordAlloc.removeDeadStructural input5726 value2868 value1 value2 = (output5726, value2869, value1))
    (child5727 : Flapjack.WordAlloc.removeDeadStructural input5727 value2869 value1 value2 = (output5727, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5728 value2868 value1 value2 = (output5728, value5, value1) := by
  rw [input5728_def, output5728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5726]
  dsimp only
  rw [child5727]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5726_skip, output5727_skip]
  kernel_rfl

theorem node5729_cond_eq
    (child5725 : Flapjack.WordAlloc.removeDeadStructural input5725 value2867 value1 value2 = (output5725, value2868, value1))
    (child5728 : Flapjack.WordAlloc.removeDeadStructural input5728 value2868 value1 value2 = (output5728, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5729 value2867 value1 value2 = (output5729, value5, value1) := by
  rw [input5729_def, output5729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5725]
  dsimp only
  rw [child5728]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5725_skip, output5728_skip]
  kernel_rfl

theorem node5730_cond_eq
    (child5724 : Flapjack.WordAlloc.removeDeadStructural input5724 value2866 value1 value2 = (output5724, value2867, value1))
    (child5729 : Flapjack.WordAlloc.removeDeadStructural input5729 value2867 value1 value2 = (output5729, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5730 value2866 value1 value2 = (output5730, value5, value1) := by
  rw [input5730_def, output5730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5724]
  dsimp only
  rw [child5729]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5724_skip, output5729_skip]
  kernel_rfl

theorem node5731_cond_eq
    (child5723 : Flapjack.WordAlloc.removeDeadStructural input5723 value2864 value1 value2 = (output5723, value2866, value1))
    (child5730 : Flapjack.WordAlloc.removeDeadStructural input5730 value2866 value1 value2 = (output5730, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5731 value2864 value1 value2 = (output5731, value5, value1) := by
  rw [input5731_def, output5731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5723]
  dsimp only
  rw [child5730]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5723_skip, output5730_skip]
  kernel_rfl

theorem node5732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5732 value5 value1 value2 = (output5732, value2870, value1) := by
  rw [input5732_def, output5732_def]
  kernel_rfl

theorem node5733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5733 value2870 value1 value2 = (output5733, value2871, value1) := by
  rw [input5733_def, output5733_def]
  kernel_rfl

theorem node5734_cond_eq
    (child5732 : Flapjack.WordAlloc.removeDeadStructural input5732 value5 value1 value2 = (output5732, value2870, value1))
    (child5733 : Flapjack.WordAlloc.removeDeadStructural input5733 value2870 value1 value2 = (output5733, value2871, value1)) : Flapjack.WordAlloc.removeDeadStructural input5734 value5 value1 value2 = (output5734, value2871, value1) := by
  rw [input5734_def, output5734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5732]
  dsimp only
  rw [child5733]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5732_skip, output5733_skip]
  kernel_rfl

theorem node5735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5735 value2871 value1 value2 = (output5735, value2872, value1) := by
  rw [input5735_def, output5735_def]
  kernel_rfl

theorem node5736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5736 value2872 value1 value2 = (output5736, value2872, value1) := by
  rw [input5736_def, output5736_def]
  kernel_rfl

theorem node5737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5737 value2872 value1 value2 = (output5737, value2873, value1) := by
  rw [input5737_def, output5737_def]
  kernel_rfl

theorem node5738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5738 value2873 value1 value2 = (output5738, value2874, value1) := by
  rw [input5738_def, output5738_def]
  kernel_rfl

theorem node5739_cond_eq
    (child5737 : Flapjack.WordAlloc.removeDeadStructural input5737 value2872 value1 value2 = (output5737, value2873, value1))
    (child5738 : Flapjack.WordAlloc.removeDeadStructural input5738 value2873 value1 value2 = (output5738, value2874, value1)) : Flapjack.WordAlloc.removeDeadStructural input5739 value2872 value1 value2 = (output5739, value2874, value1) := by
  rw [input5739_def, output5739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5737]
  dsimp only
  rw [child5738]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5737_skip, output5738_skip]
  kernel_rfl

theorem node5740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5740 value2874 value1 value2 = (output5740, value2875, value1) := by
  rw [input5740_def, output5740_def]
  kernel_rfl

theorem node5741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5741 value2875 value1 value2 = (output5741, value2876, value1) := by
  rw [input5741_def, output5741_def]
  kernel_rfl

theorem node5742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5742 value2876 value1 value2 = (output5742, value2877, value1) := by
  rw [input5742_def, output5742_def]
  kernel_rfl

theorem node5743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5743 value2877 value1 value2 = (output5743, value5, value1) := by
  rw [input5743_def, output5743_def]
  kernel_rfl

theorem node5744_cond_eq
    (child5742 : Flapjack.WordAlloc.removeDeadStructural input5742 value2876 value1 value2 = (output5742, value2877, value1))
    (child5743 : Flapjack.WordAlloc.removeDeadStructural input5743 value2877 value1 value2 = (output5743, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5744 value2876 value1 value2 = (output5744, value5, value1) := by
  rw [input5744_def, output5744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5742]
  dsimp only
  rw [child5743]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5742_skip, output5743_skip]
  kernel_rfl

theorem node5745_cond_eq
    (child5741 : Flapjack.WordAlloc.removeDeadStructural input5741 value2875 value1 value2 = (output5741, value2876, value1))
    (child5744 : Flapjack.WordAlloc.removeDeadStructural input5744 value2876 value1 value2 = (output5744, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5745 value2875 value1 value2 = (output5745, value5, value1) := by
  rw [input5745_def, output5745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5741]
  dsimp only
  rw [child5744]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5741_skip, output5744_skip]
  kernel_rfl

theorem node5746_cond_eq
    (child5740 : Flapjack.WordAlloc.removeDeadStructural input5740 value2874 value1 value2 = (output5740, value2875, value1))
    (child5745 : Flapjack.WordAlloc.removeDeadStructural input5745 value2875 value1 value2 = (output5745, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5746 value2874 value1 value2 = (output5746, value5, value1) := by
  rw [input5746_def, output5746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5740]
  dsimp only
  rw [child5745]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5740_skip, output5745_skip]
  kernel_rfl

theorem node5747_cond_eq
    (child5739 : Flapjack.WordAlloc.removeDeadStructural input5739 value2872 value1 value2 = (output5739, value2874, value1))
    (child5746 : Flapjack.WordAlloc.removeDeadStructural input5746 value2874 value1 value2 = (output5746, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5747 value2872 value1 value2 = (output5747, value5, value1) := by
  rw [input5747_def, output5747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5739]
  dsimp only
  rw [child5746]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5739_skip, output5746_skip]
  kernel_rfl

theorem node5748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5748 value5 value1 value2 = (output5748, value2878, value1) := by
  rw [input5748_def, output5748_def]
  kernel_rfl

theorem node5749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5749 value2878 value1 value2 = (output5749, value2879, value1) := by
  rw [input5749_def, output5749_def]
  kernel_rfl

theorem node5750_cond_eq
    (child5748 : Flapjack.WordAlloc.removeDeadStructural input5748 value5 value1 value2 = (output5748, value2878, value1))
    (child5749 : Flapjack.WordAlloc.removeDeadStructural input5749 value2878 value1 value2 = (output5749, value2879, value1)) : Flapjack.WordAlloc.removeDeadStructural input5750 value5 value1 value2 = (output5750, value2879, value1) := by
  rw [input5750_def, output5750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5748]
  dsimp only
  rw [child5749]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5748_skip, output5749_skip]
  kernel_rfl

theorem node5751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5751 value2879 value1 value2 = (output5751, value2880, value1) := by
  rw [input5751_def, output5751_def]
  kernel_rfl

theorem node5752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5752 value2880 value1 value2 = (output5752, value2880, value1) := by
  rw [input5752_def, output5752_def]
  kernel_rfl

theorem node5753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5753 value2880 value1 value2 = (output5753, value2881, value1) := by
  rw [input5753_def, output5753_def]
  kernel_rfl

theorem node5754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5754 value2881 value1 value2 = (output5754, value2882, value1) := by
  rw [input5754_def, output5754_def]
  kernel_rfl

theorem node5755_cond_eq
    (child5753 : Flapjack.WordAlloc.removeDeadStructural input5753 value2880 value1 value2 = (output5753, value2881, value1))
    (child5754 : Flapjack.WordAlloc.removeDeadStructural input5754 value2881 value1 value2 = (output5754, value2882, value1)) : Flapjack.WordAlloc.removeDeadStructural input5755 value2880 value1 value2 = (output5755, value2882, value1) := by
  rw [input5755_def, output5755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5753]
  dsimp only
  rw [child5754]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5753_skip, output5754_skip]
  kernel_rfl

theorem node5756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5756 value2882 value1 value2 = (output5756, value2883, value1) := by
  rw [input5756_def, output5756_def]
  kernel_rfl

theorem node5757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5757 value2883 value1 value2 = (output5757, value2884, value1) := by
  rw [input5757_def, output5757_def]
  kernel_rfl

theorem node5758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5758 value2884 value1 value2 = (output5758, value2885, value1) := by
  rw [input5758_def, output5758_def]
  kernel_rfl

theorem node5759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5759 value2885 value1 value2 = (output5759, value5, value1) := by
  rw [input5759_def, output5759_def]
  kernel_rfl

theorem node5760_cond_eq
    (child5758 : Flapjack.WordAlloc.removeDeadStructural input5758 value2884 value1 value2 = (output5758, value2885, value1))
    (child5759 : Flapjack.WordAlloc.removeDeadStructural input5759 value2885 value1 value2 = (output5759, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5760 value2884 value1 value2 = (output5760, value5, value1) := by
  rw [input5760_def, output5760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5758]
  dsimp only
  rw [child5759]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5758_skip, output5759_skip]
  kernel_rfl

theorem node5761_cond_eq
    (child5757 : Flapjack.WordAlloc.removeDeadStructural input5757 value2883 value1 value2 = (output5757, value2884, value1))
    (child5760 : Flapjack.WordAlloc.removeDeadStructural input5760 value2884 value1 value2 = (output5760, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5761 value2883 value1 value2 = (output5761, value5, value1) := by
  rw [input5761_def, output5761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5757]
  dsimp only
  rw [child5760]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5757_skip, output5760_skip]
  kernel_rfl

theorem node5762_cond_eq
    (child5756 : Flapjack.WordAlloc.removeDeadStructural input5756 value2882 value1 value2 = (output5756, value2883, value1))
    (child5761 : Flapjack.WordAlloc.removeDeadStructural input5761 value2883 value1 value2 = (output5761, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5762 value2882 value1 value2 = (output5762, value5, value1) := by
  rw [input5762_def, output5762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5756]
  dsimp only
  rw [child5761]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5756_skip, output5761_skip]
  kernel_rfl

theorem node5763_cond_eq
    (child5755 : Flapjack.WordAlloc.removeDeadStructural input5755 value2880 value1 value2 = (output5755, value2882, value1))
    (child5762 : Flapjack.WordAlloc.removeDeadStructural input5762 value2882 value1 value2 = (output5762, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5763 value2880 value1 value2 = (output5763, value5, value1) := by
  rw [input5763_def, output5763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5755]
  dsimp only
  rw [child5762]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5755_skip, output5762_skip]
  kernel_rfl

theorem node5764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5764 value5 value1 value2 = (output5764, value2886, value1) := by
  rw [input5764_def, output5764_def]
  kernel_rfl

theorem node5765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5765 value2886 value1 value2 = (output5765, value2887, value1) := by
  rw [input5765_def, output5765_def]
  kernel_rfl

theorem node5766_cond_eq
    (child5764 : Flapjack.WordAlloc.removeDeadStructural input5764 value5 value1 value2 = (output5764, value2886, value1))
    (child5765 : Flapjack.WordAlloc.removeDeadStructural input5765 value2886 value1 value2 = (output5765, value2887, value1)) : Flapjack.WordAlloc.removeDeadStructural input5766 value5 value1 value2 = (output5766, value2887, value1) := by
  rw [input5766_def, output5766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5764]
  dsimp only
  rw [child5765]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5764_skip, output5765_skip]
  kernel_rfl

theorem node5767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5767 value2887 value1 value2 = (output5767, value2888, value1) := by
  rw [input5767_def, output5767_def]
  kernel_rfl

theorem node5768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5768 value2888 value1 value2 = (output5768, value2888, value1) := by
  rw [input5768_def, output5768_def]
  kernel_rfl

theorem node5769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5769 value2888 value1 value2 = (output5769, value2889, value1) := by
  rw [input5769_def, output5769_def]
  kernel_rfl

theorem node5770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5770 value2889 value1 value2 = (output5770, value2890, value1) := by
  rw [input5770_def, output5770_def]
  kernel_rfl

theorem node5771_cond_eq
    (child5769 : Flapjack.WordAlloc.removeDeadStructural input5769 value2888 value1 value2 = (output5769, value2889, value1))
    (child5770 : Flapjack.WordAlloc.removeDeadStructural input5770 value2889 value1 value2 = (output5770, value2890, value1)) : Flapjack.WordAlloc.removeDeadStructural input5771 value2888 value1 value2 = (output5771, value2890, value1) := by
  rw [input5771_def, output5771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5769]
  dsimp only
  rw [child5770]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5769_skip, output5770_skip]
  kernel_rfl

theorem node5772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5772 value2890 value1 value2 = (output5772, value2891, value1) := by
  rw [input5772_def, output5772_def]
  kernel_rfl

theorem node5773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5773 value2891 value1 value2 = (output5773, value2892, value1) := by
  rw [input5773_def, output5773_def]
  kernel_rfl

theorem node5774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5774 value2892 value1 value2 = (output5774, value2893, value1) := by
  rw [input5774_def, output5774_def]
  kernel_rfl

theorem node5775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5775 value2893 value1 value2 = (output5775, value5, value1) := by
  rw [input5775_def, output5775_def]
  kernel_rfl

theorem node5776_cond_eq
    (child5774 : Flapjack.WordAlloc.removeDeadStructural input5774 value2892 value1 value2 = (output5774, value2893, value1))
    (child5775 : Flapjack.WordAlloc.removeDeadStructural input5775 value2893 value1 value2 = (output5775, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5776 value2892 value1 value2 = (output5776, value5, value1) := by
  rw [input5776_def, output5776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5774]
  dsimp only
  rw [child5775]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5774_skip, output5775_skip]
  kernel_rfl

theorem node5777_cond_eq
    (child5773 : Flapjack.WordAlloc.removeDeadStructural input5773 value2891 value1 value2 = (output5773, value2892, value1))
    (child5776 : Flapjack.WordAlloc.removeDeadStructural input5776 value2892 value1 value2 = (output5776, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5777 value2891 value1 value2 = (output5777, value5, value1) := by
  rw [input5777_def, output5777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5773]
  dsimp only
  rw [child5776]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5773_skip, output5776_skip]
  kernel_rfl

theorem node5778_cond_eq
    (child5772 : Flapjack.WordAlloc.removeDeadStructural input5772 value2890 value1 value2 = (output5772, value2891, value1))
    (child5777 : Flapjack.WordAlloc.removeDeadStructural input5777 value2891 value1 value2 = (output5777, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5778 value2890 value1 value2 = (output5778, value5, value1) := by
  rw [input5778_def, output5778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5772]
  dsimp only
  rw [child5777]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5772_skip, output5777_skip]
  kernel_rfl

theorem node5779_cond_eq
    (child5771 : Flapjack.WordAlloc.removeDeadStructural input5771 value2888 value1 value2 = (output5771, value2890, value1))
    (child5778 : Flapjack.WordAlloc.removeDeadStructural input5778 value2890 value1 value2 = (output5778, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5779 value2888 value1 value2 = (output5779, value5, value1) := by
  rw [input5779_def, output5779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5771]
  dsimp only
  rw [child5778]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5771_skip, output5778_skip]
  kernel_rfl

theorem node5780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5780 value5 value1 value2 = (output5780, value2894, value1) := by
  rw [input5780_def, output5780_def]
  kernel_rfl

theorem node5781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5781 value2894 value1 value2 = (output5781, value2895, value1) := by
  rw [input5781_def, output5781_def]
  kernel_rfl

theorem node5782_cond_eq
    (child5780 : Flapjack.WordAlloc.removeDeadStructural input5780 value5 value1 value2 = (output5780, value2894, value1))
    (child5781 : Flapjack.WordAlloc.removeDeadStructural input5781 value2894 value1 value2 = (output5781, value2895, value1)) : Flapjack.WordAlloc.removeDeadStructural input5782 value5 value1 value2 = (output5782, value2895, value1) := by
  rw [input5782_def, output5782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5780]
  dsimp only
  rw [child5781]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5780_skip, output5781_skip]
  kernel_rfl

theorem node5783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5783 value2895 value1 value2 = (output5783, value2896, value1) := by
  rw [input5783_def, output5783_def]
  kernel_rfl

theorem node5784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5784 value2896 value1 value2 = (output5784, value2896, value1) := by
  rw [input5784_def, output5784_def]
  kernel_rfl

theorem node5785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5785 value2896 value1 value2 = (output5785, value2897, value1) := by
  rw [input5785_def, output5785_def]
  kernel_rfl

theorem node5786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5786 value2897 value1 value2 = (output5786, value2898, value1) := by
  rw [input5786_def, output5786_def]
  kernel_rfl

theorem node5787_cond_eq
    (child5785 : Flapjack.WordAlloc.removeDeadStructural input5785 value2896 value1 value2 = (output5785, value2897, value1))
    (child5786 : Flapjack.WordAlloc.removeDeadStructural input5786 value2897 value1 value2 = (output5786, value2898, value1)) : Flapjack.WordAlloc.removeDeadStructural input5787 value2896 value1 value2 = (output5787, value2898, value1) := by
  rw [input5787_def, output5787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5785]
  dsimp only
  rw [child5786]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5785_skip, output5786_skip]
  kernel_rfl

theorem node5788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5788 value2898 value1 value2 = (output5788, value2899, value1) := by
  rw [input5788_def, output5788_def]
  kernel_rfl

theorem node5789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5789 value2899 value1 value2 = (output5789, value2900, value1) := by
  rw [input5789_def, output5789_def]
  kernel_rfl

theorem node5790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5790 value2900 value1 value2 = (output5790, value2901, value1) := by
  rw [input5790_def, output5790_def]
  kernel_rfl

theorem node5791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5791 value2901 value1 value2 = (output5791, value5, value1) := by
  rw [input5791_def, output5791_def]
  kernel_rfl

theorem node5792_cond_eq
    (child5790 : Flapjack.WordAlloc.removeDeadStructural input5790 value2900 value1 value2 = (output5790, value2901, value1))
    (child5791 : Flapjack.WordAlloc.removeDeadStructural input5791 value2901 value1 value2 = (output5791, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5792 value2900 value1 value2 = (output5792, value5, value1) := by
  rw [input5792_def, output5792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5790]
  dsimp only
  rw [child5791]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5790_skip, output5791_skip]
  kernel_rfl

theorem node5793_cond_eq
    (child5789 : Flapjack.WordAlloc.removeDeadStructural input5789 value2899 value1 value2 = (output5789, value2900, value1))
    (child5792 : Flapjack.WordAlloc.removeDeadStructural input5792 value2900 value1 value2 = (output5792, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5793 value2899 value1 value2 = (output5793, value5, value1) := by
  rw [input5793_def, output5793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5789]
  dsimp only
  rw [child5792]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5789_skip, output5792_skip]
  kernel_rfl

theorem node5794_cond_eq
    (child5788 : Flapjack.WordAlloc.removeDeadStructural input5788 value2898 value1 value2 = (output5788, value2899, value1))
    (child5793 : Flapjack.WordAlloc.removeDeadStructural input5793 value2899 value1 value2 = (output5793, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5794 value2898 value1 value2 = (output5794, value5, value1) := by
  rw [input5794_def, output5794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5788]
  dsimp only
  rw [child5793]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5788_skip, output5793_skip]
  kernel_rfl

theorem node5795_cond_eq
    (child5787 : Flapjack.WordAlloc.removeDeadStructural input5787 value2896 value1 value2 = (output5787, value2898, value1))
    (child5794 : Flapjack.WordAlloc.removeDeadStructural input5794 value2898 value1 value2 = (output5794, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5795 value2896 value1 value2 = (output5795, value5, value1) := by
  rw [input5795_def, output5795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5787]
  dsimp only
  rw [child5794]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5787_skip, output5794_skip]
  kernel_rfl

theorem node5796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5796 value5 value1 value2 = (output5796, value2902, value1) := by
  rw [input5796_def, output5796_def]
  kernel_rfl

theorem node5797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5797 value2902 value1 value2 = (output5797, value2903, value1) := by
  rw [input5797_def, output5797_def]
  kernel_rfl

theorem node5798_cond_eq
    (child5796 : Flapjack.WordAlloc.removeDeadStructural input5796 value5 value1 value2 = (output5796, value2902, value1))
    (child5797 : Flapjack.WordAlloc.removeDeadStructural input5797 value2902 value1 value2 = (output5797, value2903, value1)) : Flapjack.WordAlloc.removeDeadStructural input5798 value5 value1 value2 = (output5798, value2903, value1) := by
  rw [input5798_def, output5798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5796]
  dsimp only
  rw [child5797]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5796_skip, output5797_skip]
  kernel_rfl

theorem node5799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5799 value2903 value1 value2 = (output5799, value2904, value1) := by
  rw [input5799_def, output5799_def]
  kernel_rfl

theorem node5800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5800 value2904 value1 value2 = (output5800, value2904, value1) := by
  rw [input5800_def, output5800_def]
  kernel_rfl

theorem node5801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5801 value2904 value1 value2 = (output5801, value2905, value1) := by
  rw [input5801_def, output5801_def]
  kernel_rfl

theorem node5802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5802 value2905 value1 value2 = (output5802, value2906, value1) := by
  rw [input5802_def, output5802_def]
  kernel_rfl

theorem node5803_cond_eq
    (child5801 : Flapjack.WordAlloc.removeDeadStructural input5801 value2904 value1 value2 = (output5801, value2905, value1))
    (child5802 : Flapjack.WordAlloc.removeDeadStructural input5802 value2905 value1 value2 = (output5802, value2906, value1)) : Flapjack.WordAlloc.removeDeadStructural input5803 value2904 value1 value2 = (output5803, value2906, value1) := by
  rw [input5803_def, output5803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5801]
  dsimp only
  rw [child5802]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5801_skip, output5802_skip]
  kernel_rfl

theorem node5804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5804 value2906 value1 value2 = (output5804, value2907, value1) := by
  rw [input5804_def, output5804_def]
  kernel_rfl

theorem node5805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5805 value2907 value1 value2 = (output5805, value2908, value1) := by
  rw [input5805_def, output5805_def]
  kernel_rfl

theorem node5806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5806 value2908 value1 value2 = (output5806, value2909, value1) := by
  rw [input5806_def, output5806_def]
  kernel_rfl

theorem node5807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5807 value2909 value1 value2 = (output5807, value5, value1) := by
  rw [input5807_def, output5807_def]
  kernel_rfl

theorem node5808_cond_eq
    (child5806 : Flapjack.WordAlloc.removeDeadStructural input5806 value2908 value1 value2 = (output5806, value2909, value1))
    (child5807 : Flapjack.WordAlloc.removeDeadStructural input5807 value2909 value1 value2 = (output5807, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5808 value2908 value1 value2 = (output5808, value5, value1) := by
  rw [input5808_def, output5808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5806]
  dsimp only
  rw [child5807]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5806_skip, output5807_skip]
  kernel_rfl

theorem node5809_cond_eq
    (child5805 : Flapjack.WordAlloc.removeDeadStructural input5805 value2907 value1 value2 = (output5805, value2908, value1))
    (child5808 : Flapjack.WordAlloc.removeDeadStructural input5808 value2908 value1 value2 = (output5808, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5809 value2907 value1 value2 = (output5809, value5, value1) := by
  rw [input5809_def, output5809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5805]
  dsimp only
  rw [child5808]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5805_skip, output5808_skip]
  kernel_rfl

theorem node5810_cond_eq
    (child5804 : Flapjack.WordAlloc.removeDeadStructural input5804 value2906 value1 value2 = (output5804, value2907, value1))
    (child5809 : Flapjack.WordAlloc.removeDeadStructural input5809 value2907 value1 value2 = (output5809, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5810 value2906 value1 value2 = (output5810, value5, value1) := by
  rw [input5810_def, output5810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5804]
  dsimp only
  rw [child5809]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5804_skip, output5809_skip]
  kernel_rfl

theorem node5811_cond_eq
    (child5803 : Flapjack.WordAlloc.removeDeadStructural input5803 value2904 value1 value2 = (output5803, value2906, value1))
    (child5810 : Flapjack.WordAlloc.removeDeadStructural input5810 value2906 value1 value2 = (output5810, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5811 value2904 value1 value2 = (output5811, value5, value1) := by
  rw [input5811_def, output5811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5803]
  dsimp only
  rw [child5810]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5803_skip, output5810_skip]
  kernel_rfl

theorem node5812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5812 value5 value1 value2 = (output5812, value2910, value1) := by
  rw [input5812_def, output5812_def]
  kernel_rfl

theorem node5813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5813 value2910 value1 value2 = (output5813, value2911, value1) := by
  rw [input5813_def, output5813_def]
  kernel_rfl

theorem node5814_cond_eq
    (child5812 : Flapjack.WordAlloc.removeDeadStructural input5812 value5 value1 value2 = (output5812, value2910, value1))
    (child5813 : Flapjack.WordAlloc.removeDeadStructural input5813 value2910 value1 value2 = (output5813, value2911, value1)) : Flapjack.WordAlloc.removeDeadStructural input5814 value5 value1 value2 = (output5814, value2911, value1) := by
  rw [input5814_def, output5814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5812]
  dsimp only
  rw [child5813]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5812_skip, output5813_skip]
  kernel_rfl

theorem node5815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5815 value2911 value1 value2 = (output5815, value2912, value1) := by
  rw [input5815_def, output5815_def]
  kernel_rfl

theorem node5816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5816 value2912 value1 value2 = (output5816, value2912, value1) := by
  rw [input5816_def, output5816_def]
  kernel_rfl

theorem node5817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5817 value2912 value1 value2 = (output5817, value2913, value1) := by
  rw [input5817_def, output5817_def]
  kernel_rfl

theorem node5818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5818 value2913 value1 value2 = (output5818, value2914, value1) := by
  rw [input5818_def, output5818_def]
  kernel_rfl

theorem node5819_cond_eq
    (child5817 : Flapjack.WordAlloc.removeDeadStructural input5817 value2912 value1 value2 = (output5817, value2913, value1))
    (child5818 : Flapjack.WordAlloc.removeDeadStructural input5818 value2913 value1 value2 = (output5818, value2914, value1)) : Flapjack.WordAlloc.removeDeadStructural input5819 value2912 value1 value2 = (output5819, value2914, value1) := by
  rw [input5819_def, output5819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5817]
  dsimp only
  rw [child5818]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5817_skip, output5818_skip]
  kernel_rfl

theorem node5820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5820 value2914 value1 value2 = (output5820, value2915, value1) := by
  rw [input5820_def, output5820_def]
  kernel_rfl

theorem node5821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5821 value2915 value1 value2 = (output5821, value2916, value1) := by
  rw [input5821_def, output5821_def]
  kernel_rfl

theorem node5822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5822 value2916 value1 value2 = (output5822, value2917, value1) := by
  rw [input5822_def, output5822_def]
  kernel_rfl

theorem node5823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5823 value2917 value1 value2 = (output5823, value5, value1) := by
  rw [input5823_def, output5823_def]
  kernel_rfl

theorem node5824_cond_eq
    (child5822 : Flapjack.WordAlloc.removeDeadStructural input5822 value2916 value1 value2 = (output5822, value2917, value1))
    (child5823 : Flapjack.WordAlloc.removeDeadStructural input5823 value2917 value1 value2 = (output5823, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5824 value2916 value1 value2 = (output5824, value5, value1) := by
  rw [input5824_def, output5824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5822]
  dsimp only
  rw [child5823]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5822_skip, output5823_skip]
  kernel_rfl

theorem node5825_cond_eq
    (child5821 : Flapjack.WordAlloc.removeDeadStructural input5821 value2915 value1 value2 = (output5821, value2916, value1))
    (child5824 : Flapjack.WordAlloc.removeDeadStructural input5824 value2916 value1 value2 = (output5824, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5825 value2915 value1 value2 = (output5825, value5, value1) := by
  rw [input5825_def, output5825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5821]
  dsimp only
  rw [child5824]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5821_skip, output5824_skip]
  kernel_rfl

theorem node5826_cond_eq
    (child5820 : Flapjack.WordAlloc.removeDeadStructural input5820 value2914 value1 value2 = (output5820, value2915, value1))
    (child5825 : Flapjack.WordAlloc.removeDeadStructural input5825 value2915 value1 value2 = (output5825, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5826 value2914 value1 value2 = (output5826, value5, value1) := by
  rw [input5826_def, output5826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5820]
  dsimp only
  rw [child5825]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5820_skip, output5825_skip]
  kernel_rfl

theorem node5827_cond_eq
    (child5819 : Flapjack.WordAlloc.removeDeadStructural input5819 value2912 value1 value2 = (output5819, value2914, value1))
    (child5826 : Flapjack.WordAlloc.removeDeadStructural input5826 value2914 value1 value2 = (output5826, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5827 value2912 value1 value2 = (output5827, value5, value1) := by
  rw [input5827_def, output5827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5819]
  dsimp only
  rw [child5826]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5819_skip, output5826_skip]
  kernel_rfl

theorem node5828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5828 value5 value1 value2 = (output5828, value2918, value1) := by
  rw [input5828_def, output5828_def]
  kernel_rfl

theorem node5829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5829 value2918 value1 value2 = (output5829, value2919, value1) := by
  rw [input5829_def, output5829_def]
  kernel_rfl

theorem node5830_cond_eq
    (child5828 : Flapjack.WordAlloc.removeDeadStructural input5828 value5 value1 value2 = (output5828, value2918, value1))
    (child5829 : Flapjack.WordAlloc.removeDeadStructural input5829 value2918 value1 value2 = (output5829, value2919, value1)) : Flapjack.WordAlloc.removeDeadStructural input5830 value5 value1 value2 = (output5830, value2919, value1) := by
  rw [input5830_def, output5830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5828]
  dsimp only
  rw [child5829]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5828_skip, output5829_skip]
  kernel_rfl

theorem node5831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5831 value2919 value1 value2 = (output5831, value2920, value1) := by
  rw [input5831_def, output5831_def]
  kernel_rfl

theorem node5832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5832 value2920 value1 value2 = (output5832, value2920, value1) := by
  rw [input5832_def, output5832_def]
  kernel_rfl

theorem node5833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5833 value2920 value1 value2 = (output5833, value2921, value1) := by
  rw [input5833_def, output5833_def]
  kernel_rfl

theorem node5834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5834 value2921 value1 value2 = (output5834, value2922, value1) := by
  rw [input5834_def, output5834_def]
  kernel_rfl

theorem node5835_cond_eq
    (child5833 : Flapjack.WordAlloc.removeDeadStructural input5833 value2920 value1 value2 = (output5833, value2921, value1))
    (child5834 : Flapjack.WordAlloc.removeDeadStructural input5834 value2921 value1 value2 = (output5834, value2922, value1)) : Flapjack.WordAlloc.removeDeadStructural input5835 value2920 value1 value2 = (output5835, value2922, value1) := by
  rw [input5835_def, output5835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5833]
  dsimp only
  rw [child5834]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5833_skip, output5834_skip]
  kernel_rfl

theorem node5836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5836 value2922 value1 value2 = (output5836, value2923, value1) := by
  rw [input5836_def, output5836_def]
  kernel_rfl

theorem node5837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5837 value2923 value1 value2 = (output5837, value2924, value1) := by
  rw [input5837_def, output5837_def]
  kernel_rfl

theorem node5838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5838 value2924 value1 value2 = (output5838, value2925, value1) := by
  rw [input5838_def, output5838_def]
  kernel_rfl

theorem node5839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5839 value2925 value1 value2 = (output5839, value5, value1) := by
  rw [input5839_def, output5839_def]
  kernel_rfl

theorem node5840_cond_eq
    (child5838 : Flapjack.WordAlloc.removeDeadStructural input5838 value2924 value1 value2 = (output5838, value2925, value1))
    (child5839 : Flapjack.WordAlloc.removeDeadStructural input5839 value2925 value1 value2 = (output5839, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5840 value2924 value1 value2 = (output5840, value5, value1) := by
  rw [input5840_def, output5840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5838]
  dsimp only
  rw [child5839]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5838_skip, output5839_skip]
  kernel_rfl

theorem node5841_cond_eq
    (child5837 : Flapjack.WordAlloc.removeDeadStructural input5837 value2923 value1 value2 = (output5837, value2924, value1))
    (child5840 : Flapjack.WordAlloc.removeDeadStructural input5840 value2924 value1 value2 = (output5840, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5841 value2923 value1 value2 = (output5841, value5, value1) := by
  rw [input5841_def, output5841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5837]
  dsimp only
  rw [child5840]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5837_skip, output5840_skip]
  kernel_rfl

theorem node5842_cond_eq
    (child5836 : Flapjack.WordAlloc.removeDeadStructural input5836 value2922 value1 value2 = (output5836, value2923, value1))
    (child5841 : Flapjack.WordAlloc.removeDeadStructural input5841 value2923 value1 value2 = (output5841, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5842 value2922 value1 value2 = (output5842, value5, value1) := by
  rw [input5842_def, output5842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5836]
  dsimp only
  rw [child5841]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5836_skip, output5841_skip]
  kernel_rfl

theorem node5843_cond_eq
    (child5835 : Flapjack.WordAlloc.removeDeadStructural input5835 value2920 value1 value2 = (output5835, value2922, value1))
    (child5842 : Flapjack.WordAlloc.removeDeadStructural input5842 value2922 value1 value2 = (output5842, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5843 value2920 value1 value2 = (output5843, value5, value1) := by
  rw [input5843_def, output5843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5835]
  dsimp only
  rw [child5842]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5835_skip, output5842_skip]
  kernel_rfl

theorem node5844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5844 value5 value1 value2 = (output5844, value2926, value1) := by
  rw [input5844_def, output5844_def]
  kernel_rfl

theorem node5845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5845 value2926 value1 value2 = (output5845, value2927, value1) := by
  rw [input5845_def, output5845_def]
  kernel_rfl

theorem node5846_cond_eq
    (child5844 : Flapjack.WordAlloc.removeDeadStructural input5844 value5 value1 value2 = (output5844, value2926, value1))
    (child5845 : Flapjack.WordAlloc.removeDeadStructural input5845 value2926 value1 value2 = (output5845, value2927, value1)) : Flapjack.WordAlloc.removeDeadStructural input5846 value5 value1 value2 = (output5846, value2927, value1) := by
  rw [input5846_def, output5846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5844]
  dsimp only
  rw [child5845]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5844_skip, output5845_skip]
  kernel_rfl

theorem node5847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5847 value2927 value1 value2 = (output5847, value2928, value1) := by
  rw [input5847_def, output5847_def]
  kernel_rfl

theorem node5848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5848 value2928 value1 value2 = (output5848, value2928, value1) := by
  rw [input5848_def, output5848_def]
  kernel_rfl

theorem node5849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5849 value2928 value1 value2 = (output5849, value2929, value1) := by
  rw [input5849_def, output5849_def]
  kernel_rfl

theorem node5850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5850 value2929 value1 value2 = (output5850, value2930, value1) := by
  rw [input5850_def, output5850_def]
  kernel_rfl

theorem node5851_cond_eq
    (child5849 : Flapjack.WordAlloc.removeDeadStructural input5849 value2928 value1 value2 = (output5849, value2929, value1))
    (child5850 : Flapjack.WordAlloc.removeDeadStructural input5850 value2929 value1 value2 = (output5850, value2930, value1)) : Flapjack.WordAlloc.removeDeadStructural input5851 value2928 value1 value2 = (output5851, value2930, value1) := by
  rw [input5851_def, output5851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5849]
  dsimp only
  rw [child5850]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5849_skip, output5850_skip]
  kernel_rfl

theorem node5852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5852 value2930 value1 value2 = (output5852, value2931, value1) := by
  rw [input5852_def, output5852_def]
  kernel_rfl

theorem node5853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5853 value2931 value1 value2 = (output5853, value2932, value1) := by
  rw [input5853_def, output5853_def]
  kernel_rfl

theorem node5854_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5854 value2932 value1 value2 = (output5854, value2933, value1) := by
  rw [input5854_def, output5854_def]
  kernel_rfl

theorem node5855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5855 value2933 value1 value2 = (output5855, value5, value1) := by
  rw [input5855_def, output5855_def]
  kernel_rfl

theorem node5856_cond_eq
    (child5854 : Flapjack.WordAlloc.removeDeadStructural input5854 value2932 value1 value2 = (output5854, value2933, value1))
    (child5855 : Flapjack.WordAlloc.removeDeadStructural input5855 value2933 value1 value2 = (output5855, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5856 value2932 value1 value2 = (output5856, value5, value1) := by
  rw [input5856_def, output5856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5854]
  dsimp only
  rw [child5855]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5854_skip, output5855_skip]
  kernel_rfl

theorem node5857_cond_eq
    (child5853 : Flapjack.WordAlloc.removeDeadStructural input5853 value2931 value1 value2 = (output5853, value2932, value1))
    (child5856 : Flapjack.WordAlloc.removeDeadStructural input5856 value2932 value1 value2 = (output5856, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5857 value2931 value1 value2 = (output5857, value5, value1) := by
  rw [input5857_def, output5857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5853]
  dsimp only
  rw [child5856]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5853_skip, output5856_skip]
  kernel_rfl

theorem node5858_cond_eq
    (child5852 : Flapjack.WordAlloc.removeDeadStructural input5852 value2930 value1 value2 = (output5852, value2931, value1))
    (child5857 : Flapjack.WordAlloc.removeDeadStructural input5857 value2931 value1 value2 = (output5857, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5858 value2930 value1 value2 = (output5858, value5, value1) := by
  rw [input5858_def, output5858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5852]
  dsimp only
  rw [child5857]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5852_skip, output5857_skip]
  kernel_rfl

theorem node5859_cond_eq
    (child5851 : Flapjack.WordAlloc.removeDeadStructural input5851 value2928 value1 value2 = (output5851, value2930, value1))
    (child5858 : Flapjack.WordAlloc.removeDeadStructural input5858 value2930 value1 value2 = (output5858, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5859 value2928 value1 value2 = (output5859, value5, value1) := by
  rw [input5859_def, output5859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5851]
  dsimp only
  rw [child5858]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5851_skip, output5858_skip]
  kernel_rfl

theorem node5860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5860 value5 value1 value2 = (output5860, value2934, value1) := by
  rw [input5860_def, output5860_def]
  kernel_rfl

theorem node5861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5861 value2934 value1 value2 = (output5861, value2935, value1) := by
  rw [input5861_def, output5861_def]
  kernel_rfl

theorem node5862_cond_eq
    (child5860 : Flapjack.WordAlloc.removeDeadStructural input5860 value5 value1 value2 = (output5860, value2934, value1))
    (child5861 : Flapjack.WordAlloc.removeDeadStructural input5861 value2934 value1 value2 = (output5861, value2935, value1)) : Flapjack.WordAlloc.removeDeadStructural input5862 value5 value1 value2 = (output5862, value2935, value1) := by
  rw [input5862_def, output5862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5860]
  dsimp only
  rw [child5861]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5860_skip, output5861_skip]
  kernel_rfl

theorem node5863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5863 value2935 value1 value2 = (output5863, value2936, value1) := by
  rw [input5863_def, output5863_def]
  kernel_rfl

theorem node5864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5864 value2936 value1 value2 = (output5864, value2936, value1) := by
  rw [input5864_def, output5864_def]
  kernel_rfl

theorem node5865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5865 value2936 value1 value2 = (output5865, value2937, value1) := by
  rw [input5865_def, output5865_def]
  kernel_rfl

theorem node5866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5866 value2937 value1 value2 = (output5866, value2938, value1) := by
  rw [input5866_def, output5866_def]
  kernel_rfl

theorem node5867_cond_eq
    (child5865 : Flapjack.WordAlloc.removeDeadStructural input5865 value2936 value1 value2 = (output5865, value2937, value1))
    (child5866 : Flapjack.WordAlloc.removeDeadStructural input5866 value2937 value1 value2 = (output5866, value2938, value1)) : Flapjack.WordAlloc.removeDeadStructural input5867 value2936 value1 value2 = (output5867, value2938, value1) := by
  rw [input5867_def, output5867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5865]
  dsimp only
  rw [child5866]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5865_skip, output5866_skip]
  kernel_rfl

theorem node5868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5868 value2938 value1 value2 = (output5868, value2939, value1) := by
  rw [input5868_def, output5868_def]
  kernel_rfl

theorem node5869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5869 value2939 value1 value2 = (output5869, value2940, value1) := by
  rw [input5869_def, output5869_def]
  kernel_rfl

theorem node5870_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5870 value2940 value1 value2 = (output5870, value2941, value1) := by
  rw [input5870_def, output5870_def]
  kernel_rfl

theorem node5871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5871 value2941 value1 value2 = (output5871, value5, value1) := by
  rw [input5871_def, output5871_def]
  kernel_rfl

theorem node5872_cond_eq
    (child5870 : Flapjack.WordAlloc.removeDeadStructural input5870 value2940 value1 value2 = (output5870, value2941, value1))
    (child5871 : Flapjack.WordAlloc.removeDeadStructural input5871 value2941 value1 value2 = (output5871, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5872 value2940 value1 value2 = (output5872, value5, value1) := by
  rw [input5872_def, output5872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5870]
  dsimp only
  rw [child5871]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5870_skip, output5871_skip]
  kernel_rfl

theorem node5873_cond_eq
    (child5869 : Flapjack.WordAlloc.removeDeadStructural input5869 value2939 value1 value2 = (output5869, value2940, value1))
    (child5872 : Flapjack.WordAlloc.removeDeadStructural input5872 value2940 value1 value2 = (output5872, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5873 value2939 value1 value2 = (output5873, value5, value1) := by
  rw [input5873_def, output5873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5869]
  dsimp only
  rw [child5872]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5869_skip, output5872_skip]
  kernel_rfl

theorem node5874_cond_eq
    (child5868 : Flapjack.WordAlloc.removeDeadStructural input5868 value2938 value1 value2 = (output5868, value2939, value1))
    (child5873 : Flapjack.WordAlloc.removeDeadStructural input5873 value2939 value1 value2 = (output5873, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5874 value2938 value1 value2 = (output5874, value5, value1) := by
  rw [input5874_def, output5874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5868]
  dsimp only
  rw [child5873]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5868_skip, output5873_skip]
  kernel_rfl

theorem node5875_cond_eq
    (child5867 : Flapjack.WordAlloc.removeDeadStructural input5867 value2936 value1 value2 = (output5867, value2938, value1))
    (child5874 : Flapjack.WordAlloc.removeDeadStructural input5874 value2938 value1 value2 = (output5874, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5875 value2936 value1 value2 = (output5875, value5, value1) := by
  rw [input5875_def, output5875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5867]
  dsimp only
  rw [child5874]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5867_skip, output5874_skip]
  kernel_rfl

theorem node5876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5876 value5 value1 value2 = (output5876, value2942, value1) := by
  rw [input5876_def, output5876_def]
  kernel_rfl

theorem node5877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5877 value2942 value1 value2 = (output5877, value2943, value1) := by
  rw [input5877_def, output5877_def]
  kernel_rfl

theorem node5878_cond_eq
    (child5876 : Flapjack.WordAlloc.removeDeadStructural input5876 value5 value1 value2 = (output5876, value2942, value1))
    (child5877 : Flapjack.WordAlloc.removeDeadStructural input5877 value2942 value1 value2 = (output5877, value2943, value1)) : Flapjack.WordAlloc.removeDeadStructural input5878 value5 value1 value2 = (output5878, value2943, value1) := by
  rw [input5878_def, output5878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5876]
  dsimp only
  rw [child5877]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5876_skip, output5877_skip]
  kernel_rfl

theorem node5879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5879 value2943 value1 value2 = (output5879, value2944, value1) := by
  rw [input5879_def, output5879_def]
  kernel_rfl

theorem node5880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5880 value2944 value1 value2 = (output5880, value2944, value1) := by
  rw [input5880_def, output5880_def]
  kernel_rfl

theorem node5881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5881 value2944 value1 value2 = (output5881, value2945, value1) := by
  rw [input5881_def, output5881_def]
  kernel_rfl

theorem node5882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5882 value2945 value1 value2 = (output5882, value2946, value1) := by
  rw [input5882_def, output5882_def]
  kernel_rfl

theorem node5883_cond_eq
    (child5881 : Flapjack.WordAlloc.removeDeadStructural input5881 value2944 value1 value2 = (output5881, value2945, value1))
    (child5882 : Flapjack.WordAlloc.removeDeadStructural input5882 value2945 value1 value2 = (output5882, value2946, value1)) : Flapjack.WordAlloc.removeDeadStructural input5883 value2944 value1 value2 = (output5883, value2946, value1) := by
  rw [input5883_def, output5883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5881]
  dsimp only
  rw [child5882]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5881_skip, output5882_skip]
  kernel_rfl

theorem node5884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5884 value2946 value1 value2 = (output5884, value2947, value1) := by
  rw [input5884_def, output5884_def]
  kernel_rfl

theorem node5885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5885 value2947 value1 value2 = (output5885, value2948, value1) := by
  rw [input5885_def, output5885_def]
  kernel_rfl

theorem node5886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5886 value2948 value1 value2 = (output5886, value2949, value1) := by
  rw [input5886_def, output5886_def]
  kernel_rfl

theorem node5887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5887 value2949 value1 value2 = (output5887, value5, value1) := by
  rw [input5887_def, output5887_def]
  kernel_rfl

#print axioms node5887_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
