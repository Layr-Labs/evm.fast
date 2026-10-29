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
theorem tree6336_agree_conditional
    (child0 : tree6334 = literal6334)
    (child1 : tree6335 = literal6335) : tree6336 = literal6336 := by
  rw [tree6336_def, child0, child1]
  rfl
theorem node6336_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6334 live6334 coloured6334 = result6334)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6335 live6335 coloured6335 = result6335) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6336 live6336 coloured6336 = result6336 := by
  rw [tree6336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6334 coloured6334 at child
  try dsimp only [live6336, coloured6336]
  rw [child]
  dsimp only [result6334]
  have child := child1
  unfold live6335 coloured6335 at child
  try dsimp only [live6336, coloured6336]
  rw [child]
  dsimp only [result6335]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6337_agree_conditional : tree6337 = literal6337 := by
  rw [tree6337_def]
  rfl
theorem node6337_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6337 live6337 coloured6337 = result6337 := by
  rw [tree6337_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6338_agree_conditional
    (child0 : tree6336 = literal6336)
    (child1 : tree6337 = literal6337) : tree6338 = literal6338 := by
  rw [tree6338_def, child0, child1]
  rfl
theorem node6338_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6336 live6336 coloured6336 = result6336)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6337 live6337 coloured6337 = result6337) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6338 live6338 coloured6338 = result6338 := by
  rw [tree6338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6336 coloured6336 at child
  try dsimp only [live6338, coloured6338]
  rw [child]
  dsimp only [result6336]
  have child := child1
  unfold live6337 coloured6337 at child
  try dsimp only [live6338, coloured6338]
  rw [child]
  dsimp only [result6337]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6339_agree_conditional : tree6339 = literal6339 := by
  rw [tree6339_def]
  rfl
theorem node6339_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6339 live6339 coloured6339 = result6339 := by
  rw [tree6339_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6340_agree_conditional
    (child0 : tree6338 = literal6338)
    (child1 : tree6339 = literal6339) : tree6340 = literal6340 := by
  rw [tree6340_def, child0, child1]
  rfl
theorem node6340_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6338 live6338 coloured6338 = result6338)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6339 live6339 coloured6339 = result6339) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6340 live6340 coloured6340 = result6340 := by
  rw [tree6340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6338 coloured6338 at child
  try dsimp only [live6340, coloured6340]
  rw [child]
  dsimp only [result6338]
  have child := child1
  unfold live6339 coloured6339 at child
  try dsimp only [live6340, coloured6340]
  rw [child]
  dsimp only [result6339]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6341_agree_conditional : tree6341 = literal6341 := by
  rw [tree6341_def]
  rfl
theorem node6341_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6341 live6341 coloured6341 = result6341 := by
  rw [tree6341_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6342_agree_conditional
    (child0 : tree6340 = literal6340)
    (child1 : tree6341 = literal6341) : tree6342 = literal6342 := by
  rw [tree6342_def, child0, child1]
  rfl
theorem node6342_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6340 live6340 coloured6340 = result6340)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6341 live6341 coloured6341 = result6341) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6342 live6342 coloured6342 = result6342 := by
  rw [tree6342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6340 coloured6340 at child
  try dsimp only [live6342, coloured6342]
  rw [child]
  dsimp only [result6340]
  have child := child1
  unfold live6341 coloured6341 at child
  try dsimp only [live6342, coloured6342]
  rw [child]
  dsimp only [result6341]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6343_agree_conditional : tree6343 = literal6343 := by
  rw [tree6343_def]
  rfl
theorem node6343_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6343 live6343 coloured6343 = result6343 := by
  rw [tree6343_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6344_agree_conditional
    (child0 : tree6342 = literal6342)
    (child1 : tree6343 = literal6343) : tree6344 = literal6344 := by
  rw [tree6344_def, child0, child1]
  rfl
theorem node6344_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6342 live6342 coloured6342 = result6342)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6343 live6343 coloured6343 = result6343) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6344 live6344 coloured6344 = result6344 := by
  rw [tree6344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6342 coloured6342 at child
  try dsimp only [live6344, coloured6344]
  rw [child]
  dsimp only [result6342]
  have child := child1
  unfold live6343 coloured6343 at child
  try dsimp only [live6344, coloured6344]
  rw [child]
  dsimp only [result6343]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6345_agree_conditional : tree6345 = literal6345 := by
  rw [tree6345_def]
  rfl
theorem node6345_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6345 live6345 coloured6345 = result6345 := by
  rw [tree6345_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6346_agree_conditional
    (child0 : tree6344 = literal6344)
    (child1 : tree6345 = literal6345) : tree6346 = literal6346 := by
  rw [tree6346_def, child0, child1]
  rfl
theorem node6346_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6344 live6344 coloured6344 = result6344)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6345 live6345 coloured6345 = result6345) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6346 live6346 coloured6346 = result6346 := by
  rw [tree6346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6344 coloured6344 at child
  try dsimp only [live6346, coloured6346]
  rw [child]
  dsimp only [result6344]
  have child := child1
  unfold live6345 coloured6345 at child
  try dsimp only [live6346, coloured6346]
  rw [child]
  dsimp only [result6345]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6347_agree_conditional : tree6347 = literal6347 := by
  rw [tree6347_def]
  rfl
theorem node6347_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6347 live6347 coloured6347 = result6347 := by
  rw [tree6347_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6348_agree_conditional
    (child0 : tree6346 = literal6346)
    (child1 : tree6347 = literal6347) : tree6348 = literal6348 := by
  rw [tree6348_def, child0, child1]
  rfl
theorem node6348_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6346 live6346 coloured6346 = result6346)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6347 live6347 coloured6347 = result6347) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6348 live6348 coloured6348 = result6348 := by
  rw [tree6348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6346 coloured6346 at child
  try dsimp only [live6348, coloured6348]
  rw [child]
  dsimp only [result6346]
  have child := child1
  unfold live6347 coloured6347 at child
  try dsimp only [live6348, coloured6348]
  rw [child]
  dsimp only [result6347]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6349_agree_conditional : tree6349 = literal6349 := by
  rw [tree6349_def]
  rfl
theorem node6349_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6349 live6349 coloured6349 = result6349 := by
  rw [tree6349_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6350_agree_conditional
    (child0 : tree6348 = literal6348)
    (child1 : tree6349 = literal6349) : tree6350 = literal6350 := by
  rw [tree6350_def, child0, child1]
  rfl
theorem node6350_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6348 live6348 coloured6348 = result6348)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6349 live6349 coloured6349 = result6349) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6350 live6350 coloured6350 = result6350 := by
  rw [tree6350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6348 coloured6348 at child
  try dsimp only [live6350, coloured6350]
  rw [child]
  dsimp only [result6348]
  have child := child1
  unfold live6349 coloured6349 at child
  try dsimp only [live6350, coloured6350]
  rw [child]
  dsimp only [result6349]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6351_agree_conditional : tree6351 = literal6351 := by
  rw [tree6351_def]
  rfl
theorem node6351_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6351 live6351 coloured6351 = result6351 := by
  rw [tree6351_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6352_agree_conditional
    (child0 : tree6350 = literal6350)
    (child1 : tree6351 = literal6351) : tree6352 = literal6352 := by
  rw [tree6352_def, child0, child1]
  rfl
theorem node6352_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6350 live6350 coloured6350 = result6350)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6351 live6351 coloured6351 = result6351) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6352 live6352 coloured6352 = result6352 := by
  rw [tree6352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6350 coloured6350 at child
  try dsimp only [live6352, coloured6352]
  rw [child]
  dsimp only [result6350]
  have child := child1
  unfold live6351 coloured6351 at child
  try dsimp only [live6352, coloured6352]
  rw [child]
  dsimp only [result6351]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6353_agree_conditional : tree6353 = literal6353 := by
  rw [tree6353_def]
  rfl
theorem node6353_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6353 live6353 coloured6353 = result6353 := by
  rw [tree6353_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6354_agree_conditional
    (child0 : tree6352 = literal6352)
    (child1 : tree6353 = literal6353) : tree6354 = literal6354 := by
  rw [tree6354_def, child0, child1]
  rfl
theorem node6354_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6352 live6352 coloured6352 = result6352)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6353 live6353 coloured6353 = result6353) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6354 live6354 coloured6354 = result6354 := by
  rw [tree6354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6352 coloured6352 at child
  try dsimp only [live6354, coloured6354]
  rw [child]
  dsimp only [result6352]
  have child := child1
  unfold live6353 coloured6353 at child
  try dsimp only [live6354, coloured6354]
  rw [child]
  dsimp only [result6353]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6355_agree_conditional : tree6355 = literal6355 := by
  rw [tree6355_def]
  rfl
theorem node6355_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6355 live6355 coloured6355 = result6355 := by
  rw [tree6355_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6356_agree_conditional
    (child0 : tree6354 = literal6354)
    (child1 : tree6355 = literal6355) : tree6356 = literal6356 := by
  rw [tree6356_def, child0, child1]
  rfl
theorem node6356_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6354 live6354 coloured6354 = result6354)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6355 live6355 coloured6355 = result6355) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6356 live6356 coloured6356 = result6356 := by
  rw [tree6356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6354 coloured6354 at child
  try dsimp only [live6356, coloured6356]
  rw [child]
  dsimp only [result6354]
  have child := child1
  unfold live6355 coloured6355 at child
  try dsimp only [live6356, coloured6356]
  rw [child]
  dsimp only [result6355]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6357_agree_conditional : tree6357 = literal6357 := by
  rw [tree6357_def]
  rfl
theorem node6357_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6357 live6357 coloured6357 = result6357 := by
  rw [tree6357_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6358_agree_conditional
    (child0 : tree6356 = literal6356)
    (child1 : tree6357 = literal6357) : tree6358 = literal6358 := by
  rw [tree6358_def, child0, child1]
  rfl
theorem node6358_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6356 live6356 coloured6356 = result6356)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6357 live6357 coloured6357 = result6357) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6358 live6358 coloured6358 = result6358 := by
  rw [tree6358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6356 coloured6356 at child
  try dsimp only [live6358, coloured6358]
  rw [child]
  dsimp only [result6356]
  have child := child1
  unfold live6357 coloured6357 at child
  try dsimp only [live6358, coloured6358]
  rw [child]
  dsimp only [result6357]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6359_agree_conditional : tree6359 = literal6359 := by
  rw [tree6359_def]
  rfl
theorem node6359_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6359 live6359 coloured6359 = result6359 := by
  rw [tree6359_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6360_agree_conditional
    (child0 : tree6358 = literal6358)
    (child1 : tree6359 = literal6359) : tree6360 = literal6360 := by
  rw [tree6360_def, child0, child1]
  rfl
theorem node6360_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6358 live6358 coloured6358 = result6358)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6359 live6359 coloured6359 = result6359) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6360 live6360 coloured6360 = result6360 := by
  rw [tree6360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6358 coloured6358 at child
  try dsimp only [live6360, coloured6360]
  rw [child]
  dsimp only [result6358]
  have child := child1
  unfold live6359 coloured6359 at child
  try dsimp only [live6360, coloured6360]
  rw [child]
  dsimp only [result6359]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6361_agree_conditional : tree6361 = literal6361 := by
  rw [tree6361_def]
  rfl
theorem node6361_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6361 live6361 coloured6361 = result6361 := by
  rw [tree6361_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6362_agree_conditional
    (child0 : tree6360 = literal6360)
    (child1 : tree6361 = literal6361) : tree6362 = literal6362 := by
  rw [tree6362_def, child0, child1]
  rfl
theorem node6362_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6360 live6360 coloured6360 = result6360)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6361 live6361 coloured6361 = result6361) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6362 live6362 coloured6362 = result6362 := by
  rw [tree6362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6360 coloured6360 at child
  try dsimp only [live6362, coloured6362]
  rw [child]
  dsimp only [result6360]
  have child := child1
  unfold live6361 coloured6361 at child
  try dsimp only [live6362, coloured6362]
  rw [child]
  dsimp only [result6361]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6363_agree_conditional : tree6363 = literal6363 := by
  rw [tree6363_def]
  rfl
theorem node6363_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6363 live6363 coloured6363 = result6363 := by
  rw [tree6363_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6364_agree_conditional
    (child0 : tree6362 = literal6362)
    (child1 : tree6363 = literal6363) : tree6364 = literal6364 := by
  rw [tree6364_def, child0, child1]
  rfl
theorem node6364_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6362 live6362 coloured6362 = result6362)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6363 live6363 coloured6363 = result6363) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6364 live6364 coloured6364 = result6364 := by
  rw [tree6364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6362 coloured6362 at child
  try dsimp only [live6364, coloured6364]
  rw [child]
  dsimp only [result6362]
  have child := child1
  unfold live6363 coloured6363 at child
  try dsimp only [live6364, coloured6364]
  rw [child]
  dsimp only [result6363]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6365_agree_conditional : tree6365 = literal6365 := by
  rw [tree6365_def]
  rfl
theorem node6365_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6365 live6365 coloured6365 = result6365 := by
  rw [tree6365_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6366_agree_conditional
    (child0 : tree6364 = literal6364)
    (child1 : tree6365 = literal6365) : tree6366 = literal6366 := by
  rw [tree6366_def, child0, child1]
  rfl
theorem node6366_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6364 live6364 coloured6364 = result6364)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6365 live6365 coloured6365 = result6365) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6366 live6366 coloured6366 = result6366 := by
  rw [tree6366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6364 coloured6364 at child
  try dsimp only [live6366, coloured6366]
  rw [child]
  dsimp only [result6364]
  have child := child1
  unfold live6365 coloured6365 at child
  try dsimp only [live6366, coloured6366]
  rw [child]
  dsimp only [result6365]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6367_agree_conditional : tree6367 = literal6367 := by
  rw [tree6367_def]
  rfl
theorem node6367_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6367 live6367 coloured6367 = result6367 := by
  rw [tree6367_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6368_agree_conditional
    (child0 : tree6366 = literal6366)
    (child1 : tree6367 = literal6367) : tree6368 = literal6368 := by
  rw [tree6368_def, child0, child1]
  rfl
theorem node6368_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6366 live6366 coloured6366 = result6366)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6367 live6367 coloured6367 = result6367) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6368 live6368 coloured6368 = result6368 := by
  rw [tree6368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6366 coloured6366 at child
  try dsimp only [live6368, coloured6368]
  rw [child]
  dsimp only [result6366]
  have child := child1
  unfold live6367 coloured6367 at child
  try dsimp only [live6368, coloured6368]
  rw [child]
  dsimp only [result6367]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6369_agree_conditional : tree6369 = literal6369 := by
  rw [tree6369_def]
  rfl
theorem node6369_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6369 live6369 coloured6369 = result6369 := by
  rw [tree6369_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6370_agree_conditional
    (child0 : tree6368 = literal6368)
    (child1 : tree6369 = literal6369) : tree6370 = literal6370 := by
  rw [tree6370_def, child0, child1]
  rfl
theorem node6370_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6368 live6368 coloured6368 = result6368)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6369 live6369 coloured6369 = result6369) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6370 live6370 coloured6370 = result6370 := by
  rw [tree6370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6368 coloured6368 at child
  try dsimp only [live6370, coloured6370]
  rw [child]
  dsimp only [result6368]
  have child := child1
  unfold live6369 coloured6369 at child
  try dsimp only [live6370, coloured6370]
  rw [child]
  dsimp only [result6369]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6371_agree_conditional : tree6371 = literal6371 := by
  rw [tree6371_def]
  rfl
theorem node6371_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6371 live6371 coloured6371 = result6371 := by
  rw [tree6371_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6372_agree_conditional
    (child0 : tree6370 = literal6370)
    (child1 : tree6371 = literal6371) : tree6372 = literal6372 := by
  rw [tree6372_def, child0, child1]
  rfl
theorem node6372_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6370 live6370 coloured6370 = result6370)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6371 live6371 coloured6371 = result6371) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6372 live6372 coloured6372 = result6372 := by
  rw [tree6372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6370 coloured6370 at child
  try dsimp only [live6372, coloured6372]
  rw [child]
  dsimp only [result6370]
  have child := child1
  unfold live6371 coloured6371 at child
  try dsimp only [live6372, coloured6372]
  rw [child]
  dsimp only [result6371]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6373_agree_conditional : tree6373 = literal6373 := by
  rw [tree6373_def]
  rfl
theorem node6373_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6373 live6373 coloured6373 = result6373 := by
  rw [tree6373_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6374_agree_conditional
    (child0 : tree6372 = literal6372)
    (child1 : tree6373 = literal6373) : tree6374 = literal6374 := by
  rw [tree6374_def, child0, child1]
  rfl
theorem node6374_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6372 live6372 coloured6372 = result6372)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6373 live6373 coloured6373 = result6373) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6374 live6374 coloured6374 = result6374 := by
  rw [tree6374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6372 coloured6372 at child
  try dsimp only [live6374, coloured6374]
  rw [child]
  dsimp only [result6372]
  have child := child1
  unfold live6373 coloured6373 at child
  try dsimp only [live6374, coloured6374]
  rw [child]
  dsimp only [result6373]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6375_agree_conditional : tree6375 = literal6375 := by
  rw [tree6375_def]
  rfl
theorem node6375_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6375 live6375 coloured6375 = result6375 := by
  rw [tree6375_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6376_agree_conditional
    (child0 : tree6374 = literal6374)
    (child1 : tree6375 = literal6375) : tree6376 = literal6376 := by
  rw [tree6376_def, child0, child1]
  rfl
theorem node6376_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6374 live6374 coloured6374 = result6374)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6375 live6375 coloured6375 = result6375) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6376 live6376 coloured6376 = result6376 := by
  rw [tree6376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6374 coloured6374 at child
  try dsimp only [live6376, coloured6376]
  rw [child]
  dsimp only [result6374]
  have child := child1
  unfold live6375 coloured6375 at child
  try dsimp only [live6376, coloured6376]
  rw [child]
  dsimp only [result6375]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6377_agree_conditional : tree6377 = literal6377 := by
  rw [tree6377_def]
  rfl
theorem node6377_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6377 live6377 coloured6377 = result6377 := by
  rw [tree6377_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6378_agree_conditional
    (child0 : tree6376 = literal6376)
    (child1 : tree6377 = literal6377) : tree6378 = literal6378 := by
  rw [tree6378_def, child0, child1]
  rfl
theorem node6378_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6376 live6376 coloured6376 = result6376)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6377 live6377 coloured6377 = result6377) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6378 live6378 coloured6378 = result6378 := by
  rw [tree6378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6376 coloured6376 at child
  try dsimp only [live6378, coloured6378]
  rw [child]
  dsimp only [result6376]
  have child := child1
  unfold live6377 coloured6377 at child
  try dsimp only [live6378, coloured6378]
  rw [child]
  dsimp only [result6377]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6379_agree_conditional : tree6379 = literal6379 := by
  rw [tree6379_def]
  rfl
theorem node6379_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6379 live6379 coloured6379 = result6379 := by
  rw [tree6379_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6380_agree_conditional
    (child0 : tree6378 = literal6378)
    (child1 : tree6379 = literal6379) : tree6380 = literal6380 := by
  rw [tree6380_def, child0, child1]
  rfl
theorem node6380_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6378 live6378 coloured6378 = result6378)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6379 live6379 coloured6379 = result6379) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6380 live6380 coloured6380 = result6380 := by
  rw [tree6380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6378 coloured6378 at child
  try dsimp only [live6380, coloured6380]
  rw [child]
  dsimp only [result6378]
  have child := child1
  unfold live6379 coloured6379 at child
  try dsimp only [live6380, coloured6380]
  rw [child]
  dsimp only [result6379]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6381_agree_conditional : tree6381 = literal6381 := by
  rw [tree6381_def]
  rfl
theorem node6381_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6381 live6381 coloured6381 = result6381 := by
  rw [tree6381_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6382_agree_conditional
    (child0 : tree6380 = literal6380)
    (child1 : tree6381 = literal6381) : tree6382 = literal6382 := by
  rw [tree6382_def, child0, child1]
  rfl
theorem node6382_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6380 live6380 coloured6380 = result6380)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6381 live6381 coloured6381 = result6381) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6382 live6382 coloured6382 = result6382 := by
  rw [tree6382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6380 coloured6380 at child
  try dsimp only [live6382, coloured6382]
  rw [child]
  dsimp only [result6380]
  have child := child1
  unfold live6381 coloured6381 at child
  try dsimp only [live6382, coloured6382]
  rw [child]
  dsimp only [result6381]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6383_agree_conditional : tree6383 = literal6383 := by
  rw [tree6383_def]
  rfl
theorem node6383_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6383 live6383 coloured6383 = result6383 := by
  rw [tree6383_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6384_agree_conditional
    (child0 : tree6382 = literal6382)
    (child1 : tree6383 = literal6383) : tree6384 = literal6384 := by
  rw [tree6384_def, child0, child1]
  rfl
theorem node6384_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6382 live6382 coloured6382 = result6382)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6383 live6383 coloured6383 = result6383) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6384 live6384 coloured6384 = result6384 := by
  rw [tree6384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6382 coloured6382 at child
  try dsimp only [live6384, coloured6384]
  rw [child]
  dsimp only [result6382]
  have child := child1
  unfold live6383 coloured6383 at child
  try dsimp only [live6384, coloured6384]
  rw [child]
  dsimp only [result6383]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6385_agree_conditional : tree6385 = literal6385 := by
  rw [tree6385_def]
  rfl
theorem node6385_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6385 live6385 coloured6385 = result6385 := by
  rw [tree6385_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6386_agree_conditional
    (child0 : tree6384 = literal6384)
    (child1 : tree6385 = literal6385) : tree6386 = literal6386 := by
  rw [tree6386_def, child0, child1]
  rfl
theorem node6386_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6384 live6384 coloured6384 = result6384)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6385 live6385 coloured6385 = result6385) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6386 live6386 coloured6386 = result6386 := by
  rw [tree6386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6384 coloured6384 at child
  try dsimp only [live6386, coloured6386]
  rw [child]
  dsimp only [result6384]
  have child := child1
  unfold live6385 coloured6385 at child
  try dsimp only [live6386, coloured6386]
  rw [child]
  dsimp only [result6385]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6387_agree_conditional : tree6387 = literal6387 := by
  rw [tree6387_def]
  rfl
theorem node6387_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6387 live6387 coloured6387 = result6387 := by
  rw [tree6387_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6388_agree_conditional
    (child0 : tree6386 = literal6386)
    (child1 : tree6387 = literal6387) : tree6388 = literal6388 := by
  rw [tree6388_def, child0, child1]
  rfl
theorem node6388_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6386 live6386 coloured6386 = result6386)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6387 live6387 coloured6387 = result6387) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6388 live6388 coloured6388 = result6388 := by
  rw [tree6388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6386 coloured6386 at child
  try dsimp only [live6388, coloured6388]
  rw [child]
  dsimp only [result6386]
  have child := child1
  unfold live6387 coloured6387 at child
  try dsimp only [live6388, coloured6388]
  rw [child]
  dsimp only [result6387]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6389_agree_conditional : tree6389 = literal6389 := by
  rw [tree6389_def]
  rfl
theorem node6389_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6389 live6389 coloured6389 = result6389 := by
  rw [tree6389_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6390_agree_conditional
    (child0 : tree6388 = literal6388)
    (child1 : tree6389 = literal6389) : tree6390 = literal6390 := by
  rw [tree6390_def, child0, child1]
  rfl
theorem node6390_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6388 live6388 coloured6388 = result6388)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6389 live6389 coloured6389 = result6389) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6390 live6390 coloured6390 = result6390 := by
  rw [tree6390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6388 coloured6388 at child
  try dsimp only [live6390, coloured6390]
  rw [child]
  dsimp only [result6388]
  have child := child1
  unfold live6389 coloured6389 at child
  try dsimp only [live6390, coloured6390]
  rw [child]
  dsimp only [result6389]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6391_agree_conditional : tree6391 = literal6391 := by
  rw [tree6391_def]
  rfl
theorem node6391_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6391 live6391 coloured6391 = result6391 := by
  rw [tree6391_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6392_agree_conditional
    (child0 : tree6390 = literal6390)
    (child1 : tree6391 = literal6391) : tree6392 = literal6392 := by
  rw [tree6392_def, child0, child1]
  rfl
theorem node6392_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6390 live6390 coloured6390 = result6390)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6391 live6391 coloured6391 = result6391) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6392 live6392 coloured6392 = result6392 := by
  rw [tree6392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6390 coloured6390 at child
  try dsimp only [live6392, coloured6392]
  rw [child]
  dsimp only [result6390]
  have child := child1
  unfold live6391 coloured6391 at child
  try dsimp only [live6392, coloured6392]
  rw [child]
  dsimp only [result6391]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6393_agree_conditional : tree6393 = literal6393 := by
  rw [tree6393_def]
  rfl
theorem node6393_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6393 live6393 coloured6393 = result6393 := by
  rw [tree6393_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6394_agree_conditional
    (child0 : tree6392 = literal6392)
    (child1 : tree6393 = literal6393) : tree6394 = literal6394 := by
  rw [tree6394_def, child0, child1]
  rfl
theorem node6394_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6392 live6392 coloured6392 = result6392)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6393 live6393 coloured6393 = result6393) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6394 live6394 coloured6394 = result6394 := by
  rw [tree6394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6392 coloured6392 at child
  try dsimp only [live6394, coloured6394]
  rw [child]
  dsimp only [result6392]
  have child := child1
  unfold live6393 coloured6393 at child
  try dsimp only [live6394, coloured6394]
  rw [child]
  dsimp only [result6393]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6395_agree_conditional : tree6395 = literal6395 := by
  rw [tree6395_def]
  rfl
theorem node6395_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6395 live6395 coloured6395 = result6395 := by
  rw [tree6395_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6396_agree_conditional
    (child0 : tree6394 = literal6394)
    (child1 : tree6395 = literal6395) : tree6396 = literal6396 := by
  rw [tree6396_def, child0, child1]
  rfl
theorem node6396_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6394 live6394 coloured6394 = result6394)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6395 live6395 coloured6395 = result6395) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6396 live6396 coloured6396 = result6396 := by
  rw [tree6396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6394 coloured6394 at child
  try dsimp only [live6396, coloured6396]
  rw [child]
  dsimp only [result6394]
  have child := child1
  unfold live6395 coloured6395 at child
  try dsimp only [live6396, coloured6396]
  rw [child]
  dsimp only [result6395]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6397_agree_conditional : tree6397 = literal6397 := by
  rw [tree6397_def]
  rfl
theorem node6397_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6397 live6397 coloured6397 = result6397 := by
  rw [tree6397_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6398_agree_conditional
    (child0 : tree6396 = literal6396)
    (child1 : tree6397 = literal6397) : tree6398 = literal6398 := by
  rw [tree6398_def, child0, child1]
  rfl
theorem node6398_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6396 live6396 coloured6396 = result6396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6397 live6397 coloured6397 = result6397) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6398 live6398 coloured6398 = result6398 := by
  rw [tree6398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6396 coloured6396 at child
  try dsimp only [live6398, coloured6398]
  rw [child]
  dsimp only [result6396]
  have child := child1
  unfold live6397 coloured6397 at child
  try dsimp only [live6398, coloured6398]
  rw [child]
  dsimp only [result6397]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6399_agree_conditional : tree6399 = literal6399 := by
  rw [tree6399_def]
  rfl
theorem node6399_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6399 live6399 coloured6399 = result6399 := by
  rw [tree6399_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6400_agree_conditional
    (child0 : tree6398 = literal6398)
    (child1 : tree6399 = literal6399) : tree6400 = literal6400 := by
  rw [tree6400_def, child0, child1]
  rfl
theorem node6400_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6398 live6398 coloured6398 = result6398)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6399 live6399 coloured6399 = result6399) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6400 live6400 coloured6400 = result6400 := by
  rw [tree6400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6398 coloured6398 at child
  try dsimp only [live6400, coloured6400]
  rw [child]
  dsimp only [result6398]
  have child := child1
  unfold live6399 coloured6399 at child
  try dsimp only [live6400, coloured6400]
  rw [child]
  dsimp only [result6399]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6401_agree_conditional : tree6401 = literal6401 := by
  rw [tree6401_def]
  rfl
theorem node6401_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6401 live6401 coloured6401 = result6401 := by
  rw [tree6401_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6402_agree_conditional
    (child0 : tree6400 = literal6400)
    (child1 : tree6401 = literal6401) : tree6402 = literal6402 := by
  rw [tree6402_def, child0, child1]
  rfl
theorem node6402_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6400 live6400 coloured6400 = result6400)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6401 live6401 coloured6401 = result6401) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6402 live6402 coloured6402 = result6402 := by
  rw [tree6402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6400 coloured6400 at child
  try dsimp only [live6402, coloured6402]
  rw [child]
  dsimp only [result6400]
  have child := child1
  unfold live6401 coloured6401 at child
  try dsimp only [live6402, coloured6402]
  rw [child]
  dsimp only [result6401]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6403_agree_conditional : tree6403 = literal6403 := by
  rw [tree6403_def]
  rfl
theorem node6403_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6403 live6403 coloured6403 = result6403 := by
  rw [tree6403_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6404_agree_conditional
    (child0 : tree6402 = literal6402)
    (child1 : tree6403 = literal6403) : tree6404 = literal6404 := by
  rw [tree6404_def, child0, child1]
  rfl
theorem node6404_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6402 live6402 coloured6402 = result6402)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6403 live6403 coloured6403 = result6403) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6404 live6404 coloured6404 = result6404 := by
  rw [tree6404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6402 coloured6402 at child
  try dsimp only [live6404, coloured6404]
  rw [child]
  dsimp only [result6402]
  have child := child1
  unfold live6403 coloured6403 at child
  try dsimp only [live6404, coloured6404]
  rw [child]
  dsimp only [result6403]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6405_agree_conditional : tree6405 = literal6405 := by
  rw [tree6405_def]
  rfl
theorem node6405_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6405 live6405 coloured6405 = result6405 := by
  rw [tree6405_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6406_agree_conditional
    (child0 : tree6404 = literal6404)
    (child1 : tree6405 = literal6405) : tree6406 = literal6406 := by
  rw [tree6406_def, child0, child1]
  rfl
theorem node6406_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6404 live6404 coloured6404 = result6404)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6405 live6405 coloured6405 = result6405) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6406 live6406 coloured6406 = result6406 := by
  rw [tree6406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6404 coloured6404 at child
  try dsimp only [live6406, coloured6406]
  rw [child]
  dsimp only [result6404]
  have child := child1
  unfold live6405 coloured6405 at child
  try dsimp only [live6406, coloured6406]
  rw [child]
  dsimp only [result6405]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6407_agree_conditional : tree6407 = literal6407 := by
  rw [tree6407_def]
  rfl
theorem node6407_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6407 live6407 coloured6407 = result6407 := by
  rw [tree6407_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6408_agree_conditional
    (child0 : tree6406 = literal6406)
    (child1 : tree6407 = literal6407) : tree6408 = literal6408 := by
  rw [tree6408_def, child0, child1]
  rfl
theorem node6408_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6406 live6406 coloured6406 = result6406)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6407 live6407 coloured6407 = result6407) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6408 live6408 coloured6408 = result6408 := by
  rw [tree6408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6406 coloured6406 at child
  try dsimp only [live6408, coloured6408]
  rw [child]
  dsimp only [result6406]
  have child := child1
  unfold live6407 coloured6407 at child
  try dsimp only [live6408, coloured6408]
  rw [child]
  dsimp only [result6407]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6409_agree_conditional : tree6409 = literal6409 := by
  rw [tree6409_def]
  rfl
theorem node6409_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6409 live6409 coloured6409 = result6409 := by
  rw [tree6409_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6410_agree_conditional
    (child0 : tree6408 = literal6408)
    (child1 : tree6409 = literal6409) : tree6410 = literal6410 := by
  rw [tree6410_def, child0, child1]
  rfl
theorem node6410_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6408 live6408 coloured6408 = result6408)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6409 live6409 coloured6409 = result6409) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6410 live6410 coloured6410 = result6410 := by
  rw [tree6410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6408 coloured6408 at child
  try dsimp only [live6410, coloured6410]
  rw [child]
  dsimp only [result6408]
  have child := child1
  unfold live6409 coloured6409 at child
  try dsimp only [live6410, coloured6410]
  rw [child]
  dsimp only [result6409]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6411_agree_conditional : tree6411 = literal6411 := by
  rw [tree6411_def]
  rfl
theorem node6411_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6411 live6411 coloured6411 = result6411 := by
  rw [tree6411_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6412_agree_conditional
    (child0 : tree6410 = literal6410)
    (child1 : tree6411 = literal6411) : tree6412 = literal6412 := by
  rw [tree6412_def, child0, child1]
  rfl
theorem node6412_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6410 live6410 coloured6410 = result6410)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6411 live6411 coloured6411 = result6411) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6412 live6412 coloured6412 = result6412 := by
  rw [tree6412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6410 coloured6410 at child
  try dsimp only [live6412, coloured6412]
  rw [child]
  dsimp only [result6410]
  have child := child1
  unfold live6411 coloured6411 at child
  try dsimp only [live6412, coloured6412]
  rw [child]
  dsimp only [result6411]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6413_agree_conditional : tree6413 = literal6413 := by
  rw [tree6413_def]
  rfl
theorem node6413_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6413 live6413 coloured6413 = result6413 := by
  rw [tree6413_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6414_agree_conditional
    (child0 : tree6412 = literal6412)
    (child1 : tree6413 = literal6413) : tree6414 = literal6414 := by
  rw [tree6414_def, child0, child1]
  rfl
theorem node6414_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6412 live6412 coloured6412 = result6412)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6413 live6413 coloured6413 = result6413) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6414 live6414 coloured6414 = result6414 := by
  rw [tree6414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6412 coloured6412 at child
  try dsimp only [live6414, coloured6414]
  rw [child]
  dsimp only [result6412]
  have child := child1
  unfold live6413 coloured6413 at child
  try dsimp only [live6414, coloured6414]
  rw [child]
  dsimp only [result6413]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6415_agree_conditional : tree6415 = literal6415 := by
  rw [tree6415_def]
  rfl
theorem node6415_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6415 live6415 coloured6415 = result6415 := by
  rw [tree6415_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6416_agree_conditional
    (child0 : tree6414 = literal6414)
    (child1 : tree6415 = literal6415) : tree6416 = literal6416 := by
  rw [tree6416_def, child0, child1]
  rfl
theorem node6416_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6414 live6414 coloured6414 = result6414)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6415 live6415 coloured6415 = result6415) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6416 live6416 coloured6416 = result6416 := by
  rw [tree6416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6414 coloured6414 at child
  try dsimp only [live6416, coloured6416]
  rw [child]
  dsimp only [result6414]
  have child := child1
  unfold live6415 coloured6415 at child
  try dsimp only [live6416, coloured6416]
  rw [child]
  dsimp only [result6415]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6417_agree_conditional : tree6417 = literal6417 := by
  rw [tree6417_def]
  rfl
theorem node6417_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6417 live6417 coloured6417 = result6417 := by
  rw [tree6417_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6418_agree_conditional
    (child0 : tree6416 = literal6416)
    (child1 : tree6417 = literal6417) : tree6418 = literal6418 := by
  rw [tree6418_def, child0, child1]
  rfl
theorem node6418_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6416 live6416 coloured6416 = result6416)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6417 live6417 coloured6417 = result6417) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6418 live6418 coloured6418 = result6418 := by
  rw [tree6418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6416 coloured6416 at child
  try dsimp only [live6418, coloured6418]
  rw [child]
  dsimp only [result6416]
  have child := child1
  unfold live6417 coloured6417 at child
  try dsimp only [live6418, coloured6418]
  rw [child]
  dsimp only [result6417]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6419_agree_conditional : tree6419 = literal6419 := by
  rw [tree6419_def]
  rfl
theorem node6419_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6419 live6419 coloured6419 = result6419 := by
  rw [tree6419_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6420_agree_conditional
    (child0 : tree6418 = literal6418)
    (child1 : tree6419 = literal6419) : tree6420 = literal6420 := by
  rw [tree6420_def, child0, child1]
  rfl
theorem node6420_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6418 live6418 coloured6418 = result6418)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6419 live6419 coloured6419 = result6419) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6420 live6420 coloured6420 = result6420 := by
  rw [tree6420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6418 coloured6418 at child
  try dsimp only [live6420, coloured6420]
  rw [child]
  dsimp only [result6418]
  have child := child1
  unfold live6419 coloured6419 at child
  try dsimp only [live6420, coloured6420]
  rw [child]
  dsimp only [result6419]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6421_agree_conditional : tree6421 = literal6421 := by
  rw [tree6421_def]
  rfl
theorem node6421_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6421 live6421 coloured6421 = result6421 := by
  rw [tree6421_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6422_agree_conditional
    (child0 : tree6420 = literal6420)
    (child1 : tree6421 = literal6421) : tree6422 = literal6422 := by
  rw [tree6422_def, child0, child1]
  rfl
theorem node6422_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6420 live6420 coloured6420 = result6420)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6421 live6421 coloured6421 = result6421) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6422 live6422 coloured6422 = result6422 := by
  rw [tree6422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6420 coloured6420 at child
  try dsimp only [live6422, coloured6422]
  rw [child]
  dsimp only [result6420]
  have child := child1
  unfold live6421 coloured6421 at child
  try dsimp only [live6422, coloured6422]
  rw [child]
  dsimp only [result6421]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6423_agree_conditional : tree6423 = literal6423 := by
  rw [tree6423_def]
  rfl
theorem node6423_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6423 live6423 coloured6423 = result6423 := by
  rw [tree6423_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6424_agree_conditional
    (child0 : tree6422 = literal6422)
    (child1 : tree6423 = literal6423) : tree6424 = literal6424 := by
  rw [tree6424_def, child0, child1]
  rfl
theorem node6424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6422 live6422 coloured6422 = result6422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6423 live6423 coloured6423 = result6423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6424 live6424 coloured6424 = result6424 := by
  rw [tree6424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6422 coloured6422 at child
  try dsimp only [live6424, coloured6424]
  rw [child]
  dsimp only [result6422]
  have child := child1
  unfold live6423 coloured6423 at child
  try dsimp only [live6424, coloured6424]
  rw [child]
  dsimp only [result6423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6425_agree_conditional : tree6425 = literal6425 := by
  rw [tree6425_def]
  rfl
theorem node6425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6425 live6425 coloured6425 = result6425 := by
  rw [tree6425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6426_agree_conditional
    (child0 : tree6424 = literal6424)
    (child1 : tree6425 = literal6425) : tree6426 = literal6426 := by
  rw [tree6426_def, child0, child1]
  rfl
theorem node6426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6424 live6424 coloured6424 = result6424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6425 live6425 coloured6425 = result6425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6426 live6426 coloured6426 = result6426 := by
  rw [tree6426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6424 coloured6424 at child
  try dsimp only [live6426, coloured6426]
  rw [child]
  dsimp only [result6424]
  have child := child1
  unfold live6425 coloured6425 at child
  try dsimp only [live6426, coloured6426]
  rw [child]
  dsimp only [result6425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6427_agree_conditional : tree6427 = literal6427 := by
  rw [tree6427_def]
  rfl
theorem node6427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6427 live6427 coloured6427 = result6427 := by
  rw [tree6427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6428_agree_conditional
    (child0 : tree6426 = literal6426)
    (child1 : tree6427 = literal6427) : tree6428 = literal6428 := by
  rw [tree6428_def, child0, child1]
  rfl
theorem node6428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6426 live6426 coloured6426 = result6426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6427 live6427 coloured6427 = result6427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6428 live6428 coloured6428 = result6428 := by
  rw [tree6428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6426 coloured6426 at child
  try dsimp only [live6428, coloured6428]
  rw [child]
  dsimp only [result6426]
  have child := child1
  unfold live6427 coloured6427 at child
  try dsimp only [live6428, coloured6428]
  rw [child]
  dsimp only [result6427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6429_agree_conditional : tree6429 = literal6429 := by
  rw [tree6429_def]
  rfl
theorem node6429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6429 live6429 coloured6429 = result6429 := by
  rw [tree6429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6430_agree_conditional
    (child0 : tree6428 = literal6428)
    (child1 : tree6429 = literal6429) : tree6430 = literal6430 := by
  rw [tree6430_def, child0, child1]
  rfl
theorem node6430_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6428 live6428 coloured6428 = result6428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6429 live6429 coloured6429 = result6429) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6430 live6430 coloured6430 = result6430 := by
  rw [tree6430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6428 coloured6428 at child
  try dsimp only [live6430, coloured6430]
  rw [child]
  dsimp only [result6428]
  have child := child1
  unfold live6429 coloured6429 at child
  try dsimp only [live6430, coloured6430]
  rw [child]
  dsimp only [result6429]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6431_agree_conditional : tree6431 = literal6431 := by
  rw [tree6431_def]
  rfl
theorem node6431_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6431 live6431 coloured6431 = result6431 := by
  rw [tree6431_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
