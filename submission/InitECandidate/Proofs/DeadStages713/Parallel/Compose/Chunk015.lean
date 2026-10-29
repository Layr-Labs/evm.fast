import InitECandidate.Proofs.DeadStages713.Parallel.Conditional.Chunk015
import InitECandidate.Proofs.DeadStages713.Parallel.Compose.Chunk014
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node3840_eq : Flapjack.WordAlloc.removeDeadStructural input3840 value1924 value1 value2 = (output3840, value5, value1) :=
  node3840_cond_eq node3838_eq node3839_eq

theorem node3841_eq : Flapjack.WordAlloc.removeDeadStructural input3841 value1923 value1 value2 = (output3841, value5, value1) :=
  node3841_cond_eq node3837_eq node3840_eq

theorem node3842_eq : Flapjack.WordAlloc.removeDeadStructural input3842 value1922 value1 value2 = (output3842, value5, value1) :=
  node3842_cond_eq node3836_eq node3841_eq

theorem node3843_eq : Flapjack.WordAlloc.removeDeadStructural input3843 value1920 value1 value2 = (output3843, value5, value1) :=
  node3843_cond_eq node3835_eq node3842_eq

theorem node3844_eq : Flapjack.WordAlloc.removeDeadStructural input3844 value5 value1 value2 = (output3844, value1926, value1) :=
  node3844_cond_eq

theorem node3845_eq : Flapjack.WordAlloc.removeDeadStructural input3845 value1926 value1 value2 = (output3845, value1927, value1) :=
  node3845_cond_eq

theorem node3846_eq : Flapjack.WordAlloc.removeDeadStructural input3846 value5 value1 value2 = (output3846, value1927, value1) :=
  node3846_cond_eq node3844_eq node3845_eq

theorem node3847_eq : Flapjack.WordAlloc.removeDeadStructural input3847 value1927 value1 value2 = (output3847, value1928, value1) :=
  node3847_cond_eq

theorem node3848_eq : Flapjack.WordAlloc.removeDeadStructural input3848 value1928 value1 value2 = (output3848, value1928, value1) :=
  node3848_cond_eq

theorem node3849_eq : Flapjack.WordAlloc.removeDeadStructural input3849 value1928 value1 value2 = (output3849, value1929, value1) :=
  node3849_cond_eq

theorem node3850_eq : Flapjack.WordAlloc.removeDeadStructural input3850 value1929 value1 value2 = (output3850, value1930, value1) :=
  node3850_cond_eq

theorem node3851_eq : Flapjack.WordAlloc.removeDeadStructural input3851 value1928 value1 value2 = (output3851, value1930, value1) :=
  node3851_cond_eq node3849_eq node3850_eq

theorem node3852_eq : Flapjack.WordAlloc.removeDeadStructural input3852 value1930 value1 value2 = (output3852, value1931, value1) :=
  node3852_cond_eq

theorem node3853_eq : Flapjack.WordAlloc.removeDeadStructural input3853 value1931 value1 value2 = (output3853, value1932, value1) :=
  node3853_cond_eq

theorem node3854_eq : Flapjack.WordAlloc.removeDeadStructural input3854 value1932 value1 value2 = (output3854, value1933, value1) :=
  node3854_cond_eq

theorem node3855_eq : Flapjack.WordAlloc.removeDeadStructural input3855 value1933 value1 value2 = (output3855, value5, value1) :=
  node3855_cond_eq

theorem node3856_eq : Flapjack.WordAlloc.removeDeadStructural input3856 value1932 value1 value2 = (output3856, value5, value1) :=
  node3856_cond_eq node3854_eq node3855_eq

theorem node3857_eq : Flapjack.WordAlloc.removeDeadStructural input3857 value1931 value1 value2 = (output3857, value5, value1) :=
  node3857_cond_eq node3853_eq node3856_eq

theorem node3858_eq : Flapjack.WordAlloc.removeDeadStructural input3858 value1930 value1 value2 = (output3858, value5, value1) :=
  node3858_cond_eq node3852_eq node3857_eq

theorem node3859_eq : Flapjack.WordAlloc.removeDeadStructural input3859 value1928 value1 value2 = (output3859, value5, value1) :=
  node3859_cond_eq node3851_eq node3858_eq

theorem node3860_eq : Flapjack.WordAlloc.removeDeadStructural input3860 value5 value1 value2 = (output3860, value1934, value1) :=
  node3860_cond_eq

theorem node3861_eq : Flapjack.WordAlloc.removeDeadStructural input3861 value1934 value1 value2 = (output3861, value1935, value1) :=
  node3861_cond_eq

theorem node3862_eq : Flapjack.WordAlloc.removeDeadStructural input3862 value5 value1 value2 = (output3862, value1935, value1) :=
  node3862_cond_eq node3860_eq node3861_eq

theorem node3863_eq : Flapjack.WordAlloc.removeDeadStructural input3863 value1935 value1 value2 = (output3863, value1936, value1) :=
  node3863_cond_eq

theorem node3864_eq : Flapjack.WordAlloc.removeDeadStructural input3864 value1936 value1 value2 = (output3864, value1936, value1) :=
  node3864_cond_eq

theorem node3865_eq : Flapjack.WordAlloc.removeDeadStructural input3865 value1936 value1 value2 = (output3865, value1937, value1) :=
  node3865_cond_eq

theorem node3866_eq : Flapjack.WordAlloc.removeDeadStructural input3866 value1937 value1 value2 = (output3866, value1938, value1) :=
  node3866_cond_eq

theorem node3867_eq : Flapjack.WordAlloc.removeDeadStructural input3867 value1936 value1 value2 = (output3867, value1938, value1) :=
  node3867_cond_eq node3865_eq node3866_eq

theorem node3868_eq : Flapjack.WordAlloc.removeDeadStructural input3868 value1938 value1 value2 = (output3868, value1939, value1) :=
  node3868_cond_eq

theorem node3869_eq : Flapjack.WordAlloc.removeDeadStructural input3869 value1939 value1 value2 = (output3869, value1940, value1) :=
  node3869_cond_eq

