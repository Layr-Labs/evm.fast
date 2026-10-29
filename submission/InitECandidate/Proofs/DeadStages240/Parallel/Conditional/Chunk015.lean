import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk015
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages240.Parallel
theorem node3840_cond_eq
    (child3156 : Flapjack.WordAlloc.removeDeadStructural input3156 value5 value1 value2 = (output3156, value1582, value1))
    (child3839 : Flapjack.WordAlloc.removeDeadStructural input3839 value1582 value1 value2 = (output3839, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3840 value5 value1 value2 = (output3840, value1832, value1) := by
  rw [input3840_def, output3840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3156]
  try dsimp only
  rw [child3839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3156_skip, output3839_skip]
  kernel_rfl

theorem node3841_cond_eq
    (child3153 : Flapjack.WordAlloc.removeDeadStructural input3153 value1576 value1 value2 = (output3153, value5, value1))
    (child3840 : Flapjack.WordAlloc.removeDeadStructural input3840 value5 value1 value2 = (output3840, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3841 value1576 value1 value2 = (output3841, value1832, value1) := by
  rw [input3841_def, output3841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3153]
  try dsimp only
  rw [child3840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3153_skip, output3840_skip]
  kernel_rfl

theorem node3842_cond_eq
    (child3144 : Flapjack.WordAlloc.removeDeadStructural input3144 value1576 value1 value2 = (output3144, value1576, value1))
    (child3841 : Flapjack.WordAlloc.removeDeadStructural input3841 value1576 value1 value2 = (output3841, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3842 value1576 value1 value2 = (output3842, value1832, value1) := by
  rw [input3842_def, output3842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3144]
  try dsimp only
  rw [child3841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3144_skip, output3841_skip]
  kernel_rfl

theorem node3843_cond_eq
    (child3143 : Flapjack.WordAlloc.removeDeadStructural input3143 value1575 value1 value2 = (output3143, value1576, value1))
    (child3842 : Flapjack.WordAlloc.removeDeadStructural input3842 value1576 value1 value2 = (output3842, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3843 value1575 value1 value2 = (output3843, value1832, value1) := by
  rw [input3843_def, output3843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3143]
  try dsimp only
  rw [child3842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3143_skip, output3842_skip]
  kernel_rfl

theorem node3844_cond_eq
    (child3142 : Flapjack.WordAlloc.removeDeadStructural input3142 value5 value1 value2 = (output3142, value1575, value1))
    (child3843 : Flapjack.WordAlloc.removeDeadStructural input3843 value1575 value1 value2 = (output3843, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3844 value5 value1 value2 = (output3844, value1832, value1) := by
  rw [input3844_def, output3844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3142]
  try dsimp only
  rw [child3843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3142_skip, output3843_skip]
  kernel_rfl

theorem node3845_cond_eq
    (child3139 : Flapjack.WordAlloc.removeDeadStructural input3139 value1569 value1 value2 = (output3139, value5, value1))
    (child3844 : Flapjack.WordAlloc.removeDeadStructural input3844 value5 value1 value2 = (output3844, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3845 value1569 value1 value2 = (output3845, value1832, value1) := by
  rw [input3845_def, output3845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3139]
  try dsimp only
  rw [child3844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3139_skip, output3844_skip]
  kernel_rfl

theorem node3846_cond_eq
    (child3130 : Flapjack.WordAlloc.removeDeadStructural input3130 value1569 value1 value2 = (output3130, value1569, value1))
    (child3845 : Flapjack.WordAlloc.removeDeadStructural input3845 value1569 value1 value2 = (output3845, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3846 value1569 value1 value2 = (output3846, value1832, value1) := by
  rw [input3846_def, output3846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3130]
  try dsimp only
  rw [child3845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3130_skip, output3845_skip]
  kernel_rfl

theorem node3847_cond_eq
    (child3129 : Flapjack.WordAlloc.removeDeadStructural input3129 value1568 value1 value2 = (output3129, value1569, value1))
    (child3846 : Flapjack.WordAlloc.removeDeadStructural input3846 value1569 value1 value2 = (output3846, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3847 value1568 value1 value2 = (output3847, value1832, value1) := by
  rw [input3847_def, output3847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3129]
  try dsimp only
  rw [child3846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3129_skip, output3846_skip]
  kernel_rfl

theorem node3848_cond_eq
    (child3128 : Flapjack.WordAlloc.removeDeadStructural input3128 value5 value1 value2 = (output3128, value1568, value1))
    (child3847 : Flapjack.WordAlloc.removeDeadStructural input3847 value1568 value1 value2 = (output3847, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3848 value5 value1 value2 = (output3848, value1832, value1) := by
  rw [input3848_def, output3848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3128]
  try dsimp only
  rw [child3847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3128_skip, output3847_skip]
  kernel_rfl

theorem node3849_cond_eq
    (child3125 : Flapjack.WordAlloc.removeDeadStructural input3125 value1562 value1 value2 = (output3125, value5, value1))
    (child3848 : Flapjack.WordAlloc.removeDeadStructural input3848 value5 value1 value2 = (output3848, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3849 value1562 value1 value2 = (output3849, value1832, value1) := by
  rw [input3849_def, output3849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3125]
  try dsimp only
  rw [child3848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3125_skip, output3848_skip]
  kernel_rfl

theorem node3850_cond_eq
    (child3116 : Flapjack.WordAlloc.removeDeadStructural input3116 value1562 value1 value2 = (output3116, value1562, value1))
    (child3849 : Flapjack.WordAlloc.removeDeadStructural input3849 value1562 value1 value2 = (output3849, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3850 value1562 value1 value2 = (output3850, value1832, value1) := by
  rw [input3850_def, output3850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3116]
  try dsimp only
  rw [child3849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3116_skip, output3849_skip]
  kernel_rfl

theorem node3851_cond_eq
    (child3115 : Flapjack.WordAlloc.removeDeadStructural input3115 value1561 value1 value2 = (output3115, value1562, value1))
    (child3850 : Flapjack.WordAlloc.removeDeadStructural input3850 value1562 value1 value2 = (output3850, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3851 value1561 value1 value2 = (output3851, value1832, value1) := by
  rw [input3851_def, output3851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3115]
  try dsimp only
  rw [child3850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3115_skip, output3850_skip]
  kernel_rfl

theorem node3852_cond_eq
    (child3114 : Flapjack.WordAlloc.removeDeadStructural input3114 value5 value1 value2 = (output3114, value1561, value1))
    (child3851 : Flapjack.WordAlloc.removeDeadStructural input3851 value1561 value1 value2 = (output3851, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3852 value5 value1 value2 = (output3852, value1832, value1) := by
  rw [input3852_def, output3852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3114]
  try dsimp only
  rw [child3851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3114_skip, output3851_skip]
  kernel_rfl

theorem node3853_cond_eq
    (child3111 : Flapjack.WordAlloc.removeDeadStructural input3111 value1555 value1 value2 = (output3111, value5, value1))
    (child3852 : Flapjack.WordAlloc.removeDeadStructural input3852 value5 value1 value2 = (output3852, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3853 value1555 value1 value2 = (output3853, value1832, value1) := by
  rw [input3853_def, output3853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3111]
  try dsimp only
  rw [child3852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3111_skip, output3852_skip]
  kernel_rfl

theorem node3854_cond_eq
    (child3102 : Flapjack.WordAlloc.removeDeadStructural input3102 value1555 value1 value2 = (output3102, value1555, value1))
    (child3853 : Flapjack.WordAlloc.removeDeadStructural input3853 value1555 value1 value2 = (output3853, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3854 value1555 value1 value2 = (output3854, value1832, value1) := by
  rw [input3854_def, output3854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3102]
  try dsimp only
  rw [child3853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3102_skip, output3853_skip]
  kernel_rfl

theorem node3855_cond_eq
    (child3101 : Flapjack.WordAlloc.removeDeadStructural input3101 value1554 value1 value2 = (output3101, value1555, value1))
    (child3854 : Flapjack.WordAlloc.removeDeadStructural input3854 value1555 value1 value2 = (output3854, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3855 value1554 value1 value2 = (output3855, value1832, value1) := by
  rw [input3855_def, output3855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3101]
  try dsimp only
  rw [child3854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3101_skip, output3854_skip]
  kernel_rfl

theorem node3856_cond_eq
    (child3100 : Flapjack.WordAlloc.removeDeadStructural input3100 value5 value1 value2 = (output3100, value1554, value1))
    (child3855 : Flapjack.WordAlloc.removeDeadStructural input3855 value1554 value1 value2 = (output3855, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3856 value5 value1 value2 = (output3856, value1832, value1) := by
  rw [input3856_def, output3856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3100]
  try dsimp only
  rw [child3855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3100_skip, output3855_skip]
  kernel_rfl

theorem node3857_cond_eq
    (child3097 : Flapjack.WordAlloc.removeDeadStructural input3097 value1548 value1 value2 = (output3097, value5, value1))
    (child3856 : Flapjack.WordAlloc.removeDeadStructural input3856 value5 value1 value2 = (output3856, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3857 value1548 value1 value2 = (output3857, value1832, value1) := by
  rw [input3857_def, output3857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3097]
  try dsimp only
  rw [child3856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3097_skip, output3856_skip]
  kernel_rfl

theorem node3858_cond_eq
    (child3088 : Flapjack.WordAlloc.removeDeadStructural input3088 value1548 value1 value2 = (output3088, value1548, value1))
    (child3857 : Flapjack.WordAlloc.removeDeadStructural input3857 value1548 value1 value2 = (output3857, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3858 value1548 value1 value2 = (output3858, value1832, value1) := by
  rw [input3858_def, output3858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3088]
  try dsimp only
  rw [child3857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3088_skip, output3857_skip]
  kernel_rfl

theorem node3859_cond_eq
    (child3087 : Flapjack.WordAlloc.removeDeadStructural input3087 value1547 value1 value2 = (output3087, value1548, value1))
    (child3858 : Flapjack.WordAlloc.removeDeadStructural input3858 value1548 value1 value2 = (output3858, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3859 value1547 value1 value2 = (output3859, value1832, value1) := by
  rw [input3859_def, output3859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3087]
  try dsimp only
  rw [child3858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3087_skip, output3858_skip]
  kernel_rfl

theorem node3860_cond_eq
    (child3086 : Flapjack.WordAlloc.removeDeadStructural input3086 value5 value1 value2 = (output3086, value1547, value1))
    (child3859 : Flapjack.WordAlloc.removeDeadStructural input3859 value1547 value1 value2 = (output3859, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3860 value5 value1 value2 = (output3860, value1832, value1) := by
  rw [input3860_def, output3860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3086]
  try dsimp only
  rw [child3859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3086_skip, output3859_skip]
  kernel_rfl

theorem node3861_cond_eq
    (child3083 : Flapjack.WordAlloc.removeDeadStructural input3083 value1541 value1 value2 = (output3083, value5, value1))
    (child3860 : Flapjack.WordAlloc.removeDeadStructural input3860 value5 value1 value2 = (output3860, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3861 value1541 value1 value2 = (output3861, value1832, value1) := by
  rw [input3861_def, output3861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3083]
  try dsimp only
  rw [child3860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3083_skip, output3860_skip]
  kernel_rfl

theorem node3862_cond_eq
    (child3074 : Flapjack.WordAlloc.removeDeadStructural input3074 value1541 value1 value2 = (output3074, value1541, value1))
    (child3861 : Flapjack.WordAlloc.removeDeadStructural input3861 value1541 value1 value2 = (output3861, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3862 value1541 value1 value2 = (output3862, value1832, value1) := by
  rw [input3862_def, output3862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3074]
  try dsimp only
  rw [child3861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3074_skip, output3861_skip]
  kernel_rfl

theorem node3863_cond_eq
    (child3073 : Flapjack.WordAlloc.removeDeadStructural input3073 value1540 value1 value2 = (output3073, value1541, value1))
    (child3862 : Flapjack.WordAlloc.removeDeadStructural input3862 value1541 value1 value2 = (output3862, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3863 value1540 value1 value2 = (output3863, value1832, value1) := by
  rw [input3863_def, output3863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3073]
  try dsimp only
  rw [child3862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3073_skip, output3862_skip]
  kernel_rfl

theorem node3864_cond_eq
    (child3072 : Flapjack.WordAlloc.removeDeadStructural input3072 value5 value1 value2 = (output3072, value1540, value1))
    (child3863 : Flapjack.WordAlloc.removeDeadStructural input3863 value1540 value1 value2 = (output3863, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3864 value5 value1 value2 = (output3864, value1832, value1) := by
  rw [input3864_def, output3864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3072]
  try dsimp only
  rw [child3863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3072_skip, output3863_skip]
  kernel_rfl

theorem node3865_cond_eq
    (child3069 : Flapjack.WordAlloc.removeDeadStructural input3069 value1534 value1 value2 = (output3069, value5, value1))
    (child3864 : Flapjack.WordAlloc.removeDeadStructural input3864 value5 value1 value2 = (output3864, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3865 value1534 value1 value2 = (output3865, value1832, value1) := by
  rw [input3865_def, output3865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3069]
  try dsimp only
  rw [child3864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3069_skip, output3864_skip]
  kernel_rfl

theorem node3866_cond_eq
    (child3060 : Flapjack.WordAlloc.removeDeadStructural input3060 value1534 value1 value2 = (output3060, value1534, value1))
    (child3865 : Flapjack.WordAlloc.removeDeadStructural input3865 value1534 value1 value2 = (output3865, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3866 value1534 value1 value2 = (output3866, value1832, value1) := by
  rw [input3866_def, output3866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3060]
  try dsimp only
  rw [child3865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3060_skip, output3865_skip]
  kernel_rfl

theorem node3867_cond_eq
    (child3059 : Flapjack.WordAlloc.removeDeadStructural input3059 value1533 value1 value2 = (output3059, value1534, value1))
    (child3866 : Flapjack.WordAlloc.removeDeadStructural input3866 value1534 value1 value2 = (output3866, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3867 value1533 value1 value2 = (output3867, value1832, value1) := by
  rw [input3867_def, output3867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3059]
  try dsimp only
  rw [child3866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3059_skip, output3866_skip]
  kernel_rfl

theorem node3868_cond_eq
    (child3058 : Flapjack.WordAlloc.removeDeadStructural input3058 value5 value1 value2 = (output3058, value1533, value1))
    (child3867 : Flapjack.WordAlloc.removeDeadStructural input3867 value1533 value1 value2 = (output3867, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3868 value5 value1 value2 = (output3868, value1832, value1) := by
  rw [input3868_def, output3868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3058]
  try dsimp only
  rw [child3867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3058_skip, output3867_skip]
  kernel_rfl

theorem node3869_cond_eq
    (child3055 : Flapjack.WordAlloc.removeDeadStructural input3055 value1527 value1 value2 = (output3055, value5, value1))
    (child3868 : Flapjack.WordAlloc.removeDeadStructural input3868 value5 value1 value2 = (output3868, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3869 value1527 value1 value2 = (output3869, value1832, value1) := by
  rw [input3869_def, output3869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3055]
  try dsimp only
  rw [child3868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3055_skip, output3868_skip]
  kernel_rfl

theorem node3870_cond_eq
    (child3046 : Flapjack.WordAlloc.removeDeadStructural input3046 value1527 value1 value2 = (output3046, value1527, value1))
    (child3869 : Flapjack.WordAlloc.removeDeadStructural input3869 value1527 value1 value2 = (output3869, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3870 value1527 value1 value2 = (output3870, value1832, value1) := by
  rw [input3870_def, output3870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3046]
  try dsimp only
  rw [child3869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3046_skip, output3869_skip]
  kernel_rfl

theorem node3871_cond_eq
    (child3045 : Flapjack.WordAlloc.removeDeadStructural input3045 value1526 value1 value2 = (output3045, value1527, value1))
    (child3870 : Flapjack.WordAlloc.removeDeadStructural input3870 value1527 value1 value2 = (output3870, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3871 value1526 value1 value2 = (output3871, value1832, value1) := by
  rw [input3871_def, output3871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3045]
  try dsimp only
  rw [child3870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3045_skip, output3870_skip]
  kernel_rfl

theorem node3872_cond_eq
    (child3044 : Flapjack.WordAlloc.removeDeadStructural input3044 value5 value1 value2 = (output3044, value1526, value1))
    (child3871 : Flapjack.WordAlloc.removeDeadStructural input3871 value1526 value1 value2 = (output3871, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3872 value5 value1 value2 = (output3872, value1832, value1) := by
  rw [input3872_def, output3872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3044]
  try dsimp only
  rw [child3871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3044_skip, output3871_skip]
  kernel_rfl

theorem node3873_cond_eq
    (child3041 : Flapjack.WordAlloc.removeDeadStructural input3041 value1520 value1 value2 = (output3041, value5, value1))
    (child3872 : Flapjack.WordAlloc.removeDeadStructural input3872 value5 value1 value2 = (output3872, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3873 value1520 value1 value2 = (output3873, value1832, value1) := by
  rw [input3873_def, output3873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3041]
  try dsimp only
  rw [child3872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3041_skip, output3872_skip]
  kernel_rfl

theorem node3874_cond_eq
    (child3032 : Flapjack.WordAlloc.removeDeadStructural input3032 value1520 value1 value2 = (output3032, value1520, value1))
    (child3873 : Flapjack.WordAlloc.removeDeadStructural input3873 value1520 value1 value2 = (output3873, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3874 value1520 value1 value2 = (output3874, value1832, value1) := by
  rw [input3874_def, output3874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3032]
  try dsimp only
  rw [child3873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3032_skip, output3873_skip]
  kernel_rfl

theorem node3875_cond_eq
    (child3031 : Flapjack.WordAlloc.removeDeadStructural input3031 value1519 value1 value2 = (output3031, value1520, value1))
    (child3874 : Flapjack.WordAlloc.removeDeadStructural input3874 value1520 value1 value2 = (output3874, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3875 value1519 value1 value2 = (output3875, value1832, value1) := by
  rw [input3875_def, output3875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3031]
  try dsimp only
  rw [child3874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3031_skip, output3874_skip]
  kernel_rfl

theorem node3876_cond_eq
    (child3030 : Flapjack.WordAlloc.removeDeadStructural input3030 value5 value1 value2 = (output3030, value1519, value1))
    (child3875 : Flapjack.WordAlloc.removeDeadStructural input3875 value1519 value1 value2 = (output3875, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3876 value5 value1 value2 = (output3876, value1832, value1) := by
  rw [input3876_def, output3876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3030]
  try dsimp only
  rw [child3875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3030_skip, output3875_skip]
  kernel_rfl

theorem node3877_cond_eq
    (child3027 : Flapjack.WordAlloc.removeDeadStructural input3027 value1513 value1 value2 = (output3027, value5, value1))
    (child3876 : Flapjack.WordAlloc.removeDeadStructural input3876 value5 value1 value2 = (output3876, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3877 value1513 value1 value2 = (output3877, value1832, value1) := by
  rw [input3877_def, output3877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3027]
  try dsimp only
  rw [child3876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3027_skip, output3876_skip]
  kernel_rfl

theorem node3878_cond_eq
    (child3018 : Flapjack.WordAlloc.removeDeadStructural input3018 value1513 value1 value2 = (output3018, value1513, value1))
    (child3877 : Flapjack.WordAlloc.removeDeadStructural input3877 value1513 value1 value2 = (output3877, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3878 value1513 value1 value2 = (output3878, value1832, value1) := by
  rw [input3878_def, output3878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3018]
  try dsimp only
  rw [child3877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3018_skip, output3877_skip]
  kernel_rfl

theorem node3879_cond_eq
    (child3017 : Flapjack.WordAlloc.removeDeadStructural input3017 value1512 value1 value2 = (output3017, value1513, value1))
    (child3878 : Flapjack.WordAlloc.removeDeadStructural input3878 value1513 value1 value2 = (output3878, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3879 value1512 value1 value2 = (output3879, value1832, value1) := by
  rw [input3879_def, output3879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3017]
  try dsimp only
  rw [child3878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3017_skip, output3878_skip]
  kernel_rfl

theorem node3880_cond_eq
    (child3016 : Flapjack.WordAlloc.removeDeadStructural input3016 value5 value1 value2 = (output3016, value1512, value1))
    (child3879 : Flapjack.WordAlloc.removeDeadStructural input3879 value1512 value1 value2 = (output3879, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3880 value5 value1 value2 = (output3880, value1832, value1) := by
  rw [input3880_def, output3880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3016]
  try dsimp only
  rw [child3879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3016_skip, output3879_skip]
  kernel_rfl

theorem node3881_cond_eq
    (child3013 : Flapjack.WordAlloc.removeDeadStructural input3013 value1506 value1 value2 = (output3013, value5, value1))
    (child3880 : Flapjack.WordAlloc.removeDeadStructural input3880 value5 value1 value2 = (output3880, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3881 value1506 value1 value2 = (output3881, value1832, value1) := by
  rw [input3881_def, output3881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3013]
  try dsimp only
  rw [child3880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3013_skip, output3880_skip]
  kernel_rfl

theorem node3882_cond_eq
    (child3004 : Flapjack.WordAlloc.removeDeadStructural input3004 value1506 value1 value2 = (output3004, value1506, value1))
    (child3881 : Flapjack.WordAlloc.removeDeadStructural input3881 value1506 value1 value2 = (output3881, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3882 value1506 value1 value2 = (output3882, value1832, value1) := by
  rw [input3882_def, output3882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3004]
  try dsimp only
  rw [child3881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3004_skip, output3881_skip]
  kernel_rfl

theorem node3883_cond_eq
    (child3003 : Flapjack.WordAlloc.removeDeadStructural input3003 value1505 value1 value2 = (output3003, value1506, value1))
    (child3882 : Flapjack.WordAlloc.removeDeadStructural input3882 value1506 value1 value2 = (output3882, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3883 value1505 value1 value2 = (output3883, value1832, value1) := by
  rw [input3883_def, output3883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3003]
  try dsimp only
  rw [child3882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3003_skip, output3882_skip]
  kernel_rfl

theorem node3884_cond_eq
    (child3002 : Flapjack.WordAlloc.removeDeadStructural input3002 value5 value1 value2 = (output3002, value1505, value1))
    (child3883 : Flapjack.WordAlloc.removeDeadStructural input3883 value1505 value1 value2 = (output3883, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3884 value5 value1 value2 = (output3884, value1832, value1) := by
  rw [input3884_def, output3884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3002]
  try dsimp only
  rw [child3883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3002_skip, output3883_skip]
  kernel_rfl

theorem node3885_cond_eq
    (child2999 : Flapjack.WordAlloc.removeDeadStructural input2999 value1499 value1 value2 = (output2999, value5, value1))
    (child3884 : Flapjack.WordAlloc.removeDeadStructural input3884 value5 value1 value2 = (output3884, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3885 value1499 value1 value2 = (output3885, value1832, value1) := by
  rw [input3885_def, output3885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2999]
  try dsimp only
  rw [child3884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2999_skip, output3884_skip]
  kernel_rfl

theorem node3886_cond_eq
    (child2990 : Flapjack.WordAlloc.removeDeadStructural input2990 value1499 value1 value2 = (output2990, value1499, value1))
    (child3885 : Flapjack.WordAlloc.removeDeadStructural input3885 value1499 value1 value2 = (output3885, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3886 value1499 value1 value2 = (output3886, value1832, value1) := by
  rw [input3886_def, output3886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2990]
  try dsimp only
  rw [child3885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2990_skip, output3885_skip]
  kernel_rfl

theorem node3887_cond_eq
    (child2989 : Flapjack.WordAlloc.removeDeadStructural input2989 value1498 value1 value2 = (output2989, value1499, value1))
    (child3886 : Flapjack.WordAlloc.removeDeadStructural input3886 value1499 value1 value2 = (output3886, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3887 value1498 value1 value2 = (output3887, value1832, value1) := by
  rw [input3887_def, output3887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2989]
  try dsimp only
  rw [child3886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2989_skip, output3886_skip]
  kernel_rfl

theorem node3888_cond_eq
    (child2988 : Flapjack.WordAlloc.removeDeadStructural input2988 value5 value1 value2 = (output2988, value1498, value1))
    (child3887 : Flapjack.WordAlloc.removeDeadStructural input3887 value1498 value1 value2 = (output3887, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3888 value5 value1 value2 = (output3888, value1832, value1) := by
  rw [input3888_def, output3888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2988]
  try dsimp only
  rw [child3887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2988_skip, output3887_skip]
  kernel_rfl

theorem node3889_cond_eq
    (child2985 : Flapjack.WordAlloc.removeDeadStructural input2985 value1492 value1 value2 = (output2985, value5, value1))
    (child3888 : Flapjack.WordAlloc.removeDeadStructural input3888 value5 value1 value2 = (output3888, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3889 value1492 value1 value2 = (output3889, value1832, value1) := by
  rw [input3889_def, output3889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2985]
  try dsimp only
  rw [child3888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2985_skip, output3888_skip]
  kernel_rfl

theorem node3890_cond_eq
    (child2976 : Flapjack.WordAlloc.removeDeadStructural input2976 value1492 value1 value2 = (output2976, value1492, value1))
    (child3889 : Flapjack.WordAlloc.removeDeadStructural input3889 value1492 value1 value2 = (output3889, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3890 value1492 value1 value2 = (output3890, value1832, value1) := by
  rw [input3890_def, output3890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2976]
  try dsimp only
  rw [child3889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2976_skip, output3889_skip]
  kernel_rfl

theorem node3891_cond_eq
    (child2975 : Flapjack.WordAlloc.removeDeadStructural input2975 value1491 value1 value2 = (output2975, value1492, value1))
    (child3890 : Flapjack.WordAlloc.removeDeadStructural input3890 value1492 value1 value2 = (output3890, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3891 value1491 value1 value2 = (output3891, value1832, value1) := by
  rw [input3891_def, output3891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2975]
  try dsimp only
  rw [child3890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2975_skip, output3890_skip]
  kernel_rfl

theorem node3892_cond_eq
    (child2974 : Flapjack.WordAlloc.removeDeadStructural input2974 value5 value1 value2 = (output2974, value1491, value1))
    (child3891 : Flapjack.WordAlloc.removeDeadStructural input3891 value1491 value1 value2 = (output3891, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3892 value5 value1 value2 = (output3892, value1832, value1) := by
  rw [input3892_def, output3892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2974]
  try dsimp only
  rw [child3891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2974_skip, output3891_skip]
  kernel_rfl

theorem node3893_cond_eq
    (child2971 : Flapjack.WordAlloc.removeDeadStructural input2971 value1485 value1 value2 = (output2971, value5, value1))
    (child3892 : Flapjack.WordAlloc.removeDeadStructural input3892 value5 value1 value2 = (output3892, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3893 value1485 value1 value2 = (output3893, value1832, value1) := by
  rw [input3893_def, output3893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2971]
  try dsimp only
  rw [child3892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2971_skip, output3892_skip]
  kernel_rfl

theorem node3894_cond_eq
    (child2962 : Flapjack.WordAlloc.removeDeadStructural input2962 value1485 value1 value2 = (output2962, value1485, value1))
    (child3893 : Flapjack.WordAlloc.removeDeadStructural input3893 value1485 value1 value2 = (output3893, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3894 value1485 value1 value2 = (output3894, value1832, value1) := by
  rw [input3894_def, output3894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2962]
  try dsimp only
  rw [child3893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2962_skip, output3893_skip]
  kernel_rfl

theorem node3895_cond_eq
    (child2961 : Flapjack.WordAlloc.removeDeadStructural input2961 value1484 value1 value2 = (output2961, value1485, value1))
    (child3894 : Flapjack.WordAlloc.removeDeadStructural input3894 value1485 value1 value2 = (output3894, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3895 value1484 value1 value2 = (output3895, value1832, value1) := by
  rw [input3895_def, output3895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2961]
  try dsimp only
  rw [child3894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2961_skip, output3894_skip]
  kernel_rfl

theorem node3896_cond_eq
    (child2960 : Flapjack.WordAlloc.removeDeadStructural input2960 value5 value1 value2 = (output2960, value1484, value1))
    (child3895 : Flapjack.WordAlloc.removeDeadStructural input3895 value1484 value1 value2 = (output3895, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3896 value5 value1 value2 = (output3896, value1832, value1) := by
  rw [input3896_def, output3896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2960]
  try dsimp only
  rw [child3895]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2960_skip, output3895_skip]
  kernel_rfl

theorem node3897_cond_eq
    (child2957 : Flapjack.WordAlloc.removeDeadStructural input2957 value1478 value1 value2 = (output2957, value5, value1))
    (child3896 : Flapjack.WordAlloc.removeDeadStructural input3896 value5 value1 value2 = (output3896, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3897 value1478 value1 value2 = (output3897, value1832, value1) := by
  rw [input3897_def, output3897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2957]
  try dsimp only
  rw [child3896]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2957_skip, output3896_skip]
  kernel_rfl

theorem node3898_cond_eq
    (child2948 : Flapjack.WordAlloc.removeDeadStructural input2948 value1478 value1 value2 = (output2948, value1478, value1))
    (child3897 : Flapjack.WordAlloc.removeDeadStructural input3897 value1478 value1 value2 = (output3897, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3898 value1478 value1 value2 = (output3898, value1832, value1) := by
  rw [input3898_def, output3898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2948]
  try dsimp only
  rw [child3897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2948_skip, output3897_skip]
  kernel_rfl

theorem node3899_cond_eq
    (child2947 : Flapjack.WordAlloc.removeDeadStructural input2947 value1477 value1 value2 = (output2947, value1478, value1))
    (child3898 : Flapjack.WordAlloc.removeDeadStructural input3898 value1478 value1 value2 = (output3898, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3899 value1477 value1 value2 = (output3899, value1832, value1) := by
  rw [input3899_def, output3899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2947]
  try dsimp only
  rw [child3898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2947_skip, output3898_skip]
  kernel_rfl

theorem node3900_cond_eq
    (child2946 : Flapjack.WordAlloc.removeDeadStructural input2946 value5 value1 value2 = (output2946, value1477, value1))
    (child3899 : Flapjack.WordAlloc.removeDeadStructural input3899 value1477 value1 value2 = (output3899, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3900 value5 value1 value2 = (output3900, value1832, value1) := by
  rw [input3900_def, output3900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2946]
  try dsimp only
  rw [child3899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2946_skip, output3899_skip]
  kernel_rfl

theorem node3901_cond_eq
    (child2943 : Flapjack.WordAlloc.removeDeadStructural input2943 value1471 value1 value2 = (output2943, value5, value1))
    (child3900 : Flapjack.WordAlloc.removeDeadStructural input3900 value5 value1 value2 = (output3900, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3901 value1471 value1 value2 = (output3901, value1832, value1) := by
  rw [input3901_def, output3901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2943]
  try dsimp only
  rw [child3900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2943_skip, output3900_skip]
  kernel_rfl

theorem node3902_cond_eq
    (child2934 : Flapjack.WordAlloc.removeDeadStructural input2934 value1471 value1 value2 = (output2934, value1471, value1))
    (child3901 : Flapjack.WordAlloc.removeDeadStructural input3901 value1471 value1 value2 = (output3901, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3902 value1471 value1 value2 = (output3902, value1832, value1) := by
  rw [input3902_def, output3902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2934]
  try dsimp only
  rw [child3901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2934_skip, output3901_skip]
  kernel_rfl

theorem node3903_cond_eq
    (child2933 : Flapjack.WordAlloc.removeDeadStructural input2933 value1470 value1 value2 = (output2933, value1471, value1))
    (child3902 : Flapjack.WordAlloc.removeDeadStructural input3902 value1471 value1 value2 = (output3902, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3903 value1470 value1 value2 = (output3903, value1832, value1) := by
  rw [input3903_def, output3903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2933]
  try dsimp only
  rw [child3902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2933_skip, output3902_skip]
  kernel_rfl

theorem node3904_cond_eq
    (child2932 : Flapjack.WordAlloc.removeDeadStructural input2932 value5 value1 value2 = (output2932, value1470, value1))
    (child3903 : Flapjack.WordAlloc.removeDeadStructural input3903 value1470 value1 value2 = (output3903, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3904 value5 value1 value2 = (output3904, value1832, value1) := by
  rw [input3904_def, output3904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2932]
  try dsimp only
  rw [child3903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2932_skip, output3903_skip]
  kernel_rfl

theorem node3905_cond_eq
    (child2929 : Flapjack.WordAlloc.removeDeadStructural input2929 value1464 value1 value2 = (output2929, value5, value1))
    (child3904 : Flapjack.WordAlloc.removeDeadStructural input3904 value5 value1 value2 = (output3904, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3905 value1464 value1 value2 = (output3905, value1832, value1) := by
  rw [input3905_def, output3905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2929]
  try dsimp only
  rw [child3904]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2929_skip, output3904_skip]
  kernel_rfl

theorem node3906_cond_eq
    (child2920 : Flapjack.WordAlloc.removeDeadStructural input2920 value1464 value1 value2 = (output2920, value1464, value1))
    (child3905 : Flapjack.WordAlloc.removeDeadStructural input3905 value1464 value1 value2 = (output3905, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3906 value1464 value1 value2 = (output3906, value1832, value1) := by
  rw [input3906_def, output3906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2920]
  try dsimp only
  rw [child3905]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2920_skip, output3905_skip]
  kernel_rfl

theorem node3907_cond_eq
    (child2919 : Flapjack.WordAlloc.removeDeadStructural input2919 value1463 value1 value2 = (output2919, value1464, value1))
    (child3906 : Flapjack.WordAlloc.removeDeadStructural input3906 value1464 value1 value2 = (output3906, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3907 value1463 value1 value2 = (output3907, value1832, value1) := by
  rw [input3907_def, output3907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2919]
  try dsimp only
  rw [child3906]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2919_skip, output3906_skip]
  kernel_rfl

theorem node3908_cond_eq
    (child2918 : Flapjack.WordAlloc.removeDeadStructural input2918 value5 value1 value2 = (output2918, value1463, value1))
    (child3907 : Flapjack.WordAlloc.removeDeadStructural input3907 value1463 value1 value2 = (output3907, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3908 value5 value1 value2 = (output3908, value1832, value1) := by
  rw [input3908_def, output3908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2918]
  try dsimp only
  rw [child3907]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2918_skip, output3907_skip]
  kernel_rfl

theorem node3909_cond_eq
    (child2915 : Flapjack.WordAlloc.removeDeadStructural input2915 value1457 value1 value2 = (output2915, value5, value1))
    (child3908 : Flapjack.WordAlloc.removeDeadStructural input3908 value5 value1 value2 = (output3908, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3909 value1457 value1 value2 = (output3909, value1832, value1) := by
  rw [input3909_def, output3909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2915]
  try dsimp only
  rw [child3908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2915_skip, output3908_skip]
  kernel_rfl

theorem node3910_cond_eq
    (child2906 : Flapjack.WordAlloc.removeDeadStructural input2906 value1457 value1 value2 = (output2906, value1457, value1))
    (child3909 : Flapjack.WordAlloc.removeDeadStructural input3909 value1457 value1 value2 = (output3909, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3910 value1457 value1 value2 = (output3910, value1832, value1) := by
  rw [input3910_def, output3910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2906]
  try dsimp only
  rw [child3909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2906_skip, output3909_skip]
  kernel_rfl

theorem node3911_cond_eq
    (child2905 : Flapjack.WordAlloc.removeDeadStructural input2905 value1456 value1 value2 = (output2905, value1457, value1))
    (child3910 : Flapjack.WordAlloc.removeDeadStructural input3910 value1457 value1 value2 = (output3910, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3911 value1456 value1 value2 = (output3911, value1832, value1) := by
  rw [input3911_def, output3911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2905]
  try dsimp only
  rw [child3910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2905_skip, output3910_skip]
  kernel_rfl

theorem node3912_cond_eq
    (child2904 : Flapjack.WordAlloc.removeDeadStructural input2904 value5 value1 value2 = (output2904, value1456, value1))
    (child3911 : Flapjack.WordAlloc.removeDeadStructural input3911 value1456 value1 value2 = (output3911, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3912 value5 value1 value2 = (output3912, value1832, value1) := by
  rw [input3912_def, output3912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2904]
  try dsimp only
  rw [child3911]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2904_skip, output3911_skip]
  kernel_rfl

theorem node3913_cond_eq
    (child2901 : Flapjack.WordAlloc.removeDeadStructural input2901 value1450 value1 value2 = (output2901, value5, value1))
    (child3912 : Flapjack.WordAlloc.removeDeadStructural input3912 value5 value1 value2 = (output3912, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3913 value1450 value1 value2 = (output3913, value1832, value1) := by
  rw [input3913_def, output3913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2901]
  try dsimp only
  rw [child3912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2901_skip, output3912_skip]
  kernel_rfl

theorem node3914_cond_eq
    (child2892 : Flapjack.WordAlloc.removeDeadStructural input2892 value1450 value1 value2 = (output2892, value1450, value1))
    (child3913 : Flapjack.WordAlloc.removeDeadStructural input3913 value1450 value1 value2 = (output3913, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3914 value1450 value1 value2 = (output3914, value1832, value1) := by
  rw [input3914_def, output3914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2892]
  try dsimp only
  rw [child3913]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2892_skip, output3913_skip]
  kernel_rfl

theorem node3915_cond_eq
    (child2891 : Flapjack.WordAlloc.removeDeadStructural input2891 value1449 value1 value2 = (output2891, value1450, value1))
    (child3914 : Flapjack.WordAlloc.removeDeadStructural input3914 value1450 value1 value2 = (output3914, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3915 value1449 value1 value2 = (output3915, value1832, value1) := by
  rw [input3915_def, output3915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2891]
  try dsimp only
  rw [child3914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2891_skip, output3914_skip]
  kernel_rfl

theorem node3916_cond_eq
    (child2890 : Flapjack.WordAlloc.removeDeadStructural input2890 value5 value1 value2 = (output2890, value1449, value1))
    (child3915 : Flapjack.WordAlloc.removeDeadStructural input3915 value1449 value1 value2 = (output3915, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3916 value5 value1 value2 = (output3916, value1832, value1) := by
  rw [input3916_def, output3916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2890]
  try dsimp only
  rw [child3915]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2890_skip, output3915_skip]
  kernel_rfl

theorem node3917_cond_eq
    (child2887 : Flapjack.WordAlloc.removeDeadStructural input2887 value1443 value1 value2 = (output2887, value5, value1))
    (child3916 : Flapjack.WordAlloc.removeDeadStructural input3916 value5 value1 value2 = (output3916, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3917 value1443 value1 value2 = (output3917, value1832, value1) := by
  rw [input3917_def, output3917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2887]
  try dsimp only
  rw [child3916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2887_skip, output3916_skip]
  kernel_rfl

theorem node3918_cond_eq
    (child2878 : Flapjack.WordAlloc.removeDeadStructural input2878 value1443 value1 value2 = (output2878, value1443, value1))
    (child3917 : Flapjack.WordAlloc.removeDeadStructural input3917 value1443 value1 value2 = (output3917, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3918 value1443 value1 value2 = (output3918, value1832, value1) := by
  rw [input3918_def, output3918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2878]
  try dsimp only
  rw [child3917]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2878_skip, output3917_skip]
  kernel_rfl

theorem node3919_cond_eq
    (child2877 : Flapjack.WordAlloc.removeDeadStructural input2877 value1442 value1 value2 = (output2877, value1443, value1))
    (child3918 : Flapjack.WordAlloc.removeDeadStructural input3918 value1443 value1 value2 = (output3918, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3919 value1442 value1 value2 = (output3919, value1832, value1) := by
  rw [input3919_def, output3919_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2877]
  try dsimp only
  rw [child3918]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2877_skip, output3918_skip]
  kernel_rfl

theorem node3920_cond_eq
    (child2876 : Flapjack.WordAlloc.removeDeadStructural input2876 value5 value1 value2 = (output2876, value1442, value1))
    (child3919 : Flapjack.WordAlloc.removeDeadStructural input3919 value1442 value1 value2 = (output3919, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3920 value5 value1 value2 = (output3920, value1832, value1) := by
  rw [input3920_def, output3920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2876]
  try dsimp only
  rw [child3919]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2876_skip, output3919_skip]
  kernel_rfl

theorem node3921_cond_eq
    (child2873 : Flapjack.WordAlloc.removeDeadStructural input2873 value1436 value1 value2 = (output2873, value5, value1))
    (child3920 : Flapjack.WordAlloc.removeDeadStructural input3920 value5 value1 value2 = (output3920, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3921 value1436 value1 value2 = (output3921, value1832, value1) := by
  rw [input3921_def, output3921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2873]
  try dsimp only
  rw [child3920]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2873_skip, output3920_skip]
  kernel_rfl

theorem node3922_cond_eq
    (child2864 : Flapjack.WordAlloc.removeDeadStructural input2864 value1436 value1 value2 = (output2864, value1436, value1))
    (child3921 : Flapjack.WordAlloc.removeDeadStructural input3921 value1436 value1 value2 = (output3921, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3922 value1436 value1 value2 = (output3922, value1832, value1) := by
  rw [input3922_def, output3922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2864]
  try dsimp only
  rw [child3921]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2864_skip, output3921_skip]
  kernel_rfl

theorem node3923_cond_eq
    (child2863 : Flapjack.WordAlloc.removeDeadStructural input2863 value1435 value1 value2 = (output2863, value1436, value1))
    (child3922 : Flapjack.WordAlloc.removeDeadStructural input3922 value1436 value1 value2 = (output3922, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3923 value1435 value1 value2 = (output3923, value1832, value1) := by
  rw [input3923_def, output3923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2863]
  try dsimp only
  rw [child3922]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2863_skip, output3922_skip]
  kernel_rfl

theorem node3924_cond_eq
    (child2862 : Flapjack.WordAlloc.removeDeadStructural input2862 value5 value1 value2 = (output2862, value1435, value1))
    (child3923 : Flapjack.WordAlloc.removeDeadStructural input3923 value1435 value1 value2 = (output3923, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3924 value5 value1 value2 = (output3924, value1832, value1) := by
  rw [input3924_def, output3924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2862]
  try dsimp only
  rw [child3923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2862_skip, output3923_skip]
  kernel_rfl

theorem node3925_cond_eq
    (child2859 : Flapjack.WordAlloc.removeDeadStructural input2859 value1429 value1 value2 = (output2859, value5, value1))
    (child3924 : Flapjack.WordAlloc.removeDeadStructural input3924 value5 value1 value2 = (output3924, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3925 value1429 value1 value2 = (output3925, value1832, value1) := by
  rw [input3925_def, output3925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2859]
  try dsimp only
  rw [child3924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2859_skip, output3924_skip]
  kernel_rfl

theorem node3926_cond_eq
    (child2850 : Flapjack.WordAlloc.removeDeadStructural input2850 value1429 value1 value2 = (output2850, value1429, value1))
    (child3925 : Flapjack.WordAlloc.removeDeadStructural input3925 value1429 value1 value2 = (output3925, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3926 value1429 value1 value2 = (output3926, value1832, value1) := by
  rw [input3926_def, output3926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2850]
  try dsimp only
  rw [child3925]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2850_skip, output3925_skip]
  kernel_rfl

theorem node3927_cond_eq
    (child2849 : Flapjack.WordAlloc.removeDeadStructural input2849 value1428 value1 value2 = (output2849, value1429, value1))
    (child3926 : Flapjack.WordAlloc.removeDeadStructural input3926 value1429 value1 value2 = (output3926, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3927 value1428 value1 value2 = (output3927, value1832, value1) := by
  rw [input3927_def, output3927_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2849]
  try dsimp only
  rw [child3926]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2849_skip, output3926_skip]
  kernel_rfl

theorem node3928_cond_eq
    (child2848 : Flapjack.WordAlloc.removeDeadStructural input2848 value5 value1 value2 = (output2848, value1428, value1))
    (child3927 : Flapjack.WordAlloc.removeDeadStructural input3927 value1428 value1 value2 = (output3927, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3928 value5 value1 value2 = (output3928, value1832, value1) := by
  rw [input3928_def, output3928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2848]
  try dsimp only
  rw [child3927]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2848_skip, output3927_skip]
  kernel_rfl

theorem node3929_cond_eq
    (child2845 : Flapjack.WordAlloc.removeDeadStructural input2845 value1422 value1 value2 = (output2845, value5, value1))
    (child3928 : Flapjack.WordAlloc.removeDeadStructural input3928 value5 value1 value2 = (output3928, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3929 value1422 value1 value2 = (output3929, value1832, value1) := by
  rw [input3929_def, output3929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2845]
  try dsimp only
  rw [child3928]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2845_skip, output3928_skip]
  kernel_rfl

theorem node3930_cond_eq
    (child2836 : Flapjack.WordAlloc.removeDeadStructural input2836 value1422 value1 value2 = (output2836, value1422, value1))
    (child3929 : Flapjack.WordAlloc.removeDeadStructural input3929 value1422 value1 value2 = (output3929, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3930 value1422 value1 value2 = (output3930, value1832, value1) := by
  rw [input3930_def, output3930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2836]
  try dsimp only
  rw [child3929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2836_skip, output3929_skip]
  kernel_rfl

theorem node3931_cond_eq
    (child2835 : Flapjack.WordAlloc.removeDeadStructural input2835 value1421 value1 value2 = (output2835, value1422, value1))
    (child3930 : Flapjack.WordAlloc.removeDeadStructural input3930 value1422 value1 value2 = (output3930, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3931 value1421 value1 value2 = (output3931, value1832, value1) := by
  rw [input3931_def, output3931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2835]
  try dsimp only
  rw [child3930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2835_skip, output3930_skip]
  kernel_rfl

theorem node3932_cond_eq
    (child2834 : Flapjack.WordAlloc.removeDeadStructural input2834 value5 value1 value2 = (output2834, value1421, value1))
    (child3931 : Flapjack.WordAlloc.removeDeadStructural input3931 value1421 value1 value2 = (output3931, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3932 value5 value1 value2 = (output3932, value1832, value1) := by
  rw [input3932_def, output3932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2834]
  try dsimp only
  rw [child3931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2834_skip, output3931_skip]
  kernel_rfl

theorem node3933_cond_eq
    (child2831 : Flapjack.WordAlloc.removeDeadStructural input2831 value1415 value1 value2 = (output2831, value5, value1))
    (child3932 : Flapjack.WordAlloc.removeDeadStructural input3932 value5 value1 value2 = (output3932, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3933 value1415 value1 value2 = (output3933, value1832, value1) := by
  rw [input3933_def, output3933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2831]
  try dsimp only
  rw [child3932]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2831_skip, output3932_skip]
  kernel_rfl

theorem node3934_cond_eq
    (child2822 : Flapjack.WordAlloc.removeDeadStructural input2822 value1415 value1 value2 = (output2822, value1415, value1))
    (child3933 : Flapjack.WordAlloc.removeDeadStructural input3933 value1415 value1 value2 = (output3933, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3934 value1415 value1 value2 = (output3934, value1832, value1) := by
  rw [input3934_def, output3934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2822]
  try dsimp only
  rw [child3933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2822_skip, output3933_skip]
  kernel_rfl

theorem node3935_cond_eq
    (child2821 : Flapjack.WordAlloc.removeDeadStructural input2821 value1414 value1 value2 = (output2821, value1415, value1))
    (child3934 : Flapjack.WordAlloc.removeDeadStructural input3934 value1415 value1 value2 = (output3934, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3935 value1414 value1 value2 = (output3935, value1832, value1) := by
  rw [input3935_def, output3935_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2821]
  try dsimp only
  rw [child3934]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2821_skip, output3934_skip]
  kernel_rfl

theorem node3936_cond_eq
    (child2820 : Flapjack.WordAlloc.removeDeadStructural input2820 value5 value1 value2 = (output2820, value1414, value1))
    (child3935 : Flapjack.WordAlloc.removeDeadStructural input3935 value1414 value1 value2 = (output3935, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3936 value5 value1 value2 = (output3936, value1832, value1) := by
  rw [input3936_def, output3936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2820]
  try dsimp only
  rw [child3935]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2820_skip, output3935_skip]
  kernel_rfl

theorem node3937_cond_eq
    (child2817 : Flapjack.WordAlloc.removeDeadStructural input2817 value1408 value1 value2 = (output2817, value5, value1))
    (child3936 : Flapjack.WordAlloc.removeDeadStructural input3936 value5 value1 value2 = (output3936, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3937 value1408 value1 value2 = (output3937, value1832, value1) := by
  rw [input3937_def, output3937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2817]
  try dsimp only
  rw [child3936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2817_skip, output3936_skip]
  kernel_rfl

theorem node3938_cond_eq
    (child2808 : Flapjack.WordAlloc.removeDeadStructural input2808 value1408 value1 value2 = (output2808, value1408, value1))
    (child3937 : Flapjack.WordAlloc.removeDeadStructural input3937 value1408 value1 value2 = (output3937, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3938 value1408 value1 value2 = (output3938, value1832, value1) := by
  rw [input3938_def, output3938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2808]
  try dsimp only
  rw [child3937]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2808_skip, output3937_skip]
  kernel_rfl

theorem node3939_cond_eq
    (child2807 : Flapjack.WordAlloc.removeDeadStructural input2807 value1407 value1 value2 = (output2807, value1408, value1))
    (child3938 : Flapjack.WordAlloc.removeDeadStructural input3938 value1408 value1 value2 = (output3938, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3939 value1407 value1 value2 = (output3939, value1832, value1) := by
  rw [input3939_def, output3939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2807]
  try dsimp only
  rw [child3938]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2807_skip, output3938_skip]
  kernel_rfl

theorem node3940_cond_eq
    (child2806 : Flapjack.WordAlloc.removeDeadStructural input2806 value5 value1 value2 = (output2806, value1407, value1))
    (child3939 : Flapjack.WordAlloc.removeDeadStructural input3939 value1407 value1 value2 = (output3939, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3940 value5 value1 value2 = (output3940, value1832, value1) := by
  rw [input3940_def, output3940_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2806]
  try dsimp only
  rw [child3939]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2806_skip, output3939_skip]
  kernel_rfl

theorem node3941_cond_eq
    (child2803 : Flapjack.WordAlloc.removeDeadStructural input2803 value1401 value1 value2 = (output2803, value5, value1))
    (child3940 : Flapjack.WordAlloc.removeDeadStructural input3940 value5 value1 value2 = (output3940, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3941 value1401 value1 value2 = (output3941, value1832, value1) := by
  rw [input3941_def, output3941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2803]
  try dsimp only
  rw [child3940]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2803_skip, output3940_skip]
  kernel_rfl

theorem node3942_cond_eq
    (child2794 : Flapjack.WordAlloc.removeDeadStructural input2794 value1401 value1 value2 = (output2794, value1401, value1))
    (child3941 : Flapjack.WordAlloc.removeDeadStructural input3941 value1401 value1 value2 = (output3941, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3942 value1401 value1 value2 = (output3942, value1832, value1) := by
  rw [input3942_def, output3942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2794]
  try dsimp only
  rw [child3941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2794_skip, output3941_skip]
  kernel_rfl

theorem node3943_cond_eq
    (child2793 : Flapjack.WordAlloc.removeDeadStructural input2793 value1400 value1 value2 = (output2793, value1401, value1))
    (child3942 : Flapjack.WordAlloc.removeDeadStructural input3942 value1401 value1 value2 = (output3942, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3943 value1400 value1 value2 = (output3943, value1832, value1) := by
  rw [input3943_def, output3943_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2793]
  try dsimp only
  rw [child3942]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2793_skip, output3942_skip]
  kernel_rfl

theorem node3944_cond_eq
    (child2792 : Flapjack.WordAlloc.removeDeadStructural input2792 value5 value1 value2 = (output2792, value1400, value1))
    (child3943 : Flapjack.WordAlloc.removeDeadStructural input3943 value1400 value1 value2 = (output3943, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3944 value5 value1 value2 = (output3944, value1832, value1) := by
  rw [input3944_def, output3944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2792]
  try dsimp only
  rw [child3943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2792_skip, output3943_skip]
  kernel_rfl

theorem node3945_cond_eq
    (child2789 : Flapjack.WordAlloc.removeDeadStructural input2789 value1394 value1 value2 = (output2789, value5, value1))
    (child3944 : Flapjack.WordAlloc.removeDeadStructural input3944 value5 value1 value2 = (output3944, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3945 value1394 value1 value2 = (output3945, value1832, value1) := by
  rw [input3945_def, output3945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2789]
  try dsimp only
  rw [child3944]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2789_skip, output3944_skip]
  kernel_rfl

theorem node3946_cond_eq
    (child2780 : Flapjack.WordAlloc.removeDeadStructural input2780 value1394 value1 value2 = (output2780, value1394, value1))
    (child3945 : Flapjack.WordAlloc.removeDeadStructural input3945 value1394 value1 value2 = (output3945, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3946 value1394 value1 value2 = (output3946, value1832, value1) := by
  rw [input3946_def, output3946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2780]
  try dsimp only
  rw [child3945]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2780_skip, output3945_skip]
  kernel_rfl

theorem node3947_cond_eq
    (child2779 : Flapjack.WordAlloc.removeDeadStructural input2779 value1393 value1 value2 = (output2779, value1394, value1))
    (child3946 : Flapjack.WordAlloc.removeDeadStructural input3946 value1394 value1 value2 = (output3946, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3947 value1393 value1 value2 = (output3947, value1832, value1) := by
  rw [input3947_def, output3947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2779]
  try dsimp only
  rw [child3946]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2779_skip, output3946_skip]
  kernel_rfl

theorem node3948_cond_eq
    (child2778 : Flapjack.WordAlloc.removeDeadStructural input2778 value5 value1 value2 = (output2778, value1393, value1))
    (child3947 : Flapjack.WordAlloc.removeDeadStructural input3947 value1393 value1 value2 = (output3947, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3948 value5 value1 value2 = (output3948, value1832, value1) := by
  rw [input3948_def, output3948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2778]
  try dsimp only
  rw [child3947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2778_skip, output3947_skip]
  kernel_rfl

theorem node3949_cond_eq
    (child2775 : Flapjack.WordAlloc.removeDeadStructural input2775 value1387 value1 value2 = (output2775, value5, value1))
    (child3948 : Flapjack.WordAlloc.removeDeadStructural input3948 value5 value1 value2 = (output3948, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3949 value1387 value1 value2 = (output3949, value1832, value1) := by
  rw [input3949_def, output3949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2775]
  try dsimp only
  rw [child3948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2775_skip, output3948_skip]
  kernel_rfl

theorem node3950_cond_eq
    (child2766 : Flapjack.WordAlloc.removeDeadStructural input2766 value1387 value1 value2 = (output2766, value1387, value1))
    (child3949 : Flapjack.WordAlloc.removeDeadStructural input3949 value1387 value1 value2 = (output3949, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3950 value1387 value1 value2 = (output3950, value1832, value1) := by
  rw [input3950_def, output3950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2766]
  try dsimp only
  rw [child3949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2766_skip, output3949_skip]
  kernel_rfl

theorem node3951_cond_eq
    (child2765 : Flapjack.WordAlloc.removeDeadStructural input2765 value1386 value1 value2 = (output2765, value1387, value1))
    (child3950 : Flapjack.WordAlloc.removeDeadStructural input3950 value1387 value1 value2 = (output3950, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3951 value1386 value1 value2 = (output3951, value1832, value1) := by
  rw [input3951_def, output3951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2765]
  try dsimp only
  rw [child3950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2765_skip, output3950_skip]
  kernel_rfl

theorem node3952_cond_eq
    (child2764 : Flapjack.WordAlloc.removeDeadStructural input2764 value5 value1 value2 = (output2764, value1386, value1))
    (child3951 : Flapjack.WordAlloc.removeDeadStructural input3951 value1386 value1 value2 = (output3951, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3952 value5 value1 value2 = (output3952, value1832, value1) := by
  rw [input3952_def, output3952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2764]
  try dsimp only
  rw [child3951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2764_skip, output3951_skip]
  kernel_rfl

theorem node3953_cond_eq
    (child2761 : Flapjack.WordAlloc.removeDeadStructural input2761 value1380 value1 value2 = (output2761, value5, value1))
    (child3952 : Flapjack.WordAlloc.removeDeadStructural input3952 value5 value1 value2 = (output3952, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3953 value1380 value1 value2 = (output3953, value1832, value1) := by
  rw [input3953_def, output3953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2761]
  try dsimp only
  rw [child3952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2761_skip, output3952_skip]
  kernel_rfl

theorem node3954_cond_eq
    (child2752 : Flapjack.WordAlloc.removeDeadStructural input2752 value1380 value1 value2 = (output2752, value1380, value1))
    (child3953 : Flapjack.WordAlloc.removeDeadStructural input3953 value1380 value1 value2 = (output3953, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3954 value1380 value1 value2 = (output3954, value1832, value1) := by
  rw [input3954_def, output3954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2752]
  try dsimp only
  rw [child3953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2752_skip, output3953_skip]
  kernel_rfl

theorem node3955_cond_eq
    (child2751 : Flapjack.WordAlloc.removeDeadStructural input2751 value1379 value1 value2 = (output2751, value1380, value1))
    (child3954 : Flapjack.WordAlloc.removeDeadStructural input3954 value1380 value1 value2 = (output3954, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3955 value1379 value1 value2 = (output3955, value1832, value1) := by
  rw [input3955_def, output3955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2751]
  try dsimp only
  rw [child3954]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2751_skip, output3954_skip]
  kernel_rfl

theorem node3956_cond_eq
    (child2750 : Flapjack.WordAlloc.removeDeadStructural input2750 value5 value1 value2 = (output2750, value1379, value1))
    (child3955 : Flapjack.WordAlloc.removeDeadStructural input3955 value1379 value1 value2 = (output3955, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3956 value5 value1 value2 = (output3956, value1832, value1) := by
  rw [input3956_def, output3956_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2750]
  try dsimp only
  rw [child3955]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2750_skip, output3955_skip]
  kernel_rfl

theorem node3957_cond_eq
    (child2747 : Flapjack.WordAlloc.removeDeadStructural input2747 value1373 value1 value2 = (output2747, value5, value1))
    (child3956 : Flapjack.WordAlloc.removeDeadStructural input3956 value5 value1 value2 = (output3956, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3957 value1373 value1 value2 = (output3957, value1832, value1) := by
  rw [input3957_def, output3957_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2747]
  try dsimp only
  rw [child3956]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2747_skip, output3956_skip]
  kernel_rfl

theorem node3958_cond_eq
    (child2738 : Flapjack.WordAlloc.removeDeadStructural input2738 value1373 value1 value2 = (output2738, value1373, value1))
    (child3957 : Flapjack.WordAlloc.removeDeadStructural input3957 value1373 value1 value2 = (output3957, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3958 value1373 value1 value2 = (output3958, value1832, value1) := by
  rw [input3958_def, output3958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2738]
  try dsimp only
  rw [child3957]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2738_skip, output3957_skip]
  kernel_rfl

theorem node3959_cond_eq
    (child2737 : Flapjack.WordAlloc.removeDeadStructural input2737 value1372 value1 value2 = (output2737, value1373, value1))
    (child3958 : Flapjack.WordAlloc.removeDeadStructural input3958 value1373 value1 value2 = (output3958, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3959 value1372 value1 value2 = (output3959, value1832, value1) := by
  rw [input3959_def, output3959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2737]
  try dsimp only
  rw [child3958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2737_skip, output3958_skip]
  kernel_rfl

theorem node3960_cond_eq
    (child2736 : Flapjack.WordAlloc.removeDeadStructural input2736 value5 value1 value2 = (output2736, value1372, value1))
    (child3959 : Flapjack.WordAlloc.removeDeadStructural input3959 value1372 value1 value2 = (output3959, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3960 value5 value1 value2 = (output3960, value1832, value1) := by
  rw [input3960_def, output3960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2736]
  try dsimp only
  rw [child3959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2736_skip, output3959_skip]
  kernel_rfl

theorem node3961_cond_eq
    (child2733 : Flapjack.WordAlloc.removeDeadStructural input2733 value1366 value1 value2 = (output2733, value5, value1))
    (child3960 : Flapjack.WordAlloc.removeDeadStructural input3960 value5 value1 value2 = (output3960, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3961 value1366 value1 value2 = (output3961, value1832, value1) := by
  rw [input3961_def, output3961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2733]
  try dsimp only
  rw [child3960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2733_skip, output3960_skip]
  kernel_rfl

theorem node3962_cond_eq
    (child2724 : Flapjack.WordAlloc.removeDeadStructural input2724 value1366 value1 value2 = (output2724, value1366, value1))
    (child3961 : Flapjack.WordAlloc.removeDeadStructural input3961 value1366 value1 value2 = (output3961, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3962 value1366 value1 value2 = (output3962, value1832, value1) := by
  rw [input3962_def, output3962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2724]
  try dsimp only
  rw [child3961]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2724_skip, output3961_skip]
  kernel_rfl

theorem node3963_cond_eq
    (child2723 : Flapjack.WordAlloc.removeDeadStructural input2723 value1365 value1 value2 = (output2723, value1366, value1))
    (child3962 : Flapjack.WordAlloc.removeDeadStructural input3962 value1366 value1 value2 = (output3962, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3963 value1365 value1 value2 = (output3963, value1832, value1) := by
  rw [input3963_def, output3963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2723]
  try dsimp only
  rw [child3962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2723_skip, output3962_skip]
  kernel_rfl

theorem node3964_cond_eq
    (child2722 : Flapjack.WordAlloc.removeDeadStructural input2722 value5 value1 value2 = (output2722, value1365, value1))
    (child3963 : Flapjack.WordAlloc.removeDeadStructural input3963 value1365 value1 value2 = (output3963, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3964 value5 value1 value2 = (output3964, value1832, value1) := by
  rw [input3964_def, output3964_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2722]
  try dsimp only
  rw [child3963]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2722_skip, output3963_skip]
  kernel_rfl

theorem node3965_cond_eq
    (child2719 : Flapjack.WordAlloc.removeDeadStructural input2719 value1359 value1 value2 = (output2719, value5, value1))
    (child3964 : Flapjack.WordAlloc.removeDeadStructural input3964 value5 value1 value2 = (output3964, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3965 value1359 value1 value2 = (output3965, value1832, value1) := by
  rw [input3965_def, output3965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2719]
  try dsimp only
  rw [child3964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2719_skip, output3964_skip]
  kernel_rfl

theorem node3966_cond_eq
    (child2710 : Flapjack.WordAlloc.removeDeadStructural input2710 value1359 value1 value2 = (output2710, value1359, value1))
    (child3965 : Flapjack.WordAlloc.removeDeadStructural input3965 value1359 value1 value2 = (output3965, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3966 value1359 value1 value2 = (output3966, value1832, value1) := by
  rw [input3966_def, output3966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2710]
  try dsimp only
  rw [child3965]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2710_skip, output3965_skip]
  kernel_rfl

theorem node3967_cond_eq
    (child2709 : Flapjack.WordAlloc.removeDeadStructural input2709 value1358 value1 value2 = (output2709, value1359, value1))
    (child3966 : Flapjack.WordAlloc.removeDeadStructural input3966 value1359 value1 value2 = (output3966, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3967 value1358 value1 value2 = (output3967, value1832, value1) := by
  rw [input3967_def, output3967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2709]
  try dsimp only
  rw [child3966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2709_skip, output3966_skip]
  kernel_rfl

theorem node3968_cond_eq
    (child2708 : Flapjack.WordAlloc.removeDeadStructural input2708 value5 value1 value2 = (output2708, value1358, value1))
    (child3967 : Flapjack.WordAlloc.removeDeadStructural input3967 value1358 value1 value2 = (output3967, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3968 value5 value1 value2 = (output3968, value1832, value1) := by
  rw [input3968_def, output3968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2708]
  try dsimp only
  rw [child3967]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2708_skip, output3967_skip]
  kernel_rfl

theorem node3969_cond_eq
    (child2705 : Flapjack.WordAlloc.removeDeadStructural input2705 value1352 value1 value2 = (output2705, value5, value1))
    (child3968 : Flapjack.WordAlloc.removeDeadStructural input3968 value5 value1 value2 = (output3968, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3969 value1352 value1 value2 = (output3969, value1832, value1) := by
  rw [input3969_def, output3969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2705]
  try dsimp only
  rw [child3968]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2705_skip, output3968_skip]
  kernel_rfl

theorem node3970_cond_eq
    (child2696 : Flapjack.WordAlloc.removeDeadStructural input2696 value1352 value1 value2 = (output2696, value1352, value1))
    (child3969 : Flapjack.WordAlloc.removeDeadStructural input3969 value1352 value1 value2 = (output3969, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3970 value1352 value1 value2 = (output3970, value1832, value1) := by
  rw [input3970_def, output3970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2696]
  try dsimp only
  rw [child3969]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2696_skip, output3969_skip]
  kernel_rfl

theorem node3971_cond_eq
    (child2695 : Flapjack.WordAlloc.removeDeadStructural input2695 value1351 value1 value2 = (output2695, value1352, value1))
    (child3970 : Flapjack.WordAlloc.removeDeadStructural input3970 value1352 value1 value2 = (output3970, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3971 value1351 value1 value2 = (output3971, value1832, value1) := by
  rw [input3971_def, output3971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2695]
  try dsimp only
  rw [child3970]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2695_skip, output3970_skip]
  kernel_rfl

theorem node3972_cond_eq
    (child2694 : Flapjack.WordAlloc.removeDeadStructural input2694 value5 value1 value2 = (output2694, value1351, value1))
    (child3971 : Flapjack.WordAlloc.removeDeadStructural input3971 value1351 value1 value2 = (output3971, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3972 value5 value1 value2 = (output3972, value1832, value1) := by
  rw [input3972_def, output3972_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2694]
  try dsimp only
  rw [child3971]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2694_skip, output3971_skip]
  kernel_rfl

theorem node3973_cond_eq
    (child2691 : Flapjack.WordAlloc.removeDeadStructural input2691 value1345 value1 value2 = (output2691, value5, value1))
    (child3972 : Flapjack.WordAlloc.removeDeadStructural input3972 value5 value1 value2 = (output3972, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3973 value1345 value1 value2 = (output3973, value1832, value1) := by
  rw [input3973_def, output3973_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2691]
  try dsimp only
  rw [child3972]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2691_skip, output3972_skip]
  kernel_rfl

theorem node3974_cond_eq
    (child2682 : Flapjack.WordAlloc.removeDeadStructural input2682 value1345 value1 value2 = (output2682, value1345, value1))
    (child3973 : Flapjack.WordAlloc.removeDeadStructural input3973 value1345 value1 value2 = (output3973, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3974 value1345 value1 value2 = (output3974, value1832, value1) := by
  rw [input3974_def, output3974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2682]
  try dsimp only
  rw [child3973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2682_skip, output3973_skip]
  kernel_rfl

theorem node3975_cond_eq
    (child2681 : Flapjack.WordAlloc.removeDeadStructural input2681 value1344 value1 value2 = (output2681, value1345, value1))
    (child3974 : Flapjack.WordAlloc.removeDeadStructural input3974 value1345 value1 value2 = (output3974, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3975 value1344 value1 value2 = (output3975, value1832, value1) := by
  rw [input3975_def, output3975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2681]
  try dsimp only
  rw [child3974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2681_skip, output3974_skip]
  kernel_rfl

theorem node3976_cond_eq
    (child2680 : Flapjack.WordAlloc.removeDeadStructural input2680 value5 value1 value2 = (output2680, value1344, value1))
    (child3975 : Flapjack.WordAlloc.removeDeadStructural input3975 value1344 value1 value2 = (output3975, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3976 value5 value1 value2 = (output3976, value1832, value1) := by
  rw [input3976_def, output3976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2680]
  try dsimp only
  rw [child3975]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2680_skip, output3975_skip]
  kernel_rfl

theorem node3977_cond_eq
    (child2677 : Flapjack.WordAlloc.removeDeadStructural input2677 value1338 value1 value2 = (output2677, value5, value1))
    (child3976 : Flapjack.WordAlloc.removeDeadStructural input3976 value5 value1 value2 = (output3976, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3977 value1338 value1 value2 = (output3977, value1832, value1) := by
  rw [input3977_def, output3977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2677]
  try dsimp only
  rw [child3976]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2677_skip, output3976_skip]
  kernel_rfl

theorem node3978_cond_eq
    (child2668 : Flapjack.WordAlloc.removeDeadStructural input2668 value1338 value1 value2 = (output2668, value1338, value1))
    (child3977 : Flapjack.WordAlloc.removeDeadStructural input3977 value1338 value1 value2 = (output3977, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3978 value1338 value1 value2 = (output3978, value1832, value1) := by
  rw [input3978_def, output3978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2668]
  try dsimp only
  rw [child3977]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2668_skip, output3977_skip]
  kernel_rfl

theorem node3979_cond_eq
    (child2667 : Flapjack.WordAlloc.removeDeadStructural input2667 value1337 value1 value2 = (output2667, value1338, value1))
    (child3978 : Flapjack.WordAlloc.removeDeadStructural input3978 value1338 value1 value2 = (output3978, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3979 value1337 value1 value2 = (output3979, value1832, value1) := by
  rw [input3979_def, output3979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2667]
  try dsimp only
  rw [child3978]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2667_skip, output3978_skip]
  kernel_rfl

theorem node3980_cond_eq
    (child2666 : Flapjack.WordAlloc.removeDeadStructural input2666 value5 value1 value2 = (output2666, value1337, value1))
    (child3979 : Flapjack.WordAlloc.removeDeadStructural input3979 value1337 value1 value2 = (output3979, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3980 value5 value1 value2 = (output3980, value1832, value1) := by
  rw [input3980_def, output3980_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2666]
  try dsimp only
  rw [child3979]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2666_skip, output3979_skip]
  kernel_rfl

theorem node3981_cond_eq
    (child2663 : Flapjack.WordAlloc.removeDeadStructural input2663 value1331 value1 value2 = (output2663, value5, value1))
    (child3980 : Flapjack.WordAlloc.removeDeadStructural input3980 value5 value1 value2 = (output3980, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3981 value1331 value1 value2 = (output3981, value1832, value1) := by
  rw [input3981_def, output3981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2663]
  try dsimp only
  rw [child3980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2663_skip, output3980_skip]
  kernel_rfl

theorem node3982_cond_eq
    (child2654 : Flapjack.WordAlloc.removeDeadStructural input2654 value1331 value1 value2 = (output2654, value1331, value1))
    (child3981 : Flapjack.WordAlloc.removeDeadStructural input3981 value1331 value1 value2 = (output3981, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3982 value1331 value1 value2 = (output3982, value1832, value1) := by
  rw [input3982_def, output3982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2654]
  try dsimp only
  rw [child3981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2654_skip, output3981_skip]
  kernel_rfl

theorem node3983_cond_eq
    (child2653 : Flapjack.WordAlloc.removeDeadStructural input2653 value1330 value1 value2 = (output2653, value1331, value1))
    (child3982 : Flapjack.WordAlloc.removeDeadStructural input3982 value1331 value1 value2 = (output3982, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3983 value1330 value1 value2 = (output3983, value1832, value1) := by
  rw [input3983_def, output3983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2653]
  try dsimp only
  rw [child3982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2653_skip, output3982_skip]
  kernel_rfl

theorem node3984_cond_eq
    (child2652 : Flapjack.WordAlloc.removeDeadStructural input2652 value5 value1 value2 = (output2652, value1330, value1))
    (child3983 : Flapjack.WordAlloc.removeDeadStructural input3983 value1330 value1 value2 = (output3983, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3984 value5 value1 value2 = (output3984, value1832, value1) := by
  rw [input3984_def, output3984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2652]
  try dsimp only
  rw [child3983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2652_skip, output3983_skip]
  kernel_rfl

theorem node3985_cond_eq
    (child2649 : Flapjack.WordAlloc.removeDeadStructural input2649 value1324 value1 value2 = (output2649, value5, value1))
    (child3984 : Flapjack.WordAlloc.removeDeadStructural input3984 value5 value1 value2 = (output3984, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3985 value1324 value1 value2 = (output3985, value1832, value1) := by
  rw [input3985_def, output3985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2649]
  try dsimp only
  rw [child3984]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2649_skip, output3984_skip]
  kernel_rfl

theorem node3986_cond_eq
    (child2640 : Flapjack.WordAlloc.removeDeadStructural input2640 value1324 value1 value2 = (output2640, value1324, value1))
    (child3985 : Flapjack.WordAlloc.removeDeadStructural input3985 value1324 value1 value2 = (output3985, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3986 value1324 value1 value2 = (output3986, value1832, value1) := by
  rw [input3986_def, output3986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2640]
  try dsimp only
  rw [child3985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2640_skip, output3985_skip]
  kernel_rfl

theorem node3987_cond_eq
    (child2639 : Flapjack.WordAlloc.removeDeadStructural input2639 value1323 value1 value2 = (output2639, value1324, value1))
    (child3986 : Flapjack.WordAlloc.removeDeadStructural input3986 value1324 value1 value2 = (output3986, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3987 value1323 value1 value2 = (output3987, value1832, value1) := by
  rw [input3987_def, output3987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2639]
  try dsimp only
  rw [child3986]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2639_skip, output3986_skip]
  kernel_rfl

theorem node3988_cond_eq
    (child2638 : Flapjack.WordAlloc.removeDeadStructural input2638 value5 value1 value2 = (output2638, value1323, value1))
    (child3987 : Flapjack.WordAlloc.removeDeadStructural input3987 value1323 value1 value2 = (output3987, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3988 value5 value1 value2 = (output3988, value1832, value1) := by
  rw [input3988_def, output3988_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2638]
  try dsimp only
  rw [child3987]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2638_skip, output3987_skip]
  kernel_rfl

theorem node3989_cond_eq
    (child2635 : Flapjack.WordAlloc.removeDeadStructural input2635 value1317 value1 value2 = (output2635, value5, value1))
    (child3988 : Flapjack.WordAlloc.removeDeadStructural input3988 value5 value1 value2 = (output3988, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3989 value1317 value1 value2 = (output3989, value1832, value1) := by
  rw [input3989_def, output3989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2635]
  try dsimp only
  rw [child3988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2635_skip, output3988_skip]
  kernel_rfl

theorem node3990_cond_eq
    (child2626 : Flapjack.WordAlloc.removeDeadStructural input2626 value1317 value1 value2 = (output2626, value1317, value1))
    (child3989 : Flapjack.WordAlloc.removeDeadStructural input3989 value1317 value1 value2 = (output3989, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3990 value1317 value1 value2 = (output3990, value1832, value1) := by
  rw [input3990_def, output3990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2626]
  try dsimp only
  rw [child3989]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2626_skip, output3989_skip]
  kernel_rfl

theorem node3991_cond_eq
    (child2625 : Flapjack.WordAlloc.removeDeadStructural input2625 value1316 value1 value2 = (output2625, value1317, value1))
    (child3990 : Flapjack.WordAlloc.removeDeadStructural input3990 value1317 value1 value2 = (output3990, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3991 value1316 value1 value2 = (output3991, value1832, value1) := by
  rw [input3991_def, output3991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2625]
  try dsimp only
  rw [child3990]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2625_skip, output3990_skip]
  kernel_rfl

theorem node3992_cond_eq
    (child2624 : Flapjack.WordAlloc.removeDeadStructural input2624 value5 value1 value2 = (output2624, value1316, value1))
    (child3991 : Flapjack.WordAlloc.removeDeadStructural input3991 value1316 value1 value2 = (output3991, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3992 value5 value1 value2 = (output3992, value1832, value1) := by
  rw [input3992_def, output3992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2624]
  try dsimp only
  rw [child3991]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2624_skip, output3991_skip]
  kernel_rfl

theorem node3993_cond_eq
    (child2621 : Flapjack.WordAlloc.removeDeadStructural input2621 value1310 value1 value2 = (output2621, value5, value1))
    (child3992 : Flapjack.WordAlloc.removeDeadStructural input3992 value5 value1 value2 = (output3992, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3993 value1310 value1 value2 = (output3993, value1832, value1) := by
  rw [input3993_def, output3993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2621]
  try dsimp only
  rw [child3992]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2621_skip, output3992_skip]
  kernel_rfl

theorem node3994_cond_eq
    (child2612 : Flapjack.WordAlloc.removeDeadStructural input2612 value1310 value1 value2 = (output2612, value1310, value1))
    (child3993 : Flapjack.WordAlloc.removeDeadStructural input3993 value1310 value1 value2 = (output3993, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3994 value1310 value1 value2 = (output3994, value1832, value1) := by
  rw [input3994_def, output3994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2612]
  try dsimp only
  rw [child3993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2612_skip, output3993_skip]
  kernel_rfl

theorem node3995_cond_eq
    (child2611 : Flapjack.WordAlloc.removeDeadStructural input2611 value1309 value1 value2 = (output2611, value1310, value1))
    (child3994 : Flapjack.WordAlloc.removeDeadStructural input3994 value1310 value1 value2 = (output3994, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3995 value1309 value1 value2 = (output3995, value1832, value1) := by
  rw [input3995_def, output3995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2611]
  try dsimp only
  rw [child3994]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2611_skip, output3994_skip]
  kernel_rfl

theorem node3996_cond_eq
    (child2610 : Flapjack.WordAlloc.removeDeadStructural input2610 value5 value1 value2 = (output2610, value1309, value1))
    (child3995 : Flapjack.WordAlloc.removeDeadStructural input3995 value1309 value1 value2 = (output3995, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3996 value5 value1 value2 = (output3996, value1832, value1) := by
  rw [input3996_def, output3996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2610]
  try dsimp only
  rw [child3995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2610_skip, output3995_skip]
  kernel_rfl

theorem node3997_cond_eq
    (child2607 : Flapjack.WordAlloc.removeDeadStructural input2607 value1303 value1 value2 = (output2607, value5, value1))
    (child3996 : Flapjack.WordAlloc.removeDeadStructural input3996 value5 value1 value2 = (output3996, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3997 value1303 value1 value2 = (output3997, value1832, value1) := by
  rw [input3997_def, output3997_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2607]
  try dsimp only
  rw [child3996]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2607_skip, output3996_skip]
  kernel_rfl

theorem node3998_cond_eq
    (child2598 : Flapjack.WordAlloc.removeDeadStructural input2598 value1303 value1 value2 = (output2598, value1303, value1))
    (child3997 : Flapjack.WordAlloc.removeDeadStructural input3997 value1303 value1 value2 = (output3997, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3998 value1303 value1 value2 = (output3998, value1832, value1) := by
  rw [input3998_def, output3998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2598]
  try dsimp only
  rw [child3997]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2598_skip, output3997_skip]
  kernel_rfl

theorem node3999_cond_eq
    (child2597 : Flapjack.WordAlloc.removeDeadStructural input2597 value1302 value1 value2 = (output2597, value1303, value1))
    (child3998 : Flapjack.WordAlloc.removeDeadStructural input3998 value1303 value1 value2 = (output3998, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input3999 value1302 value1 value2 = (output3999, value1832, value1) := by
  rw [input3999_def, output3999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2597]
  try dsimp only
  rw [child3998]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2597_skip, output3998_skip]
  kernel_rfl

theorem node4000_cond_eq
    (child2596 : Flapjack.WordAlloc.removeDeadStructural input2596 value5 value1 value2 = (output2596, value1302, value1))
    (child3999 : Flapjack.WordAlloc.removeDeadStructural input3999 value1302 value1 value2 = (output3999, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4000 value5 value1 value2 = (output4000, value1832, value1) := by
  rw [input4000_def, output4000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2596]
  try dsimp only
  rw [child3999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2596_skip, output3999_skip]
  kernel_rfl

theorem node4001_cond_eq
    (child2593 : Flapjack.WordAlloc.removeDeadStructural input2593 value1296 value1 value2 = (output2593, value5, value1))
    (child4000 : Flapjack.WordAlloc.removeDeadStructural input4000 value5 value1 value2 = (output4000, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4001 value1296 value1 value2 = (output4001, value1832, value1) := by
  rw [input4001_def, output4001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2593]
  try dsimp only
  rw [child4000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2593_skip, output4000_skip]
  kernel_rfl

theorem node4002_cond_eq
    (child2584 : Flapjack.WordAlloc.removeDeadStructural input2584 value1296 value1 value2 = (output2584, value1296, value1))
    (child4001 : Flapjack.WordAlloc.removeDeadStructural input4001 value1296 value1 value2 = (output4001, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4002 value1296 value1 value2 = (output4002, value1832, value1) := by
  rw [input4002_def, output4002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2584]
  try dsimp only
  rw [child4001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2584_skip, output4001_skip]
  kernel_rfl

theorem node4003_cond_eq
    (child2583 : Flapjack.WordAlloc.removeDeadStructural input2583 value1295 value1 value2 = (output2583, value1296, value1))
    (child4002 : Flapjack.WordAlloc.removeDeadStructural input4002 value1296 value1 value2 = (output4002, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4003 value1295 value1 value2 = (output4003, value1832, value1) := by
  rw [input4003_def, output4003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2583]
  try dsimp only
  rw [child4002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2583_skip, output4002_skip]
  kernel_rfl

theorem node4004_cond_eq
    (child2582 : Flapjack.WordAlloc.removeDeadStructural input2582 value5 value1 value2 = (output2582, value1295, value1))
    (child4003 : Flapjack.WordAlloc.removeDeadStructural input4003 value1295 value1 value2 = (output4003, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4004 value5 value1 value2 = (output4004, value1832, value1) := by
  rw [input4004_def, output4004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2582]
  try dsimp only
  rw [child4003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2582_skip, output4003_skip]
  kernel_rfl

theorem node4005_cond_eq
    (child2579 : Flapjack.WordAlloc.removeDeadStructural input2579 value1289 value1 value2 = (output2579, value5, value1))
    (child4004 : Flapjack.WordAlloc.removeDeadStructural input4004 value5 value1 value2 = (output4004, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4005 value1289 value1 value2 = (output4005, value1832, value1) := by
  rw [input4005_def, output4005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2579]
  try dsimp only
  rw [child4004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2579_skip, output4004_skip]
  kernel_rfl

theorem node4006_cond_eq
    (child2570 : Flapjack.WordAlloc.removeDeadStructural input2570 value1289 value1 value2 = (output2570, value1289, value1))
    (child4005 : Flapjack.WordAlloc.removeDeadStructural input4005 value1289 value1 value2 = (output4005, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4006 value1289 value1 value2 = (output4006, value1832, value1) := by
  rw [input4006_def, output4006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2570]
  try dsimp only
  rw [child4005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2570_skip, output4005_skip]
  kernel_rfl

theorem node4007_cond_eq
    (child2569 : Flapjack.WordAlloc.removeDeadStructural input2569 value1288 value1 value2 = (output2569, value1289, value1))
    (child4006 : Flapjack.WordAlloc.removeDeadStructural input4006 value1289 value1 value2 = (output4006, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4007 value1288 value1 value2 = (output4007, value1832, value1) := by
  rw [input4007_def, output4007_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2569]
  try dsimp only
  rw [child4006]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2569_skip, output4006_skip]
  kernel_rfl

theorem node4008_cond_eq
    (child2568 : Flapjack.WordAlloc.removeDeadStructural input2568 value5 value1 value2 = (output2568, value1288, value1))
    (child4007 : Flapjack.WordAlloc.removeDeadStructural input4007 value1288 value1 value2 = (output4007, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4008 value5 value1 value2 = (output4008, value1832, value1) := by
  rw [input4008_def, output4008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2568]
  try dsimp only
  rw [child4007]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2568_skip, output4007_skip]
  kernel_rfl

theorem node4009_cond_eq
    (child2565 : Flapjack.WordAlloc.removeDeadStructural input2565 value1282 value1 value2 = (output2565, value5, value1))
    (child4008 : Flapjack.WordAlloc.removeDeadStructural input4008 value5 value1 value2 = (output4008, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4009 value1282 value1 value2 = (output4009, value1832, value1) := by
  rw [input4009_def, output4009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2565]
  try dsimp only
  rw [child4008]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2565_skip, output4008_skip]
  kernel_rfl

theorem node4010_cond_eq
    (child2556 : Flapjack.WordAlloc.removeDeadStructural input2556 value1282 value1 value2 = (output2556, value1282, value1))
    (child4009 : Flapjack.WordAlloc.removeDeadStructural input4009 value1282 value1 value2 = (output4009, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4010 value1282 value1 value2 = (output4010, value1832, value1) := by
  rw [input4010_def, output4010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2556]
  try dsimp only
  rw [child4009]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2556_skip, output4009_skip]
  kernel_rfl

theorem node4011_cond_eq
    (child2555 : Flapjack.WordAlloc.removeDeadStructural input2555 value1281 value1 value2 = (output2555, value1282, value1))
    (child4010 : Flapjack.WordAlloc.removeDeadStructural input4010 value1282 value1 value2 = (output4010, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4011 value1281 value1 value2 = (output4011, value1832, value1) := by
  rw [input4011_def, output4011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2555]
  try dsimp only
  rw [child4010]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2555_skip, output4010_skip]
  kernel_rfl

theorem node4012_cond_eq
    (child2554 : Flapjack.WordAlloc.removeDeadStructural input2554 value5 value1 value2 = (output2554, value1281, value1))
    (child4011 : Flapjack.WordAlloc.removeDeadStructural input4011 value1281 value1 value2 = (output4011, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4012 value5 value1 value2 = (output4012, value1832, value1) := by
  rw [input4012_def, output4012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2554]
  try dsimp only
  rw [child4011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2554_skip, output4011_skip]
  kernel_rfl

theorem node4013_cond_eq
    (child2551 : Flapjack.WordAlloc.removeDeadStructural input2551 value1275 value1 value2 = (output2551, value5, value1))
    (child4012 : Flapjack.WordAlloc.removeDeadStructural input4012 value5 value1 value2 = (output4012, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4013 value1275 value1 value2 = (output4013, value1832, value1) := by
  rw [input4013_def, output4013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2551]
  try dsimp only
  rw [child4012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2551_skip, output4012_skip]
  kernel_rfl

theorem node4014_cond_eq
    (child2542 : Flapjack.WordAlloc.removeDeadStructural input2542 value1275 value1 value2 = (output2542, value1275, value1))
    (child4013 : Flapjack.WordAlloc.removeDeadStructural input4013 value1275 value1 value2 = (output4013, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4014 value1275 value1 value2 = (output4014, value1832, value1) := by
  rw [input4014_def, output4014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2542]
  try dsimp only
  rw [child4013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2542_skip, output4013_skip]
  kernel_rfl

theorem node4015_cond_eq
    (child2541 : Flapjack.WordAlloc.removeDeadStructural input2541 value1274 value1 value2 = (output2541, value1275, value1))
    (child4014 : Flapjack.WordAlloc.removeDeadStructural input4014 value1275 value1 value2 = (output4014, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4015 value1274 value1 value2 = (output4015, value1832, value1) := by
  rw [input4015_def, output4015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2541]
  try dsimp only
  rw [child4014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2541_skip, output4014_skip]
  kernel_rfl

theorem node4016_cond_eq
    (child2540 : Flapjack.WordAlloc.removeDeadStructural input2540 value5 value1 value2 = (output2540, value1274, value1))
    (child4015 : Flapjack.WordAlloc.removeDeadStructural input4015 value1274 value1 value2 = (output4015, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4016 value5 value1 value2 = (output4016, value1832, value1) := by
  rw [input4016_def, output4016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2540]
  try dsimp only
  rw [child4015]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2540_skip, output4015_skip]
  kernel_rfl

theorem node4017_cond_eq
    (child2537 : Flapjack.WordAlloc.removeDeadStructural input2537 value1268 value1 value2 = (output2537, value5, value1))
    (child4016 : Flapjack.WordAlloc.removeDeadStructural input4016 value5 value1 value2 = (output4016, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4017 value1268 value1 value2 = (output4017, value1832, value1) := by
  rw [input4017_def, output4017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2537]
  try dsimp only
  rw [child4016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2537_skip, output4016_skip]
  kernel_rfl

theorem node4018_cond_eq
    (child2528 : Flapjack.WordAlloc.removeDeadStructural input2528 value1268 value1 value2 = (output2528, value1268, value1))
    (child4017 : Flapjack.WordAlloc.removeDeadStructural input4017 value1268 value1 value2 = (output4017, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4018 value1268 value1 value2 = (output4018, value1832, value1) := by
  rw [input4018_def, output4018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2528]
  try dsimp only
  rw [child4017]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2528_skip, output4017_skip]
  kernel_rfl

theorem node4019_cond_eq
    (child2527 : Flapjack.WordAlloc.removeDeadStructural input2527 value1267 value1 value2 = (output2527, value1268, value1))
    (child4018 : Flapjack.WordAlloc.removeDeadStructural input4018 value1268 value1 value2 = (output4018, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4019 value1267 value1 value2 = (output4019, value1832, value1) := by
  rw [input4019_def, output4019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2527]
  try dsimp only
  rw [child4018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2527_skip, output4018_skip]
  kernel_rfl

theorem node4020_cond_eq
    (child2526 : Flapjack.WordAlloc.removeDeadStructural input2526 value5 value1 value2 = (output2526, value1267, value1))
    (child4019 : Flapjack.WordAlloc.removeDeadStructural input4019 value1267 value1 value2 = (output4019, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4020 value5 value1 value2 = (output4020, value1832, value1) := by
  rw [input4020_def, output4020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2526]
  try dsimp only
  rw [child4019]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2526_skip, output4019_skip]
  kernel_rfl

theorem node4021_cond_eq
    (child2523 : Flapjack.WordAlloc.removeDeadStructural input2523 value1261 value1 value2 = (output2523, value5, value1))
    (child4020 : Flapjack.WordAlloc.removeDeadStructural input4020 value5 value1 value2 = (output4020, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4021 value1261 value1 value2 = (output4021, value1832, value1) := by
  rw [input4021_def, output4021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2523]
  try dsimp only
  rw [child4020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2523_skip, output4020_skip]
  kernel_rfl

theorem node4022_cond_eq
    (child2514 : Flapjack.WordAlloc.removeDeadStructural input2514 value1261 value1 value2 = (output2514, value1261, value1))
    (child4021 : Flapjack.WordAlloc.removeDeadStructural input4021 value1261 value1 value2 = (output4021, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4022 value1261 value1 value2 = (output4022, value1832, value1) := by
  rw [input4022_def, output4022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2514]
  try dsimp only
  rw [child4021]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2514_skip, output4021_skip]
  kernel_rfl

theorem node4023_cond_eq
    (child2513 : Flapjack.WordAlloc.removeDeadStructural input2513 value1260 value1 value2 = (output2513, value1261, value1))
    (child4022 : Flapjack.WordAlloc.removeDeadStructural input4022 value1261 value1 value2 = (output4022, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4023 value1260 value1 value2 = (output4023, value1832, value1) := by
  rw [input4023_def, output4023_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2513]
  try dsimp only
  rw [child4022]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2513_skip, output4022_skip]
  kernel_rfl

theorem node4024_cond_eq
    (child2512 : Flapjack.WordAlloc.removeDeadStructural input2512 value5 value1 value2 = (output2512, value1260, value1))
    (child4023 : Flapjack.WordAlloc.removeDeadStructural input4023 value1260 value1 value2 = (output4023, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4024 value5 value1 value2 = (output4024, value1832, value1) := by
  rw [input4024_def, output4024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2512]
  try dsimp only
  rw [child4023]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2512_skip, output4023_skip]
  kernel_rfl

theorem node4025_cond_eq
    (child2509 : Flapjack.WordAlloc.removeDeadStructural input2509 value1254 value1 value2 = (output2509, value5, value1))
    (child4024 : Flapjack.WordAlloc.removeDeadStructural input4024 value5 value1 value2 = (output4024, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4025 value1254 value1 value2 = (output4025, value1832, value1) := by
  rw [input4025_def, output4025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2509]
  try dsimp only
  rw [child4024]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2509_skip, output4024_skip]
  kernel_rfl

theorem node4026_cond_eq
    (child2500 : Flapjack.WordAlloc.removeDeadStructural input2500 value1254 value1 value2 = (output2500, value1254, value1))
    (child4025 : Flapjack.WordAlloc.removeDeadStructural input4025 value1254 value1 value2 = (output4025, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4026 value1254 value1 value2 = (output4026, value1832, value1) := by
  rw [input4026_def, output4026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2500]
  try dsimp only
  rw [child4025]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2500_skip, output4025_skip]
  kernel_rfl

theorem node4027_cond_eq
    (child2499 : Flapjack.WordAlloc.removeDeadStructural input2499 value1253 value1 value2 = (output2499, value1254, value1))
    (child4026 : Flapjack.WordAlloc.removeDeadStructural input4026 value1254 value1 value2 = (output4026, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4027 value1253 value1 value2 = (output4027, value1832, value1) := by
  rw [input4027_def, output4027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2499]
  try dsimp only
  rw [child4026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2499_skip, output4026_skip]
  kernel_rfl

theorem node4028_cond_eq
    (child2498 : Flapjack.WordAlloc.removeDeadStructural input2498 value5 value1 value2 = (output2498, value1253, value1))
    (child4027 : Flapjack.WordAlloc.removeDeadStructural input4027 value1253 value1 value2 = (output4027, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4028 value5 value1 value2 = (output4028, value1832, value1) := by
  rw [input4028_def, output4028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2498]
  try dsimp only
  rw [child4027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2498_skip, output4027_skip]
  kernel_rfl

theorem node4029_cond_eq
    (child2495 : Flapjack.WordAlloc.removeDeadStructural input2495 value1247 value1 value2 = (output2495, value5, value1))
    (child4028 : Flapjack.WordAlloc.removeDeadStructural input4028 value5 value1 value2 = (output4028, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4029 value1247 value1 value2 = (output4029, value1832, value1) := by
  rw [input4029_def, output4029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2495]
  try dsimp only
  rw [child4028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2495_skip, output4028_skip]
  kernel_rfl

theorem node4030_cond_eq
    (child2486 : Flapjack.WordAlloc.removeDeadStructural input2486 value1247 value1 value2 = (output2486, value1247, value1))
    (child4029 : Flapjack.WordAlloc.removeDeadStructural input4029 value1247 value1 value2 = (output4029, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4030 value1247 value1 value2 = (output4030, value1832, value1) := by
  rw [input4030_def, output4030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2486]
  try dsimp only
  rw [child4029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2486_skip, output4029_skip]
  kernel_rfl

theorem node4031_cond_eq
    (child2485 : Flapjack.WordAlloc.removeDeadStructural input2485 value1246 value1 value2 = (output2485, value1247, value1))
    (child4030 : Flapjack.WordAlloc.removeDeadStructural input4030 value1247 value1 value2 = (output4030, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4031 value1246 value1 value2 = (output4031, value1832, value1) := by
  rw [input4031_def, output4031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2485]
  try dsimp only
  rw [child4030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2485_skip, output4030_skip]
  kernel_rfl

theorem node4032_cond_eq
    (child2484 : Flapjack.WordAlloc.removeDeadStructural input2484 value5 value1 value2 = (output2484, value1246, value1))
    (child4031 : Flapjack.WordAlloc.removeDeadStructural input4031 value1246 value1 value2 = (output4031, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4032 value5 value1 value2 = (output4032, value1832, value1) := by
  rw [input4032_def, output4032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2484]
  try dsimp only
  rw [child4031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2484_skip, output4031_skip]
  kernel_rfl

theorem node4033_cond_eq
    (child2481 : Flapjack.WordAlloc.removeDeadStructural input2481 value1240 value1 value2 = (output2481, value5, value1))
    (child4032 : Flapjack.WordAlloc.removeDeadStructural input4032 value5 value1 value2 = (output4032, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4033 value1240 value1 value2 = (output4033, value1832, value1) := by
  rw [input4033_def, output4033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2481]
  try dsimp only
  rw [child4032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2481_skip, output4032_skip]
  kernel_rfl

theorem node4034_cond_eq
    (child2472 : Flapjack.WordAlloc.removeDeadStructural input2472 value1240 value1 value2 = (output2472, value1240, value1))
    (child4033 : Flapjack.WordAlloc.removeDeadStructural input4033 value1240 value1 value2 = (output4033, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4034 value1240 value1 value2 = (output4034, value1832, value1) := by
  rw [input4034_def, output4034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2472]
  try dsimp only
  rw [child4033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2472_skip, output4033_skip]
  kernel_rfl

theorem node4035_cond_eq
    (child2471 : Flapjack.WordAlloc.removeDeadStructural input2471 value1239 value1 value2 = (output2471, value1240, value1))
    (child4034 : Flapjack.WordAlloc.removeDeadStructural input4034 value1240 value1 value2 = (output4034, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4035 value1239 value1 value2 = (output4035, value1832, value1) := by
  rw [input4035_def, output4035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2471]
  try dsimp only
  rw [child4034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2471_skip, output4034_skip]
  kernel_rfl

theorem node4036_cond_eq
    (child2470 : Flapjack.WordAlloc.removeDeadStructural input2470 value5 value1 value2 = (output2470, value1239, value1))
    (child4035 : Flapjack.WordAlloc.removeDeadStructural input4035 value1239 value1 value2 = (output4035, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4036 value5 value1 value2 = (output4036, value1832, value1) := by
  rw [input4036_def, output4036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2470]
  try dsimp only
  rw [child4035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2470_skip, output4035_skip]
  kernel_rfl

theorem node4037_cond_eq
    (child2467 : Flapjack.WordAlloc.removeDeadStructural input2467 value1233 value1 value2 = (output2467, value5, value1))
    (child4036 : Flapjack.WordAlloc.removeDeadStructural input4036 value5 value1 value2 = (output4036, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4037 value1233 value1 value2 = (output4037, value1832, value1) := by
  rw [input4037_def, output4037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2467]
  try dsimp only
  rw [child4036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2467_skip, output4036_skip]
  kernel_rfl

theorem node4038_cond_eq
    (child2458 : Flapjack.WordAlloc.removeDeadStructural input2458 value1233 value1 value2 = (output2458, value1233, value1))
    (child4037 : Flapjack.WordAlloc.removeDeadStructural input4037 value1233 value1 value2 = (output4037, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4038 value1233 value1 value2 = (output4038, value1832, value1) := by
  rw [input4038_def, output4038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2458]
  try dsimp only
  rw [child4037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2458_skip, output4037_skip]
  kernel_rfl

theorem node4039_cond_eq
    (child2457 : Flapjack.WordAlloc.removeDeadStructural input2457 value1232 value1 value2 = (output2457, value1233, value1))
    (child4038 : Flapjack.WordAlloc.removeDeadStructural input4038 value1233 value1 value2 = (output4038, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4039 value1232 value1 value2 = (output4039, value1832, value1) := by
  rw [input4039_def, output4039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2457]
  try dsimp only
  rw [child4038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2457_skip, output4038_skip]
  kernel_rfl

theorem node4040_cond_eq
    (child2456 : Flapjack.WordAlloc.removeDeadStructural input2456 value5 value1 value2 = (output2456, value1232, value1))
    (child4039 : Flapjack.WordAlloc.removeDeadStructural input4039 value1232 value1 value2 = (output4039, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4040 value5 value1 value2 = (output4040, value1832, value1) := by
  rw [input4040_def, output4040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2456]
  try dsimp only
  rw [child4039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2456_skip, output4039_skip]
  kernel_rfl

theorem node4041_cond_eq
    (child2453 : Flapjack.WordAlloc.removeDeadStructural input2453 value1226 value1 value2 = (output2453, value5, value1))
    (child4040 : Flapjack.WordAlloc.removeDeadStructural input4040 value5 value1 value2 = (output4040, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4041 value1226 value1 value2 = (output4041, value1832, value1) := by
  rw [input4041_def, output4041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2453]
  try dsimp only
  rw [child4040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2453_skip, output4040_skip]
  kernel_rfl

theorem node4042_cond_eq
    (child2444 : Flapjack.WordAlloc.removeDeadStructural input2444 value1226 value1 value2 = (output2444, value1226, value1))
    (child4041 : Flapjack.WordAlloc.removeDeadStructural input4041 value1226 value1 value2 = (output4041, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4042 value1226 value1 value2 = (output4042, value1832, value1) := by
  rw [input4042_def, output4042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2444]
  try dsimp only
  rw [child4041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2444_skip, output4041_skip]
  kernel_rfl

theorem node4043_cond_eq
    (child2443 : Flapjack.WordAlloc.removeDeadStructural input2443 value1225 value1 value2 = (output2443, value1226, value1))
    (child4042 : Flapjack.WordAlloc.removeDeadStructural input4042 value1226 value1 value2 = (output4042, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4043 value1225 value1 value2 = (output4043, value1832, value1) := by
  rw [input4043_def, output4043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2443]
  try dsimp only
  rw [child4042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2443_skip, output4042_skip]
  kernel_rfl

theorem node4044_cond_eq
    (child2442 : Flapjack.WordAlloc.removeDeadStructural input2442 value5 value1 value2 = (output2442, value1225, value1))
    (child4043 : Flapjack.WordAlloc.removeDeadStructural input4043 value1225 value1 value2 = (output4043, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4044 value5 value1 value2 = (output4044, value1832, value1) := by
  rw [input4044_def, output4044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2442]
  try dsimp only
  rw [child4043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2442_skip, output4043_skip]
  kernel_rfl

theorem node4045_cond_eq
    (child2439 : Flapjack.WordAlloc.removeDeadStructural input2439 value1219 value1 value2 = (output2439, value5, value1))
    (child4044 : Flapjack.WordAlloc.removeDeadStructural input4044 value5 value1 value2 = (output4044, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4045 value1219 value1 value2 = (output4045, value1832, value1) := by
  rw [input4045_def, output4045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2439]
  try dsimp only
  rw [child4044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2439_skip, output4044_skip]
  kernel_rfl

theorem node4046_cond_eq
    (child2430 : Flapjack.WordAlloc.removeDeadStructural input2430 value1219 value1 value2 = (output2430, value1219, value1))
    (child4045 : Flapjack.WordAlloc.removeDeadStructural input4045 value1219 value1 value2 = (output4045, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4046 value1219 value1 value2 = (output4046, value1832, value1) := by
  rw [input4046_def, output4046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2430]
  try dsimp only
  rw [child4045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2430_skip, output4045_skip]
  kernel_rfl

theorem node4047_cond_eq
    (child2429 : Flapjack.WordAlloc.removeDeadStructural input2429 value1218 value1 value2 = (output2429, value1219, value1))
    (child4046 : Flapjack.WordAlloc.removeDeadStructural input4046 value1219 value1 value2 = (output4046, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4047 value1218 value1 value2 = (output4047, value1832, value1) := by
  rw [input4047_def, output4047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2429]
  try dsimp only
  rw [child4046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2429_skip, output4046_skip]
  kernel_rfl

theorem node4048_cond_eq
    (child2428 : Flapjack.WordAlloc.removeDeadStructural input2428 value5 value1 value2 = (output2428, value1218, value1))
    (child4047 : Flapjack.WordAlloc.removeDeadStructural input4047 value1218 value1 value2 = (output4047, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4048 value5 value1 value2 = (output4048, value1832, value1) := by
  rw [input4048_def, output4048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2428]
  try dsimp only
  rw [child4047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2428_skip, output4047_skip]
  kernel_rfl

theorem node4049_cond_eq
    (child2425 : Flapjack.WordAlloc.removeDeadStructural input2425 value1212 value1 value2 = (output2425, value5, value1))
    (child4048 : Flapjack.WordAlloc.removeDeadStructural input4048 value5 value1 value2 = (output4048, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4049 value1212 value1 value2 = (output4049, value1832, value1) := by
  rw [input4049_def, output4049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2425]
  try dsimp only
  rw [child4048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2425_skip, output4048_skip]
  kernel_rfl

theorem node4050_cond_eq
    (child2416 : Flapjack.WordAlloc.removeDeadStructural input2416 value1212 value1 value2 = (output2416, value1212, value1))
    (child4049 : Flapjack.WordAlloc.removeDeadStructural input4049 value1212 value1 value2 = (output4049, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4050 value1212 value1 value2 = (output4050, value1832, value1) := by
  rw [input4050_def, output4050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2416]
  try dsimp only
  rw [child4049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2416_skip, output4049_skip]
  kernel_rfl

theorem node4051_cond_eq
    (child2415 : Flapjack.WordAlloc.removeDeadStructural input2415 value1211 value1 value2 = (output2415, value1212, value1))
    (child4050 : Flapjack.WordAlloc.removeDeadStructural input4050 value1212 value1 value2 = (output4050, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4051 value1211 value1 value2 = (output4051, value1832, value1) := by
  rw [input4051_def, output4051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2415]
  try dsimp only
  rw [child4050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2415_skip, output4050_skip]
  kernel_rfl

theorem node4052_cond_eq
    (child2414 : Flapjack.WordAlloc.removeDeadStructural input2414 value5 value1 value2 = (output2414, value1211, value1))
    (child4051 : Flapjack.WordAlloc.removeDeadStructural input4051 value1211 value1 value2 = (output4051, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4052 value5 value1 value2 = (output4052, value1832, value1) := by
  rw [input4052_def, output4052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2414]
  try dsimp only
  rw [child4051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2414_skip, output4051_skip]
  kernel_rfl

theorem node4053_cond_eq
    (child2411 : Flapjack.WordAlloc.removeDeadStructural input2411 value1205 value1 value2 = (output2411, value5, value1))
    (child4052 : Flapjack.WordAlloc.removeDeadStructural input4052 value5 value1 value2 = (output4052, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4053 value1205 value1 value2 = (output4053, value1832, value1) := by
  rw [input4053_def, output4053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2411]
  try dsimp only
  rw [child4052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2411_skip, output4052_skip]
  kernel_rfl

theorem node4054_cond_eq
    (child2402 : Flapjack.WordAlloc.removeDeadStructural input2402 value1205 value1 value2 = (output2402, value1205, value1))
    (child4053 : Flapjack.WordAlloc.removeDeadStructural input4053 value1205 value1 value2 = (output4053, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4054 value1205 value1 value2 = (output4054, value1832, value1) := by
  rw [input4054_def, output4054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2402]
  try dsimp only
  rw [child4053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2402_skip, output4053_skip]
  kernel_rfl

theorem node4055_cond_eq
    (child2401 : Flapjack.WordAlloc.removeDeadStructural input2401 value1204 value1 value2 = (output2401, value1205, value1))
    (child4054 : Flapjack.WordAlloc.removeDeadStructural input4054 value1205 value1 value2 = (output4054, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4055 value1204 value1 value2 = (output4055, value1832, value1) := by
  rw [input4055_def, output4055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2401]
  try dsimp only
  rw [child4054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2401_skip, output4054_skip]
  kernel_rfl

theorem node4056_cond_eq
    (child2400 : Flapjack.WordAlloc.removeDeadStructural input2400 value5 value1 value2 = (output2400, value1204, value1))
    (child4055 : Flapjack.WordAlloc.removeDeadStructural input4055 value1204 value1 value2 = (output4055, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4056 value5 value1 value2 = (output4056, value1832, value1) := by
  rw [input4056_def, output4056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2400]
  try dsimp only
  rw [child4055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2400_skip, output4055_skip]
  kernel_rfl

theorem node4057_cond_eq
    (child2397 : Flapjack.WordAlloc.removeDeadStructural input2397 value1198 value1 value2 = (output2397, value5, value1))
    (child4056 : Flapjack.WordAlloc.removeDeadStructural input4056 value5 value1 value2 = (output4056, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4057 value1198 value1 value2 = (output4057, value1832, value1) := by
  rw [input4057_def, output4057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2397]
  try dsimp only
  rw [child4056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2397_skip, output4056_skip]
  kernel_rfl

theorem node4058_cond_eq
    (child2388 : Flapjack.WordAlloc.removeDeadStructural input2388 value1198 value1 value2 = (output2388, value1198, value1))
    (child4057 : Flapjack.WordAlloc.removeDeadStructural input4057 value1198 value1 value2 = (output4057, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4058 value1198 value1 value2 = (output4058, value1832, value1) := by
  rw [input4058_def, output4058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2388]
  try dsimp only
  rw [child4057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2388_skip, output4057_skip]
  kernel_rfl

theorem node4059_cond_eq
    (child2387 : Flapjack.WordAlloc.removeDeadStructural input2387 value1197 value1 value2 = (output2387, value1198, value1))
    (child4058 : Flapjack.WordAlloc.removeDeadStructural input4058 value1198 value1 value2 = (output4058, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4059 value1197 value1 value2 = (output4059, value1832, value1) := by
  rw [input4059_def, output4059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2387]
  try dsimp only
  rw [child4058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2387_skip, output4058_skip]
  kernel_rfl

theorem node4060_cond_eq
    (child2386 : Flapjack.WordAlloc.removeDeadStructural input2386 value5 value1 value2 = (output2386, value1197, value1))
    (child4059 : Flapjack.WordAlloc.removeDeadStructural input4059 value1197 value1 value2 = (output4059, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4060 value5 value1 value2 = (output4060, value1832, value1) := by
  rw [input4060_def, output4060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2386]
  try dsimp only
  rw [child4059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2386_skip, output4059_skip]
  kernel_rfl

theorem node4061_cond_eq
    (child2383 : Flapjack.WordAlloc.removeDeadStructural input2383 value1191 value1 value2 = (output2383, value5, value1))
    (child4060 : Flapjack.WordAlloc.removeDeadStructural input4060 value5 value1 value2 = (output4060, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4061 value1191 value1 value2 = (output4061, value1832, value1) := by
  rw [input4061_def, output4061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2383]
  try dsimp only
  rw [child4060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2383_skip, output4060_skip]
  kernel_rfl

theorem node4062_cond_eq
    (child2374 : Flapjack.WordAlloc.removeDeadStructural input2374 value1191 value1 value2 = (output2374, value1191, value1))
    (child4061 : Flapjack.WordAlloc.removeDeadStructural input4061 value1191 value1 value2 = (output4061, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4062 value1191 value1 value2 = (output4062, value1832, value1) := by
  rw [input4062_def, output4062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2374]
  try dsimp only
  rw [child4061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2374_skip, output4061_skip]
  kernel_rfl

theorem node4063_cond_eq
    (child2373 : Flapjack.WordAlloc.removeDeadStructural input2373 value1190 value1 value2 = (output2373, value1191, value1))
    (child4062 : Flapjack.WordAlloc.removeDeadStructural input4062 value1191 value1 value2 = (output4062, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4063 value1190 value1 value2 = (output4063, value1832, value1) := by
  rw [input4063_def, output4063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2373]
  try dsimp only
  rw [child4062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2373_skip, output4062_skip]
  kernel_rfl

theorem node4064_cond_eq
    (child2372 : Flapjack.WordAlloc.removeDeadStructural input2372 value5 value1 value2 = (output2372, value1190, value1))
    (child4063 : Flapjack.WordAlloc.removeDeadStructural input4063 value1190 value1 value2 = (output4063, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4064 value5 value1 value2 = (output4064, value1832, value1) := by
  rw [input4064_def, output4064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2372]
  try dsimp only
  rw [child4063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2372_skip, output4063_skip]
  kernel_rfl

theorem node4065_cond_eq
    (child2369 : Flapjack.WordAlloc.removeDeadStructural input2369 value1184 value1 value2 = (output2369, value5, value1))
    (child4064 : Flapjack.WordAlloc.removeDeadStructural input4064 value5 value1 value2 = (output4064, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4065 value1184 value1 value2 = (output4065, value1832, value1) := by
  rw [input4065_def, output4065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2369]
  try dsimp only
  rw [child4064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2369_skip, output4064_skip]
  kernel_rfl

theorem node4066_cond_eq
    (child2360 : Flapjack.WordAlloc.removeDeadStructural input2360 value1184 value1 value2 = (output2360, value1184, value1))
    (child4065 : Flapjack.WordAlloc.removeDeadStructural input4065 value1184 value1 value2 = (output4065, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4066 value1184 value1 value2 = (output4066, value1832, value1) := by
  rw [input4066_def, output4066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2360]
  try dsimp only
  rw [child4065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2360_skip, output4065_skip]
  kernel_rfl

theorem node4067_cond_eq
    (child2359 : Flapjack.WordAlloc.removeDeadStructural input2359 value1183 value1 value2 = (output2359, value1184, value1))
    (child4066 : Flapjack.WordAlloc.removeDeadStructural input4066 value1184 value1 value2 = (output4066, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4067 value1183 value1 value2 = (output4067, value1832, value1) := by
  rw [input4067_def, output4067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2359]
  try dsimp only
  rw [child4066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2359_skip, output4066_skip]
  kernel_rfl

theorem node4068_cond_eq
    (child2358 : Flapjack.WordAlloc.removeDeadStructural input2358 value5 value1 value2 = (output2358, value1183, value1))
    (child4067 : Flapjack.WordAlloc.removeDeadStructural input4067 value1183 value1 value2 = (output4067, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4068 value5 value1 value2 = (output4068, value1832, value1) := by
  rw [input4068_def, output4068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2358]
  try dsimp only
  rw [child4067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2358_skip, output4067_skip]
  kernel_rfl

theorem node4069_cond_eq
    (child2355 : Flapjack.WordAlloc.removeDeadStructural input2355 value1177 value1 value2 = (output2355, value5, value1))
    (child4068 : Flapjack.WordAlloc.removeDeadStructural input4068 value5 value1 value2 = (output4068, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4069 value1177 value1 value2 = (output4069, value1832, value1) := by
  rw [input4069_def, output4069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2355]
  try dsimp only
  rw [child4068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2355_skip, output4068_skip]
  kernel_rfl

theorem node4070_cond_eq
    (child2346 : Flapjack.WordAlloc.removeDeadStructural input2346 value1177 value1 value2 = (output2346, value1177, value1))
    (child4069 : Flapjack.WordAlloc.removeDeadStructural input4069 value1177 value1 value2 = (output4069, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4070 value1177 value1 value2 = (output4070, value1832, value1) := by
  rw [input4070_def, output4070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2346]
  try dsimp only
  rw [child4069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2346_skip, output4069_skip]
  kernel_rfl

theorem node4071_cond_eq
    (child2345 : Flapjack.WordAlloc.removeDeadStructural input2345 value1176 value1 value2 = (output2345, value1177, value1))
    (child4070 : Flapjack.WordAlloc.removeDeadStructural input4070 value1177 value1 value2 = (output4070, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4071 value1176 value1 value2 = (output4071, value1832, value1) := by
  rw [input4071_def, output4071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2345]
  try dsimp only
  rw [child4070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2345_skip, output4070_skip]
  kernel_rfl

theorem node4072_cond_eq
    (child2344 : Flapjack.WordAlloc.removeDeadStructural input2344 value5 value1 value2 = (output2344, value1176, value1))
    (child4071 : Flapjack.WordAlloc.removeDeadStructural input4071 value1176 value1 value2 = (output4071, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4072 value5 value1 value2 = (output4072, value1832, value1) := by
  rw [input4072_def, output4072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2344]
  try dsimp only
  rw [child4071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2344_skip, output4071_skip]
  kernel_rfl

theorem node4073_cond_eq
    (child2341 : Flapjack.WordAlloc.removeDeadStructural input2341 value1170 value1 value2 = (output2341, value5, value1))
    (child4072 : Flapjack.WordAlloc.removeDeadStructural input4072 value5 value1 value2 = (output4072, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4073 value1170 value1 value2 = (output4073, value1832, value1) := by
  rw [input4073_def, output4073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2341]
  try dsimp only
  rw [child4072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2341_skip, output4072_skip]
  kernel_rfl

theorem node4074_cond_eq
    (child2332 : Flapjack.WordAlloc.removeDeadStructural input2332 value1170 value1 value2 = (output2332, value1170, value1))
    (child4073 : Flapjack.WordAlloc.removeDeadStructural input4073 value1170 value1 value2 = (output4073, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4074 value1170 value1 value2 = (output4074, value1832, value1) := by
  rw [input4074_def, output4074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2332]
  try dsimp only
  rw [child4073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2332_skip, output4073_skip]
  kernel_rfl

theorem node4075_cond_eq
    (child2331 : Flapjack.WordAlloc.removeDeadStructural input2331 value1169 value1 value2 = (output2331, value1170, value1))
    (child4074 : Flapjack.WordAlloc.removeDeadStructural input4074 value1170 value1 value2 = (output4074, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4075 value1169 value1 value2 = (output4075, value1832, value1) := by
  rw [input4075_def, output4075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2331]
  try dsimp only
  rw [child4074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2331_skip, output4074_skip]
  kernel_rfl

theorem node4076_cond_eq
    (child2330 : Flapjack.WordAlloc.removeDeadStructural input2330 value5 value1 value2 = (output2330, value1169, value1))
    (child4075 : Flapjack.WordAlloc.removeDeadStructural input4075 value1169 value1 value2 = (output4075, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4076 value5 value1 value2 = (output4076, value1832, value1) := by
  rw [input4076_def, output4076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2330]
  try dsimp only
  rw [child4075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2330_skip, output4075_skip]
  kernel_rfl

theorem node4077_cond_eq
    (child2327 : Flapjack.WordAlloc.removeDeadStructural input2327 value1163 value1 value2 = (output2327, value5, value1))
    (child4076 : Flapjack.WordAlloc.removeDeadStructural input4076 value5 value1 value2 = (output4076, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4077 value1163 value1 value2 = (output4077, value1832, value1) := by
  rw [input4077_def, output4077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2327]
  try dsimp only
  rw [child4076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2327_skip, output4076_skip]
  kernel_rfl

theorem node4078_cond_eq
    (child2318 : Flapjack.WordAlloc.removeDeadStructural input2318 value1163 value1 value2 = (output2318, value1163, value1))
    (child4077 : Flapjack.WordAlloc.removeDeadStructural input4077 value1163 value1 value2 = (output4077, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4078 value1163 value1 value2 = (output4078, value1832, value1) := by
  rw [input4078_def, output4078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2318]
  try dsimp only
  rw [child4077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2318_skip, output4077_skip]
  kernel_rfl

theorem node4079_cond_eq
    (child2317 : Flapjack.WordAlloc.removeDeadStructural input2317 value1162 value1 value2 = (output2317, value1163, value1))
    (child4078 : Flapjack.WordAlloc.removeDeadStructural input4078 value1163 value1 value2 = (output4078, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4079 value1162 value1 value2 = (output4079, value1832, value1) := by
  rw [input4079_def, output4079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2317]
  try dsimp only
  rw [child4078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2317_skip, output4078_skip]
  kernel_rfl

theorem node4080_cond_eq
    (child2316 : Flapjack.WordAlloc.removeDeadStructural input2316 value5 value1 value2 = (output2316, value1162, value1))
    (child4079 : Flapjack.WordAlloc.removeDeadStructural input4079 value1162 value1 value2 = (output4079, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4080 value5 value1 value2 = (output4080, value1832, value1) := by
  rw [input4080_def, output4080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2316]
  try dsimp only
  rw [child4079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2316_skip, output4079_skip]
  kernel_rfl

theorem node4081_cond_eq
    (child2313 : Flapjack.WordAlloc.removeDeadStructural input2313 value1156 value1 value2 = (output2313, value5, value1))
    (child4080 : Flapjack.WordAlloc.removeDeadStructural input4080 value5 value1 value2 = (output4080, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4081 value1156 value1 value2 = (output4081, value1832, value1) := by
  rw [input4081_def, output4081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2313]
  try dsimp only
  rw [child4080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2313_skip, output4080_skip]
  kernel_rfl

theorem node4082_cond_eq
    (child2304 : Flapjack.WordAlloc.removeDeadStructural input2304 value1156 value1 value2 = (output2304, value1156, value1))
    (child4081 : Flapjack.WordAlloc.removeDeadStructural input4081 value1156 value1 value2 = (output4081, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4082 value1156 value1 value2 = (output4082, value1832, value1) := by
  rw [input4082_def, output4082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2304]
  try dsimp only
  rw [child4081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2304_skip, output4081_skip]
  kernel_rfl

theorem node4083_cond_eq
    (child2303 : Flapjack.WordAlloc.removeDeadStructural input2303 value1155 value1 value2 = (output2303, value1156, value1))
    (child4082 : Flapjack.WordAlloc.removeDeadStructural input4082 value1156 value1 value2 = (output4082, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4083 value1155 value1 value2 = (output4083, value1832, value1) := by
  rw [input4083_def, output4083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2303]
  try dsimp only
  rw [child4082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2303_skip, output4082_skip]
  kernel_rfl

theorem node4084_cond_eq
    (child2302 : Flapjack.WordAlloc.removeDeadStructural input2302 value5 value1 value2 = (output2302, value1155, value1))
    (child4083 : Flapjack.WordAlloc.removeDeadStructural input4083 value1155 value1 value2 = (output4083, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4084 value5 value1 value2 = (output4084, value1832, value1) := by
  rw [input4084_def, output4084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2302]
  try dsimp only
  rw [child4083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2302_skip, output4083_skip]
  kernel_rfl

theorem node4085_cond_eq
    (child2299 : Flapjack.WordAlloc.removeDeadStructural input2299 value1149 value1 value2 = (output2299, value5, value1))
    (child4084 : Flapjack.WordAlloc.removeDeadStructural input4084 value5 value1 value2 = (output4084, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4085 value1149 value1 value2 = (output4085, value1832, value1) := by
  rw [input4085_def, output4085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2299]
  try dsimp only
  rw [child4084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2299_skip, output4084_skip]
  kernel_rfl

theorem node4086_cond_eq
    (child2290 : Flapjack.WordAlloc.removeDeadStructural input2290 value1149 value1 value2 = (output2290, value1149, value1))
    (child4085 : Flapjack.WordAlloc.removeDeadStructural input4085 value1149 value1 value2 = (output4085, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4086 value1149 value1 value2 = (output4086, value1832, value1) := by
  rw [input4086_def, output4086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2290]
  try dsimp only
  rw [child4085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2290_skip, output4085_skip]
  kernel_rfl

theorem node4087_cond_eq
    (child2289 : Flapjack.WordAlloc.removeDeadStructural input2289 value1148 value1 value2 = (output2289, value1149, value1))
    (child4086 : Flapjack.WordAlloc.removeDeadStructural input4086 value1149 value1 value2 = (output4086, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4087 value1148 value1 value2 = (output4087, value1832, value1) := by
  rw [input4087_def, output4087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2289]
  try dsimp only
  rw [child4086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2289_skip, output4086_skip]
  kernel_rfl

theorem node4088_cond_eq
    (child2288 : Flapjack.WordAlloc.removeDeadStructural input2288 value5 value1 value2 = (output2288, value1148, value1))
    (child4087 : Flapjack.WordAlloc.removeDeadStructural input4087 value1148 value1 value2 = (output4087, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4088 value5 value1 value2 = (output4088, value1832, value1) := by
  rw [input4088_def, output4088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2288]
  try dsimp only
  rw [child4087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2288_skip, output4087_skip]
  kernel_rfl

theorem node4089_cond_eq
    (child2285 : Flapjack.WordAlloc.removeDeadStructural input2285 value1142 value1 value2 = (output2285, value5, value1))
    (child4088 : Flapjack.WordAlloc.removeDeadStructural input4088 value5 value1 value2 = (output4088, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4089 value1142 value1 value2 = (output4089, value1832, value1) := by
  rw [input4089_def, output4089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2285]
  try dsimp only
  rw [child4088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2285_skip, output4088_skip]
  kernel_rfl

theorem node4090_cond_eq
    (child2276 : Flapjack.WordAlloc.removeDeadStructural input2276 value1142 value1 value2 = (output2276, value1142, value1))
    (child4089 : Flapjack.WordAlloc.removeDeadStructural input4089 value1142 value1 value2 = (output4089, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4090 value1142 value1 value2 = (output4090, value1832, value1) := by
  rw [input4090_def, output4090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2276]
  try dsimp only
  rw [child4089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2276_skip, output4089_skip]
  kernel_rfl

theorem node4091_cond_eq
    (child2275 : Flapjack.WordAlloc.removeDeadStructural input2275 value1141 value1 value2 = (output2275, value1142, value1))
    (child4090 : Flapjack.WordAlloc.removeDeadStructural input4090 value1142 value1 value2 = (output4090, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4091 value1141 value1 value2 = (output4091, value1832, value1) := by
  rw [input4091_def, output4091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2275]
  try dsimp only
  rw [child4090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2275_skip, output4090_skip]
  kernel_rfl

theorem node4092_cond_eq
    (child2274 : Flapjack.WordAlloc.removeDeadStructural input2274 value5 value1 value2 = (output2274, value1141, value1))
    (child4091 : Flapjack.WordAlloc.removeDeadStructural input4091 value1141 value1 value2 = (output4091, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4092 value5 value1 value2 = (output4092, value1832, value1) := by
  rw [input4092_def, output4092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2274]
  try dsimp only
  rw [child4091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2274_skip, output4091_skip]
  kernel_rfl

theorem node4093_cond_eq
    (child2271 : Flapjack.WordAlloc.removeDeadStructural input2271 value1135 value1 value2 = (output2271, value5, value1))
    (child4092 : Flapjack.WordAlloc.removeDeadStructural input4092 value5 value1 value2 = (output4092, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4093 value1135 value1 value2 = (output4093, value1832, value1) := by
  rw [input4093_def, output4093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2271]
  try dsimp only
  rw [child4092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2271_skip, output4092_skip]
  kernel_rfl

theorem node4094_cond_eq
    (child2262 : Flapjack.WordAlloc.removeDeadStructural input2262 value1135 value1 value2 = (output2262, value1135, value1))
    (child4093 : Flapjack.WordAlloc.removeDeadStructural input4093 value1135 value1 value2 = (output4093, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4094 value1135 value1 value2 = (output4094, value1832, value1) := by
  rw [input4094_def, output4094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2262]
  try dsimp only
  rw [child4093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2262_skip, output4093_skip]
  kernel_rfl

theorem node4095_cond_eq
    (child2261 : Flapjack.WordAlloc.removeDeadStructural input2261 value1134 value1 value2 = (output2261, value1135, value1))
    (child4094 : Flapjack.WordAlloc.removeDeadStructural input4094 value1135 value1 value2 = (output4094, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4095 value1134 value1 value2 = (output4095, value1832, value1) := by
  rw [input4095_def, output4095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2261]
  try dsimp only
  rw [child4094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2261_skip, output4094_skip]
  kernel_rfl

#print axioms node4095_cond_eq
end InitECandidate.Proofs.DeadStages240.Parallel
