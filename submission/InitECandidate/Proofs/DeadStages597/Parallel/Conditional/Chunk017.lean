import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk017
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node4352_cond_eq
    (child4338 : Flapjack.WordAlloc.removeDeadStructural input4338 value788 value1 value2 = (output4338, value786, value1))
    (child4351 : Flapjack.WordAlloc.removeDeadStructural input4351 value786 value1 value2 = (output4351, value790, value1)) : Flapjack.WordAlloc.removeDeadStructural input4352 value788 value1 value2 = (output4352, value790, value1) := by
  rw [input4352_def, output4352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4338]
  try dsimp only
  rw [child4351]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4338_skip, output4351_skip]
  kernel_rfl

theorem node4353_cond_eq
    (child4337 : Flapjack.WordAlloc.removeDeadStructural input4337 value786 value1 value2 = (output4337, value788, value1))
    (child4352 : Flapjack.WordAlloc.removeDeadStructural input4352 value788 value1 value2 = (output4352, value790, value1)) : Flapjack.WordAlloc.removeDeadStructural input4353 value786 value1 value2 = (output4353, value790, value1) := by
  rw [input4353_def, output4353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4337]
  try dsimp only
  rw [child4352]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4337_skip, output4352_skip]
  kernel_rfl

theorem node4354_cond_eq
    (child4334 : Flapjack.WordAlloc.removeDeadStructural input4334 value785 value1 value2 = (output4334, value786, value1))
    (child4353 : Flapjack.WordAlloc.removeDeadStructural input4353 value786 value1 value2 = (output4353, value790, value1)) : Flapjack.WordAlloc.removeDeadStructural input4354 value785 value1 value2 = (output4354, value790, value1) := by
  rw [input4354_def, output4354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4334]
  try dsimp only
  rw [child4353]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4334_skip, output4353_skip]
  kernel_rfl

theorem node4355_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4355 value785 value1 value2 = (output4355, value785, value1) := by
  rw [input4355_def, output4355_def]
  kernel_rfl

theorem node4356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4356 value785 value1 value2 = (output4356, value785, value1) := by
  rw [input4356_def, output4356_def]
  kernel_rfl

theorem node4357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4357 value785 value1 value2 = (output4357, value791, value1) := by
  rw [input4357_def, output4357_def]
  kernel_rfl

theorem node4358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4358 value791 value1 value2 = (output4358, value791, value1) := by
  rw [input4358_def, output4358_def]
  kernel_rfl

theorem node4359_cond_eq
    (child4357 : Flapjack.WordAlloc.removeDeadStructural input4357 value785 value1 value2 = (output4357, value791, value1))
    (child4358 : Flapjack.WordAlloc.removeDeadStructural input4358 value791 value1 value2 = (output4358, value791, value1)) : Flapjack.WordAlloc.removeDeadStructural input4359 value785 value1 value2 = (output4359, value791, value1) := by
  rw [input4359_def, output4359_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4357]
  try dsimp only
  rw [child4358]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4357_skip, output4358_skip]
  kernel_rfl

theorem node4360_cond_eq
    (child4356 : Flapjack.WordAlloc.removeDeadStructural input4356 value785 value1 value2 = (output4356, value785, value1))
    (child4359 : Flapjack.WordAlloc.removeDeadStructural input4359 value785 value1 value2 = (output4359, value791, value1)) : Flapjack.WordAlloc.removeDeadStructural input4360 value785 value1 value2 = (output4360, value791, value1) := by
  rw [input4360_def, output4360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4356]
  try dsimp only
  rw [child4359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4356_skip, output4359_skip]
  kernel_rfl

theorem node4361_cond_eq
    (child4355 : Flapjack.WordAlloc.removeDeadStructural input4355 value785 value1 value2 = (output4355, value785, value1))
    (child4360 : Flapjack.WordAlloc.removeDeadStructural input4360 value785 value1 value2 = (output4360, value791, value1)) : Flapjack.WordAlloc.removeDeadStructural input4361 value785 value1 value2 = (output4361, value791, value1) := by
  rw [input4361_def, output4361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4355]
  try dsimp only
  rw [child4360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4355_skip, output4360_skip]
  kernel_rfl

theorem node4362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4362 value791 value1 value2 = (output4362, value792, value1) := by
  rw [input4362_def, output4362_def]
  kernel_rfl

theorem node4363_cond_eq
    (child4361 : Flapjack.WordAlloc.removeDeadStructural input4361 value785 value1 value2 = (output4361, value791, value1))
    (child4362 : Flapjack.WordAlloc.removeDeadStructural input4362 value791 value1 value2 = (output4362, value792, value1)) : Flapjack.WordAlloc.removeDeadStructural input4363 value785 value1 value2 = (output4363, value792, value1) := by
  rw [input4363_def, output4363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4361]
  try dsimp only
  rw [child4362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4361_skip, output4362_skip]
  kernel_rfl

theorem node4364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4364 value792 value1 value2 = (output4364, value792, value1) := by
  rw [input4364_def, output4364_def]
  kernel_rfl

theorem node4365_cond_eq
    (child4363 : Flapjack.WordAlloc.removeDeadStructural input4363 value785 value1 value2 = (output4363, value792, value1))
    (child4364 : Flapjack.WordAlloc.removeDeadStructural input4364 value792 value1 value2 = (output4364, value792, value1)) : Flapjack.WordAlloc.removeDeadStructural input4365 value785 value1 value2 = (output4365, value792, value1) := by
  rw [input4365_def, output4365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4363]
  try dsimp only
  rw [child4364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4363_skip, output4364_skip]
  kernel_rfl

theorem node4366_cond_eq
    (child4354 : Flapjack.WordAlloc.removeDeadStructural input4354 value785 value1 value2 = (output4354, value790, value1))
    (child4365 : Flapjack.WordAlloc.removeDeadStructural input4365 value785 value1 value2 = (output4365, value792, value1)) : Flapjack.WordAlloc.removeDeadStructural input4366 value785 value1 value2 = (output4366, value794, value1) := by
  rw [input4366_def, output4366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4354]
  try dsimp only
  rw [child4365]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4354_skip, output4365_skip]
  kernel_rfl

theorem node4367_cond_eq
    (child4325 : Flapjack.WordAlloc.removeDeadStructural input4325 value785 value1 value2 = (output4325, value785, value1))
    (child4366 : Flapjack.WordAlloc.removeDeadStructural input4366 value785 value1 value2 = (output4366, value794, value1)) : Flapjack.WordAlloc.removeDeadStructural input4367 value785 value1 value2 = (output4367, value794, value1) := by
  rw [input4367_def, output4367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4325]
  try dsimp only
  rw [child4366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4325_skip, output4366_skip]
  kernel_rfl

theorem node4368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4368 value794 value1 value2 = (output4368, value792, value1) := by
  rw [input4368_def, output4368_def]
  kernel_rfl

theorem node4369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4369 value792 value1 value2 = (output4369, value795, value1) := by
  rw [input4369_def, output4369_def]
  kernel_rfl

theorem node4370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4370 value795 value1 value2 = (output4370, value795, value1) := by
  rw [input4370_def, output4370_def]
  kernel_rfl

theorem node4371_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4371 value795 value1 value2 = (output4371, value795, value1) := by
  rw [input4371_def, output4371_def]
  kernel_rfl

theorem node4372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4372 value795 value1 value2 = (output4372, value795, value1) := by
  rw [input4372_def, output4372_def]
  kernel_rfl

theorem node4373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4373 value795 value1 value2 = (output4373, value795, value1) := by
  rw [input4373_def, output4373_def]
  kernel_rfl

theorem node4374_cond_eq
    (child4372 : Flapjack.WordAlloc.removeDeadStructural input4372 value795 value1 value2 = (output4372, value795, value1))
    (child4373 : Flapjack.WordAlloc.removeDeadStructural input4373 value795 value1 value2 = (output4373, value795, value1)) : Flapjack.WordAlloc.removeDeadStructural input4374 value795 value1 value2 = (output4374, value795, value1) := by
  rw [input4374_def, output4374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4372]
  try dsimp only
  rw [child4373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4372_skip, output4373_skip]
  kernel_rfl

theorem node4375_cond_eq
    (child4371 : Flapjack.WordAlloc.removeDeadStructural input4371 value795 value1 value2 = (output4371, value795, value1))
    (child4374 : Flapjack.WordAlloc.removeDeadStructural input4374 value795 value1 value2 = (output4374, value795, value1)) : Flapjack.WordAlloc.removeDeadStructural input4375 value795 value1 value2 = (output4375, value795, value1) := by
  rw [input4375_def, output4375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4371]
  try dsimp only
  rw [child4374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4371_skip, output4374_skip]
  kernel_rfl

theorem node4376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4376 value795 value1 value2 = (output4376, value795, value1) := by
  rw [input4376_def, output4376_def]
  kernel_rfl

theorem node4377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4377 value795 value1 value2 = (output4377, value795, value1) := by
  rw [input4377_def, output4377_def]
  kernel_rfl

theorem node4378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4378 value795 value1 value2 = (output4378, value790, value1) := by
  rw [input4378_def, output4378_def]
  kernel_rfl

theorem node4379_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4379 value790 value1 value2 = (output4379, value790, value1) := by
  rw [input4379_def, output4379_def]
  kernel_rfl

theorem node4380_cond_eq
    (child4378 : Flapjack.WordAlloc.removeDeadStructural input4378 value795 value1 value2 = (output4378, value790, value1))
    (child4379 : Flapjack.WordAlloc.removeDeadStructural input4379 value790 value1 value2 = (output4379, value790, value1)) : Flapjack.WordAlloc.removeDeadStructural input4380 value795 value1 value2 = (output4380, value790, value1) := by
  rw [input4380_def, output4380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4378]
  try dsimp only
  rw [child4379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4378_skip, output4379_skip]
  kernel_rfl

theorem node4381_cond_eq
    (child4377 : Flapjack.WordAlloc.removeDeadStructural input4377 value795 value1 value2 = (output4377, value795, value1))
    (child4380 : Flapjack.WordAlloc.removeDeadStructural input4380 value795 value1 value2 = (output4380, value790, value1)) : Flapjack.WordAlloc.removeDeadStructural input4381 value795 value1 value2 = (output4381, value790, value1) := by
  rw [input4381_def, output4381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4377]
  try dsimp only
  rw [child4380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4377_skip, output4380_skip]
  kernel_rfl

