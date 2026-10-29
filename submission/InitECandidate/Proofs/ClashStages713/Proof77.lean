import InitECandidate.Proofs.ClashStages713.Proof76
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree7392_agree : tree7392 = literal7392 := by
  rw [tree7392_def, tree7390_agree, tree7391_agree]
  rfl
theorem node7392_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7392 live7392 coloured7392 = result7392 := by
  rw [tree7392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7390_eq
  unfold live7390 coloured7390 at child
  try dsimp only [live7392, coloured7392]
  rw [child]
  dsimp only [result7390]
  have child := node7391_eq
  unfold live7391 coloured7391 at child
  try dsimp only [live7392, coloured7392]
  rw [child]
  dsimp only [result7391]
  try dsimp only [colour, result7392]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7393_agree : tree7393 = literal7393 := by
  rw [tree7393_def]
  rfl
theorem node7393_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7393 live7393 coloured7393 = result7393 := by
  rw [tree7393_def]
  try dsimp only [colour, result7393]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7394_agree : tree7394 = literal7394 := by
  rw [tree7394_def, tree7392_agree, tree7393_agree]
  rfl
theorem node7394_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7394 live7394 coloured7394 = result7394 := by
  rw [tree7394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7392_eq
  unfold live7392 coloured7392 at child
  try dsimp only [live7394, coloured7394]
  rw [child]
  dsimp only [result7392]
  have child := node7393_eq
  unfold live7393 coloured7393 at child
  try dsimp only [live7394, coloured7394]
  rw [child]
  dsimp only [result7393]
  try dsimp only [colour, result7394]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7395_agree : tree7395 = literal7395 := by
  rw [tree7395_def]
  rfl
theorem node7395_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7395 live7395 coloured7395 = result7395 := by
  rw [tree7395_def]
  try dsimp only [colour, result7395]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7396_agree : tree7396 = literal7396 := by
  rw [tree7396_def, tree7394_agree, tree7395_agree]
  rfl
theorem node7396_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7396 live7396 coloured7396 = result7396 := by
  rw [tree7396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7394_eq
  unfold live7394 coloured7394 at child
  try dsimp only [live7396, coloured7396]
  rw [child]
  dsimp only [result7394]
  have child := node7395_eq
  unfold live7395 coloured7395 at child
  try dsimp only [live7396, coloured7396]
  rw [child]
  dsimp only [result7395]
  try dsimp only [colour, result7396]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7397_agree : tree7397 = literal7397 := by
  rw [tree7397_def]
  rfl
theorem node7397_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7397 live7397 coloured7397 = result7397 := by
  rw [tree7397_def]
  try dsimp only [colour, result7397]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7398_agree : tree7398 = literal7398 := by
  rw [tree7398_def, tree7396_agree, tree7397_agree]
  rfl
theorem node7398_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7398 live7398 coloured7398 = result7398 := by
  rw [tree7398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7396_eq
  unfold live7396 coloured7396 at child
  try dsimp only [live7398, coloured7398]
  rw [child]
  dsimp only [result7396]
  have child := node7397_eq
  unfold live7397 coloured7397 at child
  try dsimp only [live7398, coloured7398]
  rw [child]
  dsimp only [result7397]
  try dsimp only [colour, result7398]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7399_agree : tree7399 = literal7399 := by
  rw [tree7399_def]
  rfl
theorem node7399_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7399 live7399 coloured7399 = result7399 := by
  rw [tree7399_def]
  try dsimp only [colour, result7399]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7400_agree : tree7400 = literal7400 := by
  rw [tree7400_def, tree7398_agree, tree7399_agree]
  rfl
theorem node7400_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7400 live7400 coloured7400 = result7400 := by
  rw [tree7400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7398_eq
  unfold live7398 coloured7398 at child
  try dsimp only [live7400, coloured7400]
  rw [child]
  dsimp only [result7398]
  have child := node7399_eq
  unfold live7399 coloured7399 at child
  try dsimp only [live7400, coloured7400]
  rw [child]
  dsimp only [result7399]
  try dsimp only [colour, result7400]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7401_agree : tree7401 = literal7401 := by
  rw [tree7401_def]
  rfl
theorem node7401_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7401 live7401 coloured7401 = result7401 := by
  rw [tree7401_def]
  try dsimp only [colour, result7401]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7402_agree : tree7402 = literal7402 := by
  rw [tree7402_def, tree7400_agree, tree7401_agree]
  rfl
theorem node7402_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7402 live7402 coloured7402 = result7402 := by
  rw [tree7402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7400_eq
  unfold live7400 coloured7400 at child
  try dsimp only [live7402, coloured7402]
  rw [child]
  dsimp only [result7400]
  have child := node7401_eq
  unfold live7401 coloured7401 at child
  try dsimp only [live7402, coloured7402]
  rw [child]
  dsimp only [result7401]
  try dsimp only [colour, result7402]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7403_agree : tree7403 = literal7403 := by
  rw [tree7403_def]
  rfl
theorem node7403_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7403 live7403 coloured7403 = result7403 := by
  rw [tree7403_def]
  try dsimp only [colour, result7403]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7404_agree : tree7404 = literal7404 := by
  rw [tree7404_def, tree7402_agree, tree7403_agree]
  rfl
theorem node7404_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7404 live7404 coloured7404 = result7404 := by
  rw [tree7404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7402_eq
  unfold live7402 coloured7402 at child
  try dsimp only [live7404, coloured7404]
  rw [child]
  dsimp only [result7402]
  have child := node7403_eq
  unfold live7403 coloured7403 at child
  try dsimp only [live7404, coloured7404]
  rw [child]
  dsimp only [result7403]
  try dsimp only [colour, result7404]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7405_agree : tree7405 = literal7405 := by
  rw [tree7405_def]
  rfl
theorem node7405_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7405 live7405 coloured7405 = result7405 := by
  rw [tree7405_def]
  try dsimp only [colour, result7405]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7406_agree : tree7406 = literal7406 := by
  rw [tree7406_def, tree7404_agree, tree7405_agree]
  rfl
theorem node7406_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7406 live7406 coloured7406 = result7406 := by
  rw [tree7406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7404_eq
  unfold live7404 coloured7404 at child
  try dsimp only [live7406, coloured7406]
  rw [child]
  dsimp only [result7404]
  have child := node7405_eq
  unfold live7405 coloured7405 at child
  try dsimp only [live7406, coloured7406]
  rw [child]
  dsimp only [result7405]
  try dsimp only [colour, result7406]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7407_agree : tree7407 = literal7407 := by
  rw [tree7407_def]
  rfl
theorem node7407_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7407 live7407 coloured7407 = result7407 := by
  rw [tree7407_def]
  try dsimp only [colour, result7407]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7408_agree : tree7408 = literal7408 := by
  rw [tree7408_def, tree7406_agree, tree7407_agree]
  rfl
theorem node7408_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7408 live7408 coloured7408 = result7408 := by
  rw [tree7408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7406_eq
  unfold live7406 coloured7406 at child
  try dsimp only [live7408, coloured7408]
  rw [child]
  dsimp only [result7406]
  have child := node7407_eq
  unfold live7407 coloured7407 at child
  try dsimp only [live7408, coloured7408]
  rw [child]
  dsimp only [result7407]
  try dsimp only [colour, result7408]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7409_agree : tree7409 = literal7409 := by
  rw [tree7409_def]
  rfl
theorem node7409_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7409 live7409 coloured7409 = result7409 := by
  rw [tree7409_def]
  try dsimp only [colour, result7409]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7410_agree : tree7410 = literal7410 := by
  rw [tree7410_def, tree7408_agree, tree7409_agree]
  rfl
theorem node7410_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7410 live7410 coloured7410 = result7410 := by
  rw [tree7410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7408_eq
  unfold live7408 coloured7408 at child
  try dsimp only [live7410, coloured7410]
  rw [child]
  dsimp only [result7408]
  have child := node7409_eq
  unfold live7409 coloured7409 at child
  try dsimp only [live7410, coloured7410]
  rw [child]
  dsimp only [result7409]
  try dsimp only [colour, result7410]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7411_agree : tree7411 = literal7411 := by
  rw [tree7411_def]
  rfl
theorem node7411_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7411 live7411 coloured7411 = result7411 := by
  rw [tree7411_def]
  try dsimp only [colour, result7411]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7412_agree : tree7412 = literal7412 := by
  rw [tree7412_def, tree7410_agree, tree7411_agree]
  rfl
theorem node7412_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7412 live7412 coloured7412 = result7412 := by
  rw [tree7412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7410_eq
  unfold live7410 coloured7410 at child
  try dsimp only [live7412, coloured7412]
  rw [child]
  dsimp only [result7410]
  have child := node7411_eq
  unfold live7411 coloured7411 at child
  try dsimp only [live7412, coloured7412]
  rw [child]
  dsimp only [result7411]
  try dsimp only [colour, result7412]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7413_agree : tree7413 = literal7413 := by
  rw [tree7413_def]
  rfl
theorem node7413_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7413 live7413 coloured7413 = result7413 := by
  rw [tree7413_def]
  try dsimp only [colour, result7413]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7414_agree : tree7414 = literal7414 := by
  rw [tree7414_def, tree7412_agree, tree7413_agree]
  rfl
theorem node7414_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7414 live7414 coloured7414 = result7414 := by
  rw [tree7414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7412_eq
  unfold live7412 coloured7412 at child
  try dsimp only [live7414, coloured7414]
  rw [child]
  dsimp only [result7412]
  have child := node7413_eq
  unfold live7413 coloured7413 at child
  try dsimp only [live7414, coloured7414]
  rw [child]
  dsimp only [result7413]
  try dsimp only [colour, result7414]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7415_agree : tree7415 = literal7415 := by
  rw [tree7415_def]
  rfl
theorem node7415_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7415 live7415 coloured7415 = result7415 := by
  rw [tree7415_def]
  try dsimp only [colour, result7415]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7416_agree : tree7416 = literal7416 := by
  rw [tree7416_def, tree7414_agree, tree7415_agree]
  rfl
theorem node7416_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7416 live7416 coloured7416 = result7416 := by
  rw [tree7416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7414_eq
  unfold live7414 coloured7414 at child
  try dsimp only [live7416, coloured7416]
  rw [child]
  dsimp only [result7414]
  have child := node7415_eq
  unfold live7415 coloured7415 at child
  try dsimp only [live7416, coloured7416]
  rw [child]
  dsimp only [result7415]
  try dsimp only [colour, result7416]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7417_agree : tree7417 = literal7417 := by
  rw [tree7417_def]
  rfl
theorem node7417_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7417 live7417 coloured7417 = result7417 := by
  rw [tree7417_def]
  try dsimp only [colour, result7417]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7418_agree : tree7418 = literal7418 := by
  rw [tree7418_def, tree7416_agree, tree7417_agree]
  rfl
theorem node7418_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7418 live7418 coloured7418 = result7418 := by
  rw [tree7418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7416_eq
  unfold live7416 coloured7416 at child
  try dsimp only [live7418, coloured7418]
  rw [child]
  dsimp only [result7416]
  have child := node7417_eq
  unfold live7417 coloured7417 at child
  try dsimp only [live7418, coloured7418]
  rw [child]
  dsimp only [result7417]
  try dsimp only [colour, result7418]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7419_agree : tree7419 = literal7419 := by
  rw [tree7419_def]
  rfl
theorem node7419_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7419 live7419 coloured7419 = result7419 := by
  rw [tree7419_def]
  try dsimp only [colour, result7419]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7420_agree : tree7420 = literal7420 := by
  rw [tree7420_def, tree7418_agree, tree7419_agree]
  rfl
theorem node7420_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7420 live7420 coloured7420 = result7420 := by
  rw [tree7420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7418_eq
  unfold live7418 coloured7418 at child
  try dsimp only [live7420, coloured7420]
  rw [child]
  dsimp only [result7418]
  have child := node7419_eq
  unfold live7419 coloured7419 at child
  try dsimp only [live7420, coloured7420]
  rw [child]
  dsimp only [result7419]
  try dsimp only [colour, result7420]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7421_agree : tree7421 = literal7421 := by
  rw [tree7421_def]
  rfl
theorem node7421_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7421 live7421 coloured7421 = result7421 := by
  rw [tree7421_def]
  try dsimp only [colour, result7421]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7422_agree : tree7422 = literal7422 := by
  rw [tree7422_def, tree7420_agree, tree7421_agree]
  rfl
theorem node7422_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7422 live7422 coloured7422 = result7422 := by
  rw [tree7422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7420_eq
  unfold live7420 coloured7420 at child
  try dsimp only [live7422, coloured7422]
  rw [child]
  dsimp only [result7420]
  have child := node7421_eq
  unfold live7421 coloured7421 at child
  try dsimp only [live7422, coloured7422]
  rw [child]
  dsimp only [result7421]
  try dsimp only [colour, result7422]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7423_agree : tree7423 = literal7423 := by
  rw [tree7423_def]
  rfl
theorem node7423_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7423 live7423 coloured7423 = result7423 := by
  rw [tree7423_def]
  try dsimp only [colour, result7423]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7424_agree : tree7424 = literal7424 := by
  rw [tree7424_def, tree7422_agree, tree7423_agree]
  rfl
theorem node7424_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7424 live7424 coloured7424 = result7424 := by
  rw [tree7424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7422_eq
  unfold live7422 coloured7422 at child
  try dsimp only [live7424, coloured7424]
  rw [child]
  dsimp only [result7422]
  have child := node7423_eq
  unfold live7423 coloured7423 at child
  try dsimp only [live7424, coloured7424]
  rw [child]
  dsimp only [result7423]
  try dsimp only [colour, result7424]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7425_agree : tree7425 = literal7425 := by
  rw [tree7425_def]
  rfl
theorem node7425_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7425 live7425 coloured7425 = result7425 := by
  rw [tree7425_def]
  try dsimp only [colour, result7425]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7426_agree : tree7426 = literal7426 := by
  rw [tree7426_def, tree7424_agree, tree7425_agree]
  rfl
theorem node7426_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7426 live7426 coloured7426 = result7426 := by
  rw [tree7426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7424_eq
  unfold live7424 coloured7424 at child
  try dsimp only [live7426, coloured7426]
  rw [child]
  dsimp only [result7424]
  have child := node7425_eq
  unfold live7425 coloured7425 at child
  try dsimp only [live7426, coloured7426]
  rw [child]
  dsimp only [result7425]
  try dsimp only [colour, result7426]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7427_agree : tree7427 = literal7427 := by
  rw [tree7427_def]
  rfl
theorem node7427_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7427 live7427 coloured7427 = result7427 := by
  rw [tree7427_def]
  try dsimp only [colour, result7427]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7428_agree : tree7428 = literal7428 := by
  rw [tree7428_def, tree7426_agree, tree7427_agree]
  rfl
theorem node7428_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7428 live7428 coloured7428 = result7428 := by
  rw [tree7428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7426_eq
  unfold live7426 coloured7426 at child
  try dsimp only [live7428, coloured7428]
  rw [child]
  dsimp only [result7426]
  have child := node7427_eq
  unfold live7427 coloured7427 at child
  try dsimp only [live7428, coloured7428]
  rw [child]
  dsimp only [result7427]
  try dsimp only [colour, result7428]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7429_agree : tree7429 = literal7429 := by
  rw [tree7429_def]
  rfl
theorem node7429_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7429 live7429 coloured7429 = result7429 := by
  rw [tree7429_def]
  try dsimp only [colour, result7429]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7430_agree : tree7430 = literal7430 := by
  rw [tree7430_def, tree7428_agree, tree7429_agree]
  rfl
theorem node7430_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7430 live7430 coloured7430 = result7430 := by
  rw [tree7430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7428_eq
  unfold live7428 coloured7428 at child
  try dsimp only [live7430, coloured7430]
  rw [child]
  dsimp only [result7428]
  have child := node7429_eq
  unfold live7429 coloured7429 at child
  try dsimp only [live7430, coloured7430]
  rw [child]
  dsimp only [result7429]
  try dsimp only [colour, result7430]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7431_agree : tree7431 = literal7431 := by
  rw [tree7431_def]
  rfl
theorem node7431_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7431 live7431 coloured7431 = result7431 := by
  rw [tree7431_def]
  try dsimp only [colour, result7431]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7432_agree : tree7432 = literal7432 := by
  rw [tree7432_def, tree7430_agree, tree7431_agree]
  rfl
theorem node7432_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7432 live7432 coloured7432 = result7432 := by
  rw [tree7432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7430_eq
  unfold live7430 coloured7430 at child
  try dsimp only [live7432, coloured7432]
  rw [child]
  dsimp only [result7430]
  have child := node7431_eq
  unfold live7431 coloured7431 at child
  try dsimp only [live7432, coloured7432]
  rw [child]
  dsimp only [result7431]
  try dsimp only [colour, result7432]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7433_agree : tree7433 = literal7433 := by
  rw [tree7433_def]
  rfl
theorem node7433_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7433 live7433 coloured7433 = result7433 := by
  rw [tree7433_def]
  try dsimp only [colour, result7433]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7434_agree : tree7434 = literal7434 := by
  rw [tree7434_def, tree7432_agree, tree7433_agree]
  rfl
theorem node7434_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7434 live7434 coloured7434 = result7434 := by
  rw [tree7434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7432_eq
  unfold live7432 coloured7432 at child
  try dsimp only [live7434, coloured7434]
  rw [child]
  dsimp only [result7432]
  have child := node7433_eq
  unfold live7433 coloured7433 at child
  try dsimp only [live7434, coloured7434]
  rw [child]
  dsimp only [result7433]
  try dsimp only [colour, result7434]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7435_agree : tree7435 = literal7435 := by
  rw [tree7435_def]
  rfl
theorem node7435_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7435 live7435 coloured7435 = result7435 := by
  rw [tree7435_def]
  try dsimp only [colour, result7435]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7436_agree : tree7436 = literal7436 := by
  rw [tree7436_def, tree7434_agree, tree7435_agree]
  rfl
theorem node7436_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7436 live7436 coloured7436 = result7436 := by
  rw [tree7436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7434_eq
  unfold live7434 coloured7434 at child
  try dsimp only [live7436, coloured7436]
  rw [child]
  dsimp only [result7434]
  have child := node7435_eq
  unfold live7435 coloured7435 at child
  try dsimp only [live7436, coloured7436]
  rw [child]
  dsimp only [result7435]
  try dsimp only [colour, result7436]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7437_agree : tree7437 = literal7437 := by
  rw [tree7437_def]
  rfl
theorem node7437_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7437 live7437 coloured7437 = result7437 := by
  rw [tree7437_def]
  try dsimp only [colour, result7437]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7438_agree : tree7438 = literal7438 := by
  rw [tree7438_def, tree7436_agree, tree7437_agree]
  rfl
theorem node7438_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7438 live7438 coloured7438 = result7438 := by
  rw [tree7438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7436_eq
  unfold live7436 coloured7436 at child
  try dsimp only [live7438, coloured7438]
  rw [child]
  dsimp only [result7436]
  have child := node7437_eq
  unfold live7437 coloured7437 at child
  try dsimp only [live7438, coloured7438]
  rw [child]
  dsimp only [result7437]
  try dsimp only [colour, result7438]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7439_agree : tree7439 = literal7439 := by
  rw [tree7439_def]
  rfl
theorem node7439_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7439 live7439 coloured7439 = result7439 := by
  rw [tree7439_def]
  try dsimp only [colour, result7439]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7440_agree : tree7440 = literal7440 := by
  rw [tree7440_def, tree7438_agree, tree7439_agree]
  rfl
theorem node7440_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7440 live7440 coloured7440 = result7440 := by
  rw [tree7440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7438_eq
  unfold live7438 coloured7438 at child
  try dsimp only [live7440, coloured7440]
  rw [child]
  dsimp only [result7438]
  have child := node7439_eq
  unfold live7439 coloured7439 at child
  try dsimp only [live7440, coloured7440]
  rw [child]
  dsimp only [result7439]
  try dsimp only [colour, result7440]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7441_agree : tree7441 = literal7441 := by
  rw [tree7441_def]
  rfl
theorem node7441_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7441 live7441 coloured7441 = result7441 := by
  rw [tree7441_def]
  try dsimp only [colour, result7441]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7442_agree : tree7442 = literal7442 := by
  rw [tree7442_def, tree7440_agree, tree7441_agree]
  rfl
theorem node7442_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7442 live7442 coloured7442 = result7442 := by
  rw [tree7442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7440_eq
  unfold live7440 coloured7440 at child
  try dsimp only [live7442, coloured7442]
  rw [child]
  dsimp only [result7440]
  have child := node7441_eq
  unfold live7441 coloured7441 at child
  try dsimp only [live7442, coloured7442]
  rw [child]
  dsimp only [result7441]
  try dsimp only [colour, result7442]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7443_agree : tree7443 = literal7443 := by
  rw [tree7443_def]
  rfl
theorem node7443_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7443 live7443 coloured7443 = result7443 := by
  rw [tree7443_def]
  try dsimp only [colour, result7443]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7444_agree : tree7444 = literal7444 := by
  rw [tree7444_def, tree7442_agree, tree7443_agree]
  rfl
theorem node7444_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7444 live7444 coloured7444 = result7444 := by
  rw [tree7444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7442_eq
  unfold live7442 coloured7442 at child
  try dsimp only [live7444, coloured7444]
  rw [child]
  dsimp only [result7442]
  have child := node7443_eq
  unfold live7443 coloured7443 at child
  try dsimp only [live7444, coloured7444]
  rw [child]
  dsimp only [result7443]
  try dsimp only [colour, result7444]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7445_agree : tree7445 = literal7445 := by
  rw [tree7445_def]
  rfl
theorem node7445_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7445 live7445 coloured7445 = result7445 := by
  rw [tree7445_def]
  try dsimp only [colour, result7445]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7446_agree : tree7446 = literal7446 := by
  rw [tree7446_def, tree7444_agree, tree7445_agree]
  rfl
theorem node7446_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7446 live7446 coloured7446 = result7446 := by
  rw [tree7446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7444_eq
  unfold live7444 coloured7444 at child
  try dsimp only [live7446, coloured7446]
  rw [child]
  dsimp only [result7444]
  have child := node7445_eq
  unfold live7445 coloured7445 at child
  try dsimp only [live7446, coloured7446]
  rw [child]
  dsimp only [result7445]
  try dsimp only [colour, result7446]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7447_agree : tree7447 = literal7447 := by
  rw [tree7447_def]
  rfl
theorem node7447_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7447 live7447 coloured7447 = result7447 := by
  rw [tree7447_def]
  try dsimp only [colour, result7447]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7448_agree : tree7448 = literal7448 := by
  rw [tree7448_def, tree7446_agree, tree7447_agree]
  rfl
theorem node7448_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7448 live7448 coloured7448 = result7448 := by
  rw [tree7448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7446_eq
  unfold live7446 coloured7446 at child
  try dsimp only [live7448, coloured7448]
  rw [child]
  dsimp only [result7446]
  have child := node7447_eq
  unfold live7447 coloured7447 at child
  try dsimp only [live7448, coloured7448]
  rw [child]
  dsimp only [result7447]
  try dsimp only [colour, result7448]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7449_agree : tree7449 = literal7449 := by
  rw [tree7449_def]
  rfl
theorem node7449_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7449 live7449 coloured7449 = result7449 := by
  rw [tree7449_def]
  try dsimp only [colour, result7449]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7450_agree : tree7450 = literal7450 := by
  rw [tree7450_def, tree7448_agree, tree7449_agree]
  rfl
theorem node7450_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7450 live7450 coloured7450 = result7450 := by
  rw [tree7450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7448_eq
  unfold live7448 coloured7448 at child
  try dsimp only [live7450, coloured7450]
  rw [child]
  dsimp only [result7448]
  have child := node7449_eq
  unfold live7449 coloured7449 at child
  try dsimp only [live7450, coloured7450]
  rw [child]
  dsimp only [result7449]
  try dsimp only [colour, result7450]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7451_agree : tree7451 = literal7451 := by
  rw [tree7451_def]
  rfl
theorem node7451_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7451 live7451 coloured7451 = result7451 := by
  rw [tree7451_def]
  try dsimp only [colour, result7451]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7452_agree : tree7452 = literal7452 := by
  rw [tree7452_def, tree7450_agree, tree7451_agree]
  rfl
theorem node7452_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7452 live7452 coloured7452 = result7452 := by
  rw [tree7452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7450_eq
  unfold live7450 coloured7450 at child
  try dsimp only [live7452, coloured7452]
  rw [child]
  dsimp only [result7450]
  have child := node7451_eq
  unfold live7451 coloured7451 at child
  try dsimp only [live7452, coloured7452]
  rw [child]
  dsimp only [result7451]
  try dsimp only [colour, result7452]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7453_agree : tree7453 = literal7453 := by
  rw [tree7453_def]
  rfl
theorem node7453_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7453 live7453 coloured7453 = result7453 := by
  rw [tree7453_def]
  try dsimp only [colour, result7453]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7454_agree : tree7454 = literal7454 := by
  rw [tree7454_def, tree7452_agree, tree7453_agree]
  rfl
theorem node7454_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7454 live7454 coloured7454 = result7454 := by
  rw [tree7454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7452_eq
  unfold live7452 coloured7452 at child
  try dsimp only [live7454, coloured7454]
  rw [child]
  dsimp only [result7452]
  have child := node7453_eq
  unfold live7453 coloured7453 at child
  try dsimp only [live7454, coloured7454]
  rw [child]
  dsimp only [result7453]
  try dsimp only [colour, result7454]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7455_agree : tree7455 = literal7455 := by
  rw [tree7455_def]
  rfl
theorem node7455_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7455 live7455 coloured7455 = result7455 := by
  rw [tree7455_def]
  try dsimp only [colour, result7455]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7456_agree : tree7456 = literal7456 := by
  rw [tree7456_def, tree7454_agree, tree7455_agree]
  rfl
theorem node7456_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7456 live7456 coloured7456 = result7456 := by
  rw [tree7456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7454_eq
  unfold live7454 coloured7454 at child
  try dsimp only [live7456, coloured7456]
  rw [child]
  dsimp only [result7454]
  have child := node7455_eq
  unfold live7455 coloured7455 at child
  try dsimp only [live7456, coloured7456]
  rw [child]
  dsimp only [result7455]
  try dsimp only [colour, result7456]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7457_agree : tree7457 = literal7457 := by
  rw [tree7457_def]
  rfl
theorem node7457_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7457 live7457 coloured7457 = result7457 := by
  rw [tree7457_def]
  try dsimp only [colour, result7457]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7458_agree : tree7458 = literal7458 := by
  rw [tree7458_def, tree7456_agree, tree7457_agree]
  rfl
theorem node7458_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7458 live7458 coloured7458 = result7458 := by
  rw [tree7458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7456_eq
  unfold live7456 coloured7456 at child
  try dsimp only [live7458, coloured7458]
  rw [child]
  dsimp only [result7456]
  have child := node7457_eq
  unfold live7457 coloured7457 at child
  try dsimp only [live7458, coloured7458]
  rw [child]
  dsimp only [result7457]
  try dsimp only [colour, result7458]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7459_agree : tree7459 = literal7459 := by
  rw [tree7459_def]
  rfl
theorem node7459_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7459 live7459 coloured7459 = result7459 := by
  rw [tree7459_def]
  try dsimp only [colour, result7459]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7460_agree : tree7460 = literal7460 := by
  rw [tree7460_def, tree7458_agree, tree7459_agree]
  rfl
theorem node7460_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7460 live7460 coloured7460 = result7460 := by
  rw [tree7460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7458_eq
  unfold live7458 coloured7458 at child
  try dsimp only [live7460, coloured7460]
  rw [child]
  dsimp only [result7458]
  have child := node7459_eq
  unfold live7459 coloured7459 at child
  try dsimp only [live7460, coloured7460]
  rw [child]
  dsimp only [result7459]
  try dsimp only [colour, result7460]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7461_agree : tree7461 = literal7461 := by
  rw [tree7461_def]
  rfl
theorem node7461_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7461 live7461 coloured7461 = result7461 := by
  rw [tree7461_def]
  try dsimp only [colour, result7461]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7462_agree : tree7462 = literal7462 := by
  rw [tree7462_def, tree7460_agree, tree7461_agree]
  rfl
theorem node7462_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7462 live7462 coloured7462 = result7462 := by
  rw [tree7462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7460_eq
  unfold live7460 coloured7460 at child
  try dsimp only [live7462, coloured7462]
  rw [child]
  dsimp only [result7460]
  have child := node7461_eq
  unfold live7461 coloured7461 at child
  try dsimp only [live7462, coloured7462]
  rw [child]
  dsimp only [result7461]
  try dsimp only [colour, result7462]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7463_agree : tree7463 = literal7463 := by
  rw [tree7463_def]
  rfl
theorem node7463_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7463 live7463 coloured7463 = result7463 := by
  rw [tree7463_def]
  try dsimp only [colour, result7463]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7464_agree : tree7464 = literal7464 := by
  rw [tree7464_def, tree7462_agree, tree7463_agree]
  rfl
theorem node7464_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7464 live7464 coloured7464 = result7464 := by
  rw [tree7464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7462_eq
  unfold live7462 coloured7462 at child
  try dsimp only [live7464, coloured7464]
  rw [child]
  dsimp only [result7462]
  have child := node7463_eq
  unfold live7463 coloured7463 at child
  try dsimp only [live7464, coloured7464]
  rw [child]
  dsimp only [result7463]
  try dsimp only [colour, result7464]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7465_agree : tree7465 = literal7465 := by
  rw [tree7465_def]
  rfl
theorem node7465_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7465 live7465 coloured7465 = result7465 := by
  rw [tree7465_def]
  try dsimp only [colour, result7465]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7466_agree : tree7466 = literal7466 := by
  rw [tree7466_def, tree7464_agree, tree7465_agree]
  rfl
theorem node7466_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7466 live7466 coloured7466 = result7466 := by
  rw [tree7466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7464_eq
  unfold live7464 coloured7464 at child
  try dsimp only [live7466, coloured7466]
  rw [child]
  dsimp only [result7464]
  have child := node7465_eq
  unfold live7465 coloured7465 at child
  try dsimp only [live7466, coloured7466]
  rw [child]
  dsimp only [result7465]
  try dsimp only [colour, result7466]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7467_agree : tree7467 = literal7467 := by
  rw [tree7467_def]
  rfl
theorem node7467_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7467 live7467 coloured7467 = result7467 := by
  rw [tree7467_def]
  try dsimp only [colour, result7467]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7468_agree : tree7468 = literal7468 := by
  rw [tree7468_def, tree7466_agree, tree7467_agree]
  rfl
theorem node7468_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7468 live7468 coloured7468 = result7468 := by
  rw [tree7468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7466_eq
  unfold live7466 coloured7466 at child
  try dsimp only [live7468, coloured7468]
  rw [child]
  dsimp only [result7466]
  have child := node7467_eq
  unfold live7467 coloured7467 at child
  try dsimp only [live7468, coloured7468]
  rw [child]
  dsimp only [result7467]
  try dsimp only [colour, result7468]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7469_agree : tree7469 = literal7469 := by
  rw [tree7469_def]
  rfl
theorem node7469_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7469 live7469 coloured7469 = result7469 := by
  rw [tree7469_def]
  try dsimp only [colour, result7469]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7470_agree : tree7470 = literal7470 := by
  rw [tree7470_def, tree7468_agree, tree7469_agree]
  rfl
theorem node7470_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7470 live7470 coloured7470 = result7470 := by
  rw [tree7470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7468_eq
  unfold live7468 coloured7468 at child
  try dsimp only [live7470, coloured7470]
  rw [child]
  dsimp only [result7468]
  have child := node7469_eq
  unfold live7469 coloured7469 at child
  try dsimp only [live7470, coloured7470]
  rw [child]
  dsimp only [result7469]
  try dsimp only [colour, result7470]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7471_agree : tree7471 = literal7471 := by
  rw [tree7471_def]
  rfl
theorem node7471_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7471 live7471 coloured7471 = result7471 := by
  rw [tree7471_def]
  try dsimp only [colour, result7471]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7472_agree : tree7472 = literal7472 := by
  rw [tree7472_def, tree7470_agree, tree7471_agree]
  rfl
theorem node7472_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7472 live7472 coloured7472 = result7472 := by
  rw [tree7472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7470_eq
  unfold live7470 coloured7470 at child
  try dsimp only [live7472, coloured7472]
  rw [child]
  dsimp only [result7470]
  have child := node7471_eq
  unfold live7471 coloured7471 at child
  try dsimp only [live7472, coloured7472]
  rw [child]
  dsimp only [result7471]
  try dsimp only [colour, result7472]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7473_agree : tree7473 = literal7473 := by
  rw [tree7473_def]
  rfl
theorem node7473_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7473 live7473 coloured7473 = result7473 := by
  rw [tree7473_def]
  try dsimp only [colour, result7473]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7474_agree : tree7474 = literal7474 := by
  rw [tree7474_def, tree7472_agree, tree7473_agree]
  rfl
theorem node7474_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7474 live7474 coloured7474 = result7474 := by
  rw [tree7474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7472_eq
  unfold live7472 coloured7472 at child
  try dsimp only [live7474, coloured7474]
  rw [child]
  dsimp only [result7472]
  have child := node7473_eq
  unfold live7473 coloured7473 at child
  try dsimp only [live7474, coloured7474]
  rw [child]
  dsimp only [result7473]
  try dsimp only [colour, result7474]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7475_agree : tree7475 = literal7475 := by
  rw [tree7475_def]
  rfl
theorem node7475_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7475 live7475 coloured7475 = result7475 := by
  rw [tree7475_def]
  try dsimp only [colour, result7475]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7476_agree : tree7476 = literal7476 := by
  rw [tree7476_def, tree7474_agree, tree7475_agree]
  rfl
theorem node7476_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7476 live7476 coloured7476 = result7476 := by
  rw [tree7476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7474_eq
  unfold live7474 coloured7474 at child
  try dsimp only [live7476, coloured7476]
  rw [child]
  dsimp only [result7474]
  have child := node7475_eq
  unfold live7475 coloured7475 at child
  try dsimp only [live7476, coloured7476]
  rw [child]
  dsimp only [result7475]
  try dsimp only [colour, result7476]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7477_agree : tree7477 = literal7477 := by
  rw [tree7477_def]
  rfl
theorem node7477_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7477 live7477 coloured7477 = result7477 := by
  rw [tree7477_def]
  try dsimp only [colour, result7477]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7478_agree : tree7478 = literal7478 := by
  rw [tree7478_def, tree7476_agree, tree7477_agree]
  rfl
theorem node7478_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7478 live7478 coloured7478 = result7478 := by
  rw [tree7478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7476_eq
  unfold live7476 coloured7476 at child
  try dsimp only [live7478, coloured7478]
  rw [child]
  dsimp only [result7476]
  have child := node7477_eq
  unfold live7477 coloured7477 at child
  try dsimp only [live7478, coloured7478]
  rw [child]
  dsimp only [result7477]
  try dsimp only [colour, result7478]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7479_agree : tree7479 = literal7479 := by
  rw [tree7479_def]
  rfl
theorem node7479_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7479 live7479 coloured7479 = result7479 := by
  rw [tree7479_def]
  try dsimp only [colour, result7479]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7480_agree : tree7480 = literal7480 := by
  rw [tree7480_def, tree7478_agree, tree7479_agree]
  rfl
theorem node7480_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7480 live7480 coloured7480 = result7480 := by
  rw [tree7480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7478_eq
  unfold live7478 coloured7478 at child
  try dsimp only [live7480, coloured7480]
  rw [child]
  dsimp only [result7478]
  have child := node7479_eq
  unfold live7479 coloured7479 at child
  try dsimp only [live7480, coloured7480]
  rw [child]
  dsimp only [result7479]
  try dsimp only [colour, result7480]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7481_agree : tree7481 = literal7481 := by
  rw [tree7481_def]
  rfl
theorem node7481_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7481 live7481 coloured7481 = result7481 := by
  rw [tree7481_def]
  try dsimp only [colour, result7481]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7482_agree : tree7482 = literal7482 := by
  rw [tree7482_def, tree7480_agree, tree7481_agree]
  rfl
theorem node7482_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7482 live7482 coloured7482 = result7482 := by
  rw [tree7482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7480_eq
  unfold live7480 coloured7480 at child
  try dsimp only [live7482, coloured7482]
  rw [child]
  dsimp only [result7480]
  have child := node7481_eq
  unfold live7481 coloured7481 at child
  try dsimp only [live7482, coloured7482]
  rw [child]
  dsimp only [result7481]
  try dsimp only [colour, result7482]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7483_agree : tree7483 = literal7483 := by
  rw [tree7483_def]
  rfl
theorem node7483_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7483 live7483 coloured7483 = result7483 := by
  rw [tree7483_def]
  try dsimp only [colour, result7483]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7484_agree : tree7484 = literal7484 := by
  rw [tree7484_def, tree7482_agree, tree7483_agree]
  rfl
theorem node7484_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7484 live7484 coloured7484 = result7484 := by
  rw [tree7484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7482_eq
  unfold live7482 coloured7482 at child
  try dsimp only [live7484, coloured7484]
  rw [child]
  dsimp only [result7482]
  have child := node7483_eq
  unfold live7483 coloured7483 at child
  try dsimp only [live7484, coloured7484]
  rw [child]
  dsimp only [result7483]
  try dsimp only [colour, result7484]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7485_agree : tree7485 = literal7485 := by
  rw [tree7485_def]
  rfl
theorem node7485_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7485 live7485 coloured7485 = result7485 := by
  rw [tree7485_def]
  try dsimp only [colour, result7485]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7486_agree : tree7486 = literal7486 := by
  rw [tree7486_def, tree7484_agree, tree7485_agree]
  rfl
theorem node7486_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7486 live7486 coloured7486 = result7486 := by
  rw [tree7486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node7484_eq
  unfold live7484 coloured7484 at child
  try dsimp only [live7486, coloured7486]
  rw [child]
  dsimp only [result7484]
  have child := node7485_eq
  unfold live7485 coloured7485 at child
  try dsimp only [live7486, coloured7486]
  rw [child]
  dsimp only [result7485]
  try dsimp only [colour, result7486]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree7487_agree : tree7487 = literal7487 := by
  rw [tree7487_def]
  rfl
theorem node7487_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7487 live7487 coloured7487 = result7487 := by
  rw [tree7487_def]
  try dsimp only [colour, result7487]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
