import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel240.Data2
import InitECandidate.Proofs.WordStages.Parallel240.Data3
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk009
import InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel.Chunk008

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel
theorem input2304_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2304 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1836 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2304_def]
  kernel_rfl

theorem output2304_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2304 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2304_def]
  kernel_rfl

theorem input2305_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2305 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1833 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2305_def]
  kernel_rfl

theorem output2305_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2305 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1595 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2305_def]
  kernel_rfl

theorem input2306_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2306 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1831 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2306_def]
  kernel_rfl

theorem output2306_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2306 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1593 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2306_def]
  kernel_rfl

theorem input2307_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2307 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1829 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2307_def]
  kernel_rfl

theorem output2307_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2307 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1591 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2307_def]
  kernel_rfl

theorem input2308_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2308 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1827 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2308_def]
  kernel_rfl

theorem output2308_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2308 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1589 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2308_def]
  kernel_rfl

theorem input2309_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2309 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1826 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2309_def]
  kernel_rfl

theorem output2309_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2309 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1588 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2309_def]
  kernel_rfl

theorem input2310_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2310 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1828 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2310_def]
  simp only [input2309_eq, input2308_eq]
  kernel_rfl

theorem output2310_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2310 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1590 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2310_def]
  simp only [output2309_eq, output2308_eq]
  kernel_rfl

theorem input2311_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2311 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1830 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2311_def]
  simp only [input2310_eq, input2307_eq]
  kernel_rfl

theorem output2311_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2311 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1592 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2311_def]
  simp only [output2310_eq, output2307_eq]
  kernel_rfl

theorem input2312_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2312 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1832 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2312_def]
  simp only [input2311_eq, input2306_eq]
  kernel_rfl

theorem output2312_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2312 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1594 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2312_def]
  simp only [output2311_eq, output2306_eq]
  kernel_rfl

theorem input2313_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2313 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1834 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2313_def]
  simp only [input2312_eq, input2305_eq]
  kernel_rfl

theorem output2313_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2313 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1596 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2313_def]
  simp only [output2312_eq, output2305_eq]
  kernel_rfl

theorem input2314_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2314 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1823 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2314_def]
  kernel_rfl

theorem output2314_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2314 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1585 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2314_def]
  kernel_rfl

theorem input2315_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2315 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1822 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2315_def]
  kernel_rfl

theorem output2315_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2315 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1584 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2315_def]
  kernel_rfl

theorem input2316_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2316 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1824 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2316_def]
  simp only [input2315_eq, input2314_eq]
  kernel_rfl

theorem output2316_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2316 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1586 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2316_def]
  simp only [output2315_eq, output2314_eq]
  kernel_rfl

theorem input2317_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2317 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1820 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2317_def]
  kernel_rfl

theorem output2317_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2317 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1582 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2317_def]
  kernel_rfl

theorem input2318_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2318 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1818 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2318_def]
  kernel_rfl

theorem output2318_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2318 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2318_def]
  kernel_rfl

theorem input2319_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2319 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1815 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2319_def]
  kernel_rfl

theorem output2319_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2319 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1579 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2319_def]
  kernel_rfl

theorem input2320_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2320 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1813 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2320_def]
  kernel_rfl

theorem output2320_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2320 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1577 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2320_def]
  kernel_rfl

theorem input2321_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2321 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1811 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2321_def]
  kernel_rfl

theorem output2321_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2321 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1575 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2321_def]
  kernel_rfl

theorem input2322_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2322 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1809 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2322_def]
  kernel_rfl

theorem output2322_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2322 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1573 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2322_def]
  kernel_rfl

theorem input2323_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2323 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1808 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2323_def]
  kernel_rfl

theorem output2323_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2323 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1572 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2323_def]
  kernel_rfl

theorem input2324_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2324 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1810 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2324_def]
  simp only [input2323_eq, input2322_eq]
  kernel_rfl

theorem output2324_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2324 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1574 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2324_def]
  simp only [output2323_eq, output2322_eq]
  kernel_rfl

theorem input2325_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2325 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1812 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2325_def]
  simp only [input2324_eq, input2321_eq]
  kernel_rfl

theorem output2325_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2325 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1576 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2325_def]
  simp only [output2324_eq, output2321_eq]
  kernel_rfl

theorem input2326_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2326 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1814 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2326_def]
  simp only [input2325_eq, input2320_eq]
  kernel_rfl

theorem output2326_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2326 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1578 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2326_def]
  simp only [output2325_eq, output2320_eq]
  kernel_rfl

theorem input2327_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2327 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1816 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2327_def]
  simp only [input2326_eq, input2319_eq]
  kernel_rfl

theorem output2327_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2327 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1580 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2327_def]
  simp only [output2326_eq, output2319_eq]
  kernel_rfl

theorem input2328_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2328 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1805 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2328_def]
  kernel_rfl

theorem output2328_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2328 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1569 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2328_def]
  kernel_rfl

theorem input2329_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2329 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1804 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2329_def]
  kernel_rfl

theorem output2329_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2329 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1568 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2329_def]
  kernel_rfl

theorem input2330_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2330 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1806 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2330_def]
  simp only [input2329_eq, input2328_eq]
  kernel_rfl

theorem output2330_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2330 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1570 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2330_def]
  simp only [output2329_eq, output2328_eq]
  kernel_rfl

theorem input2331_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2331 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1802 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2331_def]
  kernel_rfl

theorem output2331_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2331 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1566 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2331_def]
  kernel_rfl

theorem input2332_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2332 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1800 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2332_def]
  kernel_rfl

theorem output2332_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2332 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2332_def]
  kernel_rfl

theorem input2333_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2333 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1797 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2333_def]
  kernel_rfl

theorem output2333_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2333 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1563 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2333_def]
  kernel_rfl

theorem input2334_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2334 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1795 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2334_def]
  kernel_rfl

theorem output2334_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2334 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1561 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2334_def]
  kernel_rfl

theorem input2335_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2335 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1793 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2335_def]
  kernel_rfl

theorem output2335_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2335 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1559 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2335_def]
  kernel_rfl

