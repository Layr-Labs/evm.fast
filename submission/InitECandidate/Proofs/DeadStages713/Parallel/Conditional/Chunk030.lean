import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk030
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node7680_cond_eq
    (child7678 : Flapjack.WordAlloc.removeDeadStructural input7678 value3844 value1 value2 = (output7678, value3845, value1))
    (child7679 : Flapjack.WordAlloc.removeDeadStructural input7679 value3845 value1 value2 = (output7679, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7680 value3844 value1 value2 = (output7680, value5, value1) := by
  rw [input7680_def, output7680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7678]
  dsimp only
  rw [child7679]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7678_skip, output7679_skip]
  kernel_rfl

theorem node7681_cond_eq
    (child7677 : Flapjack.WordAlloc.removeDeadStructural input7677 value3843 value1 value2 = (output7677, value3844, value1))
    (child7680 : Flapjack.WordAlloc.removeDeadStructural input7680 value3844 value1 value2 = (output7680, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7681 value3843 value1 value2 = (output7681, value5, value1) := by
  rw [input7681_def, output7681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7677]
  dsimp only
  rw [child7680]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7677_skip, output7680_skip]
  kernel_rfl

theorem node7682_cond_eq
    (child7676 : Flapjack.WordAlloc.removeDeadStructural input7676 value3842 value1 value2 = (output7676, value3843, value1))
    (child7681 : Flapjack.WordAlloc.removeDeadStructural input7681 value3843 value1 value2 = (output7681, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7682 value3842 value1 value2 = (output7682, value5, value1) := by
  rw [input7682_def, output7682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7676]
  dsimp only
  rw [child7681]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7676_skip, output7681_skip]
  kernel_rfl

theorem node7683_cond_eq
    (child7675 : Flapjack.WordAlloc.removeDeadStructural input7675 value3840 value1 value2 = (output7675, value3842, value1))
    (child7682 : Flapjack.WordAlloc.removeDeadStructural input7682 value3842 value1 value2 = (output7682, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7683 value3840 value1 value2 = (output7683, value5, value1) := by
  rw [input7683_def, output7683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7675]
  dsimp only
  rw [child7682]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7675_skip, output7682_skip]
  kernel_rfl

theorem node7684_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7684 value5 value1 value2 = (output7684, value3846, value1) := by
  rw [input7684_def, output7684_def]
  kernel_rfl

theorem node7685_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7685 value3846 value1 value2 = (output7685, value3847, value1) := by
  rw [input7685_def, output7685_def]
  kernel_rfl

theorem node7686_cond_eq
    (child7684 : Flapjack.WordAlloc.removeDeadStructural input7684 value5 value1 value2 = (output7684, value3846, value1))
    (child7685 : Flapjack.WordAlloc.removeDeadStructural input7685 value3846 value1 value2 = (output7685, value3847, value1)) : Flapjack.WordAlloc.removeDeadStructural input7686 value5 value1 value2 = (output7686, value3847, value1) := by
  rw [input7686_def, output7686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7684]
  dsimp only
  rw [child7685]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7684_skip, output7685_skip]
  kernel_rfl

theorem node7687_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7687 value3847 value1 value2 = (output7687, value3848, value1) := by
  rw [input7687_def, output7687_def]
  kernel_rfl

theorem node7688_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7688 value3848 value1 value2 = (output7688, value3848, value1) := by
  rw [input7688_def, output7688_def]
  kernel_rfl

theorem node7689_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7689 value3848 value1 value2 = (output7689, value3849, value1) := by
  rw [input7689_def, output7689_def]
  kernel_rfl

theorem node7690_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7690 value3849 value1 value2 = (output7690, value3850, value1) := by
  rw [input7690_def, output7690_def]
  kernel_rfl

theorem node7691_cond_eq
    (child7689 : Flapjack.WordAlloc.removeDeadStructural input7689 value3848 value1 value2 = (output7689, value3849, value1))
    (child7690 : Flapjack.WordAlloc.removeDeadStructural input7690 value3849 value1 value2 = (output7690, value3850, value1)) : Flapjack.WordAlloc.removeDeadStructural input7691 value3848 value1 value2 = (output7691, value3850, value1) := by
  rw [input7691_def, output7691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7689]
  dsimp only
  rw [child7690]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7689_skip, output7690_skip]
  kernel_rfl

theorem node7692_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7692 value3850 value1 value2 = (output7692, value3851, value1) := by
  rw [input7692_def, output7692_def]
  kernel_rfl

theorem node7693_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7693 value3851 value1 value2 = (output7693, value3852, value1) := by
  rw [input7693_def, output7693_def]
  kernel_rfl

theorem node7694_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7694 value3852 value1 value2 = (output7694, value3853, value1) := by
  rw [input7694_def, output7694_def]
  kernel_rfl

theorem node7695_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7695 value3853 value1 value2 = (output7695, value5, value1) := by
  rw [input7695_def, output7695_def]
  kernel_rfl

theorem node7696_cond_eq
    (child7694 : Flapjack.WordAlloc.removeDeadStructural input7694 value3852 value1 value2 = (output7694, value3853, value1))
    (child7695 : Flapjack.WordAlloc.removeDeadStructural input7695 value3853 value1 value2 = (output7695, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7696 value3852 value1 value2 = (output7696, value5, value1) := by
  rw [input7696_def, output7696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7694]
  dsimp only
  rw [child7695]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7694_skip, output7695_skip]
  kernel_rfl

theorem node7697_cond_eq
    (child7693 : Flapjack.WordAlloc.removeDeadStructural input7693 value3851 value1 value2 = (output7693, value3852, value1))
    (child7696 : Flapjack.WordAlloc.removeDeadStructural input7696 value3852 value1 value2 = (output7696, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7697 value3851 value1 value2 = (output7697, value5, value1) := by
  rw [input7697_def, output7697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7693]
  dsimp only
  rw [child7696]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7693_skip, output7696_skip]
  kernel_rfl

theorem node7698_cond_eq
    (child7692 : Flapjack.WordAlloc.removeDeadStructural input7692 value3850 value1 value2 = (output7692, value3851, value1))
    (child7697 : Flapjack.WordAlloc.removeDeadStructural input7697 value3851 value1 value2 = (output7697, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7698 value3850 value1 value2 = (output7698, value5, value1) := by
  rw [input7698_def, output7698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7692]
  dsimp only
  rw [child7697]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7692_skip, output7697_skip]
  kernel_rfl

theorem node7699_cond_eq
    (child7691 : Flapjack.WordAlloc.removeDeadStructural input7691 value3848 value1 value2 = (output7691, value3850, value1))
    (child7698 : Flapjack.WordAlloc.removeDeadStructural input7698 value3850 value1 value2 = (output7698, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7699 value3848 value1 value2 = (output7699, value5, value1) := by
  rw [input7699_def, output7699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7691]
  dsimp only
  rw [child7698]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7691_skip, output7698_skip]
  kernel_rfl

theorem node7700_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7700 value5 value1 value2 = (output7700, value3854, value1) := by
  rw [input7700_def, output7700_def]
  kernel_rfl

theorem node7701_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7701 value3854 value1 value2 = (output7701, value3855, value1) := by
  rw [input7701_def, output7701_def]
  kernel_rfl

theorem node7702_cond_eq
    (child7700 : Flapjack.WordAlloc.removeDeadStructural input7700 value5 value1 value2 = (output7700, value3854, value1))
    (child7701 : Flapjack.WordAlloc.removeDeadStructural input7701 value3854 value1 value2 = (output7701, value3855, value1)) : Flapjack.WordAlloc.removeDeadStructural input7702 value5 value1 value2 = (output7702, value3855, value1) := by
  rw [input7702_def, output7702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7700]
  dsimp only
  rw [child7701]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7700_skip, output7701_skip]
  kernel_rfl

theorem node7703_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7703 value3855 value1 value2 = (output7703, value3856, value1) := by
  rw [input7703_def, output7703_def]
  kernel_rfl

theorem node7704_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7704 value3856 value1 value2 = (output7704, value3856, value1) := by
  rw [input7704_def, output7704_def]
  kernel_rfl

theorem node7705_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7705 value3856 value1 value2 = (output7705, value3857, value1) := by
  rw [input7705_def, output7705_def]
  kernel_rfl

theorem node7706_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7706 value3857 value1 value2 = (output7706, value3858, value1) := by
  rw [input7706_def, output7706_def]
  kernel_rfl

theorem node7707_cond_eq
    (child7705 : Flapjack.WordAlloc.removeDeadStructural input7705 value3856 value1 value2 = (output7705, value3857, value1))
    (child7706 : Flapjack.WordAlloc.removeDeadStructural input7706 value3857 value1 value2 = (output7706, value3858, value1)) : Flapjack.WordAlloc.removeDeadStructural input7707 value3856 value1 value2 = (output7707, value3858, value1) := by
  rw [input7707_def, output7707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7705]
  dsimp only
  rw [child7706]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7705_skip, output7706_skip]
  kernel_rfl

theorem node7708_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7708 value3858 value1 value2 = (output7708, value3859, value1) := by
  rw [input7708_def, output7708_def]
  kernel_rfl

theorem node7709_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7709 value3859 value1 value2 = (output7709, value3860, value1) := by
  rw [input7709_def, output7709_def]
  kernel_rfl

theorem node7710_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7710 value3860 value1 value2 = (output7710, value3861, value1) := by
  rw [input7710_def, output7710_def]
  kernel_rfl

theorem node7711_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7711 value3861 value1 value2 = (output7711, value5, value1) := by
  rw [input7711_def, output7711_def]
  kernel_rfl

theorem node7712_cond_eq
    (child7710 : Flapjack.WordAlloc.removeDeadStructural input7710 value3860 value1 value2 = (output7710, value3861, value1))
    (child7711 : Flapjack.WordAlloc.removeDeadStructural input7711 value3861 value1 value2 = (output7711, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7712 value3860 value1 value2 = (output7712, value5, value1) := by
  rw [input7712_def, output7712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7710]
  dsimp only
  rw [child7711]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7710_skip, output7711_skip]
  kernel_rfl

theorem node7713_cond_eq
    (child7709 : Flapjack.WordAlloc.removeDeadStructural input7709 value3859 value1 value2 = (output7709, value3860, value1))
    (child7712 : Flapjack.WordAlloc.removeDeadStructural input7712 value3860 value1 value2 = (output7712, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7713 value3859 value1 value2 = (output7713, value5, value1) := by
  rw [input7713_def, output7713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7709]
  dsimp only
  rw [child7712]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7709_skip, output7712_skip]
  kernel_rfl

theorem node7714_cond_eq
    (child7708 : Flapjack.WordAlloc.removeDeadStructural input7708 value3858 value1 value2 = (output7708, value3859, value1))
    (child7713 : Flapjack.WordAlloc.removeDeadStructural input7713 value3859 value1 value2 = (output7713, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7714 value3858 value1 value2 = (output7714, value5, value1) := by
  rw [input7714_def, output7714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7708]
  dsimp only
  rw [child7713]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7708_skip, output7713_skip]
  kernel_rfl

theorem node7715_cond_eq
    (child7707 : Flapjack.WordAlloc.removeDeadStructural input7707 value3856 value1 value2 = (output7707, value3858, value1))
    (child7714 : Flapjack.WordAlloc.removeDeadStructural input7714 value3858 value1 value2 = (output7714, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7715 value3856 value1 value2 = (output7715, value5, value1) := by
  rw [input7715_def, output7715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7707]
  dsimp only
  rw [child7714]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7707_skip, output7714_skip]
  kernel_rfl

theorem node7716_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7716 value5 value1 value2 = (output7716, value3862, value1) := by
  rw [input7716_def, output7716_def]
  kernel_rfl

theorem node7717_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7717 value3862 value1 value2 = (output7717, value3863, value1) := by
  rw [input7717_def, output7717_def]
  kernel_rfl

theorem node7718_cond_eq
    (child7716 : Flapjack.WordAlloc.removeDeadStructural input7716 value5 value1 value2 = (output7716, value3862, value1))
    (child7717 : Flapjack.WordAlloc.removeDeadStructural input7717 value3862 value1 value2 = (output7717, value3863, value1)) : Flapjack.WordAlloc.removeDeadStructural input7718 value5 value1 value2 = (output7718, value3863, value1) := by
  rw [input7718_def, output7718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7716]
  dsimp only
  rw [child7717]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7716_skip, output7717_skip]
  kernel_rfl

theorem node7719_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7719 value3863 value1 value2 = (output7719, value3864, value1) := by
  rw [input7719_def, output7719_def]
  kernel_rfl

theorem node7720_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7720 value3864 value1 value2 = (output7720, value3864, value1) := by
  rw [input7720_def, output7720_def]
  kernel_rfl

theorem node7721_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7721 value3864 value1 value2 = (output7721, value3865, value1) := by
  rw [input7721_def, output7721_def]
  kernel_rfl

theorem node7722_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7722 value3865 value1 value2 = (output7722, value3866, value1) := by
  rw [input7722_def, output7722_def]
  kernel_rfl

theorem node7723_cond_eq
    (child7721 : Flapjack.WordAlloc.removeDeadStructural input7721 value3864 value1 value2 = (output7721, value3865, value1))
    (child7722 : Flapjack.WordAlloc.removeDeadStructural input7722 value3865 value1 value2 = (output7722, value3866, value1)) : Flapjack.WordAlloc.removeDeadStructural input7723 value3864 value1 value2 = (output7723, value3866, value1) := by
  rw [input7723_def, output7723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7721]
  dsimp only
  rw [child7722]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7721_skip, output7722_skip]
  kernel_rfl

theorem node7724_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7724 value3866 value1 value2 = (output7724, value3867, value1) := by
  rw [input7724_def, output7724_def]
  kernel_rfl

theorem node7725_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7725 value3867 value1 value2 = (output7725, value3868, value1) := by
  rw [input7725_def, output7725_def]
  kernel_rfl

theorem node7726_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7726 value3868 value1 value2 = (output7726, value3869, value1) := by
  rw [input7726_def, output7726_def]
  kernel_rfl

theorem node7727_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7727 value3869 value1 value2 = (output7727, value5, value1) := by
  rw [input7727_def, output7727_def]
  kernel_rfl

theorem node7728_cond_eq
    (child7726 : Flapjack.WordAlloc.removeDeadStructural input7726 value3868 value1 value2 = (output7726, value3869, value1))
    (child7727 : Flapjack.WordAlloc.removeDeadStructural input7727 value3869 value1 value2 = (output7727, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7728 value3868 value1 value2 = (output7728, value5, value1) := by
  rw [input7728_def, output7728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7726]
  dsimp only
  rw [child7727]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7726_skip, output7727_skip]
  kernel_rfl

theorem node7729_cond_eq
    (child7725 : Flapjack.WordAlloc.removeDeadStructural input7725 value3867 value1 value2 = (output7725, value3868, value1))
    (child7728 : Flapjack.WordAlloc.removeDeadStructural input7728 value3868 value1 value2 = (output7728, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7729 value3867 value1 value2 = (output7729, value5, value1) := by
  rw [input7729_def, output7729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7725]
  dsimp only
  rw [child7728]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7725_skip, output7728_skip]
  kernel_rfl

theorem node7730_cond_eq
    (child7724 : Flapjack.WordAlloc.removeDeadStructural input7724 value3866 value1 value2 = (output7724, value3867, value1))
    (child7729 : Flapjack.WordAlloc.removeDeadStructural input7729 value3867 value1 value2 = (output7729, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7730 value3866 value1 value2 = (output7730, value5, value1) := by
  rw [input7730_def, output7730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7724]
  dsimp only
  rw [child7729]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7724_skip, output7729_skip]
  kernel_rfl

theorem node7731_cond_eq
    (child7723 : Flapjack.WordAlloc.removeDeadStructural input7723 value3864 value1 value2 = (output7723, value3866, value1))
    (child7730 : Flapjack.WordAlloc.removeDeadStructural input7730 value3866 value1 value2 = (output7730, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7731 value3864 value1 value2 = (output7731, value5, value1) := by
  rw [input7731_def, output7731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7723]
  dsimp only
  rw [child7730]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7723_skip, output7730_skip]
  kernel_rfl

theorem node7732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7732 value5 value1 value2 = (output7732, value3870, value1) := by
  rw [input7732_def, output7732_def]
  kernel_rfl

theorem node7733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7733 value3870 value1 value2 = (output7733, value3871, value1) := by
  rw [input7733_def, output7733_def]
  kernel_rfl

theorem node7734_cond_eq
    (child7732 : Flapjack.WordAlloc.removeDeadStructural input7732 value5 value1 value2 = (output7732, value3870, value1))
    (child7733 : Flapjack.WordAlloc.removeDeadStructural input7733 value3870 value1 value2 = (output7733, value3871, value1)) : Flapjack.WordAlloc.removeDeadStructural input7734 value5 value1 value2 = (output7734, value3871, value1) := by
  rw [input7734_def, output7734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7732]
  dsimp only
  rw [child7733]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7732_skip, output7733_skip]
  kernel_rfl

theorem node7735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7735 value3871 value1 value2 = (output7735, value3872, value1) := by
  rw [input7735_def, output7735_def]
  kernel_rfl

theorem node7736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7736 value3872 value1 value2 = (output7736, value3872, value1) := by
  rw [input7736_def, output7736_def]
  kernel_rfl

theorem node7737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7737 value3872 value1 value2 = (output7737, value3873, value1) := by
  rw [input7737_def, output7737_def]
  kernel_rfl

theorem node7738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7738 value3873 value1 value2 = (output7738, value3874, value1) := by
  rw [input7738_def, output7738_def]
  kernel_rfl

theorem node7739_cond_eq
    (child7737 : Flapjack.WordAlloc.removeDeadStructural input7737 value3872 value1 value2 = (output7737, value3873, value1))
    (child7738 : Flapjack.WordAlloc.removeDeadStructural input7738 value3873 value1 value2 = (output7738, value3874, value1)) : Flapjack.WordAlloc.removeDeadStructural input7739 value3872 value1 value2 = (output7739, value3874, value1) := by
  rw [input7739_def, output7739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7737]
  dsimp only
  rw [child7738]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7737_skip, output7738_skip]
  kernel_rfl

theorem node7740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7740 value3874 value1 value2 = (output7740, value3875, value1) := by
  rw [input7740_def, output7740_def]
  kernel_rfl

theorem node7741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7741 value3875 value1 value2 = (output7741, value3876, value1) := by
  rw [input7741_def, output7741_def]
  kernel_rfl

theorem node7742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7742 value3876 value1 value2 = (output7742, value3877, value1) := by
  rw [input7742_def, output7742_def]
  kernel_rfl

theorem node7743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7743 value3877 value1 value2 = (output7743, value5, value1) := by
  rw [input7743_def, output7743_def]
  kernel_rfl

theorem node7744_cond_eq
    (child7742 : Flapjack.WordAlloc.removeDeadStructural input7742 value3876 value1 value2 = (output7742, value3877, value1))
    (child7743 : Flapjack.WordAlloc.removeDeadStructural input7743 value3877 value1 value2 = (output7743, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7744 value3876 value1 value2 = (output7744, value5, value1) := by
  rw [input7744_def, output7744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7742]
  dsimp only
  rw [child7743]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7742_skip, output7743_skip]
  kernel_rfl

theorem node7745_cond_eq
    (child7741 : Flapjack.WordAlloc.removeDeadStructural input7741 value3875 value1 value2 = (output7741, value3876, value1))
    (child7744 : Flapjack.WordAlloc.removeDeadStructural input7744 value3876 value1 value2 = (output7744, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7745 value3875 value1 value2 = (output7745, value5, value1) := by
  rw [input7745_def, output7745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7741]
  dsimp only
  rw [child7744]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7741_skip, output7744_skip]
  kernel_rfl

theorem node7746_cond_eq
    (child7740 : Flapjack.WordAlloc.removeDeadStructural input7740 value3874 value1 value2 = (output7740, value3875, value1))
    (child7745 : Flapjack.WordAlloc.removeDeadStructural input7745 value3875 value1 value2 = (output7745, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7746 value3874 value1 value2 = (output7746, value5, value1) := by
  rw [input7746_def, output7746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7740]
  dsimp only
  rw [child7745]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7740_skip, output7745_skip]
  kernel_rfl

theorem node7747_cond_eq
    (child7739 : Flapjack.WordAlloc.removeDeadStructural input7739 value3872 value1 value2 = (output7739, value3874, value1))
    (child7746 : Flapjack.WordAlloc.removeDeadStructural input7746 value3874 value1 value2 = (output7746, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7747 value3872 value1 value2 = (output7747, value5, value1) := by
  rw [input7747_def, output7747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7739]
  dsimp only
  rw [child7746]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7739_skip, output7746_skip]
  kernel_rfl

theorem node7748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7748 value5 value1 value2 = (output7748, value3878, value1) := by
  rw [input7748_def, output7748_def]
  kernel_rfl

theorem node7749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7749 value3878 value1 value2 = (output7749, value3879, value1) := by
  rw [input7749_def, output7749_def]
  kernel_rfl

theorem node7750_cond_eq
    (child7748 : Flapjack.WordAlloc.removeDeadStructural input7748 value5 value1 value2 = (output7748, value3878, value1))
    (child7749 : Flapjack.WordAlloc.removeDeadStructural input7749 value3878 value1 value2 = (output7749, value3879, value1)) : Flapjack.WordAlloc.removeDeadStructural input7750 value5 value1 value2 = (output7750, value3879, value1) := by
  rw [input7750_def, output7750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7748]
  dsimp only
  rw [child7749]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7748_skip, output7749_skip]
  kernel_rfl

theorem node7751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7751 value3879 value1 value2 = (output7751, value3880, value1) := by
  rw [input7751_def, output7751_def]
  kernel_rfl

theorem node7752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7752 value3880 value1 value2 = (output7752, value3880, value1) := by
  rw [input7752_def, output7752_def]
  kernel_rfl

theorem node7753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7753 value3880 value1 value2 = (output7753, value3881, value1) := by
  rw [input7753_def, output7753_def]
  kernel_rfl

theorem node7754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7754 value3881 value1 value2 = (output7754, value3882, value1) := by
  rw [input7754_def, output7754_def]
  kernel_rfl

theorem node7755_cond_eq
    (child7753 : Flapjack.WordAlloc.removeDeadStructural input7753 value3880 value1 value2 = (output7753, value3881, value1))
    (child7754 : Flapjack.WordAlloc.removeDeadStructural input7754 value3881 value1 value2 = (output7754, value3882, value1)) : Flapjack.WordAlloc.removeDeadStructural input7755 value3880 value1 value2 = (output7755, value3882, value1) := by
  rw [input7755_def, output7755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7753]
  dsimp only
  rw [child7754]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7753_skip, output7754_skip]
  kernel_rfl

theorem node7756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7756 value3882 value1 value2 = (output7756, value3883, value1) := by
  rw [input7756_def, output7756_def]
  kernel_rfl

theorem node7757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7757 value3883 value1 value2 = (output7757, value3884, value1) := by
  rw [input7757_def, output7757_def]
  kernel_rfl

theorem node7758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7758 value3884 value1 value2 = (output7758, value3885, value1) := by
  rw [input7758_def, output7758_def]
  kernel_rfl

theorem node7759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7759 value3885 value1 value2 = (output7759, value5, value1) := by
  rw [input7759_def, output7759_def]
  kernel_rfl

theorem node7760_cond_eq
    (child7758 : Flapjack.WordAlloc.removeDeadStructural input7758 value3884 value1 value2 = (output7758, value3885, value1))
    (child7759 : Flapjack.WordAlloc.removeDeadStructural input7759 value3885 value1 value2 = (output7759, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7760 value3884 value1 value2 = (output7760, value5, value1) := by
  rw [input7760_def, output7760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7758]
  dsimp only
  rw [child7759]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7758_skip, output7759_skip]
  kernel_rfl

theorem node7761_cond_eq
    (child7757 : Flapjack.WordAlloc.removeDeadStructural input7757 value3883 value1 value2 = (output7757, value3884, value1))
    (child7760 : Flapjack.WordAlloc.removeDeadStructural input7760 value3884 value1 value2 = (output7760, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7761 value3883 value1 value2 = (output7761, value5, value1) := by
  rw [input7761_def, output7761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7757]
  dsimp only
  rw [child7760]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7757_skip, output7760_skip]
  kernel_rfl

theorem node7762_cond_eq
    (child7756 : Flapjack.WordAlloc.removeDeadStructural input7756 value3882 value1 value2 = (output7756, value3883, value1))
    (child7761 : Flapjack.WordAlloc.removeDeadStructural input7761 value3883 value1 value2 = (output7761, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7762 value3882 value1 value2 = (output7762, value5, value1) := by
  rw [input7762_def, output7762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7756]
  dsimp only
  rw [child7761]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7756_skip, output7761_skip]
  kernel_rfl

theorem node7763_cond_eq
    (child7755 : Flapjack.WordAlloc.removeDeadStructural input7755 value3880 value1 value2 = (output7755, value3882, value1))
    (child7762 : Flapjack.WordAlloc.removeDeadStructural input7762 value3882 value1 value2 = (output7762, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7763 value3880 value1 value2 = (output7763, value5, value1) := by
  rw [input7763_def, output7763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7755]
  dsimp only
  rw [child7762]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7755_skip, output7762_skip]
  kernel_rfl

theorem node7764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7764 value5 value1 value2 = (output7764, value3886, value1) := by
  rw [input7764_def, output7764_def]
  kernel_rfl

theorem node7765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7765 value3886 value1 value2 = (output7765, value3887, value1) := by
  rw [input7765_def, output7765_def]
  kernel_rfl

theorem node7766_cond_eq
    (child7764 : Flapjack.WordAlloc.removeDeadStructural input7764 value5 value1 value2 = (output7764, value3886, value1))
    (child7765 : Flapjack.WordAlloc.removeDeadStructural input7765 value3886 value1 value2 = (output7765, value3887, value1)) : Flapjack.WordAlloc.removeDeadStructural input7766 value5 value1 value2 = (output7766, value3887, value1) := by
  rw [input7766_def, output7766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7764]
  dsimp only
  rw [child7765]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7764_skip, output7765_skip]
  kernel_rfl

theorem node7767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7767 value3887 value1 value2 = (output7767, value3888, value1) := by
  rw [input7767_def, output7767_def]
  kernel_rfl

theorem node7768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7768 value3888 value1 value2 = (output7768, value3888, value1) := by
  rw [input7768_def, output7768_def]
  kernel_rfl

theorem node7769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7769 value3888 value1 value2 = (output7769, value3889, value1) := by
  rw [input7769_def, output7769_def]
  kernel_rfl

theorem node7770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7770 value3889 value1 value2 = (output7770, value3890, value1) := by
  rw [input7770_def, output7770_def]
  kernel_rfl

theorem node7771_cond_eq
    (child7769 : Flapjack.WordAlloc.removeDeadStructural input7769 value3888 value1 value2 = (output7769, value3889, value1))
    (child7770 : Flapjack.WordAlloc.removeDeadStructural input7770 value3889 value1 value2 = (output7770, value3890, value1)) : Flapjack.WordAlloc.removeDeadStructural input7771 value3888 value1 value2 = (output7771, value3890, value1) := by
  rw [input7771_def, output7771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7769]
  dsimp only
  rw [child7770]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7769_skip, output7770_skip]
  kernel_rfl

theorem node7772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7772 value3890 value1 value2 = (output7772, value3891, value1) := by
  rw [input7772_def, output7772_def]
  kernel_rfl

theorem node7773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7773 value3891 value1 value2 = (output7773, value3892, value1) := by
  rw [input7773_def, output7773_def]
  kernel_rfl

theorem node7774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7774 value3892 value1 value2 = (output7774, value3893, value1) := by
  rw [input7774_def, output7774_def]
  kernel_rfl

theorem node7775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7775 value3893 value1 value2 = (output7775, value5, value1) := by
  rw [input7775_def, output7775_def]
  kernel_rfl

theorem node7776_cond_eq
    (child7774 : Flapjack.WordAlloc.removeDeadStructural input7774 value3892 value1 value2 = (output7774, value3893, value1))
    (child7775 : Flapjack.WordAlloc.removeDeadStructural input7775 value3893 value1 value2 = (output7775, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7776 value3892 value1 value2 = (output7776, value5, value1) := by
  rw [input7776_def, output7776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7774]
  dsimp only
  rw [child7775]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7774_skip, output7775_skip]
  kernel_rfl

theorem node7777_cond_eq
    (child7773 : Flapjack.WordAlloc.removeDeadStructural input7773 value3891 value1 value2 = (output7773, value3892, value1))
    (child7776 : Flapjack.WordAlloc.removeDeadStructural input7776 value3892 value1 value2 = (output7776, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7777 value3891 value1 value2 = (output7777, value5, value1) := by
  rw [input7777_def, output7777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7773]
  dsimp only
  rw [child7776]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7773_skip, output7776_skip]
  kernel_rfl

theorem node7778_cond_eq
    (child7772 : Flapjack.WordAlloc.removeDeadStructural input7772 value3890 value1 value2 = (output7772, value3891, value1))
    (child7777 : Flapjack.WordAlloc.removeDeadStructural input7777 value3891 value1 value2 = (output7777, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7778 value3890 value1 value2 = (output7778, value5, value1) := by
  rw [input7778_def, output7778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7772]
  dsimp only
  rw [child7777]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7772_skip, output7777_skip]
  kernel_rfl

theorem node7779_cond_eq
    (child7771 : Flapjack.WordAlloc.removeDeadStructural input7771 value3888 value1 value2 = (output7771, value3890, value1))
    (child7778 : Flapjack.WordAlloc.removeDeadStructural input7778 value3890 value1 value2 = (output7778, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7779 value3888 value1 value2 = (output7779, value5, value1) := by
  rw [input7779_def, output7779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7771]
  dsimp only
  rw [child7778]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7771_skip, output7778_skip]
  kernel_rfl

theorem node7780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7780 value5 value1 value2 = (output7780, value3894, value1) := by
  rw [input7780_def, output7780_def]
  kernel_rfl

theorem node7781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7781 value3894 value1 value2 = (output7781, value3895, value1) := by
  rw [input7781_def, output7781_def]
  kernel_rfl

theorem node7782_cond_eq
    (child7780 : Flapjack.WordAlloc.removeDeadStructural input7780 value5 value1 value2 = (output7780, value3894, value1))
    (child7781 : Flapjack.WordAlloc.removeDeadStructural input7781 value3894 value1 value2 = (output7781, value3895, value1)) : Flapjack.WordAlloc.removeDeadStructural input7782 value5 value1 value2 = (output7782, value3895, value1) := by
  rw [input7782_def, output7782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7780]
  dsimp only
  rw [child7781]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7780_skip, output7781_skip]
  kernel_rfl

theorem node7783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7783 value3895 value1 value2 = (output7783, value3896, value1) := by
  rw [input7783_def, output7783_def]
  kernel_rfl

theorem node7784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7784 value3896 value1 value2 = (output7784, value3896, value1) := by
  rw [input7784_def, output7784_def]
  kernel_rfl

theorem node7785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7785 value3896 value1 value2 = (output7785, value3897, value1) := by
  rw [input7785_def, output7785_def]
  kernel_rfl

theorem node7786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7786 value3897 value1 value2 = (output7786, value3898, value1) := by
  rw [input7786_def, output7786_def]
  kernel_rfl

theorem node7787_cond_eq
    (child7785 : Flapjack.WordAlloc.removeDeadStructural input7785 value3896 value1 value2 = (output7785, value3897, value1))
    (child7786 : Flapjack.WordAlloc.removeDeadStructural input7786 value3897 value1 value2 = (output7786, value3898, value1)) : Flapjack.WordAlloc.removeDeadStructural input7787 value3896 value1 value2 = (output7787, value3898, value1) := by
  rw [input7787_def, output7787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7785]
  dsimp only
  rw [child7786]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7785_skip, output7786_skip]
  kernel_rfl

theorem node7788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7788 value3898 value1 value2 = (output7788, value3899, value1) := by
  rw [input7788_def, output7788_def]
  kernel_rfl

theorem node7789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7789 value3899 value1 value2 = (output7789, value3900, value1) := by
  rw [input7789_def, output7789_def]
  kernel_rfl

theorem node7790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7790 value3900 value1 value2 = (output7790, value3901, value1) := by
  rw [input7790_def, output7790_def]
  kernel_rfl

theorem node7791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7791 value3901 value1 value2 = (output7791, value5, value1) := by
  rw [input7791_def, output7791_def]
  kernel_rfl

theorem node7792_cond_eq
    (child7790 : Flapjack.WordAlloc.removeDeadStructural input7790 value3900 value1 value2 = (output7790, value3901, value1))
    (child7791 : Flapjack.WordAlloc.removeDeadStructural input7791 value3901 value1 value2 = (output7791, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7792 value3900 value1 value2 = (output7792, value5, value1) := by
  rw [input7792_def, output7792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7790]
  dsimp only
  rw [child7791]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7790_skip, output7791_skip]
  kernel_rfl

theorem node7793_cond_eq
    (child7789 : Flapjack.WordAlloc.removeDeadStructural input7789 value3899 value1 value2 = (output7789, value3900, value1))
    (child7792 : Flapjack.WordAlloc.removeDeadStructural input7792 value3900 value1 value2 = (output7792, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7793 value3899 value1 value2 = (output7793, value5, value1) := by
  rw [input7793_def, output7793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7789]
  dsimp only
  rw [child7792]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7789_skip, output7792_skip]
  kernel_rfl

theorem node7794_cond_eq
    (child7788 : Flapjack.WordAlloc.removeDeadStructural input7788 value3898 value1 value2 = (output7788, value3899, value1))
    (child7793 : Flapjack.WordAlloc.removeDeadStructural input7793 value3899 value1 value2 = (output7793, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7794 value3898 value1 value2 = (output7794, value5, value1) := by
  rw [input7794_def, output7794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7788]
  dsimp only
  rw [child7793]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7788_skip, output7793_skip]
  kernel_rfl

theorem node7795_cond_eq
    (child7787 : Flapjack.WordAlloc.removeDeadStructural input7787 value3896 value1 value2 = (output7787, value3898, value1))
    (child7794 : Flapjack.WordAlloc.removeDeadStructural input7794 value3898 value1 value2 = (output7794, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7795 value3896 value1 value2 = (output7795, value5, value1) := by
  rw [input7795_def, output7795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7787]
  dsimp only
  rw [child7794]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7787_skip, output7794_skip]
  kernel_rfl

theorem node7796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7796 value5 value1 value2 = (output7796, value3902, value1) := by
  rw [input7796_def, output7796_def]
  kernel_rfl

theorem node7797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7797 value3902 value1 value2 = (output7797, value3903, value1) := by
  rw [input7797_def, output7797_def]
  kernel_rfl

theorem node7798_cond_eq
    (child7796 : Flapjack.WordAlloc.removeDeadStructural input7796 value5 value1 value2 = (output7796, value3902, value1))
    (child7797 : Flapjack.WordAlloc.removeDeadStructural input7797 value3902 value1 value2 = (output7797, value3903, value1)) : Flapjack.WordAlloc.removeDeadStructural input7798 value5 value1 value2 = (output7798, value3903, value1) := by
  rw [input7798_def, output7798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7796]
  dsimp only
  rw [child7797]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7796_skip, output7797_skip]
  kernel_rfl

theorem node7799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7799 value3903 value1 value2 = (output7799, value3904, value1) := by
  rw [input7799_def, output7799_def]
  kernel_rfl

theorem node7800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7800 value3904 value1 value2 = (output7800, value3904, value1) := by
  rw [input7800_def, output7800_def]
  kernel_rfl

theorem node7801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7801 value3904 value1 value2 = (output7801, value3905, value1) := by
  rw [input7801_def, output7801_def]
  kernel_rfl

theorem node7802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7802 value3905 value1 value2 = (output7802, value3906, value1) := by
  rw [input7802_def, output7802_def]
  kernel_rfl

theorem node7803_cond_eq
    (child7801 : Flapjack.WordAlloc.removeDeadStructural input7801 value3904 value1 value2 = (output7801, value3905, value1))
    (child7802 : Flapjack.WordAlloc.removeDeadStructural input7802 value3905 value1 value2 = (output7802, value3906, value1)) : Flapjack.WordAlloc.removeDeadStructural input7803 value3904 value1 value2 = (output7803, value3906, value1) := by
  rw [input7803_def, output7803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7801]
  dsimp only
  rw [child7802]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7801_skip, output7802_skip]
  kernel_rfl

theorem node7804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7804 value3906 value1 value2 = (output7804, value3907, value1) := by
  rw [input7804_def, output7804_def]
  kernel_rfl

theorem node7805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7805 value3907 value1 value2 = (output7805, value3908, value1) := by
  rw [input7805_def, output7805_def]
  kernel_rfl

theorem node7806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7806 value3908 value1 value2 = (output7806, value3909, value1) := by
  rw [input7806_def, output7806_def]
  kernel_rfl

theorem node7807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7807 value3909 value1 value2 = (output7807, value5, value1) := by
  rw [input7807_def, output7807_def]
  kernel_rfl

theorem node7808_cond_eq
    (child7806 : Flapjack.WordAlloc.removeDeadStructural input7806 value3908 value1 value2 = (output7806, value3909, value1))
    (child7807 : Flapjack.WordAlloc.removeDeadStructural input7807 value3909 value1 value2 = (output7807, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7808 value3908 value1 value2 = (output7808, value5, value1) := by
  rw [input7808_def, output7808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7806]
  dsimp only
  rw [child7807]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7806_skip, output7807_skip]
  kernel_rfl

theorem node7809_cond_eq
    (child7805 : Flapjack.WordAlloc.removeDeadStructural input7805 value3907 value1 value2 = (output7805, value3908, value1))
    (child7808 : Flapjack.WordAlloc.removeDeadStructural input7808 value3908 value1 value2 = (output7808, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7809 value3907 value1 value2 = (output7809, value5, value1) := by
  rw [input7809_def, output7809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7805]
  dsimp only
  rw [child7808]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7805_skip, output7808_skip]
  kernel_rfl

theorem node7810_cond_eq
    (child7804 : Flapjack.WordAlloc.removeDeadStructural input7804 value3906 value1 value2 = (output7804, value3907, value1))
    (child7809 : Flapjack.WordAlloc.removeDeadStructural input7809 value3907 value1 value2 = (output7809, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7810 value3906 value1 value2 = (output7810, value5, value1) := by
  rw [input7810_def, output7810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7804]
  dsimp only
  rw [child7809]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7804_skip, output7809_skip]
  kernel_rfl

theorem node7811_cond_eq
    (child7803 : Flapjack.WordAlloc.removeDeadStructural input7803 value3904 value1 value2 = (output7803, value3906, value1))
    (child7810 : Flapjack.WordAlloc.removeDeadStructural input7810 value3906 value1 value2 = (output7810, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7811 value3904 value1 value2 = (output7811, value5, value1) := by
  rw [input7811_def, output7811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7803]
  dsimp only
  rw [child7810]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7803_skip, output7810_skip]
  kernel_rfl

theorem node7812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7812 value5 value1 value2 = (output7812, value3910, value1) := by
  rw [input7812_def, output7812_def]
  kernel_rfl

theorem node7813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7813 value3910 value1 value2 = (output7813, value3911, value1) := by
  rw [input7813_def, output7813_def]
  kernel_rfl

theorem node7814_cond_eq
    (child7812 : Flapjack.WordAlloc.removeDeadStructural input7812 value5 value1 value2 = (output7812, value3910, value1))
    (child7813 : Flapjack.WordAlloc.removeDeadStructural input7813 value3910 value1 value2 = (output7813, value3911, value1)) : Flapjack.WordAlloc.removeDeadStructural input7814 value5 value1 value2 = (output7814, value3911, value1) := by
  rw [input7814_def, output7814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7812]
  dsimp only
  rw [child7813]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7812_skip, output7813_skip]
  kernel_rfl

theorem node7815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7815 value3911 value1 value2 = (output7815, value3912, value1) := by
  rw [input7815_def, output7815_def]
  kernel_rfl

theorem node7816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7816 value3912 value1 value2 = (output7816, value3912, value1) := by
  rw [input7816_def, output7816_def]
  kernel_rfl

theorem node7817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7817 value3912 value1 value2 = (output7817, value3913, value1) := by
  rw [input7817_def, output7817_def]
  kernel_rfl

theorem node7818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7818 value3913 value1 value2 = (output7818, value3914, value1) := by
  rw [input7818_def, output7818_def]
  kernel_rfl

theorem node7819_cond_eq
    (child7817 : Flapjack.WordAlloc.removeDeadStructural input7817 value3912 value1 value2 = (output7817, value3913, value1))
    (child7818 : Flapjack.WordAlloc.removeDeadStructural input7818 value3913 value1 value2 = (output7818, value3914, value1)) : Flapjack.WordAlloc.removeDeadStructural input7819 value3912 value1 value2 = (output7819, value3914, value1) := by
  rw [input7819_def, output7819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7817]
  dsimp only
  rw [child7818]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7817_skip, output7818_skip]
  kernel_rfl

theorem node7820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7820 value3914 value1 value2 = (output7820, value3915, value1) := by
  rw [input7820_def, output7820_def]
  kernel_rfl

theorem node7821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7821 value3915 value1 value2 = (output7821, value3916, value1) := by
  rw [input7821_def, output7821_def]
  kernel_rfl

theorem node7822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7822 value3916 value1 value2 = (output7822, value3917, value1) := by
  rw [input7822_def, output7822_def]
  kernel_rfl

theorem node7823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7823 value3917 value1 value2 = (output7823, value5, value1) := by
  rw [input7823_def, output7823_def]
  kernel_rfl

theorem node7824_cond_eq
    (child7822 : Flapjack.WordAlloc.removeDeadStructural input7822 value3916 value1 value2 = (output7822, value3917, value1))
    (child7823 : Flapjack.WordAlloc.removeDeadStructural input7823 value3917 value1 value2 = (output7823, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7824 value3916 value1 value2 = (output7824, value5, value1) := by
  rw [input7824_def, output7824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7822]
  dsimp only
  rw [child7823]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7822_skip, output7823_skip]
  kernel_rfl

theorem node7825_cond_eq
    (child7821 : Flapjack.WordAlloc.removeDeadStructural input7821 value3915 value1 value2 = (output7821, value3916, value1))
    (child7824 : Flapjack.WordAlloc.removeDeadStructural input7824 value3916 value1 value2 = (output7824, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7825 value3915 value1 value2 = (output7825, value5, value1) := by
  rw [input7825_def, output7825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7821]
  dsimp only
  rw [child7824]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7821_skip, output7824_skip]
  kernel_rfl

theorem node7826_cond_eq
    (child7820 : Flapjack.WordAlloc.removeDeadStructural input7820 value3914 value1 value2 = (output7820, value3915, value1))
    (child7825 : Flapjack.WordAlloc.removeDeadStructural input7825 value3915 value1 value2 = (output7825, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7826 value3914 value1 value2 = (output7826, value5, value1) := by
  rw [input7826_def, output7826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7820]
  dsimp only
  rw [child7825]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7820_skip, output7825_skip]
  kernel_rfl

theorem node7827_cond_eq
    (child7819 : Flapjack.WordAlloc.removeDeadStructural input7819 value3912 value1 value2 = (output7819, value3914, value1))
    (child7826 : Flapjack.WordAlloc.removeDeadStructural input7826 value3914 value1 value2 = (output7826, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7827 value3912 value1 value2 = (output7827, value5, value1) := by
  rw [input7827_def, output7827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7819]
  dsimp only
  rw [child7826]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7819_skip, output7826_skip]
  kernel_rfl

theorem node7828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7828 value5 value1 value2 = (output7828, value3918, value1) := by
  rw [input7828_def, output7828_def]
  kernel_rfl

theorem node7829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7829 value3918 value1 value2 = (output7829, value3919, value1) := by
  rw [input7829_def, output7829_def]
  kernel_rfl

theorem node7830_cond_eq
    (child7828 : Flapjack.WordAlloc.removeDeadStructural input7828 value5 value1 value2 = (output7828, value3918, value1))
    (child7829 : Flapjack.WordAlloc.removeDeadStructural input7829 value3918 value1 value2 = (output7829, value3919, value1)) : Flapjack.WordAlloc.removeDeadStructural input7830 value5 value1 value2 = (output7830, value3919, value1) := by
  rw [input7830_def, output7830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7828]
  dsimp only
  rw [child7829]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7828_skip, output7829_skip]
  kernel_rfl

theorem node7831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7831 value3919 value1 value2 = (output7831, value3920, value1) := by
  rw [input7831_def, output7831_def]
  kernel_rfl

theorem node7832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7832 value3920 value1 value2 = (output7832, value3920, value1) := by
  rw [input7832_def, output7832_def]
  kernel_rfl

theorem node7833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7833 value3920 value1 value2 = (output7833, value3921, value1) := by
  rw [input7833_def, output7833_def]
  kernel_rfl

theorem node7834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7834 value3921 value1 value2 = (output7834, value3922, value1) := by
  rw [input7834_def, output7834_def]
  kernel_rfl

theorem node7835_cond_eq
    (child7833 : Flapjack.WordAlloc.removeDeadStructural input7833 value3920 value1 value2 = (output7833, value3921, value1))
    (child7834 : Flapjack.WordAlloc.removeDeadStructural input7834 value3921 value1 value2 = (output7834, value3922, value1)) : Flapjack.WordAlloc.removeDeadStructural input7835 value3920 value1 value2 = (output7835, value3922, value1) := by
  rw [input7835_def, output7835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7833]
  dsimp only
  rw [child7834]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7833_skip, output7834_skip]
  kernel_rfl

theorem node7836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7836 value3922 value1 value2 = (output7836, value3923, value1) := by
  rw [input7836_def, output7836_def]
  kernel_rfl

theorem node7837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7837 value3923 value1 value2 = (output7837, value3924, value1) := by
  rw [input7837_def, output7837_def]
  kernel_rfl

theorem node7838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7838 value3924 value1 value2 = (output7838, value3925, value1) := by
  rw [input7838_def, output7838_def]
  kernel_rfl

theorem node7839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7839 value3925 value1 value2 = (output7839, value5, value1) := by
  rw [input7839_def, output7839_def]
  kernel_rfl

theorem node7840_cond_eq
    (child7838 : Flapjack.WordAlloc.removeDeadStructural input7838 value3924 value1 value2 = (output7838, value3925, value1))
    (child7839 : Flapjack.WordAlloc.removeDeadStructural input7839 value3925 value1 value2 = (output7839, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7840 value3924 value1 value2 = (output7840, value5, value1) := by
  rw [input7840_def, output7840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7838]
  dsimp only
  rw [child7839]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7838_skip, output7839_skip]
  kernel_rfl

theorem node7841_cond_eq
    (child7837 : Flapjack.WordAlloc.removeDeadStructural input7837 value3923 value1 value2 = (output7837, value3924, value1))
    (child7840 : Flapjack.WordAlloc.removeDeadStructural input7840 value3924 value1 value2 = (output7840, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7841 value3923 value1 value2 = (output7841, value5, value1) := by
  rw [input7841_def, output7841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7837]
  dsimp only
  rw [child7840]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7837_skip, output7840_skip]
  kernel_rfl

theorem node7842_cond_eq
    (child7836 : Flapjack.WordAlloc.removeDeadStructural input7836 value3922 value1 value2 = (output7836, value3923, value1))
    (child7841 : Flapjack.WordAlloc.removeDeadStructural input7841 value3923 value1 value2 = (output7841, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7842 value3922 value1 value2 = (output7842, value5, value1) := by
  rw [input7842_def, output7842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7836]
  dsimp only
  rw [child7841]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7836_skip, output7841_skip]
  kernel_rfl

theorem node7843_cond_eq
    (child7835 : Flapjack.WordAlloc.removeDeadStructural input7835 value3920 value1 value2 = (output7835, value3922, value1))
    (child7842 : Flapjack.WordAlloc.removeDeadStructural input7842 value3922 value1 value2 = (output7842, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7843 value3920 value1 value2 = (output7843, value5, value1) := by
  rw [input7843_def, output7843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7835]
  dsimp only
  rw [child7842]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7835_skip, output7842_skip]
  kernel_rfl

theorem node7844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7844 value5 value1 value2 = (output7844, value3926, value1) := by
  rw [input7844_def, output7844_def]
  kernel_rfl

theorem node7845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7845 value3926 value1 value2 = (output7845, value3927, value1) := by
  rw [input7845_def, output7845_def]
  kernel_rfl

theorem node7846_cond_eq
    (child7844 : Flapjack.WordAlloc.removeDeadStructural input7844 value5 value1 value2 = (output7844, value3926, value1))
    (child7845 : Flapjack.WordAlloc.removeDeadStructural input7845 value3926 value1 value2 = (output7845, value3927, value1)) : Flapjack.WordAlloc.removeDeadStructural input7846 value5 value1 value2 = (output7846, value3927, value1) := by
  rw [input7846_def, output7846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7844]
  dsimp only
  rw [child7845]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7844_skip, output7845_skip]
  kernel_rfl

theorem node7847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7847 value3927 value1 value2 = (output7847, value3928, value1) := by
  rw [input7847_def, output7847_def]
  kernel_rfl

theorem node7848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7848 value3928 value1 value2 = (output7848, value3928, value1) := by
  rw [input7848_def, output7848_def]
  kernel_rfl

theorem node7849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7849 value3928 value1 value2 = (output7849, value3929, value1) := by
  rw [input7849_def, output7849_def]
  kernel_rfl

theorem node7850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7850 value3929 value1 value2 = (output7850, value3930, value1) := by
  rw [input7850_def, output7850_def]
  kernel_rfl

theorem node7851_cond_eq
    (child7849 : Flapjack.WordAlloc.removeDeadStructural input7849 value3928 value1 value2 = (output7849, value3929, value1))
    (child7850 : Flapjack.WordAlloc.removeDeadStructural input7850 value3929 value1 value2 = (output7850, value3930, value1)) : Flapjack.WordAlloc.removeDeadStructural input7851 value3928 value1 value2 = (output7851, value3930, value1) := by
  rw [input7851_def, output7851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7849]
  dsimp only
  rw [child7850]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7849_skip, output7850_skip]
  kernel_rfl

theorem node7852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7852 value3930 value1 value2 = (output7852, value3931, value1) := by
  rw [input7852_def, output7852_def]
  kernel_rfl

theorem node7853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7853 value3931 value1 value2 = (output7853, value3932, value1) := by
  rw [input7853_def, output7853_def]
  kernel_rfl

theorem node7854_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7854 value3932 value1 value2 = (output7854, value3933, value1) := by
  rw [input7854_def, output7854_def]
  kernel_rfl

theorem node7855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7855 value3933 value1 value2 = (output7855, value5, value1) := by
  rw [input7855_def, output7855_def]
  kernel_rfl

theorem node7856_cond_eq
    (child7854 : Flapjack.WordAlloc.removeDeadStructural input7854 value3932 value1 value2 = (output7854, value3933, value1))
    (child7855 : Flapjack.WordAlloc.removeDeadStructural input7855 value3933 value1 value2 = (output7855, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7856 value3932 value1 value2 = (output7856, value5, value1) := by
  rw [input7856_def, output7856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7854]
  dsimp only
  rw [child7855]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7854_skip, output7855_skip]
  kernel_rfl

theorem node7857_cond_eq
    (child7853 : Flapjack.WordAlloc.removeDeadStructural input7853 value3931 value1 value2 = (output7853, value3932, value1))
    (child7856 : Flapjack.WordAlloc.removeDeadStructural input7856 value3932 value1 value2 = (output7856, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7857 value3931 value1 value2 = (output7857, value5, value1) := by
  rw [input7857_def, output7857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7853]
  dsimp only
  rw [child7856]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7853_skip, output7856_skip]
  kernel_rfl

theorem node7858_cond_eq
    (child7852 : Flapjack.WordAlloc.removeDeadStructural input7852 value3930 value1 value2 = (output7852, value3931, value1))
    (child7857 : Flapjack.WordAlloc.removeDeadStructural input7857 value3931 value1 value2 = (output7857, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7858 value3930 value1 value2 = (output7858, value5, value1) := by
  rw [input7858_def, output7858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7852]
  dsimp only
  rw [child7857]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7852_skip, output7857_skip]
  kernel_rfl

theorem node7859_cond_eq
    (child7851 : Flapjack.WordAlloc.removeDeadStructural input7851 value3928 value1 value2 = (output7851, value3930, value1))
    (child7858 : Flapjack.WordAlloc.removeDeadStructural input7858 value3930 value1 value2 = (output7858, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7859 value3928 value1 value2 = (output7859, value5, value1) := by
  rw [input7859_def, output7859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7851]
  dsimp only
  rw [child7858]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7851_skip, output7858_skip]
  kernel_rfl

theorem node7860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7860 value5 value1 value2 = (output7860, value3934, value1) := by
  rw [input7860_def, output7860_def]
  kernel_rfl

theorem node7861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7861 value3934 value1 value2 = (output7861, value3935, value1) := by
  rw [input7861_def, output7861_def]
  kernel_rfl

theorem node7862_cond_eq
    (child7860 : Flapjack.WordAlloc.removeDeadStructural input7860 value5 value1 value2 = (output7860, value3934, value1))
    (child7861 : Flapjack.WordAlloc.removeDeadStructural input7861 value3934 value1 value2 = (output7861, value3935, value1)) : Flapjack.WordAlloc.removeDeadStructural input7862 value5 value1 value2 = (output7862, value3935, value1) := by
  rw [input7862_def, output7862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7860]
  dsimp only
  rw [child7861]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7860_skip, output7861_skip]
  kernel_rfl

theorem node7863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7863 value3935 value1 value2 = (output7863, value3936, value1) := by
  rw [input7863_def, output7863_def]
  kernel_rfl

theorem node7864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7864 value3936 value1 value2 = (output7864, value3936, value1) := by
  rw [input7864_def, output7864_def]
  kernel_rfl

theorem node7865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7865 value3936 value1 value2 = (output7865, value3937, value1) := by
  rw [input7865_def, output7865_def]
  kernel_rfl

theorem node7866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7866 value3937 value1 value2 = (output7866, value3938, value1) := by
  rw [input7866_def, output7866_def]
  kernel_rfl

theorem node7867_cond_eq
    (child7865 : Flapjack.WordAlloc.removeDeadStructural input7865 value3936 value1 value2 = (output7865, value3937, value1))
    (child7866 : Flapjack.WordAlloc.removeDeadStructural input7866 value3937 value1 value2 = (output7866, value3938, value1)) : Flapjack.WordAlloc.removeDeadStructural input7867 value3936 value1 value2 = (output7867, value3938, value1) := by
  rw [input7867_def, output7867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7865]
  dsimp only
  rw [child7866]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7865_skip, output7866_skip]
  kernel_rfl

theorem node7868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7868 value3938 value1 value2 = (output7868, value3939, value1) := by
  rw [input7868_def, output7868_def]
  kernel_rfl

theorem node7869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7869 value3939 value1 value2 = (output7869, value3940, value1) := by
  rw [input7869_def, output7869_def]
  kernel_rfl

theorem node7870_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7870 value3940 value1 value2 = (output7870, value3941, value1) := by
  rw [input7870_def, output7870_def]
  kernel_rfl

theorem node7871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7871 value3941 value1 value2 = (output7871, value5, value1) := by
  rw [input7871_def, output7871_def]
  kernel_rfl

theorem node7872_cond_eq
    (child7870 : Flapjack.WordAlloc.removeDeadStructural input7870 value3940 value1 value2 = (output7870, value3941, value1))
    (child7871 : Flapjack.WordAlloc.removeDeadStructural input7871 value3941 value1 value2 = (output7871, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7872 value3940 value1 value2 = (output7872, value5, value1) := by
  rw [input7872_def, output7872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7870]
  dsimp only
  rw [child7871]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7870_skip, output7871_skip]
  kernel_rfl

theorem node7873_cond_eq
    (child7869 : Flapjack.WordAlloc.removeDeadStructural input7869 value3939 value1 value2 = (output7869, value3940, value1))
    (child7872 : Flapjack.WordAlloc.removeDeadStructural input7872 value3940 value1 value2 = (output7872, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7873 value3939 value1 value2 = (output7873, value5, value1) := by
  rw [input7873_def, output7873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7869]
  dsimp only
  rw [child7872]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7869_skip, output7872_skip]
  kernel_rfl

theorem node7874_cond_eq
    (child7868 : Flapjack.WordAlloc.removeDeadStructural input7868 value3938 value1 value2 = (output7868, value3939, value1))
    (child7873 : Flapjack.WordAlloc.removeDeadStructural input7873 value3939 value1 value2 = (output7873, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7874 value3938 value1 value2 = (output7874, value5, value1) := by
  rw [input7874_def, output7874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7868]
  dsimp only
  rw [child7873]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7868_skip, output7873_skip]
  kernel_rfl

theorem node7875_cond_eq
    (child7867 : Flapjack.WordAlloc.removeDeadStructural input7867 value3936 value1 value2 = (output7867, value3938, value1))
    (child7874 : Flapjack.WordAlloc.removeDeadStructural input7874 value3938 value1 value2 = (output7874, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7875 value3936 value1 value2 = (output7875, value5, value1) := by
  rw [input7875_def, output7875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7867]
  dsimp only
  rw [child7874]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7867_skip, output7874_skip]
  kernel_rfl

theorem node7876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7876 value5 value1 value2 = (output7876, value3942, value1) := by
  rw [input7876_def, output7876_def]
  kernel_rfl

theorem node7877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7877 value3942 value1 value2 = (output7877, value3943, value1) := by
  rw [input7877_def, output7877_def]
  kernel_rfl

theorem node7878_cond_eq
    (child7876 : Flapjack.WordAlloc.removeDeadStructural input7876 value5 value1 value2 = (output7876, value3942, value1))
    (child7877 : Flapjack.WordAlloc.removeDeadStructural input7877 value3942 value1 value2 = (output7877, value3943, value1)) : Flapjack.WordAlloc.removeDeadStructural input7878 value5 value1 value2 = (output7878, value3943, value1) := by
  rw [input7878_def, output7878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7876]
  dsimp only
  rw [child7877]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7876_skip, output7877_skip]
  kernel_rfl

theorem node7879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7879 value3943 value1 value2 = (output7879, value3944, value1) := by
  rw [input7879_def, output7879_def]
  kernel_rfl

theorem node7880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7880 value3944 value1 value2 = (output7880, value3944, value1) := by
  rw [input7880_def, output7880_def]
  kernel_rfl

theorem node7881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7881 value3944 value1 value2 = (output7881, value3945, value1) := by
  rw [input7881_def, output7881_def]
  kernel_rfl

theorem node7882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7882 value3945 value1 value2 = (output7882, value3946, value1) := by
  rw [input7882_def, output7882_def]
  kernel_rfl

theorem node7883_cond_eq
    (child7881 : Flapjack.WordAlloc.removeDeadStructural input7881 value3944 value1 value2 = (output7881, value3945, value1))
    (child7882 : Flapjack.WordAlloc.removeDeadStructural input7882 value3945 value1 value2 = (output7882, value3946, value1)) : Flapjack.WordAlloc.removeDeadStructural input7883 value3944 value1 value2 = (output7883, value3946, value1) := by
  rw [input7883_def, output7883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7881]
  dsimp only
  rw [child7882]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7881_skip, output7882_skip]
  kernel_rfl

theorem node7884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7884 value3946 value1 value2 = (output7884, value3947, value1) := by
  rw [input7884_def, output7884_def]
  kernel_rfl

theorem node7885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7885 value3947 value1 value2 = (output7885, value3948, value1) := by
  rw [input7885_def, output7885_def]
  kernel_rfl

theorem node7886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7886 value3948 value1 value2 = (output7886, value3949, value1) := by
  rw [input7886_def, output7886_def]
  kernel_rfl

theorem node7887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7887 value3949 value1 value2 = (output7887, value5, value1) := by
  rw [input7887_def, output7887_def]
  kernel_rfl

theorem node7888_cond_eq
    (child7886 : Flapjack.WordAlloc.removeDeadStructural input7886 value3948 value1 value2 = (output7886, value3949, value1))
    (child7887 : Flapjack.WordAlloc.removeDeadStructural input7887 value3949 value1 value2 = (output7887, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7888 value3948 value1 value2 = (output7888, value5, value1) := by
  rw [input7888_def, output7888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7886]
  dsimp only
  rw [child7887]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7886_skip, output7887_skip]
  kernel_rfl

theorem node7889_cond_eq
    (child7885 : Flapjack.WordAlloc.removeDeadStructural input7885 value3947 value1 value2 = (output7885, value3948, value1))
    (child7888 : Flapjack.WordAlloc.removeDeadStructural input7888 value3948 value1 value2 = (output7888, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7889 value3947 value1 value2 = (output7889, value5, value1) := by
  rw [input7889_def, output7889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7885]
  dsimp only
  rw [child7888]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7885_skip, output7888_skip]
  kernel_rfl

theorem node7890_cond_eq
    (child7884 : Flapjack.WordAlloc.removeDeadStructural input7884 value3946 value1 value2 = (output7884, value3947, value1))
    (child7889 : Flapjack.WordAlloc.removeDeadStructural input7889 value3947 value1 value2 = (output7889, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7890 value3946 value1 value2 = (output7890, value5, value1) := by
  rw [input7890_def, output7890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7884]
  dsimp only
  rw [child7889]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7884_skip, output7889_skip]
  kernel_rfl

theorem node7891_cond_eq
    (child7883 : Flapjack.WordAlloc.removeDeadStructural input7883 value3944 value1 value2 = (output7883, value3946, value1))
    (child7890 : Flapjack.WordAlloc.removeDeadStructural input7890 value3946 value1 value2 = (output7890, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7891 value3944 value1 value2 = (output7891, value5, value1) := by
  rw [input7891_def, output7891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7883]
  dsimp only
  rw [child7890]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7883_skip, output7890_skip]
  kernel_rfl

theorem node7892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7892 value5 value1 value2 = (output7892, value3950, value1) := by
  rw [input7892_def, output7892_def]
  kernel_rfl

theorem node7893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7893 value3950 value1 value2 = (output7893, value3951, value1) := by
  rw [input7893_def, output7893_def]
  kernel_rfl

theorem node7894_cond_eq
    (child7892 : Flapjack.WordAlloc.removeDeadStructural input7892 value5 value1 value2 = (output7892, value3950, value1))
    (child7893 : Flapjack.WordAlloc.removeDeadStructural input7893 value3950 value1 value2 = (output7893, value3951, value1)) : Flapjack.WordAlloc.removeDeadStructural input7894 value5 value1 value2 = (output7894, value3951, value1) := by
  rw [input7894_def, output7894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7892]
  dsimp only
  rw [child7893]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7892_skip, output7893_skip]
  kernel_rfl

theorem node7895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7895 value3951 value1 value2 = (output7895, value3952, value1) := by
  rw [input7895_def, output7895_def]
  kernel_rfl

theorem node7896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7896 value3952 value1 value2 = (output7896, value3952, value1) := by
  rw [input7896_def, output7896_def]
  kernel_rfl

theorem node7897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7897 value3952 value1 value2 = (output7897, value3953, value1) := by
  rw [input7897_def, output7897_def]
  kernel_rfl

theorem node7898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7898 value3953 value1 value2 = (output7898, value3954, value1) := by
  rw [input7898_def, output7898_def]
  kernel_rfl

theorem node7899_cond_eq
    (child7897 : Flapjack.WordAlloc.removeDeadStructural input7897 value3952 value1 value2 = (output7897, value3953, value1))
    (child7898 : Flapjack.WordAlloc.removeDeadStructural input7898 value3953 value1 value2 = (output7898, value3954, value1)) : Flapjack.WordAlloc.removeDeadStructural input7899 value3952 value1 value2 = (output7899, value3954, value1) := by
  rw [input7899_def, output7899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7897]
  dsimp only
  rw [child7898]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7897_skip, output7898_skip]
  kernel_rfl

theorem node7900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7900 value3954 value1 value2 = (output7900, value3955, value1) := by
  rw [input7900_def, output7900_def]
  kernel_rfl

theorem node7901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7901 value3955 value1 value2 = (output7901, value3956, value1) := by
  rw [input7901_def, output7901_def]
  kernel_rfl

theorem node7902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7902 value3956 value1 value2 = (output7902, value3957, value1) := by
  rw [input7902_def, output7902_def]
  kernel_rfl

theorem node7903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7903 value3957 value1 value2 = (output7903, value5, value1) := by
  rw [input7903_def, output7903_def]
  kernel_rfl

theorem node7904_cond_eq
    (child7902 : Flapjack.WordAlloc.removeDeadStructural input7902 value3956 value1 value2 = (output7902, value3957, value1))
    (child7903 : Flapjack.WordAlloc.removeDeadStructural input7903 value3957 value1 value2 = (output7903, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7904 value3956 value1 value2 = (output7904, value5, value1) := by
  rw [input7904_def, output7904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7902]
  dsimp only
  rw [child7903]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7902_skip, output7903_skip]
  kernel_rfl

theorem node7905_cond_eq
    (child7901 : Flapjack.WordAlloc.removeDeadStructural input7901 value3955 value1 value2 = (output7901, value3956, value1))
    (child7904 : Flapjack.WordAlloc.removeDeadStructural input7904 value3956 value1 value2 = (output7904, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7905 value3955 value1 value2 = (output7905, value5, value1) := by
  rw [input7905_def, output7905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7901]
  dsimp only
  rw [child7904]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7901_skip, output7904_skip]
  kernel_rfl

theorem node7906_cond_eq
    (child7900 : Flapjack.WordAlloc.removeDeadStructural input7900 value3954 value1 value2 = (output7900, value3955, value1))
    (child7905 : Flapjack.WordAlloc.removeDeadStructural input7905 value3955 value1 value2 = (output7905, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7906 value3954 value1 value2 = (output7906, value5, value1) := by
  rw [input7906_def, output7906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7900]
  dsimp only
  rw [child7905]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7900_skip, output7905_skip]
  kernel_rfl

theorem node7907_cond_eq
    (child7899 : Flapjack.WordAlloc.removeDeadStructural input7899 value3952 value1 value2 = (output7899, value3954, value1))
    (child7906 : Flapjack.WordAlloc.removeDeadStructural input7906 value3954 value1 value2 = (output7906, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7907 value3952 value1 value2 = (output7907, value5, value1) := by
  rw [input7907_def, output7907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7899]
  dsimp only
  rw [child7906]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7899_skip, output7906_skip]
  kernel_rfl

theorem node7908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7908 value5 value1 value2 = (output7908, value3958, value1) := by
  rw [input7908_def, output7908_def]
  kernel_rfl

theorem node7909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7909 value3958 value1 value2 = (output7909, value3959, value1) := by
  rw [input7909_def, output7909_def]
  kernel_rfl

theorem node7910_cond_eq
    (child7908 : Flapjack.WordAlloc.removeDeadStructural input7908 value5 value1 value2 = (output7908, value3958, value1))
    (child7909 : Flapjack.WordAlloc.removeDeadStructural input7909 value3958 value1 value2 = (output7909, value3959, value1)) : Flapjack.WordAlloc.removeDeadStructural input7910 value5 value1 value2 = (output7910, value3959, value1) := by
  rw [input7910_def, output7910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7908]
  dsimp only
  rw [child7909]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7908_skip, output7909_skip]
  kernel_rfl

theorem node7911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7911 value3959 value1 value2 = (output7911, value3960, value1) := by
  rw [input7911_def, output7911_def]
  kernel_rfl

theorem node7912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7912 value3960 value1 value2 = (output7912, value3960, value1) := by
  rw [input7912_def, output7912_def]
  kernel_rfl

theorem node7913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7913 value3960 value1 value2 = (output7913, value3961, value1) := by
  rw [input7913_def, output7913_def]
  kernel_rfl

theorem node7914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7914 value3961 value1 value2 = (output7914, value3962, value1) := by
  rw [input7914_def, output7914_def]
  kernel_rfl

theorem node7915_cond_eq
    (child7913 : Flapjack.WordAlloc.removeDeadStructural input7913 value3960 value1 value2 = (output7913, value3961, value1))
    (child7914 : Flapjack.WordAlloc.removeDeadStructural input7914 value3961 value1 value2 = (output7914, value3962, value1)) : Flapjack.WordAlloc.removeDeadStructural input7915 value3960 value1 value2 = (output7915, value3962, value1) := by
  rw [input7915_def, output7915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7913]
  dsimp only
  rw [child7914]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7913_skip, output7914_skip]
  kernel_rfl

theorem node7916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7916 value3962 value1 value2 = (output7916, value3963, value1) := by
  rw [input7916_def, output7916_def]
  kernel_rfl

theorem node7917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7917 value3963 value1 value2 = (output7917, value3964, value1) := by
  rw [input7917_def, output7917_def]
  kernel_rfl

theorem node7918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7918 value3964 value1 value2 = (output7918, value3965, value1) := by
  rw [input7918_def, output7918_def]
  kernel_rfl

theorem node7919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7919 value3965 value1 value2 = (output7919, value5, value1) := by
  rw [input7919_def, output7919_def]
  kernel_rfl

theorem node7920_cond_eq
    (child7918 : Flapjack.WordAlloc.removeDeadStructural input7918 value3964 value1 value2 = (output7918, value3965, value1))
    (child7919 : Flapjack.WordAlloc.removeDeadStructural input7919 value3965 value1 value2 = (output7919, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7920 value3964 value1 value2 = (output7920, value5, value1) := by
  rw [input7920_def, output7920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7918]
  dsimp only
  rw [child7919]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7918_skip, output7919_skip]
  kernel_rfl

theorem node7921_cond_eq
    (child7917 : Flapjack.WordAlloc.removeDeadStructural input7917 value3963 value1 value2 = (output7917, value3964, value1))
    (child7920 : Flapjack.WordAlloc.removeDeadStructural input7920 value3964 value1 value2 = (output7920, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7921 value3963 value1 value2 = (output7921, value5, value1) := by
  rw [input7921_def, output7921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7917]
  dsimp only
  rw [child7920]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7917_skip, output7920_skip]
  kernel_rfl

theorem node7922_cond_eq
    (child7916 : Flapjack.WordAlloc.removeDeadStructural input7916 value3962 value1 value2 = (output7916, value3963, value1))
    (child7921 : Flapjack.WordAlloc.removeDeadStructural input7921 value3963 value1 value2 = (output7921, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7922 value3962 value1 value2 = (output7922, value5, value1) := by
  rw [input7922_def, output7922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7916]
  dsimp only
  rw [child7921]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7916_skip, output7921_skip]
  kernel_rfl

theorem node7923_cond_eq
    (child7915 : Flapjack.WordAlloc.removeDeadStructural input7915 value3960 value1 value2 = (output7915, value3962, value1))
    (child7922 : Flapjack.WordAlloc.removeDeadStructural input7922 value3962 value1 value2 = (output7922, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input7923 value3960 value1 value2 = (output7923, value5, value1) := by
  rw [input7923_def, output7923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7915]
  dsimp only
  rw [child7922]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7915_skip, output7922_skip]
  kernel_rfl

theorem node7924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7924 value5 value1 value2 = (output7924, value3966, value1) := by
  rw [input7924_def, output7924_def]
  kernel_rfl

theorem node7925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7925 value3966 value1 value2 = (output7925, value3967, value1) := by
  rw [input7925_def, output7925_def]
  kernel_rfl

theorem node7926_cond_eq
    (child7924 : Flapjack.WordAlloc.removeDeadStructural input7924 value5 value1 value2 = (output7924, value3966, value1))
    (child7925 : Flapjack.WordAlloc.removeDeadStructural input7925 value3966 value1 value2 = (output7925, value3967, value1)) : Flapjack.WordAlloc.removeDeadStructural input7926 value5 value1 value2 = (output7926, value3967, value1) := by
  rw [input7926_def, output7926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7924]
  dsimp only
  rw [child7925]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7924_skip, output7925_skip]
  kernel_rfl

theorem node7927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7927 value3967 value1 value2 = (output7927, value3968, value1) := by
  rw [input7927_def, output7927_def]
  kernel_rfl

theorem node7928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7928 value3968 value1 value2 = (output7928, value3968, value1) := by
  rw [input7928_def, output7928_def]
  kernel_rfl

theorem node7929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7929 value3968 value1 value2 = (output7929, value3969, value1) := by
  rw [input7929_def, output7929_def]
  kernel_rfl

theorem node7930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7930 value3969 value1 value2 = (output7930, value3970, value1) := by
  rw [input7930_def, output7930_def]
  kernel_rfl

theorem node7931_cond_eq
    (child7929 : Flapjack.WordAlloc.removeDeadStructural input7929 value3968 value1 value2 = (output7929, value3969, value1))
    (child7930 : Flapjack.WordAlloc.removeDeadStructural input7930 value3969 value1 value2 = (output7930, value3970, value1)) : Flapjack.WordAlloc.removeDeadStructural input7931 value3968 value1 value2 = (output7931, value3970, value1) := by
  rw [input7931_def, output7931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7929]
  dsimp only
  rw [child7930]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7929_skip, output7930_skip]
  kernel_rfl

theorem node7932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7932 value3970 value1 value2 = (output7932, value3971, value1) := by
  rw [input7932_def, output7932_def]
  kernel_rfl

theorem node7933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7933 value3971 value1 value2 = (output7933, value3972, value1) := by
  rw [input7933_def, output7933_def]
  kernel_rfl

theorem node7934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7934 value3972 value1 value2 = (output7934, value3973, value1) := by
  rw [input7934_def, output7934_def]
  kernel_rfl

theorem node7935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input7935 value3973 value1 value2 = (output7935, value5, value1) := by
  rw [input7935_def, output7935_def]
  kernel_rfl

#print axioms node7935_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
