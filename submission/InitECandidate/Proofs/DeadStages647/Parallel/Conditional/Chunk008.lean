import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages647.Parallel.Data.Chunk008
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages647.Parallel
theorem node2048_cond_eq
    (child1716 : Flapjack.WordAlloc.removeDeadStructural input1716 value947 value1 value2 = (output1716, value951, value1))
    (child2047 : Flapjack.WordAlloc.removeDeadStructural input2047 value951 value1 value2 = (output2047, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2048 value947 value1 value2 = (output2048, value1100, value1) := by
  rw [input2048_def, output2048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1716]
  try dsimp only
  rw [child2047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1716_skip, output2047_skip]
  kernel_rfl

theorem node2049_cond_eq
    (child1709 : Flapjack.WordAlloc.removeDeadStructural input1709 value946 value1 value2 = (output1709, value947, value1))
    (child2048 : Flapjack.WordAlloc.removeDeadStructural input2048 value947 value1 value2 = (output2048, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2049 value946 value1 value2 = (output2049, value1100, value1) := by
  rw [input2049_def, output2049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1709]
  try dsimp only
  rw [child2048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1709_skip, output2048_skip]
  kernel_rfl

theorem node2050_cond_eq
    (child1708 : Flapjack.WordAlloc.removeDeadStructural input1708 value943 value1 value2 = (output1708, value946, value1))
    (child2049 : Flapjack.WordAlloc.removeDeadStructural input2049 value946 value1 value2 = (output2049, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2050 value943 value1 value2 = (output2050, value1100, value1) := by
  rw [input2050_def, output2050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1708]
  try dsimp only
  rw [child2049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1708_skip, output2049_skip]
  kernel_rfl

theorem node2051_cond_eq
    (child1703 : Flapjack.WordAlloc.removeDeadStructural input1703 value942 value1 value2 = (output1703, value943, value1))
    (child2050 : Flapjack.WordAlloc.removeDeadStructural input2050 value943 value1 value2 = (output2050, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2051 value942 value1 value2 = (output2051, value1100, value1) := by
  rw [input2051_def, output2051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1703]
  try dsimp only
  rw [child2050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1703_skip, output2050_skip]
  kernel_rfl

theorem node2052_cond_eq
    (child1702 : Flapjack.WordAlloc.removeDeadStructural input1702 value939 value1 value2 = (output1702, value942, value1))
    (child2051 : Flapjack.WordAlloc.removeDeadStructural input2051 value942 value1 value2 = (output2051, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2052 value939 value1 value2 = (output2052, value1100, value1) := by
  rw [input2052_def, output2052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1702]
  try dsimp only
  rw [child2051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1702_skip, output2051_skip]
  kernel_rfl

theorem node2053_cond_eq
    (child1697 : Flapjack.WordAlloc.removeDeadStructural input1697 value938 value1 value2 = (output1697, value939, value1))
    (child2052 : Flapjack.WordAlloc.removeDeadStructural input2052 value939 value1 value2 = (output2052, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2053 value938 value1 value2 = (output2053, value1100, value1) := by
  rw [input2053_def, output2053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1697]
  try dsimp only
  rw [child2052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1697_skip, output2052_skip]
  kernel_rfl

theorem node2054_cond_eq
    (child1696 : Flapjack.WordAlloc.removeDeadStructural input1696 value938 value1 value2 = (output1696, value938, value1))
    (child2053 : Flapjack.WordAlloc.removeDeadStructural input2053 value938 value1 value2 = (output2053, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2054 value938 value1 value2 = (output2054, value1100, value1) := by
  rw [input2054_def, output2054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1696]
  try dsimp only
  rw [child2053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1696_skip, output2053_skip]
  kernel_rfl

theorem node2055_cond_eq
    (child1695 : Flapjack.WordAlloc.removeDeadStructural input1695 value938 value1 value2 = (output1695, value938, value1))
    (child2054 : Flapjack.WordAlloc.removeDeadStructural input2054 value938 value1 value2 = (output2054, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2055 value938 value1 value2 = (output2055, value1100, value1) := by
  rw [input2055_def, output2055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1695]
  try dsimp only
  rw [child2054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1695_skip, output2054_skip]
  kernel_rfl

theorem node2056_cond_eq
    (child1694 : Flapjack.WordAlloc.removeDeadStructural input1694 value935 value1 value2 = (output1694, value938, value1))
    (child2055 : Flapjack.WordAlloc.removeDeadStructural input2055 value938 value1 value2 = (output2055, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2056 value935 value1 value2 = (output2056, value1100, value1) := by
  rw [input2056_def, output2056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1694]
  try dsimp only
  rw [child2055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1694_skip, output2055_skip]
  kernel_rfl

theorem node2057_cond_eq
    (child1689 : Flapjack.WordAlloc.removeDeadStructural input1689 value932 value1 value2 = (output1689, value935, value1))
    (child2056 : Flapjack.WordAlloc.removeDeadStructural input2056 value935 value1 value2 = (output2056, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2057 value932 value1 value2 = (output2057, value1100, value1) := by
  rw [input2057_def, output2057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1689]
  try dsimp only
  rw [child2056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1689_skip, output2056_skip]
  kernel_rfl

theorem node2058_cond_eq
    (child1684 : Flapjack.WordAlloc.removeDeadStructural input1684 value928 value1 value2 = (output1684, value932, value1))
    (child2057 : Flapjack.WordAlloc.removeDeadStructural input2057 value932 value1 value2 = (output2057, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2058 value928 value1 value2 = (output2058, value1100, value1) := by
  rw [input2058_def, output2058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1684]
  try dsimp only
  rw [child2057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1684_skip, output2057_skip]
  kernel_rfl

theorem node2059_cond_eq
    (child1677 : Flapjack.WordAlloc.removeDeadStructural input1677 value928 value1 value2 = (output1677, value928, value1))
    (child2058 : Flapjack.WordAlloc.removeDeadStructural input2058 value928 value1 value2 = (output2058, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2059 value928 value1 value2 = (output2059, value1100, value1) := by
  rw [input2059_def, output2059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1677]
  try dsimp only
  rw [child2058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1677_skip, output2058_skip]
  kernel_rfl

theorem node2060_cond_eq
    (child1676 : Flapjack.WordAlloc.removeDeadStructural input1676 value928 value1 value2 = (output1676, value928, value1))
    (child2059 : Flapjack.WordAlloc.removeDeadStructural input2059 value928 value1 value2 = (output2059, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2060 value928 value1 value2 = (output2060, value1100, value1) := by
  rw [input2060_def, output2060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1676]
  try dsimp only
  rw [child2059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1676_skip, output2059_skip]
  kernel_rfl

theorem node2061_cond_eq
    (child1675 : Flapjack.WordAlloc.removeDeadStructural input1675 value927 value1 value2 = (output1675, value928, value1))
    (child2060 : Flapjack.WordAlloc.removeDeadStructural input2060 value928 value1 value2 = (output2060, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2061 value927 value1 value2 = (output2061, value1100, value1) := by
  rw [input2061_def, output2061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1675]
  try dsimp only
  rw [child2060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1675_skip, output2060_skip]
  kernel_rfl

theorem node2062_cond_eq
    (child1674 : Flapjack.WordAlloc.removeDeadStructural input1674 value926 value1 value2 = (output1674, value927, value1))
    (child2061 : Flapjack.WordAlloc.removeDeadStructural input2061 value927 value1 value2 = (output2061, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2062 value926 value1 value2 = (output2062, value1100, value1) := by
  rw [input2062_def, output2062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1674]
  try dsimp only
  rw [child2061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1674_skip, output2061_skip]
  kernel_rfl

theorem node2063_cond_eq
    (child1673 : Flapjack.WordAlloc.removeDeadStructural input1673 value923 value1 value2 = (output1673, value926, value1))
    (child2062 : Flapjack.WordAlloc.removeDeadStructural input2062 value926 value1 value2 = (output2062, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2063 value923 value1 value2 = (output2063, value1100, value1) := by
  rw [input2063_def, output2063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1673]
  try dsimp only
  rw [child2062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1673_skip, output2062_skip]
  kernel_rfl

theorem node2064_cond_eq
    (child1668 : Flapjack.WordAlloc.removeDeadStructural input1668 value922 value1 value2 = (output1668, value923, value1))
    (child2063 : Flapjack.WordAlloc.removeDeadStructural input2063 value923 value1 value2 = (output2063, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2064 value922 value1 value2 = (output2064, value1100, value1) := by
  rw [input2064_def, output2064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1668]
  try dsimp only
  rw [child2063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1668_skip, output2063_skip]
  kernel_rfl

theorem node2065_cond_eq
    (child1667 : Flapjack.WordAlloc.removeDeadStructural input1667 value919 value1 value2 = (output1667, value922, value1))
    (child2064 : Flapjack.WordAlloc.removeDeadStructural input2064 value922 value1 value2 = (output2064, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2065 value919 value1 value2 = (output2065, value1100, value1) := by
  rw [input2065_def, output2065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1667]
  try dsimp only
  rw [child2064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1667_skip, output2064_skip]
  kernel_rfl

theorem node2066_cond_eq
    (child1662 : Flapjack.WordAlloc.removeDeadStructural input1662 value918 value1 value2 = (output1662, value919, value1))
    (child2065 : Flapjack.WordAlloc.removeDeadStructural input2065 value919 value1 value2 = (output2065, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2066 value918 value1 value2 = (output2066, value1100, value1) := by
  rw [input2066_def, output2066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1662]
  try dsimp only
  rw [child2065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1662_skip, output2065_skip]
  kernel_rfl

theorem node2067_cond_eq
    (child1661 : Flapjack.WordAlloc.removeDeadStructural input1661 value916 value1 value2 = (output1661, value918, value1))
    (child2066 : Flapjack.WordAlloc.removeDeadStructural input2066 value918 value1 value2 = (output2066, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2067 value916 value1 value2 = (output2067, value1100, value1) := by
  rw [input2067_def, output2067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1661]
  try dsimp only
  rw [child2066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1661_skip, output2066_skip]
  kernel_rfl

theorem node2068_cond_eq
    (child1658 : Flapjack.WordAlloc.removeDeadStructural input1658 value915 value1 value2 = (output1658, value916, value1))
    (child2067 : Flapjack.WordAlloc.removeDeadStructural input2067 value916 value1 value2 = (output2067, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2068 value915 value1 value2 = (output2068, value1100, value1) := by
  rw [input2068_def, output2068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1658]
  try dsimp only
  rw [child2067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1658_skip, output2067_skip]
  kernel_rfl

theorem node2069_cond_eq
    (child1657 : Flapjack.WordAlloc.removeDeadStructural input1657 value914 value1 value2 = (output1657, value915, value1))
    (child2068 : Flapjack.WordAlloc.removeDeadStructural input2068 value915 value1 value2 = (output2068, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2069 value914 value1 value2 = (output2069, value1100, value1) := by
  rw [input2069_def, output2069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1657]
  try dsimp only
  rw [child2068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1657_skip, output2068_skip]
  kernel_rfl

theorem node2070_cond_eq
    (child1656 : Flapjack.WordAlloc.removeDeadStructural input1656 value913 value1 value2 = (output1656, value914, value1))
    (child2069 : Flapjack.WordAlloc.removeDeadStructural input2069 value914 value1 value2 = (output2069, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2070 value913 value1 value2 = (output2070, value1100, value1) := by
  rw [input2070_def, output2070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1656]
  try dsimp only
  rw [child2069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1656_skip, output2069_skip]
  kernel_rfl

theorem node2071_cond_eq
    (child1655 : Flapjack.WordAlloc.removeDeadStructural input1655 value910 value1 value2 = (output1655, value913, value1))
    (child2070 : Flapjack.WordAlloc.removeDeadStructural input2070 value913 value1 value2 = (output2070, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2071 value910 value1 value2 = (output2071, value1100, value1) := by
  rw [input2071_def, output2071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1655]
  try dsimp only
  rw [child2070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1655_skip, output2070_skip]
  kernel_rfl

theorem node2072_cond_eq
    (child1650 : Flapjack.WordAlloc.removeDeadStructural input1650 value909 value1 value2 = (output1650, value910, value1))
    (child2071 : Flapjack.WordAlloc.removeDeadStructural input2071 value910 value1 value2 = (output2071, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2072 value909 value1 value2 = (output2072, value1100, value1) := by
  rw [input2072_def, output2072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1650]
  try dsimp only
  rw [child2071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1650_skip, output2071_skip]
  kernel_rfl

theorem node2073_cond_eq
    (child1649 : Flapjack.WordAlloc.removeDeadStructural input1649 value904 value1 value2 = (output1649, value909, value1))
    (child2072 : Flapjack.WordAlloc.removeDeadStructural input2072 value909 value1 value2 = (output2072, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2073 value904 value1 value2 = (output2073, value1100, value1) := by
  rw [input2073_def, output2073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1649]
  try dsimp only
  rw [child2072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1649_skip, output2072_skip]
  kernel_rfl

theorem node2074_cond_eq
    (child1640 : Flapjack.WordAlloc.removeDeadStructural input1640 value903 value1 value2 = (output1640, value904, value1))
    (child2073 : Flapjack.WordAlloc.removeDeadStructural input2073 value904 value1 value2 = (output2073, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2074 value903 value1 value2 = (output2074, value1100, value1) := by
  rw [input2074_def, output2074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1640]
  try dsimp only
  rw [child2073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1640_skip, output2073_skip]
  kernel_rfl

theorem node2075_cond_eq
    (child1639 : Flapjack.WordAlloc.removeDeadStructural input1639 value899 value1 value2 = (output1639, value903, value1))
    (child2074 : Flapjack.WordAlloc.removeDeadStructural input2074 value903 value1 value2 = (output2074, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2075 value899 value1 value2 = (output2075, value1100, value1) := by
  rw [input2075_def, output2075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1639]
  try dsimp only
  rw [child2074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1639_skip, output2074_skip]
  kernel_rfl

theorem node2076_cond_eq
    (child1632 : Flapjack.WordAlloc.removeDeadStructural input1632 value898 value1 value2 = (output1632, value899, value1))
    (child2075 : Flapjack.WordAlloc.removeDeadStructural input2075 value899 value1 value2 = (output2075, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2076 value898 value1 value2 = (output2076, value1100, value1) := by
  rw [input2076_def, output2076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1632]
  try dsimp only
  rw [child2075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1632_skip, output2075_skip]
  kernel_rfl

theorem node2077_cond_eq
    (child1631 : Flapjack.WordAlloc.removeDeadStructural input1631 value897 value1 value2 = (output1631, value898, value1))
    (child2076 : Flapjack.WordAlloc.removeDeadStructural input2076 value898 value1 value2 = (output2076, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2077 value897 value1 value2 = (output2077, value1100, value1) := by
  rw [input2077_def, output2077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1631]
  try dsimp only
  rw [child2076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1631_skip, output2076_skip]
  kernel_rfl

theorem node2078_cond_eq
    (child1630 : Flapjack.WordAlloc.removeDeadStructural input1630 value896 value1 value2 = (output1630, value897, value1))
    (child2077 : Flapjack.WordAlloc.removeDeadStructural input2077 value897 value1 value2 = (output2077, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2078 value896 value1 value2 = (output2078, value1100, value1) := by
  rw [input2078_def, output2078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1630]
  try dsimp only
  rw [child2077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1630_skip, output2077_skip]
  kernel_rfl

theorem node2079_cond_eq
    (child1629 : Flapjack.WordAlloc.removeDeadStructural input1629 value893 value1 value2 = (output1629, value896, value1))
    (child2078 : Flapjack.WordAlloc.removeDeadStructural input2078 value896 value1 value2 = (output2078, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2079 value893 value1 value2 = (output2079, value1100, value1) := by
  rw [input2079_def, output2079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1629]
  try dsimp only
  rw [child2078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1629_skip, output2078_skip]
  kernel_rfl

theorem node2080_cond_eq
    (child1624 : Flapjack.WordAlloc.removeDeadStructural input1624 value892 value1 value2 = (output1624, value893, value1))
    (child2079 : Flapjack.WordAlloc.removeDeadStructural input2079 value893 value1 value2 = (output2079, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2080 value892 value1 value2 = (output2080, value1100, value1) := by
  rw [input2080_def, output2080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1624]
  try dsimp only
  rw [child2079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1624_skip, output2079_skip]
  kernel_rfl

theorem node2081_cond_eq
    (child1623 : Flapjack.WordAlloc.removeDeadStructural input1623 value889 value1 value2 = (output1623, value892, value1))
    (child2080 : Flapjack.WordAlloc.removeDeadStructural input2080 value892 value1 value2 = (output2080, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2081 value889 value1 value2 = (output2081, value1100, value1) := by
  rw [input2081_def, output2081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1623]
  try dsimp only
  rw [child2080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1623_skip, output2080_skip]
  kernel_rfl

theorem node2082_cond_eq
    (child1618 : Flapjack.WordAlloc.removeDeadStructural input1618 value888 value1 value2 = (output1618, value889, value1))
    (child2081 : Flapjack.WordAlloc.removeDeadStructural input2081 value889 value1 value2 = (output2081, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2082 value888 value1 value2 = (output2082, value1100, value1) := by
  rw [input2082_def, output2082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1618]
  try dsimp only
  rw [child2081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1618_skip, output2081_skip]
  kernel_rfl

theorem node2083_cond_eq
    (child1617 : Flapjack.WordAlloc.removeDeadStructural input1617 value886 value1 value2 = (output1617, value888, value1))
    (child2082 : Flapjack.WordAlloc.removeDeadStructural input2082 value888 value1 value2 = (output2082, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2083 value886 value1 value2 = (output2083, value1100, value1) := by
  rw [input2083_def, output2083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1617]
  try dsimp only
  rw [child2082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1617_skip, output2082_skip]
  kernel_rfl

theorem node2084_cond_eq
    (child1614 : Flapjack.WordAlloc.removeDeadStructural input1614 value885 value1 value2 = (output1614, value886, value1))
    (child2083 : Flapjack.WordAlloc.removeDeadStructural input2083 value886 value1 value2 = (output2083, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2084 value885 value1 value2 = (output2084, value1100, value1) := by
  rw [input2084_def, output2084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1614]
  try dsimp only
  rw [child2083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1614_skip, output2083_skip]
  kernel_rfl

theorem node2085_cond_eq
    (child1613 : Flapjack.WordAlloc.removeDeadStructural input1613 value880 value1 value2 = (output1613, value885, value1))
    (child2084 : Flapjack.WordAlloc.removeDeadStructural input2084 value885 value1 value2 = (output2084, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2085 value880 value1 value2 = (output2085, value1100, value1) := by
  rw [input2085_def, output2085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1613]
  try dsimp only
  rw [child2084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1613_skip, output2084_skip]
  kernel_rfl

theorem node2086_cond_eq
    (child1604 : Flapjack.WordAlloc.removeDeadStructural input1604 value879 value1 value2 = (output1604, value880, value1))
    (child2085 : Flapjack.WordAlloc.removeDeadStructural input2085 value880 value1 value2 = (output2085, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2086 value879 value1 value2 = (output2086, value1100, value1) := by
  rw [input2086_def, output2086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1604]
  try dsimp only
  rw [child2085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1604_skip, output2085_skip]
  kernel_rfl

theorem node2087_cond_eq
    (child1603 : Flapjack.WordAlloc.removeDeadStructural input1603 value874 value1 value2 = (output1603, value879, value1))
    (child2086 : Flapjack.WordAlloc.removeDeadStructural input2086 value879 value1 value2 = (output2086, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2087 value874 value1 value2 = (output2087, value1100, value1) := by
  rw [input2087_def, output2087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1603]
  try dsimp only
  rw [child2086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1603_skip, output2086_skip]
  kernel_rfl

theorem node2088_cond_eq
    (child1594 : Flapjack.WordAlloc.removeDeadStructural input1594 value873 value1 value2 = (output1594, value874, value1))
    (child2087 : Flapjack.WordAlloc.removeDeadStructural input2087 value874 value1 value2 = (output2087, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2088 value873 value1 value2 = (output2088, value1100, value1) := by
  rw [input2088_def, output2088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1594]
  try dsimp only
  rw [child2087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1594_skip, output2087_skip]
  kernel_rfl

theorem node2089_cond_eq
    (child1593 : Flapjack.WordAlloc.removeDeadStructural input1593 value873 value1 value2 = (output1593, value873, value1))
    (child2088 : Flapjack.WordAlloc.removeDeadStructural input2088 value873 value1 value2 = (output2088, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2089 value873 value1 value2 = (output2089, value1100, value1) := by
  rw [input2089_def, output2089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1593]
  try dsimp only
  rw [child2088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1593_skip, output2088_skip]
  kernel_rfl

theorem node2090_cond_eq
    (child1592 : Flapjack.WordAlloc.removeDeadStructural input1592 value873 value1 value2 = (output1592, value873, value1))
    (child2089 : Flapjack.WordAlloc.removeDeadStructural input2089 value873 value1 value2 = (output2089, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2090 value873 value1 value2 = (output2090, value1100, value1) := by
  rw [input2090_def, output2090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1592]
  try dsimp only
  rw [child2089]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1592_skip, output2089_skip]
  kernel_rfl

theorem node2091_cond_eq
    (child1591 : Flapjack.WordAlloc.removeDeadStructural input1591 value870 value1 value2 = (output1591, value873, value1))
    (child2090 : Flapjack.WordAlloc.removeDeadStructural input2090 value873 value1 value2 = (output2090, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2091 value870 value1 value2 = (output2091, value1100, value1) := by
  rw [input2091_def, output2091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1591]
  try dsimp only
  rw [child2090]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1591_skip, output2090_skip]
  kernel_rfl

theorem node2092_cond_eq
    (child1586 : Flapjack.WordAlloc.removeDeadStructural input1586 value867 value1 value2 = (output1586, value870, value1))
    (child2091 : Flapjack.WordAlloc.removeDeadStructural input2091 value870 value1 value2 = (output2091, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2092 value867 value1 value2 = (output2092, value1100, value1) := by
  rw [input2092_def, output2092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1586]
  try dsimp only
  rw [child2091]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1586_skip, output2091_skip]
  kernel_rfl

theorem node2093_cond_eq
    (child1581 : Flapjack.WordAlloc.removeDeadStructural input1581 value863 value1 value2 = (output1581, value867, value1))
    (child2092 : Flapjack.WordAlloc.removeDeadStructural input2092 value867 value1 value2 = (output2092, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2093 value863 value1 value2 = (output2093, value1100, value1) := by
  rw [input2093_def, output2093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1581]
  try dsimp only
  rw [child2092]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1581_skip, output2092_skip]
  kernel_rfl

theorem node2094_cond_eq
    (child1574 : Flapjack.WordAlloc.removeDeadStructural input1574 value863 value1 value2 = (output1574, value863, value1))
    (child2093 : Flapjack.WordAlloc.removeDeadStructural input2093 value863 value1 value2 = (output2093, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2094 value863 value1 value2 = (output2094, value1100, value1) := by
  rw [input2094_def, output2094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1574]
  try dsimp only
  rw [child2093]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1574_skip, output2093_skip]
  kernel_rfl

theorem node2095_cond_eq
    (child1573 : Flapjack.WordAlloc.removeDeadStructural input1573 value863 value1 value2 = (output1573, value863, value1))
    (child2094 : Flapjack.WordAlloc.removeDeadStructural input2094 value863 value1 value2 = (output2094, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2095 value863 value1 value2 = (output2095, value1100, value1) := by
  rw [input2095_def, output2095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1573]
  try dsimp only
  rw [child2094]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1573_skip, output2094_skip]
  kernel_rfl

theorem node2096_cond_eq
    (child1572 : Flapjack.WordAlloc.removeDeadStructural input1572 value862 value1 value2 = (output1572, value863, value1))
    (child2095 : Flapjack.WordAlloc.removeDeadStructural input2095 value863 value1 value2 = (output2095, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2096 value862 value1 value2 = (output2096, value1100, value1) := by
  rw [input2096_def, output2096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1572]
  try dsimp only
  rw [child2095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1572_skip, output2095_skip]
  kernel_rfl

theorem node2097_cond_eq
    (child1571 : Flapjack.WordAlloc.removeDeadStructural input1571 value861 value1 value2 = (output1571, value862, value1))
    (child2096 : Flapjack.WordAlloc.removeDeadStructural input2096 value862 value1 value2 = (output2096, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2097 value861 value1 value2 = (output2097, value1100, value1) := by
  rw [input2097_def, output2097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1571]
  try dsimp only
  rw [child2096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1571_skip, output2096_skip]
  kernel_rfl

theorem node2098_cond_eq
    (child1570 : Flapjack.WordAlloc.removeDeadStructural input1570 value858 value1 value2 = (output1570, value861, value1))
    (child2097 : Flapjack.WordAlloc.removeDeadStructural input2097 value861 value1 value2 = (output2097, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2098 value858 value1 value2 = (output2098, value1100, value1) := by
  rw [input2098_def, output2098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1570]
  try dsimp only
  rw [child2097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1570_skip, output2097_skip]
  kernel_rfl

theorem node2099_cond_eq
    (child1565 : Flapjack.WordAlloc.removeDeadStructural input1565 value857 value1 value2 = (output1565, value858, value1))
    (child2098 : Flapjack.WordAlloc.removeDeadStructural input2098 value858 value1 value2 = (output2098, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2099 value857 value1 value2 = (output2099, value1100, value1) := by
  rw [input2099_def, output2099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1565]
  try dsimp only
  rw [child2098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1565_skip, output2098_skip]
  kernel_rfl

theorem node2100_cond_eq
    (child1564 : Flapjack.WordAlloc.removeDeadStructural input1564 value854 value1 value2 = (output1564, value857, value1))
    (child2099 : Flapjack.WordAlloc.removeDeadStructural input2099 value857 value1 value2 = (output2099, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2100 value854 value1 value2 = (output2100, value1100, value1) := by
  rw [input2100_def, output2100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1564]
  try dsimp only
  rw [child2099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1564_skip, output2099_skip]
  kernel_rfl

theorem node2101_cond_eq
    (child1559 : Flapjack.WordAlloc.removeDeadStructural input1559 value853 value1 value2 = (output1559, value854, value1))
    (child2100 : Flapjack.WordAlloc.removeDeadStructural input2100 value854 value1 value2 = (output2100, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2101 value853 value1 value2 = (output2101, value1100, value1) := by
  rw [input2101_def, output2101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1559]
  try dsimp only
  rw [child2100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1559_skip, output2100_skip]
  kernel_rfl

theorem node2102_cond_eq
    (child1558 : Flapjack.WordAlloc.removeDeadStructural input1558 value851 value1 value2 = (output1558, value853, value1))
    (child2101 : Flapjack.WordAlloc.removeDeadStructural input2101 value853 value1 value2 = (output2101, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2102 value851 value1 value2 = (output2102, value1100, value1) := by
  rw [input2102_def, output2102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1558]
  try dsimp only
  rw [child2101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1558_skip, output2101_skip]
  kernel_rfl

theorem node2103_cond_eq
    (child1555 : Flapjack.WordAlloc.removeDeadStructural input1555 value850 value1 value2 = (output1555, value851, value1))
    (child2102 : Flapjack.WordAlloc.removeDeadStructural input2102 value851 value1 value2 = (output2102, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2103 value850 value1 value2 = (output2103, value1100, value1) := by
  rw [input2103_def, output2103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1555]
  try dsimp only
  rw [child2102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1555_skip, output2102_skip]
  kernel_rfl

theorem node2104_cond_eq
    (child1554 : Flapjack.WordAlloc.removeDeadStructural input1554 value849 value1 value2 = (output1554, value850, value1))
    (child2103 : Flapjack.WordAlloc.removeDeadStructural input2103 value850 value1 value2 = (output2103, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2104 value849 value1 value2 = (output2104, value1100, value1) := by
  rw [input2104_def, output2104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1554]
  try dsimp only
  rw [child2103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1554_skip, output2103_skip]
  kernel_rfl

theorem node2105_cond_eq
    (child1553 : Flapjack.WordAlloc.removeDeadStructural input1553 value848 value1 value2 = (output1553, value849, value1))
    (child2104 : Flapjack.WordAlloc.removeDeadStructural input2104 value849 value1 value2 = (output2104, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2105 value848 value1 value2 = (output2105, value1100, value1) := by
  rw [input2105_def, output2105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1553]
  try dsimp only
  rw [child2104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1553_skip, output2104_skip]
  kernel_rfl

theorem node2106_cond_eq
    (child1552 : Flapjack.WordAlloc.removeDeadStructural input1552 value845 value1 value2 = (output1552, value848, value1))
    (child2105 : Flapjack.WordAlloc.removeDeadStructural input2105 value848 value1 value2 = (output2105, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2106 value845 value1 value2 = (output2106, value1100, value1) := by
  rw [input2106_def, output2106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1552]
  try dsimp only
  rw [child2105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1552_skip, output2105_skip]
  kernel_rfl

theorem node2107_cond_eq
    (child1547 : Flapjack.WordAlloc.removeDeadStructural input1547 value844 value1 value2 = (output1547, value845, value1))
    (child2106 : Flapjack.WordAlloc.removeDeadStructural input2106 value845 value1 value2 = (output2106, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2107 value844 value1 value2 = (output2107, value1100, value1) := by
  rw [input2107_def, output2107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1547]
  try dsimp only
  rw [child2106]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1547_skip, output2106_skip]
  kernel_rfl

theorem node2108_cond_eq
    (child1546 : Flapjack.WordAlloc.removeDeadStructural input1546 value839 value1 value2 = (output1546, value844, value1))
    (child2107 : Flapjack.WordAlloc.removeDeadStructural input2107 value844 value1 value2 = (output2107, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2108 value839 value1 value2 = (output2108, value1100, value1) := by
  rw [input2108_def, output2108_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1546]
  try dsimp only
  rw [child2107]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1546_skip, output2107_skip]
  kernel_rfl

theorem node2109_cond_eq
    (child1537 : Flapjack.WordAlloc.removeDeadStructural input1537 value838 value1 value2 = (output1537, value839, value1))
    (child2108 : Flapjack.WordAlloc.removeDeadStructural input2108 value839 value1 value2 = (output2108, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2109 value838 value1 value2 = (output2109, value1100, value1) := by
  rw [input2109_def, output2109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1537]
  try dsimp only
  rw [child2108]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1537_skip, output2108_skip]
  kernel_rfl

theorem node2110_cond_eq
    (child1536 : Flapjack.WordAlloc.removeDeadStructural input1536 value834 value1 value2 = (output1536, value838, value1))
    (child2109 : Flapjack.WordAlloc.removeDeadStructural input2109 value838 value1 value2 = (output2109, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2110 value834 value1 value2 = (output2110, value1100, value1) := by
  rw [input2110_def, output2110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1536]
  try dsimp only
  rw [child2109]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1536_skip, output2109_skip]
  kernel_rfl

theorem node2111_cond_eq
    (child1529 : Flapjack.WordAlloc.removeDeadStructural input1529 value833 value1 value2 = (output1529, value834, value1))
    (child2110 : Flapjack.WordAlloc.removeDeadStructural input2110 value834 value1 value2 = (output2110, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2111 value833 value1 value2 = (output2111, value1100, value1) := by
  rw [input2111_def, output2111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1529]
  try dsimp only
  rw [child2110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1529_skip, output2110_skip]
  kernel_rfl

theorem node2112_cond_eq
    (child1528 : Flapjack.WordAlloc.removeDeadStructural input1528 value832 value1 value2 = (output1528, value833, value1))
    (child2111 : Flapjack.WordAlloc.removeDeadStructural input2111 value833 value1 value2 = (output2111, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2112 value832 value1 value2 = (output2112, value1100, value1) := by
  rw [input2112_def, output2112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1528]
  try dsimp only
  rw [child2111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1528_skip, output2111_skip]
  kernel_rfl

theorem node2113_cond_eq
    (child1527 : Flapjack.WordAlloc.removeDeadStructural input1527 value831 value1 value2 = (output1527, value832, value1))
    (child2112 : Flapjack.WordAlloc.removeDeadStructural input2112 value832 value1 value2 = (output2112, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2113 value831 value1 value2 = (output2113, value1100, value1) := by
  rw [input2113_def, output2113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1527]
  try dsimp only
  rw [child2112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1527_skip, output2112_skip]
  kernel_rfl

theorem node2114_cond_eq
    (child1526 : Flapjack.WordAlloc.removeDeadStructural input1526 value828 value1 value2 = (output1526, value831, value1))
    (child2113 : Flapjack.WordAlloc.removeDeadStructural input2113 value831 value1 value2 = (output2113, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2114 value828 value1 value2 = (output2114, value1100, value1) := by
  rw [input2114_def, output2114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1526]
  try dsimp only
  rw [child2113]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1526_skip, output2113_skip]
  kernel_rfl

theorem node2115_cond_eq
    (child1521 : Flapjack.WordAlloc.removeDeadStructural input1521 value827 value1 value2 = (output1521, value828, value1))
    (child2114 : Flapjack.WordAlloc.removeDeadStructural input2114 value828 value1 value2 = (output2114, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2115 value827 value1 value2 = (output2115, value1100, value1) := by
  rw [input2115_def, output2115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1521]
  try dsimp only
  rw [child2114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1521_skip, output2114_skip]
  kernel_rfl

theorem node2116_cond_eq
    (child1520 : Flapjack.WordAlloc.removeDeadStructural input1520 value822 value1 value2 = (output1520, value827, value1))
    (child2115 : Flapjack.WordAlloc.removeDeadStructural input2115 value827 value1 value2 = (output2115, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2116 value822 value1 value2 = (output2116, value1100, value1) := by
  rw [input2116_def, output2116_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1520]
  try dsimp only
  rw [child2115]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1520_skip, output2115_skip]
  kernel_rfl

theorem node2117_cond_eq
    (child1511 : Flapjack.WordAlloc.removeDeadStructural input1511 value821 value1 value2 = (output1511, value822, value1))
    (child2116 : Flapjack.WordAlloc.removeDeadStructural input2116 value822 value1 value2 = (output2116, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2117 value821 value1 value2 = (output2117, value1100, value1) := by
  rw [input2117_def, output2117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1511]
  try dsimp only
  rw [child2116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1511_skip, output2116_skip]
  kernel_rfl

theorem node2118_cond_eq
    (child1510 : Flapjack.WordAlloc.removeDeadStructural input1510 value817 value1 value2 = (output1510, value821, value1))
    (child2117 : Flapjack.WordAlloc.removeDeadStructural input2117 value821 value1 value2 = (output2117, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2118 value817 value1 value2 = (output2118, value1100, value1) := by
  rw [input2118_def, output2118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1510]
  try dsimp only
  rw [child2117]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1510_skip, output2117_skip]
  kernel_rfl

theorem node2119_cond_eq
    (child1503 : Flapjack.WordAlloc.removeDeadStructural input1503 value816 value1 value2 = (output1503, value817, value1))
    (child2118 : Flapjack.WordAlloc.removeDeadStructural input2118 value817 value1 value2 = (output2118, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2119 value816 value1 value2 = (output2119, value1100, value1) := by
  rw [input2119_def, output2119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1503]
  try dsimp only
  rw [child2118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1503_skip, output2118_skip]
  kernel_rfl

theorem node2120_cond_eq
    (child1502 : Flapjack.WordAlloc.removeDeadStructural input1502 value813 value1 value2 = (output1502, value816, value1))
    (child2119 : Flapjack.WordAlloc.removeDeadStructural input2119 value816 value1 value2 = (output2119, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2120 value813 value1 value2 = (output2120, value1100, value1) := by
  rw [input2120_def, output2120_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1502]
  try dsimp only
  rw [child2119]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1502_skip, output2119_skip]
  kernel_rfl

theorem node2121_cond_eq
    (child1497 : Flapjack.WordAlloc.removeDeadStructural input1497 value812 value1 value2 = (output1497, value813, value1))
    (child2120 : Flapjack.WordAlloc.removeDeadStructural input2120 value813 value1 value2 = (output2120, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2121 value812 value1 value2 = (output2121, value1100, value1) := by
  rw [input2121_def, output2121_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1497]
  try dsimp only
  rw [child2120]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1497_skip, output2120_skip]
  kernel_rfl

theorem node2122_cond_eq
    (child1496 : Flapjack.WordAlloc.removeDeadStructural input1496 value809 value1 value2 = (output1496, value812, value1))
    (child2121 : Flapjack.WordAlloc.removeDeadStructural input2121 value812 value1 value2 = (output2121, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2122 value809 value1 value2 = (output2122, value1100, value1) := by
  rw [input2122_def, output2122_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1496]
  try dsimp only
  rw [child2121]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1496_skip, output2121_skip]
  kernel_rfl

theorem node2123_cond_eq
    (child1491 : Flapjack.WordAlloc.removeDeadStructural input1491 value808 value1 value2 = (output1491, value809, value1))
    (child2122 : Flapjack.WordAlloc.removeDeadStructural input2122 value809 value1 value2 = (output2122, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2123 value808 value1 value2 = (output2123, value1100, value1) := by
  rw [input2123_def, output2123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1491]
  try dsimp only
  rw [child2122]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1491_skip, output2122_skip]
  kernel_rfl

theorem node2124_cond_eq
    (child1490 : Flapjack.WordAlloc.removeDeadStructural input1490 value808 value1 value2 = (output1490, value808, value1))
    (child2123 : Flapjack.WordAlloc.removeDeadStructural input2123 value808 value1 value2 = (output2123, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2124 value808 value1 value2 = (output2124, value1100, value1) := by
  rw [input2124_def, output2124_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1490]
  try dsimp only
  rw [child2123]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1490_skip, output2123_skip]
  kernel_rfl

theorem node2125_cond_eq
    (child1489 : Flapjack.WordAlloc.removeDeadStructural input1489 value808 value1 value2 = (output1489, value808, value1))
    (child2124 : Flapjack.WordAlloc.removeDeadStructural input2124 value808 value1 value2 = (output2124, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2125 value808 value1 value2 = (output2125, value1100, value1) := by
  rw [input2125_def, output2125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1489]
  try dsimp only
  rw [child2124]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1489_skip, output2124_skip]
  kernel_rfl

theorem node2126_cond_eq
    (child1488 : Flapjack.WordAlloc.removeDeadStructural input1488 value805 value1 value2 = (output1488, value808, value1))
    (child2125 : Flapjack.WordAlloc.removeDeadStructural input2125 value808 value1 value2 = (output2125, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2126 value805 value1 value2 = (output2126, value1100, value1) := by
  rw [input2126_def, output2126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1488]
  try dsimp only
  rw [child2125]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1488_skip, output2125_skip]
  kernel_rfl

theorem node2127_cond_eq
    (child1483 : Flapjack.WordAlloc.removeDeadStructural input1483 value802 value1 value2 = (output1483, value805, value1))
    (child2126 : Flapjack.WordAlloc.removeDeadStructural input2126 value805 value1 value2 = (output2126, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2127 value802 value1 value2 = (output2127, value1100, value1) := by
  rw [input2127_def, output2127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1483]
  try dsimp only
  rw [child2126]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1483_skip, output2126_skip]
  kernel_rfl

theorem node2128_cond_eq
    (child1478 : Flapjack.WordAlloc.removeDeadStructural input1478 value798 value1 value2 = (output1478, value802, value1))
    (child2127 : Flapjack.WordAlloc.removeDeadStructural input2127 value802 value1 value2 = (output2127, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2128 value798 value1 value2 = (output2128, value1100, value1) := by
  rw [input2128_def, output2128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1478]
  try dsimp only
  rw [child2127]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1478_skip, output2127_skip]
  kernel_rfl

theorem node2129_cond_eq
    (child1471 : Flapjack.WordAlloc.removeDeadStructural input1471 value798 value1 value2 = (output1471, value798, value1))
    (child2128 : Flapjack.WordAlloc.removeDeadStructural input2128 value798 value1 value2 = (output2128, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2129 value798 value1 value2 = (output2129, value1100, value1) := by
  rw [input2129_def, output2129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1471]
  try dsimp only
  rw [child2128]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1471_skip, output2128_skip]
  kernel_rfl

theorem node2130_cond_eq
    (child1470 : Flapjack.WordAlloc.removeDeadStructural input1470 value798 value1 value2 = (output1470, value798, value1))
    (child2129 : Flapjack.WordAlloc.removeDeadStructural input2129 value798 value1 value2 = (output2129, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2130 value798 value1 value2 = (output2130, value1100, value1) := by
  rw [input2130_def, output2130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1470]
  try dsimp only
  rw [child2129]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1470_skip, output2129_skip]
  kernel_rfl

theorem node2131_cond_eq
    (child1469 : Flapjack.WordAlloc.removeDeadStructural input1469 value797 value1 value2 = (output1469, value798, value1))
    (child2130 : Flapjack.WordAlloc.removeDeadStructural input2130 value798 value1 value2 = (output2130, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2131 value797 value1 value2 = (output2131, value1100, value1) := by
  rw [input2131_def, output2131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1469]
  try dsimp only
  rw [child2130]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1469_skip, output2130_skip]
  kernel_rfl

theorem node2132_cond_eq
    (child1468 : Flapjack.WordAlloc.removeDeadStructural input1468 value796 value1 value2 = (output1468, value797, value1))
    (child2131 : Flapjack.WordAlloc.removeDeadStructural input2131 value797 value1 value2 = (output2131, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2132 value796 value1 value2 = (output2132, value1100, value1) := by
  rw [input2132_def, output2132_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1468]
  try dsimp only
  rw [child2131]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1468_skip, output2131_skip]
  kernel_rfl

theorem node2133_cond_eq
    (child1467 : Flapjack.WordAlloc.removeDeadStructural input1467 value793 value1 value2 = (output1467, value796, value1))
    (child2132 : Flapjack.WordAlloc.removeDeadStructural input2132 value796 value1 value2 = (output2132, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2133 value793 value1 value2 = (output2133, value1100, value1) := by
  rw [input2133_def, output2133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1467]
  try dsimp only
  rw [child2132]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1467_skip, output2132_skip]
  kernel_rfl

theorem node2134_cond_eq
    (child1462 : Flapjack.WordAlloc.removeDeadStructural input1462 value792 value1 value2 = (output1462, value793, value1))
    (child2133 : Flapjack.WordAlloc.removeDeadStructural input2133 value793 value1 value2 = (output2133, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2134 value792 value1 value2 = (output2134, value1100, value1) := by
  rw [input2134_def, output2134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1462]
  try dsimp only
  rw [child2133]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1462_skip, output2133_skip]
  kernel_rfl

theorem node2135_cond_eq
    (child1461 : Flapjack.WordAlloc.removeDeadStructural input1461 value789 value1 value2 = (output1461, value792, value1))
    (child2134 : Flapjack.WordAlloc.removeDeadStructural input2134 value792 value1 value2 = (output2134, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2135 value789 value1 value2 = (output2135, value1100, value1) := by
  rw [input2135_def, output2135_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1461]
  try dsimp only
  rw [child2134]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1461_skip, output2134_skip]
  kernel_rfl

theorem node2136_cond_eq
    (child1456 : Flapjack.WordAlloc.removeDeadStructural input1456 value788 value1 value2 = (output1456, value789, value1))
    (child2135 : Flapjack.WordAlloc.removeDeadStructural input2135 value789 value1 value2 = (output2135, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2136 value788 value1 value2 = (output2136, value1100, value1) := by
  rw [input2136_def, output2136_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1456]
  try dsimp only
  rw [child2135]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1456_skip, output2135_skip]
  kernel_rfl

theorem node2137_cond_eq
    (child1455 : Flapjack.WordAlloc.removeDeadStructural input1455 value786 value1 value2 = (output1455, value788, value1))
    (child2136 : Flapjack.WordAlloc.removeDeadStructural input2136 value788 value1 value2 = (output2136, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2137 value786 value1 value2 = (output2137, value1100, value1) := by
  rw [input2137_def, output2137_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1455]
  try dsimp only
  rw [child2136]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1455_skip, output2136_skip]
  kernel_rfl

theorem node2138_cond_eq
    (child1452 : Flapjack.WordAlloc.removeDeadStructural input1452 value785 value1 value2 = (output1452, value786, value1))
    (child2137 : Flapjack.WordAlloc.removeDeadStructural input2137 value786 value1 value2 = (output2137, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2138 value785 value1 value2 = (output2138, value1100, value1) := by
  rw [input2138_def, output2138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1452]
  try dsimp only
  rw [child2137]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1452_skip, output2137_skip]
  kernel_rfl

theorem node2139_cond_eq
    (child1451 : Flapjack.WordAlloc.removeDeadStructural input1451 value784 value1 value2 = (output1451, value785, value1))
    (child2138 : Flapjack.WordAlloc.removeDeadStructural input2138 value785 value1 value2 = (output2138, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2139 value784 value1 value2 = (output2139, value1100, value1) := by
  rw [input2139_def, output2139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1451]
  try dsimp only
  rw [child2138]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1451_skip, output2138_skip]
  kernel_rfl

theorem node2140_cond_eq
    (child1450 : Flapjack.WordAlloc.removeDeadStructural input1450 value783 value1 value2 = (output1450, value784, value1))
    (child2139 : Flapjack.WordAlloc.removeDeadStructural input2139 value784 value1 value2 = (output2139, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2140 value783 value1 value2 = (output2140, value1100, value1) := by
  rw [input2140_def, output2140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1450]
  try dsimp only
  rw [child2139]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1450_skip, output2139_skip]
  kernel_rfl

theorem node2141_cond_eq
    (child1449 : Flapjack.WordAlloc.removeDeadStructural input1449 value780 value1 value2 = (output1449, value783, value1))
    (child2140 : Flapjack.WordAlloc.removeDeadStructural input2140 value783 value1 value2 = (output2140, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2141 value780 value1 value2 = (output2141, value1100, value1) := by
  rw [input2141_def, output2141_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1449]
  try dsimp only
  rw [child2140]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1449_skip, output2140_skip]
  kernel_rfl

theorem node2142_cond_eq
    (child1444 : Flapjack.WordAlloc.removeDeadStructural input1444 value779 value1 value2 = (output1444, value780, value1))
    (child2141 : Flapjack.WordAlloc.removeDeadStructural input2141 value780 value1 value2 = (output2141, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2142 value779 value1 value2 = (output2142, value1100, value1) := by
  rw [input2142_def, output2142_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1444]
  try dsimp only
  rw [child2141]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1444_skip, output2141_skip]
  kernel_rfl

theorem node2143_cond_eq
    (child1443 : Flapjack.WordAlloc.removeDeadStructural input1443 value774 value1 value2 = (output1443, value779, value1))
    (child2142 : Flapjack.WordAlloc.removeDeadStructural input2142 value779 value1 value2 = (output2142, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2143 value774 value1 value2 = (output2143, value1100, value1) := by
  rw [input2143_def, output2143_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1443]
  try dsimp only
  rw [child2142]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1443_skip, output2142_skip]
  kernel_rfl

theorem node2144_cond_eq
    (child1434 : Flapjack.WordAlloc.removeDeadStructural input1434 value773 value1 value2 = (output1434, value774, value1))
    (child2143 : Flapjack.WordAlloc.removeDeadStructural input2143 value774 value1 value2 = (output2143, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2144 value773 value1 value2 = (output2144, value1100, value1) := by
  rw [input2144_def, output2144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1434]
  try dsimp only
  rw [child2143]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1434_skip, output2143_skip]
  kernel_rfl

theorem node2145_cond_eq
    (child1433 : Flapjack.WordAlloc.removeDeadStructural input1433 value769 value1 value2 = (output1433, value773, value1))
    (child2144 : Flapjack.WordAlloc.removeDeadStructural input2144 value773 value1 value2 = (output2144, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2145 value769 value1 value2 = (output2145, value1100, value1) := by
  rw [input2145_def, output2145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1433]
  try dsimp only
  rw [child2144]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1433_skip, output2144_skip]
  kernel_rfl

theorem node2146_cond_eq
    (child1426 : Flapjack.WordAlloc.removeDeadStructural input1426 value768 value1 value2 = (output1426, value769, value1))
    (child2145 : Flapjack.WordAlloc.removeDeadStructural input2145 value769 value1 value2 = (output2145, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2146 value768 value1 value2 = (output2146, value1100, value1) := by
  rw [input2146_def, output2146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1426]
  try dsimp only
  rw [child2145]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1426_skip, output2145_skip]
  kernel_rfl

theorem node2147_cond_eq
    (child1425 : Flapjack.WordAlloc.removeDeadStructural input1425 value767 value1 value2 = (output1425, value768, value1))
    (child2146 : Flapjack.WordAlloc.removeDeadStructural input2146 value768 value1 value2 = (output2146, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2147 value767 value1 value2 = (output2147, value1100, value1) := by
  rw [input2147_def, output2147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1425]
  try dsimp only
  rw [child2146]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1425_skip, output2146_skip]
  kernel_rfl

theorem node2148_cond_eq
    (child1424 : Flapjack.WordAlloc.removeDeadStructural input1424 value766 value1 value2 = (output1424, value767, value1))
    (child2147 : Flapjack.WordAlloc.removeDeadStructural input2147 value767 value1 value2 = (output2147, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2148 value766 value1 value2 = (output2148, value1100, value1) := by
  rw [input2148_def, output2148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1424]
  try dsimp only
  rw [child2147]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1424_skip, output2147_skip]
  kernel_rfl

theorem node2149_cond_eq
    (child1423 : Flapjack.WordAlloc.removeDeadStructural input1423 value763 value1 value2 = (output1423, value766, value1))
    (child2148 : Flapjack.WordAlloc.removeDeadStructural input2148 value766 value1 value2 = (output2148, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2149 value763 value1 value2 = (output2149, value1100, value1) := by
  rw [input2149_def, output2149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1423]
  try dsimp only
  rw [child2148]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1423_skip, output2148_skip]
  kernel_rfl

theorem node2150_cond_eq
    (child1418 : Flapjack.WordAlloc.removeDeadStructural input1418 value762 value1 value2 = (output1418, value763, value1))
    (child2149 : Flapjack.WordAlloc.removeDeadStructural input2149 value763 value1 value2 = (output2149, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2150 value762 value1 value2 = (output2150, value1100, value1) := by
  rw [input2150_def, output2150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1418]
  try dsimp only
  rw [child2149]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1418_skip, output2149_skip]
  kernel_rfl

theorem node2151_cond_eq
    (child1417 : Flapjack.WordAlloc.removeDeadStructural input1417 value757 value1 value2 = (output1417, value762, value1))
    (child2150 : Flapjack.WordAlloc.removeDeadStructural input2150 value762 value1 value2 = (output2150, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2151 value757 value1 value2 = (output2151, value1100, value1) := by
  rw [input2151_def, output2151_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1417]
  try dsimp only
  rw [child2150]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1417_skip, output2150_skip]
  kernel_rfl

theorem node2152_cond_eq
    (child1408 : Flapjack.WordAlloc.removeDeadStructural input1408 value756 value1 value2 = (output1408, value757, value1))
    (child2151 : Flapjack.WordAlloc.removeDeadStructural input2151 value757 value1 value2 = (output2151, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2152 value756 value1 value2 = (output2152, value1100, value1) := by
  rw [input2152_def, output2152_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1408]
  try dsimp only
  rw [child2151]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1408_skip, output2151_skip]
  kernel_rfl

theorem node2153_cond_eq
    (child1407 : Flapjack.WordAlloc.removeDeadStructural input1407 value752 value1 value2 = (output1407, value756, value1))
    (child2152 : Flapjack.WordAlloc.removeDeadStructural input2152 value756 value1 value2 = (output2152, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2153 value752 value1 value2 = (output2153, value1100, value1) := by
  rw [input2153_def, output2153_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1407]
  try dsimp only
  rw [child2152]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1407_skip, output2152_skip]
  kernel_rfl

theorem node2154_cond_eq
    (child1400 : Flapjack.WordAlloc.removeDeadStructural input1400 value751 value1 value2 = (output1400, value752, value1))
    (child2153 : Flapjack.WordAlloc.removeDeadStructural input2153 value752 value1 value2 = (output2153, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2154 value751 value1 value2 = (output2154, value1100, value1) := by
  rw [input2154_def, output2154_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1400]
  try dsimp only
  rw [child2153]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1400_skip, output2153_skip]
  kernel_rfl

theorem node2155_cond_eq
    (child1399 : Flapjack.WordAlloc.removeDeadStructural input1399 value750 value1 value2 = (output1399, value751, value1))
    (child2154 : Flapjack.WordAlloc.removeDeadStructural input2154 value751 value1 value2 = (output2154, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2155 value750 value1 value2 = (output2155, value1100, value1) := by
  rw [input2155_def, output2155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1399]
  try dsimp only
  rw [child2154]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1399_skip, output2154_skip]
  kernel_rfl

theorem node2156_cond_eq
    (child1398 : Flapjack.WordAlloc.removeDeadStructural input1398 value749 value1 value2 = (output1398, value750, value1))
    (child2155 : Flapjack.WordAlloc.removeDeadStructural input2155 value750 value1 value2 = (output2155, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2156 value749 value1 value2 = (output2156, value1100, value1) := by
  rw [input2156_def, output2156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1398]
  try dsimp only
  rw [child2155]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1398_skip, output2155_skip]
  kernel_rfl

theorem node2157_cond_eq
    (child1397 : Flapjack.WordAlloc.removeDeadStructural input1397 value746 value1 value2 = (output1397, value749, value1))
    (child2156 : Flapjack.WordAlloc.removeDeadStructural input2156 value749 value1 value2 = (output2156, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2157 value746 value1 value2 = (output2157, value1100, value1) := by
  rw [input2157_def, output2157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1397]
  try dsimp only
  rw [child2156]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1397_skip, output2156_skip]
  kernel_rfl

theorem node2158_cond_eq
    (child1392 : Flapjack.WordAlloc.removeDeadStructural input1392 value745 value1 value2 = (output1392, value746, value1))
    (child2157 : Flapjack.WordAlloc.removeDeadStructural input2157 value746 value1 value2 = (output2157, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2158 value745 value1 value2 = (output2158, value1100, value1) := by
  rw [input2158_def, output2158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1392]
  try dsimp only
  rw [child2157]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1392_skip, output2157_skip]
  kernel_rfl

theorem node2159_cond_eq
    (child1391 : Flapjack.WordAlloc.removeDeadStructural input1391 value742 value1 value2 = (output1391, value745, value1))
    (child2158 : Flapjack.WordAlloc.removeDeadStructural input2158 value745 value1 value2 = (output2158, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2159 value742 value1 value2 = (output2159, value1100, value1) := by
  rw [input2159_def, output2159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1391]
  try dsimp only
  rw [child2158]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1391_skip, output2158_skip]
  kernel_rfl

theorem node2160_cond_eq
    (child1386 : Flapjack.WordAlloc.removeDeadStructural input1386 value741 value1 value2 = (output1386, value742, value1))
    (child2159 : Flapjack.WordAlloc.removeDeadStructural input2159 value742 value1 value2 = (output2159, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2160 value741 value1 value2 = (output2160, value1100, value1) := by
  rw [input2160_def, output2160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1386]
  try dsimp only
  rw [child2159]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1386_skip, output2159_skip]
  kernel_rfl

theorem node2161_cond_eq
    (child1385 : Flapjack.WordAlloc.removeDeadStructural input1385 value739 value1 value2 = (output1385, value741, value1))
    (child2160 : Flapjack.WordAlloc.removeDeadStructural input2160 value741 value1 value2 = (output2160, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2161 value739 value1 value2 = (output2161, value1100, value1) := by
  rw [input2161_def, output2161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1385]
  try dsimp only
  rw [child2160]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1385_skip, output2160_skip]
  kernel_rfl

theorem node2162_cond_eq
    (child1382 : Flapjack.WordAlloc.removeDeadStructural input1382 value738 value1 value2 = (output1382, value739, value1))
    (child2161 : Flapjack.WordAlloc.removeDeadStructural input2161 value739 value1 value2 = (output2161, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2162 value738 value1 value2 = (output2162, value1100, value1) := by
  rw [input2162_def, output2162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1382]
  try dsimp only
  rw [child2161]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1382_skip, output2161_skip]
  kernel_rfl

theorem node2163_cond_eq
    (child1381 : Flapjack.WordAlloc.removeDeadStructural input1381 value733 value1 value2 = (output1381, value738, value1))
    (child2162 : Flapjack.WordAlloc.removeDeadStructural input2162 value738 value1 value2 = (output2162, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2163 value733 value1 value2 = (output2163, value1100, value1) := by
  rw [input2163_def, output2163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1381]
  try dsimp only
  rw [child2162]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1381_skip, output2162_skip]
  kernel_rfl

theorem node2164_cond_eq
    (child1372 : Flapjack.WordAlloc.removeDeadStructural input1372 value732 value1 value2 = (output1372, value733, value1))
    (child2163 : Flapjack.WordAlloc.removeDeadStructural input2163 value733 value1 value2 = (output2163, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2164 value732 value1 value2 = (output2164, value1100, value1) := by
  rw [input2164_def, output2164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1372]
  try dsimp only
  rw [child2163]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1372_skip, output2163_skip]
  kernel_rfl

theorem node2165_cond_eq
    (child1371 : Flapjack.WordAlloc.removeDeadStructural input1371 value727 value1 value2 = (output1371, value732, value1))
    (child2164 : Flapjack.WordAlloc.removeDeadStructural input2164 value732 value1 value2 = (output2164, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2165 value727 value1 value2 = (output2165, value1100, value1) := by
  rw [input2165_def, output2165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1371]
  try dsimp only
  rw [child2164]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1371_skip, output2164_skip]
  kernel_rfl

theorem node2166_cond_eq
    (child1362 : Flapjack.WordAlloc.removeDeadStructural input1362 value726 value1 value2 = (output1362, value727, value1))
    (child2165 : Flapjack.WordAlloc.removeDeadStructural input2165 value727 value1 value2 = (output2165, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2166 value726 value1 value2 = (output2166, value1100, value1) := by
  rw [input2166_def, output2166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1362]
  try dsimp only
  rw [child2165]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1362_skip, output2165_skip]
  kernel_rfl

theorem node2167_cond_eq
    (child1361 : Flapjack.WordAlloc.removeDeadStructural input1361 value726 value1 value2 = (output1361, value726, value1))
    (child2166 : Flapjack.WordAlloc.removeDeadStructural input2166 value726 value1 value2 = (output2166, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2167 value726 value1 value2 = (output2167, value1100, value1) := by
  rw [input2167_def, output2167_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1361]
  try dsimp only
  rw [child2166]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1361_skip, output2166_skip]
  kernel_rfl

theorem node2168_cond_eq
    (child1360 : Flapjack.WordAlloc.removeDeadStructural input1360 value726 value1 value2 = (output1360, value726, value1))
    (child2167 : Flapjack.WordAlloc.removeDeadStructural input2167 value726 value1 value2 = (output2167, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2168 value726 value1 value2 = (output2168, value1100, value1) := by
  rw [input2168_def, output2168_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1360]
  try dsimp only
  rw [child2167]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1360_skip, output2167_skip]
  kernel_rfl

theorem node2169_cond_eq
    (child1359 : Flapjack.WordAlloc.removeDeadStructural input1359 value723 value1 value2 = (output1359, value726, value1))
    (child2168 : Flapjack.WordAlloc.removeDeadStructural input2168 value726 value1 value2 = (output2168, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2169 value723 value1 value2 = (output2169, value1100, value1) := by
  rw [input2169_def, output2169_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1359]
  try dsimp only
  rw [child2168]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1359_skip, output2168_skip]
  kernel_rfl

theorem node2170_cond_eq
    (child1354 : Flapjack.WordAlloc.removeDeadStructural input1354 value720 value1 value2 = (output1354, value723, value1))
    (child2169 : Flapjack.WordAlloc.removeDeadStructural input2169 value723 value1 value2 = (output2169, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2170 value720 value1 value2 = (output2170, value1100, value1) := by
  rw [input2170_def, output2170_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1354]
  try dsimp only
  rw [child2169]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1354_skip, output2169_skip]
  kernel_rfl

theorem node2171_cond_eq
    (child1349 : Flapjack.WordAlloc.removeDeadStructural input1349 value716 value1 value2 = (output1349, value720, value1))
    (child2170 : Flapjack.WordAlloc.removeDeadStructural input2170 value720 value1 value2 = (output2170, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2171 value716 value1 value2 = (output2171, value1100, value1) := by
  rw [input2171_def, output2171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1349]
  try dsimp only
  rw [child2170]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1349_skip, output2170_skip]
  kernel_rfl

theorem node2172_cond_eq
    (child1342 : Flapjack.WordAlloc.removeDeadStructural input1342 value716 value1 value2 = (output1342, value716, value1))
    (child2171 : Flapjack.WordAlloc.removeDeadStructural input2171 value716 value1 value2 = (output2171, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2172 value716 value1 value2 = (output2172, value1100, value1) := by
  rw [input2172_def, output2172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1342]
  try dsimp only
  rw [child2171]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1342_skip, output2171_skip]
  kernel_rfl

theorem node2173_cond_eq
    (child1341 : Flapjack.WordAlloc.removeDeadStructural input1341 value716 value1 value2 = (output1341, value716, value1))
    (child2172 : Flapjack.WordAlloc.removeDeadStructural input2172 value716 value1 value2 = (output2172, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2173 value716 value1 value2 = (output2173, value1100, value1) := by
  rw [input2173_def, output2173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1341]
  try dsimp only
  rw [child2172]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1341_skip, output2172_skip]
  kernel_rfl

theorem node2174_cond_eq
    (child1340 : Flapjack.WordAlloc.removeDeadStructural input1340 value715 value1 value2 = (output1340, value716, value1))
    (child2173 : Flapjack.WordAlloc.removeDeadStructural input2173 value716 value1 value2 = (output2173, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2174 value715 value1 value2 = (output2174, value1100, value1) := by
  rw [input2174_def, output2174_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1340]
  try dsimp only
  rw [child2173]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1340_skip, output2173_skip]
  kernel_rfl

theorem node2175_cond_eq
    (child1339 : Flapjack.WordAlloc.removeDeadStructural input1339 value714 value1 value2 = (output1339, value715, value1))
    (child2174 : Flapjack.WordAlloc.removeDeadStructural input2174 value715 value1 value2 = (output2174, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2175 value714 value1 value2 = (output2175, value1100, value1) := by
  rw [input2175_def, output2175_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1339]
  try dsimp only
  rw [child2174]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1339_skip, output2174_skip]
  kernel_rfl

theorem node2176_cond_eq
    (child1338 : Flapjack.WordAlloc.removeDeadStructural input1338 value711 value1 value2 = (output1338, value714, value1))
    (child2175 : Flapjack.WordAlloc.removeDeadStructural input2175 value714 value1 value2 = (output2175, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2176 value711 value1 value2 = (output2176, value1100, value1) := by
  rw [input2176_def, output2176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1338]
  try dsimp only
  rw [child2175]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1338_skip, output2175_skip]
  kernel_rfl

theorem node2177_cond_eq
    (child1333 : Flapjack.WordAlloc.removeDeadStructural input1333 value710 value1 value2 = (output1333, value711, value1))
    (child2176 : Flapjack.WordAlloc.removeDeadStructural input2176 value711 value1 value2 = (output2176, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2177 value710 value1 value2 = (output2177, value1100, value1) := by
  rw [input2177_def, output2177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1333]
  try dsimp only
  rw [child2176]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1333_skip, output2176_skip]
  kernel_rfl

theorem node2178_cond_eq
    (child1332 : Flapjack.WordAlloc.removeDeadStructural input1332 value707 value1 value2 = (output1332, value710, value1))
    (child2177 : Flapjack.WordAlloc.removeDeadStructural input2177 value710 value1 value2 = (output2177, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2178 value707 value1 value2 = (output2178, value1100, value1) := by
  rw [input2178_def, output2178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1332]
  try dsimp only
  rw [child2177]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1332_skip, output2177_skip]
  kernel_rfl

theorem node2179_cond_eq
    (child1327 : Flapjack.WordAlloc.removeDeadStructural input1327 value706 value1 value2 = (output1327, value707, value1))
    (child2178 : Flapjack.WordAlloc.removeDeadStructural input2178 value707 value1 value2 = (output2178, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2179 value706 value1 value2 = (output2179, value1100, value1) := by
  rw [input2179_def, output2179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1327]
  try dsimp only
  rw [child2178]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1327_skip, output2178_skip]
  kernel_rfl

theorem node2180_cond_eq
    (child1326 : Flapjack.WordAlloc.removeDeadStructural input1326 value704 value1 value2 = (output1326, value706, value1))
    (child2179 : Flapjack.WordAlloc.removeDeadStructural input2179 value706 value1 value2 = (output2179, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2180 value704 value1 value2 = (output2180, value1100, value1) := by
  rw [input2180_def, output2180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1326]
  try dsimp only
  rw [child2179]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1326_skip, output2179_skip]
  kernel_rfl

theorem node2181_cond_eq
    (child1323 : Flapjack.WordAlloc.removeDeadStructural input1323 value703 value1 value2 = (output1323, value704, value1))
    (child2180 : Flapjack.WordAlloc.removeDeadStructural input2180 value704 value1 value2 = (output2180, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2181 value703 value1 value2 = (output2181, value1100, value1) := by
  rw [input2181_def, output2181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1323]
  try dsimp only
  rw [child2180]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1323_skip, output2180_skip]
  kernel_rfl

theorem node2182_cond_eq
    (child1322 : Flapjack.WordAlloc.removeDeadStructural input1322 value702 value1 value2 = (output1322, value703, value1))
    (child2181 : Flapjack.WordAlloc.removeDeadStructural input2181 value703 value1 value2 = (output2181, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2182 value702 value1 value2 = (output2182, value1100, value1) := by
  rw [input2182_def, output2182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1322]
  try dsimp only
  rw [child2181]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1322_skip, output2181_skip]
  kernel_rfl

theorem node2183_cond_eq
    (child1321 : Flapjack.WordAlloc.removeDeadStructural input1321 value701 value1 value2 = (output1321, value702, value1))
    (child2182 : Flapjack.WordAlloc.removeDeadStructural input2182 value702 value1 value2 = (output2182, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2183 value701 value1 value2 = (output2183, value1100, value1) := by
  rw [input2183_def, output2183_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1321]
  try dsimp only
  rw [child2182]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1321_skip, output2182_skip]
  kernel_rfl

theorem node2184_cond_eq
    (child1320 : Flapjack.WordAlloc.removeDeadStructural input1320 value698 value1 value2 = (output1320, value701, value1))
    (child2183 : Flapjack.WordAlloc.removeDeadStructural input2183 value701 value1 value2 = (output2183, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2184 value698 value1 value2 = (output2184, value1100, value1) := by
  rw [input2184_def, output2184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1320]
  try dsimp only
  rw [child2183]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1320_skip, output2183_skip]
  kernel_rfl

theorem node2185_cond_eq
    (child1315 : Flapjack.WordAlloc.removeDeadStructural input1315 value697 value1 value2 = (output1315, value698, value1))
    (child2184 : Flapjack.WordAlloc.removeDeadStructural input2184 value698 value1 value2 = (output2184, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2185 value697 value1 value2 = (output2185, value1100, value1) := by
  rw [input2185_def, output2185_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1315]
  try dsimp only
  rw [child2184]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1315_skip, output2184_skip]
  kernel_rfl

theorem node2186_cond_eq
    (child1314 : Flapjack.WordAlloc.removeDeadStructural input1314 value692 value1 value2 = (output1314, value697, value1))
    (child2185 : Flapjack.WordAlloc.removeDeadStructural input2185 value697 value1 value2 = (output2185, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2186 value692 value1 value2 = (output2186, value1100, value1) := by
  rw [input2186_def, output2186_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1314]
  try dsimp only
  rw [child2185]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1314_skip, output2185_skip]
  kernel_rfl

theorem node2187_cond_eq
    (child1305 : Flapjack.WordAlloc.removeDeadStructural input1305 value691 value1 value2 = (output1305, value692, value1))
    (child2186 : Flapjack.WordAlloc.removeDeadStructural input2186 value692 value1 value2 = (output2186, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2187 value691 value1 value2 = (output2187, value1100, value1) := by
  rw [input2187_def, output2187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1305]
  try dsimp only
  rw [child2186]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1305_skip, output2186_skip]
  kernel_rfl

theorem node2188_cond_eq
    (child1304 : Flapjack.WordAlloc.removeDeadStructural input1304 value687 value1 value2 = (output1304, value691, value1))
    (child2187 : Flapjack.WordAlloc.removeDeadStructural input2187 value691 value1 value2 = (output2187, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2188 value687 value1 value2 = (output2188, value1100, value1) := by
  rw [input2188_def, output2188_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1304]
  try dsimp only
  rw [child2187]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1304_skip, output2187_skip]
  kernel_rfl

theorem node2189_cond_eq
    (child1297 : Flapjack.WordAlloc.removeDeadStructural input1297 value686 value1 value2 = (output1297, value687, value1))
    (child2188 : Flapjack.WordAlloc.removeDeadStructural input2188 value687 value1 value2 = (output2188, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2189 value686 value1 value2 = (output2189, value1100, value1) := by
  rw [input2189_def, output2189_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1297]
  try dsimp only
  rw [child2188]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1297_skip, output2188_skip]
  kernel_rfl

theorem node2190_cond_eq
    (child1296 : Flapjack.WordAlloc.removeDeadStructural input1296 value685 value1 value2 = (output1296, value686, value1))
    (child2189 : Flapjack.WordAlloc.removeDeadStructural input2189 value686 value1 value2 = (output2189, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2190 value685 value1 value2 = (output2190, value1100, value1) := by
  rw [input2190_def, output2190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1296]
  try dsimp only
  rw [child2189]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1296_skip, output2189_skip]
  kernel_rfl

theorem node2191_cond_eq
    (child1295 : Flapjack.WordAlloc.removeDeadStructural input1295 value684 value1 value2 = (output1295, value685, value1))
    (child2190 : Flapjack.WordAlloc.removeDeadStructural input2190 value685 value1 value2 = (output2190, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2191 value684 value1 value2 = (output2191, value1100, value1) := by
  rw [input2191_def, output2191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1295]
  try dsimp only
  rw [child2190]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1295_skip, output2190_skip]
  kernel_rfl

theorem node2192_cond_eq
    (child1294 : Flapjack.WordAlloc.removeDeadStructural input1294 value681 value1 value2 = (output1294, value684, value1))
    (child2191 : Flapjack.WordAlloc.removeDeadStructural input2191 value684 value1 value2 = (output2191, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2192 value681 value1 value2 = (output2192, value1100, value1) := by
  rw [input2192_def, output2192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1294]
  try dsimp only
  rw [child2191]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1294_skip, output2191_skip]
  kernel_rfl

theorem node2193_cond_eq
    (child1289 : Flapjack.WordAlloc.removeDeadStructural input1289 value680 value1 value2 = (output1289, value681, value1))
    (child2192 : Flapjack.WordAlloc.removeDeadStructural input2192 value681 value1 value2 = (output2192, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2193 value680 value1 value2 = (output2193, value1100, value1) := by
  rw [input2193_def, output2193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1289]
  try dsimp only
  rw [child2192]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1289_skip, output2192_skip]
  kernel_rfl

theorem node2194_cond_eq
    (child1288 : Flapjack.WordAlloc.removeDeadStructural input1288 value675 value1 value2 = (output1288, value680, value1))
    (child2193 : Flapjack.WordAlloc.removeDeadStructural input2193 value680 value1 value2 = (output2193, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2194 value675 value1 value2 = (output2194, value1100, value1) := by
  rw [input2194_def, output2194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1288]
  try dsimp only
  rw [child2193]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1288_skip, output2193_skip]
  kernel_rfl

theorem node2195_cond_eq
    (child1279 : Flapjack.WordAlloc.removeDeadStructural input1279 value674 value1 value2 = (output1279, value675, value1))
    (child2194 : Flapjack.WordAlloc.removeDeadStructural input2194 value675 value1 value2 = (output2194, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2195 value674 value1 value2 = (output2195, value1100, value1) := by
  rw [input2195_def, output2195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1279]
  try dsimp only
  rw [child2194]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1279_skip, output2194_skip]
  kernel_rfl

theorem node2196_cond_eq
    (child1278 : Flapjack.WordAlloc.removeDeadStructural input1278 value670 value1 value2 = (output1278, value674, value1))
    (child2195 : Flapjack.WordAlloc.removeDeadStructural input2195 value674 value1 value2 = (output2195, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2196 value670 value1 value2 = (output2196, value1100, value1) := by
  rw [input2196_def, output2196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1278]
  try dsimp only
  rw [child2195]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1278_skip, output2195_skip]
  kernel_rfl

theorem node2197_cond_eq
    (child1271 : Flapjack.WordAlloc.removeDeadStructural input1271 value669 value1 value2 = (output1271, value670, value1))
    (child2196 : Flapjack.WordAlloc.removeDeadStructural input2196 value670 value1 value2 = (output2196, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2197 value669 value1 value2 = (output2197, value1100, value1) := by
  rw [input2197_def, output2197_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1271]
  try dsimp only
  rw [child2196]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1271_skip, output2196_skip]
  kernel_rfl

theorem node2198_cond_eq
    (child1270 : Flapjack.WordAlloc.removeDeadStructural input1270 value668 value1 value2 = (output1270, value669, value1))
    (child2197 : Flapjack.WordAlloc.removeDeadStructural input2197 value669 value1 value2 = (output2197, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2198 value668 value1 value2 = (output2198, value1100, value1) := by
  rw [input2198_def, output2198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1270]
  try dsimp only
  rw [child2197]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1270_skip, output2197_skip]
  kernel_rfl

theorem node2199_cond_eq
    (child1269 : Flapjack.WordAlloc.removeDeadStructural input1269 value667 value1 value2 = (output1269, value668, value1))
    (child2198 : Flapjack.WordAlloc.removeDeadStructural input2198 value668 value1 value2 = (output2198, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2199 value667 value1 value2 = (output2199, value1100, value1) := by
  rw [input2199_def, output2199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1269]
  try dsimp only
  rw [child2198]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1269_skip, output2198_skip]
  kernel_rfl

theorem node2200_cond_eq
    (child1268 : Flapjack.WordAlloc.removeDeadStructural input1268 value664 value1 value2 = (output1268, value667, value1))
    (child2199 : Flapjack.WordAlloc.removeDeadStructural input2199 value667 value1 value2 = (output2199, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2200 value664 value1 value2 = (output2200, value1100, value1) := by
  rw [input2200_def, output2200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1268]
  try dsimp only
  rw [child2199]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1268_skip, output2199_skip]
  kernel_rfl

theorem node2201_cond_eq
    (child1263 : Flapjack.WordAlloc.removeDeadStructural input1263 value663 value1 value2 = (output1263, value664, value1))
    (child2200 : Flapjack.WordAlloc.removeDeadStructural input2200 value664 value1 value2 = (output2200, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2201 value663 value1 value2 = (output2201, value1100, value1) := by
  rw [input2201_def, output2201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1263]
  try dsimp only
  rw [child2200]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1263_skip, output2200_skip]
  kernel_rfl

theorem node2202_cond_eq
    (child1262 : Flapjack.WordAlloc.removeDeadStructural input1262 value658 value1 value2 = (output1262, value663, value1))
    (child2201 : Flapjack.WordAlloc.removeDeadStructural input2201 value663 value1 value2 = (output2201, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2202 value658 value1 value2 = (output2202, value1100, value1) := by
  rw [input2202_def, output2202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1262]
  try dsimp only
  rw [child2201]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1262_skip, output2201_skip]
  kernel_rfl

theorem node2203_cond_eq
    (child1253 : Flapjack.WordAlloc.removeDeadStructural input1253 value657 value1 value2 = (output1253, value658, value1))
    (child2202 : Flapjack.WordAlloc.removeDeadStructural input2202 value658 value1 value2 = (output2202, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2203 value657 value1 value2 = (output2203, value1100, value1) := by
  rw [input2203_def, output2203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1253]
  try dsimp only
  rw [child2202]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1253_skip, output2202_skip]
  kernel_rfl

theorem node2204_cond_eq
    (child1252 : Flapjack.WordAlloc.removeDeadStructural input1252 value653 value1 value2 = (output1252, value657, value1))
    (child2203 : Flapjack.WordAlloc.removeDeadStructural input2203 value657 value1 value2 = (output2203, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2204 value653 value1 value2 = (output2204, value1100, value1) := by
  rw [input2204_def, output2204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1252]
  try dsimp only
  rw [child2203]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1252_skip, output2203_skip]
  kernel_rfl

theorem node2205_cond_eq
    (child1245 : Flapjack.WordAlloc.removeDeadStructural input1245 value652 value1 value2 = (output1245, value653, value1))
    (child2204 : Flapjack.WordAlloc.removeDeadStructural input2204 value653 value1 value2 = (output2204, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2205 value652 value1 value2 = (output2205, value1100, value1) := by
  rw [input2205_def, output2205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1245]
  try dsimp only
  rw [child2204]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1245_skip, output2204_skip]
  kernel_rfl

theorem node2206_cond_eq
    (child1244 : Flapjack.WordAlloc.removeDeadStructural input1244 value649 value1 value2 = (output1244, value652, value1))
    (child2205 : Flapjack.WordAlloc.removeDeadStructural input2205 value652 value1 value2 = (output2205, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2206 value649 value1 value2 = (output2206, value1100, value1) := by
  rw [input2206_def, output2206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1244]
  try dsimp only
  rw [child2205]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1244_skip, output2205_skip]
  kernel_rfl

theorem node2207_cond_eq
    (child1239 : Flapjack.WordAlloc.removeDeadStructural input1239 value648 value1 value2 = (output1239, value649, value1))
    (child2206 : Flapjack.WordAlloc.removeDeadStructural input2206 value649 value1 value2 = (output2206, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2207 value648 value1 value2 = (output2207, value1100, value1) := by
  rw [input2207_def, output2207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1239]
  try dsimp only
  rw [child2206]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1239_skip, output2206_skip]
  kernel_rfl

theorem node2208_cond_eq
    (child1238 : Flapjack.WordAlloc.removeDeadStructural input1238 value645 value1 value2 = (output1238, value648, value1))
    (child2207 : Flapjack.WordAlloc.removeDeadStructural input2207 value648 value1 value2 = (output2207, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2208 value645 value1 value2 = (output2208, value1100, value1) := by
  rw [input2208_def, output2208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1238]
  try dsimp only
  rw [child2207]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1238_skip, output2207_skip]
  kernel_rfl

theorem node2209_cond_eq
    (child1233 : Flapjack.WordAlloc.removeDeadStructural input1233 value644 value1 value2 = (output1233, value645, value1))
    (child2208 : Flapjack.WordAlloc.removeDeadStructural input2208 value645 value1 value2 = (output2208, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2209 value644 value1 value2 = (output2209, value1100, value1) := by
  rw [input2209_def, output2209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1233]
  try dsimp only
  rw [child2208]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1233_skip, output2208_skip]
  kernel_rfl

theorem node2210_cond_eq
    (child1232 : Flapjack.WordAlloc.removeDeadStructural input1232 value644 value1 value2 = (output1232, value644, value1))
    (child2209 : Flapjack.WordAlloc.removeDeadStructural input2209 value644 value1 value2 = (output2209, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2210 value644 value1 value2 = (output2210, value1100, value1) := by
  rw [input2210_def, output2210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1232]
  try dsimp only
  rw [child2209]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1232_skip, output2209_skip]
  kernel_rfl

theorem node2211_cond_eq
    (child1231 : Flapjack.WordAlloc.removeDeadStructural input1231 value644 value1 value2 = (output1231, value644, value1))
    (child2210 : Flapjack.WordAlloc.removeDeadStructural input2210 value644 value1 value2 = (output2210, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2211 value644 value1 value2 = (output2211, value1100, value1) := by
  rw [input2211_def, output2211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1231]
  try dsimp only
  rw [child2210]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1231_skip, output2210_skip]
  kernel_rfl

theorem node2212_cond_eq
    (child1230 : Flapjack.WordAlloc.removeDeadStructural input1230 value641 value1 value2 = (output1230, value644, value1))
    (child2211 : Flapjack.WordAlloc.removeDeadStructural input2211 value644 value1 value2 = (output2211, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2212 value641 value1 value2 = (output2212, value1100, value1) := by
  rw [input2212_def, output2212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1230]
  try dsimp only
  rw [child2211]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1230_skip, output2211_skip]
  kernel_rfl

theorem node2213_cond_eq
    (child1225 : Flapjack.WordAlloc.removeDeadStructural input1225 value638 value1 value2 = (output1225, value641, value1))
    (child2212 : Flapjack.WordAlloc.removeDeadStructural input2212 value641 value1 value2 = (output2212, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2213 value638 value1 value2 = (output2213, value1100, value1) := by
  rw [input2213_def, output2213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1225]
  try dsimp only
  rw [child2212]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1225_skip, output2212_skip]
  kernel_rfl

theorem node2214_cond_eq
    (child1220 : Flapjack.WordAlloc.removeDeadStructural input1220 value634 value1 value2 = (output1220, value638, value1))
    (child2213 : Flapjack.WordAlloc.removeDeadStructural input2213 value638 value1 value2 = (output2213, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2214 value634 value1 value2 = (output2214, value1100, value1) := by
  rw [input2214_def, output2214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1220]
  try dsimp only
  rw [child2213]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1220_skip, output2213_skip]
  kernel_rfl

theorem node2215_cond_eq
    (child1213 : Flapjack.WordAlloc.removeDeadStructural input1213 value634 value1 value2 = (output1213, value634, value1))
    (child2214 : Flapjack.WordAlloc.removeDeadStructural input2214 value634 value1 value2 = (output2214, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2215 value634 value1 value2 = (output2215, value1100, value1) := by
  rw [input2215_def, output2215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1213]
  try dsimp only
  rw [child2214]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1213_skip, output2214_skip]
  kernel_rfl

theorem node2216_cond_eq
    (child1212 : Flapjack.WordAlloc.removeDeadStructural input1212 value634 value1 value2 = (output1212, value634, value1))
    (child2215 : Flapjack.WordAlloc.removeDeadStructural input2215 value634 value1 value2 = (output2215, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2216 value634 value1 value2 = (output2216, value1100, value1) := by
  rw [input2216_def, output2216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1212]
  try dsimp only
  rw [child2215]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1212_skip, output2215_skip]
  kernel_rfl

theorem node2217_cond_eq
    (child1211 : Flapjack.WordAlloc.removeDeadStructural input1211 value633 value1 value2 = (output1211, value634, value1))
    (child2216 : Flapjack.WordAlloc.removeDeadStructural input2216 value634 value1 value2 = (output2216, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2217 value633 value1 value2 = (output2217, value1100, value1) := by
  rw [input2217_def, output2217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1211]
  try dsimp only
  rw [child2216]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1211_skip, output2216_skip]
  kernel_rfl

theorem node2218_cond_eq
    (child1210 : Flapjack.WordAlloc.removeDeadStructural input1210 value632 value1 value2 = (output1210, value633, value1))
    (child2217 : Flapjack.WordAlloc.removeDeadStructural input2217 value633 value1 value2 = (output2217, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2218 value632 value1 value2 = (output2218, value1100, value1) := by
  rw [input2218_def, output2218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1210]
  try dsimp only
  rw [child2217]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1210_skip, output2217_skip]
  kernel_rfl

theorem node2219_cond_eq
    (child1209 : Flapjack.WordAlloc.removeDeadStructural input1209 value629 value1 value2 = (output1209, value632, value1))
    (child2218 : Flapjack.WordAlloc.removeDeadStructural input2218 value632 value1 value2 = (output2218, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2219 value629 value1 value2 = (output2219, value1100, value1) := by
  rw [input2219_def, output2219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1209]
  try dsimp only
  rw [child2218]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1209_skip, output2218_skip]
  kernel_rfl

theorem node2220_cond_eq
    (child1204 : Flapjack.WordAlloc.removeDeadStructural input1204 value628 value1 value2 = (output1204, value629, value1))
    (child2219 : Flapjack.WordAlloc.removeDeadStructural input2219 value629 value1 value2 = (output2219, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2220 value628 value1 value2 = (output2220, value1100, value1) := by
  rw [input2220_def, output2220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1204]
  try dsimp only
  rw [child2219]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1204_skip, output2219_skip]
  kernel_rfl

theorem node2221_cond_eq
    (child1203 : Flapjack.WordAlloc.removeDeadStructural input1203 value625 value1 value2 = (output1203, value628, value1))
    (child2220 : Flapjack.WordAlloc.removeDeadStructural input2220 value628 value1 value2 = (output2220, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2221 value625 value1 value2 = (output2221, value1100, value1) := by
  rw [input2221_def, output2221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1203]
  try dsimp only
  rw [child2220]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1203_skip, output2220_skip]
  kernel_rfl

theorem node2222_cond_eq
    (child1198 : Flapjack.WordAlloc.removeDeadStructural input1198 value624 value1 value2 = (output1198, value625, value1))
    (child2221 : Flapjack.WordAlloc.removeDeadStructural input2221 value625 value1 value2 = (output2221, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2222 value624 value1 value2 = (output2222, value1100, value1) := by
  rw [input2222_def, output2222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1198]
  try dsimp only
  rw [child2221]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1198_skip, output2221_skip]
  kernel_rfl

theorem node2223_cond_eq
    (child1197 : Flapjack.WordAlloc.removeDeadStructural input1197 value622 value1 value2 = (output1197, value624, value1))
    (child2222 : Flapjack.WordAlloc.removeDeadStructural input2222 value624 value1 value2 = (output2222, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2223 value622 value1 value2 = (output2223, value1100, value1) := by
  rw [input2223_def, output2223_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1197]
  try dsimp only
  rw [child2222]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1197_skip, output2222_skip]
  kernel_rfl

theorem node2224_cond_eq
    (child1194 : Flapjack.WordAlloc.removeDeadStructural input1194 value621 value1 value2 = (output1194, value622, value1))
    (child2223 : Flapjack.WordAlloc.removeDeadStructural input2223 value622 value1 value2 = (output2223, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2224 value621 value1 value2 = (output2224, value1100, value1) := by
  rw [input2224_def, output2224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1194]
  try dsimp only
  rw [child2223]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1194_skip, output2223_skip]
  kernel_rfl

theorem node2225_cond_eq
    (child1193 : Flapjack.WordAlloc.removeDeadStructural input1193 value620 value1 value2 = (output1193, value621, value1))
    (child2224 : Flapjack.WordAlloc.removeDeadStructural input2224 value621 value1 value2 = (output2224, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2225 value620 value1 value2 = (output2225, value1100, value1) := by
  rw [input2225_def, output2225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1193]
  try dsimp only
  rw [child2224]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1193_skip, output2224_skip]
  kernel_rfl

theorem node2226_cond_eq
    (child1192 : Flapjack.WordAlloc.removeDeadStructural input1192 value619 value1 value2 = (output1192, value620, value1))
    (child2225 : Flapjack.WordAlloc.removeDeadStructural input2225 value620 value1 value2 = (output2225, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2226 value619 value1 value2 = (output2226, value1100, value1) := by
  rw [input2226_def, output2226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1192]
  try dsimp only
  rw [child2225]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1192_skip, output2225_skip]
  kernel_rfl

theorem node2227_cond_eq
    (child1191 : Flapjack.WordAlloc.removeDeadStructural input1191 value616 value1 value2 = (output1191, value619, value1))
    (child2226 : Flapjack.WordAlloc.removeDeadStructural input2226 value619 value1 value2 = (output2226, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2227 value616 value1 value2 = (output2227, value1100, value1) := by
  rw [input2227_def, output2227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1191]
  try dsimp only
  rw [child2226]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1191_skip, output2226_skip]
  kernel_rfl

theorem node2228_cond_eq
    (child1186 : Flapjack.WordAlloc.removeDeadStructural input1186 value615 value1 value2 = (output1186, value616, value1))
    (child2227 : Flapjack.WordAlloc.removeDeadStructural input2227 value616 value1 value2 = (output2227, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2228 value615 value1 value2 = (output2228, value1100, value1) := by
  rw [input2228_def, output2228_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1186]
  try dsimp only
  rw [child2227]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1186_skip, output2227_skip]
  kernel_rfl

theorem node2229_cond_eq
    (child1185 : Flapjack.WordAlloc.removeDeadStructural input1185 value610 value1 value2 = (output1185, value615, value1))
    (child2228 : Flapjack.WordAlloc.removeDeadStructural input2228 value615 value1 value2 = (output2228, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2229 value610 value1 value2 = (output2229, value1100, value1) := by
  rw [input2229_def, output2229_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1185]
  try dsimp only
  rw [child2228]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1185_skip, output2228_skip]
  kernel_rfl

theorem node2230_cond_eq
    (child1176 : Flapjack.WordAlloc.removeDeadStructural input1176 value609 value1 value2 = (output1176, value610, value1))
    (child2229 : Flapjack.WordAlloc.removeDeadStructural input2229 value610 value1 value2 = (output2229, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2230 value609 value1 value2 = (output2230, value1100, value1) := by
  rw [input2230_def, output2230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1176]
  try dsimp only
  rw [child2229]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1176_skip, output2229_skip]
  kernel_rfl

theorem node2231_cond_eq
    (child1175 : Flapjack.WordAlloc.removeDeadStructural input1175 value605 value1 value2 = (output1175, value609, value1))
    (child2230 : Flapjack.WordAlloc.removeDeadStructural input2230 value609 value1 value2 = (output2230, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2231 value605 value1 value2 = (output2231, value1100, value1) := by
  rw [input2231_def, output2231_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1175]
  try dsimp only
  rw [child2230]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1175_skip, output2230_skip]
  kernel_rfl

theorem node2232_cond_eq
    (child1168 : Flapjack.WordAlloc.removeDeadStructural input1168 value604 value1 value2 = (output1168, value605, value1))
    (child2231 : Flapjack.WordAlloc.removeDeadStructural input2231 value605 value1 value2 = (output2231, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2232 value604 value1 value2 = (output2232, value1100, value1) := by
  rw [input2232_def, output2232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1168]
  try dsimp only
  rw [child2231]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1168_skip, output2231_skip]
  kernel_rfl

theorem node2233_cond_eq
    (child1167 : Flapjack.WordAlloc.removeDeadStructural input1167 value603 value1 value2 = (output1167, value604, value1))
    (child2232 : Flapjack.WordAlloc.removeDeadStructural input2232 value604 value1 value2 = (output2232, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2233 value603 value1 value2 = (output2233, value1100, value1) := by
  rw [input2233_def, output2233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1167]
  try dsimp only
  rw [child2232]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1167_skip, output2232_skip]
  kernel_rfl

theorem node2234_cond_eq
    (child1166 : Flapjack.WordAlloc.removeDeadStructural input1166 value602 value1 value2 = (output1166, value603, value1))
    (child2233 : Flapjack.WordAlloc.removeDeadStructural input2233 value603 value1 value2 = (output2233, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2234 value602 value1 value2 = (output2234, value1100, value1) := by
  rw [input2234_def, output2234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1166]
  try dsimp only
  rw [child2233]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1166_skip, output2233_skip]
  kernel_rfl

theorem node2235_cond_eq
    (child1165 : Flapjack.WordAlloc.removeDeadStructural input1165 value599 value1 value2 = (output1165, value602, value1))
    (child2234 : Flapjack.WordAlloc.removeDeadStructural input2234 value602 value1 value2 = (output2234, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2235 value599 value1 value2 = (output2235, value1100, value1) := by
  rw [input2235_def, output2235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1165]
  try dsimp only
  rw [child2234]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1165_skip, output2234_skip]
  kernel_rfl

theorem node2236_cond_eq
    (child1160 : Flapjack.WordAlloc.removeDeadStructural input1160 value598 value1 value2 = (output1160, value599, value1))
    (child2235 : Flapjack.WordAlloc.removeDeadStructural input2235 value599 value1 value2 = (output2235, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2236 value598 value1 value2 = (output2236, value1100, value1) := by
  rw [input2236_def, output2236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1160]
  try dsimp only
  rw [child2235]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1160_skip, output2235_skip]
  kernel_rfl

theorem node2237_cond_eq
    (child1159 : Flapjack.WordAlloc.removeDeadStructural input1159 value593 value1 value2 = (output1159, value598, value1))
    (child2236 : Flapjack.WordAlloc.removeDeadStructural input2236 value598 value1 value2 = (output2236, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2237 value593 value1 value2 = (output2237, value1100, value1) := by
  rw [input2237_def, output2237_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1159]
  try dsimp only
  rw [child2236]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1159_skip, output2236_skip]
  kernel_rfl

theorem node2238_cond_eq
    (child1150 : Flapjack.WordAlloc.removeDeadStructural input1150 value592 value1 value2 = (output1150, value593, value1))
    (child2237 : Flapjack.WordAlloc.removeDeadStructural input2237 value593 value1 value2 = (output2237, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2238 value592 value1 value2 = (output2238, value1100, value1) := by
  rw [input2238_def, output2238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1150]
  try dsimp only
  rw [child2237]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1150_skip, output2237_skip]
  kernel_rfl

theorem node2239_cond_eq
    (child1149 : Flapjack.WordAlloc.removeDeadStructural input1149 value588 value1 value2 = (output1149, value592, value1))
    (child2238 : Flapjack.WordAlloc.removeDeadStructural input2238 value592 value1 value2 = (output2238, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2239 value588 value1 value2 = (output2239, value1100, value1) := by
  rw [input2239_def, output2239_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1149]
  try dsimp only
  rw [child2238]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1149_skip, output2238_skip]
  kernel_rfl

theorem node2240_cond_eq
    (child1142 : Flapjack.WordAlloc.removeDeadStructural input1142 value587 value1 value2 = (output1142, value588, value1))
    (child2239 : Flapjack.WordAlloc.removeDeadStructural input2239 value588 value1 value2 = (output2239, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2240 value587 value1 value2 = (output2240, value1100, value1) := by
  rw [input2240_def, output2240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1142]
  try dsimp only
  rw [child2239]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1142_skip, output2239_skip]
  kernel_rfl

theorem node2241_cond_eq
    (child1141 : Flapjack.WordAlloc.removeDeadStructural input1141 value586 value1 value2 = (output1141, value587, value1))
    (child2240 : Flapjack.WordAlloc.removeDeadStructural input2240 value587 value1 value2 = (output2240, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2241 value586 value1 value2 = (output2241, value1100, value1) := by
  rw [input2241_def, output2241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1141]
  try dsimp only
  rw [child2240]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1141_skip, output2240_skip]
  kernel_rfl

theorem node2242_cond_eq
    (child1140 : Flapjack.WordAlloc.removeDeadStructural input1140 value585 value1 value2 = (output1140, value586, value1))
    (child2241 : Flapjack.WordAlloc.removeDeadStructural input2241 value586 value1 value2 = (output2241, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2242 value585 value1 value2 = (output2242, value1100, value1) := by
  rw [input2242_def, output2242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1140]
  try dsimp only
  rw [child2241]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1140_skip, output2241_skip]
  kernel_rfl

theorem node2243_cond_eq
    (child1139 : Flapjack.WordAlloc.removeDeadStructural input1139 value582 value1 value2 = (output1139, value585, value1))
    (child2242 : Flapjack.WordAlloc.removeDeadStructural input2242 value585 value1 value2 = (output2242, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2243 value582 value1 value2 = (output2243, value1100, value1) := by
  rw [input2243_def, output2243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1139]
  try dsimp only
  rw [child2242]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1139_skip, output2242_skip]
  kernel_rfl

theorem node2244_cond_eq
    (child1134 : Flapjack.WordAlloc.removeDeadStructural input1134 value581 value1 value2 = (output1134, value582, value1))
    (child2243 : Flapjack.WordAlloc.removeDeadStructural input2243 value582 value1 value2 = (output2243, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2244 value581 value1 value2 = (output2244, value1100, value1) := by
  rw [input2244_def, output2244_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1134]
  try dsimp only
  rw [child2243]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1134_skip, output2243_skip]
  kernel_rfl

theorem node2245_cond_eq
    (child1133 : Flapjack.WordAlloc.removeDeadStructural input1133 value578 value1 value2 = (output1133, value581, value1))
    (child2244 : Flapjack.WordAlloc.removeDeadStructural input2244 value581 value1 value2 = (output2244, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2245 value578 value1 value2 = (output2245, value1100, value1) := by
  rw [input2245_def, output2245_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1133]
  try dsimp only
  rw [child2244]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1133_skip, output2244_skip]
  kernel_rfl

theorem node2246_cond_eq
    (child1128 : Flapjack.WordAlloc.removeDeadStructural input1128 value577 value1 value2 = (output1128, value578, value1))
    (child2245 : Flapjack.WordAlloc.removeDeadStructural input2245 value578 value1 value2 = (output2245, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2246 value577 value1 value2 = (output2246, value1100, value1) := by
  rw [input2246_def, output2246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1128]
  try dsimp only
  rw [child2245]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1128_skip, output2245_skip]
  kernel_rfl

theorem node2247_cond_eq
    (child1127 : Flapjack.WordAlloc.removeDeadStructural input1127 value575 value1 value2 = (output1127, value577, value1))
    (child2246 : Flapjack.WordAlloc.removeDeadStructural input2246 value577 value1 value2 = (output2246, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2247 value575 value1 value2 = (output2247, value1100, value1) := by
  rw [input2247_def, output2247_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1127]
  try dsimp only
  rw [child2246]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1127_skip, output2246_skip]
  kernel_rfl

theorem node2248_cond_eq
    (child1124 : Flapjack.WordAlloc.removeDeadStructural input1124 value574 value1 value2 = (output1124, value575, value1))
    (child2247 : Flapjack.WordAlloc.removeDeadStructural input2247 value575 value1 value2 = (output2247, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2248 value574 value1 value2 = (output2248, value1100, value1) := by
  rw [input2248_def, output2248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1124]
  try dsimp only
  rw [child2247]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1124_skip, output2247_skip]
  kernel_rfl

theorem node2249_cond_eq
    (child1123 : Flapjack.WordAlloc.removeDeadStructural input1123 value569 value1 value2 = (output1123, value574, value1))
    (child2248 : Flapjack.WordAlloc.removeDeadStructural input2248 value574 value1 value2 = (output2248, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2249 value569 value1 value2 = (output2249, value1100, value1) := by
  rw [input2249_def, output2249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1123]
  try dsimp only
  rw [child2248]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1123_skip, output2248_skip]
  kernel_rfl

theorem node2250_cond_eq
    (child1114 : Flapjack.WordAlloc.removeDeadStructural input1114 value568 value1 value2 = (output1114, value569, value1))
    (child2249 : Flapjack.WordAlloc.removeDeadStructural input2249 value569 value1 value2 = (output2249, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2250 value568 value1 value2 = (output2250, value1100, value1) := by
  rw [input2250_def, output2250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1114]
  try dsimp only
  rw [child2249]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1114_skip, output2249_skip]
  kernel_rfl

theorem node2251_cond_eq
    (child1113 : Flapjack.WordAlloc.removeDeadStructural input1113 value563 value1 value2 = (output1113, value568, value1))
    (child2250 : Flapjack.WordAlloc.removeDeadStructural input2250 value568 value1 value2 = (output2250, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2251 value563 value1 value2 = (output2251, value1100, value1) := by
  rw [input2251_def, output2251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1113]
  try dsimp only
  rw [child2250]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1113_skip, output2250_skip]
  kernel_rfl

theorem node2252_cond_eq
    (child1104 : Flapjack.WordAlloc.removeDeadStructural input1104 value562 value1 value2 = (output1104, value563, value1))
    (child2251 : Flapjack.WordAlloc.removeDeadStructural input2251 value563 value1 value2 = (output2251, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2252 value562 value1 value2 = (output2252, value1100, value1) := by
  rw [input2252_def, output2252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1104]
  try dsimp only
  rw [child2251]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1104_skip, output2251_skip]
  kernel_rfl

theorem node2253_cond_eq
    (child1103 : Flapjack.WordAlloc.removeDeadStructural input1103 value562 value1 value2 = (output1103, value562, value1))
    (child2252 : Flapjack.WordAlloc.removeDeadStructural input2252 value562 value1 value2 = (output2252, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2253 value562 value1 value2 = (output2253, value1100, value1) := by
  rw [input2253_def, output2253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1103]
  try dsimp only
  rw [child2252]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1103_skip, output2252_skip]
  kernel_rfl

theorem node2254_cond_eq
    (child1102 : Flapjack.WordAlloc.removeDeadStructural input1102 value562 value1 value2 = (output1102, value562, value1))
    (child2253 : Flapjack.WordAlloc.removeDeadStructural input2253 value562 value1 value2 = (output2253, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2254 value562 value1 value2 = (output2254, value1100, value1) := by
  rw [input2254_def, output2254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1102]
  try dsimp only
  rw [child2253]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1102_skip, output2253_skip]
  kernel_rfl

theorem node2255_cond_eq
    (child1101 : Flapjack.WordAlloc.removeDeadStructural input1101 value559 value1 value2 = (output1101, value562, value1))
    (child2254 : Flapjack.WordAlloc.removeDeadStructural input2254 value562 value1 value2 = (output2254, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2255 value559 value1 value2 = (output2255, value1100, value1) := by
  rw [input2255_def, output2255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1101]
  try dsimp only
  rw [child2254]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1101_skip, output2254_skip]
  kernel_rfl

theorem node2256_cond_eq
    (child1096 : Flapjack.WordAlloc.removeDeadStructural input1096 value556 value1 value2 = (output1096, value559, value1))
    (child2255 : Flapjack.WordAlloc.removeDeadStructural input2255 value559 value1 value2 = (output2255, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2256 value556 value1 value2 = (output2256, value1100, value1) := by
  rw [input2256_def, output2256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1096]
  try dsimp only
  rw [child2255]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1096_skip, output2255_skip]
  kernel_rfl

theorem node2257_cond_eq
    (child1091 : Flapjack.WordAlloc.removeDeadStructural input1091 value552 value1 value2 = (output1091, value556, value1))
    (child2256 : Flapjack.WordAlloc.removeDeadStructural input2256 value556 value1 value2 = (output2256, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2257 value552 value1 value2 = (output2257, value1100, value1) := by
  rw [input2257_def, output2257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1091]
  try dsimp only
  rw [child2256]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1091_skip, output2256_skip]
  kernel_rfl

theorem node2258_cond_eq
    (child1084 : Flapjack.WordAlloc.removeDeadStructural input1084 value552 value1 value2 = (output1084, value552, value1))
    (child2257 : Flapjack.WordAlloc.removeDeadStructural input2257 value552 value1 value2 = (output2257, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2258 value552 value1 value2 = (output2258, value1100, value1) := by
  rw [input2258_def, output2258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1084]
  try dsimp only
  rw [child2257]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1084_skip, output2257_skip]
  kernel_rfl

theorem node2259_cond_eq
    (child1083 : Flapjack.WordAlloc.removeDeadStructural input1083 value552 value1 value2 = (output1083, value552, value1))
    (child2258 : Flapjack.WordAlloc.removeDeadStructural input2258 value552 value1 value2 = (output2258, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2259 value552 value1 value2 = (output2259, value1100, value1) := by
  rw [input2259_def, output2259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1083]
  try dsimp only
  rw [child2258]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1083_skip, output2258_skip]
  kernel_rfl

theorem node2260_cond_eq
    (child1082 : Flapjack.WordAlloc.removeDeadStructural input1082 value551 value1 value2 = (output1082, value552, value1))
    (child2259 : Flapjack.WordAlloc.removeDeadStructural input2259 value552 value1 value2 = (output2259, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2260 value551 value1 value2 = (output2260, value1100, value1) := by
  rw [input2260_def, output2260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1082]
  try dsimp only
  rw [child2259]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1082_skip, output2259_skip]
  kernel_rfl

theorem node2261_cond_eq
    (child1081 : Flapjack.WordAlloc.removeDeadStructural input1081 value550 value1 value2 = (output1081, value551, value1))
    (child2260 : Flapjack.WordAlloc.removeDeadStructural input2260 value551 value1 value2 = (output2260, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2261 value550 value1 value2 = (output2261, value1100, value1) := by
  rw [input2261_def, output2261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1081]
  try dsimp only
  rw [child2260]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1081_skip, output2260_skip]
  kernel_rfl

theorem node2262_cond_eq
    (child1080 : Flapjack.WordAlloc.removeDeadStructural input1080 value547 value1 value2 = (output1080, value550, value1))
    (child2261 : Flapjack.WordAlloc.removeDeadStructural input2261 value550 value1 value2 = (output2261, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2262 value547 value1 value2 = (output2262, value1100, value1) := by
  rw [input2262_def, output2262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1080]
  try dsimp only
  rw [child2261]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1080_skip, output2261_skip]
  kernel_rfl

theorem node2263_cond_eq
    (child1075 : Flapjack.WordAlloc.removeDeadStructural input1075 value546 value1 value2 = (output1075, value547, value1))
    (child2262 : Flapjack.WordAlloc.removeDeadStructural input2262 value547 value1 value2 = (output2262, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2263 value546 value1 value2 = (output2263, value1100, value1) := by
  rw [input2263_def, output2263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1075]
  try dsimp only
  rw [child2262]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1075_skip, output2262_skip]
  kernel_rfl

theorem node2264_cond_eq
    (child1074 : Flapjack.WordAlloc.removeDeadStructural input1074 value543 value1 value2 = (output1074, value546, value1))
    (child2263 : Flapjack.WordAlloc.removeDeadStructural input2263 value546 value1 value2 = (output2263, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2264 value543 value1 value2 = (output2264, value1100, value1) := by
  rw [input2264_def, output2264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1074]
  try dsimp only
  rw [child2263]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1074_skip, output2263_skip]
  kernel_rfl

theorem node2265_cond_eq
    (child1069 : Flapjack.WordAlloc.removeDeadStructural input1069 value542 value1 value2 = (output1069, value543, value1))
    (child2264 : Flapjack.WordAlloc.removeDeadStructural input2264 value543 value1 value2 = (output2264, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2265 value542 value1 value2 = (output2265, value1100, value1) := by
  rw [input2265_def, output2265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1069]
  try dsimp only
  rw [child2264]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1069_skip, output2264_skip]
  kernel_rfl

theorem node2266_cond_eq
    (child1068 : Flapjack.WordAlloc.removeDeadStructural input1068 value540 value1 value2 = (output1068, value542, value1))
    (child2265 : Flapjack.WordAlloc.removeDeadStructural input2265 value542 value1 value2 = (output2265, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2266 value540 value1 value2 = (output2266, value1100, value1) := by
  rw [input2266_def, output2266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1068]
  try dsimp only
  rw [child2265]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1068_skip, output2265_skip]
  kernel_rfl

theorem node2267_cond_eq
    (child1065 : Flapjack.WordAlloc.removeDeadStructural input1065 value539 value1 value2 = (output1065, value540, value1))
    (child2266 : Flapjack.WordAlloc.removeDeadStructural input2266 value540 value1 value2 = (output2266, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2267 value539 value1 value2 = (output2267, value1100, value1) := by
  rw [input2267_def, output2267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1065]
  try dsimp only
  rw [child2266]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1065_skip, output2266_skip]
  kernel_rfl

theorem node2268_cond_eq
    (child1064 : Flapjack.WordAlloc.removeDeadStructural input1064 value538 value1 value2 = (output1064, value539, value1))
    (child2267 : Flapjack.WordAlloc.removeDeadStructural input2267 value539 value1 value2 = (output2267, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2268 value538 value1 value2 = (output2268, value1100, value1) := by
  rw [input2268_def, output2268_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1064]
  try dsimp only
  rw [child2267]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1064_skip, output2267_skip]
  kernel_rfl

theorem node2269_cond_eq
    (child1063 : Flapjack.WordAlloc.removeDeadStructural input1063 value537 value1 value2 = (output1063, value538, value1))
    (child2268 : Flapjack.WordAlloc.removeDeadStructural input2268 value538 value1 value2 = (output2268, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2269 value537 value1 value2 = (output2269, value1100, value1) := by
  rw [input2269_def, output2269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1063]
  try dsimp only
  rw [child2268]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1063_skip, output2268_skip]
  kernel_rfl

theorem node2270_cond_eq
    (child1062 : Flapjack.WordAlloc.removeDeadStructural input1062 value534 value1 value2 = (output1062, value537, value1))
    (child2269 : Flapjack.WordAlloc.removeDeadStructural input2269 value537 value1 value2 = (output2269, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2270 value534 value1 value2 = (output2270, value1100, value1) := by
  rw [input2270_def, output2270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1062]
  try dsimp only
  rw [child2269]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1062_skip, output2269_skip]
  kernel_rfl

theorem node2271_cond_eq
    (child1057 : Flapjack.WordAlloc.removeDeadStructural input1057 value533 value1 value2 = (output1057, value534, value1))
    (child2270 : Flapjack.WordAlloc.removeDeadStructural input2270 value534 value1 value2 = (output2270, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2271 value533 value1 value2 = (output2271, value1100, value1) := by
  rw [input2271_def, output2271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1057]
  try dsimp only
  rw [child2270]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1057_skip, output2270_skip]
  kernel_rfl

theorem node2272_cond_eq
    (child1056 : Flapjack.WordAlloc.removeDeadStructural input1056 value528 value1 value2 = (output1056, value533, value1))
    (child2271 : Flapjack.WordAlloc.removeDeadStructural input2271 value533 value1 value2 = (output2271, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2272 value528 value1 value2 = (output2272, value1100, value1) := by
  rw [input2272_def, output2272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1056]
  try dsimp only
  rw [child2271]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1056_skip, output2271_skip]
  kernel_rfl

theorem node2273_cond_eq
    (child1047 : Flapjack.WordAlloc.removeDeadStructural input1047 value527 value1 value2 = (output1047, value528, value1))
    (child2272 : Flapjack.WordAlloc.removeDeadStructural input2272 value528 value1 value2 = (output2272, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2273 value527 value1 value2 = (output2273, value1100, value1) := by
  rw [input2273_def, output2273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1047]
  try dsimp only
  rw [child2272]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1047_skip, output2272_skip]
  kernel_rfl

theorem node2274_cond_eq
    (child1046 : Flapjack.WordAlloc.removeDeadStructural input1046 value523 value1 value2 = (output1046, value527, value1))
    (child2273 : Flapjack.WordAlloc.removeDeadStructural input2273 value527 value1 value2 = (output2273, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2274 value523 value1 value2 = (output2274, value1100, value1) := by
  rw [input2274_def, output2274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1046]
  try dsimp only
  rw [child2273]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1046_skip, output2273_skip]
  kernel_rfl

theorem node2275_cond_eq
    (child1039 : Flapjack.WordAlloc.removeDeadStructural input1039 value522 value1 value2 = (output1039, value523, value1))
    (child2274 : Flapjack.WordAlloc.removeDeadStructural input2274 value523 value1 value2 = (output2274, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2275 value522 value1 value2 = (output2275, value1100, value1) := by
  rw [input2275_def, output2275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1039]
  try dsimp only
  rw [child2274]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1039_skip, output2274_skip]
  kernel_rfl

theorem node2276_cond_eq
    (child1038 : Flapjack.WordAlloc.removeDeadStructural input1038 value521 value1 value2 = (output1038, value522, value1))
    (child2275 : Flapjack.WordAlloc.removeDeadStructural input2275 value522 value1 value2 = (output2275, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2276 value521 value1 value2 = (output2276, value1100, value1) := by
  rw [input2276_def, output2276_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1038]
  try dsimp only
  rw [child2275]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1038_skip, output2275_skip]
  kernel_rfl

theorem node2277_cond_eq
    (child1037 : Flapjack.WordAlloc.removeDeadStructural input1037 value520 value1 value2 = (output1037, value521, value1))
    (child2276 : Flapjack.WordAlloc.removeDeadStructural input2276 value521 value1 value2 = (output2276, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2277 value520 value1 value2 = (output2277, value1100, value1) := by
  rw [input2277_def, output2277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1037]
  try dsimp only
  rw [child2276]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1037_skip, output2276_skip]
  kernel_rfl

theorem node2278_cond_eq
    (child1036 : Flapjack.WordAlloc.removeDeadStructural input1036 value517 value1 value2 = (output1036, value520, value1))
    (child2277 : Flapjack.WordAlloc.removeDeadStructural input2277 value520 value1 value2 = (output2277, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2278 value517 value1 value2 = (output2278, value1100, value1) := by
  rw [input2278_def, output2278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1036]
  try dsimp only
  rw [child2277]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1036_skip, output2277_skip]
  kernel_rfl

theorem node2279_cond_eq
    (child1031 : Flapjack.WordAlloc.removeDeadStructural input1031 value516 value1 value2 = (output1031, value517, value1))
    (child2278 : Flapjack.WordAlloc.removeDeadStructural input2278 value517 value1 value2 = (output2278, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2279 value516 value1 value2 = (output2279, value1100, value1) := by
  rw [input2279_def, output2279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1031]
  try dsimp only
  rw [child2278]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1031_skip, output2278_skip]
  kernel_rfl

theorem node2280_cond_eq
    (child1030 : Flapjack.WordAlloc.removeDeadStructural input1030 value511 value1 value2 = (output1030, value516, value1))
    (child2279 : Flapjack.WordAlloc.removeDeadStructural input2279 value516 value1 value2 = (output2279, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2280 value511 value1 value2 = (output2280, value1100, value1) := by
  rw [input2280_def, output2280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1030]
  try dsimp only
  rw [child2279]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1030_skip, output2279_skip]
  kernel_rfl

theorem node2281_cond_eq
    (child1021 : Flapjack.WordAlloc.removeDeadStructural input1021 value510 value1 value2 = (output1021, value511, value1))
    (child2280 : Flapjack.WordAlloc.removeDeadStructural input2280 value511 value1 value2 = (output2280, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2281 value510 value1 value2 = (output2281, value1100, value1) := by
  rw [input2281_def, output2281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1021]
  try dsimp only
  rw [child2280]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1021_skip, output2280_skip]
  kernel_rfl

theorem node2282_cond_eq
    (child1020 : Flapjack.WordAlloc.removeDeadStructural input1020 value506 value1 value2 = (output1020, value510, value1))
    (child2281 : Flapjack.WordAlloc.removeDeadStructural input2281 value510 value1 value2 = (output2281, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2282 value506 value1 value2 = (output2282, value1100, value1) := by
  rw [input2282_def, output2282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1020]
  try dsimp only
  rw [child2281]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1020_skip, output2281_skip]
  kernel_rfl

theorem node2283_cond_eq
    (child1013 : Flapjack.WordAlloc.removeDeadStructural input1013 value505 value1 value2 = (output1013, value506, value1))
    (child2282 : Flapjack.WordAlloc.removeDeadStructural input2282 value506 value1 value2 = (output2282, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2283 value505 value1 value2 = (output2283, value1100, value1) := by
  rw [input2283_def, output2283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1013]
  try dsimp only
  rw [child2282]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1013_skip, output2282_skip]
  kernel_rfl

theorem node2284_cond_eq
    (child1012 : Flapjack.WordAlloc.removeDeadStructural input1012 value502 value1 value2 = (output1012, value505, value1))
    (child2283 : Flapjack.WordAlloc.removeDeadStructural input2283 value505 value1 value2 = (output2283, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2284 value502 value1 value2 = (output2284, value1100, value1) := by
  rw [input2284_def, output2284_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1012]
  try dsimp only
  rw [child2283]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1012_skip, output2283_skip]
  kernel_rfl

theorem node2285_cond_eq
    (child1007 : Flapjack.WordAlloc.removeDeadStructural input1007 value501 value1 value2 = (output1007, value502, value1))
    (child2284 : Flapjack.WordAlloc.removeDeadStructural input2284 value502 value1 value2 = (output2284, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2285 value501 value1 value2 = (output2285, value1100, value1) := by
  rw [input2285_def, output2285_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1007]
  try dsimp only
  rw [child2284]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1007_skip, output2284_skip]
  kernel_rfl

theorem node2286_cond_eq
    (child1006 : Flapjack.WordAlloc.removeDeadStructural input1006 value498 value1 value2 = (output1006, value501, value1))
    (child2285 : Flapjack.WordAlloc.removeDeadStructural input2285 value501 value1 value2 = (output2285, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2286 value498 value1 value2 = (output2286, value1100, value1) := by
  rw [input2286_def, output2286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1006]
  try dsimp only
  rw [child2285]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1006_skip, output2285_skip]
  kernel_rfl

theorem node2287_cond_eq
    (child1001 : Flapjack.WordAlloc.removeDeadStructural input1001 value497 value1 value2 = (output1001, value498, value1))
    (child2286 : Flapjack.WordAlloc.removeDeadStructural input2286 value498 value1 value2 = (output2286, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2287 value497 value1 value2 = (output2287, value1100, value1) := by
  rw [input2287_def, output2287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1001]
  try dsimp only
  rw [child2286]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1001_skip, output2286_skip]
  kernel_rfl

theorem node2288_cond_eq
    (child1000 : Flapjack.WordAlloc.removeDeadStructural input1000 value497 value1 value2 = (output1000, value497, value1))
    (child2287 : Flapjack.WordAlloc.removeDeadStructural input2287 value497 value1 value2 = (output2287, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2288 value497 value1 value2 = (output2288, value1100, value1) := by
  rw [input2288_def, output2288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1000]
  try dsimp only
  rw [child2287]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1000_skip, output2287_skip]
  kernel_rfl

theorem node2289_cond_eq
    (child999 : Flapjack.WordAlloc.removeDeadStructural input999 value497 value1 value2 = (output999, value497, value1))
    (child2288 : Flapjack.WordAlloc.removeDeadStructural input2288 value497 value1 value2 = (output2288, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2289 value497 value1 value2 = (output2289, value1100, value1) := by
  rw [input2289_def, output2289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child999]
  try dsimp only
  rw [child2288]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output999_skip, output2288_skip]
  kernel_rfl

theorem node2290_cond_eq
    (child998 : Flapjack.WordAlloc.removeDeadStructural input998 value494 value1 value2 = (output998, value497, value1))
    (child2289 : Flapjack.WordAlloc.removeDeadStructural input2289 value497 value1 value2 = (output2289, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2290 value494 value1 value2 = (output2290, value1100, value1) := by
  rw [input2290_def, output2290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child998]
  try dsimp only
  rw [child2289]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output998_skip, output2289_skip]
  kernel_rfl

theorem node2291_cond_eq
    (child993 : Flapjack.WordAlloc.removeDeadStructural input993 value491 value1 value2 = (output993, value494, value1))
    (child2290 : Flapjack.WordAlloc.removeDeadStructural input2290 value494 value1 value2 = (output2290, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2291 value491 value1 value2 = (output2291, value1100, value1) := by
  rw [input2291_def, output2291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child993]
  try dsimp only
  rw [child2290]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output993_skip, output2290_skip]
  kernel_rfl

theorem node2292_cond_eq
    (child988 : Flapjack.WordAlloc.removeDeadStructural input988 value487 value1 value2 = (output988, value491, value1))
    (child2291 : Flapjack.WordAlloc.removeDeadStructural input2291 value491 value1 value2 = (output2291, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2292 value487 value1 value2 = (output2292, value1100, value1) := by
  rw [input2292_def, output2292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child988]
  try dsimp only
  rw [child2291]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output988_skip, output2291_skip]
  kernel_rfl

theorem node2293_cond_eq
    (child981 : Flapjack.WordAlloc.removeDeadStructural input981 value487 value1 value2 = (output981, value487, value1))
    (child2292 : Flapjack.WordAlloc.removeDeadStructural input2292 value487 value1 value2 = (output2292, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2293 value487 value1 value2 = (output2293, value1100, value1) := by
  rw [input2293_def, output2293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child981]
  try dsimp only
  rw [child2292]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output981_skip, output2292_skip]
  kernel_rfl

theorem node2294_cond_eq
    (child980 : Flapjack.WordAlloc.removeDeadStructural input980 value487 value1 value2 = (output980, value487, value1))
    (child2293 : Flapjack.WordAlloc.removeDeadStructural input2293 value487 value1 value2 = (output2293, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2294 value487 value1 value2 = (output2294, value1100, value1) := by
  rw [input2294_def, output2294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child980]
  try dsimp only
  rw [child2293]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output980_skip, output2293_skip]
  kernel_rfl

theorem node2295_cond_eq
    (child979 : Flapjack.WordAlloc.removeDeadStructural input979 value486 value1 value2 = (output979, value487, value1))
    (child2294 : Flapjack.WordAlloc.removeDeadStructural input2294 value487 value1 value2 = (output2294, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2295 value486 value1 value2 = (output2295, value1100, value1) := by
  rw [input2295_def, output2295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child979]
  try dsimp only
  rw [child2294]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output979_skip, output2294_skip]
  kernel_rfl

theorem node2296_cond_eq
    (child978 : Flapjack.WordAlloc.removeDeadStructural input978 value485 value1 value2 = (output978, value486, value1))
    (child2295 : Flapjack.WordAlloc.removeDeadStructural input2295 value486 value1 value2 = (output2295, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2296 value485 value1 value2 = (output2296, value1100, value1) := by
  rw [input2296_def, output2296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child978]
  try dsimp only
  rw [child2295]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output978_skip, output2295_skip]
  kernel_rfl

theorem node2297_cond_eq
    (child977 : Flapjack.WordAlloc.removeDeadStructural input977 value482 value1 value2 = (output977, value485, value1))
    (child2296 : Flapjack.WordAlloc.removeDeadStructural input2296 value485 value1 value2 = (output2296, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2297 value482 value1 value2 = (output2297, value1100, value1) := by
  rw [input2297_def, output2297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child977]
  try dsimp only
  rw [child2296]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output977_skip, output2296_skip]
  kernel_rfl

theorem node2298_cond_eq
    (child972 : Flapjack.WordAlloc.removeDeadStructural input972 value481 value1 value2 = (output972, value482, value1))
    (child2297 : Flapjack.WordAlloc.removeDeadStructural input2297 value482 value1 value2 = (output2297, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2298 value481 value1 value2 = (output2298, value1100, value1) := by
  rw [input2298_def, output2298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child972]
  try dsimp only
  rw [child2297]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output972_skip, output2297_skip]
  kernel_rfl

theorem node2299_cond_eq
    (child971 : Flapjack.WordAlloc.removeDeadStructural input971 value478 value1 value2 = (output971, value481, value1))
    (child2298 : Flapjack.WordAlloc.removeDeadStructural input2298 value481 value1 value2 = (output2298, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2299 value478 value1 value2 = (output2299, value1100, value1) := by
  rw [input2299_def, output2299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child971]
  try dsimp only
  rw [child2298]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output971_skip, output2298_skip]
  kernel_rfl

theorem node2300_cond_eq
    (child966 : Flapjack.WordAlloc.removeDeadStructural input966 value477 value1 value2 = (output966, value478, value1))
    (child2299 : Flapjack.WordAlloc.removeDeadStructural input2299 value478 value1 value2 = (output2299, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2300 value477 value1 value2 = (output2300, value1100, value1) := by
  rw [input2300_def, output2300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child966]
  try dsimp only
  rw [child2299]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output966_skip, output2299_skip]
  kernel_rfl

theorem node2301_cond_eq
    (child965 : Flapjack.WordAlloc.removeDeadStructural input965 value475 value1 value2 = (output965, value477, value1))
    (child2300 : Flapjack.WordAlloc.removeDeadStructural input2300 value477 value1 value2 = (output2300, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2301 value475 value1 value2 = (output2301, value1100, value1) := by
  rw [input2301_def, output2301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child965]
  try dsimp only
  rw [child2300]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output965_skip, output2300_skip]
  kernel_rfl

theorem node2302_cond_eq
    (child962 : Flapjack.WordAlloc.removeDeadStructural input962 value474 value1 value2 = (output962, value475, value1))
    (child2301 : Flapjack.WordAlloc.removeDeadStructural input2301 value475 value1 value2 = (output2301, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2302 value474 value1 value2 = (output2302, value1100, value1) := by
  rw [input2302_def, output2302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child962]
  try dsimp only
  rw [child2301]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output962_skip, output2301_skip]
  kernel_rfl

theorem node2303_cond_eq
    (child961 : Flapjack.WordAlloc.removeDeadStructural input961 value473 value1 value2 = (output961, value474, value1))
    (child2302 : Flapjack.WordAlloc.removeDeadStructural input2302 value474 value1 value2 = (output2302, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2303 value473 value1 value2 = (output2303, value1100, value1) := by
  rw [input2303_def, output2303_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child961]
  try dsimp only
  rw [child2302]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output961_skip, output2302_skip]
  kernel_rfl

#print axioms node2303_cond_eq
end InitECandidate.Proofs.DeadStages647.Parallel