theorem input2336_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2336 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1791 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2336_def]
  kernel_rfl

theorem output2336_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2336 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1557 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2336_def]
  kernel_rfl

theorem input2337_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2337 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1790 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2337_def]
  kernel_rfl

theorem output2337_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2337 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1556 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2337_def]
  kernel_rfl

theorem input2338_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2338 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1792 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2338_def]
  simp only [input2337_eq, input2336_eq]
  kernel_rfl

theorem output2338_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2338 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1558 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2338_def]
  simp only [output2337_eq, output2336_eq]
  kernel_rfl

theorem input2339_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2339 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1794 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2339_def]
  simp only [input2338_eq, input2335_eq]
  kernel_rfl

theorem output2339_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2339 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1560 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2339_def]
  simp only [output2338_eq, output2335_eq]
  kernel_rfl

theorem input2340_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2340 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1796 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2340_def]
  simp only [input2339_eq, input2334_eq]
  kernel_rfl

theorem output2340_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2340 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1562 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2340_def]
  simp only [output2339_eq, output2334_eq]
  kernel_rfl

theorem input2341_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2341 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1798 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2341_def]
  simp only [input2340_eq, input2333_eq]
  kernel_rfl

theorem output2341_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2341 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1564 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2341_def]
  simp only [output2340_eq, output2333_eq]
  kernel_rfl

theorem input2342_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2342 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1787 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2342_def]
  kernel_rfl

theorem output2342_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2342 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1553 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2342_def]
  kernel_rfl

theorem input2343_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2343 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1786 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2343_def]
  kernel_rfl

theorem output2343_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2343 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1552 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2343_def]
  kernel_rfl

theorem input2344_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2344 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1788 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2344_def]
  simp only [input2343_eq, input2342_eq]
  kernel_rfl

theorem output2344_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2344 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1554 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2344_def]
  simp only [output2343_eq, output2342_eq]
  kernel_rfl

theorem input2345_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2345 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1784 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2345_def]
  kernel_rfl

theorem output2345_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2345 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1550 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2345_def]
  kernel_rfl

theorem input2346_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2346 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1782 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2346_def]
  kernel_rfl

theorem output2346_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2346 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2346_def]
  kernel_rfl

theorem input2347_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2347 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1779 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2347_def]
  kernel_rfl

theorem output2347_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2347 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1547 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2347_def]
  kernel_rfl

theorem input2348_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2348 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1777 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2348_def]
  kernel_rfl

theorem output2348_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2348 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1545 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2348_def]
  kernel_rfl

theorem input2349_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2349 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1775 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2349_def]
  kernel_rfl

theorem output2349_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2349 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1543 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2349_def]
  kernel_rfl

theorem input2350_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2350 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1773 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2350_def]
  kernel_rfl

theorem output2350_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2350 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1541 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2350_def]
  kernel_rfl

theorem input2351_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2351 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1772 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2351_def]
  kernel_rfl

theorem output2351_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2351 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1540 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2351_def]
  kernel_rfl

theorem input2352_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2352 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1774 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2352_def]
  simp only [input2351_eq, input2350_eq]
  kernel_rfl

theorem output2352_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2352 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1542 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2352_def]
  simp only [output2351_eq, output2350_eq]
  kernel_rfl

theorem input2353_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2353 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1776 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2353_def]
  simp only [input2352_eq, input2349_eq]
  kernel_rfl

theorem output2353_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2353 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1544 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2353_def]
  simp only [output2352_eq, output2349_eq]
  kernel_rfl

theorem input2354_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2354 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1778 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2354_def]
  simp only [input2353_eq, input2348_eq]
  kernel_rfl

theorem output2354_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2354 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1546 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2354_def]
  simp only [output2353_eq, output2348_eq]
  kernel_rfl

theorem input2355_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2355 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1780 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2355_def]
  simp only [input2354_eq, input2347_eq]
  kernel_rfl

theorem output2355_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2355 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1548 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2355_def]
  simp only [output2354_eq, output2347_eq]
  kernel_rfl

theorem input2356_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2356 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1769 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2356_def]
  kernel_rfl

theorem output2356_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2356 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1537 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2356_def]
  kernel_rfl

theorem input2357_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2357 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1768 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2357_def]
  kernel_rfl

theorem output2357_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2357 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1536 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2357_def]
  kernel_rfl

theorem input2358_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2358 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1770 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2358_def]
  simp only [input2357_eq, input2356_eq]
  kernel_rfl

theorem output2358_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2358 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1538 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2358_def]
  simp only [output2357_eq, output2356_eq]
  kernel_rfl

theorem input2359_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2359 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1766 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2359_def]
  kernel_rfl

theorem output2359_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2359 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1534 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2359_def]
  kernel_rfl

theorem input2360_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2360 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1764 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2360_def]
  kernel_rfl

theorem output2360_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2360 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2360_def]
  kernel_rfl

theorem input2361_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2361 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1761 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2361_def]
  kernel_rfl

theorem output2361_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2361 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1531 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2361_def]
  kernel_rfl

theorem input2362_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2362 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1759 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2362_def]
  kernel_rfl

theorem output2362_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2362 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1529 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2362_def]
  kernel_rfl

theorem input2363_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2363 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1757 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2363_def]
  kernel_rfl

theorem output2363_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2363 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1527 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2363_def]
  kernel_rfl

theorem input2364_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2364 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1755 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2364_def]
  kernel_rfl

theorem output2364_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2364 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1525 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2364_def]
  kernel_rfl

theorem input2365_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2365 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1754 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2365_def]
  kernel_rfl

theorem output2365_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2365 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1524 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2365_def]
  kernel_rfl

theorem input2366_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2366 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1756 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2366_def]
  simp only [input2365_eq, input2364_eq]
  kernel_rfl

theorem output2366_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2366 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1526 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2366_def]
  simp only [output2365_eq, output2364_eq]
  kernel_rfl

theorem input2367_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2367 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1758 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2367_def]
  simp only [input2366_eq, input2363_eq]
  kernel_rfl

theorem output2367_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2367 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1528 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2367_def]
  simp only [output2366_eq, output2363_eq]
  kernel_rfl

