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
theorem tree9312_agree_conditional
    (child0 : tree9310 = literal9310)
    (child1 : tree9311 = literal9311) : tree9312 = literal9312 := by
  rw [tree9312_def, child0, child1]
  rfl
theorem node9312_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9310 live9310 coloured9310 = result9310)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9311 live9311 coloured9311 = result9311) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9312 live9312 coloured9312 = result9312 := by
  rw [tree9312_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9310 coloured9310 at child
  try dsimp only [live9312, coloured9312]
  rw [child]
  dsimp only [result9310]
  have child := child1
  unfold live9311 coloured9311 at child
  try dsimp only [live9312, coloured9312]
  rw [child]
  dsimp only [result9311]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9313_agree_conditional : tree9313 = literal9313 := by
  rw [tree9313_def]
  rfl
theorem node9313_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9313 live9313 coloured9313 = result9313 := by
  rw [tree9313_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9314_agree_conditional
    (child0 : tree9312 = literal9312)
    (child1 : tree9313 = literal9313) : tree9314 = literal9314 := by
  rw [tree9314_def, child0, child1]
  rfl
theorem node9314_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9312 live9312 coloured9312 = result9312)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9313 live9313 coloured9313 = result9313) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9314 live9314 coloured9314 = result9314 := by
  rw [tree9314_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9312 coloured9312 at child
  try dsimp only [live9314, coloured9314]
  rw [child]
  dsimp only [result9312]
  have child := child1
  unfold live9313 coloured9313 at child
  try dsimp only [live9314, coloured9314]
  rw [child]
  dsimp only [result9313]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9315_agree_conditional : tree9315 = literal9315 := by
  rw [tree9315_def]
  rfl
theorem node9315_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9315 live9315 coloured9315 = result9315 := by
  rw [tree9315_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9316_agree_conditional
    (child0 : tree9314 = literal9314)
    (child1 : tree9315 = literal9315) : tree9316 = literal9316 := by
  rw [tree9316_def, child0, child1]
  rfl
theorem node9316_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9314 live9314 coloured9314 = result9314)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9315 live9315 coloured9315 = result9315) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9316 live9316 coloured9316 = result9316 := by
  rw [tree9316_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9314 coloured9314 at child
  try dsimp only [live9316, coloured9316]
  rw [child]
  dsimp only [result9314]
  have child := child1
  unfold live9315 coloured9315 at child
  try dsimp only [live9316, coloured9316]
  rw [child]
  dsimp only [result9315]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9317_agree_conditional : tree9317 = literal9317 := by
  rw [tree9317_def]
  rfl
theorem node9317_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9317 live9317 coloured9317 = result9317 := by
  rw [tree9317_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9318_agree_conditional
    (child0 : tree9316 = literal9316)
    (child1 : tree9317 = literal9317) : tree9318 = literal9318 := by
  rw [tree9318_def, child0, child1]
  rfl
theorem node9318_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9316 live9316 coloured9316 = result9316)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9317 live9317 coloured9317 = result9317) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9318 live9318 coloured9318 = result9318 := by
  rw [tree9318_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9316 coloured9316 at child
  try dsimp only [live9318, coloured9318]
  rw [child]
  dsimp only [result9316]
  have child := child1
  unfold live9317 coloured9317 at child
  try dsimp only [live9318, coloured9318]
  rw [child]
  dsimp only [result9317]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9319_agree_conditional : tree9319 = literal9319 := by
  rw [tree9319_def]
  rfl
theorem node9319_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9319 live9319 coloured9319 = result9319 := by
  rw [tree9319_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9320_agree_conditional
    (child0 : tree9318 = literal9318)
    (child1 : tree9319 = literal9319) : tree9320 = literal9320 := by
  rw [tree9320_def, child0, child1]
  rfl
theorem node9320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9318 live9318 coloured9318 = result9318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9319 live9319 coloured9319 = result9319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9320 live9320 coloured9320 = result9320 := by
  rw [tree9320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9318 coloured9318 at child
  try dsimp only [live9320, coloured9320]
  rw [child]
  dsimp only [result9318]
  have child := child1
  unfold live9319 coloured9319 at child
  try dsimp only [live9320, coloured9320]
  rw [child]
  dsimp only [result9319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9321_agree_conditional : tree9321 = literal9321 := by
  rw [tree9321_def]
  rfl
theorem node9321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9321 live9321 coloured9321 = result9321 := by
  rw [tree9321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9322_agree_conditional
    (child0 : tree9320 = literal9320)
    (child1 : tree9321 = literal9321) : tree9322 = literal9322 := by
  rw [tree9322_def, child0, child1]
  rfl
theorem node9322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9320 live9320 coloured9320 = result9320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9321 live9321 coloured9321 = result9321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9322 live9322 coloured9322 = result9322 := by
  rw [tree9322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9320 coloured9320 at child
  try dsimp only [live9322, coloured9322]
  rw [child]
  dsimp only [result9320]
  have child := child1
  unfold live9321 coloured9321 at child
  try dsimp only [live9322, coloured9322]
  rw [child]
  dsimp only [result9321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9323_agree_conditional : tree9323 = literal9323 := by
  rw [tree9323_def]
  rfl
theorem node9323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9323 live9323 coloured9323 = result9323 := by
  rw [tree9323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9324_agree_conditional
    (child0 : tree9322 = literal9322)
    (child1 : tree9323 = literal9323) : tree9324 = literal9324 := by
  rw [tree9324_def, child0, child1]
  rfl
theorem node9324_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9322 live9322 coloured9322 = result9322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9323 live9323 coloured9323 = result9323) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9324 live9324 coloured9324 = result9324 := by
  rw [tree9324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9322 coloured9322 at child
  try dsimp only [live9324, coloured9324]
  rw [child]
  dsimp only [result9322]
  have child := child1
  unfold live9323 coloured9323 at child
  try dsimp only [live9324, coloured9324]
  rw [child]
  dsimp only [result9323]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9325_agree_conditional : tree9325 = literal9325 := by
  rw [tree9325_def]
  rfl
theorem node9325_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9325 live9325 coloured9325 = result9325 := by
  rw [tree9325_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9326_agree_conditional
    (child0 : tree9324 = literal9324)
    (child1 : tree9325 = literal9325) : tree9326 = literal9326 := by
  rw [tree9326_def, child0, child1]
  rfl
theorem node9326_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9324 live9324 coloured9324 = result9324)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9325 live9325 coloured9325 = result9325) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9326 live9326 coloured9326 = result9326 := by
  rw [tree9326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9324 coloured9324 at child
  try dsimp only [live9326, coloured9326]
  rw [child]
  dsimp only [result9324]
  have child := child1
  unfold live9325 coloured9325 at child
  try dsimp only [live9326, coloured9326]
  rw [child]
  dsimp only [result9325]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9327_agree_conditional : tree9327 = literal9327 := by
  rw [tree9327_def]
  rfl
theorem node9327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9327 live9327 coloured9327 = result9327 := by
  rw [tree9327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9328_agree_conditional
    (child0 : tree9326 = literal9326)
    (child1 : tree9327 = literal9327) : tree9328 = literal9328 := by
  rw [tree9328_def, child0, child1]
  rfl
theorem node9328_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9326 live9326 coloured9326 = result9326)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9327 live9327 coloured9327 = result9327) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9328 live9328 coloured9328 = result9328 := by
  rw [tree9328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9326 coloured9326 at child
  try dsimp only [live9328, coloured9328]
  rw [child]
  dsimp only [result9326]
  have child := child1
  unfold live9327 coloured9327 at child
  try dsimp only [live9328, coloured9328]
  rw [child]
  dsimp only [result9327]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9329_agree_conditional : tree9329 = literal9329 := by
  rw [tree9329_def]
  rfl
theorem node9329_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9329 live9329 coloured9329 = result9329 := by
  rw [tree9329_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9330_agree_conditional
    (child0 : tree9328 = literal9328)
    (child1 : tree9329 = literal9329) : tree9330 = literal9330 := by
  rw [tree9330_def, child0, child1]
  rfl
theorem node9330_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9328 live9328 coloured9328 = result9328)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9329 live9329 coloured9329 = result9329) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9330 live9330 coloured9330 = result9330 := by
  rw [tree9330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9328 coloured9328 at child
  try dsimp only [live9330, coloured9330]
  rw [child]
  dsimp only [result9328]
  have child := child1
  unfold live9329 coloured9329 at child
  try dsimp only [live9330, coloured9330]
  rw [child]
  dsimp only [result9329]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9331_agree_conditional : tree9331 = literal9331 := by
  rw [tree9331_def]
  rfl
theorem node9331_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9331 live9331 coloured9331 = result9331 := by
  rw [tree9331_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9332_agree_conditional
    (child0 : tree9330 = literal9330)
    (child1 : tree9331 = literal9331) : tree9332 = literal9332 := by
  rw [tree9332_def, child0, child1]
  rfl
theorem node9332_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9330 live9330 coloured9330 = result9330)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9331 live9331 coloured9331 = result9331) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9332 live9332 coloured9332 = result9332 := by
  rw [tree9332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9330 coloured9330 at child
  try dsimp only [live9332, coloured9332]
  rw [child]
  dsimp only [result9330]
  have child := child1
  unfold live9331 coloured9331 at child
  try dsimp only [live9332, coloured9332]
  rw [child]
  dsimp only [result9331]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9333_agree_conditional : tree9333 = literal9333 := by
  rw [tree9333_def]
  rfl
theorem node9333_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9333 live9333 coloured9333 = result9333 := by
  rw [tree9333_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9334_agree_conditional
    (child0 : tree9332 = literal9332)
    (child1 : tree9333 = literal9333) : tree9334 = literal9334 := by
  rw [tree9334_def, child0, child1]
  rfl
theorem node9334_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9332 live9332 coloured9332 = result9332)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9333 live9333 coloured9333 = result9333) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9334 live9334 coloured9334 = result9334 := by
  rw [tree9334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9332 coloured9332 at child
  try dsimp only [live9334, coloured9334]
  rw [child]
  dsimp only [result9332]
  have child := child1
  unfold live9333 coloured9333 at child
  try dsimp only [live9334, coloured9334]
  rw [child]
  dsimp only [result9333]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9335_agree_conditional : tree9335 = literal9335 := by
  rw [tree9335_def]
  rfl
theorem node9335_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9335 live9335 coloured9335 = result9335 := by
  rw [tree9335_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9336_agree_conditional
    (child0 : tree9334 = literal9334)
    (child1 : tree9335 = literal9335) : tree9336 = literal9336 := by
  rw [tree9336_def, child0, child1]
  rfl
theorem node9336_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9334 live9334 coloured9334 = result9334)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9335 live9335 coloured9335 = result9335) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9336 live9336 coloured9336 = result9336 := by
  rw [tree9336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9334 coloured9334 at child
  try dsimp only [live9336, coloured9336]
  rw [child]
  dsimp only [result9334]
  have child := child1
  unfold live9335 coloured9335 at child
  try dsimp only [live9336, coloured9336]
  rw [child]
  dsimp only [result9335]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9337_agree_conditional : tree9337 = literal9337 := by
  rw [tree9337_def]
  rfl
theorem node9337_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9337 live9337 coloured9337 = result9337 := by
  rw [tree9337_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9338_agree_conditional
    (child0 : tree9336 = literal9336)
    (child1 : tree9337 = literal9337) : tree9338 = literal9338 := by
  rw [tree9338_def, child0, child1]
  rfl
theorem node9338_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9336 live9336 coloured9336 = result9336)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9337 live9337 coloured9337 = result9337) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9338 live9338 coloured9338 = result9338 := by
  rw [tree9338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9336 coloured9336 at child
  try dsimp only [live9338, coloured9338]
  rw [child]
  dsimp only [result9336]
  have child := child1
  unfold live9337 coloured9337 at child
  try dsimp only [live9338, coloured9338]
  rw [child]
  dsimp only [result9337]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9339_agree_conditional : tree9339 = literal9339 := by
  rw [tree9339_def]
  rfl
theorem node9339_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9339 live9339 coloured9339 = result9339 := by
  rw [tree9339_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9340_agree_conditional
    (child0 : tree9338 = literal9338)
    (child1 : tree9339 = literal9339) : tree9340 = literal9340 := by
  rw [tree9340_def, child0, child1]
  rfl
theorem node9340_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9338 live9338 coloured9338 = result9338)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9339 live9339 coloured9339 = result9339) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9340 live9340 coloured9340 = result9340 := by
  rw [tree9340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9338 coloured9338 at child
  try dsimp only [live9340, coloured9340]
  rw [child]
  dsimp only [result9338]
  have child := child1
  unfold live9339 coloured9339 at child
  try dsimp only [live9340, coloured9340]
  rw [child]
  dsimp only [result9339]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9341_agree_conditional : tree9341 = literal9341 := by
  rw [tree9341_def]
  rfl
theorem node9341_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9341 live9341 coloured9341 = result9341 := by
  rw [tree9341_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9342_agree_conditional
    (child0 : tree9340 = literal9340)
    (child1 : tree9341 = literal9341) : tree9342 = literal9342 := by
  rw [tree9342_def, child0, child1]
  rfl
theorem node9342_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9340 live9340 coloured9340 = result9340)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9341 live9341 coloured9341 = result9341) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9342 live9342 coloured9342 = result9342 := by
  rw [tree9342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9340 coloured9340 at child
  try dsimp only [live9342, coloured9342]
  rw [child]
  dsimp only [result9340]
  have child := child1
  unfold live9341 coloured9341 at child
  try dsimp only [live9342, coloured9342]
  rw [child]
  dsimp only [result9341]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9343_agree_conditional : tree9343 = literal9343 := by
  rw [tree9343_def]
  rfl
theorem node9343_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9343 live9343 coloured9343 = result9343 := by
  rw [tree9343_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9344_agree_conditional
    (child0 : tree9342 = literal9342)
    (child1 : tree9343 = literal9343) : tree9344 = literal9344 := by
  rw [tree9344_def, child0, child1]
  rfl
theorem node9344_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9342 live9342 coloured9342 = result9342)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9343 live9343 coloured9343 = result9343) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9344 live9344 coloured9344 = result9344 := by
  rw [tree9344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9342 coloured9342 at child
  try dsimp only [live9344, coloured9344]
  rw [child]
  dsimp only [result9342]
  have child := child1
  unfold live9343 coloured9343 at child
  try dsimp only [live9344, coloured9344]
  rw [child]
  dsimp only [result9343]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9345_agree_conditional : tree9345 = literal9345 := by
  rw [tree9345_def]
  rfl
theorem node9345_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9345 live9345 coloured9345 = result9345 := by
  rw [tree9345_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9346_agree_conditional
    (child0 : tree9344 = literal9344)
    (child1 : tree9345 = literal9345) : tree9346 = literal9346 := by
  rw [tree9346_def, child0, child1]
  rfl
theorem node9346_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9344 live9344 coloured9344 = result9344)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9345 live9345 coloured9345 = result9345) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9346 live9346 coloured9346 = result9346 := by
  rw [tree9346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9344 coloured9344 at child
  try dsimp only [live9346, coloured9346]
  rw [child]
  dsimp only [result9344]
  have child := child1
  unfold live9345 coloured9345 at child
  try dsimp only [live9346, coloured9346]
  rw [child]
  dsimp only [result9345]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9347_agree_conditional : tree9347 = literal9347 := by
  rw [tree9347_def]
  rfl
theorem node9347_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9347 live9347 coloured9347 = result9347 := by
  rw [tree9347_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9348_agree_conditional
    (child0 : tree9346 = literal9346)
    (child1 : tree9347 = literal9347) : tree9348 = literal9348 := by
  rw [tree9348_def, child0, child1]
  rfl
theorem node9348_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9346 live9346 coloured9346 = result9346)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9347 live9347 coloured9347 = result9347) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9348 live9348 coloured9348 = result9348 := by
  rw [tree9348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9346 coloured9346 at child
  try dsimp only [live9348, coloured9348]
  rw [child]
  dsimp only [result9346]
  have child := child1
  unfold live9347 coloured9347 at child
  try dsimp only [live9348, coloured9348]
  rw [child]
  dsimp only [result9347]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9349_agree_conditional : tree9349 = literal9349 := by
  rw [tree9349_def]
  rfl
theorem node9349_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9349 live9349 coloured9349 = result9349 := by
  rw [tree9349_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9350_agree_conditional
    (child0 : tree9348 = literal9348)
    (child1 : tree9349 = literal9349) : tree9350 = literal9350 := by
  rw [tree9350_def, child0, child1]
  rfl
theorem node9350_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9348 live9348 coloured9348 = result9348)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9349 live9349 coloured9349 = result9349) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9350 live9350 coloured9350 = result9350 := by
  rw [tree9350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9348 coloured9348 at child
  try dsimp only [live9350, coloured9350]
  rw [child]
  dsimp only [result9348]
  have child := child1
  unfold live9349 coloured9349 at child
  try dsimp only [live9350, coloured9350]
  rw [child]
  dsimp only [result9349]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9351_agree_conditional : tree9351 = literal9351 := by
  rw [tree9351_def]
  rfl
theorem node9351_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9351 live9351 coloured9351 = result9351 := by
  rw [tree9351_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9352_agree_conditional
    (child0 : tree9350 = literal9350)
    (child1 : tree9351 = literal9351) : tree9352 = literal9352 := by
  rw [tree9352_def, child0, child1]
  rfl
theorem node9352_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9350 live9350 coloured9350 = result9350)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9351 live9351 coloured9351 = result9351) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9352 live9352 coloured9352 = result9352 := by
  rw [tree9352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9350 coloured9350 at child
  try dsimp only [live9352, coloured9352]
  rw [child]
  dsimp only [result9350]
  have child := child1
  unfold live9351 coloured9351 at child
  try dsimp only [live9352, coloured9352]
  rw [child]
  dsimp only [result9351]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9353_agree_conditional : tree9353 = literal9353 := by
  rw [tree9353_def]
  rfl
theorem node9353_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9353 live9353 coloured9353 = result9353 := by
  rw [tree9353_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9354_agree_conditional
    (child0 : tree9352 = literal9352)
    (child1 : tree9353 = literal9353) : tree9354 = literal9354 := by
  rw [tree9354_def, child0, child1]
  rfl
theorem node9354_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9352 live9352 coloured9352 = result9352)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9353 live9353 coloured9353 = result9353) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9354 live9354 coloured9354 = result9354 := by
  rw [tree9354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9352 coloured9352 at child
  try dsimp only [live9354, coloured9354]
  rw [child]
  dsimp only [result9352]
  have child := child1
  unfold live9353 coloured9353 at child
  try dsimp only [live9354, coloured9354]
  rw [child]
  dsimp only [result9353]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9355_agree_conditional : tree9355 = literal9355 := by
  rw [tree9355_def]
  rfl
theorem node9355_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9355 live9355 coloured9355 = result9355 := by
  rw [tree9355_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9356_agree_conditional
    (child0 : tree9354 = literal9354)
    (child1 : tree9355 = literal9355) : tree9356 = literal9356 := by
  rw [tree9356_def, child0, child1]
  rfl
theorem node9356_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9354 live9354 coloured9354 = result9354)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9355 live9355 coloured9355 = result9355) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9356 live9356 coloured9356 = result9356 := by
  rw [tree9356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9354 coloured9354 at child
  try dsimp only [live9356, coloured9356]
  rw [child]
  dsimp only [result9354]
  have child := child1
  unfold live9355 coloured9355 at child
  try dsimp only [live9356, coloured9356]
  rw [child]
  dsimp only [result9355]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9357_agree_conditional : tree9357 = literal9357 := by
  rw [tree9357_def]
  rfl
theorem node9357_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9357 live9357 coloured9357 = result9357 := by
  rw [tree9357_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9358_agree_conditional
    (child0 : tree9356 = literal9356)
    (child1 : tree9357 = literal9357) : tree9358 = literal9358 := by
  rw [tree9358_def, child0, child1]
  rfl
theorem node9358_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9356 live9356 coloured9356 = result9356)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9357 live9357 coloured9357 = result9357) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9358 live9358 coloured9358 = result9358 := by
  rw [tree9358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9356 coloured9356 at child
  try dsimp only [live9358, coloured9358]
  rw [child]
  dsimp only [result9356]
  have child := child1
  unfold live9357 coloured9357 at child
  try dsimp only [live9358, coloured9358]
  rw [child]
  dsimp only [result9357]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9359_agree_conditional : tree9359 = literal9359 := by
  rw [tree9359_def]
  rfl
theorem node9359_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9359 live9359 coloured9359 = result9359 := by
  rw [tree9359_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9360_agree_conditional
    (child0 : tree9358 = literal9358)
    (child1 : tree9359 = literal9359) : tree9360 = literal9360 := by
  rw [tree9360_def, child0, child1]
  rfl
theorem node9360_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9358 live9358 coloured9358 = result9358)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9359 live9359 coloured9359 = result9359) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9360 live9360 coloured9360 = result9360 := by
  rw [tree9360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9358 coloured9358 at child
  try dsimp only [live9360, coloured9360]
  rw [child]
  dsimp only [result9358]
  have child := child1
  unfold live9359 coloured9359 at child
  try dsimp only [live9360, coloured9360]
  rw [child]
  dsimp only [result9359]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9361_agree_conditional : tree9361 = literal9361 := by
  rw [tree9361_def]
  rfl
theorem node9361_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9361 live9361 coloured9361 = result9361 := by
  rw [tree9361_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9362_agree_conditional
    (child0 : tree9360 = literal9360)
    (child1 : tree9361 = literal9361) : tree9362 = literal9362 := by
  rw [tree9362_def, child0, child1]
  rfl
theorem node9362_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9360 live9360 coloured9360 = result9360)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9361 live9361 coloured9361 = result9361) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9362 live9362 coloured9362 = result9362 := by
  rw [tree9362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9360 coloured9360 at child
  try dsimp only [live9362, coloured9362]
  rw [child]
  dsimp only [result9360]
  have child := child1
  unfold live9361 coloured9361 at child
  try dsimp only [live9362, coloured9362]
  rw [child]
  dsimp only [result9361]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9363_agree_conditional : tree9363 = literal9363 := by
  rw [tree9363_def]
  rfl
theorem node9363_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9363 live9363 coloured9363 = result9363 := by
  rw [tree9363_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9364_agree_conditional
    (child0 : tree9362 = literal9362)
    (child1 : tree9363 = literal9363) : tree9364 = literal9364 := by
  rw [tree9364_def, child0, child1]
  rfl
theorem node9364_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9362 live9362 coloured9362 = result9362)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9363 live9363 coloured9363 = result9363) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9364 live9364 coloured9364 = result9364 := by
  rw [tree9364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9362 coloured9362 at child
  try dsimp only [live9364, coloured9364]
  rw [child]
  dsimp only [result9362]
  have child := child1
  unfold live9363 coloured9363 at child
  try dsimp only [live9364, coloured9364]
  rw [child]
  dsimp only [result9363]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9365_agree_conditional : tree9365 = literal9365 := by
  rw [tree9365_def]
  rfl
theorem node9365_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9365 live9365 coloured9365 = result9365 := by
  rw [tree9365_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9366_agree_conditional
    (child0 : tree9364 = literal9364)
    (child1 : tree9365 = literal9365) : tree9366 = literal9366 := by
  rw [tree9366_def, child0, child1]
  rfl
theorem node9366_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9364 live9364 coloured9364 = result9364)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9365 live9365 coloured9365 = result9365) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9366 live9366 coloured9366 = result9366 := by
  rw [tree9366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9364 coloured9364 at child
  try dsimp only [live9366, coloured9366]
  rw [child]
  dsimp only [result9364]
  have child := child1
  unfold live9365 coloured9365 at child
  try dsimp only [live9366, coloured9366]
  rw [child]
  dsimp only [result9365]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9367_agree_conditional : tree9367 = literal9367 := by
  rw [tree9367_def]
  rfl
theorem node9367_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9367 live9367 coloured9367 = result9367 := by
  rw [tree9367_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9368_agree_conditional
    (child0 : tree9366 = literal9366)
    (child1 : tree9367 = literal9367) : tree9368 = literal9368 := by
  rw [tree9368_def, child0, child1]
  rfl
theorem node9368_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9366 live9366 coloured9366 = result9366)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9367 live9367 coloured9367 = result9367) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9368 live9368 coloured9368 = result9368 := by
  rw [tree9368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9366 coloured9366 at child
  try dsimp only [live9368, coloured9368]
  rw [child]
  dsimp only [result9366]
  have child := child1
  unfold live9367 coloured9367 at child
  try dsimp only [live9368, coloured9368]
  rw [child]
  dsimp only [result9367]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9369_agree_conditional : tree9369 = literal9369 := by
  rw [tree9369_def]
  rfl
theorem node9369_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9369 live9369 coloured9369 = result9369 := by
  rw [tree9369_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9370_agree_conditional
    (child0 : tree9368 = literal9368)
    (child1 : tree9369 = literal9369) : tree9370 = literal9370 := by
  rw [tree9370_def, child0, child1]
  rfl
theorem node9370_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9368 live9368 coloured9368 = result9368)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9369 live9369 coloured9369 = result9369) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9370 live9370 coloured9370 = result9370 := by
  rw [tree9370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9368 coloured9368 at child
  try dsimp only [live9370, coloured9370]
  rw [child]
  dsimp only [result9368]
  have child := child1
  unfold live9369 coloured9369 at child
  try dsimp only [live9370, coloured9370]
  rw [child]
  dsimp only [result9369]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9371_agree_conditional : tree9371 = literal9371 := by
  rw [tree9371_def]
  rfl
theorem node9371_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9371 live9371 coloured9371 = result9371 := by
  rw [tree9371_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9372_agree_conditional
    (child0 : tree9370 = literal9370)
    (child1 : tree9371 = literal9371) : tree9372 = literal9372 := by
  rw [tree9372_def, child0, child1]
  rfl
theorem node9372_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9370 live9370 coloured9370 = result9370)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9371 live9371 coloured9371 = result9371) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9372 live9372 coloured9372 = result9372 := by
  rw [tree9372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9370 coloured9370 at child
  try dsimp only [live9372, coloured9372]
  rw [child]
  dsimp only [result9370]
  have child := child1
  unfold live9371 coloured9371 at child
  try dsimp only [live9372, coloured9372]
  rw [child]
  dsimp only [result9371]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9373_agree_conditional : tree9373 = literal9373 := by
  rw [tree9373_def]
  rfl
theorem node9373_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9373 live9373 coloured9373 = result9373 := by
  rw [tree9373_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9374_agree_conditional
    (child0 : tree9372 = literal9372)
    (child1 : tree9373 = literal9373) : tree9374 = literal9374 := by
  rw [tree9374_def, child0, child1]
  rfl
theorem node9374_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9372 live9372 coloured9372 = result9372)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9373 live9373 coloured9373 = result9373) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9374 live9374 coloured9374 = result9374 := by
  rw [tree9374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9372 coloured9372 at child
  try dsimp only [live9374, coloured9374]
  rw [child]
  dsimp only [result9372]
  have child := child1
  unfold live9373 coloured9373 at child
  try dsimp only [live9374, coloured9374]
  rw [child]
  dsimp only [result9373]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9375_agree_conditional : tree9375 = literal9375 := by
  rw [tree9375_def]
  rfl
theorem node9375_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9375 live9375 coloured9375 = result9375 := by
  rw [tree9375_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9376_agree_conditional
    (child0 : tree9374 = literal9374)
    (child1 : tree9375 = literal9375) : tree9376 = literal9376 := by
  rw [tree9376_def, child0, child1]
  rfl
theorem node9376_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9374 live9374 coloured9374 = result9374)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9375 live9375 coloured9375 = result9375) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9376 live9376 coloured9376 = result9376 := by
  rw [tree9376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9374 coloured9374 at child
  try dsimp only [live9376, coloured9376]
  rw [child]
  dsimp only [result9374]
  have child := child1
  unfold live9375 coloured9375 at child
  try dsimp only [live9376, coloured9376]
  rw [child]
  dsimp only [result9375]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9377_agree_conditional : tree9377 = literal9377 := by
  rw [tree9377_def]
  rfl
theorem node9377_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9377 live9377 coloured9377 = result9377 := by
  rw [tree9377_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9378_agree_conditional
    (child0 : tree9376 = literal9376)
    (child1 : tree9377 = literal9377) : tree9378 = literal9378 := by
  rw [tree9378_def, child0, child1]
  rfl
theorem node9378_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9376 live9376 coloured9376 = result9376)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9377 live9377 coloured9377 = result9377) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9378 live9378 coloured9378 = result9378 := by
  rw [tree9378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9376 coloured9376 at child
  try dsimp only [live9378, coloured9378]
  rw [child]
  dsimp only [result9376]
  have child := child1
  unfold live9377 coloured9377 at child
  try dsimp only [live9378, coloured9378]
  rw [child]
  dsimp only [result9377]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9379_agree_conditional : tree9379 = literal9379 := by
  rw [tree9379_def]
  rfl
theorem node9379_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9379 live9379 coloured9379 = result9379 := by
  rw [tree9379_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9380_agree_conditional
    (child0 : tree9378 = literal9378)
    (child1 : tree9379 = literal9379) : tree9380 = literal9380 := by
  rw [tree9380_def, child0, child1]
  rfl
theorem node9380_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9378 live9378 coloured9378 = result9378)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9379 live9379 coloured9379 = result9379) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9380 live9380 coloured9380 = result9380 := by
  rw [tree9380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9378 coloured9378 at child
  try dsimp only [live9380, coloured9380]
  rw [child]
  dsimp only [result9378]
  have child := child1
  unfold live9379 coloured9379 at child
  try dsimp only [live9380, coloured9380]
  rw [child]
  dsimp only [result9379]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9381_agree_conditional : tree9381 = literal9381 := by
  rw [tree9381_def]
  rfl
theorem node9381_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9381 live9381 coloured9381 = result9381 := by
  rw [tree9381_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9382_agree_conditional
    (child0 : tree9380 = literal9380)
    (child1 : tree9381 = literal9381) : tree9382 = literal9382 := by
  rw [tree9382_def, child0, child1]
  rfl
theorem node9382_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9380 live9380 coloured9380 = result9380)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9381 live9381 coloured9381 = result9381) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9382 live9382 coloured9382 = result9382 := by
  rw [tree9382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9380 coloured9380 at child
  try dsimp only [live9382, coloured9382]
  rw [child]
  dsimp only [result9380]
  have child := child1
  unfold live9381 coloured9381 at child
  try dsimp only [live9382, coloured9382]
  rw [child]
  dsimp only [result9381]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9383_agree_conditional : tree9383 = literal9383 := by
  rw [tree9383_def]
  rfl
theorem node9383_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9383 live9383 coloured9383 = result9383 := by
  rw [tree9383_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9384_agree_conditional
    (child0 : tree9382 = literal9382)
    (child1 : tree9383 = literal9383) : tree9384 = literal9384 := by
  rw [tree9384_def, child0, child1]
  rfl
theorem node9384_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9382 live9382 coloured9382 = result9382)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9383 live9383 coloured9383 = result9383) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9384 live9384 coloured9384 = result9384 := by
  rw [tree9384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9382 coloured9382 at child
  try dsimp only [live9384, coloured9384]
  rw [child]
  dsimp only [result9382]
  have child := child1
  unfold live9383 coloured9383 at child
  try dsimp only [live9384, coloured9384]
  rw [child]
  dsimp only [result9383]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9385_agree_conditional : tree9385 = literal9385 := by
  rw [tree9385_def]
  rfl
theorem node9385_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9385 live9385 coloured9385 = result9385 := by
  rw [tree9385_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9386_agree_conditional
    (child0 : tree9384 = literal9384)
    (child1 : tree9385 = literal9385) : tree9386 = literal9386 := by
  rw [tree9386_def, child0, child1]
  rfl
theorem node9386_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9384 live9384 coloured9384 = result9384)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9385 live9385 coloured9385 = result9385) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9386 live9386 coloured9386 = result9386 := by
  rw [tree9386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9384 coloured9384 at child
  try dsimp only [live9386, coloured9386]
  rw [child]
  dsimp only [result9384]
  have child := child1
  unfold live9385 coloured9385 at child
  try dsimp only [live9386, coloured9386]
  rw [child]
  dsimp only [result9385]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9387_agree_conditional : tree9387 = literal9387 := by
  rw [tree9387_def]
  rfl
theorem node9387_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9387 live9387 coloured9387 = result9387 := by
  rw [tree9387_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9388_agree_conditional
    (child0 : tree9386 = literal9386)
    (child1 : tree9387 = literal9387) : tree9388 = literal9388 := by
  rw [tree9388_def, child0, child1]
  rfl
theorem node9388_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9386 live9386 coloured9386 = result9386)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9387 live9387 coloured9387 = result9387) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9388 live9388 coloured9388 = result9388 := by
  rw [tree9388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9386 coloured9386 at child
  try dsimp only [live9388, coloured9388]
  rw [child]
  dsimp only [result9386]
  have child := child1
  unfold live9387 coloured9387 at child
  try dsimp only [live9388, coloured9388]
  rw [child]
  dsimp only [result9387]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9389_agree_conditional : tree9389 = literal9389 := by
  rw [tree9389_def]
  rfl
theorem node9389_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9389 live9389 coloured9389 = result9389 := by
  rw [tree9389_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9390_agree_conditional
    (child0 : tree9388 = literal9388)
    (child1 : tree9389 = literal9389) : tree9390 = literal9390 := by
  rw [tree9390_def, child0, child1]
  rfl
theorem node9390_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9388 live9388 coloured9388 = result9388)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9389 live9389 coloured9389 = result9389) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9390 live9390 coloured9390 = result9390 := by
  rw [tree9390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9388 coloured9388 at child
  try dsimp only [live9390, coloured9390]
  rw [child]
  dsimp only [result9388]
  have child := child1
  unfold live9389 coloured9389 at child
  try dsimp only [live9390, coloured9390]
  rw [child]
  dsimp only [result9389]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9391_agree_conditional : tree9391 = literal9391 := by
  rw [tree9391_def]
  rfl
theorem node9391_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9391 live9391 coloured9391 = result9391 := by
  rw [tree9391_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9392_agree_conditional
    (child0 : tree9390 = literal9390)
    (child1 : tree9391 = literal9391) : tree9392 = literal9392 := by
  rw [tree9392_def, child0, child1]
  rfl
theorem node9392_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9390 live9390 coloured9390 = result9390)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9391 live9391 coloured9391 = result9391) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9392 live9392 coloured9392 = result9392 := by
  rw [tree9392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9390 coloured9390 at child
  try dsimp only [live9392, coloured9392]
  rw [child]
  dsimp only [result9390]
  have child := child1
  unfold live9391 coloured9391 at child
  try dsimp only [live9392, coloured9392]
  rw [child]
  dsimp only [result9391]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9393_agree_conditional : tree9393 = literal9393 := by
  rw [tree9393_def]
  rfl
theorem node9393_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9393 live9393 coloured9393 = result9393 := by
  rw [tree9393_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9394_agree_conditional
    (child0 : tree9392 = literal9392)
    (child1 : tree9393 = literal9393) : tree9394 = literal9394 := by
  rw [tree9394_def, child0, child1]
  rfl
theorem node9394_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9392 live9392 coloured9392 = result9392)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9393 live9393 coloured9393 = result9393) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9394 live9394 coloured9394 = result9394 := by
  rw [tree9394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9392 coloured9392 at child
  try dsimp only [live9394, coloured9394]
  rw [child]
  dsimp only [result9392]
  have child := child1
  unfold live9393 coloured9393 at child
  try dsimp only [live9394, coloured9394]
  rw [child]
  dsimp only [result9393]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9395_agree_conditional : tree9395 = literal9395 := by
  rw [tree9395_def]
  rfl
theorem node9395_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9395 live9395 coloured9395 = result9395 := by
  rw [tree9395_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9396_agree_conditional
    (child0 : tree9394 = literal9394)
    (child1 : tree9395 = literal9395) : tree9396 = literal9396 := by
  rw [tree9396_def, child0, child1]
  rfl
theorem node9396_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9394 live9394 coloured9394 = result9394)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9395 live9395 coloured9395 = result9395) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9396 live9396 coloured9396 = result9396 := by
  rw [tree9396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9394 coloured9394 at child
  try dsimp only [live9396, coloured9396]
  rw [child]
  dsimp only [result9394]
  have child := child1
  unfold live9395 coloured9395 at child
  try dsimp only [live9396, coloured9396]
  rw [child]
  dsimp only [result9395]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9397_agree_conditional : tree9397 = literal9397 := by
  rw [tree9397_def]
  rfl
theorem node9397_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9397 live9397 coloured9397 = result9397 := by
  rw [tree9397_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9398_agree_conditional
    (child0 : tree9396 = literal9396)
    (child1 : tree9397 = literal9397) : tree9398 = literal9398 := by
  rw [tree9398_def, child0, child1]
  rfl
theorem node9398_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9396 live9396 coloured9396 = result9396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9397 live9397 coloured9397 = result9397) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9398 live9398 coloured9398 = result9398 := by
  rw [tree9398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9396 coloured9396 at child
  try dsimp only [live9398, coloured9398]
  rw [child]
  dsimp only [result9396]
  have child := child1
  unfold live9397 coloured9397 at child
  try dsimp only [live9398, coloured9398]
  rw [child]
  dsimp only [result9397]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9399_agree_conditional : tree9399 = literal9399 := by
  rw [tree9399_def]
  rfl
theorem node9399_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9399 live9399 coloured9399 = result9399 := by
  rw [tree9399_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9400_agree_conditional
    (child0 : tree9398 = literal9398)
    (child1 : tree9399 = literal9399) : tree9400 = literal9400 := by
  rw [tree9400_def, child0, child1]
  rfl
theorem node9400_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9398 live9398 coloured9398 = result9398)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9399 live9399 coloured9399 = result9399) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9400 live9400 coloured9400 = result9400 := by
  rw [tree9400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9398 coloured9398 at child
  try dsimp only [live9400, coloured9400]
  rw [child]
  dsimp only [result9398]
  have child := child1
  unfold live9399 coloured9399 at child
  try dsimp only [live9400, coloured9400]
  rw [child]
  dsimp only [result9399]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9401_agree_conditional : tree9401 = literal9401 := by
  rw [tree9401_def]
  rfl
theorem node9401_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9401 live9401 coloured9401 = result9401 := by
  rw [tree9401_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9402_agree_conditional
    (child0 : tree9400 = literal9400)
    (child1 : tree9401 = literal9401) : tree9402 = literal9402 := by
  rw [tree9402_def, child0, child1]
  rfl
theorem node9402_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9400 live9400 coloured9400 = result9400)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9401 live9401 coloured9401 = result9401) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9402 live9402 coloured9402 = result9402 := by
  rw [tree9402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9400 coloured9400 at child
  try dsimp only [live9402, coloured9402]
  rw [child]
  dsimp only [result9400]
  have child := child1
  unfold live9401 coloured9401 at child
  try dsimp only [live9402, coloured9402]
  rw [child]
  dsimp only [result9401]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9403_agree_conditional : tree9403 = literal9403 := by
  rw [tree9403_def]
  rfl
theorem node9403_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9403 live9403 coloured9403 = result9403 := by
  rw [tree9403_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9404_agree_conditional
    (child0 : tree9402 = literal9402)
    (child1 : tree9403 = literal9403) : tree9404 = literal9404 := by
  rw [tree9404_def, child0, child1]
  rfl
theorem node9404_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9402 live9402 coloured9402 = result9402)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9403 live9403 coloured9403 = result9403) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9404 live9404 coloured9404 = result9404 := by
  rw [tree9404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9402 coloured9402 at child
  try dsimp only [live9404, coloured9404]
  rw [child]
  dsimp only [result9402]
  have child := child1
  unfold live9403 coloured9403 at child
  try dsimp only [live9404, coloured9404]
  rw [child]
  dsimp only [result9403]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9405_agree_conditional : tree9405 = literal9405 := by
  rw [tree9405_def]
  rfl
theorem node9405_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9405 live9405 coloured9405 = result9405 := by
  rw [tree9405_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9406_agree_conditional
    (child0 : tree9404 = literal9404)
    (child1 : tree9405 = literal9405) : tree9406 = literal9406 := by
  rw [tree9406_def, child0, child1]
  rfl
theorem node9406_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9404 live9404 coloured9404 = result9404)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9405 live9405 coloured9405 = result9405) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9406 live9406 coloured9406 = result9406 := by
  rw [tree9406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9404 coloured9404 at child
  try dsimp only [live9406, coloured9406]
  rw [child]
  dsimp only [result9404]
  have child := child1
  unfold live9405 coloured9405 at child
  try dsimp only [live9406, coloured9406]
  rw [child]
  dsimp only [result9405]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9407_agree_conditional : tree9407 = literal9407 := by
  rw [tree9407_def]
  rfl
theorem node9407_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9407 live9407 coloured9407 = result9407 := by
  rw [tree9407_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
