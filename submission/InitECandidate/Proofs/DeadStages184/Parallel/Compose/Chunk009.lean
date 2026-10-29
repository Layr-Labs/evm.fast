import InitECandidate.Proofs.DeadStages184.Parallel.Conditional.Chunk009
import InitECandidate.Proofs.DeadStages184.Parallel.Compose.Chunk008
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages184.Parallel
theorem node2304_eq : Flapjack.WordAlloc.removeDeadStructural input2304 value1032 value1 value2 = (output2304, value1033, value1) :=
  node2304_cond_eq

theorem node2305_eq : Flapjack.WordAlloc.removeDeadStructural input2305 value1033 value1 value2 = (output2305, value312, value1) :=
  node2305_cond_eq

theorem node2306_eq : Flapjack.WordAlloc.removeDeadStructural input2306 value312 value1 value2 = (output2306, value1034, value1) :=
  node2306_cond_eq

theorem node2307_eq : Flapjack.WordAlloc.removeDeadStructural input2307 value1033 value1 value2 = (output2307, value1034, value1) :=
  node2307_cond_eq node2305_eq node2306_eq

theorem node2308_eq : Flapjack.WordAlloc.removeDeadStructural input2308 value1034 value1 value2 = (output2308, value1035, value1) :=
  node2308_cond_eq

theorem node2309_eq : Flapjack.WordAlloc.removeDeadStructural input2309 value1035 value1 value2 = (output2309, value1036, value1) :=
  node2309_cond_eq

theorem node2310_eq : Flapjack.WordAlloc.removeDeadStructural input2310 value1034 value1 value2 = (output2310, value1036, value1) :=
  node2310_cond_eq node2308_eq node2309_eq

theorem node2311_eq : Flapjack.WordAlloc.removeDeadStructural input2311 value1033 value1 value2 = (output2311, value1036, value1) :=
  node2311_cond_eq node2307_eq node2310_eq

theorem node2312_eq : Flapjack.WordAlloc.removeDeadStructural input2312 value1032 value1 value2 = (output2312, value1036, value1) :=
  node2312_cond_eq node2304_eq node2311_eq

theorem node2313_eq : Flapjack.WordAlloc.removeDeadStructural input2313 value117 value1 value2 = (output2313, value1036, value1) :=
  node2313_cond_eq node2303_eq node2312_eq

theorem node2314_eq : Flapjack.WordAlloc.removeDeadStructural input2314 value117 value1 value2 = (output2314, value1036, value1) :=
  node2314_cond_eq node306_eq node2313_eq

theorem node2315_eq : Flapjack.WordAlloc.removeDeadStructural input2315 value116 value1 value2 = (output2315, value1036, value1) :=
  node2315_cond_eq node305_eq node2314_eq

theorem node2316_eq : Flapjack.WordAlloc.removeDeadStructural input2316 value116 value1 value2 = (output2316, value1036, value1) :=
  node2316_cond_eq node304_eq node2315_eq

theorem node2317_eq : Flapjack.WordAlloc.removeDeadStructural input2317 value39 value1 value2 = (output2317, value1036, value1) :=
  node2317_cond_eq node303_eq node2316_eq

theorem node2318_eq : Flapjack.WordAlloc.removeDeadStructural input2318 value39 value1 value2 = (output2318, value1036, value1) :=
  node2318_cond_eq node101_eq node2317_eq

theorem node2319_eq : Flapjack.WordAlloc.removeDeadStructural input2319 value39 value1 value2 = (output2319, value1036, value1) :=
  node2319_cond_eq node100_eq node2318_eq

theorem node2320_eq : Flapjack.WordAlloc.removeDeadStructural input2320 value20 value1 value2 = (output2320, value1036, value1) :=
  node2320_cond_eq node99_eq node2319_eq

theorem node2321_eq : Flapjack.WordAlloc.removeDeadStructural input2321 value20 value1 value2 = (output2321, value1036, value1) :=
  node2321_cond_eq node27_eq node2320_eq

theorem node2322_eq : Flapjack.WordAlloc.removeDeadStructural input2322 value16 value1 value2 = (output2322, value1036, value1) :=
  node2322_cond_eq node26_eq node2321_eq

theorem node2323_eq : Flapjack.WordAlloc.removeDeadStructural input2323 value15 value1 value2 = (output2323, value1036, value1) :=
  node2323_cond_eq node19_eq node2322_eq

theorem node2324_eq : Flapjack.WordAlloc.removeDeadStructural input2324 value14 value1 value2 = (output2324, value1036, value1) :=
  node2324_cond_eq node18_eq node2323_eq

theorem node2325_eq : Flapjack.WordAlloc.removeDeadStructural input2325 value13 value1 value2 = (output2325, value1036, value1) :=
  node2325_cond_eq node17_eq node2324_eq

theorem node2326_eq : Flapjack.WordAlloc.removeDeadStructural input2326 value10 value1 value2 = (output2326, value1036, value1) :=
  node2326_cond_eq node16_eq node2325_eq

theorem node2327_eq : Flapjack.WordAlloc.removeDeadStructural input2327 value9 value1 value2 = (output2327, value1036, value1) :=
  node2327_cond_eq node11_eq node2326_eq

theorem node2328_eq : Flapjack.WordAlloc.removeDeadStructural input2328 value8 value1 value2 = (output2328, value1036, value1) :=
  node2328_cond_eq node10_eq node2327_eq

theorem node2329_eq : Flapjack.WordAlloc.removeDeadStructural input2329 value4 value1 value2 = (output2329, value1036, value1) :=
  node2329_cond_eq node9_eq node2328_eq

theorem node2330_eq : Flapjack.WordAlloc.removeDeadStructural input2330 value0 value1 value2 = (output2330, value1036, value1) :=
  node2330_cond_eq node2_eq node2329_eq

theorem node2331_eq : Flapjack.WordAlloc.removeDeadStructural input2331 value1036 value1 value2 = (output2331, value1037, value1) :=
  node2331_cond_eq

theorem node2332_eq : Flapjack.WordAlloc.removeDeadStructural input2332 value0 value1 value2 = (output2332, value1037, value1) :=
  node2332_cond_eq node2330_eq node2331_eq

#print axioms node2332_eq
end InitECandidate.Proofs.DeadStages184.Parallel