theorem input2368_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2368 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1760 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2368_def]
  simp only [input2367_eq, input2362_eq]
  kernel_rfl

theorem output2368_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2368 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1530 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2368_def]
  simp only [output2367_eq, output2362_eq]
  kernel_rfl

theorem input2369_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2369 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1762 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2369_def]
  simp only [input2368_eq, input2361_eq]
  kernel_rfl

theorem output2369_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2369 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1532 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2369_def]
  simp only [output2368_eq, output2361_eq]
  kernel_rfl

theorem input2370_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2370 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1751 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2370_def]
  kernel_rfl

theorem output2370_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2370 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1521 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2370_def]
  kernel_rfl

theorem input2371_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2371 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1750 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2371_def]
  kernel_rfl

theorem output2371_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2371 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1520 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2371_def]
  kernel_rfl

theorem input2372_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2372 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1752 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2372_def]
  simp only [input2371_eq, input2370_eq]
  kernel_rfl

theorem output2372_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2372 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1522 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2372_def]
  simp only [output2371_eq, output2370_eq]
  kernel_rfl

theorem input2373_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2373 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1748 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2373_def]
  kernel_rfl

theorem output2373_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2373 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1518 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2373_def]
  kernel_rfl

theorem input2374_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2374 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1746 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2374_def]
  kernel_rfl

theorem output2374_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2374 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2374_def]
  kernel_rfl

theorem input2375_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2375 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1743 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2375_def]
  kernel_rfl

theorem output2375_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2375 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1515 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2375_def]
  kernel_rfl

theorem input2376_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2376 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1741 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2376_def]
  kernel_rfl

theorem output2376_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2376 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1513 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2376_def]
  kernel_rfl

theorem input2377_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2377 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1739 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2377_def]
  kernel_rfl

theorem output2377_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2377 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1511 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2377_def]
  kernel_rfl

theorem input2378_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2378 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1737 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2378_def]
  kernel_rfl

theorem output2378_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2378 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1509 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2378_def]
  kernel_rfl

theorem input2379_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2379 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1736 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2379_def]
  kernel_rfl

theorem output2379_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2379 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1508 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2379_def]
  kernel_rfl

theorem input2380_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2380 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1738 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2380_def]
  simp only [input2379_eq, input2378_eq]
  kernel_rfl

theorem output2380_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2380 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1510 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2380_def]
  simp only [output2379_eq, output2378_eq]
  kernel_rfl

theorem input2381_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2381 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1740 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2381_def]
  simp only [input2380_eq, input2377_eq]
  kernel_rfl

theorem output2381_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2381 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1512 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2381_def]
  simp only [output2380_eq, output2377_eq]
  kernel_rfl

theorem input2382_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2382 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1742 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2382_def]
  simp only [input2381_eq, input2376_eq]
  kernel_rfl

theorem output2382_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2382 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1514 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2382_def]
  simp only [output2381_eq, output2376_eq]
  kernel_rfl

theorem input2383_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2383 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1744 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2383_def]
  simp only [input2382_eq, input2375_eq]
  kernel_rfl

theorem output2383_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2383 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1516 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2383_def]
  simp only [output2382_eq, output2375_eq]
  kernel_rfl

theorem input2384_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2384 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1733 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2384_def]
  kernel_rfl

theorem output2384_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2384 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1505 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2384_def]
  kernel_rfl

theorem input2385_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2385 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1732 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2385_def]
  kernel_rfl

theorem output2385_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2385 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1504 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2385_def]
  kernel_rfl

theorem input2386_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2386 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1734 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2386_def]
  simp only [input2385_eq, input2384_eq]
  kernel_rfl

theorem output2386_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2386 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1506 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2386_def]
  simp only [output2385_eq, output2384_eq]
  kernel_rfl

theorem input2387_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2387 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1730 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2387_def]
  kernel_rfl

theorem output2387_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2387 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1502 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2387_def]
  kernel_rfl

theorem input2388_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2388 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1728 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2388_def]
  kernel_rfl

theorem output2388_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2388 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2388_def]
  kernel_rfl

theorem input2389_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2389 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1725 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2389_def]
  kernel_rfl

theorem output2389_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2389 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1499 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2389_def]
  kernel_rfl

theorem input2390_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2390 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1723 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2390_def]
  kernel_rfl

theorem output2390_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2390 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1497 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2390_def]
  kernel_rfl

theorem input2391_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2391 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1721 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2391_def]
  kernel_rfl

theorem output2391_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2391 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1495 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2391_def]
  kernel_rfl

theorem input2392_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2392 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1719 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2392_def]
  kernel_rfl

theorem output2392_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2392 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1493 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2392_def]
  kernel_rfl

theorem input2393_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2393 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1718 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2393_def]
  kernel_rfl

theorem output2393_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2393 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1492 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2393_def]
  kernel_rfl

theorem input2394_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2394 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1720 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2394_def]
  simp only [input2393_eq, input2392_eq]
  kernel_rfl

theorem output2394_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2394 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1494 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2394_def]
  simp only [output2393_eq, output2392_eq]
  kernel_rfl

theorem input2395_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2395 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1722 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2395_def]
  simp only [input2394_eq, input2391_eq]
  kernel_rfl

theorem output2395_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2395 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1496 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2395_def]
  simp only [output2394_eq, output2391_eq]
  kernel_rfl

theorem input2396_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2396 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1724 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2396_def]
  simp only [input2395_eq, input2390_eq]
  kernel_rfl

theorem output2396_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2396 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1498 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2396_def]
  simp only [output2395_eq, output2390_eq]
  kernel_rfl

theorem input2397_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2397 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1726 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2397_def]
  simp only [input2396_eq, input2389_eq]
  kernel_rfl

theorem output2397_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2397 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1500 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2397_def]
  simp only [output2396_eq, output2389_eq]
  kernel_rfl

theorem input2398_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2398 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1715 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2398_def]
  kernel_rfl

theorem output2398_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2398 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1489 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2398_def]
  kernel_rfl

theorem input2399_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2399 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1714 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2399_def]
  kernel_rfl

