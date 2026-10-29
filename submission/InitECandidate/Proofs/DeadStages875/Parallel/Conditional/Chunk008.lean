import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages875.Parallel.Data.Chunk008
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages875.Parallel
theorem node2048_cond_eq
    (child2046 : Flapjack.WordAlloc.removeDeadStructural input2046 value676 value1 value2 = (output2046, value678, value1))
    (child2047 : Flapjack.WordAlloc.removeDeadStructural input2047 value678 value1 value2 = (output2047, value679, value1)) : Flapjack.WordAlloc.removeDeadStructural input2048 value676 value1 value2 = (output2048, value679, value1) := by
  rw [input2048_def, output2048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2046]
  try dsimp only
  rw [child2047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2046_skip, output2047_skip]
  kernel_rfl

theorem node2049_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2049 value679 value1 value2 = (output2049, value680, value1) := by
  rw [input2049_def, output2049_def]
  kernel_rfl

theorem node2050_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2050 value680 value1 value2 = (output2050, value680, value1) := by
  rw [input2050_def, output2050_def]
  kernel_rfl

theorem node2051_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2051 value680 value1 value2 = (output2051, value681, value1) := by
  rw [input2051_def, output2051_def]
  kernel_rfl

theorem node2052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2052 value681 value1 value2 = (output2052, value682, value1) := by
  rw [input2052_def, output2052_def]
  kernel_rfl

theorem node2053_cond_eq
    (child2051 : Flapjack.WordAlloc.removeDeadStructural input2051 value680 value1 value2 = (output2051, value681, value1))
    (child2052 : Flapjack.WordAlloc.removeDeadStructural input2052 value681 value1 value2 = (output2052, value682, value1)) : Flapjack.WordAlloc.removeDeadStructural input2053 value680 value1 value2 = (output2053, value682, value1) := by
  rw [input2053_def, output2053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2051]
  try dsimp only
  rw [child2052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2051_skip, output2052_skip]
  kernel_rfl

theorem node2054_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2054 value682 value1 value2 = (output2054, value683, value1) := by
  rw [input2054_def, output2054_def]
  kernel_rfl

theorem node2055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2055 value683 value1 value2 = (output2055, value684, value1) := by
  rw [input2055_def, output2055_def]
  kernel_rfl

theorem node2056_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2056 value684 value1 value2 = (output2056, value685, value1) := by
  rw [input2056_def, output2056_def]
  kernel_rfl

theorem node2057_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2057 value685 value1 value2 = (output2057, value686, value1) := by
  rw [input2057_def, output2057_def]
  kernel_rfl

theorem node2058_cond_eq
    (child2056 : Flapjack.WordAlloc.removeDeadStructural input2056 value684 value1 value2 = (output2056, value685, value1))
    (child2057 : Flapjack.WordAlloc.removeDeadStructural input2057 value685 value1 value2 = (output2057, value686, value1)) : Flapjack.WordAlloc.removeDeadStructural input2058 value684 value1 value2 = (output2058, value686, value1) := by
  rw [input2058_def, output2058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2056]
  try dsimp only
  rw [child2057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2056_skip, output2057_skip]
  kernel_rfl

theorem node2059_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2059 value686 value1 value2 = (output2059, value687, value1) := by
  rw [input2059_def, output2059_def]
  kernel_rfl

theorem node2060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2060 value687 value1 value2 = (output2060, value688, value1) := by
  rw [input2060_def, output2060_def]
  kernel_rfl

theorem node2061_cond_eq
    (child2059 : Flapjack.WordAlloc.removeDeadStructural input2059 value686 value1 value2 = (output2059, value687, value1))
    (child2060 : Flapjack.WordAlloc.removeDeadStructural input2060 value687 value1 value2 = (output2060, value688, value1)) : Flapjack.WordAlloc.removeDeadStructural input2061 value686 value1 value2 = (output2061, value688, value1) := by
  rw [input2061_def, output2061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2059]
  try dsimp only
  rw [child2060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2059_skip, output2060_skip]
  kernel_rfl

theorem node2062_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2062 value688 value1 value2 = (output2062, value689, value1) := by
  rw [input2062_def, output2062_def]
  kernel_rfl

theorem node2063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2063 value689 value1 value2 = (output2063, value689, value1) := by
  rw [input2063_def, output2063_def]
  kernel_rfl

theorem node2064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2064 value689 value1 value2 = (output2064, value686, value1) := by
  rw [input2064_def, output2064_def]
  kernel_rfl

theorem node2065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2065 value686 value1 value2 = (output2065, value690, value1) := by
  rw [input2065_def, output2065_def]
  kernel_rfl

theorem node2066_cond_eq
    (child2064 : Flapjack.WordAlloc.removeDeadStructural input2064 value689 value1 value2 = (output2064, value686, value1))
    (child2065 : Flapjack.WordAlloc.removeDeadStructural input2065 value686 value1 value2 = (output2065, value690, value1)) : Flapjack.WordAlloc.removeDeadStructural input2066 value689 value1 value2 = (output2066, value690, value1) := by
  rw [input2066_def, output2066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2064]
  try dsimp only
  rw [child2065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2064_skip, output2065_skip]
  kernel_rfl

theorem node2067_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2067 value690 value1 value2 = (output2067, value690, value1) := by
  rw [input2067_def, output2067_def]
  kernel_rfl

theorem node2068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2068 value690 value1 value2 = (output2068, value690, value1) := by
  rw [input2068_def, output2068_def]
  kernel_rfl

theorem node2069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2069 value690 value1 value2 = (output2069, value690, value1) := by
  rw [input2069_def, output2069_def]
  kernel_rfl

theorem node2070_cond_eq
    (child2068 : Flapjack.WordAlloc.removeDeadStructural input2068 value690 value1 value2 = (output2068, value690, value1))
    (child2069 : Flapjack.WordAlloc.removeDeadStructural input2069 value690 value1 value2 = (output2069, value690, value1)) : Flapjack.WordAlloc.removeDeadStructural input2070 value690 value1 value2 = (output2070, value690, value1) := by
  rw [input2070_def, output2070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2068]
  try dsimp only
  rw [child2069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2068_skip, output2069_skip]
  kernel_rfl

theorem node2071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2071 value690 value1 value2 = (output2071, value691, value1) := by
  rw [input2071_def, output2071_def]
  kernel_rfl

theorem node2072_cond_eq
    (child2070 : Flapjack.WordAlloc.removeDeadStructural input2070 value690 value1 value2 = (output2070, value690, value1))
    (child2071 : Flapjack.WordAlloc.removeDeadStructural input2071 value690 value1 value2 = (output2071, value691, value1)) : Flapjack.WordAlloc.removeDeadStructural input2072 value690 value1 value2 = (output2072, value691, value1) := by
  rw [input2072_def, output2072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2070]
  try dsimp only
  rw [child2071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2070_skip, output2071_skip]
  kernel_rfl

theorem node2073_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2073 value691 value1 value2 = (output2073, value692, value1) := by
  rw [input2073_def, output2073_def]
  kernel_rfl

theorem node2074_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2074 value692 value1 value2 = (output2074, value693, value1) := by
  rw [input2074_def, output2074_def]
  kernel_rfl

theorem node2075_cond_eq
    (child2073 : Flapjack.WordAlloc.removeDeadStructural input2073 value691 value1 value2 = (output2073, value692, value1))
    (child2074 : Flapjack.WordAlloc.removeDeadStructural input2074 value692 value1 value2 = (output2074, value693, value1)) : Flapjack.WordAlloc.removeDeadStructural input2075 value691 value1 value2 = (output2075, value693, value1) := by
  rw [input2075_def, output2075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2073]
  try dsimp only
  rw [child2074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2073_skip, output2074_skip]
  kernel_rfl

theorem node2076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2076 value693 value1 value2 = (output2076, value694, value1) := by
  rw [input2076_def, output2076_def]
  kernel_rfl

theorem node2077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2077 value694 value1 value2 = (output2077, value695, value1) := by
  rw [input2077_def, output2077_def]
  kernel_rfl

theorem node2078_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2078 value695 value1 value2 = (output2078, value696, value1) := by
  rw [input2078_def, output2078_def]
  kernel_rfl

theorem node2079_cond_eq
    (child2077 : Flapjack.WordAlloc.removeDeadStructural input2077 value694 value1 value2 = (output2077, value695, value1))
    (child2078 : Flapjack.WordAlloc.removeDeadStructural input2078 value695 value1 value2 = (output2078, value696, value1)) : Flapjack.WordAlloc.removeDeadStructural input2079 value694 value1 value2 = (output2079, value696, value1) := by
  rw [input2079_def, output2079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2077]
  try dsimp only
  rw [child2078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2077_skip, output2078_skip]
  kernel_rfl

theorem node2080_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2080 value696 value1 value2 = (output2080, value697, value1) := by
  rw [input2080_def, output2080_def]
  kernel_rfl

theorem node2081_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2081 value697 value1 value2 = (output2081, value698, value1) := by
  rw [input2081_def, output2081_def]
  kernel_rfl

theorem node2082_cond_eq
    (child2080 : Flapjack.WordAlloc.removeDeadStructural input2080 value696 value1 value2 = (output2080, value697, value1))
    (child2081 : Flapjack.WordAlloc.removeDeadStructural input2081 value697 value1 value2 = (output2081, value698, value1)) : Flapjack.WordAlloc.removeDeadStructural input2082 value696 value1 value2 = (output2082, value698, value1) := by
  rw [input2082_def, output2082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2080]
  try dsimp only
  rw [child2081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2080_skip, output2081_skip]
  kernel_rfl

