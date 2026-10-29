import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages184.Parallel.Data.Chunk009
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages184.Parallel
theorem node2304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2304 value1032 value1 value2 = (output2304, value1033, value1) := by
  rw [input2304_def, output2304_def]
  kernel_rfl

theorem node2305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2305 value1033 value1 value2 = (output2305, value312, value1) := by
  rw [input2305_def, output2305_def]
  kernel_rfl

theorem node2306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2306 value312 value1 value2 = (output2306, value1034, value1) := by
  rw [input2306_def, output2306_def]
  kernel_rfl

theorem node2307_cond_eq
    (child2305 : Flapjack.WordAlloc.removeDeadStructural input2305 value1033 value1 value2 = (output2305, value312, value1))
    (child2306 : Flapjack.WordAlloc.removeDeadStructural input2306 value312 value1 value2 = (output2306, value1034, value1)) : Flapjack.WordAlloc.removeDeadStructural input2307 value1033 value1 value2 = (output2307, value1034, value1) := by
  rw [input2307_def, output2307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2305]
  try dsimp only
  rw [child2306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2305_skip, output2306_skip]
  kernel_rfl

theorem node2308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2308 value1034 value1 value2 = (output2308, value1035, value1) := by
  rw [input2308_def, output2308_def]
  kernel_rfl

theorem node2309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2309 value1035 value1 value2 = (output2309, value1036, value1) := by
  rw [input2309_def, output2309_def]
  kernel_rfl