theorem output2399_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2399 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1488 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2399_def]
  kernel_rfl

theorem input2400_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2400 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1716 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2400_def]
  simp only [input2399_eq, input2398_eq]
  kernel_rfl

theorem output2400_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2400 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1490 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2400_def]
  simp only [output2399_eq, output2398_eq]
  kernel_rfl

theorem input2401_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2401 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1712 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2401_def]
  kernel_rfl

theorem output2401_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2401 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1486 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2401_def]
  kernel_rfl

theorem input2402_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2402 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1710 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2402_def]
  kernel_rfl

theorem output2402_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2402 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2402_def]
  kernel_rfl

theorem input2403_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2403 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1707 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2403_def]
  kernel_rfl

theorem output2403_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2403 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1483 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2403_def]
  kernel_rfl

theorem input2404_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2404 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1705 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2404_def]
  kernel_rfl

theorem output2404_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2404 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1481 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2404_def]
  kernel_rfl

theorem input2405_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2405 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1703 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2405_def]
  kernel_rfl

theorem output2405_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2405 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1479 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2405_def]
  kernel_rfl

theorem input2406_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2406 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1701 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2406_def]
  kernel_rfl

theorem output2406_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2406 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1477 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2406_def]
  kernel_rfl

theorem input2407_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2407 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1700 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2407_def]
  kernel_rfl

theorem output2407_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2407 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1476 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2407_def]
  kernel_rfl

theorem input2408_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2408 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1702 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2408_def]
  simp only [input2407_eq, input2406_eq]
  kernel_rfl

theorem output2408_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2408 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1478 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2408_def]
  simp only [output2407_eq, output2406_eq]
  kernel_rfl

theorem input2409_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2409 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1704 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2409_def]
  simp only [input2408_eq, input2405_eq]
  kernel_rfl

theorem output2409_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2409 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1480 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2409_def]
  simp only [output2408_eq, output2405_eq]
  kernel_rfl

theorem input2410_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2410 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1706 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2410_def]
  simp only [input2409_eq, input2404_eq]
  kernel_rfl

theorem output2410_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2410 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1482 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2410_def]
  simp only [output2409_eq, output2404_eq]
  kernel_rfl

theorem input2411_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2411 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1708 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2411_def]
  simp only [input2410_eq, input2403_eq]
  kernel_rfl

theorem output2411_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2411 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1484 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2411_def]
  simp only [output2410_eq, output2403_eq]
  kernel_rfl

theorem input2412_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2412 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1697 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2412_def]
  kernel_rfl

theorem output2412_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2412 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1473 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2412_def]
  kernel_rfl

theorem input2413_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2413 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1696 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2413_def]
  kernel_rfl

theorem output2413_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2413 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1472 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2413_def]
  kernel_rfl

theorem input2414_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2414 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1698 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2414_def]
  simp only [input2413_eq, input2412_eq]
  kernel_rfl

theorem output2414_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2414 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1474 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2414_def]
  simp only [output2413_eq, output2412_eq]
  kernel_rfl

theorem input2415_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2415 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1694 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2415_def]
  kernel_rfl

theorem output2415_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2415 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1470 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2415_def]
  kernel_rfl

theorem input2416_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2416 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1692 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2416_def]
  kernel_rfl

theorem output2416_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2416 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2416_def]
  kernel_rfl

theorem input2417_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2417 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1689 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2417_def]
  kernel_rfl

theorem output2417_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2417 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1467 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2417_def]
  kernel_rfl

theorem input2418_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2418 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1687 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2418_def]
  kernel_rfl

theorem output2418_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2418 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1465 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2418_def]
  kernel_rfl

theorem input2419_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2419 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1685 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2419_def]
  kernel_rfl

theorem output2419_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2419 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1463 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2419_def]
  kernel_rfl

theorem input2420_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2420 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1683 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2420_def]
  kernel_rfl

theorem output2420_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2420 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1461 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2420_def]
  kernel_rfl

theorem input2421_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2421 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1682 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2421_def]
  kernel_rfl

theorem output2421_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2421 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1460 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2421_def]
  kernel_rfl

theorem input2422_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2422 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1684 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2422_def]
  simp only [input2421_eq, input2420_eq]
  kernel_rfl

theorem output2422_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2422 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1462 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2422_def]
  simp only [output2421_eq, output2420_eq]
  kernel_rfl

theorem input2423_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2423 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1686 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2423_def]
  simp only [input2422_eq, input2419_eq]
  kernel_rfl

theorem output2423_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2423 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1464 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2423_def]
  simp only [output2422_eq, output2419_eq]
  kernel_rfl

theorem input2424_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2424 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1688 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2424_def]
  simp only [input2423_eq, input2418_eq]
  kernel_rfl

theorem output2424_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2424 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1466 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2424_def]
  simp only [output2423_eq, output2418_eq]
  kernel_rfl

theorem input2425_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2425 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1690 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2425_def]
  simp only [input2424_eq, input2417_eq]
  kernel_rfl

theorem output2425_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2425 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1468 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2425_def]
  simp only [output2424_eq, output2417_eq]
  kernel_rfl

theorem input2426_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2426 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1679 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2426_def]
  kernel_rfl

theorem output2426_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2426 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1457 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2426_def]
  kernel_rfl

theorem input2427_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2427 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1678 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2427_def]
  kernel_rfl

theorem output2427_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2427 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1456 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2427_def]
  kernel_rfl

theorem input2428_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2428 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1680 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2428_def]
  simp only [input2427_eq, input2426_eq]
  kernel_rfl

theorem output2428_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2428 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1458 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2428_def]
  simp only [output2427_eq, output2426_eq]
  kernel_rfl

theorem input2429_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2429 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1676 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2429_def]
  kernel_rfl

theorem output2429_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2429 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1454 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2429_def]
  kernel_rfl

theorem input2430_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2430 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1674 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2430_def]
  kernel_rfl

theorem output2430_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2430 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2430_def]
  kernel_rfl

theorem input2431_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2431 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1671 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2431_def]
  kernel_rfl

theorem output2431_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2431 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1451 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2431_def]
  kernel_rfl