theorem node2083_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2083 value698 value1 value2 = (output2083, value699, value1) := by
  rw [input2083_def, output2083_def]
  kernel_rfl

theorem node2084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2084 value699 value1 value2 = (output2084, value700, value1) := by
  rw [input2084_def, output2084_def]
  kernel_rfl

theorem node2085_cond_eq
    (child2083 : Flapjack.WordAlloc.removeDeadStructural input2083 value698 value1 value2 = (output2083, value699, value1))
    (child2084 : Flapjack.WordAlloc.removeDeadStructural input2084 value699 value1 value2 = (output2084, value700, value1)) : Flapjack.WordAlloc.removeDeadStructural input2085 value698 value1 value2 = (output2085, value700, value1) := by
  rw [input2085_def, output2085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2083]
  try dsimp only
  rw [child2084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2083_skip, output2084_skip]
  kernel_rfl

theorem node2086_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2086 value700 value1 value2 = (output2086, value701, value1) := by
  rw [input2086_def, output2086_def]
  kernel_rfl

theorem node2087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2087 value701 value1 value2 = (output2087, value702, value1) := by
  rw [input2087_def, output2087_def]
  kernel_rfl

theorem node2088_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2088 value702 value1 value2 = (output2088, value703, value1) := by
  rw [input2088_def, output2088_def]
  kernel_rfl

theorem node2089_cond_eq
    (child2087 : Flapjack.WordAlloc.removeDeadStructural input2087 value701 value1 value2 = (output2087, value702, value1))
    (child2088 : Flapjack.WordAlloc.removeDeadStructural input2088 value702 value1 value2 = (output2088, value703, value1)) : Flapjack.WordAlloc.removeDeadStructural input2089 value701 value1 value2 = (output2089, value703, value1) := by
  rw [input2089_def, output2089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2087]
  try dsimp only
  rw [child2088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2087_skip, output2088_skip]
  kernel_rfl

theorem node2090_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2090 value703 value1 value2 = (output2090, value704, value1) := by
  rw [input2090_def, output2090_def]
  kernel_rfl

theorem node2091_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2091 value704 value1 value2 = (output2091, value705, value1) := by
  rw [input2091_def, output2091_def]
  kernel_rfl

