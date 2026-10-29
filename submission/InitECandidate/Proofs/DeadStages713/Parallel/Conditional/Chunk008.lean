import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk008
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node2048_cond_eq
    (child2046 : Flapjack.WordAlloc.removeDeadStructural input2046 value1028 value1 value2 = (output2046, value1029, value1))
    (child2047 : Flapjack.WordAlloc.removeDeadStructural input2047 value1029 value1 value2 = (output2047, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2048 value1028 value1 value2 = (output2048, value5, value1) := by
  rw [input2048_def, output2048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2046]
  dsimp only
  rw [child2047]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2046_skip, output2047_skip]
  kernel_rfl

theorem node2049_cond_eq
    (child2045 : Flapjack.WordAlloc.removeDeadStructural input2045 value1027 value1 value2 = (output2045, value1028, value1))
    (child2048 : Flapjack.WordAlloc.removeDeadStructural input2048 value1028 value1 value2 = (output2048, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2049 value1027 value1 value2 = (output2049, value5, value1) := by
  rw [input2049_def, output2049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2045]
  dsimp only
  rw [child2048]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2045_skip, output2048_skip]
  kernel_rfl

theorem node2050_cond_eq
    (child2044 : Flapjack.WordAlloc.removeDeadStructural input2044 value1026 value1 value2 = (output2044, value1027, value1))
    (child2049 : Flapjack.WordAlloc.removeDeadStructural input2049 value1027 value1 value2 = (output2049, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2050 value1026 value1 value2 = (output2050, value5, value1) := by
  rw [input2050_def, output2050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2044]
  dsimp only
  rw [child2049]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2044_skip, output2049_skip]
  kernel_rfl

theorem node2051_cond_eq
    (child2043 : Flapjack.WordAlloc.removeDeadStructural input2043 value1024 value1 value2 = (output2043, value1026, value1))
    (child2050 : Flapjack.WordAlloc.removeDeadStructural input2050 value1026 value1 value2 = (output2050, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2051 value1024 value1 value2 = (output2051, value5, value1) := by
  rw [input2051_def, output2051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2043]
  dsimp only
  rw [child2050]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2043_skip, output2050_skip]
  kernel_rfl

theorem node2052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2052 value5 value1 value2 = (output2052, value1030, value1) := by
  rw [input2052_def, output2052_def]
  kernel_rfl

theorem node2053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2053 value1030 value1 value2 = (output2053, value1031, value1) := by
  rw [input2053_def, output2053_def]
  kernel_rfl

theorem node2054_cond_eq
    (child2052 : Flapjack.WordAlloc.removeDeadStructural input2052 value5 value1 value2 = (output2052, value1030, value1))
    (child2053 : Flapjack.WordAlloc.removeDeadStructural input2053 value1030 value1 value2 = (output2053, value1031, value1)) : Flapjack.WordAlloc.removeDeadStructural input2054 value5 value1 value2 = (output2054, value1031, value1) := by
  rw [input2054_def, output2054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2052]
  dsimp only
  rw [child2053]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2052_skip, output2053_skip]
  kernel_rfl

theorem node2055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2055 value1031 value1 value2 = (output2055, value1032, value1) := by
  rw [input2055_def, output2055_def]
  kernel_rfl

theorem node2056_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2056 value1032 value1 value2 = (output2056, value1032, value1) := by
  rw [input2056_def, output2056_def]
  kernel_rfl

theorem node2057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2057 value1032 value1 value2 = (output2057, value1033, value1) := by
  rw [input2057_def, output2057_def]
  kernel_rfl

theorem node2058_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2058 value1033 value1 value2 = (output2058, value1034, value1) := by
  rw [input2058_def, output2058_def]
  kernel_rfl

theorem node2059_cond_eq
    (child2057 : Flapjack.WordAlloc.removeDeadStructural input2057 value1032 value1 value2 = (output2057, value1033, value1))
    (child2058 : Flapjack.WordAlloc.removeDeadStructural input2058 value1033 value1 value2 = (output2058, value1034, value1)) : Flapjack.WordAlloc.removeDeadStructural input2059 value1032 value1 value2 = (output2059, value1034, value1) := by
  rw [input2059_def, output2059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2057]
  dsimp only
  rw [child2058]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2057_skip, output2058_skip]
  kernel_rfl

theorem node2060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2060 value1034 value1 value2 = (output2060, value1035, value1) := by
  rw [input2060_def, output2060_def]
  kernel_rfl

theorem node2061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2061 value1035 value1 value2 = (output2061, value1036, value1) := by
  rw [input2061_def, output2061_def]
  kernel_rfl

theorem node2062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2062 value1036 value1 value2 = (output2062, value1037, value1) := by
  rw [input2062_def, output2062_def]
  kernel_rfl

theorem node2063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2063 value1037 value1 value2 = (output2063, value5, value1) := by
  rw [input2063_def, output2063_def]
  kernel_rfl

theorem node2064_cond_eq
    (child2062 : Flapjack.WordAlloc.removeDeadStructural input2062 value1036 value1 value2 = (output2062, value1037, value1))
    (child2063 : Flapjack.WordAlloc.removeDeadStructural input2063 value1037 value1 value2 = (output2063, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2064 value1036 value1 value2 = (output2064, value5, value1) := by
  rw [input2064_def, output2064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2062]
  dsimp only
  rw [child2063]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2062_skip, output2063_skip]
  kernel_rfl

theorem node2065_cond_eq
    (child2061 : Flapjack.WordAlloc.removeDeadStructural input2061 value1035 value1 value2 = (output2061, value1036, value1))
    (child2064 : Flapjack.WordAlloc.removeDeadStructural input2064 value1036 value1 value2 = (output2064, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2065 value1035 value1 value2 = (output2065, value5, value1) := by
  rw [input2065_def, output2065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2061]
  dsimp only
  rw [child2064]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2061_skip, output2064_skip]
  kernel_rfl

theorem node2066_cond_eq
    (child2060 : Flapjack.WordAlloc.removeDeadStructural input2060 value1034 value1 value2 = (output2060, value1035, value1))
    (child2065 : Flapjack.WordAlloc.removeDeadStructural input2065 value1035 value1 value2 = (output2065, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2066 value1034 value1 value2 = (output2066, value5, value1) := by
  rw [input2066_def, output2066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2060]
  dsimp only
  rw [child2065]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2060_skip, output2065_skip]
  kernel_rfl

theorem node2067_cond_eq
    (child2059 : Flapjack.WordAlloc.removeDeadStructural input2059 value1032 value1 value2 = (output2059, value1034, value1))
    (child2066 : Flapjack.WordAlloc.removeDeadStructural input2066 value1034 value1 value2 = (output2066, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2067 value1032 value1 value2 = (output2067, value5, value1) := by
  rw [input2067_def, output2067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2059]
  dsimp only
  rw [child2066]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2059_skip, output2066_skip]
  kernel_rfl

theorem node2068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2068 value5 value1 value2 = (output2068, value1038, value1) := by
  rw [input2068_def, output2068_def]
  kernel_rfl

theorem node2069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2069 value1038 value1 value2 = (output2069, value1039, value1) := by
  rw [input2069_def, output2069_def]
  kernel_rfl

theorem node2070_cond_eq
    (child2068 : Flapjack.WordAlloc.removeDeadStructural input2068 value5 value1 value2 = (output2068, value1038, value1))
    (child2069 : Flapjack.WordAlloc.removeDeadStructural input2069 value1038 value1 value2 = (output2069, value1039, value1)) : Flapjack.WordAlloc.removeDeadStructural input2070 value5 value1 value2 = (output2070, value1039, value1) := by
  rw [input2070_def, output2070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2068]
  dsimp only
  rw [child2069]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2068_skip, output2069_skip]
  kernel_rfl

theorem node2071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2071 value1039 value1 value2 = (output2071, value1040, value1) := by
  rw [input2071_def, output2071_def]
  kernel_rfl

theorem node2072_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2072 value1040 value1 value2 = (output2072, value1040, value1) := by
  rw [input2072_def, output2072_def]
  kernel_rfl

theorem node2073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2073 value1040 value1 value2 = (output2073, value1041, value1) := by
  rw [input2073_def, output2073_def]
  kernel_rfl

theorem node2074_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2074 value1041 value1 value2 = (output2074, value1042, value1) := by
  rw [input2074_def, output2074_def]
  kernel_rfl

theorem node2075_cond_eq
    (child2073 : Flapjack.WordAlloc.removeDeadStructural input2073 value1040 value1 value2 = (output2073, value1041, value1))
    (child2074 : Flapjack.WordAlloc.removeDeadStructural input2074 value1041 value1 value2 = (output2074, value1042, value1)) : Flapjack.WordAlloc.removeDeadStructural input2075 value1040 value1 value2 = (output2075, value1042, value1) := by
  rw [input2075_def, output2075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2073]
  dsimp only
  rw [child2074]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2073_skip, output2074_skip]
  kernel_rfl

theorem node2076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2076 value1042 value1 value2 = (output2076, value1043, value1) := by
  rw [input2076_def, output2076_def]
  kernel_rfl

theorem node2077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2077 value1043 value1 value2 = (output2077, value1044, value1) := by
  rw [input2077_def, output2077_def]
  kernel_rfl

theorem node2078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2078 value1044 value1 value2 = (output2078, value1045, value1) := by
  rw [input2078_def, output2078_def]
  kernel_rfl

theorem node2079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2079 value1045 value1 value2 = (output2079, value5, value1) := by
  rw [input2079_def, output2079_def]
  kernel_rfl

theorem node2080_cond_eq
    (child2078 : Flapjack.WordAlloc.removeDeadStructural input2078 value1044 value1 value2 = (output2078, value1045, value1))
    (child2079 : Flapjack.WordAlloc.removeDeadStructural input2079 value1045 value1 value2 = (output2079, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2080 value1044 value1 value2 = (output2080, value5, value1) := by
  rw [input2080_def, output2080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2078]
  dsimp only
  rw [child2079]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2078_skip, output2079_skip]
  kernel_rfl

theorem node2081_cond_eq
    (child2077 : Flapjack.WordAlloc.removeDeadStructural input2077 value1043 value1 value2 = (output2077, value1044, value1))
    (child2080 : Flapjack.WordAlloc.removeDeadStructural input2080 value1044 value1 value2 = (output2080, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2081 value1043 value1 value2 = (output2081, value5, value1) := by
  rw [input2081_def, output2081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2077]
  dsimp only
  rw [child2080]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2077_skip, output2080_skip]
  kernel_rfl

theorem node2082_cond_eq
    (child2076 : Flapjack.WordAlloc.removeDeadStructural input2076 value1042 value1 value2 = (output2076, value1043, value1))
    (child2081 : Flapjack.WordAlloc.removeDeadStructural input2081 value1043 value1 value2 = (output2081, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2082 value1042 value1 value2 = (output2082, value5, value1) := by
  rw [input2082_def, output2082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2076]
  dsimp only
  rw [child2081]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2076_skip, output2081_skip]
  kernel_rfl

theorem node2083_cond_eq
    (child2075 : Flapjack.WordAlloc.removeDeadStructural input2075 value1040 value1 value2 = (output2075, value1042, value1))
    (child2082 : Flapjack.WordAlloc.removeDeadStructural input2082 value1042 value1 value2 = (output2082, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2083 value1040 value1 value2 = (output2083, value5, value1) := by
  rw [input2083_def, output2083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2075]
  dsimp only
  rw [child2082]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2075_skip, output2082_skip]
  kernel_rfl

theorem node2084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2084 value5 value1 value2 = (output2084, value1046, value1) := by
  rw [input2084_def, output2084_def]
  kernel_rfl

theorem node2085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2085 value1046 value1 value2 = (output2085, value1047, value1) := by
  rw [input2085_def, output2085_def]
  kernel_rfl

theorem node2086_cond_eq
    (child2084 : Flapjack.WordAlloc.removeDeadStructural input2084 value5 value1 value2 = (output2084, value1046, value1))
    (child2085 : Flapjack.WordAlloc.removeDeadStructural input2085 value1046 value1 value2 = (output2085, value1047, value1)) : Flapjack.WordAlloc.removeDeadStructural input2086 value5 value1 value2 = (output2086, value1047, value1) := by
  rw [input2086_def, output2086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2084]
  dsimp only
  rw [child2085]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2084_skip, output2085_skip]
  kernel_rfl

theorem node2087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2087 value1047 value1 value2 = (output2087, value1048, value1) := by
  rw [input2087_def, output2087_def]
  kernel_rfl

theorem node2088_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2088 value1048 value1 value2 = (output2088, value1048, value1) := by
  rw [input2088_def, output2088_def]
  kernel_rfl

theorem node2089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2089 value1048 value1 value2 = (output2089, value1049, value1) := by
  rw [input2089_def, output2089_def]
  kernel_rfl

theorem node2090_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2090 value1049 value1 value2 = (output2090, value1050, value1) := by
  rw [input2090_def, output2090_def]
  kernel_rfl

theorem node2091_cond_eq
    (child2089 : Flapjack.WordAlloc.removeDeadStructural input2089 value1048 value1 value2 = (output2089, value1049, value1))
    (child2090 : Flapjack.WordAlloc.removeDeadStructural input2090 value1049 value1 value2 = (output2090, value1050, value1)) : Flapjack.WordAlloc.removeDeadStructural input2091 value1048 value1 value2 = (output2091, value1050, value1) := by
  rw [input2091_def, output2091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2089]
  dsimp only
  rw [child2090]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2089_skip, output2090_skip]
  kernel_rfl

theorem node2092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2092 value1050 value1 value2 = (output2092, value1051, value1) := by
  rw [input2092_def, output2092_def]
  kernel_rfl

theorem node2093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2093 value1051 value1 value2 = (output2093, value1052, value1) := by
  rw [input2093_def, output2093_def]
  kernel_rfl

theorem node2094_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2094 value1052 value1 value2 = (output2094, value1053, value1) := by
  rw [input2094_def, output2094_def]
  kernel_rfl

theorem node2095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2095 value1053 value1 value2 = (output2095, value5, value1) := by
  rw [input2095_def, output2095_def]
  kernel_rfl

theorem node2096_cond_eq
    (child2094 : Flapjack.WordAlloc.removeDeadStructural input2094 value1052 value1 value2 = (output2094, value1053, value1))
    (child2095 : Flapjack.WordAlloc.removeDeadStructural input2095 value1053 value1 value2 = (output2095, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2096 value1052 value1 value2 = (output2096, value5, value1) := by
  rw [input2096_def, output2096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2094]
  dsimp only
  rw [child2095]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2094_skip, output2095_skip]
  kernel_rfl

theorem node2097_cond_eq
    (child2093 : Flapjack.WordAlloc.removeDeadStructural input2093 value1051 value1 value2 = (output2093, value1052, value1))
    (child2096 : Flapjack.WordAlloc.removeDeadStructural input2096 value1052 value1 value2 = (output2096, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2097 value1051 value1 value2 = (output2097, value5, value1) := by
  rw [input2097_def, output2097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2093]
  dsimp only
  rw [child2096]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2093_skip, output2096_skip]
  kernel_rfl

theorem node2098_cond_eq
    (child2092 : Flapjack.WordAlloc.removeDeadStructural input2092 value1050 value1 value2 = (output2092, value1051, value1))
    (child2097 : Flapjack.WordAlloc.removeDeadStructural input2097 value1051 value1 value2 = (output2097, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2098 value1050 value1 value2 = (output2098, value5, value1) := by
  rw [input2098_def, output2098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2092]
  dsimp only
  rw [child2097]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2092_skip, output2097_skip]
  kernel_rfl

theorem node2099_cond_eq
    (child2091 : Flapjack.WordAlloc.removeDeadStructural input2091 value1048 value1 value2 = (output2091, value1050, value1))
    (child2098 : Flapjack.WordAlloc.removeDeadStructural input2098 value1050 value1 value2 = (output2098, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2099 value1048 value1 value2 = (output2099, value5, value1) := by
  rw [input2099_def, output2099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2091]
  dsimp only
  rw [child2098]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2091_skip, output2098_skip]
  kernel_rfl

theorem node2100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2100 value5 value1 value2 = (output2100, value1054, value1) := by
  rw [input2100_def, output2100_def]
  kernel_rfl

theorem node2101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2101 value1054 value1 value2 = (output2101, value1055, value1) := by
  rw [input2101_def, output2101_def]
  kernel_rfl

theorem node2102_cond_eq
    (child2100 : Flapjack.WordAlloc.removeDeadStructural input2100 value5 value1 value2 = (output2100, value1054, value1))
    (child2101 : Flapjack.WordAlloc.removeDeadStructural input2101 value1054 value1 value2 = (output2101, value1055, value1)) : Flapjack.WordAlloc.removeDeadStructural input2102 value5 value1 value2 = (output2102, value1055, value1) := by
  rw [input2102_def, output2102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2100]
  dsimp only
  rw [child2101]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2100_skip, output2101_skip]
  kernel_rfl

theorem node2103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2103 value1055 value1 value2 = (output2103, value1056, value1) := by
  rw [input2103_def, output2103_def]
  kernel_rfl

theorem node2104_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2104 value1056 value1 value2 = (output2104, value1056, value1) := by
  rw [input2104_def, output2104_def]
  kernel_rfl

theorem node2105_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2105 value1056 value1 value2 = (output2105, value1057, value1) := by
  rw [input2105_def, output2105_def]
  kernel_rfl

theorem node2106_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2106 value1057 value1 value2 = (output2106, value1058, value1) := by
  rw [input2106_def, output2106_def]
  kernel_rfl

theorem node2107_cond_eq
    (child2105 : Flapjack.WordAlloc.removeDeadStructural input2105 value1056 value1 value2 = (output2105, value1057, value1))
    (child2106 : Flapjack.WordAlloc.removeDeadStructural input2106 value1057 value1 value2 = (output2106, value1058, value1)) : Flapjack.WordAlloc.removeDeadStructural input2107 value1056 value1 value2 = (output2107, value1058, value1) := by
  rw [input2107_def, output2107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2105]
  dsimp only
  rw [child2106]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2105_skip, output2106_skip]
  kernel_rfl

theorem node2108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2108 value1058 value1 value2 = (output2108, value1059, value1) := by
  rw [input2108_def, output2108_def]
  kernel_rfl

theorem node2109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2109 value1059 value1 value2 = (output2109, value1060, value1) := by
  rw [input2109_def, output2109_def]
  kernel_rfl

theorem node2110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2110 value1060 value1 value2 = (output2110, value1061, value1) := by
  rw [input2110_def, output2110_def]
  kernel_rfl

theorem node2111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2111 value1061 value1 value2 = (output2111, value5, value1) := by
  rw [input2111_def, output2111_def]
  kernel_rfl

theorem node2112_cond_eq
    (child2110 : Flapjack.WordAlloc.removeDeadStructural input2110 value1060 value1 value2 = (output2110, value1061, value1))
    (child2111 : Flapjack.WordAlloc.removeDeadStructural input2111 value1061 value1 value2 = (output2111, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2112 value1060 value1 value2 = (output2112, value5, value1) := by
  rw [input2112_def, output2112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2110]
  dsimp only
  rw [child2111]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2110_skip, output2111_skip]
  kernel_rfl

theorem node2113_cond_eq
    (child2109 : Flapjack.WordAlloc.removeDeadStructural input2109 value1059 value1 value2 = (output2109, value1060, value1))
    (child2112 : Flapjack.WordAlloc.removeDeadStructural input2112 value1060 value1 value2 = (output2112, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2113 value1059 value1 value2 = (output2113, value5, value1) := by
  rw [input2113_def, output2113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2109]
  dsimp only
  rw [child2112]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2109_skip, output2112_skip]
  kernel_rfl

theorem node2114_cond_eq
    (child2108 : Flapjack.WordAlloc.removeDeadStructural input2108 value1058 value1 value2 = (output2108, value1059, value1))
    (child2113 : Flapjack.WordAlloc.removeDeadStructural input2113 value1059 value1 value2 = (output2113, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2114 value1058 value1 value2 = (output2114, value5, value1) := by
  rw [input2114_def, output2114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2108]
  dsimp only
  rw [child2113]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2108_skip, output2113_skip]
  kernel_rfl

theorem node2115_cond_eq
    (child2107 : Flapjack.WordAlloc.removeDeadStructural input2107 value1056 value1 value2 = (output2107, value1058, value1))
    (child2114 : Flapjack.WordAlloc.removeDeadStructural input2114 value1058 value1 value2 = (output2114, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2115 value1056 value1 value2 = (output2115, value5, value1) := by
  rw [input2115_def, output2115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2107]
  dsimp only
  rw [child2114]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2107_skip, output2114_skip]
  kernel_rfl

theorem node2116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2116 value5 value1 value2 = (output2116, value1062, value1) := by
  rw [input2116_def, output2116_def]
  kernel_rfl

theorem node2117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2117 value1062 value1 value2 = (output2117, value1063, value1) := by
  rw [input2117_def, output2117_def]
  kernel_rfl

theorem node2118_cond_eq
    (child2116 : Flapjack.WordAlloc.removeDeadStructural input2116 value5 value1 value2 = (output2116, value1062, value1))
    (child2117 : Flapjack.WordAlloc.removeDeadStructural input2117 value1062 value1 value2 = (output2117, value1063, value1)) : Flapjack.WordAlloc.removeDeadStructural input2118 value5 value1 value2 = (output2118, value1063, value1) := by
  rw [input2118_def, output2118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2116]
  dsimp only
  rw [child2117]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2116_skip, output2117_skip]
  kernel_rfl

theorem node2119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2119 value1063 value1 value2 = (output2119, value1064, value1) := by
  rw [input2119_def, output2119_def]
  kernel_rfl

theorem node2120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2120 value1064 value1 value2 = (output2120, value1064, value1) := by
  rw [input2120_def, output2120_def]
  kernel_rfl

theorem node2121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2121 value1064 value1 value2 = (output2121, value1065, value1) := by
  rw [input2121_def, output2121_def]
  kernel_rfl

theorem node2122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2122 value1065 value1 value2 = (output2122, value1066, value1) := by
  rw [input2122_def, output2122_def]
  kernel_rfl

theorem node2123_cond_eq
    (child2121 : Flapjack.WordAlloc.removeDeadStructural input2121 value1064 value1 value2 = (output2121, value1065, value1))
    (child2122 : Flapjack.WordAlloc.removeDeadStructural input2122 value1065 value1 value2 = (output2122, value1066, value1)) : Flapjack.WordAlloc.removeDeadStructural input2123 value1064 value1 value2 = (output2123, value1066, value1) := by
  rw [input2123_def, output2123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2121]
  dsimp only
  rw [child2122]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2121_skip, output2122_skip]
  kernel_rfl

theorem node2124_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2124 value1066 value1 value2 = (output2124, value1067, value1) := by
  rw [input2124_def, output2124_def]
  kernel_rfl

theorem node2125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2125 value1067 value1 value2 = (output2125, value1068, value1) := by
  rw [input2125_def, output2125_def]
  kernel_rfl

theorem node2126_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2126 value1068 value1 value2 = (output2126, value1069, value1) := by
  rw [input2126_def, output2126_def]
  kernel_rfl

theorem node2127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2127 value1069 value1 value2 = (output2127, value5, value1) := by
  rw [input2127_def, output2127_def]
  kernel_rfl

theorem node2128_cond_eq
    (child2126 : Flapjack.WordAlloc.removeDeadStructural input2126 value1068 value1 value2 = (output2126, value1069, value1))
    (child2127 : Flapjack.WordAlloc.removeDeadStructural input2127 value1069 value1 value2 = (output2127, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2128 value1068 value1 value2 = (output2128, value5, value1) := by
  rw [input2128_def, output2128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2126]
  dsimp only
  rw [child2127]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2126_skip, output2127_skip]
  kernel_rfl

theorem node2129_cond_eq
    (child2125 : Flapjack.WordAlloc.removeDeadStructural input2125 value1067 value1 value2 = (output2125, value1068, value1))
    (child2128 : Flapjack.WordAlloc.removeDeadStructural input2128 value1068 value1 value2 = (output2128, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2129 value1067 value1 value2 = (output2129, value5, value1) := by
  rw [input2129_def, output2129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2125]
  dsimp only
  rw [child2128]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2125_skip, output2128_skip]
  kernel_rfl

theorem node2130_cond_eq
    (child2124 : Flapjack.WordAlloc.removeDeadStructural input2124 value1066 value1 value2 = (output2124, value1067, value1))
    (child2129 : Flapjack.WordAlloc.removeDeadStructural input2129 value1067 value1 value2 = (output2129, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2130 value1066 value1 value2 = (output2130, value5, value1) := by
  rw [input2130_def, output2130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2124]
  dsimp only
  rw [child2129]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2124_skip, output2129_skip]
  kernel_rfl

theorem node2131_cond_eq
    (child2123 : Flapjack.WordAlloc.removeDeadStructural input2123 value1064 value1 value2 = (output2123, value1066, value1))
    (child2130 : Flapjack.WordAlloc.removeDeadStructural input2130 value1066 value1 value2 = (output2130, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2131 value1064 value1 value2 = (output2131, value5, value1) := by
  rw [input2131_def, output2131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2123]
  dsimp only
  rw [child2130]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2123_skip, output2130_skip]
  kernel_rfl

theorem node2132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2132 value5 value1 value2 = (output2132, value1070, value1) := by
  rw [input2132_def, output2132_def]
  kernel_rfl

theorem node2133_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2133 value1070 value1 value2 = (output2133, value1071, value1) := by
  rw [input2133_def, output2133_def]
  kernel_rfl

theorem node2134_cond_eq
    (child2132 : Flapjack.WordAlloc.removeDeadStructural input2132 value5 value1 value2 = (output2132, value1070, value1))
    (child2133 : Flapjack.WordAlloc.removeDeadStructural input2133 value1070 value1 value2 = (output2133, value1071, value1)) : Flapjack.WordAlloc.removeDeadStructural input2134 value5 value1 value2 = (output2134, value1071, value1) := by
  rw [input2134_def, output2134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2132]
  dsimp only
  rw [child2133]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2132_skip, output2133_skip]
  kernel_rfl

theorem node2135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2135 value1071 value1 value2 = (output2135, value1072, value1) := by
  rw [input2135_def, output2135_def]
  kernel_rfl

theorem node2136_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2136 value1072 value1 value2 = (output2136, value1072, value1) := by
  rw [input2136_def, output2136_def]
  kernel_rfl

theorem node2137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2137 value1072 value1 value2 = (output2137, value1073, value1) := by
  rw [input2137_def, output2137_def]
  kernel_rfl

theorem node2138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2138 value1073 value1 value2 = (output2138, value1074, value1) := by
  rw [input2138_def, output2138_def]
  kernel_rfl

theorem node2139_cond_eq
    (child2137 : Flapjack.WordAlloc.removeDeadStructural input2137 value1072 value1 value2 = (output2137, value1073, value1))
    (child2138 : Flapjack.WordAlloc.removeDeadStructural input2138 value1073 value1 value2 = (output2138, value1074, value1)) : Flapjack.WordAlloc.removeDeadStructural input2139 value1072 value1 value2 = (output2139, value1074, value1) := by
  rw [input2139_def, output2139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2137]
  dsimp only
  rw [child2138]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2137_skip, output2138_skip]
  kernel_rfl

theorem node2140_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2140 value1074 value1 value2 = (output2140, value1075, value1) := by
  rw [input2140_def, output2140_def]
  kernel_rfl

theorem node2141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2141 value1075 value1 value2 = (output2141, value1076, value1) := by
  rw [input2141_def, output2141_def]
  kernel_rfl

theorem node2142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2142 value1076 value1 value2 = (output2142, value1077, value1) := by
  rw [input2142_def, output2142_def]
  kernel_rfl

theorem node2143_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2143 value1077 value1 value2 = (output2143, value5, value1) := by
  rw [input2143_def, output2143_def]
  kernel_rfl

theorem node2144_cond_eq
    (child2142 : Flapjack.WordAlloc.removeDeadStructural input2142 value1076 value1 value2 = (output2142, value1077, value1))
    (child2143 : Flapjack.WordAlloc.removeDeadStructural input2143 value1077 value1 value2 = (output2143, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2144 value1076 value1 value2 = (output2144, value5, value1) := by
  rw [input2144_def, output2144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2142]
  dsimp only
  rw [child2143]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2142_skip, output2143_skip]
  kernel_rfl

theorem node2145_cond_eq
    (child2141 : Flapjack.WordAlloc.removeDeadStructural input2141 value1075 value1 value2 = (output2141, value1076, value1))
    (child2144 : Flapjack.WordAlloc.removeDeadStructural input2144 value1076 value1 value2 = (output2144, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2145 value1075 value1 value2 = (output2145, value5, value1) := by
  rw [input2145_def, output2145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2141]
  dsimp only
  rw [child2144]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2141_skip, output2144_skip]
  kernel_rfl

theorem node2146_cond_eq
    (child2140 : Flapjack.WordAlloc.removeDeadStructural input2140 value1074 value1 value2 = (output2140, value1075, value1))
    (child2145 : Flapjack.WordAlloc.removeDeadStructural input2145 value1075 value1 value2 = (output2145, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2146 value1074 value1 value2 = (output2146, value5, value1) := by
  rw [input2146_def, output2146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2140]
  dsimp only
  rw [child2145]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2140_skip, output2145_skip]
  kernel_rfl

theorem node2147_cond_eq
    (child2139 : Flapjack.WordAlloc.removeDeadStructural input2139 value1072 value1 value2 = (output2139, value1074, value1))
    (child2146 : Flapjack.WordAlloc.removeDeadStructural input2146 value1074 value1 value2 = (output2146, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2147 value1072 value1 value2 = (output2147, value5, value1) := by
  rw [input2147_def, output2147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2139]
  dsimp only
  rw [child2146]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2139_skip, output2146_skip]
  kernel_rfl

theorem node2148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2148 value5 value1 value2 = (output2148, value1078, value1) := by
  rw [input2148_def, output2148_def]
  kernel_rfl

theorem node2149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2149 value1078 value1 value2 = (output2149, value1079, value1) := by
  rw [input2149_def, output2149_def]
  kernel_rfl

theorem node2150_cond_eq
    (child2148 : Flapjack.WordAlloc.removeDeadStructural input2148 value5 value1 value2 = (output2148, value1078, value1))
    (child2149 : Flapjack.WordAlloc.removeDeadStructural input2149 value1078 value1 value2 = (output2149, value1079, value1)) : Flapjack.WordAlloc.removeDeadStructural input2150 value5 value1 value2 = (output2150, value1079, value1) := by
  rw [input2150_def, output2150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2148]
  dsimp only
  rw [child2149]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2148_skip, output2149_skip]
  kernel_rfl

theorem node2151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2151 value1079 value1 value2 = (output2151, value1080, value1) := by
  rw [input2151_def, output2151_def]
  kernel_rfl

theorem node2152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2152 value1080 value1 value2 = (output2152, value1080, value1) := by
  rw [input2152_def, output2152_def]
  kernel_rfl

theorem node2153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2153 value1080 value1 value2 = (output2153, value1081, value1) := by
  rw [input2153_def, output2153_def]
  kernel_rfl

theorem node2154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2154 value1081 value1 value2 = (output2154, value1082, value1) := by
  rw [input2154_def, output2154_def]
  kernel_rfl

theorem node2155_cond_eq
    (child2153 : Flapjack.WordAlloc.removeDeadStructural input2153 value1080 value1 value2 = (output2153, value1081, value1))
    (child2154 : Flapjack.WordAlloc.removeDeadStructural input2154 value1081 value1 value2 = (output2154, value1082, value1)) : Flapjack.WordAlloc.removeDeadStructural input2155 value1080 value1 value2 = (output2155, value1082, value1) := by
  rw [input2155_def, output2155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2153]
  dsimp only
  rw [child2154]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2153_skip, output2154_skip]
  kernel_rfl

theorem node2156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2156 value1082 value1 value2 = (output2156, value1083, value1) := by
  rw [input2156_def, output2156_def]
  kernel_rfl

theorem node2157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2157 value1083 value1 value2 = (output2157, value1084, value1) := by
  rw [input2157_def, output2157_def]
  kernel_rfl

theorem node2158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2158 value1084 value1 value2 = (output2158, value1085, value1) := by
  rw [input2158_def, output2158_def]
  kernel_rfl

theorem node2159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2159 value1085 value1 value2 = (output2159, value5, value1) := by
  rw [input2159_def, output2159_def]
  kernel_rfl

theorem node2160_cond_eq
    (child2158 : Flapjack.WordAlloc.removeDeadStructural input2158 value1084 value1 value2 = (output2158, value1085, value1))
    (child2159 : Flapjack.WordAlloc.removeDeadStructural input2159 value1085 value1 value2 = (output2159, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2160 value1084 value1 value2 = (output2160, value5, value1) := by
  rw [input2160_def, output2160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2158]
  dsimp only
  rw [child2159]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2158_skip, output2159_skip]
  kernel_rfl

theorem node2161_cond_eq
    (child2157 : Flapjack.WordAlloc.removeDeadStructural input2157 value1083 value1 value2 = (output2157, value1084, value1))
    (child2160 : Flapjack.WordAlloc.removeDeadStructural input2160 value1084 value1 value2 = (output2160, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2161 value1083 value1 value2 = (output2161, value5, value1) := by
  rw [input2161_def, output2161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2157]
  dsimp only
  rw [child2160]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2157_skip, output2160_skip]
  kernel_rfl

theorem node2162_cond_eq
    (child2156 : Flapjack.WordAlloc.removeDeadStructural input2156 value1082 value1 value2 = (output2156, value1083, value1))
    (child2161 : Flapjack.WordAlloc.removeDeadStructural input2161 value1083 value1 value2 = (output2161, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2162 value1082 value1 value2 = (output2162, value5, value1) := by
  rw [input2162_def, output2162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2156]
  dsimp only
  rw [child2161]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2156_skip, output2161_skip]
  kernel_rfl

theorem node2163_cond_eq
    (child2155 : Flapjack.WordAlloc.removeDeadStructural input2155 value1080 value1 value2 = (output2155, value1082, value1))
    (child2162 : Flapjack.WordAlloc.removeDeadStructural input2162 value1082 value1 value2 = (output2162, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2163 value1080 value1 value2 = (output2163, value5, value1) := by
  rw [input2163_def, output2163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2155]
  dsimp only
  rw [child2162]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2155_skip, output2162_skip]
  kernel_rfl

theorem node2164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2164 value5 value1 value2 = (output2164, value1086, value1) := by
  rw [input2164_def, output2164_def]
  kernel_rfl

theorem node2165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2165 value1086 value1 value2 = (output2165, value1087, value1) := by
  rw [input2165_def, output2165_def]
  kernel_rfl

theorem node2166_cond_eq
    (child2164 : Flapjack.WordAlloc.removeDeadStructural input2164 value5 value1 value2 = (output2164, value1086, value1))
    (child2165 : Flapjack.WordAlloc.removeDeadStructural input2165 value1086 value1 value2 = (output2165, value1087, value1)) : Flapjack.WordAlloc.removeDeadStructural input2166 value5 value1 value2 = (output2166, value1087, value1) := by
  rw [input2166_def, output2166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2164]
  dsimp only
  rw [child2165]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2164_skip, output2165_skip]
  kernel_rfl

theorem node2167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2167 value1087 value1 value2 = (output2167, value1088, value1) := by
  rw [input2167_def, output2167_def]
  kernel_rfl

theorem node2168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2168 value1088 value1 value2 = (output2168, value1088, value1) := by
  rw [input2168_def, output2168_def]
  kernel_rfl

theorem node2169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2169 value1088 value1 value2 = (output2169, value1089, value1) := by
  rw [input2169_def, output2169_def]
  kernel_rfl

theorem node2170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2170 value1089 value1 value2 = (output2170, value1090, value1) := by
  rw [input2170_def, output2170_def]
  kernel_rfl

theorem node2171_cond_eq
    (child2169 : Flapjack.WordAlloc.removeDeadStructural input2169 value1088 value1 value2 = (output2169, value1089, value1))
    (child2170 : Flapjack.WordAlloc.removeDeadStructural input2170 value1089 value1 value2 = (output2170, value1090, value1)) : Flapjack.WordAlloc.removeDeadStructural input2171 value1088 value1 value2 = (output2171, value1090, value1) := by
  rw [input2171_def, output2171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2169]
  dsimp only
  rw [child2170]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2169_skip, output2170_skip]
  kernel_rfl

theorem node2172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2172 value1090 value1 value2 = (output2172, value1091, value1) := by
  rw [input2172_def, output2172_def]
  kernel_rfl

theorem node2173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2173 value1091 value1 value2 = (output2173, value1092, value1) := by
  rw [input2173_def, output2173_def]
  kernel_rfl

theorem node2174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2174 value1092 value1 value2 = (output2174, value1093, value1) := by
  rw [input2174_def, output2174_def]
  kernel_rfl

theorem node2175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2175 value1093 value1 value2 = (output2175, value5, value1) := by
  rw [input2175_def, output2175_def]
  kernel_rfl

theorem node2176_cond_eq
    (child2174 : Flapjack.WordAlloc.removeDeadStructural input2174 value1092 value1 value2 = (output2174, value1093, value1))
    (child2175 : Flapjack.WordAlloc.removeDeadStructural input2175 value1093 value1 value2 = (output2175, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2176 value1092 value1 value2 = (output2176, value5, value1) := by
  rw [input2176_def, output2176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2174]
  dsimp only
  rw [child2175]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2174_skip, output2175_skip]
  kernel_rfl

theorem node2177_cond_eq
    (child2173 : Flapjack.WordAlloc.removeDeadStructural input2173 value1091 value1 value2 = (output2173, value1092, value1))
    (child2176 : Flapjack.WordAlloc.removeDeadStructural input2176 value1092 value1 value2 = (output2176, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2177 value1091 value1 value2 = (output2177, value5, value1) := by
  rw [input2177_def, output2177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2173]
  dsimp only
  rw [child2176]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2173_skip, output2176_skip]
  kernel_rfl

theorem node2178_cond_eq
    (child2172 : Flapjack.WordAlloc.removeDeadStructural input2172 value1090 value1 value2 = (output2172, value1091, value1))
    (child2177 : Flapjack.WordAlloc.removeDeadStructural input2177 value1091 value1 value2 = (output2177, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2178 value1090 value1 value2 = (output2178, value5, value1) := by
  rw [input2178_def, output2178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2172]
  dsimp only
  rw [child2177]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2172_skip, output2177_skip]
  kernel_rfl

theorem node2179_cond_eq
    (child2171 : Flapjack.WordAlloc.removeDeadStructural input2171 value1088 value1 value2 = (output2171, value1090, value1))
    (child2178 : Flapjack.WordAlloc.removeDeadStructural input2178 value1090 value1 value2 = (output2178, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2179 value1088 value1 value2 = (output2179, value5, value1) := by
  rw [input2179_def, output2179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2171]
  dsimp only
  rw [child2178]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2171_skip, output2178_skip]
  kernel_rfl

theorem node2180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2180 value5 value1 value2 = (output2180, value1094, value1) := by
  rw [input2180_def, output2180_def]
  kernel_rfl

theorem node2181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2181 value1094 value1 value2 = (output2181, value1095, value1) := by
  rw [input2181_def, output2181_def]
  kernel_rfl

theorem node2182_cond_eq
    (child2180 : Flapjack.WordAlloc.removeDeadStructural input2180 value5 value1 value2 = (output2180, value1094, value1))
    (child2181 : Flapjack.WordAlloc.removeDeadStructural input2181 value1094 value1 value2 = (output2181, value1095, value1)) : Flapjack.WordAlloc.removeDeadStructural input2182 value5 value1 value2 = (output2182, value1095, value1) := by
  rw [input2182_def, output2182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2180]
  dsimp only
  rw [child2181]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2180_skip, output2181_skip]
  kernel_rfl

theorem node2183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2183 value1095 value1 value2 = (output2183, value1096, value1) := by
  rw [input2183_def, output2183_def]
  kernel_rfl

theorem node2184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2184 value1096 value1 value2 = (output2184, value1096, value1) := by
  rw [input2184_def, output2184_def]
  kernel_rfl

theorem node2185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2185 value1096 value1 value2 = (output2185, value1097, value1) := by
  rw [input2185_def, output2185_def]
  kernel_rfl

theorem node2186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2186 value1097 value1 value2 = (output2186, value1098, value1) := by
  rw [input2186_def, output2186_def]
  kernel_rfl

theorem node2187_cond_eq
    (child2185 : Flapjack.WordAlloc.removeDeadStructural input2185 value1096 value1 value2 = (output2185, value1097, value1))
    (child2186 : Flapjack.WordAlloc.removeDeadStructural input2186 value1097 value1 value2 = (output2186, value1098, value1)) : Flapjack.WordAlloc.removeDeadStructural input2187 value1096 value1 value2 = (output2187, value1098, value1) := by
  rw [input2187_def, output2187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2185]
  dsimp only
  rw [child2186]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2185_skip, output2186_skip]
  kernel_rfl

theorem node2188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2188 value1098 value1 value2 = (output2188, value1099, value1) := by
  rw [input2188_def, output2188_def]
  kernel_rfl

theorem node2189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2189 value1099 value1 value2 = (output2189, value1100, value1) := by
  rw [input2189_def, output2189_def]
  kernel_rfl

theorem node2190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2190 value1100 value1 value2 = (output2190, value1101, value1) := by
  rw [input2190_def, output2190_def]
  kernel_rfl

theorem node2191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2191 value1101 value1 value2 = (output2191, value5, value1) := by
  rw [input2191_def, output2191_def]
  kernel_rfl

theorem node2192_cond_eq
    (child2190 : Flapjack.WordAlloc.removeDeadStructural input2190 value1100 value1 value2 = (output2190, value1101, value1))
    (child2191 : Flapjack.WordAlloc.removeDeadStructural input2191 value1101 value1 value2 = (output2191, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2192 value1100 value1 value2 = (output2192, value5, value1) := by
  rw [input2192_def, output2192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2190]
  dsimp only
  rw [child2191]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2190_skip, output2191_skip]
  kernel_rfl

theorem node2193_cond_eq
    (child2189 : Flapjack.WordAlloc.removeDeadStructural input2189 value1099 value1 value2 = (output2189, value1100, value1))
    (child2192 : Flapjack.WordAlloc.removeDeadStructural input2192 value1100 value1 value2 = (output2192, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2193 value1099 value1 value2 = (output2193, value5, value1) := by
  rw [input2193_def, output2193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2189]
  dsimp only
  rw [child2192]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2189_skip, output2192_skip]
  kernel_rfl

theorem node2194_cond_eq
    (child2188 : Flapjack.WordAlloc.removeDeadStructural input2188 value1098 value1 value2 = (output2188, value1099, value1))
    (child2193 : Flapjack.WordAlloc.removeDeadStructural input2193 value1099 value1 value2 = (output2193, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2194 value1098 value1 value2 = (output2194, value5, value1) := by
  rw [input2194_def, output2194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2188]
  dsimp only
  rw [child2193]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2188_skip, output2193_skip]
  kernel_rfl

theorem node2195_cond_eq
    (child2187 : Flapjack.WordAlloc.removeDeadStructural input2187 value1096 value1 value2 = (output2187, value1098, value1))
    (child2194 : Flapjack.WordAlloc.removeDeadStructural input2194 value1098 value1 value2 = (output2194, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2195 value1096 value1 value2 = (output2195, value5, value1) := by
  rw [input2195_def, output2195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2187]
  dsimp only
  rw [child2194]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2187_skip, output2194_skip]
  kernel_rfl

theorem node2196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2196 value5 value1 value2 = (output2196, value1102, value1) := by
  rw [input2196_def, output2196_def]
  kernel_rfl

theorem node2197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2197 value1102 value1 value2 = (output2197, value1103, value1) := by
  rw [input2197_def, output2197_def]
  kernel_rfl

theorem node2198_cond_eq
    (child2196 : Flapjack.WordAlloc.removeDeadStructural input2196 value5 value1 value2 = (output2196, value1102, value1))
    (child2197 : Flapjack.WordAlloc.removeDeadStructural input2197 value1102 value1 value2 = (output2197, value1103, value1)) : Flapjack.WordAlloc.removeDeadStructural input2198 value5 value1 value2 = (output2198, value1103, value1) := by
  rw [input2198_def, output2198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2196]
  dsimp only
  rw [child2197]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2196_skip, output2197_skip]
  kernel_rfl

theorem node2199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2199 value1103 value1 value2 = (output2199, value1104, value1) := by
  rw [input2199_def, output2199_def]
  kernel_rfl

theorem node2200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2200 value1104 value1 value2 = (output2200, value1104, value1) := by
  rw [input2200_def, output2200_def]
  kernel_rfl

theorem node2201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2201 value1104 value1 value2 = (output2201, value1105, value1) := by
  rw [input2201_def, output2201_def]
  kernel_rfl

theorem node2202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2202 value1105 value1 value2 = (output2202, value1106, value1) := by
  rw [input2202_def, output2202_def]
  kernel_rfl

theorem node2203_cond_eq
    (child2201 : Flapjack.WordAlloc.removeDeadStructural input2201 value1104 value1 value2 = (output2201, value1105, value1))
    (child2202 : Flapjack.WordAlloc.removeDeadStructural input2202 value1105 value1 value2 = (output2202, value1106, value1)) : Flapjack.WordAlloc.removeDeadStructural input2203 value1104 value1 value2 = (output2203, value1106, value1) := by
  rw [input2203_def, output2203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2201]
  dsimp only
  rw [child2202]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2201_skip, output2202_skip]
  kernel_rfl

theorem node2204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2204 value1106 value1 value2 = (output2204, value1107, value1) := by
  rw [input2204_def, output2204_def]
  kernel_rfl

theorem node2205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2205 value1107 value1 value2 = (output2205, value1108, value1) := by
  rw [input2205_def, output2205_def]
  kernel_rfl

theorem node2206_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2206 value1108 value1 value2 = (output2206, value1109, value1) := by
  rw [input2206_def, output2206_def]
  kernel_rfl

theorem node2207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2207 value1109 value1 value2 = (output2207, value5, value1) := by
  rw [input2207_def, output2207_def]
  kernel_rfl

theorem node2208_cond_eq
    (child2206 : Flapjack.WordAlloc.removeDeadStructural input2206 value1108 value1 value2 = (output2206, value1109, value1))
    (child2207 : Flapjack.WordAlloc.removeDeadStructural input2207 value1109 value1 value2 = (output2207, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2208 value1108 value1 value2 = (output2208, value5, value1) := by
  rw [input2208_def, output2208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2206]
  dsimp only
  rw [child2207]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2206_skip, output2207_skip]
  kernel_rfl

theorem node2209_cond_eq
    (child2205 : Flapjack.WordAlloc.removeDeadStructural input2205 value1107 value1 value2 = (output2205, value1108, value1))
    (child2208 : Flapjack.WordAlloc.removeDeadStructural input2208 value1108 value1 value2 = (output2208, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2209 value1107 value1 value2 = (output2209, value5, value1) := by
  rw [input2209_def, output2209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2205]
  dsimp only
  rw [child2208]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2205_skip, output2208_skip]
  kernel_rfl

theorem node2210_cond_eq
    (child2204 : Flapjack.WordAlloc.removeDeadStructural input2204 value1106 value1 value2 = (output2204, value1107, value1))
    (child2209 : Flapjack.WordAlloc.removeDeadStructural input2209 value1107 value1 value2 = (output2209, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2210 value1106 value1 value2 = (output2210, value5, value1) := by
  rw [input2210_def, output2210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2204]
  dsimp only
  rw [child2209]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2204_skip, output2209_skip]
  kernel_rfl

theorem node2211_cond_eq
    (child2203 : Flapjack.WordAlloc.removeDeadStructural input2203 value1104 value1 value2 = (output2203, value1106, value1))
    (child2210 : Flapjack.WordAlloc.removeDeadStructural input2210 value1106 value1 value2 = (output2210, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2211 value1104 value1 value2 = (output2211, value5, value1) := by
  rw [input2211_def, output2211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2203]
  dsimp only
  rw [child2210]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2203_skip, output2210_skip]
  kernel_rfl

theorem node2212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2212 value5 value1 value2 = (output2212, value1110, value1) := by
  rw [input2212_def, output2212_def]
  kernel_rfl

theorem node2213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2213 value1110 value1 value2 = (output2213, value1111, value1) := by
  rw [input2213_def, output2213_def]
  kernel_rfl

theorem node2214_cond_eq
    (child2212 : Flapjack.WordAlloc.removeDeadStructural input2212 value5 value1 value2 = (output2212, value1110, value1))
    (child2213 : Flapjack.WordAlloc.removeDeadStructural input2213 value1110 value1 value2 = (output2213, value1111, value1)) : Flapjack.WordAlloc.removeDeadStructural input2214 value5 value1 value2 = (output2214, value1111, value1) := by
  rw [input2214_def, output2214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2212]
  dsimp only
  rw [child2213]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2212_skip, output2213_skip]
  kernel_rfl

theorem node2215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2215 value1111 value1 value2 = (output2215, value1112, value1) := by
  rw [input2215_def, output2215_def]
  kernel_rfl

theorem node2216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2216 value1112 value1 value2 = (output2216, value1112, value1) := by
  rw [input2216_def, output2216_def]
  kernel_rfl

theorem node2217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2217 value1112 value1 value2 = (output2217, value1113, value1) := by
  rw [input2217_def, output2217_def]
  kernel_rfl

theorem node2218_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2218 value1113 value1 value2 = (output2218, value1114, value1) := by
  rw [input2218_def, output2218_def]
  kernel_rfl

theorem node2219_cond_eq
    (child2217 : Flapjack.WordAlloc.removeDeadStructural input2217 value1112 value1 value2 = (output2217, value1113, value1))
    (child2218 : Flapjack.WordAlloc.removeDeadStructural input2218 value1113 value1 value2 = (output2218, value1114, value1)) : Flapjack.WordAlloc.removeDeadStructural input2219 value1112 value1 value2 = (output2219, value1114, value1) := by
  rw [input2219_def, output2219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2217]
  dsimp only
  rw [child2218]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2217_skip, output2218_skip]
  kernel_rfl

theorem node2220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2220 value1114 value1 value2 = (output2220, value1115, value1) := by
  rw [input2220_def, output2220_def]
  kernel_rfl

theorem node2221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2221 value1115 value1 value2 = (output2221, value1116, value1) := by
  rw [input2221_def, output2221_def]
  kernel_rfl

theorem node2222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2222 value1116 value1 value2 = (output2222, value1117, value1) := by
  rw [input2222_def, output2222_def]
  kernel_rfl

theorem node2223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2223 value1117 value1 value2 = (output2223, value5, value1) := by
  rw [input2223_def, output2223_def]
  kernel_rfl

theorem node2224_cond_eq
    (child2222 : Flapjack.WordAlloc.removeDeadStructural input2222 value1116 value1 value2 = (output2222, value1117, value1))
    (child2223 : Flapjack.WordAlloc.removeDeadStructural input2223 value1117 value1 value2 = (output2223, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2224 value1116 value1 value2 = (output2224, value5, value1) := by
  rw [input2224_def, output2224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2222]
  dsimp only
  rw [child2223]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2222_skip, output2223_skip]
  kernel_rfl

theorem node2225_cond_eq
    (child2221 : Flapjack.WordAlloc.removeDeadStructural input2221 value1115 value1 value2 = (output2221, value1116, value1))
    (child2224 : Flapjack.WordAlloc.removeDeadStructural input2224 value1116 value1 value2 = (output2224, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2225 value1115 value1 value2 = (output2225, value5, value1) := by
  rw [input2225_def, output2225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2221]
  dsimp only
  rw [child2224]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2221_skip, output2224_skip]
  kernel_rfl

theorem node2226_cond_eq
    (child2220 : Flapjack.WordAlloc.removeDeadStructural input2220 value1114 value1 value2 = (output2220, value1115, value1))
    (child2225 : Flapjack.WordAlloc.removeDeadStructural input2225 value1115 value1 value2 = (output2225, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2226 value1114 value1 value2 = (output2226, value5, value1) := by
  rw [input2226_def, output2226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2220]
  dsimp only
  rw [child2225]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2220_skip, output2225_skip]
  kernel_rfl

theorem node2227_cond_eq
    (child2219 : Flapjack.WordAlloc.removeDeadStructural input2219 value1112 value1 value2 = (output2219, value1114, value1))
    (child2226 : Flapjack.WordAlloc.removeDeadStructural input2226 value1114 value1 value2 = (output2226, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2227 value1112 value1 value2 = (output2227, value5, value1) := by
  rw [input2227_def, output2227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2219]
  dsimp only
  rw [child2226]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2219_skip, output2226_skip]
  kernel_rfl

theorem node2228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2228 value5 value1 value2 = (output2228, value1118, value1) := by
  rw [input2228_def, output2228_def]
  kernel_rfl

theorem node2229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2229 value1118 value1 value2 = (output2229, value1119, value1) := by
  rw [input2229_def, output2229_def]
  kernel_rfl

theorem node2230_cond_eq
    (child2228 : Flapjack.WordAlloc.removeDeadStructural input2228 value5 value1 value2 = (output2228, value1118, value1))
    (child2229 : Flapjack.WordAlloc.removeDeadStructural input2229 value1118 value1 value2 = (output2229, value1119, value1)) : Flapjack.WordAlloc.removeDeadStructural input2230 value5 value1 value2 = (output2230, value1119, value1) := by
  rw [input2230_def, output2230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2228]
  dsimp only
  rw [child2229]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2228_skip, output2229_skip]
  kernel_rfl

theorem node2231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2231 value1119 value1 value2 = (output2231, value1120, value1) := by
  rw [input2231_def, output2231_def]
  kernel_rfl

theorem node2232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2232 value1120 value1 value2 = (output2232, value1120, value1) := by
  rw [input2232_def, output2232_def]
  kernel_rfl

theorem node2233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2233 value1120 value1 value2 = (output2233, value1121, value1) := by
  rw [input2233_def, output2233_def]
  kernel_rfl

theorem node2234_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2234 value1121 value1 value2 = (output2234, value1122, value1) := by
  rw [input2234_def, output2234_def]
  kernel_rfl

theorem node2235_cond_eq
    (child2233 : Flapjack.WordAlloc.removeDeadStructural input2233 value1120 value1 value2 = (output2233, value1121, value1))
    (child2234 : Flapjack.WordAlloc.removeDeadStructural input2234 value1121 value1 value2 = (output2234, value1122, value1)) : Flapjack.WordAlloc.removeDeadStructural input2235 value1120 value1 value2 = (output2235, value1122, value1) := by
  rw [input2235_def, output2235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2233]
  dsimp only
  rw [child2234]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2233_skip, output2234_skip]
  kernel_rfl

theorem node2236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2236 value1122 value1 value2 = (output2236, value1123, value1) := by
  rw [input2236_def, output2236_def]
  kernel_rfl

theorem node2237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2237 value1123 value1 value2 = (output2237, value1124, value1) := by
  rw [input2237_def, output2237_def]
  kernel_rfl

theorem node2238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2238 value1124 value1 value2 = (output2238, value1125, value1) := by
  rw [input2238_def, output2238_def]
  kernel_rfl

theorem node2239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2239 value1125 value1 value2 = (output2239, value5, value1) := by
  rw [input2239_def, output2239_def]
  kernel_rfl

theorem node2240_cond_eq
    (child2238 : Flapjack.WordAlloc.removeDeadStructural input2238 value1124 value1 value2 = (output2238, value1125, value1))
    (child2239 : Flapjack.WordAlloc.removeDeadStructural input2239 value1125 value1 value2 = (output2239, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2240 value1124 value1 value2 = (output2240, value5, value1) := by
  rw [input2240_def, output2240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2238]
  dsimp only
  rw [child2239]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2238_skip, output2239_skip]
  kernel_rfl

theorem node2241_cond_eq
    (child2237 : Flapjack.WordAlloc.removeDeadStructural input2237 value1123 value1 value2 = (output2237, value1124, value1))
    (child2240 : Flapjack.WordAlloc.removeDeadStructural input2240 value1124 value1 value2 = (output2240, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2241 value1123 value1 value2 = (output2241, value5, value1) := by
  rw [input2241_def, output2241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2237]
  dsimp only
  rw [child2240]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2237_skip, output2240_skip]
  kernel_rfl

theorem node2242_cond_eq
    (child2236 : Flapjack.WordAlloc.removeDeadStructural input2236 value1122 value1 value2 = (output2236, value1123, value1))
    (child2241 : Flapjack.WordAlloc.removeDeadStructural input2241 value1123 value1 value2 = (output2241, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2242 value1122 value1 value2 = (output2242, value5, value1) := by
  rw [input2242_def, output2242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2236]
  dsimp only
  rw [child2241]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2236_skip, output2241_skip]
  kernel_rfl

theorem node2243_cond_eq
    (child2235 : Flapjack.WordAlloc.removeDeadStructural input2235 value1120 value1 value2 = (output2235, value1122, value1))
    (child2242 : Flapjack.WordAlloc.removeDeadStructural input2242 value1122 value1 value2 = (output2242, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2243 value1120 value1 value2 = (output2243, value5, value1) := by
  rw [input2243_def, output2243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2235]
  dsimp only
  rw [child2242]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2235_skip, output2242_skip]
  kernel_rfl

theorem node2244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2244 value5 value1 value2 = (output2244, value1126, value1) := by
  rw [input2244_def, output2244_def]
  kernel_rfl

theorem node2245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2245 value1126 value1 value2 = (output2245, value1127, value1) := by
  rw [input2245_def, output2245_def]
  kernel_rfl

theorem node2246_cond_eq
    (child2244 : Flapjack.WordAlloc.removeDeadStructural input2244 value5 value1 value2 = (output2244, value1126, value1))
    (child2245 : Flapjack.WordAlloc.removeDeadStructural input2245 value1126 value1 value2 = (output2245, value1127, value1)) : Flapjack.WordAlloc.removeDeadStructural input2246 value5 value1 value2 = (output2246, value1127, value1) := by
  rw [input2246_def, output2246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2244]
  dsimp only
  rw [child2245]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2244_skip, output2245_skip]
  kernel_rfl

theorem node2247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2247 value1127 value1 value2 = (output2247, value1128, value1) := by
  rw [input2247_def, output2247_def]
  kernel_rfl

theorem node2248_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2248 value1128 value1 value2 = (output2248, value1128, value1) := by
  rw [input2248_def, output2248_def]
  kernel_rfl

theorem node2249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2249 value1128 value1 value2 = (output2249, value1129, value1) := by
  rw [input2249_def, output2249_def]
  kernel_rfl

theorem node2250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2250 value1129 value1 value2 = (output2250, value1130, value1) := by
  rw [input2250_def, output2250_def]
  kernel_rfl

theorem node2251_cond_eq
    (child2249 : Flapjack.WordAlloc.removeDeadStructural input2249 value1128 value1 value2 = (output2249, value1129, value1))
    (child2250 : Flapjack.WordAlloc.removeDeadStructural input2250 value1129 value1 value2 = (output2250, value1130, value1)) : Flapjack.WordAlloc.removeDeadStructural input2251 value1128 value1 value2 = (output2251, value1130, value1) := by
  rw [input2251_def, output2251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2249]
  dsimp only
  rw [child2250]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2249_skip, output2250_skip]
  kernel_rfl

theorem node2252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2252 value1130 value1 value2 = (output2252, value1131, value1) := by
  rw [input2252_def, output2252_def]
  kernel_rfl

theorem node2253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2253 value1131 value1 value2 = (output2253, value1132, value1) := by
  rw [input2253_def, output2253_def]
  kernel_rfl

theorem node2254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2254 value1132 value1 value2 = (output2254, value1133, value1) := by
  rw [input2254_def, output2254_def]
  kernel_rfl

theorem node2255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2255 value1133 value1 value2 = (output2255, value5, value1) := by
  rw [input2255_def, output2255_def]
  kernel_rfl

theorem node2256_cond_eq
    (child2254 : Flapjack.WordAlloc.removeDeadStructural input2254 value1132 value1 value2 = (output2254, value1133, value1))
    (child2255 : Flapjack.WordAlloc.removeDeadStructural input2255 value1133 value1 value2 = (output2255, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2256 value1132 value1 value2 = (output2256, value5, value1) := by
  rw [input2256_def, output2256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2254]
  dsimp only
  rw [child2255]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2254_skip, output2255_skip]
  kernel_rfl

theorem node2257_cond_eq
    (child2253 : Flapjack.WordAlloc.removeDeadStructural input2253 value1131 value1 value2 = (output2253, value1132, value1))
    (child2256 : Flapjack.WordAlloc.removeDeadStructural input2256 value1132 value1 value2 = (output2256, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2257 value1131 value1 value2 = (output2257, value5, value1) := by
  rw [input2257_def, output2257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2253]
  dsimp only
  rw [child2256]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2253_skip, output2256_skip]
  kernel_rfl

theorem node2258_cond_eq
    (child2252 : Flapjack.WordAlloc.removeDeadStructural input2252 value1130 value1 value2 = (output2252, value1131, value1))
    (child2257 : Flapjack.WordAlloc.removeDeadStructural input2257 value1131 value1 value2 = (output2257, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2258 value1130 value1 value2 = (output2258, value5, value1) := by
  rw [input2258_def, output2258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2252]
  dsimp only
  rw [child2257]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2252_skip, output2257_skip]
  kernel_rfl

theorem node2259_cond_eq
    (child2251 : Flapjack.WordAlloc.removeDeadStructural input2251 value1128 value1 value2 = (output2251, value1130, value1))
    (child2258 : Flapjack.WordAlloc.removeDeadStructural input2258 value1130 value1 value2 = (output2258, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2259 value1128 value1 value2 = (output2259, value5, value1) := by
  rw [input2259_def, output2259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2251]
  dsimp only
  rw [child2258]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2251_skip, output2258_skip]
  kernel_rfl

theorem node2260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2260 value5 value1 value2 = (output2260, value1134, value1) := by
  rw [input2260_def, output2260_def]
  kernel_rfl

theorem node2261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2261 value1134 value1 value2 = (output2261, value1135, value1) := by
  rw [input2261_def, output2261_def]
  kernel_rfl

theorem node2262_cond_eq
    (child2260 : Flapjack.WordAlloc.removeDeadStructural input2260 value5 value1 value2 = (output2260, value1134, value1))
    (child2261 : Flapjack.WordAlloc.removeDeadStructural input2261 value1134 value1 value2 = (output2261, value1135, value1)) : Flapjack.WordAlloc.removeDeadStructural input2262 value5 value1 value2 = (output2262, value1135, value1) := by
  rw [input2262_def, output2262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2260]
  dsimp only
  rw [child2261]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2260_skip, output2261_skip]
  kernel_rfl

theorem node2263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2263 value1135 value1 value2 = (output2263, value1136, value1) := by
  rw [input2263_def, output2263_def]
  kernel_rfl

theorem node2264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2264 value1136 value1 value2 = (output2264, value1136, value1) := by
  rw [input2264_def, output2264_def]
  kernel_rfl

theorem node2265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2265 value1136 value1 value2 = (output2265, value1137, value1) := by
  rw [input2265_def, output2265_def]
  kernel_rfl

theorem node2266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2266 value1137 value1 value2 = (output2266, value1138, value1) := by
  rw [input2266_def, output2266_def]
  kernel_rfl

theorem node2267_cond_eq
    (child2265 : Flapjack.WordAlloc.removeDeadStructural input2265 value1136 value1 value2 = (output2265, value1137, value1))
    (child2266 : Flapjack.WordAlloc.removeDeadStructural input2266 value1137 value1 value2 = (output2266, value1138, value1)) : Flapjack.WordAlloc.removeDeadStructural input2267 value1136 value1 value2 = (output2267, value1138, value1) := by
  rw [input2267_def, output2267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2265]
  dsimp only
  rw [child2266]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2265_skip, output2266_skip]
  kernel_rfl

theorem node2268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2268 value1138 value1 value2 = (output2268, value1139, value1) := by
  rw [input2268_def, output2268_def]
  kernel_rfl

theorem node2269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2269 value1139 value1 value2 = (output2269, value1140, value1) := by
  rw [input2269_def, output2269_def]
  kernel_rfl

theorem node2270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2270 value1140 value1 value2 = (output2270, value1141, value1) := by
  rw [input2270_def, output2270_def]
  kernel_rfl

theorem node2271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2271 value1141 value1 value2 = (output2271, value5, value1) := by
  rw [input2271_def, output2271_def]
  kernel_rfl

theorem node2272_cond_eq
    (child2270 : Flapjack.WordAlloc.removeDeadStructural input2270 value1140 value1 value2 = (output2270, value1141, value1))
    (child2271 : Flapjack.WordAlloc.removeDeadStructural input2271 value1141 value1 value2 = (output2271, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2272 value1140 value1 value2 = (output2272, value5, value1) := by
  rw [input2272_def, output2272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2270]
  dsimp only
  rw [child2271]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2270_skip, output2271_skip]
  kernel_rfl

theorem node2273_cond_eq
    (child2269 : Flapjack.WordAlloc.removeDeadStructural input2269 value1139 value1 value2 = (output2269, value1140, value1))
    (child2272 : Flapjack.WordAlloc.removeDeadStructural input2272 value1140 value1 value2 = (output2272, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2273 value1139 value1 value2 = (output2273, value5, value1) := by
  rw [input2273_def, output2273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2269]
  dsimp only
  rw [child2272]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2269_skip, output2272_skip]
  kernel_rfl

theorem node2274_cond_eq
    (child2268 : Flapjack.WordAlloc.removeDeadStructural input2268 value1138 value1 value2 = (output2268, value1139, value1))
    (child2273 : Flapjack.WordAlloc.removeDeadStructural input2273 value1139 value1 value2 = (output2273, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2274 value1138 value1 value2 = (output2274, value5, value1) := by
  rw [input2274_def, output2274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2268]
  dsimp only
  rw [child2273]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2268_skip, output2273_skip]
  kernel_rfl

theorem node2275_cond_eq
    (child2267 : Flapjack.WordAlloc.removeDeadStructural input2267 value1136 value1 value2 = (output2267, value1138, value1))
    (child2274 : Flapjack.WordAlloc.removeDeadStructural input2274 value1138 value1 value2 = (output2274, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2275 value1136 value1 value2 = (output2275, value5, value1) := by
  rw [input2275_def, output2275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2267]
  dsimp only
  rw [child2274]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2267_skip, output2274_skip]
  kernel_rfl

theorem node2276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2276 value5 value1 value2 = (output2276, value1142, value1) := by
  rw [input2276_def, output2276_def]
  kernel_rfl

theorem node2277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2277 value1142 value1 value2 = (output2277, value1143, value1) := by
  rw [input2277_def, output2277_def]
  kernel_rfl

theorem node2278_cond_eq
    (child2276 : Flapjack.WordAlloc.removeDeadStructural input2276 value5 value1 value2 = (output2276, value1142, value1))
    (child2277 : Flapjack.WordAlloc.removeDeadStructural input2277 value1142 value1 value2 = (output2277, value1143, value1)) : Flapjack.WordAlloc.removeDeadStructural input2278 value5 value1 value2 = (output2278, value1143, value1) := by
  rw [input2278_def, output2278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2276]
  dsimp only
  rw [child2277]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2276_skip, output2277_skip]
  kernel_rfl

theorem node2279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2279 value1143 value1 value2 = (output2279, value1144, value1) := by
  rw [input2279_def, output2279_def]
  kernel_rfl

theorem node2280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2280 value1144 value1 value2 = (output2280, value1144, value1) := by
  rw [input2280_def, output2280_def]
  kernel_rfl

theorem node2281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2281 value1144 value1 value2 = (output2281, value1145, value1) := by
  rw [input2281_def, output2281_def]
  kernel_rfl

theorem node2282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2282 value1145 value1 value2 = (output2282, value1146, value1) := by
  rw [input2282_def, output2282_def]
  kernel_rfl

theorem node2283_cond_eq
    (child2281 : Flapjack.WordAlloc.removeDeadStructural input2281 value1144 value1 value2 = (output2281, value1145, value1))
    (child2282 : Flapjack.WordAlloc.removeDeadStructural input2282 value1145 value1 value2 = (output2282, value1146, value1)) : Flapjack.WordAlloc.removeDeadStructural input2283 value1144 value1 value2 = (output2283, value1146, value1) := by
  rw [input2283_def, output2283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2281]
  dsimp only
  rw [child2282]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2281_skip, output2282_skip]
  kernel_rfl

theorem node2284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2284 value1146 value1 value2 = (output2284, value1147, value1) := by
  rw [input2284_def, output2284_def]
  kernel_rfl

theorem node2285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2285 value1147 value1 value2 = (output2285, value1148, value1) := by
  rw [input2285_def, output2285_def]
  kernel_rfl

theorem node2286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2286 value1148 value1 value2 = (output2286, value1149, value1) := by
  rw [input2286_def, output2286_def]
  kernel_rfl

theorem node2287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2287 value1149 value1 value2 = (output2287, value5, value1) := by
  rw [input2287_def, output2287_def]
  kernel_rfl

theorem node2288_cond_eq
    (child2286 : Flapjack.WordAlloc.removeDeadStructural input2286 value1148 value1 value2 = (output2286, value1149, value1))
    (child2287 : Flapjack.WordAlloc.removeDeadStructural input2287 value1149 value1 value2 = (output2287, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2288 value1148 value1 value2 = (output2288, value5, value1) := by
  rw [input2288_def, output2288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2286]
  dsimp only
  rw [child2287]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2286_skip, output2287_skip]
  kernel_rfl

theorem node2289_cond_eq
    (child2285 : Flapjack.WordAlloc.removeDeadStructural input2285 value1147 value1 value2 = (output2285, value1148, value1))
    (child2288 : Flapjack.WordAlloc.removeDeadStructural input2288 value1148 value1 value2 = (output2288, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2289 value1147 value1 value2 = (output2289, value5, value1) := by
  rw [input2289_def, output2289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2285]
  dsimp only
  rw [child2288]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2285_skip, output2288_skip]
  kernel_rfl

theorem node2290_cond_eq
    (child2284 : Flapjack.WordAlloc.removeDeadStructural input2284 value1146 value1 value2 = (output2284, value1147, value1))
    (child2289 : Flapjack.WordAlloc.removeDeadStructural input2289 value1147 value1 value2 = (output2289, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2290 value1146 value1 value2 = (output2290, value5, value1) := by
  rw [input2290_def, output2290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2284]
  dsimp only
  rw [child2289]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2284_skip, output2289_skip]
  kernel_rfl

theorem node2291_cond_eq
    (child2283 : Flapjack.WordAlloc.removeDeadStructural input2283 value1144 value1 value2 = (output2283, value1146, value1))
    (child2290 : Flapjack.WordAlloc.removeDeadStructural input2290 value1146 value1 value2 = (output2290, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input2291 value1144 value1 value2 = (output2291, value5, value1) := by
  rw [input2291_def, output2291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2283]
  dsimp only
  rw [child2290]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2283_skip, output2290_skip]
  kernel_rfl

theorem node2292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2292 value5 value1 value2 = (output2292, value1150, value1) := by
  rw [input2292_def, output2292_def]
  kernel_rfl

theorem node2293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2293 value1150 value1 value2 = (output2293, value1151, value1) := by
  rw [input2293_def, output2293_def]
  kernel_rfl

theorem node2294_cond_eq
    (child2292 : Flapjack.WordAlloc.removeDeadStructural input2292 value5 value1 value2 = (output2292, value1150, value1))
    (child2293 : Flapjack.WordAlloc.removeDeadStructural input2293 value1150 value1 value2 = (output2293, value1151, value1)) : Flapjack.WordAlloc.removeDeadStructural input2294 value5 value1 value2 = (output2294, value1151, value1) := by
  rw [input2294_def, output2294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2292]
  dsimp only
  rw [child2293]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2292_skip, output2293_skip]
  kernel_rfl

theorem node2295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2295 value1151 value1 value2 = (output2295, value1152, value1) := by
  rw [input2295_def, output2295_def]
  kernel_rfl

theorem node2296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2296 value1152 value1 value2 = (output2296, value1152, value1) := by
  rw [input2296_def, output2296_def]
  kernel_rfl

theorem node2297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2297 value1152 value1 value2 = (output2297, value1153, value1) := by
  rw [input2297_def, output2297_def]
  kernel_rfl

theorem node2298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2298 value1153 value1 value2 = (output2298, value1154, value1) := by
  rw [input2298_def, output2298_def]
  kernel_rfl

theorem node2299_cond_eq
    (child2297 : Flapjack.WordAlloc.removeDeadStructural input2297 value1152 value1 value2 = (output2297, value1153, value1))
    (child2298 : Flapjack.WordAlloc.removeDeadStructural input2298 value1153 value1 value2 = (output2298, value1154, value1)) : Flapjack.WordAlloc.removeDeadStructural input2299 value1152 value1 value2 = (output2299, value1154, value1) := by
  rw [input2299_def, output2299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2297]
  dsimp only
  rw [child2298]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2297_skip, output2298_skip]
  kernel_rfl

theorem node2300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2300 value1154 value1 value2 = (output2300, value1155, value1) := by
  rw [input2300_def, output2300_def]
  kernel_rfl

theorem node2301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2301 value1155 value1 value2 = (output2301, value1156, value1) := by
  rw [input2301_def, output2301_def]
  kernel_rfl

theorem node2302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2302 value1156 value1 value2 = (output2302, value1157, value1) := by
  rw [input2302_def, output2302_def]
  kernel_rfl

theorem node2303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2303 value1157 value1 value2 = (output2303, value5, value1) := by
  rw [input2303_def, output2303_def]
  kernel_rfl

#print axioms node2303_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