theorem input2432_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2432 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1669 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2432_def]
  kernel_rfl

theorem output2432_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2432 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1449 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2432_def]
  kernel_rfl

theorem input2433_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2433 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1667 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2433_def]
  kernel_rfl

theorem output2433_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2433 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1447 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2433_def]
  kernel_rfl

theorem input2434_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2434 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1665 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2434_def]
  kernel_rfl

theorem output2434_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2434 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1445 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2434_def]
  kernel_rfl

theorem input2435_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2435 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1664 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2435_def]
  kernel_rfl

theorem output2435_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2435 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1444 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2435_def]
  kernel_rfl

theorem input2436_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2436 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1666 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2436_def]
  simp only [input2435_eq, input2434_eq]
  kernel_rfl

theorem output2436_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2436 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1446 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2436_def]
  simp only [output2435_eq, output2434_eq]
  kernel_rfl

theorem input2437_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2437 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1668 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2437_def]
  simp only [input2436_eq, input2433_eq]
  kernel_rfl

theorem output2437_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2437 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1448 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2437_def]
  simp only [output2436_eq, output2433_eq]
  kernel_rfl

theorem input2438_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2438 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1670 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2438_def]
  simp only [input2437_eq, input2432_eq]
  kernel_rfl

theorem output2438_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2438 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1450 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2438_def]
  simp only [output2437_eq, output2432_eq]
  kernel_rfl

theorem input2439_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2439 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1672 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2439_def]
  simp only [input2438_eq, input2431_eq]
  kernel_rfl

theorem output2439_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2439 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1452 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2439_def]
  simp only [output2438_eq, output2431_eq]
  kernel_rfl

theorem input2440_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2440 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1661 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2440_def]
  kernel_rfl

theorem output2440_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2440 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1441 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2440_def]
  kernel_rfl

theorem input2441_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2441 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1660 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2441_def]
  kernel_rfl

theorem output2441_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2441 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1440 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2441_def]
  kernel_rfl

theorem input2442_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2442 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1662 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2442_def]
  simp only [input2441_eq, input2440_eq]
  kernel_rfl

theorem output2442_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2442 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1442 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2442_def]
  simp only [output2441_eq, output2440_eq]
  kernel_rfl

theorem input2443_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2443 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1658 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2443_def]
  kernel_rfl

theorem output2443_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2443 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1438 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2443_def]
  kernel_rfl

theorem input2444_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2444 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1656 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2444_def]
  kernel_rfl

theorem output2444_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2444 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2444_def]
  kernel_rfl

theorem input2445_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2445 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1653 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2445_def]
  kernel_rfl

theorem output2445_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2445 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1435 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2445_def]
  kernel_rfl

theorem input2446_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2446 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1651 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2446_def]
  kernel_rfl

theorem output2446_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2446 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1433 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2446_def]
  kernel_rfl

theorem input2447_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2447 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1649 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2447_def]
  kernel_rfl

theorem output2447_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2447 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1431 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2447_def]
  kernel_rfl

theorem input2448_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2448 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1647 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2448_def]
  kernel_rfl

theorem output2448_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2448 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1429 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2448_def]
  kernel_rfl

theorem input2449_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2449 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1646 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2449_def]
  kernel_rfl

theorem output2449_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2449 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1428 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2449_def]
  kernel_rfl

theorem input2450_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2450 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1648 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2450_def]
  simp only [input2449_eq, input2448_eq]
  kernel_rfl

theorem output2450_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2450 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1430 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2450_def]
  simp only [output2449_eq, output2448_eq]
  kernel_rfl

theorem input2451_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2451 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1650 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2451_def]
  simp only [input2450_eq, input2447_eq]
  kernel_rfl

theorem output2451_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2451 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1432 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2451_def]
  simp only [output2450_eq, output2447_eq]
  kernel_rfl

theorem input2452_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2452 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1652 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2452_def]
  simp only [input2451_eq, input2446_eq]
  kernel_rfl

theorem output2452_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2452 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1434 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2452_def]
  simp only [output2451_eq, output2446_eq]
  kernel_rfl

theorem input2453_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2453 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1654 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2453_def]
  simp only [input2452_eq, input2445_eq]
  kernel_rfl

theorem output2453_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2453 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1436 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2453_def]
  simp only [output2452_eq, output2445_eq]
  kernel_rfl

theorem input2454_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2454 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1643 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2454_def]
  kernel_rfl

theorem output2454_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2454 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1425 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2454_def]
  kernel_rfl

theorem input2455_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2455 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1642 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2455_def]
  kernel_rfl

theorem output2455_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2455 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1424 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2455_def]
  kernel_rfl

theorem input2456_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2456 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1644 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2456_def]
  simp only [input2455_eq, input2454_eq]
  kernel_rfl

theorem output2456_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2456 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1426 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2456_def]
  simp only [output2455_eq, output2454_eq]
  kernel_rfl

theorem input2457_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2457 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1640 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2457_def]
  kernel_rfl

theorem output2457_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2457 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1422 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2457_def]
  kernel_rfl

theorem input2458_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2458 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1638 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2458_def]
  kernel_rfl

theorem output2458_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2458 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2458_def]
  kernel_rfl

theorem input2459_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2459 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1635 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2459_def]
  kernel_rfl

theorem output2459_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2459 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1419 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2459_def]
  kernel_rfl

theorem input2460_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2460 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1633 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2460_def]
  kernel_rfl

theorem output2460_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2460 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1417 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2460_def]
  kernel_rfl

theorem input2461_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2461 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1631 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2461_def]
  kernel_rfl

theorem output2461_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2461 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1415 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2461_def]
  kernel_rfl

theorem input2462_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2462 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1629 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2462_def]
  kernel_rfl

theorem output2462_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2462 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1413 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2462_def]
  kernel_rfl

theorem input2463_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2463 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1628 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2463_def]
  kernel_rfl

theorem output2463_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2463 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1412 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2463_def]
  kernel_rfl

theorem input2464_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2464 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1630 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2464_def]
  simp only [input2463_eq, input2462_eq]
  kernel_rfl

theorem output2464_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2464 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1414 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2464_def]
  simp only [output2463_eq, output2462_eq]
  kernel_rfl

