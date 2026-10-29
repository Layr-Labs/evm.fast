import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages647.Parallel.Data.Chunk009
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages647.Parallel
theorem node2304_cond_eq
    (child960 : Flapjack.WordAlloc.removeDeadStructural input960 value472 value1 value2 = (output960, value473, value1))
    (child2303 : Flapjack.WordAlloc.removeDeadStructural input2303 value473 value1 value2 = (output2303, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2304 value472 value1 value2 = (output2304, value1100, value1) := by
  rw [input2304_def, output2304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child960]
  try dsimp only
  rw [child2303]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output960_skip, output2303_skip]
  kernel_rfl

theorem node2305_cond_eq
    (child959 : Flapjack.WordAlloc.removeDeadStructural input959 value469 value1 value2 = (output959, value472, value1))
    (child2304 : Flapjack.WordAlloc.removeDeadStructural input2304 value472 value1 value2 = (output2304, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2305 value469 value1 value2 = (output2305, value1100, value1) := by
  rw [input2305_def, output2305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child959]
  try dsimp only
  rw [child2304]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output959_skip, output2304_skip]
  kernel_rfl

theorem node2306_cond_eq
    (child954 : Flapjack.WordAlloc.removeDeadStructural input954 value468 value1 value2 = (output954, value469, value1))
    (child2305 : Flapjack.WordAlloc.removeDeadStructural input2305 value469 value1 value2 = (output2305, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2306 value468 value1 value2 = (output2306, value1100, value1) := by
  rw [input2306_def, output2306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child954]
  try dsimp only
  rw [child2305]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output954_skip, output2305_skip]
  kernel_rfl

theorem node2307_cond_eq
    (child953 : Flapjack.WordAlloc.removeDeadStructural input953 value463 value1 value2 = (output953, value468, value1))
    (child2306 : Flapjack.WordAlloc.removeDeadStructural input2306 value468 value1 value2 = (output2306, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2307 value463 value1 value2 = (output2307, value1100, value1) := by
  rw [input2307_def, output2307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child953]
  try dsimp only
  rw [child2306]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output953_skip, output2306_skip]
  kernel_rfl

theorem node2308_cond_eq
    (child944 : Flapjack.WordAlloc.removeDeadStructural input944 value462 value1 value2 = (output944, value463, value1))
    (child2307 : Flapjack.WordAlloc.removeDeadStructural input2307 value463 value1 value2 = (output2307, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2308 value462 value1 value2 = (output2308, value1100, value1) := by
  rw [input2308_def, output2308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child944]
  try dsimp only
  rw [child2307]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output944_skip, output2307_skip]
  kernel_rfl

theorem node2309_cond_eq
    (child943 : Flapjack.WordAlloc.removeDeadStructural input943 value458 value1 value2 = (output943, value462, value1))
    (child2308 : Flapjack.WordAlloc.removeDeadStructural input2308 value462 value1 value2 = (output2308, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2309 value458 value1 value2 = (output2309, value1100, value1) := by
  rw [input2309_def, output2309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child943]
  try dsimp only
  rw [child2308]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output943_skip, output2308_skip]
  kernel_rfl

theorem node2310_cond_eq
    (child936 : Flapjack.WordAlloc.removeDeadStructural input936 value457 value1 value2 = (output936, value458, value1))
    (child2309 : Flapjack.WordAlloc.removeDeadStructural input2309 value458 value1 value2 = (output2309, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2310 value457 value1 value2 = (output2310, value1100, value1) := by
  rw [input2310_def, output2310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child936]
  try dsimp only
  rw [child2309]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output936_skip, output2309_skip]
  kernel_rfl

theorem node2311_cond_eq
    (child935 : Flapjack.WordAlloc.removeDeadStructural input935 value456 value1 value2 = (output935, value457, value1))
    (child2310 : Flapjack.WordAlloc.removeDeadStructural input2310 value457 value1 value2 = (output2310, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2311 value456 value1 value2 = (output2311, value1100, value1) := by
  rw [input2311_def, output2311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child935]
  try dsimp only
  rw [child2310]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output935_skip, output2310_skip]
  kernel_rfl

theorem node2312_cond_eq
    (child934 : Flapjack.WordAlloc.removeDeadStructural input934 value455 value1 value2 = (output934, value456, value1))
    (child2311 : Flapjack.WordAlloc.removeDeadStructural input2311 value456 value1 value2 = (output2311, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2312 value455 value1 value2 = (output2312, value1100, value1) := by
  rw [input2312_def, output2312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child934]
  try dsimp only
  rw [child2311]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output934_skip, output2311_skip]
  kernel_rfl

theorem node2313_cond_eq
    (child933 : Flapjack.WordAlloc.removeDeadStructural input933 value452 value1 value2 = (output933, value455, value1))
    (child2312 : Flapjack.WordAlloc.removeDeadStructural input2312 value455 value1 value2 = (output2312, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2313 value452 value1 value2 = (output2313, value1100, value1) := by
  rw [input2313_def, output2313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child933]
  try dsimp only
  rw [child2312]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output933_skip, output2312_skip]
  kernel_rfl

theorem node2314_cond_eq
    (child928 : Flapjack.WordAlloc.removeDeadStructural input928 value451 value1 value2 = (output928, value452, value1))
    (child2313 : Flapjack.WordAlloc.removeDeadStructural input2313 value452 value1 value2 = (output2313, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2314 value451 value1 value2 = (output2314, value1100, value1) := by
  rw [input2314_def, output2314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child928]
  try dsimp only
  rw [child2313]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output928_skip, output2313_skip]
  kernel_rfl

theorem node2315_cond_eq
    (child927 : Flapjack.WordAlloc.removeDeadStructural input927 value448 value1 value2 = (output927, value451, value1))
    (child2314 : Flapjack.WordAlloc.removeDeadStructural input2314 value451 value1 value2 = (output2314, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2315 value448 value1 value2 = (output2315, value1100, value1) := by
  rw [input2315_def, output2315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child927]
  try dsimp only
  rw [child2314]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output927_skip, output2314_skip]
  kernel_rfl

theorem node2316_cond_eq
    (child922 : Flapjack.WordAlloc.removeDeadStructural input922 value447 value1 value2 = (output922, value448, value1))
    (child2315 : Flapjack.WordAlloc.removeDeadStructural input2315 value448 value1 value2 = (output2315, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2316 value447 value1 value2 = (output2316, value1100, value1) := by
  rw [input2316_def, output2316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child922]
  try dsimp only
  rw [child2315]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output922_skip, output2315_skip]
  kernel_rfl

theorem node2317_cond_eq
    (child921 : Flapjack.WordAlloc.removeDeadStructural input921 value445 value1 value2 = (output921, value447, value1))
    (child2316 : Flapjack.WordAlloc.removeDeadStructural input2316 value447 value1 value2 = (output2316, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2317 value445 value1 value2 = (output2317, value1100, value1) := by
  rw [input2317_def, output2317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child921]
  try dsimp only
  rw [child2316]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output921_skip, output2316_skip]
  kernel_rfl

theorem node2318_cond_eq
    (child918 : Flapjack.WordAlloc.removeDeadStructural input918 value444 value1 value2 = (output918, value445, value1))
    (child2317 : Flapjack.WordAlloc.removeDeadStructural input2317 value445 value1 value2 = (output2317, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2318 value444 value1 value2 = (output2318, value1100, value1) := by
  rw [input2318_def, output2318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child918]
  try dsimp only
  rw [child2317]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output918_skip, output2317_skip]
  kernel_rfl

theorem node2319_cond_eq
    (child917 : Flapjack.WordAlloc.removeDeadStructural input917 value439 value1 value2 = (output917, value444, value1))
    (child2318 : Flapjack.WordAlloc.removeDeadStructural input2318 value444 value1 value2 = (output2318, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2319 value439 value1 value2 = (output2319, value1100, value1) := by
  rw [input2319_def, output2319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child917]
  try dsimp only
  rw [child2318]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output917_skip, output2318_skip]
  kernel_rfl

theorem node2320_cond_eq
    (child908 : Flapjack.WordAlloc.removeDeadStructural input908 value438 value1 value2 = (output908, value439, value1))
    (child2319 : Flapjack.WordAlloc.removeDeadStructural input2319 value439 value1 value2 = (output2319, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2320 value438 value1 value2 = (output2320, value1100, value1) := by
  rw [input2320_def, output2320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child908]
  try dsimp only
  rw [child2319]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output908_skip, output2319_skip]
  kernel_rfl

theorem node2321_cond_eq
    (child907 : Flapjack.WordAlloc.removeDeadStructural input907 value433 value1 value2 = (output907, value438, value1))
    (child2320 : Flapjack.WordAlloc.removeDeadStructural input2320 value438 value1 value2 = (output2320, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2321 value433 value1 value2 = (output2321, value1100, value1) := by
  rw [input2321_def, output2321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child907]
  try dsimp only
  rw [child2320]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output907_skip, output2320_skip]
  kernel_rfl

theorem node2322_cond_eq
    (child898 : Flapjack.WordAlloc.removeDeadStructural input898 value432 value1 value2 = (output898, value433, value1))
    (child2321 : Flapjack.WordAlloc.removeDeadStructural input2321 value433 value1 value2 = (output2321, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2322 value432 value1 value2 = (output2322, value1100, value1) := by
  rw [input2322_def, output2322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child898]
  try dsimp only
  rw [child2321]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output898_skip, output2321_skip]
  kernel_rfl

theorem node2323_cond_eq
    (child897 : Flapjack.WordAlloc.removeDeadStructural input897 value432 value1 value2 = (output897, value432, value1))
    (child2322 : Flapjack.WordAlloc.removeDeadStructural input2322 value432 value1 value2 = (output2322, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2323 value432 value1 value2 = (output2323, value1100, value1) := by
  rw [input2323_def, output2323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child897]
  try dsimp only
  rw [child2322]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output897_skip, output2322_skip]
  kernel_rfl

theorem node2324_cond_eq
    (child896 : Flapjack.WordAlloc.removeDeadStructural input896 value432 value1 value2 = (output896, value432, value1))
    (child2323 : Flapjack.WordAlloc.removeDeadStructural input2323 value432 value1 value2 = (output2323, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2324 value432 value1 value2 = (output2324, value1100, value1) := by
  rw [input2324_def, output2324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child896]
  try dsimp only
  rw [child2323]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output896_skip, output2323_skip]
  kernel_rfl

theorem node2325_cond_eq
    (child895 : Flapjack.WordAlloc.removeDeadStructural input895 value429 value1 value2 = (output895, value432, value1))
    (child2324 : Flapjack.WordAlloc.removeDeadStructural input2324 value432 value1 value2 = (output2324, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2325 value429 value1 value2 = (output2325, value1100, value1) := by
  rw [input2325_def, output2325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child895]
  try dsimp only
  rw [child2324]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output895_skip, output2324_skip]
  kernel_rfl

theorem node2326_cond_eq
    (child890 : Flapjack.WordAlloc.removeDeadStructural input890 value426 value1 value2 = (output890, value429, value1))
    (child2325 : Flapjack.WordAlloc.removeDeadStructural input2325 value429 value1 value2 = (output2325, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2326 value426 value1 value2 = (output2326, value1100, value1) := by
  rw [input2326_def, output2326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child890]
  try dsimp only
  rw [child2325]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output890_skip, output2325_skip]
  kernel_rfl

theorem node2327_cond_eq
    (child885 : Flapjack.WordAlloc.removeDeadStructural input885 value422 value1 value2 = (output885, value426, value1))
    (child2326 : Flapjack.WordAlloc.removeDeadStructural input2326 value426 value1 value2 = (output2326, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2327 value422 value1 value2 = (output2327, value1100, value1) := by
  rw [input2327_def, output2327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child885]
  try dsimp only
  rw [child2326]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output885_skip, output2326_skip]
  kernel_rfl

theorem node2328_cond_eq
    (child878 : Flapjack.WordAlloc.removeDeadStructural input878 value422 value1 value2 = (output878, value422, value1))
    (child2327 : Flapjack.WordAlloc.removeDeadStructural input2327 value422 value1 value2 = (output2327, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2328 value422 value1 value2 = (output2328, value1100, value1) := by
  rw [input2328_def, output2328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child878]
  try dsimp only
  rw [child2327]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output878_skip, output2327_skip]
  kernel_rfl

theorem node2329_cond_eq
    (child877 : Flapjack.WordAlloc.removeDeadStructural input877 value422 value1 value2 = (output877, value422, value1))
    (child2328 : Flapjack.WordAlloc.removeDeadStructural input2328 value422 value1 value2 = (output2328, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2329 value422 value1 value2 = (output2329, value1100, value1) := by
  rw [input2329_def, output2329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child877]
  try dsimp only
  rw [child2328]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output877_skip, output2328_skip]
  kernel_rfl

theorem node2330_cond_eq
    (child876 : Flapjack.WordAlloc.removeDeadStructural input876 value421 value1 value2 = (output876, value422, value1))
    (child2329 : Flapjack.WordAlloc.removeDeadStructural input2329 value422 value1 value2 = (output2329, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2330 value421 value1 value2 = (output2330, value1100, value1) := by
  rw [input2330_def, output2330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child876]
  try dsimp only
  rw [child2329]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output876_skip, output2329_skip]
  kernel_rfl

theorem node2331_cond_eq
    (child875 : Flapjack.WordAlloc.removeDeadStructural input875 value420 value1 value2 = (output875, value421, value1))
    (child2330 : Flapjack.WordAlloc.removeDeadStructural input2330 value421 value1 value2 = (output2330, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2331 value420 value1 value2 = (output2331, value1100, value1) := by
  rw [input2331_def, output2331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child875]
  try dsimp only
  rw [child2330]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output875_skip, output2330_skip]
  kernel_rfl

theorem node2332_cond_eq
    (child874 : Flapjack.WordAlloc.removeDeadStructural input874 value417 value1 value2 = (output874, value420, value1))
    (child2331 : Flapjack.WordAlloc.removeDeadStructural input2331 value420 value1 value2 = (output2331, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2332 value417 value1 value2 = (output2332, value1100, value1) := by
  rw [input2332_def, output2332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child874]
  try dsimp only
  rw [child2331]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output874_skip, output2331_skip]
  kernel_rfl

theorem node2333_cond_eq
    (child869 : Flapjack.WordAlloc.removeDeadStructural input869 value416 value1 value2 = (output869, value417, value1))
    (child2332 : Flapjack.WordAlloc.removeDeadStructural input2332 value417 value1 value2 = (output2332, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2333 value416 value1 value2 = (output2333, value1100, value1) := by
  rw [input2333_def, output2333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child869]
  try dsimp only
  rw [child2332]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output869_skip, output2332_skip]
  kernel_rfl

theorem node2334_cond_eq
    (child868 : Flapjack.WordAlloc.removeDeadStructural input868 value413 value1 value2 = (output868, value416, value1))
    (child2333 : Flapjack.WordAlloc.removeDeadStructural input2333 value416 value1 value2 = (output2333, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2334 value413 value1 value2 = (output2334, value1100, value1) := by
  rw [input2334_def, output2334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child868]
  try dsimp only
  rw [child2333]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output868_skip, output2333_skip]
  kernel_rfl

theorem node2335_cond_eq
    (child863 : Flapjack.WordAlloc.removeDeadStructural input863 value412 value1 value2 = (output863, value413, value1))
    (child2334 : Flapjack.WordAlloc.removeDeadStructural input2334 value413 value1 value2 = (output2334, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2335 value412 value1 value2 = (output2335, value1100, value1) := by
  rw [input2335_def, output2335_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child863]
  try dsimp only
  rw [child2334]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output863_skip, output2334_skip]
  kernel_rfl

theorem node2336_cond_eq
    (child862 : Flapjack.WordAlloc.removeDeadStructural input862 value410 value1 value2 = (output862, value412, value1))
    (child2335 : Flapjack.WordAlloc.removeDeadStructural input2335 value412 value1 value2 = (output2335, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2336 value410 value1 value2 = (output2336, value1100, value1) := by
  rw [input2336_def, output2336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child862]
  try dsimp only
  rw [child2335]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output862_skip, output2335_skip]
  kernel_rfl

theorem node2337_cond_eq
    (child859 : Flapjack.WordAlloc.removeDeadStructural input859 value409 value1 value2 = (output859, value410, value1))
    (child2336 : Flapjack.WordAlloc.removeDeadStructural input2336 value410 value1 value2 = (output2336, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2337 value409 value1 value2 = (output2337, value1100, value1) := by
  rw [input2337_def, output2337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child859]
  try dsimp only
  rw [child2336]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output859_skip, output2336_skip]
  kernel_rfl

theorem node2338_cond_eq
    (child858 : Flapjack.WordAlloc.removeDeadStructural input858 value408 value1 value2 = (output858, value409, value1))
    (child2337 : Flapjack.WordAlloc.removeDeadStructural input2337 value409 value1 value2 = (output2337, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2338 value408 value1 value2 = (output2338, value1100, value1) := by
  rw [input2338_def, output2338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child858]
  try dsimp only
  rw [child2337]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output858_skip, output2337_skip]
  kernel_rfl

theorem node2339_cond_eq
    (child857 : Flapjack.WordAlloc.removeDeadStructural input857 value407 value1 value2 = (output857, value408, value1))
    (child2338 : Flapjack.WordAlloc.removeDeadStructural input2338 value408 value1 value2 = (output2338, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2339 value407 value1 value2 = (output2339, value1100, value1) := by
  rw [input2339_def, output2339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child857]
  try dsimp only
  rw [child2338]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output857_skip, output2338_skip]
  kernel_rfl

theorem node2340_cond_eq
    (child856 : Flapjack.WordAlloc.removeDeadStructural input856 value404 value1 value2 = (output856, value407, value1))
    (child2339 : Flapjack.WordAlloc.removeDeadStructural input2339 value407 value1 value2 = (output2339, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2340 value404 value1 value2 = (output2340, value1100, value1) := by
  rw [input2340_def, output2340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child856]
  try dsimp only
  rw [child2339]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output856_skip, output2339_skip]
  kernel_rfl

theorem node2341_cond_eq
    (child851 : Flapjack.WordAlloc.removeDeadStructural input851 value403 value1 value2 = (output851, value404, value1))
    (child2340 : Flapjack.WordAlloc.removeDeadStructural input2340 value404 value1 value2 = (output2340, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2341 value403 value1 value2 = (output2341, value1100, value1) := by
  rw [input2341_def, output2341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child851]
  try dsimp only
  rw [child2340]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output851_skip, output2340_skip]
  kernel_rfl

theorem node2342_cond_eq
    (child850 : Flapjack.WordAlloc.removeDeadStructural input850 value398 value1 value2 = (output850, value403, value1))
    (child2341 : Flapjack.WordAlloc.removeDeadStructural input2341 value403 value1 value2 = (output2341, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2342 value398 value1 value2 = (output2342, value1100, value1) := by
  rw [input2342_def, output2342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child850]
  try dsimp only
  rw [child2341]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output850_skip, output2341_skip]
  kernel_rfl

theorem node2343_cond_eq
    (child841 : Flapjack.WordAlloc.removeDeadStructural input841 value397 value1 value2 = (output841, value398, value1))
    (child2342 : Flapjack.WordAlloc.removeDeadStructural input2342 value398 value1 value2 = (output2342, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2343 value397 value1 value2 = (output2343, value1100, value1) := by
  rw [input2343_def, output2343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child841]
  try dsimp only
  rw [child2342]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output841_skip, output2342_skip]
  kernel_rfl

theorem node2344_cond_eq
    (child840 : Flapjack.WordAlloc.removeDeadStructural input840 value393 value1 value2 = (output840, value397, value1))
    (child2343 : Flapjack.WordAlloc.removeDeadStructural input2343 value397 value1 value2 = (output2343, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2344 value393 value1 value2 = (output2344, value1100, value1) := by
  rw [input2344_def, output2344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child840]
  try dsimp only
  rw [child2343]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output840_skip, output2343_skip]
  kernel_rfl

theorem node2345_cond_eq
    (child833 : Flapjack.WordAlloc.removeDeadStructural input833 value392 value1 value2 = (output833, value393, value1))
    (child2344 : Flapjack.WordAlloc.removeDeadStructural input2344 value393 value1 value2 = (output2344, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2345 value392 value1 value2 = (output2345, value1100, value1) := by
  rw [input2345_def, output2345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child833]
  try dsimp only
  rw [child2344]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output833_skip, output2344_skip]
  kernel_rfl

theorem node2346_cond_eq
    (child832 : Flapjack.WordAlloc.removeDeadStructural input832 value389 value1 value2 = (output832, value392, value1))
    (child2345 : Flapjack.WordAlloc.removeDeadStructural input2345 value392 value1 value2 = (output2345, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2346 value389 value1 value2 = (output2346, value1100, value1) := by
  rw [input2346_def, output2346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child832]
  try dsimp only
  rw [child2345]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output832_skip, output2345_skip]
  kernel_rfl

theorem node2347_cond_eq
    (child827 : Flapjack.WordAlloc.removeDeadStructural input827 value388 value1 value2 = (output827, value389, value1))
    (child2346 : Flapjack.WordAlloc.removeDeadStructural input2346 value389 value1 value2 = (output2346, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2347 value388 value1 value2 = (output2347, value1100, value1) := by
  rw [input2347_def, output2347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child827]
  try dsimp only
  rw [child2346]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output827_skip, output2346_skip]
  kernel_rfl

theorem node2348_cond_eq
    (child826 : Flapjack.WordAlloc.removeDeadStructural input826 value385 value1 value2 = (output826, value388, value1))
    (child2347 : Flapjack.WordAlloc.removeDeadStructural input2347 value388 value1 value2 = (output2347, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2348 value385 value1 value2 = (output2348, value1100, value1) := by
  rw [input2348_def, output2348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child826]
  try dsimp only
  rw [child2347]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output826_skip, output2347_skip]
  kernel_rfl

theorem node2349_cond_eq
    (child821 : Flapjack.WordAlloc.removeDeadStructural input821 value384 value1 value2 = (output821, value385, value1))
    (child2348 : Flapjack.WordAlloc.removeDeadStructural input2348 value385 value1 value2 = (output2348, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2349 value384 value1 value2 = (output2349, value1100, value1) := by
  rw [input2349_def, output2349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child821]
  try dsimp only
  rw [child2348]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output821_skip, output2348_skip]
  kernel_rfl

theorem node2350_cond_eq
    (child820 : Flapjack.WordAlloc.removeDeadStructural input820 value384 value1 value2 = (output820, value384, value1))
    (child2349 : Flapjack.WordAlloc.removeDeadStructural input2349 value384 value1 value2 = (output2349, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2350 value384 value1 value2 = (output2350, value1100, value1) := by
  rw [input2350_def, output2350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child820]
  try dsimp only
  rw [child2349]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output820_skip, output2349_skip]
  kernel_rfl

theorem node2351_cond_eq
    (child819 : Flapjack.WordAlloc.removeDeadStructural input819 value384 value1 value2 = (output819, value384, value1))
    (child2350 : Flapjack.WordAlloc.removeDeadStructural input2350 value384 value1 value2 = (output2350, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2351 value384 value1 value2 = (output2351, value1100, value1) := by
  rw [input2351_def, output2351_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child819]
  try dsimp only
  rw [child2350]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output819_skip, output2350_skip]
  kernel_rfl

theorem node2352_cond_eq
    (child818 : Flapjack.WordAlloc.removeDeadStructural input818 value381 value1 value2 = (output818, value384, value1))
    (child2351 : Flapjack.WordAlloc.removeDeadStructural input2351 value384 value1 value2 = (output2351, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2352 value381 value1 value2 = (output2352, value1100, value1) := by
  rw [input2352_def, output2352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child818]
  try dsimp only
  rw [child2351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output818_skip, output2351_skip]
  kernel_rfl

theorem node2353_cond_eq
    (child813 : Flapjack.WordAlloc.removeDeadStructural input813 value378 value1 value2 = (output813, value381, value1))
    (child2352 : Flapjack.WordAlloc.removeDeadStructural input2352 value381 value1 value2 = (output2352, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2353 value378 value1 value2 = (output2353, value1100, value1) := by
  rw [input2353_def, output2353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child813]
  try dsimp only
  rw [child2352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output813_skip, output2352_skip]
  kernel_rfl

theorem node2354_cond_eq
    (child808 : Flapjack.WordAlloc.removeDeadStructural input808 value374 value1 value2 = (output808, value378, value1))
    (child2353 : Flapjack.WordAlloc.removeDeadStructural input2353 value378 value1 value2 = (output2353, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2354 value374 value1 value2 = (output2354, value1100, value1) := by
  rw [input2354_def, output2354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child808]
  try dsimp only
  rw [child2353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output808_skip, output2353_skip]
  kernel_rfl

theorem node2355_cond_eq
    (child801 : Flapjack.WordAlloc.removeDeadStructural input801 value374 value1 value2 = (output801, value374, value1))
    (child2354 : Flapjack.WordAlloc.removeDeadStructural input2354 value374 value1 value2 = (output2354, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2355 value374 value1 value2 = (output2355, value1100, value1) := by
  rw [input2355_def, output2355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child801]
  try dsimp only
  rw [child2354]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output801_skip, output2354_skip]
  kernel_rfl

theorem node2356_cond_eq
    (child800 : Flapjack.WordAlloc.removeDeadStructural input800 value374 value1 value2 = (output800, value374, value1))
    (child2355 : Flapjack.WordAlloc.removeDeadStructural input2355 value374 value1 value2 = (output2355, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2356 value374 value1 value2 = (output2356, value1100, value1) := by
  rw [input2356_def, output2356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child800]
  try dsimp only
  rw [child2355]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output800_skip, output2355_skip]
  kernel_rfl

theorem node2357_cond_eq
    (child799 : Flapjack.WordAlloc.removeDeadStructural input799 value373 value1 value2 = (output799, value374, value1))
    (child2356 : Flapjack.WordAlloc.removeDeadStructural input2356 value374 value1 value2 = (output2356, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2357 value373 value1 value2 = (output2357, value1100, value1) := by
  rw [input2357_def, output2357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child799]
  try dsimp only
  rw [child2356]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output799_skip, output2356_skip]
  kernel_rfl

theorem node2358_cond_eq
    (child798 : Flapjack.WordAlloc.removeDeadStructural input798 value372 value1 value2 = (output798, value373, value1))
    (child2357 : Flapjack.WordAlloc.removeDeadStructural input2357 value373 value1 value2 = (output2357, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2358 value372 value1 value2 = (output2358, value1100, value1) := by
  rw [input2358_def, output2358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child798]
  try dsimp only
  rw [child2357]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output798_skip, output2357_skip]
  kernel_rfl

theorem node2359_cond_eq
    (child797 : Flapjack.WordAlloc.removeDeadStructural input797 value369 value1 value2 = (output797, value372, value1))
    (child2358 : Flapjack.WordAlloc.removeDeadStructural input2358 value372 value1 value2 = (output2358, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2359 value369 value1 value2 = (output2359, value1100, value1) := by
  rw [input2359_def, output2359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child797]
  try dsimp only
  rw [child2358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output797_skip, output2358_skip]
  kernel_rfl

theorem node2360_cond_eq
    (child792 : Flapjack.WordAlloc.removeDeadStructural input792 value368 value1 value2 = (output792, value369, value1))
    (child2359 : Flapjack.WordAlloc.removeDeadStructural input2359 value369 value1 value2 = (output2359, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2360 value368 value1 value2 = (output2360, value1100, value1) := by
  rw [input2360_def, output2360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child792]
  try dsimp only
  rw [child2359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output792_skip, output2359_skip]
  kernel_rfl

theorem node2361_cond_eq
    (child791 : Flapjack.WordAlloc.removeDeadStructural input791 value365 value1 value2 = (output791, value368, value1))
    (child2360 : Flapjack.WordAlloc.removeDeadStructural input2360 value368 value1 value2 = (output2360, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2361 value365 value1 value2 = (output2361, value1100, value1) := by
  rw [input2361_def, output2361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child791]
  try dsimp only
  rw [child2360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output791_skip, output2360_skip]
  kernel_rfl

theorem node2362_cond_eq
    (child786 : Flapjack.WordAlloc.removeDeadStructural input786 value364 value1 value2 = (output786, value365, value1))
    (child2361 : Flapjack.WordAlloc.removeDeadStructural input2361 value365 value1 value2 = (output2361, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2362 value364 value1 value2 = (output2362, value1100, value1) := by
  rw [input2362_def, output2362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child786]
  try dsimp only
  rw [child2361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output786_skip, output2361_skip]
  kernel_rfl

theorem node2363_cond_eq
    (child785 : Flapjack.WordAlloc.removeDeadStructural input785 value362 value1 value2 = (output785, value364, value1))
    (child2362 : Flapjack.WordAlloc.removeDeadStructural input2362 value364 value1 value2 = (output2362, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2363 value362 value1 value2 = (output2363, value1100, value1) := by
  rw [input2363_def, output2363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child785]
  try dsimp only
  rw [child2362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output785_skip, output2362_skip]
  kernel_rfl

theorem node2364_cond_eq
    (child782 : Flapjack.WordAlloc.removeDeadStructural input782 value361 value1 value2 = (output782, value362, value1))
    (child2363 : Flapjack.WordAlloc.removeDeadStructural input2363 value362 value1 value2 = (output2363, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2364 value361 value1 value2 = (output2364, value1100, value1) := by
  rw [input2364_def, output2364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child782]
  try dsimp only
  rw [child2363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output782_skip, output2363_skip]
  kernel_rfl

theorem node2365_cond_eq
    (child781 : Flapjack.WordAlloc.removeDeadStructural input781 value360 value1 value2 = (output781, value361, value1))
    (child2364 : Flapjack.WordAlloc.removeDeadStructural input2364 value361 value1 value2 = (output2364, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2365 value360 value1 value2 = (output2365, value1100, value1) := by
  rw [input2365_def, output2365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child781]
  try dsimp only
  rw [child2364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output781_skip, output2364_skip]
  kernel_rfl

theorem node2366_cond_eq
    (child780 : Flapjack.WordAlloc.removeDeadStructural input780 value359 value1 value2 = (output780, value360, value1))
    (child2365 : Flapjack.WordAlloc.removeDeadStructural input2365 value360 value1 value2 = (output2365, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2366 value359 value1 value2 = (output2366, value1100, value1) := by
  rw [input2366_def, output2366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child780]
  try dsimp only
  rw [child2365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output780_skip, output2365_skip]
  kernel_rfl

theorem node2367_cond_eq
    (child779 : Flapjack.WordAlloc.removeDeadStructural input779 value356 value1 value2 = (output779, value359, value1))
    (child2366 : Flapjack.WordAlloc.removeDeadStructural input2366 value359 value1 value2 = (output2366, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2367 value356 value1 value2 = (output2367, value1100, value1) := by
  rw [input2367_def, output2367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child779]
  try dsimp only
  rw [child2366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output779_skip, output2366_skip]
  kernel_rfl

theorem node2368_cond_eq
    (child774 : Flapjack.WordAlloc.removeDeadStructural input774 value355 value1 value2 = (output774, value356, value1))
    (child2367 : Flapjack.WordAlloc.removeDeadStructural input2367 value356 value1 value2 = (output2367, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2368 value355 value1 value2 = (output2368, value1100, value1) := by
  rw [input2368_def, output2368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child774]
  try dsimp only
  rw [child2367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output774_skip, output2367_skip]
  kernel_rfl

theorem node2369_cond_eq
    (child773 : Flapjack.WordAlloc.removeDeadStructural input773 value352 value1 value2 = (output773, value355, value1))
    (child2368 : Flapjack.WordAlloc.removeDeadStructural input2368 value355 value1 value2 = (output2368, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2369 value352 value1 value2 = (output2369, value1100, value1) := by
  rw [input2369_def, output2369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child773]
  try dsimp only
  rw [child2368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output773_skip, output2368_skip]
  kernel_rfl

theorem node2370_cond_eq
    (child768 : Flapjack.WordAlloc.removeDeadStructural input768 value351 value1 value2 = (output768, value352, value1))
    (child2369 : Flapjack.WordAlloc.removeDeadStructural input2369 value352 value1 value2 = (output2369, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2370 value351 value1 value2 = (output2370, value1100, value1) := by
  rw [input2370_def, output2370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child768]
  try dsimp only
  rw [child2369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output768_skip, output2369_skip]
  kernel_rfl

theorem node2371_cond_eq
    (child767 : Flapjack.WordAlloc.removeDeadStructural input767 value349 value1 value2 = (output767, value351, value1))
    (child2370 : Flapjack.WordAlloc.removeDeadStructural input2370 value351 value1 value2 = (output2370, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2371 value349 value1 value2 = (output2371, value1100, value1) := by
  rw [input2371_def, output2371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child767]
  try dsimp only
  rw [child2370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output767_skip, output2370_skip]
  kernel_rfl

theorem node2372_cond_eq
    (child764 : Flapjack.WordAlloc.removeDeadStructural input764 value348 value1 value2 = (output764, value349, value1))
    (child2371 : Flapjack.WordAlloc.removeDeadStructural input2371 value349 value1 value2 = (output2371, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2372 value348 value1 value2 = (output2372, value1100, value1) := by
  rw [input2372_def, output2372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child764]
  try dsimp only
  rw [child2371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output764_skip, output2371_skip]
  kernel_rfl

theorem node2373_cond_eq
    (child763 : Flapjack.WordAlloc.removeDeadStructural input763 value343 value1 value2 = (output763, value348, value1))
    (child2372 : Flapjack.WordAlloc.removeDeadStructural input2372 value348 value1 value2 = (output2372, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2373 value343 value1 value2 = (output2373, value1100, value1) := by
  rw [input2373_def, output2373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child763]
  try dsimp only
  rw [child2372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output763_skip, output2372_skip]
  kernel_rfl

theorem node2374_cond_eq
    (child754 : Flapjack.WordAlloc.removeDeadStructural input754 value342 value1 value2 = (output754, value343, value1))
    (child2373 : Flapjack.WordAlloc.removeDeadStructural input2373 value343 value1 value2 = (output2373, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2374 value342 value1 value2 = (output2374, value1100, value1) := by
  rw [input2374_def, output2374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child754]
  try dsimp only
  rw [child2373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output754_skip, output2373_skip]
  kernel_rfl

theorem node2375_cond_eq
    (child753 : Flapjack.WordAlloc.removeDeadStructural input753 value337 value1 value2 = (output753, value342, value1))
    (child2374 : Flapjack.WordAlloc.removeDeadStructural input2374 value342 value1 value2 = (output2374, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2375 value337 value1 value2 = (output2375, value1100, value1) := by
  rw [input2375_def, output2375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child753]
  try dsimp only
  rw [child2374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output753_skip, output2374_skip]
  kernel_rfl

theorem node2376_cond_eq
    (child744 : Flapjack.WordAlloc.removeDeadStructural input744 value336 value1 value2 = (output744, value337, value1))
    (child2375 : Flapjack.WordAlloc.removeDeadStructural input2375 value337 value1 value2 = (output2375, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2376 value336 value1 value2 = (output2376, value1100, value1) := by
  rw [input2376_def, output2376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child744]
  try dsimp only
  rw [child2375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output744_skip, output2375_skip]
  kernel_rfl

theorem node2377_cond_eq
    (child743 : Flapjack.WordAlloc.removeDeadStructural input743 value336 value1 value2 = (output743, value336, value1))
    (child2376 : Flapjack.WordAlloc.removeDeadStructural input2376 value336 value1 value2 = (output2376, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2377 value336 value1 value2 = (output2377, value1100, value1) := by
  rw [input2377_def, output2377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child743]
  try dsimp only
  rw [child2376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output743_skip, output2376_skip]
  kernel_rfl

theorem node2378_cond_eq
    (child742 : Flapjack.WordAlloc.removeDeadStructural input742 value336 value1 value2 = (output742, value336, value1))
    (child2377 : Flapjack.WordAlloc.removeDeadStructural input2377 value336 value1 value2 = (output2377, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2378 value336 value1 value2 = (output2378, value1100, value1) := by
  rw [input2378_def, output2378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child742]
  try dsimp only
  rw [child2377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output742_skip, output2377_skip]
  kernel_rfl

theorem node2379_cond_eq
    (child741 : Flapjack.WordAlloc.removeDeadStructural input741 value333 value1 value2 = (output741, value336, value1))
    (child2378 : Flapjack.WordAlloc.removeDeadStructural input2378 value336 value1 value2 = (output2378, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2379 value333 value1 value2 = (output2379, value1100, value1) := by
  rw [input2379_def, output2379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child741]
  try dsimp only
  rw [child2378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output741_skip, output2378_skip]
  kernel_rfl

theorem node2380_cond_eq
    (child736 : Flapjack.WordAlloc.removeDeadStructural input736 value330 value1 value2 = (output736, value333, value1))
    (child2379 : Flapjack.WordAlloc.removeDeadStructural input2379 value333 value1 value2 = (output2379, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2380 value330 value1 value2 = (output2380, value1100, value1) := by
  rw [input2380_def, output2380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child736]
  try dsimp only
  rw [child2379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output736_skip, output2379_skip]
  kernel_rfl

theorem node2381_cond_eq
    (child731 : Flapjack.WordAlloc.removeDeadStructural input731 value326 value1 value2 = (output731, value330, value1))
    (child2380 : Flapjack.WordAlloc.removeDeadStructural input2380 value330 value1 value2 = (output2380, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2381 value326 value1 value2 = (output2381, value1100, value1) := by
  rw [input2381_def, output2381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child731]
  try dsimp only
  rw [child2380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output731_skip, output2380_skip]
  kernel_rfl

theorem node2382_cond_eq
    (child724 : Flapjack.WordAlloc.removeDeadStructural input724 value326 value1 value2 = (output724, value326, value1))
    (child2381 : Flapjack.WordAlloc.removeDeadStructural input2381 value326 value1 value2 = (output2381, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2382 value326 value1 value2 = (output2382, value1100, value1) := by
  rw [input2382_def, output2382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child724]
  try dsimp only
  rw [child2381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output724_skip, output2381_skip]
  kernel_rfl

theorem node2383_cond_eq
    (child723 : Flapjack.WordAlloc.removeDeadStructural input723 value326 value1 value2 = (output723, value326, value1))
    (child2382 : Flapjack.WordAlloc.removeDeadStructural input2382 value326 value1 value2 = (output2382, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2383 value326 value1 value2 = (output2383, value1100, value1) := by
  rw [input2383_def, output2383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child723]
  try dsimp only
  rw [child2382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output723_skip, output2382_skip]
  kernel_rfl

theorem node2384_cond_eq
    (child722 : Flapjack.WordAlloc.removeDeadStructural input722 value325 value1 value2 = (output722, value326, value1))
    (child2383 : Flapjack.WordAlloc.removeDeadStructural input2383 value326 value1 value2 = (output2383, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2384 value325 value1 value2 = (output2384, value1100, value1) := by
  rw [input2384_def, output2384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child722]
  try dsimp only
  rw [child2383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output722_skip, output2383_skip]
  kernel_rfl

theorem node2385_cond_eq
    (child721 : Flapjack.WordAlloc.removeDeadStructural input721 value324 value1 value2 = (output721, value325, value1))
    (child2384 : Flapjack.WordAlloc.removeDeadStructural input2384 value325 value1 value2 = (output2384, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2385 value324 value1 value2 = (output2385, value1100, value1) := by
  rw [input2385_def, output2385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child721]
  try dsimp only
  rw [child2384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output721_skip, output2384_skip]
  kernel_rfl

theorem node2386_cond_eq
    (child720 : Flapjack.WordAlloc.removeDeadStructural input720 value321 value1 value2 = (output720, value324, value1))
    (child2385 : Flapjack.WordAlloc.removeDeadStructural input2385 value324 value1 value2 = (output2385, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2386 value321 value1 value2 = (output2386, value1100, value1) := by
  rw [input2386_def, output2386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child720]
  try dsimp only
  rw [child2385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output720_skip, output2385_skip]
  kernel_rfl

theorem node2387_cond_eq
    (child715 : Flapjack.WordAlloc.removeDeadStructural input715 value320 value1 value2 = (output715, value321, value1))
    (child2386 : Flapjack.WordAlloc.removeDeadStructural input2386 value321 value1 value2 = (output2386, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2387 value320 value1 value2 = (output2387, value1100, value1) := by
  rw [input2387_def, output2387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child715]
  try dsimp only
  rw [child2386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output715_skip, output2386_skip]
  kernel_rfl

theorem node2388_cond_eq
    (child714 : Flapjack.WordAlloc.removeDeadStructural input714 value317 value1 value2 = (output714, value320, value1))
    (child2387 : Flapjack.WordAlloc.removeDeadStructural input2387 value320 value1 value2 = (output2387, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2388 value317 value1 value2 = (output2388, value1100, value1) := by
  rw [input2388_def, output2388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child714]
  try dsimp only
  rw [child2387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output714_skip, output2387_skip]
  kernel_rfl

theorem node2389_cond_eq
    (child709 : Flapjack.WordAlloc.removeDeadStructural input709 value316 value1 value2 = (output709, value317, value1))
    (child2388 : Flapjack.WordAlloc.removeDeadStructural input2388 value317 value1 value2 = (output2388, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2389 value316 value1 value2 = (output2389, value1100, value1) := by
  rw [input2389_def, output2389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child709]
  try dsimp only
  rw [child2388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output709_skip, output2388_skip]
  kernel_rfl

theorem node2390_cond_eq
    (child708 : Flapjack.WordAlloc.removeDeadStructural input708 value314 value1 value2 = (output708, value316, value1))
    (child2389 : Flapjack.WordAlloc.removeDeadStructural input2389 value316 value1 value2 = (output2389, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2390 value314 value1 value2 = (output2390, value1100, value1) := by
  rw [input2390_def, output2390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child708]
  try dsimp only
  rw [child2389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output708_skip, output2389_skip]
  kernel_rfl

theorem node2391_cond_eq
    (child705 : Flapjack.WordAlloc.removeDeadStructural input705 value313 value1 value2 = (output705, value314, value1))
    (child2390 : Flapjack.WordAlloc.removeDeadStructural input2390 value314 value1 value2 = (output2390, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2391 value313 value1 value2 = (output2391, value1100, value1) := by
  rw [input2391_def, output2391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child705]
  try dsimp only
  rw [child2390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output705_skip, output2390_skip]
  kernel_rfl

theorem node2392_cond_eq
    (child704 : Flapjack.WordAlloc.removeDeadStructural input704 value310 value1 value2 = (output704, value313, value1))
    (child2391 : Flapjack.WordAlloc.removeDeadStructural input2391 value313 value1 value2 = (output2391, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2392 value310 value1 value2 = (output2392, value1100, value1) := by
  rw [input2392_def, output2392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child704]
  try dsimp only
  rw [child2391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output704_skip, output2391_skip]
  kernel_rfl

theorem node2393_cond_eq
    (child699 : Flapjack.WordAlloc.removeDeadStructural input699 value309 value1 value2 = (output699, value310, value1))
    (child2392 : Flapjack.WordAlloc.removeDeadStructural input2392 value310 value1 value2 = (output2392, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2393 value309 value1 value2 = (output2393, value1100, value1) := by
  rw [input2393_def, output2393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child699]
  try dsimp only
  rw [child2392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output699_skip, output2392_skip]
  kernel_rfl

theorem node2394_cond_eq
    (child698 : Flapjack.WordAlloc.removeDeadStructural input698 value306 value1 value2 = (output698, value309, value1))
    (child2393 : Flapjack.WordAlloc.removeDeadStructural input2393 value309 value1 value2 = (output2393, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2394 value306 value1 value2 = (output2394, value1100, value1) := by
  rw [input2394_def, output2394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child698]
  try dsimp only
  rw [child2393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output698_skip, output2393_skip]
  kernel_rfl

theorem node2395_cond_eq
    (child693 : Flapjack.WordAlloc.removeDeadStructural input693 value305 value1 value2 = (output693, value306, value1))
    (child2394 : Flapjack.WordAlloc.removeDeadStructural input2394 value306 value1 value2 = (output2394, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2395 value305 value1 value2 = (output2395, value1100, value1) := by
  rw [input2395_def, output2395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child693]
  try dsimp only
  rw [child2394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output693_skip, output2394_skip]
  kernel_rfl

theorem node2396_cond_eq
    (child692 : Flapjack.WordAlloc.removeDeadStructural input692 value305 value1 value2 = (output692, value305, value1))
    (child2395 : Flapjack.WordAlloc.removeDeadStructural input2395 value305 value1 value2 = (output2395, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2396 value305 value1 value2 = (output2396, value1100, value1) := by
  rw [input2396_def, output2396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child692]
  try dsimp only
  rw [child2395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output692_skip, output2395_skip]
  kernel_rfl

theorem node2397_cond_eq
    (child691 : Flapjack.WordAlloc.removeDeadStructural input691 value305 value1 value2 = (output691, value305, value1))
    (child2396 : Flapjack.WordAlloc.removeDeadStructural input2396 value305 value1 value2 = (output2396, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2397 value305 value1 value2 = (output2397, value1100, value1) := by
  rw [input2397_def, output2397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child691]
  try dsimp only
  rw [child2396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output691_skip, output2396_skip]
  kernel_rfl

theorem node2398_cond_eq
    (child690 : Flapjack.WordAlloc.removeDeadStructural input690 value302 value1 value2 = (output690, value305, value1))
    (child2397 : Flapjack.WordAlloc.removeDeadStructural input2397 value305 value1 value2 = (output2397, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2398 value302 value1 value2 = (output2398, value1100, value1) := by
  rw [input2398_def, output2398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child690]
  try dsimp only
  rw [child2397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output690_skip, output2397_skip]
  kernel_rfl

theorem node2399_cond_eq
    (child685 : Flapjack.WordAlloc.removeDeadStructural input685 value299 value1 value2 = (output685, value302, value1))
    (child2398 : Flapjack.WordAlloc.removeDeadStructural input2398 value302 value1 value2 = (output2398, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2399 value299 value1 value2 = (output2399, value1100, value1) := by
  rw [input2399_def, output2399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child685]
  try dsimp only
  rw [child2398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output685_skip, output2398_skip]
  kernel_rfl

theorem node2400_cond_eq
    (child680 : Flapjack.WordAlloc.removeDeadStructural input680 value295 value1 value2 = (output680, value299, value1))
    (child2399 : Flapjack.WordAlloc.removeDeadStructural input2399 value299 value1 value2 = (output2399, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2400 value295 value1 value2 = (output2400, value1100, value1) := by
  rw [input2400_def, output2400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child680]
  try dsimp only
  rw [child2399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output680_skip, output2399_skip]
  kernel_rfl

theorem node2401_cond_eq
    (child673 : Flapjack.WordAlloc.removeDeadStructural input673 value295 value1 value2 = (output673, value295, value1))
    (child2400 : Flapjack.WordAlloc.removeDeadStructural input2400 value295 value1 value2 = (output2400, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2401 value295 value1 value2 = (output2401, value1100, value1) := by
  rw [input2401_def, output2401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child673]
  try dsimp only
  rw [child2400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output673_skip, output2400_skip]
  kernel_rfl

theorem node2402_cond_eq
    (child672 : Flapjack.WordAlloc.removeDeadStructural input672 value295 value1 value2 = (output672, value295, value1))
    (child2401 : Flapjack.WordAlloc.removeDeadStructural input2401 value295 value1 value2 = (output2401, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2402 value295 value1 value2 = (output2402, value1100, value1) := by
  rw [input2402_def, output2402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child672]
  try dsimp only
  rw [child2401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output672_skip, output2401_skip]
  kernel_rfl

theorem node2403_cond_eq
    (child671 : Flapjack.WordAlloc.removeDeadStructural input671 value294 value1 value2 = (output671, value295, value1))
    (child2402 : Flapjack.WordAlloc.removeDeadStructural input2402 value295 value1 value2 = (output2402, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2403 value294 value1 value2 = (output2403, value1100, value1) := by
  rw [input2403_def, output2403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child671]
  try dsimp only
  rw [child2402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output671_skip, output2402_skip]
  kernel_rfl

theorem node2404_cond_eq
    (child670 : Flapjack.WordAlloc.removeDeadStructural input670 value293 value1 value2 = (output670, value294, value1))
    (child2403 : Flapjack.WordAlloc.removeDeadStructural input2403 value294 value1 value2 = (output2403, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2404 value293 value1 value2 = (output2404, value1100, value1) := by
  rw [input2404_def, output2404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child670]
  try dsimp only
  rw [child2403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output670_skip, output2403_skip]
  kernel_rfl

theorem node2405_cond_eq
    (child669 : Flapjack.WordAlloc.removeDeadStructural input669 value290 value1 value2 = (output669, value293, value1))
    (child2404 : Flapjack.WordAlloc.removeDeadStructural input2404 value293 value1 value2 = (output2404, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2405 value290 value1 value2 = (output2405, value1100, value1) := by
  rw [input2405_def, output2405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child669]
  try dsimp only
  rw [child2404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output669_skip, output2404_skip]
  kernel_rfl

theorem node2406_cond_eq
    (child664 : Flapjack.WordAlloc.removeDeadStructural input664 value289 value1 value2 = (output664, value290, value1))
    (child2405 : Flapjack.WordAlloc.removeDeadStructural input2405 value290 value1 value2 = (output2405, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2406 value289 value1 value2 = (output2406, value1100, value1) := by
  rw [input2406_def, output2406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child664]
  try dsimp only
  rw [child2405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output664_skip, output2405_skip]
  kernel_rfl

theorem node2407_cond_eq
    (child663 : Flapjack.WordAlloc.removeDeadStructural input663 value286 value1 value2 = (output663, value289, value1))
    (child2406 : Flapjack.WordAlloc.removeDeadStructural input2406 value289 value1 value2 = (output2406, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2407 value286 value1 value2 = (output2407, value1100, value1) := by
  rw [input2407_def, output2407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child663]
  try dsimp only
  rw [child2406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output663_skip, output2406_skip]
  kernel_rfl

theorem node2408_cond_eq
    (child658 : Flapjack.WordAlloc.removeDeadStructural input658 value285 value1 value2 = (output658, value286, value1))
    (child2407 : Flapjack.WordAlloc.removeDeadStructural input2407 value286 value1 value2 = (output2407, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2408 value285 value1 value2 = (output2408, value1100, value1) := by
  rw [input2408_def, output2408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child658]
  try dsimp only
  rw [child2407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output658_skip, output2407_skip]
  kernel_rfl

theorem node2409_cond_eq
    (child657 : Flapjack.WordAlloc.removeDeadStructural input657 value283 value1 value2 = (output657, value285, value1))
    (child2408 : Flapjack.WordAlloc.removeDeadStructural input2408 value285 value1 value2 = (output2408, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2409 value283 value1 value2 = (output2409, value1100, value1) := by
  rw [input2409_def, output2409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child657]
  try dsimp only
  rw [child2408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output657_skip, output2408_skip]
  kernel_rfl

theorem node2410_cond_eq
    (child654 : Flapjack.WordAlloc.removeDeadStructural input654 value282 value1 value2 = (output654, value283, value1))
    (child2409 : Flapjack.WordAlloc.removeDeadStructural input2409 value283 value1 value2 = (output2409, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2410 value282 value1 value2 = (output2410, value1100, value1) := by
  rw [input2410_def, output2410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child654]
  try dsimp only
  rw [child2409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output654_skip, output2409_skip]
  kernel_rfl

theorem node2411_cond_eq
    (child653 : Flapjack.WordAlloc.removeDeadStructural input653 value281 value1 value2 = (output653, value282, value1))
    (child2410 : Flapjack.WordAlloc.removeDeadStructural input2410 value282 value1 value2 = (output2410, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2411 value281 value1 value2 = (output2411, value1100, value1) := by
  rw [input2411_def, output2411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child653]
  try dsimp only
  rw [child2410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output653_skip, output2410_skip]
  kernel_rfl

theorem node2412_cond_eq
    (child652 : Flapjack.WordAlloc.removeDeadStructural input652 value280 value1 value2 = (output652, value281, value1))
    (child2411 : Flapjack.WordAlloc.removeDeadStructural input2411 value281 value1 value2 = (output2411, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2412 value280 value1 value2 = (output2412, value1100, value1) := by
  rw [input2412_def, output2412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child652]
  try dsimp only
  rw [child2411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output652_skip, output2411_skip]
  kernel_rfl

theorem node2413_cond_eq
    (child651 : Flapjack.WordAlloc.removeDeadStructural input651 value279 value1 value2 = (output651, value280, value1))
    (child2412 : Flapjack.WordAlloc.removeDeadStructural input2412 value280 value1 value2 = (output2412, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2413 value279 value1 value2 = (output2413, value1100, value1) := by
  rw [input2413_def, output2413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child651]
  try dsimp only
  rw [child2412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output651_skip, output2412_skip]
  kernel_rfl

theorem node2414_cond_eq
    (child650 : Flapjack.WordAlloc.removeDeadStructural input650 value278 value1 value2 = (output650, value279, value1))
    (child2413 : Flapjack.WordAlloc.removeDeadStructural input2413 value279 value1 value2 = (output2413, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2414 value278 value1 value2 = (output2414, value1100, value1) := by
  rw [input2414_def, output2414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child650]
  try dsimp only
  rw [child2413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output650_skip, output2413_skip]
  kernel_rfl

theorem node2415_cond_eq
    (child649 : Flapjack.WordAlloc.removeDeadStructural input649 value277 value1 value2 = (output649, value278, value1))
    (child2414 : Flapjack.WordAlloc.removeDeadStructural input2414 value278 value1 value2 = (output2414, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2415 value277 value1 value2 = (output2415, value1100, value1) := by
  rw [input2415_def, output2415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child649]
  try dsimp only
  rw [child2414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output649_skip, output2414_skip]
  kernel_rfl

theorem node2416_cond_eq
    (child648 : Flapjack.WordAlloc.removeDeadStructural input648 value276 value1 value2 = (output648, value277, value1))
    (child2415 : Flapjack.WordAlloc.removeDeadStructural input2415 value277 value1 value2 = (output2415, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2416 value276 value1 value2 = (output2416, value1100, value1) := by
  rw [input2416_def, output2416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child648]
  try dsimp only
  rw [child2415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output648_skip, output2415_skip]
  kernel_rfl

theorem node2417_cond_eq
    (child647 : Flapjack.WordAlloc.removeDeadStructural input647 value273 value1 value2 = (output647, value276, value1))
    (child2416 : Flapjack.WordAlloc.removeDeadStructural input2416 value276 value1 value2 = (output2416, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2417 value273 value1 value2 = (output2417, value1100, value1) := by
  rw [input2417_def, output2417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child647]
  try dsimp only
  rw [child2416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output647_skip, output2416_skip]
  kernel_rfl

theorem node2418_cond_eq
    (child642 : Flapjack.WordAlloc.removeDeadStructural input642 value270 value1 value2 = (output642, value273, value1))
    (child2417 : Flapjack.WordAlloc.removeDeadStructural input2417 value273 value1 value2 = (output2417, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2418 value270 value1 value2 = (output2418, value1100, value1) := by
  rw [input2418_def, output2418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child642]
  try dsimp only
  rw [child2417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output642_skip, output2417_skip]
  kernel_rfl

theorem node2419_cond_eq
    (child637 : Flapjack.WordAlloc.removeDeadStructural input637 value266 value1 value2 = (output637, value270, value1))
    (child2418 : Flapjack.WordAlloc.removeDeadStructural input2418 value270 value1 value2 = (output2418, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2419 value266 value1 value2 = (output2419, value1100, value1) := by
  rw [input2419_def, output2419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child637]
  try dsimp only
  rw [child2418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output637_skip, output2418_skip]
  kernel_rfl

theorem node2420_cond_eq
    (child630 : Flapjack.WordAlloc.removeDeadStructural input630 value265 value1 value2 = (output630, value266, value1))
    (child2419 : Flapjack.WordAlloc.removeDeadStructural input2419 value266 value1 value2 = (output2419, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2420 value265 value1 value2 = (output2420, value1100, value1) := by
  rw [input2420_def, output2420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child630]
  try dsimp only
  rw [child2419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output630_skip, output2419_skip]
  kernel_rfl

theorem node2421_cond_eq
    (child629 : Flapjack.WordAlloc.removeDeadStructural input629 value264 value1 value2 = (output629, value265, value1))
    (child2420 : Flapjack.WordAlloc.removeDeadStructural input2420 value265 value1 value2 = (output2420, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2421 value264 value1 value2 = (output2421, value1100, value1) := by
  rw [input2421_def, output2421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child629]
  try dsimp only
  rw [child2420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output629_skip, output2420_skip]
  kernel_rfl

theorem node2422_cond_eq
    (child628 : Flapjack.WordAlloc.removeDeadStructural input628 value263 value1 value2 = (output628, value264, value1))
    (child2421 : Flapjack.WordAlloc.removeDeadStructural input2421 value264 value1 value2 = (output2421, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2422 value263 value1 value2 = (output2422, value1100, value1) := by
  rw [input2422_def, output2422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child628]
  try dsimp only
  rw [child2421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output628_skip, output2421_skip]
  kernel_rfl

theorem node2423_cond_eq
    (child627 : Flapjack.WordAlloc.removeDeadStructural input627 value250 value1 value2 = (output627, value263, value1))
    (child2422 : Flapjack.WordAlloc.removeDeadStructural input2422 value263 value1 value2 = (output2422, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2423 value250 value1 value2 = (output2423, value1100, value1) := by
  rw [input2423_def, output2423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child627]
  try dsimp only
  rw [child2422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output627_skip, output2422_skip]
  kernel_rfl

theorem node2424_cond_eq
    (child602 : Flapjack.WordAlloc.removeDeadStructural input602 value237 value1 value2 = (output602, value250, value1))
    (child2423 : Flapjack.WordAlloc.removeDeadStructural input2423 value250 value1 value2 = (output2423, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2424 value237 value1 value2 = (output2424, value1100, value1) := by
  rw [input2424_def, output2424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child602]
  try dsimp only
  rw [child2423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output602_skip, output2423_skip]
  kernel_rfl

theorem node2425_cond_eq
    (child577 : Flapjack.WordAlloc.removeDeadStructural input577 value226 value1 value2 = (output577, value237, value1))
    (child2424 : Flapjack.WordAlloc.removeDeadStructural input2424 value237 value1 value2 = (output2424, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2425 value226 value1 value2 = (output2425, value1100, value1) := by
  rw [input2425_def, output2425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child577]
  try dsimp only
  rw [child2424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output577_skip, output2424_skip]
  kernel_rfl

theorem node2426_cond_eq
    (child556 : Flapjack.WordAlloc.removeDeadStructural input556 value209 value1 value2 = (output556, value226, value1))
    (child2425 : Flapjack.WordAlloc.removeDeadStructural input2425 value226 value1 value2 = (output2425, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2426 value209 value1 value2 = (output2426, value1100, value1) := by
  rw [input2426_def, output2426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child556]
  try dsimp only
  rw [child2425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output556_skip, output2425_skip]
  kernel_rfl

theorem node2427_cond_eq
    (child523 : Flapjack.WordAlloc.removeDeadStructural input523 value194 value1 value2 = (output523, value209, value1))
    (child2426 : Flapjack.WordAlloc.removeDeadStructural input2426 value209 value1 value2 = (output2426, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2427 value194 value1 value2 = (output2427, value1100, value1) := by
  rw [input2427_def, output2427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child523]
  try dsimp only
  rw [child2426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output523_skip, output2426_skip]
  kernel_rfl

theorem node2428_cond_eq
    (child494 : Flapjack.WordAlloc.removeDeadStructural input494 value179 value1 value2 = (output494, value194, value1))
    (child2427 : Flapjack.WordAlloc.removeDeadStructural input2427 value194 value1 value2 = (output2427, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2428 value179 value1 value2 = (output2428, value1100, value1) := by
  rw [input2428_def, output2428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child494]
  try dsimp only
  rw [child2427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output494_skip, output2427_skip]
  kernel_rfl

theorem node2429_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value162 value1 value2 = (output465, value179, value1))
    (child2428 : Flapjack.WordAlloc.removeDeadStructural input2428 value179 value1 value2 = (output2428, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2429 value162 value1 value2 = (output2429, value1100, value1) := by
  rw [input2429_def, output2429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child2428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output2428_skip]
  kernel_rfl

theorem node2430_cond_eq
    (child432 : Flapjack.WordAlloc.removeDeadStructural input432 value145 value1 value2 = (output432, value162, value1))
    (child2429 : Flapjack.WordAlloc.removeDeadStructural input2429 value162 value1 value2 = (output2429, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2430 value145 value1 value2 = (output2430, value1100, value1) := by
  rw [input2430_def, output2430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child432]
  try dsimp only
  rw [child2429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output432_skip, output2429_skip]
  kernel_rfl

theorem node2431_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value142 value1 value2 = (output399, value145, value1))
    (child2430 : Flapjack.WordAlloc.removeDeadStructural input2430 value145 value1 value2 = (output2430, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2431 value142 value1 value2 = (output2431, value1100, value1) := by
  rw [input2431_def, output2431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child2430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output2430_skip]
  kernel_rfl

theorem node2432_cond_eq
    (child394 : Flapjack.WordAlloc.removeDeadStructural input394 value140 value1 value2 = (output394, value142, value1))
    (child2431 : Flapjack.WordAlloc.removeDeadStructural input2431 value142 value1 value2 = (output2431, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2432 value140 value1 value2 = (output2432, value1100, value1) := by
  rw [input2432_def, output2432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child394]
  try dsimp only
  rw [child2431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output394_skip, output2431_skip]
  kernel_rfl

theorem node2433_cond_eq
    (child391 : Flapjack.WordAlloc.removeDeadStructural input391 value137 value1 value2 = (output391, value140, value1))
    (child2432 : Flapjack.WordAlloc.removeDeadStructural input2432 value140 value1 value2 = (output2432, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2433 value137 value1 value2 = (output2433, value1100, value1) := by
  rw [input2433_def, output2433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child391]
  try dsimp only
  rw [child2432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output391_skip, output2432_skip]
  kernel_rfl

theorem node2434_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value134 value1 value2 = (output386, value137, value1))
    (child2433 : Flapjack.WordAlloc.removeDeadStructural input2433 value137 value1 value2 = (output2433, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2434 value134 value1 value2 = (output2434, value1100, value1) := by
  rw [input2434_def, output2434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child2433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output2433_skip]
  kernel_rfl

theorem node2435_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value132 value1 value2 = (output381, value134, value1))
    (child2434 : Flapjack.WordAlloc.removeDeadStructural input2434 value134 value1 value2 = (output2434, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2435 value132 value1 value2 = (output2435, value1100, value1) := by
  rw [input2435_def, output2435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child2434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output2434_skip]
  kernel_rfl

theorem node2436_cond_eq
    (child378 : Flapjack.WordAlloc.removeDeadStructural input378 value129 value1 value2 = (output378, value132, value1))
    (child2435 : Flapjack.WordAlloc.removeDeadStructural input2435 value132 value1 value2 = (output2435, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2436 value129 value1 value2 = (output2436, value1100, value1) := by
  rw [input2436_def, output2436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child378]
  try dsimp only
  rw [child2435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output378_skip, output2435_skip]
  kernel_rfl

theorem node2437_cond_eq
    (child373 : Flapjack.WordAlloc.removeDeadStructural input373 value126 value1 value2 = (output373, value129, value1))
    (child2436 : Flapjack.WordAlloc.removeDeadStructural input2436 value129 value1 value2 = (output2436, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2437 value126 value1 value2 = (output2437, value1100, value1) := by
  rw [input2437_def, output2437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child373]
  try dsimp only
  rw [child2436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output373_skip, output2436_skip]
  kernel_rfl

theorem node2438_cond_eq
    (child368 : Flapjack.WordAlloc.removeDeadStructural input368 value124 value1 value2 = (output368, value126, value1))
    (child2437 : Flapjack.WordAlloc.removeDeadStructural input2437 value126 value1 value2 = (output2437, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2438 value124 value1 value2 = (output2438, value1100, value1) := by
  rw [input2438_def, output2438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child368]
  try dsimp only
  rw [child2437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output368_skip, output2437_skip]
  kernel_rfl

theorem node2439_cond_eq
    (child365 : Flapjack.WordAlloc.removeDeadStructural input365 value121 value1 value2 = (output365, value124, value1))
    (child2438 : Flapjack.WordAlloc.removeDeadStructural input2438 value124 value1 value2 = (output2438, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2439 value121 value1 value2 = (output2439, value1100, value1) := by
  rw [input2439_def, output2439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child365]
  try dsimp only
  rw [child2438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output365_skip, output2438_skip]
  kernel_rfl

theorem node2440_cond_eq
    (child360 : Flapjack.WordAlloc.removeDeadStructural input360 value118 value1 value2 = (output360, value121, value1))
    (child2439 : Flapjack.WordAlloc.removeDeadStructural input2439 value121 value1 value2 = (output2439, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2440 value118 value1 value2 = (output2440, value1100, value1) := by
  rw [input2440_def, output2440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child360]
  try dsimp only
  rw [child2439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output360_skip, output2439_skip]
  kernel_rfl

theorem node2441_cond_eq
    (child355 : Flapjack.WordAlloc.removeDeadStructural input355 value116 value1 value2 = (output355, value118, value1))
    (child2440 : Flapjack.WordAlloc.removeDeadStructural input2440 value118 value1 value2 = (output2440, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2441 value116 value1 value2 = (output2441, value1100, value1) := by
  rw [input2441_def, output2441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child355]
  try dsimp only
  rw [child2440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output355_skip, output2440_skip]
  kernel_rfl

theorem node2442_cond_eq
    (child352 : Flapjack.WordAlloc.removeDeadStructural input352 value113 value1 value2 = (output352, value116, value1))
    (child2441 : Flapjack.WordAlloc.removeDeadStructural input2441 value116 value1 value2 = (output2441, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2442 value113 value1 value2 = (output2442, value1100, value1) := by
  rw [input2442_def, output2442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child352]
  try dsimp only
  rw [child2441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output352_skip, output2441_skip]
  kernel_rfl

theorem node2443_cond_eq
    (child347 : Flapjack.WordAlloc.removeDeadStructural input347 value110 value1 value2 = (output347, value113, value1))
    (child2442 : Flapjack.WordAlloc.removeDeadStructural input2442 value113 value1 value2 = (output2442, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2443 value110 value1 value2 = (output2443, value1100, value1) := by
  rw [input2443_def, output2443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child347]
  try dsimp only
  rw [child2442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output347_skip, output2442_skip]
  kernel_rfl

theorem node2444_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value108 value1 value2 = (output342, value110, value1))
    (child2443 : Flapjack.WordAlloc.removeDeadStructural input2443 value110 value1 value2 = (output2443, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2444 value108 value1 value2 = (output2444, value1100, value1) := by
  rw [input2444_def, output2444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child2443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output2443_skip]
  kernel_rfl

theorem node2445_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value105 value1 value2 = (output339, value108, value1))
    (child2444 : Flapjack.WordAlloc.removeDeadStructural input2444 value108 value1 value2 = (output2444, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2445 value105 value1 value2 = (output2445, value1100, value1) := by
  rw [input2445_def, output2445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child2444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output2444_skip]
  kernel_rfl

theorem node2446_cond_eq
    (child334 : Flapjack.WordAlloc.removeDeadStructural input334 value102 value1 value2 = (output334, value105, value1))
    (child2445 : Flapjack.WordAlloc.removeDeadStructural input2445 value105 value1 value2 = (output2445, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2446 value102 value1 value2 = (output2446, value1100, value1) := by
  rw [input2446_def, output2446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child334]
  try dsimp only
  rw [child2445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output334_skip, output2445_skip]
  kernel_rfl

theorem node2447_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value100 value1 value2 = (output329, value102, value1))
    (child2446 : Flapjack.WordAlloc.removeDeadStructural input2446 value102 value1 value2 = (output2446, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2447 value100 value1 value2 = (output2447, value1100, value1) := by
  rw [input2447_def, output2447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child2446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output2446_skip]
  kernel_rfl

theorem node2448_cond_eq
    (child326 : Flapjack.WordAlloc.removeDeadStructural input326 value97 value1 value2 = (output326, value100, value1))
    (child2447 : Flapjack.WordAlloc.removeDeadStructural input2447 value100 value1 value2 = (output2447, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2448 value97 value1 value2 = (output2448, value1100, value1) := by
  rw [input2448_def, output2448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child326]
  try dsimp only
  rw [child2447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output326_skip, output2447_skip]
  kernel_rfl

theorem node2449_cond_eq
    (child321 : Flapjack.WordAlloc.removeDeadStructural input321 value94 value1 value2 = (output321, value97, value1))
    (child2448 : Flapjack.WordAlloc.removeDeadStructural input2448 value97 value1 value2 = (output2448, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2449 value94 value1 value2 = (output2449, value1100, value1) := by
  rw [input2449_def, output2449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child321]
  try dsimp only
  rw [child2448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output321_skip, output2448_skip]
  kernel_rfl

theorem node2450_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value92 value1 value2 = (output316, value94, value1))
    (child2449 : Flapjack.WordAlloc.removeDeadStructural input2449 value94 value1 value2 = (output2449, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2450 value92 value1 value2 = (output2450, value1100, value1) := by
  rw [input2450_def, output2450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child2449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output2449_skip]
  kernel_rfl

theorem node2451_cond_eq
    (child313 : Flapjack.WordAlloc.removeDeadStructural input313 value89 value1 value2 = (output313, value92, value1))
    (child2450 : Flapjack.WordAlloc.removeDeadStructural input2450 value92 value1 value2 = (output2450, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2451 value89 value1 value2 = (output2451, value1100, value1) := by
  rw [input2451_def, output2451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child313]
  try dsimp only
  rw [child2450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output313_skip, output2450_skip]
  kernel_rfl

theorem node2452_cond_eq
    (child308 : Flapjack.WordAlloc.removeDeadStructural input308 value86 value1 value2 = (output308, value89, value1))
    (child2451 : Flapjack.WordAlloc.removeDeadStructural input2451 value89 value1 value2 = (output2451, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2452 value86 value1 value2 = (output2452, value1100, value1) := by
  rw [input2452_def, output2452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child308]
  try dsimp only
  rw [child2451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output308_skip, output2451_skip]
  kernel_rfl

theorem node2453_cond_eq
    (child303 : Flapjack.WordAlloc.removeDeadStructural input303 value84 value1 value2 = (output303, value86, value1))
    (child2452 : Flapjack.WordAlloc.removeDeadStructural input2452 value86 value1 value2 = (output2452, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2453 value84 value1 value2 = (output2453, value1100, value1) := by
  rw [input2453_def, output2453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child303]
  try dsimp only
  rw [child2452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output303_skip, output2452_skip]
  kernel_rfl

theorem node2454_cond_eq
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value80 value1 value2 = (output300, value84, value1))
    (child2453 : Flapjack.WordAlloc.removeDeadStructural input2453 value84 value1 value2 = (output2453, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2454 value80 value1 value2 = (output2454, value1100, value1) := by
  rw [input2454_def, output2454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child300]
  try dsimp only
  rw [child2453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output300_skip, output2453_skip]
  kernel_rfl

theorem node2455_cond_eq
    (child293 : Flapjack.WordAlloc.removeDeadStructural input293 value76 value1 value2 = (output293, value80, value1))
    (child2454 : Flapjack.WordAlloc.removeDeadStructural input2454 value80 value1 value2 = (output2454, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2455 value76 value1 value2 = (output2455, value1100, value1) := by
  rw [input2455_def, output2455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child293]
  try dsimp only
  rw [child2454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output293_skip, output2454_skip]
  kernel_rfl

theorem node2456_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value72 value1 value2 = (output286, value76, value1))
    (child2455 : Flapjack.WordAlloc.removeDeadStructural input2455 value76 value1 value2 = (output2455, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2456 value72 value1 value2 = (output2456, value1100, value1) := by
  rw [input2456_def, output2456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child2455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output2455_skip]
  kernel_rfl

theorem node2457_cond_eq
    (child279 : Flapjack.WordAlloc.removeDeadStructural input279 value68 value1 value2 = (output279, value72, value1))
    (child2456 : Flapjack.WordAlloc.removeDeadStructural input2456 value72 value1 value2 = (output2456, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2457 value68 value1 value2 = (output2457, value1100, value1) := by
  rw [input2457_def, output2457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child279]
  try dsimp only
  rw [child2456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output279_skip, output2456_skip]
  kernel_rfl

theorem node2458_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value68 value1 value2 = (output272, value68, value1))
    (child2457 : Flapjack.WordAlloc.removeDeadStructural input2457 value68 value1 value2 = (output2457, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2458 value68 value1 value2 = (output2458, value1100, value1) := by
  rw [input2458_def, output2458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child2457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output2457_skip]
  kernel_rfl

theorem node2459_cond_eq
    (child271 : Flapjack.WordAlloc.removeDeadStructural input271 value43 value1 value2 = (output271, value68, value1))
    (child2458 : Flapjack.WordAlloc.removeDeadStructural input2458 value68 value1 value2 = (output2458, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2459 value43 value1 value2 = (output2459, value1100, value1) := by
  rw [input2459_def, output2459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child271]
  try dsimp only
  rw [child2458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output271_skip, output2458_skip]
  kernel_rfl

theorem node2460_cond_eq
    (child155 : Flapjack.WordAlloc.removeDeadStructural input155 value43 value1 value2 = (output155, value43, value1))
    (child2459 : Flapjack.WordAlloc.removeDeadStructural input2459 value43 value1 value2 = (output2459, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2460 value43 value1 value2 = (output2460, value1100, value1) := by
  rw [input2460_def, output2460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child155]
  try dsimp only
  rw [child2459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output155_skip, output2459_skip]
  kernel_rfl

theorem node2461_cond_eq
    (child154 : Flapjack.WordAlloc.removeDeadStructural input154 value43 value1 value2 = (output154, value43, value1))
    (child2460 : Flapjack.WordAlloc.removeDeadStructural input2460 value43 value1 value2 = (output2460, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2461 value43 value1 value2 = (output2461, value1100, value1) := by
  rw [input2461_def, output2461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child154]
  try dsimp only
  rw [child2460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output154_skip, output2460_skip]
  kernel_rfl

theorem node2462_cond_eq
    (child153 : Flapjack.WordAlloc.removeDeadStructural input153 value8 value1 value2 = (output153, value43, value1))
    (child2461 : Flapjack.WordAlloc.removeDeadStructural input2461 value43 value1 value2 = (output2461, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2462 value8 value1 value2 = (output2462, value1100, value1) := by
  rw [input2462_def, output2462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child153]
  try dsimp only
  rw [child2461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output153_skip, output2461_skip]
  kernel_rfl

theorem node2463_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value8 value1 value2 = (output7, value8, value1))
    (child2462 : Flapjack.WordAlloc.removeDeadStructural input2462 value8 value1 value2 = (output2462, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2463 value8 value1 value2 = (output2463, value1100, value1) := by
  rw [input2463_def, output2463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child2462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output2462_skip]
  kernel_rfl

theorem node2464_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value7 value1 value2 = (output6, value8, value1))
    (child2463 : Flapjack.WordAlloc.removeDeadStructural input2463 value8 value1 value2 = (output2463, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2464 value7 value1 value2 = (output2464, value1100, value1) := by
  rw [input2464_def, output2464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child2463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output2463_skip]
  kernel_rfl

theorem node2465_cond_eq
    (child5 : Flapjack.WordAlloc.removeDeadStructural input5 value6 value1 value2 = (output5, value7, value1))
    (child2464 : Flapjack.WordAlloc.removeDeadStructural input2464 value7 value1 value2 = (output2464, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2465 value6 value1 value2 = (output2465, value1100, value1) := by
  rw [input2465_def, output2465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5]
  try dsimp only
  rw [child2464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5_skip, output2464_skip]
  kernel_rfl

theorem node2466_cond_eq
    (child4 : Flapjack.WordAlloc.removeDeadStructural input4 value5 value1 value2 = (output4, value6, value1))
    (child2465 : Flapjack.WordAlloc.removeDeadStructural input2465 value6 value1 value2 = (output2465, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2466 value5 value1 value2 = (output2466, value1100, value1) := by
  rw [input2466_def, output2466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4]
  try dsimp only
  rw [child2465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4_skip, output2465_skip]
  kernel_rfl

theorem node2467_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child2466 : Flapjack.WordAlloc.removeDeadStructural input2466 value5 value1 value2 = (output2466, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2467 value4 value1 value2 = (output2467, value1100, value1) := by
  rw [input2467_def, output2467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child2466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output2466_skip]
  kernel_rfl

theorem node2468_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child2467 : Flapjack.WordAlloc.removeDeadStructural input2467 value4 value1 value2 = (output2467, value1100, value1)) : Flapjack.WordAlloc.removeDeadStructural input2468 value0 value1 value2 = (output2468, value1100, value1) := by
  rw [input2468_def, output2468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child2467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output2467_skip]
  kernel_rfl

theorem node2469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input2469 value1100 value1 value2 = (output2469, value3, value1) := by
  rw [input2469_def, output2469_def]
  kernel_rfl

theorem node2470_cond_eq
    (child2468 : Flapjack.WordAlloc.removeDeadStructural input2468 value0 value1 value2 = (output2468, value1100, value1))
    (child2469 : Flapjack.WordAlloc.removeDeadStructural input2469 value1100 value1 value2 = (output2469, value3, value1)) : Flapjack.WordAlloc.removeDeadStructural input2470 value0 value1 value2 = (output2470, value3, value1) := by
  rw [input2470_def, output2470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2468]
  try dsimp only
  rw [child2469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2468_skip, output2469_skip]
  kernel_rfl

#print axioms node2470_cond_eq
end InitECandidate.Proofs.DeadStages647.Parallel