theorem node3870_eq : Flapjack.WordAlloc.removeDeadStructural input3870 value1940 value1 value2 = (output3870, value1941, value1) :=
  node3870_cond_eq

theorem node3871_eq : Flapjack.WordAlloc.removeDeadStructural input3871 value1941 value1 value2 = (output3871, value5, value1) :=
  node3871_cond_eq

theorem node3872_eq : Flapjack.WordAlloc.removeDeadStructural input3872 value1940 value1 value2 = (output3872, value5, value1) :=
  node3872_cond_eq node3870_eq node3871_eq

theorem node3873_eq : Flapjack.WordAlloc.removeDeadStructural input3873 value1939 value1 value2 = (output3873, value5, value1) :=
  node3873_cond_eq node3869_eq node3872_eq

theorem node3874_eq : Flapjack.WordAlloc.removeDeadStructural input3874 value1938 value1 value2 = (output3874, value5, value1) :=
  node3874_cond_eq node3868_eq node3873_eq

theorem node3875_eq : Flapjack.WordAlloc.removeDeadStructural input3875 value1936 value1 value2 = (output3875, value5, value1) :=
  node3875_cond_eq node3867_eq node3874_eq

theorem node3876_eq : Flapjack.WordAlloc.removeDeadStructural input3876 value5 value1 value2 = (output3876, value1942, value1) :=
  node3876_cond_eq

theorem node3877_eq : Flapjack.WordAlloc.removeDeadStructural input3877 value1942 value1 value2 = (output3877, value1943, value1) :=
  node3877_cond_eq

theorem node3878_eq : Flapjack.WordAlloc.removeDeadStructural input3878 value5 value1 value2 = (output3878, value1943, value1) :=
  node3878_cond_eq node3876_eq node3877_eq

theorem node3879_eq : Flapjack.WordAlloc.removeDeadStructural input3879 value1943 value1 value2 = (output3879, value1944, value1) :=
  node3879_cond_eq

theorem node3880_eq : Flapjack.WordAlloc.removeDeadStructural input3880 value1944 value1 value2 = (output3880, value1944, value1) :=
  node3880_cond_eq

theorem node3881_eq : Flapjack.WordAlloc.removeDeadStructural input3881 value1944 value1 value2 = (output3881, value1945, value1) :=
  node3881_cond_eq

theorem node3882_eq : Flapjack.WordAlloc.removeDeadStructural input3882 value1945 value1 value2 = (output3882, value1946, value1) :=
  node3882_cond_eq

theorem node3883_eq : Flapjack.WordAlloc.removeDeadStructural input3883 value1944 value1 value2 = (output3883, value1946, value1) :=
  node3883_cond_eq node3881_eq node3882_eq

theorem node3884_eq : Flapjack.WordAlloc.removeDeadStructural input3884 value1946 value1 value2 = (output3884, value1947, value1) :=
  node3884_cond_eq

theorem node3885_eq : Flapjack.WordAlloc.removeDeadStructural input3885 value1947 value1 value2 = (output3885, value1948, value1) :=
  node3885_cond_eq

theorem node3886_eq : Flapjack.WordAlloc.removeDeadStructural input3886 value1948 value1 value2 = (output3886, value1949, value1) :=
  node3886_cond_eq

theorem node3887_eq : Flapjack.WordAlloc.removeDeadStructural input3887 value1949 value1 value2 = (output3887, value5, value1) :=
  node3887_cond_eq

theorem node3888_eq : Flapjack.WordAlloc.removeDeadStructural input3888 value1948 value1 value2 = (output3888, value5, value1) :=
  node3888_cond_eq node3886_eq node3887_eq

theorem node3889_eq : Flapjack.WordAlloc.removeDeadStructural input3889 value1947 value1 value2 = (output3889, value5, value1) :=
  node3889_cond_eq node3885_eq node3888_eq

theorem node3890_eq : Flapjack.WordAlloc.removeDeadStructural input3890 value1946 value1 value2 = (output3890, value5, value1) :=
  node3890_cond_eq node3884_eq node3889_eq

theorem node3891_eq : Flapjack.WordAlloc.removeDeadStructural input3891 value1944 value1 value2 = (output3891, value5, value1) :=
  node3891_cond_eq node3883_eq node3890_eq

theorem node3892_eq : Flapjack.WordAlloc.removeDeadStructural input3892 value5 value1 value2 = (output3892, value1950, value1) :=
  node3892_cond_eq

theorem node3893_eq : Flapjack.WordAlloc.removeDeadStructural input3893 value1950 value1 value2 = (output3893, value1951, value1) :=
  node3893_cond_eq

theorem node3894_eq : Flapjack.WordAlloc.removeDeadStructural input3894 value5 value1 value2 = (output3894, value1951, value1) :=
  node3894_cond_eq node3892_eq node3893_eq

theorem node3895_eq : Flapjack.WordAlloc.removeDeadStructural input3895 value1951 value1 value2 = (output3895, value1952, value1) :=
  node3895_cond_eq

theorem node3896_eq : Flapjack.WordAlloc.removeDeadStructural input3896 value1952 value1 value2 = (output3896, value1952, value1) :=
  node3896_cond_eq

theorem node3897_eq : Flapjack.WordAlloc.removeDeadStructural input3897 value1952 value1 value2 = (output3897, value1953, value1) :=
  node3897_cond_eq

theorem node3898_eq : Flapjack.WordAlloc.removeDeadStructural input3898 value1953 value1 value2 = (output3898, value1954, value1) :=
  node3898_cond_eq

theorem node3899_eq : Flapjack.WordAlloc.removeDeadStructural input3899 value1952 value1 value2 = (output3899, value1954, value1) :=
  node3899_cond_eq node3897_eq node3898_eq

theorem node3900_eq : Flapjack.WordAlloc.removeDeadStructural input3900 value1954 value1 value2 = (output3900, value1955, value1) :=
  node3900_cond_eq

theorem node3901_eq : Flapjack.WordAlloc.removeDeadStructural input3901 value1955 value1 value2 = (output3901, value1956, value1) :=
  node3901_cond_eq

theorem node3902_eq : Flapjack.WordAlloc.removeDeadStructural input3902 value1956 value1 value2 = (output3902, value1957, value1) :=
  node3902_cond_eq

