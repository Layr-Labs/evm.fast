import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree8352_agree_conditional
    (child0 : tree8350 = literal8350)
    (child1 : tree8351 = literal8351) : tree8352 = literal8352 := by
  rw [tree8352_def, child0, child1]
  rfl
theorem node8352_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8350 live8350 coloured8350 = result8350)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8351 live8351 coloured8351 = result8351) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8352 live8352 coloured8352 = result8352 := by
  rw [tree8352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8350 coloured8350 at child
  try dsimp only [live8352, coloured8352]
  rw [child]
  dsimp only [result8350]
  have child := child1
  unfold live8351 coloured8351 at child
  try dsimp only [live8352, coloured8352]
  rw [child]
  dsimp only [result8351]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8353_agree_conditional : tree8353 = literal8353 := by
  rw [tree8353_def]
  rfl
theorem node8353_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8353 live8353 coloured8353 = result8353 := by
  rw [tree8353_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8354_agree_conditional
    (child0 : tree8352 = literal8352)
    (child1 : tree8353 = literal8353) : tree8354 = literal8354 := by
  rw [tree8354_def, child0, child1]
  rfl
theorem node8354_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8352 live8352 coloured8352 = result8352)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8353 live8353 coloured8353 = result8353) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8354 live8354 coloured8354 = result8354 := by
  rw [tree8354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8352 coloured8352 at child
  try dsimp only [live8354, coloured8354]
  rw [child]
  dsimp only [result8352]
  have child := child1
  unfold live8353 coloured8353 at child
  try dsimp only [live8354, coloured8354]
  rw [child]
  dsimp only [result8353]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8355_agree_conditional : tree8355 = literal8355 := by
  rw [tree8355_def]
  rfl
theorem node8355_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8355 live8355 coloured8355 = result8355 := by
  rw [tree8355_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8356_agree_conditional
    (child0 : tree8354 = literal8354)
    (child1 : tree8355 = literal8355) : tree8356 = literal8356 := by
  rw [tree8356_def, child0, child1]
  rfl
theorem node8356_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8354 live8354 coloured8354 = result8354)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8355 live8355 coloured8355 = result8355) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8356 live8356 coloured8356 = result8356 := by
  rw [tree8356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8354 coloured8354 at child
  try dsimp only [live8356, coloured8356]
  rw [child]
  dsimp only [result8354]
  have child := child1
  unfold live8355 coloured8355 at child
  try dsimp only [live8356, coloured8356]
  rw [child]
  dsimp only [result8355]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8357_agree_conditional : tree8357 = literal8357 := by
  rw [tree8357_def]
  rfl
theorem node8357_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8357 live8357 coloured8357 = result8357 := by
  rw [tree8357_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8358_agree_conditional
    (child0 : tree8356 = literal8356)
    (child1 : tree8357 = literal8357) : tree8358 = literal8358 := by
  rw [tree8358_def, child0, child1]
  rfl
theorem node8358_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8356 live8356 coloured8356 = result8356)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8357 live8357 coloured8357 = result8357) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8358 live8358 coloured8358 = result8358 := by
  rw [tree8358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8356 coloured8356 at child
  try dsimp only [live8358, coloured8358]
  rw [child]
  dsimp only [result8356]
  have child := child1
  unfold live8357 coloured8357 at child
  try dsimp only [live8358, coloured8358]
  rw [child]
  dsimp only [result8357]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8359_agree_conditional : tree8359 = literal8359 := by
  rw [tree8359_def]
  rfl
theorem node8359_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8359 live8359 coloured8359 = result8359 := by
  rw [tree8359_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8360_agree_conditional
    (child0 : tree8358 = literal8358)
    (child1 : tree8359 = literal8359) : tree8360 = literal8360 := by
  rw [tree8360_def, child0, child1]
  rfl
theorem node8360_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8358 live8358 coloured8358 = result8358)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8359 live8359 coloured8359 = result8359) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8360 live8360 coloured8360 = result8360 := by
  rw [tree8360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8358 coloured8358 at child
  try dsimp only [live8360, coloured8360]
  rw [child]
  dsimp only [result8358]
  have child := child1
  unfold live8359 coloured8359 at child
  try dsimp only [live8360, coloured8360]
  rw [child]
  dsimp only [result8359]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8361_agree_conditional : tree8361 = literal8361 := by
  rw [tree8361_def]
  rfl
theorem node8361_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8361 live8361 coloured8361 = result8361 := by
  rw [tree8361_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8362_agree_conditional
    (child0 : tree8360 = literal8360)
    (child1 : tree8361 = literal8361) : tree8362 = literal8362 := by
  rw [tree8362_def, child0, child1]
  rfl
theorem node8362_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8360 live8360 coloured8360 = result8360)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8361 live8361 coloured8361 = result8361) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8362 live8362 coloured8362 = result8362 := by
  rw [tree8362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8360 coloured8360 at child
  try dsimp only [live8362, coloured8362]
  rw [child]
  dsimp only [result8360]
  have child := child1
  unfold live8361 coloured8361 at child
  try dsimp only [live8362, coloured8362]
  rw [child]
  dsimp only [result8361]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8363_agree_conditional : tree8363 = literal8363 := by
  rw [tree8363_def]
  rfl
theorem node8363_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8363 live8363 coloured8363 = result8363 := by
  rw [tree8363_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8364_agree_conditional
    (child0 : tree8362 = literal8362)
    (child1 : tree8363 = literal8363) : tree8364 = literal8364 := by
  rw [tree8364_def, child0, child1]
  rfl
theorem node8364_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8362 live8362 coloured8362 = result8362)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8363 live8363 coloured8363 = result8363) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8364 live8364 coloured8364 = result8364 := by
  rw [tree8364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8362 coloured8362 at child
  try dsimp only [live8364, coloured8364]
  rw [child]
  dsimp only [result8362]
  have child := child1
  unfold live8363 coloured8363 at child
  try dsimp only [live8364, coloured8364]
  rw [child]
  dsimp only [result8363]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8365_agree_conditional : tree8365 = literal8365 := by
  rw [tree8365_def]
  rfl
theorem node8365_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8365 live8365 coloured8365 = result8365 := by
  rw [tree8365_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8366_agree_conditional
    (child0 : tree8364 = literal8364)
    (child1 : tree8365 = literal8365) : tree8366 = literal8366 := by
  rw [tree8366_def, child0, child1]
  rfl
theorem node8366_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8364 live8364 coloured8364 = result8364)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8365 live8365 coloured8365 = result8365) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8366 live8366 coloured8366 = result8366 := by
  rw [tree8366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8364 coloured8364 at child
  try dsimp only [live8366, coloured8366]
  rw [child]
  dsimp only [result8364]
  have child := child1
  unfold live8365 coloured8365 at child
  try dsimp only [live8366, coloured8366]
  rw [child]
  dsimp only [result8365]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8367_agree_conditional : tree8367 = literal8367 := by
  rw [tree8367_def]
  rfl
theorem node8367_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8367 live8367 coloured8367 = result8367 := by
  rw [tree8367_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8368_agree_conditional
    (child0 : tree8366 = literal8366)
    (child1 : tree8367 = literal8367) : tree8368 = literal8368 := by
  rw [tree8368_def, child0, child1]
  rfl
theorem node8368_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8366 live8366 coloured8366 = result8366)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8367 live8367 coloured8367 = result8367) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8368 live8368 coloured8368 = result8368 := by
  rw [tree8368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8366 coloured8366 at child
  try dsimp only [live8368, coloured8368]
  rw [child]
  dsimp only [result8366]
  have child := child1
  unfold live8367 coloured8367 at child
  try dsimp only [live8368, coloured8368]
  rw [child]
  dsimp only [result8367]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8369_agree_conditional : tree8369 = literal8369 := by
  rw [tree8369_def]
  rfl
theorem node8369_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8369 live8369 coloured8369 = result8369 := by
  rw [tree8369_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8370_agree_conditional
    (child0 : tree8368 = literal8368)
    (child1 : tree8369 = literal8369) : tree8370 = literal8370 := by
  rw [tree8370_def, child0, child1]
  rfl
theorem node8370_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8368 live8368 coloured8368 = result8368)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8369 live8369 coloured8369 = result8369) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8370 live8370 coloured8370 = result8370 := by
  rw [tree8370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8368 coloured8368 at child
  try dsimp only [live8370, coloured8370]
  rw [child]
  dsimp only [result8368]
  have child := child1
  unfold live8369 coloured8369 at child
  try dsimp only [live8370, coloured8370]
  rw [child]
  dsimp only [result8369]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8371_agree_conditional : tree8371 = literal8371 := by
  rw [tree8371_def]
  rfl
theorem node8371_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8371 live8371 coloured8371 = result8371 := by
  rw [tree8371_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8372_agree_conditional
    (child0 : tree8370 = literal8370)
    (child1 : tree8371 = literal8371) : tree8372 = literal8372 := by
  rw [tree8372_def, child0, child1]
  rfl
theorem node8372_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8370 live8370 coloured8370 = result8370)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8371 live8371 coloured8371 = result8371) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8372 live8372 coloured8372 = result8372 := by
  rw [tree8372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8370 coloured8370 at child
  try dsimp only [live8372, coloured8372]
  rw [child]
  dsimp only [result8370]
  have child := child1
  unfold live8371 coloured8371 at child
  try dsimp only [live8372, coloured8372]
  rw [child]
  dsimp only [result8371]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8373_agree_conditional : tree8373 = literal8373 := by
  rw [tree8373_def]
  rfl
theorem node8373_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8373 live8373 coloured8373 = result8373 := by
  rw [tree8373_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8374_agree_conditional
    (child0 : tree8372 = literal8372)
    (child1 : tree8373 = literal8373) : tree8374 = literal8374 := by
  rw [tree8374_def, child0, child1]
  rfl
theorem node8374_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8372 live8372 coloured8372 = result8372)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8373 live8373 coloured8373 = result8373) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8374 live8374 coloured8374 = result8374 := by
  rw [tree8374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8372 coloured8372 at child
  try dsimp only [live8374, coloured8374]
  rw [child]
  dsimp only [result8372]
  have child := child1
  unfold live8373 coloured8373 at child
  try dsimp only [live8374, coloured8374]
  rw [child]
  dsimp only [result8373]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8375_agree_conditional : tree8375 = literal8375 := by
  rw [tree8375_def]
  rfl
theorem node8375_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8375 live8375 coloured8375 = result8375 := by
  rw [tree8375_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8376_agree_conditional
    (child0 : tree8374 = literal8374)
    (child1 : tree8375 = literal8375) : tree8376 = literal8376 := by
  rw [tree8376_def, child0, child1]
  rfl
theorem node8376_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8374 live8374 coloured8374 = result8374)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8375 live8375 coloured8375 = result8375) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8376 live8376 coloured8376 = result8376 := by
  rw [tree8376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8374 coloured8374 at child
  try dsimp only [live8376, coloured8376]
  rw [child]
  dsimp only [result8374]
  have child := child1
  unfold live8375 coloured8375 at child
  try dsimp only [live8376, coloured8376]
  rw [child]
  dsimp only [result8375]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8377_agree_conditional : tree8377 = literal8377 := by
  rw [tree8377_def]
  rfl
theorem node8377_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8377 live8377 coloured8377 = result8377 := by
  rw [tree8377_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8378_agree_conditional
    (child0 : tree8376 = literal8376)
    (child1 : tree8377 = literal8377) : tree8378 = literal8378 := by
  rw [tree8378_def, child0, child1]
  rfl
theorem node8378_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8376 live8376 coloured8376 = result8376)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8377 live8377 coloured8377 = result8377) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8378 live8378 coloured8378 = result8378 := by
  rw [tree8378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8376 coloured8376 at child
  try dsimp only [live8378, coloured8378]
  rw [child]
  dsimp only [result8376]
  have child := child1
  unfold live8377 coloured8377 at child
  try dsimp only [live8378, coloured8378]
  rw [child]
  dsimp only [result8377]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8379_agree_conditional : tree8379 = literal8379 := by
  rw [tree8379_def]
  rfl
theorem node8379_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8379 live8379 coloured8379 = result8379 := by
  rw [tree8379_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8380_agree_conditional
    (child0 : tree8378 = literal8378)
    (child1 : tree8379 = literal8379) : tree8380 = literal8380 := by
  rw [tree8380_def, child0, child1]
  rfl
theorem node8380_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8378 live8378 coloured8378 = result8378)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8379 live8379 coloured8379 = result8379) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8380 live8380 coloured8380 = result8380 := by
  rw [tree8380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8378 coloured8378 at child
  try dsimp only [live8380, coloured8380]
  rw [child]
  dsimp only [result8378]
  have child := child1
  unfold live8379 coloured8379 at child
  try dsimp only [live8380, coloured8380]
  rw [child]
  dsimp only [result8379]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8381_agree_conditional : tree8381 = literal8381 := by
  rw [tree8381_def]
  rfl
theorem node8381_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8381 live8381 coloured8381 = result8381 := by
  rw [tree8381_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8382_agree_conditional
    (child0 : tree8380 = literal8380)
    (child1 : tree8381 = literal8381) : tree8382 = literal8382 := by
  rw [tree8382_def, child0, child1]
  rfl
theorem node8382_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8380 live8380 coloured8380 = result8380)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8381 live8381 coloured8381 = result8381) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8382 live8382 coloured8382 = result8382 := by
  rw [tree8382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8380 coloured8380 at child
  try dsimp only [live8382, coloured8382]
  rw [child]
  dsimp only [result8380]
  have child := child1
  unfold live8381 coloured8381 at child
  try dsimp only [live8382, coloured8382]
  rw [child]
  dsimp only [result8381]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8383_agree_conditional : tree8383 = literal8383 := by
  rw [tree8383_def]
  rfl
theorem node8383_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8383 live8383 coloured8383 = result8383 := by
  rw [tree8383_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8384_agree_conditional
    (child0 : tree8382 = literal8382)
    (child1 : tree8383 = literal8383) : tree8384 = literal8384 := by
  rw [tree8384_def, child0, child1]
  rfl
theorem node8384_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8382 live8382 coloured8382 = result8382)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8383 live8383 coloured8383 = result8383) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8384 live8384 coloured8384 = result8384 := by
  rw [tree8384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8382 coloured8382 at child
  try dsimp only [live8384, coloured8384]
  rw [child]
  dsimp only [result8382]
  have child := child1
  unfold live8383 coloured8383 at child
  try dsimp only [live8384, coloured8384]
  rw [child]
  dsimp only [result8383]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8385_agree_conditional : tree8385 = literal8385 := by
  rw [tree8385_def]
  rfl
theorem node8385_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8385 live8385 coloured8385 = result8385 := by
  rw [tree8385_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8386_agree_conditional
    (child0 : tree8384 = literal8384)
    (child1 : tree8385 = literal8385) : tree8386 = literal8386 := by
  rw [tree8386_def, child0, child1]
  rfl
theorem node8386_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8384 live8384 coloured8384 = result8384)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8385 live8385 coloured8385 = result8385) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8386 live8386 coloured8386 = result8386 := by
  rw [tree8386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8384 coloured8384 at child
  try dsimp only [live8386, coloured8386]
  rw [child]
  dsimp only [result8384]
  have child := child1
  unfold live8385 coloured8385 at child
  try dsimp only [live8386, coloured8386]
  rw [child]
  dsimp only [result8385]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8387_agree_conditional : tree8387 = literal8387 := by
  rw [tree8387_def]
  rfl
theorem node8387_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8387 live8387 coloured8387 = result8387 := by
  rw [tree8387_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8388_agree_conditional
    (child0 : tree8386 = literal8386)
    (child1 : tree8387 = literal8387) : tree8388 = literal8388 := by
  rw [tree8388_def, child0, child1]
  rfl
theorem node8388_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8386 live8386 coloured8386 = result8386)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8387 live8387 coloured8387 = result8387) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8388 live8388 coloured8388 = result8388 := by
  rw [tree8388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8386 coloured8386 at child
  try dsimp only [live8388, coloured8388]
  rw [child]
  dsimp only [result8386]
  have child := child1
  unfold live8387 coloured8387 at child
  try dsimp only [live8388, coloured8388]
  rw [child]
  dsimp only [result8387]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8389_agree_conditional : tree8389 = literal8389 := by
  rw [tree8389_def]
  rfl
theorem node8389_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8389 live8389 coloured8389 = result8389 := by
  rw [tree8389_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8390_agree_conditional
    (child0 : tree8388 = literal8388)
    (child1 : tree8389 = literal8389) : tree8390 = literal8390 := by
  rw [tree8390_def, child0, child1]
  rfl
theorem node8390_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8388 live8388 coloured8388 = result8388)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8389 live8389 coloured8389 = result8389) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8390 live8390 coloured8390 = result8390 := by
  rw [tree8390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8388 coloured8388 at child
  try dsimp only [live8390, coloured8390]
  rw [child]
  dsimp only [result8388]
  have child := child1
  unfold live8389 coloured8389 at child
  try dsimp only [live8390, coloured8390]
  rw [child]
  dsimp only [result8389]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8391_agree_conditional : tree8391 = literal8391 := by
  rw [tree8391_def]
  rfl
theorem node8391_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8391 live8391 coloured8391 = result8391 := by
  rw [tree8391_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8392_agree_conditional
    (child0 : tree8390 = literal8390)
    (child1 : tree8391 = literal8391) : tree8392 = literal8392 := by
  rw [tree8392_def, child0, child1]
  rfl
theorem node8392_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8390 live8390 coloured8390 = result8390)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8391 live8391 coloured8391 = result8391) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8392 live8392 coloured8392 = result8392 := by
  rw [tree8392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8390 coloured8390 at child
  try dsimp only [live8392, coloured8392]
  rw [child]
  dsimp only [result8390]
  have child := child1
  unfold live8391 coloured8391 at child
  try dsimp only [live8392, coloured8392]
  rw [child]
  dsimp only [result8391]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8393_agree_conditional : tree8393 = literal8393 := by
  rw [tree8393_def]
  rfl
theorem node8393_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8393 live8393 coloured8393 = result8393 := by
  rw [tree8393_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8394_agree_conditional
    (child0 : tree8392 = literal8392)
    (child1 : tree8393 = literal8393) : tree8394 = literal8394 := by
  rw [tree8394_def, child0, child1]
  rfl
theorem node8394_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8392 live8392 coloured8392 = result8392)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8393 live8393 coloured8393 = result8393) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8394 live8394 coloured8394 = result8394 := by
  rw [tree8394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8392 coloured8392 at child
  try dsimp only [live8394, coloured8394]
  rw [child]
  dsimp only [result8392]
  have child := child1
  unfold live8393 coloured8393 at child
  try dsimp only [live8394, coloured8394]
  rw [child]
  dsimp only [result8393]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8395_agree_conditional : tree8395 = literal8395 := by
  rw [tree8395_def]
  rfl
theorem node8395_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8395 live8395 coloured8395 = result8395 := by
  rw [tree8395_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8396_agree_conditional
    (child0 : tree8394 = literal8394)
    (child1 : tree8395 = literal8395) : tree8396 = literal8396 := by
  rw [tree8396_def, child0, child1]
  rfl
theorem node8396_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8394 live8394 coloured8394 = result8394)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8395 live8395 coloured8395 = result8395) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8396 live8396 coloured8396 = result8396 := by
  rw [tree8396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8394 coloured8394 at child
  try dsimp only [live8396, coloured8396]
  rw [child]
  dsimp only [result8394]
  have child := child1
  unfold live8395 coloured8395 at child
  try dsimp only [live8396, coloured8396]
  rw [child]
  dsimp only [result8395]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8397_agree_conditional : tree8397 = literal8397 := by
  rw [tree8397_def]
  rfl
theorem node8397_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8397 live8397 coloured8397 = result8397 := by
  rw [tree8397_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8398_agree_conditional
    (child0 : tree8396 = literal8396)
    (child1 : tree8397 = literal8397) : tree8398 = literal8398 := by
  rw [tree8398_def, child0, child1]
  rfl
theorem node8398_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8396 live8396 coloured8396 = result8396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8397 live8397 coloured8397 = result8397) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8398 live8398 coloured8398 = result8398 := by
  rw [tree8398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8396 coloured8396 at child
  try dsimp only [live8398, coloured8398]
  rw [child]
  dsimp only [result8396]
  have child := child1
  unfold live8397 coloured8397 at child
  try dsimp only [live8398, coloured8398]
  rw [child]
  dsimp only [result8397]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8399_agree_conditional : tree8399 = literal8399 := by
  rw [tree8399_def]
  rfl
theorem node8399_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8399 live8399 coloured8399 = result8399 := by
  rw [tree8399_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8400_agree_conditional
    (child0 : tree8398 = literal8398)
    (child1 : tree8399 = literal8399) : tree8400 = literal8400 := by
  rw [tree8400_def, child0, child1]
  rfl
theorem node8400_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8398 live8398 coloured8398 = result8398)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8399 live8399 coloured8399 = result8399) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8400 live8400 coloured8400 = result8400 := by
  rw [tree8400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8398 coloured8398 at child
  try dsimp only [live8400, coloured8400]
  rw [child]
  dsimp only [result8398]
  have child := child1
  unfold live8399 coloured8399 at child
  try dsimp only [live8400, coloured8400]
  rw [child]
  dsimp only [result8399]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8401_agree_conditional : tree8401 = literal8401 := by
  rw [tree8401_def]
  rfl
theorem node8401_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8401 live8401 coloured8401 = result8401 := by
  rw [tree8401_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8402_agree_conditional
    (child0 : tree8400 = literal8400)
    (child1 : tree8401 = literal8401) : tree8402 = literal8402 := by
  rw [tree8402_def, child0, child1]
  rfl
theorem node8402_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8400 live8400 coloured8400 = result8400)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8401 live8401 coloured8401 = result8401) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8402 live8402 coloured8402 = result8402 := by
  rw [tree8402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8400 coloured8400 at child
  try dsimp only [live8402, coloured8402]
  rw [child]
  dsimp only [result8400]
  have child := child1
  unfold live8401 coloured8401 at child
  try dsimp only [live8402, coloured8402]
  rw [child]
  dsimp only [result8401]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8403_agree_conditional : tree8403 = literal8403 := by
  rw [tree8403_def]
  rfl
theorem node8403_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8403 live8403 coloured8403 = result8403 := by
  rw [tree8403_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8404_agree_conditional
    (child0 : tree8402 = literal8402)
    (child1 : tree8403 = literal8403) : tree8404 = literal8404 := by
  rw [tree8404_def, child0, child1]
  rfl
theorem node8404_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8402 live8402 coloured8402 = result8402)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8403 live8403 coloured8403 = result8403) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8404 live8404 coloured8404 = result8404 := by
  rw [tree8404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8402 coloured8402 at child
  try dsimp only [live8404, coloured8404]
  rw [child]
  dsimp only [result8402]
  have child := child1
  unfold live8403 coloured8403 at child
  try dsimp only [live8404, coloured8404]
  rw [child]
  dsimp only [result8403]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8405_agree_conditional : tree8405 = literal8405 := by
  rw [tree8405_def]
  rfl
theorem node8405_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8405 live8405 coloured8405 = result8405 := by
  rw [tree8405_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8406_agree_conditional
    (child0 : tree8404 = literal8404)
    (child1 : tree8405 = literal8405) : tree8406 = literal8406 := by
  rw [tree8406_def, child0, child1]
  rfl
theorem node8406_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8404 live8404 coloured8404 = result8404)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8405 live8405 coloured8405 = result8405) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8406 live8406 coloured8406 = result8406 := by
  rw [tree8406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8404 coloured8404 at child
  try dsimp only [live8406, coloured8406]
  rw [child]
  dsimp only [result8404]
  have child := child1
  unfold live8405 coloured8405 at child
  try dsimp only [live8406, coloured8406]
  rw [child]
  dsimp only [result8405]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8407_agree_conditional : tree8407 = literal8407 := by
  rw [tree8407_def]
  rfl
theorem node8407_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8407 live8407 coloured8407 = result8407 := by
  rw [tree8407_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8408_agree_conditional
    (child0 : tree8406 = literal8406)
    (child1 : tree8407 = literal8407) : tree8408 = literal8408 := by
  rw [tree8408_def, child0, child1]
  rfl
theorem node8408_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8406 live8406 coloured8406 = result8406)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8407 live8407 coloured8407 = result8407) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8408 live8408 coloured8408 = result8408 := by
  rw [tree8408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8406 coloured8406 at child
  try dsimp only [live8408, coloured8408]
  rw [child]
  dsimp only [result8406]
  have child := child1
  unfold live8407 coloured8407 at child
  try dsimp only [live8408, coloured8408]
  rw [child]
  dsimp only [result8407]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8409_agree_conditional : tree8409 = literal8409 := by
  rw [tree8409_def]
  rfl
theorem node8409_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8409 live8409 coloured8409 = result8409 := by
  rw [tree8409_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8410_agree_conditional
    (child0 : tree8408 = literal8408)
    (child1 : tree8409 = literal8409) : tree8410 = literal8410 := by
  rw [tree8410_def, child0, child1]
  rfl
theorem node8410_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8408 live8408 coloured8408 = result8408)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8409 live8409 coloured8409 = result8409) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8410 live8410 coloured8410 = result8410 := by
  rw [tree8410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8408 coloured8408 at child
  try dsimp only [live8410, coloured8410]
  rw [child]
  dsimp only [result8408]
  have child := child1
  unfold live8409 coloured8409 at child
  try dsimp only [live8410, coloured8410]
  rw [child]
  dsimp only [result8409]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8411_agree_conditional : tree8411 = literal8411 := by
  rw [tree8411_def]
  rfl
theorem node8411_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8411 live8411 coloured8411 = result8411 := by
  rw [tree8411_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8412_agree_conditional
    (child0 : tree8410 = literal8410)
    (child1 : tree8411 = literal8411) : tree8412 = literal8412 := by
  rw [tree8412_def, child0, child1]
  rfl
theorem node8412_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8410 live8410 coloured8410 = result8410)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8411 live8411 coloured8411 = result8411) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8412 live8412 coloured8412 = result8412 := by
  rw [tree8412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8410 coloured8410 at child
  try dsimp only [live8412, coloured8412]
  rw [child]
  dsimp only [result8410]
  have child := child1
  unfold live8411 coloured8411 at child
  try dsimp only [live8412, coloured8412]
  rw [child]
  dsimp only [result8411]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8413_agree_conditional : tree8413 = literal8413 := by
  rw [tree8413_def]
  rfl
theorem node8413_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8413 live8413 coloured8413 = result8413 := by
  rw [tree8413_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8414_agree_conditional
    (child0 : tree8412 = literal8412)
    (child1 : tree8413 = literal8413) : tree8414 = literal8414 := by
  rw [tree8414_def, child0, child1]
  rfl
theorem node8414_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8412 live8412 coloured8412 = result8412)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8413 live8413 coloured8413 = result8413) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8414 live8414 coloured8414 = result8414 := by
  rw [tree8414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8412 coloured8412 at child
  try dsimp only [live8414, coloured8414]
  rw [child]
  dsimp only [result8412]
  have child := child1
  unfold live8413 coloured8413 at child
  try dsimp only [live8414, coloured8414]
  rw [child]
  dsimp only [result8413]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8415_agree_conditional : tree8415 = literal8415 := by
  rw [tree8415_def]
  rfl
theorem node8415_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8415 live8415 coloured8415 = result8415 := by
  rw [tree8415_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8416_agree_conditional
    (child0 : tree8414 = literal8414)
    (child1 : tree8415 = literal8415) : tree8416 = literal8416 := by
  rw [tree8416_def, child0, child1]
  rfl
theorem node8416_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8414 live8414 coloured8414 = result8414)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8415 live8415 coloured8415 = result8415) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8416 live8416 coloured8416 = result8416 := by
  rw [tree8416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8414 coloured8414 at child
  try dsimp only [live8416, coloured8416]
  rw [child]
  dsimp only [result8414]
  have child := child1
  unfold live8415 coloured8415 at child
  try dsimp only [live8416, coloured8416]
  rw [child]
  dsimp only [result8415]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8417_agree_conditional : tree8417 = literal8417 := by
  rw [tree8417_def]
  rfl
theorem node8417_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8417 live8417 coloured8417 = result8417 := by
  rw [tree8417_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8418_agree_conditional
    (child0 : tree8416 = literal8416)
    (child1 : tree8417 = literal8417) : tree8418 = literal8418 := by
  rw [tree8418_def, child0, child1]
  rfl
theorem node8418_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8416 live8416 coloured8416 = result8416)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8417 live8417 coloured8417 = result8417) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8418 live8418 coloured8418 = result8418 := by
  rw [tree8418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8416 coloured8416 at child
  try dsimp only [live8418, coloured8418]
  rw [child]
  dsimp only [result8416]
  have child := child1
  unfold live8417 coloured8417 at child
  try dsimp only [live8418, coloured8418]
  rw [child]
  dsimp only [result8417]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8419_agree_conditional : tree8419 = literal8419 := by
  rw [tree8419_def]
  rfl
theorem node8419_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8419 live8419 coloured8419 = result8419 := by
  rw [tree8419_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8420_agree_conditional
    (child0 : tree8418 = literal8418)
    (child1 : tree8419 = literal8419) : tree8420 = literal8420 := by
  rw [tree8420_def, child0, child1]
  rfl
theorem node8420_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8418 live8418 coloured8418 = result8418)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8419 live8419 coloured8419 = result8419) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8420 live8420 coloured8420 = result8420 := by
  rw [tree8420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8418 coloured8418 at child
  try dsimp only [live8420, coloured8420]
  rw [child]
  dsimp only [result8418]
  have child := child1
  unfold live8419 coloured8419 at child
  try dsimp only [live8420, coloured8420]
  rw [child]
  dsimp only [result8419]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8421_agree_conditional : tree8421 = literal8421 := by
  rw [tree8421_def]
  rfl
theorem node8421_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8421 live8421 coloured8421 = result8421 := by
  rw [tree8421_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8422_agree_conditional
    (child0 : tree8420 = literal8420)
    (child1 : tree8421 = literal8421) : tree8422 = literal8422 := by
  rw [tree8422_def, child0, child1]
  rfl
theorem node8422_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8420 live8420 coloured8420 = result8420)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8421 live8421 coloured8421 = result8421) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8422 live8422 coloured8422 = result8422 := by
  rw [tree8422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8420 coloured8420 at child
  try dsimp only [live8422, coloured8422]
  rw [child]
  dsimp only [result8420]
  have child := child1
  unfold live8421 coloured8421 at child
  try dsimp only [live8422, coloured8422]
  rw [child]
  dsimp only [result8421]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8423_agree_conditional : tree8423 = literal8423 := by
  rw [tree8423_def]
  rfl
theorem node8423_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8423 live8423 coloured8423 = result8423 := by
  rw [tree8423_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8424_agree_conditional
    (child0 : tree8422 = literal8422)
    (child1 : tree8423 = literal8423) : tree8424 = literal8424 := by
  rw [tree8424_def, child0, child1]
  rfl
theorem node8424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8422 live8422 coloured8422 = result8422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8423 live8423 coloured8423 = result8423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8424 live8424 coloured8424 = result8424 := by
  rw [tree8424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8422 coloured8422 at child
  try dsimp only [live8424, coloured8424]
  rw [child]
  dsimp only [result8422]
  have child := child1
  unfold live8423 coloured8423 at child
  try dsimp only [live8424, coloured8424]
  rw [child]
  dsimp only [result8423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8425_agree_conditional : tree8425 = literal8425 := by
  rw [tree8425_def]
  rfl
theorem node8425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8425 live8425 coloured8425 = result8425 := by
  rw [tree8425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8426_agree_conditional
    (child0 : tree8424 = literal8424)
    (child1 : tree8425 = literal8425) : tree8426 = literal8426 := by
  rw [tree8426_def, child0, child1]
  rfl
theorem node8426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8424 live8424 coloured8424 = result8424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8425 live8425 coloured8425 = result8425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8426 live8426 coloured8426 = result8426 := by
  rw [tree8426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8424 coloured8424 at child
  try dsimp only [live8426, coloured8426]
  rw [child]
  dsimp only [result8424]
  have child := child1
  unfold live8425 coloured8425 at child
  try dsimp only [live8426, coloured8426]
  rw [child]
  dsimp only [result8425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8427_agree_conditional : tree8427 = literal8427 := by
  rw [tree8427_def]
  rfl
theorem node8427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8427 live8427 coloured8427 = result8427 := by
  rw [tree8427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8428_agree_conditional
    (child0 : tree8426 = literal8426)
    (child1 : tree8427 = literal8427) : tree8428 = literal8428 := by
  rw [tree8428_def, child0, child1]
  rfl
theorem node8428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8426 live8426 coloured8426 = result8426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8427 live8427 coloured8427 = result8427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8428 live8428 coloured8428 = result8428 := by
  rw [tree8428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8426 coloured8426 at child
  try dsimp only [live8428, coloured8428]
  rw [child]
  dsimp only [result8426]
  have child := child1
  unfold live8427 coloured8427 at child
  try dsimp only [live8428, coloured8428]
  rw [child]
  dsimp only [result8427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8429_agree_conditional : tree8429 = literal8429 := by
  rw [tree8429_def]
  rfl
theorem node8429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8429 live8429 coloured8429 = result8429 := by
  rw [tree8429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8430_agree_conditional
    (child0 : tree8428 = literal8428)
    (child1 : tree8429 = literal8429) : tree8430 = literal8430 := by
  rw [tree8430_def, child0, child1]
  rfl
theorem node8430_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8428 live8428 coloured8428 = result8428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8429 live8429 coloured8429 = result8429) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8430 live8430 coloured8430 = result8430 := by
  rw [tree8430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8428 coloured8428 at child
  try dsimp only [live8430, coloured8430]
  rw [child]
  dsimp only [result8428]
  have child := child1
  unfold live8429 coloured8429 at child
  try dsimp only [live8430, coloured8430]
  rw [child]
  dsimp only [result8429]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8431_agree_conditional : tree8431 = literal8431 := by
  rw [tree8431_def]
  rfl
theorem node8431_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8431 live8431 coloured8431 = result8431 := by
  rw [tree8431_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8432_agree_conditional
    (child0 : tree8430 = literal8430)
    (child1 : tree8431 = literal8431) : tree8432 = literal8432 := by
  rw [tree8432_def, child0, child1]
  rfl
theorem node8432_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8430 live8430 coloured8430 = result8430)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8431 live8431 coloured8431 = result8431) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8432 live8432 coloured8432 = result8432 := by
  rw [tree8432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8430 coloured8430 at child
  try dsimp only [live8432, coloured8432]
  rw [child]
  dsimp only [result8430]
  have child := child1
  unfold live8431 coloured8431 at child
  try dsimp only [live8432, coloured8432]
  rw [child]
  dsimp only [result8431]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8433_agree_conditional : tree8433 = literal8433 := by
  rw [tree8433_def]
  rfl
theorem node8433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8433 live8433 coloured8433 = result8433 := by
  rw [tree8433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8434_agree_conditional
    (child0 : tree8432 = literal8432)
    (child1 : tree8433 = literal8433) : tree8434 = literal8434 := by
  rw [tree8434_def, child0, child1]
  rfl
theorem node8434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8432 live8432 coloured8432 = result8432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8433 live8433 coloured8433 = result8433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8434 live8434 coloured8434 = result8434 := by
  rw [tree8434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8432 coloured8432 at child
  try dsimp only [live8434, coloured8434]
  rw [child]
  dsimp only [result8432]
  have child := child1
  unfold live8433 coloured8433 at child
  try dsimp only [live8434, coloured8434]
  rw [child]
  dsimp only [result8433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8435_agree_conditional : tree8435 = literal8435 := by
  rw [tree8435_def]
  rfl
theorem node8435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8435 live8435 coloured8435 = result8435 := by
  rw [tree8435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8436_agree_conditional
    (child0 : tree8434 = literal8434)
    (child1 : tree8435 = literal8435) : tree8436 = literal8436 := by
  rw [tree8436_def, child0, child1]
  rfl
theorem node8436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8434 live8434 coloured8434 = result8434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8435 live8435 coloured8435 = result8435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8436 live8436 coloured8436 = result8436 := by
  rw [tree8436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8434 coloured8434 at child
  try dsimp only [live8436, coloured8436]
  rw [child]
  dsimp only [result8434]
  have child := child1
  unfold live8435 coloured8435 at child
  try dsimp only [live8436, coloured8436]
  rw [child]
  dsimp only [result8435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8437_agree_conditional : tree8437 = literal8437 := by
  rw [tree8437_def]
  rfl
theorem node8437_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8437 live8437 coloured8437 = result8437 := by
  rw [tree8437_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8438_agree_conditional
    (child0 : tree8436 = literal8436)
    (child1 : tree8437 = literal8437) : tree8438 = literal8438 := by
  rw [tree8438_def, child0, child1]
  rfl
theorem node8438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8436 live8436 coloured8436 = result8436)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8437 live8437 coloured8437 = result8437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8438 live8438 coloured8438 = result8438 := by
  rw [tree8438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8436 coloured8436 at child
  try dsimp only [live8438, coloured8438]
  rw [child]
  dsimp only [result8436]
  have child := child1
  unfold live8437 coloured8437 at child
  try dsimp only [live8438, coloured8438]
  rw [child]
  dsimp only [result8437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8439_agree_conditional : tree8439 = literal8439 := by
  rw [tree8439_def]
  rfl
theorem node8439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8439 live8439 coloured8439 = result8439 := by
  rw [tree8439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8440_agree_conditional
    (child0 : tree8438 = literal8438)
    (child1 : tree8439 = literal8439) : tree8440 = literal8440 := by
  rw [tree8440_def, child0, child1]
  rfl
theorem node8440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8438 live8438 coloured8438 = result8438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8439 live8439 coloured8439 = result8439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8440 live8440 coloured8440 = result8440 := by
  rw [tree8440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8438 coloured8438 at child
  try dsimp only [live8440, coloured8440]
  rw [child]
  dsimp only [result8438]
  have child := child1
  unfold live8439 coloured8439 at child
  try dsimp only [live8440, coloured8440]
  rw [child]
  dsimp only [result8439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8441_agree_conditional : tree8441 = literal8441 := by
  rw [tree8441_def]
  rfl
theorem node8441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8441 live8441 coloured8441 = result8441 := by
  rw [tree8441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8442_agree_conditional
    (child0 : tree8440 = literal8440)
    (child1 : tree8441 = literal8441) : tree8442 = literal8442 := by
  rw [tree8442_def, child0, child1]
  rfl
theorem node8442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8440 live8440 coloured8440 = result8440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8441 live8441 coloured8441 = result8441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8442 live8442 coloured8442 = result8442 := by
  rw [tree8442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8440 coloured8440 at child
  try dsimp only [live8442, coloured8442]
  rw [child]
  dsimp only [result8440]
  have child := child1
  unfold live8441 coloured8441 at child
  try dsimp only [live8442, coloured8442]
  rw [child]
  dsimp only [result8441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8443_agree_conditional : tree8443 = literal8443 := by
  rw [tree8443_def]
  rfl
theorem node8443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8443 live8443 coloured8443 = result8443 := by
  rw [tree8443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8444_agree_conditional
    (child0 : tree8442 = literal8442)
    (child1 : tree8443 = literal8443) : tree8444 = literal8444 := by
  rw [tree8444_def, child0, child1]
  rfl
theorem node8444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8442 live8442 coloured8442 = result8442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8443 live8443 coloured8443 = result8443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8444 live8444 coloured8444 = result8444 := by
  rw [tree8444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8442 coloured8442 at child
  try dsimp only [live8444, coloured8444]
  rw [child]
  dsimp only [result8442]
  have child := child1
  unfold live8443 coloured8443 at child
  try dsimp only [live8444, coloured8444]
  rw [child]
  dsimp only [result8443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8445_agree_conditional : tree8445 = literal8445 := by
  rw [tree8445_def]
  rfl
theorem node8445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8445 live8445 coloured8445 = result8445 := by
  rw [tree8445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8446_agree_conditional
    (child0 : tree8444 = literal8444)
    (child1 : tree8445 = literal8445) : tree8446 = literal8446 := by
  rw [tree8446_def, child0, child1]
  rfl
theorem node8446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8444 live8444 coloured8444 = result8444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8445 live8445 coloured8445 = result8445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8446 live8446 coloured8446 = result8446 := by
  rw [tree8446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8444 coloured8444 at child
  try dsimp only [live8446, coloured8446]
  rw [child]
  dsimp only [result8444]
  have child := child1
  unfold live8445 coloured8445 at child
  try dsimp only [live8446, coloured8446]
  rw [child]
  dsimp only [result8445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8447_agree_conditional : tree8447 = literal8447 := by
  rw [tree8447_def]
  rfl
theorem node8447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8447 live8447 coloured8447 = result8447 := by
  rw [tree8447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