theorem input2465_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2465 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1632 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2465_def]
  simp only [input2464_eq, input2461_eq]
  kernel_rfl

theorem output2465_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2465 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1416 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2465_def]
  simp only [output2464_eq, output2461_eq]
  kernel_rfl

theorem input2466_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2466 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1634 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2466_def]
  simp only [input2465_eq, input2460_eq]
  kernel_rfl

theorem output2466_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2466 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1418 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2466_def]
  simp only [output2465_eq, output2460_eq]
  kernel_rfl

theorem input2467_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2467 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1636 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2467_def]
  simp only [input2466_eq, input2459_eq]
  kernel_rfl

theorem output2467_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2467 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1420 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2467_def]
  simp only [output2466_eq, output2459_eq]
  kernel_rfl

theorem input2468_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2468 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1625 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2468_def]
  kernel_rfl

theorem output2468_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2468 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1409 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2468_def]
  kernel_rfl

theorem input2469_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2469 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1624 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2469_def]
  kernel_rfl

theorem output2469_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2469 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1408 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2469_def]
  kernel_rfl

theorem input2470_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2470 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1626 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2470_def]
  simp only [input2469_eq, input2468_eq]
  kernel_rfl

theorem output2470_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2470 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1410 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2470_def]
  simp only [output2469_eq, output2468_eq]
  kernel_rfl

theorem input2471_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2471 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1622 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2471_def]
  kernel_rfl

theorem output2471_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2471 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1406 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2471_def]
  kernel_rfl

theorem input2472_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2472 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1620 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2472_def]
  kernel_rfl

theorem output2472_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2472 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2472_def]
  kernel_rfl

theorem input2473_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2473 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1617 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2473_def]
  kernel_rfl

theorem output2473_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2473 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1403 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2473_def]
  kernel_rfl

theorem input2474_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2474 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1615 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2474_def]
  kernel_rfl

theorem output2474_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2474 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1401 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2474_def]
  kernel_rfl

theorem input2475_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2475 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1613 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2475_def]
  kernel_rfl

theorem output2475_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2475 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1399 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2475_def]
  kernel_rfl

theorem input2476_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2476 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1611 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2476_def]
  kernel_rfl

theorem output2476_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2476 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1397 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2476_def]
  kernel_rfl

theorem input2477_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2477 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1610 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2477_def]
  kernel_rfl

theorem output2477_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2477 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1396 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2477_def]
  kernel_rfl

theorem input2478_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2478 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1612 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2478_def]
  simp only [input2477_eq, input2476_eq]
  kernel_rfl

theorem output2478_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2478 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1398 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2478_def]
  simp only [output2477_eq, output2476_eq]
  kernel_rfl

theorem input2479_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2479 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1614 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2479_def]
  simp only [input2478_eq, input2475_eq]
  kernel_rfl

theorem output2479_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2479 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1400 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2479_def]
  simp only [output2478_eq, output2475_eq]
  kernel_rfl

theorem input2480_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2480 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1616 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2480_def]
  simp only [input2479_eq, input2474_eq]
  kernel_rfl

theorem output2480_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2480 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1402 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2480_def]
  simp only [output2479_eq, output2474_eq]
  kernel_rfl

theorem input2481_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2481 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1618 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2481_def]
  simp only [input2480_eq, input2473_eq]
  kernel_rfl

theorem output2481_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2481 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1404 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2481_def]
  simp only [output2480_eq, output2473_eq]
  kernel_rfl

theorem input2482_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2482 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1607 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2482_def]
  kernel_rfl

theorem output2482_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2482 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1393 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2482_def]
  kernel_rfl

theorem input2483_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2483 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1606 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2483_def]
  kernel_rfl

theorem output2483_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2483 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1392 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2483_def]
  kernel_rfl

theorem input2484_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2484 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1608 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2484_def]
  simp only [input2483_eq, input2482_eq]
  kernel_rfl

theorem output2484_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2484 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1394 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2484_def]
  simp only [output2483_eq, output2482_eq]
  kernel_rfl

theorem input2485_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2485 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1604 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2485_def]
  kernel_rfl

theorem output2485_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2485 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1390 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2485_def]
  kernel_rfl

theorem input2486_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2486 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1602 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2486_def]
  kernel_rfl

theorem output2486_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2486 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2486_def]
  kernel_rfl

theorem input2487_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2487 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1599 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2487_def]
  kernel_rfl

theorem output2487_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2487 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1387 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2487_def]
  kernel_rfl

theorem input2488_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2488 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1597 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2488_def]
  kernel_rfl

theorem output2488_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2488 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1385 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2488_def]
  kernel_rfl

theorem input2489_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2489 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1595 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2489_def]
  kernel_rfl

theorem output2489_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2489 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1383 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2489_def]
  kernel_rfl

theorem input2490_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2490 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1593 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2490_def]
  kernel_rfl

theorem output2490_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2490 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1381 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2490_def]
  kernel_rfl

theorem input2491_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2491 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1592 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2491_def]
  kernel_rfl

theorem output2491_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2491 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1380 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2491_def]
  kernel_rfl

theorem input2492_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2492 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1594 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2492_def]
  simp only [input2491_eq, input2490_eq]
  kernel_rfl

theorem output2492_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2492 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1382 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2492_def]
  simp only [output2491_eq, output2490_eq]
  kernel_rfl

theorem input2493_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2493 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1596 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2493_def]
  simp only [input2492_eq, input2489_eq]
  kernel_rfl

theorem output2493_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2493 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1384 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2493_def]
  simp only [output2492_eq, output2489_eq]
  kernel_rfl

theorem input2494_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2494 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1598 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2494_def]
  simp only [input2493_eq, input2488_eq]
  kernel_rfl

theorem output2494_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2494 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1386 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2494_def]
  simp only [output2493_eq, output2488_eq]
  kernel_rfl

theorem input2495_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2495 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1600 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2495_def]
  simp only [input2494_eq, input2487_eq]
  kernel_rfl

theorem output2495_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2495 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1388 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2495_def]
  simp only [output2494_eq, output2487_eq]
  kernel_rfl

