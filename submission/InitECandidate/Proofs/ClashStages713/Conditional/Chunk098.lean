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
theorem tree9408_agree_conditional
    (child0 : tree9406 = literal9406)
    (child1 : tree9407 = literal9407) : tree9408 = literal9408 := by
  rw [tree9408_def, child0, child1]
  rfl
theorem node9408_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9406 live9406 coloured9406 = result9406)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9407 live9407 coloured9407 = result9407) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9408 live9408 coloured9408 = result9408 := by
  rw [tree9408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9406 coloured9406 at child
  try dsimp only [live9408, coloured9408]
  rw [child]
  dsimp only [result9406]
  have child := child1
  unfold live9407 coloured9407 at child
  try dsimp only [live9408, coloured9408]
  rw [child]
  dsimp only [result9407]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9409_agree_conditional : tree9409 = literal9409 := by
  rw [tree9409_def]
  rfl
theorem node9409_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9409 live9409 coloured9409 = result9409 := by
  rw [tree9409_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9410_agree_conditional
    (child0 : tree9408 = literal9408)
    (child1 : tree9409 = literal9409) : tree9410 = literal9410 := by
  rw [tree9410_def, child0, child1]
  rfl
theorem node9410_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9408 live9408 coloured9408 = result9408)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9409 live9409 coloured9409 = result9409) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9410 live9410 coloured9410 = result9410 := by
  rw [tree9410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9408 coloured9408 at child
  try dsimp only [live9410, coloured9410]
  rw [child]
  dsimp only [result9408]
  have child := child1
  unfold live9409 coloured9409 at child
  try dsimp only [live9410, coloured9410]
  rw [child]
  dsimp only [result9409]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9411_agree_conditional : tree9411 = literal9411 := by
  rw [tree9411_def]
  rfl
theorem node9411_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9411 live9411 coloured9411 = result9411 := by
  rw [tree9411_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9412_agree_conditional
    (child0 : tree9410 = literal9410)
    (child1 : tree9411 = literal9411) : tree9412 = literal9412 := by
  rw [tree9412_def, child0, child1]
  rfl
theorem node9412_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9410 live9410 coloured9410 = result9410)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9411 live9411 coloured9411 = result9411) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9412 live9412 coloured9412 = result9412 := by
  rw [tree9412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9410 coloured9410 at child
  try dsimp only [live9412, coloured9412]
  rw [child]
  dsimp only [result9410]
  have child := child1
  unfold live9411 coloured9411 at child
  try dsimp only [live9412, coloured9412]
  rw [child]
  dsimp only [result9411]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9413_agree_conditional : tree9413 = literal9413 := by
  rw [tree9413_def]
  rfl
theorem node9413_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9413 live9413 coloured9413 = result9413 := by
  rw [tree9413_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9414_agree_conditional
    (child0 : tree9412 = literal9412)
    (child1 : tree9413 = literal9413) : tree9414 = literal9414 := by
  rw [tree9414_def, child0, child1]
  rfl
theorem node9414_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9412 live9412 coloured9412 = result9412)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9413 live9413 coloured9413 = result9413) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9414 live9414 coloured9414 = result9414 := by
  rw [tree9414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9412 coloured9412 at child
  try dsimp only [live9414, coloured9414]
  rw [child]
  dsimp only [result9412]
  have child := child1
  unfold live9413 coloured9413 at child
  try dsimp only [live9414, coloured9414]
  rw [child]
  dsimp only [result9413]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9415_agree_conditional : tree9415 = literal9415 := by
  rw [tree9415_def]
  rfl
theorem node9415_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9415 live9415 coloured9415 = result9415 := by
  rw [tree9415_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9416_agree_conditional
    (child0 : tree9414 = literal9414)
    (child1 : tree9415 = literal9415) : tree9416 = literal9416 := by
  rw [tree9416_def, child0, child1]
  rfl
theorem node9416_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9414 live9414 coloured9414 = result9414)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9415 live9415 coloured9415 = result9415) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9416 live9416 coloured9416 = result9416 := by
  rw [tree9416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9414 coloured9414 at child
  try dsimp only [live9416, coloured9416]
  rw [child]
  dsimp only [result9414]
  have child := child1
  unfold live9415 coloured9415 at child
  try dsimp only [live9416, coloured9416]
  rw [child]
  dsimp only [result9415]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9417_agree_conditional : tree9417 = literal9417 := by
  rw [tree9417_def]
  rfl
theorem node9417_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9417 live9417 coloured9417 = result9417 := by
  rw [tree9417_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9418_agree_conditional
    (child0 : tree9416 = literal9416)
    (child1 : tree9417 = literal9417) : tree9418 = literal9418 := by
  rw [tree9418_def, child0, child1]
  rfl
theorem node9418_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9416 live9416 coloured9416 = result9416)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9417 live9417 coloured9417 = result9417) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9418 live9418 coloured9418 = result9418 := by
  rw [tree9418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9416 coloured9416 at child
  try dsimp only [live9418, coloured9418]
  rw [child]
  dsimp only [result9416]
  have child := child1
  unfold live9417 coloured9417 at child
  try dsimp only [live9418, coloured9418]
  rw [child]
  dsimp only [result9417]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9419_agree_conditional : tree9419 = literal9419 := by
  rw [tree9419_def]
  rfl
theorem node9419_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9419 live9419 coloured9419 = result9419 := by
  rw [tree9419_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9420_agree_conditional
    (child0 : tree9418 = literal9418)
    (child1 : tree9419 = literal9419) : tree9420 = literal9420 := by
  rw [tree9420_def, child0, child1]
  rfl
theorem node9420_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9418 live9418 coloured9418 = result9418)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9419 live9419 coloured9419 = result9419) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9420 live9420 coloured9420 = result9420 := by
  rw [tree9420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9418 coloured9418 at child
  try dsimp only [live9420, coloured9420]
  rw [child]
  dsimp only [result9418]
  have child := child1
  unfold live9419 coloured9419 at child
  try dsimp only [live9420, coloured9420]
  rw [child]
  dsimp only [result9419]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9421_agree_conditional : tree9421 = literal9421 := by
  rw [tree9421_def]
  rfl
theorem node9421_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9421 live9421 coloured9421 = result9421 := by
  rw [tree9421_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9422_agree_conditional
    (child0 : tree9420 = literal9420)
    (child1 : tree9421 = literal9421) : tree9422 = literal9422 := by
  rw [tree9422_def, child0, child1]
  rfl
theorem node9422_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9420 live9420 coloured9420 = result9420)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9421 live9421 coloured9421 = result9421) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9422 live9422 coloured9422 = result9422 := by
  rw [tree9422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9420 coloured9420 at child
  try dsimp only [live9422, coloured9422]
  rw [child]
  dsimp only [result9420]
  have child := child1
  unfold live9421 coloured9421 at child
  try dsimp only [live9422, coloured9422]
  rw [child]
  dsimp only [result9421]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9423_agree_conditional : tree9423 = literal9423 := by
  rw [tree9423_def]
  rfl
theorem node9423_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9423 live9423 coloured9423 = result9423 := by
  rw [tree9423_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9424_agree_conditional
    (child0 : tree9422 = literal9422)
    (child1 : tree9423 = literal9423) : tree9424 = literal9424 := by
  rw [tree9424_def, child0, child1]
  rfl
theorem node9424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9422 live9422 coloured9422 = result9422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9423 live9423 coloured9423 = result9423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9424 live9424 coloured9424 = result9424 := by
  rw [tree9424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9422 coloured9422 at child
  try dsimp only [live9424, coloured9424]
  rw [child]
  dsimp only [result9422]
  have child := child1
  unfold live9423 coloured9423 at child
  try dsimp only [live9424, coloured9424]
  rw [child]
  dsimp only [result9423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9425_agree_conditional : tree9425 = literal9425 := by
  rw [tree9425_def]
  rfl
theorem node9425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9425 live9425 coloured9425 = result9425 := by
  rw [tree9425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9426_agree_conditional
    (child0 : tree9424 = literal9424)
    (child1 : tree9425 = literal9425) : tree9426 = literal9426 := by
  rw [tree9426_def, child0, child1]
  rfl
theorem node9426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9424 live9424 coloured9424 = result9424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9425 live9425 coloured9425 = result9425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9426 live9426 coloured9426 = result9426 := by
  rw [tree9426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9424 coloured9424 at child
  try dsimp only [live9426, coloured9426]
  rw [child]
  dsimp only [result9424]
  have child := child1
  unfold live9425 coloured9425 at child
  try dsimp only [live9426, coloured9426]
  rw [child]
  dsimp only [result9425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9427_agree_conditional : tree9427 = literal9427 := by
  rw [tree9427_def]
  rfl
theorem node9427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9427 live9427 coloured9427 = result9427 := by
  rw [tree9427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9428_agree_conditional
    (child0 : tree9426 = literal9426)
    (child1 : tree9427 = literal9427) : tree9428 = literal9428 := by
  rw [tree9428_def, child0, child1]
  rfl
theorem node9428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9426 live9426 coloured9426 = result9426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9427 live9427 coloured9427 = result9427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9428 live9428 coloured9428 = result9428 := by
  rw [tree9428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9426 coloured9426 at child
  try dsimp only [live9428, coloured9428]
  rw [child]
  dsimp only [result9426]
  have child := child1
  unfold live9427 coloured9427 at child
  try dsimp only [live9428, coloured9428]
  rw [child]
  dsimp only [result9427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9429_agree_conditional : tree9429 = literal9429 := by
  rw [tree9429_def]
  rfl
theorem node9429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9429 live9429 coloured9429 = result9429 := by
  rw [tree9429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9430_agree_conditional
    (child0 : tree9428 = literal9428)
    (child1 : tree9429 = literal9429) : tree9430 = literal9430 := by
  rw [tree9430_def, child0, child1]
  rfl
theorem node9430_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9428 live9428 coloured9428 = result9428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9429 live9429 coloured9429 = result9429) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9430 live9430 coloured9430 = result9430 := by
  rw [tree9430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9428 coloured9428 at child
  try dsimp only [live9430, coloured9430]
  rw [child]
  dsimp only [result9428]
  have child := child1
  unfold live9429 coloured9429 at child
  try dsimp only [live9430, coloured9430]
  rw [child]
  dsimp only [result9429]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9431_agree_conditional : tree9431 = literal9431 := by
  rw [tree9431_def]
  rfl
theorem node9431_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9431 live9431 coloured9431 = result9431 := by
  rw [tree9431_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9432_agree_conditional
    (child0 : tree9430 = literal9430)
    (child1 : tree9431 = literal9431) : tree9432 = literal9432 := by
  rw [tree9432_def, child0, child1]
  rfl
theorem node9432_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9430 live9430 coloured9430 = result9430)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9431 live9431 coloured9431 = result9431) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9432 live9432 coloured9432 = result9432 := by
  rw [tree9432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9430 coloured9430 at child
  try dsimp only [live9432, coloured9432]
  rw [child]
  dsimp only [result9430]
  have child := child1
  unfold live9431 coloured9431 at child
  try dsimp only [live9432, coloured9432]
  rw [child]
  dsimp only [result9431]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9433_agree_conditional : tree9433 = literal9433 := by
  rw [tree9433_def]
  rfl
theorem node9433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9433 live9433 coloured9433 = result9433 := by
  rw [tree9433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9434_agree_conditional
    (child0 : tree9432 = literal9432)
    (child1 : tree9433 = literal9433) : tree9434 = literal9434 := by
  rw [tree9434_def, child0, child1]
  rfl
theorem node9434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9432 live9432 coloured9432 = result9432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9433 live9433 coloured9433 = result9433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9434 live9434 coloured9434 = result9434 := by
  rw [tree9434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9432 coloured9432 at child
  try dsimp only [live9434, coloured9434]
  rw [child]
  dsimp only [result9432]
  have child := child1
  unfold live9433 coloured9433 at child
  try dsimp only [live9434, coloured9434]
  rw [child]
  dsimp only [result9433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9435_agree_conditional : tree9435 = literal9435 := by
  rw [tree9435_def]
  rfl
theorem node9435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9435 live9435 coloured9435 = result9435 := by
  rw [tree9435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9436_agree_conditional
    (child0 : tree9434 = literal9434)
    (child1 : tree9435 = literal9435) : tree9436 = literal9436 := by
  rw [tree9436_def, child0, child1]
  rfl
theorem node9436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9434 live9434 coloured9434 = result9434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9435 live9435 coloured9435 = result9435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9436 live9436 coloured9436 = result9436 := by
  rw [tree9436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9434 coloured9434 at child
  try dsimp only [live9436, coloured9436]
  rw [child]
  dsimp only [result9434]
  have child := child1
  unfold live9435 coloured9435 at child
  try dsimp only [live9436, coloured9436]
  rw [child]
  dsimp only [result9435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9437_agree_conditional : tree9437 = literal9437 := by
  rw [tree9437_def]
  rfl
theorem node9437_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9437 live9437 coloured9437 = result9437 := by
  rw [tree9437_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9438_agree_conditional
    (child0 : tree9436 = literal9436)
    (child1 : tree9437 = literal9437) : tree9438 = literal9438 := by
  rw [tree9438_def, child0, child1]
  rfl
theorem node9438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9436 live9436 coloured9436 = result9436)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9437 live9437 coloured9437 = result9437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9438 live9438 coloured9438 = result9438 := by
  rw [tree9438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9436 coloured9436 at child
  try dsimp only [live9438, coloured9438]
  rw [child]
  dsimp only [result9436]
  have child := child1
  unfold live9437 coloured9437 at child
  try dsimp only [live9438, coloured9438]
  rw [child]
  dsimp only [result9437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9439_agree_conditional : tree9439 = literal9439 := by
  rw [tree9439_def]
  rfl
theorem node9439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9439 live9439 coloured9439 = result9439 := by
  rw [tree9439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9440_agree_conditional
    (child0 : tree9438 = literal9438)
    (child1 : tree9439 = literal9439) : tree9440 = literal9440 := by
  rw [tree9440_def, child0, child1]
  rfl
theorem node9440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9438 live9438 coloured9438 = result9438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9439 live9439 coloured9439 = result9439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9440 live9440 coloured9440 = result9440 := by
  rw [tree9440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9438 coloured9438 at child
  try dsimp only [live9440, coloured9440]
  rw [child]
  dsimp only [result9438]
  have child := child1
  unfold live9439 coloured9439 at child
  try dsimp only [live9440, coloured9440]
  rw [child]
  dsimp only [result9439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9441_agree_conditional : tree9441 = literal9441 := by
  rw [tree9441_def]
  rfl
theorem node9441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9441 live9441 coloured9441 = result9441 := by
  rw [tree9441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9442_agree_conditional
    (child0 : tree9440 = literal9440)
    (child1 : tree9441 = literal9441) : tree9442 = literal9442 := by
  rw [tree9442_def, child0, child1]
  rfl
theorem node9442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9440 live9440 coloured9440 = result9440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9441 live9441 coloured9441 = result9441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9442 live9442 coloured9442 = result9442 := by
  rw [tree9442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9440 coloured9440 at child
  try dsimp only [live9442, coloured9442]
  rw [child]
  dsimp only [result9440]
  have child := child1
  unfold live9441 coloured9441 at child
  try dsimp only [live9442, coloured9442]
  rw [child]
  dsimp only [result9441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9443_agree_conditional : tree9443 = literal9443 := by
  rw [tree9443_def]
  rfl
theorem node9443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9443 live9443 coloured9443 = result9443 := by
  rw [tree9443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9444_agree_conditional
    (child0 : tree9442 = literal9442)
    (child1 : tree9443 = literal9443) : tree9444 = literal9444 := by
  rw [tree9444_def, child0, child1]
  rfl
theorem node9444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9442 live9442 coloured9442 = result9442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9443 live9443 coloured9443 = result9443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9444 live9444 coloured9444 = result9444 := by
  rw [tree9444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9442 coloured9442 at child
  try dsimp only [live9444, coloured9444]
  rw [child]
  dsimp only [result9442]
  have child := child1
  unfold live9443 coloured9443 at child
  try dsimp only [live9444, coloured9444]
  rw [child]
  dsimp only [result9443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9445_agree_conditional : tree9445 = literal9445 := by
  rw [tree9445_def]
  rfl
theorem node9445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9445 live9445 coloured9445 = result9445 := by
  rw [tree9445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9446_agree_conditional
    (child0 : tree9444 = literal9444)
    (child1 : tree9445 = literal9445) : tree9446 = literal9446 := by
  rw [tree9446_def, child0, child1]
  rfl
theorem node9446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9444 live9444 coloured9444 = result9444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9445 live9445 coloured9445 = result9445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9446 live9446 coloured9446 = result9446 := by
  rw [tree9446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9444 coloured9444 at child
  try dsimp only [live9446, coloured9446]
  rw [child]
  dsimp only [result9444]
  have child := child1
  unfold live9445 coloured9445 at child
  try dsimp only [live9446, coloured9446]
  rw [child]
  dsimp only [result9445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9447_agree_conditional : tree9447 = literal9447 := by
  rw [tree9447_def]
  rfl
theorem node9447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9447 live9447 coloured9447 = result9447 := by
  rw [tree9447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9448_agree_conditional
    (child0 : tree9446 = literal9446)
    (child1 : tree9447 = literal9447) : tree9448 = literal9448 := by
  rw [tree9448_def, child0, child1]
  rfl
theorem node9448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9446 live9446 coloured9446 = result9446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9447 live9447 coloured9447 = result9447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9448 live9448 coloured9448 = result9448 := by
  rw [tree9448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9446 coloured9446 at child
  try dsimp only [live9448, coloured9448]
  rw [child]
  dsimp only [result9446]
  have child := child1
  unfold live9447 coloured9447 at child
  try dsimp only [live9448, coloured9448]
  rw [child]
  dsimp only [result9447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9449_agree_conditional : tree9449 = literal9449 := by
  rw [tree9449_def]
  rfl
theorem node9449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9449 live9449 coloured9449 = result9449 := by
  rw [tree9449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9450_agree_conditional
    (child0 : tree9448 = literal9448)
    (child1 : tree9449 = literal9449) : tree9450 = literal9450 := by
  rw [tree9450_def, child0, child1]
  rfl
theorem node9450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9448 live9448 coloured9448 = result9448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9449 live9449 coloured9449 = result9449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9450 live9450 coloured9450 = result9450 := by
  rw [tree9450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9448 coloured9448 at child
  try dsimp only [live9450, coloured9450]
  rw [child]
  dsimp only [result9448]
  have child := child1
  unfold live9449 coloured9449 at child
  try dsimp only [live9450, coloured9450]
  rw [child]
  dsimp only [result9449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9451_agree_conditional : tree9451 = literal9451 := by
  rw [tree9451_def]
  rfl
theorem node9451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9451 live9451 coloured9451 = result9451 := by
  rw [tree9451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9452_agree_conditional
    (child0 : tree9450 = literal9450)
    (child1 : tree9451 = literal9451) : tree9452 = literal9452 := by
  rw [tree9452_def, child0, child1]
  rfl
theorem node9452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9450 live9450 coloured9450 = result9450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9451 live9451 coloured9451 = result9451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9452 live9452 coloured9452 = result9452 := by
  rw [tree9452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9450 coloured9450 at child
  try dsimp only [live9452, coloured9452]
  rw [child]
  dsimp only [result9450]
  have child := child1
  unfold live9451 coloured9451 at child
  try dsimp only [live9452, coloured9452]
  rw [child]
  dsimp only [result9451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9453_agree_conditional : tree9453 = literal9453 := by
  rw [tree9453_def]
  rfl
theorem node9453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9453 live9453 coloured9453 = result9453 := by
  rw [tree9453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9454_agree_conditional
    (child0 : tree9452 = literal9452)
    (child1 : tree9453 = literal9453) : tree9454 = literal9454 := by
  rw [tree9454_def, child0, child1]
  rfl
theorem node9454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9452 live9452 coloured9452 = result9452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9453 live9453 coloured9453 = result9453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9454 live9454 coloured9454 = result9454 := by
  rw [tree9454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9452 coloured9452 at child
  try dsimp only [live9454, coloured9454]
  rw [child]
  dsimp only [result9452]
  have child := child1
  unfold live9453 coloured9453 at child
  try dsimp only [live9454, coloured9454]
  rw [child]
  dsimp only [result9453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9455_agree_conditional : tree9455 = literal9455 := by
  rw [tree9455_def]
  rfl
theorem node9455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9455 live9455 coloured9455 = result9455 := by
  rw [tree9455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9456_agree_conditional
    (child0 : tree9454 = literal9454)
    (child1 : tree9455 = literal9455) : tree9456 = literal9456 := by
  rw [tree9456_def, child0, child1]
  rfl
theorem node9456_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9454 live9454 coloured9454 = result9454)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9455 live9455 coloured9455 = result9455) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9456 live9456 coloured9456 = result9456 := by
  rw [tree9456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9454 coloured9454 at child
  try dsimp only [live9456, coloured9456]
  rw [child]
  dsimp only [result9454]
  have child := child1
  unfold live9455 coloured9455 at child
  try dsimp only [live9456, coloured9456]
  rw [child]
  dsimp only [result9455]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9457_agree_conditional : tree9457 = literal9457 := by
  rw [tree9457_def]
  rfl
theorem node9457_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9457 live9457 coloured9457 = result9457 := by
  rw [tree9457_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9458_agree_conditional
    (child0 : tree9456 = literal9456)
    (child1 : tree9457 = literal9457) : tree9458 = literal9458 := by
  rw [tree9458_def, child0, child1]
  rfl
theorem node9458_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9456 live9456 coloured9456 = result9456)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9457 live9457 coloured9457 = result9457) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9458 live9458 coloured9458 = result9458 := by
  rw [tree9458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9456 coloured9456 at child
  try dsimp only [live9458, coloured9458]
  rw [child]
  dsimp only [result9456]
  have child := child1
  unfold live9457 coloured9457 at child
  try dsimp only [live9458, coloured9458]
  rw [child]
  dsimp only [result9457]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9459_agree_conditional : tree9459 = literal9459 := by
  rw [tree9459_def]
  rfl
theorem node9459_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9459 live9459 coloured9459 = result9459 := by
  rw [tree9459_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9460_agree_conditional
    (child0 : tree9458 = literal9458)
    (child1 : tree9459 = literal9459) : tree9460 = literal9460 := by
  rw [tree9460_def, child0, child1]
  rfl
theorem node9460_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9458 live9458 coloured9458 = result9458)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9459 live9459 coloured9459 = result9459) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9460 live9460 coloured9460 = result9460 := by
  rw [tree9460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9458 coloured9458 at child
  try dsimp only [live9460, coloured9460]
  rw [child]
  dsimp only [result9458]
  have child := child1
  unfold live9459 coloured9459 at child
  try dsimp only [live9460, coloured9460]
  rw [child]
  dsimp only [result9459]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9461_agree_conditional : tree9461 = literal9461 := by
  rw [tree9461_def]
  rfl
theorem node9461_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9461 live9461 coloured9461 = result9461 := by
  rw [tree9461_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9462_agree_conditional
    (child0 : tree9460 = literal9460)
    (child1 : tree9461 = literal9461) : tree9462 = literal9462 := by
  rw [tree9462_def, child0, child1]
  rfl
theorem node9462_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9460 live9460 coloured9460 = result9460)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9461 live9461 coloured9461 = result9461) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9462 live9462 coloured9462 = result9462 := by
  rw [tree9462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9460 coloured9460 at child
  try dsimp only [live9462, coloured9462]
  rw [child]
  dsimp only [result9460]
  have child := child1
  unfold live9461 coloured9461 at child
  try dsimp only [live9462, coloured9462]
  rw [child]
  dsimp only [result9461]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9463_agree_conditional : tree9463 = literal9463 := by
  rw [tree9463_def]
  rfl
theorem node9463_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9463 live9463 coloured9463 = result9463 := by
  rw [tree9463_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9464_agree_conditional
    (child0 : tree9462 = literal9462)
    (child1 : tree9463 = literal9463) : tree9464 = literal9464 := by
  rw [tree9464_def, child0, child1]
  rfl
theorem node9464_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9462 live9462 coloured9462 = result9462)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9463 live9463 coloured9463 = result9463) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9464 live9464 coloured9464 = result9464 := by
  rw [tree9464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9462 coloured9462 at child
  try dsimp only [live9464, coloured9464]
  rw [child]
  dsimp only [result9462]
  have child := child1
  unfold live9463 coloured9463 at child
  try dsimp only [live9464, coloured9464]
  rw [child]
  dsimp only [result9463]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9465_agree_conditional : tree9465 = literal9465 := by
  rw [tree9465_def]
  rfl
theorem node9465_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9465 live9465 coloured9465 = result9465 := by
  rw [tree9465_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9466_agree_conditional
    (child0 : tree9464 = literal9464)
    (child1 : tree9465 = literal9465) : tree9466 = literal9466 := by
  rw [tree9466_def, child0, child1]
  rfl
theorem node9466_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9464 live9464 coloured9464 = result9464)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9465 live9465 coloured9465 = result9465) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9466 live9466 coloured9466 = result9466 := by
  rw [tree9466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9464 coloured9464 at child
  try dsimp only [live9466, coloured9466]
  rw [child]
  dsimp only [result9464]
  have child := child1
  unfold live9465 coloured9465 at child
  try dsimp only [live9466, coloured9466]
  rw [child]
  dsimp only [result9465]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9467_agree_conditional : tree9467 = literal9467 := by
  rw [tree9467_def]
  rfl
theorem node9467_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9467 live9467 coloured9467 = result9467 := by
  rw [tree9467_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9468_agree_conditional
    (child0 : tree9466 = literal9466)
    (child1 : tree9467 = literal9467) : tree9468 = literal9468 := by
  rw [tree9468_def, child0, child1]
  rfl
theorem node9468_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9466 live9466 coloured9466 = result9466)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9467 live9467 coloured9467 = result9467) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9468 live9468 coloured9468 = result9468 := by
  rw [tree9468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9466 coloured9466 at child
  try dsimp only [live9468, coloured9468]
  rw [child]
  dsimp only [result9466]
  have child := child1
  unfold live9467 coloured9467 at child
  try dsimp only [live9468, coloured9468]
  rw [child]
  dsimp only [result9467]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9469_agree_conditional : tree9469 = literal9469 := by
  rw [tree9469_def]
  rfl
theorem node9469_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9469 live9469 coloured9469 = result9469 := by
  rw [tree9469_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9470_agree_conditional
    (child0 : tree9468 = literal9468)
    (child1 : tree9469 = literal9469) : tree9470 = literal9470 := by
  rw [tree9470_def, child0, child1]
  rfl
theorem node9470_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9468 live9468 coloured9468 = result9468)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9469 live9469 coloured9469 = result9469) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9470 live9470 coloured9470 = result9470 := by
  rw [tree9470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9468 coloured9468 at child
  try dsimp only [live9470, coloured9470]
  rw [child]
  dsimp only [result9468]
  have child := child1
  unfold live9469 coloured9469 at child
  try dsimp only [live9470, coloured9470]
  rw [child]
  dsimp only [result9469]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9471_agree_conditional : tree9471 = literal9471 := by
  rw [tree9471_def]
  rfl
theorem node9471_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9471 live9471 coloured9471 = result9471 := by
  rw [tree9471_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9472_agree_conditional
    (child0 : tree9470 = literal9470)
    (child1 : tree9471 = literal9471) : tree9472 = literal9472 := by
  rw [tree9472_def, child0, child1]
  rfl
theorem node9472_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9470 live9470 coloured9470 = result9470)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9471 live9471 coloured9471 = result9471) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9472 live9472 coloured9472 = result9472 := by
  rw [tree9472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9470 coloured9470 at child
  try dsimp only [live9472, coloured9472]
  rw [child]
  dsimp only [result9470]
  have child := child1
  unfold live9471 coloured9471 at child
  try dsimp only [live9472, coloured9472]
  rw [child]
  dsimp only [result9471]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9473_agree_conditional : tree9473 = literal9473 := by
  rw [tree9473_def]
  rfl
theorem node9473_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9473 live9473 coloured9473 = result9473 := by
  rw [tree9473_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9474_agree_conditional
    (child0 : tree9472 = literal9472)
    (child1 : tree9473 = literal9473) : tree9474 = literal9474 := by
  rw [tree9474_def, child0, child1]
  rfl
theorem node9474_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9472 live9472 coloured9472 = result9472)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9473 live9473 coloured9473 = result9473) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9474 live9474 coloured9474 = result9474 := by
  rw [tree9474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9472 coloured9472 at child
  try dsimp only [live9474, coloured9474]
  rw [child]
  dsimp only [result9472]
  have child := child1
  unfold live9473 coloured9473 at child
  try dsimp only [live9474, coloured9474]
  rw [child]
  dsimp only [result9473]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9475_agree_conditional : tree9475 = literal9475 := by
  rw [tree9475_def]
  rfl
theorem node9475_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9475 live9475 coloured9475 = result9475 := by
  rw [tree9475_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9476_agree_conditional
    (child0 : tree9474 = literal9474)
    (child1 : tree9475 = literal9475) : tree9476 = literal9476 := by
  rw [tree9476_def, child0, child1]
  rfl
theorem node9476_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9474 live9474 coloured9474 = result9474)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9475 live9475 coloured9475 = result9475) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9476 live9476 coloured9476 = result9476 := by
  rw [tree9476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9474 coloured9474 at child
  try dsimp only [live9476, coloured9476]
  rw [child]
  dsimp only [result9474]
  have child := child1
  unfold live9475 coloured9475 at child
  try dsimp only [live9476, coloured9476]
  rw [child]
  dsimp only [result9475]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9477_agree_conditional : tree9477 = literal9477 := by
  rw [tree9477_def]
  rfl
theorem node9477_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9477 live9477 coloured9477 = result9477 := by
  rw [tree9477_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9478_agree_conditional
    (child0 : tree9476 = literal9476)
    (child1 : tree9477 = literal9477) : tree9478 = literal9478 := by
  rw [tree9478_def, child0, child1]
  rfl
theorem node9478_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9476 live9476 coloured9476 = result9476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9477 live9477 coloured9477 = result9477) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9478 live9478 coloured9478 = result9478 := by
  rw [tree9478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9476 coloured9476 at child
  try dsimp only [live9478, coloured9478]
  rw [child]
  dsimp only [result9476]
  have child := child1
  unfold live9477 coloured9477 at child
  try dsimp only [live9478, coloured9478]
  rw [child]
  dsimp only [result9477]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9479_agree_conditional : tree9479 = literal9479 := by
  rw [tree9479_def]
  rfl
theorem node9479_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9479 live9479 coloured9479 = result9479 := by
  rw [tree9479_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9480_agree_conditional
    (child0 : tree9478 = literal9478)
    (child1 : tree9479 = literal9479) : tree9480 = literal9480 := by
  rw [tree9480_def, child0, child1]
  rfl
theorem node9480_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9478 live9478 coloured9478 = result9478)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9479 live9479 coloured9479 = result9479) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9480 live9480 coloured9480 = result9480 := by
  rw [tree9480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9478 coloured9478 at child
  try dsimp only [live9480, coloured9480]
  rw [child]
  dsimp only [result9478]
  have child := child1
  unfold live9479 coloured9479 at child
  try dsimp only [live9480, coloured9480]
  rw [child]
  dsimp only [result9479]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9481_agree_conditional : tree9481 = literal9481 := by
  rw [tree9481_def]
  rfl
theorem node9481_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9481 live9481 coloured9481 = result9481 := by
  rw [tree9481_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9482_agree_conditional
    (child0 : tree9480 = literal9480)
    (child1 : tree9481 = literal9481) : tree9482 = literal9482 := by
  rw [tree9482_def, child0, child1]
  rfl
theorem node9482_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9480 live9480 coloured9480 = result9480)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9481 live9481 coloured9481 = result9481) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9482 live9482 coloured9482 = result9482 := by
  rw [tree9482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9480 coloured9480 at child
  try dsimp only [live9482, coloured9482]
  rw [child]
  dsimp only [result9480]
  have child := child1
  unfold live9481 coloured9481 at child
  try dsimp only [live9482, coloured9482]
  rw [child]
  dsimp only [result9481]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9483_agree_conditional : tree9483 = literal9483 := by
  rw [tree9483_def]
  rfl
theorem node9483_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9483 live9483 coloured9483 = result9483 := by
  rw [tree9483_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9484_agree_conditional
    (child0 : tree9482 = literal9482)
    (child1 : tree9483 = literal9483) : tree9484 = literal9484 := by
  rw [tree9484_def, child0, child1]
  rfl
theorem node9484_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9482 live9482 coloured9482 = result9482)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9483 live9483 coloured9483 = result9483) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9484 live9484 coloured9484 = result9484 := by
  rw [tree9484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9482 coloured9482 at child
  try dsimp only [live9484, coloured9484]
  rw [child]
  dsimp only [result9482]
  have child := child1
  unfold live9483 coloured9483 at child
  try dsimp only [live9484, coloured9484]
  rw [child]
  dsimp only [result9483]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9485_agree_conditional : tree9485 = literal9485 := by
  rw [tree9485_def]
  rfl
theorem node9485_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9485 live9485 coloured9485 = result9485 := by
  rw [tree9485_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9486_agree_conditional
    (child0 : tree9484 = literal9484)
    (child1 : tree9485 = literal9485) : tree9486 = literal9486 := by
  rw [tree9486_def, child0, child1]
  rfl
theorem node9486_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9484 live9484 coloured9484 = result9484)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9485 live9485 coloured9485 = result9485) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9486 live9486 coloured9486 = result9486 := by
  rw [tree9486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9484 coloured9484 at child
  try dsimp only [live9486, coloured9486]
  rw [child]
  dsimp only [result9484]
  have child := child1
  unfold live9485 coloured9485 at child
  try dsimp only [live9486, coloured9486]
  rw [child]
  dsimp only [result9485]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9487_agree_conditional : tree9487 = literal9487 := by
  rw [tree9487_def]
  rfl
theorem node9487_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9487 live9487 coloured9487 = result9487 := by
  rw [tree9487_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9488_agree_conditional
    (child0 : tree9486 = literal9486)
    (child1 : tree9487 = literal9487) : tree9488 = literal9488 := by
  rw [tree9488_def, child0, child1]
  rfl
theorem node9488_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9486 live9486 coloured9486 = result9486)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9487 live9487 coloured9487 = result9487) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9488 live9488 coloured9488 = result9488 := by
  rw [tree9488_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9486 coloured9486 at child
  try dsimp only [live9488, coloured9488]
  rw [child]
  dsimp only [result9486]
  have child := child1
  unfold live9487 coloured9487 at child
  try dsimp only [live9488, coloured9488]
  rw [child]
  dsimp only [result9487]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9489_agree_conditional : tree9489 = literal9489 := by
  rw [tree9489_def]
  rfl
theorem node9489_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9489 live9489 coloured9489 = result9489 := by
  rw [tree9489_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9490_agree_conditional
    (child0 : tree9488 = literal9488)
    (child1 : tree9489 = literal9489) : tree9490 = literal9490 := by
  rw [tree9490_def, child0, child1]
  rfl
theorem node9490_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9488 live9488 coloured9488 = result9488)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9489 live9489 coloured9489 = result9489) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9490 live9490 coloured9490 = result9490 := by
  rw [tree9490_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9488 coloured9488 at child
  try dsimp only [live9490, coloured9490]
  rw [child]
  dsimp only [result9488]
  have child := child1
  unfold live9489 coloured9489 at child
  try dsimp only [live9490, coloured9490]
  rw [child]
  dsimp only [result9489]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9491_agree_conditional : tree9491 = literal9491 := by
  rw [tree9491_def]
  rfl
theorem node9491_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9491 live9491 coloured9491 = result9491 := by
  rw [tree9491_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9492_agree_conditional
    (child0 : tree9490 = literal9490)
    (child1 : tree9491 = literal9491) : tree9492 = literal9492 := by
  rw [tree9492_def, child0, child1]
  rfl
theorem node9492_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9490 live9490 coloured9490 = result9490)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9491 live9491 coloured9491 = result9491) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9492 live9492 coloured9492 = result9492 := by
  rw [tree9492_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9490 coloured9490 at child
  try dsimp only [live9492, coloured9492]
  rw [child]
  dsimp only [result9490]
  have child := child1
  unfold live9491 coloured9491 at child
  try dsimp only [live9492, coloured9492]
  rw [child]
  dsimp only [result9491]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9493_agree_conditional : tree9493 = literal9493 := by
  rw [tree9493_def]
  rfl
theorem node9493_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9493 live9493 coloured9493 = result9493 := by
  rw [tree9493_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9494_agree_conditional
    (child0 : tree9492 = literal9492)
    (child1 : tree9493 = literal9493) : tree9494 = literal9494 := by
  rw [tree9494_def, child0, child1]
  rfl
theorem node9494_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9492 live9492 coloured9492 = result9492)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9493 live9493 coloured9493 = result9493) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9494 live9494 coloured9494 = result9494 := by
  rw [tree9494_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9492 coloured9492 at child
  try dsimp only [live9494, coloured9494]
  rw [child]
  dsimp only [result9492]
  have child := child1
  unfold live9493 coloured9493 at child
  try dsimp only [live9494, coloured9494]
  rw [child]
  dsimp only [result9493]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9495_agree_conditional : tree9495 = literal9495 := by
  rw [tree9495_def]
  rfl
theorem node9495_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9495 live9495 coloured9495 = result9495 := by
  rw [tree9495_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9496_agree_conditional
    (child0 : tree9494 = literal9494)
    (child1 : tree9495 = literal9495) : tree9496 = literal9496 := by
  rw [tree9496_def, child0, child1]
  rfl
theorem node9496_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9494 live9494 coloured9494 = result9494)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9495 live9495 coloured9495 = result9495) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9496 live9496 coloured9496 = result9496 := by
  rw [tree9496_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9494 coloured9494 at child
  try dsimp only [live9496, coloured9496]
  rw [child]
  dsimp only [result9494]
  have child := child1
  unfold live9495 coloured9495 at child
  try dsimp only [live9496, coloured9496]
  rw [child]
  dsimp only [result9495]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9497_agree_conditional : tree9497 = literal9497 := by
  rw [tree9497_def]
  rfl
theorem node9497_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9497 live9497 coloured9497 = result9497 := by
  rw [tree9497_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9498_agree_conditional
    (child0 : tree9496 = literal9496)
    (child1 : tree9497 = literal9497) : tree9498 = literal9498 := by
  rw [tree9498_def, child0, child1]
  rfl
theorem node9498_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9496 live9496 coloured9496 = result9496)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9497 live9497 coloured9497 = result9497) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9498 live9498 coloured9498 = result9498 := by
  rw [tree9498_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9496 coloured9496 at child
  try dsimp only [live9498, coloured9498]
  rw [child]
  dsimp only [result9496]
  have child := child1
  unfold live9497 coloured9497 at child
  try dsimp only [live9498, coloured9498]
  rw [child]
  dsimp only [result9497]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9499_agree_conditional : tree9499 = literal9499 := by
  rw [tree9499_def]
  rfl
theorem node9499_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9499 live9499 coloured9499 = result9499 := by
  rw [tree9499_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9500_agree_conditional
    (child0 : tree9498 = literal9498)
    (child1 : tree9499 = literal9499) : tree9500 = literal9500 := by
  rw [tree9500_def, child0, child1]
  rfl
theorem node9500_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9498 live9498 coloured9498 = result9498)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9499 live9499 coloured9499 = result9499) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9500 live9500 coloured9500 = result9500 := by
  rw [tree9500_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9498 coloured9498 at child
  try dsimp only [live9500, coloured9500]
  rw [child]
  dsimp only [result9498]
  have child := child1
  unfold live9499 coloured9499 at child
  try dsimp only [live9500, coloured9500]
  rw [child]
  dsimp only [result9499]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9501_agree_conditional : tree9501 = literal9501 := by
  rw [tree9501_def]
  rfl
theorem node9501_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9501 live9501 coloured9501 = result9501 := by
  rw [tree9501_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9502_agree_conditional
    (child0 : tree9500 = literal9500)
    (child1 : tree9501 = literal9501) : tree9502 = literal9502 := by
  rw [tree9502_def, child0, child1]
  rfl
theorem node9502_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9500 live9500 coloured9500 = result9500)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9501 live9501 coloured9501 = result9501) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9502 live9502 coloured9502 = result9502 := by
  rw [tree9502_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9500 coloured9500 at child
  try dsimp only [live9502, coloured9502]
  rw [child]
  dsimp only [result9500]
  have child := child1
  unfold live9501 coloured9501 at child
  try dsimp only [live9502, coloured9502]
  rw [child]
  dsimp only [result9501]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9503_agree_conditional : tree9503 = literal9503 := by
  rw [tree9503_def]
  rfl
theorem node9503_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9503 live9503 coloured9503 = result9503 := by
  rw [tree9503_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
