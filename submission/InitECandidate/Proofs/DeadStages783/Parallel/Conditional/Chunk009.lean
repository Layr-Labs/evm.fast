import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages783.Parallel.Data.Chunk009
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages783.Parallel
theorem node2304_cond_eq
    (child1866 : Flapjack.WordAlloc.removeDeadStructural input1866 value979 value1 value2 = (output1866, value980, value1))
    (child2303 : Flapjack.WordAlloc.removeDeadStructural input2303 value980 value1 value2 = (output2303, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2304 value979 value1 value2 = (output2304, value1162, value1) := by
  rw [input2304_def, output2304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1866]
  try dsimp only
  rw [child2303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1866_skip, output2303_skip]
  kernel_rfl

theorem node2305_cond_eq
    (child1865 : Flapjack.WordAlloc.removeDeadStructural input1865 value978 value1 value2 = (output1865, value979, value1))
    (child2304 : Flapjack.WordAlloc.removeDeadStructural input2304 value979 value1 value2 = (output2304, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2305 value978 value1 value2 = (output2305, value1162, value1) := by
  rw [input2305_def, output2305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1865]
  try dsimp only
  rw [child2304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1865_skip, output2304_skip]
  kernel_rfl

theorem node2306_cond_eq
    (child1864 : Flapjack.WordAlloc.removeDeadStructural input1864 value977 value1 value2 = (output1864, value978, value1))
    (child2305 : Flapjack.WordAlloc.removeDeadStructural input2305 value978 value1 value2 = (output2305, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2306 value977 value1 value2 = (output2306, value1162, value1) := by
  rw [input2306_def, output2306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1864]
  try dsimp only
  rw [child2305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1864_skip, output2305_skip]
  kernel_rfl

theorem node2307_cond_eq
    (child1863 : Flapjack.WordAlloc.removeDeadStructural input1863 value977 value1 value2 = (output1863, value977, value1))
    (child2306 : Flapjack.WordAlloc.removeDeadStructural input2306 value977 value1 value2 = (output2306, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2307 value977 value1 value2 = (output2307, value1162, value1) := by
  rw [input2307_def, output2307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1863]
  try dsimp only
  rw [child2306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1863_skip, output2306_skip]
  kernel_rfl

theorem node2308_cond_eq
    (child1862 : Flapjack.WordAlloc.removeDeadStructural input1862 value977 value1 value2 = (output1862, value977, value1))
    (child2307 : Flapjack.WordAlloc.removeDeadStructural input2307 value977 value1 value2 = (output2307, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2308 value977 value1 value2 = (output2308, value1162, value1) := by
  rw [input2308_def, output2308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1862]
  try dsimp only
  rw [child2307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1862_skip, output2307_skip]
  kernel_rfl

theorem node2309_cond_eq
    (child1861 : Flapjack.WordAlloc.removeDeadStructural input1861 value977 value1 value2 = (output1861, value977, value1))
    (child2308 : Flapjack.WordAlloc.removeDeadStructural input2308 value977 value1 value2 = (output2308, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2309 value977 value1 value2 = (output2309, value1162, value1) := by
  rw [input2309_def, output2309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1861]
  try dsimp only
  rw [child2308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1861_skip, output2308_skip]
  kernel_rfl

theorem node2310_cond_eq
    (child1860 : Flapjack.WordAlloc.removeDeadStructural input1860 value977 value1 value2 = (output1860, value977, value1))
    (child2309 : Flapjack.WordAlloc.removeDeadStructural input2309 value977 value1 value2 = (output2309, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2310 value977 value1 value2 = (output2310, value1162, value1) := by
  rw [input2310_def, output2310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1860]
  try dsimp only
  rw [child2309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1860_skip, output2309_skip]
  kernel_rfl

theorem node2311_cond_eq
    (child1859 : Flapjack.WordAlloc.removeDeadStructural input1859 value977 value1 value2 = (output1859, value977, value1))
    (child2310 : Flapjack.WordAlloc.removeDeadStructural input2310 value977 value1 value2 = (output2310, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2311 value977 value1 value2 = (output2311, value1162, value1) := by
  rw [input2311_def, output2311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1859]
  try dsimp only
  rw [child2310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1859_skip, output2310_skip]
  kernel_rfl

theorem node2312_cond_eq
    (child1858 : Flapjack.WordAlloc.removeDeadStructural input1858 value977 value1 value2 = (output1858, value977, value1))
    (child2311 : Flapjack.WordAlloc.removeDeadStructural input2311 value977 value1 value2 = (output2311, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2312 value977 value1 value2 = (output2312, value1162, value1) := by
  rw [input2312_def, output2312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1858]
  try dsimp only
  rw [child2311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1858_skip, output2311_skip]
  kernel_rfl

theorem node2313_cond_eq
    (child1857 : Flapjack.WordAlloc.removeDeadStructural input1857 value976 value1 value2 = (output1857, value977, value1))
    (child2312 : Flapjack.WordAlloc.removeDeadStructural input2312 value977 value1 value2 = (output2312, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2313 value976 value1 value2 = (output2313, value1162, value1) := by
  rw [input2313_def, output2313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1857]
  try dsimp only
  rw [child2312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1857_skip, output2312_skip]
  kernel_rfl

theorem node2314_cond_eq
    (child1856 : Flapjack.WordAlloc.removeDeadStructural input1856 value975 value1 value2 = (output1856, value976, value1))
    (child2313 : Flapjack.WordAlloc.removeDeadStructural input2313 value976 value1 value2 = (output2313, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2314 value975 value1 value2 = (output2314, value1162, value1) := by
  rw [input2314_def, output2314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1856]
  try dsimp only
  rw [child2313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1856_skip, output2313_skip]
  kernel_rfl

theorem node2315_cond_eq
    (child1855 : Flapjack.WordAlloc.removeDeadStructural input1855 value974 value1 value2 = (output1855, value975, value1))
    (child2314 : Flapjack.WordAlloc.removeDeadStructural input2314 value975 value1 value2 = (output2314, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2315 value974 value1 value2 = (output2315, value1162, value1) := by
  rw [input2315_def, output2315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1855]
  try dsimp only
  rw [child2314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1855_skip, output2314_skip]
  kernel_rfl

theorem node2316_cond_eq
    (child1854 : Flapjack.WordAlloc.removeDeadStructural input1854 value973 value1 value2 = (output1854, value974, value1))
    (child2315 : Flapjack.WordAlloc.removeDeadStructural input2315 value974 value1 value2 = (output2315, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2316 value973 value1 value2 = (output2316, value1162, value1) := by
  rw [input2316_def, output2316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1854]
  try dsimp only
  rw [child2315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1854_skip, output2315_skip]
  kernel_rfl

theorem node2317_cond_eq
    (child1853 : Flapjack.WordAlloc.removeDeadStructural input1853 value972 value1 value2 = (output1853, value973, value1))
    (child2316 : Flapjack.WordAlloc.removeDeadStructural input2316 value973 value1 value2 = (output2316, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2317 value972 value1 value2 = (output2317, value1162, value1) := by
  rw [input2317_def, output2317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1853]
  try dsimp only
  rw [child2316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1853_skip, output2316_skip]
  kernel_rfl

theorem node2318_cond_eq
    (child1852 : Flapjack.WordAlloc.removeDeadStructural input1852 value971 value1 value2 = (output1852, value972, value1))
    (child2317 : Flapjack.WordAlloc.removeDeadStructural input2317 value972 value1 value2 = (output2317, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2318 value971 value1 value2 = (output2318, value1162, value1) := by
  rw [input2318_def, output2318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1852]
  try dsimp only
  rw [child2317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1852_skip, output2317_skip]
  kernel_rfl

theorem node2319_cond_eq
    (child1851 : Flapjack.WordAlloc.removeDeadStructural input1851 value968 value1 value2 = (output1851, value971, value1))
    (child2318 : Flapjack.WordAlloc.removeDeadStructural input2318 value971 value1 value2 = (output2318, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2319 value968 value1 value2 = (output2319, value1162, value1) := by
  rw [input2319_def, output2319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1851]
  try dsimp only
  rw [child2318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1851_skip, output2318_skip]
  kernel_rfl

theorem node2320_cond_eq
    (child1846 : Flapjack.WordAlloc.removeDeadStructural input1846 value968 value1 value2 = (output1846, value968, value1))
    (child2319 : Flapjack.WordAlloc.removeDeadStructural input2319 value968 value1 value2 = (output2319, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2320 value968 value1 value2 = (output2320, value1162, value1) := by
  rw [input2320_def, output2320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1846]
  try dsimp only
  rw [child2319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1846_skip, output2319_skip]
  kernel_rfl

theorem node2321_cond_eq
    (child1845 : Flapjack.WordAlloc.removeDeadStructural input1845 value967 value1 value2 = (output1845, value968, value1))
    (child2320 : Flapjack.WordAlloc.removeDeadStructural input2320 value968 value1 value2 = (output2320, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2321 value967 value1 value2 = (output2321, value1162, value1) := by
  rw [input2321_def, output2321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1845]
  try dsimp only
  rw [child2320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1845_skip, output2320_skip]
  kernel_rfl

theorem node2322_cond_eq
    (child1844 : Flapjack.WordAlloc.removeDeadStructural input1844 value966 value1 value2 = (output1844, value967, value1))
    (child2321 : Flapjack.WordAlloc.removeDeadStructural input2321 value967 value1 value2 = (output2321, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2322 value966 value1 value2 = (output2322, value1162, value1) := by
  rw [input2322_def, output2322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1844]
  try dsimp only
  rw [child2321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1844_skip, output2321_skip]
  kernel_rfl

theorem node2323_cond_eq
    (child1843 : Flapjack.WordAlloc.removeDeadStructural input1843 value961 value1 value2 = (output1843, value966, value1))
    (child2322 : Flapjack.WordAlloc.removeDeadStructural input2322 value966 value1 value2 = (output2322, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2323 value961 value1 value2 = (output2323, value1162, value1) := by
  rw [input2323_def, output2323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1843]
  try dsimp only
  rw [child2322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1843_skip, output2322_skip]
  kernel_rfl

theorem node2324_cond_eq
    (child1816 : Flapjack.WordAlloc.removeDeadStructural input1816 value961 value1 value2 = (output1816, value961, value1))
    (child2323 : Flapjack.WordAlloc.removeDeadStructural input2323 value961 value1 value2 = (output2323, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2324 value961 value1 value2 = (output2324, value1162, value1) := by
  rw [input2324_def, output2324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1816]
  try dsimp only
  rw [child2323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1816_skip, output2323_skip]
  kernel_rfl

theorem node2325_cond_eq
    (child1815 : Flapjack.WordAlloc.removeDeadStructural input1815 value960 value1 value2 = (output1815, value961, value1))
    (child2324 : Flapjack.WordAlloc.removeDeadStructural input2324 value961 value1 value2 = (output2324, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2325 value960 value1 value2 = (output2325, value1162, value1) := by
  rw [input2325_def, output2325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1815]
  try dsimp only
  rw [child2324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1815_skip, output2324_skip]
  kernel_rfl

theorem node2326_cond_eq
    (child1814 : Flapjack.WordAlloc.removeDeadStructural input1814 value959 value1 value2 = (output1814, value960, value1))
    (child2325 : Flapjack.WordAlloc.removeDeadStructural input2325 value960 value1 value2 = (output2325, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2326 value959 value1 value2 = (output2326, value1162, value1) := by
  rw [input2326_def, output2326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1814]
  try dsimp only
  rw [child2325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1814_skip, output2325_skip]
  kernel_rfl

theorem node2327_cond_eq
    (child1813 : Flapjack.WordAlloc.removeDeadStructural input1813 value954 value1 value2 = (output1813, value959, value1))
    (child2326 : Flapjack.WordAlloc.removeDeadStructural input2326 value959 value1 value2 = (output2326, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2327 value954 value1 value2 = (output2327, value1162, value1) := by
  rw [input2327_def, output2327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1813]
  try dsimp only
  rw [child2326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1813_skip, output2326_skip]
  kernel_rfl

theorem node2328_cond_eq
    (child1786 : Flapjack.WordAlloc.removeDeadStructural input1786 value954 value1 value2 = (output1786, value954, value1))
    (child2327 : Flapjack.WordAlloc.removeDeadStructural input2327 value954 value1 value2 = (output2327, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2328 value954 value1 value2 = (output2328, value1162, value1) := by
  rw [input2328_def, output2328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1786]
  try dsimp only
  rw [child2327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1786_skip, output2327_skip]
  kernel_rfl

theorem node2329_cond_eq
    (child1785 : Flapjack.WordAlloc.removeDeadStructural input1785 value951 value1 value2 = (output1785, value954, value1))
    (child2328 : Flapjack.WordAlloc.removeDeadStructural input2328 value954 value1 value2 = (output2328, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2329 value951 value1 value2 = (output2329, value1162, value1) := by
  rw [input2329_def, output2329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1785]
  try dsimp only
  rw [child2328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1785_skip, output2328_skip]
  kernel_rfl

theorem node2330_cond_eq
    (child1780 : Flapjack.WordAlloc.removeDeadStructural input1780 value517 value1 value2 = (output1780, value951, value1))
    (child2329 : Flapjack.WordAlloc.removeDeadStructural input2329 value951 value1 value2 = (output2329, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2330 value517 value1 value2 = (output2330, value1162, value1) := by
  rw [input2330_def, output2330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child1780]
  try dsimp only
  rw [child2329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output1780_skip, output2329_skip]
  kernel_rfl

theorem node2331_cond_eq
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value517 value1 value2 = (output779, value517, value1))
    (child2330 : Flapjack.WordAlloc.removeDeadStructural input2330 value517 value1 value2 = (output2330, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2331 value517 value1 value2 = (output2331, value1162, value1) := by
  rw [input2331_def, output2331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child779]
  try dsimp only
  rw [child2330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output779_skip, output2330_skip]
  kernel_rfl

theorem node2332_cond_eq
    (child778 : Flapjack.WordAlloc.removeDeadStructural input778 value516 value1 value2 = (output778, value517, value1))
    (child2331 : Flapjack.WordAlloc.removeDeadStructural input2331 value517 value1 value2 = (output2331, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2332 value516 value1 value2 = (output2332, value1162, value1) := by
  rw [input2332_def, output2332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child778]
  try dsimp only
  rw [child2331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output778_skip, output2331_skip]
  kernel_rfl

theorem node2333_cond_eq
    (child777 : Flapjack.WordAlloc.removeDeadStructural input777 value515 value1 value2 = (output777, value516, value1))
    (child2332 : Flapjack.WordAlloc.removeDeadStructural input2332 value516 value1 value2 = (output2332, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2333 value515 value1 value2 = (output2333, value1162, value1) := by
  rw [input2333_def, output2333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child777]
  try dsimp only
  rw [child2332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output777_skip, output2332_skip]
  kernel_rfl

theorem node2334_cond_eq
    (child776 : Flapjack.WordAlloc.removeDeadStructural input776 value514 value1 value2 = (output776, value515, value1))
    (child2333 : Flapjack.WordAlloc.removeDeadStructural input2333 value515 value1 value2 = (output2333, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2334 value514 value1 value2 = (output2334, value1162, value1) := by
  rw [input2334_def, output2334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child776]
  try dsimp only
  rw [child2333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output776_skip, output2333_skip]
  kernel_rfl

theorem node2335_cond_eq
    (child775 : Flapjack.WordAlloc.removeDeadStructural input775 value513 value1 value2 = (output775, value514, value1))
    (child2334 : Flapjack.WordAlloc.removeDeadStructural input2334 value514 value1 value2 = (output2334, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2335 value513 value1 value2 = (output2335, value1162, value1) := by
  rw [input2335_def, output2335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child775]
  try dsimp only
  rw [child2334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output775_skip, output2334_skip]
  kernel_rfl

theorem node2336_cond_eq
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value512 value1 value2 = (output774, value513, value1))
    (child2335 : Flapjack.WordAlloc.removeDeadStructural input2335 value513 value1 value2 = (output2335, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2336 value512 value1 value2 = (output2336, value1162, value1) := by
  rw [input2336_def, output2336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child774]
  try dsimp only
  rw [child2335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output774_skip, output2335_skip]
  kernel_rfl

theorem node2337_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value511 value1 value2 = (output773, value512, value1))
    (child2336 : Flapjack.WordAlloc.removeDeadStructural input2336 value512 value1 value2 = (output2336, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2337 value511 value1 value2 = (output2337, value1162, value1) := by
  rw [input2337_def, output2337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  try dsimp only
  rw [child2336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output773_skip, output2336_skip]
  kernel_rfl

theorem node2338_cond_eq
    (child772 : Flapjack.WordAlloc.removeDeadStructural input772 value510 value1 value2 = (output772, value511, value1))
    (child2337 : Flapjack.WordAlloc.removeDeadStructural input2337 value511 value1 value2 = (output2337, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2338 value510 value1 value2 = (output2338, value1162, value1) := by
  rw [input2338_def, output2338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child772]
  try dsimp only
  rw [child2337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output772_skip, output2337_skip]
  kernel_rfl

theorem node2339_cond_eq
    (child771 : Flapjack.WordAlloc.removeDeadStructural input771 value509 value1 value2 = (output771, value510, value1))
    (child2338 : Flapjack.WordAlloc.removeDeadStructural input2338 value510 value1 value2 = (output2338, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2339 value509 value1 value2 = (output2339, value1162, value1) := by
  rw [input2339_def, output2339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child771]
  try dsimp only
  rw [child2338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output771_skip, output2338_skip]
  kernel_rfl

theorem node2340_cond_eq
    (child770 : Flapjack.WordAlloc.removeDeadStructural input770 value508 value1 value2 = (output770, value509, value1))
    (child2339 : Flapjack.WordAlloc.removeDeadStructural input2339 value509 value1 value2 = (output2339, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2340 value508 value1 value2 = (output2340, value1162, value1) := by
  rw [input2340_def, output2340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child770]
  try dsimp only
  rw [child2339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output770_skip, output2339_skip]
  kernel_rfl

theorem node2341_cond_eq
    (child769 : Flapjack.WordAlloc.removeDeadStructural input769 value507 value1 value2 = (output769, value508, value1))
    (child2340 : Flapjack.WordAlloc.removeDeadStructural input2340 value508 value1 value2 = (output2340, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2341 value507 value1 value2 = (output2341, value1162, value1) := by
  rw [input2341_def, output2341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child769]
  try dsimp only
  rw [child2340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output769_skip, output2340_skip]
  kernel_rfl

theorem node2342_cond_eq
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value506 value1 value2 = (output768, value507, value1))
    (child2341 : Flapjack.WordAlloc.removeDeadStructural input2341 value507 value1 value2 = (output2341, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2342 value506 value1 value2 = (output2342, value1162, value1) := by
  rw [input2342_def, output2342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child768]
  try dsimp only
  rw [child2341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output768_skip, output2341_skip]
  kernel_rfl

theorem node2343_cond_eq
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value505 value1 value2 = (output767, value506, value1))
    (child2342 : Flapjack.WordAlloc.removeDeadStructural input2342 value506 value1 value2 = (output2342, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2343 value505 value1 value2 = (output2343, value1162, value1) := by
  rw [input2343_def, output2343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child767]
  try dsimp only
  rw [child2342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output767_skip, output2342_skip]
  kernel_rfl

theorem node2344_cond_eq
    (child766 : Flapjack.WordAlloc.removeDeadStructural input766 value502 value1 value2 = (output766, value505, value1))
    (child2343 : Flapjack.WordAlloc.removeDeadStructural input2343 value505 value1 value2 = (output2343, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2344 value502 value1 value2 = (output2344, value1162, value1) := by
  rw [input2344_def, output2344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child766]
  try dsimp only
  rw [child2343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output766_skip, output2343_skip]
  kernel_rfl

theorem node2345_cond_eq
    (child761 : Flapjack.WordAlloc.removeDeadStructural input761 value502 value1 value2 = (output761, value502, value1))
    (child2344 : Flapjack.WordAlloc.removeDeadStructural input2344 value502 value1 value2 = (output2344, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2345 value502 value1 value2 = (output2345, value1162, value1) := by
  rw [input2345_def, output2345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child761]
  try dsimp only
  rw [child2344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output761_skip, output2344_skip]
  kernel_rfl

theorem node2346_cond_eq
    (child760 : Flapjack.WordAlloc.removeDeadStructural input760 value501 value1 value2 = (output760, value502, value1))
    (child2345 : Flapjack.WordAlloc.removeDeadStructural input2345 value502 value1 value2 = (output2345, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2346 value501 value1 value2 = (output2346, value1162, value1) := by
  rw [input2346_def, output2346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child760]
  try dsimp only
  rw [child2345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output760_skip, output2345_skip]
  kernel_rfl

theorem node2347_cond_eq
    (child759 : Flapjack.WordAlloc.removeDeadStructural input759 value500 value1 value2 = (output759, value501, value1))
    (child2346 : Flapjack.WordAlloc.removeDeadStructural input2346 value501 value1 value2 = (output2346, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2347 value500 value1 value2 = (output2347, value1162, value1) := by
  rw [input2347_def, output2347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child759]
  try dsimp only
  rw [child2346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output759_skip, output2346_skip]
  kernel_rfl

theorem node2348_cond_eq
    (child758 : Flapjack.WordAlloc.removeDeadStructural input758 value499 value1 value2 = (output758, value500, value1))
    (child2347 : Flapjack.WordAlloc.removeDeadStructural input2347 value500 value1 value2 = (output2347, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2348 value499 value1 value2 = (output2348, value1162, value1) := by
  rw [input2348_def, output2348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child758]
  try dsimp only
  rw [child2347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output758_skip, output2347_skip]
  kernel_rfl

theorem node2349_cond_eq
    (child757 : Flapjack.WordAlloc.removeDeadStructural input757 value498 value1 value2 = (output757, value499, value1))
    (child2348 : Flapjack.WordAlloc.removeDeadStructural input2348 value499 value1 value2 = (output2348, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2349 value498 value1 value2 = (output2349, value1162, value1) := by
  rw [input2349_def, output2349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child757]
  try dsimp only
  rw [child2348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output757_skip, output2348_skip]
  kernel_rfl

theorem node2350_cond_eq
    (child756 : Flapjack.WordAlloc.removeDeadStructural input756 value497 value1 value2 = (output756, value498, value1))
    (child2349 : Flapjack.WordAlloc.removeDeadStructural input2349 value498 value1 value2 = (output2349, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2350 value497 value1 value2 = (output2350, value1162, value1) := by
  rw [input2350_def, output2350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child756]
  try dsimp only
  rw [child2349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output756_skip, output2349_skip]
  kernel_rfl

theorem node2351_cond_eq
    (child755 : Flapjack.WordAlloc.removeDeadStructural input755 value496 value1 value2 = (output755, value497, value1))
    (child2350 : Flapjack.WordAlloc.removeDeadStructural input2350 value497 value1 value2 = (output2350, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2351 value496 value1 value2 = (output2351, value1162, value1) := by
  rw [input2351_def, output2351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child755]
  try dsimp only
  rw [child2350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output755_skip, output2350_skip]
  kernel_rfl

theorem node2352_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value495 value1 value2 = (output754, value496, value1))
    (child2351 : Flapjack.WordAlloc.removeDeadStructural input2351 value496 value1 value2 = (output2351, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2352 value495 value1 value2 = (output2352, value1162, value1) := by
  rw [input2352_def, output2352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  try dsimp only
  rw [child2351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output754_skip, output2351_skip]
  kernel_rfl

theorem node2353_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value494 value1 value2 = (output753, value495, value1))
    (child2352 : Flapjack.WordAlloc.removeDeadStructural input2352 value495 value1 value2 = (output2352, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2353 value494 value1 value2 = (output2353, value1162, value1) := by
  rw [input2353_def, output2353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  try dsimp only
  rw [child2352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output753_skip, output2352_skip]
  kernel_rfl

theorem node2354_cond_eq
    (child752 : Flapjack.WordAlloc.removeDeadStructural input752 value493 value1 value2 = (output752, value494, value1))
    (child2353 : Flapjack.WordAlloc.removeDeadStructural input2353 value494 value1 value2 = (output2353, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2354 value493 value1 value2 = (output2354, value1162, value1) := by
  rw [input2354_def, output2354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child752]
  try dsimp only
  rw [child2353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output752_skip, output2353_skip]
  kernel_rfl

theorem node2355_cond_eq
    (child751 : Flapjack.WordAlloc.removeDeadStructural input751 value492 value1 value2 = (output751, value493, value1))
    (child2354 : Flapjack.WordAlloc.removeDeadStructural input2354 value493 value1 value2 = (output2354, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2355 value492 value1 value2 = (output2355, value1162, value1) := by
  rw [input2355_def, output2355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child751]
  try dsimp only
  rw [child2354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output751_skip, output2354_skip]
  kernel_rfl

theorem node2356_cond_eq
    (child750 : Flapjack.WordAlloc.removeDeadStructural input750 value491 value1 value2 = (output750, value492, value1))
    (child2355 : Flapjack.WordAlloc.removeDeadStructural input2355 value492 value1 value2 = (output2355, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2356 value491 value1 value2 = (output2356, value1162, value1) := by
  rw [input2356_def, output2356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child750]
  try dsimp only
  rw [child2355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output750_skip, output2355_skip]
  kernel_rfl

theorem node2357_cond_eq
    (child749 : Flapjack.WordAlloc.removeDeadStructural input749 value490 value1 value2 = (output749, value491, value1))
    (child2356 : Flapjack.WordAlloc.removeDeadStructural input2356 value491 value1 value2 = (output2356, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2357 value490 value1 value2 = (output2357, value1162, value1) := by
  rw [input2357_def, output2357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child749]
  try dsimp only
  rw [child2356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output749_skip, output2356_skip]
  kernel_rfl

theorem node2358_cond_eq
    (child748 : Flapjack.WordAlloc.removeDeadStructural input748 value487 value1 value2 = (output748, value490, value1))
    (child2357 : Flapjack.WordAlloc.removeDeadStructural input2357 value490 value1 value2 = (output2357, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2358 value487 value1 value2 = (output2358, value1162, value1) := by
  rw [input2358_def, output2358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child748]
  try dsimp only
  rw [child2357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output748_skip, output2357_skip]
  kernel_rfl

theorem node2359_cond_eq
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value487 value1 value2 = (output743, value487, value1))
    (child2358 : Flapjack.WordAlloc.removeDeadStructural input2358 value487 value1 value2 = (output2358, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2359 value487 value1 value2 = (output2359, value1162, value1) := by
  rw [input2359_def, output2359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child743]
  try dsimp only
  rw [child2358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output743_skip, output2358_skip]
  kernel_rfl

theorem node2360_cond_eq
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value486 value1 value2 = (output742, value487, value1))
    (child2359 : Flapjack.WordAlloc.removeDeadStructural input2359 value487 value1 value2 = (output2359, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2360 value486 value1 value2 = (output2360, value1162, value1) := by
  rw [input2360_def, output2360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child742]
  try dsimp only
  rw [child2359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output742_skip, output2359_skip]
  kernel_rfl

theorem node2361_cond_eq
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value485 value1 value2 = (output741, value486, value1))
    (child2360 : Flapjack.WordAlloc.removeDeadStructural input2360 value486 value1 value2 = (output2360, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2361 value485 value1 value2 = (output2361, value1162, value1) := by
  rw [input2361_def, output2361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child741]
  try dsimp only
  rw [child2360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output741_skip, output2360_skip]
  kernel_rfl

theorem node2362_cond_eq
    (child740 : Flapjack.WordAlloc.removeDeadStructural input740 value484 value1 value2 = (output740, value485, value1))
    (child2361 : Flapjack.WordAlloc.removeDeadStructural input2361 value485 value1 value2 = (output2361, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2362 value484 value1 value2 = (output2362, value1162, value1) := by
  rw [input2362_def, output2362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child740]
  try dsimp only
  rw [child2361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output740_skip, output2361_skip]
  kernel_rfl

theorem node2363_cond_eq
    (child739 : Flapjack.WordAlloc.removeDeadStructural input739 value483 value1 value2 = (output739, value484, value1))
    (child2362 : Flapjack.WordAlloc.removeDeadStructural input2362 value484 value1 value2 = (output2362, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2363 value483 value1 value2 = (output2363, value1162, value1) := by
  rw [input2363_def, output2363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child739]
  try dsimp only
  rw [child2362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output739_skip, output2362_skip]
  kernel_rfl

theorem node2364_cond_eq
    (child738 : Flapjack.WordAlloc.removeDeadStructural input738 value482 value1 value2 = (output738, value483, value1))
    (child2363 : Flapjack.WordAlloc.removeDeadStructural input2363 value483 value1 value2 = (output2363, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2364 value482 value1 value2 = (output2364, value1162, value1) := by
  rw [input2364_def, output2364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child738]
  try dsimp only
  rw [child2363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output738_skip, output2363_skip]
  kernel_rfl

theorem node2365_cond_eq
    (child737 : Flapjack.WordAlloc.removeDeadStructural input737 value481 value1 value2 = (output737, value482, value1))
    (child2364 : Flapjack.WordAlloc.removeDeadStructural input2364 value482 value1 value2 = (output2364, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2365 value481 value1 value2 = (output2365, value1162, value1) := by
  rw [input2365_def, output2365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child737]
  try dsimp only
  rw [child2364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output737_skip, output2364_skip]
  kernel_rfl

theorem node2366_cond_eq
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value480 value1 value2 = (output736, value481, value1))
    (child2365 : Flapjack.WordAlloc.removeDeadStructural input2365 value481 value1 value2 = (output2365, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2366 value480 value1 value2 = (output2366, value1162, value1) := by
  rw [input2366_def, output2366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child736]
  try dsimp only
  rw [child2365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output736_skip, output2365_skip]
  kernel_rfl

theorem node2367_cond_eq
    (child735 : Flapjack.WordAlloc.removeDeadStructural input735 value479 value1 value2 = (output735, value480, value1))
    (child2366 : Flapjack.WordAlloc.removeDeadStructural input2366 value480 value1 value2 = (output2366, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2367 value479 value1 value2 = (output2367, value1162, value1) := by
  rw [input2367_def, output2367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child735]
  try dsimp only
  rw [child2366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output735_skip, output2366_skip]
  kernel_rfl

theorem node2368_cond_eq
    (child734 : Flapjack.WordAlloc.removeDeadStructural input734 value478 value1 value2 = (output734, value479, value1))
    (child2367 : Flapjack.WordAlloc.removeDeadStructural input2367 value479 value1 value2 = (output2367, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2368 value478 value1 value2 = (output2368, value1162, value1) := by
  rw [input2368_def, output2368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child734]
  try dsimp only
  rw [child2367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output734_skip, output2367_skip]
  kernel_rfl

theorem node2369_cond_eq
    (child733 : Flapjack.WordAlloc.removeDeadStructural input733 value477 value1 value2 = (output733, value478, value1))
    (child2368 : Flapjack.WordAlloc.removeDeadStructural input2368 value478 value1 value2 = (output2368, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2369 value477 value1 value2 = (output2369, value1162, value1) := by
  rw [input2369_def, output2369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child733]
  try dsimp only
  rw [child2368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output733_skip, output2368_skip]
  kernel_rfl

theorem node2370_cond_eq
    (child732 : Flapjack.WordAlloc.removeDeadStructural input732 value476 value1 value2 = (output732, value477, value1))
    (child2369 : Flapjack.WordAlloc.removeDeadStructural input2369 value477 value1 value2 = (output2369, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2370 value476 value1 value2 = (output2370, value1162, value1) := by
  rw [input2370_def, output2370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child732]
  try dsimp only
  rw [child2369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output732_skip, output2369_skip]
  kernel_rfl

theorem node2371_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value475 value1 value2 = (output731, value476, value1))
    (child2370 : Flapjack.WordAlloc.removeDeadStructural input2370 value476 value1 value2 = (output2370, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2371 value475 value1 value2 = (output2371, value1162, value1) := by
  rw [input2371_def, output2371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  try dsimp only
  rw [child2370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output2370_skip]
  kernel_rfl

theorem node2372_cond_eq
    (child730 : Flapjack.WordAlloc.removeDeadStructural input730 value472 value1 value2 = (output730, value475, value1))
    (child2371 : Flapjack.WordAlloc.removeDeadStructural input2371 value475 value1 value2 = (output2371, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2372 value472 value1 value2 = (output2372, value1162, value1) := by
  rw [input2372_def, output2372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child730]
  try dsimp only
  rw [child2371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output730_skip, output2371_skip]
  kernel_rfl

theorem node2373_cond_eq
    (child725 : Flapjack.WordAlloc.removeDeadStructural input725 value472 value1 value2 = (output725, value472, value1))
    (child2372 : Flapjack.WordAlloc.removeDeadStructural input2372 value472 value1 value2 = (output2372, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2373 value472 value1 value2 = (output2373, value1162, value1) := by
  rw [input2373_def, output2373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child725]
  try dsimp only
  rw [child2372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output725_skip, output2372_skip]
  kernel_rfl

theorem node2374_cond_eq
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value471 value1 value2 = (output724, value472, value1))
    (child2373 : Flapjack.WordAlloc.removeDeadStructural input2373 value472 value1 value2 = (output2373, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2374 value471 value1 value2 = (output2374, value1162, value1) := by
  rw [input2374_def, output2374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child724]
  try dsimp only
  rw [child2373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output724_skip, output2373_skip]
  kernel_rfl

theorem node2375_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value470 value1 value2 = (output723, value471, value1))
    (child2374 : Flapjack.WordAlloc.removeDeadStructural input2374 value471 value1 value2 = (output2374, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2375 value470 value1 value2 = (output2375, value1162, value1) := by
  rw [input2375_def, output2375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  try dsimp only
  rw [child2374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output723_skip, output2374_skip]
  kernel_rfl

theorem node2376_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value469 value1 value2 = (output722, value470, value1))
    (child2375 : Flapjack.WordAlloc.removeDeadStructural input2375 value470 value1 value2 = (output2375, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2376 value469 value1 value2 = (output2376, value1162, value1) := by
  rw [input2376_def, output2376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  try dsimp only
  rw [child2375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output722_skip, output2375_skip]
  kernel_rfl

theorem node2377_cond_eq
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value468 value1 value2 = (output721, value469, value1))
    (child2376 : Flapjack.WordAlloc.removeDeadStructural input2376 value469 value1 value2 = (output2376, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2377 value468 value1 value2 = (output2377, value1162, value1) := by
  rw [input2377_def, output2377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child721]
  try dsimp only
  rw [child2376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output721_skip, output2376_skip]
  kernel_rfl

theorem node2378_cond_eq
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value467 value1 value2 = (output720, value468, value1))
    (child2377 : Flapjack.WordAlloc.removeDeadStructural input2377 value468 value1 value2 = (output2377, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2378 value467 value1 value2 = (output2378, value1162, value1) := by
  rw [input2378_def, output2378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child720]
  try dsimp only
  rw [child2377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output720_skip, output2377_skip]
  kernel_rfl

theorem node2379_cond_eq
    (child719 : Flapjack.WordAlloc.removeDeadStructural input719 value466 value1 value2 = (output719, value467, value1))
    (child2378 : Flapjack.WordAlloc.removeDeadStructural input2378 value467 value1 value2 = (output2378, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2379 value466 value1 value2 = (output2379, value1162, value1) := by
  rw [input2379_def, output2379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child719]
  try dsimp only
  rw [child2378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output719_skip, output2378_skip]
  kernel_rfl

theorem node2380_cond_eq
    (child718 : Flapjack.WordAlloc.removeDeadStructural input718 value465 value1 value2 = (output718, value466, value1))
    (child2379 : Flapjack.WordAlloc.removeDeadStructural input2379 value466 value1 value2 = (output2379, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2380 value465 value1 value2 = (output2380, value1162, value1) := by
  rw [input2380_def, output2380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child718]
  try dsimp only
  rw [child2379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output718_skip, output2379_skip]
  kernel_rfl

theorem node2381_cond_eq
    (child717 : Flapjack.WordAlloc.removeDeadStructural input717 value464 value1 value2 = (output717, value465, value1))
    (child2380 : Flapjack.WordAlloc.removeDeadStructural input2380 value465 value1 value2 = (output2380, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2381 value464 value1 value2 = (output2381, value1162, value1) := by
  rw [input2381_def, output2381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child717]
  try dsimp only
  rw [child2380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output717_skip, output2380_skip]
  kernel_rfl

theorem node2382_cond_eq
    (child716 : Flapjack.WordAlloc.removeDeadStructural input716 value463 value1 value2 = (output716, value464, value1))
    (child2381 : Flapjack.WordAlloc.removeDeadStructural input2381 value464 value1 value2 = (output2381, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2382 value463 value1 value2 = (output2382, value1162, value1) := by
  rw [input2382_def, output2382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child716]
  try dsimp only
  rw [child2381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output716_skip, output2381_skip]
  kernel_rfl

theorem node2383_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value462 value1 value2 = (output715, value463, value1))
    (child2382 : Flapjack.WordAlloc.removeDeadStructural input2382 value463 value1 value2 = (output2382, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2383 value462 value1 value2 = (output2383, value1162, value1) := by
  rw [input2383_def, output2383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  try dsimp only
  rw [child2382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output715_skip, output2382_skip]
  kernel_rfl

theorem node2384_cond_eq
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value461 value1 value2 = (output714, value462, value1))
    (child2383 : Flapjack.WordAlloc.removeDeadStructural input2383 value462 value1 value2 = (output2383, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2384 value461 value1 value2 = (output2384, value1162, value1) := by
  rw [input2384_def, output2384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child714]
  try dsimp only
  rw [child2383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output714_skip, output2383_skip]
  kernel_rfl

theorem node2385_cond_eq
    (child713 : Flapjack.WordAlloc.removeDeadStructural input713 value460 value1 value2 = (output713, value461, value1))
    (child2384 : Flapjack.WordAlloc.removeDeadStructural input2384 value461 value1 value2 = (output2384, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2385 value460 value1 value2 = (output2385, value1162, value1) := by
  rw [input2385_def, output2385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child713]
  try dsimp only
  rw [child2384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output713_skip, output2384_skip]
  kernel_rfl

theorem node2386_cond_eq
    (child712 : Flapjack.WordAlloc.removeDeadStructural input712 value457 value1 value2 = (output712, value460, value1))
    (child2385 : Flapjack.WordAlloc.removeDeadStructural input2385 value460 value1 value2 = (output2385, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2386 value457 value1 value2 = (output2386, value1162, value1) := by
  rw [input2386_def, output2386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child712]
  try dsimp only
  rw [child2385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output712_skip, output2385_skip]
  kernel_rfl

theorem node2387_cond_eq
    (child707 : Flapjack.WordAlloc.removeDeadStructural input707 value457 value1 value2 = (output707, value457, value1))
    (child2386 : Flapjack.WordAlloc.removeDeadStructural input2386 value457 value1 value2 = (output2386, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2387 value457 value1 value2 = (output2387, value1162, value1) := by
  rw [input2387_def, output2387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child707]
  try dsimp only
  rw [child2386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output707_skip, output2386_skip]
  kernel_rfl

theorem node2388_cond_eq
    (child706 : Flapjack.WordAlloc.removeDeadStructural input706 value456 value1 value2 = (output706, value457, value1))
    (child2387 : Flapjack.WordAlloc.removeDeadStructural input2387 value457 value1 value2 = (output2387, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2388 value456 value1 value2 = (output2388, value1162, value1) := by
  rw [input2388_def, output2388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child706]
  try dsimp only
  rw [child2387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output706_skip, output2387_skip]
  kernel_rfl

theorem node2389_cond_eq
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value455 value1 value2 = (output705, value456, value1))
    (child2388 : Flapjack.WordAlloc.removeDeadStructural input2388 value456 value1 value2 = (output2388, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2389 value455 value1 value2 = (output2389, value1162, value1) := by
  rw [input2389_def, output2389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child705]
  try dsimp only
  rw [child2388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output705_skip, output2388_skip]
  kernel_rfl

theorem node2390_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value454 value1 value2 = (output704, value455, value1))
    (child2389 : Flapjack.WordAlloc.removeDeadStructural input2389 value455 value1 value2 = (output2389, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2390 value454 value1 value2 = (output2390, value1162, value1) := by
  rw [input2390_def, output2390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child2389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output2389_skip]
  kernel_rfl

theorem node2391_cond_eq
    (child703 : Flapjack.WordAlloc.removeDeadStructural input703 value453 value1 value2 = (output703, value454, value1))
    (child2390 : Flapjack.WordAlloc.removeDeadStructural input2390 value454 value1 value2 = (output2390, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2391 value453 value1 value2 = (output2391, value1162, value1) := by
  rw [input2391_def, output2391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child703]
  try dsimp only
  rw [child2390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output703_skip, output2390_skip]
  kernel_rfl

theorem node2392_cond_eq
    (child702 : Flapjack.WordAlloc.removeDeadStructural input702 value452 value1 value2 = (output702, value453, value1))
    (child2391 : Flapjack.WordAlloc.removeDeadStructural input2391 value453 value1 value2 = (output2391, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2392 value452 value1 value2 = (output2392, value1162, value1) := by
  rw [input2392_def, output2392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child702]
  try dsimp only
  rw [child2391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output702_skip, output2391_skip]
  kernel_rfl

theorem node2393_cond_eq
    (child701 : Flapjack.WordAlloc.removeDeadStructural input701 value451 value1 value2 = (output701, value452, value1))
    (child2392 : Flapjack.WordAlloc.removeDeadStructural input2392 value452 value1 value2 = (output2392, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2393 value451 value1 value2 = (output2393, value1162, value1) := by
  rw [input2393_def, output2393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child701]
  try dsimp only
  rw [child2392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output701_skip, output2392_skip]
  kernel_rfl

theorem node2394_cond_eq
    (child700 : Flapjack.WordAlloc.removeDeadStructural input700 value450 value1 value2 = (output700, value451, value1))
    (child2393 : Flapjack.WordAlloc.removeDeadStructural input2393 value451 value1 value2 = (output2393, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2394 value450 value1 value2 = (output2394, value1162, value1) := by
  rw [input2394_def, output2394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child700]
  try dsimp only
  rw [child2393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output700_skip, output2393_skip]
  kernel_rfl

theorem node2395_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value449 value1 value2 = (output699, value450, value1))
    (child2394 : Flapjack.WordAlloc.removeDeadStructural input2394 value450 value1 value2 = (output2394, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2395 value449 value1 value2 = (output2395, value1162, value1) := by
  rw [input2395_def, output2395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  try dsimp only
  rw [child2394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output699_skip, output2394_skip]
  kernel_rfl

theorem node2396_cond_eq
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value448 value1 value2 = (output698, value449, value1))
    (child2395 : Flapjack.WordAlloc.removeDeadStructural input2395 value449 value1 value2 = (output2395, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2396 value448 value1 value2 = (output2396, value1162, value1) := by
  rw [input2396_def, output2396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child698]
  try dsimp only
  rw [child2395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output698_skip, output2395_skip]
  kernel_rfl

theorem node2397_cond_eq
    (child697 : Flapjack.WordAlloc.removeDeadStructural input697 value447 value1 value2 = (output697, value448, value1))
    (child2396 : Flapjack.WordAlloc.removeDeadStructural input2396 value448 value1 value2 = (output2396, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2397 value447 value1 value2 = (output2397, value1162, value1) := by
  rw [input2397_def, output2397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child697]
  try dsimp only
  rw [child2396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output697_skip, output2396_skip]
  kernel_rfl

theorem node2398_cond_eq
    (child696 : Flapjack.WordAlloc.removeDeadStructural input696 value446 value1 value2 = (output696, value447, value1))
    (child2397 : Flapjack.WordAlloc.removeDeadStructural input2397 value447 value1 value2 = (output2397, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2398 value446 value1 value2 = (output2398, value1162, value1) := by
  rw [input2398_def, output2398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child696]
  try dsimp only
  rw [child2397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output696_skip, output2397_skip]
  kernel_rfl

theorem node2399_cond_eq
    (child695 : Flapjack.WordAlloc.removeDeadStructural input695 value445 value1 value2 = (output695, value446, value1))
    (child2398 : Flapjack.WordAlloc.removeDeadStructural input2398 value446 value1 value2 = (output2398, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2399 value445 value1 value2 = (output2399, value1162, value1) := by
  rw [input2399_def, output2399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child695]
  try dsimp only
  rw [child2398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output695_skip, output2398_skip]
  kernel_rfl

theorem node2400_cond_eq
    (child694 : Flapjack.WordAlloc.removeDeadStructural input694 value442 value1 value2 = (output694, value445, value1))
    (child2399 : Flapjack.WordAlloc.removeDeadStructural input2399 value445 value1 value2 = (output2399, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2400 value442 value1 value2 = (output2400, value1162, value1) := by
  rw [input2400_def, output2400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child694]
  try dsimp only
  rw [child2399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output694_skip, output2399_skip]
  kernel_rfl

theorem node2401_cond_eq
    (child689 : Flapjack.WordAlloc.removeDeadStructural input689 value442 value1 value2 = (output689, value442, value1))
    (child2400 : Flapjack.WordAlloc.removeDeadStructural input2400 value442 value1 value2 = (output2400, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2401 value442 value1 value2 = (output2401, value1162, value1) := by
  rw [input2401_def, output2401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child689]
  try dsimp only
  rw [child2400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output689_skip, output2400_skip]
  kernel_rfl

theorem node2402_cond_eq
    (child688 : Flapjack.WordAlloc.removeDeadStructural input688 value441 value1 value2 = (output688, value442, value1))
    (child2401 : Flapjack.WordAlloc.removeDeadStructural input2401 value442 value1 value2 = (output2401, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2402 value441 value1 value2 = (output2402, value1162, value1) := by
  rw [input2402_def, output2402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child688]
  try dsimp only
  rw [child2401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output688_skip, output2401_skip]
  kernel_rfl

theorem node2403_cond_eq
    (child687 : Flapjack.WordAlloc.removeDeadStructural input687 value440 value1 value2 = (output687, value441, value1))
    (child2402 : Flapjack.WordAlloc.removeDeadStructural input2402 value441 value1 value2 = (output2402, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2403 value440 value1 value2 = (output2403, value1162, value1) := by
  rw [input2403_def, output2403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child687]
  try dsimp only
  rw [child2402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output687_skip, output2402_skip]
  kernel_rfl

theorem node2404_cond_eq
    (child686 : Flapjack.WordAlloc.removeDeadStructural input686 value325 value1 value2 = (output686, value440, value1))
    (child2403 : Flapjack.WordAlloc.removeDeadStructural input2403 value440 value1 value2 = (output2403, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2404 value325 value1 value2 = (output2404, value1162, value1) := by
  rw [input2404_def, output2404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child686]
  try dsimp only
  rw [child2403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output686_skip, output2403_skip]
  kernel_rfl

theorem node2405_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value325 value1 value2 = (output395, value325, value1))
    (child2404 : Flapjack.WordAlloc.removeDeadStructural input2404 value325 value1 value2 = (output2404, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2405 value325 value1 value2 = (output2405, value1162, value1) := by
  rw [input2405_def, output2405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child2404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output2404_skip]
  kernel_rfl

theorem node2406_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value324 value1 value2 = (output394, value325, value1))
    (child2405 : Flapjack.WordAlloc.removeDeadStructural input2405 value325 value1 value2 = (output2405, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2406 value324 value1 value2 = (output2406, value1162, value1) := by
  rw [input2406_def, output2406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  try dsimp only
  rw [child2405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output394_skip, output2405_skip]
  kernel_rfl

theorem node2407_cond_eq
    (child393 : Flapjack.WordAlloc.removeDeadStructural input393 value323 value1 value2 = (output393, value324, value1))
    (child2406 : Flapjack.WordAlloc.removeDeadStructural input2406 value324 value1 value2 = (output2406, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2407 value323 value1 value2 = (output2407, value1162, value1) := by
  rw [input2407_def, output2407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child393]
  try dsimp only
  rw [child2406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output393_skip, output2406_skip]
  kernel_rfl

theorem node2408_cond_eq
    (child392 : Flapjack.WordAlloc.removeDeadStructural input392 value322 value1 value2 = (output392, value323, value1))
    (child2407 : Flapjack.WordAlloc.removeDeadStructural input2407 value323 value1 value2 = (output2407, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2408 value322 value1 value2 = (output2408, value1162, value1) := by
  rw [input2408_def, output2408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child392]
  try dsimp only
  rw [child2407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output392_skip, output2407_skip]
  kernel_rfl

theorem node2409_cond_eq
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value321 value1 value2 = (output391, value322, value1))
    (child2408 : Flapjack.WordAlloc.removeDeadStructural input2408 value322 value1 value2 = (output2408, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2409 value321 value1 value2 = (output2409, value1162, value1) := by
  rw [input2409_def, output2409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child391]
  try dsimp only
  rw [child2408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output391_skip, output2408_skip]
  kernel_rfl

theorem node2410_cond_eq
    (child390 : Flapjack.WordAlloc.removeDeadStructural input390 value320 value1 value2 = (output390, value321, value1))
    (child2409 : Flapjack.WordAlloc.removeDeadStructural input2409 value321 value1 value2 = (output2409, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2410 value320 value1 value2 = (output2410, value1162, value1) := by
  rw [input2410_def, output2410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child390]
  try dsimp only
  rw [child2409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output390_skip, output2409_skip]
  kernel_rfl

theorem node2411_cond_eq
    (child389 : Flapjack.WordAlloc.removeDeadStructural input389 value319 value1 value2 = (output389, value320, value1))
    (child2410 : Flapjack.WordAlloc.removeDeadStructural input2410 value320 value1 value2 = (output2410, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2411 value319 value1 value2 = (output2411, value1162, value1) := by
  rw [input2411_def, output2411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child389]
  try dsimp only
  rw [child2410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output389_skip, output2410_skip]
  kernel_rfl

theorem node2412_cond_eq
    (child388 : Flapjack.WordAlloc.removeDeadStructural input388 value318 value1 value2 = (output388, value319, value1))
    (child2411 : Flapjack.WordAlloc.removeDeadStructural input2411 value319 value1 value2 = (output2411, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2412 value318 value1 value2 = (output2412, value1162, value1) := by
  rw [input2412_def, output2412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child388]
  try dsimp only
  rw [child2411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output388_skip, output2411_skip]
  kernel_rfl

theorem node2413_cond_eq
    (child387 : Flapjack.WordAlloc.removeDeadStructural input387 value317 value1 value2 = (output387, value318, value1))
    (child2412 : Flapjack.WordAlloc.removeDeadStructural input2412 value318 value1 value2 = (output2412, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2413 value317 value1 value2 = (output2413, value1162, value1) := by
  rw [input2413_def, output2413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child387]
  try dsimp only
  rw [child2412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output387_skip, output2412_skip]
  kernel_rfl

theorem node2414_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value316 value1 value2 = (output386, value317, value1))
    (child2413 : Flapjack.WordAlloc.removeDeadStructural input2413 value317 value1 value2 = (output2413, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2414 value316 value1 value2 = (output2414, value1162, value1) := by
  rw [input2414_def, output2414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child2413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output2413_skip]
  kernel_rfl

theorem node2415_cond_eq
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value315 value1 value2 = (output385, value316, value1))
    (child2414 : Flapjack.WordAlloc.removeDeadStructural input2414 value316 value1 value2 = (output2414, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2415 value315 value1 value2 = (output2415, value1162, value1) := by
  rw [input2415_def, output2415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child385]
  try dsimp only
  rw [child2414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output385_skip, output2414_skip]
  kernel_rfl

theorem node2416_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value314 value1 value2 = (output384, value315, value1))
    (child2415 : Flapjack.WordAlloc.removeDeadStructural input2415 value315 value1 value2 = (output2415, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2416 value314 value1 value2 = (output2416, value1162, value1) := by
  rw [input2416_def, output2416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child2415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output2415_skip]
  kernel_rfl

theorem node2417_cond_eq
    (child383 : Flapjack.WordAlloc.removeDeadStructural input383 value313 value1 value2 = (output383, value314, value1))
    (child2416 : Flapjack.WordAlloc.removeDeadStructural input2416 value314 value1 value2 = (output2416, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2417 value313 value1 value2 = (output2417, value1162, value1) := by
  rw [input2417_def, output2417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child383]
  try dsimp only
  rw [child2416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output383_skip, output2416_skip]
  kernel_rfl

theorem node2418_cond_eq
    (child382 : Flapjack.WordAlloc.removeDeadStructural input382 value310 value1 value2 = (output382, value313, value1))
    (child2417 : Flapjack.WordAlloc.removeDeadStructural input2417 value313 value1 value2 = (output2417, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2418 value310 value1 value2 = (output2418, value1162, value1) := by
  rw [input2418_def, output2418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child382]
  try dsimp only
  rw [child2417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output382_skip, output2417_skip]
  kernel_rfl

theorem node2419_cond_eq
    (child377 : Flapjack.WordAlloc.removeDeadStructural input377 value310 value1 value2 = (output377, value310, value1))
    (child2418 : Flapjack.WordAlloc.removeDeadStructural input2418 value310 value1 value2 = (output2418, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2419 value310 value1 value2 = (output2419, value1162, value1) := by
  rw [input2419_def, output2419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child377]
  try dsimp only
  rw [child2418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output377_skip, output2418_skip]
  kernel_rfl

theorem node2420_cond_eq
    (child376 : Flapjack.WordAlloc.removeDeadStructural input376 value309 value1 value2 = (output376, value310, value1))
    (child2419 : Flapjack.WordAlloc.removeDeadStructural input2419 value310 value1 value2 = (output2419, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2420 value309 value1 value2 = (output2420, value1162, value1) := by
  rw [input2420_def, output2420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child376]
  try dsimp only
  rw [child2419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output376_skip, output2419_skip]
  kernel_rfl

theorem node2421_cond_eq
    (child375 : Flapjack.WordAlloc.removeDeadStructural input375 value308 value1 value2 = (output375, value309, value1))
    (child2420 : Flapjack.WordAlloc.removeDeadStructural input2420 value309 value1 value2 = (output2420, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2421 value308 value1 value2 = (output2421, value1162, value1) := by
  rw [input2421_def, output2421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child375]
  try dsimp only
  rw [child2420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output375_skip, output2420_skip]
  kernel_rfl

theorem node2422_cond_eq
    (child374 : Flapjack.WordAlloc.removeDeadStructural input374 value307 value1 value2 = (output374, value308, value1))
    (child2421 : Flapjack.WordAlloc.removeDeadStructural input2421 value308 value1 value2 = (output2421, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2422 value307 value1 value2 = (output2422, value1162, value1) := by
  rw [input2422_def, output2422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child374]
  try dsimp only
  rw [child2421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output374_skip, output2421_skip]
  kernel_rfl

theorem node2423_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value306 value1 value2 = (output373, value307, value1))
    (child2422 : Flapjack.WordAlloc.removeDeadStructural input2422 value307 value1 value2 = (output2422, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2423 value306 value1 value2 = (output2423, value1162, value1) := by
  rw [input2423_def, output2423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child2422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output2422_skip]
  kernel_rfl

theorem node2424_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value305 value1 value2 = (output372, value306, value1))
    (child2423 : Flapjack.WordAlloc.removeDeadStructural input2423 value306 value1 value2 = (output2423, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2424 value305 value1 value2 = (output2424, value1162, value1) := by
  rw [input2424_def, output2424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child2423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output2423_skip]
  kernel_rfl

theorem node2425_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value304 value1 value2 = (output371, value305, value1))
    (child2424 : Flapjack.WordAlloc.removeDeadStructural input2424 value305 value1 value2 = (output2424, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2425 value304 value1 value2 = (output2425, value1162, value1) := by
  rw [input2425_def, output2425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child2424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output2424_skip]
  kernel_rfl

theorem node2426_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value303 value1 value2 = (output370, value304, value1))
    (child2425 : Flapjack.WordAlloc.removeDeadStructural input2425 value304 value1 value2 = (output2425, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2426 value303 value1 value2 = (output2426, value1162, value1) := by
  rw [input2426_def, output2426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child2425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output2425_skip]
  kernel_rfl

theorem node2427_cond_eq
    (child369 : Flapjack.WordAlloc.removeDeadStructural input369 value302 value1 value2 = (output369, value303, value1))
    (child2426 : Flapjack.WordAlloc.removeDeadStructural input2426 value303 value1 value2 = (output2426, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2427 value302 value1 value2 = (output2427, value1162, value1) := by
  rw [input2427_def, output2427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child369]
  try dsimp only
  rw [child2426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output369_skip, output2426_skip]
  kernel_rfl

theorem node2428_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value301 value1 value2 = (output368, value302, value1))
    (child2427 : Flapjack.WordAlloc.removeDeadStructural input2427 value302 value1 value2 = (output2427, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2428 value301 value1 value2 = (output2428, value1162, value1) := by
  rw [input2428_def, output2428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child2427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output2427_skip]
  kernel_rfl

theorem node2429_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value300 value1 value2 = (output367, value301, value1))
    (child2428 : Flapjack.WordAlloc.removeDeadStructural input2428 value301 value1 value2 = (output2428, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2429 value300 value1 value2 = (output2429, value1162, value1) := by
  rw [input2429_def, output2429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child2428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output2428_skip]
  kernel_rfl

theorem node2430_cond_eq
    (child366 : Flapjack.WordAlloc.removeDeadStructural input366 value299 value1 value2 = (output366, value300, value1))
    (child2429 : Flapjack.WordAlloc.removeDeadStructural input2429 value300 value1 value2 = (output2429, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2430 value299 value1 value2 = (output2430, value1162, value1) := by
  rw [input2430_def, output2430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child366]
  try dsimp only
  rw [child2429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output366_skip, output2429_skip]
  kernel_rfl

theorem node2431_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value298 value1 value2 = (output365, value299, value1))
    (child2430 : Flapjack.WordAlloc.removeDeadStructural input2430 value299 value1 value2 = (output2430, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2431 value298 value1 value2 = (output2431, value1162, value1) := by
  rw [input2431_def, output2431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child2430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output2430_skip]
  kernel_rfl

theorem node2432_cond_eq
    (child364 : Flapjack.WordAlloc.removeDeadStructural input364 value295 value1 value2 = (output364, value298, value1))
    (child2431 : Flapjack.WordAlloc.removeDeadStructural input2431 value298 value1 value2 = (output2431, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2432 value295 value1 value2 = (output2432, value1162, value1) := by
  rw [input2432_def, output2432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child364]
  try dsimp only
  rw [child2431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output364_skip, output2431_skip]
  kernel_rfl

theorem node2433_cond_eq
    (child359 : Flapjack.WordAlloc.removeDeadStructural input359 value295 value1 value2 = (output359, value295, value1))
    (child2432 : Flapjack.WordAlloc.removeDeadStructural input2432 value295 value1 value2 = (output2432, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2433 value295 value1 value2 = (output2433, value1162, value1) := by
  rw [input2433_def, output2433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child359]
  try dsimp only
  rw [child2432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output359_skip, output2432_skip]
  kernel_rfl

theorem node2434_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value294 value1 value2 = (output358, value295, value1))
    (child2433 : Flapjack.WordAlloc.removeDeadStructural input2433 value295 value1 value2 = (output2433, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2434 value294 value1 value2 = (output2434, value1162, value1) := by
  rw [input2434_def, output2434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child2433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output2433_skip]
  kernel_rfl

theorem node2435_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value293 value1 value2 = (output357, value294, value1))
    (child2434 : Flapjack.WordAlloc.removeDeadStructural input2434 value294 value1 value2 = (output2434, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2435 value293 value1 value2 = (output2435, value1162, value1) := by
  rw [input2435_def, output2435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child2434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output2434_skip]
  kernel_rfl

theorem node2436_cond_eq
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value292 value1 value2 = (output356, value293, value1))
    (child2435 : Flapjack.WordAlloc.removeDeadStructural input2435 value293 value1 value2 = (output2435, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2436 value292 value1 value2 = (output2436, value1162, value1) := by
  rw [input2436_def, output2436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child356]
  try dsimp only
  rw [child2435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output356_skip, output2435_skip]
  kernel_rfl

theorem node2437_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value291 value1 value2 = (output355, value292, value1))
    (child2436 : Flapjack.WordAlloc.removeDeadStructural input2436 value292 value1 value2 = (output2436, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2437 value291 value1 value2 = (output2437, value1162, value1) := by
  rw [input2437_def, output2437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child2436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output2436_skip]
  kernel_rfl

theorem node2438_cond_eq
    (child354 : Flapjack.WordAlloc.removeDeadStructural input354 value290 value1 value2 = (output354, value291, value1))
    (child2437 : Flapjack.WordAlloc.removeDeadStructural input2437 value291 value1 value2 = (output2437, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2438 value290 value1 value2 = (output2438, value1162, value1) := by
  rw [input2438_def, output2438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child354]
  try dsimp only
  rw [child2437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output354_skip, output2437_skip]
  kernel_rfl

theorem node2439_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value289 value1 value2 = (output353, value290, value1))
    (child2438 : Flapjack.WordAlloc.removeDeadStructural input2438 value290 value1 value2 = (output2438, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2439 value289 value1 value2 = (output2439, value1162, value1) := by
  rw [input2439_def, output2439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child2438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output2438_skip]
  kernel_rfl

theorem node2440_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value286 value1 value2 = (output352, value289, value1))
    (child2439 : Flapjack.WordAlloc.removeDeadStructural input2439 value289 value1 value2 = (output2439, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2440 value286 value1 value2 = (output2440, value1162, value1) := by
  rw [input2440_def, output2440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child2439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output2439_skip]
  kernel_rfl

theorem node2441_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value286 value1 value2 = (output347, value286, value1))
    (child2440 : Flapjack.WordAlloc.removeDeadStructural input2440 value286 value1 value2 = (output2440, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2441 value286 value1 value2 = (output2441, value1162, value1) := by
  rw [input2441_def, output2441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child2440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output2440_skip]
  kernel_rfl

theorem node2442_cond_eq
    (child346 : Flapjack.WordAlloc.removeDeadStructural input346 value285 value1 value2 = (output346, value286, value1))
    (child2441 : Flapjack.WordAlloc.removeDeadStructural input2441 value286 value1 value2 = (output2441, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2442 value285 value1 value2 = (output2442, value1162, value1) := by
  rw [input2442_def, output2442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child346]
  try dsimp only
  rw [child2441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output346_skip, output2441_skip]
  kernel_rfl

theorem node2443_cond_eq
    (child345 : Flapjack.WordAlloc.removeDeadStructural input345 value284 value1 value2 = (output345, value285, value1))
    (child2442 : Flapjack.WordAlloc.removeDeadStructural input2442 value285 value1 value2 = (output2442, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2443 value284 value1 value2 = (output2443, value1162, value1) := by
  rw [input2443_def, output2443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child345]
  try dsimp only
  rw [child2442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output345_skip, output2442_skip]
  kernel_rfl

theorem node2444_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value283 value1 value2 = (output344, value284, value1))
    (child2443 : Flapjack.WordAlloc.removeDeadStructural input2443 value284 value1 value2 = (output2443, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2444 value283 value1 value2 = (output2444, value1162, value1) := by
  rw [input2444_def, output2444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  try dsimp only
  rw [child2443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output344_skip, output2443_skip]
  kernel_rfl

theorem node2445_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value282 value1 value2 = (output343, value283, value1))
    (child2444 : Flapjack.WordAlloc.removeDeadStructural input2444 value283 value1 value2 = (output2444, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2445 value282 value1 value2 = (output2445, value1162, value1) := by
  rw [input2445_def, output2445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child2444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output2444_skip]
  kernel_rfl

theorem node2446_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value281 value1 value2 = (output342, value282, value1))
    (child2445 : Flapjack.WordAlloc.removeDeadStructural input2445 value282 value1 value2 = (output2445, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2446 value281 value1 value2 = (output2446, value1162, value1) := by
  rw [input2446_def, output2446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child2445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output2445_skip]
  kernel_rfl

theorem node2447_cond_eq
    (child341 : Flapjack.WordAlloc.removeDeadStructural input341 value280 value1 value2 = (output341, value281, value1))
    (child2446 : Flapjack.WordAlloc.removeDeadStructural input2446 value281 value1 value2 = (output2446, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2447 value280 value1 value2 = (output2447, value1162, value1) := by
  rw [input2447_def, output2447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child341]
  try dsimp only
  rw [child2446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output341_skip, output2446_skip]
  kernel_rfl

theorem node2448_cond_eq
    (child340 : Flapjack.WordAlloc.removeDeadStructural input340 value279 value1 value2 = (output340, value280, value1))
    (child2447 : Flapjack.WordAlloc.removeDeadStructural input2447 value280 value1 value2 = (output2447, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2448 value279 value1 value2 = (output2448, value1162, value1) := by
  rw [input2448_def, output2448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child340]
  try dsimp only
  rw [child2447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output340_skip, output2447_skip]
  kernel_rfl

theorem node2449_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value278 value1 value2 = (output339, value279, value1))
    (child2448 : Flapjack.WordAlloc.removeDeadStructural input2448 value279 value1 value2 = (output2448, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2449 value278 value1 value2 = (output2449, value1162, value1) := by
  rw [input2449_def, output2449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child2448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output2448_skip]
  kernel_rfl

theorem node2450_cond_eq
    (child338 : Flapjack.WordAlloc.removeDeadStructural input338 value277 value1 value2 = (output338, value278, value1))
    (child2449 : Flapjack.WordAlloc.removeDeadStructural input2449 value278 value1 value2 = (output2449, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2450 value277 value1 value2 = (output2450, value1162, value1) := by
  rw [input2450_def, output2450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child338]
  try dsimp only
  rw [child2449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output338_skip, output2449_skip]
  kernel_rfl

theorem node2451_cond_eq
    (child337 : Flapjack.WordAlloc.removeDeadStructural input337 value276 value1 value2 = (output337, value277, value1))
    (child2450 : Flapjack.WordAlloc.removeDeadStructural input2450 value277 value1 value2 = (output2450, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2451 value276 value1 value2 = (output2451, value1162, value1) := by
  rw [input2451_def, output2451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child337]
  try dsimp only
  rw [child2450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output337_skip, output2450_skip]
  kernel_rfl

theorem node2452_cond_eq
    (child336 : Flapjack.WordAlloc.removeDeadStructural input336 value275 value1 value2 = (output336, value276, value1))
    (child2451 : Flapjack.WordAlloc.removeDeadStructural input2451 value276 value1 value2 = (output2451, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2452 value275 value1 value2 = (output2452, value1162, value1) := by
  rw [input2452_def, output2452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child336]
  try dsimp only
  rw [child2451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output336_skip, output2451_skip]
  kernel_rfl

theorem node2453_cond_eq
    (child335 : Flapjack.WordAlloc.removeDeadStructural input335 value274 value1 value2 = (output335, value275, value1))
    (child2452 : Flapjack.WordAlloc.removeDeadStructural input2452 value275 value1 value2 = (output2452, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2453 value274 value1 value2 = (output2453, value1162, value1) := by
  rw [input2453_def, output2453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child335]
  try dsimp only
  rw [child2452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output335_skip, output2452_skip]
  kernel_rfl

theorem node2454_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value271 value1 value2 = (output334, value274, value1))
    (child2453 : Flapjack.WordAlloc.removeDeadStructural input2453 value274 value1 value2 = (output2453, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2454 value271 value1 value2 = (output2454, value1162, value1) := by
  rw [input2454_def, output2454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child2453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output2453_skip]
  kernel_rfl

theorem node2455_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value271 value1 value2 = (output329, value271, value1))
    (child2454 : Flapjack.WordAlloc.removeDeadStructural input2454 value271 value1 value2 = (output2454, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2455 value271 value1 value2 = (output2455, value1162, value1) := by
  rw [input2455_def, output2455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child2454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output2454_skip]
  kernel_rfl

theorem node2456_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value270 value1 value2 = (output328, value271, value1))
    (child2455 : Flapjack.WordAlloc.removeDeadStructural input2455 value271 value1 value2 = (output2455, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2456 value270 value1 value2 = (output2456, value1162, value1) := by
  rw [input2456_def, output2456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child2455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output2455_skip]
  kernel_rfl

theorem node2457_cond_eq
    (child327 : Flapjack.WordAlloc.removeDeadStructural input327 value269 value1 value2 = (output327, value270, value1))
    (child2456 : Flapjack.WordAlloc.removeDeadStructural input2456 value270 value1 value2 = (output2456, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2457 value269 value1 value2 = (output2457, value1162, value1) := by
  rw [input2457_def, output2457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child327]
  try dsimp only
  rw [child2456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output327_skip, output2456_skip]
  kernel_rfl

theorem node2458_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value268 value1 value2 = (output326, value269, value1))
    (child2457 : Flapjack.WordAlloc.removeDeadStructural input2457 value269 value1 value2 = (output2457, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2458 value268 value1 value2 = (output2458, value1162, value1) := by
  rw [input2458_def, output2458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child2457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output2457_skip]
  kernel_rfl

theorem node2459_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value267 value1 value2 = (output325, value268, value1))
    (child2458 : Flapjack.WordAlloc.removeDeadStructural input2458 value268 value1 value2 = (output2458, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2459 value267 value1 value2 = (output2459, value1162, value1) := by
  rw [input2459_def, output2459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child2458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output2458_skip]
  kernel_rfl

theorem node2460_cond_eq
    (child324 : Flapjack.WordAlloc.removeDeadStructural input324 value266 value1 value2 = (output324, value267, value1))
    (child2459 : Flapjack.WordAlloc.removeDeadStructural input2459 value267 value1 value2 = (output2459, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2460 value266 value1 value2 = (output2460, value1162, value1) := by
  rw [input2460_def, output2460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child324]
  try dsimp only
  rw [child2459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output324_skip, output2459_skip]
  kernel_rfl

theorem node2461_cond_eq
    (child323 : Flapjack.WordAlloc.removeDeadStructural input323 value265 value1 value2 = (output323, value266, value1))
    (child2460 : Flapjack.WordAlloc.removeDeadStructural input2460 value266 value1 value2 = (output2460, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2461 value265 value1 value2 = (output2461, value1162, value1) := by
  rw [input2461_def, output2461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child323]
  try dsimp only
  rw [child2460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output323_skip, output2460_skip]
  kernel_rfl

theorem node2462_cond_eq
    (child322 : Flapjack.WordAlloc.removeDeadStructural input322 value264 value1 value2 = (output322, value265, value1))
    (child2461 : Flapjack.WordAlloc.removeDeadStructural input2461 value265 value1 value2 = (output2461, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2462 value264 value1 value2 = (output2462, value1162, value1) := by
  rw [input2462_def, output2462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child322]
  try dsimp only
  rw [child2461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output322_skip, output2461_skip]
  kernel_rfl

theorem node2463_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value263 value1 value2 = (output321, value264, value1))
    (child2462 : Flapjack.WordAlloc.removeDeadStructural input2462 value264 value1 value2 = (output2462, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2463 value263 value1 value2 = (output2463, value1162, value1) := by
  rw [input2463_def, output2463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child2462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output2462_skip]
  kernel_rfl

theorem node2464_cond_eq
    (child320 : Flapjack.WordAlloc.removeDeadStructural input320 value262 value1 value2 = (output320, value263, value1))
    (child2463 : Flapjack.WordAlloc.removeDeadStructural input2463 value263 value1 value2 = (output2463, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2464 value262 value1 value2 = (output2464, value1162, value1) := by
  rw [input2464_def, output2464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child320]
  try dsimp only
  rw [child2463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output320_skip, output2463_skip]
  kernel_rfl

theorem node2465_cond_eq
    (child319 : Flapjack.WordAlloc.removeDeadStructural input319 value261 value1 value2 = (output319, value262, value1))
    (child2464 : Flapjack.WordAlloc.removeDeadStructural input2464 value262 value1 value2 = (output2464, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2465 value261 value1 value2 = (output2465, value1162, value1) := by
  rw [input2465_def, output2465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child319]
  try dsimp only
  rw [child2464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output319_skip, output2464_skip]
  kernel_rfl

theorem node2466_cond_eq
    (child318 : Flapjack.WordAlloc.removeDeadStructural input318 value260 value1 value2 = (output318, value261, value1))
    (child2465 : Flapjack.WordAlloc.removeDeadStructural input2465 value261 value1 value2 = (output2465, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2466 value260 value1 value2 = (output2466, value1162, value1) := by
  rw [input2466_def, output2466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child318]
  try dsimp only
  rw [child2465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output318_skip, output2465_skip]
  kernel_rfl

theorem node2467_cond_eq
    (child317 : Flapjack.WordAlloc.removeDeadStructural input317 value259 value1 value2 = (output317, value260, value1))
    (child2466 : Flapjack.WordAlloc.removeDeadStructural input2466 value260 value1 value2 = (output2466, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2467 value259 value1 value2 = (output2467, value1162, value1) := by
  rw [input2467_def, output2467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child317]
  try dsimp only
  rw [child2466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output317_skip, output2466_skip]
  kernel_rfl

theorem node2468_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value256 value1 value2 = (output316, value259, value1))
    (child2467 : Flapjack.WordAlloc.removeDeadStructural input2467 value259 value1 value2 = (output2467, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2468 value256 value1 value2 = (output2468, value1162, value1) := by
  rw [input2468_def, output2468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child2467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output2467_skip]
  kernel_rfl

theorem node2469_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value256 value1 value2 = (output311, value256, value1))
    (child2468 : Flapjack.WordAlloc.removeDeadStructural input2468 value256 value1 value2 = (output2468, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2469 value256 value1 value2 = (output2469, value1162, value1) := by
  rw [input2469_def, output2469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child2468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output2468_skip]
  kernel_rfl

theorem node2470_cond_eq
    (child310 : Flapjack.WordAlloc.removeDeadStructural input310 value255 value1 value2 = (output310, value256, value1))
    (child2469 : Flapjack.WordAlloc.removeDeadStructural input2469 value256 value1 value2 = (output2469, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2470 value255 value1 value2 = (output2470, value1162, value1) := by
  rw [input2470_def, output2470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child310]
  try dsimp only
  rw [child2469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output310_skip, output2469_skip]
  kernel_rfl

theorem node2471_cond_eq
    (child309 : Flapjack.WordAlloc.removeDeadStructural input309 value254 value1 value2 = (output309, value255, value1))
    (child2470 : Flapjack.WordAlloc.removeDeadStructural input2470 value255 value1 value2 = (output2470, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2471 value254 value1 value2 = (output2471, value1162, value1) := by
  rw [input2471_def, output2471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child309]
  try dsimp only
  rw [child2470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output309_skip, output2470_skip]
  kernel_rfl

theorem node2472_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value253 value1 value2 = (output308, value254, value1))
    (child2471 : Flapjack.WordAlloc.removeDeadStructural input2471 value254 value1 value2 = (output2471, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2472 value253 value1 value2 = (output2472, value1162, value1) := by
  rw [input2472_def, output2472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child2471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output2471_skip]
  kernel_rfl

theorem node2473_cond_eq
    (child307 : Flapjack.WordAlloc.removeDeadStructural input307 value252 value1 value2 = (output307, value253, value1))
    (child2472 : Flapjack.WordAlloc.removeDeadStructural input2472 value253 value1 value2 = (output2472, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2473 value252 value1 value2 = (output2473, value1162, value1) := by
  rw [input2473_def, output2473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child307]
  try dsimp only
  rw [child2472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output307_skip, output2472_skip]
  kernel_rfl

theorem node2474_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value251 value1 value2 = (output306, value252, value1))
    (child2473 : Flapjack.WordAlloc.removeDeadStructural input2473 value252 value1 value2 = (output2473, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2474 value251 value1 value2 = (output2474, value1162, value1) := by
  rw [input2474_def, output2474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child306]
  try dsimp only
  rw [child2473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output306_skip, output2473_skip]
  kernel_rfl

theorem node2475_cond_eq
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value250 value1 value2 = (output305, value251, value1))
    (child2474 : Flapjack.WordAlloc.removeDeadStructural input2474 value251 value1 value2 = (output2474, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2475 value250 value1 value2 = (output2475, value1162, value1) := by
  rw [input2475_def, output2475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child305]
  try dsimp only
  rw [child2474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output305_skip, output2474_skip]
  kernel_rfl

theorem node2476_cond_eq
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value249 value1 value2 = (output304, value250, value1))
    (child2475 : Flapjack.WordAlloc.removeDeadStructural input2475 value250 value1 value2 = (output2475, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2476 value249 value1 value2 = (output2476, value1162, value1) := by
  rw [input2476_def, output2476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child304]
  try dsimp only
  rw [child2475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output304_skip, output2475_skip]
  kernel_rfl

theorem node2477_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value248 value1 value2 = (output303, value249, value1))
    (child2476 : Flapjack.WordAlloc.removeDeadStructural input2476 value249 value1 value2 = (output2476, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2477 value248 value1 value2 = (output2477, value1162, value1) := by
  rw [input2477_def, output2477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child2476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output2476_skip]
  kernel_rfl

theorem node2478_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value247 value1 value2 = (output302, value248, value1))
    (child2477 : Flapjack.WordAlloc.removeDeadStructural input2477 value248 value1 value2 = (output2477, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2478 value247 value1 value2 = (output2478, value1162, value1) := by
  rw [input2478_def, output2478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child2477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output2477_skip]
  kernel_rfl

theorem node2479_cond_eq
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value246 value1 value2 = (output301, value247, value1))
    (child2478 : Flapjack.WordAlloc.removeDeadStructural input2478 value247 value1 value2 = (output2478, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2479 value246 value1 value2 = (output2479, value1162, value1) := by
  rw [input2479_def, output2479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child301]
  try dsimp only
  rw [child2478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output301_skip, output2478_skip]
  kernel_rfl

theorem node2480_cond_eq
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value245 value1 value2 = (output300, value246, value1))
    (child2479 : Flapjack.WordAlloc.removeDeadStructural input2479 value246 value1 value2 = (output2479, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2480 value245 value1 value2 = (output2480, value1162, value1) := by
  rw [input2480_def, output2480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child300]
  try dsimp only
  rw [child2479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output300_skip, output2479_skip]
  kernel_rfl

theorem node2481_cond_eq
    (child299 : Flapjack.WordAlloc.removeDeadStructural input299 value244 value1 value2 = (output299, value245, value1))
    (child2480 : Flapjack.WordAlloc.removeDeadStructural input2480 value245 value1 value2 = (output2480, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2481 value244 value1 value2 = (output2481, value1162, value1) := by
  rw [input2481_def, output2481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child299]
  try dsimp only
  rw [child2480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output299_skip, output2480_skip]
  kernel_rfl

theorem node2482_cond_eq
    (child298 : Flapjack.WordAlloc.removeDeadStructural input298 value241 value1 value2 = (output298, value244, value1))
    (child2481 : Flapjack.WordAlloc.removeDeadStructural input2481 value244 value1 value2 = (output2481, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2482 value241 value1 value2 = (output2482, value1162, value1) := by
  rw [input2482_def, output2482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child298]
  try dsimp only
  rw [child2481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output298_skip, output2481_skip]
  kernel_rfl

theorem node2483_cond_eq
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value241 value1 value2 = (output293, value241, value1))
    (child2482 : Flapjack.WordAlloc.removeDeadStructural input2482 value241 value1 value2 = (output2482, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2483 value241 value1 value2 = (output2483, value1162, value1) := by
  rw [input2483_def, output2483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child293]
  try dsimp only
  rw [child2482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output293_skip, output2482_skip]
  kernel_rfl

theorem node2484_cond_eq
    (child292 : Flapjack.WordAlloc.removeDeadStructural input292 value240 value1 value2 = (output292, value241, value1))
    (child2483 : Flapjack.WordAlloc.removeDeadStructural input2483 value241 value1 value2 = (output2483, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2484 value240 value1 value2 = (output2484, value1162, value1) := by
  rw [input2484_def, output2484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child292]
  try dsimp only
  rw [child2483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output292_skip, output2483_skip]
  kernel_rfl

theorem node2485_cond_eq
    (child291 : Flapjack.WordAlloc.removeDeadStructural input291 value239 value1 value2 = (output291, value240, value1))
    (child2484 : Flapjack.WordAlloc.removeDeadStructural input2484 value240 value1 value2 = (output2484, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2485 value239 value1 value2 = (output2485, value1162, value1) := by
  rw [input2485_def, output2485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child291]
  try dsimp only
  rw [child2484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output291_skip, output2484_skip]
  kernel_rfl

theorem node2486_cond_eq
    (child290 : Flapjack.WordAlloc.removeDeadStructural input290 value238 value1 value2 = (output290, value239, value1))
    (child2485 : Flapjack.WordAlloc.removeDeadStructural input2485 value239 value1 value2 = (output2485, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2486 value238 value1 value2 = (output2486, value1162, value1) := by
  rw [input2486_def, output2486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child290]
  try dsimp only
  rw [child2485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output290_skip, output2485_skip]
  kernel_rfl

theorem node2487_cond_eq
    (child289 : Flapjack.WordAlloc.removeDeadStructural input289 value237 value1 value2 = (output289, value238, value1))
    (child2486 : Flapjack.WordAlloc.removeDeadStructural input2486 value238 value1 value2 = (output2486, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2487 value237 value1 value2 = (output2487, value1162, value1) := by
  rw [input2487_def, output2487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child289]
  try dsimp only
  rw [child2486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output289_skip, output2486_skip]
  kernel_rfl

theorem node2488_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value236 value1 value2 = (output288, value237, value1))
    (child2487 : Flapjack.WordAlloc.removeDeadStructural input2487 value237 value1 value2 = (output2487, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2488 value236 value1 value2 = (output2488, value1162, value1) := by
  rw [input2488_def, output2488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child2487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output2487_skip]
  kernel_rfl

theorem node2489_cond_eq
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value235 value1 value2 = (output287, value236, value1))
    (child2488 : Flapjack.WordAlloc.removeDeadStructural input2488 value236 value1 value2 = (output2488, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2489 value235 value1 value2 = (output2489, value1162, value1) := by
  rw [input2489_def, output2489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child287]
  try dsimp only
  rw [child2488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output287_skip, output2488_skip]
  kernel_rfl

theorem node2490_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value232 value1 value2 = (output286, value235, value1))
    (child2489 : Flapjack.WordAlloc.removeDeadStructural input2489 value235 value1 value2 = (output2489, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2490 value232 value1 value2 = (output2490, value1162, value1) := by
  rw [input2490_def, output2490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child2489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output2489_skip]
  kernel_rfl

theorem node2491_cond_eq
    (child281 : Flapjack.WordAlloc.removeDeadStructural input281 value232 value1 value2 = (output281, value232, value1))
    (child2490 : Flapjack.WordAlloc.removeDeadStructural input2490 value232 value1 value2 = (output2490, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2491 value232 value1 value2 = (output2491, value1162, value1) := by
  rw [input2491_def, output2491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child281]
  try dsimp only
  rw [child2490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output281_skip, output2490_skip]
  kernel_rfl

theorem node2492_cond_eq
    (child280 : Flapjack.WordAlloc.removeDeadStructural input280 value231 value1 value2 = (output280, value232, value1))
    (child2491 : Flapjack.WordAlloc.removeDeadStructural input2491 value232 value1 value2 = (output2491, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2492 value231 value1 value2 = (output2492, value1162, value1) := by
  rw [input2492_def, output2492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child280]
  try dsimp only
  rw [child2491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output280_skip, output2491_skip]
  kernel_rfl

theorem node2493_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value230 value1 value2 = (output279, value231, value1))
    (child2492 : Flapjack.WordAlloc.removeDeadStructural input2492 value231 value1 value2 = (output2492, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2493 value230 value1 value2 = (output2493, value1162, value1) := by
  rw [input2493_def, output2493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  try dsimp only
  rw [child2492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output279_skip, output2492_skip]
  kernel_rfl

theorem node2494_cond_eq
    (child278 : Flapjack.WordAlloc.removeDeadStructural input278 value229 value1 value2 = (output278, value230, value1))
    (child2493 : Flapjack.WordAlloc.removeDeadStructural input2493 value230 value1 value2 = (output2493, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2494 value229 value1 value2 = (output2494, value1162, value1) := by
  rw [input2494_def, output2494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child278]
  try dsimp only
  rw [child2493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output278_skip, output2493_skip]
  kernel_rfl

theorem node2495_cond_eq
    (child277 : Flapjack.WordAlloc.removeDeadStructural input277 value228 value1 value2 = (output277, value229, value1))
    (child2494 : Flapjack.WordAlloc.removeDeadStructural input2494 value229 value1 value2 = (output2494, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2495 value228 value1 value2 = (output2495, value1162, value1) := by
  rw [input2495_def, output2495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child277]
  try dsimp only
  rw [child2494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output277_skip, output2494_skip]
  kernel_rfl

theorem node2496_cond_eq
    (child276 : Flapjack.WordAlloc.removeDeadStructural input276 value227 value1 value2 = (output276, value228, value1))
    (child2495 : Flapjack.WordAlloc.removeDeadStructural input2495 value228 value1 value2 = (output2495, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2496 value227 value1 value2 = (output2496, value1162, value1) := by
  rw [input2496_def, output2496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child276]
  try dsimp only
  rw [child2495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output276_skip, output2495_skip]
  kernel_rfl

theorem node2497_cond_eq
    (child275 : Flapjack.WordAlloc.removeDeadStructural input275 value226 value1 value2 = (output275, value227, value1))
    (child2496 : Flapjack.WordAlloc.removeDeadStructural input2496 value227 value1 value2 = (output2496, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2497 value226 value1 value2 = (output2497, value1162, value1) := by
  rw [input2497_def, output2497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child275]
  try dsimp only
  rw [child2496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output275_skip, output2496_skip]
  kernel_rfl

theorem node2498_cond_eq
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value225 value1 value2 = (output274, value226, value1))
    (child2497 : Flapjack.WordAlloc.removeDeadStructural input2497 value226 value1 value2 = (output2497, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2498 value225 value1 value2 = (output2498, value1162, value1) := by
  rw [input2498_def, output2498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child274]
  try dsimp only
  rw [child2497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output274_skip, output2497_skip]
  kernel_rfl

theorem node2499_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value224 value1 value2 = (output273, value225, value1))
    (child2498 : Flapjack.WordAlloc.removeDeadStructural input2498 value225 value1 value2 = (output2498, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2499 value224 value1 value2 = (output2499, value1162, value1) := by
  rw [input2499_def, output2499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child2498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output2498_skip]
  kernel_rfl

theorem node2500_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value223 value1 value2 = (output272, value224, value1))
    (child2499 : Flapjack.WordAlloc.removeDeadStructural input2499 value224 value1 value2 = (output2499, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2500 value223 value1 value2 = (output2500, value1162, value1) := by
  rw [input2500_def, output2500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child2499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output2499_skip]
  kernel_rfl

theorem node2501_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value222 value1 value2 = (output271, value223, value1))
    (child2500 : Flapjack.WordAlloc.removeDeadStructural input2500 value223 value1 value2 = (output2500, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2501 value222 value1 value2 = (output2501, value1162, value1) := by
  rw [input2501_def, output2501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  try dsimp only
  rw [child2500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output271_skip, output2500_skip]
  kernel_rfl

theorem node2502_cond_eq
    (child270 : Flapjack.WordAlloc.removeDeadStructural input270 value221 value1 value2 = (output270, value222, value1))
    (child2501 : Flapjack.WordAlloc.removeDeadStructural input2501 value222 value1 value2 = (output2501, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2502 value221 value1 value2 = (output2502, value1162, value1) := by
  rw [input2502_def, output2502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child270]
  try dsimp only
  rw [child2501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output270_skip, output2501_skip]
  kernel_rfl

theorem node2503_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value220 value1 value2 = (output269, value221, value1))
    (child2502 : Flapjack.WordAlloc.removeDeadStructural input2502 value221 value1 value2 = (output2502, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2503 value220 value1 value2 = (output2503, value1162, value1) := by
  rw [input2503_def, output2503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child2502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output2502_skip]
  kernel_rfl

theorem node2504_cond_eq
    (child268 : Flapjack.WordAlloc.removeDeadStructural input268 value217 value1 value2 = (output268, value220, value1))
    (child2503 : Flapjack.WordAlloc.removeDeadStructural input2503 value220 value1 value2 = (output2503, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2504 value217 value1 value2 = (output2504, value1162, value1) := by
  rw [input2504_def, output2504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child268]
  try dsimp only
  rw [child2503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output268_skip, output2503_skip]
  kernel_rfl

theorem node2505_cond_eq
    (child263 : Flapjack.WordAlloc.removeDeadStructural input263 value217 value1 value2 = (output263, value217, value1))
    (child2504 : Flapjack.WordAlloc.removeDeadStructural input2504 value217 value1 value2 = (output2504, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2505 value217 value1 value2 = (output2505, value1162, value1) := by
  rw [input2505_def, output2505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child263]
  try dsimp only
  rw [child2504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output263_skip, output2504_skip]
  kernel_rfl

theorem node2506_cond_eq
    (child262 : Flapjack.WordAlloc.removeDeadStructural input262 value216 value1 value2 = (output262, value217, value1))
    (child2505 : Flapjack.WordAlloc.removeDeadStructural input2505 value217 value1 value2 = (output2505, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2506 value216 value1 value2 = (output2506, value1162, value1) := by
  rw [input2506_def, output2506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child262]
  try dsimp only
  rw [child2505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output262_skip, output2505_skip]
  kernel_rfl

theorem node2507_cond_eq
    (child261 : Flapjack.WordAlloc.removeDeadStructural input261 value215 value1 value2 = (output261, value216, value1))
    (child2506 : Flapjack.WordAlloc.removeDeadStructural input2506 value216 value1 value2 = (output2506, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2507 value215 value1 value2 = (output2507, value1162, value1) := by
  rw [input2507_def, output2507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child261]
  try dsimp only
  rw [child2506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output261_skip, output2506_skip]
  kernel_rfl

theorem node2508_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value214 value1 value2 = (output260, value215, value1))
    (child2507 : Flapjack.WordAlloc.removeDeadStructural input2507 value215 value1 value2 = (output2507, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2508 value214 value1 value2 = (output2508, value1162, value1) := by
  rw [input2508_def, output2508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  try dsimp only
  rw [child2507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output260_skip, output2507_skip]
  kernel_rfl

theorem node2509_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value213 value1 value2 = (output259, value214, value1))
    (child2508 : Flapjack.WordAlloc.removeDeadStructural input2508 value214 value1 value2 = (output2508, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2509 value213 value1 value2 = (output2509, value1162, value1) := by
  rw [input2509_def, output2509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child2508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output2508_skip]
  kernel_rfl

theorem node2510_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value212 value1 value2 = (output258, value213, value1))
    (child2509 : Flapjack.WordAlloc.removeDeadStructural input2509 value213 value1 value2 = (output2509, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2510 value212 value1 value2 = (output2510, value1162, value1) := by
  rw [input2510_def, output2510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child2509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output2509_skip]
  kernel_rfl

theorem node2511_cond_eq
    (child257 : Flapjack.WordAlloc.removeDeadStructural input257 value211 value1 value2 = (output257, value212, value1))
    (child2510 : Flapjack.WordAlloc.removeDeadStructural input2510 value212 value1 value2 = (output2510, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2511 value211 value1 value2 = (output2511, value1162, value1) := by
  rw [input2511_def, output2511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child257]
  try dsimp only
  rw [child2510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output257_skip, output2510_skip]
  kernel_rfl

theorem node2512_cond_eq
    (child256 : Flapjack.WordAlloc.removeDeadStructural input256 value210 value1 value2 = (output256, value211, value1))
    (child2511 : Flapjack.WordAlloc.removeDeadStructural input2511 value211 value1 value2 = (output2511, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2512 value210 value1 value2 = (output2512, value1162, value1) := by
  rw [input2512_def, output2512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child256]
  try dsimp only
  rw [child2511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output256_skip, output2511_skip]
  kernel_rfl

theorem node2513_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value209 value1 value2 = (output255, value210, value1))
    (child2512 : Flapjack.WordAlloc.removeDeadStructural input2512 value210 value1 value2 = (output2512, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2513 value209 value1 value2 = (output2513, value1162, value1) := by
  rw [input2513_def, output2513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child2512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output2512_skip]
  kernel_rfl

theorem node2514_cond_eq
    (child254 : Flapjack.WordAlloc.removeDeadStructural input254 value208 value1 value2 = (output254, value209, value1))
    (child2513 : Flapjack.WordAlloc.removeDeadStructural input2513 value209 value1 value2 = (output2513, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2514 value208 value1 value2 = (output2514, value1162, value1) := by
  rw [input2514_def, output2514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child254]
  try dsimp only
  rw [child2513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output254_skip, output2513_skip]
  kernel_rfl

theorem node2515_cond_eq
    (child253 : Flapjack.WordAlloc.removeDeadStructural input253 value207 value1 value2 = (output253, value208, value1))
    (child2514 : Flapjack.WordAlloc.removeDeadStructural input2514 value208 value1 value2 = (output2514, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2515 value207 value1 value2 = (output2515, value1162, value1) := by
  rw [input2515_def, output2515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child253]
  try dsimp only
  rw [child2514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output253_skip, output2514_skip]
  kernel_rfl

theorem node2516_cond_eq
    (child252 : Flapjack.WordAlloc.removeDeadStructural input252 value206 value1 value2 = (output252, value207, value1))
    (child2515 : Flapjack.WordAlloc.removeDeadStructural input2515 value207 value1 value2 = (output2515, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2516 value206 value1 value2 = (output2516, value1162, value1) := by
  rw [input2516_def, output2516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child252]
  try dsimp only
  rw [child2515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output252_skip, output2515_skip]
  kernel_rfl

theorem node2517_cond_eq
    (child251 : Flapjack.WordAlloc.removeDeadStructural input251 value205 value1 value2 = (output251, value206, value1))
    (child2516 : Flapjack.WordAlloc.removeDeadStructural input2516 value206 value1 value2 = (output2516, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2517 value205 value1 value2 = (output2517, value1162, value1) := by
  rw [input2517_def, output2517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child251]
  try dsimp only
  rw [child2516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output251_skip, output2516_skip]
  kernel_rfl

theorem node2518_cond_eq
    (child250 : Flapjack.WordAlloc.removeDeadStructural input250 value202 value1 value2 = (output250, value205, value1))
    (child2517 : Flapjack.WordAlloc.removeDeadStructural input2517 value205 value1 value2 = (output2517, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2518 value202 value1 value2 = (output2518, value1162, value1) := by
  rw [input2518_def, output2518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child250]
  try dsimp only
  rw [child2517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output250_skip, output2517_skip]
  kernel_rfl

theorem node2519_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value202 value1 value2 = (output245, value202, value1))
    (child2518 : Flapjack.WordAlloc.removeDeadStructural input2518 value202 value1 value2 = (output2518, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2519 value202 value1 value2 = (output2519, value1162, value1) := by
  rw [input2519_def, output2519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child2518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output2518_skip]
  kernel_rfl

theorem node2520_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value201 value1 value2 = (output244, value202, value1))
    (child2519 : Flapjack.WordAlloc.removeDeadStructural input2519 value202 value1 value2 = (output2519, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2520 value201 value1 value2 = (output2520, value1162, value1) := by
  rw [input2520_def, output2520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child2519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output2519_skip]
  kernel_rfl

theorem node2521_cond_eq
    (child243 : Flapjack.WordAlloc.removeDeadStructural input243 value200 value1 value2 = (output243, value201, value1))
    (child2520 : Flapjack.WordAlloc.removeDeadStructural input2520 value201 value1 value2 = (output2520, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2521 value200 value1 value2 = (output2521, value1162, value1) := by
  rw [input2521_def, output2521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child243]
  try dsimp only
  rw [child2520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output243_skip, output2520_skip]
  kernel_rfl

theorem node2522_cond_eq
    (child242 : Flapjack.WordAlloc.removeDeadStructural input242 value199 value1 value2 = (output242, value200, value1))
    (child2521 : Flapjack.WordAlloc.removeDeadStructural input2521 value200 value1 value2 = (output2521, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2522 value199 value1 value2 = (output2522, value1162, value1) := by
  rw [input2522_def, output2522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child242]
  try dsimp only
  rw [child2521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output242_skip, output2521_skip]
  kernel_rfl

theorem node2523_cond_eq
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value198 value1 value2 = (output241, value199, value1))
    (child2522 : Flapjack.WordAlloc.removeDeadStructural input2522 value199 value1 value2 = (output2522, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2523 value198 value1 value2 = (output2523, value1162, value1) := by
  rw [input2523_def, output2523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child241]
  try dsimp only
  rw [child2522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output241_skip, output2522_skip]
  kernel_rfl

theorem node2524_cond_eq
    (child240 : Flapjack.WordAlloc.removeDeadStructural input240 value197 value1 value2 = (output240, value198, value1))
    (child2523 : Flapjack.WordAlloc.removeDeadStructural input2523 value198 value1 value2 = (output2523, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2524 value197 value1 value2 = (output2524, value1162, value1) := by
  rw [input2524_def, output2524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child240]
  try dsimp only
  rw [child2523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output240_skip, output2523_skip]
  kernel_rfl

theorem node2525_cond_eq
    (child239 : Flapjack.WordAlloc.removeDeadStructural input239 value196 value1 value2 = (output239, value197, value1))
    (child2524 : Flapjack.WordAlloc.removeDeadStructural input2524 value197 value1 value2 = (output2524, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2525 value196 value1 value2 = (output2525, value1162, value1) := by
  rw [input2525_def, output2525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child239]
  try dsimp only
  rw [child2524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output239_skip, output2524_skip]
  kernel_rfl

theorem node2526_cond_eq
    (child238 : Flapjack.WordAlloc.removeDeadStructural input238 value195 value1 value2 = (output238, value196, value1))
    (child2525 : Flapjack.WordAlloc.removeDeadStructural input2525 value196 value1 value2 = (output2525, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2526 value195 value1 value2 = (output2526, value1162, value1) := by
  rw [input2526_def, output2526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child238]
  try dsimp only
  rw [child2525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output238_skip, output2525_skip]
  kernel_rfl

theorem node2527_cond_eq
    (child237 : Flapjack.WordAlloc.removeDeadStructural input237 value194 value1 value2 = (output237, value195, value1))
    (child2526 : Flapjack.WordAlloc.removeDeadStructural input2526 value195 value1 value2 = (output2526, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2527 value194 value1 value2 = (output2527, value1162, value1) := by
  rw [input2527_def, output2527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child237]
  try dsimp only
  rw [child2526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output237_skip, output2526_skip]
  kernel_rfl

theorem node2528_cond_eq
    (child236 : Flapjack.WordAlloc.removeDeadStructural input236 value193 value1 value2 = (output236, value194, value1))
    (child2527 : Flapjack.WordAlloc.removeDeadStructural input2527 value194 value1 value2 = (output2527, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2528 value193 value1 value2 = (output2528, value1162, value1) := by
  rw [input2528_def, output2528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child236]
  try dsimp only
  rw [child2527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output236_skip, output2527_skip]
  kernel_rfl

theorem node2529_cond_eq
    (child235 : Flapjack.WordAlloc.removeDeadStructural input235 value192 value1 value2 = (output235, value193, value1))
    (child2528 : Flapjack.WordAlloc.removeDeadStructural input2528 value193 value1 value2 = (output2528, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2529 value192 value1 value2 = (output2529, value1162, value1) := by
  rw [input2529_def, output2529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child235]
  try dsimp only
  rw [child2528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output235_skip, output2528_skip]
  kernel_rfl

theorem node2530_cond_eq
    (child234 : Flapjack.WordAlloc.removeDeadStructural input234 value191 value1 value2 = (output234, value192, value1))
    (child2529 : Flapjack.WordAlloc.removeDeadStructural input2529 value192 value1 value2 = (output2529, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2530 value191 value1 value2 = (output2530, value1162, value1) := by
  rw [input2530_def, output2530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child234]
  try dsimp only
  rw [child2529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output234_skip, output2529_skip]
  kernel_rfl

theorem node2531_cond_eq
    (child233 : Flapjack.WordAlloc.removeDeadStructural input233 value190 value1 value2 = (output233, value191, value1))
    (child2530 : Flapjack.WordAlloc.removeDeadStructural input2530 value191 value1 value2 = (output2530, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2531 value190 value1 value2 = (output2531, value1162, value1) := by
  rw [input2531_def, output2531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child233]
  try dsimp only
  rw [child2530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output233_skip, output2530_skip]
  kernel_rfl

theorem node2532_cond_eq
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value187 value1 value2 = (output232, value190, value1))
    (child2531 : Flapjack.WordAlloc.removeDeadStructural input2531 value190 value1 value2 = (output2531, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2532 value187 value1 value2 = (output2532, value1162, value1) := by
  rw [input2532_def, output2532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child232]
  try dsimp only
  rw [child2531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output232_skip, output2531_skip]
  kernel_rfl

theorem node2533_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value187 value1 value2 = (output227, value187, value1))
    (child2532 : Flapjack.WordAlloc.removeDeadStructural input2532 value187 value1 value2 = (output2532, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2533 value187 value1 value2 = (output2533, value1162, value1) := by
  rw [input2533_def, output2533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child2532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output2532_skip]
  kernel_rfl

theorem node2534_cond_eq
    (child226 : Flapjack.WordAlloc.removeDeadStructural input226 value186 value1 value2 = (output226, value187, value1))
    (child2533 : Flapjack.WordAlloc.removeDeadStructural input2533 value187 value1 value2 = (output2533, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2534 value186 value1 value2 = (output2534, value1162, value1) := by
  rw [input2534_def, output2534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child226]
  try dsimp only
  rw [child2533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output226_skip, output2533_skip]
  kernel_rfl

theorem node2535_cond_eq
    (child225 : Flapjack.WordAlloc.removeDeadStructural input225 value185 value1 value2 = (output225, value186, value1))
    (child2534 : Flapjack.WordAlloc.removeDeadStructural input2534 value186 value1 value2 = (output2534, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2535 value185 value1 value2 = (output2535, value1162, value1) := by
  rw [input2535_def, output2535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child225]
  try dsimp only
  rw [child2534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output225_skip, output2534_skip]
  kernel_rfl

theorem node2536_cond_eq
    (child224 : Flapjack.WordAlloc.removeDeadStructural input224 value184 value1 value2 = (output224, value185, value1))
    (child2535 : Flapjack.WordAlloc.removeDeadStructural input2535 value185 value1 value2 = (output2535, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2536 value184 value1 value2 = (output2536, value1162, value1) := by
  rw [input2536_def, output2536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child224]
  try dsimp only
  rw [child2535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output224_skip, output2535_skip]
  kernel_rfl

theorem node2537_cond_eq
    (child223 : Flapjack.WordAlloc.removeDeadStructural input223 value183 value1 value2 = (output223, value184, value1))
    (child2536 : Flapjack.WordAlloc.removeDeadStructural input2536 value184 value1 value2 = (output2536, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2537 value183 value1 value2 = (output2537, value1162, value1) := by
  rw [input2537_def, output2537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child223]
  try dsimp only
  rw [child2536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output223_skip, output2536_skip]
  kernel_rfl

theorem node2538_cond_eq
    (child222 : Flapjack.WordAlloc.removeDeadStructural input222 value182 value1 value2 = (output222, value183, value1))
    (child2537 : Flapjack.WordAlloc.removeDeadStructural input2537 value183 value1 value2 = (output2537, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2538 value182 value1 value2 = (output2538, value1162, value1) := by
  rw [input2538_def, output2538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child222]
  try dsimp only
  rw [child2537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output222_skip, output2537_skip]
  kernel_rfl

theorem node2539_cond_eq
    (child221 : Flapjack.WordAlloc.removeDeadStructural input221 value181 value1 value2 = (output221, value182, value1))
    (child2538 : Flapjack.WordAlloc.removeDeadStructural input2538 value182 value1 value2 = (output2538, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2539 value181 value1 value2 = (output2539, value1162, value1) := by
  rw [input2539_def, output2539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child221]
  try dsimp only
  rw [child2538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output221_skip, output2538_skip]
  kernel_rfl

theorem node2540_cond_eq
    (child220 : Flapjack.WordAlloc.removeDeadStructural input220 value180 value1 value2 = (output220, value181, value1))
    (child2539 : Flapjack.WordAlloc.removeDeadStructural input2539 value181 value1 value2 = (output2539, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2540 value180 value1 value2 = (output2540, value1162, value1) := by
  rw [input2540_def, output2540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child220]
  try dsimp only
  rw [child2539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output220_skip, output2539_skip]
  kernel_rfl

theorem node2541_cond_eq
    (child219 : Flapjack.WordAlloc.removeDeadStructural input219 value179 value1 value2 = (output219, value180, value1))
    (child2540 : Flapjack.WordAlloc.removeDeadStructural input2540 value180 value1 value2 = (output2540, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2541 value179 value1 value2 = (output2541, value1162, value1) := by
  rw [input2541_def, output2541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child219]
  try dsimp only
  rw [child2540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output219_skip, output2540_skip]
  kernel_rfl

theorem node2542_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value178 value1 value2 = (output218, value179, value1))
    (child2541 : Flapjack.WordAlloc.removeDeadStructural input2541 value179 value1 value2 = (output2541, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2542 value178 value1 value2 = (output2542, value1162, value1) := by
  rw [input2542_def, output2542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  try dsimp only
  rw [child2541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output218_skip, output2541_skip]
  kernel_rfl

theorem node2543_cond_eq
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value177 value1 value2 = (output217, value178, value1))
    (child2542 : Flapjack.WordAlloc.removeDeadStructural input2542 value178 value1 value2 = (output2542, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2543 value177 value1 value2 = (output2543, value1162, value1) := by
  rw [input2543_def, output2543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child217]
  try dsimp only
  rw [child2542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output217_skip, output2542_skip]
  kernel_rfl

theorem node2544_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value176 value1 value2 = (output216, value177, value1))
    (child2543 : Flapjack.WordAlloc.removeDeadStructural input2543 value177 value1 value2 = (output2543, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2544 value176 value1 value2 = (output2544, value1162, value1) := by
  rw [input2544_def, output2544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child2543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output2543_skip]
  kernel_rfl

theorem node2545_cond_eq
    (child215 : Flapjack.WordAlloc.removeDeadStructural input215 value175 value1 value2 = (output215, value176, value1))
    (child2544 : Flapjack.WordAlloc.removeDeadStructural input2544 value176 value1 value2 = (output2544, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2545 value175 value1 value2 = (output2545, value1162, value1) := by
  rw [input2545_def, output2545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child215]
  try dsimp only
  rw [child2544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output215_skip, output2544_skip]
  kernel_rfl

theorem node2546_cond_eq
    (child214 : Flapjack.WordAlloc.removeDeadStructural input214 value172 value1 value2 = (output214, value175, value1))
    (child2545 : Flapjack.WordAlloc.removeDeadStructural input2545 value175 value1 value2 = (output2545, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2546 value172 value1 value2 = (output2546, value1162, value1) := by
  rw [input2546_def, output2546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child214]
  try dsimp only
  rw [child2545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output214_skip, output2545_skip]
  kernel_rfl

theorem node2547_cond_eq
    (child209 : Flapjack.WordAlloc.removeDeadStructural input209 value172 value1 value2 = (output209, value172, value1))
    (child2546 : Flapjack.WordAlloc.removeDeadStructural input2546 value172 value1 value2 = (output2546, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2547 value172 value1 value2 = (output2547, value1162, value1) := by
  rw [input2547_def, output2547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child209]
  try dsimp only
  rw [child2546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output209_skip, output2546_skip]
  kernel_rfl

theorem node2548_cond_eq
    (child208 : Flapjack.WordAlloc.removeDeadStructural input208 value171 value1 value2 = (output208, value172, value1))
    (child2547 : Flapjack.WordAlloc.removeDeadStructural input2547 value172 value1 value2 = (output2547, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2548 value171 value1 value2 = (output2548, value1162, value1) := by
  rw [input2548_def, output2548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child208]
  try dsimp only
  rw [child2547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output208_skip, output2547_skip]
  kernel_rfl

theorem node2549_cond_eq
    (child207 : Flapjack.WordAlloc.removeDeadStructural input207 value170 value1 value2 = (output207, value171, value1))
    (child2548 : Flapjack.WordAlloc.removeDeadStructural input2548 value171 value1 value2 = (output2548, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2549 value170 value1 value2 = (output2549, value1162, value1) := by
  rw [input2549_def, output2549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child207]
  try dsimp only
  rw [child2548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output207_skip, output2548_skip]
  kernel_rfl

theorem node2550_cond_eq
    (child206 : Flapjack.WordAlloc.removeDeadStructural input206 value169 value1 value2 = (output206, value170, value1))
    (child2549 : Flapjack.WordAlloc.removeDeadStructural input2549 value170 value1 value2 = (output2549, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2550 value169 value1 value2 = (output2550, value1162, value1) := by
  rw [input2550_def, output2550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child206]
  try dsimp only
  rw [child2549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output206_skip, output2549_skip]
  kernel_rfl

theorem node2551_cond_eq
    (child205 : Flapjack.WordAlloc.removeDeadStructural input205 value168 value1 value2 = (output205, value169, value1))
    (child2550 : Flapjack.WordAlloc.removeDeadStructural input2550 value169 value1 value2 = (output2550, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2551 value168 value1 value2 = (output2551, value1162, value1) := by
  rw [input2551_def, output2551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child205]
  try dsimp only
  rw [child2550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output205_skip, output2550_skip]
  kernel_rfl

theorem node2552_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value167 value1 value2 = (output204, value168, value1))
    (child2551 : Flapjack.WordAlloc.removeDeadStructural input2551 value168 value1 value2 = (output2551, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2552 value167 value1 value2 = (output2552, value1162, value1) := by
  rw [input2552_def, output2552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child2551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output2551_skip]
  kernel_rfl

theorem node2553_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value166 value1 value2 = (output203, value167, value1))
    (child2552 : Flapjack.WordAlloc.removeDeadStructural input2552 value167 value1 value2 = (output2552, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2553 value166 value1 value2 = (output2553, value1162, value1) := by
  rw [input2553_def, output2553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child2552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output2552_skip]
  kernel_rfl

theorem node2554_cond_eq
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value165 value1 value2 = (output202, value166, value1))
    (child2553 : Flapjack.WordAlloc.removeDeadStructural input2553 value166 value1 value2 = (output2553, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2554 value165 value1 value2 = (output2554, value1162, value1) := by
  rw [input2554_def, output2554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child202]
  try dsimp only
  rw [child2553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output202_skip, output2553_skip]
  kernel_rfl

theorem node2555_cond_eq
    (child201 : Flapjack.WordAlloc.removeDeadStructural input201 value164 value1 value2 = (output201, value165, value1))
    (child2554 : Flapjack.WordAlloc.removeDeadStructural input2554 value165 value1 value2 = (output2554, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2555 value164 value1 value2 = (output2555, value1162, value1) := by
  rw [input2555_def, output2555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child201]
  try dsimp only
  rw [child2554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output201_skip, output2554_skip]
  kernel_rfl

theorem node2556_cond_eq
    (child200 : Flapjack.WordAlloc.removeDeadStructural input200 value163 value1 value2 = (output200, value164, value1))
    (child2555 : Flapjack.WordAlloc.removeDeadStructural input2555 value164 value1 value2 = (output2555, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2556 value163 value1 value2 = (output2556, value1162, value1) := by
  rw [input2556_def, output2556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child200]
  try dsimp only
  rw [child2555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output200_skip, output2555_skip]
  kernel_rfl

theorem node2557_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value162 value1 value2 = (output199, value163, value1))
    (child2556 : Flapjack.WordAlloc.removeDeadStructural input2556 value163 value1 value2 = (output2556, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2557 value162 value1 value2 = (output2557, value1162, value1) := by
  rw [input2557_def, output2557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child2556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output199_skip, output2556_skip]
  kernel_rfl

theorem node2558_cond_eq
    (child198 : Flapjack.WordAlloc.removeDeadStructural input198 value161 value1 value2 = (output198, value162, value1))
    (child2557 : Flapjack.WordAlloc.removeDeadStructural input2557 value162 value1 value2 = (output2557, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2558 value161 value1 value2 = (output2558, value1162, value1) := by
  rw [input2558_def, output2558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child198]
  try dsimp only
  rw [child2557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output198_skip, output2557_skip]
  kernel_rfl

theorem node2559_cond_eq
    (child197 : Flapjack.WordAlloc.removeDeadStructural input197 value160 value1 value2 = (output197, value161, value1))
    (child2558 : Flapjack.WordAlloc.removeDeadStructural input2558 value161 value1 value2 = (output2558, value1162, value1)) : Flapjack.WordAlloc.removeDeadStructural input2559 value160 value1 value2 = (output2559, value1162, value1) := by
  rw [input2559_def, output2559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child197]
  try dsimp only
  rw [child2558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output197_skip, output2558_skip]
  kernel_rfl

#print axioms node2559_cond_eq
end InitECandidate.Proofs.DeadStages783.Parallel