theorem input2496_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2496 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1589 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2496_def]
  kernel_rfl

theorem output2496_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2496 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1377 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2496_def]
  kernel_rfl

theorem input2497_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2497 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1588 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2497_def]
  kernel_rfl

theorem output2497_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2497 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1376 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2497_def]
  kernel_rfl

theorem input2498_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2498 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1590 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2498_def]
  simp only [input2497_eq, input2496_eq]
  kernel_rfl

theorem output2498_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2498 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1378 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2498_def]
  simp only [output2497_eq, output2496_eq]
  kernel_rfl

theorem input2499_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2499 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1586 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2499_def]
  kernel_rfl

theorem output2499_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2499 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1374 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2499_def]
  kernel_rfl

theorem input2500_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2500 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1584 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2500_def]
  kernel_rfl

theorem output2500_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2500 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2500_def]
  kernel_rfl

theorem input2501_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2501 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1581 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2501_def]
  kernel_rfl

theorem output2501_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2501 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1371 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2501_def]
  kernel_rfl

theorem input2502_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2502 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1579 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2502_def]
  kernel_rfl

theorem output2502_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2502 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1369 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2502_def]
  kernel_rfl

theorem input2503_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2503 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1577 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2503_def]
  kernel_rfl

theorem output2503_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2503 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1367 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2503_def]
  kernel_rfl

theorem input2504_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2504 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1575 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2504_def]
  kernel_rfl

theorem output2504_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2504 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1365 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2504_def]
  kernel_rfl

theorem input2505_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2505 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1574 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2505_def]
  kernel_rfl

theorem output2505_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2505 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1364 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2505_def]
  kernel_rfl

theorem input2506_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2506 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1576 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2506_def]
  simp only [input2505_eq, input2504_eq]
  kernel_rfl

theorem output2506_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2506 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1366 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2506_def]
  simp only [output2505_eq, output2504_eq]
  kernel_rfl

theorem input2507_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2507 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1578 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2507_def]
  simp only [input2506_eq, input2503_eq]
  kernel_rfl

theorem output2507_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2507 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1368 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2507_def]
  simp only [output2506_eq, output2503_eq]
  kernel_rfl

theorem input2508_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2508 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1580 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2508_def]
  simp only [input2507_eq, input2502_eq]
  kernel_rfl

theorem output2508_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2508 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1370 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2508_def]
  simp only [output2507_eq, output2502_eq]
  kernel_rfl

theorem input2509_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2509 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1582 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2509_def]
  simp only [input2508_eq, input2501_eq]
  kernel_rfl

theorem output2509_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2509 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1372 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2509_def]
  simp only [output2508_eq, output2501_eq]
  kernel_rfl

theorem input2510_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2510 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1571 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2510_def]
  kernel_rfl

theorem output2510_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2510 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1361 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2510_def]
  kernel_rfl

theorem input2511_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2511 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1570 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2511_def]
  kernel_rfl

theorem output2511_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2511 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1360 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2511_def]
  kernel_rfl

theorem input2512_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2512 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1572 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2512_def]
  simp only [input2511_eq, input2510_eq]
  kernel_rfl

theorem output2512_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2512 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1362 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2512_def]
  simp only [output2511_eq, output2510_eq]
  kernel_rfl

theorem input2513_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2513 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1568 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2513_def]
  kernel_rfl

theorem output2513_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2513 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1358 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2513_def]
  kernel_rfl

theorem input2514_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2514 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1566 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2514_def]
  kernel_rfl

theorem output2514_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2514 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2514_def]
  kernel_rfl

theorem input2515_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2515 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1563 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2515_def]
  kernel_rfl

theorem output2515_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2515 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1355 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2515_def]
  kernel_rfl

theorem input2516_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2516 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1561 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2516_def]
  kernel_rfl

theorem output2516_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2516 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1353 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2516_def]
  kernel_rfl

theorem input2517_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2517 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1559 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2517_def]
  kernel_rfl

theorem output2517_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2517 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1351 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2517_def]
  kernel_rfl

theorem input2518_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2518 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1557 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2518_def]
  kernel_rfl

theorem output2518_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2518 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1349 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2518_def]
  kernel_rfl

theorem input2519_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2519 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1556 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2519_def]
  kernel_rfl

theorem output2519_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2519 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1348 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2519_def]
  kernel_rfl

theorem input2520_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2520 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1558 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2520_def]
  simp only [input2519_eq, input2518_eq]
  kernel_rfl

theorem output2520_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2520 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1350 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2520_def]
  simp only [output2519_eq, output2518_eq]
  kernel_rfl

theorem input2521_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2521 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1560 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2521_def]
  simp only [input2520_eq, input2517_eq]
  kernel_rfl

theorem output2521_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2521 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1352 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2521_def]
  simp only [output2520_eq, output2517_eq]
  kernel_rfl

theorem input2522_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2522 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1562 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2522_def]
  simp only [input2521_eq, input2516_eq]
  kernel_rfl

theorem output2522_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2522 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1354 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2522_def]
  simp only [output2521_eq, output2516_eq]
  kernel_rfl

theorem input2523_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2523 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1564 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2523_def]
  simp only [input2522_eq, input2515_eq]
  kernel_rfl

theorem output2523_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2523 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1356 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2523_def]
  simp only [output2522_eq, output2515_eq]
  kernel_rfl

theorem input2524_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2524 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1553 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2524_def]
  kernel_rfl

theorem output2524_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2524 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1345 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2524_def]
  kernel_rfl

theorem input2525_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2525 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1552 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2525_def]
  kernel_rfl

theorem output2525_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2525 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1344 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2525_def]
  kernel_rfl

theorem input2526_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2526 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1554 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2526_def]
  simp only [input2525_eq, input2524_eq]
  kernel_rfl

theorem output2526_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2526 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1346 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2526_def]
  simp only [output2525_eq, output2524_eq]
  kernel_rfl

theorem input2527_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2527 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1550 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2527_def]
  kernel_rfl

theorem output2527_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2527 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1342 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2527_def]
  kernel_rfl

