import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages461.Parallel.Data.Chunk008
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages461.Parallel
theorem node2048_cond_eq
    (child2044 : Flapjack.WordAlloc.removeDeadStructural input2044 value826 value1 value620 = (output2044, value826, value1))
    (child2047 : Flapjack.WordAlloc.removeDeadStructural input2047 value826 value1 value620 = (output2047, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input2048 value826 value1 value620 = (output2048, value826, value1) := by
  rw [input2048_def, output2048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2044]
  try dsimp only
  rw [child2047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2044_skip, output2047_skip]
  kernel_rfl

theorem node2049_cond_eq
    (child2043 : Flapjack.WordAlloc.removeDeadStructural input2043 value825 value1 value620 = (output2043, value826, value1))
    (child2048 : Flapjack.WordAlloc.removeDeadStructural input2048 value826 value1 value620 = (output2048, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input2049 value825 value1 value620 = (output2049, value826, value1) := by
  rw [input2049_def, output2049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2043]
  try dsimp only
  rw [child2048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2043_skip, output2048_skip]
  kernel_rfl

theorem node2050_cond_eq
    (child2040 : Flapjack.WordAlloc.removeDeadStructural input2040 value621 value1 value620 = (output2040, value825, value1))
    (child2049 : Flapjack.WordAlloc.removeDeadStructural input2049 value825 value1 value620 = (output2049, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input2050 value621 value1 value620 = (output2050, value826, value1) := by
  rw [input2050_def, output2050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2040]
  try dsimp only
  rw [child2049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2040_skip, output2049_skip]
  kernel_rfl

theorem node2051_cond_eq
    (child2019 : Flapjack.WordAlloc.removeDeadStructural input2019 value621 value1 value620 = (output2019, value824, value1))
    (child2050 : Flapjack.WordAlloc.removeDeadStructural input2050 value621 value1 value620 = (output2050, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input2051 value621 value1 value620 = (output2051, value825, value1) := by
  rw [input2051_def, output2051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child2019]
  try dsimp only
  rw [child2050]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2019_skip, output2050_skip]
  kernel_rfl

theorem node2052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2052 value825 value1 value620 = (output2052, value828, value1) := by
  rw [input2052_def, output2052_def]
  kernel_rfl

theorem node2053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2053 value828 value1 value620 = (output2053, value619, value1) := by
  rw [input2053_def, output2053_def]
  kernel_rfl

theorem node2054_cond_eq
    (child2052 : Flapjack.WordAlloc.removeDeadStructural input2052 value825 value1 value620 = (output2052, value828, value1))
    (child2053 : Flapjack.WordAlloc.removeDeadStructural input2053 value828 value1 value620 = (output2053, value619, value1)) : Flapjack.WordAlloc.removeDeadStructural input2054 value825 value1 value620 = (output2054, value619, value1) := by
  rw [input2054_def, output2054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2052]
  try dsimp only
  rw [child2053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2052_skip, output2053_skip]
  kernel_rfl

theorem node2055_cond_eq
    (child2051 : Flapjack.WordAlloc.removeDeadStructural input2051 value621 value1 value620 = (output2051, value825, value1))
    (child2054 : Flapjack.WordAlloc.removeDeadStructural input2054 value825 value1 value620 = (output2054, value619, value1)) : Flapjack.WordAlloc.removeDeadStructural input2055 value621 value1 value620 = (output2055, value619, value1) := by
  rw [input2055_def, output2055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2051]
  try dsimp only
  rw [child2054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2051_skip, output2054_skip]
  kernel_rfl

theorem node2056_cond_eq
    (child1479 : Flapjack.WordAlloc.removeDeadStructural input1479 value621 value1 value620 = (output1479, value621, value1))
    (child2055 : Flapjack.WordAlloc.removeDeadStructural input2055 value621 value1 value620 = (output2055, value619, value1)) : Flapjack.WordAlloc.removeDeadStructural input2056 value621 value1 value620 = (output2056, value619, value1) := by
  rw [input2056_def, output2056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1479]
  try dsimp only
  rw [child2055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1479_skip, output2055_skip]
  kernel_rfl

theorem node2057_cond_eq
    (child1478 : Flapjack.WordAlloc.removeDeadStructural input1478 value619 value1 value620 = (output1478, value621, value1))
    (child2056 : Flapjack.WordAlloc.removeDeadStructural input2056 value621 value1 value620 = (output2056, value619, value1)) : Flapjack.WordAlloc.removeDeadStructural input2057 value619 value1 value620 = (output2057, value619, value1) := by
  rw [input2057_def, output2057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1478]
  try dsimp only
  rw [child2056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1478_skip, output2056_skip]
  kernel_rfl

theorem node2058_cond_eq
    (child2057 : Flapjack.WordAlloc.removeDeadStructural input2057 value619 value1 value620 = (output2057, value619, value1)) : Flapjack.WordAlloc.removeDeadStructural input2058 value618 value1 value2 = (output2058, value619, value1) := by
  rw [input2058_def, output2058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  have loop_context_eq : value620 = (value619, value618) :: value2 := by rfl
  have loop_stores_eq : value1 = [] := by rfl
  have loop_child := child2057
  rw [loop_context_eq, loop_stores_eq] at loop_child
  rw [loop_child]
  try dsimp only
  kernel_rfl

theorem node2059_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2059 value619 value1 value2 = (output2059, value829, value1) := by
  rw [input2059_def, output2059_def]
  kernel_rfl

theorem node2060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2060 value829 value1 value2 = (output2060, value829, value1) := by
  rw [input2060_def, output2060_def]
  kernel_rfl

theorem node2061_cond_eq
    (child2059 : Flapjack.WordAlloc.removeDeadStructural input2059 value619 value1 value2 = (output2059, value829, value1))
    (child2060 : Flapjack.WordAlloc.removeDeadStructural input2060 value829 value1 value2 = (output2060, value829, value1)) : Flapjack.WordAlloc.removeDeadStructural input2061 value619 value1 value2 = (output2061, value829, value1) := by
  rw [input2061_def, output2061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2059]
  try dsimp only
  rw [child2060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2059_skip, output2060_skip]
  kernel_rfl

theorem node2062_cond_eq
    (child2058 : Flapjack.WordAlloc.removeDeadStructural input2058 value618 value1 value2 = (output2058, value619, value1))
    (child2061 : Flapjack.WordAlloc.removeDeadStructural input2061 value619 value1 value2 = (output2061, value829, value1)) : Flapjack.WordAlloc.removeDeadStructural input2062 value618 value1 value2 = (output2062, value829, value1) := by
  rw [input2062_def, output2062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2058]
  try dsimp only
  rw [child2061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2058_skip, output2061_skip]
  kernel_rfl

theorem node2063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2063 value829 value1 value2 = (output2063, value829, value1) := by
  rw [input2063_def, output2063_def]
  kernel_rfl

theorem node2064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2064 value829 value1 value2 = (output2064, value830, value1) := by
  rw [input2064_def, output2064_def]
  kernel_rfl

theorem node2065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2065 value830 value1 value2 = (output2065, value831, value1) := by
  rw [input2065_def, output2065_def]
  kernel_rfl

theorem node2066_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2066 value831 value1 value2 = (output2066, value832, value1) := by
  rw [input2066_def, output2066_def]
  kernel_rfl

theorem node2067_cond_eq
    (child2065 : Flapjack.WordAlloc.removeDeadStructural input2065 value830 value1 value2 = (output2065, value831, value1))
    (child2066 : Flapjack.WordAlloc.removeDeadStructural input2066 value831 value1 value2 = (output2066, value832, value1)) : Flapjack.WordAlloc.removeDeadStructural input2067 value830 value1 value2 = (output2067, value832, value1) := by
  rw [input2067_def, output2067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2065]
  try dsimp only
  rw [child2066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2065_skip, output2066_skip]
  kernel_rfl

theorem node2068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2068 value832 value1 value2 = (output2068, value832, value1) := by
  rw [input2068_def, output2068_def]
  kernel_rfl

theorem node2069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2069 value832 value1 value2 = (output2069, value833, value1) := by
  rw [input2069_def, output2069_def]
  kernel_rfl

theorem node2070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2070 value833 value1 value2 = (output2070, value834, value1) := by
  rw [input2070_def, output2070_def]
  kernel_rfl

theorem node2071_cond_eq
    (child2069 : Flapjack.WordAlloc.removeDeadStructural input2069 value832 value1 value2 = (output2069, value833, value1))
    (child2070 : Flapjack.WordAlloc.removeDeadStructural input2070 value833 value1 value2 = (output2070, value834, value1)) : Flapjack.WordAlloc.removeDeadStructural input2071 value832 value1 value2 = (output2071, value834, value1) := by
  rw [input2071_def, output2071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2069]
  try dsimp only
  rw [child2070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2069_skip, output2070_skip]
  kernel_rfl

theorem node2072_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2072 value834 value1 value2 = (output2072, value835, value1) := by
  rw [input2072_def, output2072_def]
  kernel_rfl

theorem node2073_cond_eq
    (child2071 : Flapjack.WordAlloc.removeDeadStructural input2071 value832 value1 value2 = (output2071, value834, value1))
    (child2072 : Flapjack.WordAlloc.removeDeadStructural input2072 value834 value1 value2 = (output2072, value835, value1)) : Flapjack.WordAlloc.removeDeadStructural input2073 value832 value1 value2 = (output2073, value835, value1) := by
  rw [input2073_def, output2073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2071]
  try dsimp only
  rw [child2072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2071_skip, output2072_skip]
  kernel_rfl

theorem node2074_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2074 value835 value1 value2 = (output2074, value836, value1) := by
  rw [input2074_def, output2074_def]
  kernel_rfl

theorem node2075_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2075 value836 value1 value2 = (output2075, value837, value1) := by
  rw [input2075_def, output2075_def]
  kernel_rfl

theorem node2076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2076 value837 value1 value2 = (output2076, value838, value1) := by
  rw [input2076_def, output2076_def]
  kernel_rfl

theorem node2077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2077 value838 value1 value2 = (output2077, value839, value1) := by
  rw [input2077_def, output2077_def]
  kernel_rfl

theorem node2078_cond_eq
    (child2076 : Flapjack.WordAlloc.removeDeadStructural input2076 value837 value1 value2 = (output2076, value838, value1))
    (child2077 : Flapjack.WordAlloc.removeDeadStructural input2077 value838 value1 value2 = (output2077, value839, value1)) : Flapjack.WordAlloc.removeDeadStructural input2078 value837 value1 value2 = (output2078, value839, value1) := by
  rw [input2078_def, output2078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2076]
  try dsimp only
  rw [child2077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2076_skip, output2077_skip]
  kernel_rfl

theorem node2079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2079 value839 value1 value2 = (output2079, value839, value1) := by
  rw [input2079_def, output2079_def]
  kernel_rfl

theorem node2080_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2080 value839 value1 value2 = (output2080, value840, value1) := by
  rw [input2080_def, output2080_def]
  kernel_rfl

theorem node2081_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2081 value840 value1 value2 = (output2081, value840, value1) := by
  rw [input2081_def, output2081_def]
  kernel_rfl

theorem node2082_cond_eq
    (child2080 : Flapjack.WordAlloc.removeDeadStructural input2080 value839 value1 value2 = (output2080, value840, value1))
    (child2081 : Flapjack.WordAlloc.removeDeadStructural input2081 value840 value1 value2 = (output2081, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input2082 value839 value1 value2 = (output2082, value840, value1) := by
  rw [input2082_def, output2082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2080]
  try dsimp only
  rw [child2081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2080_skip, output2081_skip]
  kernel_rfl

theorem node2083_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2083 value840 value1 value2 = (output2083, value841, value1) := by
  rw [input2083_def, output2083_def]
  kernel_rfl

theorem node2084_cond_eq
    (child2082 : Flapjack.WordAlloc.removeDeadStructural input2082 value839 value1 value2 = (output2082, value840, value1))
    (child2083 : Flapjack.WordAlloc.removeDeadStructural input2083 value840 value1 value2 = (output2083, value841, value1)) : Flapjack.WordAlloc.removeDeadStructural input2084 value839 value1 value2 = (output2084, value841, value1) := by
  rw [input2084_def, output2084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2082]
  try dsimp only
  rw [child2083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2082_skip, output2083_skip]
  kernel_rfl

theorem node2085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2085 value841 value1 value2 = (output2085, value842, value1) := by
  rw [input2085_def, output2085_def]
  kernel_rfl

theorem node2086_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2086 value842 value1 value2 = (output2086, value843, value1) := by
  rw [input2086_def, output2086_def]
  kernel_rfl

theorem node2087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2087 value843 value1 value2 = (output2087, value844, value1) := by
  rw [input2087_def, output2087_def]
  kernel_rfl

theorem node2088_cond_eq
    (child2086 : Flapjack.WordAlloc.removeDeadStructural input2086 value842 value1 value2 = (output2086, value843, value1))
    (child2087 : Flapjack.WordAlloc.removeDeadStructural input2087 value843 value1 value2 = (output2087, value844, value1)) : Flapjack.WordAlloc.removeDeadStructural input2088 value842 value1 value2 = (output2088, value844, value1) := by
  rw [input2088_def, output2088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2086]
  try dsimp only
  rw [child2087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2086_skip, output2087_skip]
  kernel_rfl

theorem node2089_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2089 value844 value1 value2 = (output2089, value845, value1) := by
  rw [input2089_def, output2089_def]
  kernel_rfl

theorem node2090_cond_eq
    (child2088 : Flapjack.WordAlloc.removeDeadStructural input2088 value842 value1 value2 = (output2088, value844, value1))
    (child2089 : Flapjack.WordAlloc.removeDeadStructural input2089 value844 value1 value2 = (output2089, value845, value1)) : Flapjack.WordAlloc.removeDeadStructural input2090 value842 value1 value2 = (output2090, value845, value1) := by
  rw [input2090_def, output2090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2088]
  try dsimp only
  rw [child2089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2088_skip, output2089_skip]
  kernel_rfl

theorem node2091_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2091 value845 value1 value2 = (output2091, value845, value1) := by
  rw [input2091_def, output2091_def]
  kernel_rfl

theorem node2092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2092 value845 value1 value2 = (output2092, value846, value1) := by
  rw [input2092_def, output2092_def]
  kernel_rfl

theorem node2093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2093 value846 value1 value2 = (output2093, value847, value1) := by
  rw [input2093_def, output2093_def]
  kernel_rfl

theorem node2094_cond_eq
    (child2092 : Flapjack.WordAlloc.removeDeadStructural input2092 value845 value1 value2 = (output2092, value846, value1))
    (child2093 : Flapjack.WordAlloc.removeDeadStructural input2093 value846 value1 value2 = (output2093, value847, value1)) : Flapjack.WordAlloc.removeDeadStructural input2094 value845 value1 value2 = (output2094, value847, value1) := by
  rw [input2094_def, output2094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2092]
  try dsimp only
  rw [child2093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2092_skip, output2093_skip]
  kernel_rfl

theorem node2095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2095 value847 value1 value2 = (output2095, value848, value1) := by
  rw [input2095_def, output2095_def]
  kernel_rfl

theorem node2096_cond_eq
    (child2094 : Flapjack.WordAlloc.removeDeadStructural input2094 value845 value1 value2 = (output2094, value847, value1))
    (child2095 : Flapjack.WordAlloc.removeDeadStructural input2095 value847 value1 value2 = (output2095, value848, value1)) : Flapjack.WordAlloc.removeDeadStructural input2096 value845 value1 value2 = (output2096, value848, value1) := by
  rw [input2096_def, output2096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2094]
  try dsimp only
  rw [child2095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2094_skip, output2095_skip]
  kernel_rfl

theorem node2097_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2097 value848 value1 value2 = (output2097, value849, value1) := by
  rw [input2097_def, output2097_def]
  kernel_rfl

theorem node2098_cond_eq
    (child2096 : Flapjack.WordAlloc.removeDeadStructural input2096 value845 value1 value2 = (output2096, value848, value1))
    (child2097 : Flapjack.WordAlloc.removeDeadStructural input2097 value848 value1 value2 = (output2097, value849, value1)) : Flapjack.WordAlloc.removeDeadStructural input2098 value845 value1 value2 = (output2098, value849, value1) := by
  rw [input2098_def, output2098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2096]
  try dsimp only
  rw [child2097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2096_skip, output2097_skip]
  kernel_rfl

theorem node2099_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2099 value849 value1 value2 = (output2099, value849, value1) := by
  rw [input2099_def, output2099_def]
  kernel_rfl

theorem node2100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2100 value849 value1 value2 = (output2100, value850, value1) := by
  rw [input2100_def, output2100_def]
  kernel_rfl

theorem node2101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2101 value850 value1 value2 = (output2101, value851, value1) := by
  rw [input2101_def, output2101_def]
  kernel_rfl

theorem node2102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2102 value851 value1 value2 = (output2102, value852, value1) := by
  rw [input2102_def, output2102_def]
  kernel_rfl

theorem node2103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2103 value852 value1 value2 = (output2103, value853, value1) := by
  rw [input2103_def, output2103_def]
  kernel_rfl

theorem node2104_cond_eq
    (child2102 : Flapjack.WordAlloc.removeDeadStructural input2102 value851 value1 value2 = (output2102, value852, value1))
    (child2103 : Flapjack.WordAlloc.removeDeadStructural input2103 value852 value1 value2 = (output2103, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2104 value851 value1 value2 = (output2104, value853, value1) := by
  rw [input2104_def, output2104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2102]
  try dsimp only
  rw [child2103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2102_skip, output2103_skip]
  kernel_rfl

theorem node2105_cond_eq
    (child2101 : Flapjack.WordAlloc.removeDeadStructural input2101 value850 value1 value2 = (output2101, value851, value1))
    (child2104 : Flapjack.WordAlloc.removeDeadStructural input2104 value851 value1 value2 = (output2104, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2105 value850 value1 value2 = (output2105, value853, value1) := by
  rw [input2105_def, output2105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2101]
  try dsimp only
  rw [child2104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2101_skip, output2104_skip]
  kernel_rfl

theorem node2106_cond_eq
    (child2100 : Flapjack.WordAlloc.removeDeadStructural input2100 value849 value1 value2 = (output2100, value850, value1))
    (child2105 : Flapjack.WordAlloc.removeDeadStructural input2105 value850 value1 value2 = (output2105, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2106 value849 value1 value2 = (output2106, value853, value1) := by
  rw [input2106_def, output2106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2100]
  try dsimp only
  rw [child2105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2100_skip, output2105_skip]
  kernel_rfl

theorem node2107_cond_eq
    (child2099 : Flapjack.WordAlloc.removeDeadStructural input2099 value849 value1 value2 = (output2099, value849, value1))
    (child2106 : Flapjack.WordAlloc.removeDeadStructural input2106 value849 value1 value2 = (output2106, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2107 value849 value1 value2 = (output2107, value853, value1) := by
  rw [input2107_def, output2107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2099]
  try dsimp only
  rw [child2106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2099_skip, output2106_skip]
  kernel_rfl

theorem node2108_cond_eq
    (child2098 : Flapjack.WordAlloc.removeDeadStructural input2098 value845 value1 value2 = (output2098, value849, value1))
    (child2107 : Flapjack.WordAlloc.removeDeadStructural input2107 value849 value1 value2 = (output2107, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2108 value845 value1 value2 = (output2108, value853, value1) := by
  rw [input2108_def, output2108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2098]
  try dsimp only
  rw [child2107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2098_skip, output2107_skip]
  kernel_rfl

theorem node2109_cond_eq
    (child2091 : Flapjack.WordAlloc.removeDeadStructural input2091 value845 value1 value2 = (output2091, value845, value1))
    (child2108 : Flapjack.WordAlloc.removeDeadStructural input2108 value845 value1 value2 = (output2108, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2109 value845 value1 value2 = (output2109, value853, value1) := by
  rw [input2109_def, output2109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2091]
  try dsimp only
  rw [child2108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2091_skip, output2108_skip]
  kernel_rfl

theorem node2110_cond_eq
    (child2090 : Flapjack.WordAlloc.removeDeadStructural input2090 value842 value1 value2 = (output2090, value845, value1))
    (child2109 : Flapjack.WordAlloc.removeDeadStructural input2109 value845 value1 value2 = (output2109, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2110 value842 value1 value2 = (output2110, value853, value1) := by
  rw [input2110_def, output2110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2090]
  try dsimp only
  rw [child2109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2090_skip, output2109_skip]
  kernel_rfl

theorem node2111_cond_eq
    (child2085 : Flapjack.WordAlloc.removeDeadStructural input2085 value841 value1 value2 = (output2085, value842, value1))
    (child2110 : Flapjack.WordAlloc.removeDeadStructural input2110 value842 value1 value2 = (output2110, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2111 value841 value1 value2 = (output2111, value853, value1) := by
  rw [input2111_def, output2111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2085]
  try dsimp only
  rw [child2110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2085_skip, output2110_skip]
  kernel_rfl

theorem node2112_cond_eq
    (child2084 : Flapjack.WordAlloc.removeDeadStructural input2084 value839 value1 value2 = (output2084, value841, value1))
    (child2111 : Flapjack.WordAlloc.removeDeadStructural input2111 value841 value1 value2 = (output2111, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2112 value839 value1 value2 = (output2112, value853, value1) := by
  rw [input2112_def, output2112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2084]
  try dsimp only
  rw [child2111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2084_skip, output2111_skip]
  kernel_rfl

theorem node2113_cond_eq
    (child2079 : Flapjack.WordAlloc.removeDeadStructural input2079 value839 value1 value2 = (output2079, value839, value1))
    (child2112 : Flapjack.WordAlloc.removeDeadStructural input2112 value839 value1 value2 = (output2112, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2113 value839 value1 value2 = (output2113, value853, value1) := by
  rw [input2113_def, output2113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2079]
  try dsimp only
  rw [child2112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2079_skip, output2112_skip]
  kernel_rfl

theorem node2114_cond_eq
    (child2078 : Flapjack.WordAlloc.removeDeadStructural input2078 value837 value1 value2 = (output2078, value839, value1))
    (child2113 : Flapjack.WordAlloc.removeDeadStructural input2113 value839 value1 value2 = (output2113, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2114 value837 value1 value2 = (output2114, value853, value1) := by
  rw [input2114_def, output2114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2078]
  try dsimp only
  rw [child2113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2078_skip, output2113_skip]
  kernel_rfl

theorem node2115_cond_eq
    (child2075 : Flapjack.WordAlloc.removeDeadStructural input2075 value836 value1 value2 = (output2075, value837, value1))
    (child2114 : Flapjack.WordAlloc.removeDeadStructural input2114 value837 value1 value2 = (output2114, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2115 value836 value1 value2 = (output2115, value853, value1) := by
  rw [input2115_def, output2115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2075]
  try dsimp only
  rw [child2114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2075_skip, output2114_skip]
  kernel_rfl

theorem node2116_cond_eq
    (child2074 : Flapjack.WordAlloc.removeDeadStructural input2074 value835 value1 value2 = (output2074, value836, value1))
    (child2115 : Flapjack.WordAlloc.removeDeadStructural input2115 value836 value1 value2 = (output2115, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2116 value835 value1 value2 = (output2116, value853, value1) := by
  rw [input2116_def, output2116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2074]
  try dsimp only
  rw [child2115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2074_skip, output2115_skip]
  kernel_rfl

theorem node2117_cond_eq
    (child2073 : Flapjack.WordAlloc.removeDeadStructural input2073 value832 value1 value2 = (output2073, value835, value1))
    (child2116 : Flapjack.WordAlloc.removeDeadStructural input2116 value835 value1 value2 = (output2116, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2117 value832 value1 value2 = (output2117, value853, value1) := by
  rw [input2117_def, output2117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2073]
  try dsimp only
  rw [child2116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2073_skip, output2116_skip]
  kernel_rfl

theorem node2118_cond_eq
    (child2068 : Flapjack.WordAlloc.removeDeadStructural input2068 value832 value1 value2 = (output2068, value832, value1))
    (child2117 : Flapjack.WordAlloc.removeDeadStructural input2117 value832 value1 value2 = (output2117, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2118 value832 value1 value2 = (output2118, value853, value1) := by
  rw [input2118_def, output2118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2068]
  try dsimp only
  rw [child2117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2068_skip, output2117_skip]
  kernel_rfl

theorem node2119_cond_eq
    (child2067 : Flapjack.WordAlloc.removeDeadStructural input2067 value830 value1 value2 = (output2067, value832, value1))
    (child2118 : Flapjack.WordAlloc.removeDeadStructural input2118 value832 value1 value2 = (output2118, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2119 value830 value1 value2 = (output2119, value853, value1) := by
  rw [input2119_def, output2119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2067]
  try dsimp only
  rw [child2118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2067_skip, output2118_skip]
  kernel_rfl

theorem node2120_cond_eq
    (child2064 : Flapjack.WordAlloc.removeDeadStructural input2064 value829 value1 value2 = (output2064, value830, value1))
    (child2119 : Flapjack.WordAlloc.removeDeadStructural input2119 value830 value1 value2 = (output2119, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2120 value829 value1 value2 = (output2120, value853, value1) := by
  rw [input2120_def, output2120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2064]
  try dsimp only
  rw [child2119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2064_skip, output2119_skip]
  kernel_rfl

theorem node2121_cond_eq
    (child2063 : Flapjack.WordAlloc.removeDeadStructural input2063 value829 value1 value2 = (output2063, value829, value1))
    (child2120 : Flapjack.WordAlloc.removeDeadStructural input2120 value829 value1 value2 = (output2120, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2121 value829 value1 value2 = (output2121, value853, value1) := by
  rw [input2121_def, output2121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2063]
  try dsimp only
  rw [child2120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2063_skip, output2120_skip]
  kernel_rfl

theorem node2122_cond_eq
    (child2062 : Flapjack.WordAlloc.removeDeadStructural input2062 value618 value1 value2 = (output2062, value829, value1))
    (child2121 : Flapjack.WordAlloc.removeDeadStructural input2121 value829 value1 value2 = (output2121, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2122 value618 value1 value2 = (output2122, value853, value1) := by
  rw [input2122_def, output2122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2062]
  try dsimp only
  rw [child2121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2062_skip, output2121_skip]
  kernel_rfl

theorem node2123_cond_eq
    (child1477 : Flapjack.WordAlloc.removeDeadStructural input1477 value618 value1 value2 = (output1477, value618, value1))
    (child2122 : Flapjack.WordAlloc.removeDeadStructural input2122 value618 value1 value2 = (output2122, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2123 value618 value1 value2 = (output2123, value853, value1) := by
  rw [input2123_def, output2123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1477]
  try dsimp only
  rw [child2122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1477_skip, output2122_skip]
  kernel_rfl

theorem node2124_cond_eq
    (child1476 : Flapjack.WordAlloc.removeDeadStructural input1476 value614 value1 value2 = (output1476, value618, value1))
    (child2123 : Flapjack.WordAlloc.removeDeadStructural input2123 value618 value1 value2 = (output2123, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2124 value614 value1 value2 = (output2124, value853, value1) := by
  rw [input2124_def, output2124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1476]
  try dsimp only
  rw [child2123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1476_skip, output2123_skip]
  kernel_rfl

theorem node2125_cond_eq
    (child1469 : Flapjack.WordAlloc.removeDeadStructural input1469 value611 value1 value2 = (output1469, value614, value1))
    (child2124 : Flapjack.WordAlloc.removeDeadStructural input2124 value614 value1 value2 = (output2124, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2125 value611 value1 value2 = (output2125, value853, value1) := by
  rw [input2125_def, output2125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1469]
  try dsimp only
  rw [child2124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1469_skip, output2124_skip]
  kernel_rfl

theorem node2126_cond_eq
    (child1464 : Flapjack.WordAlloc.removeDeadStructural input1464 value611 value1 value2 = (output1464, value611, value1))
    (child2125 : Flapjack.WordAlloc.removeDeadStructural input2125 value611 value1 value2 = (output2125, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2126 value611 value1 value2 = (output2126, value853, value1) := by
  rw [input2126_def, output2126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1464]
  try dsimp only
  rw [child2125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1464_skip, output2125_skip]
  kernel_rfl

theorem node2127_cond_eq
    (child1463 : Flapjack.WordAlloc.removeDeadStructural input1463 value608 value1 value2 = (output1463, value611, value1))
    (child2126 : Flapjack.WordAlloc.removeDeadStructural input2126 value611 value1 value2 = (output2126, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2127 value608 value1 value2 = (output2127, value853, value1) := by
  rw [input2127_def, output2127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1463]
  try dsimp only
  rw [child2126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1463_skip, output2126_skip]
  kernel_rfl

theorem node2128_cond_eq
    (child1458 : Flapjack.WordAlloc.removeDeadStructural input1458 value606 value1 value2 = (output1458, value608, value1))
    (child2127 : Flapjack.WordAlloc.removeDeadStructural input2127 value608 value1 value2 = (output2127, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2128 value606 value1 value2 = (output2128, value853, value1) := by
  rw [input2128_def, output2128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1458]
  try dsimp only
  rw [child2127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1458_skip, output2127_skip]
  kernel_rfl

theorem node2129_cond_eq
    (child1455 : Flapjack.WordAlloc.removeDeadStructural input1455 value602 value1 value2 = (output1455, value606, value1))
    (child2128 : Flapjack.WordAlloc.removeDeadStructural input2128 value606 value1 value2 = (output2128, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2129 value602 value1 value2 = (output2129, value853, value1) := by
  rw [input2129_def, output2129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1455]
  try dsimp only
  rw [child2128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1455_skip, output2128_skip]
  kernel_rfl

theorem node2130_cond_eq
    (child1448 : Flapjack.WordAlloc.removeDeadStructural input1448 value599 value1 value2 = (output1448, value602, value1))
    (child2129 : Flapjack.WordAlloc.removeDeadStructural input2129 value602 value1 value2 = (output2129, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2130 value599 value1 value2 = (output2130, value853, value1) := by
  rw [input2130_def, output2130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1448]
  try dsimp only
  rw [child2129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1448_skip, output2129_skip]
  kernel_rfl

theorem node2131_cond_eq
    (child1443 : Flapjack.WordAlloc.removeDeadStructural input1443 value599 value1 value2 = (output1443, value599, value1))
    (child2130 : Flapjack.WordAlloc.removeDeadStructural input2130 value599 value1 value2 = (output2130, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2131 value599 value1 value2 = (output2131, value853, value1) := by
  rw [input2131_def, output2131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1443]
  try dsimp only
  rw [child2130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1443_skip, output2130_skip]
  kernel_rfl

theorem node2132_cond_eq
    (child1442 : Flapjack.WordAlloc.removeDeadStructural input1442 value598 value1 value2 = (output1442, value599, value1))
    (child2131 : Flapjack.WordAlloc.removeDeadStructural input2131 value599 value1 value2 = (output2131, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2132 value598 value1 value2 = (output2132, value853, value1) := by
  rw [input2132_def, output2132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1442]
  try dsimp only
  rw [child2131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1442_skip, output2131_skip]
  kernel_rfl

theorem node2133_cond_eq
    (child1441 : Flapjack.WordAlloc.removeDeadStructural input1441 value594 value1 value2 = (output1441, value598, value1))
    (child2132 : Flapjack.WordAlloc.removeDeadStructural input2132 value598 value1 value2 = (output2132, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2133 value594 value1 value2 = (output2133, value853, value1) := by
  rw [input2133_def, output2133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1441]
  try dsimp only
  rw [child2132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1441_skip, output2132_skip]
  kernel_rfl

theorem node2134_cond_eq
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value591 value1 value2 = (output1434, value594, value1))
    (child2133 : Flapjack.WordAlloc.removeDeadStructural input2133 value594 value1 value2 = (output2133, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2134 value591 value1 value2 = (output2134, value853, value1) := by
  rw [input2134_def, output2134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1434]
  try dsimp only
  rw [child2133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1434_skip, output2133_skip]
  kernel_rfl

theorem node2135_cond_eq
    (child1429 : Flapjack.WordAlloc.removeDeadStructural input1429 value591 value1 value2 = (output1429, value591, value1))
    (child2134 : Flapjack.WordAlloc.removeDeadStructural input2134 value591 value1 value2 = (output2134, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2135 value591 value1 value2 = (output2135, value853, value1) := by
  rw [input2135_def, output2135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1429]
  try dsimp only
  rw [child2134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1429_skip, output2134_skip]
  kernel_rfl

theorem node2136_cond_eq
    (child1428 : Flapjack.WordAlloc.removeDeadStructural input1428 value583 value1 value2 = (output1428, value591, value1))
    (child2135 : Flapjack.WordAlloc.removeDeadStructural input2135 value591 value1 value2 = (output2135, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2136 value583 value1 value2 = (output2136, value853, value1) := by
  rw [input2136_def, output2136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1428]
  try dsimp only
  rw [child2135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1428_skip, output2135_skip]
  kernel_rfl

theorem node2137_cond_eq
    (child1413 : Flapjack.WordAlloc.removeDeadStructural input1413 value582 value1 value2 = (output1413, value583, value1))
    (child2136 : Flapjack.WordAlloc.removeDeadStructural input2136 value583 value1 value2 = (output2136, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2137 value582 value1 value2 = (output2137, value853, value1) := by
  rw [input2137_def, output2137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1413]
  try dsimp only
  rw [child2136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1413_skip, output2136_skip]
  kernel_rfl

theorem node2138_cond_eq
    (child1412 : Flapjack.WordAlloc.removeDeadStructural input1412 value580 value1 value2 = (output1412, value582, value1))
    (child2137 : Flapjack.WordAlloc.removeDeadStructural input2137 value582 value1 value2 = (output2137, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2138 value580 value1 value2 = (output2138, value853, value1) := by
  rw [input2138_def, output2138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1412]
  try dsimp only
  rw [child2137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1412_skip, output2137_skip]
  kernel_rfl

theorem node2139_cond_eq
    (child1409 : Flapjack.WordAlloc.removeDeadStructural input1409 value579 value1 value2 = (output1409, value580, value1))
    (child2138 : Flapjack.WordAlloc.removeDeadStructural input2138 value580 value1 value2 = (output2138, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2139 value579 value1 value2 = (output2139, value853, value1) := by
  rw [input2139_def, output2139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1409]
  try dsimp only
  rw [child2138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1409_skip, output2138_skip]
  kernel_rfl

theorem node2140_cond_eq
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value576 value1 value2 = (output1408, value579, value1))
    (child2139 : Flapjack.WordAlloc.removeDeadStructural input2139 value579 value1 value2 = (output2139, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2140 value576 value1 value2 = (output2140, value853, value1) := by
  rw [input2140_def, output2140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1408]
  try dsimp only
  rw [child2139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1408_skip, output2139_skip]
  kernel_rfl

theorem node2141_cond_eq
    (child1403 : Flapjack.WordAlloc.removeDeadStructural input1403 value576 value1 value2 = (output1403, value576, value1))
    (child2140 : Flapjack.WordAlloc.removeDeadStructural input2140 value576 value1 value2 = (output2140, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2141 value576 value1 value2 = (output2141, value853, value1) := by
  rw [input2141_def, output2141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1403]
  try dsimp only
  rw [child2140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1403_skip, output2140_skip]
  kernel_rfl

theorem node2142_cond_eq
    (child1402 : Flapjack.WordAlloc.removeDeadStructural input1402 value575 value1 value2 = (output1402, value576, value1))
    (child2141 : Flapjack.WordAlloc.removeDeadStructural input2141 value576 value1 value2 = (output2141, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2142 value575 value1 value2 = (output2142, value853, value1) := by
  rw [input2142_def, output2142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1402]
  try dsimp only
  rw [child2141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1402_skip, output2141_skip]
  kernel_rfl

theorem node2143_cond_eq
    (child1401 : Flapjack.WordAlloc.removeDeadStructural input1401 value574 value1 value2 = (output1401, value575, value1))
    (child2142 : Flapjack.WordAlloc.removeDeadStructural input2142 value575 value1 value2 = (output2142, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2143 value574 value1 value2 = (output2143, value853, value1) := by
  rw [input2143_def, output2143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1401]
  try dsimp only
  rw [child2142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1401_skip, output2142_skip]
  kernel_rfl

theorem node2144_cond_eq
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value574 value1 value2 = (output1400, value574, value1))
    (child2143 : Flapjack.WordAlloc.removeDeadStructural input2143 value574 value1 value2 = (output2143, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2144 value574 value1 value2 = (output2144, value853, value1) := by
  rw [input2144_def, output2144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1400]
  try dsimp only
  rw [child2143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1400_skip, output2143_skip]
  kernel_rfl

theorem node2145_cond_eq
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value510 value1 value2 = (output1399, value574, value1))
    (child2144 : Flapjack.WordAlloc.removeDeadStructural input2144 value574 value1 value2 = (output2144, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2145 value510 value1 value2 = (output2145, value853, value1) := by
  rw [input2145_def, output2145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1399]
  try dsimp only
  rw [child2144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1399_skip, output2144_skip]
  kernel_rfl

theorem node2146_cond_eq
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value510 value1 value2 = (output1191, value510, value1))
    (child2145 : Flapjack.WordAlloc.removeDeadStructural input2145 value510 value1 value2 = (output2145, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2146 value510 value1 value2 = (output2146, value853, value1) := by
  rw [input2146_def, output2146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1191]
  try dsimp only
  rw [child2145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1191_skip, output2145_skip]
  kernel_rfl

theorem node2147_cond_eq
    (child1190 : Flapjack.WordAlloc.removeDeadStructural input1190 value509 value1 value2 = (output1190, value510, value1))
    (child2146 : Flapjack.WordAlloc.removeDeadStructural input2146 value510 value1 value2 = (output2146, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2147 value509 value1 value2 = (output2147, value853, value1) := by
  rw [input2147_def, output2147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1190]
  try dsimp only
  rw [child2146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1190_skip, output2146_skip]
  kernel_rfl

theorem node2148_cond_eq
    (child1189 : Flapjack.WordAlloc.removeDeadStructural input1189 value508 value1 value2 = (output1189, value509, value1))
    (child2147 : Flapjack.WordAlloc.removeDeadStructural input2147 value509 value1 value2 = (output2147, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2148 value508 value1 value2 = (output2148, value853, value1) := by
  rw [input2148_def, output2148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1189]
  try dsimp only
  rw [child2147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1189_skip, output2147_skip]
  kernel_rfl

theorem node2149_cond_eq
    (child1188 : Flapjack.WordAlloc.removeDeadStructural input1188 value508 value1 value2 = (output1188, value508, value1))
    (child2148 : Flapjack.WordAlloc.removeDeadStructural input2148 value508 value1 value2 = (output2148, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2149 value508 value1 value2 = (output2149, value853, value1) := by
  rw [input2149_def, output2149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1188]
  try dsimp only
  rw [child2148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1188_skip, output2148_skip]
  kernel_rfl

theorem node2150_cond_eq
    (child1187 : Flapjack.WordAlloc.removeDeadStructural input1187 value508 value1 value2 = (output1187, value508, value1))
    (child2149 : Flapjack.WordAlloc.removeDeadStructural input2149 value508 value1 value2 = (output2149, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2150 value508 value1 value2 = (output2150, value853, value1) := by
  rw [input2150_def, output2150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1187]
  try dsimp only
  rw [child2149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1187_skip, output2149_skip]
  kernel_rfl

theorem node2151_cond_eq
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value507 value1 value2 = (output1186, value508, value1))
    (child2150 : Flapjack.WordAlloc.removeDeadStructural input2150 value508 value1 value2 = (output2150, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2151 value507 value1 value2 = (output2151, value853, value1) := by
  rw [input2151_def, output2151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1186]
  try dsimp only
  rw [child2150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1186_skip, output2150_skip]
  kernel_rfl

theorem node2152_cond_eq
    (child1185 : Flapjack.WordAlloc.removeDeadStructural input1185 value502 value1 value2 = (output1185, value507, value1))
    (child2151 : Flapjack.WordAlloc.removeDeadStructural input2151 value507 value1 value2 = (output2151, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2152 value502 value1 value2 = (output2152, value853, value1) := by
  rw [input2152_def, output2152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1185]
  try dsimp only
  rw [child2151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1185_skip, output2151_skip]
  kernel_rfl

theorem node2153_cond_eq
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value502 value1 value2 = (output1176, value502, value1))
    (child2152 : Flapjack.WordAlloc.removeDeadStructural input2152 value502 value1 value2 = (output2152, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2153 value502 value1 value2 = (output2153, value853, value1) := by
  rw [input2153_def, output2153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1176]
  try dsimp only
  rw [child2152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1176_skip, output2152_skip]
  kernel_rfl

theorem node2154_cond_eq
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value500 value1 value2 = (output1175, value502, value1))
    (child2153 : Flapjack.WordAlloc.removeDeadStructural input2153 value502 value1 value2 = (output2153, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2154 value500 value1 value2 = (output2154, value853, value1) := by
  rw [input2154_def, output2154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1175]
  try dsimp only
  rw [child2153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1175_skip, output2153_skip]
  kernel_rfl

theorem node2155_cond_eq
    (child1172 : Flapjack.WordAlloc.removeDeadStructural input1172 value499 value1 value2 = (output1172, value500, value1))
    (child2154 : Flapjack.WordAlloc.removeDeadStructural input2154 value500 value1 value2 = (output2154, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2155 value499 value1 value2 = (output2155, value853, value1) := by
  rw [input2155_def, output2155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1172]
  try dsimp only
  rw [child2154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1172_skip, output2154_skip]
  kernel_rfl

theorem node2156_cond_eq
    (child1171 : Flapjack.WordAlloc.removeDeadStructural input1171 value499 value1 value2 = (output1171, value499, value1))
    (child2155 : Flapjack.WordAlloc.removeDeadStructural input2155 value499 value1 value2 = (output2155, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2156 value499 value1 value2 = (output2156, value853, value1) := by
  rw [input2156_def, output2156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1171]
  try dsimp only
  rw [child2155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1171_skip, output2155_skip]
  kernel_rfl

theorem node2157_cond_eq
    (child1170 : Flapjack.WordAlloc.removeDeadStructural input1170 value467 value1 value2 = (output1170, value499, value1))
    (child2156 : Flapjack.WordAlloc.removeDeadStructural input2156 value499 value1 value2 = (output2156, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2157 value467 value1 value2 = (output2157, value853, value1) := by
  rw [input2157_def, output2157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1170]
  try dsimp only
  rw [child2156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1170_skip, output2156_skip]
  kernel_rfl

theorem node2158_cond_eq
    (child1052 : Flapjack.WordAlloc.removeDeadStructural input1052 value467 value1 value2 = (output1052, value467, value1))
    (child2157 : Flapjack.WordAlloc.removeDeadStructural input2157 value467 value1 value2 = (output2157, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2158 value467 value1 value2 = (output2158, value853, value1) := by
  rw [input2158_def, output2158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1052]
  try dsimp only
  rw [child2157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1052_skip, output2157_skip]
  kernel_rfl

theorem node2159_cond_eq
    (child1051 : Flapjack.WordAlloc.removeDeadStructural input1051 value463 value1 value2 = (output1051, value467, value1))
    (child2158 : Flapjack.WordAlloc.removeDeadStructural input2158 value467 value1 value2 = (output2158, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2159 value463 value1 value2 = (output2159, value853, value1) := by
  rw [input2159_def, output2159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1051]
  try dsimp only
  rw [child2158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1051_skip, output2158_skip]
  kernel_rfl

theorem node2160_cond_eq
    (child1044 : Flapjack.WordAlloc.removeDeadStructural input1044 value460 value1 value2 = (output1044, value463, value1))
    (child2159 : Flapjack.WordAlloc.removeDeadStructural input2159 value463 value1 value2 = (output2159, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2160 value460 value1 value2 = (output2160, value853, value1) := by
  rw [input2160_def, output2160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1044]
  try dsimp only
  rw [child2159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1044_skip, output2159_skip]
  kernel_rfl

theorem node2161_cond_eq
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value460 value1 value2 = (output1039, value460, value1))
    (child2160 : Flapjack.WordAlloc.removeDeadStructural input2160 value460 value1 value2 = (output2160, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2161 value460 value1 value2 = (output2161, value853, value1) := by
  rw [input2161_def, output2161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1039]
  try dsimp only
  rw [child2160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1039_skip, output2160_skip]
  kernel_rfl

theorem node2162_cond_eq
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value457 value1 value2 = (output1038, value460, value1))
    (child2161 : Flapjack.WordAlloc.removeDeadStructural input2161 value460 value1 value2 = (output2161, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2162 value457 value1 value2 = (output2162, value853, value1) := by
  rw [input2162_def, output2162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1038]
  try dsimp only
  rw [child2161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1038_skip, output2161_skip]
  kernel_rfl

theorem node2163_cond_eq
    (child1033 : Flapjack.WordAlloc.removeDeadStructural input1033 value455 value1 value2 = (output1033, value457, value1))
    (child2162 : Flapjack.WordAlloc.removeDeadStructural input2162 value457 value1 value2 = (output2162, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2163 value455 value1 value2 = (output2163, value853, value1) := by
  rw [input2163_def, output2163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1033]
  try dsimp only
  rw [child2162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1033_skip, output2162_skip]
  kernel_rfl

theorem node2164_cond_eq
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value451 value1 value2 = (output1030, value455, value1))
    (child2163 : Flapjack.WordAlloc.removeDeadStructural input2163 value455 value1 value2 = (output2163, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2164 value451 value1 value2 = (output2164, value853, value1) := by
  rw [input2164_def, output2164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1030]
  try dsimp only
  rw [child2163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1030_skip, output2163_skip]
  kernel_rfl

theorem node2165_cond_eq
    (child1023 : Flapjack.WordAlloc.removeDeadStructural input1023 value448 value1 value2 = (output1023, value451, value1))
    (child2164 : Flapjack.WordAlloc.removeDeadStructural input2164 value451 value1 value2 = (output2164, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2165 value448 value1 value2 = (output2165, value853, value1) := by
  rw [input2165_def, output2165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1023]
  try dsimp only
  rw [child2164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1023_skip, output2164_skip]
  kernel_rfl

theorem node2166_cond_eq
    (child1018 : Flapjack.WordAlloc.removeDeadStructural input1018 value448 value1 value2 = (output1018, value448, value1))
    (child2165 : Flapjack.WordAlloc.removeDeadStructural input2165 value448 value1 value2 = (output2165, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2166 value448 value1 value2 = (output2166, value853, value1) := by
  rw [input2166_def, output2166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1018]
  try dsimp only
  rw [child2165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1018_skip, output2165_skip]
  kernel_rfl

theorem node2167_cond_eq
    (child1017 : Flapjack.WordAlloc.removeDeadStructural input1017 value447 value1 value2 = (output1017, value448, value1))
    (child2166 : Flapjack.WordAlloc.removeDeadStructural input2166 value448 value1 value2 = (output2166, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2167 value447 value1 value2 = (output2167, value853, value1) := by
  rw [input2167_def, output2167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1017]
  try dsimp only
  rw [child2166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1017_skip, output2166_skip]
  kernel_rfl

theorem node2168_cond_eq
    (child1016 : Flapjack.WordAlloc.removeDeadStructural input1016 value443 value1 value2 = (output1016, value447, value1))
    (child2167 : Flapjack.WordAlloc.removeDeadStructural input2167 value447 value1 value2 = (output2167, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2168 value443 value1 value2 = (output2168, value853, value1) := by
  rw [input2168_def, output2168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1016]
  try dsimp only
  rw [child2167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1016_skip, output2167_skip]
  kernel_rfl

theorem node2169_cond_eq
    (child1009 : Flapjack.WordAlloc.removeDeadStructural input1009 value440 value1 value2 = (output1009, value443, value1))
    (child2168 : Flapjack.WordAlloc.removeDeadStructural input2168 value443 value1 value2 = (output2168, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2169 value440 value1 value2 = (output2169, value853, value1) := by
  rw [input2169_def, output2169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1009]
  try dsimp only
  rw [child2168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1009_skip, output2168_skip]
  kernel_rfl

theorem node2170_cond_eq
    (child1004 : Flapjack.WordAlloc.removeDeadStructural input1004 value440 value1 value2 = (output1004, value440, value1))
    (child2169 : Flapjack.WordAlloc.removeDeadStructural input2169 value440 value1 value2 = (output2169, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2170 value440 value1 value2 = (output2170, value853, value1) := by
  rw [input2170_def, output2170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1004]
  try dsimp only
  rw [child2169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1004_skip, output2169_skip]
  kernel_rfl

theorem node2171_cond_eq
    (child1003 : Flapjack.WordAlloc.removeDeadStructural input1003 value432 value1 value2 = (output1003, value440, value1))
    (child2170 : Flapjack.WordAlloc.removeDeadStructural input2170 value440 value1 value2 = (output2170, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2171 value432 value1 value2 = (output2171, value853, value1) := by
  rw [input2171_def, output2171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1003]
  try dsimp only
  rw [child2170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1003_skip, output2170_skip]
  kernel_rfl

theorem node2172_cond_eq
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value431 value1 value2 = (output988, value432, value1))
    (child2171 : Flapjack.WordAlloc.removeDeadStructural input2171 value432 value1 value2 = (output2171, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2172 value431 value1 value2 = (output2172, value853, value1) := by
  rw [input2172_def, output2172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child988]
  try dsimp only
  rw [child2171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output988_skip, output2171_skip]
  kernel_rfl

theorem node2173_cond_eq
    (child987 : Flapjack.WordAlloc.removeDeadStructural input987 value429 value1 value2 = (output987, value431, value1))
    (child2172 : Flapjack.WordAlloc.removeDeadStructural input2172 value431 value1 value2 = (output2172, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2173 value429 value1 value2 = (output2173, value853, value1) := by
  rw [input2173_def, output2173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child987]
  try dsimp only
  rw [child2172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output987_skip, output2172_skip]
  kernel_rfl

theorem node2174_cond_eq
    (child984 : Flapjack.WordAlloc.removeDeadStructural input984 value427 value1 value2 = (output984, value429, value1))
    (child2173 : Flapjack.WordAlloc.removeDeadStructural input2173 value429 value1 value2 = (output2173, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2174 value427 value1 value2 = (output2174, value853, value1) := by
  rw [input2174_def, output2174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child984]
  try dsimp only
  rw [child2173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output984_skip, output2173_skip]
  kernel_rfl

theorem node2175_cond_eq
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value425 value1 value2 = (output981, value427, value1))
    (child2174 : Flapjack.WordAlloc.removeDeadStructural input2174 value427 value1 value2 = (output2174, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2175 value425 value1 value2 = (output2175, value853, value1) := by
  rw [input2175_def, output2175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child981]
  try dsimp only
  rw [child2174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output981_skip, output2174_skip]
  kernel_rfl

theorem node2176_cond_eq
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value424 value1 value2 = (output978, value425, value1))
    (child2175 : Flapjack.WordAlloc.removeDeadStructural input2175 value425 value1 value2 = (output2175, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2176 value424 value1 value2 = (output2176, value853, value1) := by
  rw [input2176_def, output2176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child978]
  try dsimp only
  rw [child2175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output978_skip, output2175_skip]
  kernel_rfl

theorem node2177_cond_eq
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value423 value1 value2 = (output977, value424, value1))
    (child2176 : Flapjack.WordAlloc.removeDeadStructural input2176 value424 value1 value2 = (output2176, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2177 value423 value1 value2 = (output2177, value853, value1) := by
  rw [input2177_def, output2177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child977]
  try dsimp only
  rw [child2176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output977_skip, output2176_skip]
  kernel_rfl

theorem node2178_cond_eq
    (child976 : Flapjack.WordAlloc.removeDeadStructural input976 value423 value1 value2 = (output976, value423, value1))
    (child2177 : Flapjack.WordAlloc.removeDeadStructural input2177 value423 value1 value2 = (output2177, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2178 value423 value1 value2 = (output2178, value853, value1) := by
  rw [input2178_def, output2178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child976]
  try dsimp only
  rw [child2177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output976_skip, output2177_skip]
  kernel_rfl

theorem node2179_cond_eq
    (child975 : Flapjack.WordAlloc.removeDeadStructural input975 value423 value1 value2 = (output975, value423, value1))
    (child2178 : Flapjack.WordAlloc.removeDeadStructural input2178 value423 value1 value2 = (output2178, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2179 value423 value1 value2 = (output2179, value853, value1) := by
  rw [input2179_def, output2179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child975]
  try dsimp only
  rw [child2178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output975_skip, output2178_skip]
  kernel_rfl

theorem node2180_cond_eq
    (child974 : Flapjack.WordAlloc.removeDeadStructural input974 value422 value1 value2 = (output974, value423, value1))
    (child2179 : Flapjack.WordAlloc.removeDeadStructural input2179 value423 value1 value2 = (output2179, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2180 value422 value1 value2 = (output2180, value853, value1) := by
  rw [input2180_def, output2180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child974]
  try dsimp only
  rw [child2179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output974_skip, output2179_skip]
  kernel_rfl

theorem node2181_cond_eq
    (child973 : Flapjack.WordAlloc.removeDeadStructural input973 value417 value1 value2 = (output973, value422, value1))
    (child2180 : Flapjack.WordAlloc.removeDeadStructural input2180 value422 value1 value2 = (output2180, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2181 value417 value1 value2 = (output2181, value853, value1) := by
  rw [input2181_def, output2181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child973]
  try dsimp only
  rw [child2180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output973_skip, output2180_skip]
  kernel_rfl

theorem node2182_cond_eq
    (child964 : Flapjack.WordAlloc.removeDeadStructural input964 value417 value1 value2 = (output964, value417, value1))
    (child2181 : Flapjack.WordAlloc.removeDeadStructural input2181 value417 value1 value2 = (output2181, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2182 value417 value1 value2 = (output2182, value853, value1) := by
  rw [input2182_def, output2182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child964]
  try dsimp only
  rw [child2181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output964_skip, output2181_skip]
  kernel_rfl

theorem node2183_cond_eq
    (child963 : Flapjack.WordAlloc.removeDeadStructural input963 value415 value1 value2 = (output963, value417, value1))
    (child2182 : Flapjack.WordAlloc.removeDeadStructural input2182 value417 value1 value2 = (output2182, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2183 value415 value1 value2 = (output2183, value853, value1) := by
  rw [input2183_def, output2183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child963]
  try dsimp only
  rw [child2182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output963_skip, output2182_skip]
  kernel_rfl

theorem node2184_cond_eq
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value414 value1 value2 = (output960, value415, value1))
    (child2183 : Flapjack.WordAlloc.removeDeadStructural input2183 value415 value1 value2 = (output2183, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2184 value414 value1 value2 = (output2184, value853, value1) := by
  rw [input2184_def, output2184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child960]
  try dsimp only
  rw [child2183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output960_skip, output2183_skip]
  kernel_rfl

theorem node2185_cond_eq
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value414 value1 value2 = (output959, value414, value1))
    (child2184 : Flapjack.WordAlloc.removeDeadStructural input2184 value414 value1 value2 = (output2184, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2185 value414 value1 value2 = (output2185, value853, value1) := by
  rw [input2185_def, output2185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child959]
  try dsimp only
  rw [child2184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output959_skip, output2184_skip]
  kernel_rfl

theorem node2186_cond_eq
    (child958 : Flapjack.WordAlloc.removeDeadStructural input958 value330 value1 value2 = (output958, value414, value1))
    (child2185 : Flapjack.WordAlloc.removeDeadStructural input2185 value414 value1 value2 = (output2185, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2186 value330 value1 value2 = (output2186, value853, value1) := by
  rw [input2186_def, output2186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child958]
  try dsimp only
  rw [child2185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output958_skip, output2185_skip]
  kernel_rfl

theorem node2187_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value330 value1 value2 = (output722, value330, value1))
    (child2186 : Flapjack.WordAlloc.removeDeadStructural input2186 value330 value1 value2 = (output2186, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2187 value330 value1 value2 = (output2187, value853, value1) := by
  rw [input2187_def, output2187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  try dsimp only
  rw [child2186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output722_skip, output2186_skip]
  kernel_rfl

theorem node2188_cond_eq
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value326 value1 value2 = (output721, value330, value1))
    (child2187 : Flapjack.WordAlloc.removeDeadStructural input2187 value330 value1 value2 = (output2187, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2188 value326 value1 value2 = (output2188, value853, value1) := by
  rw [input2188_def, output2188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child721]
  try dsimp only
  rw [child2187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output721_skip, output2187_skip]
  kernel_rfl

theorem node2189_cond_eq
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value323 value1 value2 = (output714, value326, value1))
    (child2188 : Flapjack.WordAlloc.removeDeadStructural input2188 value326 value1 value2 = (output2188, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2189 value323 value1 value2 = (output2189, value853, value1) := by
  rw [input2189_def, output2189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child714]
  try dsimp only
  rw [child2188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output714_skip, output2188_skip]
  kernel_rfl

theorem node2190_cond_eq
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value323 value1 value2 = (output709, value323, value1))
    (child2189 : Flapjack.WordAlloc.removeDeadStructural input2189 value323 value1 value2 = (output2189, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2190 value323 value1 value2 = (output2190, value853, value1) := by
  rw [input2190_def, output2190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child709]
  try dsimp only
  rw [child2189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output709_skip, output2189_skip]
  kernel_rfl

theorem node2191_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value320 value1 value2 = (output708, value323, value1))
    (child2190 : Flapjack.WordAlloc.removeDeadStructural input2190 value323 value1 value2 = (output2190, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2191 value320 value1 value2 = (output2191, value853, value1) := by
  rw [input2191_def, output2191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child2190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output2190_skip]
  kernel_rfl

theorem node2192_cond_eq
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value318 value1 value2 = (output703, value320, value1))
    (child2191 : Flapjack.WordAlloc.removeDeadStructural input2191 value320 value1 value2 = (output2191, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2192 value318 value1 value2 = (output2192, value853, value1) := by
  rw [input2192_def, output2192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child703]
  try dsimp only
  rw [child2191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output703_skip, output2191_skip]
  kernel_rfl

theorem node2193_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value314 value1 value2 = (output700, value318, value1))
    (child2192 : Flapjack.WordAlloc.removeDeadStructural input2192 value318 value1 value2 = (output2192, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2193 value314 value1 value2 = (output2193, value853, value1) := by
  rw [input2193_def, output2193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child700]
  try dsimp only
  rw [child2192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output2192_skip]
  kernel_rfl

theorem node2194_cond_eq
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value311 value1 value2 = (output693, value314, value1))
    (child2193 : Flapjack.WordAlloc.removeDeadStructural input2193 value314 value1 value2 = (output2193, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2194 value311 value1 value2 = (output2194, value853, value1) := by
  rw [input2194_def, output2194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child693]
  try dsimp only
  rw [child2193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output693_skip, output2193_skip]
  kernel_rfl

theorem node2195_cond_eq
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value311 value1 value2 = (output688, value311, value1))
    (child2194 : Flapjack.WordAlloc.removeDeadStructural input2194 value311 value1 value2 = (output2194, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2195 value311 value1 value2 = (output2195, value853, value1) := by
  rw [input2195_def, output2195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child688]
  try dsimp only
  rw [child2194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output688_skip, output2194_skip]
  kernel_rfl

theorem node2196_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value310 value1 value2 = (output687, value311, value1))
    (child2195 : Flapjack.WordAlloc.removeDeadStructural input2195 value311 value1 value2 = (output2195, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2196 value310 value1 value2 = (output2196, value853, value1) := by
  rw [input2196_def, output2196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child687]
  try dsimp only
  rw [child2195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output687_skip, output2195_skip]
  kernel_rfl

theorem node2197_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value306 value1 value2 = (output686, value310, value1))
    (child2196 : Flapjack.WordAlloc.removeDeadStructural input2196 value310 value1 value2 = (output2196, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2197 value306 value1 value2 = (output2197, value853, value1) := by
  rw [input2197_def, output2197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child2196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output2196_skip]
  kernel_rfl

theorem node2198_cond_eq
    (child679 : Flapjack.WordAlloc.removeDeadStructural input679 value303 value1 value2 = (output679, value306, value1))
    (child2197 : Flapjack.WordAlloc.removeDeadStructural input2197 value306 value1 value2 = (output2197, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2198 value303 value1 value2 = (output2198, value853, value1) := by
  rw [input2198_def, output2198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child679]
  try dsimp only
  rw [child2197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output679_skip, output2197_skip]
  kernel_rfl

theorem node2199_cond_eq
    (child674 : Flapjack.WordAlloc.removeDeadStructural input674 value303 value1 value2 = (output674, value303, value1))
    (child2198 : Flapjack.WordAlloc.removeDeadStructural input2198 value303 value1 value2 = (output2198, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2199 value303 value1 value2 = (output2199, value853, value1) := by
  rw [input2199_def, output2199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child674]
  try dsimp only
  rw [child2198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output674_skip, output2198_skip]
  kernel_rfl

theorem node2200_cond_eq
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value295 value1 value2 = (output673, value303, value1))
    (child2199 : Flapjack.WordAlloc.removeDeadStructural input2199 value303 value1 value2 = (output2199, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2200 value295 value1 value2 = (output2200, value853, value1) := by
  rw [input2200_def, output2200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child673]
  try dsimp only
  rw [child2199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output673_skip, output2199_skip]
  kernel_rfl

theorem node2201_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value294 value1 value2 = (output658, value295, value1))
    (child2200 : Flapjack.WordAlloc.removeDeadStructural input2200 value295 value1 value2 = (output2200, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2201 value294 value1 value2 = (output2201, value853, value1) := by
  rw [input2201_def, output2201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child2200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output2200_skip]
  kernel_rfl

theorem node2202_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value292 value1 value2 = (output657, value294, value1))
    (child2201 : Flapjack.WordAlloc.removeDeadStructural input2201 value294 value1 value2 = (output2201, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2202 value292 value1 value2 = (output2202, value853, value1) := by
  rw [input2202_def, output2202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child2201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output2201_skip]
  kernel_rfl

theorem node2203_cond_eq
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value290 value1 value2 = (output654, value292, value1))
    (child2202 : Flapjack.WordAlloc.removeDeadStructural input2202 value292 value1 value2 = (output2202, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2203 value290 value1 value2 = (output2203, value853, value1) := by
  rw [input2203_def, output2203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child654]
  try dsimp only
  rw [child2202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output654_skip, output2202_skip]
  kernel_rfl

theorem node2204_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value288 value1 value2 = (output651, value290, value1))
    (child2203 : Flapjack.WordAlloc.removeDeadStructural input2203 value290 value1 value2 = (output2203, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2204 value288 value1 value2 = (output2204, value853, value1) := by
  rw [input2204_def, output2204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child2203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output2203_skip]
  kernel_rfl

theorem node2205_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value287 value1 value2 = (output648, value288, value1))
    (child2204 : Flapjack.WordAlloc.removeDeadStructural input2204 value288 value1 value2 = (output2204, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2205 value287 value1 value2 = (output2205, value853, value1) := by
  rw [input2205_def, output2205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child2204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output2204_skip]
  kernel_rfl

theorem node2206_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value286 value1 value2 = (output647, value287, value1))
    (child2205 : Flapjack.WordAlloc.removeDeadStructural input2205 value287 value1 value2 = (output2205, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2206 value286 value1 value2 = (output2206, value853, value1) := by
  rw [input2206_def, output2206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child2205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output2205_skip]
  kernel_rfl

theorem node2207_cond_eq
    (child646 : Flapjack.WordAlloc.removeDeadStructural input646 value286 value1 value2 = (output646, value286, value1))
    (child2206 : Flapjack.WordAlloc.removeDeadStructural input2206 value286 value1 value2 = (output2206, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2207 value286 value1 value2 = (output2207, value853, value1) := by
  rw [input2207_def, output2207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child646]
  try dsimp only
  rw [child2206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output646_skip, output2206_skip]
  kernel_rfl

theorem node2208_cond_eq
    (child645 : Flapjack.WordAlloc.removeDeadStructural input645 value286 value1 value2 = (output645, value286, value1))
    (child2207 : Flapjack.WordAlloc.removeDeadStructural input2207 value286 value1 value2 = (output2207, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2208 value286 value1 value2 = (output2208, value853, value1) := by
  rw [input2208_def, output2208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child645]
  try dsimp only
  rw [child2207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output645_skip, output2207_skip]
  kernel_rfl

theorem node2209_cond_eq
    (child644 : Flapjack.WordAlloc.removeDeadStructural input644 value285 value1 value2 = (output644, value286, value1))
    (child2208 : Flapjack.WordAlloc.removeDeadStructural input2208 value286 value1 value2 = (output2208, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2209 value285 value1 value2 = (output2209, value853, value1) := by
  rw [input2209_def, output2209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child644]
  try dsimp only
  rw [child2208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output644_skip, output2208_skip]
  kernel_rfl

theorem node2210_cond_eq
    (child643 : Flapjack.WordAlloc.removeDeadStructural input643 value280 value1 value2 = (output643, value285, value1))
    (child2209 : Flapjack.WordAlloc.removeDeadStructural input2209 value285 value1 value2 = (output2209, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2210 value280 value1 value2 = (output2210, value853, value1) := by
  rw [input2210_def, output2210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child643]
  try dsimp only
  rw [child2209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output643_skip, output2209_skip]
  kernel_rfl

theorem node2211_cond_eq
    (child634 : Flapjack.WordAlloc.removeDeadStructural input634 value280 value1 value2 = (output634, value280, value1))
    (child2210 : Flapjack.WordAlloc.removeDeadStructural input2210 value280 value1 value2 = (output2210, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2211 value280 value1 value2 = (output2211, value853, value1) := by
  rw [input2211_def, output2211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child634]
  try dsimp only
  rw [child2210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output634_skip, output2210_skip]
  kernel_rfl

theorem node2212_cond_eq
    (child633 : Flapjack.WordAlloc.removeDeadStructural input633 value278 value1 value2 = (output633, value280, value1))
    (child2211 : Flapjack.WordAlloc.removeDeadStructural input2211 value280 value1 value2 = (output2211, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2212 value278 value1 value2 = (output2212, value853, value1) := by
  rw [input2212_def, output2212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child633]
  try dsimp only
  rw [child2211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output633_skip, output2211_skip]
  kernel_rfl

theorem node2213_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value277 value1 value2 = (output630, value278, value1))
    (child2212 : Flapjack.WordAlloc.removeDeadStructural input2212 value278 value1 value2 = (output2212, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2213 value277 value1 value2 = (output2213, value853, value1) := by
  rw [input2213_def, output2213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child2212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output2212_skip]
  kernel_rfl

theorem node2214_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value277 value1 value2 = (output629, value277, value1))
    (child2213 : Flapjack.WordAlloc.removeDeadStructural input2213 value277 value1 value2 = (output2213, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2214 value277 value1 value2 = (output2214, value853, value1) := by
  rw [input2214_def, output2214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child2213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output2213_skip]
  kernel_rfl

theorem node2215_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value203 value1 value2 = (output628, value277, value1))
    (child2214 : Flapjack.WordAlloc.removeDeadStructural input2214 value277 value1 value2 = (output2214, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2215 value203 value1 value2 = (output2215, value853, value1) := by
  rw [input2215_def, output2215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child2214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output2214_skip]
  kernel_rfl

theorem node2216_cond_eq
    (child436 : Flapjack.WordAlloc.removeDeadStructural input436 value203 value1 value2 = (output436, value203, value1))
    (child2215 : Flapjack.WordAlloc.removeDeadStructural input2215 value203 value1 value2 = (output2215, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2216 value203 value1 value2 = (output2216, value853, value1) := by
  rw [input2216_def, output2216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child436]
  try dsimp only
  rw [child2215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output436_skip, output2215_skip]
  kernel_rfl

theorem node2217_cond_eq
    (child435 : Flapjack.WordAlloc.removeDeadStructural input435 value199 value1 value2 = (output435, value203, value1))
    (child2216 : Flapjack.WordAlloc.removeDeadStructural input2216 value203 value1 value2 = (output2216, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2217 value199 value1 value2 = (output2217, value853, value1) := by
  rw [input2217_def, output2217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child435]
  try dsimp only
  rw [child2216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output435_skip, output2216_skip]
  kernel_rfl

theorem node2218_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value196 value1 value2 = (output428, value199, value1))
    (child2217 : Flapjack.WordAlloc.removeDeadStructural input2217 value199 value1 value2 = (output2217, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2218 value196 value1 value2 = (output2218, value853, value1) := by
  rw [input2218_def, output2218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  try dsimp only
  rw [child2217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output428_skip, output2217_skip]
  kernel_rfl

theorem node2219_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value196 value1 value2 = (output423, value196, value1))
    (child2218 : Flapjack.WordAlloc.removeDeadStructural input2218 value196 value1 value2 = (output2218, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2219 value196 value1 value2 = (output2219, value853, value1) := by
  rw [input2219_def, output2219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child2218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output2218_skip]
  kernel_rfl

theorem node2220_cond_eq
    (child422 : Flapjack.WordAlloc.removeDeadStructural input422 value193 value1 value2 = (output422, value196, value1))
    (child2219 : Flapjack.WordAlloc.removeDeadStructural input2219 value196 value1 value2 = (output2219, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2220 value193 value1 value2 = (output2220, value853, value1) := by
  rw [input2220_def, output2220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child422]
  try dsimp only
  rw [child2219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output422_skip, output2219_skip]
  kernel_rfl

theorem node2221_cond_eq
    (child417 : Flapjack.WordAlloc.removeDeadStructural input417 value191 value1 value2 = (output417, value193, value1))
    (child2220 : Flapjack.WordAlloc.removeDeadStructural input2220 value193 value1 value2 = (output2220, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2221 value191 value1 value2 = (output2221, value853, value1) := by
  rw [input2221_def, output2221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child417]
  try dsimp only
  rw [child2220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output417_skip, output2220_skip]
  kernel_rfl

theorem node2222_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value187 value1 value2 = (output414, value191, value1))
    (child2221 : Flapjack.WordAlloc.removeDeadStructural input2221 value191 value1 value2 = (output2221, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2222 value187 value1 value2 = (output2222, value853, value1) := by
  rw [input2222_def, output2222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child2221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output2221_skip]
  kernel_rfl

theorem node2223_cond_eq
    (child407 : Flapjack.WordAlloc.removeDeadStructural input407 value184 value1 value2 = (output407, value187, value1))
    (child2222 : Flapjack.WordAlloc.removeDeadStructural input2222 value187 value1 value2 = (output2222, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2223 value184 value1 value2 = (output2223, value853, value1) := by
  rw [input2223_def, output2223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child407]
  try dsimp only
  rw [child2222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output407_skip, output2222_skip]
  kernel_rfl

theorem node2224_cond_eq
    (child402 : Flapjack.WordAlloc.removeDeadStructural input402 value184 value1 value2 = (output402, value184, value1))
    (child2223 : Flapjack.WordAlloc.removeDeadStructural input2223 value184 value1 value2 = (output2223, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2224 value184 value1 value2 = (output2224, value853, value1) := by
  rw [input2224_def, output2224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child402]
  try dsimp only
  rw [child2223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output402_skip, output2223_skip]
  kernel_rfl

theorem node2225_cond_eq
    (child401 : Flapjack.WordAlloc.removeDeadStructural input401 value183 value1 value2 = (output401, value184, value1))
    (child2224 : Flapjack.WordAlloc.removeDeadStructural input2224 value184 value1 value2 = (output2224, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2225 value183 value1 value2 = (output2225, value853, value1) := by
  rw [input2225_def, output2225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child401]
  try dsimp only
  rw [child2224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output401_skip, output2224_skip]
  kernel_rfl

theorem node2226_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value179 value1 value2 = (output400, value183, value1))
    (child2225 : Flapjack.WordAlloc.removeDeadStructural input2225 value183 value1 value2 = (output2225, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2226 value179 value1 value2 = (output2226, value853, value1) := by
  rw [input2226_def, output2226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child2225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output2225_skip]
  kernel_rfl

theorem node2227_cond_eq
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value176 value1 value2 = (output393, value179, value1))
    (child2226 : Flapjack.WordAlloc.removeDeadStructural input2226 value179 value1 value2 = (output2226, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2227 value176 value1 value2 = (output2227, value853, value1) := by
  rw [input2227_def, output2227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child393]
  try dsimp only
  rw [child2226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output393_skip, output2226_skip]
  kernel_rfl

theorem node2228_cond_eq
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value176 value1 value2 = (output388, value176, value1))
    (child2227 : Flapjack.WordAlloc.removeDeadStructural input2227 value176 value1 value2 = (output2227, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2228 value176 value1 value2 = (output2228, value853, value1) := by
  rw [input2228_def, output2228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child388]
  try dsimp only
  rw [child2227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output388_skip, output2227_skip]
  kernel_rfl

theorem node2229_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value168 value1 value2 = (output387, value176, value1))
    (child2228 : Flapjack.WordAlloc.removeDeadStructural input2228 value176 value1 value2 = (output2228, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2229 value168 value1 value2 = (output2229, value853, value1) := by
  rw [input2229_def, output2229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  try dsimp only
  rw [child2228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output387_skip, output2228_skip]
  kernel_rfl

theorem node2230_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value167 value1 value2 = (output372, value168, value1))
    (child2229 : Flapjack.WordAlloc.removeDeadStructural input2229 value168 value1 value2 = (output2229, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2230 value167 value1 value2 = (output2230, value853, value1) := by
  rw [input2230_def, output2230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child2229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output2229_skip]
  kernel_rfl

theorem node2231_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value165 value1 value2 = (output371, value167, value1))
    (child2230 : Flapjack.WordAlloc.removeDeadStructural input2230 value167 value1 value2 = (output2230, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2231 value165 value1 value2 = (output2231, value853, value1) := by
  rw [input2231_def, output2231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child2230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output2230_skip]
  kernel_rfl

theorem node2232_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value163 value1 value2 = (output368, value165, value1))
    (child2231 : Flapjack.WordAlloc.removeDeadStructural input2231 value165 value1 value2 = (output2231, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2232 value163 value1 value2 = (output2232, value853, value1) := by
  rw [input2232_def, output2232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child2231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output2231_skip]
  kernel_rfl

theorem node2233_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value161 value1 value2 = (output365, value163, value1))
    (child2232 : Flapjack.WordAlloc.removeDeadStructural input2232 value163 value1 value2 = (output2232, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2233 value161 value1 value2 = (output2233, value853, value1) := by
  rw [input2233_def, output2233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child2232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output2232_skip]
  kernel_rfl

theorem node2234_cond_eq
    (child362 : Flapjack.WordAlloc.removeDeadStructural input362 value160 value1 value2 = (output362, value161, value1))
    (child2233 : Flapjack.WordAlloc.removeDeadStructural input2233 value161 value1 value2 = (output2233, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2234 value160 value1 value2 = (output2234, value853, value1) := by
  rw [input2234_def, output2234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child362]
  try dsimp only
  rw [child2233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output362_skip, output2233_skip]
  kernel_rfl

theorem node2235_cond_eq
    (child361 : Flapjack.WordAlloc.removeDeadStructural input361 value159 value1 value2 = (output361, value160, value1))
    (child2234 : Flapjack.WordAlloc.removeDeadStructural input2234 value160 value1 value2 = (output2234, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2235 value159 value1 value2 = (output2235, value853, value1) := by
  rw [input2235_def, output2235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child361]
  try dsimp only
  rw [child2234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output361_skip, output2234_skip]
  kernel_rfl

theorem node2236_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value159 value1 value2 = (output360, value159, value1))
    (child2235 : Flapjack.WordAlloc.removeDeadStructural input2235 value159 value1 value2 = (output2235, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2236 value159 value1 value2 = (output2236, value853, value1) := by
  rw [input2236_def, output2236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child2235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output2235_skip]
  kernel_rfl

theorem node2237_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value159 value1 value2 = (output359, value159, value1))
    (child2236 : Flapjack.WordAlloc.removeDeadStructural input2236 value159 value1 value2 = (output2236, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2237 value159 value1 value2 = (output2237, value853, value1) := by
  rw [input2237_def, output2237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child2236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output2236_skip]
  kernel_rfl

theorem node2238_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value158 value1 value2 = (output358, value159, value1))
    (child2237 : Flapjack.WordAlloc.removeDeadStructural input2237 value159 value1 value2 = (output2237, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2238 value158 value1 value2 = (output2238, value853, value1) := by
  rw [input2238_def, output2238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child2237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output2237_skip]
  kernel_rfl

theorem node2239_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value153 value1 value2 = (output357, value158, value1))
    (child2238 : Flapjack.WordAlloc.removeDeadStructural input2238 value158 value1 value2 = (output2238, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2239 value153 value1 value2 = (output2239, value853, value1) := by
  rw [input2239_def, output2239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child2238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output2238_skip]
  kernel_rfl

theorem node2240_cond_eq
    (child348 : Flapjack.WordAlloc.removeDeadStructural input348 value153 value1 value2 = (output348, value153, value1))
    (child2239 : Flapjack.WordAlloc.removeDeadStructural input2239 value153 value1 value2 = (output2239, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2240 value153 value1 value2 = (output2240, value853, value1) := by
  rw [input2240_def, output2240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child348]
  try dsimp only
  rw [child2239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output348_skip, output2239_skip]
  kernel_rfl

theorem node2241_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value151 value1 value2 = (output347, value153, value1))
    (child2240 : Flapjack.WordAlloc.removeDeadStructural input2240 value153 value1 value2 = (output2240, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2241 value151 value1 value2 = (output2241, value853, value1) := by
  rw [input2241_def, output2241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child2240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output2240_skip]
  kernel_rfl

theorem node2242_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value150 value1 value2 = (output344, value151, value1))
    (child2241 : Flapjack.WordAlloc.removeDeadStructural input2241 value151 value1 value2 = (output2241, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2242 value150 value1 value2 = (output2242, value853, value1) := by
  rw [input2242_def, output2242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  try dsimp only
  rw [child2241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output344_skip, output2241_skip]
  kernel_rfl

theorem node2243_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value150 value1 value2 = (output343, value150, value1))
    (child2242 : Flapjack.WordAlloc.removeDeadStructural input2242 value150 value1 value2 = (output2242, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2243 value150 value1 value2 = (output2243, value853, value1) := by
  rw [input2243_def, output2243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child2242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output2242_skip]
  kernel_rfl

theorem node2244_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value69 value1 value2 = (output342, value150, value1))
    (child2243 : Flapjack.WordAlloc.removeDeadStructural input2243 value150 value1 value2 = (output2243, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2244 value69 value1 value2 = (output2244, value853, value1) := by
  rw [input2244_def, output2244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child2243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output2243_skip]
  kernel_rfl

theorem node2245_cond_eq
    (child116 : Flapjack.WordAlloc.removeDeadStructural input116 value69 value1 value2 = (output116, value69, value1))
    (child2244 : Flapjack.WordAlloc.removeDeadStructural input2244 value69 value1 value2 = (output2244, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2245 value69 value1 value2 = (output2245, value853, value1) := by
  rw [input2245_def, output2245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child116]
  try dsimp only
  rw [child2244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output116_skip, output2244_skip]
  kernel_rfl

theorem node2246_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value65 value1 value2 = (output115, value69, value1))
    (child2245 : Flapjack.WordAlloc.removeDeadStructural input2245 value69 value1 value2 = (output2245, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2246 value65 value1 value2 = (output2246, value853, value1) := by
  rw [input2246_def, output2246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child2245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output2245_skip]
  kernel_rfl

theorem node2247_cond_eq
    (child108 : Flapjack.WordAlloc.removeDeadStructural input108 value62 value1 value2 = (output108, value65, value1))
    (child2246 : Flapjack.WordAlloc.removeDeadStructural input2246 value65 value1 value2 = (output2246, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2247 value62 value1 value2 = (output2247, value853, value1) := by
  rw [input2247_def, output2247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child108]
  try dsimp only
  rw [child2246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output108_skip, output2246_skip]
  kernel_rfl

theorem node2248_cond_eq
    (child103 : Flapjack.WordAlloc.removeDeadStructural input103 value62 value1 value2 = (output103, value62, value1))
    (child2247 : Flapjack.WordAlloc.removeDeadStructural input2247 value62 value1 value2 = (output2247, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2248 value62 value1 value2 = (output2248, value853, value1) := by
  rw [input2248_def, output2248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child103]
  try dsimp only
  rw [child2247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output103_skip, output2247_skip]
  kernel_rfl

theorem node2249_cond_eq
    (child102 : Flapjack.WordAlloc.removeDeadStructural input102 value59 value1 value2 = (output102, value62, value1))
    (child2248 : Flapjack.WordAlloc.removeDeadStructural input2248 value62 value1 value2 = (output2248, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2249 value59 value1 value2 = (output2249, value853, value1) := by
  rw [input2249_def, output2249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child102]
  try dsimp only
  rw [child2248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output102_skip, output2248_skip]
  kernel_rfl

theorem node2250_cond_eq
    (child97 : Flapjack.WordAlloc.removeDeadStructural input97 value57 value1 value2 = (output97, value59, value1))
    (child2249 : Flapjack.WordAlloc.removeDeadStructural input2249 value59 value1 value2 = (output2249, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2250 value57 value1 value2 = (output2250, value853, value1) := by
  rw [input2250_def, output2250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child97]
  try dsimp only
  rw [child2249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output97_skip, output2249_skip]
  kernel_rfl

theorem node2251_cond_eq
    (child94 : Flapjack.WordAlloc.removeDeadStructural input94 value53 value1 value2 = (output94, value57, value1))
    (child2250 : Flapjack.WordAlloc.removeDeadStructural input2250 value57 value1 value2 = (output2250, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2251 value53 value1 value2 = (output2251, value853, value1) := by
  rw [input2251_def, output2251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child94]
  try dsimp only
  rw [child2250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output94_skip, output2250_skip]
  kernel_rfl

theorem node2252_cond_eq
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value50 value1 value2 = (output87, value53, value1))
    (child2251 : Flapjack.WordAlloc.removeDeadStructural input2251 value53 value1 value2 = (output2251, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2252 value50 value1 value2 = (output2252, value853, value1) := by
  rw [input2252_def, output2252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child87]
  try dsimp only
  rw [child2251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output87_skip, output2251_skip]
  kernel_rfl

theorem node2253_cond_eq
    (child82 : Flapjack.WordAlloc.removeDeadStructural input82 value50 value1 value2 = (output82, value50, value1))
    (child2252 : Flapjack.WordAlloc.removeDeadStructural input2252 value50 value1 value2 = (output2252, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2253 value50 value1 value2 = (output2253, value853, value1) := by
  rw [input2253_def, output2253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child82]
  try dsimp only
  rw [child2252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output82_skip, output2252_skip]
  kernel_rfl

theorem node2254_cond_eq
    (child81 : Flapjack.WordAlloc.removeDeadStructural input81 value49 value1 value2 = (output81, value50, value1))
    (child2253 : Flapjack.WordAlloc.removeDeadStructural input2253 value50 value1 value2 = (output2253, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2254 value49 value1 value2 = (output2254, value853, value1) := by
  rw [input2254_def, output2254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child81]
  try dsimp only
  rw [child2253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output81_skip, output2253_skip]
  kernel_rfl

theorem node2255_cond_eq
    (child80 : Flapjack.WordAlloc.removeDeadStructural input80 value45 value1 value2 = (output80, value49, value1))
    (child2254 : Flapjack.WordAlloc.removeDeadStructural input2254 value49 value1 value2 = (output2254, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2255 value45 value1 value2 = (output2255, value853, value1) := by
  rw [input2255_def, output2255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child80]
  try dsimp only
  rw [child2254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output80_skip, output2254_skip]
  kernel_rfl

theorem node2256_cond_eq
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value42 value1 value2 = (output73, value45, value1))
    (child2255 : Flapjack.WordAlloc.removeDeadStructural input2255 value45 value1 value2 = (output2255, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2256 value42 value1 value2 = (output2256, value853, value1) := by
  rw [input2256_def, output2256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child73]
  try dsimp only
  rw [child2255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output73_skip, output2255_skip]
  kernel_rfl

theorem node2257_cond_eq
    (child68 : Flapjack.WordAlloc.removeDeadStructural input68 value42 value1 value2 = (output68, value42, value1))
    (child2256 : Flapjack.WordAlloc.removeDeadStructural input2256 value42 value1 value2 = (output2256, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2257 value42 value1 value2 = (output2257, value853, value1) := by
  rw [input2257_def, output2257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child68]
  try dsimp only
  rw [child2256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output68_skip, output2256_skip]
  kernel_rfl

theorem node2258_cond_eq
    (child67 : Flapjack.WordAlloc.removeDeadStructural input67 value34 value1 value2 = (output67, value42, value1))
    (child2257 : Flapjack.WordAlloc.removeDeadStructural input2257 value42 value1 value2 = (output2257, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2258 value34 value1 value2 = (output2258, value853, value1) := by
  rw [input2258_def, output2258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child67]
  try dsimp only
  rw [child2257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output67_skip, output2257_skip]
  kernel_rfl

theorem node2259_cond_eq
    (child52 : Flapjack.WordAlloc.removeDeadStructural input52 value33 value1 value2 = (output52, value34, value1))
    (child2258 : Flapjack.WordAlloc.removeDeadStructural input2258 value34 value1 value2 = (output2258, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2259 value33 value1 value2 = (output2259, value853, value1) := by
  rw [input2259_def, output2259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child52]
  try dsimp only
  rw [child2258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output52_skip, output2258_skip]
  kernel_rfl

theorem node2260_cond_eq
    (child51 : Flapjack.WordAlloc.removeDeadStructural input51 value32 value1 value2 = (output51, value33, value1))
    (child2259 : Flapjack.WordAlloc.removeDeadStructural input2259 value33 value1 value2 = (output2259, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2260 value32 value1 value2 = (output2260, value853, value1) := by
  rw [input2260_def, output2260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child51]
  try dsimp only
  rw [child2259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output51_skip, output2259_skip]
  kernel_rfl

theorem node2261_cond_eq
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value29 value1 value2 = (output50, value32, value1))
    (child2260 : Flapjack.WordAlloc.removeDeadStructural input2260 value32 value1 value2 = (output2260, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2261 value29 value1 value2 = (output2261, value853, value1) := by
  rw [input2261_def, output2261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child50]
  try dsimp only
  rw [child2260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output50_skip, output2260_skip]
  kernel_rfl

theorem node2262_cond_eq
    (child45 : Flapjack.WordAlloc.removeDeadStructural input45 value29 value1 value2 = (output45, value29, value1))
    (child2261 : Flapjack.WordAlloc.removeDeadStructural input2261 value29 value1 value2 = (output2261, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2262 value29 value1 value2 = (output2262, value853, value1) := by
  rw [input2262_def, output2262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child45]
  try dsimp only
  rw [child2261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output45_skip, output2261_skip]
  kernel_rfl

theorem node2263_cond_eq
    (child44 : Flapjack.WordAlloc.removeDeadStructural input44 value25 value1 value2 = (output44, value29, value1))
    (child2262 : Flapjack.WordAlloc.removeDeadStructural input2262 value29 value1 value2 = (output2262, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2263 value25 value1 value2 = (output2263, value853, value1) := by
  rw [input2263_def, output2263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child44]
  try dsimp only
  rw [child2262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output44_skip, output2262_skip]
  kernel_rfl

theorem node2264_cond_eq
    (child37 : Flapjack.WordAlloc.removeDeadStructural input37 value24 value1 value2 = (output37, value25, value1))
    (child2263 : Flapjack.WordAlloc.removeDeadStructural input2263 value25 value1 value2 = (output2263, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2264 value24 value1 value2 = (output2264, value853, value1) := by
  rw [input2264_def, output2264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child37]
  try dsimp only
  rw [child2263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output37_skip, output2263_skip]
  kernel_rfl

theorem node2265_cond_eq
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value21 value1 value2 = (output36, value24, value1))
    (child2264 : Flapjack.WordAlloc.removeDeadStructural input2264 value24 value1 value2 = (output2264, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2265 value21 value1 value2 = (output2265, value853, value1) := by
  rw [input2265_def, output2265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child36]
  try dsimp only
  rw [child2264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output36_skip, output2264_skip]
  kernel_rfl

theorem node2266_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value21 value1 value2 = (output31, value21, value1))
    (child2265 : Flapjack.WordAlloc.removeDeadStructural input2265 value21 value1 value2 = (output2265, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2266 value21 value1 value2 = (output2266, value853, value1) := by
  rw [input2266_def, output2266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child2265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output2265_skip]
  kernel_rfl

theorem node2267_cond_eq
    (child30 : Flapjack.WordAlloc.removeDeadStructural input30 value18 value1 value2 = (output30, value21, value1))
    (child2266 : Flapjack.WordAlloc.removeDeadStructural input2266 value21 value1 value2 = (output2266, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2267 value18 value1 value2 = (output2267, value853, value1) := by
  rw [input2267_def, output2267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child30]
  try dsimp only
  rw [child2266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output30_skip, output2266_skip]
  kernel_rfl

theorem node2268_cond_eq
    (child25 : Flapjack.WordAlloc.removeDeadStructural input25 value16 value1 value2 = (output25, value18, value1))
    (child2267 : Flapjack.WordAlloc.removeDeadStructural input2267 value18 value1 value2 = (output2267, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2268 value16 value1 value2 = (output2268, value853, value1) := by
  rw [input2268_def, output2268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child25]
  try dsimp only
  rw [child2267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output25_skip, output2267_skip]
  kernel_rfl

theorem node2269_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value15 value1 value2 = (output22, value16, value1))
    (child2268 : Flapjack.WordAlloc.removeDeadStructural input2268 value16 value1 value2 = (output2268, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2269 value15 value1 value2 = (output2269, value853, value1) := by
  rw [input2269_def, output2269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child2268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output2268_skip]
  kernel_rfl

theorem node2270_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value12 value1 value2 = (output21, value15, value1))
    (child2269 : Flapjack.WordAlloc.removeDeadStructural input2269 value15 value1 value2 = (output2269, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2270 value12 value1 value2 = (output2270, value853, value1) := by
  rw [input2270_def, output2270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  try dsimp only
  rw [child2269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output21_skip, output2269_skip]
  kernel_rfl

theorem node2271_cond_eq
    (child16 : Flapjack.WordAlloc.removeDeadStructural input16 value12 value1 value2 = (output16, value12, value1))
    (child2270 : Flapjack.WordAlloc.removeDeadStructural input2270 value12 value1 value2 = (output2270, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2271 value12 value1 value2 = (output2271, value853, value1) := by
  rw [input2271_def, output2271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child16]
  try dsimp only
  rw [child2270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output16_skip, output2270_skip]
  kernel_rfl

theorem node2272_cond_eq
    (child15 : Flapjack.WordAlloc.removeDeadStructural input15 value11 value1 value2 = (output15, value12, value1))
    (child2271 : Flapjack.WordAlloc.removeDeadStructural input2271 value12 value1 value2 = (output2271, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2272 value11 value1 value2 = (output2272, value853, value1) := by
  rw [input2272_def, output2272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child15]
  try dsimp only
  rw [child2271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output15_skip, output2271_skip]
  kernel_rfl

theorem node2273_cond_eq
    (child14 : Flapjack.WordAlloc.removeDeadStructural input14 value10 value1 value2 = (output14, value11, value1))
    (child2272 : Flapjack.WordAlloc.removeDeadStructural input2272 value11 value1 value2 = (output2272, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2273 value10 value1 value2 = (output2273, value853, value1) := by
  rw [input2273_def, output2273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child14]
  try dsimp only
  rw [child2272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output14_skip, output2272_skip]
  kernel_rfl

theorem node2274_cond_eq
    (child13 : Flapjack.WordAlloc.removeDeadStructural input13 value7 value1 value2 = (output13, value10, value1))
    (child2273 : Flapjack.WordAlloc.removeDeadStructural input2273 value10 value1 value2 = (output2273, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2274 value7 value1 value2 = (output2274, value853, value1) := by
  rw [input2274_def, output2274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13]
  try dsimp only
  rw [child2273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13_skip, output2273_skip]
  kernel_rfl

theorem node2275_cond_eq
    (child8 : Flapjack.WordAlloc.removeDeadStructural input8 value7 value1 value2 = (output8, value7, value1))
    (child2274 : Flapjack.WordAlloc.removeDeadStructural input2274 value7 value1 value2 = (output2274, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2275 value7 value1 value2 = (output2275, value853, value1) := by
  rw [input2275_def, output2275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8]
  try dsimp only
  rw [child2274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8_skip, output2274_skip]
  kernel_rfl

theorem node2276_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value4 value1 value2 = (output7, value7, value1))
    (child2275 : Flapjack.WordAlloc.removeDeadStructural input2275 value7 value1 value2 = (output2275, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2276 value4 value1 value2 = (output2276, value853, value1) := by
  rw [input2276_def, output2276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child2275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output2275_skip]
  kernel_rfl

theorem node2277_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child2276 : Flapjack.WordAlloc.removeDeadStructural input2276 value4 value1 value2 = (output2276, value853, value1)) : Flapjack.WordAlloc.removeDeadStructural input2277 value0 value1 value2 = (output2277, value853, value1) := by
  rw [input2277_def, output2277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child2276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output2276_skip]
  kernel_rfl

theorem node2278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2278 value853 value1 value2 = (output2278, value854, value1) := by
  rw [input2278_def, output2278_def]
  kernel_rfl

theorem node2279_cond_eq
    (child2277 : Flapjack.WordAlloc.removeDeadStructural input2277 value0 value1 value2 = (output2277, value853, value1))
    (child2278 : Flapjack.WordAlloc.removeDeadStructural input2278 value853 value1 value2 = (output2278, value854, value1)) : Flapjack.WordAlloc.removeDeadStructural input2279 value0 value1 value2 = (output2279, value854, value1) := by
  rw [input2279_def, output2279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2277]
  try dsimp only
  rw [child2278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2277_skip, output2278_skip]
  kernel_rfl

#print axioms node2279_cond_eq
end InitECandidate.Proofs.DeadStages461.Parallel
