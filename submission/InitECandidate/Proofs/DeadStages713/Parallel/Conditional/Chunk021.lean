import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk021
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node5376_cond_eq
    (child5374 : Flapjack.WordAlloc.removeDeadStructural input5374 value2692 value1 value2 = (output5374, value2693, value1))
    (child5375 : Flapjack.WordAlloc.removeDeadStructural input5375 value2693 value1 value2 = (output5375, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5376 value2692 value1 value2 = (output5376, value5, value1) := by
  rw [input5376_def, output5376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5374]
  dsimp only
  rw [child5375]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5374_skip, output5375_skip]
  kernel_rfl

theorem node5377_cond_eq
    (child5373 : Flapjack.WordAlloc.removeDeadStructural input5373 value2691 value1 value2 = (output5373, value2692, value1))
    (child5376 : Flapjack.WordAlloc.removeDeadStructural input5376 value2692 value1 value2 = (output5376, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5377 value2691 value1 value2 = (output5377, value5, value1) := by
  rw [input5377_def, output5377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5373]
  dsimp only
  rw [child5376]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5373_skip, output5376_skip]
  kernel_rfl

theorem node5378_cond_eq
    (child5372 : Flapjack.WordAlloc.removeDeadStructural input5372 value2690 value1 value2 = (output5372, value2691, value1))
    (child5377 : Flapjack.WordAlloc.removeDeadStructural input5377 value2691 value1 value2 = (output5377, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5378 value2690 value1 value2 = (output5378, value5, value1) := by
  rw [input5378_def, output5378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5372]
  dsimp only
  rw [child5377]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5372_skip, output5377_skip]
  kernel_rfl

theorem node5379_cond_eq
    (child5371 : Flapjack.WordAlloc.removeDeadStructural input5371 value2688 value1 value2 = (output5371, value2690, value1))
    (child5378 : Flapjack.WordAlloc.removeDeadStructural input5378 value2690 value1 value2 = (output5378, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5379 value2688 value1 value2 = (output5379, value5, value1) := by
  rw [input5379_def, output5379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5371]
  dsimp only
  rw [child5378]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5371_skip, output5378_skip]
  kernel_rfl

theorem node5380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5380 value5 value1 value2 = (output5380, value2694, value1) := by
  rw [input5380_def, output5380_def]
  kernel_rfl

theorem node5381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5381 value2694 value1 value2 = (output5381, value2695, value1) := by
  rw [input5381_def, output5381_def]
  kernel_rfl

theorem node5382_cond_eq
    (child5380 : Flapjack.WordAlloc.removeDeadStructural input5380 value5 value1 value2 = (output5380, value2694, value1))
    (child5381 : Flapjack.WordAlloc.removeDeadStructural input5381 value2694 value1 value2 = (output5381, value2695, value1)) : Flapjack.WordAlloc.removeDeadStructural input5382 value5 value1 value2 = (output5382, value2695, value1) := by
  rw [input5382_def, output5382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5380]
  dsimp only
  rw [child5381]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5380_skip, output5381_skip]
  kernel_rfl

theorem node5383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5383 value2695 value1 value2 = (output5383, value2696, value1) := by
  rw [input5383_def, output5383_def]
  kernel_rfl

theorem node5384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5384 value2696 value1 value2 = (output5384, value2696, value1) := by
  rw [input5384_def, output5384_def]
  kernel_rfl

theorem node5385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5385 value2696 value1 value2 = (output5385, value2697, value1) := by
  rw [input5385_def, output5385_def]
  kernel_rfl

theorem node5386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5386 value2697 value1 value2 = (output5386, value2698, value1) := by
  rw [input5386_def, output5386_def]
  kernel_rfl

theorem node5387_cond_eq
    (child5385 : Flapjack.WordAlloc.removeDeadStructural input5385 value2696 value1 value2 = (output5385, value2697, value1))
    (child5386 : Flapjack.WordAlloc.removeDeadStructural input5386 value2697 value1 value2 = (output5386, value2698, value1)) : Flapjack.WordAlloc.removeDeadStructural input5387 value2696 value1 value2 = (output5387, value2698, value1) := by
  rw [input5387_def, output5387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5385]
  dsimp only
  rw [child5386]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5385_skip, output5386_skip]
  kernel_rfl

theorem node5388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5388 value2698 value1 value2 = (output5388, value2699, value1) := by
  rw [input5388_def, output5388_def]
  kernel_rfl

theorem node5389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5389 value2699 value1 value2 = (output5389, value2700, value1) := by
  rw [input5389_def, output5389_def]
  kernel_rfl

theorem node5390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5390 value2700 value1 value2 = (output5390, value2701, value1) := by
  rw [input5390_def, output5390_def]
  kernel_rfl

theorem node5391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5391 value2701 value1 value2 = (output5391, value5, value1) := by
  rw [input5391_def, output5391_def]
  kernel_rfl

theorem node5392_cond_eq
    (child5390 : Flapjack.WordAlloc.removeDeadStructural input5390 value2700 value1 value2 = (output5390, value2701, value1))
    (child5391 : Flapjack.WordAlloc.removeDeadStructural input5391 value2701 value1 value2 = (output5391, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5392 value2700 value1 value2 = (output5392, value5, value1) := by
  rw [input5392_def, output5392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5390]
  dsimp only
  rw [child5391]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5390_skip, output5391_skip]
  kernel_rfl

theorem node5393_cond_eq
    (child5389 : Flapjack.WordAlloc.removeDeadStructural input5389 value2699 value1 value2 = (output5389, value2700, value1))
    (child5392 : Flapjack.WordAlloc.removeDeadStructural input5392 value2700 value1 value2 = (output5392, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5393 value2699 value1 value2 = (output5393, value5, value1) := by
  rw [input5393_def, output5393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5389]
  dsimp only
  rw [child5392]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5389_skip, output5392_skip]
  kernel_rfl

theorem node5394_cond_eq
    (child5388 : Flapjack.WordAlloc.removeDeadStructural input5388 value2698 value1 value2 = (output5388, value2699, value1))
    (child5393 : Flapjack.WordAlloc.removeDeadStructural input5393 value2699 value1 value2 = (output5393, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5394 value2698 value1 value2 = (output5394, value5, value1) := by
  rw [input5394_def, output5394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5388]
  dsimp only
  rw [child5393]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5388_skip, output5393_skip]
  kernel_rfl

theorem node5395_cond_eq
    (child5387 : Flapjack.WordAlloc.removeDeadStructural input5387 value2696 value1 value2 = (output5387, value2698, value1))
    (child5394 : Flapjack.WordAlloc.removeDeadStructural input5394 value2698 value1 value2 = (output5394, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5395 value2696 value1 value2 = (output5395, value5, value1) := by
  rw [input5395_def, output5395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5387]
  dsimp only
  rw [child5394]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5387_skip, output5394_skip]
  kernel_rfl

theorem node5396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5396 value5 value1 value2 = (output5396, value2702, value1) := by
  rw [input5396_def, output5396_def]
  kernel_rfl

theorem node5397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5397 value2702 value1 value2 = (output5397, value2703, value1) := by
  rw [input5397_def, output5397_def]
  kernel_rfl

theorem node5398_cond_eq
    (child5396 : Flapjack.WordAlloc.removeDeadStructural input5396 value5 value1 value2 = (output5396, value2702, value1))
    (child5397 : Flapjack.WordAlloc.removeDeadStructural input5397 value2702 value1 value2 = (output5397, value2703, value1)) : Flapjack.WordAlloc.removeDeadStructural input5398 value5 value1 value2 = (output5398, value2703, value1) := by
  rw [input5398_def, output5398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5396]
  dsimp only
  rw [child5397]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5396_skip, output5397_skip]
  kernel_rfl

theorem node5399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5399 value2703 value1 value2 = (output5399, value2704, value1) := by
  rw [input5399_def, output5399_def]
  kernel_rfl

theorem node5400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5400 value2704 value1 value2 = (output5400, value2704, value1) := by
  rw [input5400_def, output5400_def]
  kernel_rfl

theorem node5401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5401 value2704 value1 value2 = (output5401, value2705, value1) := by
  rw [input5401_def, output5401_def]
  kernel_rfl

theorem node5402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5402 value2705 value1 value2 = (output5402, value2706, value1) := by
  rw [input5402_def, output5402_def]
  kernel_rfl

theorem node5403_cond_eq
    (child5401 : Flapjack.WordAlloc.removeDeadStructural input5401 value2704 value1 value2 = (output5401, value2705, value1))
    (child5402 : Flapjack.WordAlloc.removeDeadStructural input5402 value2705 value1 value2 = (output5402, value2706, value1)) : Flapjack.WordAlloc.removeDeadStructural input5403 value2704 value1 value2 = (output5403, value2706, value1) := by
  rw [input5403_def, output5403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5401]
  dsimp only
  rw [child5402]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5401_skip, output5402_skip]
  kernel_rfl

theorem node5404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5404 value2706 value1 value2 = (output5404, value2707, value1) := by
  rw [input5404_def, output5404_def]
  kernel_rfl

theorem node5405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5405 value2707 value1 value2 = (output5405, value2708, value1) := by
  rw [input5405_def, output5405_def]
  kernel_rfl

theorem node5406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5406 value2708 value1 value2 = (output5406, value2709, value1) := by
  rw [input5406_def, output5406_def]
  kernel_rfl

theorem node5407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5407 value2709 value1 value2 = (output5407, value5, value1) := by
  rw [input5407_def, output5407_def]
  kernel_rfl

theorem node5408_cond_eq
    (child5406 : Flapjack.WordAlloc.removeDeadStructural input5406 value2708 value1 value2 = (output5406, value2709, value1))
    (child5407 : Flapjack.WordAlloc.removeDeadStructural input5407 value2709 value1 value2 = (output5407, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5408 value2708 value1 value2 = (output5408, value5, value1) := by
  rw [input5408_def, output5408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5406]
  dsimp only
  rw [child5407]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5406_skip, output5407_skip]
  kernel_rfl

theorem node5409_cond_eq
    (child5405 : Flapjack.WordAlloc.removeDeadStructural input5405 value2707 value1 value2 = (output5405, value2708, value1))
    (child5408 : Flapjack.WordAlloc.removeDeadStructural input5408 value2708 value1 value2 = (output5408, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5409 value2707 value1 value2 = (output5409, value5, value1) := by
  rw [input5409_def, output5409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5405]
  dsimp only
  rw [child5408]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5405_skip, output5408_skip]
  kernel_rfl

theorem node5410_cond_eq
    (child5404 : Flapjack.WordAlloc.removeDeadStructural input5404 value2706 value1 value2 = (output5404, value2707, value1))
    (child5409 : Flapjack.WordAlloc.removeDeadStructural input5409 value2707 value1 value2 = (output5409, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5410 value2706 value1 value2 = (output5410, value5, value1) := by
  rw [input5410_def, output5410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5404]
  dsimp only
  rw [child5409]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5404_skip, output5409_skip]
  kernel_rfl

theorem node5411_cond_eq
    (child5403 : Flapjack.WordAlloc.removeDeadStructural input5403 value2704 value1 value2 = (output5403, value2706, value1))
    (child5410 : Flapjack.WordAlloc.removeDeadStructural input5410 value2706 value1 value2 = (output5410, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5411 value2704 value1 value2 = (output5411, value5, value1) := by
  rw [input5411_def, output5411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5403]
  dsimp only
  rw [child5410]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5403_skip, output5410_skip]
  kernel_rfl

theorem node5412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5412 value5 value1 value2 = (output5412, value2710, value1) := by
  rw [input5412_def, output5412_def]
  kernel_rfl

theorem node5413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5413 value2710 value1 value2 = (output5413, value2711, value1) := by
  rw [input5413_def, output5413_def]
  kernel_rfl

theorem node5414_cond_eq
    (child5412 : Flapjack.WordAlloc.removeDeadStructural input5412 value5 value1 value2 = (output5412, value2710, value1))
    (child5413 : Flapjack.WordAlloc.removeDeadStructural input5413 value2710 value1 value2 = (output5413, value2711, value1)) : Flapjack.WordAlloc.removeDeadStructural input5414 value5 value1 value2 = (output5414, value2711, value1) := by
  rw [input5414_def, output5414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5412]
  dsimp only
  rw [child5413]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5412_skip, output5413_skip]
  kernel_rfl

theorem node5415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5415 value2711 value1 value2 = (output5415, value2712, value1) := by
  rw [input5415_def, output5415_def]
  kernel_rfl

theorem node5416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5416 value2712 value1 value2 = (output5416, value2712, value1) := by
  rw [input5416_def, output5416_def]
  kernel_rfl

theorem node5417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5417 value2712 value1 value2 = (output5417, value2713, value1) := by
  rw [input5417_def, output5417_def]
  kernel_rfl

theorem node5418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5418 value2713 value1 value2 = (output5418, value2714, value1) := by
  rw [input5418_def, output5418_def]
  kernel_rfl

theorem node5419_cond_eq
    (child5417 : Flapjack.WordAlloc.removeDeadStructural input5417 value2712 value1 value2 = (output5417, value2713, value1))
    (child5418 : Flapjack.WordAlloc.removeDeadStructural input5418 value2713 value1 value2 = (output5418, value2714, value1)) : Flapjack.WordAlloc.removeDeadStructural input5419 value2712 value1 value2 = (output5419, value2714, value1) := by
  rw [input5419_def, output5419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5417]
  dsimp only
  rw [child5418]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5417_skip, output5418_skip]
  kernel_rfl

theorem node5420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5420 value2714 value1 value2 = (output5420, value2715, value1) := by
  rw [input5420_def, output5420_def]
  kernel_rfl

theorem node5421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5421 value2715 value1 value2 = (output5421, value2716, value1) := by
  rw [input5421_def, output5421_def]
  kernel_rfl

theorem node5422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5422 value2716 value1 value2 = (output5422, value2717, value1) := by
  rw [input5422_def, output5422_def]
  kernel_rfl

theorem node5423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5423 value2717 value1 value2 = (output5423, value5, value1) := by
  rw [input5423_def, output5423_def]
  kernel_rfl

theorem node5424_cond_eq
    (child5422 : Flapjack.WordAlloc.removeDeadStructural input5422 value2716 value1 value2 = (output5422, value2717, value1))
    (child5423 : Flapjack.WordAlloc.removeDeadStructural input5423 value2717 value1 value2 = (output5423, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5424 value2716 value1 value2 = (output5424, value5, value1) := by
  rw [input5424_def, output5424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5422]
  dsimp only
  rw [child5423]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5422_skip, output5423_skip]
  kernel_rfl

theorem node5425_cond_eq
    (child5421 : Flapjack.WordAlloc.removeDeadStructural input5421 value2715 value1 value2 = (output5421, value2716, value1))
    (child5424 : Flapjack.WordAlloc.removeDeadStructural input5424 value2716 value1 value2 = (output5424, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5425 value2715 value1 value2 = (output5425, value5, value1) := by
  rw [input5425_def, output5425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5421]
  dsimp only
  rw [child5424]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5421_skip, output5424_skip]
  kernel_rfl

theorem node5426_cond_eq
    (child5420 : Flapjack.WordAlloc.removeDeadStructural input5420 value2714 value1 value2 = (output5420, value2715, value1))
    (child5425 : Flapjack.WordAlloc.removeDeadStructural input5425 value2715 value1 value2 = (output5425, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5426 value2714 value1 value2 = (output5426, value5, value1) := by
  rw [input5426_def, output5426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5420]
  dsimp only
  rw [child5425]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5420_skip, output5425_skip]
  kernel_rfl

theorem node5427_cond_eq
    (child5419 : Flapjack.WordAlloc.removeDeadStructural input5419 value2712 value1 value2 = (output5419, value2714, value1))
    (child5426 : Flapjack.WordAlloc.removeDeadStructural input5426 value2714 value1 value2 = (output5426, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5427 value2712 value1 value2 = (output5427, value5, value1) := by
  rw [input5427_def, output5427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5419]
  dsimp only
  rw [child5426]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5419_skip, output5426_skip]
  kernel_rfl

theorem node5428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5428 value5 value1 value2 = (output5428, value2718, value1) := by
  rw [input5428_def, output5428_def]
  kernel_rfl

theorem node5429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5429 value2718 value1 value2 = (output5429, value2719, value1) := by
  rw [input5429_def, output5429_def]
  kernel_rfl

theorem node5430_cond_eq
    (child5428 : Flapjack.WordAlloc.removeDeadStructural input5428 value5 value1 value2 = (output5428, value2718, value1))
    (child5429 : Flapjack.WordAlloc.removeDeadStructural input5429 value2718 value1 value2 = (output5429, value2719, value1)) : Flapjack.WordAlloc.removeDeadStructural input5430 value5 value1 value2 = (output5430, value2719, value1) := by
  rw [input5430_def, output5430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5428]
  dsimp only
  rw [child5429]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5428_skip, output5429_skip]
  kernel_rfl

theorem node5431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5431 value2719 value1 value2 = (output5431, value2720, value1) := by
  rw [input5431_def, output5431_def]
  kernel_rfl

theorem node5432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5432 value2720 value1 value2 = (output5432, value2720, value1) := by
  rw [input5432_def, output5432_def]
  kernel_rfl

theorem node5433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5433 value2720 value1 value2 = (output5433, value2721, value1) := by
  rw [input5433_def, output5433_def]
  kernel_rfl

theorem node5434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5434 value2721 value1 value2 = (output5434, value2722, value1) := by
  rw [input5434_def, output5434_def]
  kernel_rfl

theorem node5435_cond_eq
    (child5433 : Flapjack.WordAlloc.removeDeadStructural input5433 value2720 value1 value2 = (output5433, value2721, value1))
    (child5434 : Flapjack.WordAlloc.removeDeadStructural input5434 value2721 value1 value2 = (output5434, value2722, value1)) : Flapjack.WordAlloc.removeDeadStructural input5435 value2720 value1 value2 = (output5435, value2722, value1) := by
  rw [input5435_def, output5435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5433]
  dsimp only
  rw [child5434]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5433_skip, output5434_skip]
  kernel_rfl

theorem node5436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5436 value2722 value1 value2 = (output5436, value2723, value1) := by
  rw [input5436_def, output5436_def]
  kernel_rfl

theorem node5437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5437 value2723 value1 value2 = (output5437, value2724, value1) := by
  rw [input5437_def, output5437_def]
  kernel_rfl

theorem node5438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5438 value2724 value1 value2 = (output5438, value2725, value1) := by
  rw [input5438_def, output5438_def]
  kernel_rfl

theorem node5439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5439 value2725 value1 value2 = (output5439, value5, value1) := by
  rw [input5439_def, output5439_def]
  kernel_rfl

theorem node5440_cond_eq
    (child5438 : Flapjack.WordAlloc.removeDeadStructural input5438 value2724 value1 value2 = (output5438, value2725, value1))
    (child5439 : Flapjack.WordAlloc.removeDeadStructural input5439 value2725 value1 value2 = (output5439, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5440 value2724 value1 value2 = (output5440, value5, value1) := by
  rw [input5440_def, output5440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5438]
  dsimp only
  rw [child5439]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5438_skip, output5439_skip]
  kernel_rfl

theorem node5441_cond_eq
    (child5437 : Flapjack.WordAlloc.removeDeadStructural input5437 value2723 value1 value2 = (output5437, value2724, value1))
    (child5440 : Flapjack.WordAlloc.removeDeadStructural input5440 value2724 value1 value2 = (output5440, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5441 value2723 value1 value2 = (output5441, value5, value1) := by
  rw [input5441_def, output5441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5437]
  dsimp only
  rw [child5440]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5437_skip, output5440_skip]
  kernel_rfl

theorem node5442_cond_eq
    (child5436 : Flapjack.WordAlloc.removeDeadStructural input5436 value2722 value1 value2 = (output5436, value2723, value1))
    (child5441 : Flapjack.WordAlloc.removeDeadStructural input5441 value2723 value1 value2 = (output5441, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5442 value2722 value1 value2 = (output5442, value5, value1) := by
  rw [input5442_def, output5442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5436]
  dsimp only
  rw [child5441]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5436_skip, output5441_skip]
  kernel_rfl

theorem node5443_cond_eq
    (child5435 : Flapjack.WordAlloc.removeDeadStructural input5435 value2720 value1 value2 = (output5435, value2722, value1))
    (child5442 : Flapjack.WordAlloc.removeDeadStructural input5442 value2722 value1 value2 = (output5442, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5443 value2720 value1 value2 = (output5443, value5, value1) := by
  rw [input5443_def, output5443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5435]
  dsimp only
  rw [child5442]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5435_skip, output5442_skip]
  kernel_rfl

theorem node5444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5444 value5 value1 value2 = (output5444, value2726, value1) := by
  rw [input5444_def, output5444_def]
  kernel_rfl

theorem node5445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5445 value2726 value1 value2 = (output5445, value2727, value1) := by
  rw [input5445_def, output5445_def]
  kernel_rfl

theorem node5446_cond_eq
    (child5444 : Flapjack.WordAlloc.removeDeadStructural input5444 value5 value1 value2 = (output5444, value2726, value1))
    (child5445 : Flapjack.WordAlloc.removeDeadStructural input5445 value2726 value1 value2 = (output5445, value2727, value1)) : Flapjack.WordAlloc.removeDeadStructural input5446 value5 value1 value2 = (output5446, value2727, value1) := by
  rw [input5446_def, output5446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5444]
  dsimp only
  rw [child5445]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5444_skip, output5445_skip]
  kernel_rfl

theorem node5447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5447 value2727 value1 value2 = (output5447, value2728, value1) := by
  rw [input5447_def, output5447_def]
  kernel_rfl

theorem node5448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5448 value2728 value1 value2 = (output5448, value2728, value1) := by
  rw [input5448_def, output5448_def]
  kernel_rfl

theorem node5449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5449 value2728 value1 value2 = (output5449, value2729, value1) := by
  rw [input5449_def, output5449_def]
  kernel_rfl

theorem node5450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5450 value2729 value1 value2 = (output5450, value2730, value1) := by
  rw [input5450_def, output5450_def]
  kernel_rfl

theorem node5451_cond_eq
    (child5449 : Flapjack.WordAlloc.removeDeadStructural input5449 value2728 value1 value2 = (output5449, value2729, value1))
    (child5450 : Flapjack.WordAlloc.removeDeadStructural input5450 value2729 value1 value2 = (output5450, value2730, value1)) : Flapjack.WordAlloc.removeDeadStructural input5451 value2728 value1 value2 = (output5451, value2730, value1) := by
  rw [input5451_def, output5451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5449]
  dsimp only
  rw [child5450]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5449_skip, output5450_skip]
  kernel_rfl

theorem node5452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5452 value2730 value1 value2 = (output5452, value2731, value1) := by
  rw [input5452_def, output5452_def]
  kernel_rfl

theorem node5453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5453 value2731 value1 value2 = (output5453, value2732, value1) := by
  rw [input5453_def, output5453_def]
  kernel_rfl

theorem node5454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5454 value2732 value1 value2 = (output5454, value2733, value1) := by
  rw [input5454_def, output5454_def]
  kernel_rfl

theorem node5455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5455 value2733 value1 value2 = (output5455, value5, value1) := by
  rw [input5455_def, output5455_def]
  kernel_rfl

theorem node5456_cond_eq
    (child5454 : Flapjack.WordAlloc.removeDeadStructural input5454 value2732 value1 value2 = (output5454, value2733, value1))
    (child5455 : Flapjack.WordAlloc.removeDeadStructural input5455 value2733 value1 value2 = (output5455, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5456 value2732 value1 value2 = (output5456, value5, value1) := by
  rw [input5456_def, output5456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5454]
  dsimp only
  rw [child5455]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5454_skip, output5455_skip]
  kernel_rfl

theorem node5457_cond_eq
    (child5453 : Flapjack.WordAlloc.removeDeadStructural input5453 value2731 value1 value2 = (output5453, value2732, value1))
    (child5456 : Flapjack.WordAlloc.removeDeadStructural input5456 value2732 value1 value2 = (output5456, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5457 value2731 value1 value2 = (output5457, value5, value1) := by
  rw [input5457_def, output5457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5453]
  dsimp only
  rw [child5456]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5453_skip, output5456_skip]
  kernel_rfl

theorem node5458_cond_eq
    (child5452 : Flapjack.WordAlloc.removeDeadStructural input5452 value2730 value1 value2 = (output5452, value2731, value1))
    (child5457 : Flapjack.WordAlloc.removeDeadStructural input5457 value2731 value1 value2 = (output5457, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5458 value2730 value1 value2 = (output5458, value5, value1) := by
  rw [input5458_def, output5458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5452]
  dsimp only
  rw [child5457]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5452_skip, output5457_skip]
  kernel_rfl

theorem node5459_cond_eq
    (child5451 : Flapjack.WordAlloc.removeDeadStructural input5451 value2728 value1 value2 = (output5451, value2730, value1))
    (child5458 : Flapjack.WordAlloc.removeDeadStructural input5458 value2730 value1 value2 = (output5458, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5459 value2728 value1 value2 = (output5459, value5, value1) := by
  rw [input5459_def, output5459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5451]
  dsimp only
  rw [child5458]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5451_skip, output5458_skip]
  kernel_rfl

theorem node5460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5460 value5 value1 value2 = (output5460, value2734, value1) := by
  rw [input5460_def, output5460_def]
  kernel_rfl

theorem node5461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5461 value2734 value1 value2 = (output5461, value2735, value1) := by
  rw [input5461_def, output5461_def]
  kernel_rfl

theorem node5462_cond_eq
    (child5460 : Flapjack.WordAlloc.removeDeadStructural input5460 value5 value1 value2 = (output5460, value2734, value1))
    (child5461 : Flapjack.WordAlloc.removeDeadStructural input5461 value2734 value1 value2 = (output5461, value2735, value1)) : Flapjack.WordAlloc.removeDeadStructural input5462 value5 value1 value2 = (output5462, value2735, value1) := by
  rw [input5462_def, output5462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5460]
  dsimp only
  rw [child5461]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5460_skip, output5461_skip]
  kernel_rfl

theorem node5463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5463 value2735 value1 value2 = (output5463, value2736, value1) := by
  rw [input5463_def, output5463_def]
  kernel_rfl

theorem node5464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5464 value2736 value1 value2 = (output5464, value2736, value1) := by
  rw [input5464_def, output5464_def]
  kernel_rfl

theorem node5465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5465 value2736 value1 value2 = (output5465, value2737, value1) := by
  rw [input5465_def, output5465_def]
  kernel_rfl

theorem node5466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5466 value2737 value1 value2 = (output5466, value2738, value1) := by
  rw [input5466_def, output5466_def]
  kernel_rfl

theorem node5467_cond_eq
    (child5465 : Flapjack.WordAlloc.removeDeadStructural input5465 value2736 value1 value2 = (output5465, value2737, value1))
    (child5466 : Flapjack.WordAlloc.removeDeadStructural input5466 value2737 value1 value2 = (output5466, value2738, value1)) : Flapjack.WordAlloc.removeDeadStructural input5467 value2736 value1 value2 = (output5467, value2738, value1) := by
  rw [input5467_def, output5467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5465]
  dsimp only
  rw [child5466]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5465_skip, output5466_skip]
  kernel_rfl

theorem node5468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5468 value2738 value1 value2 = (output5468, value2739, value1) := by
  rw [input5468_def, output5468_def]
  kernel_rfl

theorem node5469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5469 value2739 value1 value2 = (output5469, value2740, value1) := by
  rw [input5469_def, output5469_def]
  kernel_rfl

theorem node5470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5470 value2740 value1 value2 = (output5470, value2741, value1) := by
  rw [input5470_def, output5470_def]
  kernel_rfl

theorem node5471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5471 value2741 value1 value2 = (output5471, value5, value1) := by
  rw [input5471_def, output5471_def]
  kernel_rfl

theorem node5472_cond_eq
    (child5470 : Flapjack.WordAlloc.removeDeadStructural input5470 value2740 value1 value2 = (output5470, value2741, value1))
    (child5471 : Flapjack.WordAlloc.removeDeadStructural input5471 value2741 value1 value2 = (output5471, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5472 value2740 value1 value2 = (output5472, value5, value1) := by
  rw [input5472_def, output5472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5470]
  dsimp only
  rw [child5471]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5470_skip, output5471_skip]
  kernel_rfl

theorem node5473_cond_eq
    (child5469 : Flapjack.WordAlloc.removeDeadStructural input5469 value2739 value1 value2 = (output5469, value2740, value1))
    (child5472 : Flapjack.WordAlloc.removeDeadStructural input5472 value2740 value1 value2 = (output5472, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5473 value2739 value1 value2 = (output5473, value5, value1) := by
  rw [input5473_def, output5473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5469]
  dsimp only
  rw [child5472]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5469_skip, output5472_skip]
  kernel_rfl

theorem node5474_cond_eq
    (child5468 : Flapjack.WordAlloc.removeDeadStructural input5468 value2738 value1 value2 = (output5468, value2739, value1))
    (child5473 : Flapjack.WordAlloc.removeDeadStructural input5473 value2739 value1 value2 = (output5473, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5474 value2738 value1 value2 = (output5474, value5, value1) := by
  rw [input5474_def, output5474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5468]
  dsimp only
  rw [child5473]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5468_skip, output5473_skip]
  kernel_rfl

theorem node5475_cond_eq
    (child5467 : Flapjack.WordAlloc.removeDeadStructural input5467 value2736 value1 value2 = (output5467, value2738, value1))
    (child5474 : Flapjack.WordAlloc.removeDeadStructural input5474 value2738 value1 value2 = (output5474, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5475 value2736 value1 value2 = (output5475, value5, value1) := by
  rw [input5475_def, output5475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5467]
  dsimp only
  rw [child5474]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5467_skip, output5474_skip]
  kernel_rfl

theorem node5476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5476 value5 value1 value2 = (output5476, value2742, value1) := by
  rw [input5476_def, output5476_def]
  kernel_rfl

theorem node5477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5477 value2742 value1 value2 = (output5477, value2743, value1) := by
  rw [input5477_def, output5477_def]
  kernel_rfl

theorem node5478_cond_eq
    (child5476 : Flapjack.WordAlloc.removeDeadStructural input5476 value5 value1 value2 = (output5476, value2742, value1))
    (child5477 : Flapjack.WordAlloc.removeDeadStructural input5477 value2742 value1 value2 = (output5477, value2743, value1)) : Flapjack.WordAlloc.removeDeadStructural input5478 value5 value1 value2 = (output5478, value2743, value1) := by
  rw [input5478_def, output5478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5476]
  dsimp only
  rw [child5477]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5476_skip, output5477_skip]
  kernel_rfl

theorem node5479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5479 value2743 value1 value2 = (output5479, value2744, value1) := by
  rw [input5479_def, output5479_def]
  kernel_rfl

theorem node5480_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5480 value2744 value1 value2 = (output5480, value2744, value1) := by
  rw [input5480_def, output5480_def]
  kernel_rfl

theorem node5481_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5481 value2744 value1 value2 = (output5481, value2745, value1) := by
  rw [input5481_def, output5481_def]
  kernel_rfl

theorem node5482_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5482 value2745 value1 value2 = (output5482, value2746, value1) := by
  rw [input5482_def, output5482_def]
  kernel_rfl

theorem node5483_cond_eq
    (child5481 : Flapjack.WordAlloc.removeDeadStructural input5481 value2744 value1 value2 = (output5481, value2745, value1))
    (child5482 : Flapjack.WordAlloc.removeDeadStructural input5482 value2745 value1 value2 = (output5482, value2746, value1)) : Flapjack.WordAlloc.removeDeadStructural input5483 value2744 value1 value2 = (output5483, value2746, value1) := by
  rw [input5483_def, output5483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5481]
  dsimp only
  rw [child5482]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5481_skip, output5482_skip]
  kernel_rfl

theorem node5484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5484 value2746 value1 value2 = (output5484, value2747, value1) := by
  rw [input5484_def, output5484_def]
  kernel_rfl

theorem node5485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5485 value2747 value1 value2 = (output5485, value2748, value1) := by
  rw [input5485_def, output5485_def]
  kernel_rfl

theorem node5486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5486 value2748 value1 value2 = (output5486, value2749, value1) := by
  rw [input5486_def, output5486_def]
  kernel_rfl

theorem node5487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5487 value2749 value1 value2 = (output5487, value5, value1) := by
  rw [input5487_def, output5487_def]
  kernel_rfl

theorem node5488_cond_eq
    (child5486 : Flapjack.WordAlloc.removeDeadStructural input5486 value2748 value1 value2 = (output5486, value2749, value1))
    (child5487 : Flapjack.WordAlloc.removeDeadStructural input5487 value2749 value1 value2 = (output5487, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5488 value2748 value1 value2 = (output5488, value5, value1) := by
  rw [input5488_def, output5488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5486]
  dsimp only
  rw [child5487]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5486_skip, output5487_skip]
  kernel_rfl

theorem node5489_cond_eq
    (child5485 : Flapjack.WordAlloc.removeDeadStructural input5485 value2747 value1 value2 = (output5485, value2748, value1))
    (child5488 : Flapjack.WordAlloc.removeDeadStructural input5488 value2748 value1 value2 = (output5488, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5489 value2747 value1 value2 = (output5489, value5, value1) := by
  rw [input5489_def, output5489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5485]
  dsimp only
  rw [child5488]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5485_skip, output5488_skip]
  kernel_rfl

theorem node5490_cond_eq
    (child5484 : Flapjack.WordAlloc.removeDeadStructural input5484 value2746 value1 value2 = (output5484, value2747, value1))
    (child5489 : Flapjack.WordAlloc.removeDeadStructural input5489 value2747 value1 value2 = (output5489, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5490 value2746 value1 value2 = (output5490, value5, value1) := by
  rw [input5490_def, output5490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5484]
  dsimp only
  rw [child5489]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5484_skip, output5489_skip]
  kernel_rfl

theorem node5491_cond_eq
    (child5483 : Flapjack.WordAlloc.removeDeadStructural input5483 value2744 value1 value2 = (output5483, value2746, value1))
    (child5490 : Flapjack.WordAlloc.removeDeadStructural input5490 value2746 value1 value2 = (output5490, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5491 value2744 value1 value2 = (output5491, value5, value1) := by
  rw [input5491_def, output5491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5483]
  dsimp only
  rw [child5490]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5483_skip, output5490_skip]
  kernel_rfl

theorem node5492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5492 value5 value1 value2 = (output5492, value2750, value1) := by
  rw [input5492_def, output5492_def]
  kernel_rfl

theorem node5493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5493 value2750 value1 value2 = (output5493, value2751, value1) := by
  rw [input5493_def, output5493_def]
  kernel_rfl

theorem node5494_cond_eq
    (child5492 : Flapjack.WordAlloc.removeDeadStructural input5492 value5 value1 value2 = (output5492, value2750, value1))
    (child5493 : Flapjack.WordAlloc.removeDeadStructural input5493 value2750 value1 value2 = (output5493, value2751, value1)) : Flapjack.WordAlloc.removeDeadStructural input5494 value5 value1 value2 = (output5494, value2751, value1) := by
  rw [input5494_def, output5494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5492]
  dsimp only
  rw [child5493]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5492_skip, output5493_skip]
  kernel_rfl

theorem node5495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5495 value2751 value1 value2 = (output5495, value2752, value1) := by
  rw [input5495_def, output5495_def]
  kernel_rfl

theorem node5496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5496 value2752 value1 value2 = (output5496, value2752, value1) := by
  rw [input5496_def, output5496_def]
  kernel_rfl

theorem node5497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5497 value2752 value1 value2 = (output5497, value2753, value1) := by
  rw [input5497_def, output5497_def]
  kernel_rfl

theorem node5498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5498 value2753 value1 value2 = (output5498, value2754, value1) := by
  rw [input5498_def, output5498_def]
  kernel_rfl

theorem node5499_cond_eq
    (child5497 : Flapjack.WordAlloc.removeDeadStructural input5497 value2752 value1 value2 = (output5497, value2753, value1))
    (child5498 : Flapjack.WordAlloc.removeDeadStructural input5498 value2753 value1 value2 = (output5498, value2754, value1)) : Flapjack.WordAlloc.removeDeadStructural input5499 value2752 value1 value2 = (output5499, value2754, value1) := by
  rw [input5499_def, output5499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5497]
  dsimp only
  rw [child5498]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5497_skip, output5498_skip]
  kernel_rfl

theorem node5500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5500 value2754 value1 value2 = (output5500, value2755, value1) := by
  rw [input5500_def, output5500_def]
  kernel_rfl

theorem node5501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5501 value2755 value1 value2 = (output5501, value2756, value1) := by
  rw [input5501_def, output5501_def]
  kernel_rfl

theorem node5502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5502 value2756 value1 value2 = (output5502, value2757, value1) := by
  rw [input5502_def, output5502_def]
  kernel_rfl

theorem node5503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5503 value2757 value1 value2 = (output5503, value5, value1) := by
  rw [input5503_def, output5503_def]
  kernel_rfl

theorem node5504_cond_eq
    (child5502 : Flapjack.WordAlloc.removeDeadStructural input5502 value2756 value1 value2 = (output5502, value2757, value1))
    (child5503 : Flapjack.WordAlloc.removeDeadStructural input5503 value2757 value1 value2 = (output5503, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5504 value2756 value1 value2 = (output5504, value5, value1) := by
  rw [input5504_def, output5504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5502]
  dsimp only
  rw [child5503]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5502_skip, output5503_skip]
  kernel_rfl

theorem node5505_cond_eq
    (child5501 : Flapjack.WordAlloc.removeDeadStructural input5501 value2755 value1 value2 = (output5501, value2756, value1))
    (child5504 : Flapjack.WordAlloc.removeDeadStructural input5504 value2756 value1 value2 = (output5504, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5505 value2755 value1 value2 = (output5505, value5, value1) := by
  rw [input5505_def, output5505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5501]
  dsimp only
  rw [child5504]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5501_skip, output5504_skip]
  kernel_rfl

theorem node5506_cond_eq
    (child5500 : Flapjack.WordAlloc.removeDeadStructural input5500 value2754 value1 value2 = (output5500, value2755, value1))
    (child5505 : Flapjack.WordAlloc.removeDeadStructural input5505 value2755 value1 value2 = (output5505, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5506 value2754 value1 value2 = (output5506, value5, value1) := by
  rw [input5506_def, output5506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5500]
  dsimp only
  rw [child5505]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5500_skip, output5505_skip]
  kernel_rfl

theorem node5507_cond_eq
    (child5499 : Flapjack.WordAlloc.removeDeadStructural input5499 value2752 value1 value2 = (output5499, value2754, value1))
    (child5506 : Flapjack.WordAlloc.removeDeadStructural input5506 value2754 value1 value2 = (output5506, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5507 value2752 value1 value2 = (output5507, value5, value1) := by
  rw [input5507_def, output5507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5499]
  dsimp only
  rw [child5506]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5499_skip, output5506_skip]
  kernel_rfl

theorem node5508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5508 value5 value1 value2 = (output5508, value2758, value1) := by
  rw [input5508_def, output5508_def]
  kernel_rfl

theorem node5509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5509 value2758 value1 value2 = (output5509, value2759, value1) := by
  rw [input5509_def, output5509_def]
  kernel_rfl

theorem node5510_cond_eq
    (child5508 : Flapjack.WordAlloc.removeDeadStructural input5508 value5 value1 value2 = (output5508, value2758, value1))
    (child5509 : Flapjack.WordAlloc.removeDeadStructural input5509 value2758 value1 value2 = (output5509, value2759, value1)) : Flapjack.WordAlloc.removeDeadStructural input5510 value5 value1 value2 = (output5510, value2759, value1) := by
  rw [input5510_def, output5510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5508]
  dsimp only
  rw [child5509]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5508_skip, output5509_skip]
  kernel_rfl

theorem node5511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5511 value2759 value1 value2 = (output5511, value2760, value1) := by
  rw [input5511_def, output5511_def]
  kernel_rfl

theorem node5512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5512 value2760 value1 value2 = (output5512, value2760, value1) := by
  rw [input5512_def, output5512_def]
  kernel_rfl

theorem node5513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5513 value2760 value1 value2 = (output5513, value2761, value1) := by
  rw [input5513_def, output5513_def]
  kernel_rfl

theorem node5514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5514 value2761 value1 value2 = (output5514, value2762, value1) := by
  rw [input5514_def, output5514_def]
  kernel_rfl

theorem node5515_cond_eq
    (child5513 : Flapjack.WordAlloc.removeDeadStructural input5513 value2760 value1 value2 = (output5513, value2761, value1))
    (child5514 : Flapjack.WordAlloc.removeDeadStructural input5514 value2761 value1 value2 = (output5514, value2762, value1)) : Flapjack.WordAlloc.removeDeadStructural input5515 value2760 value1 value2 = (output5515, value2762, value1) := by
  rw [input5515_def, output5515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5513]
  dsimp only
  rw [child5514]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5513_skip, output5514_skip]
  kernel_rfl

theorem node5516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5516 value2762 value1 value2 = (output5516, value2763, value1) := by
  rw [input5516_def, output5516_def]
  kernel_rfl

theorem node5517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5517 value2763 value1 value2 = (output5517, value2764, value1) := by
  rw [input5517_def, output5517_def]
  kernel_rfl

theorem node5518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5518 value2764 value1 value2 = (output5518, value2765, value1) := by
  rw [input5518_def, output5518_def]
  kernel_rfl

theorem node5519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5519 value2765 value1 value2 = (output5519, value5, value1) := by
  rw [input5519_def, output5519_def]
  kernel_rfl

theorem node5520_cond_eq
    (child5518 : Flapjack.WordAlloc.removeDeadStructural input5518 value2764 value1 value2 = (output5518, value2765, value1))
    (child5519 : Flapjack.WordAlloc.removeDeadStructural input5519 value2765 value1 value2 = (output5519, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5520 value2764 value1 value2 = (output5520, value5, value1) := by
  rw [input5520_def, output5520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5518]
  dsimp only
  rw [child5519]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5518_skip, output5519_skip]
  kernel_rfl

theorem node5521_cond_eq
    (child5517 : Flapjack.WordAlloc.removeDeadStructural input5517 value2763 value1 value2 = (output5517, value2764, value1))
    (child5520 : Flapjack.WordAlloc.removeDeadStructural input5520 value2764 value1 value2 = (output5520, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5521 value2763 value1 value2 = (output5521, value5, value1) := by
  rw [input5521_def, output5521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5517]
  dsimp only
  rw [child5520]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5517_skip, output5520_skip]
  kernel_rfl

theorem node5522_cond_eq
    (child5516 : Flapjack.WordAlloc.removeDeadStructural input5516 value2762 value1 value2 = (output5516, value2763, value1))
    (child5521 : Flapjack.WordAlloc.removeDeadStructural input5521 value2763 value1 value2 = (output5521, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5522 value2762 value1 value2 = (output5522, value5, value1) := by
  rw [input5522_def, output5522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5516]
  dsimp only
  rw [child5521]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5516_skip, output5521_skip]
  kernel_rfl

theorem node5523_cond_eq
    (child5515 : Flapjack.WordAlloc.removeDeadStructural input5515 value2760 value1 value2 = (output5515, value2762, value1))
    (child5522 : Flapjack.WordAlloc.removeDeadStructural input5522 value2762 value1 value2 = (output5522, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5523 value2760 value1 value2 = (output5523, value5, value1) := by
  rw [input5523_def, output5523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5515]
  dsimp only
  rw [child5522]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5515_skip, output5522_skip]
  kernel_rfl

theorem node5524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5524 value5 value1 value2 = (output5524, value2766, value1) := by
  rw [input5524_def, output5524_def]
  kernel_rfl

theorem node5525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5525 value2766 value1 value2 = (output5525, value2767, value1) := by
  rw [input5525_def, output5525_def]
  kernel_rfl

theorem node5526_cond_eq
    (child5524 : Flapjack.WordAlloc.removeDeadStructural input5524 value5 value1 value2 = (output5524, value2766, value1))
    (child5525 : Flapjack.WordAlloc.removeDeadStructural input5525 value2766 value1 value2 = (output5525, value2767, value1)) : Flapjack.WordAlloc.removeDeadStructural input5526 value5 value1 value2 = (output5526, value2767, value1) := by
  rw [input5526_def, output5526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5524]
  dsimp only
  rw [child5525]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5524_skip, output5525_skip]
  kernel_rfl

theorem node5527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5527 value2767 value1 value2 = (output5527, value2768, value1) := by
  rw [input5527_def, output5527_def]
  kernel_rfl

theorem node5528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5528 value2768 value1 value2 = (output5528, value2768, value1) := by
  rw [input5528_def, output5528_def]
  kernel_rfl

theorem node5529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5529 value2768 value1 value2 = (output5529, value2769, value1) := by
  rw [input5529_def, output5529_def]
  kernel_rfl

theorem node5530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5530 value2769 value1 value2 = (output5530, value2770, value1) := by
  rw [input5530_def, output5530_def]
  kernel_rfl

theorem node5531_cond_eq
    (child5529 : Flapjack.WordAlloc.removeDeadStructural input5529 value2768 value1 value2 = (output5529, value2769, value1))
    (child5530 : Flapjack.WordAlloc.removeDeadStructural input5530 value2769 value1 value2 = (output5530, value2770, value1)) : Flapjack.WordAlloc.removeDeadStructural input5531 value2768 value1 value2 = (output5531, value2770, value1) := by
  rw [input5531_def, output5531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5529]
  dsimp only
  rw [child5530]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5529_skip, output5530_skip]
  kernel_rfl

theorem node5532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5532 value2770 value1 value2 = (output5532, value2771, value1) := by
  rw [input5532_def, output5532_def]
  kernel_rfl

theorem node5533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5533 value2771 value1 value2 = (output5533, value2772, value1) := by
  rw [input5533_def, output5533_def]
  kernel_rfl

theorem node5534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5534 value2772 value1 value2 = (output5534, value2773, value1) := by
  rw [input5534_def, output5534_def]
  kernel_rfl

theorem node5535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5535 value2773 value1 value2 = (output5535, value5, value1) := by
  rw [input5535_def, output5535_def]
  kernel_rfl

theorem node5536_cond_eq
    (child5534 : Flapjack.WordAlloc.removeDeadStructural input5534 value2772 value1 value2 = (output5534, value2773, value1))
    (child5535 : Flapjack.WordAlloc.removeDeadStructural input5535 value2773 value1 value2 = (output5535, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5536 value2772 value1 value2 = (output5536, value5, value1) := by
  rw [input5536_def, output5536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5534]
  dsimp only
  rw [child5535]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5534_skip, output5535_skip]
  kernel_rfl

theorem node5537_cond_eq
    (child5533 : Flapjack.WordAlloc.removeDeadStructural input5533 value2771 value1 value2 = (output5533, value2772, value1))
    (child5536 : Flapjack.WordAlloc.removeDeadStructural input5536 value2772 value1 value2 = (output5536, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5537 value2771 value1 value2 = (output5537, value5, value1) := by
  rw [input5537_def, output5537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5533]
  dsimp only
  rw [child5536]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5533_skip, output5536_skip]
  kernel_rfl

theorem node5538_cond_eq
    (child5532 : Flapjack.WordAlloc.removeDeadStructural input5532 value2770 value1 value2 = (output5532, value2771, value1))
    (child5537 : Flapjack.WordAlloc.removeDeadStructural input5537 value2771 value1 value2 = (output5537, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5538 value2770 value1 value2 = (output5538, value5, value1) := by
  rw [input5538_def, output5538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5532]
  dsimp only
  rw [child5537]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5532_skip, output5537_skip]
  kernel_rfl

theorem node5539_cond_eq
    (child5531 : Flapjack.WordAlloc.removeDeadStructural input5531 value2768 value1 value2 = (output5531, value2770, value1))
    (child5538 : Flapjack.WordAlloc.removeDeadStructural input5538 value2770 value1 value2 = (output5538, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5539 value2768 value1 value2 = (output5539, value5, value1) := by
  rw [input5539_def, output5539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5531]
  dsimp only
  rw [child5538]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5531_skip, output5538_skip]
  kernel_rfl

theorem node5540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5540 value5 value1 value2 = (output5540, value2774, value1) := by
  rw [input5540_def, output5540_def]
  kernel_rfl

theorem node5541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5541 value2774 value1 value2 = (output5541, value2775, value1) := by
  rw [input5541_def, output5541_def]
  kernel_rfl

theorem node5542_cond_eq
    (child5540 : Flapjack.WordAlloc.removeDeadStructural input5540 value5 value1 value2 = (output5540, value2774, value1))
    (child5541 : Flapjack.WordAlloc.removeDeadStructural input5541 value2774 value1 value2 = (output5541, value2775, value1)) : Flapjack.WordAlloc.removeDeadStructural input5542 value5 value1 value2 = (output5542, value2775, value1) := by
  rw [input5542_def, output5542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5540]
  dsimp only
  rw [child5541]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5540_skip, output5541_skip]
  kernel_rfl

theorem node5543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5543 value2775 value1 value2 = (output5543, value2776, value1) := by
  rw [input5543_def, output5543_def]
  kernel_rfl

theorem node5544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5544 value2776 value1 value2 = (output5544, value2776, value1) := by
  rw [input5544_def, output5544_def]
  kernel_rfl

theorem node5545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5545 value2776 value1 value2 = (output5545, value2777, value1) := by
  rw [input5545_def, output5545_def]
  kernel_rfl

theorem node5546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5546 value2777 value1 value2 = (output5546, value2778, value1) := by
  rw [input5546_def, output5546_def]
  kernel_rfl

theorem node5547_cond_eq
    (child5545 : Flapjack.WordAlloc.removeDeadStructural input5545 value2776 value1 value2 = (output5545, value2777, value1))
    (child5546 : Flapjack.WordAlloc.removeDeadStructural input5546 value2777 value1 value2 = (output5546, value2778, value1)) : Flapjack.WordAlloc.removeDeadStructural input5547 value2776 value1 value2 = (output5547, value2778, value1) := by
  rw [input5547_def, output5547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5545]
  dsimp only
  rw [child5546]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5545_skip, output5546_skip]
  kernel_rfl

theorem node5548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5548 value2778 value1 value2 = (output5548, value2779, value1) := by
  rw [input5548_def, output5548_def]
  kernel_rfl

theorem node5549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5549 value2779 value1 value2 = (output5549, value2780, value1) := by
  rw [input5549_def, output5549_def]
  kernel_rfl

theorem node5550_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5550 value2780 value1 value2 = (output5550, value2781, value1) := by
  rw [input5550_def, output5550_def]
  kernel_rfl

theorem node5551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5551 value2781 value1 value2 = (output5551, value5, value1) := by
  rw [input5551_def, output5551_def]
  kernel_rfl

theorem node5552_cond_eq
    (child5550 : Flapjack.WordAlloc.removeDeadStructural input5550 value2780 value1 value2 = (output5550, value2781, value1))
    (child5551 : Flapjack.WordAlloc.removeDeadStructural input5551 value2781 value1 value2 = (output5551, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5552 value2780 value1 value2 = (output5552, value5, value1) := by
  rw [input5552_def, output5552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5550]
  dsimp only
  rw [child5551]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5550_skip, output5551_skip]
  kernel_rfl

theorem node5553_cond_eq
    (child5549 : Flapjack.WordAlloc.removeDeadStructural input5549 value2779 value1 value2 = (output5549, value2780, value1))
    (child5552 : Flapjack.WordAlloc.removeDeadStructural input5552 value2780 value1 value2 = (output5552, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5553 value2779 value1 value2 = (output5553, value5, value1) := by
  rw [input5553_def, output5553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5549]
  dsimp only
  rw [child5552]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5549_skip, output5552_skip]
  kernel_rfl

theorem node5554_cond_eq
    (child5548 : Flapjack.WordAlloc.removeDeadStructural input5548 value2778 value1 value2 = (output5548, value2779, value1))
    (child5553 : Flapjack.WordAlloc.removeDeadStructural input5553 value2779 value1 value2 = (output5553, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5554 value2778 value1 value2 = (output5554, value5, value1) := by
  rw [input5554_def, output5554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5548]
  dsimp only
  rw [child5553]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5548_skip, output5553_skip]
  kernel_rfl

theorem node5555_cond_eq
    (child5547 : Flapjack.WordAlloc.removeDeadStructural input5547 value2776 value1 value2 = (output5547, value2778, value1))
    (child5554 : Flapjack.WordAlloc.removeDeadStructural input5554 value2778 value1 value2 = (output5554, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5555 value2776 value1 value2 = (output5555, value5, value1) := by
  rw [input5555_def, output5555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5547]
  dsimp only
  rw [child5554]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5547_skip, output5554_skip]
  kernel_rfl

theorem node5556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5556 value5 value1 value2 = (output5556, value2782, value1) := by
  rw [input5556_def, output5556_def]
  kernel_rfl

theorem node5557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5557 value2782 value1 value2 = (output5557, value2783, value1) := by
  rw [input5557_def, output5557_def]
  kernel_rfl

theorem node5558_cond_eq
    (child5556 : Flapjack.WordAlloc.removeDeadStructural input5556 value5 value1 value2 = (output5556, value2782, value1))
    (child5557 : Flapjack.WordAlloc.removeDeadStructural input5557 value2782 value1 value2 = (output5557, value2783, value1)) : Flapjack.WordAlloc.removeDeadStructural input5558 value5 value1 value2 = (output5558, value2783, value1) := by
  rw [input5558_def, output5558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5556]
  dsimp only
  rw [child5557]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5556_skip, output5557_skip]
  kernel_rfl

theorem node5559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5559 value2783 value1 value2 = (output5559, value2784, value1) := by
  rw [input5559_def, output5559_def]
  kernel_rfl

theorem node5560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5560 value2784 value1 value2 = (output5560, value2784, value1) := by
  rw [input5560_def, output5560_def]
  kernel_rfl

theorem node5561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5561 value2784 value1 value2 = (output5561, value2785, value1) := by
  rw [input5561_def, output5561_def]
  kernel_rfl

theorem node5562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5562 value2785 value1 value2 = (output5562, value2786, value1) := by
  rw [input5562_def, output5562_def]
  kernel_rfl

theorem node5563_cond_eq
    (child5561 : Flapjack.WordAlloc.removeDeadStructural input5561 value2784 value1 value2 = (output5561, value2785, value1))
    (child5562 : Flapjack.WordAlloc.removeDeadStructural input5562 value2785 value1 value2 = (output5562, value2786, value1)) : Flapjack.WordAlloc.removeDeadStructural input5563 value2784 value1 value2 = (output5563, value2786, value1) := by
  rw [input5563_def, output5563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5561]
  dsimp only
  rw [child5562]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5561_skip, output5562_skip]
  kernel_rfl

theorem node5564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5564 value2786 value1 value2 = (output5564, value2787, value1) := by
  rw [input5564_def, output5564_def]
  kernel_rfl

theorem node5565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5565 value2787 value1 value2 = (output5565, value2788, value1) := by
  rw [input5565_def, output5565_def]
  kernel_rfl

theorem node5566_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5566 value2788 value1 value2 = (output5566, value2789, value1) := by
  rw [input5566_def, output5566_def]
  kernel_rfl

theorem node5567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5567 value2789 value1 value2 = (output5567, value5, value1) := by
  rw [input5567_def, output5567_def]
  kernel_rfl

theorem node5568_cond_eq
    (child5566 : Flapjack.WordAlloc.removeDeadStructural input5566 value2788 value1 value2 = (output5566, value2789, value1))
    (child5567 : Flapjack.WordAlloc.removeDeadStructural input5567 value2789 value1 value2 = (output5567, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5568 value2788 value1 value2 = (output5568, value5, value1) := by
  rw [input5568_def, output5568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5566]
  dsimp only
  rw [child5567]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5566_skip, output5567_skip]
  kernel_rfl

theorem node5569_cond_eq
    (child5565 : Flapjack.WordAlloc.removeDeadStructural input5565 value2787 value1 value2 = (output5565, value2788, value1))
    (child5568 : Flapjack.WordAlloc.removeDeadStructural input5568 value2788 value1 value2 = (output5568, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5569 value2787 value1 value2 = (output5569, value5, value1) := by
  rw [input5569_def, output5569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5565]
  dsimp only
  rw [child5568]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5565_skip, output5568_skip]
  kernel_rfl

theorem node5570_cond_eq
    (child5564 : Flapjack.WordAlloc.removeDeadStructural input5564 value2786 value1 value2 = (output5564, value2787, value1))
    (child5569 : Flapjack.WordAlloc.removeDeadStructural input5569 value2787 value1 value2 = (output5569, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5570 value2786 value1 value2 = (output5570, value5, value1) := by
  rw [input5570_def, output5570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5564]
  dsimp only
  rw [child5569]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5564_skip, output5569_skip]
  kernel_rfl

theorem node5571_cond_eq
    (child5563 : Flapjack.WordAlloc.removeDeadStructural input5563 value2784 value1 value2 = (output5563, value2786, value1))
    (child5570 : Flapjack.WordAlloc.removeDeadStructural input5570 value2786 value1 value2 = (output5570, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5571 value2784 value1 value2 = (output5571, value5, value1) := by
  rw [input5571_def, output5571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5563]
  dsimp only
  rw [child5570]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5563_skip, output5570_skip]
  kernel_rfl

theorem node5572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5572 value5 value1 value2 = (output5572, value2790, value1) := by
  rw [input5572_def, output5572_def]
  kernel_rfl

theorem node5573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5573 value2790 value1 value2 = (output5573, value2791, value1) := by
  rw [input5573_def, output5573_def]
  kernel_rfl

theorem node5574_cond_eq
    (child5572 : Flapjack.WordAlloc.removeDeadStructural input5572 value5 value1 value2 = (output5572, value2790, value1))
    (child5573 : Flapjack.WordAlloc.removeDeadStructural input5573 value2790 value1 value2 = (output5573, value2791, value1)) : Flapjack.WordAlloc.removeDeadStructural input5574 value5 value1 value2 = (output5574, value2791, value1) := by
  rw [input5574_def, output5574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5572]
  dsimp only
  rw [child5573]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5572_skip, output5573_skip]
  kernel_rfl

theorem node5575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5575 value2791 value1 value2 = (output5575, value2792, value1) := by
  rw [input5575_def, output5575_def]
  kernel_rfl

theorem node5576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5576 value2792 value1 value2 = (output5576, value2792, value1) := by
  rw [input5576_def, output5576_def]
  kernel_rfl

theorem node5577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5577 value2792 value1 value2 = (output5577, value2793, value1) := by
  rw [input5577_def, output5577_def]
  kernel_rfl

theorem node5578_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5578 value2793 value1 value2 = (output5578, value2794, value1) := by
  rw [input5578_def, output5578_def]
  kernel_rfl

theorem node5579_cond_eq
    (child5577 : Flapjack.WordAlloc.removeDeadStructural input5577 value2792 value1 value2 = (output5577, value2793, value1))
    (child5578 : Flapjack.WordAlloc.removeDeadStructural input5578 value2793 value1 value2 = (output5578, value2794, value1)) : Flapjack.WordAlloc.removeDeadStructural input5579 value2792 value1 value2 = (output5579, value2794, value1) := by
  rw [input5579_def, output5579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5577]
  dsimp only
  rw [child5578]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5577_skip, output5578_skip]
  kernel_rfl

theorem node5580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5580 value2794 value1 value2 = (output5580, value2795, value1) := by
  rw [input5580_def, output5580_def]
  kernel_rfl

theorem node5581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5581 value2795 value1 value2 = (output5581, value2796, value1) := by
  rw [input5581_def, output5581_def]
  kernel_rfl

theorem node5582_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5582 value2796 value1 value2 = (output5582, value2797, value1) := by
  rw [input5582_def, output5582_def]
  kernel_rfl

theorem node5583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5583 value2797 value1 value2 = (output5583, value5, value1) := by
  rw [input5583_def, output5583_def]
  kernel_rfl

theorem node5584_cond_eq
    (child5582 : Flapjack.WordAlloc.removeDeadStructural input5582 value2796 value1 value2 = (output5582, value2797, value1))
    (child5583 : Flapjack.WordAlloc.removeDeadStructural input5583 value2797 value1 value2 = (output5583, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5584 value2796 value1 value2 = (output5584, value5, value1) := by
  rw [input5584_def, output5584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5582]
  dsimp only
  rw [child5583]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5582_skip, output5583_skip]
  kernel_rfl

theorem node5585_cond_eq
    (child5581 : Flapjack.WordAlloc.removeDeadStructural input5581 value2795 value1 value2 = (output5581, value2796, value1))
    (child5584 : Flapjack.WordAlloc.removeDeadStructural input5584 value2796 value1 value2 = (output5584, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5585 value2795 value1 value2 = (output5585, value5, value1) := by
  rw [input5585_def, output5585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5581]
  dsimp only
  rw [child5584]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5581_skip, output5584_skip]
  kernel_rfl

theorem node5586_cond_eq
    (child5580 : Flapjack.WordAlloc.removeDeadStructural input5580 value2794 value1 value2 = (output5580, value2795, value1))
    (child5585 : Flapjack.WordAlloc.removeDeadStructural input5585 value2795 value1 value2 = (output5585, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5586 value2794 value1 value2 = (output5586, value5, value1) := by
  rw [input5586_def, output5586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5580]
  dsimp only
  rw [child5585]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5580_skip, output5585_skip]
  kernel_rfl

theorem node5587_cond_eq
    (child5579 : Flapjack.WordAlloc.removeDeadStructural input5579 value2792 value1 value2 = (output5579, value2794, value1))
    (child5586 : Flapjack.WordAlloc.removeDeadStructural input5586 value2794 value1 value2 = (output5586, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5587 value2792 value1 value2 = (output5587, value5, value1) := by
  rw [input5587_def, output5587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5579]
  dsimp only
  rw [child5586]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5579_skip, output5586_skip]
  kernel_rfl

theorem node5588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5588 value5 value1 value2 = (output5588, value2798, value1) := by
  rw [input5588_def, output5588_def]
  kernel_rfl

theorem node5589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5589 value2798 value1 value2 = (output5589, value2799, value1) := by
  rw [input5589_def, output5589_def]
  kernel_rfl

theorem node5590_cond_eq
    (child5588 : Flapjack.WordAlloc.removeDeadStructural input5588 value5 value1 value2 = (output5588, value2798, value1))
    (child5589 : Flapjack.WordAlloc.removeDeadStructural input5589 value2798 value1 value2 = (output5589, value2799, value1)) : Flapjack.WordAlloc.removeDeadStructural input5590 value5 value1 value2 = (output5590, value2799, value1) := by
  rw [input5590_def, output5590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5588]
  dsimp only
  rw [child5589]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5588_skip, output5589_skip]
  kernel_rfl

theorem node5591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5591 value2799 value1 value2 = (output5591, value2800, value1) := by
  rw [input5591_def, output5591_def]
  kernel_rfl

theorem node5592_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5592 value2800 value1 value2 = (output5592, value2800, value1) := by
  rw [input5592_def, output5592_def]
  kernel_rfl

theorem node5593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5593 value2800 value1 value2 = (output5593, value2801, value1) := by
  rw [input5593_def, output5593_def]
  kernel_rfl

theorem node5594_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5594 value2801 value1 value2 = (output5594, value2802, value1) := by
  rw [input5594_def, output5594_def]
  kernel_rfl

theorem node5595_cond_eq
    (child5593 : Flapjack.WordAlloc.removeDeadStructural input5593 value2800 value1 value2 = (output5593, value2801, value1))
    (child5594 : Flapjack.WordAlloc.removeDeadStructural input5594 value2801 value1 value2 = (output5594, value2802, value1)) : Flapjack.WordAlloc.removeDeadStructural input5595 value2800 value1 value2 = (output5595, value2802, value1) := by
  rw [input5595_def, output5595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5593]
  dsimp only
  rw [child5594]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5593_skip, output5594_skip]
  kernel_rfl

theorem node5596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5596 value2802 value1 value2 = (output5596, value2803, value1) := by
  rw [input5596_def, output5596_def]
  kernel_rfl

theorem node5597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5597 value2803 value1 value2 = (output5597, value2804, value1) := by
  rw [input5597_def, output5597_def]
  kernel_rfl

theorem node5598_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5598 value2804 value1 value2 = (output5598, value2805, value1) := by
  rw [input5598_def, output5598_def]
  kernel_rfl

theorem node5599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5599 value2805 value1 value2 = (output5599, value5, value1) := by
  rw [input5599_def, output5599_def]
  kernel_rfl

theorem node5600_cond_eq
    (child5598 : Flapjack.WordAlloc.removeDeadStructural input5598 value2804 value1 value2 = (output5598, value2805, value1))
    (child5599 : Flapjack.WordAlloc.removeDeadStructural input5599 value2805 value1 value2 = (output5599, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5600 value2804 value1 value2 = (output5600, value5, value1) := by
  rw [input5600_def, output5600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5598]
  dsimp only
  rw [child5599]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5598_skip, output5599_skip]
  kernel_rfl

theorem node5601_cond_eq
    (child5597 : Flapjack.WordAlloc.removeDeadStructural input5597 value2803 value1 value2 = (output5597, value2804, value1))
    (child5600 : Flapjack.WordAlloc.removeDeadStructural input5600 value2804 value1 value2 = (output5600, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5601 value2803 value1 value2 = (output5601, value5, value1) := by
  rw [input5601_def, output5601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5597]
  dsimp only
  rw [child5600]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5597_skip, output5600_skip]
  kernel_rfl

theorem node5602_cond_eq
    (child5596 : Flapjack.WordAlloc.removeDeadStructural input5596 value2802 value1 value2 = (output5596, value2803, value1))
    (child5601 : Flapjack.WordAlloc.removeDeadStructural input5601 value2803 value1 value2 = (output5601, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5602 value2802 value1 value2 = (output5602, value5, value1) := by
  rw [input5602_def, output5602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5596]
  dsimp only
  rw [child5601]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5596_skip, output5601_skip]
  kernel_rfl

theorem node5603_cond_eq
    (child5595 : Flapjack.WordAlloc.removeDeadStructural input5595 value2800 value1 value2 = (output5595, value2802, value1))
    (child5602 : Flapjack.WordAlloc.removeDeadStructural input5602 value2802 value1 value2 = (output5602, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5603 value2800 value1 value2 = (output5603, value5, value1) := by
  rw [input5603_def, output5603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5595]
  dsimp only
  rw [child5602]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5595_skip, output5602_skip]
  kernel_rfl

theorem node5604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5604 value5 value1 value2 = (output5604, value2806, value1) := by
  rw [input5604_def, output5604_def]
  kernel_rfl

theorem node5605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5605 value2806 value1 value2 = (output5605, value2807, value1) := by
  rw [input5605_def, output5605_def]
  kernel_rfl

theorem node5606_cond_eq
    (child5604 : Flapjack.WordAlloc.removeDeadStructural input5604 value5 value1 value2 = (output5604, value2806, value1))
    (child5605 : Flapjack.WordAlloc.removeDeadStructural input5605 value2806 value1 value2 = (output5605, value2807, value1)) : Flapjack.WordAlloc.removeDeadStructural input5606 value5 value1 value2 = (output5606, value2807, value1) := by
  rw [input5606_def, output5606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5604]
  dsimp only
  rw [child5605]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5604_skip, output5605_skip]
  kernel_rfl

theorem node5607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5607 value2807 value1 value2 = (output5607, value2808, value1) := by
  rw [input5607_def, output5607_def]
  kernel_rfl

theorem node5608_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5608 value2808 value1 value2 = (output5608, value2808, value1) := by
  rw [input5608_def, output5608_def]
  kernel_rfl

theorem node5609_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5609 value2808 value1 value2 = (output5609, value2809, value1) := by
  rw [input5609_def, output5609_def]
  kernel_rfl

theorem node5610_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5610 value2809 value1 value2 = (output5610, value2810, value1) := by
  rw [input5610_def, output5610_def]
  kernel_rfl

theorem node5611_cond_eq
    (child5609 : Flapjack.WordAlloc.removeDeadStructural input5609 value2808 value1 value2 = (output5609, value2809, value1))
    (child5610 : Flapjack.WordAlloc.removeDeadStructural input5610 value2809 value1 value2 = (output5610, value2810, value1)) : Flapjack.WordAlloc.removeDeadStructural input5611 value2808 value1 value2 = (output5611, value2810, value1) := by
  rw [input5611_def, output5611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5609]
  dsimp only
  rw [child5610]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5609_skip, output5610_skip]
  kernel_rfl

theorem node5612_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5612 value2810 value1 value2 = (output5612, value2811, value1) := by
  rw [input5612_def, output5612_def]
  kernel_rfl

theorem node5613_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5613 value2811 value1 value2 = (output5613, value2812, value1) := by
  rw [input5613_def, output5613_def]
  kernel_rfl

theorem node5614_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5614 value2812 value1 value2 = (output5614, value2813, value1) := by
  rw [input5614_def, output5614_def]
  kernel_rfl

theorem node5615_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5615 value2813 value1 value2 = (output5615, value5, value1) := by
  rw [input5615_def, output5615_def]
  kernel_rfl

theorem node5616_cond_eq
    (child5614 : Flapjack.WordAlloc.removeDeadStructural input5614 value2812 value1 value2 = (output5614, value2813, value1))
    (child5615 : Flapjack.WordAlloc.removeDeadStructural input5615 value2813 value1 value2 = (output5615, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5616 value2812 value1 value2 = (output5616, value5, value1) := by
  rw [input5616_def, output5616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5614]
  dsimp only
  rw [child5615]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5614_skip, output5615_skip]
  kernel_rfl

theorem node5617_cond_eq
    (child5613 : Flapjack.WordAlloc.removeDeadStructural input5613 value2811 value1 value2 = (output5613, value2812, value1))
    (child5616 : Flapjack.WordAlloc.removeDeadStructural input5616 value2812 value1 value2 = (output5616, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5617 value2811 value1 value2 = (output5617, value5, value1) := by
  rw [input5617_def, output5617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5613]
  dsimp only
  rw [child5616]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5613_skip, output5616_skip]
  kernel_rfl

theorem node5618_cond_eq
    (child5612 : Flapjack.WordAlloc.removeDeadStructural input5612 value2810 value1 value2 = (output5612, value2811, value1))
    (child5617 : Flapjack.WordAlloc.removeDeadStructural input5617 value2811 value1 value2 = (output5617, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5618 value2810 value1 value2 = (output5618, value5, value1) := by
  rw [input5618_def, output5618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5612]
  dsimp only
  rw [child5617]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5612_skip, output5617_skip]
  kernel_rfl

theorem node5619_cond_eq
    (child5611 : Flapjack.WordAlloc.removeDeadStructural input5611 value2808 value1 value2 = (output5611, value2810, value1))
    (child5618 : Flapjack.WordAlloc.removeDeadStructural input5618 value2810 value1 value2 = (output5618, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5619 value2808 value1 value2 = (output5619, value5, value1) := by
  rw [input5619_def, output5619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5611]
  dsimp only
  rw [child5618]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5611_skip, output5618_skip]
  kernel_rfl

theorem node5620_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5620 value5 value1 value2 = (output5620, value2814, value1) := by
  rw [input5620_def, output5620_def]
  kernel_rfl

theorem node5621_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5621 value2814 value1 value2 = (output5621, value2815, value1) := by
  rw [input5621_def, output5621_def]
  kernel_rfl

theorem node5622_cond_eq
    (child5620 : Flapjack.WordAlloc.removeDeadStructural input5620 value5 value1 value2 = (output5620, value2814, value1))
    (child5621 : Flapjack.WordAlloc.removeDeadStructural input5621 value2814 value1 value2 = (output5621, value2815, value1)) : Flapjack.WordAlloc.removeDeadStructural input5622 value5 value1 value2 = (output5622, value2815, value1) := by
  rw [input5622_def, output5622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5620]
  dsimp only
  rw [child5621]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5620_skip, output5621_skip]
  kernel_rfl

theorem node5623_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5623 value2815 value1 value2 = (output5623, value2816, value1) := by
  rw [input5623_def, output5623_def]
  kernel_rfl

theorem node5624_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5624 value2816 value1 value2 = (output5624, value2816, value1) := by
  rw [input5624_def, output5624_def]
  kernel_rfl

theorem node5625_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5625 value2816 value1 value2 = (output5625, value2817, value1) := by
  rw [input5625_def, output5625_def]
  kernel_rfl

theorem node5626_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5626 value2817 value1 value2 = (output5626, value2818, value1) := by
  rw [input5626_def, output5626_def]
  kernel_rfl

theorem node5627_cond_eq
    (child5625 : Flapjack.WordAlloc.removeDeadStructural input5625 value2816 value1 value2 = (output5625, value2817, value1))
    (child5626 : Flapjack.WordAlloc.removeDeadStructural input5626 value2817 value1 value2 = (output5626, value2818, value1)) : Flapjack.WordAlloc.removeDeadStructural input5627 value2816 value1 value2 = (output5627, value2818, value1) := by
  rw [input5627_def, output5627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5625]
  dsimp only
  rw [child5626]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5625_skip, output5626_skip]
  kernel_rfl

theorem node5628_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5628 value2818 value1 value2 = (output5628, value2819, value1) := by
  rw [input5628_def, output5628_def]
  kernel_rfl

theorem node5629_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5629 value2819 value1 value2 = (output5629, value2820, value1) := by
  rw [input5629_def, output5629_def]
  kernel_rfl

theorem node5630_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5630 value2820 value1 value2 = (output5630, value2821, value1) := by
  rw [input5630_def, output5630_def]
  kernel_rfl

theorem node5631_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5631 value2821 value1 value2 = (output5631, value5, value1) := by
  rw [input5631_def, output5631_def]
  kernel_rfl

#print axioms node5631_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
