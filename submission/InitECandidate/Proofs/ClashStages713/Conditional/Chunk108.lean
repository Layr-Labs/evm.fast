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
theorem tree10368_agree_conditional
    (child0 : tree10366 = literal10366)
    (child1 : tree10367 = literal10367) : tree10368 = literal10368 := by
  rw [tree10368_def, child0, child1]
  rfl
theorem node10368_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10366 live10366 coloured10366 = result10366)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10367 live10367 coloured10367 = result10367) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10368 live10368 coloured10368 = result10368 := by
  rw [tree10368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10366 coloured10366 at child
  try dsimp only [live10368, coloured10368]
  rw [child]
  dsimp only [result10366]
  have child := child1
  unfold live10367 coloured10367 at child
  try dsimp only [live10368, coloured10368]
  rw [child]
  dsimp only [result10367]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10369_agree_conditional : tree10369 = literal10369 := by
  rw [tree10369_def]
  rfl
theorem node10369_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10369 live10369 coloured10369 = result10369 := by
  rw [tree10369_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10370_agree_conditional
    (child0 : tree10368 = literal10368)
    (child1 : tree10369 = literal10369) : tree10370 = literal10370 := by
  rw [tree10370_def, child0, child1]
  rfl
theorem node10370_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10368 live10368 coloured10368 = result10368)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10369 live10369 coloured10369 = result10369) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10370 live10370 coloured10370 = result10370 := by
  rw [tree10370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10368 coloured10368 at child
  try dsimp only [live10370, coloured10370]
  rw [child]
  dsimp only [result10368]
  have child := child1
  unfold live10369 coloured10369 at child
  try dsimp only [live10370, coloured10370]
  rw [child]
  dsimp only [result10369]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10371_agree_conditional : tree10371 = literal10371 := by
  rw [tree10371_def]
  rfl
theorem node10371_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10371 live10371 coloured10371 = result10371 := by
  rw [tree10371_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10372_agree_conditional
    (child0 : tree10370 = literal10370)
    (child1 : tree10371 = literal10371) : tree10372 = literal10372 := by
  rw [tree10372_def, child0, child1]
  rfl
theorem node10372_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10370 live10370 coloured10370 = result10370)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10371 live10371 coloured10371 = result10371) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10372 live10372 coloured10372 = result10372 := by
  rw [tree10372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10370 coloured10370 at child
  try dsimp only [live10372, coloured10372]
  rw [child]
  dsimp only [result10370]
  have child := child1
  unfold live10371 coloured10371 at child
  try dsimp only [live10372, coloured10372]
  rw [child]
  dsimp only [result10371]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10373_agree_conditional : tree10373 = literal10373 := by
  rw [tree10373_def]
  rfl
theorem node10373_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10373 live10373 coloured10373 = result10373 := by
  rw [tree10373_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10374_agree_conditional
    (child0 : tree10372 = literal10372)
    (child1 : tree10373 = literal10373) : tree10374 = literal10374 := by
  rw [tree10374_def, child0, child1]
  rfl
theorem node10374_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10372 live10372 coloured10372 = result10372)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10373 live10373 coloured10373 = result10373) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10374 live10374 coloured10374 = result10374 := by
  rw [tree10374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10372 coloured10372 at child
  try dsimp only [live10374, coloured10374]
  rw [child]
  dsimp only [result10372]
  have child := child1
  unfold live10373 coloured10373 at child
  try dsimp only [live10374, coloured10374]
  rw [child]
  dsimp only [result10373]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10375_agree_conditional : tree10375 = literal10375 := by
  rw [tree10375_def]
  rfl
theorem node10375_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10375 live10375 coloured10375 = result10375 := by
  rw [tree10375_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10376_agree_conditional
    (child0 : tree10374 = literal10374)
    (child1 : tree10375 = literal10375) : tree10376 = literal10376 := by
  rw [tree10376_def, child0, child1]
  rfl
theorem node10376_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10374 live10374 coloured10374 = result10374)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10375 live10375 coloured10375 = result10375) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10376 live10376 coloured10376 = result10376 := by
  rw [tree10376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10374 coloured10374 at child
  try dsimp only [live10376, coloured10376]
  rw [child]
  dsimp only [result10374]
  have child := child1
  unfold live10375 coloured10375 at child
  try dsimp only [live10376, coloured10376]
  rw [child]
  dsimp only [result10375]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10377_agree_conditional : tree10377 = literal10377 := by
  rw [tree10377_def]
  rfl
theorem node10377_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10377 live10377 coloured10377 = result10377 := by
  rw [tree10377_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10378_agree_conditional
    (child0 : tree10376 = literal10376)
    (child1 : tree10377 = literal10377) : tree10378 = literal10378 := by
  rw [tree10378_def, child0, child1]
  rfl
theorem node10378_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10376 live10376 coloured10376 = result10376)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10377 live10377 coloured10377 = result10377) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10378 live10378 coloured10378 = result10378 := by
  rw [tree10378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10376 coloured10376 at child
  try dsimp only [live10378, coloured10378]
  rw [child]
  dsimp only [result10376]
  have child := child1
  unfold live10377 coloured10377 at child
  try dsimp only [live10378, coloured10378]
  rw [child]
  dsimp only [result10377]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10379_agree_conditional : tree10379 = literal10379 := by
  rw [tree10379_def]
  rfl
theorem node10379_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10379 live10379 coloured10379 = result10379 := by
  rw [tree10379_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10380_agree_conditional
    (child0 : tree10378 = literal10378)
    (child1 : tree10379 = literal10379) : tree10380 = literal10380 := by
  rw [tree10380_def, child0, child1]
  rfl
theorem node10380_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10378 live10378 coloured10378 = result10378)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10379 live10379 coloured10379 = result10379) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10380 live10380 coloured10380 = result10380 := by
  rw [tree10380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10378 coloured10378 at child
  try dsimp only [live10380, coloured10380]
  rw [child]
  dsimp only [result10378]
  have child := child1
  unfold live10379 coloured10379 at child
  try dsimp only [live10380, coloured10380]
  rw [child]
  dsimp only [result10379]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10381_agree_conditional : tree10381 = literal10381 := by
  rw [tree10381_def]
  rfl
theorem node10381_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10381 live10381 coloured10381 = result10381 := by
  rw [tree10381_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10382_agree_conditional
    (child0 : tree10380 = literal10380)
    (child1 : tree10381 = literal10381) : tree10382 = literal10382 := by
  rw [tree10382_def, child0, child1]
  rfl
theorem node10382_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10380 live10380 coloured10380 = result10380)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10381 live10381 coloured10381 = result10381) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10382 live10382 coloured10382 = result10382 := by
  rw [tree10382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10380 coloured10380 at child
  try dsimp only [live10382, coloured10382]
  rw [child]
  dsimp only [result10380]
  have child := child1
  unfold live10381 coloured10381 at child
  try dsimp only [live10382, coloured10382]
  rw [child]
  dsimp only [result10381]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10383_agree_conditional : tree10383 = literal10383 := by
  rw [tree10383_def]
  rfl
theorem node10383_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10383 live10383 coloured10383 = result10383 := by
  rw [tree10383_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10384_agree_conditional
    (child0 : tree10382 = literal10382)
    (child1 : tree10383 = literal10383) : tree10384 = literal10384 := by
  rw [tree10384_def, child0, child1]
  rfl
theorem node10384_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10382 live10382 coloured10382 = result10382)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10383 live10383 coloured10383 = result10383) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10384 live10384 coloured10384 = result10384 := by
  rw [tree10384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10382 coloured10382 at child
  try dsimp only [live10384, coloured10384]
  rw [child]
  dsimp only [result10382]
  have child := child1
  unfold live10383 coloured10383 at child
  try dsimp only [live10384, coloured10384]
  rw [child]
  dsimp only [result10383]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10385_agree_conditional : tree10385 = literal10385 := by
  rw [tree10385_def]
  rfl
theorem node10385_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10385 live10385 coloured10385 = result10385 := by
  rw [tree10385_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10386_agree_conditional
    (child0 : tree10384 = literal10384)
    (child1 : tree10385 = literal10385) : tree10386 = literal10386 := by
  rw [tree10386_def, child0, child1]
  rfl
theorem node10386_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10384 live10384 coloured10384 = result10384)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10385 live10385 coloured10385 = result10385) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10386 live10386 coloured10386 = result10386 := by
  rw [tree10386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10384 coloured10384 at child
  try dsimp only [live10386, coloured10386]
  rw [child]
  dsimp only [result10384]
  have child := child1
  unfold live10385 coloured10385 at child
  try dsimp only [live10386, coloured10386]
  rw [child]
  dsimp only [result10385]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10387_agree_conditional : tree10387 = literal10387 := by
  rw [tree10387_def]
  rfl
theorem node10387_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10387 live10387 coloured10387 = result10387 := by
  rw [tree10387_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10388_agree_conditional
    (child0 : tree10386 = literal10386)
    (child1 : tree10387 = literal10387) : tree10388 = literal10388 := by
  rw [tree10388_def, child0, child1]
  rfl
theorem node10388_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10386 live10386 coloured10386 = result10386)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10387 live10387 coloured10387 = result10387) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10388 live10388 coloured10388 = result10388 := by
  rw [tree10388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10386 coloured10386 at child
  try dsimp only [live10388, coloured10388]
  rw [child]
  dsimp only [result10386]
  have child := child1
  unfold live10387 coloured10387 at child
  try dsimp only [live10388, coloured10388]
  rw [child]
  dsimp only [result10387]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10389_agree_conditional : tree10389 = literal10389 := by
  rw [tree10389_def]
  rfl
theorem node10389_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10389 live10389 coloured10389 = result10389 := by
  rw [tree10389_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10390_agree_conditional
    (child0 : tree10388 = literal10388)
    (child1 : tree10389 = literal10389) : tree10390 = literal10390 := by
  rw [tree10390_def, child0, child1]
  rfl
theorem node10390_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10388 live10388 coloured10388 = result10388)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10389 live10389 coloured10389 = result10389) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10390 live10390 coloured10390 = result10390 := by
  rw [tree10390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10388 coloured10388 at child
  try dsimp only [live10390, coloured10390]
  rw [child]
  dsimp only [result10388]
  have child := child1
  unfold live10389 coloured10389 at child
  try dsimp only [live10390, coloured10390]
  rw [child]
  dsimp only [result10389]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10391_agree_conditional : tree10391 = literal10391 := by
  rw [tree10391_def]
  rfl
theorem node10391_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10391 live10391 coloured10391 = result10391 := by
  rw [tree10391_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10392_agree_conditional
    (child0 : tree10390 = literal10390)
    (child1 : tree10391 = literal10391) : tree10392 = literal10392 := by
  rw [tree10392_def, child0, child1]
  rfl
theorem node10392_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10390 live10390 coloured10390 = result10390)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10391 live10391 coloured10391 = result10391) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10392 live10392 coloured10392 = result10392 := by
  rw [tree10392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10390 coloured10390 at child
  try dsimp only [live10392, coloured10392]
  rw [child]
  dsimp only [result10390]
  have child := child1
  unfold live10391 coloured10391 at child
  try dsimp only [live10392, coloured10392]
  rw [child]
  dsimp only [result10391]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10393_agree_conditional : tree10393 = literal10393 := by
  rw [tree10393_def]
  rfl
theorem node10393_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10393 live10393 coloured10393 = result10393 := by
  rw [tree10393_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10394_agree_conditional
    (child0 : tree10392 = literal10392)
    (child1 : tree10393 = literal10393) : tree10394 = literal10394 := by
  rw [tree10394_def, child0, child1]
  rfl
theorem node10394_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10392 live10392 coloured10392 = result10392)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10393 live10393 coloured10393 = result10393) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10394 live10394 coloured10394 = result10394 := by
  rw [tree10394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10392 coloured10392 at child
  try dsimp only [live10394, coloured10394]
  rw [child]
  dsimp only [result10392]
  have child := child1
  unfold live10393 coloured10393 at child
  try dsimp only [live10394, coloured10394]
  rw [child]
  dsimp only [result10393]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10395_agree_conditional : tree10395 = literal10395 := by
  rw [tree10395_def]
  rfl
theorem node10395_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10395 live10395 coloured10395 = result10395 := by
  rw [tree10395_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10396_agree_conditional
    (child0 : tree10394 = literal10394)
    (child1 : tree10395 = literal10395) : tree10396 = literal10396 := by
  rw [tree10396_def, child0, child1]
  rfl
theorem node10396_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10394 live10394 coloured10394 = result10394)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10395 live10395 coloured10395 = result10395) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10396 live10396 coloured10396 = result10396 := by
  rw [tree10396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10394 coloured10394 at child
  try dsimp only [live10396, coloured10396]
  rw [child]
  dsimp only [result10394]
  have child := child1
  unfold live10395 coloured10395 at child
  try dsimp only [live10396, coloured10396]
  rw [child]
  dsimp only [result10395]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10397_agree_conditional : tree10397 = literal10397 := by
  rw [tree10397_def]
  rfl
theorem node10397_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10397 live10397 coloured10397 = result10397 := by
  rw [tree10397_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10398_agree_conditional
    (child0 : tree10396 = literal10396)
    (child1 : tree10397 = literal10397) : tree10398 = literal10398 := by
  rw [tree10398_def, child0, child1]
  rfl
theorem node10398_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10396 live10396 coloured10396 = result10396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10397 live10397 coloured10397 = result10397) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10398 live10398 coloured10398 = result10398 := by
  rw [tree10398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10396 coloured10396 at child
  try dsimp only [live10398, coloured10398]
  rw [child]
  dsimp only [result10396]
  have child := child1
  unfold live10397 coloured10397 at child
  try dsimp only [live10398, coloured10398]
  rw [child]
  dsimp only [result10397]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10399_agree_conditional : tree10399 = literal10399 := by
  rw [tree10399_def]
  rfl
theorem node10399_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10399 live10399 coloured10399 = result10399 := by
  rw [tree10399_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10400_agree_conditional
    (child0 : tree10398 = literal10398)
    (child1 : tree10399 = literal10399) : tree10400 = literal10400 := by
  rw [tree10400_def, child0, child1]
  rfl
theorem node10400_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10398 live10398 coloured10398 = result10398)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10399 live10399 coloured10399 = result10399) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10400 live10400 coloured10400 = result10400 := by
  rw [tree10400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10398 coloured10398 at child
  try dsimp only [live10400, coloured10400]
  rw [child]
  dsimp only [result10398]
  have child := child1
  unfold live10399 coloured10399 at child
  try dsimp only [live10400, coloured10400]
  rw [child]
  dsimp only [result10399]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10401_agree_conditional : tree10401 = literal10401 := by
  rw [tree10401_def]
  rfl
theorem node10401_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10401 live10401 coloured10401 = result10401 := by
  rw [tree10401_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10402_agree_conditional
    (child0 : tree10400 = literal10400)
    (child1 : tree10401 = literal10401) : tree10402 = literal10402 := by
  rw [tree10402_def, child0, child1]
  rfl
theorem node10402_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10400 live10400 coloured10400 = result10400)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10401 live10401 coloured10401 = result10401) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10402 live10402 coloured10402 = result10402 := by
  rw [tree10402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10400 coloured10400 at child
  try dsimp only [live10402, coloured10402]
  rw [child]
  dsimp only [result10400]
  have child := child1
  unfold live10401 coloured10401 at child
  try dsimp only [live10402, coloured10402]
  rw [child]
  dsimp only [result10401]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10403_agree_conditional : tree10403 = literal10403 := by
  rw [tree10403_def]
  rfl
theorem node10403_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10403 live10403 coloured10403 = result10403 := by
  rw [tree10403_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10404_agree_conditional
    (child0 : tree10402 = literal10402)
    (child1 : tree10403 = literal10403) : tree10404 = literal10404 := by
  rw [tree10404_def, child0, child1]
  rfl
theorem node10404_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10402 live10402 coloured10402 = result10402)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10403 live10403 coloured10403 = result10403) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10404 live10404 coloured10404 = result10404 := by
  rw [tree10404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10402 coloured10402 at child
  try dsimp only [live10404, coloured10404]
  rw [child]
  dsimp only [result10402]
  have child := child1
  unfold live10403 coloured10403 at child
  try dsimp only [live10404, coloured10404]
  rw [child]
  dsimp only [result10403]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10405_agree_conditional : tree10405 = literal10405 := by
  rw [tree10405_def]
  rfl
theorem node10405_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10405 live10405 coloured10405 = result10405 := by
  rw [tree10405_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10406_agree_conditional
    (child0 : tree10404 = literal10404)
    (child1 : tree10405 = literal10405) : tree10406 = literal10406 := by
  rw [tree10406_def, child0, child1]
  rfl
theorem node10406_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10404 live10404 coloured10404 = result10404)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10405 live10405 coloured10405 = result10405) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10406 live10406 coloured10406 = result10406 := by
  rw [tree10406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10404 coloured10404 at child
  try dsimp only [live10406, coloured10406]
  rw [child]
  dsimp only [result10404]
  have child := child1
  unfold live10405 coloured10405 at child
  try dsimp only [live10406, coloured10406]
  rw [child]
  dsimp only [result10405]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10407_agree_conditional : tree10407 = literal10407 := by
  rw [tree10407_def]
  rfl
theorem node10407_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10407 live10407 coloured10407 = result10407 := by
  rw [tree10407_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10408_agree_conditional
    (child0 : tree10406 = literal10406)
    (child1 : tree10407 = literal10407) : tree10408 = literal10408 := by
  rw [tree10408_def, child0, child1]
  rfl
theorem node10408_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10406 live10406 coloured10406 = result10406)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10407 live10407 coloured10407 = result10407) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10408 live10408 coloured10408 = result10408 := by
  rw [tree10408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10406 coloured10406 at child
  try dsimp only [live10408, coloured10408]
  rw [child]
  dsimp only [result10406]
  have child := child1
  unfold live10407 coloured10407 at child
  try dsimp only [live10408, coloured10408]
  rw [child]
  dsimp only [result10407]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10409_agree_conditional : tree10409 = literal10409 := by
  rw [tree10409_def]
  rfl
theorem node10409_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10409 live10409 coloured10409 = result10409 := by
  rw [tree10409_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10410_agree_conditional
    (child0 : tree10408 = literal10408)
    (child1 : tree10409 = literal10409) : tree10410 = literal10410 := by
  rw [tree10410_def, child0, child1]
  rfl
theorem node10410_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10408 live10408 coloured10408 = result10408)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10409 live10409 coloured10409 = result10409) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10410 live10410 coloured10410 = result10410 := by
  rw [tree10410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10408 coloured10408 at child
  try dsimp only [live10410, coloured10410]
  rw [child]
  dsimp only [result10408]
  have child := child1
  unfold live10409 coloured10409 at child
  try dsimp only [live10410, coloured10410]
  rw [child]
  dsimp only [result10409]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10411_agree_conditional : tree10411 = literal10411 := by
  rw [tree10411_def]
  rfl
theorem node10411_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10411 live10411 coloured10411 = result10411 := by
  rw [tree10411_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10412_agree_conditional
    (child0 : tree10410 = literal10410)
    (child1 : tree10411 = literal10411) : tree10412 = literal10412 := by
  rw [tree10412_def, child0, child1]
  rfl
theorem node10412_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10410 live10410 coloured10410 = result10410)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10411 live10411 coloured10411 = result10411) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10412 live10412 coloured10412 = result10412 := by
  rw [tree10412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10410 coloured10410 at child
  try dsimp only [live10412, coloured10412]
  rw [child]
  dsimp only [result10410]
  have child := child1
  unfold live10411 coloured10411 at child
  try dsimp only [live10412, coloured10412]
  rw [child]
  dsimp only [result10411]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10413_agree_conditional : tree10413 = literal10413 := by
  rw [tree10413_def]
  rfl
theorem node10413_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10413 live10413 coloured10413 = result10413 := by
  rw [tree10413_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10414_agree_conditional
    (child0 : tree10412 = literal10412)
    (child1 : tree10413 = literal10413) : tree10414 = literal10414 := by
  rw [tree10414_def, child0, child1]
  rfl
theorem node10414_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10412 live10412 coloured10412 = result10412)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10413 live10413 coloured10413 = result10413) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10414 live10414 coloured10414 = result10414 := by
  rw [tree10414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10412 coloured10412 at child
  try dsimp only [live10414, coloured10414]
  rw [child]
  dsimp only [result10412]
  have child := child1
  unfold live10413 coloured10413 at child
  try dsimp only [live10414, coloured10414]
  rw [child]
  dsimp only [result10413]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10415_agree_conditional : tree10415 = literal10415 := by
  rw [tree10415_def]
  rfl
theorem node10415_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10415 live10415 coloured10415 = result10415 := by
  rw [tree10415_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10416_agree_conditional
    (child0 : tree10414 = literal10414)
    (child1 : tree10415 = literal10415) : tree10416 = literal10416 := by
  rw [tree10416_def, child0, child1]
  rfl
theorem node10416_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10414 live10414 coloured10414 = result10414)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10415 live10415 coloured10415 = result10415) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10416 live10416 coloured10416 = result10416 := by
  rw [tree10416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10414 coloured10414 at child
  try dsimp only [live10416, coloured10416]
  rw [child]
  dsimp only [result10414]
  have child := child1
  unfold live10415 coloured10415 at child
  try dsimp only [live10416, coloured10416]
  rw [child]
  dsimp only [result10415]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10417_agree_conditional : tree10417 = literal10417 := by
  rw [tree10417_def]
  rfl
theorem node10417_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10417 live10417 coloured10417 = result10417 := by
  rw [tree10417_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10418_agree_conditional
    (child0 : tree10416 = literal10416)
    (child1 : tree10417 = literal10417) : tree10418 = literal10418 := by
  rw [tree10418_def, child0, child1]
  rfl
theorem node10418_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10416 live10416 coloured10416 = result10416)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10417 live10417 coloured10417 = result10417) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10418 live10418 coloured10418 = result10418 := by
  rw [tree10418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10416 coloured10416 at child
  try dsimp only [live10418, coloured10418]
  rw [child]
  dsimp only [result10416]
  have child := child1
  unfold live10417 coloured10417 at child
  try dsimp only [live10418, coloured10418]
  rw [child]
  dsimp only [result10417]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10419_agree_conditional : tree10419 = literal10419 := by
  rw [tree10419_def]
  rfl
theorem node10419_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10419 live10419 coloured10419 = result10419 := by
  rw [tree10419_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10420_agree_conditional
    (child0 : tree10418 = literal10418)
    (child1 : tree10419 = literal10419) : tree10420 = literal10420 := by
  rw [tree10420_def, child0, child1]
  rfl
theorem node10420_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10418 live10418 coloured10418 = result10418)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10419 live10419 coloured10419 = result10419) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10420 live10420 coloured10420 = result10420 := by
  rw [tree10420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10418 coloured10418 at child
  try dsimp only [live10420, coloured10420]
  rw [child]
  dsimp only [result10418]
  have child := child1
  unfold live10419 coloured10419 at child
  try dsimp only [live10420, coloured10420]
  rw [child]
  dsimp only [result10419]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10421_agree_conditional : tree10421 = literal10421 := by
  rw [tree10421_def]
  rfl
theorem node10421_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10421 live10421 coloured10421 = result10421 := by
  rw [tree10421_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10422_agree_conditional
    (child0 : tree10420 = literal10420)
    (child1 : tree10421 = literal10421) : tree10422 = literal10422 := by
  rw [tree10422_def, child0, child1]
  rfl
theorem node10422_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10420 live10420 coloured10420 = result10420)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10421 live10421 coloured10421 = result10421) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10422 live10422 coloured10422 = result10422 := by
  rw [tree10422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10420 coloured10420 at child
  try dsimp only [live10422, coloured10422]
  rw [child]
  dsimp only [result10420]
  have child := child1
  unfold live10421 coloured10421 at child
  try dsimp only [live10422, coloured10422]
  rw [child]
  dsimp only [result10421]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10423_agree_conditional : tree10423 = literal10423 := by
  rw [tree10423_def]
  rfl
theorem node10423_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10423 live10423 coloured10423 = result10423 := by
  rw [tree10423_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10424_agree_conditional
    (child0 : tree10422 = literal10422)
    (child1 : tree10423 = literal10423) : tree10424 = literal10424 := by
  rw [tree10424_def, child0, child1]
  rfl
theorem node10424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10422 live10422 coloured10422 = result10422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10423 live10423 coloured10423 = result10423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10424 live10424 coloured10424 = result10424 := by
  rw [tree10424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10422 coloured10422 at child
  try dsimp only [live10424, coloured10424]
  rw [child]
  dsimp only [result10422]
  have child := child1
  unfold live10423 coloured10423 at child
  try dsimp only [live10424, coloured10424]
  rw [child]
  dsimp only [result10423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10425_agree_conditional : tree10425 = literal10425 := by
  rw [tree10425_def]
  rfl
theorem node10425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10425 live10425 coloured10425 = result10425 := by
  rw [tree10425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10426_agree_conditional
    (child0 : tree10424 = literal10424)
    (child1 : tree10425 = literal10425) : tree10426 = literal10426 := by
  rw [tree10426_def, child0, child1]
  rfl
theorem node10426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10424 live10424 coloured10424 = result10424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10425 live10425 coloured10425 = result10425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10426 live10426 coloured10426 = result10426 := by
  rw [tree10426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10424 coloured10424 at child
  try dsimp only [live10426, coloured10426]
  rw [child]
  dsimp only [result10424]
  have child := child1
  unfold live10425 coloured10425 at child
  try dsimp only [live10426, coloured10426]
  rw [child]
  dsimp only [result10425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10427_agree_conditional : tree10427 = literal10427 := by
  rw [tree10427_def]
  rfl
theorem node10427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10427 live10427 coloured10427 = result10427 := by
  rw [tree10427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10428_agree_conditional
    (child0 : tree10426 = literal10426)
    (child1 : tree10427 = literal10427) : tree10428 = literal10428 := by
  rw [tree10428_def, child0, child1]
  rfl
theorem node10428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10426 live10426 coloured10426 = result10426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10427 live10427 coloured10427 = result10427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10428 live10428 coloured10428 = result10428 := by
  rw [tree10428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10426 coloured10426 at child
  try dsimp only [live10428, coloured10428]
  rw [child]
  dsimp only [result10426]
  have child := child1
  unfold live10427 coloured10427 at child
  try dsimp only [live10428, coloured10428]
  rw [child]
  dsimp only [result10427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10429_agree_conditional : tree10429 = literal10429 := by
  rw [tree10429_def]
  rfl
theorem node10429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10429 live10429 coloured10429 = result10429 := by
  rw [tree10429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10430_agree_conditional
    (child0 : tree10428 = literal10428)
    (child1 : tree10429 = literal10429) : tree10430 = literal10430 := by
  rw [tree10430_def, child0, child1]
  rfl
theorem node10430_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10428 live10428 coloured10428 = result10428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10429 live10429 coloured10429 = result10429) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10430 live10430 coloured10430 = result10430 := by
  rw [tree10430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10428 coloured10428 at child
  try dsimp only [live10430, coloured10430]
  rw [child]
  dsimp only [result10428]
  have child := child1
  unfold live10429 coloured10429 at child
  try dsimp only [live10430, coloured10430]
  rw [child]
  dsimp only [result10429]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10431_agree_conditional : tree10431 = literal10431 := by
  rw [tree10431_def]
  rfl
theorem node10431_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10431 live10431 coloured10431 = result10431 := by
  rw [tree10431_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10432_agree_conditional
    (child0 : tree10430 = literal10430)
    (child1 : tree10431 = literal10431) : tree10432 = literal10432 := by
  rw [tree10432_def, child0, child1]
  rfl
theorem node10432_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10430 live10430 coloured10430 = result10430)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10431 live10431 coloured10431 = result10431) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10432 live10432 coloured10432 = result10432 := by
  rw [tree10432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10430 coloured10430 at child
  try dsimp only [live10432, coloured10432]
  rw [child]
  dsimp only [result10430]
  have child := child1
  unfold live10431 coloured10431 at child
  try dsimp only [live10432, coloured10432]
  rw [child]
  dsimp only [result10431]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10433_agree_conditional : tree10433 = literal10433 := by
  rw [tree10433_def]
  rfl
theorem node10433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10433 live10433 coloured10433 = result10433 := by
  rw [tree10433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10434_agree_conditional
    (child0 : tree10432 = literal10432)
    (child1 : tree10433 = literal10433) : tree10434 = literal10434 := by
  rw [tree10434_def, child0, child1]
  rfl
theorem node10434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10432 live10432 coloured10432 = result10432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10433 live10433 coloured10433 = result10433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10434 live10434 coloured10434 = result10434 := by
  rw [tree10434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10432 coloured10432 at child
  try dsimp only [live10434, coloured10434]
  rw [child]
  dsimp only [result10432]
  have child := child1
  unfold live10433 coloured10433 at child
  try dsimp only [live10434, coloured10434]
  rw [child]
  dsimp only [result10433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10435_agree_conditional : tree10435 = literal10435 := by
  rw [tree10435_def]
  rfl
theorem node10435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10435 live10435 coloured10435 = result10435 := by
  rw [tree10435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10436_agree_conditional
    (child0 : tree10434 = literal10434)
    (child1 : tree10435 = literal10435) : tree10436 = literal10436 := by
  rw [tree10436_def, child0, child1]
  rfl
theorem node10436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10434 live10434 coloured10434 = result10434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10435 live10435 coloured10435 = result10435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10436 live10436 coloured10436 = result10436 := by
  rw [tree10436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10434 coloured10434 at child
  try dsimp only [live10436, coloured10436]
  rw [child]
  dsimp only [result10434]
  have child := child1
  unfold live10435 coloured10435 at child
  try dsimp only [live10436, coloured10436]
  rw [child]
  dsimp only [result10435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10437_agree_conditional : tree10437 = literal10437 := by
  rw [tree10437_def]
  rfl
theorem node10437_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10437 live10437 coloured10437 = result10437 := by
  rw [tree10437_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10438_agree_conditional
    (child0 : tree10436 = literal10436)
    (child1 : tree10437 = literal10437) : tree10438 = literal10438 := by
  rw [tree10438_def, child0, child1]
  rfl
theorem node10438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10436 live10436 coloured10436 = result10436)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10437 live10437 coloured10437 = result10437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10438 live10438 coloured10438 = result10438 := by
  rw [tree10438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10436 coloured10436 at child
  try dsimp only [live10438, coloured10438]
  rw [child]
  dsimp only [result10436]
  have child := child1
  unfold live10437 coloured10437 at child
  try dsimp only [live10438, coloured10438]
  rw [child]
  dsimp only [result10437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10439_agree_conditional : tree10439 = literal10439 := by
  rw [tree10439_def]
  rfl
theorem node10439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10439 live10439 coloured10439 = result10439 := by
  rw [tree10439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10440_agree_conditional
    (child0 : tree10438 = literal10438)
    (child1 : tree10439 = literal10439) : tree10440 = literal10440 := by
  rw [tree10440_def, child0, child1]
  rfl
theorem node10440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10438 live10438 coloured10438 = result10438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10439 live10439 coloured10439 = result10439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10440 live10440 coloured10440 = result10440 := by
  rw [tree10440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10438 coloured10438 at child
  try dsimp only [live10440, coloured10440]
  rw [child]
  dsimp only [result10438]
  have child := child1
  unfold live10439 coloured10439 at child
  try dsimp only [live10440, coloured10440]
  rw [child]
  dsimp only [result10439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10441_agree_conditional : tree10441 = literal10441 := by
  rw [tree10441_def]
  rfl
theorem node10441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10441 live10441 coloured10441 = result10441 := by
  rw [tree10441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10442_agree_conditional
    (child0 : tree10440 = literal10440)
    (child1 : tree10441 = literal10441) : tree10442 = literal10442 := by
  rw [tree10442_def, child0, child1]
  rfl
theorem node10442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10440 live10440 coloured10440 = result10440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10441 live10441 coloured10441 = result10441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10442 live10442 coloured10442 = result10442 := by
  rw [tree10442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10440 coloured10440 at child
  try dsimp only [live10442, coloured10442]
  rw [child]
  dsimp only [result10440]
  have child := child1
  unfold live10441 coloured10441 at child
  try dsimp only [live10442, coloured10442]
  rw [child]
  dsimp only [result10441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10443_agree_conditional : tree10443 = literal10443 := by
  rw [tree10443_def]
  rfl
theorem node10443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10443 live10443 coloured10443 = result10443 := by
  rw [tree10443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10444_agree_conditional
    (child0 : tree10442 = literal10442)
    (child1 : tree10443 = literal10443) : tree10444 = literal10444 := by
  rw [tree10444_def, child0, child1]
  rfl
theorem node10444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10442 live10442 coloured10442 = result10442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10443 live10443 coloured10443 = result10443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10444 live10444 coloured10444 = result10444 := by
  rw [tree10444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10442 coloured10442 at child
  try dsimp only [live10444, coloured10444]
  rw [child]
  dsimp only [result10442]
  have child := child1
  unfold live10443 coloured10443 at child
  try dsimp only [live10444, coloured10444]
  rw [child]
  dsimp only [result10443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10445_agree_conditional : tree10445 = literal10445 := by
  rw [tree10445_def]
  rfl
theorem node10445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10445 live10445 coloured10445 = result10445 := by
  rw [tree10445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10446_agree_conditional
    (child0 : tree10444 = literal10444)
    (child1 : tree10445 = literal10445) : tree10446 = literal10446 := by
  rw [tree10446_def, child0, child1]
  rfl
theorem node10446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10444 live10444 coloured10444 = result10444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10445 live10445 coloured10445 = result10445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10446 live10446 coloured10446 = result10446 := by
  rw [tree10446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10444 coloured10444 at child
  try dsimp only [live10446, coloured10446]
  rw [child]
  dsimp only [result10444]
  have child := child1
  unfold live10445 coloured10445 at child
  try dsimp only [live10446, coloured10446]
  rw [child]
  dsimp only [result10445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10447_agree_conditional : tree10447 = literal10447 := by
  rw [tree10447_def]
  rfl
theorem node10447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10447 live10447 coloured10447 = result10447 := by
  rw [tree10447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10448_agree_conditional
    (child0 : tree10446 = literal10446)
    (child1 : tree10447 = literal10447) : tree10448 = literal10448 := by
  rw [tree10448_def, child0, child1]
  rfl
theorem node10448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10446 live10446 coloured10446 = result10446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10447 live10447 coloured10447 = result10447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10448 live10448 coloured10448 = result10448 := by
  rw [tree10448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10446 coloured10446 at child
  try dsimp only [live10448, coloured10448]
  rw [child]
  dsimp only [result10446]
  have child := child1
  unfold live10447 coloured10447 at child
  try dsimp only [live10448, coloured10448]
  rw [child]
  dsimp only [result10447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10449_agree_conditional : tree10449 = literal10449 := by
  rw [tree10449_def]
  rfl
theorem node10449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10449 live10449 coloured10449 = result10449 := by
  rw [tree10449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10450_agree_conditional
    (child0 : tree10448 = literal10448)
    (child1 : tree10449 = literal10449) : tree10450 = literal10450 := by
  rw [tree10450_def, child0, child1]
  rfl
theorem node10450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10448 live10448 coloured10448 = result10448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10449 live10449 coloured10449 = result10449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10450 live10450 coloured10450 = result10450 := by
  rw [tree10450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10448 coloured10448 at child
  try dsimp only [live10450, coloured10450]
  rw [child]
  dsimp only [result10448]
  have child := child1
  unfold live10449 coloured10449 at child
  try dsimp only [live10450, coloured10450]
  rw [child]
  dsimp only [result10449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10451_agree_conditional : tree10451 = literal10451 := by
  rw [tree10451_def]
  rfl
theorem node10451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10451 live10451 coloured10451 = result10451 := by
  rw [tree10451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10452_agree_conditional
    (child0 : tree10450 = literal10450)
    (child1 : tree10451 = literal10451) : tree10452 = literal10452 := by
  rw [tree10452_def, child0, child1]
  rfl
theorem node10452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10450 live10450 coloured10450 = result10450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10451 live10451 coloured10451 = result10451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10452 live10452 coloured10452 = result10452 := by
  rw [tree10452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10450 coloured10450 at child
  try dsimp only [live10452, coloured10452]
  rw [child]
  dsimp only [result10450]
  have child := child1
  unfold live10451 coloured10451 at child
  try dsimp only [live10452, coloured10452]
  rw [child]
  dsimp only [result10451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10453_agree_conditional : tree10453 = literal10453 := by
  rw [tree10453_def]
  rfl
theorem node10453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10453 live10453 coloured10453 = result10453 := by
  rw [tree10453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10454_agree_conditional
    (child0 : tree10452 = literal10452)
    (child1 : tree10453 = literal10453) : tree10454 = literal10454 := by
  rw [tree10454_def, child0, child1]
  rfl
theorem node10454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10452 live10452 coloured10452 = result10452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10453 live10453 coloured10453 = result10453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10454 live10454 coloured10454 = result10454 := by
  rw [tree10454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10452 coloured10452 at child
  try dsimp only [live10454, coloured10454]
  rw [child]
  dsimp only [result10452]
  have child := child1
  unfold live10453 coloured10453 at child
  try dsimp only [live10454, coloured10454]
  rw [child]
  dsimp only [result10453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10455_agree_conditional : tree10455 = literal10455 := by
  rw [tree10455_def]
  rfl
theorem node10455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10455 live10455 coloured10455 = result10455 := by
  rw [tree10455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10456_agree_conditional
    (child0 : tree10454 = literal10454)
    (child1 : tree10455 = literal10455) : tree10456 = literal10456 := by
  rw [tree10456_def, child0, child1]
  rfl
theorem node10456_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10454 live10454 coloured10454 = result10454)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10455 live10455 coloured10455 = result10455) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10456 live10456 coloured10456 = result10456 := by
  rw [tree10456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10454 coloured10454 at child
  try dsimp only [live10456, coloured10456]
  rw [child]
  dsimp only [result10454]
  have child := child1
  unfold live10455 coloured10455 at child
  try dsimp only [live10456, coloured10456]
  rw [child]
  dsimp only [result10455]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10457_agree_conditional : tree10457 = literal10457 := by
  rw [tree10457_def]
  rfl
theorem node10457_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10457 live10457 coloured10457 = result10457 := by
  rw [tree10457_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10458_agree_conditional
    (child0 : tree10456 = literal10456)
    (child1 : tree10457 = literal10457) : tree10458 = literal10458 := by
  rw [tree10458_def, child0, child1]
  rfl
theorem node10458_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10456 live10456 coloured10456 = result10456)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10457 live10457 coloured10457 = result10457) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10458 live10458 coloured10458 = result10458 := by
  rw [tree10458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10456 coloured10456 at child
  try dsimp only [live10458, coloured10458]
  rw [child]
  dsimp only [result10456]
  have child := child1
  unfold live10457 coloured10457 at child
  try dsimp only [live10458, coloured10458]
  rw [child]
  dsimp only [result10457]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10459_agree_conditional : tree10459 = literal10459 := by
  rw [tree10459_def]
  rfl
theorem node10459_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10459 live10459 coloured10459 = result10459 := by
  rw [tree10459_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10460_agree_conditional
    (child0 : tree10458 = literal10458)
    (child1 : tree10459 = literal10459) : tree10460 = literal10460 := by
  rw [tree10460_def, child0, child1]
  rfl
theorem node10460_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10458 live10458 coloured10458 = result10458)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10459 live10459 coloured10459 = result10459) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10460 live10460 coloured10460 = result10460 := by
  rw [tree10460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10458 coloured10458 at child
  try dsimp only [live10460, coloured10460]
  rw [child]
  dsimp only [result10458]
  have child := child1
  unfold live10459 coloured10459 at child
  try dsimp only [live10460, coloured10460]
  rw [child]
  dsimp only [result10459]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10461_agree_conditional : tree10461 = literal10461 := by
  rw [tree10461_def]
  rfl
theorem node10461_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10461 live10461 coloured10461 = result10461 := by
  rw [tree10461_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10462_agree_conditional
    (child0 : tree10460 = literal10460)
    (child1 : tree10461 = literal10461) : tree10462 = literal10462 := by
  rw [tree10462_def, child0, child1]
  rfl
theorem node10462_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10460 live10460 coloured10460 = result10460)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10461 live10461 coloured10461 = result10461) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10462 live10462 coloured10462 = result10462 := by
  rw [tree10462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10460 coloured10460 at child
  try dsimp only [live10462, coloured10462]
  rw [child]
  dsimp only [result10460]
  have child := child1
  unfold live10461 coloured10461 at child
  try dsimp only [live10462, coloured10462]
  rw [child]
  dsimp only [result10461]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10463_agree_conditional : tree10463 = literal10463 := by
  rw [tree10463_def]
  rfl
theorem node10463_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10463 live10463 coloured10463 = result10463 := by
  rw [tree10463_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