theorem node4382_cond_eq
    (child4376 : Flapjack.WordAlloc.removeDeadStructural input4376 value795 value1 value2 = (output4376, value795, value1))
    (child4381 : Flapjack.WordAlloc.removeDeadStructural input4381 value795 value1 value2 = (output4381, value790, value1)) : Flapjack.WordAlloc.removeDeadStructural input4382 value795 value1 value2 = (output4382, value790, value1) := by
  rw [input4382_def, output4382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4376]
  try dsimp only
  rw [child4381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4376_skip, output4381_skip]
  kernel_rfl

theorem node4383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4383 value790 value1 value2 = (output4383, value796, value1) := by
  rw [input4383_def, output4383_def]
  kernel_rfl

theorem node4384_cond_eq
    (child4382 : Flapjack.WordAlloc.removeDeadStructural input4382 value795 value1 value2 = (output4382, value790, value1))
    (child4383 : Flapjack.WordAlloc.removeDeadStructural input4383 value790 value1 value2 = (output4383, value796, value1)) : Flapjack.WordAlloc.removeDeadStructural input4384 value795 value1 value2 = (output4384, value796, value1) := by
  rw [input4384_def, output4384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4382]
  try dsimp only
  rw [child4383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4382_skip, output4383_skip]
  kernel_rfl

theorem node4385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4385 value796 value1 value2 = (output4385, value797, value1) := by
  rw [input4385_def, output4385_def]
  kernel_rfl

theorem node4386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4386 value797 value1 value2 = (output4386, value798, value1) := by
  rw [input4386_def, output4386_def]
  kernel_rfl

theorem node4387_cond_eq
    (child4385 : Flapjack.WordAlloc.removeDeadStructural input4385 value796 value1 value2 = (output4385, value797, value1))
    (child4386 : Flapjack.WordAlloc.removeDeadStructural input4386 value797 value1 value2 = (output4386, value798, value1)) : Flapjack.WordAlloc.removeDeadStructural input4387 value796 value1 value2 = (output4387, value798, value1) := by
  rw [input4387_def, output4387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4385]
  try dsimp only
  rw [child4386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4385_skip, output4386_skip]
  kernel_rfl

theorem node4388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4388 value798 value1 value2 = (output4388, value796, value1) := by
  rw [input4388_def, output4388_def]
  kernel_rfl

theorem node4389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4389 value796 value1 value2 = (output4389, value796, value1) := by
  rw [input4389_def, output4389_def]
  kernel_rfl

theorem node4390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4390 value796 value1 value2 = (output4390, value799, value1) := by
  rw [input4390_def, output4390_def]
  kernel_rfl

theorem node4391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4391 value799 value1 value2 = (output4391, value799, value1) := by
  rw [input4391_def, output4391_def]
  kernel_rfl

theorem node4392_cond_eq
    (child4390 : Flapjack.WordAlloc.removeDeadStructural input4390 value796 value1 value2 = (output4390, value799, value1))
    (child4391 : Flapjack.WordAlloc.removeDeadStructural input4391 value799 value1 value2 = (output4391, value799, value1)) : Flapjack.WordAlloc.removeDeadStructural input4392 value796 value1 value2 = (output4392, value799, value1) := by
  rw [input4392_def, output4392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4390]
  try dsimp only
  rw [child4391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4390_skip, output4391_skip]
  kernel_rfl

theorem node4393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4393 value799 value1 value2 = (output4393, value800, value1) := by
  rw [input4393_def, output4393_def]
  kernel_rfl

theorem node4394_cond_eq
    (child4392 : Flapjack.WordAlloc.removeDeadStructural input4392 value796 value1 value2 = (output4392, value799, value1))
    (child4393 : Flapjack.WordAlloc.removeDeadStructural input4393 value799 value1 value2 = (output4393, value800, value1)) : Flapjack.WordAlloc.removeDeadStructural input4394 value796 value1 value2 = (output4394, value800, value1) := by
  rw [input4394_def, output4394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4392]
  try dsimp only
  rw [child4393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4392_skip, output4393_skip]
  kernel_rfl

theorem node4395_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4395 value800 value1 value2 = (output4395, value800, value1) := by
  rw [input4395_def, output4395_def]
  kernel_rfl

theorem node4396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4396 value800 value1 value2 = (output4396, value800, value1) := by
  rw [input4396_def, output4396_def]
  kernel_rfl

theorem node4397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4397 value800 value1 value2 = (output4397, value800, value1) := by
  rw [input4397_def, output4397_def]
  kernel_rfl

theorem node4398_cond_eq
    (child4396 : Flapjack.WordAlloc.removeDeadStructural input4396 value800 value1 value2 = (output4396, value800, value1))
    (child4397 : Flapjack.WordAlloc.removeDeadStructural input4397 value800 value1 value2 = (output4397, value800, value1)) : Flapjack.WordAlloc.removeDeadStructural input4398 value800 value1 value2 = (output4398, value800, value1) := by
  rw [input4398_def, output4398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4396]
  try dsimp only
  rw [child4397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4396_skip, output4397_skip]
  kernel_rfl

theorem node4399_cond_eq
    (child4395 : Flapjack.WordAlloc.removeDeadStructural input4395 value800 value1 value2 = (output4395, value800, value1))
    (child4398 : Flapjack.WordAlloc.removeDeadStructural input4398 value800 value1 value2 = (output4398, value800, value1)) : Flapjack.WordAlloc.removeDeadStructural input4399 value800 value1 value2 = (output4399, value800, value1) := by
  rw [input4399_def, output4399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4395]
  try dsimp only
  rw [child4398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4395_skip, output4398_skip]
  kernel_rfl

theorem node4400_cond_eq
    (child4394 : Flapjack.WordAlloc.removeDeadStructural input4394 value796 value1 value2 = (output4394, value800, value1))
    (child4399 : Flapjack.WordAlloc.removeDeadStructural input4399 value800 value1 value2 = (output4399, value800, value1)) : Flapjack.WordAlloc.removeDeadStructural input4400 value796 value1 value2 = (output4400, value800, value1) := by
  rw [input4400_def, output4400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4394]
  try dsimp only
  rw [child4399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4394_skip, output4399_skip]
  kernel_rfl

theorem node4401_cond_eq
    (child4389 : Flapjack.WordAlloc.removeDeadStructural input4389 value796 value1 value2 = (output4389, value796, value1))
    (child4400 : Flapjack.WordAlloc.removeDeadStructural input4400 value796 value1 value2 = (output4400, value800, value1)) : Flapjack.WordAlloc.removeDeadStructural input4401 value796 value1 value2 = (output4401, value800, value1) := by
  rw [input4401_def, output4401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4389]
  try dsimp only
  rw [child4400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4389_skip, output4400_skip]
  kernel_rfl

theorem node4402_cond_eq
    (child4388 : Flapjack.WordAlloc.removeDeadStructural input4388 value798 value1 value2 = (output4388, value796, value1))
    (child4401 : Flapjack.WordAlloc.removeDeadStructural input4401 value796 value1 value2 = (output4401, value800, value1)) : Flapjack.WordAlloc.removeDeadStructural input4402 value798 value1 value2 = (output4402, value800, value1) := by
  rw [input4402_def, output4402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4388]
  try dsimp only
  rw [child4401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4388_skip, output4401_skip]
  kernel_rfl

theorem node4403_cond_eq
    (child4387 : Flapjack.WordAlloc.removeDeadStructural input4387 value796 value1 value2 = (output4387, value798, value1))
    (child4402 : Flapjack.WordAlloc.removeDeadStructural input4402 value798 value1 value2 = (output4402, value800, value1)) : Flapjack.WordAlloc.removeDeadStructural input4403 value796 value1 value2 = (output4403, value800, value1) := by
  rw [input4403_def, output4403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4387]
  try dsimp only
  rw [child4402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4387_skip, output4402_skip]
  kernel_rfl

theorem node4404_cond_eq
    (child4384 : Flapjack.WordAlloc.removeDeadStructural input4384 value795 value1 value2 = (output4384, value796, value1))
    (child4403 : Flapjack.WordAlloc.removeDeadStructural input4403 value796 value1 value2 = (output4403, value800, value1)) : Flapjack.WordAlloc.removeDeadStructural input4404 value795 value1 value2 = (output4404, value800, value1) := by
  rw [input4404_def, output4404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4384]
  try dsimp only
  rw [child4403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4384_skip, output4403_skip]
  kernel_rfl

theorem node4405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4405 value795 value1 value2 = (output4405, value795, value1) := by
  rw [input4405_def, output4405_def]
  kernel_rfl

theorem node4406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4406 value795 value1 value2 = (output4406, value795, value1) := by
  rw [input4406_def, output4406_def]
  kernel_rfl

theorem node4407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4407 value795 value1 value2 = (output4407, value801, value1) := by
  rw [input4407_def, output4407_def]
  kernel_rfl

theorem node4408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4408 value801 value1 value2 = (output4408, value801, value1) := by
  rw [input4408_def, output4408_def]
  kernel_rfl

theorem node4409_cond_eq
    (child4407 : Flapjack.WordAlloc.removeDeadStructural input4407 value795 value1 value2 = (output4407, value801, value1))
    (child4408 : Flapjack.WordAlloc.removeDeadStructural input4408 value801 value1 value2 = (output4408, value801, value1)) : Flapjack.WordAlloc.removeDeadStructural input4409 value795 value1 value2 = (output4409, value801, value1) := by
  rw [input4409_def, output4409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4407]
  try dsimp only
  rw [child4408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4407_skip, output4408_skip]
  kernel_rfl

theorem node4410_cond_eq
    (child4406 : Flapjack.WordAlloc.removeDeadStructural input4406 value795 value1 value2 = (output4406, value795, value1))
    (child4409 : Flapjack.WordAlloc.removeDeadStructural input4409 value795 value1 value2 = (output4409, value801, value1)) : Flapjack.WordAlloc.removeDeadStructural input4410 value795 value1 value2 = (output4410, value801, value1) := by
  rw [input4410_def, output4410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4406]
  try dsimp only
  rw [child4409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4406_skip, output4409_skip]
  kernel_rfl

theorem node4411_cond_eq
    (child4405 : Flapjack.WordAlloc.removeDeadStructural input4405 value795 value1 value2 = (output4405, value795, value1))
    (child4410 : Flapjack.WordAlloc.removeDeadStructural input4410 value795 value1 value2 = (output4410, value801, value1)) : Flapjack.WordAlloc.removeDeadStructural input4411 value795 value1 value2 = (output4411, value801, value1) := by
  rw [input4411_def, output4411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4405]
  try dsimp only
  rw [child4410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4405_skip, output4410_skip]
  kernel_rfl

theorem node4412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4412 value801 value1 value2 = (output4412, value802, value1) := by
  rw [input4412_def, output4412_def]
  kernel_rfl

theorem node4413_cond_eq
    (child4411 : Flapjack.WordAlloc.removeDeadStructural input4411 value795 value1 value2 = (output4411, value801, value1))
    (child4412 : Flapjack.WordAlloc.removeDeadStructural input4412 value801 value1 value2 = (output4412, value802, value1)) : Flapjack.WordAlloc.removeDeadStructural input4413 value795 value1 value2 = (output4413, value802, value1) := by
  rw [input4413_def, output4413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4411]
  try dsimp only
  rw [child4412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4411_skip, output4412_skip]
  kernel_rfl

theorem node4414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4414 value802 value1 value2 = (output4414, value802, value1) := by
  rw [input4414_def, output4414_def]
  kernel_rfl

theorem node4415_cond_eq
    (child4413 : Flapjack.WordAlloc.removeDeadStructural input4413 value795 value1 value2 = (output4413, value802, value1))
    (child4414 : Flapjack.WordAlloc.removeDeadStructural input4414 value802 value1 value2 = (output4414, value802, value1)) : Flapjack.WordAlloc.removeDeadStructural input4415 value795 value1 value2 = (output4415, value802, value1) := by
  rw [input4415_def, output4415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4413]
  try dsimp only
  rw [child4414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4413_skip, output4414_skip]
  kernel_rfl

theorem node4416_cond_eq
    (child4404 : Flapjack.WordAlloc.removeDeadStructural input4404 value795 value1 value2 = (output4404, value800, value1))
    (child4415 : Flapjack.WordAlloc.removeDeadStructural input4415 value795 value1 value2 = (output4415, value802, value1)) : Flapjack.WordAlloc.removeDeadStructural input4416 value795 value1 value2 = (output4416, value804, value1) := by
  rw [input4416_def, output4416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4404]
  try dsimp only
  rw [child4415]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4404_skip, output4415_skip]
  kernel_rfl

theorem node4417_cond_eq
    (child4375 : Flapjack.WordAlloc.removeDeadStructural input4375 value795 value1 value2 = (output4375, value795, value1))
    (child4416 : Flapjack.WordAlloc.removeDeadStructural input4416 value795 value1 value2 = (output4416, value804, value1)) : Flapjack.WordAlloc.removeDeadStructural input4417 value795 value1 value2 = (output4417, value804, value1) := by
  rw [input4417_def, output4417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4375]
  try dsimp only
  rw [child4416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4375_skip, output4416_skip]
  kernel_rfl

theorem node4418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4418 value804 value1 value2 = (output4418, value802, value1) := by
  rw [input4418_def, output4418_def]
  kernel_rfl

theorem node4419_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4419 value802 value1 value2 = (output4419, value805, value1) := by
  rw [input4419_def, output4419_def]
  kernel_rfl

theorem node4420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4420 value805 value1 value2 = (output4420, value805, value1) := by
  rw [input4420_def, output4420_def]
  kernel_rfl

theorem node4421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4421 value805 value1 value2 = (output4421, value805, value1) := by
  rw [input4421_def, output4421_def]
  kernel_rfl

theorem node4422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4422 value805 value1 value2 = (output4422, value805, value1) := by
  rw [input4422_def, output4422_def]
  kernel_rfl

theorem node4423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4423 value805 value1 value2 = (output4423, value805, value1) := by
  rw [input4423_def, output4423_def]
  kernel_rfl

theorem node4424_cond_eq
    (child4422 : Flapjack.WordAlloc.removeDeadStructural input4422 value805 value1 value2 = (output4422, value805, value1))
    (child4423 : Flapjack.WordAlloc.removeDeadStructural input4423 value805 value1 value2 = (output4423, value805, value1)) : Flapjack.WordAlloc.removeDeadStructural input4424 value805 value1 value2 = (output4424, value805, value1) := by
  rw [input4424_def, output4424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4422]
  try dsimp only
  rw [child4423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4422_skip, output4423_skip]
  kernel_rfl

theorem node4425_cond_eq
    (child4421 : Flapjack.WordAlloc.removeDeadStructural input4421 value805 value1 value2 = (output4421, value805, value1))
    (child4424 : Flapjack.WordAlloc.removeDeadStructural input4424 value805 value1 value2 = (output4424, value805, value1)) : Flapjack.WordAlloc.removeDeadStructural input4425 value805 value1 value2 = (output4425, value805, value1) := by
  rw [input4425_def, output4425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4421]
  try dsimp only
  rw [child4424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4421_skip, output4424_skip]
  kernel_rfl

theorem node4426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4426 value805 value1 value2 = (output4426, value805, value1) := by
  rw [input4426_def, output4426_def]
  kernel_rfl

theorem node4427_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4427 value805 value1 value2 = (output4427, value805, value1) := by
  rw [input4427_def, output4427_def]
  kernel_rfl

theorem node4428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4428 value805 value1 value2 = (output4428, value800, value1) := by
  rw [input4428_def, output4428_def]
  kernel_rfl

theorem node4429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4429 value800 value1 value2 = (output4429, value800, value1) := by
  rw [input4429_def, output4429_def]
  kernel_rfl

theorem node4430_cond_eq
    (child4428 : Flapjack.WordAlloc.removeDeadStructural input4428 value805 value1 value2 = (output4428, value800, value1))
    (child4429 : Flapjack.WordAlloc.removeDeadStructural input4429 value800 value1 value2 = (output4429, value800, value1)) : Flapjack.WordAlloc.removeDeadStructural input4430 value805 value1 value2 = (output4430, value800, value1) := by
  rw [input4430_def, output4430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4428]
  try dsimp only
  rw [child4429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4428_skip, output4429_skip]
  kernel_rfl

theorem node4431_cond_eq
    (child4427 : Flapjack.WordAlloc.removeDeadStructural input4427 value805 value1 value2 = (output4427, value805, value1))
    (child4430 : Flapjack.WordAlloc.removeDeadStructural input4430 value805 value1 value2 = (output4430, value800, value1)) : Flapjack.WordAlloc.removeDeadStructural input4431 value805 value1 value2 = (output4431, value800, value1) := by
  rw [input4431_def, output4431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4427]
  try dsimp only
  rw [child4430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4427_skip, output4430_skip]
  kernel_rfl

theorem node4432_cond_eq
    (child4426 : Flapjack.WordAlloc.removeDeadStructural input4426 value805 value1 value2 = (output4426, value805, value1))
    (child4431 : Flapjack.WordAlloc.removeDeadStructural input4431 value805 value1 value2 = (output4431, value800, value1)) : Flapjack.WordAlloc.removeDeadStructural input4432 value805 value1 value2 = (output4432, value800, value1) := by
  rw [input4432_def, output4432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4426]
  try dsimp only
  rw [child4431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4426_skip, output4431_skip]
  kernel_rfl

theorem node4433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4433 value800 value1 value2 = (output4433, value806, value1) := by
  rw [input4433_def, output4433_def]
  kernel_rfl

theorem node4434_cond_eq
    (child4432 : Flapjack.WordAlloc.removeDeadStructural input4432 value805 value1 value2 = (output4432, value800, value1))
    (child4433 : Flapjack.WordAlloc.removeDeadStructural input4433 value800 value1 value2 = (output4433, value806, value1)) : Flapjack.WordAlloc.removeDeadStructural input4434 value805 value1 value2 = (output4434, value806, value1) := by
  rw [input4434_def, output4434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4432]
  try dsimp only
  rw [child4433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4432_skip, output4433_skip]
  kernel_rfl

theorem node4435_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4435 value806 value1 value2 = (output4435, value807, value1) := by
  rw [input4435_def, output4435_def]
  kernel_rfl

theorem node4436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4436 value807 value1 value2 = (output4436, value808, value1) := by
  rw [input4436_def, output4436_def]
  kernel_rfl

theorem node4437_cond_eq
    (child4435 : Flapjack.WordAlloc.removeDeadStructural input4435 value806 value1 value2 = (output4435, value807, value1))
    (child4436 : Flapjack.WordAlloc.removeDeadStructural input4436 value807 value1 value2 = (output4436, value808, value1)) : Flapjack.WordAlloc.removeDeadStructural input4437 value806 value1 value2 = (output4437, value808, value1) := by
  rw [input4437_def, output4437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4435]
  try dsimp only
  rw [child4436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4435_skip, output4436_skip]
  kernel_rfl

theorem node4438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4438 value808 value1 value2 = (output4438, value806, value1) := by
  rw [input4438_def, output4438_def]
  kernel_rfl

theorem node4439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4439 value806 value1 value2 = (output4439, value806, value1) := by
  rw [input4439_def, output4439_def]
  kernel_rfl

theorem node4440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4440 value806 value1 value2 = (output4440, value809, value1) := by
  rw [input4440_def, output4440_def]
  kernel_rfl

theorem node4441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4441 value809 value1 value2 = (output4441, value809, value1) := by
  rw [input4441_def, output4441_def]
  kernel_rfl

theorem node4442_cond_eq
    (child4440 : Flapjack.WordAlloc.removeDeadStructural input4440 value806 value1 value2 = (output4440, value809, value1))
    (child4441 : Flapjack.WordAlloc.removeDeadStructural input4441 value809 value1 value2 = (output4441, value809, value1)) : Flapjack.WordAlloc.removeDeadStructural input4442 value806 value1 value2 = (output4442, value809, value1) := by
  rw [input4442_def, output4442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4440]
  try dsimp only
  rw [child4441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4440_skip, output4441_skip]
  kernel_rfl

theorem node4443_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4443 value809 value1 value2 = (output4443, value810, value1) := by
  rw [input4443_def, output4443_def]
  kernel_rfl

