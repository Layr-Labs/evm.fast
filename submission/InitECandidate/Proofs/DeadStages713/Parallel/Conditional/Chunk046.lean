import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk046
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node11776_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11776 value5 value1 value2 = (output11776, value5892, value1) := by
  rw [input11776_def, output11776_def]
  kernel_rfl

theorem node11777_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11777 value5892 value1 value2 = (output11777, value5893, value1) := by
  rw [input11777_def, output11777_def]
  kernel_rfl

theorem node11778_cond_eq
    (child11776 : Flapjack.WordAlloc.removeDeadStructural input11776 value5 value1 value2 = (output11776, value5892, value1))
    (child11777 : Flapjack.WordAlloc.removeDeadStructural input11777 value5892 value1 value2 = (output11777, value5893, value1)) : Flapjack.WordAlloc.removeDeadStructural input11778 value5 value1 value2 = (output11778, value5893, value1) := by
  rw [input11778_def, output11778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11776]
  dsimp only
  rw [child11777]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11776_skip, output11777_skip]
  kernel_rfl

theorem node11779_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11779 value5893 value1 value2 = (output11779, value5894, value1) := by
  rw [input11779_def, output11779_def]
  kernel_rfl

theorem node11780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11780 value5894 value1 value2 = (output11780, value5894, value1) := by
  rw [input11780_def, output11780_def]
  kernel_rfl

theorem node11781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11781 value5894 value1 value2 = (output11781, value5895, value1) := by
  rw [input11781_def, output11781_def]
  kernel_rfl

theorem node11782_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11782 value5895 value1 value2 = (output11782, value5896, value1) := by
  rw [input11782_def, output11782_def]
  kernel_rfl

theorem node11783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11783 value5896 value1 value2 = (output11783, value5897, value1) := by
  rw [input11783_def, output11783_def]
  kernel_rfl

theorem node11784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11784 value5897 value1 value2 = (output11784, value5898, value1) := by
  rw [input11784_def, output11784_def]
  kernel_rfl

theorem node11785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11785 value5898 value1 value2 = (output11785, value5, value1) := by
  rw [input11785_def, output11785_def]
  kernel_rfl

