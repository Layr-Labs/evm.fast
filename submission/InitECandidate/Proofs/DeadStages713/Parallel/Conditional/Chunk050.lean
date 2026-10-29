import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk050
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node12800_cond_eq
    (child12798 : Flapjack.WordAlloc.removeDeadStructural input12798 value5 value1 value2 = (output12798, value6403, value1))
    (child12799 : Flapjack.WordAlloc.removeDeadStructural input12799 value6403 value1 value2 = (output12799, value6404, value1)) : Flapjack.WordAlloc.removeDeadStructural input12800 value5 value1 value2 = (output12800, value6404, value1) := by
  rw [input12800_def, output12800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12798]
  dsimp only
  rw [child12799]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12798_skip, output12799_skip]
  kernel_rfl

theorem node12801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12801 value6404 value1 value2 = (output12801, value6405, value1) := by
  rw [input12801_def, output12801_def]
  kernel_rfl

theorem node12802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12802 value6405 value1 value2 = (output12802, value6405, value1) := by
  rw [input12802_def, output12802_def]
  kernel_rfl

theorem node12803_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12803 value6405 value1 value2 = (output12803, value6406, value1) := by
  rw [input12803_def, output12803_def]
  kernel_rfl

theorem node12804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12804 value6406 value1 value2 = (output12804, value6407, value1) := by
  rw [input12804_def, output12804_def]
  kernel_rfl

theorem node12805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12805 value6407 value1 value2 = (output12805, value6408, value1) := by
  rw [input12805_def, output12805_def]
  kernel_rfl

theorem node12806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12806 value6408 value1 value2 = (output12806, value6409, value1) := by
  rw [input12806_def, output12806_def]
  kernel_rfl

theorem node12807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12807 value6409 value1 value2 = (output12807, value5, value1) := by
  rw [input12807_def, output12807_def]
  kernel_rfl