theorem input2528_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2528 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1548 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2528_def]
  kernel_rfl

theorem output2528_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2528 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2528_def]
  kernel_rfl

theorem input2529_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2529 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1545 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2529_def]
  kernel_rfl

theorem output2529_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2529 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1339 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2529_def]
  kernel_rfl

theorem input2530_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2530 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1543 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2530_def]
  kernel_rfl

theorem output2530_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2530 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1337 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2530_def]
  kernel_rfl

theorem input2531_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2531 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1541 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2531_def]
  kernel_rfl

theorem output2531_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2531 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1335 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2531_def]
  kernel_rfl

theorem input2532_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2532 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1539 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2532_def]
  kernel_rfl

theorem output2532_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2532 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1333 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2532_def]
  kernel_rfl

theorem input2533_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2533 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1538 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2533_def]
  kernel_rfl

theorem output2533_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2533 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1332 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2533_def]
  kernel_rfl

theorem input2534_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2534 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1540 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2534_def]
  simp only [input2533_eq, input2532_eq]
  kernel_rfl

theorem output2534_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2534 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1334 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2534_def]
  simp only [output2533_eq, output2532_eq]
  kernel_rfl

theorem input2535_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2535 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1542 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2535_def]
  simp only [input2534_eq, input2531_eq]
  kernel_rfl

theorem output2535_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2535 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1336 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2535_def]
  simp only [output2534_eq, output2531_eq]
  kernel_rfl

theorem input2536_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2536 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1544 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2536_def]
  simp only [input2535_eq, input2530_eq]
  kernel_rfl

theorem output2536_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2536 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1338 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2536_def]
  simp only [output2535_eq, output2530_eq]
  kernel_rfl

theorem input2537_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2537 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1546 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2537_def]
  simp only [input2536_eq, input2529_eq]
  kernel_rfl

theorem output2537_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2537 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1340 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2537_def]
  simp only [output2536_eq, output2529_eq]
  kernel_rfl

theorem input2538_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2538 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1535 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2538_def]
  kernel_rfl

theorem output2538_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2538 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1329 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2538_def]
  kernel_rfl

theorem input2539_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2539 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1534 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2539_def]
  kernel_rfl

theorem output2539_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2539 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1328 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2539_def]
  kernel_rfl

theorem input2540_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2540 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1536 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2540_def]
  simp only [input2539_eq, input2538_eq]
  kernel_rfl

theorem output2540_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2540 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1330 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2540_def]
  simp only [output2539_eq, output2538_eq]
  kernel_rfl

theorem input2541_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2541 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1532 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2541_def]
  kernel_rfl

theorem output2541_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2541 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1326 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2541_def]
  kernel_rfl

theorem input2542_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2542 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1530 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2542_def]
  kernel_rfl

theorem output2542_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2542 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2542_def]
  kernel_rfl

theorem input2543_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2543 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1527 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2543_def]
  kernel_rfl

theorem output2543_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2543 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1323 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2543_def]
  kernel_rfl

theorem input2544_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2544 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1525 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2544_def]
  kernel_rfl

theorem output2544_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2544 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1321 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2544_def]
  kernel_rfl

theorem input2545_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2545 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1523 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2545_def]
  kernel_rfl

theorem output2545_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2545 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1319 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2545_def]
  kernel_rfl

theorem input2546_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2546 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1521 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2546_def]
  kernel_rfl

theorem output2546_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2546 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1317 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2546_def]
  kernel_rfl

theorem input2547_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2547 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1520 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2547_def]
  kernel_rfl

theorem output2547_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2547 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1316 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2547_def]
  kernel_rfl

theorem input2548_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2548 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1522 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2548_def]
  simp only [input2547_eq, input2546_eq]
  kernel_rfl

theorem output2548_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2548 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1318 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2548_def]
  simp only [output2547_eq, output2546_eq]
  kernel_rfl

theorem input2549_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2549 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1524 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2549_def]
  simp only [input2548_eq, input2545_eq]
  kernel_rfl

theorem output2549_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2549 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1320 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2549_def]
  simp only [output2548_eq, output2545_eq]
  kernel_rfl

theorem input2550_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2550 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1526 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2550_def]
  simp only [input2549_eq, input2544_eq]
  kernel_rfl

theorem output2550_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2550 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1322 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2550_def]
  simp only [output2549_eq, output2544_eq]
  kernel_rfl

theorem input2551_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2551 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1528 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2551_def]
  simp only [input2550_eq, input2543_eq]
  kernel_rfl

theorem output2551_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2551 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1324 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2551_def]
  simp only [output2550_eq, output2543_eq]
  kernel_rfl

theorem input2552_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2552 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1517 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2552_def]
  kernel_rfl

theorem output2552_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2552 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1313 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2552_def]
  kernel_rfl

theorem input2553_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2553 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1516 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2553_def]
  kernel_rfl

theorem output2553_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2553 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1312 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2553_def]
  kernel_rfl

theorem input2554_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2554 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1518 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2554_def]
  simp only [input2553_eq, input2552_eq]
  kernel_rfl

theorem output2554_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2554 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1314 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2554_def]
  simp only [output2553_eq, output2552_eq]
  kernel_rfl

theorem input2555_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2555 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1514 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2555_def]
  kernel_rfl

theorem output2555_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2555 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1310 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2555_def]
  kernel_rfl

theorem input2556_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2556 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1512 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2556_def]
  kernel_rfl

theorem output2556_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2556 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2556_def]
  kernel_rfl

theorem input2557_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2557 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1509 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2557_def]
  kernel_rfl

theorem output2557_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2557 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1307 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2557_def]
  kernel_rfl

theorem input2558_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2558 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1507 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2558_def]
  kernel_rfl

theorem output2558_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2558 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1305 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2558_def]
  kernel_rfl

theorem input2559_eq : InitECandidate.Proofs.DeadStages240.Parallel.input2559 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_1505 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input2559_def]
  kernel_rfl

theorem output2559_eq : InitECandidate.Proofs.DeadStages240.Parallel.output2559 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_1303 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output2559_def]
  kernel_rfl

#print axioms output2559_eq
end InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel
