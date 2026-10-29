import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk052
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node13312_cond_eq
    (child13310 : Flapjack.WordAlloc.removeDeadStructural input13310 value6660 value1 value2 = (output13310, value6661, value1))
    (child13311 : Flapjack.WordAlloc.removeDeadStructural input13311 value6661 value1 value2 = (output13311, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13312 value6660 value1 value2 = (output13312, value5, value1) := by
  rw [input13312_def, output13312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13310]
  dsimp only
  rw [child13311]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13310_skip, output13311_skip]
  kernel_rfl

theorem node13313_cond_eq
    (child13309 : Flapjack.WordAlloc.removeDeadStructural input13309 value6659 value1 value2 = (output13309, value6660, value1))
    (child13312 : Flapjack.WordAlloc.removeDeadStructural input13312 value6660 value1 value2 = (output13312, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13313 value6659 value1 value2 = (output13313, value5, value1) := by
  rw [input13313_def, output13313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13309]
  dsimp only
  rw [child13312]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13309_skip, output13312_skip]
  kernel_rfl

theorem node13314_cond_eq
    (child13308 : Flapjack.WordAlloc.removeDeadStructural input13308 value6658 value1 value2 = (output13308, value6659, value1))
    (child13313 : Flapjack.WordAlloc.removeDeadStructural input13313 value6659 value1 value2 = (output13313, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13314 value6658 value1 value2 = (output13314, value5, value1) := by
  rw [input13314_def, output13314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13308]
  dsimp only
  rw [child13313]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13308_skip, output13313_skip]
  kernel_rfl

theorem node13315_cond_eq
    (child13307 : Flapjack.WordAlloc.removeDeadStructural input13307 value6657 value1 value2 = (output13307, value6658, value1))
    (child13314 : Flapjack.WordAlloc.removeDeadStructural input13314 value6658 value1 value2 = (output13314, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13315 value6657 value1 value2 = (output13315, value5, value1) := by
  rw [input13315_def, output13315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13307]
  dsimp only
  rw [child13314]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13307_skip, output13314_skip]
  kernel_rfl

theorem node13316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13316 value5 value1 value2 = (output13316, value6662, value1) := by
  rw [input13316_def, output13316_def]
  kernel_rfl

theorem node13317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13317 value6662 value1 value2 = (output13317, value6663, value1) := by
  rw [input13317_def, output13317_def]
  kernel_rfl

theorem node13318_cond_eq
    (child13316 : Flapjack.WordAlloc.removeDeadStructural input13316 value5 value1 value2 = (output13316, value6662, value1))
    (child13317 : Flapjack.WordAlloc.removeDeadStructural input13317 value6662 value1 value2 = (output13317, value6663, value1)) : Flapjack.WordAlloc.removeDeadStructural input13318 value5 value1 value2 = (output13318, value6663, value1) := by
  rw [input13318_def, output13318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13316]
  dsimp only
  rw [child13317]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13316_skip, output13317_skip]
  kernel_rfl

theorem node13319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13319 value6663 value1 value2 = (output13319, value6664, value1) := by
  rw [input13319_def, output13319_def]
  kernel_rfl

theorem node13320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13320 value6664 value1 value2 = (output13320, value6664, value1) := by
  rw [input13320_def, output13320_def]
  kernel_rfl

theorem node13321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13321 value6664 value1 value2 = (output13321, value6665, value1) := by
  rw [input13321_def, output13321_def]
  kernel_rfl

theorem node13322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13322 value6665 value1 value2 = (output13322, value6666, value1) := by
  rw [input13322_def, output13322_def]
  kernel_rfl

theorem node13323_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13323 value6666 value1 value2 = (output13323, value6667, value1) := by
  rw [input13323_def, output13323_def]
  kernel_rfl

theorem node13324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13324 value6667 value1 value2 = (output13324, value6668, value1) := by
  rw [input13324_def, output13324_def]
  kernel_rfl

theorem node13325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13325 value6668 value1 value2 = (output13325, value5, value1) := by
  rw [input13325_def, output13325_def]
  kernel_rfl

theorem node13326_cond_eq
    (child13324 : Flapjack.WordAlloc.removeDeadStructural input13324 value6667 value1 value2 = (output13324, value6668, value1))
    (child13325 : Flapjack.WordAlloc.removeDeadStructural input13325 value6668 value1 value2 = (output13325, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13326 value6667 value1 value2 = (output13326, value5, value1) := by
  rw [input13326_def, output13326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13324]
  dsimp only
  rw [child13325]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13324_skip, output13325_skip]
  kernel_rfl

theorem node13327_cond_eq
    (child13323 : Flapjack.WordAlloc.removeDeadStructural input13323 value6666 value1 value2 = (output13323, value6667, value1))
    (child13326 : Flapjack.WordAlloc.removeDeadStructural input13326 value6667 value1 value2 = (output13326, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13327 value6666 value1 value2 = (output13327, value5, value1) := by
  rw [input13327_def, output13327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13323]
  dsimp only
  rw [child13326]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13323_skip, output13326_skip]
  kernel_rfl

theorem node13328_cond_eq
    (child13322 : Flapjack.WordAlloc.removeDeadStructural input13322 value6665 value1 value2 = (output13322, value6666, value1))
    (child13327 : Flapjack.WordAlloc.removeDeadStructural input13327 value6666 value1 value2 = (output13327, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13328 value6665 value1 value2 = (output13328, value5, value1) := by
  rw [input13328_def, output13328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13322]
  dsimp only
  rw [child13327]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13322_skip, output13327_skip]
  kernel_rfl

theorem node13329_cond_eq
    (child13321 : Flapjack.WordAlloc.removeDeadStructural input13321 value6664 value1 value2 = (output13321, value6665, value1))
    (child13328 : Flapjack.WordAlloc.removeDeadStructural input13328 value6665 value1 value2 = (output13328, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13329 value6664 value1 value2 = (output13329, value5, value1) := by
  rw [input13329_def, output13329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13321]
  dsimp only
  rw [child13328]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13321_skip, output13328_skip]
  kernel_rfl

theorem node13330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13330 value5 value1 value2 = (output13330, value6669, value1) := by
  rw [input13330_def, output13330_def]
  kernel_rfl

theorem node13331_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13331 value6669 value1 value2 = (output13331, value6670, value1) := by
  rw [input13331_def, output13331_def]
  kernel_rfl

theorem node13332_cond_eq
    (child13330 : Flapjack.WordAlloc.removeDeadStructural input13330 value5 value1 value2 = (output13330, value6669, value1))
    (child13331 : Flapjack.WordAlloc.removeDeadStructural input13331 value6669 value1 value2 = (output13331, value6670, value1)) : Flapjack.WordAlloc.removeDeadStructural input13332 value5 value1 value2 = (output13332, value6670, value1) := by
  rw [input13332_def, output13332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13330]
  dsimp only
  rw [child13331]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13330_skip, output13331_skip]
  kernel_rfl

theorem node13333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13333 value6670 value1 value2 = (output13333, value6671, value1) := by
  rw [input13333_def, output13333_def]
  kernel_rfl

theorem node13334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13334 value6671 value1 value2 = (output13334, value6671, value1) := by
  rw [input13334_def, output13334_def]
  kernel_rfl

theorem node13335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13335 value6671 value1 value2 = (output13335, value6672, value1) := by
  rw [input13335_def, output13335_def]
  kernel_rfl

theorem node13336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13336 value6672 value1 value2 = (output13336, value6673, value1) := by
  rw [input13336_def, output13336_def]
  kernel_rfl

theorem node13337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13337 value6673 value1 value2 = (output13337, value6674, value1) := by
  rw [input13337_def, output13337_def]
  kernel_rfl

theorem node13338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13338 value6674 value1 value2 = (output13338, value6675, value1) := by
  rw [input13338_def, output13338_def]
  kernel_rfl

theorem node13339_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13339 value6675 value1 value2 = (output13339, value5, value1) := by
  rw [input13339_def, output13339_def]
  kernel_rfl

theorem node13340_cond_eq
    (child13338 : Flapjack.WordAlloc.removeDeadStructural input13338 value6674 value1 value2 = (output13338, value6675, value1))
    (child13339 : Flapjack.WordAlloc.removeDeadStructural input13339 value6675 value1 value2 = (output13339, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13340 value6674 value1 value2 = (output13340, value5, value1) := by
  rw [input13340_def, output13340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13338]
  dsimp only
  rw [child13339]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13338_skip, output13339_skip]
  kernel_rfl

theorem node13341_cond_eq
    (child13337 : Flapjack.WordAlloc.removeDeadStructural input13337 value6673 value1 value2 = (output13337, value6674, value1))
    (child13340 : Flapjack.WordAlloc.removeDeadStructural input13340 value6674 value1 value2 = (output13340, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13341 value6673 value1 value2 = (output13341, value5, value1) := by
  rw [input13341_def, output13341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13337]
  dsimp only
  rw [child13340]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13337_skip, output13340_skip]
  kernel_rfl

theorem node13342_cond_eq
    (child13336 : Flapjack.WordAlloc.removeDeadStructural input13336 value6672 value1 value2 = (output13336, value6673, value1))
    (child13341 : Flapjack.WordAlloc.removeDeadStructural input13341 value6673 value1 value2 = (output13341, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13342 value6672 value1 value2 = (output13342, value5, value1) := by
  rw [input13342_def, output13342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13336]
  dsimp only
  rw [child13341]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13336_skip, output13341_skip]
  kernel_rfl

theorem node13343_cond_eq
    (child13335 : Flapjack.WordAlloc.removeDeadStructural input13335 value6671 value1 value2 = (output13335, value6672, value1))
    (child13342 : Flapjack.WordAlloc.removeDeadStructural input13342 value6672 value1 value2 = (output13342, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13343 value6671 value1 value2 = (output13343, value5, value1) := by
  rw [input13343_def, output13343_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13335]
  dsimp only
  rw [child13342]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13335_skip, output13342_skip]
  kernel_rfl

theorem node13344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13344 value5 value1 value2 = (output13344, value6676, value1) := by
  rw [input13344_def, output13344_def]
  kernel_rfl

theorem node13345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13345 value6676 value1 value2 = (output13345, value6677, value1) := by
  rw [input13345_def, output13345_def]
  kernel_rfl

theorem node13346_cond_eq
    (child13344 : Flapjack.WordAlloc.removeDeadStructural input13344 value5 value1 value2 = (output13344, value6676, value1))
    (child13345 : Flapjack.WordAlloc.removeDeadStructural input13345 value6676 value1 value2 = (output13345, value6677, value1)) : Flapjack.WordAlloc.removeDeadStructural input13346 value5 value1 value2 = (output13346, value6677, value1) := by
  rw [input13346_def, output13346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13344]
  dsimp only
  rw [child13345]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13344_skip, output13345_skip]
  kernel_rfl

theorem node13347_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13347 value6677 value1 value2 = (output13347, value6678, value1) := by
  rw [input13347_def, output13347_def]
  kernel_rfl

theorem node13348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13348 value6678 value1 value2 = (output13348, value6678, value1) := by
  rw [input13348_def, output13348_def]
  kernel_rfl

theorem node13349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13349 value6678 value1 value2 = (output13349, value6679, value1) := by
  rw [input13349_def, output13349_def]
  kernel_rfl

theorem node13350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13350 value6679 value1 value2 = (output13350, value6680, value1) := by
  rw [input13350_def, output13350_def]
  kernel_rfl

theorem node13351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13351 value6680 value1 value2 = (output13351, value6681, value1) := by
  rw [input13351_def, output13351_def]
  kernel_rfl

theorem node13352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13352 value6681 value1 value2 = (output13352, value6682, value1) := by
  rw [input13352_def, output13352_def]
  kernel_rfl

theorem node13353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13353 value6682 value1 value2 = (output13353, value5, value1) := by
  rw [input13353_def, output13353_def]
  kernel_rfl

theorem node13354_cond_eq
    (child13352 : Flapjack.WordAlloc.removeDeadStructural input13352 value6681 value1 value2 = (output13352, value6682, value1))
    (child13353 : Flapjack.WordAlloc.removeDeadStructural input13353 value6682 value1 value2 = (output13353, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13354 value6681 value1 value2 = (output13354, value5, value1) := by
  rw [input13354_def, output13354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13352]
  dsimp only
  rw [child13353]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13352_skip, output13353_skip]
  kernel_rfl

theorem node13355_cond_eq
    (child13351 : Flapjack.WordAlloc.removeDeadStructural input13351 value6680 value1 value2 = (output13351, value6681, value1))
    (child13354 : Flapjack.WordAlloc.removeDeadStructural input13354 value6681 value1 value2 = (output13354, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13355 value6680 value1 value2 = (output13355, value5, value1) := by
  rw [input13355_def, output13355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13351]
  dsimp only
  rw [child13354]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13351_skip, output13354_skip]
  kernel_rfl

theorem node13356_cond_eq
    (child13350 : Flapjack.WordAlloc.removeDeadStructural input13350 value6679 value1 value2 = (output13350, value6680, value1))
    (child13355 : Flapjack.WordAlloc.removeDeadStructural input13355 value6680 value1 value2 = (output13355, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13356 value6679 value1 value2 = (output13356, value5, value1) := by
  rw [input13356_def, output13356_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13350]
  dsimp only
  rw [child13355]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13350_skip, output13355_skip]
  kernel_rfl

theorem node13357_cond_eq
    (child13349 : Flapjack.WordAlloc.removeDeadStructural input13349 value6678 value1 value2 = (output13349, value6679, value1))
    (child13356 : Flapjack.WordAlloc.removeDeadStructural input13356 value6679 value1 value2 = (output13356, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13357 value6678 value1 value2 = (output13357, value5, value1) := by
  rw [input13357_def, output13357_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13349]
  dsimp only
  rw [child13356]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13349_skip, output13356_skip]
  kernel_rfl

theorem node13358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13358 value5 value1 value2 = (output13358, value6683, value1) := by
  rw [input13358_def, output13358_def]
  kernel_rfl

theorem node13359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13359 value6683 value1 value2 = (output13359, value6684, value1) := by
  rw [input13359_def, output13359_def]
  kernel_rfl

theorem node13360_cond_eq
    (child13358 : Flapjack.WordAlloc.removeDeadStructural input13358 value5 value1 value2 = (output13358, value6683, value1))
    (child13359 : Flapjack.WordAlloc.removeDeadStructural input13359 value6683 value1 value2 = (output13359, value6684, value1)) : Flapjack.WordAlloc.removeDeadStructural input13360 value5 value1 value2 = (output13360, value6684, value1) := by
  rw [input13360_def, output13360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13358]
  dsimp only
  rw [child13359]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13358_skip, output13359_skip]
  kernel_rfl

theorem node13361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13361 value6684 value1 value2 = (output13361, value6685, value1) := by
  rw [input13361_def, output13361_def]
  kernel_rfl

theorem node13362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13362 value6685 value1 value2 = (output13362, value6685, value1) := by
  rw [input13362_def, output13362_def]
  kernel_rfl

theorem node13363_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13363 value6685 value1 value2 = (output13363, value6686, value1) := by
  rw [input13363_def, output13363_def]
  kernel_rfl

theorem node13364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13364 value6686 value1 value2 = (output13364, value6687, value1) := by
  rw [input13364_def, output13364_def]
  kernel_rfl

theorem node13365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13365 value6687 value1 value2 = (output13365, value6688, value1) := by
  rw [input13365_def, output13365_def]
  kernel_rfl

theorem node13366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13366 value6688 value1 value2 = (output13366, value6689, value1) := by
  rw [input13366_def, output13366_def]
  kernel_rfl

theorem node13367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13367 value6689 value1 value2 = (output13367, value5, value1) := by
  rw [input13367_def, output13367_def]
  kernel_rfl

theorem node13368_cond_eq
    (child13366 : Flapjack.WordAlloc.removeDeadStructural input13366 value6688 value1 value2 = (output13366, value6689, value1))
    (child13367 : Flapjack.WordAlloc.removeDeadStructural input13367 value6689 value1 value2 = (output13367, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13368 value6688 value1 value2 = (output13368, value5, value1) := by
  rw [input13368_def, output13368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13366]
  dsimp only
  rw [child13367]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13366_skip, output13367_skip]
  kernel_rfl

theorem node13369_cond_eq
    (child13365 : Flapjack.WordAlloc.removeDeadStructural input13365 value6687 value1 value2 = (output13365, value6688, value1))
    (child13368 : Flapjack.WordAlloc.removeDeadStructural input13368 value6688 value1 value2 = (output13368, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13369 value6687 value1 value2 = (output13369, value5, value1) := by
  rw [input13369_def, output13369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13365]
  dsimp only
  rw [child13368]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13365_skip, output13368_skip]
  kernel_rfl

theorem node13370_cond_eq
    (child13364 : Flapjack.WordAlloc.removeDeadStructural input13364 value6686 value1 value2 = (output13364, value6687, value1))
    (child13369 : Flapjack.WordAlloc.removeDeadStructural input13369 value6687 value1 value2 = (output13369, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13370 value6686 value1 value2 = (output13370, value5, value1) := by
  rw [input13370_def, output13370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13364]
  dsimp only
  rw [child13369]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13364_skip, output13369_skip]
  kernel_rfl

theorem node13371_cond_eq
    (child13363 : Flapjack.WordAlloc.removeDeadStructural input13363 value6685 value1 value2 = (output13363, value6686, value1))
    (child13370 : Flapjack.WordAlloc.removeDeadStructural input13370 value6686 value1 value2 = (output13370, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13371 value6685 value1 value2 = (output13371, value5, value1) := by
  rw [input13371_def, output13371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13363]
  dsimp only
  rw [child13370]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13363_skip, output13370_skip]
  kernel_rfl

theorem node13372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13372 value5 value1 value2 = (output13372, value6690, value1) := by
  rw [input13372_def, output13372_def]
  kernel_rfl

theorem node13373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13373 value6690 value1 value2 = (output13373, value6691, value1) := by
  rw [input13373_def, output13373_def]
  kernel_rfl

theorem node13374_cond_eq
    (child13372 : Flapjack.WordAlloc.removeDeadStructural input13372 value5 value1 value2 = (output13372, value6690, value1))
    (child13373 : Flapjack.WordAlloc.removeDeadStructural input13373 value6690 value1 value2 = (output13373, value6691, value1)) : Flapjack.WordAlloc.removeDeadStructural input13374 value5 value1 value2 = (output13374, value6691, value1) := by
  rw [input13374_def, output13374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13372]
  dsimp only
  rw [child13373]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13372_skip, output13373_skip]
  kernel_rfl

theorem node13375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13375 value6691 value1 value2 = (output13375, value6692, value1) := by
  rw [input13375_def, output13375_def]
  kernel_rfl

theorem node13376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13376 value6692 value1 value2 = (output13376, value6692, value1) := by
  rw [input13376_def, output13376_def]
  kernel_rfl

theorem node13377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13377 value6692 value1 value2 = (output13377, value6693, value1) := by
  rw [input13377_def, output13377_def]
  kernel_rfl

theorem node13378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13378 value6693 value1 value2 = (output13378, value6694, value1) := by
  rw [input13378_def, output13378_def]
  kernel_rfl

theorem node13379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13379 value6694 value1 value2 = (output13379, value6695, value1) := by
  rw [input13379_def, output13379_def]
  kernel_rfl

theorem node13380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13380 value6695 value1 value2 = (output13380, value6696, value1) := by
  rw [input13380_def, output13380_def]
  kernel_rfl

theorem node13381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13381 value6696 value1 value2 = (output13381, value5, value1) := by
  rw [input13381_def, output13381_def]
  kernel_rfl

theorem node13382_cond_eq
    (child13380 : Flapjack.WordAlloc.removeDeadStructural input13380 value6695 value1 value2 = (output13380, value6696, value1))
    (child13381 : Flapjack.WordAlloc.removeDeadStructural input13381 value6696 value1 value2 = (output13381, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13382 value6695 value1 value2 = (output13382, value5, value1) := by
  rw [input13382_def, output13382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13380]
  dsimp only
  rw [child13381]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13380_skip, output13381_skip]
  kernel_rfl

theorem node13383_cond_eq
    (child13379 : Flapjack.WordAlloc.removeDeadStructural input13379 value6694 value1 value2 = (output13379, value6695, value1))
    (child13382 : Flapjack.WordAlloc.removeDeadStructural input13382 value6695 value1 value2 = (output13382, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13383 value6694 value1 value2 = (output13383, value5, value1) := by
  rw [input13383_def, output13383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13379]
  dsimp only
  rw [child13382]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13379_skip, output13382_skip]
  kernel_rfl

theorem node13384_cond_eq
    (child13378 : Flapjack.WordAlloc.removeDeadStructural input13378 value6693 value1 value2 = (output13378, value6694, value1))
    (child13383 : Flapjack.WordAlloc.removeDeadStructural input13383 value6694 value1 value2 = (output13383, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13384 value6693 value1 value2 = (output13384, value5, value1) := by
  rw [input13384_def, output13384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13378]
  dsimp only
  rw [child13383]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13378_skip, output13383_skip]
  kernel_rfl

theorem node13385_cond_eq
    (child13377 : Flapjack.WordAlloc.removeDeadStructural input13377 value6692 value1 value2 = (output13377, value6693, value1))
    (child13384 : Flapjack.WordAlloc.removeDeadStructural input13384 value6693 value1 value2 = (output13384, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13385 value6692 value1 value2 = (output13385, value5, value1) := by
  rw [input13385_def, output13385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13377]
  dsimp only
  rw [child13384]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13377_skip, output13384_skip]
  kernel_rfl

theorem node13386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13386 value5 value1 value2 = (output13386, value6697, value1) := by
  rw [input13386_def, output13386_def]
  kernel_rfl

theorem node13387_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13387 value6697 value1 value2 = (output13387, value6698, value1) := by
  rw [input13387_def, output13387_def]
  kernel_rfl

theorem node13388_cond_eq
    (child13386 : Flapjack.WordAlloc.removeDeadStructural input13386 value5 value1 value2 = (output13386, value6697, value1))
    (child13387 : Flapjack.WordAlloc.removeDeadStructural input13387 value6697 value1 value2 = (output13387, value6698, value1)) : Flapjack.WordAlloc.removeDeadStructural input13388 value5 value1 value2 = (output13388, value6698, value1) := by
  rw [input13388_def, output13388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13386]
  dsimp only
  rw [child13387]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13386_skip, output13387_skip]
  kernel_rfl

theorem node13389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13389 value6698 value1 value2 = (output13389, value6699, value1) := by
  rw [input13389_def, output13389_def]
  kernel_rfl

theorem node13390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13390 value6699 value1 value2 = (output13390, value6699, value1) := by
  rw [input13390_def, output13390_def]
  kernel_rfl

theorem node13391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13391 value6699 value1 value2 = (output13391, value6700, value1) := by
  rw [input13391_def, output13391_def]
  kernel_rfl

theorem node13392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13392 value6700 value1 value2 = (output13392, value6701, value1) := by
  rw [input13392_def, output13392_def]
  kernel_rfl

theorem node13393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13393 value6701 value1 value2 = (output13393, value6702, value1) := by
  rw [input13393_def, output13393_def]
  kernel_rfl

theorem node13394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13394 value6702 value1 value2 = (output13394, value6703, value1) := by
  rw [input13394_def, output13394_def]
  kernel_rfl

theorem node13395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13395 value6703 value1 value2 = (output13395, value5, value1) := by
  rw [input13395_def, output13395_def]
  kernel_rfl

theorem node13396_cond_eq
    (child13394 : Flapjack.WordAlloc.removeDeadStructural input13394 value6702 value1 value2 = (output13394, value6703, value1))
    (child13395 : Flapjack.WordAlloc.removeDeadStructural input13395 value6703 value1 value2 = (output13395, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13396 value6702 value1 value2 = (output13396, value5, value1) := by
  rw [input13396_def, output13396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13394]
  dsimp only
  rw [child13395]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13394_skip, output13395_skip]
  kernel_rfl

theorem node13397_cond_eq
    (child13393 : Flapjack.WordAlloc.removeDeadStructural input13393 value6701 value1 value2 = (output13393, value6702, value1))
    (child13396 : Flapjack.WordAlloc.removeDeadStructural input13396 value6702 value1 value2 = (output13396, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13397 value6701 value1 value2 = (output13397, value5, value1) := by
  rw [input13397_def, output13397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13393]
  dsimp only
  rw [child13396]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13393_skip, output13396_skip]
  kernel_rfl

theorem node13398_cond_eq
    (child13392 : Flapjack.WordAlloc.removeDeadStructural input13392 value6700 value1 value2 = (output13392, value6701, value1))
    (child13397 : Flapjack.WordAlloc.removeDeadStructural input13397 value6701 value1 value2 = (output13397, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13398 value6700 value1 value2 = (output13398, value5, value1) := by
  rw [input13398_def, output13398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13392]
  dsimp only
  rw [child13397]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13392_skip, output13397_skip]
  kernel_rfl

theorem node13399_cond_eq
    (child13391 : Flapjack.WordAlloc.removeDeadStructural input13391 value6699 value1 value2 = (output13391, value6700, value1))
    (child13398 : Flapjack.WordAlloc.removeDeadStructural input13398 value6700 value1 value2 = (output13398, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13399 value6699 value1 value2 = (output13399, value5, value1) := by
  rw [input13399_def, output13399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13391]
  dsimp only
  rw [child13398]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13391_skip, output13398_skip]
  kernel_rfl

theorem node13400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13400 value5 value1 value2 = (output13400, value6704, value1) := by
  rw [input13400_def, output13400_def]
  kernel_rfl

theorem node13401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13401 value6704 value1 value2 = (output13401, value6705, value1) := by
  rw [input13401_def, output13401_def]
  kernel_rfl

theorem node13402_cond_eq
    (child13400 : Flapjack.WordAlloc.removeDeadStructural input13400 value5 value1 value2 = (output13400, value6704, value1))
    (child13401 : Flapjack.WordAlloc.removeDeadStructural input13401 value6704 value1 value2 = (output13401, value6705, value1)) : Flapjack.WordAlloc.removeDeadStructural input13402 value5 value1 value2 = (output13402, value6705, value1) := by
  rw [input13402_def, output13402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13400]
  dsimp only
  rw [child13401]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13400_skip, output13401_skip]
  kernel_rfl

theorem node13403_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13403 value6705 value1 value2 = (output13403, value6706, value1) := by
  rw [input13403_def, output13403_def]
  kernel_rfl

theorem node13404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13404 value6706 value1 value2 = (output13404, value6706, value1) := by
  rw [input13404_def, output13404_def]
  kernel_rfl

theorem node13405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13405 value6706 value1 value2 = (output13405, value6707, value1) := by
  rw [input13405_def, output13405_def]
  kernel_rfl

theorem node13406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13406 value6707 value1 value2 = (output13406, value6708, value1) := by
  rw [input13406_def, output13406_def]
  kernel_rfl

theorem node13407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13407 value6708 value1 value2 = (output13407, value6709, value1) := by
  rw [input13407_def, output13407_def]
  kernel_rfl

theorem node13408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13408 value6709 value1 value2 = (output13408, value6710, value1) := by
  rw [input13408_def, output13408_def]
  kernel_rfl

theorem node13409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13409 value6710 value1 value2 = (output13409, value5, value1) := by
  rw [input13409_def, output13409_def]
  kernel_rfl

theorem node13410_cond_eq
    (child13408 : Flapjack.WordAlloc.removeDeadStructural input13408 value6709 value1 value2 = (output13408, value6710, value1))
    (child13409 : Flapjack.WordAlloc.removeDeadStructural input13409 value6710 value1 value2 = (output13409, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13410 value6709 value1 value2 = (output13410, value5, value1) := by
  rw [input13410_def, output13410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13408]
  dsimp only
  rw [child13409]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13408_skip, output13409_skip]
  kernel_rfl

theorem node13411_cond_eq
    (child13407 : Flapjack.WordAlloc.removeDeadStructural input13407 value6708 value1 value2 = (output13407, value6709, value1))
    (child13410 : Flapjack.WordAlloc.removeDeadStructural input13410 value6709 value1 value2 = (output13410, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13411 value6708 value1 value2 = (output13411, value5, value1) := by
  rw [input13411_def, output13411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13407]
  dsimp only
  rw [child13410]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13407_skip, output13410_skip]
  kernel_rfl

theorem node13412_cond_eq
    (child13406 : Flapjack.WordAlloc.removeDeadStructural input13406 value6707 value1 value2 = (output13406, value6708, value1))
    (child13411 : Flapjack.WordAlloc.removeDeadStructural input13411 value6708 value1 value2 = (output13411, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13412 value6707 value1 value2 = (output13412, value5, value1) := by
  rw [input13412_def, output13412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13406]
  dsimp only
  rw [child13411]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13406_skip, output13411_skip]
  kernel_rfl

theorem node13413_cond_eq
    (child13405 : Flapjack.WordAlloc.removeDeadStructural input13405 value6706 value1 value2 = (output13405, value6707, value1))
    (child13412 : Flapjack.WordAlloc.removeDeadStructural input13412 value6707 value1 value2 = (output13412, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13413 value6706 value1 value2 = (output13413, value5, value1) := by
  rw [input13413_def, output13413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13405]
  dsimp only
  rw [child13412]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13405_skip, output13412_skip]
  kernel_rfl

theorem node13414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13414 value5 value1 value2 = (output13414, value6711, value1) := by
  rw [input13414_def, output13414_def]
  kernel_rfl

theorem node13415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13415 value6711 value1 value2 = (output13415, value6712, value1) := by
  rw [input13415_def, output13415_def]
  kernel_rfl

theorem node13416_cond_eq
    (child13414 : Flapjack.WordAlloc.removeDeadStructural input13414 value5 value1 value2 = (output13414, value6711, value1))
    (child13415 : Flapjack.WordAlloc.removeDeadStructural input13415 value6711 value1 value2 = (output13415, value6712, value1)) : Flapjack.WordAlloc.removeDeadStructural input13416 value5 value1 value2 = (output13416, value6712, value1) := by
  rw [input13416_def, output13416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13414]
  dsimp only
  rw [child13415]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13414_skip, output13415_skip]
  kernel_rfl

theorem node13417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13417 value6712 value1 value2 = (output13417, value6713, value1) := by
  rw [input13417_def, output13417_def]
  kernel_rfl

theorem node13418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13418 value6713 value1 value2 = (output13418, value6713, value1) := by
  rw [input13418_def, output13418_def]
  kernel_rfl

theorem node13419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13419 value6713 value1 value2 = (output13419, value6714, value1) := by
  rw [input13419_def, output13419_def]
  kernel_rfl

theorem node13420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13420 value6714 value1 value2 = (output13420, value6715, value1) := by
  rw [input13420_def, output13420_def]
  kernel_rfl

theorem node13421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13421 value6715 value1 value2 = (output13421, value6716, value1) := by
  rw [input13421_def, output13421_def]
  kernel_rfl

theorem node13422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13422 value6716 value1 value2 = (output13422, value6717, value1) := by
  rw [input13422_def, output13422_def]
  kernel_rfl

theorem node13423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13423 value6717 value1 value2 = (output13423, value5, value1) := by
  rw [input13423_def, output13423_def]
  kernel_rfl

theorem node13424_cond_eq
    (child13422 : Flapjack.WordAlloc.removeDeadStructural input13422 value6716 value1 value2 = (output13422, value6717, value1))
    (child13423 : Flapjack.WordAlloc.removeDeadStructural input13423 value6717 value1 value2 = (output13423, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13424 value6716 value1 value2 = (output13424, value5, value1) := by
  rw [input13424_def, output13424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13422]
  dsimp only
  rw [child13423]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13422_skip, output13423_skip]
  kernel_rfl

theorem node13425_cond_eq
    (child13421 : Flapjack.WordAlloc.removeDeadStructural input13421 value6715 value1 value2 = (output13421, value6716, value1))
    (child13424 : Flapjack.WordAlloc.removeDeadStructural input13424 value6716 value1 value2 = (output13424, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13425 value6715 value1 value2 = (output13425, value5, value1) := by
  rw [input13425_def, output13425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13421]
  dsimp only
  rw [child13424]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13421_skip, output13424_skip]
  kernel_rfl

theorem node13426_cond_eq
    (child13420 : Flapjack.WordAlloc.removeDeadStructural input13420 value6714 value1 value2 = (output13420, value6715, value1))
    (child13425 : Flapjack.WordAlloc.removeDeadStructural input13425 value6715 value1 value2 = (output13425, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13426 value6714 value1 value2 = (output13426, value5, value1) := by
  rw [input13426_def, output13426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13420]
  dsimp only
  rw [child13425]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13420_skip, output13425_skip]
  kernel_rfl

theorem node13427_cond_eq
    (child13419 : Flapjack.WordAlloc.removeDeadStructural input13419 value6713 value1 value2 = (output13419, value6714, value1))
    (child13426 : Flapjack.WordAlloc.removeDeadStructural input13426 value6714 value1 value2 = (output13426, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13427 value6713 value1 value2 = (output13427, value5, value1) := by
  rw [input13427_def, output13427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13419]
  dsimp only
  rw [child13426]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13419_skip, output13426_skip]
  kernel_rfl

theorem node13428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13428 value5 value1 value2 = (output13428, value6718, value1) := by
  rw [input13428_def, output13428_def]
  kernel_rfl

theorem node13429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13429 value6718 value1 value2 = (output13429, value6719, value1) := by
  rw [input13429_def, output13429_def]
  kernel_rfl

theorem node13430_cond_eq
    (child13428 : Flapjack.WordAlloc.removeDeadStructural input13428 value5 value1 value2 = (output13428, value6718, value1))
    (child13429 : Flapjack.WordAlloc.removeDeadStructural input13429 value6718 value1 value2 = (output13429, value6719, value1)) : Flapjack.WordAlloc.removeDeadStructural input13430 value5 value1 value2 = (output13430, value6719, value1) := by
  rw [input13430_def, output13430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13428]
  dsimp only
  rw [child13429]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13428_skip, output13429_skip]
  kernel_rfl

theorem node13431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13431 value6719 value1 value2 = (output13431, value6720, value1) := by
  rw [input13431_def, output13431_def]
  kernel_rfl

theorem node13432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13432 value6720 value1 value2 = (output13432, value6720, value1) := by
  rw [input13432_def, output13432_def]
  kernel_rfl

theorem node13433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13433 value6720 value1 value2 = (output13433, value6721, value1) := by
  rw [input13433_def, output13433_def]
  kernel_rfl

theorem node13434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13434 value6721 value1 value2 = (output13434, value6722, value1) := by
  rw [input13434_def, output13434_def]
  kernel_rfl

theorem node13435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13435 value6722 value1 value2 = (output13435, value6723, value1) := by
  rw [input13435_def, output13435_def]
  kernel_rfl

theorem node13436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13436 value6723 value1 value2 = (output13436, value6724, value1) := by
  rw [input13436_def, output13436_def]
  kernel_rfl

theorem node13437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13437 value6724 value1 value2 = (output13437, value5, value1) := by
  rw [input13437_def, output13437_def]
  kernel_rfl

theorem node13438_cond_eq
    (child13436 : Flapjack.WordAlloc.removeDeadStructural input13436 value6723 value1 value2 = (output13436, value6724, value1))
    (child13437 : Flapjack.WordAlloc.removeDeadStructural input13437 value6724 value1 value2 = (output13437, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13438 value6723 value1 value2 = (output13438, value5, value1) := by
  rw [input13438_def, output13438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13436]
  dsimp only
  rw [child13437]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13436_skip, output13437_skip]
  kernel_rfl

theorem node13439_cond_eq
    (child13435 : Flapjack.WordAlloc.removeDeadStructural input13435 value6722 value1 value2 = (output13435, value6723, value1))
    (child13438 : Flapjack.WordAlloc.removeDeadStructural input13438 value6723 value1 value2 = (output13438, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13439 value6722 value1 value2 = (output13439, value5, value1) := by
  rw [input13439_def, output13439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13435]
  dsimp only
  rw [child13438]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13435_skip, output13438_skip]
  kernel_rfl

theorem node13440_cond_eq
    (child13434 : Flapjack.WordAlloc.removeDeadStructural input13434 value6721 value1 value2 = (output13434, value6722, value1))
    (child13439 : Flapjack.WordAlloc.removeDeadStructural input13439 value6722 value1 value2 = (output13439, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13440 value6721 value1 value2 = (output13440, value5, value1) := by
  rw [input13440_def, output13440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13434]
  dsimp only
  rw [child13439]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13434_skip, output13439_skip]
  kernel_rfl

theorem node13441_cond_eq
    (child13433 : Flapjack.WordAlloc.removeDeadStructural input13433 value6720 value1 value2 = (output13433, value6721, value1))
    (child13440 : Flapjack.WordAlloc.removeDeadStructural input13440 value6721 value1 value2 = (output13440, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13441 value6720 value1 value2 = (output13441, value5, value1) := by
  rw [input13441_def, output13441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13433]
  dsimp only
  rw [child13440]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13433_skip, output13440_skip]
  kernel_rfl

theorem node13442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13442 value5 value1 value2 = (output13442, value6725, value1) := by
  rw [input13442_def, output13442_def]
  kernel_rfl

theorem node13443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13443 value6725 value1 value2 = (output13443, value6726, value1) := by
  rw [input13443_def, output13443_def]
  kernel_rfl

theorem node13444_cond_eq
    (child13442 : Flapjack.WordAlloc.removeDeadStructural input13442 value5 value1 value2 = (output13442, value6725, value1))
    (child13443 : Flapjack.WordAlloc.removeDeadStructural input13443 value6725 value1 value2 = (output13443, value6726, value1)) : Flapjack.WordAlloc.removeDeadStructural input13444 value5 value1 value2 = (output13444, value6726, value1) := by
  rw [input13444_def, output13444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13442]
  dsimp only
  rw [child13443]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13442_skip, output13443_skip]
  kernel_rfl

theorem node13445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13445 value6726 value1 value2 = (output13445, value6727, value1) := by
  rw [input13445_def, output13445_def]
  kernel_rfl

theorem node13446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13446 value6727 value1 value2 = (output13446, value6727, value1) := by
  rw [input13446_def, output13446_def]
  kernel_rfl

theorem node13447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13447 value6727 value1 value2 = (output13447, value6728, value1) := by
  rw [input13447_def, output13447_def]
  kernel_rfl

theorem node13448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13448 value6728 value1 value2 = (output13448, value6729, value1) := by
  rw [input13448_def, output13448_def]
  kernel_rfl

theorem node13449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13449 value6729 value1 value2 = (output13449, value6730, value1) := by
  rw [input13449_def, output13449_def]
  kernel_rfl

theorem node13450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13450 value6730 value1 value2 = (output13450, value6731, value1) := by
  rw [input13450_def, output13450_def]
  kernel_rfl

theorem node13451_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13451 value6731 value1 value2 = (output13451, value5, value1) := by
  rw [input13451_def, output13451_def]
  kernel_rfl

theorem node13452_cond_eq
    (child13450 : Flapjack.WordAlloc.removeDeadStructural input13450 value6730 value1 value2 = (output13450, value6731, value1))
    (child13451 : Flapjack.WordAlloc.removeDeadStructural input13451 value6731 value1 value2 = (output13451, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13452 value6730 value1 value2 = (output13452, value5, value1) := by
  rw [input13452_def, output13452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13450]
  dsimp only
  rw [child13451]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13450_skip, output13451_skip]
  kernel_rfl

theorem node13453_cond_eq
    (child13449 : Flapjack.WordAlloc.removeDeadStructural input13449 value6729 value1 value2 = (output13449, value6730, value1))
    (child13452 : Flapjack.WordAlloc.removeDeadStructural input13452 value6730 value1 value2 = (output13452, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13453 value6729 value1 value2 = (output13453, value5, value1) := by
  rw [input13453_def, output13453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13449]
  dsimp only
  rw [child13452]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13449_skip, output13452_skip]
  kernel_rfl

theorem node13454_cond_eq
    (child13448 : Flapjack.WordAlloc.removeDeadStructural input13448 value6728 value1 value2 = (output13448, value6729, value1))
    (child13453 : Flapjack.WordAlloc.removeDeadStructural input13453 value6729 value1 value2 = (output13453, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13454 value6728 value1 value2 = (output13454, value5, value1) := by
  rw [input13454_def, output13454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13448]
  dsimp only
  rw [child13453]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13448_skip, output13453_skip]
  kernel_rfl

theorem node13455_cond_eq
    (child13447 : Flapjack.WordAlloc.removeDeadStructural input13447 value6727 value1 value2 = (output13447, value6728, value1))
    (child13454 : Flapjack.WordAlloc.removeDeadStructural input13454 value6728 value1 value2 = (output13454, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13455 value6727 value1 value2 = (output13455, value5, value1) := by
  rw [input13455_def, output13455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13447]
  dsimp only
  rw [child13454]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13447_skip, output13454_skip]
  kernel_rfl

theorem node13456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13456 value5 value1 value2 = (output13456, value6732, value1) := by
  rw [input13456_def, output13456_def]
  kernel_rfl

theorem node13457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13457 value6732 value1 value2 = (output13457, value6733, value1) := by
  rw [input13457_def, output13457_def]
  kernel_rfl

theorem node13458_cond_eq
    (child13456 : Flapjack.WordAlloc.removeDeadStructural input13456 value5 value1 value2 = (output13456, value6732, value1))
    (child13457 : Flapjack.WordAlloc.removeDeadStructural input13457 value6732 value1 value2 = (output13457, value6733, value1)) : Flapjack.WordAlloc.removeDeadStructural input13458 value5 value1 value2 = (output13458, value6733, value1) := by
  rw [input13458_def, output13458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13456]
  dsimp only
  rw [child13457]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13456_skip, output13457_skip]
  kernel_rfl

theorem node13459_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13459 value6733 value1 value2 = (output13459, value6734, value1) := by
  rw [input13459_def, output13459_def]
  kernel_rfl

theorem node13460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13460 value6734 value1 value2 = (output13460, value6734, value1) := by
  rw [input13460_def, output13460_def]
  kernel_rfl

theorem node13461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13461 value6734 value1 value2 = (output13461, value6735, value1) := by
  rw [input13461_def, output13461_def]
  kernel_rfl

theorem node13462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13462 value6735 value1 value2 = (output13462, value6736, value1) := by
  rw [input13462_def, output13462_def]
  kernel_rfl

theorem node13463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13463 value6736 value1 value2 = (output13463, value6737, value1) := by
  rw [input13463_def, output13463_def]
  kernel_rfl

theorem node13464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13464 value6737 value1 value2 = (output13464, value6738, value1) := by
  rw [input13464_def, output13464_def]
  kernel_rfl

theorem node13465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13465 value6738 value1 value2 = (output13465, value5, value1) := by
  rw [input13465_def, output13465_def]
  kernel_rfl

theorem node13466_cond_eq
    (child13464 : Flapjack.WordAlloc.removeDeadStructural input13464 value6737 value1 value2 = (output13464, value6738, value1))
    (child13465 : Flapjack.WordAlloc.removeDeadStructural input13465 value6738 value1 value2 = (output13465, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13466 value6737 value1 value2 = (output13466, value5, value1) := by
  rw [input13466_def, output13466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13464]
  dsimp only
  rw [child13465]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13464_skip, output13465_skip]
  kernel_rfl

theorem node13467_cond_eq
    (child13463 : Flapjack.WordAlloc.removeDeadStructural input13463 value6736 value1 value2 = (output13463, value6737, value1))
    (child13466 : Flapjack.WordAlloc.removeDeadStructural input13466 value6737 value1 value2 = (output13466, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13467 value6736 value1 value2 = (output13467, value5, value1) := by
  rw [input13467_def, output13467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13463]
  dsimp only
  rw [child13466]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13463_skip, output13466_skip]
  kernel_rfl

theorem node13468_cond_eq
    (child13462 : Flapjack.WordAlloc.removeDeadStructural input13462 value6735 value1 value2 = (output13462, value6736, value1))
    (child13467 : Flapjack.WordAlloc.removeDeadStructural input13467 value6736 value1 value2 = (output13467, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13468 value6735 value1 value2 = (output13468, value5, value1) := by
  rw [input13468_def, output13468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13462]
  dsimp only
  rw [child13467]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13462_skip, output13467_skip]
  kernel_rfl

theorem node13469_cond_eq
    (child13461 : Flapjack.WordAlloc.removeDeadStructural input13461 value6734 value1 value2 = (output13461, value6735, value1))
    (child13468 : Flapjack.WordAlloc.removeDeadStructural input13468 value6735 value1 value2 = (output13468, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13469 value6734 value1 value2 = (output13469, value5, value1) := by
  rw [input13469_def, output13469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13461]
  dsimp only
  rw [child13468]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13461_skip, output13468_skip]
  kernel_rfl

theorem node13470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13470 value5 value1 value2 = (output13470, value6739, value1) := by
  rw [input13470_def, output13470_def]
  kernel_rfl

theorem node13471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13471 value6739 value1 value2 = (output13471, value6740, value1) := by
  rw [input13471_def, output13471_def]
  kernel_rfl

theorem node13472_cond_eq
    (child13470 : Flapjack.WordAlloc.removeDeadStructural input13470 value5 value1 value2 = (output13470, value6739, value1))
    (child13471 : Flapjack.WordAlloc.removeDeadStructural input13471 value6739 value1 value2 = (output13471, value6740, value1)) : Flapjack.WordAlloc.removeDeadStructural input13472 value5 value1 value2 = (output13472, value6740, value1) := by
  rw [input13472_def, output13472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13470]
  dsimp only
  rw [child13471]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13470_skip, output13471_skip]
  kernel_rfl

theorem node13473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13473 value6740 value1 value2 = (output13473, value6741, value1) := by
  rw [input13473_def, output13473_def]
  kernel_rfl

theorem node13474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13474 value6741 value1 value2 = (output13474, value6741, value1) := by
  rw [input13474_def, output13474_def]
  kernel_rfl

theorem node13475_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13475 value6741 value1 value2 = (output13475, value6742, value1) := by
  rw [input13475_def, output13475_def]
  kernel_rfl

theorem node13476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13476 value6742 value1 value2 = (output13476, value6743, value1) := by
  rw [input13476_def, output13476_def]
  kernel_rfl

theorem node13477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13477 value6743 value1 value2 = (output13477, value6744, value1) := by
  rw [input13477_def, output13477_def]
  kernel_rfl

theorem node13478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13478 value6744 value1 value2 = (output13478, value6745, value1) := by
  rw [input13478_def, output13478_def]
  kernel_rfl

theorem node13479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13479 value6745 value1 value2 = (output13479, value5, value1) := by
  rw [input13479_def, output13479_def]
  kernel_rfl

theorem node13480_cond_eq
    (child13478 : Flapjack.WordAlloc.removeDeadStructural input13478 value6744 value1 value2 = (output13478, value6745, value1))
    (child13479 : Flapjack.WordAlloc.removeDeadStructural input13479 value6745 value1 value2 = (output13479, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13480 value6744 value1 value2 = (output13480, value5, value1) := by
  rw [input13480_def, output13480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13478]
  dsimp only
  rw [child13479]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13478_skip, output13479_skip]
  kernel_rfl

theorem node13481_cond_eq
    (child13477 : Flapjack.WordAlloc.removeDeadStructural input13477 value6743 value1 value2 = (output13477, value6744, value1))
    (child13480 : Flapjack.WordAlloc.removeDeadStructural input13480 value6744 value1 value2 = (output13480, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13481 value6743 value1 value2 = (output13481, value5, value1) := by
  rw [input13481_def, output13481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13477]
  dsimp only
  rw [child13480]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13477_skip, output13480_skip]
  kernel_rfl

theorem node13482_cond_eq
    (child13476 : Flapjack.WordAlloc.removeDeadStructural input13476 value6742 value1 value2 = (output13476, value6743, value1))
    (child13481 : Flapjack.WordAlloc.removeDeadStructural input13481 value6743 value1 value2 = (output13481, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13482 value6742 value1 value2 = (output13482, value5, value1) := by
  rw [input13482_def, output13482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13476]
  dsimp only
  rw [child13481]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13476_skip, output13481_skip]
  kernel_rfl

theorem node13483_cond_eq
    (child13475 : Flapjack.WordAlloc.removeDeadStructural input13475 value6741 value1 value2 = (output13475, value6742, value1))
    (child13482 : Flapjack.WordAlloc.removeDeadStructural input13482 value6742 value1 value2 = (output13482, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13483 value6741 value1 value2 = (output13483, value5, value1) := by
  rw [input13483_def, output13483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13475]
  dsimp only
  rw [child13482]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13475_skip, output13482_skip]
  kernel_rfl

theorem node13484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13484 value5 value1 value2 = (output13484, value6746, value1) := by
  rw [input13484_def, output13484_def]
  kernel_rfl

theorem node13485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13485 value6746 value1 value2 = (output13485, value6747, value1) := by
  rw [input13485_def, output13485_def]
  kernel_rfl

theorem node13486_cond_eq
    (child13484 : Flapjack.WordAlloc.removeDeadStructural input13484 value5 value1 value2 = (output13484, value6746, value1))
    (child13485 : Flapjack.WordAlloc.removeDeadStructural input13485 value6746 value1 value2 = (output13485, value6747, value1)) : Flapjack.WordAlloc.removeDeadStructural input13486 value5 value1 value2 = (output13486, value6747, value1) := by
  rw [input13486_def, output13486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13484]
  dsimp only
  rw [child13485]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13484_skip, output13485_skip]
  kernel_rfl

theorem node13487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13487 value6747 value1 value2 = (output13487, value6748, value1) := by
  rw [input13487_def, output13487_def]
  kernel_rfl

theorem node13488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13488 value6748 value1 value2 = (output13488, value6748, value1) := by
  rw [input13488_def, output13488_def]
  kernel_rfl

theorem node13489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13489 value6748 value1 value2 = (output13489, value6749, value1) := by
  rw [input13489_def, output13489_def]
  kernel_rfl

theorem node13490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13490 value6749 value1 value2 = (output13490, value6750, value1) := by
  rw [input13490_def, output13490_def]
  kernel_rfl

theorem node13491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13491 value6750 value1 value2 = (output13491, value6751, value1) := by
  rw [input13491_def, output13491_def]
  kernel_rfl

theorem node13492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13492 value6751 value1 value2 = (output13492, value6752, value1) := by
  rw [input13492_def, output13492_def]
  kernel_rfl

theorem node13493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13493 value6752 value1 value2 = (output13493, value5, value1) := by
  rw [input13493_def, output13493_def]
  kernel_rfl

theorem node13494_cond_eq
    (child13492 : Flapjack.WordAlloc.removeDeadStructural input13492 value6751 value1 value2 = (output13492, value6752, value1))
    (child13493 : Flapjack.WordAlloc.removeDeadStructural input13493 value6752 value1 value2 = (output13493, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13494 value6751 value1 value2 = (output13494, value5, value1) := by
  rw [input13494_def, output13494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13492]
  dsimp only
  rw [child13493]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13492_skip, output13493_skip]
  kernel_rfl

theorem node13495_cond_eq
    (child13491 : Flapjack.WordAlloc.removeDeadStructural input13491 value6750 value1 value2 = (output13491, value6751, value1))
    (child13494 : Flapjack.WordAlloc.removeDeadStructural input13494 value6751 value1 value2 = (output13494, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13495 value6750 value1 value2 = (output13495, value5, value1) := by
  rw [input13495_def, output13495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13491]
  dsimp only
  rw [child13494]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13491_skip, output13494_skip]
  kernel_rfl

theorem node13496_cond_eq
    (child13490 : Flapjack.WordAlloc.removeDeadStructural input13490 value6749 value1 value2 = (output13490, value6750, value1))
    (child13495 : Flapjack.WordAlloc.removeDeadStructural input13495 value6750 value1 value2 = (output13495, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13496 value6749 value1 value2 = (output13496, value5, value1) := by
  rw [input13496_def, output13496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13490]
  dsimp only
  rw [child13495]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13490_skip, output13495_skip]
  kernel_rfl

theorem node13497_cond_eq
    (child13489 : Flapjack.WordAlloc.removeDeadStructural input13489 value6748 value1 value2 = (output13489, value6749, value1))
    (child13496 : Flapjack.WordAlloc.removeDeadStructural input13496 value6749 value1 value2 = (output13496, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13497 value6748 value1 value2 = (output13497, value5, value1) := by
  rw [input13497_def, output13497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13489]
  dsimp only
  rw [child13496]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13489_skip, output13496_skip]
  kernel_rfl

theorem node13498_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13498 value5 value1 value2 = (output13498, value6753, value1) := by
  rw [input13498_def, output13498_def]
  kernel_rfl

theorem node13499_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13499 value6753 value1 value2 = (output13499, value6754, value1) := by
  rw [input13499_def, output13499_def]
  kernel_rfl

theorem node13500_cond_eq
    (child13498 : Flapjack.WordAlloc.removeDeadStructural input13498 value5 value1 value2 = (output13498, value6753, value1))
    (child13499 : Flapjack.WordAlloc.removeDeadStructural input13499 value6753 value1 value2 = (output13499, value6754, value1)) : Flapjack.WordAlloc.removeDeadStructural input13500 value5 value1 value2 = (output13500, value6754, value1) := by
  rw [input13500_def, output13500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13498]
  dsimp only
  rw [child13499]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13498_skip, output13499_skip]
  kernel_rfl

theorem node13501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13501 value6754 value1 value2 = (output13501, value6755, value1) := by
  rw [input13501_def, output13501_def]
  kernel_rfl

theorem node13502_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13502 value6755 value1 value2 = (output13502, value6755, value1) := by
  rw [input13502_def, output13502_def]
  kernel_rfl

theorem node13503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13503 value6755 value1 value2 = (output13503, value6756, value1) := by
  rw [input13503_def, output13503_def]
  kernel_rfl

theorem node13504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13504 value6756 value1 value2 = (output13504, value6757, value1) := by
  rw [input13504_def, output13504_def]
  kernel_rfl

theorem node13505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13505 value6757 value1 value2 = (output13505, value6758, value1) := by
  rw [input13505_def, output13505_def]
  kernel_rfl

theorem node13506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13506 value6758 value1 value2 = (output13506, value6759, value1) := by
  rw [input13506_def, output13506_def]
  kernel_rfl

theorem node13507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13507 value6759 value1 value2 = (output13507, value5, value1) := by
  rw [input13507_def, output13507_def]
  kernel_rfl

theorem node13508_cond_eq
    (child13506 : Flapjack.WordAlloc.removeDeadStructural input13506 value6758 value1 value2 = (output13506, value6759, value1))
    (child13507 : Flapjack.WordAlloc.removeDeadStructural input13507 value6759 value1 value2 = (output13507, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13508 value6758 value1 value2 = (output13508, value5, value1) := by
  rw [input13508_def, output13508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13506]
  dsimp only
  rw [child13507]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13506_skip, output13507_skip]
  kernel_rfl

theorem node13509_cond_eq
    (child13505 : Flapjack.WordAlloc.removeDeadStructural input13505 value6757 value1 value2 = (output13505, value6758, value1))
    (child13508 : Flapjack.WordAlloc.removeDeadStructural input13508 value6758 value1 value2 = (output13508, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13509 value6757 value1 value2 = (output13509, value5, value1) := by
  rw [input13509_def, output13509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13505]
  dsimp only
  rw [child13508]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13505_skip, output13508_skip]
  kernel_rfl

theorem node13510_cond_eq
    (child13504 : Flapjack.WordAlloc.removeDeadStructural input13504 value6756 value1 value2 = (output13504, value6757, value1))
    (child13509 : Flapjack.WordAlloc.removeDeadStructural input13509 value6757 value1 value2 = (output13509, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13510 value6756 value1 value2 = (output13510, value5, value1) := by
  rw [input13510_def, output13510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13504]
  dsimp only
  rw [child13509]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13504_skip, output13509_skip]
  kernel_rfl

theorem node13511_cond_eq
    (child13503 : Flapjack.WordAlloc.removeDeadStructural input13503 value6755 value1 value2 = (output13503, value6756, value1))
    (child13510 : Flapjack.WordAlloc.removeDeadStructural input13510 value6756 value1 value2 = (output13510, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13511 value6755 value1 value2 = (output13511, value5, value1) := by
  rw [input13511_def, output13511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13503]
  dsimp only
  rw [child13510]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13503_skip, output13510_skip]
  kernel_rfl

theorem node13512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13512 value5 value1 value2 = (output13512, value6760, value1) := by
  rw [input13512_def, output13512_def]
  kernel_rfl

theorem node13513_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13513 value6760 value1 value2 = (output13513, value6761, value1) := by
  rw [input13513_def, output13513_def]
  kernel_rfl

theorem node13514_cond_eq
    (child13512 : Flapjack.WordAlloc.removeDeadStructural input13512 value5 value1 value2 = (output13512, value6760, value1))
    (child13513 : Flapjack.WordAlloc.removeDeadStructural input13513 value6760 value1 value2 = (output13513, value6761, value1)) : Flapjack.WordAlloc.removeDeadStructural input13514 value5 value1 value2 = (output13514, value6761, value1) := by
  rw [input13514_def, output13514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13512]
  dsimp only
  rw [child13513]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13512_skip, output13513_skip]
  kernel_rfl

theorem node13515_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13515 value6761 value1 value2 = (output13515, value6762, value1) := by
  rw [input13515_def, output13515_def]
  kernel_rfl

theorem node13516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13516 value6762 value1 value2 = (output13516, value6762, value1) := by
  rw [input13516_def, output13516_def]
  kernel_rfl

theorem node13517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13517 value6762 value1 value2 = (output13517, value6763, value1) := by
  rw [input13517_def, output13517_def]
  kernel_rfl

theorem node13518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13518 value6763 value1 value2 = (output13518, value6764, value1) := by
  rw [input13518_def, output13518_def]
  kernel_rfl

theorem node13519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13519 value6764 value1 value2 = (output13519, value6765, value1) := by
  rw [input13519_def, output13519_def]
  kernel_rfl

theorem node13520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13520 value6765 value1 value2 = (output13520, value6766, value1) := by
  rw [input13520_def, output13520_def]
  kernel_rfl

theorem node13521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13521 value6766 value1 value2 = (output13521, value5, value1) := by
  rw [input13521_def, output13521_def]
  kernel_rfl

theorem node13522_cond_eq
    (child13520 : Flapjack.WordAlloc.removeDeadStructural input13520 value6765 value1 value2 = (output13520, value6766, value1))
    (child13521 : Flapjack.WordAlloc.removeDeadStructural input13521 value6766 value1 value2 = (output13521, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13522 value6765 value1 value2 = (output13522, value5, value1) := by
  rw [input13522_def, output13522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13520]
  dsimp only
  rw [child13521]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13520_skip, output13521_skip]
  kernel_rfl

theorem node13523_cond_eq
    (child13519 : Flapjack.WordAlloc.removeDeadStructural input13519 value6764 value1 value2 = (output13519, value6765, value1))
    (child13522 : Flapjack.WordAlloc.removeDeadStructural input13522 value6765 value1 value2 = (output13522, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13523 value6764 value1 value2 = (output13523, value5, value1) := by
  rw [input13523_def, output13523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13519]
  dsimp only
  rw [child13522]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13519_skip, output13522_skip]
  kernel_rfl

theorem node13524_cond_eq
    (child13518 : Flapjack.WordAlloc.removeDeadStructural input13518 value6763 value1 value2 = (output13518, value6764, value1))
    (child13523 : Flapjack.WordAlloc.removeDeadStructural input13523 value6764 value1 value2 = (output13523, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13524 value6763 value1 value2 = (output13524, value5, value1) := by
  rw [input13524_def, output13524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13518]
  dsimp only
  rw [child13523]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13518_skip, output13523_skip]
  kernel_rfl

theorem node13525_cond_eq
    (child13517 : Flapjack.WordAlloc.removeDeadStructural input13517 value6762 value1 value2 = (output13517, value6763, value1))
    (child13524 : Flapjack.WordAlloc.removeDeadStructural input13524 value6763 value1 value2 = (output13524, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13525 value6762 value1 value2 = (output13525, value5, value1) := by
  rw [input13525_def, output13525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13517]
  dsimp only
  rw [child13524]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13517_skip, output13524_skip]
  kernel_rfl

theorem node13526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13526 value5 value1 value2 = (output13526, value6767, value1) := by
  rw [input13526_def, output13526_def]
  kernel_rfl

theorem node13527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13527 value6767 value1 value2 = (output13527, value6768, value1) := by
  rw [input13527_def, output13527_def]
  kernel_rfl

theorem node13528_cond_eq
    (child13526 : Flapjack.WordAlloc.removeDeadStructural input13526 value5 value1 value2 = (output13526, value6767, value1))
    (child13527 : Flapjack.WordAlloc.removeDeadStructural input13527 value6767 value1 value2 = (output13527, value6768, value1)) : Flapjack.WordAlloc.removeDeadStructural input13528 value5 value1 value2 = (output13528, value6768, value1) := by
  rw [input13528_def, output13528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13526]
  dsimp only
  rw [child13527]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13526_skip, output13527_skip]
  kernel_rfl

theorem node13529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13529 value6768 value1 value2 = (output13529, value6769, value1) := by
  rw [input13529_def, output13529_def]
  kernel_rfl

theorem node13530_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13530 value6769 value1 value2 = (output13530, value6769, value1) := by
  rw [input13530_def, output13530_def]
  kernel_rfl

theorem node13531_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13531 value6769 value1 value2 = (output13531, value6770, value1) := by
  rw [input13531_def, output13531_def]
  kernel_rfl

theorem node13532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13532 value6770 value1 value2 = (output13532, value6771, value1) := by
  rw [input13532_def, output13532_def]
  kernel_rfl

theorem node13533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13533 value6771 value1 value2 = (output13533, value6772, value1) := by
  rw [input13533_def, output13533_def]
  kernel_rfl

theorem node13534_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13534 value6772 value1 value2 = (output13534, value6773, value1) := by
  rw [input13534_def, output13534_def]
  kernel_rfl

theorem node13535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13535 value6773 value1 value2 = (output13535, value5, value1) := by
  rw [input13535_def, output13535_def]
  kernel_rfl

theorem node13536_cond_eq
    (child13534 : Flapjack.WordAlloc.removeDeadStructural input13534 value6772 value1 value2 = (output13534, value6773, value1))
    (child13535 : Flapjack.WordAlloc.removeDeadStructural input13535 value6773 value1 value2 = (output13535, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13536 value6772 value1 value2 = (output13536, value5, value1) := by
  rw [input13536_def, output13536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13534]
  dsimp only
  rw [child13535]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13534_skip, output13535_skip]
  kernel_rfl

theorem node13537_cond_eq
    (child13533 : Flapjack.WordAlloc.removeDeadStructural input13533 value6771 value1 value2 = (output13533, value6772, value1))
    (child13536 : Flapjack.WordAlloc.removeDeadStructural input13536 value6772 value1 value2 = (output13536, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13537 value6771 value1 value2 = (output13537, value5, value1) := by
  rw [input13537_def, output13537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13533]
  dsimp only
  rw [child13536]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13533_skip, output13536_skip]
  kernel_rfl

theorem node13538_cond_eq
    (child13532 : Flapjack.WordAlloc.removeDeadStructural input13532 value6770 value1 value2 = (output13532, value6771, value1))
    (child13537 : Flapjack.WordAlloc.removeDeadStructural input13537 value6771 value1 value2 = (output13537, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13538 value6770 value1 value2 = (output13538, value5, value1) := by
  rw [input13538_def, output13538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13532]
  dsimp only
  rw [child13537]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13532_skip, output13537_skip]
  kernel_rfl

theorem node13539_cond_eq
    (child13531 : Flapjack.WordAlloc.removeDeadStructural input13531 value6769 value1 value2 = (output13531, value6770, value1))
    (child13538 : Flapjack.WordAlloc.removeDeadStructural input13538 value6770 value1 value2 = (output13538, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13539 value6769 value1 value2 = (output13539, value5, value1) := by
  rw [input13539_def, output13539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13531]
  dsimp only
  rw [child13538]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13531_skip, output13538_skip]
  kernel_rfl

theorem node13540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13540 value5 value1 value2 = (output13540, value6774, value1) := by
  rw [input13540_def, output13540_def]
  kernel_rfl

theorem node13541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13541 value6774 value1 value2 = (output13541, value6775, value1) := by
  rw [input13541_def, output13541_def]
  kernel_rfl

theorem node13542_cond_eq
    (child13540 : Flapjack.WordAlloc.removeDeadStructural input13540 value5 value1 value2 = (output13540, value6774, value1))
    (child13541 : Flapjack.WordAlloc.removeDeadStructural input13541 value6774 value1 value2 = (output13541, value6775, value1)) : Flapjack.WordAlloc.removeDeadStructural input13542 value5 value1 value2 = (output13542, value6775, value1) := by
  rw [input13542_def, output13542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13540]
  dsimp only
  rw [child13541]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13540_skip, output13541_skip]
  kernel_rfl

theorem node13543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13543 value6775 value1 value2 = (output13543, value6776, value1) := by
  rw [input13543_def, output13543_def]
  kernel_rfl

theorem node13544_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13544 value6776 value1 value2 = (output13544, value6776, value1) := by
  rw [input13544_def, output13544_def]
  kernel_rfl

theorem node13545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13545 value6776 value1 value2 = (output13545, value6777, value1) := by
  rw [input13545_def, output13545_def]
  kernel_rfl

theorem node13546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13546 value6777 value1 value2 = (output13546, value6778, value1) := by
  rw [input13546_def, output13546_def]
  kernel_rfl

theorem node13547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13547 value6778 value1 value2 = (output13547, value6779, value1) := by
  rw [input13547_def, output13547_def]
  kernel_rfl

theorem node13548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13548 value6779 value1 value2 = (output13548, value6780, value1) := by
  rw [input13548_def, output13548_def]
  kernel_rfl

theorem node13549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13549 value6780 value1 value2 = (output13549, value5, value1) := by
  rw [input13549_def, output13549_def]
  kernel_rfl

theorem node13550_cond_eq
    (child13548 : Flapjack.WordAlloc.removeDeadStructural input13548 value6779 value1 value2 = (output13548, value6780, value1))
    (child13549 : Flapjack.WordAlloc.removeDeadStructural input13549 value6780 value1 value2 = (output13549, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13550 value6779 value1 value2 = (output13550, value5, value1) := by
  rw [input13550_def, output13550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13548]
  dsimp only
  rw [child13549]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13548_skip, output13549_skip]
  kernel_rfl

theorem node13551_cond_eq
    (child13547 : Flapjack.WordAlloc.removeDeadStructural input13547 value6778 value1 value2 = (output13547, value6779, value1))
    (child13550 : Flapjack.WordAlloc.removeDeadStructural input13550 value6779 value1 value2 = (output13550, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13551 value6778 value1 value2 = (output13551, value5, value1) := by
  rw [input13551_def, output13551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13547]
  dsimp only
  rw [child13550]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13547_skip, output13550_skip]
  kernel_rfl

theorem node13552_cond_eq
    (child13546 : Flapjack.WordAlloc.removeDeadStructural input13546 value6777 value1 value2 = (output13546, value6778, value1))
    (child13551 : Flapjack.WordAlloc.removeDeadStructural input13551 value6778 value1 value2 = (output13551, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13552 value6777 value1 value2 = (output13552, value5, value1) := by
  rw [input13552_def, output13552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13546]
  dsimp only
  rw [child13551]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13546_skip, output13551_skip]
  kernel_rfl

theorem node13553_cond_eq
    (child13545 : Flapjack.WordAlloc.removeDeadStructural input13545 value6776 value1 value2 = (output13545, value6777, value1))
    (child13552 : Flapjack.WordAlloc.removeDeadStructural input13552 value6777 value1 value2 = (output13552, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13553 value6776 value1 value2 = (output13553, value5, value1) := by
  rw [input13553_def, output13553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13545]
  dsimp only
  rw [child13552]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13545_skip, output13552_skip]
  kernel_rfl

theorem node13554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13554 value5 value1 value2 = (output13554, value6781, value1) := by
  rw [input13554_def, output13554_def]
  kernel_rfl

theorem node13555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13555 value6781 value1 value2 = (output13555, value6782, value1) := by
  rw [input13555_def, output13555_def]
  kernel_rfl

theorem node13556_cond_eq
    (child13554 : Flapjack.WordAlloc.removeDeadStructural input13554 value5 value1 value2 = (output13554, value6781, value1))
    (child13555 : Flapjack.WordAlloc.removeDeadStructural input13555 value6781 value1 value2 = (output13555, value6782, value1)) : Flapjack.WordAlloc.removeDeadStructural input13556 value5 value1 value2 = (output13556, value6782, value1) := by
  rw [input13556_def, output13556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13554]
  dsimp only
  rw [child13555]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13554_skip, output13555_skip]
  kernel_rfl

theorem node13557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13557 value6782 value1 value2 = (output13557, value6783, value1) := by
  rw [input13557_def, output13557_def]
  kernel_rfl

theorem node13558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13558 value6783 value1 value2 = (output13558, value6783, value1) := by
  rw [input13558_def, output13558_def]
  kernel_rfl

theorem node13559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13559 value6783 value1 value2 = (output13559, value6784, value1) := by
  rw [input13559_def, output13559_def]
  kernel_rfl

theorem node13560_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13560 value6784 value1 value2 = (output13560, value6785, value1) := by
  rw [input13560_def, output13560_def]
  kernel_rfl

theorem node13561_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13561 value6785 value1 value2 = (output13561, value6786, value1) := by
  rw [input13561_def, output13561_def]
  kernel_rfl

theorem node13562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13562 value6786 value1 value2 = (output13562, value6787, value1) := by
  rw [input13562_def, output13562_def]
  kernel_rfl

theorem node13563_cond_eq : Flapjack.WordAlloc.removeDeadStructural input13563 value6787 value1 value2 = (output13563, value5, value1) := by
  rw [input13563_def, output13563_def]
  kernel_rfl

theorem node13564_cond_eq
    (child13562 : Flapjack.WordAlloc.removeDeadStructural input13562 value6786 value1 value2 = (output13562, value6787, value1))
    (child13563 : Flapjack.WordAlloc.removeDeadStructural input13563 value6787 value1 value2 = (output13563, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13564 value6786 value1 value2 = (output13564, value5, value1) := by
  rw [input13564_def, output13564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13562]
  dsimp only
  rw [child13563]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13562_skip, output13563_skip]
  kernel_rfl

theorem node13565_cond_eq
    (child13561 : Flapjack.WordAlloc.removeDeadStructural input13561 value6785 value1 value2 = (output13561, value6786, value1))
    (child13564 : Flapjack.WordAlloc.removeDeadStructural input13564 value6786 value1 value2 = (output13564, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13565 value6785 value1 value2 = (output13565, value5, value1) := by
  rw [input13565_def, output13565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13561]
  dsimp only
  rw [child13564]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13561_skip, output13564_skip]
  kernel_rfl

theorem node13566_cond_eq
    (child13560 : Flapjack.WordAlloc.removeDeadStructural input13560 value6784 value1 value2 = (output13560, value6785, value1))
    (child13565 : Flapjack.WordAlloc.removeDeadStructural input13565 value6785 value1 value2 = (output13565, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13566 value6784 value1 value2 = (output13566, value5, value1) := by
  rw [input13566_def, output13566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13560]
  dsimp only
  rw [child13565]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13560_skip, output13565_skip]
  kernel_rfl

theorem node13567_cond_eq
    (child13559 : Flapjack.WordAlloc.removeDeadStructural input13559 value6783 value1 value2 = (output13559, value6784, value1))
    (child13566 : Flapjack.WordAlloc.removeDeadStructural input13566 value6784 value1 value2 = (output13566, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input13567 value6783 value1 value2 = (output13567, value5, value1) := by
  rw [input13567_def, output13567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child13559]
  dsimp only
  rw [child13566]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output13559_skip, output13566_skip]
  kernel_rfl

#print axioms node13567_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
