import InitECandidate.Proofs.ClashStages713.Proof34
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree3360_agree : tree3360 = literal3360 := by
  rw [tree3360_def, tree3358_agree, tree3359_agree]
  rfl
theorem node3360_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3360 live3360 coloured3360 = result3360 := by
  rw [tree3360_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3358_eq
  unfold live3358 coloured3358 at child
  try dsimp only [live3360, coloured3360]
  rw [child]
  dsimp only [result3358]
  have child := node3359_eq
  unfold live3359 coloured3359 at child
  try dsimp only [live3360, coloured3360]
  rw [child]
  dsimp only [result3359]
  try dsimp only [colour, result3360]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3361_agree : tree3361 = literal3361 := by
  rw [tree3361_def]
  rfl
theorem node3361_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3361 live3361 coloured3361 = result3361 := by
  rw [tree3361_def]
  try dsimp only [colour, result3361]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3362_agree : tree3362 = literal3362 := by
  rw [tree3362_def, tree3360_agree, tree3361_agree]
  rfl
theorem node3362_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3362 live3362 coloured3362 = result3362 := by
  rw [tree3362_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3360_eq
  unfold live3360 coloured3360 at child
  try dsimp only [live3362, coloured3362]
  rw [child]
  dsimp only [result3360]
  have child := node3361_eq
  unfold live3361 coloured3361 at child
  try dsimp only [live3362, coloured3362]
  rw [child]
  dsimp only [result3361]
  try dsimp only [colour, result3362]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3363_agree : tree3363 = literal3363 := by
  rw [tree3363_def]
  rfl
theorem node3363_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3363 live3363 coloured3363 = result3363 := by
  rw [tree3363_def]
  try dsimp only [colour, result3363]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3364_agree : tree3364 = literal3364 := by
  rw [tree3364_def, tree3362_agree, tree3363_agree]
  rfl
theorem node3364_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3364 live3364 coloured3364 = result3364 := by
  rw [tree3364_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3362_eq
  unfold live3362 coloured3362 at child
  try dsimp only [live3364, coloured3364]
  rw [child]
  dsimp only [result3362]
  have child := node3363_eq
  unfold live3363 coloured3363 at child
  try dsimp only [live3364, coloured3364]
  rw [child]
  dsimp only [result3363]
  try dsimp only [colour, result3364]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3365_agree : tree3365 = literal3365 := by
  rw [tree3365_def]
  rfl
theorem node3365_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3365 live3365 coloured3365 = result3365 := by
  rw [tree3365_def]
  try dsimp only [colour, result3365]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3366_agree : tree3366 = literal3366 := by
  rw [tree3366_def, tree3364_agree, tree3365_agree]
  rfl
theorem node3366_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3366 live3366 coloured3366 = result3366 := by
  rw [tree3366_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3364_eq
  unfold live3364 coloured3364 at child
  try dsimp only [live3366, coloured3366]
  rw [child]
  dsimp only [result3364]
  have child := node3365_eq
  unfold live3365 coloured3365 at child
  try dsimp only [live3366, coloured3366]
  rw [child]
  dsimp only [result3365]
  try dsimp only [colour, result3366]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3367_agree : tree3367 = literal3367 := by
  rw [tree3367_def]
  rfl
theorem node3367_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3367 live3367 coloured3367 = result3367 := by
  rw [tree3367_def]
  try dsimp only [colour, result3367]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3368_agree : tree3368 = literal3368 := by
  rw [tree3368_def, tree3366_agree, tree3367_agree]
  rfl
theorem node3368_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3368 live3368 coloured3368 = result3368 := by
  rw [tree3368_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3366_eq
  unfold live3366 coloured3366 at child
  try dsimp only [live3368, coloured3368]
  rw [child]
  dsimp only [result3366]
  have child := node3367_eq
  unfold live3367 coloured3367 at child
  try dsimp only [live3368, coloured3368]
  rw [child]
  dsimp only [result3367]
  try dsimp only [colour, result3368]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3369_agree : tree3369 = literal3369 := by
  rw [tree3369_def]
  rfl
theorem node3369_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3369 live3369 coloured3369 = result3369 := by
  rw [tree3369_def]
  try dsimp only [colour, result3369]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3370_agree : tree3370 = literal3370 := by
  rw [tree3370_def, tree3368_agree, tree3369_agree]
  rfl
theorem node3370_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3370 live3370 coloured3370 = result3370 := by
  rw [tree3370_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3368_eq
  unfold live3368 coloured3368 at child
  try dsimp only [live3370, coloured3370]
  rw [child]
  dsimp only [result3368]
  have child := node3369_eq
  unfold live3369 coloured3369 at child
  try dsimp only [live3370, coloured3370]
  rw [child]
  dsimp only [result3369]
  try dsimp only [colour, result3370]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3371_agree : tree3371 = literal3371 := by
  rw [tree3371_def]
  rfl
theorem node3371_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3371 live3371 coloured3371 = result3371 := by
  rw [tree3371_def]
  try dsimp only [colour, result3371]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3372_agree : tree3372 = literal3372 := by
  rw [tree3372_def, tree3370_agree, tree3371_agree]
  rfl
theorem node3372_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3372 live3372 coloured3372 = result3372 := by
  rw [tree3372_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3370_eq
  unfold live3370 coloured3370 at child
  try dsimp only [live3372, coloured3372]
  rw [child]
  dsimp only [result3370]
  have child := node3371_eq
  unfold live3371 coloured3371 at child
  try dsimp only [live3372, coloured3372]
  rw [child]
  dsimp only [result3371]
  try dsimp only [colour, result3372]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3373_agree : tree3373 = literal3373 := by
  rw [tree3373_def]
  rfl
theorem node3373_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3373 live3373 coloured3373 = result3373 := by
  rw [tree3373_def]
  try dsimp only [colour, result3373]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3374_agree : tree3374 = literal3374 := by
  rw [tree3374_def, tree3372_agree, tree3373_agree]
  rfl
theorem node3374_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3374 live3374 coloured3374 = result3374 := by
  rw [tree3374_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3372_eq
  unfold live3372 coloured3372 at child
  try dsimp only [live3374, coloured3374]
  rw [child]
  dsimp only [result3372]
  have child := node3373_eq
  unfold live3373 coloured3373 at child
  try dsimp only [live3374, coloured3374]
  rw [child]
  dsimp only [result3373]
  try dsimp only [colour, result3374]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3375_agree : tree3375 = literal3375 := by
  rw [tree3375_def]
  rfl
theorem node3375_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3375 live3375 coloured3375 = result3375 := by
  rw [tree3375_def]
  try dsimp only [colour, result3375]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3376_agree : tree3376 = literal3376 := by
  rw [tree3376_def, tree3374_agree, tree3375_agree]
  rfl
theorem node3376_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3376 live3376 coloured3376 = result3376 := by
  rw [tree3376_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3374_eq
  unfold live3374 coloured3374 at child
  try dsimp only [live3376, coloured3376]
  rw [child]
  dsimp only [result3374]
  have child := node3375_eq
  unfold live3375 coloured3375 at child
  try dsimp only [live3376, coloured3376]
  rw [child]
  dsimp only [result3375]
  try dsimp only [colour, result3376]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3377_agree : tree3377 = literal3377 := by
  rw [tree3377_def]
  rfl
theorem node3377_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3377 live3377 coloured3377 = result3377 := by
  rw [tree3377_def]
  try dsimp only [colour, result3377]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3378_agree : tree3378 = literal3378 := by
  rw [tree3378_def, tree3376_agree, tree3377_agree]
  rfl
theorem node3378_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3378 live3378 coloured3378 = result3378 := by
  rw [tree3378_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3376_eq
  unfold live3376 coloured3376 at child
  try dsimp only [live3378, coloured3378]
  rw [child]
  dsimp only [result3376]
  have child := node3377_eq
  unfold live3377 coloured3377 at child
  try dsimp only [live3378, coloured3378]
  rw [child]
  dsimp only [result3377]
  try dsimp only [colour, result3378]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3379_agree : tree3379 = literal3379 := by
  rw [tree3379_def]
  rfl
theorem node3379_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3379 live3379 coloured3379 = result3379 := by
  rw [tree3379_def]
  try dsimp only [colour, result3379]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3380_agree : tree3380 = literal3380 := by
  rw [tree3380_def, tree3378_agree, tree3379_agree]
  rfl
theorem node3380_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3380 live3380 coloured3380 = result3380 := by
  rw [tree3380_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3378_eq
  unfold live3378 coloured3378 at child
  try dsimp only [live3380, coloured3380]
  rw [child]
  dsimp only [result3378]
  have child := node3379_eq
  unfold live3379 coloured3379 at child
  try dsimp only [live3380, coloured3380]
  rw [child]
  dsimp only [result3379]
  try dsimp only [colour, result3380]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3381_agree : tree3381 = literal3381 := by
  rw [tree3381_def]
  rfl
theorem node3381_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3381 live3381 coloured3381 = result3381 := by
  rw [tree3381_def]
  try dsimp only [colour, result3381]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3382_agree : tree3382 = literal3382 := by
  rw [tree3382_def, tree3380_agree, tree3381_agree]
  rfl
theorem node3382_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3382 live3382 coloured3382 = result3382 := by
  rw [tree3382_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3380_eq
  unfold live3380 coloured3380 at child
  try dsimp only [live3382, coloured3382]
  rw [child]
  dsimp only [result3380]
  have child := node3381_eq
  unfold live3381 coloured3381 at child
  try dsimp only [live3382, coloured3382]
  rw [child]
  dsimp only [result3381]
  try dsimp only [colour, result3382]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3383_agree : tree3383 = literal3383 := by
  rw [tree3383_def]
  rfl
theorem node3383_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3383 live3383 coloured3383 = result3383 := by
  rw [tree3383_def]
  try dsimp only [colour, result3383]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3384_agree : tree3384 = literal3384 := by
  rw [tree3384_def, tree3382_agree, tree3383_agree]
  rfl
theorem node3384_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3384 live3384 coloured3384 = result3384 := by
  rw [tree3384_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3382_eq
  unfold live3382 coloured3382 at child
  try dsimp only [live3384, coloured3384]
  rw [child]
  dsimp only [result3382]
  have child := node3383_eq
  unfold live3383 coloured3383 at child
  try dsimp only [live3384, coloured3384]
  rw [child]
  dsimp only [result3383]
  try dsimp only [colour, result3384]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3385_agree : tree3385 = literal3385 := by
  rw [tree3385_def]
  rfl
theorem node3385_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3385 live3385 coloured3385 = result3385 := by
  rw [tree3385_def]
  try dsimp only [colour, result3385]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3386_agree : tree3386 = literal3386 := by
  rw [tree3386_def, tree3384_agree, tree3385_agree]
  rfl
theorem node3386_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3386 live3386 coloured3386 = result3386 := by
  rw [tree3386_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3384_eq
  unfold live3384 coloured3384 at child
  try dsimp only [live3386, coloured3386]
  rw [child]
  dsimp only [result3384]
  have child := node3385_eq
  unfold live3385 coloured3385 at child
  try dsimp only [live3386, coloured3386]
  rw [child]
  dsimp only [result3385]
  try dsimp only [colour, result3386]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3387_agree : tree3387 = literal3387 := by
  rw [tree3387_def]
  rfl
theorem node3387_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3387 live3387 coloured3387 = result3387 := by
  rw [tree3387_def]
  try dsimp only [colour, result3387]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3388_agree : tree3388 = literal3388 := by
  rw [tree3388_def, tree3386_agree, tree3387_agree]
  rfl
theorem node3388_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3388 live3388 coloured3388 = result3388 := by
  rw [tree3388_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3386_eq
  unfold live3386 coloured3386 at child
  try dsimp only [live3388, coloured3388]
  rw [child]
  dsimp only [result3386]
  have child := node3387_eq
  unfold live3387 coloured3387 at child
  try dsimp only [live3388, coloured3388]
  rw [child]
  dsimp only [result3387]
  try dsimp only [colour, result3388]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3389_agree : tree3389 = literal3389 := by
  rw [tree3389_def]
  rfl
theorem node3389_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3389 live3389 coloured3389 = result3389 := by
  rw [tree3389_def]
  try dsimp only [colour, result3389]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3390_agree : tree3390 = literal3390 := by
  rw [tree3390_def, tree3388_agree, tree3389_agree]
  rfl
theorem node3390_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3390 live3390 coloured3390 = result3390 := by
  rw [tree3390_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3388_eq
  unfold live3388 coloured3388 at child
  try dsimp only [live3390, coloured3390]
  rw [child]
  dsimp only [result3388]
  have child := node3389_eq
  unfold live3389 coloured3389 at child
  try dsimp only [live3390, coloured3390]
  rw [child]
  dsimp only [result3389]
  try dsimp only [colour, result3390]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3391_agree : tree3391 = literal3391 := by
  rw [tree3391_def]
  rfl
theorem node3391_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3391 live3391 coloured3391 = result3391 := by
  rw [tree3391_def]
  try dsimp only [colour, result3391]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3392_agree : tree3392 = literal3392 := by
  rw [tree3392_def, tree3390_agree, tree3391_agree]
  rfl
theorem node3392_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3392 live3392 coloured3392 = result3392 := by
  rw [tree3392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3390_eq
  unfold live3390 coloured3390 at child
  try dsimp only [live3392, coloured3392]
  rw [child]
  dsimp only [result3390]
  have child := node3391_eq
  unfold live3391 coloured3391 at child
  try dsimp only [live3392, coloured3392]
  rw [child]
  dsimp only [result3391]
  try dsimp only [colour, result3392]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3393_agree : tree3393 = literal3393 := by
  rw [tree3393_def]
  rfl
theorem node3393_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3393 live3393 coloured3393 = result3393 := by
  rw [tree3393_def]
  try dsimp only [colour, result3393]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3394_agree : tree3394 = literal3394 := by
  rw [tree3394_def, tree3392_agree, tree3393_agree]
  rfl
theorem node3394_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3394 live3394 coloured3394 = result3394 := by
  rw [tree3394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3392_eq
  unfold live3392 coloured3392 at child
  try dsimp only [live3394, coloured3394]
  rw [child]
  dsimp only [result3392]
  have child := node3393_eq
  unfold live3393 coloured3393 at child
  try dsimp only [live3394, coloured3394]
  rw [child]
  dsimp only [result3393]
  try dsimp only [colour, result3394]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3395_agree : tree3395 = literal3395 := by
  rw [tree3395_def]
  rfl
theorem node3395_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3395 live3395 coloured3395 = result3395 := by
  rw [tree3395_def]
  try dsimp only [colour, result3395]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3396_agree : tree3396 = literal3396 := by
  rw [tree3396_def, tree3394_agree, tree3395_agree]
  rfl
theorem node3396_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3396 live3396 coloured3396 = result3396 := by
  rw [tree3396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3394_eq
  unfold live3394 coloured3394 at child
  try dsimp only [live3396, coloured3396]
  rw [child]
  dsimp only [result3394]
  have child := node3395_eq
  unfold live3395 coloured3395 at child
  try dsimp only [live3396, coloured3396]
  rw [child]
  dsimp only [result3395]
  try dsimp only [colour, result3396]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3397_agree : tree3397 = literal3397 := by
  rw [tree3397_def]
  rfl
theorem node3397_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3397 live3397 coloured3397 = result3397 := by
  rw [tree3397_def]
  try dsimp only [colour, result3397]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3398_agree : tree3398 = literal3398 := by
  rw [tree3398_def, tree3396_agree, tree3397_agree]
  rfl
theorem node3398_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3398 live3398 coloured3398 = result3398 := by
  rw [tree3398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3396_eq
  unfold live3396 coloured3396 at child
  try dsimp only [live3398, coloured3398]
  rw [child]
  dsimp only [result3396]
  have child := node3397_eq
  unfold live3397 coloured3397 at child
  try dsimp only [live3398, coloured3398]
  rw [child]
  dsimp only [result3397]
  try dsimp only [colour, result3398]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3399_agree : tree3399 = literal3399 := by
  rw [tree3399_def]
  rfl
theorem node3399_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3399 live3399 coloured3399 = result3399 := by
  rw [tree3399_def]
  try dsimp only [colour, result3399]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3400_agree : tree3400 = literal3400 := by
  rw [tree3400_def, tree3398_agree, tree3399_agree]
  rfl
theorem node3400_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3400 live3400 coloured3400 = result3400 := by
  rw [tree3400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3398_eq
  unfold live3398 coloured3398 at child
  try dsimp only [live3400, coloured3400]
  rw [child]
  dsimp only [result3398]
  have child := node3399_eq
  unfold live3399 coloured3399 at child
  try dsimp only [live3400, coloured3400]
  rw [child]
  dsimp only [result3399]
  try dsimp only [colour, result3400]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3401_agree : tree3401 = literal3401 := by
  rw [tree3401_def]
  rfl
theorem node3401_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3401 live3401 coloured3401 = result3401 := by
  rw [tree3401_def]
  try dsimp only [colour, result3401]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3402_agree : tree3402 = literal3402 := by
  rw [tree3402_def, tree3400_agree, tree3401_agree]
  rfl
theorem node3402_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3402 live3402 coloured3402 = result3402 := by
  rw [tree3402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3400_eq
  unfold live3400 coloured3400 at child
  try dsimp only [live3402, coloured3402]
  rw [child]
  dsimp only [result3400]
  have child := node3401_eq
  unfold live3401 coloured3401 at child
  try dsimp only [live3402, coloured3402]
  rw [child]
  dsimp only [result3401]
  try dsimp only [colour, result3402]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3403_agree : tree3403 = literal3403 := by
  rw [tree3403_def]
  rfl
theorem node3403_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3403 live3403 coloured3403 = result3403 := by
  rw [tree3403_def]
  try dsimp only [colour, result3403]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3404_agree : tree3404 = literal3404 := by
  rw [tree3404_def, tree3402_agree, tree3403_agree]
  rfl
theorem node3404_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3404 live3404 coloured3404 = result3404 := by
  rw [tree3404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3402_eq
  unfold live3402 coloured3402 at child
  try dsimp only [live3404, coloured3404]
  rw [child]
  dsimp only [result3402]
  have child := node3403_eq
  unfold live3403 coloured3403 at child
  try dsimp only [live3404, coloured3404]
  rw [child]
  dsimp only [result3403]
  try dsimp only [colour, result3404]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3405_agree : tree3405 = literal3405 := by
  rw [tree3405_def]
  rfl
theorem node3405_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3405 live3405 coloured3405 = result3405 := by
  rw [tree3405_def]
  try dsimp only [colour, result3405]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3406_agree : tree3406 = literal3406 := by
  rw [tree3406_def, tree3404_agree, tree3405_agree]
  rfl
theorem node3406_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3406 live3406 coloured3406 = result3406 := by
  rw [tree3406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3404_eq
  unfold live3404 coloured3404 at child
  try dsimp only [live3406, coloured3406]
  rw [child]
  dsimp only [result3404]
  have child := node3405_eq
  unfold live3405 coloured3405 at child
  try dsimp only [live3406, coloured3406]
  rw [child]
  dsimp only [result3405]
  try dsimp only [colour, result3406]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3407_agree : tree3407 = literal3407 := by
  rw [tree3407_def]
  rfl
theorem node3407_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3407 live3407 coloured3407 = result3407 := by
  rw [tree3407_def]
  try dsimp only [colour, result3407]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3408_agree : tree3408 = literal3408 := by
  rw [tree3408_def, tree3406_agree, tree3407_agree]
  rfl
theorem node3408_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3408 live3408 coloured3408 = result3408 := by
  rw [tree3408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3406_eq
  unfold live3406 coloured3406 at child
  try dsimp only [live3408, coloured3408]
  rw [child]
  dsimp only [result3406]
  have child := node3407_eq
  unfold live3407 coloured3407 at child
  try dsimp only [live3408, coloured3408]
  rw [child]
  dsimp only [result3407]
  try dsimp only [colour, result3408]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3409_agree : tree3409 = literal3409 := by
  rw [tree3409_def]
  rfl
theorem node3409_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3409 live3409 coloured3409 = result3409 := by
  rw [tree3409_def]
  try dsimp only [colour, result3409]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3410_agree : tree3410 = literal3410 := by
  rw [tree3410_def, tree3408_agree, tree3409_agree]
  rfl
theorem node3410_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3410 live3410 coloured3410 = result3410 := by
  rw [tree3410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3408_eq
  unfold live3408 coloured3408 at child
  try dsimp only [live3410, coloured3410]
  rw [child]
  dsimp only [result3408]
  have child := node3409_eq
  unfold live3409 coloured3409 at child
  try dsimp only [live3410, coloured3410]
  rw [child]
  dsimp only [result3409]
  try dsimp only [colour, result3410]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3411_agree : tree3411 = literal3411 := by
  rw [tree3411_def]
  rfl
theorem node3411_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3411 live3411 coloured3411 = result3411 := by
  rw [tree3411_def]
  try dsimp only [colour, result3411]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3412_agree : tree3412 = literal3412 := by
  rw [tree3412_def, tree3410_agree, tree3411_agree]
  rfl
theorem node3412_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3412 live3412 coloured3412 = result3412 := by
  rw [tree3412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3410_eq
  unfold live3410 coloured3410 at child
  try dsimp only [live3412, coloured3412]
  rw [child]
  dsimp only [result3410]
  have child := node3411_eq
  unfold live3411 coloured3411 at child
  try dsimp only [live3412, coloured3412]
  rw [child]
  dsimp only [result3411]
  try dsimp only [colour, result3412]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3413_agree : tree3413 = literal3413 := by
  rw [tree3413_def]
  rfl
theorem node3413_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3413 live3413 coloured3413 = result3413 := by
  rw [tree3413_def]
  try dsimp only [colour, result3413]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3414_agree : tree3414 = literal3414 := by
  rw [tree3414_def, tree3412_agree, tree3413_agree]
  rfl
theorem node3414_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3414 live3414 coloured3414 = result3414 := by
  rw [tree3414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3412_eq
  unfold live3412 coloured3412 at child
  try dsimp only [live3414, coloured3414]
  rw [child]
  dsimp only [result3412]
  have child := node3413_eq
  unfold live3413 coloured3413 at child
  try dsimp only [live3414, coloured3414]
  rw [child]
  dsimp only [result3413]
  try dsimp only [colour, result3414]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3415_agree : tree3415 = literal3415 := by
  rw [tree3415_def]
  rfl
theorem node3415_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3415 live3415 coloured3415 = result3415 := by
  rw [tree3415_def]
  try dsimp only [colour, result3415]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3416_agree : tree3416 = literal3416 := by
  rw [tree3416_def, tree3414_agree, tree3415_agree]
  rfl
theorem node3416_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3416 live3416 coloured3416 = result3416 := by
  rw [tree3416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3414_eq
  unfold live3414 coloured3414 at child
  try dsimp only [live3416, coloured3416]
  rw [child]
  dsimp only [result3414]
  have child := node3415_eq
  unfold live3415 coloured3415 at child
  try dsimp only [live3416, coloured3416]
  rw [child]
  dsimp only [result3415]
  try dsimp only [colour, result3416]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3417_agree : tree3417 = literal3417 := by
  rw [tree3417_def]
  rfl
theorem node3417_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3417 live3417 coloured3417 = result3417 := by
  rw [tree3417_def]
  try dsimp only [colour, result3417]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3418_agree : tree3418 = literal3418 := by
  rw [tree3418_def, tree3416_agree, tree3417_agree]
  rfl
theorem node3418_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3418 live3418 coloured3418 = result3418 := by
  rw [tree3418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3416_eq
  unfold live3416 coloured3416 at child
  try dsimp only [live3418, coloured3418]
  rw [child]
  dsimp only [result3416]
  have child := node3417_eq
  unfold live3417 coloured3417 at child
  try dsimp only [live3418, coloured3418]
  rw [child]
  dsimp only [result3417]
  try dsimp only [colour, result3418]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3419_agree : tree3419 = literal3419 := by
  rw [tree3419_def]
  rfl
theorem node3419_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3419 live3419 coloured3419 = result3419 := by
  rw [tree3419_def]
  try dsimp only [colour, result3419]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3420_agree : tree3420 = literal3420 := by
  rw [tree3420_def, tree3418_agree, tree3419_agree]
  rfl
theorem node3420_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3420 live3420 coloured3420 = result3420 := by
  rw [tree3420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3418_eq
  unfold live3418 coloured3418 at child
  try dsimp only [live3420, coloured3420]
  rw [child]
  dsimp only [result3418]
  have child := node3419_eq
  unfold live3419 coloured3419 at child
  try dsimp only [live3420, coloured3420]
  rw [child]
  dsimp only [result3419]
  try dsimp only [colour, result3420]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3421_agree : tree3421 = literal3421 := by
  rw [tree3421_def]
  rfl
theorem node3421_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3421 live3421 coloured3421 = result3421 := by
  rw [tree3421_def]
  try dsimp only [colour, result3421]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3422_agree : tree3422 = literal3422 := by
  rw [tree3422_def, tree3420_agree, tree3421_agree]
  rfl
theorem node3422_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3422 live3422 coloured3422 = result3422 := by
  rw [tree3422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3420_eq
  unfold live3420 coloured3420 at child
  try dsimp only [live3422, coloured3422]
  rw [child]
  dsimp only [result3420]
  have child := node3421_eq
  unfold live3421 coloured3421 at child
  try dsimp only [live3422, coloured3422]
  rw [child]
  dsimp only [result3421]
  try dsimp only [colour, result3422]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3423_agree : tree3423 = literal3423 := by
  rw [tree3423_def]
  rfl
theorem node3423_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3423 live3423 coloured3423 = result3423 := by
  rw [tree3423_def]
  try dsimp only [colour, result3423]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3424_agree : tree3424 = literal3424 := by
  rw [tree3424_def, tree3422_agree, tree3423_agree]
  rfl
theorem node3424_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3424 live3424 coloured3424 = result3424 := by
  rw [tree3424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3422_eq
  unfold live3422 coloured3422 at child
  try dsimp only [live3424, coloured3424]
  rw [child]
  dsimp only [result3422]
  have child := node3423_eq
  unfold live3423 coloured3423 at child
  try dsimp only [live3424, coloured3424]
  rw [child]
  dsimp only [result3423]
  try dsimp only [colour, result3424]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3425_agree : tree3425 = literal3425 := by
  rw [tree3425_def]
  rfl
theorem node3425_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3425 live3425 coloured3425 = result3425 := by
  rw [tree3425_def]
  try dsimp only [colour, result3425]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3426_agree : tree3426 = literal3426 := by
  rw [tree3426_def, tree3424_agree, tree3425_agree]
  rfl
theorem node3426_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3426 live3426 coloured3426 = result3426 := by
  rw [tree3426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3424_eq
  unfold live3424 coloured3424 at child
  try dsimp only [live3426, coloured3426]
  rw [child]
  dsimp only [result3424]
  have child := node3425_eq
  unfold live3425 coloured3425 at child
  try dsimp only [live3426, coloured3426]
  rw [child]
  dsimp only [result3425]
  try dsimp only [colour, result3426]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3427_agree : tree3427 = literal3427 := by
  rw [tree3427_def]
  rfl
theorem node3427_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3427 live3427 coloured3427 = result3427 := by
  rw [tree3427_def]
  try dsimp only [colour, result3427]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3428_agree : tree3428 = literal3428 := by
  rw [tree3428_def, tree3426_agree, tree3427_agree]
  rfl
theorem node3428_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3428 live3428 coloured3428 = result3428 := by
  rw [tree3428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3426_eq
  unfold live3426 coloured3426 at child
  try dsimp only [live3428, coloured3428]
  rw [child]
  dsimp only [result3426]
  have child := node3427_eq
  unfold live3427 coloured3427 at child
  try dsimp only [live3428, coloured3428]
  rw [child]
  dsimp only [result3427]
  try dsimp only [colour, result3428]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3429_agree : tree3429 = literal3429 := by
  rw [tree3429_def]
  rfl
theorem node3429_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3429 live3429 coloured3429 = result3429 := by
  rw [tree3429_def]
  try dsimp only [colour, result3429]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3430_agree : tree3430 = literal3430 := by
  rw [tree3430_def, tree3428_agree, tree3429_agree]
  rfl
theorem node3430_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3430 live3430 coloured3430 = result3430 := by
  rw [tree3430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3428_eq
  unfold live3428 coloured3428 at child
  try dsimp only [live3430, coloured3430]
  rw [child]
  dsimp only [result3428]
  have child := node3429_eq
  unfold live3429 coloured3429 at child
  try dsimp only [live3430, coloured3430]
  rw [child]
  dsimp only [result3429]
  try dsimp only [colour, result3430]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3431_agree : tree3431 = literal3431 := by
  rw [tree3431_def]
  rfl
theorem node3431_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3431 live3431 coloured3431 = result3431 := by
  rw [tree3431_def]
  try dsimp only [colour, result3431]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3432_agree : tree3432 = literal3432 := by
  rw [tree3432_def, tree3430_agree, tree3431_agree]
  rfl
theorem node3432_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3432 live3432 coloured3432 = result3432 := by
  rw [tree3432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3430_eq
  unfold live3430 coloured3430 at child
  try dsimp only [live3432, coloured3432]
  rw [child]
  dsimp only [result3430]
  have child := node3431_eq
  unfold live3431 coloured3431 at child
  try dsimp only [live3432, coloured3432]
  rw [child]
  dsimp only [result3431]
  try dsimp only [colour, result3432]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3433_agree : tree3433 = literal3433 := by
  rw [tree3433_def]
  rfl
theorem node3433_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3433 live3433 coloured3433 = result3433 := by
  rw [tree3433_def]
  try dsimp only [colour, result3433]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3434_agree : tree3434 = literal3434 := by
  rw [tree3434_def, tree3432_agree, tree3433_agree]
  rfl
theorem node3434_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3434 live3434 coloured3434 = result3434 := by
  rw [tree3434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3432_eq
  unfold live3432 coloured3432 at child
  try dsimp only [live3434, coloured3434]
  rw [child]
  dsimp only [result3432]
  have child := node3433_eq
  unfold live3433 coloured3433 at child
  try dsimp only [live3434, coloured3434]
  rw [child]
  dsimp only [result3433]
  try dsimp only [colour, result3434]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3435_agree : tree3435 = literal3435 := by
  rw [tree3435_def]
  rfl
theorem node3435_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3435 live3435 coloured3435 = result3435 := by
  rw [tree3435_def]
  try dsimp only [colour, result3435]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3436_agree : tree3436 = literal3436 := by
  rw [tree3436_def, tree3434_agree, tree3435_agree]
  rfl
theorem node3436_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3436 live3436 coloured3436 = result3436 := by
  rw [tree3436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3434_eq
  unfold live3434 coloured3434 at child
  try dsimp only [live3436, coloured3436]
  rw [child]
  dsimp only [result3434]
  have child := node3435_eq
  unfold live3435 coloured3435 at child
  try dsimp only [live3436, coloured3436]
  rw [child]
  dsimp only [result3435]
  try dsimp only [colour, result3436]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3437_agree : tree3437 = literal3437 := by
  rw [tree3437_def]
  rfl
theorem node3437_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3437 live3437 coloured3437 = result3437 := by
  rw [tree3437_def]
  try dsimp only [colour, result3437]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3438_agree : tree3438 = literal3438 := by
  rw [tree3438_def, tree3436_agree, tree3437_agree]
  rfl
theorem node3438_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3438 live3438 coloured3438 = result3438 := by
  rw [tree3438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3436_eq
  unfold live3436 coloured3436 at child
  try dsimp only [live3438, coloured3438]
  rw [child]
  dsimp only [result3436]
  have child := node3437_eq
  unfold live3437 coloured3437 at child
  try dsimp only [live3438, coloured3438]
  rw [child]
  dsimp only [result3437]
  try dsimp only [colour, result3438]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3439_agree : tree3439 = literal3439 := by
  rw [tree3439_def]
  rfl
theorem node3439_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3439 live3439 coloured3439 = result3439 := by
  rw [tree3439_def]
  try dsimp only [colour, result3439]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3440_agree : tree3440 = literal3440 := by
  rw [tree3440_def, tree3438_agree, tree3439_agree]
  rfl
theorem node3440_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3440 live3440 coloured3440 = result3440 := by
  rw [tree3440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3438_eq
  unfold live3438 coloured3438 at child
  try dsimp only [live3440, coloured3440]
  rw [child]
  dsimp only [result3438]
  have child := node3439_eq
  unfold live3439 coloured3439 at child
  try dsimp only [live3440, coloured3440]
  rw [child]
  dsimp only [result3439]
  try dsimp only [colour, result3440]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3441_agree : tree3441 = literal3441 := by
  rw [tree3441_def]
  rfl
theorem node3441_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3441 live3441 coloured3441 = result3441 := by
  rw [tree3441_def]
  try dsimp only [colour, result3441]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3442_agree : tree3442 = literal3442 := by
  rw [tree3442_def, tree3440_agree, tree3441_agree]
  rfl
theorem node3442_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3442 live3442 coloured3442 = result3442 := by
  rw [tree3442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3440_eq
  unfold live3440 coloured3440 at child
  try dsimp only [live3442, coloured3442]
  rw [child]
  dsimp only [result3440]
  have child := node3441_eq
  unfold live3441 coloured3441 at child
  try dsimp only [live3442, coloured3442]
  rw [child]
  dsimp only [result3441]
  try dsimp only [colour, result3442]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3443_agree : tree3443 = literal3443 := by
  rw [tree3443_def]
  rfl
theorem node3443_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3443 live3443 coloured3443 = result3443 := by
  rw [tree3443_def]
  try dsimp only [colour, result3443]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3444_agree : tree3444 = literal3444 := by
  rw [tree3444_def, tree3442_agree, tree3443_agree]
  rfl
theorem node3444_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3444 live3444 coloured3444 = result3444 := by
  rw [tree3444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3442_eq
  unfold live3442 coloured3442 at child
  try dsimp only [live3444, coloured3444]
  rw [child]
  dsimp only [result3442]
  have child := node3443_eq
  unfold live3443 coloured3443 at child
  try dsimp only [live3444, coloured3444]
  rw [child]
  dsimp only [result3443]
  try dsimp only [colour, result3444]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3445_agree : tree3445 = literal3445 := by
  rw [tree3445_def]
  rfl
theorem node3445_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3445 live3445 coloured3445 = result3445 := by
  rw [tree3445_def]
  try dsimp only [colour, result3445]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3446_agree : tree3446 = literal3446 := by
  rw [tree3446_def, tree3444_agree, tree3445_agree]
  rfl
theorem node3446_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3446 live3446 coloured3446 = result3446 := by
  rw [tree3446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3444_eq
  unfold live3444 coloured3444 at child
  try dsimp only [live3446, coloured3446]
  rw [child]
  dsimp only [result3444]
  have child := node3445_eq
  unfold live3445 coloured3445 at child
  try dsimp only [live3446, coloured3446]
  rw [child]
  dsimp only [result3445]
  try dsimp only [colour, result3446]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3447_agree : tree3447 = literal3447 := by
  rw [tree3447_def]
  rfl
theorem node3447_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3447 live3447 coloured3447 = result3447 := by
  rw [tree3447_def]
  try dsimp only [colour, result3447]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3448_agree : tree3448 = literal3448 := by
  rw [tree3448_def, tree3446_agree, tree3447_agree]
  rfl
theorem node3448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3448 live3448 coloured3448 = result3448 := by
  rw [tree3448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3446_eq
  unfold live3446 coloured3446 at child
  try dsimp only [live3448, coloured3448]
  rw [child]
  dsimp only [result3446]
  have child := node3447_eq
  unfold live3447 coloured3447 at child
  try dsimp only [live3448, coloured3448]
  rw [child]
  dsimp only [result3447]
  try dsimp only [colour, result3448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3449_agree : tree3449 = literal3449 := by
  rw [tree3449_def]
  rfl
theorem node3449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3449 live3449 coloured3449 = result3449 := by
  rw [tree3449_def]
  try dsimp only [colour, result3449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3450_agree : tree3450 = literal3450 := by
  rw [tree3450_def, tree3448_agree, tree3449_agree]
  rfl
theorem node3450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3450 live3450 coloured3450 = result3450 := by
  rw [tree3450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3448_eq
  unfold live3448 coloured3448 at child
  try dsimp only [live3450, coloured3450]
  rw [child]
  dsimp only [result3448]
  have child := node3449_eq
  unfold live3449 coloured3449 at child
  try dsimp only [live3450, coloured3450]
  rw [child]
  dsimp only [result3449]
  try dsimp only [colour, result3450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3451_agree : tree3451 = literal3451 := by
  rw [tree3451_def]
  rfl
theorem node3451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3451 live3451 coloured3451 = result3451 := by
  rw [tree3451_def]
  try dsimp only [colour, result3451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3452_agree : tree3452 = literal3452 := by
  rw [tree3452_def, tree3450_agree, tree3451_agree]
  rfl
theorem node3452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3452 live3452 coloured3452 = result3452 := by
  rw [tree3452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3450_eq
  unfold live3450 coloured3450 at child
  try dsimp only [live3452, coloured3452]
  rw [child]
  dsimp only [result3450]
  have child := node3451_eq
  unfold live3451 coloured3451 at child
  try dsimp only [live3452, coloured3452]
  rw [child]
  dsimp only [result3451]
  try dsimp only [colour, result3452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3453_agree : tree3453 = literal3453 := by
  rw [tree3453_def]
  rfl
theorem node3453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3453 live3453 coloured3453 = result3453 := by
  rw [tree3453_def]
  try dsimp only [colour, result3453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3454_agree : tree3454 = literal3454 := by
  rw [tree3454_def, tree3452_agree, tree3453_agree]
  rfl
theorem node3454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3454 live3454 coloured3454 = result3454 := by
  rw [tree3454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3452_eq
  unfold live3452 coloured3452 at child
  try dsimp only [live3454, coloured3454]
  rw [child]
  dsimp only [result3452]
  have child := node3453_eq
  unfold live3453 coloured3453 at child
  try dsimp only [live3454, coloured3454]
  rw [child]
  dsimp only [result3453]
  try dsimp only [colour, result3454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3455_agree : tree3455 = literal3455 := by
  rw [tree3455_def]
  rfl
theorem node3455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3455 live3455 coloured3455 = result3455 := by
  rw [tree3455_def]
  try dsimp only [colour, result3455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
