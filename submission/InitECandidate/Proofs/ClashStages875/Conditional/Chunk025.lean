import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages875.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages875
theorem tree2400_agree_conditional
    (child0 : tree2398 = literal2398)
    (child1 : tree2399 = literal2399) : tree2400 = literal2400 := by
  rw [tree2400_def, child0, child1]
  rfl
theorem node2400_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2398 live2398 coloured2398 = result2398)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2399 live2399 coloured2399 = result2399) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2400 live2400 coloured2400 = result2400 := by
  rw [tree2400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2398 coloured2398 at child
  try dsimp only [live2400, coloured2400]
  rw [child]
  dsimp only [result2398]
  have child := child1
  unfold live2399 coloured2399 at child
  try dsimp only [live2400, coloured2400]
  rw [child]
  dsimp only [result2399]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2401_agree_conditional
    (child0 : tree2383 = literal2383)
    (child1 : tree2400 = literal2400) : tree2401 = literal2401 := by
  rw [tree2401_def, child0, child1]
  rfl
theorem node2401_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2383 live2383 coloured2383 = result2383)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2400 live2400 coloured2400 = result2400) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2401 live2401 coloured2401 = result2401 := by
  rw [tree2401_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2383 coloured2383 at child
  try dsimp only [live2401, coloured2401]
  rw [child]
  dsimp only [result2383]
  have child := child1
  unfold live2400 coloured2400 at child
  try dsimp only [live2401, coloured2401]
  rw [child]
  dsimp only [result2400]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2402_agree_conditional : tree2402 = literal2402 := by
  rw [tree2402_def]
  rfl
theorem node2402_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2402 live2402 coloured2402 = result2402 := by
  rw [tree2402_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2403_agree_conditional
    (child0 : tree2401 = literal2401)
    (child1 : tree2402 = literal2402) : tree2403 = literal2403 := by
  rw [tree2403_def, child0, child1]
  rfl
theorem node2403_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2401 live2401 coloured2401 = result2401)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2402 live2402 coloured2402 = result2402) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2403 live2403 coloured2403 = result2403 := by
  rw [tree2403_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2401 coloured2401 at child
  try dsimp only [live2403, coloured2403]
  rw [child]
  dsimp only [result2401]
  have child := child1
  unfold live2402 coloured2402 at child
  try dsimp only [live2403, coloured2403]
  rw [child]
  dsimp only [result2402]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2404_agree_conditional : tree2404 = literal2404 := by
  rw [tree2404_def]
  rfl
theorem node2404_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2404 live2404 coloured2404 = result2404 := by
  rw [tree2404_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2405_agree_conditional
    (child0 : tree2403 = literal2403)
    (child1 : tree2404 = literal2404) : tree2405 = literal2405 := by
  rw [tree2405_def, child0, child1]
  rfl
theorem node2405_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2403 live2403 coloured2403 = result2403)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2404 live2404 coloured2404 = result2404) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2405 live2405 coloured2405 = result2405 := by
  rw [tree2405_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2403 coloured2403 at child
  try dsimp only [live2405, coloured2405]
  rw [child]
  dsimp only [result2403]
  have child := child1
  unfold live2404 coloured2404 at child
  try dsimp only [live2405, coloured2405]
  rw [child]
  dsimp only [result2404]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2406_agree_conditional : tree2406 = literal2406 := by
  rw [tree2406_def]
  rfl
theorem node2406_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2406 live2406 coloured2406 = result2406 := by
  rw [tree2406_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2407_agree_conditional
    (child0 : tree2405 = literal2405)
    (child1 : tree2406 = literal2406) : tree2407 = literal2407 := by
  rw [tree2407_def, child0, child1]
  rfl
theorem node2407_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2405 live2405 coloured2405 = result2405)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2406 live2406 coloured2406 = result2406) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2407 live2407 coloured2407 = result2407 := by
  rw [tree2407_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2405 coloured2405 at child
  try dsimp only [live2407, coloured2407]
  rw [child]
  dsimp only [result2405]
  have child := child1
  unfold live2406 coloured2406 at child
  try dsimp only [live2407, coloured2407]
  rw [child]
  dsimp only [result2406]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2408_agree_conditional : tree2408 = literal2408 := by
  rw [tree2408_def]
  rfl
theorem node2408_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2408 live2408 coloured2408 = result2408 := by
  rw [tree2408_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2409_agree_conditional
    (child0 : tree2407 = literal2407)
    (child1 : tree2408 = literal2408) : tree2409 = literal2409 := by
  rw [tree2409_def, child0, child1]
  rfl
theorem node2409_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2407 live2407 coloured2407 = result2407)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2408 live2408 coloured2408 = result2408) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2409 live2409 coloured2409 = result2409 := by
  rw [tree2409_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2407 coloured2407 at child
  try dsimp only [live2409, coloured2409]
  rw [child]
  dsimp only [result2407]
  have child := child1
  unfold live2408 coloured2408 at child
  try dsimp only [live2409, coloured2409]
  rw [child]
  dsimp only [result2408]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2410_agree_conditional : tree2410 = literal2410 := by
  rw [tree2410_def]
  rfl
theorem node2410_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2410 live2410 coloured2410 = result2410 := by
  rw [tree2410_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2411_agree_conditional
    (child0 : tree2409 = literal2409)
    (child1 : tree2410 = literal2410) : tree2411 = literal2411 := by
  rw [tree2411_def, child0, child1]
  rfl
theorem node2411_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2409 live2409 coloured2409 = result2409)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2410 live2410 coloured2410 = result2410) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2411 live2411 coloured2411 = result2411 := by
  rw [tree2411_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2409 coloured2409 at child
  try dsimp only [live2411, coloured2411]
  rw [child]
  dsimp only [result2409]
  have child := child1
  unfold live2410 coloured2410 at child
  try dsimp only [live2411, coloured2411]
  rw [child]
  dsimp only [result2410]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2412_agree_conditional : tree2412 = literal2412 := by
  rw [tree2412_def]
  rfl
theorem node2412_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2412 live2412 coloured2412 = result2412 := by
  rw [tree2412_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2413_agree_conditional
    (child0 : tree2411 = literal2411)
    (child1 : tree2412 = literal2412) : tree2413 = literal2413 := by
  rw [tree2413_def, child0, child1]
  rfl
theorem node2413_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2411 live2411 coloured2411 = result2411)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2412 live2412 coloured2412 = result2412) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2413 live2413 coloured2413 = result2413 := by
  rw [tree2413_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2411 coloured2411 at child
  try dsimp only [live2413, coloured2413]
  rw [child]
  dsimp only [result2411]
  have child := child1
  unfold live2412 coloured2412 at child
  try dsimp only [live2413, coloured2413]
  rw [child]
  dsimp only [result2412]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2414_agree_conditional : tree2414 = literal2414 := by
  rw [tree2414_def]
  rfl
theorem node2414_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2414 live2414 coloured2414 = result2414 := by
  rw [tree2414_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2415_agree_conditional
    (child0 : tree2413 = literal2413)
    (child1 : tree2414 = literal2414) : tree2415 = literal2415 := by
  rw [tree2415_def, child0, child1]
  rfl
theorem node2415_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2413 live2413 coloured2413 = result2413)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2414 live2414 coloured2414 = result2414) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2415 live2415 coloured2415 = result2415 := by
  rw [tree2415_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2413 coloured2413 at child
  try dsimp only [live2415, coloured2415]
  rw [child]
  dsimp only [result2413]
  have child := child1
  unfold live2414 coloured2414 at child
  try dsimp only [live2415, coloured2415]
  rw [child]
  dsimp only [result2414]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2416_agree_conditional : tree2416 = literal2416 := by
  rw [tree2416_def]
  rfl
theorem node2416_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2416 live2416 coloured2416 = result2416 := by
  rw [tree2416_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2417_agree_conditional : tree2417 = literal2417 := by
  rw [tree2417_def]
  rfl
theorem node2417_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2417 live2417 coloured2417 = result2417 := by
  rw [tree2417_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2418_agree_conditional
    (child0 : tree2416 = literal2416)
    (child1 : tree2417 = literal2417) : tree2418 = literal2418 := by
  rw [tree2418_def, child0, child1]
  rfl
theorem node2418_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2416 live2416 coloured2416 = result2416)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2417 live2417 coloured2417 = result2417) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2418 live2418 coloured2418 = result2418 := by
  rw [tree2418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2416 coloured2416 at child
  try dsimp only [live2418, coloured2418]
  rw [child]
  dsimp only [result2416]
  have child := child1
  unfold live2417 coloured2417 at child
  try dsimp only [live2418, coloured2418]
  rw [child]
  dsimp only [result2417]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2419_agree_conditional
    (child0 : tree2415 = literal2415)
    (child1 : tree2418 = literal2418) : tree2419 = literal2419 := by
  rw [tree2419_def, child0, child1]
  rfl
theorem node2419_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2415 live2415 coloured2415 = result2415)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2418 live2418 coloured2418 = result2418) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2419 live2419 coloured2419 = result2419 := by
  rw [tree2419_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2415 coloured2415 at child
  try dsimp only [live2419, coloured2419]
  rw [child]
  dsimp only [result2415]
  have child := child1
  unfold live2418 coloured2418 at child
  try dsimp only [live2419, coloured2419]
  rw [child]
  dsimp only [result2418]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2420_agree_conditional : tree2420 = literal2420 := by
  rw [tree2420_def]
  rfl
theorem node2420_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2420 live2420 coloured2420 = result2420 := by
  rw [tree2420_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2421_agree_conditional
    (child0 : tree2419 = literal2419)
    (child1 : tree2420 = literal2420) : tree2421 = literal2421 := by
  rw [tree2421_def, child0, child1]
  rfl
theorem node2421_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2419 live2419 coloured2419 = result2419)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2420 live2420 coloured2420 = result2420) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2421 live2421 coloured2421 = result2421 := by
  rw [tree2421_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2419 coloured2419 at child
  try dsimp only [live2421, coloured2421]
  rw [child]
  dsimp only [result2419]
  have child := child1
  unfold live2420 coloured2420 at child
  try dsimp only [live2421, coloured2421]
  rw [child]
  dsimp only [result2420]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2422_agree_conditional
    (child0 : tree2378 = literal2378)
    (child1 : tree2421 = literal2421) : tree2422 = literal2422 := by
  rw [tree2422_def, child0, child1]
  rfl
theorem node2422_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2378 live2378 coloured2378 = result2378)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2421 live2421 coloured2421 = result2421) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2422 live2422 coloured2422 = result2422 := by
  rw [tree2422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2378 coloured2378 at child
  try dsimp only [live2422, coloured2422]
  rw [child]
  dsimp only [result2378]
  have child := child1
  unfold live2421 coloured2421 at child
  try dsimp only [live2422, coloured2422]
  rw [child]
  dsimp only [result2421]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2423_agree_conditional : tree2423 = literal2423 := by
  rw [tree2423_def]
  rfl
theorem node2423_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2423 live2423 coloured2423 = result2423 := by
  rw [tree2423_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2424_agree_conditional
    (child0 : tree2422 = literal2422)
    (child1 : tree2423 = literal2423) : tree2424 = literal2424 := by
  rw [tree2424_def, child0, child1]
  rfl
theorem node2424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2422 live2422 coloured2422 = result2422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2423 live2423 coloured2423 = result2423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2424 live2424 coloured2424 = result2424 := by
  rw [tree2424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2422 coloured2422 at child
  try dsimp only [live2424, coloured2424]
  rw [child]
  dsimp only [result2422]
  have child := child1
  unfold live2423 coloured2423 at child
  try dsimp only [live2424, coloured2424]
  rw [child]
  dsimp only [result2423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2425_agree_conditional : tree2425 = literal2425 := by
  rw [tree2425_def]
  rfl
theorem node2425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2425 live2425 coloured2425 = result2425 := by
  rw [tree2425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2426_agree_conditional
    (child0 : tree2424 = literal2424)
    (child1 : tree2425 = literal2425) : tree2426 = literal2426 := by
  rw [tree2426_def, child0, child1]
  rfl
theorem node2426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2424 live2424 coloured2424 = result2424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2425 live2425 coloured2425 = result2425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2426 live2426 coloured2426 = result2426 := by
  rw [tree2426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2424 coloured2424 at child
  try dsimp only [live2426, coloured2426]
  rw [child]
  dsimp only [result2424]
  have child := child1
  unfold live2425 coloured2425 at child
  try dsimp only [live2426, coloured2426]
  rw [child]
  dsimp only [result2425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2427_agree_conditional : tree2427 = literal2427 := by
  rw [tree2427_def]
  rfl
theorem node2427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2427 live2427 coloured2427 = result2427 := by
  rw [tree2427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2428_agree_conditional
    (child0 : tree2426 = literal2426)
    (child1 : tree2427 = literal2427) : tree2428 = literal2428 := by
  rw [tree2428_def, child0, child1]
  rfl
theorem node2428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2426 live2426 coloured2426 = result2426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2427 live2427 coloured2427 = result2427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2428 live2428 coloured2428 = result2428 := by
  rw [tree2428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2426 coloured2426 at child
  try dsimp only [live2428, coloured2428]
  rw [child]
  dsimp only [result2426]
  have child := child1
  unfold live2427 coloured2427 at child
  try dsimp only [live2428, coloured2428]
  rw [child]
  dsimp only [result2427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2429_agree_conditional : tree2429 = literal2429 := by
  rw [tree2429_def]
  rfl
theorem node2429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2429 live2429 coloured2429 = result2429 := by
  rw [tree2429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2430_agree_conditional : tree2430 = literal2430 := by
  rw [tree2430_def]
  rfl
theorem node2430_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2430 live2430 coloured2430 = result2430 := by
  rw [tree2430_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2431_agree_conditional
    (child0 : tree2429 = literal2429)
    (child1 : tree2430 = literal2430) : tree2431 = literal2431 := by
  rw [tree2431_def, child0, child1]
  rfl
theorem node2431_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2429 live2429 coloured2429 = result2429)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2430 live2430 coloured2430 = result2430) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2431 live2431 coloured2431 = result2431 := by
  rw [tree2431_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2429 coloured2429 at child
  try dsimp only [live2431, coloured2431]
  rw [child]
  dsimp only [result2429]
  have child := child1
  unfold live2430 coloured2430 at child
  try dsimp only [live2431, coloured2431]
  rw [child]
  dsimp only [result2430]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2432_agree_conditional : tree2432 = literal2432 := by
  rw [tree2432_def]
  rfl
theorem node2432_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2432 live2432 coloured2432 = result2432 := by
  rw [tree2432_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2433_agree_conditional : tree2433 = literal2433 := by
  rw [tree2433_def]
  rfl
theorem node2433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2433 live2433 coloured2433 = result2433 := by
  rw [tree2433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2434_agree_conditional
    (child0 : tree2432 = literal2432)
    (child1 : tree2433 = literal2433) : tree2434 = literal2434 := by
  rw [tree2434_def, child0, child1]
  rfl
theorem node2434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2432 live2432 coloured2432 = result2432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2433 live2433 coloured2433 = result2433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2434 live2434 coloured2434 = result2434 := by
  rw [tree2434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2432 coloured2432 at child
  try dsimp only [live2434, coloured2434]
  rw [child]
  dsimp only [result2432]
  have child := child1
  unfold live2433 coloured2433 at child
  try dsimp only [live2434, coloured2434]
  rw [child]
  dsimp only [result2433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2435_agree_conditional : tree2435 = literal2435 := by
  rw [tree2435_def]
  rfl
theorem node2435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2435 live2435 coloured2435 = result2435 := by
  rw [tree2435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2436_agree_conditional
    (child0 : tree2434 = literal2434)
    (child1 : tree2435 = literal2435) : tree2436 = literal2436 := by
  rw [tree2436_def, child0, child1]
  rfl
theorem node2436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2434 live2434 coloured2434 = result2434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2435 live2435 coloured2435 = result2435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2436 live2436 coloured2436 = result2436 := by
  rw [tree2436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2434 coloured2434 at child
  try dsimp only [live2436, coloured2436]
  rw [child]
  dsimp only [result2434]
  have child := child1
  unfold live2435 coloured2435 at child
  try dsimp only [live2436, coloured2436]
  rw [child]
  dsimp only [result2435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2437_agree_conditional
    (child0 : tree2431 = literal2431)
    (child1 : tree2436 = literal2436) : tree2437 = literal2437 := by
  rw [tree2437_def, child0, child1]
  rfl
theorem node2437_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2431 live2431 coloured2431 = result2431)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2436 live2436 coloured2436 = result2436) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2437 live2437 coloured2437 = result2437 := by
  rw [tree2437_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2431 coloured2431 at child
  try dsimp only [live2437, coloured2437]
  rw [child]
  dsimp only [result2431]
  have child := child1
  unfold live2436 coloured2436 at child
  try dsimp only [live2437, coloured2437]
  rw [child]
  dsimp only [result2436]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2438_agree_conditional
    (child0 : tree2428 = literal2428)
    (child1 : tree2437 = literal2437) : tree2438 = literal2438 := by
  rw [tree2438_def, child0, child1]
  rfl
theorem node2438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2428 live2428 coloured2428 = result2428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2437 live2437 coloured2437 = result2437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2438 live2438 coloured2438 = result2438 := by
  rw [tree2438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2428 coloured2428 at child
  try dsimp only [live2438, coloured2438]
  rw [child]
  dsimp only [result2428]
  have child := child1
  unfold live2437 coloured2437 at child
  try dsimp only [live2438, coloured2438]
  rw [child]
  dsimp only [result2437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2439_agree_conditional : tree2439 = literal2439 := by
  rw [tree2439_def]
  rfl
theorem node2439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2439 live2439 coloured2439 = result2439 := by
  rw [tree2439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2440_agree_conditional
    (child0 : tree2438 = literal2438)
    (child1 : tree2439 = literal2439) : tree2440 = literal2440 := by
  rw [tree2440_def, child0, child1]
  rfl
theorem node2440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2438 live2438 coloured2438 = result2438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2439 live2439 coloured2439 = result2439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2440 live2440 coloured2440 = result2440 := by
  rw [tree2440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2438 coloured2438 at child
  try dsimp only [live2440, coloured2440]
  rw [child]
  dsimp only [result2438]
  have child := child1
  unfold live2439 coloured2439 at child
  try dsimp only [live2440, coloured2440]
  rw [child]
  dsimp only [result2439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2441_agree_conditional : tree2441 = literal2441 := by
  rw [tree2441_def]
  rfl
theorem node2441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2441 live2441 coloured2441 = result2441 := by
  rw [tree2441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2442_agree_conditional
    (child0 : tree2440 = literal2440)
    (child1 : tree2441 = literal2441) : tree2442 = literal2442 := by
  rw [tree2442_def, child0, child1]
  rfl
theorem node2442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2440 live2440 coloured2440 = result2440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2441 live2441 coloured2441 = result2441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2442 live2442 coloured2442 = result2442 := by
  rw [tree2442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2440 coloured2440 at child
  try dsimp only [live2442, coloured2442]
  rw [child]
  dsimp only [result2440]
  have child := child1
  unfold live2441 coloured2441 at child
  try dsimp only [live2442, coloured2442]
  rw [child]
  dsimp only [result2441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2443_agree_conditional : tree2443 = literal2443 := by
  rw [tree2443_def]
  rfl
theorem node2443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2443 live2443 coloured2443 = result2443 := by
  rw [tree2443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2444_agree_conditional
    (child0 : tree2442 = literal2442)
    (child1 : tree2443 = literal2443) : tree2444 = literal2444 := by
  rw [tree2444_def, child0, child1]
  rfl
theorem node2444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2442 live2442 coloured2442 = result2442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2443 live2443 coloured2443 = result2443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2444 live2444 coloured2444 = result2444 := by
  rw [tree2444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2442 coloured2442 at child
  try dsimp only [live2444, coloured2444]
  rw [child]
  dsimp only [result2442]
  have child := child1
  unfold live2443 coloured2443 at child
  try dsimp only [live2444, coloured2444]
  rw [child]
  dsimp only [result2443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2445_agree_conditional : tree2445 = literal2445 := by
  rw [tree2445_def]
  rfl
theorem node2445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2445 live2445 coloured2445 = result2445 := by
  rw [tree2445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2446_agree_conditional
    (child0 : tree2444 = literal2444)
    (child1 : tree2445 = literal2445) : tree2446 = literal2446 := by
  rw [tree2446_def, child0, child1]
  rfl
theorem node2446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2444 live2444 coloured2444 = result2444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2445 live2445 coloured2445 = result2445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2446 live2446 coloured2446 = result2446 := by
  rw [tree2446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2444 coloured2444 at child
  try dsimp only [live2446, coloured2446]
  rw [child]
  dsimp only [result2444]
  have child := child1
  unfold live2445 coloured2445 at child
  try dsimp only [live2446, coloured2446]
  rw [child]
  dsimp only [result2445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2447_agree_conditional : tree2447 = literal2447 := by
  rw [tree2447_def]
  rfl
theorem node2447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2447 live2447 coloured2447 = result2447 := by
  rw [tree2447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2448_agree_conditional
    (child0 : tree2446 = literal2446)
    (child1 : tree2447 = literal2447) : tree2448 = literal2448 := by
  rw [tree2448_def, child0, child1]
  rfl
theorem node2448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2446 live2446 coloured2446 = result2446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2447 live2447 coloured2447 = result2447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2448 live2448 coloured2448 = result2448 := by
  rw [tree2448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2446 coloured2446 at child
  try dsimp only [live2448, coloured2448]
  rw [child]
  dsimp only [result2446]
  have child := child1
  unfold live2447 coloured2447 at child
  try dsimp only [live2448, coloured2448]
  rw [child]
  dsimp only [result2447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2449_agree_conditional : tree2449 = literal2449 := by
  rw [tree2449_def]
  rfl
theorem node2449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2449 live2449 coloured2449 = result2449 := by
  rw [tree2449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2450_agree_conditional
    (child0 : tree2448 = literal2448)
    (child1 : tree2449 = literal2449) : tree2450 = literal2450 := by
  rw [tree2450_def, child0, child1]
  rfl
theorem node2450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2448 live2448 coloured2448 = result2448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2449 live2449 coloured2449 = result2449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2450 live2450 coloured2450 = result2450 := by
  rw [tree2450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2448 coloured2448 at child
  try dsimp only [live2450, coloured2450]
  rw [child]
  dsimp only [result2448]
  have child := child1
  unfold live2449 coloured2449 at child
  try dsimp only [live2450, coloured2450]
  rw [child]
  dsimp only [result2449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2451_agree_conditional : tree2451 = literal2451 := by
  rw [tree2451_def]
  rfl
theorem node2451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2451 live2451 coloured2451 = result2451 := by
  rw [tree2451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2452_agree_conditional
    (child0 : tree2450 = literal2450)
    (child1 : tree2451 = literal2451) : tree2452 = literal2452 := by
  rw [tree2452_def, child0, child1]
  rfl
theorem node2452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2450 live2450 coloured2450 = result2450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2451 live2451 coloured2451 = result2451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2452 live2452 coloured2452 = result2452 := by
  rw [tree2452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2450 coloured2450 at child
  try dsimp only [live2452, coloured2452]
  rw [child]
  dsimp only [result2450]
  have child := child1
  unfold live2451 coloured2451 at child
  try dsimp only [live2452, coloured2452]
  rw [child]
  dsimp only [result2451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2453_agree_conditional : tree2453 = literal2453 := by
  rw [tree2453_def]
  rfl
theorem node2453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2453 live2453 coloured2453 = result2453 := by
  rw [tree2453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2454_agree_conditional
    (child0 : tree2452 = literal2452)
    (child1 : tree2453 = literal2453) : tree2454 = literal2454 := by
  rw [tree2454_def, child0, child1]
  rfl
theorem node2454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2452 live2452 coloured2452 = result2452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2453 live2453 coloured2453 = result2453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2454 live2454 coloured2454 = result2454 := by
  rw [tree2454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2452 coloured2452 at child
  try dsimp only [live2454, coloured2454]
  rw [child]
  dsimp only [result2452]
  have child := child1
  unfold live2453 coloured2453 at child
  try dsimp only [live2454, coloured2454]
  rw [child]
  dsimp only [result2453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2455_agree_conditional : tree2455 = literal2455 := by
  rw [tree2455_def]
  rfl
theorem node2455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2455 live2455 coloured2455 = result2455 := by
  rw [tree2455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2456_agree_conditional
    (child0 : tree2454 = literal2454)
    (child1 : tree2455 = literal2455) : tree2456 = literal2456 := by
  rw [tree2456_def, child0, child1]
  rfl
theorem node2456_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2454 live2454 coloured2454 = result2454)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2455 live2455 coloured2455 = result2455) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2456 live2456 coloured2456 = result2456 := by
  rw [tree2456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2454 coloured2454 at child
  try dsimp only [live2456, coloured2456]
  rw [child]
  dsimp only [result2454]
  have child := child1
  unfold live2455 coloured2455 at child
  try dsimp only [live2456, coloured2456]
  rw [child]
  dsimp only [result2455]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2457_agree_conditional : tree2457 = literal2457 := by
  rw [tree2457_def]
  rfl
theorem node2457_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2457 live2457 coloured2457 = result2457 := by
  rw [tree2457_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2458_agree_conditional
    (child0 : tree2456 = literal2456)
    (child1 : tree2457 = literal2457) : tree2458 = literal2458 := by
  rw [tree2458_def, child0, child1]
  rfl
theorem node2458_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2456 live2456 coloured2456 = result2456)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2457 live2457 coloured2457 = result2457) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2458 live2458 coloured2458 = result2458 := by
  rw [tree2458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2456 coloured2456 at child
  try dsimp only [live2458, coloured2458]
  rw [child]
  dsimp only [result2456]
  have child := child1
  unfold live2457 coloured2457 at child
  try dsimp only [live2458, coloured2458]
  rw [child]
  dsimp only [result2457]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2459_agree_conditional : tree2459 = literal2459 := by
  rw [tree2459_def]
  rfl
theorem node2459_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2459 live2459 coloured2459 = result2459 := by
  rw [tree2459_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2460_agree_conditional
    (child0 : tree2458 = literal2458)
    (child1 : tree2459 = literal2459) : tree2460 = literal2460 := by
  rw [tree2460_def, child0, child1]
  rfl
theorem node2460_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2458 live2458 coloured2458 = result2458)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2459 live2459 coloured2459 = result2459) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2460 live2460 coloured2460 = result2460 := by
  rw [tree2460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2458 coloured2458 at child
  try dsimp only [live2460, coloured2460]
  rw [child]
  dsimp only [result2458]
  have child := child1
  unfold live2459 coloured2459 at child
  try dsimp only [live2460, coloured2460]
  rw [child]
  dsimp only [result2459]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2461_agree_conditional : tree2461 = literal2461 := by
  rw [tree2461_def]
  rfl
theorem node2461_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2461 live2461 coloured2461 = result2461 := by
  rw [tree2461_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2462_agree_conditional
    (child0 : tree2460 = literal2460)
    (child1 : tree2461 = literal2461) : tree2462 = literal2462 := by
  rw [tree2462_def, child0, child1]
  rfl
theorem node2462_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2460 live2460 coloured2460 = result2460)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2461 live2461 coloured2461 = result2461) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2462 live2462 coloured2462 = result2462 := by
  rw [tree2462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2460 coloured2460 at child
  try dsimp only [live2462, coloured2462]
  rw [child]
  dsimp only [result2460]
  have child := child1
  unfold live2461 coloured2461 at child
  try dsimp only [live2462, coloured2462]
  rw [child]
  dsimp only [result2461]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2463_agree_conditional : tree2463 = literal2463 := by
  rw [tree2463_def]
  rfl
theorem node2463_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2463 live2463 coloured2463 = result2463 := by
  rw [tree2463_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2464_agree_conditional
    (child0 : tree2462 = literal2462)
    (child1 : tree2463 = literal2463) : tree2464 = literal2464 := by
  rw [tree2464_def, child0, child1]
  rfl
theorem node2464_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2462 live2462 coloured2462 = result2462)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2463 live2463 coloured2463 = result2463) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2464 live2464 coloured2464 = result2464 := by
  rw [tree2464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2462 coloured2462 at child
  try dsimp only [live2464, coloured2464]
  rw [child]
  dsimp only [result2462]
  have child := child1
  unfold live2463 coloured2463 at child
  try dsimp only [live2464, coloured2464]
  rw [child]
  dsimp only [result2463]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2465_agree_conditional : tree2465 = literal2465 := by
  rw [tree2465_def]
  rfl
theorem node2465_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2465 live2465 coloured2465 = result2465 := by
  rw [tree2465_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2466_agree_conditional
    (child0 : tree2464 = literal2464)
    (child1 : tree2465 = literal2465) : tree2466 = literal2466 := by
  rw [tree2466_def, child0, child1]
  rfl
theorem node2466_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2464 live2464 coloured2464 = result2464)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2465 live2465 coloured2465 = result2465) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2466 live2466 coloured2466 = result2466 := by
  rw [tree2466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2464 coloured2464 at child
  try dsimp only [live2466, coloured2466]
  rw [child]
  dsimp only [result2464]
  have child := child1
  unfold live2465 coloured2465 at child
  try dsimp only [live2466, coloured2466]
  rw [child]
  dsimp only [result2465]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2467_agree_conditional : tree2467 = literal2467 := by
  rw [tree2467_def]
  rfl
theorem node2467_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2467 live2467 coloured2467 = result2467 := by
  rw [tree2467_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2468_agree_conditional
    (child0 : tree2466 = literal2466)
    (child1 : tree2467 = literal2467) : tree2468 = literal2468 := by
  rw [tree2468_def, child0, child1]
  rfl
theorem node2468_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2466 live2466 coloured2466 = result2466)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2467 live2467 coloured2467 = result2467) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2468 live2468 coloured2468 = result2468 := by
  rw [tree2468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2466 coloured2466 at child
  try dsimp only [live2468, coloured2468]
  rw [child]
  dsimp only [result2466]
  have child := child1
  unfold live2467 coloured2467 at child
  try dsimp only [live2468, coloured2468]
  rw [child]
  dsimp only [result2467]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2469_agree_conditional : tree2469 = literal2469 := by
  rw [tree2469_def]
  rfl
theorem node2469_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2469 live2469 coloured2469 = result2469 := by
  rw [tree2469_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2470_agree_conditional
    (child0 : tree2468 = literal2468)
    (child1 : tree2469 = literal2469) : tree2470 = literal2470 := by
  rw [tree2470_def, child0, child1]
  rfl
theorem node2470_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2468 live2468 coloured2468 = result2468)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2469 live2469 coloured2469 = result2469) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2470 live2470 coloured2470 = result2470 := by
  rw [tree2470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2468 coloured2468 at child
  try dsimp only [live2470, coloured2470]
  rw [child]
  dsimp only [result2468]
  have child := child1
  unfold live2469 coloured2469 at child
  try dsimp only [live2470, coloured2470]
  rw [child]
  dsimp only [result2469]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2471_agree_conditional : tree2471 = literal2471 := by
  rw [tree2471_def]
  rfl
theorem node2471_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2471 live2471 coloured2471 = result2471 := by
  rw [tree2471_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2472_agree_conditional
    (child0 : tree2470 = literal2470)
    (child1 : tree2471 = literal2471) : tree2472 = literal2472 := by
  rw [tree2472_def, child0, child1]
  rfl
theorem node2472_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2470 live2470 coloured2470 = result2470)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2471 live2471 coloured2471 = result2471) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2472 live2472 coloured2472 = result2472 := by
  rw [tree2472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2470 coloured2470 at child
  try dsimp only [live2472, coloured2472]
  rw [child]
  dsimp only [result2470]
  have child := child1
  unfold live2471 coloured2471 at child
  try dsimp only [live2472, coloured2472]
  rw [child]
  dsimp only [result2471]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2473_agree_conditional : tree2473 = literal2473 := by
  rw [tree2473_def]
  rfl
theorem node2473_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2473 live2473 coloured2473 = result2473 := by
  rw [tree2473_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2474_agree_conditional
    (child0 : tree2472 = literal2472)
    (child1 : tree2473 = literal2473) : tree2474 = literal2474 := by
  rw [tree2474_def, child0, child1]
  rfl
theorem node2474_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2472 live2472 coloured2472 = result2472)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2473 live2473 coloured2473 = result2473) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2474 live2474 coloured2474 = result2474 := by
  rw [tree2474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2472 coloured2472 at child
  try dsimp only [live2474, coloured2474]
  rw [child]
  dsimp only [result2472]
  have child := child1
  unfold live2473 coloured2473 at child
  try dsimp only [live2474, coloured2474]
  rw [child]
  dsimp only [result2473]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2475_agree_conditional : tree2475 = literal2475 := by
  rw [tree2475_def]
  rfl
theorem node2475_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2475 live2475 coloured2475 = result2475 := by
  rw [tree2475_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2476_agree_conditional
    (child0 : tree2474 = literal2474)
    (child1 : tree2475 = literal2475) : tree2476 = literal2476 := by
  rw [tree2476_def, child0, child1]
  rfl
theorem node2476_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2474 live2474 coloured2474 = result2474)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2475 live2475 coloured2475 = result2475) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2476 live2476 coloured2476 = result2476 := by
  rw [tree2476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2474 coloured2474 at child
  try dsimp only [live2476, coloured2476]
  rw [child]
  dsimp only [result2474]
  have child := child1
  unfold live2475 coloured2475 at child
  try dsimp only [live2476, coloured2476]
  rw [child]
  dsimp only [result2475]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2477_agree_conditional : tree2477 = literal2477 := by
  rw [tree2477_def]
  rfl
theorem node2477_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2477 live2477 coloured2477 = result2477 := by
  rw [tree2477_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2478_agree_conditional : tree2478 = literal2478 := by
  rw [tree2478_def]
  rfl
theorem node2478_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2478 live2478 coloured2478 = result2478 := by
  rw [tree2478_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2479_agree_conditional
    (child0 : tree2477 = literal2477)
    (child1 : tree2478 = literal2478) : tree2479 = literal2479 := by
  rw [tree2479_def, child0, child1]
  rfl
theorem node2479_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2477 live2477 coloured2477 = result2477)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2478 live2478 coloured2478 = result2478) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2479 live2479 coloured2479 = result2479 := by
  rw [tree2479_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2477 coloured2477 at child
  try dsimp only [live2479, coloured2479]
  rw [child]
  dsimp only [result2477]
  have child := child1
  unfold live2478 coloured2478 at child
  try dsimp only [live2479, coloured2479]
  rw [child]
  dsimp only [result2478]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2480_agree_conditional : tree2480 = literal2480 := by
  rw [tree2480_def]
  rfl
theorem node2480_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2480 live2480 coloured2480 = result2480 := by
  rw [tree2480_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2481_agree_conditional : tree2481 = literal2481 := by
  rw [tree2481_def]
  rfl
theorem node2481_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2481 live2481 coloured2481 = result2481 := by
  rw [tree2481_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2482_agree_conditional
    (child0 : tree2480 = literal2480)
    (child1 : tree2481 = literal2481) : tree2482 = literal2482 := by
  rw [tree2482_def, child0, child1]
  rfl
theorem node2482_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2480 live2480 coloured2480 = result2480)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2481 live2481 coloured2481 = result2481) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2482 live2482 coloured2482 = result2482 := by
  rw [tree2482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2480 coloured2480 at child
  try dsimp only [live2482, coloured2482]
  rw [child]
  dsimp only [result2480]
  have child := child1
  unfold live2481 coloured2481 at child
  try dsimp only [live2482, coloured2482]
  rw [child]
  dsimp only [result2481]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2483_agree_conditional : tree2483 = literal2483 := by
  rw [tree2483_def]
  rfl
theorem node2483_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2483 live2483 coloured2483 = result2483 := by
  rw [tree2483_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2484_agree_conditional
    (child0 : tree2482 = literal2482)
    (child1 : tree2483 = literal2483) : tree2484 = literal2484 := by
  rw [tree2484_def, child0, child1]
  rfl
theorem node2484_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2482 live2482 coloured2482 = result2482)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2483 live2483 coloured2483 = result2483) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2484 live2484 coloured2484 = result2484 := by
  rw [tree2484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2482 coloured2482 at child
  try dsimp only [live2484, coloured2484]
  rw [child]
  dsimp only [result2482]
  have child := child1
  unfold live2483 coloured2483 at child
  try dsimp only [live2484, coloured2484]
  rw [child]
  dsimp only [result2483]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2485_agree_conditional
    (child0 : tree2479 = literal2479)
    (child1 : tree2484 = literal2484) : tree2485 = literal2485 := by
  rw [tree2485_def, child0, child1]
  rfl
theorem node2485_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2479 live2479 coloured2479 = result2479)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2484 live2484 coloured2484 = result2484) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2485 live2485 coloured2485 = result2485 := by
  rw [tree2485_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2479 coloured2479 at child
  try dsimp only [live2485, coloured2485]
  rw [child]
  dsimp only [result2479]
  have child := child1
  unfold live2484 coloured2484 at child
  try dsimp only [live2485, coloured2485]
  rw [child]
  dsimp only [result2484]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2486_agree_conditional
    (child0 : tree2476 = literal2476)
    (child1 : tree2485 = literal2485) : tree2486 = literal2486 := by
  rw [tree2486_def, child0, child1]
  rfl
theorem node2486_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2476 live2476 coloured2476 = result2476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2485 live2485 coloured2485 = result2485) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2486 live2486 coloured2486 = result2486 := by
  rw [tree2486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2476 coloured2476 at child
  try dsimp only [live2486, coloured2486]
  rw [child]
  dsimp only [result2476]
  have child := child1
  unfold live2485 coloured2485 at child
  try dsimp only [live2486, coloured2486]
  rw [child]
  dsimp only [result2485]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2487_agree_conditional : tree2487 = literal2487 := by
  rw [tree2487_def]
  rfl
theorem node2487_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2487 live2487 coloured2487 = result2487 := by
  rw [tree2487_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2488_agree_conditional
    (child0 : tree2486 = literal2486)
    (child1 : tree2487 = literal2487) : tree2488 = literal2488 := by
  rw [tree2488_def, child0, child1]
  rfl
theorem node2488_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2486 live2486 coloured2486 = result2486)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2487 live2487 coloured2487 = result2487) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2488 live2488 coloured2488 = result2488 := by
  rw [tree2488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2486 coloured2486 at child
  try dsimp only [live2488, coloured2488]
  rw [child]
  dsimp only [result2486]
  have child := child1
  unfold live2487 coloured2487 at child
  try dsimp only [live2488, coloured2488]
  rw [child]
  dsimp only [result2487]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2489_agree_conditional : tree2489 = literal2489 := by
  rw [tree2489_def]
  rfl
theorem node2489_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2489 live2489 coloured2489 = result2489 := by
  rw [tree2489_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2490_agree_conditional
    (child0 : tree2488 = literal2488)
    (child1 : tree2489 = literal2489) : tree2490 = literal2490 := by
  rw [tree2490_def, child0, child1]
  rfl
theorem node2490_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2488 live2488 coloured2488 = result2488)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2489 live2489 coloured2489 = result2489) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2490 live2490 coloured2490 = result2490 := by
  rw [tree2490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2488 coloured2488 at child
  try dsimp only [live2490, coloured2490]
  rw [child]
  dsimp only [result2488]
  have child := child1
  unfold live2489 coloured2489 at child
  try dsimp only [live2490, coloured2490]
  rw [child]
  dsimp only [result2489]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2491_agree_conditional : tree2491 = literal2491 := by
  rw [tree2491_def]
  rfl
theorem node2491_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2491 live2491 coloured2491 = result2491 := by
  rw [tree2491_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2492_agree_conditional
    (child0 : tree2490 = literal2490)
    (child1 : tree2491 = literal2491) : tree2492 = literal2492 := by
  rw [tree2492_def, child0, child1]
  rfl
theorem node2492_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2490 live2490 coloured2490 = result2490)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2491 live2491 coloured2491 = result2491) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2492 live2492 coloured2492 = result2492 := by
  rw [tree2492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2490 coloured2490 at child
  try dsimp only [live2492, coloured2492]
  rw [child]
  dsimp only [result2490]
  have child := child1
  unfold live2491 coloured2491 at child
  try dsimp only [live2492, coloured2492]
  rw [child]
  dsimp only [result2491]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2493_agree_conditional : tree2493 = literal2493 := by
  rw [tree2493_def]
  rfl
theorem node2493_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2493 live2493 coloured2493 = result2493 := by
  rw [tree2493_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2494_agree_conditional
    (child0 : tree2492 = literal2492)
    (child1 : tree2493 = literal2493) : tree2494 = literal2494 := by
  rw [tree2494_def, child0, child1]
  rfl
theorem node2494_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2492 live2492 coloured2492 = result2492)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2493 live2493 coloured2493 = result2493) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2494 live2494 coloured2494 = result2494 := by
  rw [tree2494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2492 coloured2492 at child
  try dsimp only [live2494, coloured2494]
  rw [child]
  dsimp only [result2492]
  have child := child1
  unfold live2493 coloured2493 at child
  try dsimp only [live2494, coloured2494]
  rw [child]
  dsimp only [result2493]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2495_agree_conditional : tree2495 = literal2495 := by
  rw [tree2495_def]
  rfl
theorem node2495_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2495 live2495 coloured2495 = result2495 := by
  rw [tree2495_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages875