theorem node3903_eq : Flapjack.WordAlloc.removeDeadStructural input3903 value1957 value1 value2 = (output3903, value5, value1) :=
  node3903_cond_eq

theorem node3904_eq : Flapjack.WordAlloc.removeDeadStructural input3904 value1956 value1 value2 = (output3904, value5, value1) :=
  node3904_cond_eq node3902_eq node3903_eq

theorem node3905_eq : Flapjack.WordAlloc.removeDeadStructural input3905 value1955 value1 value2 = (output3905, value5, value1) :=
  node3905_cond_eq node3901_eq node3904_eq

theorem node3906_eq : Flapjack.WordAlloc.removeDeadStructural input3906 value1954 value1 value2 = (output3906, value5, value1) :=
  node3906_cond_eq node3900_eq node3905_eq

theorem node3907_eq : Flapjack.WordAlloc.removeDeadStructural input3907 value1952 value1 value2 = (output3907, value5, value1) :=
  node3907_cond_eq node3899_eq node3906_eq

theorem node3908_eq : Flapjack.WordAlloc.removeDeadStructural input3908 value5 value1 value2 = (output3908, value1958, value1) :=
  node3908_cond_eq

theorem node3909_eq : Flapjack.WordAlloc.removeDeadStructural input3909 value1958 value1 value2 = (output3909, value1959, value1) :=
  node3909_cond_eq

theorem node3910_eq : Flapjack.WordAlloc.removeDeadStructural input3910 value5 value1 value2 = (output3910, value1959, value1) :=
  node3910_cond_eq node3908_eq node3909_eq

theorem node3911_eq : Flapjack.WordAlloc.removeDeadStructural input3911 value1959 value1 value2 = (output3911, value1960, value1) :=
  node3911_cond_eq

theorem node3912_eq : Flapjack.WordAlloc.removeDeadStructural input3912 value1960 value1 value2 = (output3912, value1960, value1) :=
  node3912_cond_eq

theorem node3913_eq : Flapjack.WordAlloc.removeDeadStructural input3913 value1960 value1 value2 = (output3913, value1961, value1) :=
  node3913_cond_eq

theorem node3914_eq : Flapjack.WordAlloc.removeDeadStructural input3914 value1961 value1 value2 = (output3914, value1962, value1) :=
  node3914_cond_eq

theorem node3915_eq : Flapjack.WordAlloc.removeDeadStructural input3915 value1960 value1 value2 = (output3915, value1962, value1) :=
  node3915_cond_eq node3913_eq node3914_eq

theorem node3916_eq : Flapjack.WordAlloc.removeDeadStructural input3916 value1962 value1 value2 = (output3916, value1963, value1) :=
  node3916_cond_eq

theorem node3917_eq : Flapjack.WordAlloc.removeDeadStructural input3917 value1963 value1 value2 = (output3917, value1964, value1) :=
  node3917_cond_eq

theorem node3918_eq : Flapjack.WordAlloc.removeDeadStructural input3918 value1964 value1 value2 = (output3918, value1965, value1) :=
  node3918_cond_eq

theorem node3919_eq : Flapjack.WordAlloc.removeDeadStructural input3919 value1965 value1 value2 = (output3919, value5, value1) :=
  node3919_cond_eq

theorem node3920_eq : Flapjack.WordAlloc.removeDeadStructural input3920 value1964 value1 value2 = (output3920, value5, value1) :=
  node3920_cond_eq node3918_eq node3919_eq

theorem node3921_eq : Flapjack.WordAlloc.removeDeadStructural input3921 value1963 value1 value2 = (output3921, value5, value1) :=
  node3921_cond_eq node3917_eq node3920_eq

theorem node3922_eq : Flapjack.WordAlloc.removeDeadStructural input3922 value1962 value1 value2 = (output3922, value5, value1) :=
  node3922_cond_eq node3916_eq node3921_eq

theorem node3923_eq : Flapjack.WordAlloc.removeDeadStructural input3923 value1960 value1 value2 = (output3923, value5, value1) :=
  node3923_cond_eq node3915_eq node3922_eq

theorem node3924_eq : Flapjack.WordAlloc.removeDeadStructural input3924 value5 value1 value2 = (output3924, value1966, value1) :=
  node3924_cond_eq

theorem node3925_eq : Flapjack.WordAlloc.removeDeadStructural input3925 value1966 value1 value2 = (output3925, value1967, value1) :=
  node3925_cond_eq

theorem node3926_eq : Flapjack.WordAlloc.removeDeadStructural input3926 value5 value1 value2 = (output3926, value1967, value1) :=
  node3926_cond_eq node3924_eq node3925_eq

theorem node3927_eq : Flapjack.WordAlloc.removeDeadStructural input3927 value1967 value1 value2 = (output3927, value1968, value1) :=
  node3927_cond_eq

theorem node3928_eq : Flapjack.WordAlloc.removeDeadStructural input3928 value1968 value1 value2 = (output3928, value1968, value1) :=
  node3928_cond_eq

theorem node3929_eq : Flapjack.WordAlloc.removeDeadStructural input3929 value1968 value1 value2 = (output3929, value1969, value1) :=
  node3929_cond_eq

theorem node3930_eq : Flapjack.WordAlloc.removeDeadStructural input3930 value1969 value1 value2 = (output3930, value1970, value1) :=
  node3930_cond_eq

theorem node3931_eq : Flapjack.WordAlloc.removeDeadStructural input3931 value1968 value1 value2 = (output3931, value1970, value1) :=
  node3931_cond_eq node3929_eq node3930_eq

theorem node3932_eq : Flapjack.WordAlloc.removeDeadStructural input3932 value1970 value1 value2 = (output3932, value1971, value1) :=
  node3932_cond_eq

theorem node3933_eq : Flapjack.WordAlloc.removeDeadStructural input3933 value1971 value1 value2 = (output3933, value1972, value1) :=
  node3933_cond_eq

theorem node3934_eq : Flapjack.WordAlloc.removeDeadStructural input3934 value1972 value1 value2 = (output3934, value1973, value1) :=
  node3934_cond_eq

