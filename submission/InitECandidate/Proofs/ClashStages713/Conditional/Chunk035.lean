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
theorem tree3360_agree_conditional
    (child0 : tree3358 = literal3358)
    (child1 : tree3359 = literal3359) : tree3360 = literal3360 := by
  rw [tree3360_def, child0, child1]
  rfl
theorem node3360_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3358 live3358 coloured3358 = result3358)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3359 live3359 coloured3359 = result3359) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3360 live3360 coloured3360 = result3360 := by
  rw [tree3360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3358 coloured3358 at child
  try dsimp only [live3360, coloured3360]
  rw [child]
  dsimp only [result3358]
  have child := child1
  unfold live3359 coloured3359 at child
  try dsimp only [live3360, coloured3360]
  rw [child]
  dsimp only [result3359]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3361_agree_conditional : tree3361 = literal3361 := by
  rw [tree3361_def]
  rfl
theorem node3361_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3361 live3361 coloured3361 = result3361 := by
  rw [tree3361_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3362_agree_conditional
    (child0 : tree3360 = literal3360)
    (child1 : tree3361 = literal3361) : tree3362 = literal3362 := by
  rw [tree3362_def, child0, child1]
  rfl
theorem node3362_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3360 live3360 coloured3360 = result3360)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3361 live3361 coloured3361 = result3361) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3362 live3362 coloured3362 = result3362 := by
  rw [tree3362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3360 coloured3360 at child
  try dsimp only [live3362, coloured3362]
  rw [child]
  dsimp only [result3360]
  have child := child1
  unfold live3361 coloured3361 at child
  try dsimp only [live3362, coloured3362]
  rw [child]
  dsimp only [result3361]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3363_agree_conditional : tree3363 = literal3363 := by
  rw [tree3363_def]
  rfl
theorem node3363_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3363 live3363 coloured3363 = result3363 := by
  rw [tree3363_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3364_agree_conditional
    (child0 : tree3362 = literal3362)
    (child1 : tree3363 = literal3363) : tree3364 = literal3364 := by
  rw [tree3364_def, child0, child1]
  rfl
theorem node3364_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3362 live3362 coloured3362 = result3362)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3363 live3363 coloured3363 = result3363) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3364 live3364 coloured3364 = result3364 := by
  rw [tree3364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3362 coloured3362 at child
  try dsimp only [live3364, coloured3364]
  rw [child]
  dsimp only [result3362]
  have child := child1
  unfold live3363 coloured3363 at child
  try dsimp only [live3364, coloured3364]
  rw [child]
  dsimp only [result3363]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3365_agree_conditional : tree3365 = literal3365 := by
  rw [tree3365_def]
  rfl
theorem node3365_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3365 live3365 coloured3365 = result3365 := by
  rw [tree3365_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3366_agree_conditional
    (child0 : tree3364 = literal3364)
    (child1 : tree3365 = literal3365) : tree3366 = literal3366 := by
  rw [tree3366_def, child0, child1]
  rfl
theorem node3366_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3364 live3364 coloured3364 = result3364)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3365 live3365 coloured3365 = result3365) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3366 live3366 coloured3366 = result3366 := by
  rw [tree3366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3364 coloured3364 at child
  try dsimp only [live3366, coloured3366]
  rw [child]
  dsimp only [result3364]
  have child := child1
  unfold live3365 coloured3365 at child
  try dsimp only [live3366, coloured3366]
  rw [child]
  dsimp only [result3365]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3367_agree_conditional : tree3367 = literal3367 := by
  rw [tree3367_def]
  rfl
theorem node3367_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3367 live3367 coloured3367 = result3367 := by
  rw [tree3367_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3368_agree_conditional
    (child0 : tree3366 = literal3366)
    (child1 : tree3367 = literal3367) : tree3368 = literal3368 := by
  rw [tree3368_def, child0, child1]
  rfl
theorem node3368_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3366 live3366 coloured3366 = result3366)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3367 live3367 coloured3367 = result3367) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3368 live3368 coloured3368 = result3368 := by
  rw [tree3368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3366 coloured3366 at child
  try dsimp only [live3368, coloured3368]
  rw [child]
  dsimp only [result3366]
  have child := child1
  unfold live3367 coloured3367 at child
  try dsimp only [live3368, coloured3368]
  rw [child]
  dsimp only [result3367]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3369_agree_conditional : tree3369 = literal3369 := by
  rw [tree3369_def]
  rfl
theorem node3369_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3369 live3369 coloured3369 = result3369 := by
  rw [tree3369_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3370_agree_conditional
    (child0 : tree3368 = literal3368)
    (child1 : tree3369 = literal3369) : tree3370 = literal3370 := by
  rw [tree3370_def, child0, child1]
  rfl
theorem node3370_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3368 live3368 coloured3368 = result3368)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3369 live3369 coloured3369 = result3369) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3370 live3370 coloured3370 = result3370 := by
  rw [tree3370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3368 coloured3368 at child
  try dsimp only [live3370, coloured3370]
  rw [child]
  dsimp only [result3368]
  have child := child1
  unfold live3369 coloured3369 at child
  try dsimp only [live3370, coloured3370]
  rw [child]
  dsimp only [result3369]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3371_agree_conditional : tree3371 = literal3371 := by
  rw [tree3371_def]
  rfl
theorem node3371_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3371 live3371 coloured3371 = result3371 := by
  rw [tree3371_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3372_agree_conditional
    (child0 : tree3370 = literal3370)
    (child1 : tree3371 = literal3371) : tree3372 = literal3372 := by
  rw [tree3372_def, child0, child1]
  rfl
theorem node3372_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3370 live3370 coloured3370 = result3370)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3371 live3371 coloured3371 = result3371) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3372 live3372 coloured3372 = result3372 := by
  rw [tree3372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3370 coloured3370 at child
  try dsimp only [live3372, coloured3372]
  rw [child]
  dsimp only [result3370]
  have child := child1
  unfold live3371 coloured3371 at child
  try dsimp only [live3372, coloured3372]
  rw [child]
  dsimp only [result3371]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3373_agree_conditional : tree3373 = literal3373 := by
  rw [tree3373_def]
  rfl
theorem node3373_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3373 live3373 coloured3373 = result3373 := by
  rw [tree3373_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3374_agree_conditional
    (child0 : tree3372 = literal3372)
    (child1 : tree3373 = literal3373) : tree3374 = literal3374 := by
  rw [tree3374_def, child0, child1]
  rfl
theorem node3374_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3372 live3372 coloured3372 = result3372)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3373 live3373 coloured3373 = result3373) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3374 live3374 coloured3374 = result3374 := by
  rw [tree3374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3372 coloured3372 at child
  try dsimp only [live3374, coloured3374]
  rw [child]
  dsimp only [result3372]
  have child := child1
  unfold live3373 coloured3373 at child
  try dsimp only [live3374, coloured3374]
  rw [child]
  dsimp only [result3373]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3375_agree_conditional : tree3375 = literal3375 := by
  rw [tree3375_def]
  rfl
theorem node3375_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3375 live3375 coloured3375 = result3375 := by
  rw [tree3375_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3376_agree_conditional
    (child0 : tree3374 = literal3374)
    (child1 : tree3375 = literal3375) : tree3376 = literal3376 := by
  rw [tree3376_def, child0, child1]
  rfl
theorem node3376_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3374 live3374 coloured3374 = result3374)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3375 live3375 coloured3375 = result3375) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3376 live3376 coloured3376 = result3376 := by
  rw [tree3376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3374 coloured3374 at child
  try dsimp only [live3376, coloured3376]
  rw [child]
  dsimp only [result3374]
  have child := child1
  unfold live3375 coloured3375 at child
  try dsimp only [live3376, coloured3376]
  rw [child]
  dsimp only [result3375]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3377_agree_conditional : tree3377 = literal3377 := by
  rw [tree3377_def]
  rfl
theorem node3377_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3377 live3377 coloured3377 = result3377 := by
  rw [tree3377_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3378_agree_conditional
    (child0 : tree3376 = literal3376)
    (child1 : tree3377 = literal3377) : tree3378 = literal3378 := by
  rw [tree3378_def, child0, child1]
  rfl
theorem node3378_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3376 live3376 coloured3376 = result3376)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3377 live3377 coloured3377 = result3377) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3378 live3378 coloured3378 = result3378 := by
  rw [tree3378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3376 coloured3376 at child
  try dsimp only [live3378, coloured3378]
  rw [child]
  dsimp only [result3376]
  have child := child1
  unfold live3377 coloured3377 at child
  try dsimp only [live3378, coloured3378]
  rw [child]
  dsimp only [result3377]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3379_agree_conditional : tree3379 = literal3379 := by
  rw [tree3379_def]
  rfl
theorem node3379_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3379 live3379 coloured3379 = result3379 := by
  rw [tree3379_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3380_agree_conditional
    (child0 : tree3378 = literal3378)
    (child1 : tree3379 = literal3379) : tree3380 = literal3380 := by
  rw [tree3380_def, child0, child1]
  rfl
theorem node3380_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3378 live3378 coloured3378 = result3378)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3379 live3379 coloured3379 = result3379) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3380 live3380 coloured3380 = result3380 := by
  rw [tree3380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3378 coloured3378 at child
  try dsimp only [live3380, coloured3380]
  rw [child]
  dsimp only [result3378]
  have child := child1
  unfold live3379 coloured3379 at child
  try dsimp only [live3380, coloured3380]
  rw [child]
  dsimp only [result3379]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3381_agree_conditional : tree3381 = literal3381 := by
  rw [tree3381_def]
  rfl
theorem node3381_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3381 live3381 coloured3381 = result3381 := by
  rw [tree3381_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3382_agree_conditional
    (child0 : tree3380 = literal3380)
    (child1 : tree3381 = literal3381) : tree3382 = literal3382 := by
  rw [tree3382_def, child0, child1]
  rfl
theorem node3382_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3380 live3380 coloured3380 = result3380)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3381 live3381 coloured3381 = result3381) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3382 live3382 coloured3382 = result3382 := by
  rw [tree3382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3380 coloured3380 at child
  try dsimp only [live3382, coloured3382]
  rw [child]
  dsimp only [result3380]
  have child := child1
  unfold live3381 coloured3381 at child
  try dsimp only [live3382, coloured3382]
  rw [child]
  dsimp only [result3381]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3383_agree_conditional : tree3383 = literal3383 := by
  rw [tree3383_def]
  rfl
theorem node3383_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3383 live3383 coloured3383 = result3383 := by
  rw [tree3383_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3384_agree_conditional
    (child0 : tree3382 = literal3382)
    (child1 : tree3383 = literal3383) : tree3384 = literal3384 := by
  rw [tree3384_def, child0, child1]
  rfl
theorem node3384_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3382 live3382 coloured3382 = result3382)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3383 live3383 coloured3383 = result3383) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3384 live3384 coloured3384 = result3384 := by
  rw [tree3384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3382 coloured3382 at child
  try dsimp only [live3384, coloured3384]
  rw [child]
  dsimp only [result3382]
  have child := child1
  unfold live3383 coloured3383 at child
  try dsimp only [live3384, coloured3384]
  rw [child]
  dsimp only [result3383]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3385_agree_conditional : tree3385 = literal3385 := by
  rw [tree3385_def]
  rfl
theorem node3385_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3385 live3385 coloured3385 = result3385 := by
  rw [tree3385_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3386_agree_conditional
    (child0 : tree3384 = literal3384)
    (child1 : tree3385 = literal3385) : tree3386 = literal3386 := by
  rw [tree3386_def, child0, child1]
  rfl
theorem node3386_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3384 live3384 coloured3384 = result3384)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3385 live3385 coloured3385 = result3385) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3386 live3386 coloured3386 = result3386 := by
  rw [tree3386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3384 coloured3384 at child
  try dsimp only [live3386, coloured3386]
  rw [child]
  dsimp only [result3384]
  have child := child1
  unfold live3385 coloured3385 at child
  try dsimp only [live3386, coloured3386]
  rw [child]
  dsimp only [result3385]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3387_agree_conditional : tree3387 = literal3387 := by
  rw [tree3387_def]
  rfl
theorem node3387_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3387 live3387 coloured3387 = result3387 := by
  rw [tree3387_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3388_agree_conditional
    (child0 : tree3386 = literal3386)
    (child1 : tree3387 = literal3387) : tree3388 = literal3388 := by
  rw [tree3388_def, child0, child1]
  rfl
theorem node3388_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3386 live3386 coloured3386 = result3386)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3387 live3387 coloured3387 = result3387) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3388 live3388 coloured3388 = result3388 := by
  rw [tree3388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3386 coloured3386 at child
  try dsimp only [live3388, coloured3388]
  rw [child]
  dsimp only [result3386]
  have child := child1
  unfold live3387 coloured3387 at child
  try dsimp only [live3388, coloured3388]
  rw [child]
  dsimp only [result3387]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3389_agree_conditional : tree3389 = literal3389 := by
  rw [tree3389_def]
  rfl
theorem node3389_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3389 live3389 coloured3389 = result3389 := by
  rw [tree3389_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3390_agree_conditional
    (child0 : tree3388 = literal3388)
    (child1 : tree3389 = literal3389) : tree3390 = literal3390 := by
  rw [tree3390_def, child0, child1]
  rfl
theorem node3390_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3388 live3388 coloured3388 = result3388)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3389 live3389 coloured3389 = result3389) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3390 live3390 coloured3390 = result3390 := by
  rw [tree3390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3388 coloured3388 at child
  try dsimp only [live3390, coloured3390]
  rw [child]
  dsimp only [result3388]
  have child := child1
  unfold live3389 coloured3389 at child
  try dsimp only [live3390, coloured3390]
  rw [child]
  dsimp only [result3389]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3391_agree_conditional : tree3391 = literal3391 := by
  rw [tree3391_def]
  rfl
theorem node3391_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3391 live3391 coloured3391 = result3391 := by
  rw [tree3391_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3392_agree_conditional
    (child0 : tree3390 = literal3390)
    (child1 : tree3391 = literal3391) : tree3392 = literal3392 := by
  rw [tree3392_def, child0, child1]
  rfl
theorem node3392_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3390 live3390 coloured3390 = result3390)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3391 live3391 coloured3391 = result3391) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3392 live3392 coloured3392 = result3392 := by
  rw [tree3392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3390 coloured3390 at child
  try dsimp only [live3392, coloured3392]
  rw [child]
  dsimp only [result3390]
  have child := child1
  unfold live3391 coloured3391 at child
  try dsimp only [live3392, coloured3392]
  rw [child]
  dsimp only [result3391]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3393_agree_conditional : tree3393 = literal3393 := by
  rw [tree3393_def]
  rfl
theorem node3393_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3393 live3393 coloured3393 = result3393 := by
  rw [tree3393_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3394_agree_conditional
    (child0 : tree3392 = literal3392)
    (child1 : tree3393 = literal3393) : tree3394 = literal3394 := by
  rw [tree3394_def, child0, child1]
  rfl
theorem node3394_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3392 live3392 coloured3392 = result3392)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3393 live3393 coloured3393 = result3393) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3394 live3394 coloured3394 = result3394 := by
  rw [tree3394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3392 coloured3392 at child
  try dsimp only [live3394, coloured3394]
  rw [child]
  dsimp only [result3392]
  have child := child1
  unfold live3393 coloured3393 at child
  try dsimp only [live3394, coloured3394]
  rw [child]
  dsimp only [result3393]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3395_agree_conditional : tree3395 = literal3395 := by
  rw [tree3395_def]
  rfl
theorem node3395_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3395 live3395 coloured3395 = result3395 := by
  rw [tree3395_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3396_agree_conditional
    (child0 : tree3394 = literal3394)
    (child1 : tree3395 = literal3395) : tree3396 = literal3396 := by
  rw [tree3396_def, child0, child1]
  rfl
theorem node3396_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3394 live3394 coloured3394 = result3394)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3395 live3395 coloured3395 = result3395) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3396 live3396 coloured3396 = result3396 := by
  rw [tree3396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3394 coloured3394 at child
  try dsimp only [live3396, coloured3396]
  rw [child]
  dsimp only [result3394]
  have child := child1
  unfold live3395 coloured3395 at child
  try dsimp only [live3396, coloured3396]
  rw [child]
  dsimp only [result3395]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3397_agree_conditional : tree3397 = literal3397 := by
  rw [tree3397_def]
  rfl
theorem node3397_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3397 live3397 coloured3397 = result3397 := by
  rw [tree3397_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3398_agree_conditional
    (child0 : tree3396 = literal3396)
    (child1 : tree3397 = literal3397) : tree3398 = literal3398 := by
  rw [tree3398_def, child0, child1]
  rfl
theorem node3398_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3396 live3396 coloured3396 = result3396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3397 live3397 coloured3397 = result3397) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3398 live3398 coloured3398 = result3398 := by
  rw [tree3398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3396 coloured3396 at child
  try dsimp only [live3398, coloured3398]
  rw [child]
  dsimp only [result3396]
  have child := child1
  unfold live3397 coloured3397 at child
  try dsimp only [live3398, coloured3398]
  rw [child]
  dsimp only [result3397]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3399_agree_conditional : tree3399 = literal3399 := by
  rw [tree3399_def]
  rfl
theorem node3399_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3399 live3399 coloured3399 = result3399 := by
  rw [tree3399_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3400_agree_conditional
    (child0 : tree3398 = literal3398)
    (child1 : tree3399 = literal3399) : tree3400 = literal3400 := by
  rw [tree3400_def, child0, child1]
  rfl
theorem node3400_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3398 live3398 coloured3398 = result3398)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3399 live3399 coloured3399 = result3399) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3400 live3400 coloured3400 = result3400 := by
  rw [tree3400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3398 coloured3398 at child
  try dsimp only [live3400, coloured3400]
  rw [child]
  dsimp only [result3398]
  have child := child1
  unfold live3399 coloured3399 at child
  try dsimp only [live3400, coloured3400]
  rw [child]
  dsimp only [result3399]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3401_agree_conditional : tree3401 = literal3401 := by
  rw [tree3401_def]
  rfl
theorem node3401_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3401 live3401 coloured3401 = result3401 := by
  rw [tree3401_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3402_agree_conditional
    (child0 : tree3400 = literal3400)
    (child1 : tree3401 = literal3401) : tree3402 = literal3402 := by
  rw [tree3402_def, child0, child1]
  rfl
theorem node3402_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3400 live3400 coloured3400 = result3400)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3401 live3401 coloured3401 = result3401) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3402 live3402 coloured3402 = result3402 := by
  rw [tree3402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3400 coloured3400 at child
  try dsimp only [live3402, coloured3402]
  rw [child]
  dsimp only [result3400]
  have child := child1
  unfold live3401 coloured3401 at child
  try dsimp only [live3402, coloured3402]
  rw [child]
  dsimp only [result3401]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3403_agree_conditional : tree3403 = literal3403 := by
  rw [tree3403_def]
  rfl
theorem node3403_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3403 live3403 coloured3403 = result3403 := by
  rw [tree3403_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3404_agree_conditional
    (child0 : tree3402 = literal3402)
    (child1 : tree3403 = literal3403) : tree3404 = literal3404 := by
  rw [tree3404_def, child0, child1]
  rfl
theorem node3404_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3402 live3402 coloured3402 = result3402)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3403 live3403 coloured3403 = result3403) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3404 live3404 coloured3404 = result3404 := by
  rw [tree3404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3402 coloured3402 at child
  try dsimp only [live3404, coloured3404]
  rw [child]
  dsimp only [result3402]
  have child := child1
  unfold live3403 coloured3403 at child
  try dsimp only [live3404, coloured3404]
  rw [child]
  dsimp only [result3403]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3405_agree_conditional : tree3405 = literal3405 := by
  rw [tree3405_def]
  rfl
theorem node3405_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3405 live3405 coloured3405 = result3405 := by
  rw [tree3405_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3406_agree_conditional
    (child0 : tree3404 = literal3404)
    (child1 : tree3405 = literal3405) : tree3406 = literal3406 := by
  rw [tree3406_def, child0, child1]
  rfl
theorem node3406_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3404 live3404 coloured3404 = result3404)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3405 live3405 coloured3405 = result3405) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3406 live3406 coloured3406 = result3406 := by
  rw [tree3406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3404 coloured3404 at child
  try dsimp only [live3406, coloured3406]
  rw [child]
  dsimp only [result3404]
  have child := child1
  unfold live3405 coloured3405 at child
  try dsimp only [live3406, coloured3406]
  rw [child]
  dsimp only [result3405]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3407_agree_conditional : tree3407 = literal3407 := by
  rw [tree3407_def]
  rfl
theorem node3407_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3407 live3407 coloured3407 = result3407 := by
  rw [tree3407_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3408_agree_conditional
    (child0 : tree3406 = literal3406)
    (child1 : tree3407 = literal3407) : tree3408 = literal3408 := by
  rw [tree3408_def, child0, child1]
  rfl
theorem node3408_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3406 live3406 coloured3406 = result3406)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3407 live3407 coloured3407 = result3407) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3408 live3408 coloured3408 = result3408 := by
  rw [tree3408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3406 coloured3406 at child
  try dsimp only [live3408, coloured3408]
  rw [child]
  dsimp only [result3406]
  have child := child1
  unfold live3407 coloured3407 at child
  try dsimp only [live3408, coloured3408]
  rw [child]
  dsimp only [result3407]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3409_agree_conditional : tree3409 = literal3409 := by
  rw [tree3409_def]
  rfl
theorem node3409_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3409 live3409 coloured3409 = result3409 := by
  rw [tree3409_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3410_agree_conditional
    (child0 : tree3408 = literal3408)
    (child1 : tree3409 = literal3409) : tree3410 = literal3410 := by
  rw [tree3410_def, child0, child1]
  rfl
theorem node3410_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3408 live3408 coloured3408 = result3408)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3409 live3409 coloured3409 = result3409) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3410 live3410 coloured3410 = result3410 := by
  rw [tree3410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3408 coloured3408 at child
  try dsimp only [live3410, coloured3410]
  rw [child]
  dsimp only [result3408]
  have child := child1
  unfold live3409 coloured3409 at child
  try dsimp only [live3410, coloured3410]
  rw [child]
  dsimp only [result3409]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3411_agree_conditional : tree3411 = literal3411 := by
  rw [tree3411_def]
  rfl
theorem node3411_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3411 live3411 coloured3411 = result3411 := by
  rw [tree3411_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3412_agree_conditional
    (child0 : tree3410 = literal3410)
    (child1 : tree3411 = literal3411) : tree3412 = literal3412 := by
  rw [tree3412_def, child0, child1]
  rfl
theorem node3412_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3410 live3410 coloured3410 = result3410)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3411 live3411 coloured3411 = result3411) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3412 live3412 coloured3412 = result3412 := by
  rw [tree3412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3410 coloured3410 at child
  try dsimp only [live3412, coloured3412]
  rw [child]
  dsimp only [result3410]
  have child := child1
  unfold live3411 coloured3411 at child
  try dsimp only [live3412, coloured3412]
  rw [child]
  dsimp only [result3411]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3413_agree_conditional : tree3413 = literal3413 := by
  rw [tree3413_def]
  rfl
theorem node3413_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3413 live3413 coloured3413 = result3413 := by
  rw [tree3413_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3414_agree_conditional
    (child0 : tree3412 = literal3412)
    (child1 : tree3413 = literal3413) : tree3414 = literal3414 := by
  rw [tree3414_def, child0, child1]
  rfl
theorem node3414_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3412 live3412 coloured3412 = result3412)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3413 live3413 coloured3413 = result3413) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3414 live3414 coloured3414 = result3414 := by
  rw [tree3414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3412 coloured3412 at child
  try dsimp only [live3414, coloured3414]
  rw [child]
  dsimp only [result3412]
  have child := child1
  unfold live3413 coloured3413 at child
  try dsimp only [live3414, coloured3414]
  rw [child]
  dsimp only [result3413]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3415_agree_conditional : tree3415 = literal3415 := by
  rw [tree3415_def]
  rfl
theorem node3415_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3415 live3415 coloured3415 = result3415 := by
  rw [tree3415_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3416_agree_conditional
    (child0 : tree3414 = literal3414)
    (child1 : tree3415 = literal3415) : tree3416 = literal3416 := by
  rw [tree3416_def, child0, child1]
  rfl
theorem node3416_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3414 live3414 coloured3414 = result3414)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3415 live3415 coloured3415 = result3415) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3416 live3416 coloured3416 = result3416 := by
  rw [tree3416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3414 coloured3414 at child
  try dsimp only [live3416, coloured3416]
  rw [child]
  dsimp only [result3414]
  have child := child1
  unfold live3415 coloured3415 at child
  try dsimp only [live3416, coloured3416]
  rw [child]
  dsimp only [result3415]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3417_agree_conditional : tree3417 = literal3417 := by
  rw [tree3417_def]
  rfl
theorem node3417_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3417 live3417 coloured3417 = result3417 := by
  rw [tree3417_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3418_agree_conditional
    (child0 : tree3416 = literal3416)
    (child1 : tree3417 = literal3417) : tree3418 = literal3418 := by
  rw [tree3418_def, child0, child1]
  rfl
theorem node3418_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3416 live3416 coloured3416 = result3416)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3417 live3417 coloured3417 = result3417) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3418 live3418 coloured3418 = result3418 := by
  rw [tree3418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3416 coloured3416 at child
  try dsimp only [live3418, coloured3418]
  rw [child]
  dsimp only [result3416]
  have child := child1
  unfold live3417 coloured3417 at child
  try dsimp only [live3418, coloured3418]
  rw [child]
  dsimp only [result3417]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3419_agree_conditional : tree3419 = literal3419 := by
  rw [tree3419_def]
  rfl
theorem node3419_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3419 live3419 coloured3419 = result3419 := by
  rw [tree3419_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3420_agree_conditional
    (child0 : tree3418 = literal3418)
    (child1 : tree3419 = literal3419) : tree3420 = literal3420 := by
  rw [tree3420_def, child0, child1]
  rfl
theorem node3420_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3418 live3418 coloured3418 = result3418)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3419 live3419 coloured3419 = result3419) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3420 live3420 coloured3420 = result3420 := by
  rw [tree3420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3418 coloured3418 at child
  try dsimp only [live3420, coloured3420]
  rw [child]
  dsimp only [result3418]
  have child := child1
  unfold live3419 coloured3419 at child
  try dsimp only [live3420, coloured3420]
  rw [child]
  dsimp only [result3419]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3421_agree_conditional : tree3421 = literal3421 := by
  rw [tree3421_def]
  rfl
theorem node3421_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3421 live3421 coloured3421 = result3421 := by
  rw [tree3421_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3422_agree_conditional
    (child0 : tree3420 = literal3420)
    (child1 : tree3421 = literal3421) : tree3422 = literal3422 := by
  rw [tree3422_def, child0, child1]
  rfl
theorem node3422_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3420 live3420 coloured3420 = result3420)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3421 live3421 coloured3421 = result3421) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3422 live3422 coloured3422 = result3422 := by
  rw [tree3422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3420 coloured3420 at child
  try dsimp only [live3422, coloured3422]
  rw [child]
  dsimp only [result3420]
  have child := child1
  unfold live3421 coloured3421 at child
  try dsimp only [live3422, coloured3422]
  rw [child]
  dsimp only [result3421]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3423_agree_conditional : tree3423 = literal3423 := by
  rw [tree3423_def]
  rfl
theorem node3423_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3423 live3423 coloured3423 = result3423 := by
  rw [tree3423_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3424_agree_conditional
    (child0 : tree3422 = literal3422)
    (child1 : tree3423 = literal3423) : tree3424 = literal3424 := by
  rw [tree3424_def, child0, child1]
  rfl
theorem node3424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3422 live3422 coloured3422 = result3422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3423 live3423 coloured3423 = result3423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3424 live3424 coloured3424 = result3424 := by
  rw [tree3424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3422 coloured3422 at child
  try dsimp only [live3424, coloured3424]
  rw [child]
  dsimp only [result3422]
  have child := child1
  unfold live3423 coloured3423 at child
  try dsimp only [live3424, coloured3424]
  rw [child]
  dsimp only [result3423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3425_agree_conditional : tree3425 = literal3425 := by
  rw [tree3425_def]
  rfl
theorem node3425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3425 live3425 coloured3425 = result3425 := by
  rw [tree3425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3426_agree_conditional
    (child0 : tree3424 = literal3424)
    (child1 : tree3425 = literal3425) : tree3426 = literal3426 := by
  rw [tree3426_def, child0, child1]
  rfl
theorem node3426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3424 live3424 coloured3424 = result3424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3425 live3425 coloured3425 = result3425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3426 live3426 coloured3426 = result3426 := by
  rw [tree3426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3424 coloured3424 at child
  try dsimp only [live3426, coloured3426]
  rw [child]
  dsimp only [result3424]
  have child := child1
  unfold live3425 coloured3425 at child
  try dsimp only [live3426, coloured3426]
  rw [child]
  dsimp only [result3425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3427_agree_conditional : tree3427 = literal3427 := by
  rw [tree3427_def]
  rfl
theorem node3427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3427 live3427 coloured3427 = result3427 := by
  rw [tree3427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3428_agree_conditional
    (child0 : tree3426 = literal3426)
    (child1 : tree3427 = literal3427) : tree3428 = literal3428 := by
  rw [tree3428_def, child0, child1]
  rfl
theorem node3428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3426 live3426 coloured3426 = result3426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3427 live3427 coloured3427 = result3427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3428 live3428 coloured3428 = result3428 := by
  rw [tree3428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3426 coloured3426 at child
  try dsimp only [live3428, coloured3428]
  rw [child]
  dsimp only [result3426]
  have child := child1
  unfold live3427 coloured3427 at child
  try dsimp only [live3428, coloured3428]
  rw [child]
  dsimp only [result3427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3429_agree_conditional : tree3429 = literal3429 := by
  rw [tree3429_def]
  rfl
theorem node3429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3429 live3429 coloured3429 = result3429 := by
  rw [tree3429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3430_agree_conditional
    (child0 : tree3428 = literal3428)
    (child1 : tree3429 = literal3429) : tree3430 = literal3430 := by
  rw [tree3430_def, child0, child1]
  rfl
theorem node3430_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3428 live3428 coloured3428 = result3428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3429 live3429 coloured3429 = result3429) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3430 live3430 coloured3430 = result3430 := by
  rw [tree3430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3428 coloured3428 at child
  try dsimp only [live3430, coloured3430]
  rw [child]
  dsimp only [result3428]
  have child := child1
  unfold live3429 coloured3429 at child
  try dsimp only [live3430, coloured3430]
  rw [child]
  dsimp only [result3429]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3431_agree_conditional : tree3431 = literal3431 := by
  rw [tree3431_def]
  rfl
theorem node3431_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3431 live3431 coloured3431 = result3431 := by
  rw [tree3431_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3432_agree_conditional
    (child0 : tree3430 = literal3430)
    (child1 : tree3431 = literal3431) : tree3432 = literal3432 := by
  rw [tree3432_def, child0, child1]
  rfl
theorem node3432_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3430 live3430 coloured3430 = result3430)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3431 live3431 coloured3431 = result3431) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3432 live3432 coloured3432 = result3432 := by
  rw [tree3432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3430 coloured3430 at child
  try dsimp only [live3432, coloured3432]
  rw [child]
  dsimp only [result3430]
  have child := child1
  unfold live3431 coloured3431 at child
  try dsimp only [live3432, coloured3432]
  rw [child]
  dsimp only [result3431]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3433_agree_conditional : tree3433 = literal3433 := by
  rw [tree3433_def]
  rfl
theorem node3433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3433 live3433 coloured3433 = result3433 := by
  rw [tree3433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3434_agree_conditional
    (child0 : tree3432 = literal3432)
    (child1 : tree3433 = literal3433) : tree3434 = literal3434 := by
  rw [tree3434_def, child0, child1]
  rfl
theorem node3434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3432 live3432 coloured3432 = result3432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3433 live3433 coloured3433 = result3433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3434 live3434 coloured3434 = result3434 := by
  rw [tree3434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3432 coloured3432 at child
  try dsimp only [live3434, coloured3434]
  rw [child]
  dsimp only [result3432]
  have child := child1
  unfold live3433 coloured3433 at child
  try dsimp only [live3434, coloured3434]
  rw [child]
  dsimp only [result3433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3435_agree_conditional : tree3435 = literal3435 := by
  rw [tree3435_def]
  rfl
theorem node3435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3435 live3435 coloured3435 = result3435 := by
  rw [tree3435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3436_agree_conditional
    (child0 : tree3434 = literal3434)
    (child1 : tree3435 = literal3435) : tree3436 = literal3436 := by
  rw [tree3436_def, child0, child1]
  rfl
theorem node3436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3434 live3434 coloured3434 = result3434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3435 live3435 coloured3435 = result3435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3436 live3436 coloured3436 = result3436 := by
  rw [tree3436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3434 coloured3434 at child
  try dsimp only [live3436, coloured3436]
  rw [child]
  dsimp only [result3434]
  have child := child1
  unfold live3435 coloured3435 at child
  try dsimp only [live3436, coloured3436]
  rw [child]
  dsimp only [result3435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3437_agree_conditional : tree3437 = literal3437 := by
  rw [tree3437_def]
  rfl
theorem node3437_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3437 live3437 coloured3437 = result3437 := by
  rw [tree3437_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3438_agree_conditional
    (child0 : tree3436 = literal3436)
    (child1 : tree3437 = literal3437) : tree3438 = literal3438 := by
  rw [tree3438_def, child0, child1]
  rfl
theorem node3438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3436 live3436 coloured3436 = result3436)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3437 live3437 coloured3437 = result3437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3438 live3438 coloured3438 = result3438 := by
  rw [tree3438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3436 coloured3436 at child
  try dsimp only [live3438, coloured3438]
  rw [child]
  dsimp only [result3436]
  have child := child1
  unfold live3437 coloured3437 at child
  try dsimp only [live3438, coloured3438]
  rw [child]
  dsimp only [result3437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3439_agree_conditional : tree3439 = literal3439 := by
  rw [tree3439_def]
  rfl
theorem node3439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3439 live3439 coloured3439 = result3439 := by
  rw [tree3439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3440_agree_conditional
    (child0 : tree3438 = literal3438)
    (child1 : tree3439 = literal3439) : tree3440 = literal3440 := by
  rw [tree3440_def, child0, child1]
  rfl
theorem node3440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3438 live3438 coloured3438 = result3438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3439 live3439 coloured3439 = result3439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3440 live3440 coloured3440 = result3440 := by
  rw [tree3440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3438 coloured3438 at child
  try dsimp only [live3440, coloured3440]
  rw [child]
  dsimp only [result3438]
  have child := child1
  unfold live3439 coloured3439 at child
  try dsimp only [live3440, coloured3440]
  rw [child]
  dsimp only [result3439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3441_agree_conditional : tree3441 = literal3441 := by
  rw [tree3441_def]
  rfl
theorem node3441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3441 live3441 coloured3441 = result3441 := by
  rw [tree3441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3442_agree_conditional
    (child0 : tree3440 = literal3440)
    (child1 : tree3441 = literal3441) : tree3442 = literal3442 := by
  rw [tree3442_def, child0, child1]
  rfl
theorem node3442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3440 live3440 coloured3440 = result3440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3441 live3441 coloured3441 = result3441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3442 live3442 coloured3442 = result3442 := by
  rw [tree3442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3440 coloured3440 at child
  try dsimp only [live3442, coloured3442]
  rw [child]
  dsimp only [result3440]
  have child := child1
  unfold live3441 coloured3441 at child
  try dsimp only [live3442, coloured3442]
  rw [child]
  dsimp only [result3441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3443_agree_conditional : tree3443 = literal3443 := by
  rw [tree3443_def]
  rfl
theorem node3443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3443 live3443 coloured3443 = result3443 := by
  rw [tree3443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3444_agree_conditional
    (child0 : tree3442 = literal3442)
    (child1 : tree3443 = literal3443) : tree3444 = literal3444 := by
  rw [tree3444_def, child0, child1]
  rfl
theorem node3444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3442 live3442 coloured3442 = result3442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3443 live3443 coloured3443 = result3443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3444 live3444 coloured3444 = result3444 := by
  rw [tree3444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3442 coloured3442 at child
  try dsimp only [live3444, coloured3444]
  rw [child]
  dsimp only [result3442]
  have child := child1
  unfold live3443 coloured3443 at child
  try dsimp only [live3444, coloured3444]
  rw [child]
  dsimp only [result3443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3445_agree_conditional : tree3445 = literal3445 := by
  rw [tree3445_def]
  rfl
theorem node3445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3445 live3445 coloured3445 = result3445 := by
  rw [tree3445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3446_agree_conditional
    (child0 : tree3444 = literal3444)
    (child1 : tree3445 = literal3445) : tree3446 = literal3446 := by
  rw [tree3446_def, child0, child1]
  rfl
theorem node3446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3444 live3444 coloured3444 = result3444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3445 live3445 coloured3445 = result3445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3446 live3446 coloured3446 = result3446 := by
  rw [tree3446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3444 coloured3444 at child
  try dsimp only [live3446, coloured3446]
  rw [child]
  dsimp only [result3444]
  have child := child1
  unfold live3445 coloured3445 at child
  try dsimp only [live3446, coloured3446]
  rw [child]
  dsimp only [result3445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3447_agree_conditional : tree3447 = literal3447 := by
  rw [tree3447_def]
  rfl
theorem node3447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3447 live3447 coloured3447 = result3447 := by
  rw [tree3447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3448_agree_conditional
    (child0 : tree3446 = literal3446)
    (child1 : tree3447 = literal3447) : tree3448 = literal3448 := by
  rw [tree3448_def, child0, child1]
  rfl
theorem node3448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3446 live3446 coloured3446 = result3446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3447 live3447 coloured3447 = result3447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3448 live3448 coloured3448 = result3448 := by
  rw [tree3448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3446 coloured3446 at child
  try dsimp only [live3448, coloured3448]
  rw [child]
  dsimp only [result3446]
  have child := child1
  unfold live3447 coloured3447 at child
  try dsimp only [live3448, coloured3448]
  rw [child]
  dsimp only [result3447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3449_agree_conditional : tree3449 = literal3449 := by
  rw [tree3449_def]
  rfl
theorem node3449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3449 live3449 coloured3449 = result3449 := by
  rw [tree3449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3450_agree_conditional
    (child0 : tree3448 = literal3448)
    (child1 : tree3449 = literal3449) : tree3450 = literal3450 := by
  rw [tree3450_def, child0, child1]
  rfl
theorem node3450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3448 live3448 coloured3448 = result3448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3449 live3449 coloured3449 = result3449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3450 live3450 coloured3450 = result3450 := by
  rw [tree3450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3448 coloured3448 at child
  try dsimp only [live3450, coloured3450]
  rw [child]
  dsimp only [result3448]
  have child := child1
  unfold live3449 coloured3449 at child
  try dsimp only [live3450, coloured3450]
  rw [child]
  dsimp only [result3449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3451_agree_conditional : tree3451 = literal3451 := by
  rw [tree3451_def]
  rfl
theorem node3451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3451 live3451 coloured3451 = result3451 := by
  rw [tree3451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3452_agree_conditional
    (child0 : tree3450 = literal3450)
    (child1 : tree3451 = literal3451) : tree3452 = literal3452 := by
  rw [tree3452_def, child0, child1]
  rfl
theorem node3452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3450 live3450 coloured3450 = result3450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3451 live3451 coloured3451 = result3451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3452 live3452 coloured3452 = result3452 := by
  rw [tree3452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3450 coloured3450 at child
  try dsimp only [live3452, coloured3452]
  rw [child]
  dsimp only [result3450]
  have child := child1
  unfold live3451 coloured3451 at child
  try dsimp only [live3452, coloured3452]
  rw [child]
  dsimp only [result3451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3453_agree_conditional : tree3453 = literal3453 := by
  rw [tree3453_def]
  rfl
theorem node3453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3453 live3453 coloured3453 = result3453 := by
  rw [tree3453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3454_agree_conditional
    (child0 : tree3452 = literal3452)
    (child1 : tree3453 = literal3453) : tree3454 = literal3454 := by
  rw [tree3454_def, child0, child1]
  rfl
theorem node3454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3452 live3452 coloured3452 = result3452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3453 live3453 coloured3453 = result3453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3454 live3454 coloured3454 = result3454 := by
  rw [tree3454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3452 coloured3452 at child
  try dsimp only [live3454, coloured3454]
  rw [child]
  dsimp only [result3452]
  have child := child1
  unfold live3453 coloured3453 at child
  try dsimp only [live3454, coloured3454]
  rw [child]
  dsimp only [result3453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3455_agree_conditional : tree3455 = literal3455 := by
  rw [tree3455_def]
  rfl
theorem node3455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3455 live3455 coloured3455 = result3455 := by
  rw [tree3455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