theorem node11786_cond_eq
    (child11784 : Flapjack.WordAlloc.removeDeadStructural input11784 value5897 value1 value2 = (output11784, value5898, value1))
    (child11785 : Flapjack.WordAlloc.removeDeadStructural input11785 value5898 value1 value2 = (output11785, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11786 value5897 value1 value2 = (output11786, value5, value1) := by
  rw [input11786_def, output11786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11784]
  dsimp only
  rw [child11785]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11784_skip, output11785_skip]
  kernel_rfl

theorem node11787_cond_eq
    (child11783 : Flapjack.WordAlloc.removeDeadStructural input11783 value5896 value1 value2 = (output11783, value5897, value1))
    (child11786 : Flapjack.WordAlloc.removeDeadStructural input11786 value5897 value1 value2 = (output11786, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11787 value5896 value1 value2 = (output11787, value5, value1) := by
  rw [input11787_def, output11787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11783]
  dsimp only
  rw [child11786]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11783_skip, output11786_skip]
  kernel_rfl

theorem node11788_cond_eq
    (child11782 : Flapjack.WordAlloc.removeDeadStructural input11782 value5895 value1 value2 = (output11782, value5896, value1))
    (child11787 : Flapjack.WordAlloc.removeDeadStructural input11787 value5896 value1 value2 = (output11787, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11788 value5895 value1 value2 = (output11788, value5, value1) := by
  rw [input11788_def, output11788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11782]
  dsimp only
  rw [child11787]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11782_skip, output11787_skip]
  kernel_rfl

theorem node11789_cond_eq
    (child11781 : Flapjack.WordAlloc.removeDeadStructural input11781 value5894 value1 value2 = (output11781, value5895, value1))
    (child11788 : Flapjack.WordAlloc.removeDeadStructural input11788 value5895 value1 value2 = (output11788, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11789 value5894 value1 value2 = (output11789, value5, value1) := by
  rw [input11789_def, output11789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11781]
  dsimp only
  rw [child11788]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11781_skip, output11788_skip]
  kernel_rfl

theorem node11790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11790 value5 value1 value2 = (output11790, value5899, value1) := by
  rw [input11790_def, output11790_def]
  kernel_rfl

theorem node11791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11791 value5899 value1 value2 = (output11791, value5900, value1) := by
  rw [input11791_def, output11791_def]
  kernel_rfl

theorem node11792_cond_eq
    (child11790 : Flapjack.WordAlloc.removeDeadStructural input11790 value5 value1 value2 = (output11790, value5899, value1))
    (child11791 : Flapjack.WordAlloc.removeDeadStructural input11791 value5899 value1 value2 = (output11791, value5900, value1)) : Flapjack.WordAlloc.removeDeadStructural input11792 value5 value1 value2 = (output11792, value5900, value1) := by
  rw [input11792_def, output11792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11790]
  dsimp only
  rw [child11791]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11790_skip, output11791_skip]
  kernel_rfl

theorem node11793_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11793 value5900 value1 value2 = (output11793, value5901, value1) := by
  rw [input11793_def, output11793_def]
  kernel_rfl

theorem node11794_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11794 value5901 value1 value2 = (output11794, value5901, value1) := by
  rw [input11794_def, output11794_def]
  kernel_rfl

theorem node11795_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11795 value5901 value1 value2 = (output11795, value5902, value1) := by
  rw [input11795_def, output11795_def]
  kernel_rfl

theorem node11796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11796 value5902 value1 value2 = (output11796, value5903, value1) := by
  rw [input11796_def, output11796_def]
  kernel_rfl

theorem node11797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11797 value5903 value1 value2 = (output11797, value5904, value1) := by
  rw [input11797_def, output11797_def]
  kernel_rfl

theorem node11798_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11798 value5904 value1 value2 = (output11798, value5905, value1) := by
  rw [input11798_def, output11798_def]
  kernel_rfl

theorem node11799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11799 value5905 value1 value2 = (output11799, value5, value1) := by
  rw [input11799_def, output11799_def]
  kernel_rfl

theorem node11800_cond_eq
    (child11798 : Flapjack.WordAlloc.removeDeadStructural input11798 value5904 value1 value2 = (output11798, value5905, value1))
    (child11799 : Flapjack.WordAlloc.removeDeadStructural input11799 value5905 value1 value2 = (output11799, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11800 value5904 value1 value2 = (output11800, value5, value1) := by
  rw [input11800_def, output11800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11798]
  dsimp only
  rw [child11799]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11798_skip, output11799_skip]
  kernel_rfl

theorem node11801_cond_eq
    (child11797 : Flapjack.WordAlloc.removeDeadStructural input11797 value5903 value1 value2 = (output11797, value5904, value1))
    (child11800 : Flapjack.WordAlloc.removeDeadStructural input11800 value5904 value1 value2 = (output11800, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11801 value5903 value1 value2 = (output11801, value5, value1) := by
  rw [input11801_def, output11801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11797]
  dsimp only
  rw [child11800]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11797_skip, output11800_skip]
  kernel_rfl

theorem node11802_cond_eq
    (child11796 : Flapjack.WordAlloc.removeDeadStructural input11796 value5902 value1 value2 = (output11796, value5903, value1))
    (child11801 : Flapjack.WordAlloc.removeDeadStructural input11801 value5903 value1 value2 = (output11801, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11802 value5902 value1 value2 = (output11802, value5, value1) := by
  rw [input11802_def, output11802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11796]
  dsimp only
  rw [child11801]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11796_skip, output11801_skip]
  kernel_rfl

theorem node11803_cond_eq
    (child11795 : Flapjack.WordAlloc.removeDeadStructural input11795 value5901 value1 value2 = (output11795, value5902, value1))
    (child11802 : Flapjack.WordAlloc.removeDeadStructural input11802 value5902 value1 value2 = (output11802, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11803 value5901 value1 value2 = (output11803, value5, value1) := by
  rw [input11803_def, output11803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11795]
  dsimp only
  rw [child11802]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11795_skip, output11802_skip]
  kernel_rfl

theorem node11804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11804 value5 value1 value2 = (output11804, value5906, value1) := by
  rw [input11804_def, output11804_def]
  kernel_rfl

theorem node11805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11805 value5906 value1 value2 = (output11805, value5907, value1) := by
  rw [input11805_def, output11805_def]
  kernel_rfl

theorem node11806_cond_eq
    (child11804 : Flapjack.WordAlloc.removeDeadStructural input11804 value5 value1 value2 = (output11804, value5906, value1))
    (child11805 : Flapjack.WordAlloc.removeDeadStructural input11805 value5906 value1 value2 = (output11805, value5907, value1)) : Flapjack.WordAlloc.removeDeadStructural input11806 value5 value1 value2 = (output11806, value5907, value1) := by
  rw [input11806_def, output11806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11804]
  dsimp only
  rw [child11805]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11804_skip, output11805_skip]
  kernel_rfl

theorem node11807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11807 value5907 value1 value2 = (output11807, value5908, value1) := by
  rw [input11807_def, output11807_def]
  kernel_rfl

theorem node11808_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11808 value5908 value1 value2 = (output11808, value5908, value1) := by
  rw [input11808_def, output11808_def]
  kernel_rfl

theorem node11809_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11809 value5908 value1 value2 = (output11809, value5909, value1) := by
  rw [input11809_def, output11809_def]
  kernel_rfl

theorem node11810_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11810 value5909 value1 value2 = (output11810, value5910, value1) := by
  rw [input11810_def, output11810_def]
  kernel_rfl

theorem node11811_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11811 value5910 value1 value2 = (output11811, value5911, value1) := by
  rw [input11811_def, output11811_def]
  kernel_rfl

theorem node11812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11812 value5911 value1 value2 = (output11812, value5912, value1) := by
  rw [input11812_def, output11812_def]
  kernel_rfl

theorem node11813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11813 value5912 value1 value2 = (output11813, value5, value1) := by
  rw [input11813_def, output11813_def]
  kernel_rfl

theorem node11814_cond_eq
    (child11812 : Flapjack.WordAlloc.removeDeadStructural input11812 value5911 value1 value2 = (output11812, value5912, value1))
    (child11813 : Flapjack.WordAlloc.removeDeadStructural input11813 value5912 value1 value2 = (output11813, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11814 value5911 value1 value2 = (output11814, value5, value1) := by
  rw [input11814_def, output11814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11812]
  dsimp only
  rw [child11813]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11812_skip, output11813_skip]
  kernel_rfl

theorem node11815_cond_eq
    (child11811 : Flapjack.WordAlloc.removeDeadStructural input11811 value5910 value1 value2 = (output11811, value5911, value1))
    (child11814 : Flapjack.WordAlloc.removeDeadStructural input11814 value5911 value1 value2 = (output11814, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11815 value5910 value1 value2 = (output11815, value5, value1) := by
  rw [input11815_def, output11815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11811]
  dsimp only
  rw [child11814]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11811_skip, output11814_skip]
  kernel_rfl

theorem node11816_cond_eq
    (child11810 : Flapjack.WordAlloc.removeDeadStructural input11810 value5909 value1 value2 = (output11810, value5910, value1))
    (child11815 : Flapjack.WordAlloc.removeDeadStructural input11815 value5910 value1 value2 = (output11815, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11816 value5909 value1 value2 = (output11816, value5, value1) := by
  rw [input11816_def, output11816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11810]
  dsimp only
  rw [child11815]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11810_skip, output11815_skip]
  kernel_rfl

theorem node11817_cond_eq
    (child11809 : Flapjack.WordAlloc.removeDeadStructural input11809 value5908 value1 value2 = (output11809, value5909, value1))
    (child11816 : Flapjack.WordAlloc.removeDeadStructural input11816 value5909 value1 value2 = (output11816, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11817 value5908 value1 value2 = (output11817, value5, value1) := by
  rw [input11817_def, output11817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11809]
  dsimp only
  rw [child11816]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11809_skip, output11816_skip]
  kernel_rfl

theorem node11818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11818 value5 value1 value2 = (output11818, value5913, value1) := by
  rw [input11818_def, output11818_def]
  kernel_rfl

theorem node11819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11819 value5913 value1 value2 = (output11819, value5914, value1) := by
  rw [input11819_def, output11819_def]
  kernel_rfl

theorem node11820_cond_eq
    (child11818 : Flapjack.WordAlloc.removeDeadStructural input11818 value5 value1 value2 = (output11818, value5913, value1))
    (child11819 : Flapjack.WordAlloc.removeDeadStructural input11819 value5913 value1 value2 = (output11819, value5914, value1)) : Flapjack.WordAlloc.removeDeadStructural input11820 value5 value1 value2 = (output11820, value5914, value1) := by
  rw [input11820_def, output11820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11818]
  dsimp only
  rw [child11819]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11818_skip, output11819_skip]
  kernel_rfl

theorem node11821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11821 value5914 value1 value2 = (output11821, value5915, value1) := by
  rw [input11821_def, output11821_def]
  kernel_rfl

theorem node11822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11822 value5915 value1 value2 = (output11822, value5915, value1) := by
  rw [input11822_def, output11822_def]
  kernel_rfl

theorem node11823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11823 value5915 value1 value2 = (output11823, value5916, value1) := by
  rw [input11823_def, output11823_def]
  kernel_rfl

theorem node11824_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11824 value5916 value1 value2 = (output11824, value5917, value1) := by
  rw [input11824_def, output11824_def]
  kernel_rfl

theorem node11825_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11825 value5917 value1 value2 = (output11825, value5918, value1) := by
  rw [input11825_def, output11825_def]
  kernel_rfl

theorem node11826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11826 value5918 value1 value2 = (output11826, value5919, value1) := by
  rw [input11826_def, output11826_def]
  kernel_rfl

theorem node11827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11827 value5919 value1 value2 = (output11827, value5, value1) := by
  rw [input11827_def, output11827_def]
  kernel_rfl

theorem node11828_cond_eq
    (child11826 : Flapjack.WordAlloc.removeDeadStructural input11826 value5918 value1 value2 = (output11826, value5919, value1))
    (child11827 : Flapjack.WordAlloc.removeDeadStructural input11827 value5919 value1 value2 = (output11827, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11828 value5918 value1 value2 = (output11828, value5, value1) := by
  rw [input11828_def, output11828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11826]
  dsimp only
  rw [child11827]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11826_skip, output11827_skip]
  kernel_rfl

theorem node11829_cond_eq
    (child11825 : Flapjack.WordAlloc.removeDeadStructural input11825 value5917 value1 value2 = (output11825, value5918, value1))
    (child11828 : Flapjack.WordAlloc.removeDeadStructural input11828 value5918 value1 value2 = (output11828, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11829 value5917 value1 value2 = (output11829, value5, value1) := by
  rw [input11829_def, output11829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11825]
  dsimp only
  rw [child11828]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11825_skip, output11828_skip]
  kernel_rfl

theorem node11830_cond_eq
    (child11824 : Flapjack.WordAlloc.removeDeadStructural input11824 value5916 value1 value2 = (output11824, value5917, value1))
    (child11829 : Flapjack.WordAlloc.removeDeadStructural input11829 value5917 value1 value2 = (output11829, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11830 value5916 value1 value2 = (output11830, value5, value1) := by
  rw [input11830_def, output11830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11824]
  dsimp only
  rw [child11829]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11824_skip, output11829_skip]
  kernel_rfl

theorem node11831_cond_eq
    (child11823 : Flapjack.WordAlloc.removeDeadStructural input11823 value5915 value1 value2 = (output11823, value5916, value1))
    (child11830 : Flapjack.WordAlloc.removeDeadStructural input11830 value5916 value1 value2 = (output11830, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11831 value5915 value1 value2 = (output11831, value5, value1) := by
  rw [input11831_def, output11831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11823]
  dsimp only
  rw [child11830]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11823_skip, output11830_skip]
  kernel_rfl

theorem node11832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11832 value5 value1 value2 = (output11832, value5920, value1) := by
  rw [input11832_def, output11832_def]
  kernel_rfl

theorem node11833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11833 value5920 value1 value2 = (output11833, value5921, value1) := by
  rw [input11833_def, output11833_def]
  kernel_rfl

theorem node11834_cond_eq
    (child11832 : Flapjack.WordAlloc.removeDeadStructural input11832 value5 value1 value2 = (output11832, value5920, value1))
    (child11833 : Flapjack.WordAlloc.removeDeadStructural input11833 value5920 value1 value2 = (output11833, value5921, value1)) : Flapjack.WordAlloc.removeDeadStructural input11834 value5 value1 value2 = (output11834, value5921, value1) := by
  rw [input11834_def, output11834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11832]
  dsimp only
  rw [child11833]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11832_skip, output11833_skip]
  kernel_rfl

theorem node11835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11835 value5921 value1 value2 = (output11835, value5922, value1) := by
  rw [input11835_def, output11835_def]
  kernel_rfl

theorem node11836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11836 value5922 value1 value2 = (output11836, value5922, value1) := by
  rw [input11836_def, output11836_def]
  kernel_rfl

theorem node11837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11837 value5922 value1 value2 = (output11837, value5923, value1) := by
  rw [input11837_def, output11837_def]
  kernel_rfl

theorem node11838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11838 value5923 value1 value2 = (output11838, value5924, value1) := by
  rw [input11838_def, output11838_def]
  kernel_rfl

theorem node11839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11839 value5924 value1 value2 = (output11839, value5925, value1) := by
  rw [input11839_def, output11839_def]
  kernel_rfl

theorem node11840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11840 value5925 value1 value2 = (output11840, value5926, value1) := by
  rw [input11840_def, output11840_def]
  kernel_rfl

theorem node11841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11841 value5926 value1 value2 = (output11841, value5, value1) := by
  rw [input11841_def, output11841_def]
  kernel_rfl

theorem node11842_cond_eq
    (child11840 : Flapjack.WordAlloc.removeDeadStructural input11840 value5925 value1 value2 = (output11840, value5926, value1))
    (child11841 : Flapjack.WordAlloc.removeDeadStructural input11841 value5926 value1 value2 = (output11841, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11842 value5925 value1 value2 = (output11842, value5, value1) := by
  rw [input11842_def, output11842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11840]
  dsimp only
  rw [child11841]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11840_skip, output11841_skip]
  kernel_rfl

theorem node11843_cond_eq
    (child11839 : Flapjack.WordAlloc.removeDeadStructural input11839 value5924 value1 value2 = (output11839, value5925, value1))
    (child11842 : Flapjack.WordAlloc.removeDeadStructural input11842 value5925 value1 value2 = (output11842, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11843 value5924 value1 value2 = (output11843, value5, value1) := by
  rw [input11843_def, output11843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11839]
  dsimp only
  rw [child11842]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11839_skip, output11842_skip]
  kernel_rfl

theorem node11844_cond_eq
    (child11838 : Flapjack.WordAlloc.removeDeadStructural input11838 value5923 value1 value2 = (output11838, value5924, value1))
    (child11843 : Flapjack.WordAlloc.removeDeadStructural input11843 value5924 value1 value2 = (output11843, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11844 value5923 value1 value2 = (output11844, value5, value1) := by
  rw [input11844_def, output11844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11838]
  dsimp only
  rw [child11843]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11838_skip, output11843_skip]
  kernel_rfl

theorem node11845_cond_eq
    (child11837 : Flapjack.WordAlloc.removeDeadStructural input11837 value5922 value1 value2 = (output11837, value5923, value1))
    (child11844 : Flapjack.WordAlloc.removeDeadStructural input11844 value5923 value1 value2 = (output11844, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11845 value5922 value1 value2 = (output11845, value5, value1) := by
  rw [input11845_def, output11845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11837]
  dsimp only
  rw [child11844]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11837_skip, output11844_skip]
  kernel_rfl

theorem node11846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11846 value5 value1 value2 = (output11846, value5927, value1) := by
  rw [input11846_def, output11846_def]
  kernel_rfl

theorem node11847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11847 value5927 value1 value2 = (output11847, value5928, value1) := by
  rw [input11847_def, output11847_def]
  kernel_rfl

theorem node11848_cond_eq
    (child11846 : Flapjack.WordAlloc.removeDeadStructural input11846 value5 value1 value2 = (output11846, value5927, value1))
    (child11847 : Flapjack.WordAlloc.removeDeadStructural input11847 value5927 value1 value2 = (output11847, value5928, value1)) : Flapjack.WordAlloc.removeDeadStructural input11848 value5 value1 value2 = (output11848, value5928, value1) := by
  rw [input11848_def, output11848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11846]
  dsimp only
  rw [child11847]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11846_skip, output11847_skip]
  kernel_rfl

theorem node11849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11849 value5928 value1 value2 = (output11849, value5929, value1) := by
  rw [input11849_def, output11849_def]
  kernel_rfl

theorem node11850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11850 value5929 value1 value2 = (output11850, value5929, value1) := by
  rw [input11850_def, output11850_def]
  kernel_rfl

theorem node11851_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11851 value5929 value1 value2 = (output11851, value5930, value1) := by
  rw [input11851_def, output11851_def]
  kernel_rfl

theorem node11852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11852 value5930 value1 value2 = (output11852, value5931, value1) := by
  rw [input11852_def, output11852_def]
  kernel_rfl

theorem node11853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11853 value5931 value1 value2 = (output11853, value5932, value1) := by
  rw [input11853_def, output11853_def]
  kernel_rfl

theorem node11854_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11854 value5932 value1 value2 = (output11854, value5933, value1) := by
  rw [input11854_def, output11854_def]
  kernel_rfl

theorem node11855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11855 value5933 value1 value2 = (output11855, value5, value1) := by
  rw [input11855_def, output11855_def]
  kernel_rfl

theorem node11856_cond_eq
    (child11854 : Flapjack.WordAlloc.removeDeadStructural input11854 value5932 value1 value2 = (output11854, value5933, value1))
    (child11855 : Flapjack.WordAlloc.removeDeadStructural input11855 value5933 value1 value2 = (output11855, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11856 value5932 value1 value2 = (output11856, value5, value1) := by
  rw [input11856_def, output11856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11854]
  dsimp only
  rw [child11855]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11854_skip, output11855_skip]
  kernel_rfl

theorem node11857_cond_eq
    (child11853 : Flapjack.WordAlloc.removeDeadStructural input11853 value5931 value1 value2 = (output11853, value5932, value1))
    (child11856 : Flapjack.WordAlloc.removeDeadStructural input11856 value5932 value1 value2 = (output11856, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11857 value5931 value1 value2 = (output11857, value5, value1) := by
  rw [input11857_def, output11857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11853]
  dsimp only
  rw [child11856]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11853_skip, output11856_skip]
  kernel_rfl

theorem node11858_cond_eq
    (child11852 : Flapjack.WordAlloc.removeDeadStructural input11852 value5930 value1 value2 = (output11852, value5931, value1))
    (child11857 : Flapjack.WordAlloc.removeDeadStructural input11857 value5931 value1 value2 = (output11857, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11858 value5930 value1 value2 = (output11858, value5, value1) := by
  rw [input11858_def, output11858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11852]
  dsimp only
  rw [child11857]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11852_skip, output11857_skip]
  kernel_rfl

theorem node11859_cond_eq
    (child11851 : Flapjack.WordAlloc.removeDeadStructural input11851 value5929 value1 value2 = (output11851, value5930, value1))
    (child11858 : Flapjack.WordAlloc.removeDeadStructural input11858 value5930 value1 value2 = (output11858, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11859 value5929 value1 value2 = (output11859, value5, value1) := by
  rw [input11859_def, output11859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11851]
  dsimp only
  rw [child11858]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11851_skip, output11858_skip]
  kernel_rfl

theorem node11860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11860 value5 value1 value2 = (output11860, value5934, value1) := by
  rw [input11860_def, output11860_def]
  kernel_rfl

theorem node11861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11861 value5934 value1 value2 = (output11861, value5935, value1) := by
  rw [input11861_def, output11861_def]
  kernel_rfl

theorem node11862_cond_eq
    (child11860 : Flapjack.WordAlloc.removeDeadStructural input11860 value5 value1 value2 = (output11860, value5934, value1))
    (child11861 : Flapjack.WordAlloc.removeDeadStructural input11861 value5934 value1 value2 = (output11861, value5935, value1)) : Flapjack.WordAlloc.removeDeadStructural input11862 value5 value1 value2 = (output11862, value5935, value1) := by
  rw [input11862_def, output11862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11860]
  dsimp only
  rw [child11861]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11860_skip, output11861_skip]
  kernel_rfl

theorem node11863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11863 value5935 value1 value2 = (output11863, value5936, value1) := by
  rw [input11863_def, output11863_def]
  kernel_rfl

theorem node11864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11864 value5936 value1 value2 = (output11864, value5936, value1) := by
  rw [input11864_def, output11864_def]
  kernel_rfl

theorem node11865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11865 value5936 value1 value2 = (output11865, value5937, value1) := by
  rw [input11865_def, output11865_def]
  kernel_rfl

theorem node11866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11866 value5937 value1 value2 = (output11866, value5938, value1) := by
  rw [input11866_def, output11866_def]
  kernel_rfl

theorem node11867_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11867 value5938 value1 value2 = (output11867, value5939, value1) := by
  rw [input11867_def, output11867_def]
  kernel_rfl

theorem node11868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11868 value5939 value1 value2 = (output11868, value5940, value1) := by
  rw [input11868_def, output11868_def]
  kernel_rfl

theorem node11869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11869 value5940 value1 value2 = (output11869, value5, value1) := by
  rw [input11869_def, output11869_def]
  kernel_rfl

theorem node11870_cond_eq
    (child11868 : Flapjack.WordAlloc.removeDeadStructural input11868 value5939 value1 value2 = (output11868, value5940, value1))
    (child11869 : Flapjack.WordAlloc.removeDeadStructural input11869 value5940 value1 value2 = (output11869, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11870 value5939 value1 value2 = (output11870, value5, value1) := by
  rw [input11870_def, output11870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11868]
  dsimp only
  rw [child11869]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11868_skip, output11869_skip]
  kernel_rfl

theorem node11871_cond_eq
    (child11867 : Flapjack.WordAlloc.removeDeadStructural input11867 value5938 value1 value2 = (output11867, value5939, value1))
    (child11870 : Flapjack.WordAlloc.removeDeadStructural input11870 value5939 value1 value2 = (output11870, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11871 value5938 value1 value2 = (output11871, value5, value1) := by
  rw [input11871_def, output11871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11867]
  dsimp only
  rw [child11870]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11867_skip, output11870_skip]
  kernel_rfl

theorem node11872_cond_eq
    (child11866 : Flapjack.WordAlloc.removeDeadStructural input11866 value5937 value1 value2 = (output11866, value5938, value1))
    (child11871 : Flapjack.WordAlloc.removeDeadStructural input11871 value5938 value1 value2 = (output11871, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11872 value5937 value1 value2 = (output11872, value5, value1) := by
  rw [input11872_def, output11872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11866]
  dsimp only
  rw [child11871]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11866_skip, output11871_skip]
  kernel_rfl

theorem node11873_cond_eq
    (child11865 : Flapjack.WordAlloc.removeDeadStructural input11865 value5936 value1 value2 = (output11865, value5937, value1))
    (child11872 : Flapjack.WordAlloc.removeDeadStructural input11872 value5937 value1 value2 = (output11872, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11873 value5936 value1 value2 = (output11873, value5, value1) := by
  rw [input11873_def, output11873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11865]
  dsimp only
  rw [child11872]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11865_skip, output11872_skip]
  kernel_rfl

theorem node11874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11874 value5 value1 value2 = (output11874, value5941, value1) := by
  rw [input11874_def, output11874_def]
  kernel_rfl

theorem node11875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11875 value5941 value1 value2 = (output11875, value5942, value1) := by
  rw [input11875_def, output11875_def]
  kernel_rfl

theorem node11876_cond_eq
    (child11874 : Flapjack.WordAlloc.removeDeadStructural input11874 value5 value1 value2 = (output11874, value5941, value1))
    (child11875 : Flapjack.WordAlloc.removeDeadStructural input11875 value5941 value1 value2 = (output11875, value5942, value1)) : Flapjack.WordAlloc.removeDeadStructural input11876 value5 value1 value2 = (output11876, value5942, value1) := by
  rw [input11876_def, output11876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11874]
  dsimp only
  rw [child11875]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11874_skip, output11875_skip]
  kernel_rfl

theorem node11877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11877 value5942 value1 value2 = (output11877, value5943, value1) := by
  rw [input11877_def, output11877_def]
  kernel_rfl

theorem node11878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11878 value5943 value1 value2 = (output11878, value5943, value1) := by
  rw [input11878_def, output11878_def]
  kernel_rfl

theorem node11879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11879 value5943 value1 value2 = (output11879, value5944, value1) := by
  rw [input11879_def, output11879_def]
  kernel_rfl

theorem node11880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11880 value5944 value1 value2 = (output11880, value5945, value1) := by
  rw [input11880_def, output11880_def]
  kernel_rfl

theorem node11881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11881 value5945 value1 value2 = (output11881, value5946, value1) := by
  rw [input11881_def, output11881_def]
  kernel_rfl

theorem node11882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11882 value5946 value1 value2 = (output11882, value5947, value1) := by
  rw [input11882_def, output11882_def]
  kernel_rfl

theorem node11883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11883 value5947 value1 value2 = (output11883, value5, value1) := by
  rw [input11883_def, output11883_def]
  kernel_rfl

theorem node11884_cond_eq
    (child11882 : Flapjack.WordAlloc.removeDeadStructural input11882 value5946 value1 value2 = (output11882, value5947, value1))
    (child11883 : Flapjack.WordAlloc.removeDeadStructural input11883 value5947 value1 value2 = (output11883, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11884 value5946 value1 value2 = (output11884, value5, value1) := by
  rw [input11884_def, output11884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11882]
  dsimp only
  rw [child11883]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11882_skip, output11883_skip]
  kernel_rfl

theorem node11885_cond_eq
    (child11881 : Flapjack.WordAlloc.removeDeadStructural input11881 value5945 value1 value2 = (output11881, value5946, value1))
    (child11884 : Flapjack.WordAlloc.removeDeadStructural input11884 value5946 value1 value2 = (output11884, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11885 value5945 value1 value2 = (output11885, value5, value1) := by
  rw [input11885_def, output11885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11881]
  dsimp only
  rw [child11884]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11881_skip, output11884_skip]
  kernel_rfl

theorem node11886_cond_eq
    (child11880 : Flapjack.WordAlloc.removeDeadStructural input11880 value5944 value1 value2 = (output11880, value5945, value1))
    (child11885 : Flapjack.WordAlloc.removeDeadStructural input11885 value5945 value1 value2 = (output11885, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11886 value5944 value1 value2 = (output11886, value5, value1) := by
  rw [input11886_def, output11886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11880]
  dsimp only
  rw [child11885]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11880_skip, output11885_skip]
  kernel_rfl

theorem node11887_cond_eq
    (child11879 : Flapjack.WordAlloc.removeDeadStructural input11879 value5943 value1 value2 = (output11879, value5944, value1))
    (child11886 : Flapjack.WordAlloc.removeDeadStructural input11886 value5944 value1 value2 = (output11886, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11887 value5943 value1 value2 = (output11887, value5, value1) := by
  rw [input11887_def, output11887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11879]
  dsimp only
  rw [child11886]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11879_skip, output11886_skip]
  kernel_rfl

theorem node11888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11888 value5 value1 value2 = (output11888, value5948, value1) := by
  rw [input11888_def, output11888_def]
  kernel_rfl

theorem node11889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11889 value5948 value1 value2 = (output11889, value5949, value1) := by
  rw [input11889_def, output11889_def]
  kernel_rfl

theorem node11890_cond_eq
    (child11888 : Flapjack.WordAlloc.removeDeadStructural input11888 value5 value1 value2 = (output11888, value5948, value1))
    (child11889 : Flapjack.WordAlloc.removeDeadStructural input11889 value5948 value1 value2 = (output11889, value5949, value1)) : Flapjack.WordAlloc.removeDeadStructural input11890 value5 value1 value2 = (output11890, value5949, value1) := by
  rw [input11890_def, output11890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11888]
  dsimp only
  rw [child11889]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11888_skip, output11889_skip]
  kernel_rfl

theorem node11891_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11891 value5949 value1 value2 = (output11891, value5950, value1) := by
  rw [input11891_def, output11891_def]
  kernel_rfl

theorem node11892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11892 value5950 value1 value2 = (output11892, value5950, value1) := by
  rw [input11892_def, output11892_def]
  kernel_rfl

theorem node11893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11893 value5950 value1 value2 = (output11893, value5951, value1) := by
  rw [input11893_def, output11893_def]
  kernel_rfl

theorem node11894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11894 value5951 value1 value2 = (output11894, value5952, value1) := by
  rw [input11894_def, output11894_def]
  kernel_rfl

theorem node11895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11895 value5952 value1 value2 = (output11895, value5953, value1) := by
  rw [input11895_def, output11895_def]
  kernel_rfl

theorem node11896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11896 value5953 value1 value2 = (output11896, value5954, value1) := by
  rw [input11896_def, output11896_def]
  kernel_rfl

theorem node11897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11897 value5954 value1 value2 = (output11897, value5, value1) := by
  rw [input11897_def, output11897_def]
  kernel_rfl

theorem node11898_cond_eq
    (child11896 : Flapjack.WordAlloc.removeDeadStructural input11896 value5953 value1 value2 = (output11896, value5954, value1))
    (child11897 : Flapjack.WordAlloc.removeDeadStructural input11897 value5954 value1 value2 = (output11897, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11898 value5953 value1 value2 = (output11898, value5, value1) := by
  rw [input11898_def, output11898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11896]
  dsimp only
  rw [child11897]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11896_skip, output11897_skip]
  kernel_rfl

theorem node11899_cond_eq
    (child11895 : Flapjack.WordAlloc.removeDeadStructural input11895 value5952 value1 value2 = (output11895, value5953, value1))
    (child11898 : Flapjack.WordAlloc.removeDeadStructural input11898 value5953 value1 value2 = (output11898, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11899 value5952 value1 value2 = (output11899, value5, value1) := by
  rw [input11899_def, output11899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11895]
  dsimp only
  rw [child11898]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11895_skip, output11898_skip]
  kernel_rfl

theorem node11900_cond_eq
    (child11894 : Flapjack.WordAlloc.removeDeadStructural input11894 value5951 value1 value2 = (output11894, value5952, value1))
    (child11899 : Flapjack.WordAlloc.removeDeadStructural input11899 value5952 value1 value2 = (output11899, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11900 value5951 value1 value2 = (output11900, value5, value1) := by
  rw [input11900_def, output11900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11894]
  dsimp only
  rw [child11899]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11894_skip, output11899_skip]
  kernel_rfl

theorem node11901_cond_eq
    (child11893 : Flapjack.WordAlloc.removeDeadStructural input11893 value5950 value1 value2 = (output11893, value5951, value1))
    (child11900 : Flapjack.WordAlloc.removeDeadStructural input11900 value5951 value1 value2 = (output11900, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11901 value5950 value1 value2 = (output11901, value5, value1) := by
  rw [input11901_def, output11901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11893]
  dsimp only
  rw [child11900]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11893_skip, output11900_skip]
  kernel_rfl

theorem node11902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11902 value5 value1 value2 = (output11902, value5955, value1) := by
  rw [input11902_def, output11902_def]
  kernel_rfl

theorem node11903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11903 value5955 value1 value2 = (output11903, value5956, value1) := by
  rw [input11903_def, output11903_def]
  kernel_rfl

theorem node11904_cond_eq
    (child11902 : Flapjack.WordAlloc.removeDeadStructural input11902 value5 value1 value2 = (output11902, value5955, value1))
    (child11903 : Flapjack.WordAlloc.removeDeadStructural input11903 value5955 value1 value2 = (output11903, value5956, value1)) : Flapjack.WordAlloc.removeDeadStructural input11904 value5 value1 value2 = (output11904, value5956, value1) := by
  rw [input11904_def, output11904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11902]
  dsimp only
  rw [child11903]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11902_skip, output11903_skip]
  kernel_rfl

theorem node11905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11905 value5956 value1 value2 = (output11905, value5957, value1) := by
  rw [input11905_def, output11905_def]
  kernel_rfl

theorem node11906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11906 value5957 value1 value2 = (output11906, value5957, value1) := by
  rw [input11906_def, output11906_def]
  kernel_rfl

theorem node11907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11907 value5957 value1 value2 = (output11907, value5958, value1) := by
  rw [input11907_def, output11907_def]
  kernel_rfl

theorem node11908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11908 value5958 value1 value2 = (output11908, value5959, value1) := by
  rw [input11908_def, output11908_def]
  kernel_rfl

theorem node11909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11909 value5959 value1 value2 = (output11909, value5960, value1) := by
  rw [input11909_def, output11909_def]
  kernel_rfl

theorem node11910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11910 value5960 value1 value2 = (output11910, value5961, value1) := by
  rw [input11910_def, output11910_def]
  kernel_rfl

theorem node11911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11911 value5961 value1 value2 = (output11911, value5, value1) := by
  rw [input11911_def, output11911_def]
  kernel_rfl

theorem node11912_cond_eq
    (child11910 : Flapjack.WordAlloc.removeDeadStructural input11910 value5960 value1 value2 = (output11910, value5961, value1))
    (child11911 : Flapjack.WordAlloc.removeDeadStructural input11911 value5961 value1 value2 = (output11911, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11912 value5960 value1 value2 = (output11912, value5, value1) := by
  rw [input11912_def, output11912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11910]
  dsimp only
  rw [child11911]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11910_skip, output11911_skip]
  kernel_rfl

theorem node11913_cond_eq
    (child11909 : Flapjack.WordAlloc.removeDeadStructural input11909 value5959 value1 value2 = (output11909, value5960, value1))
    (child11912 : Flapjack.WordAlloc.removeDeadStructural input11912 value5960 value1 value2 = (output11912, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11913 value5959 value1 value2 = (output11913, value5, value1) := by
  rw [input11913_def, output11913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11909]
  dsimp only
  rw [child11912]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11909_skip, output11912_skip]
  kernel_rfl

theorem node11914_cond_eq
    (child11908 : Flapjack.WordAlloc.removeDeadStructural input11908 value5958 value1 value2 = (output11908, value5959, value1))
    (child11913 : Flapjack.WordAlloc.removeDeadStructural input11913 value5959 value1 value2 = (output11913, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11914 value5958 value1 value2 = (output11914, value5, value1) := by
  rw [input11914_def, output11914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11908]
  dsimp only
  rw [child11913]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11908_skip, output11913_skip]
  kernel_rfl

theorem node11915_cond_eq
    (child11907 : Flapjack.WordAlloc.removeDeadStructural input11907 value5957 value1 value2 = (output11907, value5958, value1))
    (child11914 : Flapjack.WordAlloc.removeDeadStructural input11914 value5958 value1 value2 = (output11914, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11915 value5957 value1 value2 = (output11915, value5, value1) := by
  rw [input11915_def, output11915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11907]
  dsimp only
  rw [child11914]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11907_skip, output11914_skip]
  kernel_rfl

theorem node11916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11916 value5 value1 value2 = (output11916, value5962, value1) := by
  rw [input11916_def, output11916_def]
  kernel_rfl

theorem node11917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11917 value5962 value1 value2 = (output11917, value5963, value1) := by
  rw [input11917_def, output11917_def]
  kernel_rfl

theorem node11918_cond_eq
    (child11916 : Flapjack.WordAlloc.removeDeadStructural input11916 value5 value1 value2 = (output11916, value5962, value1))
    (child11917 : Flapjack.WordAlloc.removeDeadStructural input11917 value5962 value1 value2 = (output11917, value5963, value1)) : Flapjack.WordAlloc.removeDeadStructural input11918 value5 value1 value2 = (output11918, value5963, value1) := by
  rw [input11918_def, output11918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11916]
  dsimp only
  rw [child11917]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11916_skip, output11917_skip]
  kernel_rfl

theorem node11919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11919 value5963 value1 value2 = (output11919, value5964, value1) := by
  rw [input11919_def, output11919_def]
  kernel_rfl

theorem node11920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11920 value5964 value1 value2 = (output11920, value5964, value1) := by
  rw [input11920_def, output11920_def]
  kernel_rfl

theorem node11921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11921 value5964 value1 value2 = (output11921, value5965, value1) := by
  rw [input11921_def, output11921_def]
  kernel_rfl

theorem node11922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11922 value5965 value1 value2 = (output11922, value5966, value1) := by
  rw [input11922_def, output11922_def]
  kernel_rfl

theorem node11923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11923 value5966 value1 value2 = (output11923, value5967, value1) := by
  rw [input11923_def, output11923_def]
  kernel_rfl

theorem node11924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11924 value5967 value1 value2 = (output11924, value5968, value1) := by
  rw [input11924_def, output11924_def]
  kernel_rfl

theorem node11925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11925 value5968 value1 value2 = (output11925, value5, value1) := by
  rw [input11925_def, output11925_def]
  kernel_rfl

theorem node11926_cond_eq
    (child11924 : Flapjack.WordAlloc.removeDeadStructural input11924 value5967 value1 value2 = (output11924, value5968, value1))
    (child11925 : Flapjack.WordAlloc.removeDeadStructural input11925 value5968 value1 value2 = (output11925, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11926 value5967 value1 value2 = (output11926, value5, value1) := by
  rw [input11926_def, output11926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11924]
  dsimp only
  rw [child11925]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11924_skip, output11925_skip]
  kernel_rfl

theorem node11927_cond_eq
    (child11923 : Flapjack.WordAlloc.removeDeadStructural input11923 value5966 value1 value2 = (output11923, value5967, value1))
    (child11926 : Flapjack.WordAlloc.removeDeadStructural input11926 value5967 value1 value2 = (output11926, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11927 value5966 value1 value2 = (output11927, value5, value1) := by
  rw [input11927_def, output11927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11923]
  dsimp only
  rw [child11926]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11923_skip, output11926_skip]
  kernel_rfl

theorem node11928_cond_eq
    (child11922 : Flapjack.WordAlloc.removeDeadStructural input11922 value5965 value1 value2 = (output11922, value5966, value1))
    (child11927 : Flapjack.WordAlloc.removeDeadStructural input11927 value5966 value1 value2 = (output11927, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11928 value5965 value1 value2 = (output11928, value5, value1) := by
  rw [input11928_def, output11928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11922]
  dsimp only
  rw [child11927]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11922_skip, output11927_skip]
  kernel_rfl

theorem node11929_cond_eq
    (child11921 : Flapjack.WordAlloc.removeDeadStructural input11921 value5964 value1 value2 = (output11921, value5965, value1))
    (child11928 : Flapjack.WordAlloc.removeDeadStructural input11928 value5965 value1 value2 = (output11928, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11929 value5964 value1 value2 = (output11929, value5, value1) := by
  rw [input11929_def, output11929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11921]
  dsimp only
  rw [child11928]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11921_skip, output11928_skip]
  kernel_rfl

theorem node11930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11930 value5 value1 value2 = (output11930, value5969, value1) := by
  rw [input11930_def, output11930_def]
  kernel_rfl

theorem node11931_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11931 value5969 value1 value2 = (output11931, value5970, value1) := by
  rw [input11931_def, output11931_def]
  kernel_rfl

theorem node11932_cond_eq
    (child11930 : Flapjack.WordAlloc.removeDeadStructural input11930 value5 value1 value2 = (output11930, value5969, value1))
    (child11931 : Flapjack.WordAlloc.removeDeadStructural input11931 value5969 value1 value2 = (output11931, value5970, value1)) : Flapjack.WordAlloc.removeDeadStructural input11932 value5 value1 value2 = (output11932, value5970, value1) := by
  rw [input11932_def, output11932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11930]
  dsimp only
  rw [child11931]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11930_skip, output11931_skip]
  kernel_rfl

theorem node11933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11933 value5970 value1 value2 = (output11933, value5971, value1) := by
  rw [input11933_def, output11933_def]
  kernel_rfl

theorem node11934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11934 value5971 value1 value2 = (output11934, value5971, value1) := by
  rw [input11934_def, output11934_def]
  kernel_rfl

theorem node11935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11935 value5971 value1 value2 = (output11935, value5972, value1) := by
  rw [input11935_def, output11935_def]
  kernel_rfl

theorem node11936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11936 value5972 value1 value2 = (output11936, value5973, value1) := by
  rw [input11936_def, output11936_def]
  kernel_rfl

theorem node11937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11937 value5973 value1 value2 = (output11937, value5974, value1) := by
  rw [input11937_def, output11937_def]
  kernel_rfl

theorem node11938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11938 value5974 value1 value2 = (output11938, value5975, value1) := by
  rw [input11938_def, output11938_def]
  kernel_rfl

theorem node11939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11939 value5975 value1 value2 = (output11939, value5, value1) := by
  rw [input11939_def, output11939_def]
  kernel_rfl

theorem node11940_cond_eq
    (child11938 : Flapjack.WordAlloc.removeDeadStructural input11938 value5974 value1 value2 = (output11938, value5975, value1))
    (child11939 : Flapjack.WordAlloc.removeDeadStructural input11939 value5975 value1 value2 = (output11939, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11940 value5974 value1 value2 = (output11940, value5, value1) := by
  rw [input11940_def, output11940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11938]
  dsimp only
  rw [child11939]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11938_skip, output11939_skip]
  kernel_rfl

theorem node11941_cond_eq
    (child11937 : Flapjack.WordAlloc.removeDeadStructural input11937 value5973 value1 value2 = (output11937, value5974, value1))
    (child11940 : Flapjack.WordAlloc.removeDeadStructural input11940 value5974 value1 value2 = (output11940, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11941 value5973 value1 value2 = (output11941, value5, value1) := by
  rw [input11941_def, output11941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11937]
  dsimp only
  rw [child11940]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11937_skip, output11940_skip]
  kernel_rfl

theorem node11942_cond_eq
    (child11936 : Flapjack.WordAlloc.removeDeadStructural input11936 value5972 value1 value2 = (output11936, value5973, value1))
    (child11941 : Flapjack.WordAlloc.removeDeadStructural input11941 value5973 value1 value2 = (output11941, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11942 value5972 value1 value2 = (output11942, value5, value1) := by
  rw [input11942_def, output11942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11936]
  dsimp only
  rw [child11941]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11936_skip, output11941_skip]
  kernel_rfl

theorem node11943_cond_eq
    (child11935 : Flapjack.WordAlloc.removeDeadStructural input11935 value5971 value1 value2 = (output11935, value5972, value1))
    (child11942 : Flapjack.WordAlloc.removeDeadStructural input11942 value5972 value1 value2 = (output11942, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11943 value5971 value1 value2 = (output11943, value5, value1) := by
  rw [input11943_def, output11943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11935]
  dsimp only
  rw [child11942]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11935_skip, output11942_skip]
  kernel_rfl

theorem node11944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11944 value5 value1 value2 = (output11944, value5976, value1) := by
  rw [input11944_def, output11944_def]
  kernel_rfl

theorem node11945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11945 value5976 value1 value2 = (output11945, value5977, value1) := by
  rw [input11945_def, output11945_def]
  kernel_rfl

theorem node11946_cond_eq
    (child11944 : Flapjack.WordAlloc.removeDeadStructural input11944 value5 value1 value2 = (output11944, value5976, value1))
    (child11945 : Flapjack.WordAlloc.removeDeadStructural input11945 value5976 value1 value2 = (output11945, value5977, value1)) : Flapjack.WordAlloc.removeDeadStructural input11946 value5 value1 value2 = (output11946, value5977, value1) := by
  rw [input11946_def, output11946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11944]
  dsimp only
  rw [child11945]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11944_skip, output11945_skip]
  kernel_rfl

theorem node11947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11947 value5977 value1 value2 = (output11947, value5978, value1) := by
  rw [input11947_def, output11947_def]
  kernel_rfl

theorem node11948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11948 value5978 value1 value2 = (output11948, value5978, value1) := by
  rw [input11948_def, output11948_def]
  kernel_rfl

theorem node11949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11949 value5978 value1 value2 = (output11949, value5979, value1) := by
  rw [input11949_def, output11949_def]
  kernel_rfl

theorem node11950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11950 value5979 value1 value2 = (output11950, value5980, value1) := by
  rw [input11950_def, output11950_def]
  kernel_rfl

theorem node11951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11951 value5980 value1 value2 = (output11951, value5981, value1) := by
  rw [input11951_def, output11951_def]
  kernel_rfl

theorem node11952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11952 value5981 value1 value2 = (output11952, value5982, value1) := by
  rw [input11952_def, output11952_def]
  kernel_rfl

theorem node11953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11953 value5982 value1 value2 = (output11953, value5, value1) := by
  rw [input11953_def, output11953_def]
  kernel_rfl

theorem node11954_cond_eq
    (child11952 : Flapjack.WordAlloc.removeDeadStructural input11952 value5981 value1 value2 = (output11952, value5982, value1))
    (child11953 : Flapjack.WordAlloc.removeDeadStructural input11953 value5982 value1 value2 = (output11953, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11954 value5981 value1 value2 = (output11954, value5, value1) := by
  rw [input11954_def, output11954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11952]
  dsimp only
  rw [child11953]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11952_skip, output11953_skip]
  kernel_rfl

theorem node11955_cond_eq
    (child11951 : Flapjack.WordAlloc.removeDeadStructural input11951 value5980 value1 value2 = (output11951, value5981, value1))
    (child11954 : Flapjack.WordAlloc.removeDeadStructural input11954 value5981 value1 value2 = (output11954, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11955 value5980 value1 value2 = (output11955, value5, value1) := by
  rw [input11955_def, output11955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11951]
  dsimp only
  rw [child11954]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11951_skip, output11954_skip]
  kernel_rfl

theorem node11956_cond_eq
    (child11950 : Flapjack.WordAlloc.removeDeadStructural input11950 value5979 value1 value2 = (output11950, value5980, value1))
    (child11955 : Flapjack.WordAlloc.removeDeadStructural input11955 value5980 value1 value2 = (output11955, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11956 value5979 value1 value2 = (output11956, value5, value1) := by
  rw [input11956_def, output11956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11950]
  dsimp only
  rw [child11955]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11950_skip, output11955_skip]
  kernel_rfl

theorem node11957_cond_eq
    (child11949 : Flapjack.WordAlloc.removeDeadStructural input11949 value5978 value1 value2 = (output11949, value5979, value1))
    (child11956 : Flapjack.WordAlloc.removeDeadStructural input11956 value5979 value1 value2 = (output11956, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11957 value5978 value1 value2 = (output11957, value5, value1) := by
  rw [input11957_def, output11957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11949]
  dsimp only
  rw [child11956]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11949_skip, output11956_skip]
  kernel_rfl

theorem node11958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11958 value5 value1 value2 = (output11958, value5983, value1) := by
  rw [input11958_def, output11958_def]
  kernel_rfl

theorem node11959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11959 value5983 value1 value2 = (output11959, value5984, value1) := by
  rw [input11959_def, output11959_def]
  kernel_rfl

theorem node11960_cond_eq
    (child11958 : Flapjack.WordAlloc.removeDeadStructural input11958 value5 value1 value2 = (output11958, value5983, value1))
    (child11959 : Flapjack.WordAlloc.removeDeadStructural input11959 value5983 value1 value2 = (output11959, value5984, value1)) : Flapjack.WordAlloc.removeDeadStructural input11960 value5 value1 value2 = (output11960, value5984, value1) := by
  rw [input11960_def, output11960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11958]
  dsimp only
  rw [child11959]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11958_skip, output11959_skip]
  kernel_rfl

theorem node11961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11961 value5984 value1 value2 = (output11961, value5985, value1) := by
  rw [input11961_def, output11961_def]
  kernel_rfl

theorem node11962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11962 value5985 value1 value2 = (output11962, value5985, value1) := by
  rw [input11962_def, output11962_def]
  kernel_rfl

theorem node11963_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11963 value5985 value1 value2 = (output11963, value5986, value1) := by
  rw [input11963_def, output11963_def]
  kernel_rfl

theorem node11964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11964 value5986 value1 value2 = (output11964, value5987, value1) := by
  rw [input11964_def, output11964_def]
  kernel_rfl

theorem node11965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11965 value5987 value1 value2 = (output11965, value5988, value1) := by
  rw [input11965_def, output11965_def]
  kernel_rfl

theorem node11966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11966 value5988 value1 value2 = (output11966, value5989, value1) := by
  rw [input11966_def, output11966_def]
  kernel_rfl

theorem node11967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11967 value5989 value1 value2 = (output11967, value5, value1) := by
  rw [input11967_def, output11967_def]
  kernel_rfl

theorem node11968_cond_eq
    (child11966 : Flapjack.WordAlloc.removeDeadStructural input11966 value5988 value1 value2 = (output11966, value5989, value1))
    (child11967 : Flapjack.WordAlloc.removeDeadStructural input11967 value5989 value1 value2 = (output11967, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11968 value5988 value1 value2 = (output11968, value5, value1) := by
  rw [input11968_def, output11968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11966]
  dsimp only
  rw [child11967]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11966_skip, output11967_skip]
  kernel_rfl

theorem node11969_cond_eq
    (child11965 : Flapjack.WordAlloc.removeDeadStructural input11965 value5987 value1 value2 = (output11965, value5988, value1))
    (child11968 : Flapjack.WordAlloc.removeDeadStructural input11968 value5988 value1 value2 = (output11968, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11969 value5987 value1 value2 = (output11969, value5, value1) := by
  rw [input11969_def, output11969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11965]
  dsimp only
  rw [child11968]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11965_skip, output11968_skip]
  kernel_rfl

theorem node11970_cond_eq
    (child11964 : Flapjack.WordAlloc.removeDeadStructural input11964 value5986 value1 value2 = (output11964, value5987, value1))
    (child11969 : Flapjack.WordAlloc.removeDeadStructural input11969 value5987 value1 value2 = (output11969, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11970 value5986 value1 value2 = (output11970, value5, value1) := by
  rw [input11970_def, output11970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11964]
  dsimp only
  rw [child11969]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11964_skip, output11969_skip]
  kernel_rfl

theorem node11971_cond_eq
    (child11963 : Flapjack.WordAlloc.removeDeadStructural input11963 value5985 value1 value2 = (output11963, value5986, value1))
    (child11970 : Flapjack.WordAlloc.removeDeadStructural input11970 value5986 value1 value2 = (output11970, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11971 value5985 value1 value2 = (output11971, value5, value1) := by
  rw [input11971_def, output11971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11963]
  dsimp only
  rw [child11970]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11963_skip, output11970_skip]
  kernel_rfl

theorem node11972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11972 value5 value1 value2 = (output11972, value5990, value1) := by
  rw [input11972_def, output11972_def]
  kernel_rfl

theorem node11973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11973 value5990 value1 value2 = (output11973, value5991, value1) := by
  rw [input11973_def, output11973_def]
  kernel_rfl

theorem node11974_cond_eq
    (child11972 : Flapjack.WordAlloc.removeDeadStructural input11972 value5 value1 value2 = (output11972, value5990, value1))
    (child11973 : Flapjack.WordAlloc.removeDeadStructural input11973 value5990 value1 value2 = (output11973, value5991, value1)) : Flapjack.WordAlloc.removeDeadStructural input11974 value5 value1 value2 = (output11974, value5991, value1) := by
  rw [input11974_def, output11974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11972]
  dsimp only
  rw [child11973]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11972_skip, output11973_skip]
  kernel_rfl

theorem node11975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11975 value5991 value1 value2 = (output11975, value5992, value1) := by
  rw [input11975_def, output11975_def]
  kernel_rfl

theorem node11976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11976 value5992 value1 value2 = (output11976, value5992, value1) := by
  rw [input11976_def, output11976_def]
  kernel_rfl

theorem node11977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11977 value5992 value1 value2 = (output11977, value5993, value1) := by
  rw [input11977_def, output11977_def]
  kernel_rfl

theorem node11978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11978 value5993 value1 value2 = (output11978, value5994, value1) := by
  rw [input11978_def, output11978_def]
  kernel_rfl

theorem node11979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11979 value5994 value1 value2 = (output11979, value5995, value1) := by
  rw [input11979_def, output11979_def]
  kernel_rfl

theorem node11980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11980 value5995 value1 value2 = (output11980, value5996, value1) := by
  rw [input11980_def, output11980_def]
  kernel_rfl

theorem node11981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11981 value5996 value1 value2 = (output11981, value5, value1) := by
  rw [input11981_def, output11981_def]
  kernel_rfl

theorem node11982_cond_eq
    (child11980 : Flapjack.WordAlloc.removeDeadStructural input11980 value5995 value1 value2 = (output11980, value5996, value1))
    (child11981 : Flapjack.WordAlloc.removeDeadStructural input11981 value5996 value1 value2 = (output11981, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11982 value5995 value1 value2 = (output11982, value5, value1) := by
  rw [input11982_def, output11982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11980]
  dsimp only
  rw [child11981]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11980_skip, output11981_skip]
  kernel_rfl

theorem node11983_cond_eq
    (child11979 : Flapjack.WordAlloc.removeDeadStructural input11979 value5994 value1 value2 = (output11979, value5995, value1))
    (child11982 : Flapjack.WordAlloc.removeDeadStructural input11982 value5995 value1 value2 = (output11982, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11983 value5994 value1 value2 = (output11983, value5, value1) := by
  rw [input11983_def, output11983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11979]
  dsimp only
  rw [child11982]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11979_skip, output11982_skip]
  kernel_rfl

theorem node11984_cond_eq
    (child11978 : Flapjack.WordAlloc.removeDeadStructural input11978 value5993 value1 value2 = (output11978, value5994, value1))
    (child11983 : Flapjack.WordAlloc.removeDeadStructural input11983 value5994 value1 value2 = (output11983, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11984 value5993 value1 value2 = (output11984, value5, value1) := by
  rw [input11984_def, output11984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11978]
  dsimp only
  rw [child11983]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11978_skip, output11983_skip]
  kernel_rfl

theorem node11985_cond_eq
    (child11977 : Flapjack.WordAlloc.removeDeadStructural input11977 value5992 value1 value2 = (output11977, value5993, value1))
    (child11984 : Flapjack.WordAlloc.removeDeadStructural input11984 value5993 value1 value2 = (output11984, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11985 value5992 value1 value2 = (output11985, value5, value1) := by
  rw [input11985_def, output11985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11977]
  dsimp only
  rw [child11984]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11977_skip, output11984_skip]
  kernel_rfl

theorem node11986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11986 value5 value1 value2 = (output11986, value5997, value1) := by
  rw [input11986_def, output11986_def]
  kernel_rfl

theorem node11987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11987 value5997 value1 value2 = (output11987, value5998, value1) := by
  rw [input11987_def, output11987_def]
  kernel_rfl

theorem node11988_cond_eq
    (child11986 : Flapjack.WordAlloc.removeDeadStructural input11986 value5 value1 value2 = (output11986, value5997, value1))
    (child11987 : Flapjack.WordAlloc.removeDeadStructural input11987 value5997 value1 value2 = (output11987, value5998, value1)) : Flapjack.WordAlloc.removeDeadStructural input11988 value5 value1 value2 = (output11988, value5998, value1) := by
  rw [input11988_def, output11988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11986]
  dsimp only
  rw [child11987]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11986_skip, output11987_skip]
  kernel_rfl

theorem node11989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11989 value5998 value1 value2 = (output11989, value5999, value1) := by
  rw [input11989_def, output11989_def]
  kernel_rfl

theorem node11990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11990 value5999 value1 value2 = (output11990, value5999, value1) := by
  rw [input11990_def, output11990_def]
  kernel_rfl

theorem node11991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11991 value5999 value1 value2 = (output11991, value6000, value1) := by
  rw [input11991_def, output11991_def]
  kernel_rfl

theorem node11992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11992 value6000 value1 value2 = (output11992, value6001, value1) := by
  rw [input11992_def, output11992_def]
  kernel_rfl

theorem node11993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11993 value6001 value1 value2 = (output11993, value6002, value1) := by
  rw [input11993_def, output11993_def]
  kernel_rfl

theorem node11994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11994 value6002 value1 value2 = (output11994, value6003, value1) := by
  rw [input11994_def, output11994_def]
  kernel_rfl

theorem node11995_cond_eq : Flapjack.WordAlloc.removeDeadStructural input11995 value6003 value1 value2 = (output11995, value5, value1) := by
  rw [input11995_def, output11995_def]
  kernel_rfl

theorem node11996_cond_eq
    (child11994 : Flapjack.WordAlloc.removeDeadStructural input11994 value6002 value1 value2 = (output11994, value6003, value1))
    (child11995 : Flapjack.WordAlloc.removeDeadStructural input11995 value6003 value1 value2 = (output11995, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11996 value6002 value1 value2 = (output11996, value5, value1) := by
  rw [input11996_def, output11996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11994]
  dsimp only
  rw [child11995]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11994_skip, output11995_skip]
  kernel_rfl

theorem node11997_cond_eq
    (child11993 : Flapjack.WordAlloc.removeDeadStructural input11993 value6001 value1 value2 = (output11993, value6002, value1))
    (child11996 : Flapjack.WordAlloc.removeDeadStructural input11996 value6002 value1 value2 = (output11996, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11997 value6001 value1 value2 = (output11997, value5, value1) := by
  rw [input11997_def, output11997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11993]
  dsimp only
  rw [child11996]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11993_skip, output11996_skip]
  kernel_rfl

theorem node11998_cond_eq
    (child11992 : Flapjack.WordAlloc.removeDeadStructural input11992 value6000 value1 value2 = (output11992, value6001, value1))
    (child11997 : Flapjack.WordAlloc.removeDeadStructural input11997 value6001 value1 value2 = (output11997, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11998 value6000 value1 value2 = (output11998, value5, value1) := by
  rw [input11998_def, output11998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11992]
  dsimp only
  rw [child11997]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11992_skip, output11997_skip]
  kernel_rfl

theorem node11999_cond_eq
    (child11991 : Flapjack.WordAlloc.removeDeadStructural input11991 value5999 value1 value2 = (output11991, value6000, value1))
    (child11998 : Flapjack.WordAlloc.removeDeadStructural input11998 value6000 value1 value2 = (output11998, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input11999 value5999 value1 value2 = (output11999, value5, value1) := by
  rw [input11999_def, output11999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11991]
  dsimp only
  rw [child11998]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11991_skip, output11998_skip]
  kernel_rfl

theorem node12000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12000 value5 value1 value2 = (output12000, value6004, value1) := by
  rw [input12000_def, output12000_def]
  kernel_rfl

theorem node12001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12001 value6004 value1 value2 = (output12001, value6005, value1) := by
  rw [input12001_def, output12001_def]
  kernel_rfl

theorem node12002_cond_eq
    (child12000 : Flapjack.WordAlloc.removeDeadStructural input12000 value5 value1 value2 = (output12000, value6004, value1))
    (child12001 : Flapjack.WordAlloc.removeDeadStructural input12001 value6004 value1 value2 = (output12001, value6005, value1)) : Flapjack.WordAlloc.removeDeadStructural input12002 value5 value1 value2 = (output12002, value6005, value1) := by
  rw [input12002_def, output12002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12000]
  dsimp only
  rw [child12001]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12000_skip, output12001_skip]
  kernel_rfl

theorem node12003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12003 value6005 value1 value2 = (output12003, value6006, value1) := by
  rw [input12003_def, output12003_def]
  kernel_rfl

theorem node12004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12004 value6006 value1 value2 = (output12004, value6006, value1) := by
  rw [input12004_def, output12004_def]
  kernel_rfl

theorem node12005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12005 value6006 value1 value2 = (output12005, value6007, value1) := by
  rw [input12005_def, output12005_def]
  kernel_rfl

theorem node12006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12006 value6007 value1 value2 = (output12006, value6008, value1) := by
  rw [input12006_def, output12006_def]
  kernel_rfl

theorem node12007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12007 value6008 value1 value2 = (output12007, value6009, value1) := by
  rw [input12007_def, output12007_def]
  kernel_rfl

theorem node12008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12008 value6009 value1 value2 = (output12008, value6010, value1) := by
  rw [input12008_def, output12008_def]
  kernel_rfl

theorem node12009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12009 value6010 value1 value2 = (output12009, value5, value1) := by
  rw [input12009_def, output12009_def]
  kernel_rfl

theorem node12010_cond_eq
    (child12008 : Flapjack.WordAlloc.removeDeadStructural input12008 value6009 value1 value2 = (output12008, value6010, value1))
    (child12009 : Flapjack.WordAlloc.removeDeadStructural input12009 value6010 value1 value2 = (output12009, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12010 value6009 value1 value2 = (output12010, value5, value1) := by
  rw [input12010_def, output12010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12008]
  dsimp only
  rw [child12009]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12008_skip, output12009_skip]
  kernel_rfl

theorem node12011_cond_eq
    (child12007 : Flapjack.WordAlloc.removeDeadStructural input12007 value6008 value1 value2 = (output12007, value6009, value1))
    (child12010 : Flapjack.WordAlloc.removeDeadStructural input12010 value6009 value1 value2 = (output12010, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12011 value6008 value1 value2 = (output12011, value5, value1) := by
  rw [input12011_def, output12011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12007]
  dsimp only
  rw [child12010]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12007_skip, output12010_skip]
  kernel_rfl

theorem node12012_cond_eq
    (child12006 : Flapjack.WordAlloc.removeDeadStructural input12006 value6007 value1 value2 = (output12006, value6008, value1))
    (child12011 : Flapjack.WordAlloc.removeDeadStructural input12011 value6008 value1 value2 = (output12011, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12012 value6007 value1 value2 = (output12012, value5, value1) := by
  rw [input12012_def, output12012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12006]
  dsimp only
  rw [child12011]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12006_skip, output12011_skip]
  kernel_rfl

theorem node12013_cond_eq
    (child12005 : Flapjack.WordAlloc.removeDeadStructural input12005 value6006 value1 value2 = (output12005, value6007, value1))
    (child12012 : Flapjack.WordAlloc.removeDeadStructural input12012 value6007 value1 value2 = (output12012, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12013 value6006 value1 value2 = (output12013, value5, value1) := by
  rw [input12013_def, output12013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12005]
  dsimp only
  rw [child12012]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12005_skip, output12012_skip]
  kernel_rfl

theorem node12014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12014 value5 value1 value2 = (output12014, value6011, value1) := by
  rw [input12014_def, output12014_def]
  kernel_rfl

theorem node12015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12015 value6011 value1 value2 = (output12015, value6012, value1) := by
  rw [input12015_def, output12015_def]
  kernel_rfl

theorem node12016_cond_eq
    (child12014 : Flapjack.WordAlloc.removeDeadStructural input12014 value5 value1 value2 = (output12014, value6011, value1))
    (child12015 : Flapjack.WordAlloc.removeDeadStructural input12015 value6011 value1 value2 = (output12015, value6012, value1)) : Flapjack.WordAlloc.removeDeadStructural input12016 value5 value1 value2 = (output12016, value6012, value1) := by
  rw [input12016_def, output12016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12014]
  dsimp only
  rw [child12015]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12014_skip, output12015_skip]
  kernel_rfl

theorem node12017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12017 value6012 value1 value2 = (output12017, value6013, value1) := by
  rw [input12017_def, output12017_def]
  kernel_rfl

theorem node12018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12018 value6013 value1 value2 = (output12018, value6013, value1) := by
  rw [input12018_def, output12018_def]
  kernel_rfl

theorem node12019_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12019 value6013 value1 value2 = (output12019, value6014, value1) := by
  rw [input12019_def, output12019_def]
  kernel_rfl

theorem node12020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12020 value6014 value1 value2 = (output12020, value6015, value1) := by
  rw [input12020_def, output12020_def]
  kernel_rfl

theorem node12021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12021 value6015 value1 value2 = (output12021, value6016, value1) := by
  rw [input12021_def, output12021_def]
  kernel_rfl

theorem node12022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12022 value6016 value1 value2 = (output12022, value6017, value1) := by
  rw [input12022_def, output12022_def]
  kernel_rfl

theorem node12023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12023 value6017 value1 value2 = (output12023, value5, value1) := by
  rw [input12023_def, output12023_def]
  kernel_rfl

theorem node12024_cond_eq
    (child12022 : Flapjack.WordAlloc.removeDeadStructural input12022 value6016 value1 value2 = (output12022, value6017, value1))
    (child12023 : Flapjack.WordAlloc.removeDeadStructural input12023 value6017 value1 value2 = (output12023, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12024 value6016 value1 value2 = (output12024, value5, value1) := by
  rw [input12024_def, output12024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12022]
  dsimp only
  rw [child12023]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12022_skip, output12023_skip]
  kernel_rfl

theorem node12025_cond_eq
    (child12021 : Flapjack.WordAlloc.removeDeadStructural input12021 value6015 value1 value2 = (output12021, value6016, value1))
    (child12024 : Flapjack.WordAlloc.removeDeadStructural input12024 value6016 value1 value2 = (output12024, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12025 value6015 value1 value2 = (output12025, value5, value1) := by
  rw [input12025_def, output12025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12021]
  dsimp only
  rw [child12024]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12021_skip, output12024_skip]
  kernel_rfl

theorem node12026_cond_eq
    (child12020 : Flapjack.WordAlloc.removeDeadStructural input12020 value6014 value1 value2 = (output12020, value6015, value1))
    (child12025 : Flapjack.WordAlloc.removeDeadStructural input12025 value6015 value1 value2 = (output12025, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12026 value6014 value1 value2 = (output12026, value5, value1) := by
  rw [input12026_def, output12026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12020]
  dsimp only
  rw [child12025]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12020_skip, output12025_skip]
  kernel_rfl

theorem node12027_cond_eq
    (child12019 : Flapjack.WordAlloc.removeDeadStructural input12019 value6013 value1 value2 = (output12019, value6014, value1))
    (child12026 : Flapjack.WordAlloc.removeDeadStructural input12026 value6014 value1 value2 = (output12026, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12027 value6013 value1 value2 = (output12027, value5, value1) := by
  rw [input12027_def, output12027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12019]
  dsimp only
  rw [child12026]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12019_skip, output12026_skip]
  kernel_rfl

theorem node12028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12028 value5 value1 value2 = (output12028, value6018, value1) := by
  rw [input12028_def, output12028_def]
  kernel_rfl

theorem node12029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12029 value6018 value1 value2 = (output12029, value6019, value1) := by
  rw [input12029_def, output12029_def]
  kernel_rfl

theorem node12030_cond_eq
    (child12028 : Flapjack.WordAlloc.removeDeadStructural input12028 value5 value1 value2 = (output12028, value6018, value1))
    (child12029 : Flapjack.WordAlloc.removeDeadStructural input12029 value6018 value1 value2 = (output12029, value6019, value1)) : Flapjack.WordAlloc.removeDeadStructural input12030 value5 value1 value2 = (output12030, value6019, value1) := by
  rw [input12030_def, output12030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12028]
  dsimp only
  rw [child12029]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12028_skip, output12029_skip]
  kernel_rfl

theorem node12031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12031 value6019 value1 value2 = (output12031, value6020, value1) := by
  rw [input12031_def, output12031_def]
  kernel_rfl

#print axioms node12031_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