theorem node3935_eq : Flapjack.WordAlloc.removeDeadStructural input3935 value1973 value1 value2 = (output3935, value5, value1) :=
  node3935_cond_eq

theorem node3936_eq : Flapjack.WordAlloc.removeDeadStructural input3936 value1972 value1 value2 = (output3936, value5, value1) :=
  node3936_cond_eq node3934_eq node3935_eq

theorem node3937_eq : Flapjack.WordAlloc.removeDeadStructural input3937 value1971 value1 value2 = (output3937, value5, value1) :=
  node3937_cond_eq node3933_eq node3936_eq

theorem node3938_eq : Flapjack.WordAlloc.removeDeadStructural input3938 value1970 value1 value2 = (output3938, value5, value1) :=
  node3938_cond_eq node3932_eq node3937_eq

theorem node3939_eq : Flapjack.WordAlloc.removeDeadStructural input3939 value1968 value1 value2 = (output3939, value5, value1) :=
  node3939_cond_eq node3931_eq node3938_eq

theorem node3940_eq : Flapjack.WordAlloc.removeDeadStructural input3940 value5 value1 value2 = (output3940, value1974, value1) :=
  node3940_cond_eq

theorem node3941_eq : Flapjack.WordAlloc.removeDeadStructural input3941 value1974 value1 value2 = (output3941, value1975, value1) :=
  node3941_cond_eq

theorem node3942_eq : Flapjack.WordAlloc.removeDeadStructural input3942 value5 value1 value2 = (output3942, value1975, value1) :=
  node3942_cond_eq node3940_eq node3941_eq

theorem node3943_eq : Flapjack.WordAlloc.removeDeadStructural input3943 value1975 value1 value2 = (output3943, value1976, value1) :=
  node3943_cond_eq

theorem node3944_eq : Flapjack.WordAlloc.removeDeadStructural input3944 value1976 value1 value2 = (output3944, value1976, value1) :=
  node3944_cond_eq

theorem node3945_eq : Flapjack.WordAlloc.removeDeadStructural input3945 value1976 value1 value2 = (output3945, value1977, value1) :=
  node3945_cond_eq

theorem node3946_eq : Flapjack.WordAlloc.removeDeadStructural input3946 value1977 value1 value2 = (output3946, value1978, value1) :=
  node3946_cond_eq

theorem node3947_eq : Flapjack.WordAlloc.removeDeadStructural input3947 value1976 value1 value2 = (output3947, value1978, value1) :=
  node3947_cond_eq node3945_eq node3946_eq

theorem node3948_eq : Flapjack.WordAlloc.removeDeadStructural input3948 value1978 value1 value2 = (output3948, value1979, value1) :=
  node3948_cond_eq

theorem node3949_eq : Flapjack.WordAlloc.removeDeadStructural input3949 value1979 value1 value2 = (output3949, value1980, value1) :=
  node3949_cond_eq

theorem node3950_eq : Flapjack.WordAlloc.removeDeadStructural input3950 value1980 value1 value2 = (output3950, value1981, value1) :=
  node3950_cond_eq

theorem node3951_eq : Flapjack.WordAlloc.removeDeadStructural input3951 value1981 value1 value2 = (output3951, value5, value1) :=
  node3951_cond_eq

theorem node3952_eq : Flapjack.WordAlloc.removeDeadStructural input3952 value1980 value1 value2 = (output3952, value5, value1) :=
  node3952_cond_eq node3950_eq node3951_eq

theorem node3953_eq : Flapjack.WordAlloc.removeDeadStructural input3953 value1979 value1 value2 = (output3953, value5, value1) :=
  node3953_cond_eq node3949_eq node3952_eq

theorem node3954_eq : Flapjack.WordAlloc.removeDeadStructural input3954 value1978 value1 value2 = (output3954, value5, value1) :=
  node3954_cond_eq node3948_eq node3953_eq

theorem node3955_eq : Flapjack.WordAlloc.removeDeadStructural input3955 value1976 value1 value2 = (output3955, value5, value1) :=
  node3955_cond_eq node3947_eq node3954_eq

theorem node3956_eq : Flapjack.WordAlloc.removeDeadStructural input3956 value5 value1 value2 = (output3956, value1982, value1) :=
  node3956_cond_eq

theorem node3957_eq : Flapjack.WordAlloc.removeDeadStructural input3957 value1982 value1 value2 = (output3957, value1983, value1) :=
  node3957_cond_eq

theorem node3958_eq : Flapjack.WordAlloc.removeDeadStructural input3958 value5 value1 value2 = (output3958, value1983, value1) :=
  node3958_cond_eq node3956_eq node3957_eq

theorem node3959_eq : Flapjack.WordAlloc.removeDeadStructural input3959 value1983 value1 value2 = (output3959, value1984, value1) :=
  node3959_cond_eq

theorem node3960_eq : Flapjack.WordAlloc.removeDeadStructural input3960 value1984 value1 value2 = (output3960, value1984, value1) :=
  node3960_cond_eq

theorem node3961_eq : Flapjack.WordAlloc.removeDeadStructural input3961 value1984 value1 value2 = (output3961, value1985, value1) :=
  node3961_cond_eq

theorem node3962_eq : Flapjack.WordAlloc.removeDeadStructural input3962 value1985 value1 value2 = (output3962, value1986, value1) :=
  node3962_cond_eq

theorem node3963_eq : Flapjack.WordAlloc.removeDeadStructural input3963 value1984 value1 value2 = (output3963, value1986, value1) :=
  node3963_cond_eq node3961_eq node3962_eq

theorem node3964_eq : Flapjack.WordAlloc.removeDeadStructural input3964 value1986 value1 value2 = (output3964, value1987, value1) :=
  node3964_cond_eq

theorem node3965_eq : Flapjack.WordAlloc.removeDeadStructural input3965 value1987 value1 value2 = (output3965, value1988, value1) :=
  node3965_cond_eq

theorem node3966_eq : Flapjack.WordAlloc.removeDeadStructural input3966 value1988 value1 value2 = (output3966, value1989, value1) :=
  node3966_cond_eq