theorem node2092_cond_eq
    (child2090 : Flapjack.WordAlloc.removeDeadStructural input2090 value703 value1 value2 = (output2090, value704, value1))
    (child2091 : Flapjack.WordAlloc.removeDeadStructural input2091 value704 value1 value2 = (output2091, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2092 value703 value1 value2 = (output2092, value705, value1) := by
  rw [input2092_def, output2092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2090]
  try dsimp only
  rw [child2091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2090_skip, output2091_skip]
  kernel_rfl

theorem node2093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2093 value705 value1 value2 = (output2093, value705, value1) := by
  rw [input2093_def, output2093_def]
  kernel_rfl

theorem node2094_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2094 value705 value1 value2 = (output2094, value705, value1) := by
  rw [input2094_def, output2094_def]
  kernel_rfl

theorem node2095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2095 value705 value1 value2 = (output2095, value705, value1) := by
  rw [input2095_def, output2095_def]
  kernel_rfl

theorem node2096_cond_eq
    (child2094 : Flapjack.WordAlloc.removeDeadStructural input2094 value705 value1 value2 = (output2094, value705, value1))
    (child2095 : Flapjack.WordAlloc.removeDeadStructural input2095 value705 value1 value2 = (output2095, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2096 value705 value1 value2 = (output2096, value705, value1) := by
  rw [input2096_def, output2096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2094]
  try dsimp only
  rw [child2095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2094_skip, output2095_skip]
  kernel_rfl

theorem node2097_cond_eq
    (child2093 : Flapjack.WordAlloc.removeDeadStructural input2093 value705 value1 value2 = (output2093, value705, value1))
    (child2096 : Flapjack.WordAlloc.removeDeadStructural input2096 value705 value1 value2 = (output2096, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2097 value705 value1 value2 = (output2097, value705, value1) := by
  rw [input2097_def, output2097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2093]
  try dsimp only
  rw [child2096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2093_skip, output2096_skip]
  kernel_rfl

theorem node2098_cond_eq
    (child2092 : Flapjack.WordAlloc.removeDeadStructural input2092 value703 value1 value2 = (output2092, value705, value1))
    (child2097 : Flapjack.WordAlloc.removeDeadStructural input2097 value705 value1 value2 = (output2097, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2098 value703 value1 value2 = (output2098, value705, value1) := by
  rw [input2098_def, output2098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2092]
  try dsimp only
  rw [child2097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2092_skip, output2097_skip]
  kernel_rfl

theorem node2099_cond_eq
    (child2089 : Flapjack.WordAlloc.removeDeadStructural input2089 value701 value1 value2 = (output2089, value703, value1))
    (child2098 : Flapjack.WordAlloc.removeDeadStructural input2098 value703 value1 value2 = (output2098, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2099 value701 value1 value2 = (output2099, value705, value1) := by
  rw [input2099_def, output2099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2089]
  try dsimp only
  rw [child2098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2089_skip, output2098_skip]
  kernel_rfl

theorem node2100_cond_eq
    (child2086 : Flapjack.WordAlloc.removeDeadStructural input2086 value700 value1 value2 = (output2086, value701, value1))
    (child2099 : Flapjack.WordAlloc.removeDeadStructural input2099 value701 value1 value2 = (output2099, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2100 value700 value1 value2 = (output2100, value705, value1) := by
  rw [input2100_def, output2100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2086]
  try dsimp only
  rw [child2099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2086_skip, output2099_skip]
  kernel_rfl

theorem node2101_cond_eq
    (child2085 : Flapjack.WordAlloc.removeDeadStructural input2085 value698 value1 value2 = (output2085, value700, value1))
    (child2100 : Flapjack.WordAlloc.removeDeadStructural input2100 value700 value1 value2 = (output2100, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2101 value698 value1 value2 = (output2101, value705, value1) := by
  rw [input2101_def, output2101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2085]
  try dsimp only
  rw [child2100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2085_skip, output2100_skip]
  kernel_rfl

theorem node2102_cond_eq
    (child2082 : Flapjack.WordAlloc.removeDeadStructural input2082 value696 value1 value2 = (output2082, value698, value1))
    (child2101 : Flapjack.WordAlloc.removeDeadStructural input2101 value698 value1 value2 = (output2101, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2102 value696 value1 value2 = (output2102, value705, value1) := by
  rw [input2102_def, output2102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2082]
  try dsimp only
  rw [child2101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2082_skip, output2101_skip]
  kernel_rfl

theorem node2103_cond_eq
    (child2079 : Flapjack.WordAlloc.removeDeadStructural input2079 value694 value1 value2 = (output2079, value696, value1))
    (child2102 : Flapjack.WordAlloc.removeDeadStructural input2102 value696 value1 value2 = (output2102, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2103 value694 value1 value2 = (output2103, value705, value1) := by
  rw [input2103_def, output2103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2079]
  try dsimp only
  rw [child2102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2079_skip, output2102_skip]
  kernel_rfl

theorem node2104_cond_eq
    (child2076 : Flapjack.WordAlloc.removeDeadStructural input2076 value693 value1 value2 = (output2076, value694, value1))
    (child2103 : Flapjack.WordAlloc.removeDeadStructural input2103 value694 value1 value2 = (output2103, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2104 value693 value1 value2 = (output2104, value705, value1) := by
  rw [input2104_def, output2104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2076]
  try dsimp only
  rw [child2103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2076_skip, output2103_skip]
  kernel_rfl

theorem node2105_cond_eq
    (child2075 : Flapjack.WordAlloc.removeDeadStructural input2075 value691 value1 value2 = (output2075, value693, value1))
    (child2104 : Flapjack.WordAlloc.removeDeadStructural input2104 value693 value1 value2 = (output2104, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2105 value691 value1 value2 = (output2105, value705, value1) := by
  rw [input2105_def, output2105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2075]
  try dsimp only
  rw [child2104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2075_skip, output2104_skip]
  kernel_rfl

theorem node2106_cond_eq
    (child2072 : Flapjack.WordAlloc.removeDeadStructural input2072 value690 value1 value2 = (output2072, value691, value1))
    (child2105 : Flapjack.WordAlloc.removeDeadStructural input2105 value691 value1 value2 = (output2105, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2106 value690 value1 value2 = (output2106, value705, value1) := by
  rw [input2106_def, output2106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2072]
  try dsimp only
  rw [child2105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2072_skip, output2105_skip]
  kernel_rfl

theorem node2107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2107 value690 value1 value2 = (output2107, value690, value1) := by
  rw [input2107_def, output2107_def]
  kernel_rfl

theorem node2108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2108 value690 value1 value2 = (output2108, value690, value1) := by
  rw [input2108_def, output2108_def]
  kernel_rfl

theorem node2109_cond_eq
    (child2107 : Flapjack.WordAlloc.removeDeadStructural input2107 value690 value1 value2 = (output2107, value690, value1))
    (child2108 : Flapjack.WordAlloc.removeDeadStructural input2108 value690 value1 value2 = (output2108, value690, value1)) : Flapjack.WordAlloc.removeDeadStructural input2109 value690 value1 value2 = (output2109, value690, value1) := by
  rw [input2109_def, output2109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2107]
  try dsimp only
  rw [child2108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2107_skip, output2108_skip]
  kernel_rfl

theorem node2110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2110 value690 value1 value2 = (output2110, value705, value1) := by
  rw [input2110_def, output2110_def]
  kernel_rfl

theorem node2111_cond_eq
    (child2109 : Flapjack.WordAlloc.removeDeadStructural input2109 value690 value1 value2 = (output2109, value690, value1))
    (child2110 : Flapjack.WordAlloc.removeDeadStructural input2110 value690 value1 value2 = (output2110, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2111 value690 value1 value2 = (output2111, value705, value1) := by
  rw [input2111_def, output2111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2109]
  try dsimp only
  rw [child2110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2109_skip, output2110_skip]
  kernel_rfl

theorem node2112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2112 value705 value1 value2 = (output2112, value705, value1) := by
  rw [input2112_def, output2112_def]
  kernel_rfl

theorem node2113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2113 value705 value1 value2 = (output2113, value705, value1) := by
  rw [input2113_def, output2113_def]
  kernel_rfl

theorem node2114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2114 value705 value1 value2 = (output2114, value705, value1) := by
  rw [input2114_def, output2114_def]
  kernel_rfl

theorem node2115_cond_eq
    (child2113 : Flapjack.WordAlloc.removeDeadStructural input2113 value705 value1 value2 = (output2113, value705, value1))
    (child2114 : Flapjack.WordAlloc.removeDeadStructural input2114 value705 value1 value2 = (output2114, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2115 value705 value1 value2 = (output2115, value705, value1) := by
  rw [input2115_def, output2115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2113]
  try dsimp only
  rw [child2114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2113_skip, output2114_skip]
  kernel_rfl

theorem node2116_cond_eq
    (child2112 : Flapjack.WordAlloc.removeDeadStructural input2112 value705 value1 value2 = (output2112, value705, value1))
    (child2115 : Flapjack.WordAlloc.removeDeadStructural input2115 value705 value1 value2 = (output2115, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2116 value705 value1 value2 = (output2116, value705, value1) := by
  rw [input2116_def, output2116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2112]
  try dsimp only
  rw [child2115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2112_skip, output2115_skip]
  kernel_rfl

theorem node2117_cond_eq
    (child2111 : Flapjack.WordAlloc.removeDeadStructural input2111 value690 value1 value2 = (output2111, value705, value1))
    (child2116 : Flapjack.WordAlloc.removeDeadStructural input2116 value705 value1 value2 = (output2116, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2117 value690 value1 value2 = (output2117, value705, value1) := by
  rw [input2117_def, output2117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2111]
  try dsimp only
  rw [child2116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2111_skip, output2116_skip]
  kernel_rfl

theorem node2118_cond_eq
    (child2106 : Flapjack.WordAlloc.removeDeadStructural input2106 value690 value1 value2 = (output2106, value705, value1))
    (child2117 : Flapjack.WordAlloc.removeDeadStructural input2117 value690 value1 value2 = (output2117, value705, value1)) : Flapjack.WordAlloc.removeDeadStructural input2118 value690 value1 value2 = (output2118, value707, value1) := by
  rw [input2118_def, output2118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child2106]
  try dsimp only
  rw [child2117]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2106_skip, output2117_skip]
  kernel_rfl

theorem node2119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2119 value707 value1 value2 = (output2119, value705, value1) := by
  rw [input2119_def, output2119_def]
  kernel_rfl

theorem node2120_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2120 value705 value1 value2 = (output2120, value708, value1) := by
  rw [input2120_def, output2120_def]
  kernel_rfl

theorem node2121_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2121 value708 value1 value2 = (output2121, value708, value1) := by
  rw [input2121_def, output2121_def]
  kernel_rfl

theorem node2122_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2122 value708 value1 value2 = (output2122, value709, value1) := by
  rw [input2122_def, output2122_def]
  kernel_rfl

theorem node2123_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2123 value709 value1 value2 = (output2123, value710, value1) := by
  rw [input2123_def, output2123_def]
  kernel_rfl

theorem node2124_cond_eq
    (child2122 : Flapjack.WordAlloc.removeDeadStructural input2122 value708 value1 value2 = (output2122, value709, value1))
    (child2123 : Flapjack.WordAlloc.removeDeadStructural input2123 value709 value1 value2 = (output2123, value710, value1)) : Flapjack.WordAlloc.removeDeadStructural input2124 value708 value1 value2 = (output2124, value710, value1) := by
  rw [input2124_def, output2124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2122]
  try dsimp only
  rw [child2123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2122_skip, output2123_skip]
  kernel_rfl

theorem node2125_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2125 value710 value1 value2 = (output2125, value711, value1) := by
  rw [input2125_def, output2125_def]
  kernel_rfl

theorem node2126_cond_eq
    (child2124 : Flapjack.WordAlloc.removeDeadStructural input2124 value708 value1 value2 = (output2124, value710, value1))
    (child2125 : Flapjack.WordAlloc.removeDeadStructural input2125 value710 value1 value2 = (output2125, value711, value1)) : Flapjack.WordAlloc.removeDeadStructural input2126 value708 value1 value2 = (output2126, value711, value1) := by
  rw [input2126_def, output2126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2124]
  try dsimp only
  rw [child2125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2124_skip, output2125_skip]
  kernel_rfl

theorem node2127_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2127 value711 value1 value2 = (output2127, value712, value1) := by
  rw [input2127_def, output2127_def]
  kernel_rfl

theorem node2128_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2128 value712 value1 value2 = (output2128, value712, value1) := by
  rw [input2128_def, output2128_def]
  kernel_rfl

theorem node2129_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2129 value712 value1 value2 = (output2129, value712, value1) := by
  rw [input2129_def, output2129_def]
  kernel_rfl

theorem node2130_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2130 value712 value1 value2 = (output2130, value712, value1) := by
  rw [input2130_def, output2130_def]
  kernel_rfl

theorem node2131_cond_eq
    (child2129 : Flapjack.WordAlloc.removeDeadStructural input2129 value712 value1 value2 = (output2129, value712, value1))
    (child2130 : Flapjack.WordAlloc.removeDeadStructural input2130 value712 value1 value2 = (output2130, value712, value1)) : Flapjack.WordAlloc.removeDeadStructural input2131 value712 value1 value2 = (output2131, value712, value1) := by
  rw [input2131_def, output2131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2129]
  try dsimp only
  rw [child2130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2129_skip, output2130_skip]
  kernel_rfl

theorem node2132_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2132 value712 value1 value2 = (output2132, value713, value1) := by
  rw [input2132_def, output2132_def]
  kernel_rfl

theorem node2133_cond_eq
    (child2131 : Flapjack.WordAlloc.removeDeadStructural input2131 value712 value1 value2 = (output2131, value712, value1))
    (child2132 : Flapjack.WordAlloc.removeDeadStructural input2132 value712 value1 value2 = (output2132, value713, value1)) : Flapjack.WordAlloc.removeDeadStructural input2133 value712 value1 value2 = (output2133, value713, value1) := by
  rw [input2133_def, output2133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2131]
  try dsimp only
  rw [child2132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2131_skip, output2132_skip]
  kernel_rfl

theorem node2134_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2134 value713 value1 value2 = (output2134, value714, value1) := by
  rw [input2134_def, output2134_def]
  kernel_rfl

theorem node2135_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2135 value714 value1 value2 = (output2135, value715, value1) := by
  rw [input2135_def, output2135_def]
  kernel_rfl

theorem node2136_cond_eq
    (child2134 : Flapjack.WordAlloc.removeDeadStructural input2134 value713 value1 value2 = (output2134, value714, value1))
    (child2135 : Flapjack.WordAlloc.removeDeadStructural input2135 value714 value1 value2 = (output2135, value715, value1)) : Flapjack.WordAlloc.removeDeadStructural input2136 value713 value1 value2 = (output2136, value715, value1) := by
  rw [input2136_def, output2136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2134]
  try dsimp only
  rw [child2135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2134_skip, output2135_skip]
  kernel_rfl

theorem node2137_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2137 value715 value1 value2 = (output2137, value716, value1) := by
  rw [input2137_def, output2137_def]
  kernel_rfl

theorem node2138_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2138 value716 value1 value2 = (output2138, value717, value1) := by
  rw [input2138_def, output2138_def]
  kernel_rfl

theorem node2139_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2139 value717 value1 value2 = (output2139, value718, value1) := by
  rw [input2139_def, output2139_def]
  kernel_rfl

theorem node2140_cond_eq
    (child2138 : Flapjack.WordAlloc.removeDeadStructural input2138 value716 value1 value2 = (output2138, value717, value1))
    (child2139 : Flapjack.WordAlloc.removeDeadStructural input2139 value717 value1 value2 = (output2139, value718, value1)) : Flapjack.WordAlloc.removeDeadStructural input2140 value716 value1 value2 = (output2140, value718, value1) := by
  rw [input2140_def, output2140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2138]
  try dsimp only
  rw [child2139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2138_skip, output2139_skip]
  kernel_rfl

theorem node2141_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2141 value718 value1 value2 = (output2141, value719, value1) := by
  rw [input2141_def, output2141_def]
  kernel_rfl

theorem node2142_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2142 value719 value1 value2 = (output2142, value720, value1) := by
  rw [input2142_def, output2142_def]
  kernel_rfl

theorem node2143_cond_eq
    (child2141 : Flapjack.WordAlloc.removeDeadStructural input2141 value718 value1 value2 = (output2141, value719, value1))
    (child2142 : Flapjack.WordAlloc.removeDeadStructural input2142 value719 value1 value2 = (output2142, value720, value1)) : Flapjack.WordAlloc.removeDeadStructural input2143 value718 value1 value2 = (output2143, value720, value1) := by
  rw [input2143_def, output2143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2141]
  try dsimp only
  rw [child2142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2141_skip, output2142_skip]
  kernel_rfl

theorem node2144_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2144 value720 value1 value2 = (output2144, value721, value1) := by
  rw [input2144_def, output2144_def]
  kernel_rfl

theorem node2145_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2145 value721 value1 value2 = (output2145, value722, value1) := by
  rw [input2145_def, output2145_def]
  kernel_rfl

theorem node2146_cond_eq
    (child2144 : Flapjack.WordAlloc.removeDeadStructural input2144 value720 value1 value2 = (output2144, value721, value1))
    (child2145 : Flapjack.WordAlloc.removeDeadStructural input2145 value721 value1 value2 = (output2145, value722, value1)) : Flapjack.WordAlloc.removeDeadStructural input2146 value720 value1 value2 = (output2146, value722, value1) := by
  rw [input2146_def, output2146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2144]
  try dsimp only
  rw [child2145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2144_skip, output2145_skip]
  kernel_rfl

theorem node2147_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2147 value722 value1 value2 = (output2147, value723, value1) := by
  rw [input2147_def, output2147_def]
  kernel_rfl

theorem node2148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2148 value723 value1 value2 = (output2148, value724, value1) := by
  rw [input2148_def, output2148_def]
  kernel_rfl

theorem node2149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2149 value724 value1 value2 = (output2149, value725, value1) := by
  rw [input2149_def, output2149_def]
  kernel_rfl

theorem node2150_cond_eq
    (child2148 : Flapjack.WordAlloc.removeDeadStructural input2148 value723 value1 value2 = (output2148, value724, value1))
    (child2149 : Flapjack.WordAlloc.removeDeadStructural input2149 value724 value1 value2 = (output2149, value725, value1)) : Flapjack.WordAlloc.removeDeadStructural input2150 value723 value1 value2 = (output2150, value725, value1) := by
  rw [input2150_def, output2150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2148]
  try dsimp only
  rw [child2149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2148_skip, output2149_skip]
  kernel_rfl

theorem node2151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2151 value725 value1 value2 = (output2151, value726, value1) := by
  rw [input2151_def, output2151_def]
  kernel_rfl

theorem node2152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2152 value726 value1 value2 = (output2152, value727, value1) := by
  rw [input2152_def, output2152_def]
  kernel_rfl

theorem node2153_cond_eq
    (child2151 : Flapjack.WordAlloc.removeDeadStructural input2151 value725 value1 value2 = (output2151, value726, value1))
    (child2152 : Flapjack.WordAlloc.removeDeadStructural input2152 value726 value1 value2 = (output2152, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2153 value725 value1 value2 = (output2153, value727, value1) := by
  rw [input2153_def, output2153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2151]
  try dsimp only
  rw [child2152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2151_skip, output2152_skip]
  kernel_rfl

theorem node2154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2154 value727 value1 value2 = (output2154, value727, value1) := by
  rw [input2154_def, output2154_def]
  kernel_rfl

theorem node2155_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2155 value727 value1 value2 = (output2155, value727, value1) := by
  rw [input2155_def, output2155_def]
  kernel_rfl

theorem node2156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2156 value727 value1 value2 = (output2156, value727, value1) := by
  rw [input2156_def, output2156_def]
  kernel_rfl

theorem node2157_cond_eq
    (child2155 : Flapjack.WordAlloc.removeDeadStructural input2155 value727 value1 value2 = (output2155, value727, value1))
    (child2156 : Flapjack.WordAlloc.removeDeadStructural input2156 value727 value1 value2 = (output2156, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2157 value727 value1 value2 = (output2157, value727, value1) := by
  rw [input2157_def, output2157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2155]
  try dsimp only
  rw [child2156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2155_skip, output2156_skip]
  kernel_rfl

theorem node2158_cond_eq
    (child2154 : Flapjack.WordAlloc.removeDeadStructural input2154 value727 value1 value2 = (output2154, value727, value1))
    (child2157 : Flapjack.WordAlloc.removeDeadStructural input2157 value727 value1 value2 = (output2157, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2158 value727 value1 value2 = (output2158, value727, value1) := by
  rw [input2158_def, output2158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2154]
  try dsimp only
  rw [child2157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2154_skip, output2157_skip]
  kernel_rfl

theorem node2159_cond_eq
    (child2153 : Flapjack.WordAlloc.removeDeadStructural input2153 value725 value1 value2 = (output2153, value727, value1))
    (child2158 : Flapjack.WordAlloc.removeDeadStructural input2158 value727 value1 value2 = (output2158, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2159 value725 value1 value2 = (output2159, value727, value1) := by
  rw [input2159_def, output2159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2153]
  try dsimp only
  rw [child2158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2153_skip, output2158_skip]
  kernel_rfl

theorem node2160_cond_eq
    (child2150 : Flapjack.WordAlloc.removeDeadStructural input2150 value723 value1 value2 = (output2150, value725, value1))
    (child2159 : Flapjack.WordAlloc.removeDeadStructural input2159 value725 value1 value2 = (output2159, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2160 value723 value1 value2 = (output2160, value727, value1) := by
  rw [input2160_def, output2160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2150]
  try dsimp only
  rw [child2159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2150_skip, output2159_skip]
  kernel_rfl

theorem node2161_cond_eq
    (child2147 : Flapjack.WordAlloc.removeDeadStructural input2147 value722 value1 value2 = (output2147, value723, value1))
    (child2160 : Flapjack.WordAlloc.removeDeadStructural input2160 value723 value1 value2 = (output2160, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2161 value722 value1 value2 = (output2161, value727, value1) := by
  rw [input2161_def, output2161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2147]
  try dsimp only
  rw [child2160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2147_skip, output2160_skip]
  kernel_rfl

theorem node2162_cond_eq
    (child2146 : Flapjack.WordAlloc.removeDeadStructural input2146 value720 value1 value2 = (output2146, value722, value1))
    (child2161 : Flapjack.WordAlloc.removeDeadStructural input2161 value722 value1 value2 = (output2161, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2162 value720 value1 value2 = (output2162, value727, value1) := by
  rw [input2162_def, output2162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2146]
  try dsimp only
  rw [child2161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2146_skip, output2161_skip]
  kernel_rfl

theorem node2163_cond_eq
    (child2143 : Flapjack.WordAlloc.removeDeadStructural input2143 value718 value1 value2 = (output2143, value720, value1))
    (child2162 : Flapjack.WordAlloc.removeDeadStructural input2162 value720 value1 value2 = (output2162, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2163 value718 value1 value2 = (output2163, value727, value1) := by
  rw [input2163_def, output2163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2143]
  try dsimp only
  rw [child2162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2143_skip, output2162_skip]
  kernel_rfl

theorem node2164_cond_eq
    (child2140 : Flapjack.WordAlloc.removeDeadStructural input2140 value716 value1 value2 = (output2140, value718, value1))
    (child2163 : Flapjack.WordAlloc.removeDeadStructural input2163 value718 value1 value2 = (output2163, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2164 value716 value1 value2 = (output2164, value727, value1) := by
  rw [input2164_def, output2164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2140]
  try dsimp only
  rw [child2163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2140_skip, output2163_skip]
  kernel_rfl

theorem node2165_cond_eq
    (child2137 : Flapjack.WordAlloc.removeDeadStructural input2137 value715 value1 value2 = (output2137, value716, value1))
    (child2164 : Flapjack.WordAlloc.removeDeadStructural input2164 value716 value1 value2 = (output2164, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2165 value715 value1 value2 = (output2165, value727, value1) := by
  rw [input2165_def, output2165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2137]
  try dsimp only
  rw [child2164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2137_skip, output2164_skip]
  kernel_rfl

theorem node2166_cond_eq
    (child2136 : Flapjack.WordAlloc.removeDeadStructural input2136 value713 value1 value2 = (output2136, value715, value1))
    (child2165 : Flapjack.WordAlloc.removeDeadStructural input2165 value715 value1 value2 = (output2165, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2166 value713 value1 value2 = (output2166, value727, value1) := by
  rw [input2166_def, output2166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2136]
  try dsimp only
  rw [child2165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2136_skip, output2165_skip]
  kernel_rfl

theorem node2167_cond_eq
    (child2133 : Flapjack.WordAlloc.removeDeadStructural input2133 value712 value1 value2 = (output2133, value713, value1))
    (child2166 : Flapjack.WordAlloc.removeDeadStructural input2166 value713 value1 value2 = (output2166, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2167 value712 value1 value2 = (output2167, value727, value1) := by
  rw [input2167_def, output2167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2133]
  try dsimp only
  rw [child2166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2133_skip, output2166_skip]
  kernel_rfl

theorem node2168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2168 value712 value1 value2 = (output2168, value712, value1) := by
  rw [input2168_def, output2168_def]
  kernel_rfl

theorem node2169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2169 value712 value1 value2 = (output2169, value712, value1) := by
  rw [input2169_def, output2169_def]
  kernel_rfl

theorem node2170_cond_eq
    (child2168 : Flapjack.WordAlloc.removeDeadStructural input2168 value712 value1 value2 = (output2168, value712, value1))
    (child2169 : Flapjack.WordAlloc.removeDeadStructural input2169 value712 value1 value2 = (output2169, value712, value1)) : Flapjack.WordAlloc.removeDeadStructural input2170 value712 value1 value2 = (output2170, value712, value1) := by
  rw [input2170_def, output2170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2168]
  try dsimp only
  rw [child2169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2168_skip, output2169_skip]
  kernel_rfl

theorem node2171_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2171 value712 value1 value2 = (output2171, value727, value1) := by
  rw [input2171_def, output2171_def]
  kernel_rfl

theorem node2172_cond_eq
    (child2170 : Flapjack.WordAlloc.removeDeadStructural input2170 value712 value1 value2 = (output2170, value712, value1))
    (child2171 : Flapjack.WordAlloc.removeDeadStructural input2171 value712 value1 value2 = (output2171, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2172 value712 value1 value2 = (output2172, value727, value1) := by
  rw [input2172_def, output2172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2170]
  try dsimp only
  rw [child2171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2170_skip, output2171_skip]
  kernel_rfl

theorem node2173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2173 value727 value1 value2 = (output2173, value727, value1) := by
  rw [input2173_def, output2173_def]
  kernel_rfl

theorem node2174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2174 value727 value1 value2 = (output2174, value727, value1) := by
  rw [input2174_def, output2174_def]
  kernel_rfl

theorem node2175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2175 value727 value1 value2 = (output2175, value727, value1) := by
  rw [input2175_def, output2175_def]
  kernel_rfl

theorem node2176_cond_eq
    (child2174 : Flapjack.WordAlloc.removeDeadStructural input2174 value727 value1 value2 = (output2174, value727, value1))
    (child2175 : Flapjack.WordAlloc.removeDeadStructural input2175 value727 value1 value2 = (output2175, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2176 value727 value1 value2 = (output2176, value727, value1) := by
  rw [input2176_def, output2176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2174]
  try dsimp only
  rw [child2175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2174_skip, output2175_skip]
  kernel_rfl

theorem node2177_cond_eq
    (child2173 : Flapjack.WordAlloc.removeDeadStructural input2173 value727 value1 value2 = (output2173, value727, value1))
    (child2176 : Flapjack.WordAlloc.removeDeadStructural input2176 value727 value1 value2 = (output2176, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2177 value727 value1 value2 = (output2177, value727, value1) := by
  rw [input2177_def, output2177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2173]
  try dsimp only
  rw [child2176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2173_skip, output2176_skip]
  kernel_rfl

theorem node2178_cond_eq
    (child2172 : Flapjack.WordAlloc.removeDeadStructural input2172 value712 value1 value2 = (output2172, value727, value1))
    (child2177 : Flapjack.WordAlloc.removeDeadStructural input2177 value727 value1 value2 = (output2177, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2178 value712 value1 value2 = (output2178, value727, value1) := by
  rw [input2178_def, output2178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2172]
  try dsimp only
  rw [child2177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2172_skip, output2177_skip]
  kernel_rfl

theorem node2179_cond_eq
    (child2167 : Flapjack.WordAlloc.removeDeadStructural input2167 value712 value1 value2 = (output2167, value727, value1))
    (child2178 : Flapjack.WordAlloc.removeDeadStructural input2178 value712 value1 value2 = (output2178, value727, value1)) : Flapjack.WordAlloc.removeDeadStructural input2179 value712 value1 value2 = (output2179, value729, value1) := by
  rw [input2179_def, output2179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child2167]
  try dsimp only
  rw [child2178]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2167_skip, output2178_skip]
  kernel_rfl

theorem node2180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2180 value729 value1 value2 = (output2180, value727, value1) := by
  rw [input2180_def, output2180_def]
  kernel_rfl

theorem node2181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2181 value727 value1 value2 = (output2181, value730, value1) := by
  rw [input2181_def, output2181_def]
  kernel_rfl

theorem node2182_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2182 value730 value1 value2 = (output2182, value730, value1) := by
  rw [input2182_def, output2182_def]
  kernel_rfl

theorem node2183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2183 value730 value1 value2 = (output2183, value731, value1) := by
  rw [input2183_def, output2183_def]
  kernel_rfl

theorem node2184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2184 value731 value1 value2 = (output2184, value732, value1) := by
  rw [input2184_def, output2184_def]
  kernel_rfl

theorem node2185_cond_eq
    (child2183 : Flapjack.WordAlloc.removeDeadStructural input2183 value730 value1 value2 = (output2183, value731, value1))
    (child2184 : Flapjack.WordAlloc.removeDeadStructural input2184 value731 value1 value2 = (output2184, value732, value1)) : Flapjack.WordAlloc.removeDeadStructural input2185 value730 value1 value2 = (output2185, value732, value1) := by
  rw [input2185_def, output2185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2183]
  try dsimp only
  rw [child2184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2183_skip, output2184_skip]
  kernel_rfl

theorem node2186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2186 value732 value1 value2 = (output2186, value733, value1) := by
  rw [input2186_def, output2186_def]
  kernel_rfl

theorem node2187_cond_eq
    (child2185 : Flapjack.WordAlloc.removeDeadStructural input2185 value730 value1 value2 = (output2185, value732, value1))
    (child2186 : Flapjack.WordAlloc.removeDeadStructural input2186 value732 value1 value2 = (output2186, value733, value1)) : Flapjack.WordAlloc.removeDeadStructural input2187 value730 value1 value2 = (output2187, value733, value1) := by
  rw [input2187_def, output2187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2185]
  try dsimp only
  rw [child2186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2185_skip, output2186_skip]
  kernel_rfl

theorem node2188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2188 value733 value1 value2 = (output2188, value734, value1) := by
  rw [input2188_def, output2188_def]
  kernel_rfl

theorem node2189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2189 value734 value1 value2 = (output2189, value735, value1) := by
  rw [input2189_def, output2189_def]
  kernel_rfl

theorem node2190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2190 value735 value1 value2 = (output2190, value736, value1) := by
  rw [input2190_def, output2190_def]
  kernel_rfl

theorem node2191_cond_eq
    (child2189 : Flapjack.WordAlloc.removeDeadStructural input2189 value734 value1 value2 = (output2189, value735, value1))
    (child2190 : Flapjack.WordAlloc.removeDeadStructural input2190 value735 value1 value2 = (output2190, value736, value1)) : Flapjack.WordAlloc.removeDeadStructural input2191 value734 value1 value2 = (output2191, value736, value1) := by
  rw [input2191_def, output2191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2189]
  try dsimp only
  rw [child2190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2189_skip, output2190_skip]
  kernel_rfl

theorem node2192_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2192 value736 value1 value2 = (output2192, value737, value1) := by
  rw [input2192_def, output2192_def]
  kernel_rfl

theorem node2193_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2193 value737 value1 value2 = (output2193, value738, value1) := by
  rw [input2193_def, output2193_def]
  kernel_rfl

theorem node2194_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2194 value738 value1 value2 = (output2194, value739, value1) := by
  rw [input2194_def, output2194_def]
  kernel_rfl

theorem node2195_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2195 value739 value1 value2 = (output2195, value740, value1) := by
  rw [input2195_def, output2195_def]
  kernel_rfl

theorem node2196_cond_eq
    (child2194 : Flapjack.WordAlloc.removeDeadStructural input2194 value738 value1 value2 = (output2194, value739, value1))
    (child2195 : Flapjack.WordAlloc.removeDeadStructural input2195 value739 value1 value2 = (output2195, value740, value1)) : Flapjack.WordAlloc.removeDeadStructural input2196 value738 value1 value2 = (output2196, value740, value1) := by
  rw [input2196_def, output2196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2194]
  try dsimp only
  rw [child2195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2194_skip, output2195_skip]
  kernel_rfl

theorem node2197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2197 value740 value1 value2 = (output2197, value741, value1) := by
  rw [input2197_def, output2197_def]
  kernel_rfl

theorem node2198_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2198 value741 value1 value2 = (output2198, value742, value1) := by
  rw [input2198_def, output2198_def]
  kernel_rfl

theorem node2199_cond_eq
    (child2197 : Flapjack.WordAlloc.removeDeadStructural input2197 value740 value1 value2 = (output2197, value741, value1))
    (child2198 : Flapjack.WordAlloc.removeDeadStructural input2198 value741 value1 value2 = (output2198, value742, value1)) : Flapjack.WordAlloc.removeDeadStructural input2199 value740 value1 value2 = (output2199, value742, value1) := by
  rw [input2199_def, output2199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2197]
  try dsimp only
  rw [child2198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2197_skip, output2198_skip]
  kernel_rfl

theorem node2200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2200 value742 value1 value2 = (output2200, value743, value1) := by
  rw [input2200_def, output2200_def]
  kernel_rfl

theorem node2201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2201 value743 value1 value2 = (output2201, value744, value1) := by
  rw [input2201_def, output2201_def]
  kernel_rfl

theorem node2202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2202 value744 value1 value2 = (output2202, value745, value1) := by
  rw [input2202_def, output2202_def]
  kernel_rfl

theorem node2203_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2203 value745 value1 value2 = (output2203, value746, value1) := by
  rw [input2203_def, output2203_def]
  kernel_rfl

theorem node2204_cond_eq
    (child2202 : Flapjack.WordAlloc.removeDeadStructural input2202 value744 value1 value2 = (output2202, value745, value1))
    (child2203 : Flapjack.WordAlloc.removeDeadStructural input2203 value745 value1 value2 = (output2203, value746, value1)) : Flapjack.WordAlloc.removeDeadStructural input2204 value744 value1 value2 = (output2204, value746, value1) := by
  rw [input2204_def, output2204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2202]
  try dsimp only
  rw [child2203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2202_skip, output2203_skip]
  kernel_rfl

theorem node2205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2205 value746 value1 value2 = (output2205, value747, value1) := by
  rw [input2205_def, output2205_def]
  kernel_rfl

theorem node2206_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2206 value747 value1 value2 = (output2206, value748, value1) := by
  rw [input2206_def, output2206_def]
  kernel_rfl

theorem node2207_cond_eq
    (child2205 : Flapjack.WordAlloc.removeDeadStructural input2205 value746 value1 value2 = (output2205, value747, value1))
    (child2206 : Flapjack.WordAlloc.removeDeadStructural input2206 value747 value1 value2 = (output2206, value748, value1)) : Flapjack.WordAlloc.removeDeadStructural input2207 value746 value1 value2 = (output2207, value748, value1) := by
  rw [input2207_def, output2207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2205]
  try dsimp only
  rw [child2206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2205_skip, output2206_skip]
  kernel_rfl

theorem node2208_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2208 value748 value1 value2 = (output2208, value749, value1) := by
  rw [input2208_def, output2208_def]
  kernel_rfl

theorem node2209_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2209 value749 value1 value2 = (output2209, value750, value1) := by
  rw [input2209_def, output2209_def]
  kernel_rfl

theorem node2210_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2210 value750 value1 value2 = (output2210, value751, value1) := by
  rw [input2210_def, output2210_def]
  kernel_rfl

theorem node2211_cond_eq
    (child2209 : Flapjack.WordAlloc.removeDeadStructural input2209 value749 value1 value2 = (output2209, value750, value1))
    (child2210 : Flapjack.WordAlloc.removeDeadStructural input2210 value750 value1 value2 = (output2210, value751, value1)) : Flapjack.WordAlloc.removeDeadStructural input2211 value749 value1 value2 = (output2211, value751, value1) := by
  rw [input2211_def, output2211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2209]
  try dsimp only
  rw [child2210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2209_skip, output2210_skip]
  kernel_rfl

theorem node2212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2212 value751 value1 value2 = (output2212, value752, value1) := by
  rw [input2212_def, output2212_def]
  kernel_rfl

theorem node2213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2213 value752 value1 value2 = (output2213, value753, value1) := by
  rw [input2213_def, output2213_def]
  kernel_rfl

theorem node2214_cond_eq
    (child2212 : Flapjack.WordAlloc.removeDeadStructural input2212 value751 value1 value2 = (output2212, value752, value1))
    (child2213 : Flapjack.WordAlloc.removeDeadStructural input2213 value752 value1 value2 = (output2213, value753, value1)) : Flapjack.WordAlloc.removeDeadStructural input2214 value751 value1 value2 = (output2214, value753, value1) := by
  rw [input2214_def, output2214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2212]
  try dsimp only
  rw [child2213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2212_skip, output2213_skip]
  kernel_rfl

theorem node2215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2215 value753 value1 value2 = (output2215, value754, value1) := by
  rw [input2215_def, output2215_def]
  kernel_rfl

theorem node2216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2216 value754 value1 value2 = (output2216, value755, value1) := by
  rw [input2216_def, output2216_def]
  kernel_rfl

theorem node2217_cond_eq
    (child2215 : Flapjack.WordAlloc.removeDeadStructural input2215 value753 value1 value2 = (output2215, value754, value1))
    (child2216 : Flapjack.WordAlloc.removeDeadStructural input2216 value754 value1 value2 = (output2216, value755, value1)) : Flapjack.WordAlloc.removeDeadStructural input2217 value753 value1 value2 = (output2217, value755, value1) := by
  rw [input2217_def, output2217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2215]
  try dsimp only
  rw [child2216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2215_skip, output2216_skip]
  kernel_rfl

theorem node2218_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2218 value755 value1 value2 = (output2218, value756, value1) := by
  rw [input2218_def, output2218_def]
  kernel_rfl

theorem node2219_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2219 value756 value1 value2 = (output2219, value757, value1) := by
  rw [input2219_def, output2219_def]
  kernel_rfl

theorem node2220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2220 value757 value1 value2 = (output2220, value758, value1) := by
  rw [input2220_def, output2220_def]
  kernel_rfl

theorem node2221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2221 value758 value1 value2 = (output2221, value759, value1) := by
  rw [input2221_def, output2221_def]
  kernel_rfl

theorem node2222_cond_eq
    (child2220 : Flapjack.WordAlloc.removeDeadStructural input2220 value757 value1 value2 = (output2220, value758, value1))
    (child2221 : Flapjack.WordAlloc.removeDeadStructural input2221 value758 value1 value2 = (output2221, value759, value1)) : Flapjack.WordAlloc.removeDeadStructural input2222 value757 value1 value2 = (output2222, value759, value1) := by
  rw [input2222_def, output2222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2220]
  try dsimp only
  rw [child2221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2220_skip, output2221_skip]
  kernel_rfl

theorem node2223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2223 value759 value1 value2 = (output2223, value759, value1) := by
  rw [input2223_def, output2223_def]
  kernel_rfl

theorem node2224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2224 value760 value1 value761 = (output2224, value762, value1) := by
  rw [input2224_def, output2224_def]
  kernel_rfl

theorem node2225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2225 value762 value1 value761 = (output2225, value762, value1) := by
  rw [input2225_def, output2225_def]
  kernel_rfl

theorem node2226_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2226 value762 value1 value761 = (output2226, value762, value1) := by
  rw [input2226_def, output2226_def]
  kernel_rfl

theorem node2227_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2227 value762 value1 value761 = (output2227, value762, value1) := by
  rw [input2227_def, output2227_def]
  kernel_rfl

theorem node2228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2228 value762 value1 value761 = (output2228, value762, value1) := by
  rw [input2228_def, output2228_def]
  kernel_rfl

theorem node2229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2229 value762 value1 value761 = (output2229, value762, value1) := by
  rw [input2229_def, output2229_def]
  kernel_rfl

theorem node2230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2230 value762 value1 value761 = (output2230, value762, value1) := by
  rw [input2230_def, output2230_def]
  kernel_rfl

theorem node2231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2231 value762 value1 value761 = (output2231, value762, value1) := by
  rw [input2231_def, output2231_def]
  kernel_rfl

theorem node2232_cond_eq
    (child2230 : Flapjack.WordAlloc.removeDeadStructural input2230 value762 value1 value761 = (output2230, value762, value1))
    (child2231 : Flapjack.WordAlloc.removeDeadStructural input2231 value762 value1 value761 = (output2231, value762, value1)) : Flapjack.WordAlloc.removeDeadStructural input2232 value762 value1 value761 = (output2232, value762, value1) := by
  rw [input2232_def, output2232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2230]
  try dsimp only
  rw [child2231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2230_skip, output2231_skip]
  kernel_rfl

theorem node2233_cond_eq
    (child2229 : Flapjack.WordAlloc.removeDeadStructural input2229 value762 value1 value761 = (output2229, value762, value1))
    (child2232 : Flapjack.WordAlloc.removeDeadStructural input2232 value762 value1 value761 = (output2232, value762, value1)) : Flapjack.WordAlloc.removeDeadStructural input2233 value762 value1 value761 = (output2233, value762, value1) := by
  rw [input2233_def, output2233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2229]
  try dsimp only
  rw [child2232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2229_skip, output2232_skip]
  kernel_rfl

theorem node2234_cond_eq
    (child2228 : Flapjack.WordAlloc.removeDeadStructural input2228 value762 value1 value761 = (output2228, value762, value1))
    (child2233 : Flapjack.WordAlloc.removeDeadStructural input2233 value762 value1 value761 = (output2233, value762, value1)) : Flapjack.WordAlloc.removeDeadStructural input2234 value762 value1 value761 = (output2234, value762, value1) := by
  rw [input2234_def, output2234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2228]
  try dsimp only
  rw [child2233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2228_skip, output2233_skip]
  kernel_rfl

theorem node2235_cond_eq
    (child2227 : Flapjack.WordAlloc.removeDeadStructural input2227 value762 value1 value761 = (output2227, value762, value1))
    (child2234 : Flapjack.WordAlloc.removeDeadStructural input2234 value762 value1 value761 = (output2234, value762, value1)) : Flapjack.WordAlloc.removeDeadStructural input2235 value762 value1 value761 = (output2235, value762, value1) := by
  rw [input2235_def, output2235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2227]
  try dsimp only
  rw [child2234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2227_skip, output2234_skip]
  kernel_rfl

theorem node2236_cond_eq
    (child2226 : Flapjack.WordAlloc.removeDeadStructural input2226 value762 value1 value761 = (output2226, value762, value1))
    (child2235 : Flapjack.WordAlloc.removeDeadStructural input2235 value762 value1 value761 = (output2235, value762, value1)) : Flapjack.WordAlloc.removeDeadStructural input2236 value762 value1 value761 = (output2236, value762, value1) := by
  rw [input2236_def, output2236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2226]
  try dsimp only
  rw [child2235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2226_skip, output2235_skip]
  kernel_rfl

theorem node2237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2237 value762 value1 value761 = (output2237, value763, value1) := by
  rw [input2237_def, output2237_def]
  kernel_rfl

theorem node2238_cond_eq
    (child2236 : Flapjack.WordAlloc.removeDeadStructural input2236 value762 value1 value761 = (output2236, value762, value1))
    (child2237 : Flapjack.WordAlloc.removeDeadStructural input2237 value762 value1 value761 = (output2237, value763, value1)) : Flapjack.WordAlloc.removeDeadStructural input2238 value762 value1 value761 = (output2238, value763, value1) := by
  rw [input2238_def, output2238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2236]
  try dsimp only
  rw [child2237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2236_skip, output2237_skip]
  kernel_rfl

theorem node2239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2239 value763 value1 value761 = (output2239, value760, value1) := by
  rw [input2239_def, output2239_def]
  kernel_rfl

theorem node2240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2240 value760 value1 value761 = (output2240, value763, value1) := by
  rw [input2240_def, output2240_def]
  kernel_rfl

theorem node2241_cond_eq
    (child2239 : Flapjack.WordAlloc.removeDeadStructural input2239 value763 value1 value761 = (output2239, value760, value1))
    (child2240 : Flapjack.WordAlloc.removeDeadStructural input2240 value760 value1 value761 = (output2240, value763, value1)) : Flapjack.WordAlloc.removeDeadStructural input2241 value763 value1 value761 = (output2241, value763, value1) := by
  rw [input2241_def, output2241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2239]
  try dsimp only
  rw [child2240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2239_skip, output2240_skip]
  kernel_rfl

theorem node2242_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2242 value763 value1 value761 = (output2242, value764, value1) := by
  rw [input2242_def, output2242_def]
  kernel_rfl

theorem node2243_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2243 value764 value1 value761 = (output2243, value765, value1) := by
  rw [input2243_def, output2243_def]
  kernel_rfl

theorem node2244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2244 value765 value1 value761 = (output2244, value766, value1) := by
  rw [input2244_def, output2244_def]
  kernel_rfl

theorem node2245_cond_eq
    (child2243 : Flapjack.WordAlloc.removeDeadStructural input2243 value764 value1 value761 = (output2243, value765, value1))
    (child2244 : Flapjack.WordAlloc.removeDeadStructural input2244 value765 value1 value761 = (output2244, value766, value1)) : Flapjack.WordAlloc.removeDeadStructural input2245 value764 value1 value761 = (output2245, value766, value1) := by
  rw [input2245_def, output2245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2243]
  try dsimp only
  rw [child2244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2243_skip, output2244_skip]
  kernel_rfl

theorem node2246_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2246 value766 value1 value761 = (output2246, value766, value1) := by
  rw [input2246_def, output2246_def]
  kernel_rfl

theorem node2247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2247 value767 value1 value768 = (output2247, value769, value1) := by
  rw [input2247_def, output2247_def]
  kernel_rfl

theorem node2248_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2248 value769 value1 value768 = (output2248, value769, value1) := by
  rw [input2248_def, output2248_def]
  kernel_rfl

theorem node2249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2249 value769 value1 value768 = (output2249, value769, value1) := by
  rw [input2249_def, output2249_def]
  kernel_rfl

theorem node2250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2250 value769 value1 value768 = (output2250, value769, value1) := by
  rw [input2250_def, output2250_def]
  kernel_rfl

theorem node2251_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2251 value769 value1 value768 = (output2251, value769, value1) := by
  rw [input2251_def, output2251_def]
  kernel_rfl

theorem node2252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2252 value769 value1 value768 = (output2252, value769, value1) := by
  rw [input2252_def, output2252_def]
  kernel_rfl

theorem node2253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2253 value769 value1 value768 = (output2253, value769, value1) := by
  rw [input2253_def, output2253_def]
  kernel_rfl

theorem node2254_cond_eq
    (child2252 : Flapjack.WordAlloc.removeDeadStructural input2252 value769 value1 value768 = (output2252, value769, value1))
    (child2253 : Flapjack.WordAlloc.removeDeadStructural input2253 value769 value1 value768 = (output2253, value769, value1)) : Flapjack.WordAlloc.removeDeadStructural input2254 value769 value1 value768 = (output2254, value769, value1) := by
  rw [input2254_def, output2254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2252]
  try dsimp only
  rw [child2253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2252_skip, output2253_skip]
  kernel_rfl

theorem node2255_cond_eq
    (child2251 : Flapjack.WordAlloc.removeDeadStructural input2251 value769 value1 value768 = (output2251, value769, value1))
    (child2254 : Flapjack.WordAlloc.removeDeadStructural input2254 value769 value1 value768 = (output2254, value769, value1)) : Flapjack.WordAlloc.removeDeadStructural input2255 value769 value1 value768 = (output2255, value769, value1) := by
  rw [input2255_def, output2255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2251]
  try dsimp only
  rw [child2254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2251_skip, output2254_skip]
  kernel_rfl

theorem node2256_cond_eq
    (child2250 : Flapjack.WordAlloc.removeDeadStructural input2250 value769 value1 value768 = (output2250, value769, value1))
    (child2255 : Flapjack.WordAlloc.removeDeadStructural input2255 value769 value1 value768 = (output2255, value769, value1)) : Flapjack.WordAlloc.removeDeadStructural input2256 value769 value1 value768 = (output2256, value769, value1) := by
  rw [input2256_def, output2256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2250]
  try dsimp only
  rw [child2255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2250_skip, output2255_skip]
  kernel_rfl

theorem node2257_cond_eq
    (child2249 : Flapjack.WordAlloc.removeDeadStructural input2249 value769 value1 value768 = (output2249, value769, value1))
    (child2256 : Flapjack.WordAlloc.removeDeadStructural input2256 value769 value1 value768 = (output2256, value769, value1)) : Flapjack.WordAlloc.removeDeadStructural input2257 value769 value1 value768 = (output2257, value769, value1) := by
  rw [input2257_def, output2257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2249]
  try dsimp only
  rw [child2256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2249_skip, output2256_skip]
  kernel_rfl

theorem node2258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2258 value769 value1 value768 = (output2258, value770, value1) := by
  rw [input2258_def, output2258_def]
  kernel_rfl

theorem node2259_cond_eq
    (child2257 : Flapjack.WordAlloc.removeDeadStructural input2257 value769 value1 value768 = (output2257, value769, value1))
    (child2258 : Flapjack.WordAlloc.removeDeadStructural input2258 value769 value1 value768 = (output2258, value770, value1)) : Flapjack.WordAlloc.removeDeadStructural input2259 value769 value1 value768 = (output2259, value770, value1) := by
  rw [input2259_def, output2259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2257]
  try dsimp only
  rw [child2258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2257_skip, output2258_skip]
  kernel_rfl

theorem node2260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2260 value770 value1 value768 = (output2260, value767, value1) := by
  rw [input2260_def, output2260_def]
  kernel_rfl

theorem node2261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2261 value767 value1 value768 = (output2261, value770, value1) := by
  rw [input2261_def, output2261_def]
  kernel_rfl

theorem node2262_cond_eq
    (child2260 : Flapjack.WordAlloc.removeDeadStructural input2260 value770 value1 value768 = (output2260, value767, value1))
    (child2261 : Flapjack.WordAlloc.removeDeadStructural input2261 value767 value1 value768 = (output2261, value770, value1)) : Flapjack.WordAlloc.removeDeadStructural input2262 value770 value1 value768 = (output2262, value770, value1) := by
  rw [input2262_def, output2262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2260]
  try dsimp only
  rw [child2261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2260_skip, output2261_skip]
  kernel_rfl

theorem node2263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2263 value770 value1 value768 = (output2263, value771, value1) := by
  rw [input2263_def, output2263_def]
  kernel_rfl

theorem node2264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2264 value771 value1 value768 = (output2264, value772, value1) := by
  rw [input2264_def, output2264_def]
  kernel_rfl

theorem node2265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2265 value772 value1 value768 = (output2265, value773, value1) := by
  rw [input2265_def, output2265_def]
  kernel_rfl

theorem node2266_cond_eq
    (child2264 : Flapjack.WordAlloc.removeDeadStructural input2264 value771 value1 value768 = (output2264, value772, value1))
    (child2265 : Flapjack.WordAlloc.removeDeadStructural input2265 value772 value1 value768 = (output2265, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input2266 value771 value1 value768 = (output2266, value773, value1) := by
  rw [input2266_def, output2266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2264]
  try dsimp only
  rw [child2265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2264_skip, output2265_skip]
  kernel_rfl

theorem node2267_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2267 value773 value1 value768 = (output2267, value774, value1) := by
  rw [input2267_def, output2267_def]
  kernel_rfl

theorem node2268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2268 value774 value1 value768 = (output2268, value775, value1) := by
  rw [input2268_def, output2268_def]
  kernel_rfl

theorem node2269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2269 value775 value1 value768 = (output2269, value776, value1) := by
  rw [input2269_def, output2269_def]
  kernel_rfl

theorem node2270_cond_eq
    (child2268 : Flapjack.WordAlloc.removeDeadStructural input2268 value774 value1 value768 = (output2268, value775, value1))
    (child2269 : Flapjack.WordAlloc.removeDeadStructural input2269 value775 value1 value768 = (output2269, value776, value1)) : Flapjack.WordAlloc.removeDeadStructural input2270 value774 value1 value768 = (output2270, value776, value1) := by
  rw [input2270_def, output2270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2268]
  try dsimp only
  rw [child2269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2268_skip, output2269_skip]
  kernel_rfl

theorem node2271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2271 value776 value1 value768 = (output2271, value776, value1) := by
  rw [input2271_def, output2271_def]
  kernel_rfl

theorem node2272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2272 value776 value1 value768 = (output2272, value777, value1) := by
  rw [input2272_def, output2272_def]
  kernel_rfl

theorem node2273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2273 value777 value1 value768 = (output2273, value778, value1) := by
  rw [input2273_def, output2273_def]
  kernel_rfl

theorem node2274_cond_eq
    (child2272 : Flapjack.WordAlloc.removeDeadStructural input2272 value776 value1 value768 = (output2272, value777, value1))
    (child2273 : Flapjack.WordAlloc.removeDeadStructural input2273 value777 value1 value768 = (output2273, value778, value1)) : Flapjack.WordAlloc.removeDeadStructural input2274 value776 value1 value768 = (output2274, value778, value1) := by
  rw [input2274_def, output2274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2272]
  try dsimp only
  rw [child2273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2272_skip, output2273_skip]
  kernel_rfl

theorem node2275_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2275 value778 value1 value768 = (output2275, value779, value1) := by
  rw [input2275_def, output2275_def]
  kernel_rfl

theorem node2276_cond_eq
    (child2274 : Flapjack.WordAlloc.removeDeadStructural input2274 value776 value1 value768 = (output2274, value778, value1))
    (child2275 : Flapjack.WordAlloc.removeDeadStructural input2275 value778 value1 value768 = (output2275, value779, value1)) : Flapjack.WordAlloc.removeDeadStructural input2276 value776 value1 value768 = (output2276, value779, value1) := by
  rw [input2276_def, output2276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2274]
  try dsimp only
  rw [child2275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2274_skip, output2275_skip]
  kernel_rfl

theorem node2277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2277 value779 value1 value768 = (output2277, value780, value1) := by
  rw [input2277_def, output2277_def]
  kernel_rfl

theorem node2278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2278 value780 value1 value768 = (output2278, value780, value1) := by
  rw [input2278_def, output2278_def]
  kernel_rfl

theorem node2279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2279 value780 value1 value768 = (output2279, value780, value1) := by
  rw [input2279_def, output2279_def]
  kernel_rfl

theorem node2280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2280 value780 value1 value768 = (output2280, value780, value1) := by
  rw [input2280_def, output2280_def]
  kernel_rfl

theorem node2281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2281 value780 value1 value768 = (output2281, value781, value1) := by
  rw [input2281_def, output2281_def]
  kernel_rfl

theorem node2282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2282 value781 value1 value768 = (output2282, value782, value1) := by
  rw [input2282_def, output2282_def]
  kernel_rfl

theorem node2283_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2283 value782 value1 value768 = (output2283, value783, value1) := by
  rw [input2283_def, output2283_def]
  kernel_rfl

theorem node2284_cond_eq
    (child2282 : Flapjack.WordAlloc.removeDeadStructural input2282 value781 value1 value768 = (output2282, value782, value1))
    (child2283 : Flapjack.WordAlloc.removeDeadStructural input2283 value782 value1 value768 = (output2283, value783, value1)) : Flapjack.WordAlloc.removeDeadStructural input2284 value781 value1 value768 = (output2284, value783, value1) := by
  rw [input2284_def, output2284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2282]
  try dsimp only
  rw [child2283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2282_skip, output2283_skip]
  kernel_rfl

theorem node2285_cond_eq
    (child2281 : Flapjack.WordAlloc.removeDeadStructural input2281 value780 value1 value768 = (output2281, value781, value1))
    (child2284 : Flapjack.WordAlloc.removeDeadStructural input2284 value781 value1 value768 = (output2284, value783, value1)) : Flapjack.WordAlloc.removeDeadStructural input2285 value780 value1 value768 = (output2285, value783, value1) := by
  rw [input2285_def, output2285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2281]
  try dsimp only
  rw [child2284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2281_skip, output2284_skip]
  kernel_rfl

theorem node2286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2286 value783 value1 value768 = (output2286, value784, value1) := by
  rw [input2286_def, output2286_def]
  kernel_rfl

theorem node2287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2287 value784 value1 value768 = (output2287, value785, value1) := by
  rw [input2287_def, output2287_def]
  kernel_rfl

theorem node2288_cond_eq
    (child2286 : Flapjack.WordAlloc.removeDeadStructural input2286 value783 value1 value768 = (output2286, value784, value1))
    (child2287 : Flapjack.WordAlloc.removeDeadStructural input2287 value784 value1 value768 = (output2287, value785, value1)) : Flapjack.WordAlloc.removeDeadStructural input2288 value783 value1 value768 = (output2288, value785, value1) := by
  rw [input2288_def, output2288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2286]
  try dsimp only
  rw [child2287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2286_skip, output2287_skip]
  kernel_rfl

theorem node2289_cond_eq
    (child2285 : Flapjack.WordAlloc.removeDeadStructural input2285 value780 value1 value768 = (output2285, value783, value1))
    (child2288 : Flapjack.WordAlloc.removeDeadStructural input2288 value783 value1 value768 = (output2288, value785, value1)) : Flapjack.WordAlloc.removeDeadStructural input2289 value780 value1 value768 = (output2289, value785, value1) := by
  rw [input2289_def, output2289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2285]
  try dsimp only
  rw [child2288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2285_skip, output2288_skip]
  kernel_rfl

theorem node2290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2290 value785 value1 value768 = (output2290, value786, value1) := by
  rw [input2290_def, output2290_def]
  kernel_rfl

theorem node2291_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2291 value786 value1 value768 = (output2291, value787, value1) := by
  rw [input2291_def, output2291_def]
  kernel_rfl

theorem node2292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2292 value787 value1 value768 = (output2292, value788, value1) := by
  rw [input2292_def, output2292_def]
  kernel_rfl

theorem node2293_cond_eq
    (child2291 : Flapjack.WordAlloc.removeDeadStructural input2291 value786 value1 value768 = (output2291, value787, value1))
    (child2292 : Flapjack.WordAlloc.removeDeadStructural input2292 value787 value1 value768 = (output2292, value788, value1)) : Flapjack.WordAlloc.removeDeadStructural input2293 value786 value1 value768 = (output2293, value788, value1) := by
  rw [input2293_def, output2293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2291]
  try dsimp only
  rw [child2292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2291_skip, output2292_skip]
  kernel_rfl

theorem node2294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2294 value788 value1 value768 = (output2294, value789, value1) := by
  rw [input2294_def, output2294_def]
  kernel_rfl

theorem node2295_cond_eq
    (child2293 : Flapjack.WordAlloc.removeDeadStructural input2293 value786 value1 value768 = (output2293, value788, value1))
    (child2294 : Flapjack.WordAlloc.removeDeadStructural input2294 value788 value1 value768 = (output2294, value789, value1)) : Flapjack.WordAlloc.removeDeadStructural input2295 value786 value1 value768 = (output2295, value789, value1) := by
  rw [input2295_def, output2295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2293]
  try dsimp only
  rw [child2294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2293_skip, output2294_skip]
  kernel_rfl

theorem node2296_cond_eq
    (child2290 : Flapjack.WordAlloc.removeDeadStructural input2290 value785 value1 value768 = (output2290, value786, value1))
    (child2295 : Flapjack.WordAlloc.removeDeadStructural input2295 value786 value1 value768 = (output2295, value789, value1)) : Flapjack.WordAlloc.removeDeadStructural input2296 value785 value1 value768 = (output2296, value789, value1) := by
  rw [input2296_def, output2296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2290]
  try dsimp only
  rw [child2295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2290_skip, output2295_skip]
  kernel_rfl

theorem node2297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2297 value789 value1 value768 = (output2297, value790, value1) := by
  rw [input2297_def, output2297_def]
  kernel_rfl

theorem node2298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2298 value790 value1 value768 = (output2298, value791, value1) := by
  rw [input2298_def, output2298_def]
  kernel_rfl

theorem node2299_cond_eq
    (child2297 : Flapjack.WordAlloc.removeDeadStructural input2297 value789 value1 value768 = (output2297, value790, value1))
    (child2298 : Flapjack.WordAlloc.removeDeadStructural input2298 value790 value1 value768 = (output2298, value791, value1)) : Flapjack.WordAlloc.removeDeadStructural input2299 value789 value1 value768 = (output2299, value791, value1) := by
  rw [input2299_def, output2299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2297]
  try dsimp only
  rw [child2298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2297_skip, output2298_skip]
  kernel_rfl

theorem node2300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2300 value791 value1 value768 = (output2300, value792, value1) := by
  rw [input2300_def, output2300_def]
  kernel_rfl

theorem node2301_cond_eq
    (child2299 : Flapjack.WordAlloc.removeDeadStructural input2299 value789 value1 value768 = (output2299, value791, value1))
    (child2300 : Flapjack.WordAlloc.removeDeadStructural input2300 value791 value1 value768 = (output2300, value792, value1)) : Flapjack.WordAlloc.removeDeadStructural input2301 value789 value1 value768 = (output2301, value792, value1) := by
  rw [input2301_def, output2301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2299]
  try dsimp only
  rw [child2300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2299_skip, output2300_skip]
  kernel_rfl

theorem node2302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2302 value792 value1 value768 = (output2302, value793, value1) := by
  rw [input2302_def, output2302_def]
  kernel_rfl

theorem node2303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2303 value793 value1 value768 = (output2303, value794, value1) := by
  rw [input2303_def, output2303_def]
  kernel_rfl

#print axioms node2303_cond_eq
end InitECandidate.Proofs.DeadStages875.Parallel