theorem node4444_cond_eq
    (child4442 : Flapjack.WordAlloc.removeDeadStructural input4442 value806 value1 value2 = (output4442, value809, value1))
    (child4443 : Flapjack.WordAlloc.removeDeadStructural input4443 value809 value1 value2 = (output4443, value810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4444 value806 value1 value2 = (output4444, value810, value1) := by
  rw [input4444_def, output4444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4442]
  try dsimp only
  rw [child4443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4442_skip, output4443_skip]
  kernel_rfl

theorem node4445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4445 value810 value1 value2 = (output4445, value810, value1) := by
  rw [input4445_def, output4445_def]
  kernel_rfl

theorem node4446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4446 value810 value1 value2 = (output4446, value810, value1) := by
  rw [input4446_def, output4446_def]
  kernel_rfl

theorem node4447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4447 value810 value1 value2 = (output4447, value810, value1) := by
  rw [input4447_def, output4447_def]
  kernel_rfl

theorem node4448_cond_eq
    (child4446 : Flapjack.WordAlloc.removeDeadStructural input4446 value810 value1 value2 = (output4446, value810, value1))
    (child4447 : Flapjack.WordAlloc.removeDeadStructural input4447 value810 value1 value2 = (output4447, value810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4448 value810 value1 value2 = (output4448, value810, value1) := by
  rw [input4448_def, output4448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4446]
  try dsimp only
  rw [child4447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4446_skip, output4447_skip]
  kernel_rfl

theorem node4449_cond_eq
    (child4445 : Flapjack.WordAlloc.removeDeadStructural input4445 value810 value1 value2 = (output4445, value810, value1))
    (child4448 : Flapjack.WordAlloc.removeDeadStructural input4448 value810 value1 value2 = (output4448, value810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4449 value810 value1 value2 = (output4449, value810, value1) := by
  rw [input4449_def, output4449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4445]
  try dsimp only
  rw [child4448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4445_skip, output4448_skip]
  kernel_rfl

theorem node4450_cond_eq
    (child4444 : Flapjack.WordAlloc.removeDeadStructural input4444 value806 value1 value2 = (output4444, value810, value1))
    (child4449 : Flapjack.WordAlloc.removeDeadStructural input4449 value810 value1 value2 = (output4449, value810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4450 value806 value1 value2 = (output4450, value810, value1) := by
  rw [input4450_def, output4450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4444]
  try dsimp only
  rw [child4449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4444_skip, output4449_skip]
  kernel_rfl

theorem node4451_cond_eq
    (child4439 : Flapjack.WordAlloc.removeDeadStructural input4439 value806 value1 value2 = (output4439, value806, value1))
    (child4450 : Flapjack.WordAlloc.removeDeadStructural input4450 value806 value1 value2 = (output4450, value810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4451 value806 value1 value2 = (output4451, value810, value1) := by
  rw [input4451_def, output4451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4439]
  try dsimp only
  rw [child4450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4439_skip, output4450_skip]
  kernel_rfl

theorem node4452_cond_eq
    (child4438 : Flapjack.WordAlloc.removeDeadStructural input4438 value808 value1 value2 = (output4438, value806, value1))
    (child4451 : Flapjack.WordAlloc.removeDeadStructural input4451 value806 value1 value2 = (output4451, value810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4452 value808 value1 value2 = (output4452, value810, value1) := by
  rw [input4452_def, output4452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4438]
  try dsimp only
  rw [child4451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4438_skip, output4451_skip]
  kernel_rfl

theorem node4453_cond_eq
    (child4437 : Flapjack.WordAlloc.removeDeadStructural input4437 value806 value1 value2 = (output4437, value808, value1))
    (child4452 : Flapjack.WordAlloc.removeDeadStructural input4452 value808 value1 value2 = (output4452, value810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4453 value806 value1 value2 = (output4453, value810, value1) := by
  rw [input4453_def, output4453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4437]
  try dsimp only
  rw [child4452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4437_skip, output4452_skip]
  kernel_rfl

theorem node4454_cond_eq
    (child4434 : Flapjack.WordAlloc.removeDeadStructural input4434 value805 value1 value2 = (output4434, value806, value1))
    (child4453 : Flapjack.WordAlloc.removeDeadStructural input4453 value806 value1 value2 = (output4453, value810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4454 value805 value1 value2 = (output4454, value810, value1) := by
  rw [input4454_def, output4454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4434]
  try dsimp only
  rw [child4453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4434_skip, output4453_skip]
  kernel_rfl

theorem node4455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4455 value805 value1 value2 = (output4455, value805, value1) := by
  rw [input4455_def, output4455_def]
  kernel_rfl

theorem node4456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4456 value805 value1 value2 = (output4456, value805, value1) := by
  rw [input4456_def, output4456_def]
  kernel_rfl

theorem node4457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4457 value805 value1 value2 = (output4457, value811, value1) := by
  rw [input4457_def, output4457_def]
  kernel_rfl

theorem node4458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4458 value811 value1 value2 = (output4458, value811, value1) := by
  rw [input4458_def, output4458_def]
  kernel_rfl

theorem node4459_cond_eq
    (child4457 : Flapjack.WordAlloc.removeDeadStructural input4457 value805 value1 value2 = (output4457, value811, value1))
    (child4458 : Flapjack.WordAlloc.removeDeadStructural input4458 value811 value1 value2 = (output4458, value811, value1)) : Flapjack.WordAlloc.removeDeadStructural input4459 value805 value1 value2 = (output4459, value811, value1) := by
  rw [input4459_def, output4459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4457]
  try dsimp only
  rw [child4458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4457_skip, output4458_skip]
  kernel_rfl

theorem node4460_cond_eq
    (child4456 : Flapjack.WordAlloc.removeDeadStructural input4456 value805 value1 value2 = (output4456, value805, value1))
    (child4459 : Flapjack.WordAlloc.removeDeadStructural input4459 value805 value1 value2 = (output4459, value811, value1)) : Flapjack.WordAlloc.removeDeadStructural input4460 value805 value1 value2 = (output4460, value811, value1) := by
  rw [input4460_def, output4460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4456]
  try dsimp only
  rw [child4459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4456_skip, output4459_skip]
  kernel_rfl

theorem node4461_cond_eq
    (child4455 : Flapjack.WordAlloc.removeDeadStructural input4455 value805 value1 value2 = (output4455, value805, value1))
    (child4460 : Flapjack.WordAlloc.removeDeadStructural input4460 value805 value1 value2 = (output4460, value811, value1)) : Flapjack.WordAlloc.removeDeadStructural input4461 value805 value1 value2 = (output4461, value811, value1) := by
  rw [input4461_def, output4461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4455]
  try dsimp only
  rw [child4460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4455_skip, output4460_skip]
  kernel_rfl

theorem node4462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4462 value811 value1 value2 = (output4462, value812, value1) := by
  rw [input4462_def, output4462_def]
  kernel_rfl

theorem node4463_cond_eq
    (child4461 : Flapjack.WordAlloc.removeDeadStructural input4461 value805 value1 value2 = (output4461, value811, value1))
    (child4462 : Flapjack.WordAlloc.removeDeadStructural input4462 value811 value1 value2 = (output4462, value812, value1)) : Flapjack.WordAlloc.removeDeadStructural input4463 value805 value1 value2 = (output4463, value812, value1) := by
  rw [input4463_def, output4463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4461]
  try dsimp only
  rw [child4462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4461_skip, output4462_skip]
  kernel_rfl

theorem node4464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4464 value812 value1 value2 = (output4464, value812, value1) := by
  rw [input4464_def, output4464_def]
  kernel_rfl

theorem node4465_cond_eq
    (child4463 : Flapjack.WordAlloc.removeDeadStructural input4463 value805 value1 value2 = (output4463, value812, value1))
    (child4464 : Flapjack.WordAlloc.removeDeadStructural input4464 value812 value1 value2 = (output4464, value812, value1)) : Flapjack.WordAlloc.removeDeadStructural input4465 value805 value1 value2 = (output4465, value812, value1) := by
  rw [input4465_def, output4465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4463]
  try dsimp only
  rw [child4464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4463_skip, output4464_skip]
  kernel_rfl

theorem node4466_cond_eq
    (child4454 : Flapjack.WordAlloc.removeDeadStructural input4454 value805 value1 value2 = (output4454, value810, value1))
    (child4465 : Flapjack.WordAlloc.removeDeadStructural input4465 value805 value1 value2 = (output4465, value812, value1)) : Flapjack.WordAlloc.removeDeadStructural input4466 value805 value1 value2 = (output4466, value814, value1) := by
  rw [input4466_def, output4466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4454]
  try dsimp only
  rw [child4465]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4454_skip, output4465_skip]
  kernel_rfl

theorem node4467_cond_eq
    (child4425 : Flapjack.WordAlloc.removeDeadStructural input4425 value805 value1 value2 = (output4425, value805, value1))
    (child4466 : Flapjack.WordAlloc.removeDeadStructural input4466 value805 value1 value2 = (output4466, value814, value1)) : Flapjack.WordAlloc.removeDeadStructural input4467 value805 value1 value2 = (output4467, value814, value1) := by
  rw [input4467_def, output4467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4425]
  try dsimp only
  rw [child4466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4425_skip, output4466_skip]
  kernel_rfl

theorem node4468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4468 value814 value1 value2 = (output4468, value812, value1) := by
  rw [input4468_def, output4468_def]
  kernel_rfl

theorem node4469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4469 value812 value1 value2 = (output4469, value815, value1) := by
  rw [input4469_def, output4469_def]
  kernel_rfl

theorem node4470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4470 value815 value1 value2 = (output4470, value815, value1) := by
  rw [input4470_def, output4470_def]
  kernel_rfl

theorem node4471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4471 value815 value1 value2 = (output4471, value815, value1) := by
  rw [input4471_def, output4471_def]
  kernel_rfl

theorem node4472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4472 value815 value1 value2 = (output4472, value815, value1) := by
  rw [input4472_def, output4472_def]
  kernel_rfl

theorem node4473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4473 value815 value1 value2 = (output4473, value815, value1) := by
  rw [input4473_def, output4473_def]
  kernel_rfl

theorem node4474_cond_eq
    (child4472 : Flapjack.WordAlloc.removeDeadStructural input4472 value815 value1 value2 = (output4472, value815, value1))
    (child4473 : Flapjack.WordAlloc.removeDeadStructural input4473 value815 value1 value2 = (output4473, value815, value1)) : Flapjack.WordAlloc.removeDeadStructural input4474 value815 value1 value2 = (output4474, value815, value1) := by
  rw [input4474_def, output4474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4472]
  try dsimp only
  rw [child4473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4472_skip, output4473_skip]
  kernel_rfl

theorem node4475_cond_eq
    (child4471 : Flapjack.WordAlloc.removeDeadStructural input4471 value815 value1 value2 = (output4471, value815, value1))
    (child4474 : Flapjack.WordAlloc.removeDeadStructural input4474 value815 value1 value2 = (output4474, value815, value1)) : Flapjack.WordAlloc.removeDeadStructural input4475 value815 value1 value2 = (output4475, value815, value1) := by
  rw [input4475_def, output4475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4471]
  try dsimp only
  rw [child4474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4471_skip, output4474_skip]
  kernel_rfl

theorem node4476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4476 value815 value1 value2 = (output4476, value815, value1) := by
  rw [input4476_def, output4476_def]
  kernel_rfl

theorem node4477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4477 value815 value1 value2 = (output4477, value815, value1) := by
  rw [input4477_def, output4477_def]
  kernel_rfl

theorem node4478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4478 value815 value1 value2 = (output4478, value810, value1) := by
  rw [input4478_def, output4478_def]
  kernel_rfl

theorem node4479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4479 value810 value1 value2 = (output4479, value810, value1) := by
  rw [input4479_def, output4479_def]
  kernel_rfl

theorem node4480_cond_eq
    (child4478 : Flapjack.WordAlloc.removeDeadStructural input4478 value815 value1 value2 = (output4478, value810, value1))
    (child4479 : Flapjack.WordAlloc.removeDeadStructural input4479 value810 value1 value2 = (output4479, value810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4480 value815 value1 value2 = (output4480, value810, value1) := by
  rw [input4480_def, output4480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4478]
  try dsimp only
  rw [child4479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4478_skip, output4479_skip]
  kernel_rfl

theorem node4481_cond_eq
    (child4477 : Flapjack.WordAlloc.removeDeadStructural input4477 value815 value1 value2 = (output4477, value815, value1))
    (child4480 : Flapjack.WordAlloc.removeDeadStructural input4480 value815 value1 value2 = (output4480, value810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4481 value815 value1 value2 = (output4481, value810, value1) := by
  rw [input4481_def, output4481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4477]
  try dsimp only
  rw [child4480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4477_skip, output4480_skip]
  kernel_rfl

theorem node4482_cond_eq
    (child4476 : Flapjack.WordAlloc.removeDeadStructural input4476 value815 value1 value2 = (output4476, value815, value1))
    (child4481 : Flapjack.WordAlloc.removeDeadStructural input4481 value815 value1 value2 = (output4481, value810, value1)) : Flapjack.WordAlloc.removeDeadStructural input4482 value815 value1 value2 = (output4482, value810, value1) := by
  rw [input4482_def, output4482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4476]
  try dsimp only
  rw [child4481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4476_skip, output4481_skip]
  kernel_rfl

theorem node4483_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4483 value810 value1 value2 = (output4483, value816, value1) := by
  rw [input4483_def, output4483_def]
  kernel_rfl

theorem node4484_cond_eq
    (child4482 : Flapjack.WordAlloc.removeDeadStructural input4482 value815 value1 value2 = (output4482, value810, value1))
    (child4483 : Flapjack.WordAlloc.removeDeadStructural input4483 value810 value1 value2 = (output4483, value816, value1)) : Flapjack.WordAlloc.removeDeadStructural input4484 value815 value1 value2 = (output4484, value816, value1) := by
  rw [input4484_def, output4484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4482]
  try dsimp only
  rw [child4483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4482_skip, output4483_skip]
  kernel_rfl

theorem node4485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4485 value816 value1 value2 = (output4485, value817, value1) := by
  rw [input4485_def, output4485_def]
  kernel_rfl

theorem node4486_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4486 value817 value1 value2 = (output4486, value818, value1) := by
  rw [input4486_def, output4486_def]
  kernel_rfl

theorem node4487_cond_eq
    (child4485 : Flapjack.WordAlloc.removeDeadStructural input4485 value816 value1 value2 = (output4485, value817, value1))
    (child4486 : Flapjack.WordAlloc.removeDeadStructural input4486 value817 value1 value2 = (output4486, value818, value1)) : Flapjack.WordAlloc.removeDeadStructural input4487 value816 value1 value2 = (output4487, value818, value1) := by
  rw [input4487_def, output4487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4485]
  try dsimp only
  rw [child4486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4485_skip, output4486_skip]
  kernel_rfl

theorem node4488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4488 value818 value1 value2 = (output4488, value816, value1) := by
  rw [input4488_def, output4488_def]
  kernel_rfl

theorem node4489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4489 value816 value1 value2 = (output4489, value816, value1) := by
  rw [input4489_def, output4489_def]
  kernel_rfl

theorem node4490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4490 value816 value1 value2 = (output4490, value819, value1) := by
  rw [input4490_def, output4490_def]
  kernel_rfl

theorem node4491_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4491 value819 value1 value2 = (output4491, value819, value1) := by
  rw [input4491_def, output4491_def]
  kernel_rfl

theorem node4492_cond_eq
    (child4490 : Flapjack.WordAlloc.removeDeadStructural input4490 value816 value1 value2 = (output4490, value819, value1))
    (child4491 : Flapjack.WordAlloc.removeDeadStructural input4491 value819 value1 value2 = (output4491, value819, value1)) : Flapjack.WordAlloc.removeDeadStructural input4492 value816 value1 value2 = (output4492, value819, value1) := by
  rw [input4492_def, output4492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4490]
  try dsimp only
  rw [child4491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4490_skip, output4491_skip]
  kernel_rfl

theorem node4493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4493 value819 value1 value2 = (output4493, value820, value1) := by
  rw [input4493_def, output4493_def]
  kernel_rfl

theorem node4494_cond_eq
    (child4492 : Flapjack.WordAlloc.removeDeadStructural input4492 value816 value1 value2 = (output4492, value819, value1))
    (child4493 : Flapjack.WordAlloc.removeDeadStructural input4493 value819 value1 value2 = (output4493, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input4494 value816 value1 value2 = (output4494, value820, value1) := by
  rw [input4494_def, output4494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4492]
  try dsimp only
  rw [child4493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4492_skip, output4493_skip]
  kernel_rfl

theorem node4495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4495 value820 value1 value2 = (output4495, value820, value1) := by
  rw [input4495_def, output4495_def]
  kernel_rfl

theorem node4496_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4496 value820 value1 value2 = (output4496, value820, value1) := by
  rw [input4496_def, output4496_def]
  kernel_rfl

theorem node4497_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4497 value820 value1 value2 = (output4497, value820, value1) := by
  rw [input4497_def, output4497_def]
  kernel_rfl

theorem node4498_cond_eq
    (child4496 : Flapjack.WordAlloc.removeDeadStructural input4496 value820 value1 value2 = (output4496, value820, value1))
    (child4497 : Flapjack.WordAlloc.removeDeadStructural input4497 value820 value1 value2 = (output4497, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input4498 value820 value1 value2 = (output4498, value820, value1) := by
  rw [input4498_def, output4498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4496]
  try dsimp only
  rw [child4497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4496_skip, output4497_skip]
  kernel_rfl

theorem node4499_cond_eq
    (child4495 : Flapjack.WordAlloc.removeDeadStructural input4495 value820 value1 value2 = (output4495, value820, value1))
    (child4498 : Flapjack.WordAlloc.removeDeadStructural input4498 value820 value1 value2 = (output4498, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input4499 value820 value1 value2 = (output4499, value820, value1) := by
  rw [input4499_def, output4499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4495]
  try dsimp only
  rw [child4498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4495_skip, output4498_skip]
  kernel_rfl

theorem node4500_cond_eq
    (child4494 : Flapjack.WordAlloc.removeDeadStructural input4494 value816 value1 value2 = (output4494, value820, value1))
    (child4499 : Flapjack.WordAlloc.removeDeadStructural input4499 value820 value1 value2 = (output4499, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input4500 value816 value1 value2 = (output4500, value820, value1) := by
  rw [input4500_def, output4500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4494]
  try dsimp only
  rw [child4499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4494_skip, output4499_skip]
  kernel_rfl

theorem node4501_cond_eq
    (child4489 : Flapjack.WordAlloc.removeDeadStructural input4489 value816 value1 value2 = (output4489, value816, value1))
    (child4500 : Flapjack.WordAlloc.removeDeadStructural input4500 value816 value1 value2 = (output4500, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input4501 value816 value1 value2 = (output4501, value820, value1) := by
  rw [input4501_def, output4501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4489]
  try dsimp only
  rw [child4500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4489_skip, output4500_skip]
  kernel_rfl

theorem node4502_cond_eq
    (child4488 : Flapjack.WordAlloc.removeDeadStructural input4488 value818 value1 value2 = (output4488, value816, value1))
    (child4501 : Flapjack.WordAlloc.removeDeadStructural input4501 value816 value1 value2 = (output4501, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input4502 value818 value1 value2 = (output4502, value820, value1) := by
  rw [input4502_def, output4502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4488]
  try dsimp only
  rw [child4501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4488_skip, output4501_skip]
  kernel_rfl

theorem node4503_cond_eq
    (child4487 : Flapjack.WordAlloc.removeDeadStructural input4487 value816 value1 value2 = (output4487, value818, value1))
    (child4502 : Flapjack.WordAlloc.removeDeadStructural input4502 value818 value1 value2 = (output4502, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input4503 value816 value1 value2 = (output4503, value820, value1) := by
  rw [input4503_def, output4503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4487]
  try dsimp only
  rw [child4502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4487_skip, output4502_skip]
  kernel_rfl

theorem node4504_cond_eq
    (child4484 : Flapjack.WordAlloc.removeDeadStructural input4484 value815 value1 value2 = (output4484, value816, value1))
    (child4503 : Flapjack.WordAlloc.removeDeadStructural input4503 value816 value1 value2 = (output4503, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input4504 value815 value1 value2 = (output4504, value820, value1) := by
  rw [input4504_def, output4504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4484]
  try dsimp only
  rw [child4503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4484_skip, output4503_skip]
  kernel_rfl

theorem node4505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4505 value815 value1 value2 = (output4505, value815, value1) := by
  rw [input4505_def, output4505_def]
  kernel_rfl

theorem node4506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4506 value815 value1 value2 = (output4506, value815, value1) := by
  rw [input4506_def, output4506_def]
  kernel_rfl

theorem node4507_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4507 value815 value1 value2 = (output4507, value821, value1) := by
  rw [input4507_def, output4507_def]
  kernel_rfl

theorem node4508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4508 value821 value1 value2 = (output4508, value821, value1) := by
  rw [input4508_def, output4508_def]
  kernel_rfl

theorem node4509_cond_eq
    (child4507 : Flapjack.WordAlloc.removeDeadStructural input4507 value815 value1 value2 = (output4507, value821, value1))
    (child4508 : Flapjack.WordAlloc.removeDeadStructural input4508 value821 value1 value2 = (output4508, value821, value1)) : Flapjack.WordAlloc.removeDeadStructural input4509 value815 value1 value2 = (output4509, value821, value1) := by
  rw [input4509_def, output4509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4507]
  try dsimp only
  rw [child4508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4507_skip, output4508_skip]
  kernel_rfl

theorem node4510_cond_eq
    (child4506 : Flapjack.WordAlloc.removeDeadStructural input4506 value815 value1 value2 = (output4506, value815, value1))
    (child4509 : Flapjack.WordAlloc.removeDeadStructural input4509 value815 value1 value2 = (output4509, value821, value1)) : Flapjack.WordAlloc.removeDeadStructural input4510 value815 value1 value2 = (output4510, value821, value1) := by
  rw [input4510_def, output4510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4506]
  try dsimp only
  rw [child4509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4506_skip, output4509_skip]
  kernel_rfl

theorem node4511_cond_eq
    (child4505 : Flapjack.WordAlloc.removeDeadStructural input4505 value815 value1 value2 = (output4505, value815, value1))
    (child4510 : Flapjack.WordAlloc.removeDeadStructural input4510 value815 value1 value2 = (output4510, value821, value1)) : Flapjack.WordAlloc.removeDeadStructural input4511 value815 value1 value2 = (output4511, value821, value1) := by
  rw [input4511_def, output4511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4505]
  try dsimp only
  rw [child4510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4505_skip, output4510_skip]
  kernel_rfl

theorem node4512_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4512 value821 value1 value2 = (output4512, value822, value1) := by
  rw [input4512_def, output4512_def]
  kernel_rfl

theorem node4513_cond_eq
    (child4511 : Flapjack.WordAlloc.removeDeadStructural input4511 value815 value1 value2 = (output4511, value821, value1))
    (child4512 : Flapjack.WordAlloc.removeDeadStructural input4512 value821 value1 value2 = (output4512, value822, value1)) : Flapjack.WordAlloc.removeDeadStructural input4513 value815 value1 value2 = (output4513, value822, value1) := by
  rw [input4513_def, output4513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4511]
  try dsimp only
  rw [child4512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4511_skip, output4512_skip]
  kernel_rfl

theorem node4514_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4514 value822 value1 value2 = (output4514, value822, value1) := by
  rw [input4514_def, output4514_def]
  kernel_rfl

theorem node4515_cond_eq
    (child4513 : Flapjack.WordAlloc.removeDeadStructural input4513 value815 value1 value2 = (output4513, value822, value1))
    (child4514 : Flapjack.WordAlloc.removeDeadStructural input4514 value822 value1 value2 = (output4514, value822, value1)) : Flapjack.WordAlloc.removeDeadStructural input4515 value815 value1 value2 = (output4515, value822, value1) := by
  rw [input4515_def, output4515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4513]
  try dsimp only
  rw [child4514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4513_skip, output4514_skip]
  kernel_rfl

theorem node4516_cond_eq
    (child4504 : Flapjack.WordAlloc.removeDeadStructural input4504 value815 value1 value2 = (output4504, value820, value1))
    (child4515 : Flapjack.WordAlloc.removeDeadStructural input4515 value815 value1 value2 = (output4515, value822, value1)) : Flapjack.WordAlloc.removeDeadStructural input4516 value815 value1 value2 = (output4516, value824, value1) := by
  rw [input4516_def, output4516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4504]
  try dsimp only
  rw [child4515]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4504_skip, output4515_skip]
  kernel_rfl

theorem node4517_cond_eq
    (child4475 : Flapjack.WordAlloc.removeDeadStructural input4475 value815 value1 value2 = (output4475, value815, value1))
    (child4516 : Flapjack.WordAlloc.removeDeadStructural input4516 value815 value1 value2 = (output4516, value824, value1)) : Flapjack.WordAlloc.removeDeadStructural input4517 value815 value1 value2 = (output4517, value824, value1) := by
  rw [input4517_def, output4517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4475]
  try dsimp only
  rw [child4516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4475_skip, output4516_skip]
  kernel_rfl

theorem node4518_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4518 value824 value1 value2 = (output4518, value822, value1) := by
  rw [input4518_def, output4518_def]
  kernel_rfl

theorem node4519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4519 value822 value1 value2 = (output4519, value825, value1) := by
  rw [input4519_def, output4519_def]
  kernel_rfl

theorem node4520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4520 value825 value1 value2 = (output4520, value825, value1) := by
  rw [input4520_def, output4520_def]
  kernel_rfl

theorem node4521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4521 value825 value1 value2 = (output4521, value825, value1) := by
  rw [input4521_def, output4521_def]
  kernel_rfl

theorem node4522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4522 value825 value1 value2 = (output4522, value825, value1) := by
  rw [input4522_def, output4522_def]
  kernel_rfl

theorem node4523_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4523 value825 value1 value2 = (output4523, value825, value1) := by
  rw [input4523_def, output4523_def]
  kernel_rfl

theorem node4524_cond_eq
    (child4522 : Flapjack.WordAlloc.removeDeadStructural input4522 value825 value1 value2 = (output4522, value825, value1))
    (child4523 : Flapjack.WordAlloc.removeDeadStructural input4523 value825 value1 value2 = (output4523, value825, value1)) : Flapjack.WordAlloc.removeDeadStructural input4524 value825 value1 value2 = (output4524, value825, value1) := by
  rw [input4524_def, output4524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4522]
  try dsimp only
  rw [child4523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4522_skip, output4523_skip]
  kernel_rfl

theorem node4525_cond_eq
    (child4521 : Flapjack.WordAlloc.removeDeadStructural input4521 value825 value1 value2 = (output4521, value825, value1))
    (child4524 : Flapjack.WordAlloc.removeDeadStructural input4524 value825 value1 value2 = (output4524, value825, value1)) : Flapjack.WordAlloc.removeDeadStructural input4525 value825 value1 value2 = (output4525, value825, value1) := by
  rw [input4525_def, output4525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4521]
  try dsimp only
  rw [child4524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4521_skip, output4524_skip]
  kernel_rfl

theorem node4526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4526 value825 value1 value2 = (output4526, value825, value1) := by
  rw [input4526_def, output4526_def]
  kernel_rfl

theorem node4527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4527 value825 value1 value2 = (output4527, value825, value1) := by
  rw [input4527_def, output4527_def]
  kernel_rfl

theorem node4528_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4528 value825 value1 value2 = (output4528, value820, value1) := by
  rw [input4528_def, output4528_def]
  kernel_rfl

theorem node4529_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4529 value820 value1 value2 = (output4529, value820, value1) := by
  rw [input4529_def, output4529_def]
  kernel_rfl

theorem node4530_cond_eq
    (child4528 : Flapjack.WordAlloc.removeDeadStructural input4528 value825 value1 value2 = (output4528, value820, value1))
    (child4529 : Flapjack.WordAlloc.removeDeadStructural input4529 value820 value1 value2 = (output4529, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input4530 value825 value1 value2 = (output4530, value820, value1) := by
  rw [input4530_def, output4530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4528]
  try dsimp only
  rw [child4529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4528_skip, output4529_skip]
  kernel_rfl

theorem node4531_cond_eq
    (child4527 : Flapjack.WordAlloc.removeDeadStructural input4527 value825 value1 value2 = (output4527, value825, value1))
    (child4530 : Flapjack.WordAlloc.removeDeadStructural input4530 value825 value1 value2 = (output4530, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input4531 value825 value1 value2 = (output4531, value820, value1) := by
  rw [input4531_def, output4531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4527]
  try dsimp only
  rw [child4530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4527_skip, output4530_skip]
  kernel_rfl

theorem node4532_cond_eq
    (child4526 : Flapjack.WordAlloc.removeDeadStructural input4526 value825 value1 value2 = (output4526, value825, value1))
    (child4531 : Flapjack.WordAlloc.removeDeadStructural input4531 value825 value1 value2 = (output4531, value820, value1)) : Flapjack.WordAlloc.removeDeadStructural input4532 value825 value1 value2 = (output4532, value820, value1) := by
  rw [input4532_def, output4532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4526]
  try dsimp only
  rw [child4531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4526_skip, output4531_skip]
  kernel_rfl

theorem node4533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4533 value820 value1 value2 = (output4533, value826, value1) := by
  rw [input4533_def, output4533_def]
  kernel_rfl

theorem node4534_cond_eq
    (child4532 : Flapjack.WordAlloc.removeDeadStructural input4532 value825 value1 value2 = (output4532, value820, value1))
    (child4533 : Flapjack.WordAlloc.removeDeadStructural input4533 value820 value1 value2 = (output4533, value826, value1)) : Flapjack.WordAlloc.removeDeadStructural input4534 value825 value1 value2 = (output4534, value826, value1) := by
  rw [input4534_def, output4534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4532]
  try dsimp only
  rw [child4533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4532_skip, output4533_skip]
  kernel_rfl

theorem node4535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4535 value826 value1 value2 = (output4535, value827, value1) := by
  rw [input4535_def, output4535_def]
  kernel_rfl

theorem node4536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4536 value827 value1 value2 = (output4536, value828, value1) := by
  rw [input4536_def, output4536_def]
  kernel_rfl

theorem node4537_cond_eq
    (child4535 : Flapjack.WordAlloc.removeDeadStructural input4535 value826 value1 value2 = (output4535, value827, value1))
    (child4536 : Flapjack.WordAlloc.removeDeadStructural input4536 value827 value1 value2 = (output4536, value828, value1)) : Flapjack.WordAlloc.removeDeadStructural input4537 value826 value1 value2 = (output4537, value828, value1) := by
  rw [input4537_def, output4537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4535]
  try dsimp only
  rw [child4536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4535_skip, output4536_skip]
  kernel_rfl

theorem node4538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4538 value828 value1 value2 = (output4538, value826, value1) := by
  rw [input4538_def, output4538_def]
  kernel_rfl

theorem node4539_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4539 value826 value1 value2 = (output4539, value826, value1) := by
  rw [input4539_def, output4539_def]
  kernel_rfl

theorem node4540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4540 value826 value1 value2 = (output4540, value829, value1) := by
  rw [input4540_def, output4540_def]
  kernel_rfl

theorem node4541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4541 value829 value1 value2 = (output4541, value829, value1) := by
  rw [input4541_def, output4541_def]
  kernel_rfl

theorem node4542_cond_eq
    (child4540 : Flapjack.WordAlloc.removeDeadStructural input4540 value826 value1 value2 = (output4540, value829, value1))
    (child4541 : Flapjack.WordAlloc.removeDeadStructural input4541 value829 value1 value2 = (output4541, value829, value1)) : Flapjack.WordAlloc.removeDeadStructural input4542 value826 value1 value2 = (output4542, value829, value1) := by
  rw [input4542_def, output4542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4540]
  try dsimp only
  rw [child4541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4540_skip, output4541_skip]
  kernel_rfl

theorem node4543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4543 value829 value1 value2 = (output4543, value830, value1) := by
  rw [input4543_def, output4543_def]
  kernel_rfl

theorem node4544_cond_eq
    (child4542 : Flapjack.WordAlloc.removeDeadStructural input4542 value826 value1 value2 = (output4542, value829, value1))
    (child4543 : Flapjack.WordAlloc.removeDeadStructural input4543 value829 value1 value2 = (output4543, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input4544 value826 value1 value2 = (output4544, value830, value1) := by
  rw [input4544_def, output4544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4542]
  try dsimp only
  rw [child4543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4542_skip, output4543_skip]
  kernel_rfl

theorem node4545_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4545 value830 value1 value2 = (output4545, value830, value1) := by
  rw [input4545_def, output4545_def]
  kernel_rfl

theorem node4546_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4546 value830 value1 value2 = (output4546, value830, value1) := by
  rw [input4546_def, output4546_def]
  kernel_rfl

theorem node4547_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4547 value830 value1 value2 = (output4547, value830, value1) := by
  rw [input4547_def, output4547_def]
  kernel_rfl

theorem node4548_cond_eq
    (child4546 : Flapjack.WordAlloc.removeDeadStructural input4546 value830 value1 value2 = (output4546, value830, value1))
    (child4547 : Flapjack.WordAlloc.removeDeadStructural input4547 value830 value1 value2 = (output4547, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input4548 value830 value1 value2 = (output4548, value830, value1) := by
  rw [input4548_def, output4548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4546]
  try dsimp only
  rw [child4547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4546_skip, output4547_skip]
  kernel_rfl

theorem node4549_cond_eq
    (child4545 : Flapjack.WordAlloc.removeDeadStructural input4545 value830 value1 value2 = (output4545, value830, value1))
    (child4548 : Flapjack.WordAlloc.removeDeadStructural input4548 value830 value1 value2 = (output4548, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input4549 value830 value1 value2 = (output4549, value830, value1) := by
  rw [input4549_def, output4549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4545]
  try dsimp only
  rw [child4548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4545_skip, output4548_skip]
  kernel_rfl

theorem node4550_cond_eq
    (child4544 : Flapjack.WordAlloc.removeDeadStructural input4544 value826 value1 value2 = (output4544, value830, value1))
    (child4549 : Flapjack.WordAlloc.removeDeadStructural input4549 value830 value1 value2 = (output4549, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input4550 value826 value1 value2 = (output4550, value830, value1) := by
  rw [input4550_def, output4550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4544]
  try dsimp only
  rw [child4549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4544_skip, output4549_skip]
  kernel_rfl

theorem node4551_cond_eq
    (child4539 : Flapjack.WordAlloc.removeDeadStructural input4539 value826 value1 value2 = (output4539, value826, value1))
    (child4550 : Flapjack.WordAlloc.removeDeadStructural input4550 value826 value1 value2 = (output4550, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input4551 value826 value1 value2 = (output4551, value830, value1) := by
  rw [input4551_def, output4551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4539]
  try dsimp only
  rw [child4550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4539_skip, output4550_skip]
  kernel_rfl

theorem node4552_cond_eq
    (child4538 : Flapjack.WordAlloc.removeDeadStructural input4538 value828 value1 value2 = (output4538, value826, value1))
    (child4551 : Flapjack.WordAlloc.removeDeadStructural input4551 value826 value1 value2 = (output4551, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input4552 value828 value1 value2 = (output4552, value830, value1) := by
  rw [input4552_def, output4552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4538]
  try dsimp only
  rw [child4551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4538_skip, output4551_skip]
  kernel_rfl

theorem node4553_cond_eq
    (child4537 : Flapjack.WordAlloc.removeDeadStructural input4537 value826 value1 value2 = (output4537, value828, value1))
    (child4552 : Flapjack.WordAlloc.removeDeadStructural input4552 value828 value1 value2 = (output4552, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input4553 value826 value1 value2 = (output4553, value830, value1) := by
  rw [input4553_def, output4553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4537]
  try dsimp only
  rw [child4552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4537_skip, output4552_skip]
  kernel_rfl

theorem node4554_cond_eq
    (child4534 : Flapjack.WordAlloc.removeDeadStructural input4534 value825 value1 value2 = (output4534, value826, value1))
    (child4553 : Flapjack.WordAlloc.removeDeadStructural input4553 value826 value1 value2 = (output4553, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input4554 value825 value1 value2 = (output4554, value830, value1) := by
  rw [input4554_def, output4554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4534]
  try dsimp only
  rw [child4553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4534_skip, output4553_skip]
  kernel_rfl

theorem node4555_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4555 value825 value1 value2 = (output4555, value825, value1) := by
  rw [input4555_def, output4555_def]
  kernel_rfl

theorem node4556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4556 value825 value1 value2 = (output4556, value825, value1) := by
  rw [input4556_def, output4556_def]
  kernel_rfl

theorem node4557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4557 value825 value1 value2 = (output4557, value831, value1) := by
  rw [input4557_def, output4557_def]
  kernel_rfl

theorem node4558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4558 value831 value1 value2 = (output4558, value831, value1) := by
  rw [input4558_def, output4558_def]
  kernel_rfl

theorem node4559_cond_eq
    (child4557 : Flapjack.WordAlloc.removeDeadStructural input4557 value825 value1 value2 = (output4557, value831, value1))
    (child4558 : Flapjack.WordAlloc.removeDeadStructural input4558 value831 value1 value2 = (output4558, value831, value1)) : Flapjack.WordAlloc.removeDeadStructural input4559 value825 value1 value2 = (output4559, value831, value1) := by
  rw [input4559_def, output4559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4557]
  try dsimp only
  rw [child4558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4557_skip, output4558_skip]
  kernel_rfl

theorem node4560_cond_eq
    (child4556 : Flapjack.WordAlloc.removeDeadStructural input4556 value825 value1 value2 = (output4556, value825, value1))
    (child4559 : Flapjack.WordAlloc.removeDeadStructural input4559 value825 value1 value2 = (output4559, value831, value1)) : Flapjack.WordAlloc.removeDeadStructural input4560 value825 value1 value2 = (output4560, value831, value1) := by
  rw [input4560_def, output4560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4556]
  try dsimp only
  rw [child4559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4556_skip, output4559_skip]
  kernel_rfl

theorem node4561_cond_eq
    (child4555 : Flapjack.WordAlloc.removeDeadStructural input4555 value825 value1 value2 = (output4555, value825, value1))
    (child4560 : Flapjack.WordAlloc.removeDeadStructural input4560 value825 value1 value2 = (output4560, value831, value1)) : Flapjack.WordAlloc.removeDeadStructural input4561 value825 value1 value2 = (output4561, value831, value1) := by
  rw [input4561_def, output4561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4555]
  try dsimp only
  rw [child4560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4555_skip, output4560_skip]
  kernel_rfl

theorem node4562_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4562 value831 value1 value2 = (output4562, value832, value1) := by
  rw [input4562_def, output4562_def]
  kernel_rfl

theorem node4563_cond_eq
    (child4561 : Flapjack.WordAlloc.removeDeadStructural input4561 value825 value1 value2 = (output4561, value831, value1))
    (child4562 : Flapjack.WordAlloc.removeDeadStructural input4562 value831 value1 value2 = (output4562, value832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4563 value825 value1 value2 = (output4563, value832, value1) := by
  rw [input4563_def, output4563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4561]
  try dsimp only
  rw [child4562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4561_skip, output4562_skip]
  kernel_rfl

theorem node4564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4564 value832 value1 value2 = (output4564, value832, value1) := by
  rw [input4564_def, output4564_def]
  kernel_rfl

theorem node4565_cond_eq
    (child4563 : Flapjack.WordAlloc.removeDeadStructural input4563 value825 value1 value2 = (output4563, value832, value1))
    (child4564 : Flapjack.WordAlloc.removeDeadStructural input4564 value832 value1 value2 = (output4564, value832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4565 value825 value1 value2 = (output4565, value832, value1) := by
  rw [input4565_def, output4565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4563]
  try dsimp only
  rw [child4564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4563_skip, output4564_skip]
  kernel_rfl

theorem node4566_cond_eq
    (child4554 : Flapjack.WordAlloc.removeDeadStructural input4554 value825 value1 value2 = (output4554, value830, value1))
    (child4565 : Flapjack.WordAlloc.removeDeadStructural input4565 value825 value1 value2 = (output4565, value832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4566 value825 value1 value2 = (output4566, value834, value1) := by
  rw [input4566_def, output4566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4554]
  try dsimp only
  rw [child4565]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4554_skip, output4565_skip]
  kernel_rfl

theorem node4567_cond_eq
    (child4525 : Flapjack.WordAlloc.removeDeadStructural input4525 value825 value1 value2 = (output4525, value825, value1))
    (child4566 : Flapjack.WordAlloc.removeDeadStructural input4566 value825 value1 value2 = (output4566, value834, value1)) : Flapjack.WordAlloc.removeDeadStructural input4567 value825 value1 value2 = (output4567, value834, value1) := by
  rw [input4567_def, output4567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4525]
  try dsimp only
  rw [child4566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4525_skip, output4566_skip]
  kernel_rfl

theorem node4568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4568 value834 value1 value2 = (output4568, value832, value1) := by
  rw [input4568_def, output4568_def]
  kernel_rfl

theorem node4569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4569 value832 value1 value2 = (output4569, value835, value1) := by
  rw [input4569_def, output4569_def]
  kernel_rfl

theorem node4570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4570 value835 value1 value2 = (output4570, value835, value1) := by
  rw [input4570_def, output4570_def]
  kernel_rfl

theorem node4571_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4571 value835 value1 value2 = (output4571, value835, value1) := by
  rw [input4571_def, output4571_def]
  kernel_rfl

theorem node4572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4572 value835 value1 value2 = (output4572, value835, value1) := by
  rw [input4572_def, output4572_def]
  kernel_rfl

theorem node4573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4573 value835 value1 value2 = (output4573, value835, value1) := by
  rw [input4573_def, output4573_def]
  kernel_rfl

theorem node4574_cond_eq
    (child4572 : Flapjack.WordAlloc.removeDeadStructural input4572 value835 value1 value2 = (output4572, value835, value1))
    (child4573 : Flapjack.WordAlloc.removeDeadStructural input4573 value835 value1 value2 = (output4573, value835, value1)) : Flapjack.WordAlloc.removeDeadStructural input4574 value835 value1 value2 = (output4574, value835, value1) := by
  rw [input4574_def, output4574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4572]
  try dsimp only
  rw [child4573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4572_skip, output4573_skip]
  kernel_rfl

theorem node4575_cond_eq
    (child4571 : Flapjack.WordAlloc.removeDeadStructural input4571 value835 value1 value2 = (output4571, value835, value1))
    (child4574 : Flapjack.WordAlloc.removeDeadStructural input4574 value835 value1 value2 = (output4574, value835, value1)) : Flapjack.WordAlloc.removeDeadStructural input4575 value835 value1 value2 = (output4575, value835, value1) := by
  rw [input4575_def, output4575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4571]
  try dsimp only
  rw [child4574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4571_skip, output4574_skip]
  kernel_rfl

theorem node4576_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4576 value835 value1 value2 = (output4576, value835, value1) := by
  rw [input4576_def, output4576_def]
  kernel_rfl

theorem node4577_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4577 value835 value1 value2 = (output4577, value835, value1) := by
  rw [input4577_def, output4577_def]
  kernel_rfl

theorem node4578_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4578 value835 value1 value2 = (output4578, value830, value1) := by
  rw [input4578_def, output4578_def]
  kernel_rfl

theorem node4579_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4579 value830 value1 value2 = (output4579, value830, value1) := by
  rw [input4579_def, output4579_def]
  kernel_rfl

theorem node4580_cond_eq
    (child4578 : Flapjack.WordAlloc.removeDeadStructural input4578 value835 value1 value2 = (output4578, value830, value1))
    (child4579 : Flapjack.WordAlloc.removeDeadStructural input4579 value830 value1 value2 = (output4579, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input4580 value835 value1 value2 = (output4580, value830, value1) := by
  rw [input4580_def, output4580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4578]
  try dsimp only
  rw [child4579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4578_skip, output4579_skip]
  kernel_rfl

theorem node4581_cond_eq
    (child4577 : Flapjack.WordAlloc.removeDeadStructural input4577 value835 value1 value2 = (output4577, value835, value1))
    (child4580 : Flapjack.WordAlloc.removeDeadStructural input4580 value835 value1 value2 = (output4580, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input4581 value835 value1 value2 = (output4581, value830, value1) := by
  rw [input4581_def, output4581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4577]
  try dsimp only
  rw [child4580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4577_skip, output4580_skip]
  kernel_rfl

theorem node4582_cond_eq
    (child4576 : Flapjack.WordAlloc.removeDeadStructural input4576 value835 value1 value2 = (output4576, value835, value1))
    (child4581 : Flapjack.WordAlloc.removeDeadStructural input4581 value835 value1 value2 = (output4581, value830, value1)) : Flapjack.WordAlloc.removeDeadStructural input4582 value835 value1 value2 = (output4582, value830, value1) := by
  rw [input4582_def, output4582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4576]
  try dsimp only
  rw [child4581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4576_skip, output4581_skip]
  kernel_rfl

theorem node4583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4583 value830 value1 value2 = (output4583, value836, value1) := by
  rw [input4583_def, output4583_def]
  kernel_rfl

theorem node4584_cond_eq
    (child4582 : Flapjack.WordAlloc.removeDeadStructural input4582 value835 value1 value2 = (output4582, value830, value1))
    (child4583 : Flapjack.WordAlloc.removeDeadStructural input4583 value830 value1 value2 = (output4583, value836, value1)) : Flapjack.WordAlloc.removeDeadStructural input4584 value835 value1 value2 = (output4584, value836, value1) := by
  rw [input4584_def, output4584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4582]
  try dsimp only
  rw [child4583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4582_skip, output4583_skip]
  kernel_rfl

theorem node4585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4585 value836 value1 value2 = (output4585, value837, value1) := by
  rw [input4585_def, output4585_def]
  kernel_rfl

theorem node4586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4586 value837 value1 value2 = (output4586, value838, value1) := by
  rw [input4586_def, output4586_def]
  kernel_rfl

theorem node4587_cond_eq
    (child4585 : Flapjack.WordAlloc.removeDeadStructural input4585 value836 value1 value2 = (output4585, value837, value1))
    (child4586 : Flapjack.WordAlloc.removeDeadStructural input4586 value837 value1 value2 = (output4586, value838, value1)) : Flapjack.WordAlloc.removeDeadStructural input4587 value836 value1 value2 = (output4587, value838, value1) := by
  rw [input4587_def, output4587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4585]
  try dsimp only
  rw [child4586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4585_skip, output4586_skip]
  kernel_rfl

theorem node4588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4588 value838 value1 value2 = (output4588, value836, value1) := by
  rw [input4588_def, output4588_def]
  kernel_rfl

theorem node4589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4589 value836 value1 value2 = (output4589, value836, value1) := by
  rw [input4589_def, output4589_def]
  kernel_rfl

theorem node4590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4590 value836 value1 value2 = (output4590, value839, value1) := by
  rw [input4590_def, output4590_def]
  kernel_rfl

theorem node4591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4591 value839 value1 value2 = (output4591, value839, value1) := by
  rw [input4591_def, output4591_def]
  kernel_rfl

theorem node4592_cond_eq
    (child4590 : Flapjack.WordAlloc.removeDeadStructural input4590 value836 value1 value2 = (output4590, value839, value1))
    (child4591 : Flapjack.WordAlloc.removeDeadStructural input4591 value839 value1 value2 = (output4591, value839, value1)) : Flapjack.WordAlloc.removeDeadStructural input4592 value836 value1 value2 = (output4592, value839, value1) := by
  rw [input4592_def, output4592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4590]
  try dsimp only
  rw [child4591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4590_skip, output4591_skip]
  kernel_rfl

theorem node4593_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4593 value839 value1 value2 = (output4593, value840, value1) := by
  rw [input4593_def, output4593_def]
  kernel_rfl

theorem node4594_cond_eq
    (child4592 : Flapjack.WordAlloc.removeDeadStructural input4592 value836 value1 value2 = (output4592, value839, value1))
    (child4593 : Flapjack.WordAlloc.removeDeadStructural input4593 value839 value1 value2 = (output4593, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input4594 value836 value1 value2 = (output4594, value840, value1) := by
  rw [input4594_def, output4594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4592]
  try dsimp only
  rw [child4593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4592_skip, output4593_skip]
  kernel_rfl

theorem node4595_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4595 value840 value1 value2 = (output4595, value840, value1) := by
  rw [input4595_def, output4595_def]
  kernel_rfl

theorem node4596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4596 value840 value1 value2 = (output4596, value840, value1) := by
  rw [input4596_def, output4596_def]
  kernel_rfl

theorem node4597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4597 value840 value1 value2 = (output4597, value840, value1) := by
  rw [input4597_def, output4597_def]
  kernel_rfl

theorem node4598_cond_eq
    (child4596 : Flapjack.WordAlloc.removeDeadStructural input4596 value840 value1 value2 = (output4596, value840, value1))
    (child4597 : Flapjack.WordAlloc.removeDeadStructural input4597 value840 value1 value2 = (output4597, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input4598 value840 value1 value2 = (output4598, value840, value1) := by
  rw [input4598_def, output4598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4596]
  try dsimp only
  rw [child4597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4596_skip, output4597_skip]
  kernel_rfl

theorem node4599_cond_eq
    (child4595 : Flapjack.WordAlloc.removeDeadStructural input4595 value840 value1 value2 = (output4595, value840, value1))
    (child4598 : Flapjack.WordAlloc.removeDeadStructural input4598 value840 value1 value2 = (output4598, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input4599 value840 value1 value2 = (output4599, value840, value1) := by
  rw [input4599_def, output4599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4595]
  try dsimp only
  rw [child4598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4595_skip, output4598_skip]
  kernel_rfl

theorem node4600_cond_eq
    (child4594 : Flapjack.WordAlloc.removeDeadStructural input4594 value836 value1 value2 = (output4594, value840, value1))
    (child4599 : Flapjack.WordAlloc.removeDeadStructural input4599 value840 value1 value2 = (output4599, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input4600 value836 value1 value2 = (output4600, value840, value1) := by
  rw [input4600_def, output4600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4594]
  try dsimp only
  rw [child4599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4594_skip, output4599_skip]
  kernel_rfl

theorem node4601_cond_eq
    (child4589 : Flapjack.WordAlloc.removeDeadStructural input4589 value836 value1 value2 = (output4589, value836, value1))
    (child4600 : Flapjack.WordAlloc.removeDeadStructural input4600 value836 value1 value2 = (output4600, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input4601 value836 value1 value2 = (output4601, value840, value1) := by
  rw [input4601_def, output4601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4589]
  try dsimp only
  rw [child4600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4589_skip, output4600_skip]
  kernel_rfl

theorem node4602_cond_eq
    (child4588 : Flapjack.WordAlloc.removeDeadStructural input4588 value838 value1 value2 = (output4588, value836, value1))
    (child4601 : Flapjack.WordAlloc.removeDeadStructural input4601 value836 value1 value2 = (output4601, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input4602 value838 value1 value2 = (output4602, value840, value1) := by
  rw [input4602_def, output4602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4588]
  try dsimp only
  rw [child4601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4588_skip, output4601_skip]
  kernel_rfl

theorem node4603_cond_eq
    (child4587 : Flapjack.WordAlloc.removeDeadStructural input4587 value836 value1 value2 = (output4587, value838, value1))
    (child4602 : Flapjack.WordAlloc.removeDeadStructural input4602 value838 value1 value2 = (output4602, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input4603 value836 value1 value2 = (output4603, value840, value1) := by
  rw [input4603_def, output4603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4587]
  try dsimp only
  rw [child4602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4587_skip, output4602_skip]
  kernel_rfl

theorem node4604_cond_eq
    (child4584 : Flapjack.WordAlloc.removeDeadStructural input4584 value835 value1 value2 = (output4584, value836, value1))
    (child4603 : Flapjack.WordAlloc.removeDeadStructural input4603 value836 value1 value2 = (output4603, value840, value1)) : Flapjack.WordAlloc.removeDeadStructural input4604 value835 value1 value2 = (output4604, value840, value1) := by
  rw [input4604_def, output4604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4584]
  try dsimp only
  rw [child4603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4584_skip, output4603_skip]
  kernel_rfl

theorem node4605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4605 value835 value1 value2 = (output4605, value835, value1) := by
  rw [input4605_def, output4605_def]
  kernel_rfl

theorem node4606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4606 value835 value1 value2 = (output4606, value835, value1) := by
  rw [input4606_def, output4606_def]
  kernel_rfl

theorem node4607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4607 value835 value1 value2 = (output4607, value841, value1) := by
  rw [input4607_def, output4607_def]
  kernel_rfl

#print axioms node4607_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