theorem node3967_eq : Flapjack.WordAlloc.removeDeadStructural input3967 value1989 value1 value2 = (output3967, value5, value1) :=
  node3967_cond_eq

theorem node3968_eq : Flapjack.WordAlloc.removeDeadStructural input3968 value1988 value1 value2 = (output3968, value5, value1) :=
  node3968_cond_eq node3966_eq node3967_eq

theorem node3969_eq : Flapjack.WordAlloc.removeDeadStructural input3969 value1987 value1 value2 = (output3969, value5, value1) :=
  node3969_cond_eq node3965_eq node3968_eq

theorem node3970_eq : Flapjack.WordAlloc.removeDeadStructural input3970 value1986 value1 value2 = (output3970, value5, value1) :=
  node3970_cond_eq node3964_eq node3969_eq

theorem node3971_eq : Flapjack.WordAlloc.removeDeadStructural input3971 value1984 value1 value2 = (output3971, value5, value1) :=
  node3971_cond_eq node3963_eq node3970_eq

theorem node3972_eq : Flapjack.WordAlloc.removeDeadStructural input3972 value5 value1 value2 = (output3972, value1990, value1) :=
  node3972_cond_eq

theorem node3973_eq : Flapjack.WordAlloc.removeDeadStructural input3973 value1990 value1 value2 = (output3973, value1991, value1) :=
  node3973_cond_eq

theorem node3974_eq : Flapjack.WordAlloc.removeDeadStructural input3974 value5 value1 value2 = (output3974, value1991, value1) :=
  node3974_cond_eq node3972_eq node3973_eq

theorem node3975_eq : Flapjack.WordAlloc.removeDeadStructural input3975 value1991 value1 value2 = (output3975, value1992, value1) :=
  node3975_cond_eq

theorem node3976_eq : Flapjack.WordAlloc.removeDeadStructural input3976 value1992 value1 value2 = (output3976, value1992, value1) :=
  node3976_cond_eq

theorem node3977_eq : Flapjack.WordAlloc.removeDeadStructural input3977 value1992 value1 value2 = (output3977, value1993, value1) :=
  node3977_cond_eq

theorem node3978_eq : Flapjack.WordAlloc.removeDeadStructural input3978 value1993 value1 value2 = (output3978, value1994, value1) :=
  node3978_cond_eq

theorem node3979_eq : Flapjack.WordAlloc.removeDeadStructural input3979 value1992 value1 value2 = (output3979, value1994, value1) :=
  node3979_cond_eq node3977_eq node3978_eq

theorem node3980_eq : Flapjack.WordAlloc.removeDeadStructural input3980 value1994 value1 value2 = (output3980, value1995, value1) :=
  node3980_cond_eq

theorem node3981_eq : Flapjack.WordAlloc.removeDeadStructural input3981 value1995 value1 value2 = (output3981, value1996, value1) :=
  node3981_cond_eq

theorem node3982_eq : Flapjack.WordAlloc.removeDeadStructural input3982 value1996 value1 value2 = (output3982, value1997, value1) :=
  node3982_cond_eq

theorem node3983_eq : Flapjack.WordAlloc.removeDeadStructural input3983 value1997 value1 value2 = (output3983, value5, value1) :=
  node3983_cond_eq

theorem node3984_eq : Flapjack.WordAlloc.removeDeadStructural input3984 value1996 value1 value2 = (output3984, value5, value1) :=
  node3984_cond_eq node3982_eq node3983_eq

theorem node3985_eq : Flapjack.WordAlloc.removeDeadStructural input3985 value1995 value1 value2 = (output3985, value5, value1) :=
  node3985_cond_eq node3981_eq node3984_eq

theorem node3986_eq : Flapjack.WordAlloc.removeDeadStructural input3986 value1994 value1 value2 = (output3986, value5, value1) :=
  node3986_cond_eq node3980_eq node3985_eq

theorem node3987_eq : Flapjack.WordAlloc.removeDeadStructural input3987 value1992 value1 value2 = (output3987, value5, value1) :=
  node3987_cond_eq node3979_eq node3986_eq

theorem node3988_eq : Flapjack.WordAlloc.removeDeadStructural input3988 value5 value1 value2 = (output3988, value1998, value1) :=
  node3988_cond_eq

theorem node3989_eq : Flapjack.WordAlloc.removeDeadStructural input3989 value1998 value1 value2 = (output3989, value1999, value1) :=
  node3989_cond_eq

theorem node3990_eq : Flapjack.WordAlloc.removeDeadStructural input3990 value5 value1 value2 = (output3990, value1999, value1) :=
  node3990_cond_eq node3988_eq node3989_eq

theorem node3991_eq : Flapjack.WordAlloc.removeDeadStructural input3991 value1999 value1 value2 = (output3991, value2000, value1) :=
  node3991_cond_eq

theorem node3992_eq : Flapjack.WordAlloc.removeDeadStructural input3992 value2000 value1 value2 = (output3992, value2000, value1) :=
  node3992_cond_eq

theorem node3993_eq : Flapjack.WordAlloc.removeDeadStructural input3993 value2000 value1 value2 = (output3993, value2001, value1) :=
  node3993_cond_eq

theorem node3994_eq : Flapjack.WordAlloc.removeDeadStructural input3994 value2001 value1 value2 = (output3994, value2002, value1) :=
  node3994_cond_eq

theorem node3995_eq : Flapjack.WordAlloc.removeDeadStructural input3995 value2000 value1 value2 = (output3995, value2002, value1) :=
  node3995_cond_eq node3993_eq node3994_eq

theorem node3996_eq : Flapjack.WordAlloc.removeDeadStructural input3996 value2002 value1 value2 = (output3996, value2003, value1) :=
  node3996_cond_eq

theorem node3997_eq : Flapjack.WordAlloc.removeDeadStructural input3997 value2003 value1 value2 = (output3997, value2004, value1) :=
  node3997_cond_eq

theorem node3998_eq : Flapjack.WordAlloc.removeDeadStructural input3998 value2004 value1 value2 = (output3998, value2005, value1) :=
  node3998_cond_eq

theorem node3999_eq : Flapjack.WordAlloc.removeDeadStructural input3999 value2005 value1 value2 = (output3999, value5, value1) :=
  node3999_cond_eq