theorem node12808_cond_eq
    (child12806 : Flapjack.WordAlloc.removeDeadStructural input12806 value6408 value1 value2 = (output12806, value6409, value1))
    (child12807 : Flapjack.WordAlloc.removeDeadStructural input12807 value6409 value1 value2 = (output12807, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12808 value6408 value1 value2 = (output12808, value5, value1) := by
  rw [input12808_def, output12808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12806]
  dsimp only
  rw [child12807]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12806_skip, output12807_skip]
  kernel_rfl

theorem node12809_cond_eq
    (child12805 : Flapjack.WordAlloc.removeDeadStructural input12805 value6407 value1 value2 = (output12805, value6408, value1))
    (child12808 : Flapjack.WordAlloc.removeDeadStructural input12808 value6408 value1 value2 = (output12808, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12809 value6407 value1 value2 = (output12809, value5, value1) := by
  rw [input12809_def, output12809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12805]
  dsimp only
  rw [child12808]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12805_skip, output12808_skip]
  kernel_rfl

theorem node12810_cond_eq
    (child12804 : Flapjack.WordAlloc.removeDeadStructural input12804 value6406 value1 value2 = (output12804, value6407, value1))
    (child12809 : Flapjack.WordAlloc.removeDeadStructural input12809 value6407 value1 value2 = (output12809, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12810 value6406 value1 value2 = (output12810, value5, value1) := by
  rw [input12810_def, output12810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12804]
  dsimp only
  rw [child12809]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12804_skip, output12809_skip]
  kernel_rfl

theorem node12811_cond_eq
    (child12803 : Flapjack.WordAlloc.removeDeadStructural input12803 value6405 value1 value2 = (output12803, value6406, value1))
    (child12810 : Flapjack.WordAlloc.removeDeadStructural input12810 value6406 value1 value2 = (output12810, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12811 value6405 value1 value2 = (output12811, value5, value1) := by
  rw [input12811_def, output12811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12803]
  dsimp only
  rw [child12810]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12803_skip, output12810_skip]
  kernel_rfl

theorem node12812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12812 value5 value1 value2 = (output12812, value6410, value1) := by
  rw [input12812_def, output12812_def]
  kernel_rfl

theorem node12813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12813 value6410 value1 value2 = (output12813, value6411, value1) := by
  rw [input12813_def, output12813_def]
  kernel_rfl

theorem node12814_cond_eq
    (child12812 : Flapjack.WordAlloc.removeDeadStructural input12812 value5 value1 value2 = (output12812, value6410, value1))
    (child12813 : Flapjack.WordAlloc.removeDeadStructural input12813 value6410 value1 value2 = (output12813, value6411, value1)) : Flapjack.WordAlloc.removeDeadStructural input12814 value5 value1 value2 = (output12814, value6411, value1) := by
  rw [input12814_def, output12814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12812]
  dsimp only
  rw [child12813]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12812_skip, output12813_skip]
  kernel_rfl

theorem node12815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12815 value6411 value1 value2 = (output12815, value6412, value1) := by
  rw [input12815_def, output12815_def]
  kernel_rfl

theorem node12816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12816 value6412 value1 value2 = (output12816, value6412, value1) := by
  rw [input12816_def, output12816_def]
  kernel_rfl

theorem node12817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12817 value6412 value1 value2 = (output12817, value6413, value1) := by
  rw [input12817_def, output12817_def]
  kernel_rfl

theorem node12818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12818 value6413 value1 value2 = (output12818, value6414, value1) := by
  rw [input12818_def, output12818_def]
  kernel_rfl

theorem node12819_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12819 value6414 value1 value2 = (output12819, value6415, value1) := by
  rw [input12819_def, output12819_def]
  kernel_rfl

theorem node12820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12820 value6415 value1 value2 = (output12820, value6416, value1) := by
  rw [input12820_def, output12820_def]
  kernel_rfl

theorem node12821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12821 value6416 value1 value2 = (output12821, value5, value1) := by
  rw [input12821_def, output12821_def]
  kernel_rfl

theorem node12822_cond_eq
    (child12820 : Flapjack.WordAlloc.removeDeadStructural input12820 value6415 value1 value2 = (output12820, value6416, value1))
    (child12821 : Flapjack.WordAlloc.removeDeadStructural input12821 value6416 value1 value2 = (output12821, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12822 value6415 value1 value2 = (output12822, value5, value1) := by
  rw [input12822_def, output12822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12820]
  dsimp only
  rw [child12821]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12820_skip, output12821_skip]
  kernel_rfl

theorem node12823_cond_eq
    (child12819 : Flapjack.WordAlloc.removeDeadStructural input12819 value6414 value1 value2 = (output12819, value6415, value1))
    (child12822 : Flapjack.WordAlloc.removeDeadStructural input12822 value6415 value1 value2 = (output12822, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12823 value6414 value1 value2 = (output12823, value5, value1) := by
  rw [input12823_def, output12823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12819]
  dsimp only
  rw [child12822]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12819_skip, output12822_skip]
  kernel_rfl

theorem node12824_cond_eq
    (child12818 : Flapjack.WordAlloc.removeDeadStructural input12818 value6413 value1 value2 = (output12818, value6414, value1))
    (child12823 : Flapjack.WordAlloc.removeDeadStructural input12823 value6414 value1 value2 = (output12823, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12824 value6413 value1 value2 = (output12824, value5, value1) := by
  rw [input12824_def, output12824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12818]
  dsimp only
  rw [child12823]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12818_skip, output12823_skip]
  kernel_rfl

theorem node12825_cond_eq
    (child12817 : Flapjack.WordAlloc.removeDeadStructural input12817 value6412 value1 value2 = (output12817, value6413, value1))
    (child12824 : Flapjack.WordAlloc.removeDeadStructural input12824 value6413 value1 value2 = (output12824, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12825 value6412 value1 value2 = (output12825, value5, value1) := by
  rw [input12825_def, output12825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12817]
  dsimp only
  rw [child12824]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12817_skip, output12824_skip]
  kernel_rfl

theorem node12826_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12826 value5 value1 value2 = (output12826, value6417, value1) := by
  rw [input12826_def, output12826_def]
  kernel_rfl

theorem node12827_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12827 value6417 value1 value2 = (output12827, value6418, value1) := by
  rw [input12827_def, output12827_def]
  kernel_rfl

theorem node12828_cond_eq
    (child12826 : Flapjack.WordAlloc.removeDeadStructural input12826 value5 value1 value2 = (output12826, value6417, value1))
    (child12827 : Flapjack.WordAlloc.removeDeadStructural input12827 value6417 value1 value2 = (output12827, value6418, value1)) : Flapjack.WordAlloc.removeDeadStructural input12828 value5 value1 value2 = (output12828, value6418, value1) := by
  rw [input12828_def, output12828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12826]
  dsimp only
  rw [child12827]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12826_skip, output12827_skip]
  kernel_rfl

theorem node12829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12829 value6418 value1 value2 = (output12829, value6419, value1) := by
  rw [input12829_def, output12829_def]
  kernel_rfl

theorem node12830_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12830 value6419 value1 value2 = (output12830, value6419, value1) := by
  rw [input12830_def, output12830_def]
  kernel_rfl

theorem node12831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12831 value6419 value1 value2 = (output12831, value6420, value1) := by
  rw [input12831_def, output12831_def]
  kernel_rfl

theorem node12832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12832 value6420 value1 value2 = (output12832, value6421, value1) := by
  rw [input12832_def, output12832_def]
  kernel_rfl

theorem node12833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12833 value6421 value1 value2 = (output12833, value6422, value1) := by
  rw [input12833_def, output12833_def]
  kernel_rfl

theorem node12834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12834 value6422 value1 value2 = (output12834, value6423, value1) := by
  rw [input12834_def, output12834_def]
  kernel_rfl

theorem node12835_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12835 value6423 value1 value2 = (output12835, value5, value1) := by
  rw [input12835_def, output12835_def]
  kernel_rfl

theorem node12836_cond_eq
    (child12834 : Flapjack.WordAlloc.removeDeadStructural input12834 value6422 value1 value2 = (output12834, value6423, value1))
    (child12835 : Flapjack.WordAlloc.removeDeadStructural input12835 value6423 value1 value2 = (output12835, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12836 value6422 value1 value2 = (output12836, value5, value1) := by
  rw [input12836_def, output12836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12834]
  dsimp only
  rw [child12835]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12834_skip, output12835_skip]
  kernel_rfl

theorem node12837_cond_eq
    (child12833 : Flapjack.WordAlloc.removeDeadStructural input12833 value6421 value1 value2 = (output12833, value6422, value1))
    (child12836 : Flapjack.WordAlloc.removeDeadStructural input12836 value6422 value1 value2 = (output12836, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12837 value6421 value1 value2 = (output12837, value5, value1) := by
  rw [input12837_def, output12837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12833]
  dsimp only
  rw [child12836]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12833_skip, output12836_skip]
  kernel_rfl

theorem node12838_cond_eq
    (child12832 : Flapjack.WordAlloc.removeDeadStructural input12832 value6420 value1 value2 = (output12832, value6421, value1))
    (child12837 : Flapjack.WordAlloc.removeDeadStructural input12837 value6421 value1 value2 = (output12837, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12838 value6420 value1 value2 = (output12838, value5, value1) := by
  rw [input12838_def, output12838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12832]
  dsimp only
  rw [child12837]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12832_skip, output12837_skip]
  kernel_rfl

theorem node12839_cond_eq
    (child12831 : Flapjack.WordAlloc.removeDeadStructural input12831 value6419 value1 value2 = (output12831, value6420, value1))
    (child12838 : Flapjack.WordAlloc.removeDeadStructural input12838 value6420 value1 value2 = (output12838, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12839 value6419 value1 value2 = (output12839, value5, value1) := by
  rw [input12839_def, output12839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12831]
  dsimp only
  rw [child12838]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12831_skip, output12838_skip]
  kernel_rfl

theorem node12840_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12840 value5 value1 value2 = (output12840, value6424, value1) := by
  rw [input12840_def, output12840_def]
  kernel_rfl

theorem node12841_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12841 value6424 value1 value2 = (output12841, value6425, value1) := by
  rw [input12841_def, output12841_def]
  kernel_rfl

theorem node12842_cond_eq
    (child12840 : Flapjack.WordAlloc.removeDeadStructural input12840 value5 value1 value2 = (output12840, value6424, value1))
    (child12841 : Flapjack.WordAlloc.removeDeadStructural input12841 value6424 value1 value2 = (output12841, value6425, value1)) : Flapjack.WordAlloc.removeDeadStructural input12842 value5 value1 value2 = (output12842, value6425, value1) := by
  rw [input12842_def, output12842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12840]
  dsimp only
  rw [child12841]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12840_skip, output12841_skip]
  kernel_rfl

theorem node12843_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12843 value6425 value1 value2 = (output12843, value6426, value1) := by
  rw [input12843_def, output12843_def]
  kernel_rfl

theorem node12844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12844 value6426 value1 value2 = (output12844, value6426, value1) := by
  rw [input12844_def, output12844_def]
  kernel_rfl

theorem node12845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12845 value6426 value1 value2 = (output12845, value6427, value1) := by
  rw [input12845_def, output12845_def]
  kernel_rfl

theorem node12846_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12846 value6427 value1 value2 = (output12846, value6428, value1) := by
  rw [input12846_def, output12846_def]
  kernel_rfl

theorem node12847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12847 value6428 value1 value2 = (output12847, value6429, value1) := by
  rw [input12847_def, output12847_def]
  kernel_rfl

theorem node12848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12848 value6429 value1 value2 = (output12848, value6430, value1) := by
  rw [input12848_def, output12848_def]
  kernel_rfl

theorem node12849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12849 value6430 value1 value2 = (output12849, value5, value1) := by
  rw [input12849_def, output12849_def]
  kernel_rfl

theorem node12850_cond_eq
    (child12848 : Flapjack.WordAlloc.removeDeadStructural input12848 value6429 value1 value2 = (output12848, value6430, value1))
    (child12849 : Flapjack.WordAlloc.removeDeadStructural input12849 value6430 value1 value2 = (output12849, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12850 value6429 value1 value2 = (output12850, value5, value1) := by
  rw [input12850_def, output12850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12848]
  dsimp only
  rw [child12849]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12848_skip, output12849_skip]
  kernel_rfl

theorem node12851_cond_eq
    (child12847 : Flapjack.WordAlloc.removeDeadStructural input12847 value6428 value1 value2 = (output12847, value6429, value1))
    (child12850 : Flapjack.WordAlloc.removeDeadStructural input12850 value6429 value1 value2 = (output12850, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12851 value6428 value1 value2 = (output12851, value5, value1) := by
  rw [input12851_def, output12851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12847]
  dsimp only
  rw [child12850]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12847_skip, output12850_skip]
  kernel_rfl

theorem node12852_cond_eq
    (child12846 : Flapjack.WordAlloc.removeDeadStructural input12846 value6427 value1 value2 = (output12846, value6428, value1))
    (child12851 : Flapjack.WordAlloc.removeDeadStructural input12851 value6428 value1 value2 = (output12851, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12852 value6427 value1 value2 = (output12852, value5, value1) := by
  rw [input12852_def, output12852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12846]
  dsimp only
  rw [child12851]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12846_skip, output12851_skip]
  kernel_rfl

theorem node12853_cond_eq
    (child12845 : Flapjack.WordAlloc.removeDeadStructural input12845 value6426 value1 value2 = (output12845, value6427, value1))
    (child12852 : Flapjack.WordAlloc.removeDeadStructural input12852 value6427 value1 value2 = (output12852, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12853 value6426 value1 value2 = (output12853, value5, value1) := by
  rw [input12853_def, output12853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12845]
  dsimp only
  rw [child12852]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12845_skip, output12852_skip]
  kernel_rfl

theorem node12854_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12854 value5 value1 value2 = (output12854, value6431, value1) := by
  rw [input12854_def, output12854_def]
  kernel_rfl

theorem node12855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12855 value6431 value1 value2 = (output12855, value6432, value1) := by
  rw [input12855_def, output12855_def]
  kernel_rfl

theorem node12856_cond_eq
    (child12854 : Flapjack.WordAlloc.removeDeadStructural input12854 value5 value1 value2 = (output12854, value6431, value1))
    (child12855 : Flapjack.WordAlloc.removeDeadStructural input12855 value6431 value1 value2 = (output12855, value6432, value1)) : Flapjack.WordAlloc.removeDeadStructural input12856 value5 value1 value2 = (output12856, value6432, value1) := by
  rw [input12856_def, output12856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12854]
  dsimp only
  rw [child12855]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12854_skip, output12855_skip]
  kernel_rfl

theorem node12857_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12857 value6432 value1 value2 = (output12857, value6433, value1) := by
  rw [input12857_def, output12857_def]
  kernel_rfl

theorem node12858_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12858 value6433 value1 value2 = (output12858, value6433, value1) := by
  rw [input12858_def, output12858_def]
  kernel_rfl

theorem node12859_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12859 value6433 value1 value2 = (output12859, value6434, value1) := by
  rw [input12859_def, output12859_def]
  kernel_rfl

theorem node12860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12860 value6434 value1 value2 = (output12860, value6435, value1) := by
  rw [input12860_def, output12860_def]
  kernel_rfl

theorem node12861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12861 value6435 value1 value2 = (output12861, value6436, value1) := by
  rw [input12861_def, output12861_def]
  kernel_rfl

theorem node12862_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12862 value6436 value1 value2 = (output12862, value6437, value1) := by
  rw [input12862_def, output12862_def]
  kernel_rfl

theorem node12863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12863 value6437 value1 value2 = (output12863, value5, value1) := by
  rw [input12863_def, output12863_def]
  kernel_rfl

theorem node12864_cond_eq
    (child12862 : Flapjack.WordAlloc.removeDeadStructural input12862 value6436 value1 value2 = (output12862, value6437, value1))
    (child12863 : Flapjack.WordAlloc.removeDeadStructural input12863 value6437 value1 value2 = (output12863, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12864 value6436 value1 value2 = (output12864, value5, value1) := by
  rw [input12864_def, output12864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12862]
  dsimp only
  rw [child12863]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12862_skip, output12863_skip]
  kernel_rfl

theorem node12865_cond_eq
    (child12861 : Flapjack.WordAlloc.removeDeadStructural input12861 value6435 value1 value2 = (output12861, value6436, value1))
    (child12864 : Flapjack.WordAlloc.removeDeadStructural input12864 value6436 value1 value2 = (output12864, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12865 value6435 value1 value2 = (output12865, value5, value1) := by
  rw [input12865_def, output12865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12861]
  dsimp only
  rw [child12864]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12861_skip, output12864_skip]
  kernel_rfl

theorem node12866_cond_eq
    (child12860 : Flapjack.WordAlloc.removeDeadStructural input12860 value6434 value1 value2 = (output12860, value6435, value1))
    (child12865 : Flapjack.WordAlloc.removeDeadStructural input12865 value6435 value1 value2 = (output12865, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12866 value6434 value1 value2 = (output12866, value5, value1) := by
  rw [input12866_def, output12866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12860]
  dsimp only
  rw [child12865]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12860_skip, output12865_skip]
  kernel_rfl

theorem node12867_cond_eq
    (child12859 : Flapjack.WordAlloc.removeDeadStructural input12859 value6433 value1 value2 = (output12859, value6434, value1))
    (child12866 : Flapjack.WordAlloc.removeDeadStructural input12866 value6434 value1 value2 = (output12866, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12867 value6433 value1 value2 = (output12867, value5, value1) := by
  rw [input12867_def, output12867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12859]
  dsimp only
  rw [child12866]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12859_skip, output12866_skip]
  kernel_rfl

theorem node12868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12868 value5 value1 value2 = (output12868, value6438, value1) := by
  rw [input12868_def, output12868_def]
  kernel_rfl

theorem node12869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12869 value6438 value1 value2 = (output12869, value6439, value1) := by
  rw [input12869_def, output12869_def]
  kernel_rfl

theorem node12870_cond_eq
    (child12868 : Flapjack.WordAlloc.removeDeadStructural input12868 value5 value1 value2 = (output12868, value6438, value1))
    (child12869 : Flapjack.WordAlloc.removeDeadStructural input12869 value6438 value1 value2 = (output12869, value6439, value1)) : Flapjack.WordAlloc.removeDeadStructural input12870 value5 value1 value2 = (output12870, value6439, value1) := by
  rw [input12870_def, output12870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12868]
  dsimp only
  rw [child12869]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12868_skip, output12869_skip]
  kernel_rfl

theorem node12871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12871 value6439 value1 value2 = (output12871, value6440, value1) := by
  rw [input12871_def, output12871_def]
  kernel_rfl

theorem node12872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12872 value6440 value1 value2 = (output12872, value6440, value1) := by
  rw [input12872_def, output12872_def]
  kernel_rfl

theorem node12873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12873 value6440 value1 value2 = (output12873, value6441, value1) := by
  rw [input12873_def, output12873_def]
  kernel_rfl

theorem node12874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12874 value6441 value1 value2 = (output12874, value6442, value1) := by
  rw [input12874_def, output12874_def]
  kernel_rfl

theorem node12875_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12875 value6442 value1 value2 = (output12875, value6443, value1) := by
  rw [input12875_def, output12875_def]
  kernel_rfl

theorem node12876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12876 value6443 value1 value2 = (output12876, value6444, value1) := by
  rw [input12876_def, output12876_def]
  kernel_rfl

theorem node12877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12877 value6444 value1 value2 = (output12877, value5, value1) := by
  rw [input12877_def, output12877_def]
  kernel_rfl

theorem node12878_cond_eq
    (child12876 : Flapjack.WordAlloc.removeDeadStructural input12876 value6443 value1 value2 = (output12876, value6444, value1))
    (child12877 : Flapjack.WordAlloc.removeDeadStructural input12877 value6444 value1 value2 = (output12877, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12878 value6443 value1 value2 = (output12878, value5, value1) := by
  rw [input12878_def, output12878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12876]
  dsimp only
  rw [child12877]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12876_skip, output12877_skip]
  kernel_rfl

theorem node12879_cond_eq
    (child12875 : Flapjack.WordAlloc.removeDeadStructural input12875 value6442 value1 value2 = (output12875, value6443, value1))
    (child12878 : Flapjack.WordAlloc.removeDeadStructural input12878 value6443 value1 value2 = (output12878, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12879 value6442 value1 value2 = (output12879, value5, value1) := by
  rw [input12879_def, output12879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12875]
  dsimp only
  rw [child12878]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12875_skip, output12878_skip]
  kernel_rfl

theorem node12880_cond_eq
    (child12874 : Flapjack.WordAlloc.removeDeadStructural input12874 value6441 value1 value2 = (output12874, value6442, value1))
    (child12879 : Flapjack.WordAlloc.removeDeadStructural input12879 value6442 value1 value2 = (output12879, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12880 value6441 value1 value2 = (output12880, value5, value1) := by
  rw [input12880_def, output12880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12874]
  dsimp only
  rw [child12879]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12874_skip, output12879_skip]
  kernel_rfl

theorem node12881_cond_eq
    (child12873 : Flapjack.WordAlloc.removeDeadStructural input12873 value6440 value1 value2 = (output12873, value6441, value1))
    (child12880 : Flapjack.WordAlloc.removeDeadStructural input12880 value6441 value1 value2 = (output12880, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12881 value6440 value1 value2 = (output12881, value5, value1) := by
  rw [input12881_def, output12881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12873]
  dsimp only
  rw [child12880]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12873_skip, output12880_skip]
  kernel_rfl

theorem node12882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12882 value5 value1 value2 = (output12882, value6445, value1) := by
  rw [input12882_def, output12882_def]
  kernel_rfl

theorem node12883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12883 value6445 value1 value2 = (output12883, value6446, value1) := by
  rw [input12883_def, output12883_def]
  kernel_rfl

theorem node12884_cond_eq
    (child12882 : Flapjack.WordAlloc.removeDeadStructural input12882 value5 value1 value2 = (output12882, value6445, value1))
    (child12883 : Flapjack.WordAlloc.removeDeadStructural input12883 value6445 value1 value2 = (output12883, value6446, value1)) : Flapjack.WordAlloc.removeDeadStructural input12884 value5 value1 value2 = (output12884, value6446, value1) := by
  rw [input12884_def, output12884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12882]
  dsimp only
  rw [child12883]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12882_skip, output12883_skip]
  kernel_rfl

theorem node12885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12885 value6446 value1 value2 = (output12885, value6447, value1) := by
  rw [input12885_def, output12885_def]
  kernel_rfl

theorem node12886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12886 value6447 value1 value2 = (output12886, value6447, value1) := by
  rw [input12886_def, output12886_def]
  kernel_rfl

theorem node12887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12887 value6447 value1 value2 = (output12887, value6448, value1) := by
  rw [input12887_def, output12887_def]
  kernel_rfl

theorem node12888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12888 value6448 value1 value2 = (output12888, value6449, value1) := by
  rw [input12888_def, output12888_def]
  kernel_rfl

theorem node12889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12889 value6449 value1 value2 = (output12889, value6450, value1) := by
  rw [input12889_def, output12889_def]
  kernel_rfl

theorem node12890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12890 value6450 value1 value2 = (output12890, value6451, value1) := by
  rw [input12890_def, output12890_def]
  kernel_rfl

theorem node12891_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12891 value6451 value1 value2 = (output12891, value5, value1) := by
  rw [input12891_def, output12891_def]
  kernel_rfl

theorem node12892_cond_eq
    (child12890 : Flapjack.WordAlloc.removeDeadStructural input12890 value6450 value1 value2 = (output12890, value6451, value1))
    (child12891 : Flapjack.WordAlloc.removeDeadStructural input12891 value6451 value1 value2 = (output12891, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12892 value6450 value1 value2 = (output12892, value5, value1) := by
  rw [input12892_def, output12892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12890]
  dsimp only
  rw [child12891]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12890_skip, output12891_skip]
  kernel_rfl

theorem node12893_cond_eq
    (child12889 : Flapjack.WordAlloc.removeDeadStructural input12889 value6449 value1 value2 = (output12889, value6450, value1))
    (child12892 : Flapjack.WordAlloc.removeDeadStructural input12892 value6450 value1 value2 = (output12892, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12893 value6449 value1 value2 = (output12893, value5, value1) := by
  rw [input12893_def, output12893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12889]
  dsimp only
  rw [child12892]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12889_skip, output12892_skip]
  kernel_rfl

theorem node12894_cond_eq
    (child12888 : Flapjack.WordAlloc.removeDeadStructural input12888 value6448 value1 value2 = (output12888, value6449, value1))
    (child12893 : Flapjack.WordAlloc.removeDeadStructural input12893 value6449 value1 value2 = (output12893, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12894 value6448 value1 value2 = (output12894, value5, value1) := by
  rw [input12894_def, output12894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12888]
  dsimp only
  rw [child12893]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12888_skip, output12893_skip]
  kernel_rfl

theorem node12895_cond_eq
    (child12887 : Flapjack.WordAlloc.removeDeadStructural input12887 value6447 value1 value2 = (output12887, value6448, value1))
    (child12894 : Flapjack.WordAlloc.removeDeadStructural input12894 value6448 value1 value2 = (output12894, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12895 value6447 value1 value2 = (output12895, value5, value1) := by
  rw [input12895_def, output12895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12887]
  dsimp only
  rw [child12894]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12887_skip, output12894_skip]
  kernel_rfl

theorem node12896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12896 value5 value1 value2 = (output12896, value6452, value1) := by
  rw [input12896_def, output12896_def]
  kernel_rfl

theorem node12897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12897 value6452 value1 value2 = (output12897, value6453, value1) := by
  rw [input12897_def, output12897_def]
  kernel_rfl

theorem node12898_cond_eq
    (child12896 : Flapjack.WordAlloc.removeDeadStructural input12896 value5 value1 value2 = (output12896, value6452, value1))
    (child12897 : Flapjack.WordAlloc.removeDeadStructural input12897 value6452 value1 value2 = (output12897, value6453, value1)) : Flapjack.WordAlloc.removeDeadStructural input12898 value5 value1 value2 = (output12898, value6453, value1) := by
  rw [input12898_def, output12898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12896]
  dsimp only
  rw [child12897]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12896_skip, output12897_skip]
  kernel_rfl

theorem node12899_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12899 value6453 value1 value2 = (output12899, value6454, value1) := by
  rw [input12899_def, output12899_def]
  kernel_rfl

theorem node12900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12900 value6454 value1 value2 = (output12900, value6454, value1) := by
  rw [input12900_def, output12900_def]
  kernel_rfl

theorem node12901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12901 value6454 value1 value2 = (output12901, value6455, value1) := by
  rw [input12901_def, output12901_def]
  kernel_rfl

theorem node12902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12902 value6455 value1 value2 = (output12902, value6456, value1) := by
  rw [input12902_def, output12902_def]
  kernel_rfl

theorem node12903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12903 value6456 value1 value2 = (output12903, value6457, value1) := by
  rw [input12903_def, output12903_def]
  kernel_rfl

theorem node12904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12904 value6457 value1 value2 = (output12904, value6458, value1) := by
  rw [input12904_def, output12904_def]
  kernel_rfl

theorem node12905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12905 value6458 value1 value2 = (output12905, value5, value1) := by
  rw [input12905_def, output12905_def]
  kernel_rfl

theorem node12906_cond_eq
    (child12904 : Flapjack.WordAlloc.removeDeadStructural input12904 value6457 value1 value2 = (output12904, value6458, value1))
    (child12905 : Flapjack.WordAlloc.removeDeadStructural input12905 value6458 value1 value2 = (output12905, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12906 value6457 value1 value2 = (output12906, value5, value1) := by
  rw [input12906_def, output12906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12904]
  dsimp only
  rw [child12905]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12904_skip, output12905_skip]
  kernel_rfl

theorem node12907_cond_eq
    (child12903 : Flapjack.WordAlloc.removeDeadStructural input12903 value6456 value1 value2 = (output12903, value6457, value1))
    (child12906 : Flapjack.WordAlloc.removeDeadStructural input12906 value6457 value1 value2 = (output12906, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12907 value6456 value1 value2 = (output12907, value5, value1) := by
  rw [input12907_def, output12907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12903]
  dsimp only
  rw [child12906]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12903_skip, output12906_skip]
  kernel_rfl

theorem node12908_cond_eq
    (child12902 : Flapjack.WordAlloc.removeDeadStructural input12902 value6455 value1 value2 = (output12902, value6456, value1))
    (child12907 : Flapjack.WordAlloc.removeDeadStructural input12907 value6456 value1 value2 = (output12907, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12908 value6455 value1 value2 = (output12908, value5, value1) := by
  rw [input12908_def, output12908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12902]
  dsimp only
  rw [child12907]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12902_skip, output12907_skip]
  kernel_rfl

theorem node12909_cond_eq
    (child12901 : Flapjack.WordAlloc.removeDeadStructural input12901 value6454 value1 value2 = (output12901, value6455, value1))
    (child12908 : Flapjack.WordAlloc.removeDeadStructural input12908 value6455 value1 value2 = (output12908, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12909 value6454 value1 value2 = (output12909, value5, value1) := by
  rw [input12909_def, output12909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12901]
  dsimp only
  rw [child12908]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12901_skip, output12908_skip]
  kernel_rfl

theorem node12910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12910 value5 value1 value2 = (output12910, value6459, value1) := by
  rw [input12910_def, output12910_def]
  kernel_rfl

theorem node12911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12911 value6459 value1 value2 = (output12911, value6460, value1) := by
  rw [input12911_def, output12911_def]
  kernel_rfl

theorem node12912_cond_eq
    (child12910 : Flapjack.WordAlloc.removeDeadStructural input12910 value5 value1 value2 = (output12910, value6459, value1))
    (child12911 : Flapjack.WordAlloc.removeDeadStructural input12911 value6459 value1 value2 = (output12911, value6460, value1)) : Flapjack.WordAlloc.removeDeadStructural input12912 value5 value1 value2 = (output12912, value6460, value1) := by
  rw [input12912_def, output12912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12910]
  dsimp only
  rw [child12911]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12910_skip, output12911_skip]
  kernel_rfl

theorem node12913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12913 value6460 value1 value2 = (output12913, value6461, value1) := by
  rw [input12913_def, output12913_def]
  kernel_rfl

theorem node12914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12914 value6461 value1 value2 = (output12914, value6461, value1) := by
  rw [input12914_def, output12914_def]
  kernel_rfl

theorem node12915_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12915 value6461 value1 value2 = (output12915, value6462, value1) := by
  rw [input12915_def, output12915_def]
  kernel_rfl

theorem node12916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12916 value6462 value1 value2 = (output12916, value6463, value1) := by
  rw [input12916_def, output12916_def]
  kernel_rfl

theorem node12917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12917 value6463 value1 value2 = (output12917, value6464, value1) := by
  rw [input12917_def, output12917_def]
  kernel_rfl

theorem node12918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12918 value6464 value1 value2 = (output12918, value6465, value1) := by
  rw [input12918_def, output12918_def]
  kernel_rfl

theorem node12919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12919 value6465 value1 value2 = (output12919, value5, value1) := by
  rw [input12919_def, output12919_def]
  kernel_rfl

theorem node12920_cond_eq
    (child12918 : Flapjack.WordAlloc.removeDeadStructural input12918 value6464 value1 value2 = (output12918, value6465, value1))
    (child12919 : Flapjack.WordAlloc.removeDeadStructural input12919 value6465 value1 value2 = (output12919, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12920 value6464 value1 value2 = (output12920, value5, value1) := by
  rw [input12920_def, output12920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12918]
  dsimp only
  rw [child12919]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12918_skip, output12919_skip]
  kernel_rfl

theorem node12921_cond_eq
    (child12917 : Flapjack.WordAlloc.removeDeadStructural input12917 value6463 value1 value2 = (output12917, value6464, value1))
    (child12920 : Flapjack.WordAlloc.removeDeadStructural input12920 value6464 value1 value2 = (output12920, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12921 value6463 value1 value2 = (output12921, value5, value1) := by
  rw [input12921_def, output12921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12917]
  dsimp only
  rw [child12920]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12917_skip, output12920_skip]
  kernel_rfl

theorem node12922_cond_eq
    (child12916 : Flapjack.WordAlloc.removeDeadStructural input12916 value6462 value1 value2 = (output12916, value6463, value1))
    (child12921 : Flapjack.WordAlloc.removeDeadStructural input12921 value6463 value1 value2 = (output12921, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12922 value6462 value1 value2 = (output12922, value5, value1) := by
  rw [input12922_def, output12922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12916]
  dsimp only
  rw [child12921]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12916_skip, output12921_skip]
  kernel_rfl

theorem node12923_cond_eq
    (child12915 : Flapjack.WordAlloc.removeDeadStructural input12915 value6461 value1 value2 = (output12915, value6462, value1))
    (child12922 : Flapjack.WordAlloc.removeDeadStructural input12922 value6462 value1 value2 = (output12922, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12923 value6461 value1 value2 = (output12923, value5, value1) := by
  rw [input12923_def, output12923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12915]
  dsimp only
  rw [child12922]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12915_skip, output12922_skip]
  kernel_rfl

theorem node12924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12924 value5 value1 value2 = (output12924, value6466, value1) := by
  rw [input12924_def, output12924_def]
  kernel_rfl

theorem node12925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12925 value6466 value1 value2 = (output12925, value6467, value1) := by
  rw [input12925_def, output12925_def]
  kernel_rfl

theorem node12926_cond_eq
    (child12924 : Flapjack.WordAlloc.removeDeadStructural input12924 value5 value1 value2 = (output12924, value6466, value1))
    (child12925 : Flapjack.WordAlloc.removeDeadStructural input12925 value6466 value1 value2 = (output12925, value6467, value1)) : Flapjack.WordAlloc.removeDeadStructural input12926 value5 value1 value2 = (output12926, value6467, value1) := by
  rw [input12926_def, output12926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12924]
  dsimp only
  rw [child12925]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12924_skip, output12925_skip]
  kernel_rfl

theorem node12927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12927 value6467 value1 value2 = (output12927, value6468, value1) := by
  rw [input12927_def, output12927_def]
  kernel_rfl

theorem node12928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12928 value6468 value1 value2 = (output12928, value6468, value1) := by
  rw [input12928_def, output12928_def]
  kernel_rfl

theorem node12929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12929 value6468 value1 value2 = (output12929, value6469, value1) := by
  rw [input12929_def, output12929_def]
  kernel_rfl

theorem node12930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12930 value6469 value1 value2 = (output12930, value6470, value1) := by
  rw [input12930_def, output12930_def]
  kernel_rfl

theorem node12931_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12931 value6470 value1 value2 = (output12931, value6471, value1) := by
  rw [input12931_def, output12931_def]
  kernel_rfl

theorem node12932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12932 value6471 value1 value2 = (output12932, value6472, value1) := by
  rw [input12932_def, output12932_def]
  kernel_rfl

theorem node12933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12933 value6472 value1 value2 = (output12933, value5, value1) := by
  rw [input12933_def, output12933_def]
  kernel_rfl

theorem node12934_cond_eq
    (child12932 : Flapjack.WordAlloc.removeDeadStructural input12932 value6471 value1 value2 = (output12932, value6472, value1))
    (child12933 : Flapjack.WordAlloc.removeDeadStructural input12933 value6472 value1 value2 = (output12933, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12934 value6471 value1 value2 = (output12934, value5, value1) := by
  rw [input12934_def, output12934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12932]
  dsimp only
  rw [child12933]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12932_skip, output12933_skip]
  kernel_rfl

theorem node12935_cond_eq
    (child12931 : Flapjack.WordAlloc.removeDeadStructural input12931 value6470 value1 value2 = (output12931, value6471, value1))
    (child12934 : Flapjack.WordAlloc.removeDeadStructural input12934 value6471 value1 value2 = (output12934, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12935 value6470 value1 value2 = (output12935, value5, value1) := by
  rw [input12935_def, output12935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12931]
  dsimp only
  rw [child12934]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12931_skip, output12934_skip]
  kernel_rfl

theorem node12936_cond_eq
    (child12930 : Flapjack.WordAlloc.removeDeadStructural input12930 value6469 value1 value2 = (output12930, value6470, value1))
    (child12935 : Flapjack.WordAlloc.removeDeadStructural input12935 value6470 value1 value2 = (output12935, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12936 value6469 value1 value2 = (output12936, value5, value1) := by
  rw [input12936_def, output12936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12930]
  dsimp only
  rw [child12935]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12930_skip, output12935_skip]
  kernel_rfl

theorem node12937_cond_eq
    (child12929 : Flapjack.WordAlloc.removeDeadStructural input12929 value6468 value1 value2 = (output12929, value6469, value1))
    (child12936 : Flapjack.WordAlloc.removeDeadStructural input12936 value6469 value1 value2 = (output12936, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12937 value6468 value1 value2 = (output12937, value5, value1) := by
  rw [input12937_def, output12937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12929]
  dsimp only
  rw [child12936]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12929_skip, output12936_skip]
  kernel_rfl

theorem node12938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12938 value5 value1 value2 = (output12938, value6473, value1) := by
  rw [input12938_def, output12938_def]
  kernel_rfl

theorem node12939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12939 value6473 value1 value2 = (output12939, value6474, value1) := by
  rw [input12939_def, output12939_def]
  kernel_rfl

theorem node12940_cond_eq
    (child12938 : Flapjack.WordAlloc.removeDeadStructural input12938 value5 value1 value2 = (output12938, value6473, value1))
    (child12939 : Flapjack.WordAlloc.removeDeadStructural input12939 value6473 value1 value2 = (output12939, value6474, value1)) : Flapjack.WordAlloc.removeDeadStructural input12940 value5 value1 value2 = (output12940, value6474, value1) := by
  rw [input12940_def, output12940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12938]
  dsimp only
  rw [child12939]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12938_skip, output12939_skip]
  kernel_rfl

theorem node12941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12941 value6474 value1 value2 = (output12941, value6475, value1) := by
  rw [input12941_def, output12941_def]
  kernel_rfl

theorem node12942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12942 value6475 value1 value2 = (output12942, value6475, value1) := by
  rw [input12942_def, output12942_def]
  kernel_rfl

theorem node12943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12943 value6475 value1 value2 = (output12943, value6476, value1) := by
  rw [input12943_def, output12943_def]
  kernel_rfl

theorem node12944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12944 value6476 value1 value2 = (output12944, value6477, value1) := by
  rw [input12944_def, output12944_def]
  kernel_rfl

theorem node12945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12945 value6477 value1 value2 = (output12945, value6478, value1) := by
  rw [input12945_def, output12945_def]
  kernel_rfl

theorem node12946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12946 value6478 value1 value2 = (output12946, value6479, value1) := by
  rw [input12946_def, output12946_def]
  kernel_rfl

theorem node12947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12947 value6479 value1 value2 = (output12947, value5, value1) := by
  rw [input12947_def, output12947_def]
  kernel_rfl

theorem node12948_cond_eq
    (child12946 : Flapjack.WordAlloc.removeDeadStructural input12946 value6478 value1 value2 = (output12946, value6479, value1))
    (child12947 : Flapjack.WordAlloc.removeDeadStructural input12947 value6479 value1 value2 = (output12947, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12948 value6478 value1 value2 = (output12948, value5, value1) := by
  rw [input12948_def, output12948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12946]
  dsimp only
  rw [child12947]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12946_skip, output12947_skip]
  kernel_rfl

theorem node12949_cond_eq
    (child12945 : Flapjack.WordAlloc.removeDeadStructural input12945 value6477 value1 value2 = (output12945, value6478, value1))
    (child12948 : Flapjack.WordAlloc.removeDeadStructural input12948 value6478 value1 value2 = (output12948, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12949 value6477 value1 value2 = (output12949, value5, value1) := by
  rw [input12949_def, output12949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12945]
  dsimp only
  rw [child12948]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12945_skip, output12948_skip]
  kernel_rfl

theorem node12950_cond_eq
    (child12944 : Flapjack.WordAlloc.removeDeadStructural input12944 value6476 value1 value2 = (output12944, value6477, value1))
    (child12949 : Flapjack.WordAlloc.removeDeadStructural input12949 value6477 value1 value2 = (output12949, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12950 value6476 value1 value2 = (output12950, value5, value1) := by
  rw [input12950_def, output12950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12944]
  dsimp only
  rw [child12949]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12944_skip, output12949_skip]
  kernel_rfl

theorem node12951_cond_eq
    (child12943 : Flapjack.WordAlloc.removeDeadStructural input12943 value6475 value1 value2 = (output12943, value6476, value1))
    (child12950 : Flapjack.WordAlloc.removeDeadStructural input12950 value6476 value1 value2 = (output12950, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12951 value6475 value1 value2 = (output12951, value5, value1) := by
  rw [input12951_def, output12951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12943]
  dsimp only
  rw [child12950]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12943_skip, output12950_skip]
  kernel_rfl

theorem node12952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12952 value5 value1 value2 = (output12952, value6480, value1) := by
  rw [input12952_def, output12952_def]
  kernel_rfl

theorem node12953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12953 value6480 value1 value2 = (output12953, value6481, value1) := by
  rw [input12953_def, output12953_def]
  kernel_rfl

theorem node12954_cond_eq
    (child12952 : Flapjack.WordAlloc.removeDeadStructural input12952 value5 value1 value2 = (output12952, value6480, value1))
    (child12953 : Flapjack.WordAlloc.removeDeadStructural input12953 value6480 value1 value2 = (output12953, value6481, value1)) : Flapjack.WordAlloc.removeDeadStructural input12954 value5 value1 value2 = (output12954, value6481, value1) := by
  rw [input12954_def, output12954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12952]
  dsimp only
  rw [child12953]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12952_skip, output12953_skip]
  kernel_rfl

theorem node12955_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12955 value6481 value1 value2 = (output12955, value6482, value1) := by
  rw [input12955_def, output12955_def]
  kernel_rfl

theorem node12956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12956 value6482 value1 value2 = (output12956, value6482, value1) := by
  rw [input12956_def, output12956_def]
  kernel_rfl

theorem node12957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12957 value6482 value1 value2 = (output12957, value6483, value1) := by
  rw [input12957_def, output12957_def]
  kernel_rfl

theorem node12958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12958 value6483 value1 value2 = (output12958, value6484, value1) := by
  rw [input12958_def, output12958_def]
  kernel_rfl

theorem node12959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12959 value6484 value1 value2 = (output12959, value6485, value1) := by
  rw [input12959_def, output12959_def]
  kernel_rfl

theorem node12960_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12960 value6485 value1 value2 = (output12960, value6486, value1) := by
  rw [input12960_def, output12960_def]
  kernel_rfl

theorem node12961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12961 value6486 value1 value2 = (output12961, value5, value1) := by
  rw [input12961_def, output12961_def]
  kernel_rfl

theorem node12962_cond_eq
    (child12960 : Flapjack.WordAlloc.removeDeadStructural input12960 value6485 value1 value2 = (output12960, value6486, value1))
    (child12961 : Flapjack.WordAlloc.removeDeadStructural input12961 value6486 value1 value2 = (output12961, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12962 value6485 value1 value2 = (output12962, value5, value1) := by
  rw [input12962_def, output12962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12960]
  dsimp only
  rw [child12961]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12960_skip, output12961_skip]
  kernel_rfl

theorem node12963_cond_eq
    (child12959 : Flapjack.WordAlloc.removeDeadStructural input12959 value6484 value1 value2 = (output12959, value6485, value1))
    (child12962 : Flapjack.WordAlloc.removeDeadStructural input12962 value6485 value1 value2 = (output12962, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12963 value6484 value1 value2 = (output12963, value5, value1) := by
  rw [input12963_def, output12963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12959]
  dsimp only
  rw [child12962]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12959_skip, output12962_skip]
  kernel_rfl

theorem node12964_cond_eq
    (child12958 : Flapjack.WordAlloc.removeDeadStructural input12958 value6483 value1 value2 = (output12958, value6484, value1))
    (child12963 : Flapjack.WordAlloc.removeDeadStructural input12963 value6484 value1 value2 = (output12963, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12964 value6483 value1 value2 = (output12964, value5, value1) := by
  rw [input12964_def, output12964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12958]
  dsimp only
  rw [child12963]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12958_skip, output12963_skip]
  kernel_rfl

theorem node12965_cond_eq
    (child12957 : Flapjack.WordAlloc.removeDeadStructural input12957 value6482 value1 value2 = (output12957, value6483, value1))
    (child12964 : Flapjack.WordAlloc.removeDeadStructural input12964 value6483 value1 value2 = (output12964, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12965 value6482 value1 value2 = (output12965, value5, value1) := by
  rw [input12965_def, output12965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12957]
  dsimp only
  rw [child12964]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12957_skip, output12964_skip]
  kernel_rfl

theorem node12966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12966 value5 value1 value2 = (output12966, value6487, value1) := by
  rw [input12966_def, output12966_def]
  kernel_rfl

theorem node12967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12967 value6487 value1 value2 = (output12967, value6488, value1) := by
  rw [input12967_def, output12967_def]
  kernel_rfl

theorem node12968_cond_eq
    (child12966 : Flapjack.WordAlloc.removeDeadStructural input12966 value5 value1 value2 = (output12966, value6487, value1))
    (child12967 : Flapjack.WordAlloc.removeDeadStructural input12967 value6487 value1 value2 = (output12967, value6488, value1)) : Flapjack.WordAlloc.removeDeadStructural input12968 value5 value1 value2 = (output12968, value6488, value1) := by
  rw [input12968_def, output12968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12966]
  dsimp only
  rw [child12967]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12966_skip, output12967_skip]
  kernel_rfl

theorem node12969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12969 value6488 value1 value2 = (output12969, value6489, value1) := by
  rw [input12969_def, output12969_def]
  kernel_rfl

theorem node12970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12970 value6489 value1 value2 = (output12970, value6489, value1) := by
  rw [input12970_def, output12970_def]
  kernel_rfl

theorem node12971_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12971 value6489 value1 value2 = (output12971, value6490, value1) := by
  rw [input12971_def, output12971_def]
  kernel_rfl

theorem node12972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12972 value6490 value1 value2 = (output12972, value6491, value1) := by
  rw [input12972_def, output12972_def]
  kernel_rfl

theorem node12973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12973 value6491 value1 value2 = (output12973, value6492, value1) := by
  rw [input12973_def, output12973_def]
  kernel_rfl

theorem node12974_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12974 value6492 value1 value2 = (output12974, value6493, value1) := by
  rw [input12974_def, output12974_def]
  kernel_rfl

theorem node12975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12975 value6493 value1 value2 = (output12975, value5, value1) := by
  rw [input12975_def, output12975_def]
  kernel_rfl

theorem node12976_cond_eq
    (child12974 : Flapjack.WordAlloc.removeDeadStructural input12974 value6492 value1 value2 = (output12974, value6493, value1))
    (child12975 : Flapjack.WordAlloc.removeDeadStructural input12975 value6493 value1 value2 = (output12975, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12976 value6492 value1 value2 = (output12976, value5, value1) := by
  rw [input12976_def, output12976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12974]
  dsimp only
  rw [child12975]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12974_skip, output12975_skip]
  kernel_rfl

theorem node12977_cond_eq
    (child12973 : Flapjack.WordAlloc.removeDeadStructural input12973 value6491 value1 value2 = (output12973, value6492, value1))
    (child12976 : Flapjack.WordAlloc.removeDeadStructural input12976 value6492 value1 value2 = (output12976, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12977 value6491 value1 value2 = (output12977, value5, value1) := by
  rw [input12977_def, output12977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12973]
  dsimp only
  rw [child12976]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12973_skip, output12976_skip]
  kernel_rfl

theorem node12978_cond_eq
    (child12972 : Flapjack.WordAlloc.removeDeadStructural input12972 value6490 value1 value2 = (output12972, value6491, value1))
    (child12977 : Flapjack.WordAlloc.removeDeadStructural input12977 value6491 value1 value2 = (output12977, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12978 value6490 value1 value2 = (output12978, value5, value1) := by
  rw [input12978_def, output12978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12972]
  dsimp only
  rw [child12977]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12972_skip, output12977_skip]
  kernel_rfl

theorem node12979_cond_eq
    (child12971 : Flapjack.WordAlloc.removeDeadStructural input12971 value6489 value1 value2 = (output12971, value6490, value1))
    (child12978 : Flapjack.WordAlloc.removeDeadStructural input12978 value6490 value1 value2 = (output12978, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12979 value6489 value1 value2 = (output12979, value5, value1) := by
  rw [input12979_def, output12979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12971]
  dsimp only
  rw [child12978]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12971_skip, output12978_skip]
  kernel_rfl

theorem node12980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12980 value5 value1 value2 = (output12980, value6494, value1) := by
  rw [input12980_def, output12980_def]
  kernel_rfl

theorem node12981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12981 value6494 value1 value2 = (output12981, value6495, value1) := by
  rw [input12981_def, output12981_def]
  kernel_rfl

theorem node12982_cond_eq
    (child12980 : Flapjack.WordAlloc.removeDeadStructural input12980 value5 value1 value2 = (output12980, value6494, value1))
    (child12981 : Flapjack.WordAlloc.removeDeadStructural input12981 value6494 value1 value2 = (output12981, value6495, value1)) : Flapjack.WordAlloc.removeDeadStructural input12982 value5 value1 value2 = (output12982, value6495, value1) := by
  rw [input12982_def, output12982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12980]
  dsimp only
  rw [child12981]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12980_skip, output12981_skip]
  kernel_rfl

theorem node12983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12983 value6495 value1 value2 = (output12983, value6496, value1) := by
  rw [input12983_def, output12983_def]
  kernel_rfl

theorem node12984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12984 value6496 value1 value2 = (output12984, value6496, value1) := by
  rw [input12984_def, output12984_def]
  kernel_rfl

theorem node12985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12985 value6496 value1 value2 = (output12985, value6497, value1) := by
  rw [input12985_def, output12985_def]
  kernel_rfl

theorem node12986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12986 value6497 value1 value2 = (output12986, value6498, value1) := by
  rw [input12986_def, output12986_def]
  kernel_rfl

theorem node12987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12987 value6498 value1 value2 = (output12987, value6499, value1) := by
  rw [input12987_def, output12987_def]
  kernel_rfl

theorem node12988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12988 value6499 value1 value2 = (output12988, value6500, value1) := by
  rw [input12988_def, output12988_def]
  kernel_rfl

theorem node12989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12989 value6500 value1 value2 = (output12989, value5, value1) := by
  rw [input12989_def, output12989_def]
  kernel_rfl

theorem node12990_cond_eq
    (child12988 : Flapjack.WordAlloc.removeDeadStructural input12988 value6499 value1 value2 = (output12988, value6500, value1))
    (child12989 : Flapjack.WordAlloc.removeDeadStructural input12989 value6500 value1 value2 = (output12989, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12990 value6499 value1 value2 = (output12990, value5, value1) := by
  rw [input12990_def, output12990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12988]
  dsimp only
  rw [child12989]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12988_skip, output12989_skip]
  kernel_rfl

theorem node12991_cond_eq
    (child12987 : Flapjack.WordAlloc.removeDeadStructural input12987 value6498 value1 value2 = (output12987, value6499, value1))
    (child12990 : Flapjack.WordAlloc.removeDeadStructural input12990 value6499 value1 value2 = (output12990, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12991 value6498 value1 value2 = (output12991, value5, value1) := by
  rw [input12991_def, output12991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12987]
  dsimp only
  rw [child12990]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12987_skip, output12990_skip]
  kernel_rfl

theorem node12992_cond_eq
    (child12986 : Flapjack.WordAlloc.removeDeadStructural input12986 value6497 value1 value2 = (output12986, value6498, value1))
    (child12991 : Flapjack.WordAlloc.removeDeadStructural input12991 value6498 value1 value2 = (output12991, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12992 value6497 value1 value2 = (output12992, value5, value1) := by
  rw [input12992_def, output12992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12986]
  dsimp only
  rw [child12991]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12986_skip, output12991_skip]
  kernel_rfl

theorem node12993_cond_eq
    (child12985 : Flapjack.WordAlloc.removeDeadStructural input12985 value6496 value1 value2 = (output12985, value6497, value1))
    (child12992 : Flapjack.WordAlloc.removeDeadStructural input12992 value6497 value1 value2 = (output12992, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input12993 value6496 value1 value2 = (output12993, value5, value1) := by
  rw [input12993_def, output12993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12985]
  dsimp only
  rw [child12992]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12985_skip, output12992_skip]
  kernel_rfl

theorem node12994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12994 value5 value1 value2 = (output12994, value6501, value1) := by
  rw [input12994_def, output12994_def]
  kernel_rfl

theorem node12995_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12995 value6501 value1 value2 = (output12995, value6502, value1) := by
  rw [input12995_def, output12995_def]
  kernel_rfl

theorem node12996_cond_eq
    (child12994 : Flapjack.WordAlloc.removeDeadStructural input12994 value5 value1 value2 = (output12994, value6501, value1))
    (child12995 : Flapjack.WordAlloc.removeDeadStructural input12995 value6501 value1 value2 = (output12995, value6502, value1)) : Flapjack.WordAlloc.removeDeadStructural input12996 value5 value1 value2 = (output12996, value6502, value1) := by
  rw [input12996_def, output12996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12994]
  dsimp only
  rw [child12995]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12994_skip, output12995_skip]
  kernel_rfl

theorem node12997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12997 value6502 value1 value2 = (output12997, value6503, value1) := by
  rw [input12997_def, output12997_def]
  kernel_rfl

theorem node12998_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12998 value6503 value1 value2 = (output12998, value6503, value1) := by
  rw [input12998_def, output12998_def]
  kernel_rfl

theorem node12999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input12999 value6503 value1 value2 = (output12999, value6504, value1) := by
  rw [input12999_def, output12999_def]
  kernel_rfl

theorem node13000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13000 value6504 value1 value2 = (output13000, value6505, value1) := by
  rw [input13000_def, output13000_def]
  kernel_rfl

theorem node13001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13001 value6505 value1 value2 = (output13001, value6506, value1) := by
  rw [input13001_def, output13001_def]
  kernel_rfl

theorem node13002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13002 value6506 value1 value2 = (output13002, value6507, value1) := by
  rw [input13002_def, output13002_def]
  kernel_rfl

theorem node13003_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13003 value6507 value1 value2 = (output13003, value5, value1) := by
  rw [input13003_def, output13003_def]
  kernel_rfl

theorem node13004_cond_eq
    (child13002 : Flapjack.WordAlloc.removeDeadStructural input13002 value6506 value1 value2 = (output13002, value6507, value1))
    (child13003 : Flapjack.WordAlloc.removeDeadStructural input13003 value6507 value1 value2 = (output13003, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13004 value6506 value1 value2 = (output13004, value5, value1) := by
  rw [input13004_def, output13004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13002]
  dsimp only
  rw [child13003]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13002_skip, output13003_skip]
  kernel_rfl

theorem node13005_cond_eq
    (child13001 : Flapjack.WordAlloc.removeDeadStructural input13001 value6505 value1 value2 = (output13001, value6506, value1))
    (child13004 : Flapjack.WordAlloc.removeDeadStructural input13004 value6506 value1 value2 = (output13004, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13005 value6505 value1 value2 = (output13005, value5, value1) := by
  rw [input13005_def, output13005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13001]
  dsimp only
  rw [child13004]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13001_skip, output13004_skip]
  kernel_rfl

theorem node13006_cond_eq
    (child13000 : Flapjack.WordAlloc.removeDeadStructural input13000 value6504 value1 value2 = (output13000, value6505, value1))
    (child13005 : Flapjack.WordAlloc.removeDeadStructural input13005 value6505 value1 value2 = (output13005, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13006 value6504 value1 value2 = (output13006, value5, value1) := by
  rw [input13006_def, output13006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13000]
  dsimp only
  rw [child13005]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13000_skip, output13005_skip]
  kernel_rfl

theorem node13007_cond_eq
    (child12999 : Flapjack.WordAlloc.removeDeadStructural input12999 value6503 value1 value2 = (output12999, value6504, value1))
    (child13006 : Flapjack.WordAlloc.removeDeadStructural input13006 value6504 value1 value2 = (output13006, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13007 value6503 value1 value2 = (output13007, value5, value1) := by
  rw [input13007_def, output13007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child12999]
  dsimp only
  rw [child13006]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output12999_skip, output13006_skip]
  kernel_rfl

theorem node13008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13008 value5 value1 value2 = (output13008, value6508, value1) := by
  rw [input13008_def, output13008_def]
  kernel_rfl

theorem node13009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13009 value6508 value1 value2 = (output13009, value6509, value1) := by
  rw [input13009_def, output13009_def]
  kernel_rfl

theorem node13010_cond_eq
    (child13008 : Flapjack.WordAlloc.removeDeadStructural input13008 value5 value1 value2 = (output13008, value6508, value1))
    (child13009 : Flapjack.WordAlloc.removeDeadStructural input13009 value6508 value1 value2 = (output13009, value6509, value1)) : Flapjack.WordAlloc.removeDeadStructural input13010 value5 value1 value2 = (output13010, value6509, value1) := by
  rw [input13010_def, output13010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13008]
  dsimp only
  rw [child13009]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13008_skip, output13009_skip]
  kernel_rfl

theorem node13011_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13011 value6509 value1 value2 = (output13011, value6510, value1) := by
  rw [input13011_def, output13011_def]
  kernel_rfl

theorem node13012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13012 value6510 value1 value2 = (output13012, value6510, value1) := by
  rw [input13012_def, output13012_def]
  kernel_rfl

theorem node13013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13013 value6510 value1 value2 = (output13013, value6511, value1) := by
  rw [input13013_def, output13013_def]
  kernel_rfl

theorem node13014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13014 value6511 value1 value2 = (output13014, value6512, value1) := by
  rw [input13014_def, output13014_def]
  kernel_rfl

theorem node13015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13015 value6512 value1 value2 = (output13015, value6513, value1) := by
  rw [input13015_def, output13015_def]
  kernel_rfl

theorem node13016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13016 value6513 value1 value2 = (output13016, value6514, value1) := by
  rw [input13016_def, output13016_def]
  kernel_rfl

theorem node13017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13017 value6514 value1 value2 = (output13017, value5, value1) := by
  rw [input13017_def, output13017_def]
  kernel_rfl

theorem node13018_cond_eq
    (child13016 : Flapjack.WordAlloc.removeDeadStructural input13016 value6513 value1 value2 = (output13016, value6514, value1))
    (child13017 : Flapjack.WordAlloc.removeDeadStructural input13017 value6514 value1 value2 = (output13017, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13018 value6513 value1 value2 = (output13018, value5, value1) := by
  rw [input13018_def, output13018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13016]
  dsimp only
  rw [child13017]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13016_skip, output13017_skip]
  kernel_rfl

theorem node13019_cond_eq
    (child13015 : Flapjack.WordAlloc.removeDeadStructural input13015 value6512 value1 value2 = (output13015, value6513, value1))
    (child13018 : Flapjack.WordAlloc.removeDeadStructural input13018 value6513 value1 value2 = (output13018, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13019 value6512 value1 value2 = (output13019, value5, value1) := by
  rw [input13019_def, output13019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13015]
  dsimp only
  rw [child13018]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13015_skip, output13018_skip]
  kernel_rfl

theorem node13020_cond_eq
    (child13014 : Flapjack.WordAlloc.removeDeadStructural input13014 value6511 value1 value2 = (output13014, value6512, value1))
    (child13019 : Flapjack.WordAlloc.removeDeadStructural input13019 value6512 value1 value2 = (output13019, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13020 value6511 value1 value2 = (output13020, value5, value1) := by
  rw [input13020_def, output13020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13014]
  dsimp only
  rw [child13019]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13014_skip, output13019_skip]
  kernel_rfl

theorem node13021_cond_eq
    (child13013 : Flapjack.WordAlloc.removeDeadStructural input13013 value6510 value1 value2 = (output13013, value6511, value1))
    (child13020 : Flapjack.WordAlloc.removeDeadStructural input13020 value6511 value1 value2 = (output13020, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13021 value6510 value1 value2 = (output13021, value5, value1) := by
  rw [input13021_def, output13021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13013]
  dsimp only
  rw [child13020]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13013_skip, output13020_skip]
  kernel_rfl

theorem node13022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13022 value5 value1 value2 = (output13022, value6515, value1) := by
  rw [input13022_def, output13022_def]
  kernel_rfl

theorem node13023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13023 value6515 value1 value2 = (output13023, value6516, value1) := by
  rw [input13023_def, output13023_def]
  kernel_rfl

theorem node13024_cond_eq
    (child13022 : Flapjack.WordAlloc.removeDeadStructural input13022 value5 value1 value2 = (output13022, value6515, value1))
    (child13023 : Flapjack.WordAlloc.removeDeadStructural input13023 value6515 value1 value2 = (output13023, value6516, value1)) : Flapjack.WordAlloc.removeDeadStructural input13024 value5 value1 value2 = (output13024, value6516, value1) := by
  rw [input13024_def, output13024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13022]
  dsimp only
  rw [child13023]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13022_skip, output13023_skip]
  kernel_rfl

theorem node13025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13025 value6516 value1 value2 = (output13025, value6517, value1) := by
  rw [input13025_def, output13025_def]
  kernel_rfl

theorem node13026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13026 value6517 value1 value2 = (output13026, value6517, value1) := by
  rw [input13026_def, output13026_def]
  kernel_rfl

theorem node13027_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13027 value6517 value1 value2 = (output13027, value6518, value1) := by
  rw [input13027_def, output13027_def]
  kernel_rfl

theorem node13028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13028 value6518 value1 value2 = (output13028, value6519, value1) := by
  rw [input13028_def, output13028_def]
  kernel_rfl

theorem node13029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13029 value6519 value1 value2 = (output13029, value6520, value1) := by
  rw [input13029_def, output13029_def]
  kernel_rfl

theorem node13030_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13030 value6520 value1 value2 = (output13030, value6521, value1) := by
  rw [input13030_def, output13030_def]
  kernel_rfl

theorem node13031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13031 value6521 value1 value2 = (output13031, value5, value1) := by
  rw [input13031_def, output13031_def]
  kernel_rfl

theorem node13032_cond_eq
    (child13030 : Flapjack.WordAlloc.removeDeadStructural input13030 value6520 value1 value2 = (output13030, value6521, value1))
    (child13031 : Flapjack.WordAlloc.removeDeadStructural input13031 value6521 value1 value2 = (output13031, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13032 value6520 value1 value2 = (output13032, value5, value1) := by
  rw [input13032_def, output13032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13030]
  dsimp only
  rw [child13031]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13030_skip, output13031_skip]
  kernel_rfl

theorem node13033_cond_eq
    (child13029 : Flapjack.WordAlloc.removeDeadStructural input13029 value6519 value1 value2 = (output13029, value6520, value1))
    (child13032 : Flapjack.WordAlloc.removeDeadStructural input13032 value6520 value1 value2 = (output13032, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13033 value6519 value1 value2 = (output13033, value5, value1) := by
  rw [input13033_def, output13033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13029]
  dsimp only
  rw [child13032]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13029_skip, output13032_skip]
  kernel_rfl

theorem node13034_cond_eq
    (child13028 : Flapjack.WordAlloc.removeDeadStructural input13028 value6518 value1 value2 = (output13028, value6519, value1))
    (child13033 : Flapjack.WordAlloc.removeDeadStructural input13033 value6519 value1 value2 = (output13033, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13034 value6518 value1 value2 = (output13034, value5, value1) := by
  rw [input13034_def, output13034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13028]
  dsimp only
  rw [child13033]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13028_skip, output13033_skip]
  kernel_rfl

theorem node13035_cond_eq
    (child13027 : Flapjack.WordAlloc.removeDeadStructural input13027 value6517 value1 value2 = (output13027, value6518, value1))
    (child13034 : Flapjack.WordAlloc.removeDeadStructural input13034 value6518 value1 value2 = (output13034, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13035 value6517 value1 value2 = (output13035, value5, value1) := by
  rw [input13035_def, output13035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13027]
  dsimp only
  rw [child13034]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13027_skip, output13034_skip]
  kernel_rfl

theorem node13036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13036 value5 value1 value2 = (output13036, value6522, value1) := by
  rw [input13036_def, output13036_def]
  kernel_rfl

theorem node13037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13037 value6522 value1 value2 = (output13037, value6523, value1) := by
  rw [input13037_def, output13037_def]
  kernel_rfl

theorem node13038_cond_eq
    (child13036 : Flapjack.WordAlloc.removeDeadStructural input13036 value5 value1 value2 = (output13036, value6522, value1))
    (child13037 : Flapjack.WordAlloc.removeDeadStructural input13037 value6522 value1 value2 = (output13037, value6523, value1)) : Flapjack.WordAlloc.removeDeadStructural input13038 value5 value1 value2 = (output13038, value6523, value1) := by
  rw [input13038_def, output13038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13036]
  dsimp only
  rw [child13037]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13036_skip, output13037_skip]
  kernel_rfl

theorem node13039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13039 value6523 value1 value2 = (output13039, value6524, value1) := by
  rw [input13039_def, output13039_def]
  kernel_rfl

theorem node13040_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13040 value6524 value1 value2 = (output13040, value6524, value1) := by
  rw [input13040_def, output13040_def]
  kernel_rfl

theorem node13041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13041 value6524 value1 value2 = (output13041, value6525, value1) := by
  rw [input13041_def, output13041_def]
  kernel_rfl

theorem node13042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13042 value6525 value1 value2 = (output13042, value6526, value1) := by
  rw [input13042_def, output13042_def]
  kernel_rfl

theorem node13043_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13043 value6526 value1 value2 = (output13043, value6527, value1) := by
  rw [input13043_def, output13043_def]
  kernel_rfl

theorem node13044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13044 value6527 value1 value2 = (output13044, value6528, value1) := by
  rw [input13044_def, output13044_def]
  kernel_rfl

theorem node13045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13045 value6528 value1 value2 = (output13045, value5, value1) := by
  rw [input13045_def, output13045_def]
  kernel_rfl

theorem node13046_cond_eq
    (child13044 : Flapjack.WordAlloc.removeDeadStructural input13044 value6527 value1 value2 = (output13044, value6528, value1))
    (child13045 : Flapjack.WordAlloc.removeDeadStructural input13045 value6528 value1 value2 = (output13045, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13046 value6527 value1 value2 = (output13046, value5, value1) := by
  rw [input13046_def, output13046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13044]
  dsimp only
  rw [child13045]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13044_skip, output13045_skip]
  kernel_rfl

theorem node13047_cond_eq
    (child13043 : Flapjack.WordAlloc.removeDeadStructural input13043 value6526 value1 value2 = (output13043, value6527, value1))
    (child13046 : Flapjack.WordAlloc.removeDeadStructural input13046 value6527 value1 value2 = (output13046, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13047 value6526 value1 value2 = (output13047, value5, value1) := by
  rw [input13047_def, output13047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13043]
  dsimp only
  rw [child13046]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13043_skip, output13046_skip]
  kernel_rfl

theorem node13048_cond_eq
    (child13042 : Flapjack.WordAlloc.removeDeadStructural input13042 value6525 value1 value2 = (output13042, value6526, value1))
    (child13047 : Flapjack.WordAlloc.removeDeadStructural input13047 value6526 value1 value2 = (output13047, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13048 value6525 value1 value2 = (output13048, value5, value1) := by
  rw [input13048_def, output13048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13042]
  dsimp only
  rw [child13047]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13042_skip, output13047_skip]
  kernel_rfl

theorem node13049_cond_eq
    (child13041 : Flapjack.WordAlloc.removeDeadStructural input13041 value6524 value1 value2 = (output13041, value6525, value1))
    (child13048 : Flapjack.WordAlloc.removeDeadStructural input13048 value6525 value1 value2 = (output13048, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13049 value6524 value1 value2 = (output13049, value5, value1) := by
  rw [input13049_def, output13049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13041]
  dsimp only
  rw [child13048]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13041_skip, output13048_skip]
  kernel_rfl

theorem node13050_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13050 value5 value1 value2 = (output13050, value6529, value1) := by
  rw [input13050_def, output13050_def]
  kernel_rfl

theorem node13051_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13051 value6529 value1 value2 = (output13051, value6530, value1) := by
  rw [input13051_def, output13051_def]
  kernel_rfl

theorem node13052_cond_eq
    (child13050 : Flapjack.WordAlloc.removeDeadStructural input13050 value5 value1 value2 = (output13050, value6529, value1))
    (child13051 : Flapjack.WordAlloc.removeDeadStructural input13051 value6529 value1 value2 = (output13051, value6530, value1)) : Flapjack.WordAlloc.removeDeadStructural input13052 value5 value1 value2 = (output13052, value6530, value1) := by
  rw [input13052_def, output13052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13050]
  dsimp only
  rw [child13051]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13050_skip, output13051_skip]
  kernel_rfl

theorem node13053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13053 value6530 value1 value2 = (output13053, value6531, value1) := by
  rw [input13053_def, output13053_def]
  kernel_rfl

theorem node13054_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13054 value6531 value1 value2 = (output13054, value6531, value1) := by
  rw [input13054_def, output13054_def]
  kernel_rfl

theorem node13055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13055 value6531 value1 value2 = (output13055, value6532, value1) := by
  rw [input13055_def, output13055_def]
  kernel_rfl

#print axioms node13055_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
