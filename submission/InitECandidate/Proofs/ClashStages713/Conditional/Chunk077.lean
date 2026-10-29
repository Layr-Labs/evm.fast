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
theorem tree7392_agree_conditional
    (child0 : tree7390 = literal7390)
    (child1 : tree7391 = literal7391) : tree7392 = literal7392 := by
  rw [tree7392_def, child0, child1]
  rfl
theorem node7392_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7390 live7390 coloured7390 = result7390)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7391 live7391 coloured7391 = result7391) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7392 live7392 coloured7392 = result7392 := by
  rw [tree7392_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7390 coloured7390 at child
  try dsimp only [live7392, coloured7392]
  rw [child]
  dsimp only [result7390]
  have child := child1
  unfold live7391 coloured7391 at child
  try dsimp only [live7392, coloured7392]
  rw [child]
  dsimp only [result7391]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7393_agree_conditional : tree7393 = literal7393 := by
  rw [tree7393_def]
  rfl
theorem node7393_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7393 live7393 coloured7393 = result7393 := by
  rw [tree7393_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7394_agree_conditional
    (child0 : tree7392 = literal7392)
    (child1 : tree7393 = literal7393) : tree7394 = literal7394 := by
  rw [tree7394_def, child0, child1]
  rfl
theorem node7394_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7392 live7392 coloured7392 = result7392)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7393 live7393 coloured7393 = result7393) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7394 live7394 coloured7394 = result7394 := by
  rw [tree7394_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7392 coloured7392 at child
  try dsimp only [live7394, coloured7394]
  rw [child]
  dsimp only [result7392]
  have child := child1
  unfold live7393 coloured7393 at child
  try dsimp only [live7394, coloured7394]
  rw [child]
  dsimp only [result7393]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7395_agree_conditional : tree7395 = literal7395 := by
  rw [tree7395_def]
  rfl
theorem node7395_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7395 live7395 coloured7395 = result7395 := by
  rw [tree7395_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7396_agree_conditional
    (child0 : tree7394 = literal7394)
    (child1 : tree7395 = literal7395) : tree7396 = literal7396 := by
  rw [tree7396_def, child0, child1]
  rfl
theorem node7396_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7394 live7394 coloured7394 = result7394)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7395 live7395 coloured7395 = result7395) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7396 live7396 coloured7396 = result7396 := by
  rw [tree7396_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7394 coloured7394 at child
  try dsimp only [live7396, coloured7396]
  rw [child]
  dsimp only [result7394]
  have child := child1
  unfold live7395 coloured7395 at child
  try dsimp only [live7396, coloured7396]
  rw [child]
  dsimp only [result7395]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7397_agree_conditional : tree7397 = literal7397 := by
  rw [tree7397_def]
  rfl
theorem node7397_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7397 live7397 coloured7397 = result7397 := by
  rw [tree7397_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7398_agree_conditional
    (child0 : tree7396 = literal7396)
    (child1 : tree7397 = literal7397) : tree7398 = literal7398 := by
  rw [tree7398_def, child0, child1]
  rfl
theorem node7398_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7396 live7396 coloured7396 = result7396)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7397 live7397 coloured7397 = result7397) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7398 live7398 coloured7398 = result7398 := by
  rw [tree7398_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7396 coloured7396 at child
  try dsimp only [live7398, coloured7398]
  rw [child]
  dsimp only [result7396]
  have child := child1
  unfold live7397 coloured7397 at child
  try dsimp only [live7398, coloured7398]
  rw [child]
  dsimp only [result7397]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7399_agree_conditional : tree7399 = literal7399 := by
  rw [tree7399_def]
  rfl
theorem node7399_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7399 live7399 coloured7399 = result7399 := by
  rw [tree7399_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7400_agree_conditional
    (child0 : tree7398 = literal7398)
    (child1 : tree7399 = literal7399) : tree7400 = literal7400 := by
  rw [tree7400_def, child0, child1]
  rfl
theorem node7400_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7398 live7398 coloured7398 = result7398)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7399 live7399 coloured7399 = result7399) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7400 live7400 coloured7400 = result7400 := by
  rw [tree7400_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7398 coloured7398 at child
  try dsimp only [live7400, coloured7400]
  rw [child]
  dsimp only [result7398]
  have child := child1
  unfold live7399 coloured7399 at child
  try dsimp only [live7400, coloured7400]
  rw [child]
  dsimp only [result7399]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7401_agree_conditional : tree7401 = literal7401 := by
  rw [tree7401_def]
  rfl
theorem node7401_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7401 live7401 coloured7401 = result7401 := by
  rw [tree7401_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7402_agree_conditional
    (child0 : tree7400 = literal7400)
    (child1 : tree7401 = literal7401) : tree7402 = literal7402 := by
  rw [tree7402_def, child0, child1]
  rfl
theorem node7402_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7400 live7400 coloured7400 = result7400)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7401 live7401 coloured7401 = result7401) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7402 live7402 coloured7402 = result7402 := by
  rw [tree7402_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7400 coloured7400 at child
  try dsimp only [live7402, coloured7402]
  rw [child]
  dsimp only [result7400]
  have child := child1
  unfold live7401 coloured7401 at child
  try dsimp only [live7402, coloured7402]
  rw [child]
  dsimp only [result7401]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7403_agree_conditional : tree7403 = literal7403 := by
  rw [tree7403_def]
  rfl
theorem node7403_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7403 live7403 coloured7403 = result7403 := by
  rw [tree7403_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7404_agree_conditional
    (child0 : tree7402 = literal7402)
    (child1 : tree7403 = literal7403) : tree7404 = literal7404 := by
  rw [tree7404_def, child0, child1]
  rfl
theorem node7404_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7402 live7402 coloured7402 = result7402)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7403 live7403 coloured7403 = result7403) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7404 live7404 coloured7404 = result7404 := by
  rw [tree7404_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7402 coloured7402 at child
  try dsimp only [live7404, coloured7404]
  rw [child]
  dsimp only [result7402]
  have child := child1
  unfold live7403 coloured7403 at child
  try dsimp only [live7404, coloured7404]
  rw [child]
  dsimp only [result7403]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7405_agree_conditional : tree7405 = literal7405 := by
  rw [tree7405_def]
  rfl
theorem node7405_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7405 live7405 coloured7405 = result7405 := by
  rw [tree7405_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7406_agree_conditional
    (child0 : tree7404 = literal7404)
    (child1 : tree7405 = literal7405) : tree7406 = literal7406 := by
  rw [tree7406_def, child0, child1]
  rfl
theorem node7406_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7404 live7404 coloured7404 = result7404)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7405 live7405 coloured7405 = result7405) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7406 live7406 coloured7406 = result7406 := by
  rw [tree7406_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7404 coloured7404 at child
  try dsimp only [live7406, coloured7406]
  rw [child]
  dsimp only [result7404]
  have child := child1
  unfold live7405 coloured7405 at child
  try dsimp only [live7406, coloured7406]
  rw [child]
  dsimp only [result7405]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7407_agree_conditional : tree7407 = literal7407 := by
  rw [tree7407_def]
  rfl
theorem node7407_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7407 live7407 coloured7407 = result7407 := by
  rw [tree7407_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7408_agree_conditional
    (child0 : tree7406 = literal7406)
    (child1 : tree7407 = literal7407) : tree7408 = literal7408 := by
  rw [tree7408_def, child0, child1]
  rfl
theorem node7408_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7406 live7406 coloured7406 = result7406)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7407 live7407 coloured7407 = result7407) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7408 live7408 coloured7408 = result7408 := by
  rw [tree7408_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7406 coloured7406 at child
  try dsimp only [live7408, coloured7408]
  rw [child]
  dsimp only [result7406]
  have child := child1
  unfold live7407 coloured7407 at child
  try dsimp only [live7408, coloured7408]
  rw [child]
  dsimp only [result7407]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7409_agree_conditional : tree7409 = literal7409 := by
  rw [tree7409_def]
  rfl
theorem node7409_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7409 live7409 coloured7409 = result7409 := by
  rw [tree7409_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7410_agree_conditional
    (child0 : tree7408 = literal7408)
    (child1 : tree7409 = literal7409) : tree7410 = literal7410 := by
  rw [tree7410_def, child0, child1]
  rfl
theorem node7410_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7408 live7408 coloured7408 = result7408)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7409 live7409 coloured7409 = result7409) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7410 live7410 coloured7410 = result7410 := by
  rw [tree7410_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7408 coloured7408 at child
  try dsimp only [live7410, coloured7410]
  rw [child]
  dsimp only [result7408]
  have child := child1
  unfold live7409 coloured7409 at child
  try dsimp only [live7410, coloured7410]
  rw [child]
  dsimp only [result7409]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7411_agree_conditional : tree7411 = literal7411 := by
  rw [tree7411_def]
  rfl
theorem node7411_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7411 live7411 coloured7411 = result7411 := by
  rw [tree7411_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7412_agree_conditional
    (child0 : tree7410 = literal7410)
    (child1 : tree7411 = literal7411) : tree7412 = literal7412 := by
  rw [tree7412_def, child0, child1]
  rfl
theorem node7412_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7410 live7410 coloured7410 = result7410)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7411 live7411 coloured7411 = result7411) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7412 live7412 coloured7412 = result7412 := by
  rw [tree7412_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7410 coloured7410 at child
  try dsimp only [live7412, coloured7412]
  rw [child]
  dsimp only [result7410]
  have child := child1
  unfold live7411 coloured7411 at child
  try dsimp only [live7412, coloured7412]
  rw [child]
  dsimp only [result7411]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7413_agree_conditional : tree7413 = literal7413 := by
  rw [tree7413_def]
  rfl
theorem node7413_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7413 live7413 coloured7413 = result7413 := by
  rw [tree7413_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7414_agree_conditional
    (child0 : tree7412 = literal7412)
    (child1 : tree7413 = literal7413) : tree7414 = literal7414 := by
  rw [tree7414_def, child0, child1]
  rfl
theorem node7414_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7412 live7412 coloured7412 = result7412)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7413 live7413 coloured7413 = result7413) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7414 live7414 coloured7414 = result7414 := by
  rw [tree7414_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7412 coloured7412 at child
  try dsimp only [live7414, coloured7414]
  rw [child]
  dsimp only [result7412]
  have child := child1
  unfold live7413 coloured7413 at child
  try dsimp only [live7414, coloured7414]
  rw [child]
  dsimp only [result7413]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7415_agree_conditional : tree7415 = literal7415 := by
  rw [tree7415_def]
  rfl
theorem node7415_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7415 live7415 coloured7415 = result7415 := by
  rw [tree7415_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7416_agree_conditional
    (child0 : tree7414 = literal7414)
    (child1 : tree7415 = literal7415) : tree7416 = literal7416 := by
  rw [tree7416_def, child0, child1]
  rfl
theorem node7416_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7414 live7414 coloured7414 = result7414)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7415 live7415 coloured7415 = result7415) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7416 live7416 coloured7416 = result7416 := by
  rw [tree7416_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7414 coloured7414 at child
  try dsimp only [live7416, coloured7416]
  rw [child]
  dsimp only [result7414]
  have child := child1
  unfold live7415 coloured7415 at child
  try dsimp only [live7416, coloured7416]
  rw [child]
  dsimp only [result7415]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7417_agree_conditional : tree7417 = literal7417 := by
  rw [tree7417_def]
  rfl
theorem node7417_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7417 live7417 coloured7417 = result7417 := by
  rw [tree7417_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7418_agree_conditional
    (child0 : tree7416 = literal7416)
    (child1 : tree7417 = literal7417) : tree7418 = literal7418 := by
  rw [tree7418_def, child0, child1]
  rfl
theorem node7418_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7416 live7416 coloured7416 = result7416)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7417 live7417 coloured7417 = result7417) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7418 live7418 coloured7418 = result7418 := by
  rw [tree7418_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7416 coloured7416 at child
  try dsimp only [live7418, coloured7418]
  rw [child]
  dsimp only [result7416]
  have child := child1
  unfold live7417 coloured7417 at child
  try dsimp only [live7418, coloured7418]
  rw [child]
  dsimp only [result7417]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7419_agree_conditional : tree7419 = literal7419 := by
  rw [tree7419_def]
  rfl
theorem node7419_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7419 live7419 coloured7419 = result7419 := by
  rw [tree7419_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7420_agree_conditional
    (child0 : tree7418 = literal7418)
    (child1 : tree7419 = literal7419) : tree7420 = literal7420 := by
  rw [tree7420_def, child0, child1]
  rfl
theorem node7420_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7418 live7418 coloured7418 = result7418)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7419 live7419 coloured7419 = result7419) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7420 live7420 coloured7420 = result7420 := by
  rw [tree7420_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7418 coloured7418 at child
  try dsimp only [live7420, coloured7420]
  rw [child]
  dsimp only [result7418]
  have child := child1
  unfold live7419 coloured7419 at child
  try dsimp only [live7420, coloured7420]
  rw [child]
  dsimp only [result7419]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7421_agree_conditional : tree7421 = literal7421 := by
  rw [tree7421_def]
  rfl
theorem node7421_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7421 live7421 coloured7421 = result7421 := by
  rw [tree7421_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7422_agree_conditional
    (child0 : tree7420 = literal7420)
    (child1 : tree7421 = literal7421) : tree7422 = literal7422 := by
  rw [tree7422_def, child0, child1]
  rfl
theorem node7422_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7420 live7420 coloured7420 = result7420)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7421 live7421 coloured7421 = result7421) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7422 live7422 coloured7422 = result7422 := by
  rw [tree7422_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7420 coloured7420 at child
  try dsimp only [live7422, coloured7422]
  rw [child]
  dsimp only [result7420]
  have child := child1
  unfold live7421 coloured7421 at child
  try dsimp only [live7422, coloured7422]
  rw [child]
  dsimp only [result7421]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7423_agree_conditional : tree7423 = literal7423 := by
  rw [tree7423_def]
  rfl
theorem node7423_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7423 live7423 coloured7423 = result7423 := by
  rw [tree7423_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7424_agree_conditional
    (child0 : tree7422 = literal7422)
    (child1 : tree7423 = literal7423) : tree7424 = literal7424 := by
  rw [tree7424_def, child0, child1]
  rfl
theorem node7424_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7422 live7422 coloured7422 = result7422)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7423 live7423 coloured7423 = result7423) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7424 live7424 coloured7424 = result7424 := by
  rw [tree7424_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7422 coloured7422 at child
  try dsimp only [live7424, coloured7424]
  rw [child]
  dsimp only [result7422]
  have child := child1
  unfold live7423 coloured7423 at child
  try dsimp only [live7424, coloured7424]
  rw [child]
  dsimp only [result7423]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7425_agree_conditional : tree7425 = literal7425 := by
  rw [tree7425_def]
  rfl
theorem node7425_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7425 live7425 coloured7425 = result7425 := by
  rw [tree7425_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7426_agree_conditional
    (child0 : tree7424 = literal7424)
    (child1 : tree7425 = literal7425) : tree7426 = literal7426 := by
  rw [tree7426_def, child0, child1]
  rfl
theorem node7426_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7424 live7424 coloured7424 = result7424)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7425 live7425 coloured7425 = result7425) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7426 live7426 coloured7426 = result7426 := by
  rw [tree7426_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7424 coloured7424 at child
  try dsimp only [live7426, coloured7426]
  rw [child]
  dsimp only [result7424]
  have child := child1
  unfold live7425 coloured7425 at child
  try dsimp only [live7426, coloured7426]
  rw [child]
  dsimp only [result7425]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7427_agree_conditional : tree7427 = literal7427 := by
  rw [tree7427_def]
  rfl
theorem node7427_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7427 live7427 coloured7427 = result7427 := by
  rw [tree7427_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7428_agree_conditional
    (child0 : tree7426 = literal7426)
    (child1 : tree7427 = literal7427) : tree7428 = literal7428 := by
  rw [tree7428_def, child0, child1]
  rfl
theorem node7428_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7426 live7426 coloured7426 = result7426)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7427 live7427 coloured7427 = result7427) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7428 live7428 coloured7428 = result7428 := by
  rw [tree7428_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7426 coloured7426 at child
  try dsimp only [live7428, coloured7428]
  rw [child]
  dsimp only [result7426]
  have child := child1
  unfold live7427 coloured7427 at child
  try dsimp only [live7428, coloured7428]
  rw [child]
  dsimp only [result7427]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7429_agree_conditional : tree7429 = literal7429 := by
  rw [tree7429_def]
  rfl
theorem node7429_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7429 live7429 coloured7429 = result7429 := by
  rw [tree7429_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7430_agree_conditional
    (child0 : tree7428 = literal7428)
    (child1 : tree7429 = literal7429) : tree7430 = literal7430 := by
  rw [tree7430_def, child0, child1]
  rfl
theorem node7430_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7428 live7428 coloured7428 = result7428)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7429 live7429 coloured7429 = result7429) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7430 live7430 coloured7430 = result7430 := by
  rw [tree7430_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7428 coloured7428 at child
  try dsimp only [live7430, coloured7430]
  rw [child]
  dsimp only [result7428]
  have child := child1
  unfold live7429 coloured7429 at child
  try dsimp only [live7430, coloured7430]
  rw [child]
  dsimp only [result7429]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7431_agree_conditional : tree7431 = literal7431 := by
  rw [tree7431_def]
  rfl
theorem node7431_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7431 live7431 coloured7431 = result7431 := by
  rw [tree7431_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7432_agree_conditional
    (child0 : tree7430 = literal7430)
    (child1 : tree7431 = literal7431) : tree7432 = literal7432 := by
  rw [tree7432_def, child0, child1]
  rfl
theorem node7432_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7430 live7430 coloured7430 = result7430)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7431 live7431 coloured7431 = result7431) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7432 live7432 coloured7432 = result7432 := by
  rw [tree7432_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7430 coloured7430 at child
  try dsimp only [live7432, coloured7432]
  rw [child]
  dsimp only [result7430]
  have child := child1
  unfold live7431 coloured7431 at child
  try dsimp only [live7432, coloured7432]
  rw [child]
  dsimp only [result7431]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7433_agree_conditional : tree7433 = literal7433 := by
  rw [tree7433_def]
  rfl
theorem node7433_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7433 live7433 coloured7433 = result7433 := by
  rw [tree7433_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7434_agree_conditional
    (child0 : tree7432 = literal7432)
    (child1 : tree7433 = literal7433) : tree7434 = literal7434 := by
  rw [tree7434_def, child0, child1]
  rfl
theorem node7434_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7432 live7432 coloured7432 = result7432)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7433 live7433 coloured7433 = result7433) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7434 live7434 coloured7434 = result7434 := by
  rw [tree7434_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7432 coloured7432 at child
  try dsimp only [live7434, coloured7434]
  rw [child]
  dsimp only [result7432]
  have child := child1
  unfold live7433 coloured7433 at child
  try dsimp only [live7434, coloured7434]
  rw [child]
  dsimp only [result7433]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7435_agree_conditional : tree7435 = literal7435 := by
  rw [tree7435_def]
  rfl
theorem node7435_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7435 live7435 coloured7435 = result7435 := by
  rw [tree7435_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7436_agree_conditional
    (child0 : tree7434 = literal7434)
    (child1 : tree7435 = literal7435) : tree7436 = literal7436 := by
  rw [tree7436_def, child0, child1]
  rfl
theorem node7436_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7434 live7434 coloured7434 = result7434)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7435 live7435 coloured7435 = result7435) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7436 live7436 coloured7436 = result7436 := by
  rw [tree7436_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7434 coloured7434 at child
  try dsimp only [live7436, coloured7436]
  rw [child]
  dsimp only [result7434]
  have child := child1
  unfold live7435 coloured7435 at child
  try dsimp only [live7436, coloured7436]
  rw [child]
  dsimp only [result7435]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7437_agree_conditional : tree7437 = literal7437 := by
  rw [tree7437_def]
  rfl
theorem node7437_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7437 live7437 coloured7437 = result7437 := by
  rw [tree7437_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7438_agree_conditional
    (child0 : tree7436 = literal7436)
    (child1 : tree7437 = literal7437) : tree7438 = literal7438 := by
  rw [tree7438_def, child0, child1]
  rfl
theorem node7438_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7436 live7436 coloured7436 = result7436)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7437 live7437 coloured7437 = result7437) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7438 live7438 coloured7438 = result7438 := by
  rw [tree7438_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7436 coloured7436 at child
  try dsimp only [live7438, coloured7438]
  rw [child]
  dsimp only [result7436]
  have child := child1
  unfold live7437 coloured7437 at child
  try dsimp only [live7438, coloured7438]
  rw [child]
  dsimp only [result7437]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7439_agree_conditional : tree7439 = literal7439 := by
  rw [tree7439_def]
  rfl
theorem node7439_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7439 live7439 coloured7439 = result7439 := by
  rw [tree7439_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7440_agree_conditional
    (child0 : tree7438 = literal7438)
    (child1 : tree7439 = literal7439) : tree7440 = literal7440 := by
  rw [tree7440_def, child0, child1]
  rfl
theorem node7440_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7438 live7438 coloured7438 = result7438)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7439 live7439 coloured7439 = result7439) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7440 live7440 coloured7440 = result7440 := by
  rw [tree7440_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7438 coloured7438 at child
  try dsimp only [live7440, coloured7440]
  rw [child]
  dsimp only [result7438]
  have child := child1
  unfold live7439 coloured7439 at child
  try dsimp only [live7440, coloured7440]
  rw [child]
  dsimp only [result7439]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7441_agree_conditional : tree7441 = literal7441 := by
  rw [tree7441_def]
  rfl
theorem node7441_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7441 live7441 coloured7441 = result7441 := by
  rw [tree7441_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7442_agree_conditional
    (child0 : tree7440 = literal7440)
    (child1 : tree7441 = literal7441) : tree7442 = literal7442 := by
  rw [tree7442_def, child0, child1]
  rfl
theorem node7442_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7440 live7440 coloured7440 = result7440)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7441 live7441 coloured7441 = result7441) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7442 live7442 coloured7442 = result7442 := by
  rw [tree7442_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7440 coloured7440 at child
  try dsimp only [live7442, coloured7442]
  rw [child]
  dsimp only [result7440]
  have child := child1
  unfold live7441 coloured7441 at child
  try dsimp only [live7442, coloured7442]
  rw [child]
  dsimp only [result7441]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7443_agree_conditional : tree7443 = literal7443 := by
  rw [tree7443_def]
  rfl
theorem node7443_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7443 live7443 coloured7443 = result7443 := by
  rw [tree7443_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7444_agree_conditional
    (child0 : tree7442 = literal7442)
    (child1 : tree7443 = literal7443) : tree7444 = literal7444 := by
  rw [tree7444_def, child0, child1]
  rfl
theorem node7444_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7442 live7442 coloured7442 = result7442)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7443 live7443 coloured7443 = result7443) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7444 live7444 coloured7444 = result7444 := by
  rw [tree7444_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7442 coloured7442 at child
  try dsimp only [live7444, coloured7444]
  rw [child]
  dsimp only [result7442]
  have child := child1
  unfold live7443 coloured7443 at child
  try dsimp only [live7444, coloured7444]
  rw [child]
  dsimp only [result7443]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7445_agree_conditional : tree7445 = literal7445 := by
  rw [tree7445_def]
  rfl
theorem node7445_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7445 live7445 coloured7445 = result7445 := by
  rw [tree7445_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7446_agree_conditional
    (child0 : tree7444 = literal7444)
    (child1 : tree7445 = literal7445) : tree7446 = literal7446 := by
  rw [tree7446_def, child0, child1]
  rfl
theorem node7446_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7444 live7444 coloured7444 = result7444)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7445 live7445 coloured7445 = result7445) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7446 live7446 coloured7446 = result7446 := by
  rw [tree7446_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7444 coloured7444 at child
  try dsimp only [live7446, coloured7446]
  rw [child]
  dsimp only [result7444]
  have child := child1
  unfold live7445 coloured7445 at child
  try dsimp only [live7446, coloured7446]
  rw [child]
  dsimp only [result7445]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7447_agree_conditional : tree7447 = literal7447 := by
  rw [tree7447_def]
  rfl
theorem node7447_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7447 live7447 coloured7447 = result7447 := by
  rw [tree7447_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7448_agree_conditional
    (child0 : tree7446 = literal7446)
    (child1 : tree7447 = literal7447) : tree7448 = literal7448 := by
  rw [tree7448_def, child0, child1]
  rfl
theorem node7448_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7446 live7446 coloured7446 = result7446)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7447 live7447 coloured7447 = result7447) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7448 live7448 coloured7448 = result7448 := by
  rw [tree7448_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7446 coloured7446 at child
  try dsimp only [live7448, coloured7448]
  rw [child]
  dsimp only [result7446]
  have child := child1
  unfold live7447 coloured7447 at child
  try dsimp only [live7448, coloured7448]
  rw [child]
  dsimp only [result7447]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7449_agree_conditional : tree7449 = literal7449 := by
  rw [tree7449_def]
  rfl
theorem node7449_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7449 live7449 coloured7449 = result7449 := by
  rw [tree7449_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7450_agree_conditional
    (child0 : tree7448 = literal7448)
    (child1 : tree7449 = literal7449) : tree7450 = literal7450 := by
  rw [tree7450_def, child0, child1]
  rfl
theorem node7450_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7448 live7448 coloured7448 = result7448)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7449 live7449 coloured7449 = result7449) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7450 live7450 coloured7450 = result7450 := by
  rw [tree7450_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7448 coloured7448 at child
  try dsimp only [live7450, coloured7450]
  rw [child]
  dsimp only [result7448]
  have child := child1
  unfold live7449 coloured7449 at child
  try dsimp only [live7450, coloured7450]
  rw [child]
  dsimp only [result7449]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7451_agree_conditional : tree7451 = literal7451 := by
  rw [tree7451_def]
  rfl
theorem node7451_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7451 live7451 coloured7451 = result7451 := by
  rw [tree7451_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7452_agree_conditional
    (child0 : tree7450 = literal7450)
    (child1 : tree7451 = literal7451) : tree7452 = literal7452 := by
  rw [tree7452_def, child0, child1]
  rfl
theorem node7452_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7450 live7450 coloured7450 = result7450)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7451 live7451 coloured7451 = result7451) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7452 live7452 coloured7452 = result7452 := by
  rw [tree7452_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7450 coloured7450 at child
  try dsimp only [live7452, coloured7452]
  rw [child]
  dsimp only [result7450]
  have child := child1
  unfold live7451 coloured7451 at child
  try dsimp only [live7452, coloured7452]
  rw [child]
  dsimp only [result7451]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7453_agree_conditional : tree7453 = literal7453 := by
  rw [tree7453_def]
  rfl
theorem node7453_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7453 live7453 coloured7453 = result7453 := by
  rw [tree7453_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7454_agree_conditional
    (child0 : tree7452 = literal7452)
    (child1 : tree7453 = literal7453) : tree7454 = literal7454 := by
  rw [tree7454_def, child0, child1]
  rfl
theorem node7454_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7452 live7452 coloured7452 = result7452)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7453 live7453 coloured7453 = result7453) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7454 live7454 coloured7454 = result7454 := by
  rw [tree7454_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7452 coloured7452 at child
  try dsimp only [live7454, coloured7454]
  rw [child]
  dsimp only [result7452]
  have child := child1
  unfold live7453 coloured7453 at child
  try dsimp only [live7454, coloured7454]
  rw [child]
  dsimp only [result7453]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7455_agree_conditional : tree7455 = literal7455 := by
  rw [tree7455_def]
  rfl
theorem node7455_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7455 live7455 coloured7455 = result7455 := by
  rw [tree7455_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7456_agree_conditional
    (child0 : tree7454 = literal7454)
    (child1 : tree7455 = literal7455) : tree7456 = literal7456 := by
  rw [tree7456_def, child0, child1]
  rfl
theorem node7456_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7454 live7454 coloured7454 = result7454)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7455 live7455 coloured7455 = result7455) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7456 live7456 coloured7456 = result7456 := by
  rw [tree7456_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7454 coloured7454 at child
  try dsimp only [live7456, coloured7456]
  rw [child]
  dsimp only [result7454]
  have child := child1
  unfold live7455 coloured7455 at child
  try dsimp only [live7456, coloured7456]
  rw [child]
  dsimp only [result7455]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7457_agree_conditional : tree7457 = literal7457 := by
  rw [tree7457_def]
  rfl
theorem node7457_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7457 live7457 coloured7457 = result7457 := by
  rw [tree7457_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7458_agree_conditional
    (child0 : tree7456 = literal7456)
    (child1 : tree7457 = literal7457) : tree7458 = literal7458 := by
  rw [tree7458_def, child0, child1]
  rfl
theorem node7458_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7456 live7456 coloured7456 = result7456)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7457 live7457 coloured7457 = result7457) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7458 live7458 coloured7458 = result7458 := by
  rw [tree7458_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7456 coloured7456 at child
  try dsimp only [live7458, coloured7458]
  rw [child]
  dsimp only [result7456]
  have child := child1
  unfold live7457 coloured7457 at child
  try dsimp only [live7458, coloured7458]
  rw [child]
  dsimp only [result7457]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7459_agree_conditional : tree7459 = literal7459 := by
  rw [tree7459_def]
  rfl
theorem node7459_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7459 live7459 coloured7459 = result7459 := by
  rw [tree7459_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7460_agree_conditional
    (child0 : tree7458 = literal7458)
    (child1 : tree7459 = literal7459) : tree7460 = literal7460 := by
  rw [tree7460_def, child0, child1]
  rfl
theorem node7460_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7458 live7458 coloured7458 = result7458)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7459 live7459 coloured7459 = result7459) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7460 live7460 coloured7460 = result7460 := by
  rw [tree7460_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7458 coloured7458 at child
  try dsimp only [live7460, coloured7460]
  rw [child]
  dsimp only [result7458]
  have child := child1
  unfold live7459 coloured7459 at child
  try dsimp only [live7460, coloured7460]
  rw [child]
  dsimp only [result7459]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7461_agree_conditional : tree7461 = literal7461 := by
  rw [tree7461_def]
  rfl
theorem node7461_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7461 live7461 coloured7461 = result7461 := by
  rw [tree7461_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7462_agree_conditional
    (child0 : tree7460 = literal7460)
    (child1 : tree7461 = literal7461) : tree7462 = literal7462 := by
  rw [tree7462_def, child0, child1]
  rfl
theorem node7462_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7460 live7460 coloured7460 = result7460)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7461 live7461 coloured7461 = result7461) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7462 live7462 coloured7462 = result7462 := by
  rw [tree7462_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7460 coloured7460 at child
  try dsimp only [live7462, coloured7462]
  rw [child]
  dsimp only [result7460]
  have child := child1
  unfold live7461 coloured7461 at child
  try dsimp only [live7462, coloured7462]
  rw [child]
  dsimp only [result7461]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7463_agree_conditional : tree7463 = literal7463 := by
  rw [tree7463_def]
  rfl
theorem node7463_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7463 live7463 coloured7463 = result7463 := by
  rw [tree7463_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7464_agree_conditional
    (child0 : tree7462 = literal7462)
    (child1 : tree7463 = literal7463) : tree7464 = literal7464 := by
  rw [tree7464_def, child0, child1]
  rfl
theorem node7464_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7462 live7462 coloured7462 = result7462)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7463 live7463 coloured7463 = result7463) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7464 live7464 coloured7464 = result7464 := by
  rw [tree7464_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7462 coloured7462 at child
  try dsimp only [live7464, coloured7464]
  rw [child]
  dsimp only [result7462]
  have child := child1
  unfold live7463 coloured7463 at child
  try dsimp only [live7464, coloured7464]
  rw [child]
  dsimp only [result7463]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7465_agree_conditional : tree7465 = literal7465 := by
  rw [tree7465_def]
  rfl
theorem node7465_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7465 live7465 coloured7465 = result7465 := by
  rw [tree7465_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7466_agree_conditional
    (child0 : tree7464 = literal7464)
    (child1 : tree7465 = literal7465) : tree7466 = literal7466 := by
  rw [tree7466_def, child0, child1]
  rfl
theorem node7466_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7464 live7464 coloured7464 = result7464)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7465 live7465 coloured7465 = result7465) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7466 live7466 coloured7466 = result7466 := by
  rw [tree7466_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7464 coloured7464 at child
  try dsimp only [live7466, coloured7466]
  rw [child]
  dsimp only [result7464]
  have child := child1
  unfold live7465 coloured7465 at child
  try dsimp only [live7466, coloured7466]
  rw [child]
  dsimp only [result7465]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7467_agree_conditional : tree7467 = literal7467 := by
  rw [tree7467_def]
  rfl
theorem node7467_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7467 live7467 coloured7467 = result7467 := by
  rw [tree7467_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7468_agree_conditional
    (child0 : tree7466 = literal7466)
    (child1 : tree7467 = literal7467) : tree7468 = literal7468 := by
  rw [tree7468_def, child0, child1]
  rfl
theorem node7468_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7466 live7466 coloured7466 = result7466)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7467 live7467 coloured7467 = result7467) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7468 live7468 coloured7468 = result7468 := by
  rw [tree7468_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7466 coloured7466 at child
  try dsimp only [live7468, coloured7468]
  rw [child]
  dsimp only [result7466]
  have child := child1
  unfold live7467 coloured7467 at child
  try dsimp only [live7468, coloured7468]
  rw [child]
  dsimp only [result7467]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7469_agree_conditional : tree7469 = literal7469 := by
  rw [tree7469_def]
  rfl
theorem node7469_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7469 live7469 coloured7469 = result7469 := by
  rw [tree7469_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7470_agree_conditional
    (child0 : tree7468 = literal7468)
    (child1 : tree7469 = literal7469) : tree7470 = literal7470 := by
  rw [tree7470_def, child0, child1]
  rfl
theorem node7470_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7468 live7468 coloured7468 = result7468)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7469 live7469 coloured7469 = result7469) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7470 live7470 coloured7470 = result7470 := by
  rw [tree7470_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7468 coloured7468 at child
  try dsimp only [live7470, coloured7470]
  rw [child]
  dsimp only [result7468]
  have child := child1
  unfold live7469 coloured7469 at child
  try dsimp only [live7470, coloured7470]
  rw [child]
  dsimp only [result7469]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7471_agree_conditional : tree7471 = literal7471 := by
  rw [tree7471_def]
  rfl
theorem node7471_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7471 live7471 coloured7471 = result7471 := by
  rw [tree7471_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7472_agree_conditional
    (child0 : tree7470 = literal7470)
    (child1 : tree7471 = literal7471) : tree7472 = literal7472 := by
  rw [tree7472_def, child0, child1]
  rfl
theorem node7472_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7470 live7470 coloured7470 = result7470)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7471 live7471 coloured7471 = result7471) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7472 live7472 coloured7472 = result7472 := by
  rw [tree7472_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7470 coloured7470 at child
  try dsimp only [live7472, coloured7472]
  rw [child]
  dsimp only [result7470]
  have child := child1
  unfold live7471 coloured7471 at child
  try dsimp only [live7472, coloured7472]
  rw [child]
  dsimp only [result7471]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7473_agree_conditional : tree7473 = literal7473 := by
  rw [tree7473_def]
  rfl
theorem node7473_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7473 live7473 coloured7473 = result7473 := by
  rw [tree7473_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7474_agree_conditional
    (child0 : tree7472 = literal7472)
    (child1 : tree7473 = literal7473) : tree7474 = literal7474 := by
  rw [tree7474_def, child0, child1]
  rfl
theorem node7474_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7472 live7472 coloured7472 = result7472)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7473 live7473 coloured7473 = result7473) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7474 live7474 coloured7474 = result7474 := by
  rw [tree7474_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7472 coloured7472 at child
  try dsimp only [live7474, coloured7474]
  rw [child]
  dsimp only [result7472]
  have child := child1
  unfold live7473 coloured7473 at child
  try dsimp only [live7474, coloured7474]
  rw [child]
  dsimp only [result7473]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7475_agree_conditional : tree7475 = literal7475 := by
  rw [tree7475_def]
  rfl
theorem node7475_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7475 live7475 coloured7475 = result7475 := by
  rw [tree7475_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7476_agree_conditional
    (child0 : tree7474 = literal7474)
    (child1 : tree7475 = literal7475) : tree7476 = literal7476 := by
  rw [tree7476_def, child0, child1]
  rfl
theorem node7476_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7474 live7474 coloured7474 = result7474)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7475 live7475 coloured7475 = result7475) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7476 live7476 coloured7476 = result7476 := by
  rw [tree7476_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7474 coloured7474 at child
  try dsimp only [live7476, coloured7476]
  rw [child]
  dsimp only [result7474]
  have child := child1
  unfold live7475 coloured7475 at child
  try dsimp only [live7476, coloured7476]
  rw [child]
  dsimp only [result7475]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7477_agree_conditional : tree7477 = literal7477 := by
  rw [tree7477_def]
  rfl
theorem node7477_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7477 live7477 coloured7477 = result7477 := by
  rw [tree7477_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7478_agree_conditional
    (child0 : tree7476 = literal7476)
    (child1 : tree7477 = literal7477) : tree7478 = literal7478 := by
  rw [tree7478_def, child0, child1]
  rfl
theorem node7478_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7476 live7476 coloured7476 = result7476)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7477 live7477 coloured7477 = result7477) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7478 live7478 coloured7478 = result7478 := by
  rw [tree7478_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7476 coloured7476 at child
  try dsimp only [live7478, coloured7478]
  rw [child]
  dsimp only [result7476]
  have child := child1
  unfold live7477 coloured7477 at child
  try dsimp only [live7478, coloured7478]
  rw [child]
  dsimp only [result7477]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7479_agree_conditional : tree7479 = literal7479 := by
  rw [tree7479_def]
  rfl
theorem node7479_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7479 live7479 coloured7479 = result7479 := by
  rw [tree7479_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7480_agree_conditional
    (child0 : tree7478 = literal7478)
    (child1 : tree7479 = literal7479) : tree7480 = literal7480 := by
  rw [tree7480_def, child0, child1]
  rfl
theorem node7480_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7478 live7478 coloured7478 = result7478)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7479 live7479 coloured7479 = result7479) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7480 live7480 coloured7480 = result7480 := by
  rw [tree7480_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7478 coloured7478 at child
  try dsimp only [live7480, coloured7480]
  rw [child]
  dsimp only [result7478]
  have child := child1
  unfold live7479 coloured7479 at child
  try dsimp only [live7480, coloured7480]
  rw [child]
  dsimp only [result7479]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7481_agree_conditional : tree7481 = literal7481 := by
  rw [tree7481_def]
  rfl
theorem node7481_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7481 live7481 coloured7481 = result7481 := by
  rw [tree7481_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7482_agree_conditional
    (child0 : tree7480 = literal7480)
    (child1 : tree7481 = literal7481) : tree7482 = literal7482 := by
  rw [tree7482_def, child0, child1]
  rfl
theorem node7482_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7480 live7480 coloured7480 = result7480)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7481 live7481 coloured7481 = result7481) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7482 live7482 coloured7482 = result7482 := by
  rw [tree7482_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7480 coloured7480 at child
  try dsimp only [live7482, coloured7482]
  rw [child]
  dsimp only [result7480]
  have child := child1
  unfold live7481 coloured7481 at child
  try dsimp only [live7482, coloured7482]
  rw [child]
  dsimp only [result7481]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7483_agree_conditional : tree7483 = literal7483 := by
  rw [tree7483_def]
  rfl
theorem node7483_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7483 live7483 coloured7483 = result7483 := by
  rw [tree7483_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7484_agree_conditional
    (child0 : tree7482 = literal7482)
    (child1 : tree7483 = literal7483) : tree7484 = literal7484 := by
  rw [tree7484_def, child0, child1]
  rfl
theorem node7484_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7482 live7482 coloured7482 = result7482)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7483 live7483 coloured7483 = result7483) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7484 live7484 coloured7484 = result7484 := by
  rw [tree7484_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7482 coloured7482 at child
  try dsimp only [live7484, coloured7484]
  rw [child]
  dsimp only [result7482]
  have child := child1
  unfold live7483 coloured7483 at child
  try dsimp only [live7484, coloured7484]
  rw [child]
  dsimp only [result7483]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7485_agree_conditional : tree7485 = literal7485 := by
  rw [tree7485_def]
  rfl
theorem node7485_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7485 live7485 coloured7485 = result7485 := by
  rw [tree7485_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7486_agree_conditional
    (child0 : tree7484 = literal7484)
    (child1 : tree7485 = literal7485) : tree7486 = literal7486 := by
  rw [tree7486_def, child0, child1]
  rfl
theorem node7486_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7484 live7484 coloured7484 = result7484)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7485 live7485 coloured7485 = result7485) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7486 live7486 coloured7486 = result7486 := by
  rw [tree7486_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7484 coloured7484 at child
  try dsimp only [live7486, coloured7486]
  rw [child]
  dsimp only [result7484]
  have child := child1
  unfold live7485 coloured7485 at child
  try dsimp only [live7486, coloured7486]
  rw [child]
  dsimp only [result7485]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7487_agree_conditional : tree7487 = literal7487 := by
  rw [tree7487_def]
  rfl
theorem node7487_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7487 live7487 coloured7487 = result7487 := by
  rw [tree7487_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