theorem node4000_eq : Flapjack.WordAlloc.removeDeadStructural input4000 value2004 value1 value2 = (output4000, value5, value1) :=
  node4000_cond_eq node3998_eq node3999_eq

theorem node4001_eq : Flapjack.WordAlloc.removeDeadStructural input4001 value2003 value1 value2 = (output4001, value5, value1) :=
  node4001_cond_eq node3997_eq node4000_eq

theorem node4002_eq : Flapjack.WordAlloc.removeDeadStructural input4002 value2002 value1 value2 = (output4002, value5, value1) :=
  node4002_cond_eq node3996_eq node4001_eq

theorem node4003_eq : Flapjack.WordAlloc.removeDeadStructural input4003 value2000 value1 value2 = (output4003, value5, value1) :=
  node4003_cond_eq node3995_eq node4002_eq

theorem node4004_eq : Flapjack.WordAlloc.removeDeadStructural input4004 value5 value1 value2 = (output4004, value2006, value1) :=
  node4004_cond_eq

theorem node4005_eq : Flapjack.WordAlloc.removeDeadStructural input4005 value2006 value1 value2 = (output4005, value2007, value1) :=
  node4005_cond_eq

theorem node4006_eq : Flapjack.WordAlloc.removeDeadStructural input4006 value5 value1 value2 = (output4006, value2007, value1) :=
  node4006_cond_eq node4004_eq node4005_eq

theorem node4007_eq : Flapjack.WordAlloc.removeDeadStructural input4007 value2007 value1 value2 = (output4007, value2008, value1) :=
  node4007_cond_eq

theorem node4008_eq : Flapjack.WordAlloc.removeDeadStructural input4008 value2008 value1 value2 = (output4008, value2008, value1) :=
  node4008_cond_eq

theorem node4009_eq : Flapjack.WordAlloc.removeDeadStructural input4009 value2008 value1 value2 = (output4009, value2009, value1) :=
  node4009_cond_eq

theorem node4010_eq : Flapjack.WordAlloc.removeDeadStructural input4010 value2009 value1 value2 = (output4010, value2010, value1) :=
  node4010_cond_eq

theorem node4011_eq : Flapjack.WordAlloc.removeDeadStructural input4011 value2008 value1 value2 = (output4011, value2010, value1) :=
  node4011_cond_eq node4009_eq node4010_eq

theorem node4012_eq : Flapjack.WordAlloc.removeDeadStructural input4012 value2010 value1 value2 = (output4012, value2011, value1) :=
  node4012_cond_eq

theorem node4013_eq : Flapjack.WordAlloc.removeDeadStructural input4013 value2011 value1 value2 = (output4013, value2012, value1) :=
  node4013_cond_eq

theorem node4014_eq : Flapjack.WordAlloc.removeDeadStructural input4014 value2012 value1 value2 = (output4014, value2013, value1) :=
  node4014_cond_eq

theorem node4015_eq : Flapjack.WordAlloc.removeDeadStructural input4015 value2013 value1 value2 = (output4015, value5, value1) :=
  node4015_cond_eq

theorem node4016_eq : Flapjack.WordAlloc.removeDeadStructural input4016 value2012 value1 value2 = (output4016, value5, value1) :=
  node4016_cond_eq node4014_eq node4015_eq

theorem node4017_eq : Flapjack.WordAlloc.removeDeadStructural input4017 value2011 value1 value2 = (output4017, value5, value1) :=
  node4017_cond_eq node4013_eq node4016_eq

theorem node4018_eq : Flapjack.WordAlloc.removeDeadStructural input4018 value2010 value1 value2 = (output4018, value5, value1) :=
  node4018_cond_eq node4012_eq node4017_eq

theorem node4019_eq : Flapjack.WordAlloc.removeDeadStructural input4019 value2008 value1 value2 = (output4019, value5, value1) :=
  node4019_cond_eq node4011_eq node4018_eq

theorem node4020_eq : Flapjack.WordAlloc.removeDeadStructural input4020 value5 value1 value2 = (output4020, value2014, value1) :=
  node4020_cond_eq

theorem node4021_eq : Flapjack.WordAlloc.removeDeadStructural input4021 value2014 value1 value2 = (output4021, value2015, value1) :=
  node4021_cond_eq

theorem node4022_eq : Flapjack.WordAlloc.removeDeadStructural input4022 value5 value1 value2 = (output4022, value2015, value1) :=
  node4022_cond_eq node4020_eq node4021_eq

theorem node4023_eq : Flapjack.WordAlloc.removeDeadStructural input4023 value2015 value1 value2 = (output4023, value2016, value1) :=
  node4023_cond_eq

theorem node4024_eq : Flapjack.WordAlloc.removeDeadStructural input4024 value2016 value1 value2 = (output4024, value2016, value1) :=
  node4024_cond_eq

theorem node4025_eq : Flapjack.WordAlloc.removeDeadStructural input4025 value2016 value1 value2 = (output4025, value2017, value1) :=
  node4025_cond_eq

theorem node4026_eq : Flapjack.WordAlloc.removeDeadStructural input4026 value2017 value1 value2 = (output4026, value2018, value1) :=
  node4026_cond_eq

theorem node4027_eq : Flapjack.WordAlloc.removeDeadStructural input4027 value2016 value1 value2 = (output4027, value2018, value1) :=
  node4027_cond_eq node4025_eq node4026_eq

theorem node4028_eq : Flapjack.WordAlloc.removeDeadStructural input4028 value2018 value1 value2 = (output4028, value2019, value1) :=
  node4028_cond_eq

theorem node4029_eq : Flapjack.WordAlloc.removeDeadStructural input4029 value2019 value1 value2 = (output4029, value2020, value1) :=
  node4029_cond_eq

theorem node4030_eq : Flapjack.WordAlloc.removeDeadStructural input4030 value2020 value1 value2 = (output4030, value2021, value1) :=
  node4030_cond_eq

theorem node4031_eq : Flapjack.WordAlloc.removeDeadStructural input4031 value2021 value1 value2 = (output4031, value5, value1) :=
  node4031_cond_eq