theorem node2310_cond_eq
    (child2308 : Flapjack.WordAlloc.removeDeadStructural input2308 value1034 value1 value2 = (output2308, value1035, value1))
    (child2309 : Flapjack.WordAlloc.removeDeadStructural input2309 value1035 value1 value2 = (output2309, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2310 value1034 value1 value2 = (output2310, value1036, value1) := by
  rw [input2310_def, output2310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2308]
  try dsimp only
  rw [child2309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2308_skip, output2309_skip]
  kernel_rfl

theorem node2311_cond_eq
    (child2307 : Flapjack.WordAlloc.removeDeadStructural input2307 value1033 value1 value2 = (output2307, value1034, value1))
    (child2310 : Flapjack.WordAlloc.removeDeadStructural input2310 value1034 value1 value2 = (output2310, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2311 value1033 value1 value2 = (output2311, value1036, value1) := by
  rw [input2311_def, output2311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2307]
  try dsimp only
  rw [child2310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2307_skip, output2310_skip]
  kernel_rfl

theorem node2312_cond_eq
    (child2304 : Flapjack.WordAlloc.removeDeadStructural input2304 value1032 value1 value2 = (output2304, value1033, value1))
    (child2311 : Flapjack.WordAlloc.removeDeadStructural input2311 value1033 value1 value2 = (output2311, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2312 value1032 value1 value2 = (output2312, value1036, value1) := by
  rw [input2312_def, output2312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2304]
  try dsimp only
  rw [child2311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2304_skip, output2311_skip]
  kernel_rfl

theorem node2313_cond_eq
    (child2303 : Flapjack.WordAlloc.removeDeadStructural input2303 value117 value1 value2 = (output2303, value1032, value1))
    (child2312 : Flapjack.WordAlloc.removeDeadStructural input2312 value1032 value1 value2 = (output2312, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2313 value117 value1 value2 = (output2313, value1036, value1) := by
  rw [input2313_def, output2313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2303]
  try dsimp only
  rw [child2312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2303_skip, output2312_skip]
  kernel_rfl

theorem node2314_cond_eq
    (child306 : Flapjack.WordAlloc.removeDeadStructural input306 value117 value1 value2 = (output306, value117, value1))
    (child2313 : Flapjack.WordAlloc.removeDeadStructural input2313 value117 value1 value2 = (output2313, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2314 value117 value1 value2 = (output2314, value1036, value1) := by
  rw [input2314_def, output2314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child306]
  try dsimp only
  rw [child2313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output306_skip, output2313_skip]
  kernel_rfl

theorem node2315_cond_eq
    (child305 : Flapjack.WordAlloc.removeDeadStructural input305 value116 value1 value2 = (output305, value117, value1))
    (child2314 : Flapjack.WordAlloc.removeDeadStructural input2314 value117 value1 value2 = (output2314, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2315 value116 value1 value2 = (output2315, value1036, value1) := by
  rw [input2315_def, output2315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child305]
  try dsimp only
  rw [child2314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output305_skip, output2314_skip]
  kernel_rfl

theorem node2316_cond_eq
    (child304 : Flapjack.WordAlloc.removeDeadStructural input304 value116 value1 value2 = (output304, value116, value1))
    (child2315 : Flapjack.WordAlloc.removeDeadStructural input2315 value116 value1 value2 = (output2315, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2316 value116 value1 value2 = (output2316, value1036, value1) := by
  rw [input2316_def, output2316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child304]
  try dsimp only
  rw [child2315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output304_skip, output2315_skip]
  kernel_rfl

theorem node2317_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value39 value1 value2 = (output303, value116, value1))
    (child2316 : Flapjack.WordAlloc.removeDeadStructural input2316 value116 value1 value2 = (output2316, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2317 value39 value1 value2 = (output2317, value1036, value1) := by
  rw [input2317_def, output2317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child2316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output2316_skip]
  kernel_rfl

theorem node2318_cond_eq
    (child101 : Flapjack.WordAlloc.removeDeadStructural input101 value39 value1 value2 = (output101, value39, value1))
    (child2317 : Flapjack.WordAlloc.removeDeadStructural input2317 value39 value1 value2 = (output2317, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2318 value39 value1 value2 = (output2318, value1036, value1) := by
  rw [input2318_def, output2318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child101]
  try dsimp only
  rw [child2317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output101_skip, output2317_skip]
  kernel_rfl

theorem node2319_cond_eq
    (child100 : Flapjack.WordAlloc.removeDeadStructural input100 value39 value1 value2 = (output100, value39, value1))
    (child2318 : Flapjack.WordAlloc.removeDeadStructural input2318 value39 value1 value2 = (output2318, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2319 value39 value1 value2 = (output2319, value1036, value1) := by
  rw [input2319_def, output2319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child100]
  try dsimp only
  rw [child2318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output100_skip, output2318_skip]
  kernel_rfl

theorem node2320_cond_eq
    (child99 : Flapjack.WordAlloc.removeDeadStructural input99 value20 value1 value2 = (output99, value39, value1))
    (child2319 : Flapjack.WordAlloc.removeDeadStructural input2319 value39 value1 value2 = (output2319, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2320 value20 value1 value2 = (output2320, value1036, value1) := by
  rw [input2320_def, output2320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child99]
  try dsimp only
  rw [child2319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output99_skip, output2319_skip]
  kernel_rfl

theorem node2321_cond_eq
    (child27 : Flapjack.WordAlloc.removeDeadStructural input27 value20 value1 value2 = (output27, value20, value1))
    (child2320 : Flapjack.WordAlloc.removeDeadStructural input2320 value20 value1 value2 = (output2320, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2321 value20 value1 value2 = (output2321, value1036, value1) := by
  rw [input2321_def, output2321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child27]
  try dsimp only
  rw [child2320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output27_skip, output2320_skip]
  kernel_rfl

theorem node2322_cond_eq
    (child26 : Flapjack.WordAlloc.removeDeadStructural input26 value16 value1 value2 = (output26, value20, value1))
    (child2321 : Flapjack.WordAlloc.removeDeadStructural input2321 value20 value1 value2 = (output2321, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2322 value16 value1 value2 = (output2322, value1036, value1) := by
  rw [input2322_def, output2322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child26]
  try dsimp only
  rw [child2321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output26_skip, output2321_skip]
  kernel_rfl

theorem node2323_cond_eq
    (child19 : Flapjack.WordAlloc.removeDeadStructural input19 value15 value1 value2 = (output19, value16, value1))
    (child2322 : Flapjack.WordAlloc.removeDeadStructural input2322 value16 value1 value2 = (output2322, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2323 value15 value1 value2 = (output2323, value1036, value1) := by
  rw [input2323_def, output2323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child19]
  try dsimp only
  rw [child2322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output19_skip, output2322_skip]
  kernel_rfl

theorem node2324_cond_eq
    (child18 : Flapjack.WordAlloc.removeDeadStructural input18 value14 value1 value2 = (output18, value15, value1))
    (child2323 : Flapjack.WordAlloc.removeDeadStructural input2323 value15 value1 value2 = (output2323, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2324 value14 value1 value2 = (output2324, value1036, value1) := by
  rw [input2324_def, output2324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child18]
  try dsimp only
  rw [child2323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output18_skip, output2323_skip]
  kernel_rfl

theorem node2325_cond_eq
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value13 value1 value2 = (output17, value14, value1))
    (child2324 : Flapjack.WordAlloc.removeDeadStructural input2324 value14 value1 value2 = (output2324, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2325 value13 value1 value2 = (output2325, value1036, value1) := by
  rw [input2325_def, output2325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17]
  try dsimp only
  rw [child2324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output17_skip, output2324_skip]
  kernel_rfl

theorem node2326_cond_eq
    (child16 : Flapjack.WordAlloc.removeDeadStructural input16 value10 value1 value2 = (output16, value13, value1))
    (child2325 : Flapjack.WordAlloc.removeDeadStructural input2325 value13 value1 value2 = (output2325, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2326 value10 value1 value2 = (output2326, value1036, value1) := by
  rw [input2326_def, output2326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child16]
  try dsimp only
  rw [child2325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output16_skip, output2325_skip]
  kernel_rfl

theorem node2327_cond_eq
    (child11 : Flapjack.WordAlloc.removeDeadStructural input11 value9 value1 value2 = (output11, value10, value1))
    (child2326 : Flapjack.WordAlloc.removeDeadStructural input2326 value10 value1 value2 = (output2326, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2327 value9 value1 value2 = (output2327, value1036, value1) := by
  rw [input2327_def, output2327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child11]
  try dsimp only
  rw [child2326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output11_skip, output2326_skip]
  kernel_rfl

theorem node2328_cond_eq
    (child10 : Flapjack.WordAlloc.removeDeadStructural input10 value8 value1 value2 = (output10, value9, value1))
    (child2327 : Flapjack.WordAlloc.removeDeadStructural input2327 value9 value1 value2 = (output2327, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2328 value8 value1 value2 = (output2328, value1036, value1) := by
  rw [input2328_def, output2328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child10]
  try dsimp only
  rw [child2327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output10_skip, output2327_skip]
  kernel_rfl

theorem node2329_cond_eq
    (child9 : Flapjack.WordAlloc.removeDeadStructural input9 value4 value1 value2 = (output9, value8, value1))
    (child2328 : Flapjack.WordAlloc.removeDeadStructural input2328 value8 value1 value2 = (output2328, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2329 value4 value1 value2 = (output2329, value1036, value1) := by
  rw [input2329_def, output2329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9]
  try dsimp only
  rw [child2328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9_skip, output2328_skip]
  kernel_rfl

theorem node2330_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child2329 : Flapjack.WordAlloc.removeDeadStructural input2329 value4 value1 value2 = (output2329, value1036, value1)) : Flapjack.WordAlloc.removeDeadStructural input2330 value0 value1 value2 = (output2330, value1036, value1) := by
  rw [input2330_def, output2330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child2329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output2329_skip]
  kernel_rfl

theorem node2331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2331 value1036 value1 value2 = (output2331, value1037, value1) := by
  rw [input2331_def, output2331_def]
  kernel_rfl

theorem node2332_cond_eq
    (child2330 : Flapjack.WordAlloc.removeDeadStructural input2330 value0 value1 value2 = (output2330, value1036, value1))
    (child2331 : Flapjack.WordAlloc.removeDeadStructural input2331 value1036 value1 value2 = (output2331, value1037, value1)) : Flapjack.WordAlloc.removeDeadStructural input2332 value0 value1 value2 = (output2332, value1037, value1) := by
  rw [input2332_def, output2332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2330]
  try dsimp only
  rw [child2331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2330_skip, output2331_skip]
  kernel_rfl

#print axioms node2332_cond_eq
end InitECandidate.Proofs.DeadStages184.Parallel
