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
theorem tree4320_agree_conditional
    (child0 : tree4318 = literal4318)
    (child1 : tree4319 = literal4319) : tree4320 = literal4320 := by
  rw [tree4320_def, child0, child1]
  rfl
theorem node4320_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4318 live4318 coloured4318 = result4318)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4319 live4319 coloured4319 = result4319) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4320 live4320 coloured4320 = result4320 := by
  rw [tree4320_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4318 coloured4318 at child
  try dsimp only [live4320, coloured4320]
  rw [child]
  dsimp only [result4318]
  have child := child1
  unfold live4319 coloured4319 at child
  try dsimp only [live4320, coloured4320]
  rw [child]
  dsimp only [result4319]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4321_agree_conditional : tree4321 = literal4321 := by
  rw [tree4321_def]
  rfl
theorem node4321_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4321 live4321 coloured4321 = result4321 := by
  rw [tree4321_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4322_agree_conditional
    (child0 : tree4320 = literal4320)
    (child1 : tree4321 = literal4321) : tree4322 = literal4322 := by
  rw [tree4322_def, child0, child1]
  rfl
theorem node4322_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4320 live4320 coloured4320 = result4320)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4321 live4321 coloured4321 = result4321) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4322 live4322 coloured4322 = result4322 := by
  rw [tree4322_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4320 coloured4320 at child
  try dsimp only [live4322, coloured4322]
  rw [child]
  dsimp only [result4320]
  have child := child1
  unfold live4321 coloured4321 at child
  try dsimp only [live4322, coloured4322]
  rw [child]
  dsimp only [result4321]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4323_agree_conditional : tree4323 = literal4323 := by
  rw [tree4323_def]
  rfl
theorem node4323_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4323 live4323 coloured4323 = result4323 := by
  rw [tree4323_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4324_agree_conditional
    (child0 : tree4322 = literal4322)
    (child1 : tree4323 = literal4323) : tree4324 = literal4324 := by
  rw [tree4324_def, child0, child1]
  rfl
theorem node4324_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4322 live4322 coloured4322 = result4322)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4323 live4323 coloured4323 = result4323) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4324 live4324 coloured4324 = result4324 := by
  rw [tree4324_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4322 coloured4322 at child
  try dsimp only [live4324, coloured4324]
  rw [child]
  dsimp only [result4322]
  have child := child1
  unfold live4323 coloured4323 at child
  try dsimp only [live4324, coloured4324]
  rw [child]
  dsimp only [result4323]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4325_agree_conditional : tree4325 = literal4325 := by
  rw [tree4325_def]
  rfl
theorem node4325_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4325 live4325 coloured4325 = result4325 := by
  rw [tree4325_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4326_agree_conditional
    (child0 : tree4324 = literal4324)
    (child1 : tree4325 = literal4325) : tree4326 = literal4326 := by
  rw [tree4326_def, child0, child1]
  rfl
theorem node4326_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4324 live4324 coloured4324 = result4324)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4325 live4325 coloured4325 = result4325) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4326 live4326 coloured4326 = result4326 := by
  rw [tree4326_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4324 coloured4324 at child
  try dsimp only [live4326, coloured4326]
  rw [child]
  dsimp only [result4324]
  have child := child1
  unfold live4325 coloured4325 at child
  try dsimp only [live4326, coloured4326]
  rw [child]
  dsimp only [result4325]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4327_agree_conditional : tree4327 = literal4327 := by
  rw [tree4327_def]
  rfl
theorem node4327_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4327 live4327 coloured4327 = result4327 := by
  rw [tree4327_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4328_agree_conditional
    (child0 : tree4326 = literal4326)
    (child1 : tree4327 = literal4327) : tree4328 = literal4328 := by
  rw [tree4328_def, child0, child1]
  rfl
theorem node4328_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4326 live4326 coloured4326 = result4326)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4327 live4327 coloured4327 = result4327) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4328 live4328 coloured4328 = result4328 := by
  rw [tree4328_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4326 coloured4326 at child
  try dsimp only [live4328, coloured4328]
  rw [child]
  dsimp only [result4326]
  have child := child1
  unfold live4327 coloured4327 at child
  try dsimp only [live4328, coloured4328]
  rw [child]
  dsimp only [result4327]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4329_agree_conditional : tree4329 = literal4329 := by
  rw [tree4329_def]
  rfl
theorem node4329_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4329 live4329 coloured4329 = result4329 := by
  rw [tree4329_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4330_agree_conditional
    (child0 : tree4328 = literal4328)
    (child1 : tree4329 = literal4329) : tree4330 = literal4330 := by
  rw [tree4330_def, child0, child1]
  rfl
theorem node4330_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4328 live4328 coloured4328 = result4328)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4329 live4329 coloured4329 = result4329) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4330 live4330 coloured4330 = result4330 := by
  rw [tree4330_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4328 coloured4328 at child
  try dsimp only [live4330, coloured4330]
  rw [child]
  dsimp only [result4328]
  have child := child1
  unfold live4329 coloured4329 at child
  try dsimp only [live4330, coloured4330]
  rw [child]
  dsimp only [result4329]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4331_agree_conditional : tree4331 = literal4331 := by
  rw [tree4331_def]
  rfl
theorem node4331_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4331 live4331 coloured4331 = result4331 := by
  rw [tree4331_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4332_agree_conditional
    (child0 : tree4330 = literal4330)
    (child1 : tree4331 = literal4331) : tree4332 = literal4332 := by
  rw [tree4332_def, child0, child1]
  rfl
theorem node4332_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4330 live4330 coloured4330 = result4330)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4331 live4331 coloured4331 = result4331) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4332 live4332 coloured4332 = result4332 := by
  rw [tree4332_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4330 coloured4330 at child
  try dsimp only [live4332, coloured4332]
  rw [child]
  dsimp only [result4330]
  have child := child1
  unfold live4331 coloured4331 at child
  try dsimp only [live4332, coloured4332]
  rw [child]
  dsimp only [result4331]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4333_agree_conditional : tree4333 = literal4333 := by
  rw [tree4333_def]
  rfl
theorem node4333_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4333 live4333 coloured4333 = result4333 := by
  rw [tree4333_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4334_agree_conditional
    (child0 : tree4332 = literal4332)
    (child1 : tree4333 = literal4333) : tree4334 = literal4334 := by
  rw [tree4334_def, child0, child1]
  rfl
theorem node4334_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4332 live4332 coloured4332 = result4332)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4333 live4333 coloured4333 = result4333) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4334 live4334 coloured4334 = result4334 := by
  rw [tree4334_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4332 coloured4332 at child
  try dsimp only [live4334, coloured4334]
  rw [child]
  dsimp only [result4332]
  have child := child1
  unfold live4333 coloured4333 at child
  try dsimp only [live4334, coloured4334]
  rw [child]
  dsimp only [result4333]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4335_agree_conditional : tree4335 = literal4335 := by
  rw [tree4335_def]
  rfl
theorem node4335_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4335 live4335 coloured4335 = result4335 := by
  rw [tree4335_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4336_agree_conditional
    (child0 : tree4334 = literal4334)
    (child1 : tree4335 = literal4335) : tree4336 = literal4336 := by
  rw [tree4336_def, child0, child1]
  rfl
theorem node4336_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4334 live4334 coloured4334 = result4334)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4335 live4335 coloured4335 = result4335) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4336 live4336 coloured4336 = result4336 := by
  rw [tree4336_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4334 coloured4334 at child
  try dsimp only [live4336, coloured4336]
  rw [child]
  dsimp only [result4334]
  have child := child1
  unfold live4335 coloured4335 at child
  try dsimp only [live4336, coloured4336]
  rw [child]
  dsimp only [result4335]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4337_agree_conditional : tree4337 = literal4337 := by
  rw [tree4337_def]
  rfl
theorem node4337_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4337 live4337 coloured4337 = result4337 := by
  rw [tree4337_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4338_agree_conditional
    (child0 : tree4336 = literal4336)
    (child1 : tree4337 = literal4337) : tree4338 = literal4338 := by
  rw [tree4338_def, child0, child1]
  rfl
theorem node4338_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4336 live4336 coloured4336 = result4336)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4337 live4337 coloured4337 = result4337) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4338 live4338 coloured4338 = result4338 := by
  rw [tree4338_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4336 coloured4336 at child
  try dsimp only [live4338, coloured4338]
  rw [child]
  dsimp only [result4336]
  have child := child1
  unfold live4337 coloured4337 at child
  try dsimp only [live4338, coloured4338]
  rw [child]
  dsimp only [result4337]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4339_agree_conditional : tree4339 = literal4339 := by
  rw [tree4339_def]
  rfl
theorem node4339_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4339 live4339 coloured4339 = result4339 := by
  rw [tree4339_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4340_agree_conditional
    (child0 : tree4338 = literal4338)
    (child1 : tree4339 = literal4339) : tree4340 = literal4340 := by
  rw [tree4340_def, child0, child1]
  rfl
theorem node4340_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4338 live4338 coloured4338 = result4338)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4339 live4339 coloured4339 = result4339) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4340 live4340 coloured4340 = result4340 := by
  rw [tree4340_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4338 coloured4338 at child
  try dsimp only [live4340, coloured4340]
  rw [child]
  dsimp only [result4338]
  have child := child1
  unfold live4339 coloured4339 at child
  try dsimp only [live4340, coloured4340]
  rw [child]
  dsimp only [result4339]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4341_agree_conditional : tree4341 = literal4341 := by
  rw [tree4341_def]
  rfl
theorem node4341_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4341 live4341 coloured4341 = result4341 := by
  rw [tree4341_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4342_agree_conditional
    (child0 : tree4340 = literal4340)
    (child1 : tree4341 = literal4341) : tree4342 = literal4342 := by
  rw [tree4342_def, child0, child1]
  rfl
theorem node4342_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4340 live4340 coloured4340 = result4340)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4341 live4341 coloured4341 = result4341) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4342 live4342 coloured4342 = result4342 := by
  rw [tree4342_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4340 coloured4340 at child
  try dsimp only [live4342, coloured4342]
  rw [child]
  dsimp only [result4340]
  have child := child1
  unfold live4341 coloured4341 at child
  try dsimp only [live4342, coloured4342]
  rw [child]
  dsimp only [result4341]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4343_agree_conditional : tree4343 = literal4343 := by
  rw [tree4343_def]
  rfl
theorem node4343_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4343 live4343 coloured4343 = result4343 := by
  rw [tree4343_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4344_agree_conditional
    (child0 : tree4342 = literal4342)
    (child1 : tree4343 = literal4343) : tree4344 = literal4344 := by
  rw [tree4344_def, child0, child1]
  rfl
theorem node4344_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4342 live4342 coloured4342 = result4342)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4343 live4343 coloured4343 = result4343) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4344 live4344 coloured4344 = result4344 := by
  rw [tree4344_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4342 coloured4342 at child
  try dsimp only [live4344, coloured4344]
  rw [child]
  dsimp only [result4342]
  have child := child1
  unfold live4343 coloured4343 at child
  try dsimp only [live4344, coloured4344]
  rw [child]
  dsimp only [result4343]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4345_agree_conditional : tree4345 = literal4345 := by
  rw [tree4345_def]
  rfl
theorem node4345_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4345 live4345 coloured4345 = result4345 := by
  rw [tree4345_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4346_agree_conditional
    (child0 : tree4344 = literal4344)
    (child1 : tree4345 = literal4345) : tree4346 = literal4346 := by
  rw [tree4346_def, child0, child1]
  rfl
theorem node4346_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4344 live4344 coloured4344 = result4344)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4345 live4345 coloured4345 = result4345) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4346 live4346 coloured4346 = result4346 := by
  rw [tree4346_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4344 coloured4344 at child
  try dsimp only [live4346, coloured4346]
  rw [child]
  dsimp only [result4344]
  have child := child1
  unfold live4345 coloured4345 at child
  try dsimp only [live4346, coloured4346]
  rw [child]
  dsimp only [result4345]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4347_agree_conditional : tree4347 = literal4347 := by
  rw [tree4347_def]
  rfl
theorem node4347_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4347 live4347 coloured4347 = result4347 := by
  rw [tree4347_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4348_agree_conditional
    (child0 : tree4346 = literal4346)
    (child1 : tree4347 = literal4347) : tree4348 = literal4348 := by
  rw [tree4348_def, child0, child1]
  rfl
theorem node4348_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4346 live4346 coloured4346 = result4346)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4347 live4347 coloured4347 = result4347) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4348 live4348 coloured4348 = result4348 := by
  rw [tree4348_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4346 coloured4346 at child
  try dsimp only [live4348, coloured4348]
  rw [child]
  dsimp only [result4346]
  have child := child1
  unfold live4347 coloured4347 at child
  try dsimp only [live4348, coloured4348]
  rw [child]
  dsimp only [result4347]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4349_agree_conditional : tree4349 = literal4349 := by
  rw [tree4349_def]
  rfl
theorem node4349_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4349 live4349 coloured4349 = result4349 := by
  rw [tree4349_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4350_agree_conditional
    (child0 : tree4348 = literal4348)
    (child1 : tree4349 = literal4349) : tree4350 = literal4350 := by
  rw [tree4350_def, child0, child1]
  rfl
theorem node4350_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4348 live4348 coloured4348 = result4348)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4349 live4349 coloured4349 = result4349) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4350 live4350 coloured4350 = result4350 := by
  rw [tree4350_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4348 coloured4348 at child
  try dsimp only [live4350, coloured4350]
  rw [child]
  dsimp only [result4348]
  have child := child1
  unfold live4349 coloured4349 at child
  try dsimp only [live4350, coloured4350]
  rw [child]
  dsimp only [result4349]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4351_agree_conditional : tree4351 = literal4351 := by
  rw [tree4351_def]
  rfl
theorem node4351_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4351 live4351 coloured4351 = result4351 := by
  rw [tree4351_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4352_agree_conditional
    (child0 : tree4350 = literal4350)
    (child1 : tree4351 = literal4351) : tree4352 = literal4352 := by
  rw [tree4352_def, child0, child1]
  rfl
theorem node4352_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4350 live4350 coloured4350 = result4350)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4351 live4351 coloured4351 = result4351) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4352 live4352 coloured4352 = result4352 := by
  rw [tree4352_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4350 coloured4350 at child
  try dsimp only [live4352, coloured4352]
  rw [child]
  dsimp only [result4350]
  have child := child1
  unfold live4351 coloured4351 at child
  try dsimp only [live4352, coloured4352]
  rw [child]
  dsimp only [result4351]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4353_agree_conditional : tree4353 = literal4353 := by
  rw [tree4353_def]
  rfl
theorem node4353_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4353 live4353 coloured4353 = result4353 := by
  rw [tree4353_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4354_agree_conditional
    (child0 : tree4352 = literal4352)
    (child1 : tree4353 = literal4353) : tree4354 = literal4354 := by
  rw [tree4354_def, child0, child1]
  rfl
theorem node4354_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4352 live4352 coloured4352 = result4352)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4353 live4353 coloured4353 = result4353) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4354 live4354 coloured4354 = result4354 := by
  rw [tree4354_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4352 coloured4352 at child
  try dsimp only [live4354, coloured4354]
  rw [child]
  dsimp only [result4352]
  have child := child1
  unfold live4353 coloured4353 at child
  try dsimp only [live4354, coloured4354]
  rw [child]
  dsimp only [result4353]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4355_agree_conditional : tree4355 = literal4355 := by
  rw [tree4355_def]
  rfl
theorem node4355_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4355 live4355 coloured4355 = result4355 := by
  rw [tree4355_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4356_agree_conditional
    (child0 : tree4354 = literal4354)
    (child1 : tree4355 = literal4355) : tree4356 = literal4356 := by
  rw [tree4356_def, child0, child1]
  rfl
theorem node4356_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4354 live4354 coloured4354 = result4354)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4355 live4355 coloured4355 = result4355) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4356 live4356 coloured4356 = result4356 := by
  rw [tree4356_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4354 coloured4354 at child
  try dsimp only [live4356, coloured4356]
  rw [child]
  dsimp only [result4354]
  have child := child1
  unfold live4355 coloured4355 at child
  try dsimp only [live4356, coloured4356]
  rw [child]
  dsimp only [result4355]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4357_agree_conditional : tree4357 = literal4357 := by
  rw [tree4357_def]
  rfl
theorem node4357_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4357 live4357 coloured4357 = result4357 := by
  rw [tree4357_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4358_agree_conditional
    (child0 : tree4356 = literal4356)
    (child1 : tree4357 = literal4357) : tree4358 = literal4358 := by
  rw [tree4358_def, child0, child1]
  rfl
theorem node4358_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4356 live4356 coloured4356 = result4356)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4357 live4357 coloured4357 = result4357) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4358 live4358 coloured4358 = result4358 := by
  rw [tree4358_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4356 coloured4356 at child
  try dsimp only [live4358, coloured4358]
  rw [child]
  dsimp only [result4356]
  have child := child1
  unfold live4357 coloured4357 at child
  try dsimp only [live4358, coloured4358]
  rw [child]
  dsimp only [result4357]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4359_agree_conditional : tree4359 = literal4359 := by
  rw [tree4359_def]
  rfl
theorem node4359_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4359 live4359 coloured4359 = result4359 := by
  rw [tree4359_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4360_agree_conditional
    (child0 : tree4358 = literal4358)
    (child1 : tree4359 = literal4359) : tree4360 = literal4360 := by
  rw [tree4360_def, child0, child1]
  rfl
theorem node4360_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4358 live4358 coloured4358 = result4358)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4359 live4359 coloured4359 = result4359) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4360 live4360 coloured4360 = result4360 := by
  rw [tree4360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4358 coloured4358 at child
  try dsimp only [live4360, coloured4360]
  rw [child]
  dsimp only [result4358]
  have child := child1
  unfold live4359 coloured4359 at child
  try dsimp only [live4360, coloured4360]
  rw [child]
  dsimp only [result4359]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4361_agree_conditional : tree4361 = literal4361 := by
  rw [tree4361_def]
  rfl
theorem node4361_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4361 live4361 coloured4361 = result4361 := by
  rw [tree4361_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4362_agree_conditional
    (child0 : tree4360 = literal4360)
    (child1 : tree4361 = literal4361) : tree4362 = literal4362 := by
  rw [tree4362_def, child0, child1]
  rfl
theorem node4362_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4360 live4360 coloured4360 = result4360)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4361 live4361 coloured4361 = result4361) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4362 live4362 coloured4362 = result4362 := by
  rw [tree4362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4360 coloured4360 at child
  try dsimp only [live4362, coloured4362]
  rw [child]
  dsimp only [result4360]
  have child := child1
  unfold live4361 coloured4361 at child
  try dsimp only [live4362, coloured4362]
  rw [child]
  dsimp only [result4361]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4363_agree_conditional : tree4363 = literal4363 := by
  rw [tree4363_def]
  rfl
theorem node4363_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4363 live4363 coloured4363 = result4363 := by
  rw [tree4363_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4364_agree_conditional
    (child0 : tree4362 = literal4362)
    (child1 : tree4363 = literal4363) : tree4364 = literal4364 := by
  rw [tree4364_def, child0, child1]
  rfl
theorem node4364_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4362 live4362 coloured4362 = result4362)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4363 live4363 coloured4363 = result4363) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4364 live4364 coloured4364 = result4364 := by
  rw [tree4364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4362 coloured4362 at child
  try dsimp only [live4364, coloured4364]
  rw [child]
  dsimp only [result4362]
  have child := child1
  unfold live4363 coloured4363 at child
  try dsimp only [live4364, coloured4364]
  rw [child]
  dsimp only [result4363]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4365_agree_conditional : tree4365 = literal4365 := by
  rw [tree4365_def]
  rfl
theorem node4365_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4365 live4365 coloured4365 = result4365 := by
  rw [tree4365_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4366_agree_conditional
    (child0 : tree4364 = literal4364)
    (child1 : tree4365 = literal4365) : tree4366 = literal4366 := by
  rw [tree4366_def, child0, child1]
  rfl
theorem node4366_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4364 live4364 coloured4364 = result4364)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4365 live4365 coloured4365 = result4365) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4366 live4366 coloured4366 = result4366 := by
  rw [tree4366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4364 coloured4364 at child
  try dsimp only [live4366, coloured4366]
  rw [child]
  dsimp only [result4364]
  have child := child1
  unfold live4365 coloured4365 at child
  try dsimp only [live4366, coloured4366]
  rw [child]
  dsimp only [result4365]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4367_agree_conditional : tree4367 = literal4367 := by
  rw [tree4367_def]
  rfl
theorem node4367_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4367 live4367 coloured4367 = result4367 := by
  rw [tree4367_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4368_agree_conditional
    (child0 : tree4366 = literal4366)
    (child1 : tree4367 = literal4367) : tree4368 = literal4368 := by
  rw [tree4368_def, child0, child1]
  rfl
theorem node4368_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4366 live4366 coloured4366 = result4366)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4367 live4367 coloured4367 = result4367) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4368 live4368 coloured4368 = result4368 := by
  rw [tree4368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4366 coloured4366 at child
  try dsimp only [live4368, coloured4368]
  rw [child]
  dsimp only [result4366]
  have child := child1
  unfold live4367 coloured4367 at child
  try dsimp only [live4368, coloured4368]
  rw [child]
  dsimp only [result4367]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4369_agree_conditional : tree4369 = literal4369 := by
  rw [tree4369_def]
  rfl
theorem node4369_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4369 live4369 coloured4369 = result4369 := by
  rw [tree4369_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4370_agree_conditional
    (child0 : tree4368 = literal4368)
    (child1 : tree4369 = literal4369) : tree4370 = literal4370 := by
  rw [tree4370_def, child0, child1]
  rfl
theorem node4370_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4368 live4368 coloured4368 = result4368)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4369 live4369 coloured4369 = result4369) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4370 live4370 coloured4370 = result4370 := by
  rw [tree4370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4368 coloured4368 at child
  try dsimp only [live4370, coloured4370]
  rw [child]
  dsimp only [result4368]
  have child := child1
  unfold live4369 coloured4369 at child
  try dsimp only [live4370, coloured4370]
  rw [child]
  dsimp only [result4369]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4371_agree_conditional : tree4371 = literal4371 := by
  rw [tree4371_def]
  rfl
theorem node4371_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4371 live4371 coloured4371 = result4371 := by
  rw [tree4371_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4372_agree_conditional
    (child0 : tree4370 = literal4370)
    (child1 : tree4371 = literal4371) : tree4372 = literal4372 := by
  rw [tree4372_def, child0, child1]
  rfl
theorem node4372_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4370 live4370 coloured4370 = result4370)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4371 live4371 coloured4371 = result4371) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4372 live4372 coloured4372 = result4372 := by
  rw [tree4372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4370 coloured4370 at child
  try dsimp only [live4372, coloured4372]
  rw [child]
  dsimp only [result4370]
  have child := child1
  unfold live4371 coloured4371 at child
  try dsimp only [live4372, coloured4372]
  rw [child]
  dsimp only [result4371]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4373_agree_conditional : tree4373 = literal4373 := by
  rw [tree4373_def]
  rfl
theorem node4373_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4373 live4373 coloured4373 = result4373 := by
  rw [tree4373_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4374_agree_conditional
    (child0 : tree4372 = literal4372)
    (child1 : tree4373 = literal4373) : tree4374 = literal4374 := by
  rw [tree4374_def, child0, child1]
  rfl
theorem node4374_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4372 live4372 coloured4372 = result4372)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4373 live4373 coloured4373 = result4373) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4374 live4374 coloured4374 = result4374 := by
  rw [tree4374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4372 coloured4372 at child
  try dsimp only [live4374, coloured4374]
  rw [child]
  dsimp only [result4372]
  have child := child1
  unfold live4373 coloured4373 at child
  try dsimp only [live4374, coloured4374]
  rw [child]
  dsimp only [result4373]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4375_agree_conditional : tree4375 = literal4375 := by
  rw [tree4375_def]
  rfl
theorem node4375_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4375 live4375 coloured4375 = result4375 := by
  rw [tree4375_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4376_agree_conditional
    (child0 : tree4374 = literal4374)
    (child1 : tree4375 = literal4375) : tree4376 = literal4376 := by
  rw [tree4376_def, child0, child1]
  rfl
theorem node4376_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4374 live4374 coloured4374 = result4374)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4375 live4375 coloured4375 = result4375) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4376 live4376 coloured4376 = result4376 := by
  rw [tree4376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4374 coloured4374 at child
  try dsimp only [live4376, coloured4376]
  rw [child]
  dsimp only [result4374]
  have child := child1
  unfold live4375 coloured4375 at child
  try dsimp only [live4376, coloured4376]
  rw [child]
  dsimp only [result4375]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4377_agree_conditional : tree4377 = literal4377 := by
  rw [tree4377_def]
  rfl
theorem node4377_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4377 live4377 coloured4377 = result4377 := by
  rw [tree4377_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4378_agree_conditional
    (child0 : tree4376 = literal4376)
    (child1 : tree4377 = literal4377) : tree4378 = literal4378 := by
  rw [tree4378_def, child0, child1]
  rfl
theorem node4378_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4376 live4376 coloured4376 = result4376)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4377 live4377 coloured4377 = result4377) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4378 live4378 coloured4378 = result4378 := by
  rw [tree4378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4376 coloured4376 at child
  try dsimp only [live4378, coloured4378]
  rw [child]
  dsimp only [result4376]
  have child := child1
  unfold live4377 coloured4377 at child
  try dsimp only [live4378, coloured4378]
  rw [child]
  dsimp only [result4377]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4379_agree_conditional : tree4379 = literal4379 := by
  rw [tree4379_def]
  rfl
theorem node4379_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4379 live4379 coloured4379 = result4379 := by
  rw [tree4379_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4380_agree_conditional
    (child0 : tree4378 = literal4378)
    (child1 : tree4379 = literal4379) : tree4380 = literal4380 := by
  rw [tree4380_def, child0, child1]
  rfl
theorem node4380_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4378 live4378 coloured4378 = result4378)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4379 live4379 coloured4379 = result4379) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4380 live4380 coloured4380 = result4380 := by
  rw [tree4380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4378 coloured4378 at child
  try dsimp only [live4380, coloured4380]
  rw [child]
  dsimp only [result4378]
  have child := child1
  unfold live4379 coloured4379 at child
  try dsimp only [live4380, coloured4380]
  rw [child]
  dsimp only [result4379]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4381_agree_conditional : tree4381 = literal4381 := by
  rw [tree4381_def]
  rfl
theorem node4381_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4381 live4381 coloured4381 = result4381 := by
  rw [tree4381_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4382_agree_conditional
    (child0 : tree4380 = literal4380)
    (child1 : tree4381 = literal4381) : tree4382 = literal4382 := by
  rw [tree4382_def, child0, child1]
  rfl
theorem node4382_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4380 live4380 coloured4380 = result4380)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4381 live4381 coloured4381 = result4381) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4382 live4382 coloured4382 = result4382 := by
  rw [tree4382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4380 coloured4380 at child
  try dsimp only [live4382, coloured4382]
  rw [child]
  dsimp only [result4380]
  have child := child1
  unfold live4381 coloured4381 at child
  try dsimp only [live4382, coloured4382]
  rw [child]
  dsimp only [result4381]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4383_agree_conditional : tree4383 = literal4383 := by
  rw [tree4383_def]
  rfl
theorem node4383_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4383 live4383 coloured4383 = result4383 := by
  rw [tree4383_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4384_agree_conditional
    (child0 : tree4382 = literal4382)
    (child1 : tree4383 = literal4383) : tree4384 = literal4384 := by
  rw [tree4384_def, child0, child1]
  rfl
theorem node4384_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4382 live4382 coloured4382 = result4382)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4383 live4383 coloured4383 = result4383) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4384 live4384 coloured4384 = result4384 := by
  rw [tree4384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4382 coloured4382 at child
  try dsimp only [live4384, coloured4384]
  rw [child]
  dsimp only [result4382]
  have child := child1
  unfold live4383 coloured4383 at child
  try dsimp only [live4384, coloured4384]
  rw [child]
  dsimp only [result4383]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4385_agree_conditional : tree4385 = literal4385 := by
  rw [tree4385_def]
  rfl
theorem node4385_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4385 live4385 coloured4385 = result4385 := by
  rw [tree4385_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4386_agree_conditional
    (child0 : tree4384 = literal4384)
    (child1 : tree4385 = literal4385) : tree4386 = literal4386 := by
  rw [tree4386_def, child0, child1]
  rfl
theorem node4386_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4384 live4384 coloured4384 = result4384)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4385 live4385 coloured4385 = result4385) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4386 live4386 coloured4386 = result4386 := by
  rw [tree4386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4384 coloured4384 at child
  try dsimp only [live4386, coloured4386]
  rw [child]
  dsimp only [result4384]
  have child := child1
  unfold live4385 coloured4385 at child
  try dsimp only [live4386, coloured4386]
  rw [child]
  dsimp only [result4385]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4387_agree_conditional : tree4387 = literal4387 := by
  rw [tree4387_def]
  rfl
theorem node4387_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4387 live4387 coloured4387 = result4387 := by
  rw [tree4387_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4388_agree_conditional
    (child0 : tree4386 = literal4386)
    (child1 : tree4387 = literal4387) : tree4388 = literal4388 := by
  rw [tree4388_def, child0, child1]
  rfl
theorem node4388_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4386 live4386 coloured4386 = result4386)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4387 live4387 coloured4387 = result4387) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4388 live4388 coloured4388 = result4388 := by
  rw [tree4388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4386 coloured4386 at child
  try dsimp only [live4388, coloured4388]
  rw [child]
  dsimp only [result4386]
  have child := child1
  unfold live4387 coloured4387 at child
  try dsimp only [live4388, coloured4388]
  rw [child]
  dsimp only [result4387]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4389_agree_conditional : tree4389 = literal4389 := by
  rw [tree4389_def]
  rfl
theorem node4389_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4389 live4389 coloured4389 = result4389 := by
  rw [tree4389_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4390_agree_conditional
    (child0 : tree4388 = literal4388)
    (child1 : tree4389 = literal4389) : tree4390 = literal4390 := by
  rw [tree4390_def, child0, child1]
  rfl
theorem node4390_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4388 live4388 coloured4388 = result4388)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4389 live4389 coloured4389 = result4389) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4390 live4390 coloured4390 = result4390 := by
  rw [tree4390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4388 coloured4388 at child
  try dsimp only [live4390, coloured4390]
  rw [child]
  dsimp only [result4388]
  have child := child1
  unfold live4389 coloured4389 at child
  try dsimp only [live4390, coloured4390]
  rw [child]
  dsimp only [result4389]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4391_agree_conditional : tree4391 = literal4391 := by
  rw [tree4391_def]
  rfl
theorem node4391_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4391 live4391 coloured4391 = result4391 := by
  rw [tree4391_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4392_agree_conditional
    (child0 : tree4390 = literal4390)
    (child1 : tree4391 = literal4391) : tree4392 = literal4392 := by
  rw [tree4392_def, child0, child1]
  rfl
theorem node4392_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4390 live4390 coloured4390 = result4390)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4391 live4391 coloured4391 = result4391) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4392 live4392 coloured4392 = result4392 := by
  rw [tree4392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4390 coloured4390 at child
  try dsimp only [live4392, coloured4392]
  rw [child]
  dsimp only [result4390]
  have child := child1
  unfold live4391 coloured4391 at child
  try dsimp only [live4392, coloured4392]
  rw [child]
  dsimp only [result4391]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4393_agree_conditional : tree4393 = literal4393 := by
  rw [tree4393_def]
  rfl
theorem node4393_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4393 live4393 coloured4393 = result4393 := by
  rw [tree4393_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4394_agree_conditional
    (child0 : tree4392 = literal4392)
    (child1 : tree4393 = literal4393) : tree4394 = literal4394 := by
  rw [tree4394_def, child0, child1]
  rfl
theorem node4394_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4392 live4392 coloured4392 = result4392)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4393 live4393 coloured4393 = result4393) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4394 live4394 coloured4394 = result4394 := by
  rw [tree4394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4392 coloured4392 at child
  try dsimp only [live4394, coloured4394]
  rw [child]
  dsimp only [result4392]
  have child := child1
  unfold live4393 coloured4393 at child
  try dsimp only [live4394, coloured4394]
  rw [child]
  dsimp only [result4393]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4395_agree_conditional : tree4395 = literal4395 := by
  rw [tree4395_def]
  rfl
theorem node4395_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4395 live4395 coloured4395 = result4395 := by
  rw [tree4395_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4396_agree_conditional
    (child0 : tree4394 = literal4394)
    (child1 : tree4395 = literal4395) : tree4396 = literal4396 := by
  rw [tree4396_def, child0, child1]
  rfl
theorem node4396_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4394 live4394 coloured4394 = result4394)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4395 live4395 coloured4395 = result4395) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4396 live4396 coloured4396 = result4396 := by
  rw [tree4396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4394 coloured4394 at child
  try dsimp only [live4396, coloured4396]
  rw [child]
  dsimp only [result4394]
  have child := child1
  unfold live4395 coloured4395 at child
  try dsimp only [live4396, coloured4396]
  rw [child]
  dsimp only [result4395]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4397_agree_conditional : tree4397 = literal4397 := by
  rw [tree4397_def]
  rfl
theorem node4397_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4397 live4397 coloured4397 = result4397 := by
  rw [tree4397_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4398_agree_conditional
    (child0 : tree4396 = literal4396)
    (child1 : tree4397 = literal4397) : tree4398 = literal4398 := by
  rw [tree4398_def, child0, child1]
  rfl
theorem node4398_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4396 live4396 coloured4396 = result4396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4397 live4397 coloured4397 = result4397) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4398 live4398 coloured4398 = result4398 := by
  rw [tree4398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4396 coloured4396 at child
  try dsimp only [live4398, coloured4398]
  rw [child]
  dsimp only [result4396]
  have child := child1
  unfold live4397 coloured4397 at child
  try dsimp only [live4398, coloured4398]
  rw [child]
  dsimp only [result4397]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4399_agree_conditional : tree4399 = literal4399 := by
  rw [tree4399_def]
  rfl
theorem node4399_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4399 live4399 coloured4399 = result4399 := by
  rw [tree4399_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4400_agree_conditional
    (child0 : tree4398 = literal4398)
    (child1 : tree4399 = literal4399) : tree4400 = literal4400 := by
  rw [tree4400_def, child0, child1]
  rfl
theorem node4400_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4398 live4398 coloured4398 = result4398)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4399 live4399 coloured4399 = result4399) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4400 live4400 coloured4400 = result4400 := by
  rw [tree4400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4398 coloured4398 at child
  try dsimp only [live4400, coloured4400]
  rw [child]
  dsimp only [result4398]
  have child := child1
  unfold live4399 coloured4399 at child
  try dsimp only [live4400, coloured4400]
  rw [child]
  dsimp only [result4399]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4401_agree_conditional : tree4401 = literal4401 := by
  rw [tree4401_def]
  rfl
theorem node4401_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4401 live4401 coloured4401 = result4401 := by
  rw [tree4401_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4402_agree_conditional
    (child0 : tree4400 = literal4400)
    (child1 : tree4401 = literal4401) : tree4402 = literal4402 := by
  rw [tree4402_def, child0, child1]
  rfl
theorem node4402_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4400 live4400 coloured4400 = result4400)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4401 live4401 coloured4401 = result4401) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4402 live4402 coloured4402 = result4402 := by
  rw [tree4402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4400 coloured4400 at child
  try dsimp only [live4402, coloured4402]
  rw [child]
  dsimp only [result4400]
  have child := child1
  unfold live4401 coloured4401 at child
  try dsimp only [live4402, coloured4402]
  rw [child]
  dsimp only [result4401]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4403_agree_conditional : tree4403 = literal4403 := by
  rw [tree4403_def]
  rfl
theorem node4403_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4403 live4403 coloured4403 = result4403 := by
  rw [tree4403_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4404_agree_conditional
    (child0 : tree4402 = literal4402)
    (child1 : tree4403 = literal4403) : tree4404 = literal4404 := by
  rw [tree4404_def, child0, child1]
  rfl
theorem node4404_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4402 live4402 coloured4402 = result4402)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4403 live4403 coloured4403 = result4403) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4404 live4404 coloured4404 = result4404 := by
  rw [tree4404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4402 coloured4402 at child
  try dsimp only [live4404, coloured4404]
  rw [child]
  dsimp only [result4402]
  have child := child1
  unfold live4403 coloured4403 at child
  try dsimp only [live4404, coloured4404]
  rw [child]
  dsimp only [result4403]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4405_agree_conditional : tree4405 = literal4405 := by
  rw [tree4405_def]
  rfl
theorem node4405_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4405 live4405 coloured4405 = result4405 := by
  rw [tree4405_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4406_agree_conditional
    (child0 : tree4404 = literal4404)
    (child1 : tree4405 = literal4405) : tree4406 = literal4406 := by
  rw [tree4406_def, child0, child1]
  rfl
theorem node4406_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4404 live4404 coloured4404 = result4404)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4405 live4405 coloured4405 = result4405) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4406 live4406 coloured4406 = result4406 := by
  rw [tree4406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4404 coloured4404 at child
  try dsimp only [live4406, coloured4406]
  rw [child]
  dsimp only [result4404]
  have child := child1
  unfold live4405 coloured4405 at child
  try dsimp only [live4406, coloured4406]
  rw [child]
  dsimp only [result4405]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4407_agree_conditional : tree4407 = literal4407 := by
  rw [tree4407_def]
  rfl
theorem node4407_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4407 live4407 coloured4407 = result4407 := by
  rw [tree4407_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4408_agree_conditional
    (child0 : tree4406 = literal4406)
    (child1 : tree4407 = literal4407) : tree4408 = literal4408 := by
  rw [tree4408_def, child0, child1]
  rfl
theorem node4408_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4406 live4406 coloured4406 = result4406)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4407 live4407 coloured4407 = result4407) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4408 live4408 coloured4408 = result4408 := by
  rw [tree4408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4406 coloured4406 at child
  try dsimp only [live4408, coloured4408]
  rw [child]
  dsimp only [result4406]
  have child := child1
  unfold live4407 coloured4407 at child
  try dsimp only [live4408, coloured4408]
  rw [child]
  dsimp only [result4407]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4409_agree_conditional : tree4409 = literal4409 := by
  rw [tree4409_def]
  rfl
theorem node4409_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4409 live4409 coloured4409 = result4409 := by
  rw [tree4409_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4410_agree_conditional
    (child0 : tree4408 = literal4408)
    (child1 : tree4409 = literal4409) : tree4410 = literal4410 := by
  rw [tree4410_def, child0, child1]
  rfl
theorem node4410_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4408 live4408 coloured4408 = result4408)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4409 live4409 coloured4409 = result4409) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4410 live4410 coloured4410 = result4410 := by
  rw [tree4410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4408 coloured4408 at child
  try dsimp only [live4410, coloured4410]
  rw [child]
  dsimp only [result4408]
  have child := child1
  unfold live4409 coloured4409 at child
  try dsimp only [live4410, coloured4410]
  rw [child]
  dsimp only [result4409]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4411_agree_conditional : tree4411 = literal4411 := by
  rw [tree4411_def]
  rfl
theorem node4411_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4411 live4411 coloured4411 = result4411 := by
  rw [tree4411_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4412_agree_conditional
    (child0 : tree4410 = literal4410)
    (child1 : tree4411 = literal4411) : tree4412 = literal4412 := by
  rw [tree4412_def, child0, child1]
  rfl
theorem node4412_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4410 live4410 coloured4410 = result4410)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4411 live4411 coloured4411 = result4411) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4412 live4412 coloured4412 = result4412 := by
  rw [tree4412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4410 coloured4410 at child
  try dsimp only [live4412, coloured4412]
  rw [child]
  dsimp only [result4410]
  have child := child1
  unfold live4411 coloured4411 at child
  try dsimp only [live4412, coloured4412]
  rw [child]
  dsimp only [result4411]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4413_agree_conditional : tree4413 = literal4413 := by
  rw [tree4413_def]
  rfl
theorem node4413_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4413 live4413 coloured4413 = result4413 := by
  rw [tree4413_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4414_agree_conditional
    (child0 : tree4412 = literal4412)
    (child1 : tree4413 = literal4413) : tree4414 = literal4414 := by
  rw [tree4414_def, child0, child1]
  rfl
theorem node4414_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4412 live4412 coloured4412 = result4412)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4413 live4413 coloured4413 = result4413) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4414 live4414 coloured4414 = result4414 := by
  rw [tree4414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4412 coloured4412 at child
  try dsimp only [live4414, coloured4414]
  rw [child]
  dsimp only [result4412]
  have child := child1
  unfold live4413 coloured4413 at child
  try dsimp only [live4414, coloured4414]
  rw [child]
  dsimp only [result4413]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4415_agree_conditional : tree4415 = literal4415 := by
  rw [tree4415_def]
  rfl
theorem node4415_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4415 live4415 coloured4415 = result4415 := by
  rw [tree4415_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