theorem node4032_eq : Flapjack.WordAlloc.removeDeadStructural input4032 value2020 value1 value2 = (output4032, value5, value1) :=
  node4032_cond_eq node4030_eq node4031_eq

theorem node4033_eq : Flapjack.WordAlloc.removeDeadStructural input4033 value2019 value1 value2 = (output4033, value5, value1) :=
  node4033_cond_eq node4029_eq node4032_eq

theorem node4034_eq : Flapjack.WordAlloc.removeDeadStructural input4034 value2018 value1 value2 = (output4034, value5, value1) :=
  node4034_cond_eq node4028_eq node4033_eq

theorem node4035_eq : Flapjack.WordAlloc.removeDeadStructural input4035 value2016 value1 value2 = (output4035, value5, value1) :=
  node4035_cond_eq node4027_eq node4034_eq

theorem node4036_eq : Flapjack.WordAlloc.removeDeadStructural input4036 value5 value1 value2 = (output4036, value2022, value1) :=
  node4036_cond_eq

theorem node4037_eq : Flapjack.WordAlloc.removeDeadStructural input4037 value2022 value1 value2 = (output4037, value2023, value1) :=
  node4037_cond_eq

theorem node4038_eq : Flapjack.WordAlloc.removeDeadStructural input4038 value5 value1 value2 = (output4038, value2023, value1) :=
  node4038_cond_eq node4036_eq node4037_eq

theorem node4039_eq : Flapjack.WordAlloc.removeDeadStructural input4039 value2023 value1 value2 = (output4039, value2024, value1) :=
  node4039_cond_eq

theorem node4040_eq : Flapjack.WordAlloc.removeDeadStructural input4040 value2024 value1 value2 = (output4040, value2024, value1) :=
  node4040_cond_eq

theorem node4041_eq : Flapjack.WordAlloc.removeDeadStructural input4041 value2024 value1 value2 = (output4041, value2025, value1) :=
  node4041_cond_eq

theorem node4042_eq : Flapjack.WordAlloc.removeDeadStructural input4042 value2025 value1 value2 = (output4042, value2026, value1) :=
  node4042_cond_eq

theorem node4043_eq : Flapjack.WordAlloc.removeDeadStructural input4043 value2024 value1 value2 = (output4043, value2026, value1) :=
  node4043_cond_eq node4041_eq node4042_eq

theorem node4044_eq : Flapjack.WordAlloc.removeDeadStructural input4044 value2026 value1 value2 = (output4044, value2027, value1) :=
  node4044_cond_eq

theorem node4045_eq : Flapjack.WordAlloc.removeDeadStructural input4045 value2027 value1 value2 = (output4045, value2028, value1) :=
  node4045_cond_eq

theorem node4046_eq : Flapjack.WordAlloc.removeDeadStructural input4046 value2028 value1 value2 = (output4046, value2029, value1) :=
  node4046_cond_eq

theorem node4047_eq : Flapjack.WordAlloc.removeDeadStructural input4047 value2029 value1 value2 = (output4047, value5, value1) :=
  node4047_cond_eq

theorem node4048_eq : Flapjack.WordAlloc.removeDeadStructural input4048 value2028 value1 value2 = (output4048, value5, value1) :=
  node4048_cond_eq node4046_eq node4047_eq

theorem node4049_eq : Flapjack.WordAlloc.removeDeadStructural input4049 value2027 value1 value2 = (output4049, value5, value1) :=
  node4049_cond_eq node4045_eq node4048_eq

theorem node4050_eq : Flapjack.WordAlloc.removeDeadStructural input4050 value2026 value1 value2 = (output4050, value5, value1) :=
  node4050_cond_eq node4044_eq node4049_eq

theorem node4051_eq : Flapjack.WordAlloc.removeDeadStructural input4051 value2024 value1 value2 = (output4051, value5, value1) :=
  node4051_cond_eq node4043_eq node4050_eq

theorem node4052_eq : Flapjack.WordAlloc.removeDeadStructural input4052 value5 value1 value2 = (output4052, value2030, value1) :=
  node4052_cond_eq

theorem node4053_eq : Flapjack.WordAlloc.removeDeadStructural input4053 value2030 value1 value2 = (output4053, value2031, value1) :=
  node4053_cond_eq

theorem node4054_eq : Flapjack.WordAlloc.removeDeadStructural input4054 value5 value1 value2 = (output4054, value2031, value1) :=
  node4054_cond_eq node4052_eq node4053_eq

theorem node4055_eq : Flapjack.WordAlloc.removeDeadStructural input4055 value2031 value1 value2 = (output4055, value2032, value1) :=
  node4055_cond_eq

theorem node4056_eq : Flapjack.WordAlloc.removeDeadStructural input4056 value2032 value1 value2 = (output4056, value2032, value1) :=
  node4056_cond_eq

theorem node4057_eq : Flapjack.WordAlloc.removeDeadStructural input4057 value2032 value1 value2 = (output4057, value2033, value1) :=
  node4057_cond_eq

theorem node4058_eq : Flapjack.WordAlloc.removeDeadStructural input4058 value2033 value1 value2 = (output4058, value2034, value1) :=
  node4058_cond_eq

theorem node4059_eq : Flapjack.WordAlloc.removeDeadStructural input4059 value2032 value1 value2 = (output4059, value2034, value1) :=
  node4059_cond_eq node4057_eq node4058_eq

theorem node4060_eq : Flapjack.WordAlloc.removeDeadStructural input4060 value2034 value1 value2 = (output4060, value2035, value1) :=
  node4060_cond_eq

theorem node4061_eq : Flapjack.WordAlloc.removeDeadStructural input4061 value2035 value1 value2 = (output4061, value2036, value1) :=
  node4061_cond_eq

theorem node4062_eq : Flapjack.WordAlloc.removeDeadStructural input4062 value2036 value1 value2 = (output4062, value2037, value1) :=
  node4062_cond_eq

theorem node4063_eq : Flapjack.WordAlloc.removeDeadStructural input4063 value2037 value1 value2 = (output4063, value5, value1) :=
  node4063_cond_eq

