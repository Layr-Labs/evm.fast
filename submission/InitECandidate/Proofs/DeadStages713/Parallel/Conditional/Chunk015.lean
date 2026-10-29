import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk015
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node3840_cond_eq
    (child3838 : Flapjack.WordAlloc.removeDeadStructural input3838 value1924 value1 value2 = (output3838, value1925, value1))
    (child3839 : Flapjack.WordAlloc.removeDeadStructural input3839 value1925 value1 value2 = (output3839, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3840 value1924 value1 value2 = (output3840, value5, value1) := by
  rw [input3840_def, output3840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3838]
  dsimp only
  rw [child3839]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3838_skip, output3839_skip]
  kernel_rfl

theorem node3841_cond_eq
    (child3837 : Flapjack.WordAlloc.removeDeadStructural input3837 value1923 value1 value2 = (output3837, value1924, value1))
    (child3840 : Flapjack.WordAlloc.removeDeadStructural input3840 value1924 value1 value2 = (output3840, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3841 value1923 value1 value2 = (output3841, value5, value1) := by
  rw [input3841_def, output3841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3837]
  dsimp only
  rw [child3840]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3837_skip, output3840_skip]
  kernel_rfl

theorem node3842_cond_eq
    (child3836 : Flapjack.WordAlloc.removeDeadStructural input3836 value1922 value1 value2 = (output3836, value1923, value1))
    (child3841 : Flapjack.WordAlloc.removeDeadStructural input3841 value1923 value1 value2 = (output3841, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3842 value1922 value1 value2 = (output3842, value5, value1) := by
  rw [input3842_def, output3842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3836]
  dsimp only
  rw [child3841]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3836_skip, output3841_skip]
  kernel_rfl

theorem node3843_cond_eq
    (child3835 : Flapjack.WordAlloc.removeDeadStructural input3835 value1920 value1 value2 = (output3835, value1922, value1))
    (child3842 : Flapjack.WordAlloc.removeDeadStructural input3842 value1922 value1 value2 = (output3842, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3843 value1920 value1 value2 = (output3843, value5, value1) := by
  rw [input3843_def, output3843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3835]
  dsimp only
  rw [child3842]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3835_skip, output3842_skip]
  kernel_rfl

theorem node3844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3844 value5 value1 value2 = (output3844, value1926, value1) := by
  rw [input3844_def, output3844_def]
  kernel_rfl

theorem node3845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3845 value1926 value1 value2 = (output3845, value1927, value1) := by
  rw [input3845_def, output3845_def]
  kernel_rfl

theorem node3846_cond_eq
    (child3844 : Flapjack.WordAlloc.removeDeadStructural input3844 value5 value1 value2 = (output3844, value1926, value1))
    (child3845 : Flapjack.WordAlloc.removeDeadStructural input3845 value1926 value1 value2 = (output3845, value1927, value1)) : Flapjack.WordAlloc.removeDeadStructural input3846 value5 value1 value2 = (output3846, value1927, value1) := by
  rw [input3846_def, output3846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3844]
  dsimp only
  rw [child3845]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3844_skip, output3845_skip]
  kernel_rfl

theorem node3847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3847 value1927 value1 value2 = (output3847, value1928, value1) := by
  rw [input3847_def, output3847_def]
  kernel_rfl

theorem node3848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3848 value1928 value1 value2 = (output3848, value1928, value1) := by
  rw [input3848_def, output3848_def]
  kernel_rfl

theorem node3849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3849 value1928 value1 value2 = (output3849, value1929, value1) := by
  rw [input3849_def, output3849_def]
  kernel_rfl

theorem node3850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3850 value1929 value1 value2 = (output3850, value1930, value1) := by
  rw [input3850_def, output3850_def]
  kernel_rfl

theorem node3851_cond_eq
    (child3849 : Flapjack.WordAlloc.removeDeadStructural input3849 value1928 value1 value2 = (output3849, value1929, value1))
    (child3850 : Flapjack.WordAlloc.removeDeadStructural input3850 value1929 value1 value2 = (output3850, value1930, value1)) : Flapjack.WordAlloc.removeDeadStructural input3851 value1928 value1 value2 = (output3851, value1930, value1) := by
  rw [input3851_def, output3851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3849]
  dsimp only
  rw [child3850]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3849_skip, output3850_skip]
  kernel_rfl

theorem node3852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3852 value1930 value1 value2 = (output3852, value1931, value1) := by
  rw [input3852_def, output3852_def]
  kernel_rfl

theorem node3853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3853 value1931 value1 value2 = (output3853, value1932, value1) := by
  rw [input3853_def, output3853_def]
  kernel_rfl

theorem node3854_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3854 value1932 value1 value2 = (output3854, value1933, value1) := by
  rw [input3854_def, output3854_def]
  kernel_rfl

theorem node3855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3855 value1933 value1 value2 = (output3855, value5, value1) := by
  rw [input3855_def, output3855_def]
  kernel_rfl

theorem node3856_cond_eq
    (child3854 : Flapjack.WordAlloc.removeDeadStructural input3854 value1932 value1 value2 = (output3854, value1933, value1))
    (child3855 : Flapjack.WordAlloc.removeDeadStructural input3855 value1933 value1 value2 = (output3855, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3856 value1932 value1 value2 = (output3856, value5, value1) := by
  rw [input3856_def, output3856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3854]
  dsimp only
  rw [child3855]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3854_skip, output3855_skip]
  kernel_rfl

theorem node3857_cond_eq
    (child3853 : Flapjack.WordAlloc.removeDeadStructural input3853 value1931 value1 value2 = (output3853, value1932, value1))
    (child3856 : Flapjack.WordAlloc.removeDeadStructural input3856 value1932 value1 value2 = (output3856, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3857 value1931 value1 value2 = (output3857, value5, value1) := by
  rw [input3857_def, output3857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3853]
  dsimp only
  rw [child3856]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3853_skip, output3856_skip]
  kernel_rfl

theorem node3858_cond_eq
    (child3852 : Flapjack.WordAlloc.removeDeadStructural input3852 value1930 value1 value2 = (output3852, value1931, value1))
    (child3857 : Flapjack.WordAlloc.removeDeadStructural input3857 value1931 value1 value2 = (output3857, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3858 value1930 value1 value2 = (output3858, value5, value1) := by
  rw [input3858_def, output3858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3852]
  dsimp only
  rw [child3857]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3852_skip, output3857_skip]
  kernel_rfl

theorem node3859_cond_eq
    (child3851 : Flapjack.WordAlloc.removeDeadStructural input3851 value1928 value1 value2 = (output3851, value1930, value1))
    (child3858 : Flapjack.WordAlloc.removeDeadStructural input3858 value1930 value1 value2 = (output3858, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3859 value1928 value1 value2 = (output3859, value5, value1) := by
  rw [input3859_def, output3859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3851]
  dsimp only
  rw [child3858]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3851_skip, output3858_skip]
  kernel_rfl

theorem node3860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3860 value5 value1 value2 = (output3860, value1934, value1) := by
  rw [input3860_def, output3860_def]
  kernel_rfl

theorem node3861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3861 value1934 value1 value2 = (output3861, value1935, value1) := by
  rw [input3861_def, output3861_def]
  kernel_rfl

theorem node3862_cond_eq
    (child3860 : Flapjack.WordAlloc.removeDeadStructural input3860 value5 value1 value2 = (output3860, value1934, value1))
    (child3861 : Flapjack.WordAlloc.removeDeadStructural input3861 value1934 value1 value2 = (output3861, value1935, value1)) : Flapjack.WordAlloc.removeDeadStructural input3862 value5 value1 value2 = (output3862, value1935, value1) := by
  rw [input3862_def, output3862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3860]
  dsimp only
  rw [child3861]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3860_skip, output3861_skip]
  kernel_rfl

theorem node3863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3863 value1935 value1 value2 = (output3863, value1936, value1) := by
  rw [input3863_def, output3863_def]
  kernel_rfl

theorem node3864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3864 value1936 value1 value2 = (output3864, value1936, value1) := by
  rw [input3864_def, output3864_def]
  kernel_rfl

theorem node3865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3865 value1936 value1 value2 = (output3865, value1937, value1) := by
  rw [input3865_def, output3865_def]
  kernel_rfl

theorem node3866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3866 value1937 value1 value2 = (output3866, value1938, value1) := by
  rw [input3866_def, output3866_def]
  kernel_rfl

theorem node3867_cond_eq
    (child3865 : Flapjack.WordAlloc.removeDeadStructural input3865 value1936 value1 value2 = (output3865, value1937, value1))
    (child3866 : Flapjack.WordAlloc.removeDeadStructural input3866 value1937 value1 value2 = (output3866, value1938, value1)) : Flapjack.WordAlloc.removeDeadStructural input3867 value1936 value1 value2 = (output3867, value1938, value1) := by
  rw [input3867_def, output3867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3865]
  dsimp only
  rw [child3866]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3865_skip, output3866_skip]
  kernel_rfl

theorem node3868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3868 value1938 value1 value2 = (output3868, value1939, value1) := by
  rw [input3868_def, output3868_def]
  kernel_rfl

theorem node3869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3869 value1939 value1 value2 = (output3869, value1940, value1) := by
  rw [input3869_def, output3869_def]
  kernel_rfl

theorem node3870_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3870 value1940 value1 value2 = (output3870, value1941, value1) := by
  rw [input3870_def, output3870_def]
  kernel_rfl

theorem node3871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3871 value1941 value1 value2 = (output3871, value5, value1) := by
  rw [input3871_def, output3871_def]
  kernel_rfl

theorem node3872_cond_eq
    (child3870 : Flapjack.WordAlloc.removeDeadStructural input3870 value1940 value1 value2 = (output3870, value1941, value1))
    (child3871 : Flapjack.WordAlloc.removeDeadStructural input3871 value1941 value1 value2 = (output3871, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3872 value1940 value1 value2 = (output3872, value5, value1) := by
  rw [input3872_def, output3872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3870]
  dsimp only
  rw [child3871]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3870_skip, output3871_skip]
  kernel_rfl

theorem node3873_cond_eq
    (child3869 : Flapjack.WordAlloc.removeDeadStructural input3869 value1939 value1 value2 = (output3869, value1940, value1))
    (child3872 : Flapjack.WordAlloc.removeDeadStructural input3872 value1940 value1 value2 = (output3872, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3873 value1939 value1 value2 = (output3873, value5, value1) := by
  rw [input3873_def, output3873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3869]
  dsimp only
  rw [child3872]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3869_skip, output3872_skip]
  kernel_rfl

theorem node3874_cond_eq
    (child3868 : Flapjack.WordAlloc.removeDeadStructural input3868 value1938 value1 value2 = (output3868, value1939, value1))
    (child3873 : Flapjack.WordAlloc.removeDeadStructural input3873 value1939 value1 value2 = (output3873, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3874 value1938 value1 value2 = (output3874, value5, value1) := by
  rw [input3874_def, output3874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3868]
  dsimp only
  rw [child3873]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3868_skip, output3873_skip]
  kernel_rfl

theorem node3875_cond_eq
    (child3867 : Flapjack.WordAlloc.removeDeadStructural input3867 value1936 value1 value2 = (output3867, value1938, value1))
    (child3874 : Flapjack.WordAlloc.removeDeadStructural input3874 value1938 value1 value2 = (output3874, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3875 value1936 value1 value2 = (output3875, value5, value1) := by
  rw [input3875_def, output3875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3867]
  dsimp only
  rw [child3874]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3867_skip, output3874_skip]
  kernel_rfl

theorem node3876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3876 value5 value1 value2 = (output3876, value1942, value1) := by
  rw [input3876_def, output3876_def]
  kernel_rfl

theorem node3877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3877 value1942 value1 value2 = (output3877, value1943, value1) := by
  rw [input3877_def, output3877_def]
  kernel_rfl

theorem node3878_cond_eq
    (child3876 : Flapjack.WordAlloc.removeDeadStructural input3876 value5 value1 value2 = (output3876, value1942, value1))
    (child3877 : Flapjack.WordAlloc.removeDeadStructural input3877 value1942 value1 value2 = (output3877, value1943, value1)) : Flapjack.WordAlloc.removeDeadStructural input3878 value5 value1 value2 = (output3878, value1943, value1) := by
  rw [input3878_def, output3878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3876]
  dsimp only
  rw [child3877]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3876_skip, output3877_skip]
  kernel_rfl

theorem node3879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3879 value1943 value1 value2 = (output3879, value1944, value1) := by
  rw [input3879_def, output3879_def]
  kernel_rfl

theorem node3880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3880 value1944 value1 value2 = (output3880, value1944, value1) := by
  rw [input3880_def, output3880_def]
  kernel_rfl

theorem node3881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3881 value1944 value1 value2 = (output3881, value1945, value1) := by
  rw [input3881_def, output3881_def]
  kernel_rfl

theorem node3882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3882 value1945 value1 value2 = (output3882, value1946, value1) := by
  rw [input3882_def, output3882_def]
  kernel_rfl

theorem node3883_cond_eq
    (child3881 : Flapjack.WordAlloc.removeDeadStructural input3881 value1944 value1 value2 = (output3881, value1945, value1))
    (child3882 : Flapjack.WordAlloc.removeDeadStructural input3882 value1945 value1 value2 = (output3882, value1946, value1)) : Flapjack.WordAlloc.removeDeadStructural input3883 value1944 value1 value2 = (output3883, value1946, value1) := by
  rw [input3883_def, output3883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3881]
  dsimp only
  rw [child3882]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3881_skip, output3882_skip]
  kernel_rfl

theorem node3884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3884 value1946 value1 value2 = (output3884, value1947, value1) := by
  rw [input3884_def, output3884_def]
  kernel_rfl

theorem node3885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3885 value1947 value1 value2 = (output3885, value1948, value1) := by
  rw [input3885_def, output3885_def]
  kernel_rfl

theorem node3886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3886 value1948 value1 value2 = (output3886, value1949, value1) := by
  rw [input3886_def, output3886_def]
  kernel_rfl

theorem node3887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3887 value1949 value1 value2 = (output3887, value5, value1) := by
  rw [input3887_def, output3887_def]
  kernel_rfl

theorem node3888_cond_eq
    (child3886 : Flapjack.WordAlloc.removeDeadStructural input3886 value1948 value1 value2 = (output3886, value1949, value1))
    (child3887 : Flapjack.WordAlloc.removeDeadStructural input3887 value1949 value1 value2 = (output3887, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3888 value1948 value1 value2 = (output3888, value5, value1) := by
  rw [input3888_def, output3888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3886]
  dsimp only
  rw [child3887]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3886_skip, output3887_skip]
  kernel_rfl

theorem node3889_cond_eq
    (child3885 : Flapjack.WordAlloc.removeDeadStructural input3885 value1947 value1 value2 = (output3885, value1948, value1))
    (child3888 : Flapjack.WordAlloc.removeDeadStructural input3888 value1948 value1 value2 = (output3888, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3889 value1947 value1 value2 = (output3889, value5, value1) := by
  rw [input3889_def, output3889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3885]
  dsimp only
  rw [child3888]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3885_skip, output3888_skip]
  kernel_rfl

theorem node3890_cond_eq
    (child3884 : Flapjack.WordAlloc.removeDeadStructural input3884 value1946 value1 value2 = (output3884, value1947, value1))
    (child3889 : Flapjack.WordAlloc.removeDeadStructural input3889 value1947 value1 value2 = (output3889, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3890 value1946 value1 value2 = (output3890, value5, value1) := by
  rw [input3890_def, output3890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3884]
  dsimp only
  rw [child3889]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3884_skip, output3889_skip]
  kernel_rfl

theorem node3891_cond_eq
    (child3883 : Flapjack.WordAlloc.removeDeadStructural input3883 value1944 value1 value2 = (output3883, value1946, value1))
    (child3890 : Flapjack.WordAlloc.removeDeadStructural input3890 value1946 value1 value2 = (output3890, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3891 value1944 value1 value2 = (output3891, value5, value1) := by
  rw [input3891_def, output3891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3883]
  dsimp only
  rw [child3890]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3883_skip, output3890_skip]
  kernel_rfl

theorem node3892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3892 value5 value1 value2 = (output3892, value1950, value1) := by
  rw [input3892_def, output3892_def]
  kernel_rfl

theorem node3893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3893 value1950 value1 value2 = (output3893, value1951, value1) := by
  rw [input3893_def, output3893_def]
  kernel_rfl

theorem node3894_cond_eq
    (child3892 : Flapjack.WordAlloc.removeDeadStructural input3892 value5 value1 value2 = (output3892, value1950, value1))
    (child3893 : Flapjack.WordAlloc.removeDeadStructural input3893 value1950 value1 value2 = (output3893, value1951, value1)) : Flapjack.WordAlloc.removeDeadStructural input3894 value5 value1 value2 = (output3894, value1951, value1) := by
  rw [input3894_def, output3894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3892]
  dsimp only
  rw [child3893]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3892_skip, output3893_skip]
  kernel_rfl

theorem node3895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3895 value1951 value1 value2 = (output3895, value1952, value1) := by
  rw [input3895_def, output3895_def]
  kernel_rfl

theorem node3896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3896 value1952 value1 value2 = (output3896, value1952, value1) := by
  rw [input3896_def, output3896_def]
  kernel_rfl

theorem node3897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3897 value1952 value1 value2 = (output3897, value1953, value1) := by
  rw [input3897_def, output3897_def]
  kernel_rfl

theorem node3898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3898 value1953 value1 value2 = (output3898, value1954, value1) := by
  rw [input3898_def, output3898_def]
  kernel_rfl

theorem node3899_cond_eq
    (child3897 : Flapjack.WordAlloc.removeDeadStructural input3897 value1952 value1 value2 = (output3897, value1953, value1))
    (child3898 : Flapjack.WordAlloc.removeDeadStructural input3898 value1953 value1 value2 = (output3898, value1954, value1)) : Flapjack.WordAlloc.removeDeadStructural input3899 value1952 value1 value2 = (output3899, value1954, value1) := by
  rw [input3899_def, output3899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3897]
  dsimp only
  rw [child3898]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3897_skip, output3898_skip]
  kernel_rfl

theorem node3900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3900 value1954 value1 value2 = (output3900, value1955, value1) := by
  rw [input3900_def, output3900_def]
  kernel_rfl

theorem node3901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3901 value1955 value1 value2 = (output3901, value1956, value1) := by
  rw [input3901_def, output3901_def]
  kernel_rfl

theorem node3902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3902 value1956 value1 value2 = (output3902, value1957, value1) := by
  rw [input3902_def, output3902_def]
  kernel_rfl

theorem node3903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3903 value1957 value1 value2 = (output3903, value5, value1) := by
  rw [input3903_def, output3903_def]
  kernel_rfl

theorem node3904_cond_eq
    (child3902 : Flapjack.WordAlloc.removeDeadStructural input3902 value1956 value1 value2 = (output3902, value1957, value1))
    (child3903 : Flapjack.WordAlloc.removeDeadStructural input3903 value1957 value1 value2 = (output3903, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3904 value1956 value1 value2 = (output3904, value5, value1) := by
  rw [input3904_def, output3904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3902]
  dsimp only
  rw [child3903]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3902_skip, output3903_skip]
  kernel_rfl

theorem node3905_cond_eq
    (child3901 : Flapjack.WordAlloc.removeDeadStructural input3901 value1955 value1 value2 = (output3901, value1956, value1))
    (child3904 : Flapjack.WordAlloc.removeDeadStructural input3904 value1956 value1 value2 = (output3904, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3905 value1955 value1 value2 = (output3905, value5, value1) := by
  rw [input3905_def, output3905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3901]
  dsimp only
  rw [child3904]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3901_skip, output3904_skip]
  kernel_rfl

theorem node3906_cond_eq
    (child3900 : Flapjack.WordAlloc.removeDeadStructural input3900 value1954 value1 value2 = (output3900, value1955, value1))
    (child3905 : Flapjack.WordAlloc.removeDeadStructural input3905 value1955 value1 value2 = (output3905, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3906 value1954 value1 value2 = (output3906, value5, value1) := by
  rw [input3906_def, output3906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3900]
  dsimp only
  rw [child3905]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3900_skip, output3905_skip]
  kernel_rfl

theorem node3907_cond_eq
    (child3899 : Flapjack.WordAlloc.removeDeadStructural input3899 value1952 value1 value2 = (output3899, value1954, value1))
    (child3906 : Flapjack.WordAlloc.removeDeadStructural input3906 value1954 value1 value2 = (output3906, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3907 value1952 value1 value2 = (output3907, value5, value1) := by
  rw [input3907_def, output3907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3899]
  dsimp only
  rw [child3906]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3899_skip, output3906_skip]
  kernel_rfl

theorem node3908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3908 value5 value1 value2 = (output3908, value1958, value1) := by
  rw [input3908_def, output3908_def]
  kernel_rfl

theorem node3909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3909 value1958 value1 value2 = (output3909, value1959, value1) := by
  rw [input3909_def, output3909_def]
  kernel_rfl

theorem node3910_cond_eq
    (child3908 : Flapjack.WordAlloc.removeDeadStructural input3908 value5 value1 value2 = (output3908, value1958, value1))
    (child3909 : Flapjack.WordAlloc.removeDeadStructural input3909 value1958 value1 value2 = (output3909, value1959, value1)) : Flapjack.WordAlloc.removeDeadStructural input3910 value5 value1 value2 = (output3910, value1959, value1) := by
  rw [input3910_def, output3910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3908]
  dsimp only
  rw [child3909]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3908_skip, output3909_skip]
  kernel_rfl

theorem node3911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3911 value1959 value1 value2 = (output3911, value1960, value1) := by
  rw [input3911_def, output3911_def]
  kernel_rfl

theorem node3912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3912 value1960 value1 value2 = (output3912, value1960, value1) := by
  rw [input3912_def, output3912_def]
  kernel_rfl

theorem node3913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3913 value1960 value1 value2 = (output3913, value1961, value1) := by
  rw [input3913_def, output3913_def]
  kernel_rfl

theorem node3914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3914 value1961 value1 value2 = (output3914, value1962, value1) := by
  rw [input3914_def, output3914_def]
  kernel_rfl

theorem node3915_cond_eq
    (child3913 : Flapjack.WordAlloc.removeDeadStructural input3913 value1960 value1 value2 = (output3913, value1961, value1))
    (child3914 : Flapjack.WordAlloc.removeDeadStructural input3914 value1961 value1 value2 = (output3914, value1962, value1)) : Flapjack.WordAlloc.removeDeadStructural input3915 value1960 value1 value2 = (output3915, value1962, value1) := by
  rw [input3915_def, output3915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3913]
  dsimp only
  rw [child3914]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3913_skip, output3914_skip]
  kernel_rfl

theorem node3916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3916 value1962 value1 value2 = (output3916, value1963, value1) := by
  rw [input3916_def, output3916_def]
  kernel_rfl

theorem node3917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3917 value1963 value1 value2 = (output3917, value1964, value1) := by
  rw [input3917_def, output3917_def]
  kernel_rfl

theorem node3918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3918 value1964 value1 value2 = (output3918, value1965, value1) := by
  rw [input3918_def, output3918_def]
  kernel_rfl

theorem node3919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3919 value1965 value1 value2 = (output3919, value5, value1) := by
  rw [input3919_def, output3919_def]
  kernel_rfl

theorem node3920_cond_eq
    (child3918 : Flapjack.WordAlloc.removeDeadStructural input3918 value1964 value1 value2 = (output3918, value1965, value1))
    (child3919 : Flapjack.WordAlloc.removeDeadStructural input3919 value1965 value1 value2 = (output3919, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3920 value1964 value1 value2 = (output3920, value5, value1) := by
  rw [input3920_def, output3920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3918]
  dsimp only
  rw [child3919]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3918_skip, output3919_skip]
  kernel_rfl

theorem node3921_cond_eq
    (child3917 : Flapjack.WordAlloc.removeDeadStructural input3917 value1963 value1 value2 = (output3917, value1964, value1))
    (child3920 : Flapjack.WordAlloc.removeDeadStructural input3920 value1964 value1 value2 = (output3920, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3921 value1963 value1 value2 = (output3921, value5, value1) := by
  rw [input3921_def, output3921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3917]
  dsimp only
  rw [child3920]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3917_skip, output3920_skip]
  kernel_rfl

theorem node3922_cond_eq
    (child3916 : Flapjack.WordAlloc.removeDeadStructural input3916 value1962 value1 value2 = (output3916, value1963, value1))
    (child3921 : Flapjack.WordAlloc.removeDeadStructural input3921 value1963 value1 value2 = (output3921, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3922 value1962 value1 value2 = (output3922, value5, value1) := by
  rw [input3922_def, output3922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3916]
  dsimp only
  rw [child3921]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3916_skip, output3921_skip]
  kernel_rfl

theorem node3923_cond_eq
    (child3915 : Flapjack.WordAlloc.removeDeadStructural input3915 value1960 value1 value2 = (output3915, value1962, value1))
    (child3922 : Flapjack.WordAlloc.removeDeadStructural input3922 value1962 value1 value2 = (output3922, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3923 value1960 value1 value2 = (output3923, value5, value1) := by
  rw [input3923_def, output3923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3915]
  dsimp only
  rw [child3922]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3915_skip, output3922_skip]
  kernel_rfl

theorem node3924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3924 value5 value1 value2 = (output3924, value1966, value1) := by
  rw [input3924_def, output3924_def]
  kernel_rfl

theorem node3925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3925 value1966 value1 value2 = (output3925, value1967, value1) := by
  rw [input3925_def, output3925_def]
  kernel_rfl

theorem node3926_cond_eq
    (child3924 : Flapjack.WordAlloc.removeDeadStructural input3924 value5 value1 value2 = (output3924, value1966, value1))
    (child3925 : Flapjack.WordAlloc.removeDeadStructural input3925 value1966 value1 value2 = (output3925, value1967, value1)) : Flapjack.WordAlloc.removeDeadStructural input3926 value5 value1 value2 = (output3926, value1967, value1) := by
  rw [input3926_def, output3926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3924]
  dsimp only
  rw [child3925]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3924_skip, output3925_skip]
  kernel_rfl

theorem node3927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3927 value1967 value1 value2 = (output3927, value1968, value1) := by
  rw [input3927_def, output3927_def]
  kernel_rfl

theorem node3928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3928 value1968 value1 value2 = (output3928, value1968, value1) := by
  rw [input3928_def, output3928_def]
  kernel_rfl

theorem node3929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3929 value1968 value1 value2 = (output3929, value1969, value1) := by
  rw [input3929_def, output3929_def]
  kernel_rfl

theorem node3930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3930 value1969 value1 value2 = (output3930, value1970, value1) := by
  rw [input3930_def, output3930_def]
  kernel_rfl

theorem node3931_cond_eq
    (child3929 : Flapjack.WordAlloc.removeDeadStructural input3929 value1968 value1 value2 = (output3929, value1969, value1))
    (child3930 : Flapjack.WordAlloc.removeDeadStructural input3930 value1969 value1 value2 = (output3930, value1970, value1)) : Flapjack.WordAlloc.removeDeadStructural input3931 value1968 value1 value2 = (output3931, value1970, value1) := by
  rw [input3931_def, output3931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3929]
  dsimp only
  rw [child3930]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3929_skip, output3930_skip]
  kernel_rfl

theorem node3932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3932 value1970 value1 value2 = (output3932, value1971, value1) := by
  rw [input3932_def, output3932_def]
  kernel_rfl

theorem node3933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3933 value1971 value1 value2 = (output3933, value1972, value1) := by
  rw [input3933_def, output3933_def]
  kernel_rfl

theorem node3934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3934 value1972 value1 value2 = (output3934, value1973, value1) := by
  rw [input3934_def, output3934_def]
  kernel_rfl

theorem node3935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3935 value1973 value1 value2 = (output3935, value5, value1) := by
  rw [input3935_def, output3935_def]
  kernel_rfl

theorem node3936_cond_eq
    (child3934 : Flapjack.WordAlloc.removeDeadStructural input3934 value1972 value1 value2 = (output3934, value1973, value1))
    (child3935 : Flapjack.WordAlloc.removeDeadStructural input3935 value1973 value1 value2 = (output3935, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3936 value1972 value1 value2 = (output3936, value5, value1) := by
  rw [input3936_def, output3936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3934]
  dsimp only
  rw [child3935]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3934_skip, output3935_skip]
  kernel_rfl

theorem node3937_cond_eq
    (child3933 : Flapjack.WordAlloc.removeDeadStructural input3933 value1971 value1 value2 = (output3933, value1972, value1))
    (child3936 : Flapjack.WordAlloc.removeDeadStructural input3936 value1972 value1 value2 = (output3936, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3937 value1971 value1 value2 = (output3937, value5, value1) := by
  rw [input3937_def, output3937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3933]
  dsimp only
  rw [child3936]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3933_skip, output3936_skip]
  kernel_rfl

theorem node3938_cond_eq
    (child3932 : Flapjack.WordAlloc.removeDeadStructural input3932 value1970 value1 value2 = (output3932, value1971, value1))
    (child3937 : Flapjack.WordAlloc.removeDeadStructural input3937 value1971 value1 value2 = (output3937, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3938 value1970 value1 value2 = (output3938, value5, value1) := by
  rw [input3938_def, output3938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3932]
  dsimp only
  rw [child3937]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3932_skip, output3937_skip]
  kernel_rfl

theorem node3939_cond_eq
    (child3931 : Flapjack.WordAlloc.removeDeadStructural input3931 value1968 value1 value2 = (output3931, value1970, value1))
    (child3938 : Flapjack.WordAlloc.removeDeadStructural input3938 value1970 value1 value2 = (output3938, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3939 value1968 value1 value2 = (output3939, value5, value1) := by
  rw [input3939_def, output3939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3931]
  dsimp only
  rw [child3938]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3931_skip, output3938_skip]
  kernel_rfl

theorem node3940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3940 value5 value1 value2 = (output3940, value1974, value1) := by
  rw [input3940_def, output3940_def]
  kernel_rfl

theorem node3941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3941 value1974 value1 value2 = (output3941, value1975, value1) := by
  rw [input3941_def, output3941_def]
  kernel_rfl

theorem node3942_cond_eq
    (child3940 : Flapjack.WordAlloc.removeDeadStructural input3940 value5 value1 value2 = (output3940, value1974, value1))
    (child3941 : Flapjack.WordAlloc.removeDeadStructural input3941 value1974 value1 value2 = (output3941, value1975, value1)) : Flapjack.WordAlloc.removeDeadStructural input3942 value5 value1 value2 = (output3942, value1975, value1) := by
  rw [input3942_def, output3942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3940]
  dsimp only
  rw [child3941]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3940_skip, output3941_skip]
  kernel_rfl

theorem node3943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3943 value1975 value1 value2 = (output3943, value1976, value1) := by
  rw [input3943_def, output3943_def]
  kernel_rfl

theorem node3944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3944 value1976 value1 value2 = (output3944, value1976, value1) := by
  rw [input3944_def, output3944_def]
  kernel_rfl

theorem node3945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3945 value1976 value1 value2 = (output3945, value1977, value1) := by
  rw [input3945_def, output3945_def]
  kernel_rfl

theorem node3946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3946 value1977 value1 value2 = (output3946, value1978, value1) := by
  rw [input3946_def, output3946_def]
  kernel_rfl

theorem node3947_cond_eq
    (child3945 : Flapjack.WordAlloc.removeDeadStructural input3945 value1976 value1 value2 = (output3945, value1977, value1))
    (child3946 : Flapjack.WordAlloc.removeDeadStructural input3946 value1977 value1 value2 = (output3946, value1978, value1)) : Flapjack.WordAlloc.removeDeadStructural input3947 value1976 value1 value2 = (output3947, value1978, value1) := by
  rw [input3947_def, output3947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3945]
  dsimp only
  rw [child3946]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3945_skip, output3946_skip]
  kernel_rfl

theorem node3948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3948 value1978 value1 value2 = (output3948, value1979, value1) := by
  rw [input3948_def, output3948_def]
  kernel_rfl

theorem node3949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3949 value1979 value1 value2 = (output3949, value1980, value1) := by
  rw [input3949_def, output3949_def]
  kernel_rfl

theorem node3950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3950 value1980 value1 value2 = (output3950, value1981, value1) := by
  rw [input3950_def, output3950_def]
  kernel_rfl

theorem node3951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3951 value1981 value1 value2 = (output3951, value5, value1) := by
  rw [input3951_def, output3951_def]
  kernel_rfl

theorem node3952_cond_eq
    (child3950 : Flapjack.WordAlloc.removeDeadStructural input3950 value1980 value1 value2 = (output3950, value1981, value1))
    (child3951 : Flapjack.WordAlloc.removeDeadStructural input3951 value1981 value1 value2 = (output3951, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3952 value1980 value1 value2 = (output3952, value5, value1) := by
  rw [input3952_def, output3952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3950]
  dsimp only
  rw [child3951]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3950_skip, output3951_skip]
  kernel_rfl

theorem node3953_cond_eq
    (child3949 : Flapjack.WordAlloc.removeDeadStructural input3949 value1979 value1 value2 = (output3949, value1980, value1))
    (child3952 : Flapjack.WordAlloc.removeDeadStructural input3952 value1980 value1 value2 = (output3952, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3953 value1979 value1 value2 = (output3953, value5, value1) := by
  rw [input3953_def, output3953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3949]
  dsimp only
  rw [child3952]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3949_skip, output3952_skip]
  kernel_rfl

theorem node3954_cond_eq
    (child3948 : Flapjack.WordAlloc.removeDeadStructural input3948 value1978 value1 value2 = (output3948, value1979, value1))
    (child3953 : Flapjack.WordAlloc.removeDeadStructural input3953 value1979 value1 value2 = (output3953, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3954 value1978 value1 value2 = (output3954, value5, value1) := by
  rw [input3954_def, output3954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3948]
  dsimp only
  rw [child3953]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3948_skip, output3953_skip]
  kernel_rfl

theorem node3955_cond_eq
    (child3947 : Flapjack.WordAlloc.removeDeadStructural input3947 value1976 value1 value2 = (output3947, value1978, value1))
    (child3954 : Flapjack.WordAlloc.removeDeadStructural input3954 value1978 value1 value2 = (output3954, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3955 value1976 value1 value2 = (output3955, value5, value1) := by
  rw [input3955_def, output3955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3947]
  dsimp only
  rw [child3954]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3947_skip, output3954_skip]
  kernel_rfl

theorem node3956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3956 value5 value1 value2 = (output3956, value1982, value1) := by
  rw [input3956_def, output3956_def]
  kernel_rfl

theorem node3957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3957 value1982 value1 value2 = (output3957, value1983, value1) := by
  rw [input3957_def, output3957_def]
  kernel_rfl

theorem node3958_cond_eq
    (child3956 : Flapjack.WordAlloc.removeDeadStructural input3956 value5 value1 value2 = (output3956, value1982, value1))
    (child3957 : Flapjack.WordAlloc.removeDeadStructural input3957 value1982 value1 value2 = (output3957, value1983, value1)) : Flapjack.WordAlloc.removeDeadStructural input3958 value5 value1 value2 = (output3958, value1983, value1) := by
  rw [input3958_def, output3958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3956]
  dsimp only
  rw [child3957]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3956_skip, output3957_skip]
  kernel_rfl

theorem node3959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3959 value1983 value1 value2 = (output3959, value1984, value1) := by
  rw [input3959_def, output3959_def]
  kernel_rfl

theorem node3960_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3960 value1984 value1 value2 = (output3960, value1984, value1) := by
  rw [input3960_def, output3960_def]
  kernel_rfl

theorem node3961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3961 value1984 value1 value2 = (output3961, value1985, value1) := by
  rw [input3961_def, output3961_def]
  kernel_rfl

theorem node3962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3962 value1985 value1 value2 = (output3962, value1986, value1) := by
  rw [input3962_def, output3962_def]
  kernel_rfl

theorem node3963_cond_eq
    (child3961 : Flapjack.WordAlloc.removeDeadStructural input3961 value1984 value1 value2 = (output3961, value1985, value1))
    (child3962 : Flapjack.WordAlloc.removeDeadStructural input3962 value1985 value1 value2 = (output3962, value1986, value1)) : Flapjack.WordAlloc.removeDeadStructural input3963 value1984 value1 value2 = (output3963, value1986, value1) := by
  rw [input3963_def, output3963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3961]
  dsimp only
  rw [child3962]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3961_skip, output3962_skip]
  kernel_rfl

theorem node3964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3964 value1986 value1 value2 = (output3964, value1987, value1) := by
  rw [input3964_def, output3964_def]
  kernel_rfl

theorem node3965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3965 value1987 value1 value2 = (output3965, value1988, value1) := by
  rw [input3965_def, output3965_def]
  kernel_rfl

theorem node3966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3966 value1988 value1 value2 = (output3966, value1989, value1) := by
  rw [input3966_def, output3966_def]
  kernel_rfl

theorem node3967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3967 value1989 value1 value2 = (output3967, value5, value1) := by
  rw [input3967_def, output3967_def]
  kernel_rfl

theorem node3968_cond_eq
    (child3966 : Flapjack.WordAlloc.removeDeadStructural input3966 value1988 value1 value2 = (output3966, value1989, value1))
    (child3967 : Flapjack.WordAlloc.removeDeadStructural input3967 value1989 value1 value2 = (output3967, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3968 value1988 value1 value2 = (output3968, value5, value1) := by
  rw [input3968_def, output3968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3966]
  dsimp only
  rw [child3967]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3966_skip, output3967_skip]
  kernel_rfl

theorem node3969_cond_eq
    (child3965 : Flapjack.WordAlloc.removeDeadStructural input3965 value1987 value1 value2 = (output3965, value1988, value1))
    (child3968 : Flapjack.WordAlloc.removeDeadStructural input3968 value1988 value1 value2 = (output3968, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3969 value1987 value1 value2 = (output3969, value5, value1) := by
  rw [input3969_def, output3969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3965]
  dsimp only
  rw [child3968]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3965_skip, output3968_skip]
  kernel_rfl

theorem node3970_cond_eq
    (child3964 : Flapjack.WordAlloc.removeDeadStructural input3964 value1986 value1 value2 = (output3964, value1987, value1))
    (child3969 : Flapjack.WordAlloc.removeDeadStructural input3969 value1987 value1 value2 = (output3969, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3970 value1986 value1 value2 = (output3970, value5, value1) := by
  rw [input3970_def, output3970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3964]
  dsimp only
  rw [child3969]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3964_skip, output3969_skip]
  kernel_rfl

theorem node3971_cond_eq
    (child3963 : Flapjack.WordAlloc.removeDeadStructural input3963 value1984 value1 value2 = (output3963, value1986, value1))
    (child3970 : Flapjack.WordAlloc.removeDeadStructural input3970 value1986 value1 value2 = (output3970, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3971 value1984 value1 value2 = (output3971, value5, value1) := by
  rw [input3971_def, output3971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3963]
  dsimp only
  rw [child3970]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3963_skip, output3970_skip]
  kernel_rfl

theorem node3972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3972 value5 value1 value2 = (output3972, value1990, value1) := by
  rw [input3972_def, output3972_def]
  kernel_rfl

theorem node3973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3973 value1990 value1 value2 = (output3973, value1991, value1) := by
  rw [input3973_def, output3973_def]
  kernel_rfl

theorem node3974_cond_eq
    (child3972 : Flapjack.WordAlloc.removeDeadStructural input3972 value5 value1 value2 = (output3972, value1990, value1))
    (child3973 : Flapjack.WordAlloc.removeDeadStructural input3973 value1990 value1 value2 = (output3973, value1991, value1)) : Flapjack.WordAlloc.removeDeadStructural input3974 value5 value1 value2 = (output3974, value1991, value1) := by
  rw [input3974_def, output3974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3972]
  dsimp only
  rw [child3973]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3972_skip, output3973_skip]
  kernel_rfl

theorem node3975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3975 value1991 value1 value2 = (output3975, value1992, value1) := by
  rw [input3975_def, output3975_def]
  kernel_rfl

theorem node3976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3976 value1992 value1 value2 = (output3976, value1992, value1) := by
  rw [input3976_def, output3976_def]
  kernel_rfl

theorem node3977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3977 value1992 value1 value2 = (output3977, value1993, value1) := by
  rw [input3977_def, output3977_def]
  kernel_rfl

theorem node3978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3978 value1993 value1 value2 = (output3978, value1994, value1) := by
  rw [input3978_def, output3978_def]
  kernel_rfl

theorem node3979_cond_eq
    (child3977 : Flapjack.WordAlloc.removeDeadStructural input3977 value1992 value1 value2 = (output3977, value1993, value1))
    (child3978 : Flapjack.WordAlloc.removeDeadStructural input3978 value1993 value1 value2 = (output3978, value1994, value1)) : Flapjack.WordAlloc.removeDeadStructural input3979 value1992 value1 value2 = (output3979, value1994, value1) := by
  rw [input3979_def, output3979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3977]
  dsimp only
  rw [child3978]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3977_skip, output3978_skip]
  kernel_rfl

theorem node3980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3980 value1994 value1 value2 = (output3980, value1995, value1) := by
  rw [input3980_def, output3980_def]
  kernel_rfl

theorem node3981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3981 value1995 value1 value2 = (output3981, value1996, value1) := by
  rw [input3981_def, output3981_def]
  kernel_rfl

theorem node3982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3982 value1996 value1 value2 = (output3982, value1997, value1) := by
  rw [input3982_def, output3982_def]
  kernel_rfl

theorem node3983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3983 value1997 value1 value2 = (output3983, value5, value1) := by
  rw [input3983_def, output3983_def]
  kernel_rfl

theorem node3984_cond_eq
    (child3982 : Flapjack.WordAlloc.removeDeadStructural input3982 value1996 value1 value2 = (output3982, value1997, value1))
    (child3983 : Flapjack.WordAlloc.removeDeadStructural input3983 value1997 value1 value2 = (output3983, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3984 value1996 value1 value2 = (output3984, value5, value1) := by
  rw [input3984_def, output3984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3982]
  dsimp only
  rw [child3983]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3982_skip, output3983_skip]
  kernel_rfl

theorem node3985_cond_eq
    (child3981 : Flapjack.WordAlloc.removeDeadStructural input3981 value1995 value1 value2 = (output3981, value1996, value1))
    (child3984 : Flapjack.WordAlloc.removeDeadStructural input3984 value1996 value1 value2 = (output3984, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3985 value1995 value1 value2 = (output3985, value5, value1) := by
  rw [input3985_def, output3985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3981]
  dsimp only
  rw [child3984]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3981_skip, output3984_skip]
  kernel_rfl

theorem node3986_cond_eq
    (child3980 : Flapjack.WordAlloc.removeDeadStructural input3980 value1994 value1 value2 = (output3980, value1995, value1))
    (child3985 : Flapjack.WordAlloc.removeDeadStructural input3985 value1995 value1 value2 = (output3985, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3986 value1994 value1 value2 = (output3986, value5, value1) := by
  rw [input3986_def, output3986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3980]
  dsimp only
  rw [child3985]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3980_skip, output3985_skip]
  kernel_rfl

theorem node3987_cond_eq
    (child3979 : Flapjack.WordAlloc.removeDeadStructural input3979 value1992 value1 value2 = (output3979, value1994, value1))
    (child3986 : Flapjack.WordAlloc.removeDeadStructural input3986 value1994 value1 value2 = (output3986, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input3987 value1992 value1 value2 = (output3987, value5, value1) := by
  rw [input3987_def, output3987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3979]
  dsimp only
  rw [child3986]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3979_skip, output3986_skip]
  kernel_rfl

theorem node3988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3988 value5 value1 value2 = (output3988, value1998, value1) := by
  rw [input3988_def, output3988_def]
  kernel_rfl

theorem node3989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3989 value1998 value1 value2 = (output3989, value1999, value1) := by
  rw [input3989_def, output3989_def]
  kernel_rfl

theorem node3990_cond_eq
    (child3988 : Flapjack.WordAlloc.removeDeadStructural input3988 value5 value1 value2 = (output3988, value1998, value1))
    (child3989 : Flapjack.WordAlloc.removeDeadStructural input3989 value1998 value1 value2 = (output3989, value1999, value1)) : Flapjack.WordAlloc.removeDeadStructural input3990 value5 value1 value2 = (output3990, value1999, value1) := by
  rw [input3990_def, output3990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3988]
  dsimp only
  rw [child3989]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3988_skip, output3989_skip]
  kernel_rfl

theorem node3991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3991 value1999 value1 value2 = (output3991, value2000, value1) := by
  rw [input3991_def, output3991_def]
  kernel_rfl

theorem node3992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3992 value2000 value1 value2 = (output3992, value2000, value1) := by
  rw [input3992_def, output3992_def]
  kernel_rfl

theorem node3993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3993 value2000 value1 value2 = (output3993, value2001, value1) := by
  rw [input3993_def, output3993_def]
  kernel_rfl

theorem node3994_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3994 value2001 value1 value2 = (output3994, value2002, value1) := by
  rw [input3994_def, output3994_def]
  kernel_rfl

theorem node3995_cond_eq
    (child3993 : Flapjack.WordAlloc.removeDeadStructural input3993 value2000 value1 value2 = (output3993, value2001, value1))
    (child3994 : Flapjack.WordAlloc.removeDeadStructural input3994 value2001 value1 value2 = (output3994, value2002, value1)) : Flapjack.WordAlloc.removeDeadStructural input3995 value2000 value1 value2 = (output3995, value2002, value1) := by
  rw [input3995_def, output3995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3993]
  dsimp only
  rw [child3994]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3993_skip, output3994_skip]
  kernel_rfl

theorem node3996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3996 value2002 value1 value2 = (output3996, value2003, value1) := by
  rw [input3996_def, output3996_def]
  kernel_rfl

theorem node3997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3997 value2003 value1 value2 = (output3997, value2004, value1) := by
  rw [input3997_def, output3997_def]
  kernel_rfl

theorem node3998_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3998 value2004 value1 value2 = (output3998, value2005, value1) := by
  rw [input3998_def, output3998_def]
  kernel_rfl

theorem node3999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input3999 value2005 value1 value2 = (output3999, value5, value1) := by
  rw [input3999_def, output3999_def]
  kernel_rfl

theorem node4000_cond_eq
    (child3998 : Flapjack.WordAlloc.removeDeadStructural input3998 value2004 value1 value2 = (output3998, value2005, value1))
    (child3999 : Flapjack.WordAlloc.removeDeadStructural input3999 value2005 value1 value2 = (output3999, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4000 value2004 value1 value2 = (output4000, value5, value1) := by
  rw [input4000_def, output4000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3998]
  dsimp only
  rw [child3999]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3998_skip, output3999_skip]
  kernel_rfl

theorem node4001_cond_eq
    (child3997 : Flapjack.WordAlloc.removeDeadStructural input3997 value2003 value1 value2 = (output3997, value2004, value1))
    (child4000 : Flapjack.WordAlloc.removeDeadStructural input4000 value2004 value1 value2 = (output4000, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4001 value2003 value1 value2 = (output4001, value5, value1) := by
  rw [input4001_def, output4001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3997]
  dsimp only
  rw [child4000]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3997_skip, output4000_skip]
  kernel_rfl

theorem node4002_cond_eq
    (child3996 : Flapjack.WordAlloc.removeDeadStructural input3996 value2002 value1 value2 = (output3996, value2003, value1))
    (child4001 : Flapjack.WordAlloc.removeDeadStructural input4001 value2003 value1 value2 = (output4001, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4002 value2002 value1 value2 = (output4002, value5, value1) := by
  rw [input4002_def, output4002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3996]
  dsimp only
  rw [child4001]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3996_skip, output4001_skip]
  kernel_rfl

theorem node4003_cond_eq
    (child3995 : Flapjack.WordAlloc.removeDeadStructural input3995 value2000 value1 value2 = (output3995, value2002, value1))
    (child4002 : Flapjack.WordAlloc.removeDeadStructural input4002 value2002 value1 value2 = (output4002, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4003 value2000 value1 value2 = (output4003, value5, value1) := by
  rw [input4003_def, output4003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3995]
  dsimp only
  rw [child4002]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3995_skip, output4002_skip]
  kernel_rfl

theorem node4004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4004 value5 value1 value2 = (output4004, value2006, value1) := by
  rw [input4004_def, output4004_def]
  kernel_rfl

theorem node4005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4005 value2006 value1 value2 = (output4005, value2007, value1) := by
  rw [input4005_def, output4005_def]
  kernel_rfl

theorem node4006_cond_eq
    (child4004 : Flapjack.WordAlloc.removeDeadStructural input4004 value5 value1 value2 = (output4004, value2006, value1))
    (child4005 : Flapjack.WordAlloc.removeDeadStructural input4005 value2006 value1 value2 = (output4005, value2007, value1)) : Flapjack.WordAlloc.removeDeadStructural input4006 value5 value1 value2 = (output4006, value2007, value1) := by
  rw [input4006_def, output4006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4004]
  dsimp only
  rw [child4005]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4004_skip, output4005_skip]
  kernel_rfl

theorem node4007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4007 value2007 value1 value2 = (output4007, value2008, value1) := by
  rw [input4007_def, output4007_def]
  kernel_rfl

theorem node4008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4008 value2008 value1 value2 = (output4008, value2008, value1) := by
  rw [input4008_def, output4008_def]
  kernel_rfl

theorem node4009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4009 value2008 value1 value2 = (output4009, value2009, value1) := by
  rw [input4009_def, output4009_def]
  kernel_rfl

theorem node4010_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4010 value2009 value1 value2 = (output4010, value2010, value1) := by
  rw [input4010_def, output4010_def]
  kernel_rfl

theorem node4011_cond_eq
    (child4009 : Flapjack.WordAlloc.removeDeadStructural input4009 value2008 value1 value2 = (output4009, value2009, value1))
    (child4010 : Flapjack.WordAlloc.removeDeadStructural input4010 value2009 value1 value2 = (output4010, value2010, value1)) : Flapjack.WordAlloc.removeDeadStructural input4011 value2008 value1 value2 = (output4011, value2010, value1) := by
  rw [input4011_def, output4011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4009]
  dsimp only
  rw [child4010]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4009_skip, output4010_skip]
  kernel_rfl

theorem node4012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4012 value2010 value1 value2 = (output4012, value2011, value1) := by
  rw [input4012_def, output4012_def]
  kernel_rfl

theorem node4013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4013 value2011 value1 value2 = (output4013, value2012, value1) := by
  rw [input4013_def, output4013_def]
  kernel_rfl

theorem node4014_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4014 value2012 value1 value2 = (output4014, value2013, value1) := by
  rw [input4014_def, output4014_def]
  kernel_rfl

theorem node4015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4015 value2013 value1 value2 = (output4015, value5, value1) := by
  rw [input4015_def, output4015_def]
  kernel_rfl

theorem node4016_cond_eq
    (child4014 : Flapjack.WordAlloc.removeDeadStructural input4014 value2012 value1 value2 = (output4014, value2013, value1))
    (child4015 : Flapjack.WordAlloc.removeDeadStructural input4015 value2013 value1 value2 = (output4015, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4016 value2012 value1 value2 = (output4016, value5, value1) := by
  rw [input4016_def, output4016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4014]
  dsimp only
  rw [child4015]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4014_skip, output4015_skip]
  kernel_rfl

theorem node4017_cond_eq
    (child4013 : Flapjack.WordAlloc.removeDeadStructural input4013 value2011 value1 value2 = (output4013, value2012, value1))
    (child4016 : Flapjack.WordAlloc.removeDeadStructural input4016 value2012 value1 value2 = (output4016, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4017 value2011 value1 value2 = (output4017, value5, value1) := by
  rw [input4017_def, output4017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4013]
  dsimp only
  rw [child4016]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4013_skip, output4016_skip]
  kernel_rfl

theorem node4018_cond_eq
    (child4012 : Flapjack.WordAlloc.removeDeadStructural input4012 value2010 value1 value2 = (output4012, value2011, value1))
    (child4017 : Flapjack.WordAlloc.removeDeadStructural input4017 value2011 value1 value2 = (output4017, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4018 value2010 value1 value2 = (output4018, value5, value1) := by
  rw [input4018_def, output4018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4012]
  dsimp only
  rw [child4017]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4012_skip, output4017_skip]
  kernel_rfl

theorem node4019_cond_eq
    (child4011 : Flapjack.WordAlloc.removeDeadStructural input4011 value2008 value1 value2 = (output4011, value2010, value1))
    (child4018 : Flapjack.WordAlloc.removeDeadStructural input4018 value2010 value1 value2 = (output4018, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4019 value2008 value1 value2 = (output4019, value5, value1) := by
  rw [input4019_def, output4019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4011]
  dsimp only
  rw [child4018]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4011_skip, output4018_skip]
  kernel_rfl

theorem node4020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4020 value5 value1 value2 = (output4020, value2014, value1) := by
  rw [input4020_def, output4020_def]
  kernel_rfl

theorem node4021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4021 value2014 value1 value2 = (output4021, value2015, value1) := by
  rw [input4021_def, output4021_def]
  kernel_rfl

theorem node4022_cond_eq
    (child4020 : Flapjack.WordAlloc.removeDeadStructural input4020 value5 value1 value2 = (output4020, value2014, value1))
    (child4021 : Flapjack.WordAlloc.removeDeadStructural input4021 value2014 value1 value2 = (output4021, value2015, value1)) : Flapjack.WordAlloc.removeDeadStructural input4022 value5 value1 value2 = (output4022, value2015, value1) := by
  rw [input4022_def, output4022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4020]
  dsimp only
  rw [child4021]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4020_skip, output4021_skip]
  kernel_rfl

theorem node4023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4023 value2015 value1 value2 = (output4023, value2016, value1) := by
  rw [input4023_def, output4023_def]
  kernel_rfl

theorem node4024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4024 value2016 value1 value2 = (output4024, value2016, value1) := by
  rw [input4024_def, output4024_def]
  kernel_rfl

theorem node4025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4025 value2016 value1 value2 = (output4025, value2017, value1) := by
  rw [input4025_def, output4025_def]
  kernel_rfl

theorem node4026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4026 value2017 value1 value2 = (output4026, value2018, value1) := by
  rw [input4026_def, output4026_def]
  kernel_rfl

theorem node4027_cond_eq
    (child4025 : Flapjack.WordAlloc.removeDeadStructural input4025 value2016 value1 value2 = (output4025, value2017, value1))
    (child4026 : Flapjack.WordAlloc.removeDeadStructural input4026 value2017 value1 value2 = (output4026, value2018, value1)) : Flapjack.WordAlloc.removeDeadStructural input4027 value2016 value1 value2 = (output4027, value2018, value1) := by
  rw [input4027_def, output4027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4025]
  dsimp only
  rw [child4026]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4025_skip, output4026_skip]
  kernel_rfl

theorem node4028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4028 value2018 value1 value2 = (output4028, value2019, value1) := by
  rw [input4028_def, output4028_def]
  kernel_rfl

theorem node4029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4029 value2019 value1 value2 = (output4029, value2020, value1) := by
  rw [input4029_def, output4029_def]
  kernel_rfl

theorem node4030_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4030 value2020 value1 value2 = (output4030, value2021, value1) := by
  rw [input4030_def, output4030_def]
  kernel_rfl

theorem node4031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4031 value2021 value1 value2 = (output4031, value5, value1) := by
  rw [input4031_def, output4031_def]
  kernel_rfl

theorem node4032_cond_eq
    (child4030 : Flapjack.WordAlloc.removeDeadStructural input4030 value2020 value1 value2 = (output4030, value2021, value1))
    (child4031 : Flapjack.WordAlloc.removeDeadStructural input4031 value2021 value1 value2 = (output4031, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4032 value2020 value1 value2 = (output4032, value5, value1) := by
  rw [input4032_def, output4032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4030]
  dsimp only
  rw [child4031]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4030_skip, output4031_skip]
  kernel_rfl

theorem node4033_cond_eq
    (child4029 : Flapjack.WordAlloc.removeDeadStructural input4029 value2019 value1 value2 = (output4029, value2020, value1))
    (child4032 : Flapjack.WordAlloc.removeDeadStructural input4032 value2020 value1 value2 = (output4032, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4033 value2019 value1 value2 = (output4033, value5, value1) := by
  rw [input4033_def, output4033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4029]
  dsimp only
  rw [child4032]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4029_skip, output4032_skip]
  kernel_rfl

theorem node4034_cond_eq
    (child4028 : Flapjack.WordAlloc.removeDeadStructural input4028 value2018 value1 value2 = (output4028, value2019, value1))
    (child4033 : Flapjack.WordAlloc.removeDeadStructural input4033 value2019 value1 value2 = (output4033, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4034 value2018 value1 value2 = (output4034, value5, value1) := by
  rw [input4034_def, output4034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4028]
  dsimp only
  rw [child4033]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4028_skip, output4033_skip]
  kernel_rfl

theorem node4035_cond_eq
    (child4027 : Flapjack.WordAlloc.removeDeadStructural input4027 value2016 value1 value2 = (output4027, value2018, value1))
    (child4034 : Flapjack.WordAlloc.removeDeadStructural input4034 value2018 value1 value2 = (output4034, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4035 value2016 value1 value2 = (output4035, value5, value1) := by
  rw [input4035_def, output4035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4027]
  dsimp only
  rw [child4034]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4027_skip, output4034_skip]
  kernel_rfl

theorem node4036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4036 value5 value1 value2 = (output4036, value2022, value1) := by
  rw [input4036_def, output4036_def]
  kernel_rfl

theorem node4037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4037 value2022 value1 value2 = (output4037, value2023, value1) := by
  rw [input4037_def, output4037_def]
  kernel_rfl

theorem node4038_cond_eq
    (child4036 : Flapjack.WordAlloc.removeDeadStructural input4036 value5 value1 value2 = (output4036, value2022, value1))
    (child4037 : Flapjack.WordAlloc.removeDeadStructural input4037 value2022 value1 value2 = (output4037, value2023, value1)) : Flapjack.WordAlloc.removeDeadStructural input4038 value5 value1 value2 = (output4038, value2023, value1) := by
  rw [input4038_def, output4038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4036]
  dsimp only
  rw [child4037]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4036_skip, output4037_skip]
  kernel_rfl

theorem node4039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4039 value2023 value1 value2 = (output4039, value2024, value1) := by
  rw [input4039_def, output4039_def]
  kernel_rfl

theorem node4040_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4040 value2024 value1 value2 = (output4040, value2024, value1) := by
  rw [input4040_def, output4040_def]
  kernel_rfl

theorem node4041_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4041 value2024 value1 value2 = (output4041, value2025, value1) := by
  rw [input4041_def, output4041_def]
  kernel_rfl

theorem node4042_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4042 value2025 value1 value2 = (output4042, value2026, value1) := by
  rw [input4042_def, output4042_def]
  kernel_rfl

theorem node4043_cond_eq
    (child4041 : Flapjack.WordAlloc.removeDeadStructural input4041 value2024 value1 value2 = (output4041, value2025, value1))
    (child4042 : Flapjack.WordAlloc.removeDeadStructural input4042 value2025 value1 value2 = (output4042, value2026, value1)) : Flapjack.WordAlloc.removeDeadStructural input4043 value2024 value1 value2 = (output4043, value2026, value1) := by
  rw [input4043_def, output4043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4041]
  dsimp only
  rw [child4042]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4041_skip, output4042_skip]
  kernel_rfl

theorem node4044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4044 value2026 value1 value2 = (output4044, value2027, value1) := by
  rw [input4044_def, output4044_def]
  kernel_rfl

theorem node4045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4045 value2027 value1 value2 = (output4045, value2028, value1) := by
  rw [input4045_def, output4045_def]
  kernel_rfl

theorem node4046_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4046 value2028 value1 value2 = (output4046, value2029, value1) := by
  rw [input4046_def, output4046_def]
  kernel_rfl

theorem node4047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4047 value2029 value1 value2 = (output4047, value5, value1) := by
  rw [input4047_def, output4047_def]
  kernel_rfl

theorem node4048_cond_eq
    (child4046 : Flapjack.WordAlloc.removeDeadStructural input4046 value2028 value1 value2 = (output4046, value2029, value1))
    (child4047 : Flapjack.WordAlloc.removeDeadStructural input4047 value2029 value1 value2 = (output4047, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4048 value2028 value1 value2 = (output4048, value5, value1) := by
  rw [input4048_def, output4048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4046]
  dsimp only
  rw [child4047]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4046_skip, output4047_skip]
  kernel_rfl

theorem node4049_cond_eq
    (child4045 : Flapjack.WordAlloc.removeDeadStructural input4045 value2027 value1 value2 = (output4045, value2028, value1))
    (child4048 : Flapjack.WordAlloc.removeDeadStructural input4048 value2028 value1 value2 = (output4048, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4049 value2027 value1 value2 = (output4049, value5, value1) := by
  rw [input4049_def, output4049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4045]
  dsimp only
  rw [child4048]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4045_skip, output4048_skip]
  kernel_rfl

theorem node4050_cond_eq
    (child4044 : Flapjack.WordAlloc.removeDeadStructural input4044 value2026 value1 value2 = (output4044, value2027, value1))
    (child4049 : Flapjack.WordAlloc.removeDeadStructural input4049 value2027 value1 value2 = (output4049, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4050 value2026 value1 value2 = (output4050, value5, value1) := by
  rw [input4050_def, output4050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4044]
  dsimp only
  rw [child4049]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4044_skip, output4049_skip]
  kernel_rfl

theorem node4051_cond_eq
    (child4043 : Flapjack.WordAlloc.removeDeadStructural input4043 value2024 value1 value2 = (output4043, value2026, value1))
    (child4050 : Flapjack.WordAlloc.removeDeadStructural input4050 value2026 value1 value2 = (output4050, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4051 value2024 value1 value2 = (output4051, value5, value1) := by
  rw [input4051_def, output4051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4043]
  dsimp only
  rw [child4050]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4043_skip, output4050_skip]
  kernel_rfl

theorem node4052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4052 value5 value1 value2 = (output4052, value2030, value1) := by
  rw [input4052_def, output4052_def]
  kernel_rfl

theorem node4053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4053 value2030 value1 value2 = (output4053, value2031, value1) := by
  rw [input4053_def, output4053_def]
  kernel_rfl

theorem node4054_cond_eq
    (child4052 : Flapjack.WordAlloc.removeDeadStructural input4052 value5 value1 value2 = (output4052, value2030, value1))
    (child4053 : Flapjack.WordAlloc.removeDeadStructural input4053 value2030 value1 value2 = (output4053, value2031, value1)) : Flapjack.WordAlloc.removeDeadStructural input4054 value5 value1 value2 = (output4054, value2031, value1) := by
  rw [input4054_def, output4054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4052]
  dsimp only
  rw [child4053]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4052_skip, output4053_skip]
  kernel_rfl

theorem node4055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4055 value2031 value1 value2 = (output4055, value2032, value1) := by
  rw [input4055_def, output4055_def]
  kernel_rfl

theorem node4056_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4056 value2032 value1 value2 = (output4056, value2032, value1) := by
  rw [input4056_def, output4056_def]
  kernel_rfl

theorem node4057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4057 value2032 value1 value2 = (output4057, value2033, value1) := by
  rw [input4057_def, output4057_def]
  kernel_rfl

theorem node4058_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4058 value2033 value1 value2 = (output4058, value2034, value1) := by
  rw [input4058_def, output4058_def]
  kernel_rfl

theorem node4059_cond_eq
    (child4057 : Flapjack.WordAlloc.removeDeadStructural input4057 value2032 value1 value2 = (output4057, value2033, value1))
    (child4058 : Flapjack.WordAlloc.removeDeadStructural input4058 value2033 value1 value2 = (output4058, value2034, value1)) : Flapjack.WordAlloc.removeDeadStructural input4059 value2032 value1 value2 = (output4059, value2034, value1) := by
  rw [input4059_def, output4059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4057]
  dsimp only
  rw [child4058]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4057_skip, output4058_skip]
  kernel_rfl

theorem node4060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4060 value2034 value1 value2 = (output4060, value2035, value1) := by
  rw [input4060_def, output4060_def]
  kernel_rfl

theorem node4061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4061 value2035 value1 value2 = (output4061, value2036, value1) := by
  rw [input4061_def, output4061_def]
  kernel_rfl

theorem node4062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4062 value2036 value1 value2 = (output4062, value2037, value1) := by
  rw [input4062_def, output4062_def]
  kernel_rfl

theorem node4063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4063 value2037 value1 value2 = (output4063, value5, value1) := by
  rw [input4063_def, output4063_def]
  kernel_rfl

theorem node4064_cond_eq
    (child4062 : Flapjack.WordAlloc.removeDeadStructural input4062 value2036 value1 value2 = (output4062, value2037, value1))
    (child4063 : Flapjack.WordAlloc.removeDeadStructural input4063 value2037 value1 value2 = (output4063, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4064 value2036 value1 value2 = (output4064, value5, value1) := by
  rw [input4064_def, output4064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4062]
  dsimp only
  rw [child4063]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4062_skip, output4063_skip]
  kernel_rfl

theorem node4065_cond_eq
    (child4061 : Flapjack.WordAlloc.removeDeadStructural input4061 value2035 value1 value2 = (output4061, value2036, value1))
    (child4064 : Flapjack.WordAlloc.removeDeadStructural input4064 value2036 value1 value2 = (output4064, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4065 value2035 value1 value2 = (output4065, value5, value1) := by
  rw [input4065_def, output4065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4061]
  dsimp only
  rw [child4064]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4061_skip, output4064_skip]
  kernel_rfl

theorem node4066_cond_eq
    (child4060 : Flapjack.WordAlloc.removeDeadStructural input4060 value2034 value1 value2 = (output4060, value2035, value1))
    (child4065 : Flapjack.WordAlloc.removeDeadStructural input4065 value2035 value1 value2 = (output4065, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4066 value2034 value1 value2 = (output4066, value5, value1) := by
  rw [input4066_def, output4066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4060]
  dsimp only
  rw [child4065]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4060_skip, output4065_skip]
  kernel_rfl

theorem node4067_cond_eq
    (child4059 : Flapjack.WordAlloc.removeDeadStructural input4059 value2032 value1 value2 = (output4059, value2034, value1))
    (child4066 : Flapjack.WordAlloc.removeDeadStructural input4066 value2034 value1 value2 = (output4066, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4067 value2032 value1 value2 = (output4067, value5, value1) := by
  rw [input4067_def, output4067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4059]
  dsimp only
  rw [child4066]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4059_skip, output4066_skip]
  kernel_rfl

theorem node4068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4068 value5 value1 value2 = (output4068, value2038, value1) := by
  rw [input4068_def, output4068_def]
  kernel_rfl

theorem node4069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4069 value2038 value1 value2 = (output4069, value2039, value1) := by
  rw [input4069_def, output4069_def]
  kernel_rfl

theorem node4070_cond_eq
    (child4068 : Flapjack.WordAlloc.removeDeadStructural input4068 value5 value1 value2 = (output4068, value2038, value1))
    (child4069 : Flapjack.WordAlloc.removeDeadStructural input4069 value2038 value1 value2 = (output4069, value2039, value1)) : Flapjack.WordAlloc.removeDeadStructural input4070 value5 value1 value2 = (output4070, value2039, value1) := by
  rw [input4070_def, output4070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4068]
  dsimp only
  rw [child4069]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4068_skip, output4069_skip]
  kernel_rfl

theorem node4071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4071 value2039 value1 value2 = (output4071, value2040, value1) := by
  rw [input4071_def, output4071_def]
  kernel_rfl

theorem node4072_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4072 value2040 value1 value2 = (output4072, value2040, value1) := by
  rw [input4072_def, output4072_def]
  kernel_rfl

theorem node4073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4073 value2040 value1 value2 = (output4073, value2041, value1) := by
  rw [input4073_def, output4073_def]
  kernel_rfl

theorem node4074_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4074 value2041 value1 value2 = (output4074, value2042, value1) := by
  rw [input4074_def, output4074_def]
  kernel_rfl

theorem node4075_cond_eq
    (child4073 : Flapjack.WordAlloc.removeDeadStructural input4073 value2040 value1 value2 = (output4073, value2041, value1))
    (child4074 : Flapjack.WordAlloc.removeDeadStructural input4074 value2041 value1 value2 = (output4074, value2042, value1)) : Flapjack.WordAlloc.removeDeadStructural input4075 value2040 value1 value2 = (output4075, value2042, value1) := by
  rw [input4075_def, output4075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4073]
  dsimp only
  rw [child4074]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4073_skip, output4074_skip]
  kernel_rfl

theorem node4076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4076 value2042 value1 value2 = (output4076, value2043, value1) := by
  rw [input4076_def, output4076_def]
  kernel_rfl

theorem node4077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4077 value2043 value1 value2 = (output4077, value2044, value1) := by
  rw [input4077_def, output4077_def]
  kernel_rfl

theorem node4078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4078 value2044 value1 value2 = (output4078, value2045, value1) := by
  rw [input4078_def, output4078_def]
  kernel_rfl

theorem node4079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4079 value2045 value1 value2 = (output4079, value5, value1) := by
  rw [input4079_def, output4079_def]
  kernel_rfl

theorem node4080_cond_eq
    (child4078 : Flapjack.WordAlloc.removeDeadStructural input4078 value2044 value1 value2 = (output4078, value2045, value1))
    (child4079 : Flapjack.WordAlloc.removeDeadStructural input4079 value2045 value1 value2 = (output4079, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4080 value2044 value1 value2 = (output4080, value5, value1) := by
  rw [input4080_def, output4080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4078]
  dsimp only
  rw [child4079]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4078_skip, output4079_skip]
  kernel_rfl

theorem node4081_cond_eq
    (child4077 : Flapjack.WordAlloc.removeDeadStructural input4077 value2043 value1 value2 = (output4077, value2044, value1))
    (child4080 : Flapjack.WordAlloc.removeDeadStructural input4080 value2044 value1 value2 = (output4080, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4081 value2043 value1 value2 = (output4081, value5, value1) := by
  rw [input4081_def, output4081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4077]
  dsimp only
  rw [child4080]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4077_skip, output4080_skip]
  kernel_rfl

theorem node4082_cond_eq
    (child4076 : Flapjack.WordAlloc.removeDeadStructural input4076 value2042 value1 value2 = (output4076, value2043, value1))
    (child4081 : Flapjack.WordAlloc.removeDeadStructural input4081 value2043 value1 value2 = (output4081, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4082 value2042 value1 value2 = (output4082, value5, value1) := by
  rw [input4082_def, output4082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4076]
  dsimp only
  rw [child4081]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4076_skip, output4081_skip]
  kernel_rfl

theorem node4083_cond_eq
    (child4075 : Flapjack.WordAlloc.removeDeadStructural input4075 value2040 value1 value2 = (output4075, value2042, value1))
    (child4082 : Flapjack.WordAlloc.removeDeadStructural input4082 value2042 value1 value2 = (output4082, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4083 value2040 value1 value2 = (output4083, value5, value1) := by
  rw [input4083_def, output4083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4075]
  dsimp only
  rw [child4082]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4075_skip, output4082_skip]
  kernel_rfl

theorem node4084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4084 value5 value1 value2 = (output4084, value2046, value1) := by
  rw [input4084_def, output4084_def]
  kernel_rfl

theorem node4085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4085 value2046 value1 value2 = (output4085, value2047, value1) := by
  rw [input4085_def, output4085_def]
  kernel_rfl

theorem node4086_cond_eq
    (child4084 : Flapjack.WordAlloc.removeDeadStructural input4084 value5 value1 value2 = (output4084, value2046, value1))
    (child4085 : Flapjack.WordAlloc.removeDeadStructural input4085 value2046 value1 value2 = (output4085, value2047, value1)) : Flapjack.WordAlloc.removeDeadStructural input4086 value5 value1 value2 = (output4086, value2047, value1) := by
  rw [input4086_def, output4086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4084]
  dsimp only
  rw [child4085]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4084_skip, output4085_skip]
  kernel_rfl

theorem node4087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4087 value2047 value1 value2 = (output4087, value2048, value1) := by
  rw [input4087_def, output4087_def]
  kernel_rfl

theorem node4088_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4088 value2048 value1 value2 = (output4088, value2048, value1) := by
  rw [input4088_def, output4088_def]
  kernel_rfl

theorem node4089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4089 value2048 value1 value2 = (output4089, value2049, value1) := by
  rw [input4089_def, output4089_def]
  kernel_rfl

theorem node4090_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4090 value2049 value1 value2 = (output4090, value2050, value1) := by
  rw [input4090_def, output4090_def]
  kernel_rfl

theorem node4091_cond_eq
    (child4089 : Flapjack.WordAlloc.removeDeadStructural input4089 value2048 value1 value2 = (output4089, value2049, value1))
    (child4090 : Flapjack.WordAlloc.removeDeadStructural input4090 value2049 value1 value2 = (output4090, value2050, value1)) : Flapjack.WordAlloc.removeDeadStructural input4091 value2048 value1 value2 = (output4091, value2050, value1) := by
  rw [input4091_def, output4091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4089]
  dsimp only
  rw [child4090]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4089_skip, output4090_skip]
  kernel_rfl

theorem node4092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4092 value2050 value1 value2 = (output4092, value2051, value1) := by
  rw [input4092_def, output4092_def]
  kernel_rfl

theorem node4093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4093 value2051 value1 value2 = (output4093, value2052, value1) := by
  rw [input4093_def, output4093_def]
  kernel_rfl

theorem node4094_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4094 value2052 value1 value2 = (output4094, value2053, value1) := by
  rw [input4094_def, output4094_def]
  kernel_rfl

theorem node4095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4095 value2053 value1 value2 = (output4095, value5, value1) := by
  rw [input4095_def, output4095_def]
  kernel_rfl

#print axioms node4095_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