theorem node4064_eq : Flapjack.WordAlloc.removeDeadStructural input4064 value2036 value1 value2 = (output4064, value5, value1) :=
  node4064_cond_eq node4062_eq node4063_eq

theorem node4065_eq : Flapjack.WordAlloc.removeDeadStructural input4065 value2035 value1 value2 = (output4065, value5, value1) :=
  node4065_cond_eq node4061_eq node4064_eq

theorem node4066_eq : Flapjack.WordAlloc.removeDeadStructural input4066 value2034 value1 value2 = (output4066, value5, value1) :=
  node4066_cond_eq node4060_eq node4065_eq

theorem node4067_eq : Flapjack.WordAlloc.removeDeadStructural input4067 value2032 value1 value2 = (output4067, value5, value1) :=
  node4067_cond_eq node4059_eq node4066_eq

theorem node4068_eq : Flapjack.WordAlloc.removeDeadStructural input4068 value5 value1 value2 = (output4068, value2038, value1) :=
  node4068_cond_eq

theorem node4069_eq : Flapjack.WordAlloc.removeDeadStructural input4069 value2038 value1 value2 = (output4069, value2039, value1) :=
  node4069_cond_eq

theorem node4070_eq : Flapjack.WordAlloc.removeDeadStructural input4070 value5 value1 value2 = (output4070, value2039, value1) :=
  node4070_cond_eq node4068_eq node4069_eq

theorem node4071_eq : Flapjack.WordAlloc.removeDeadStructural input4071 value2039 value1 value2 = (output4071, value2040, value1) :=
  node4071_cond_eq

theorem node4072_eq : Flapjack.WordAlloc.removeDeadStructural input4072 value2040 value1 value2 = (output4072, value2040, value1) :=
  node4072_cond_eq

theorem node4073_eq : Flapjack.WordAlloc.removeDeadStructural input4073 value2040 value1 value2 = (output4073, value2041, value1) :=
  node4073_cond_eq

theorem node4074_eq : Flapjack.WordAlloc.removeDeadStructural input4074 value2041 value1 value2 = (output4074, value2042, value1) :=
  node4074_cond_eq

theorem node4075_eq : Flapjack.WordAlloc.removeDeadStructural input4075 value2040 value1 value2 = (output4075, value2042, value1) :=
  node4075_cond_eq node4073_eq node4074_eq

theorem node4076_eq : Flapjack.WordAlloc.removeDeadStructural input4076 value2042 value1 value2 = (output4076, value2043, value1) :=
  node4076_cond_eq

theorem node4077_eq : Flapjack.WordAlloc.removeDeadStructural input4077 value2043 value1 value2 = (output4077, value2044, value1) :=
  node4077_cond_eq

theorem node4078_eq : Flapjack.WordAlloc.removeDeadStructural input4078 value2044 value1 value2 = (output4078, value2045, value1) :=
  node4078_cond_eq

theorem node4079_eq : Flapjack.WordAlloc.removeDeadStructural input4079 value2045 value1 value2 = (output4079, value5, value1) :=
  node4079_cond_eq

theorem node4080_eq : Flapjack.WordAlloc.removeDeadStructural input4080 value2044 value1 value2 = (output4080, value5, value1) :=
  node4080_cond_eq node4078_eq node4079_eq

theorem node4081_eq : Flapjack.WordAlloc.removeDeadStructural input4081 value2043 value1 value2 = (output4081, value5, value1) :=
  node4081_cond_eq node4077_eq node4080_eq

theorem node4082_eq : Flapjack.WordAlloc.removeDeadStructural input4082 value2042 value1 value2 = (output4082, value5, value1) :=
  node4082_cond_eq node4076_eq node4081_eq

theorem node4083_eq : Flapjack.WordAlloc.removeDeadStructural input4083 value2040 value1 value2 = (output4083, value5, value1) :=
  node4083_cond_eq node4075_eq node4082_eq

theorem node4084_eq : Flapjack.WordAlloc.removeDeadStructural input4084 value5 value1 value2 = (output4084, value2046, value1) :=
  node4084_cond_eq

theorem node4085_eq : Flapjack.WordAlloc.removeDeadStructural input4085 value2046 value1 value2 = (output4085, value2047, value1) :=
  node4085_cond_eq

theorem node4086_eq : Flapjack.WordAlloc.removeDeadStructural input4086 value5 value1 value2 = (output4086, value2047, value1) :=
  node4086_cond_eq node4084_eq node4085_eq

theorem node4087_eq : Flapjack.WordAlloc.removeDeadStructural input4087 value2047 value1 value2 = (output4087, value2048, value1) :=
  node4087_cond_eq

theorem node4088_eq : Flapjack.WordAlloc.removeDeadStructural input4088 value2048 value1 value2 = (output4088, value2048, value1) :=
  node4088_cond_eq

theorem node4089_eq : Flapjack.WordAlloc.removeDeadStructural input4089 value2048 value1 value2 = (output4089, value2049, value1) :=
  node4089_cond_eq

theorem node4090_eq : Flapjack.WordAlloc.removeDeadStructural input4090 value2049 value1 value2 = (output4090, value2050, value1) :=
  node4090_cond_eq

theorem node4091_eq : Flapjack.WordAlloc.removeDeadStructural input4091 value2048 value1 value2 = (output4091, value2050, value1) :=
  node4091_cond_eq node4089_eq node4090_eq

theorem node4092_eq : Flapjack.WordAlloc.removeDeadStructural input4092 value2050 value1 value2 = (output4092, value2051, value1) :=
  node4092_cond_eq

theorem node4093_eq : Flapjack.WordAlloc.removeDeadStructural input4093 value2051 value1 value2 = (output4093, value2052, value1) :=
  node4093_cond_eq

theorem node4094_eq : Flapjack.WordAlloc.removeDeadStructural input4094 value2052 value1 value2 = (output4094, value2053, value1) :=
  node4094_cond_eq

theorem node4095_eq : Flapjack.WordAlloc.removeDeadStructural input4095 value2053 value1 value2 = (output4095, value5, value1) :=
  node4095_cond_eq

#print axioms node4095_eq
end InitECandidate.Proofs.DeadStages713.Parallel
