import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk017
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node4352_cond_eq
    (child4350 : Flapjack.WordAlloc.removeDeadStructural input4350 value2180 value1 value2 = (output4350, value2181, value1))
    (child4351 : Flapjack.WordAlloc.removeDeadStructural input4351 value2181 value1 value2 = (output4351, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4352 value2180 value1 value2 = (output4352, value5, value1) := by
  rw [input4352_def, output4352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4350]
  dsimp only
  rw [child4351]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4350_skip, output4351_skip]
  kernel_rfl

theorem node4353_cond_eq
    (child4349 : Flapjack.WordAlloc.removeDeadStructural input4349 value2179 value1 value2 = (output4349, value2180, value1))
    (child4352 : Flapjack.WordAlloc.removeDeadStructural input4352 value2180 value1 value2 = (output4352, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4353 value2179 value1 value2 = (output4353, value5, value1) := by
  rw [input4353_def, output4353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4349]
  dsimp only
  rw [child4352]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4349_skip, output4352_skip]
  kernel_rfl

theorem node4354_cond_eq
    (child4348 : Flapjack.WordAlloc.removeDeadStructural input4348 value2178 value1 value2 = (output4348, value2179, value1))
    (child4353 : Flapjack.WordAlloc.removeDeadStructural input4353 value2179 value1 value2 = (output4353, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4354 value2178 value1 value2 = (output4354, value5, value1) := by
  rw [input4354_def, output4354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4348]
  dsimp only
  rw [child4353]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4348_skip, output4353_skip]
  kernel_rfl

theorem node4355_cond_eq
    (child4347 : Flapjack.WordAlloc.removeDeadStructural input4347 value2176 value1 value2 = (output4347, value2178, value1))
    (child4354 : Flapjack.WordAlloc.removeDeadStructural input4354 value2178 value1 value2 = (output4354, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4355 value2176 value1 value2 = (output4355, value5, value1) := by
  rw [input4355_def, output4355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4347]
  dsimp only
  rw [child4354]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4347_skip, output4354_skip]
  kernel_rfl

theorem node4356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4356 value5 value1 value2 = (output4356, value2182, value1) := by
  rw [input4356_def, output4356_def]
  kernel_rfl

theorem node4357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4357 value2182 value1 value2 = (output4357, value2183, value1) := by
  rw [input4357_def, output4357_def]
  kernel_rfl

theorem node4358_cond_eq
    (child4356 : Flapjack.WordAlloc.removeDeadStructural input4356 value5 value1 value2 = (output4356, value2182, value1))
    (child4357 : Flapjack.WordAlloc.removeDeadStructural input4357 value2182 value1 value2 = (output4357, value2183, value1)) : Flapjack.WordAlloc.removeDeadStructural input4358 value5 value1 value2 = (output4358, value2183, value1) := by
  rw [input4358_def, output4358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4356]
  dsimp only
  rw [child4357]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4356_skip, output4357_skip]
  kernel_rfl

theorem node4359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4359 value2183 value1 value2 = (output4359, value2184, value1) := by
  rw [input4359_def, output4359_def]
  kernel_rfl

theorem node4360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4360 value2184 value1 value2 = (output4360, value2184, value1) := by
  rw [input4360_def, output4360_def]
  kernel_rfl

theorem node4361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4361 value2184 value1 value2 = (output4361, value2185, value1) := by
  rw [input4361_def, output4361_def]
  kernel_rfl

theorem node4362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4362 value2185 value1 value2 = (output4362, value2186, value1) := by
  rw [input4362_def, output4362_def]
  kernel_rfl

theorem node4363_cond_eq
    (child4361 : Flapjack.WordAlloc.removeDeadStructural input4361 value2184 value1 value2 = (output4361, value2185, value1))
    (child4362 : Flapjack.WordAlloc.removeDeadStructural input4362 value2185 value1 value2 = (output4362, value2186, value1)) : Flapjack.WordAlloc.removeDeadStructural input4363 value2184 value1 value2 = (output4363, value2186, value1) := by
  rw [input4363_def, output4363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4361]
  dsimp only
  rw [child4362]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4361_skip, output4362_skip]
  kernel_rfl

theorem node4364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4364 value2186 value1 value2 = (output4364, value2187, value1) := by
  rw [input4364_def, output4364_def]
  kernel_rfl

theorem node4365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4365 value2187 value1 value2 = (output4365, value2188, value1) := by
  rw [input4365_def, output4365_def]
  kernel_rfl

theorem node4366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4366 value2188 value1 value2 = (output4366, value2189, value1) := by
  rw [input4366_def, output4366_def]
  kernel_rfl

theorem node4367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4367 value2189 value1 value2 = (output4367, value5, value1) := by
  rw [input4367_def, output4367_def]
  kernel_rfl

theorem node4368_cond_eq
    (child4366 : Flapjack.WordAlloc.removeDeadStructural input4366 value2188 value1 value2 = (output4366, value2189, value1))
    (child4367 : Flapjack.WordAlloc.removeDeadStructural input4367 value2189 value1 value2 = (output4367, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4368 value2188 value1 value2 = (output4368, value5, value1) := by
  rw [input4368_def, output4368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4366]
  dsimp only
  rw [child4367]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4366_skip, output4367_skip]
  kernel_rfl

theorem node4369_cond_eq
    (child4365 : Flapjack.WordAlloc.removeDeadStructural input4365 value2187 value1 value2 = (output4365, value2188, value1))
    (child4368 : Flapjack.WordAlloc.removeDeadStructural input4368 value2188 value1 value2 = (output4368, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4369 value2187 value1 value2 = (output4369, value5, value1) := by
  rw [input4369_def, output4369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4365]
  dsimp only
  rw [child4368]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4365_skip, output4368_skip]
  kernel_rfl

theorem node4370_cond_eq
    (child4364 : Flapjack.WordAlloc.removeDeadStructural input4364 value2186 value1 value2 = (output4364, value2187, value1))
    (child4369 : Flapjack.WordAlloc.removeDeadStructural input4369 value2187 value1 value2 = (output4369, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4370 value2186 value1 value2 = (output4370, value5, value1) := by
  rw [input4370_def, output4370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4364]
  dsimp only
  rw [child4369]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4364_skip, output4369_skip]
  kernel_rfl

theorem node4371_cond_eq
    (child4363 : Flapjack.WordAlloc.removeDeadStructural input4363 value2184 value1 value2 = (output4363, value2186, value1))
    (child4370 : Flapjack.WordAlloc.removeDeadStructural input4370 value2186 value1 value2 = (output4370, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4371 value2184 value1 value2 = (output4371, value5, value1) := by
  rw [input4371_def, output4371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4363]
  dsimp only
  rw [child4370]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4363_skip, output4370_skip]
  kernel_rfl

theorem node4372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4372 value5 value1 value2 = (output4372, value2190, value1) := by
  rw [input4372_def, output4372_def]
  kernel_rfl

theorem node4373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4373 value2190 value1 value2 = (output4373, value2191, value1) := by
  rw [input4373_def, output4373_def]
  kernel_rfl

theorem node4374_cond_eq
    (child4372 : Flapjack.WordAlloc.removeDeadStructural input4372 value5 value1 value2 = (output4372, value2190, value1))
    (child4373 : Flapjack.WordAlloc.removeDeadStructural input4373 value2190 value1 value2 = (output4373, value2191, value1)) : Flapjack.WordAlloc.removeDeadStructural input4374 value5 value1 value2 = (output4374, value2191, value1) := by
  rw [input4374_def, output4374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4372]
  dsimp only
  rw [child4373]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4372_skip, output4373_skip]
  kernel_rfl

theorem node4375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4375 value2191 value1 value2 = (output4375, value2192, value1) := by
  rw [input4375_def, output4375_def]
  kernel_rfl

theorem node4376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4376 value2192 value1 value2 = (output4376, value2192, value1) := by
  rw [input4376_def, output4376_def]
  kernel_rfl

theorem node4377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4377 value2192 value1 value2 = (output4377, value2193, value1) := by
  rw [input4377_def, output4377_def]
  kernel_rfl

theorem node4378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4378 value2193 value1 value2 = (output4378, value2194, value1) := by
  rw [input4378_def, output4378_def]
  kernel_rfl

theorem node4379_cond_eq
    (child4377 : Flapjack.WordAlloc.removeDeadStructural input4377 value2192 value1 value2 = (output4377, value2193, value1))
    (child4378 : Flapjack.WordAlloc.removeDeadStructural input4378 value2193 value1 value2 = (output4378, value2194, value1)) : Flapjack.WordAlloc.removeDeadStructural input4379 value2192 value1 value2 = (output4379, value2194, value1) := by
  rw [input4379_def, output4379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4377]
  dsimp only
  rw [child4378]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4377_skip, output4378_skip]
  kernel_rfl

theorem node4380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4380 value2194 value1 value2 = (output4380, value2195, value1) := by
  rw [input4380_def, output4380_def]
  kernel_rfl

theorem node4381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4381 value2195 value1 value2 = (output4381, value2196, value1) := by
  rw [input4381_def, output4381_def]
  kernel_rfl

theorem node4382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4382 value2196 value1 value2 = (output4382, value2197, value1) := by
  rw [input4382_def, output4382_def]
  kernel_rfl

theorem node4383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4383 value2197 value1 value2 = (output4383, value5, value1) := by
  rw [input4383_def, output4383_def]
  kernel_rfl

theorem node4384_cond_eq
    (child4382 : Flapjack.WordAlloc.removeDeadStructural input4382 value2196 value1 value2 = (output4382, value2197, value1))
    (child4383 : Flapjack.WordAlloc.removeDeadStructural input4383 value2197 value1 value2 = (output4383, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4384 value2196 value1 value2 = (output4384, value5, value1) := by
  rw [input4384_def, output4384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4382]
  dsimp only
  rw [child4383]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4382_skip, output4383_skip]
  kernel_rfl

theorem node4385_cond_eq
    (child4381 : Flapjack.WordAlloc.removeDeadStructural input4381 value2195 value1 value2 = (output4381, value2196, value1))
    (child4384 : Flapjack.WordAlloc.removeDeadStructural input4384 value2196 value1 value2 = (output4384, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4385 value2195 value1 value2 = (output4385, value5, value1) := by
  rw [input4385_def, output4385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4381]
  dsimp only
  rw [child4384]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4381_skip, output4384_skip]
  kernel_rfl

theorem node4386_cond_eq
    (child4380 : Flapjack.WordAlloc.removeDeadStructural input4380 value2194 value1 value2 = (output4380, value2195, value1))
    (child4385 : Flapjack.WordAlloc.removeDeadStructural input4385 value2195 value1 value2 = (output4385, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4386 value2194 value1 value2 = (output4386, value5, value1) := by
  rw [input4386_def, output4386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4380]
  dsimp only
  rw [child4385]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4380_skip, output4385_skip]
  kernel_rfl

theorem node4387_cond_eq
    (child4379 : Flapjack.WordAlloc.removeDeadStructural input4379 value2192 value1 value2 = (output4379, value2194, value1))
    (child4386 : Flapjack.WordAlloc.removeDeadStructural input4386 value2194 value1 value2 = (output4386, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4387 value2192 value1 value2 = (output4387, value5, value1) := by
  rw [input4387_def, output4387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4379]
  dsimp only
  rw [child4386]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4379_skip, output4386_skip]
  kernel_rfl

theorem node4388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4388 value5 value1 value2 = (output4388, value2198, value1) := by
  rw [input4388_def, output4388_def]
  kernel_rfl

theorem node4389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4389 value2198 value1 value2 = (output4389, value2199, value1) := by
  rw [input4389_def, output4389_def]
  kernel_rfl

theorem node4390_cond_eq
    (child4388 : Flapjack.WordAlloc.removeDeadStructural input4388 value5 value1 value2 = (output4388, value2198, value1))
    (child4389 : Flapjack.WordAlloc.removeDeadStructural input4389 value2198 value1 value2 = (output4389, value2199, value1)) : Flapjack.WordAlloc.removeDeadStructural input4390 value5 value1 value2 = (output4390, value2199, value1) := by
  rw [input4390_def, output4390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4388]
  dsimp only
  rw [child4389]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4388_skip, output4389_skip]
  kernel_rfl

theorem node4391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4391 value2199 value1 value2 = (output4391, value2200, value1) := by
  rw [input4391_def, output4391_def]
  kernel_rfl

theorem node4392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4392 value2200 value1 value2 = (output4392, value2200, value1) := by
  rw [input4392_def, output4392_def]
  kernel_rfl

theorem node4393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4393 value2200 value1 value2 = (output4393, value2201, value1) := by
  rw [input4393_def, output4393_def]
  kernel_rfl

theorem node4394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4394 value2201 value1 value2 = (output4394, value2202, value1) := by
  rw [input4394_def, output4394_def]
  kernel_rfl

theorem node4395_cond_eq
    (child4393 : Flapjack.WordAlloc.removeDeadStructural input4393 value2200 value1 value2 = (output4393, value2201, value1))
    (child4394 : Flapjack.WordAlloc.removeDeadStructural input4394 value2201 value1 value2 = (output4394, value2202, value1)) : Flapjack.WordAlloc.removeDeadStructural input4395 value2200 value1 value2 = (output4395, value2202, value1) := by
  rw [input4395_def, output4395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4393]
  dsimp only
  rw [child4394]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4393_skip, output4394_skip]
  kernel_rfl

theorem node4396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4396 value2202 value1 value2 = (output4396, value2203, value1) := by
  rw [input4396_def, output4396_def]
  kernel_rfl

theorem node4397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4397 value2203 value1 value2 = (output4397, value2204, value1) := by
  rw [input4397_def, output4397_def]
  kernel_rfl

theorem node4398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4398 value2204 value1 value2 = (output4398, value2205, value1) := by
  rw [input4398_def, output4398_def]
  kernel_rfl

theorem node4399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4399 value2205 value1 value2 = (output4399, value5, value1) := by
  rw [input4399_def, output4399_def]
  kernel_rfl

theorem node4400_cond_eq
    (child4398 : Flapjack.WordAlloc.removeDeadStructural input4398 value2204 value1 value2 = (output4398, value2205, value1))
    (child4399 : Flapjack.WordAlloc.removeDeadStructural input4399 value2205 value1 value2 = (output4399, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4400 value2204 value1 value2 = (output4400, value5, value1) := by
  rw [input4400_def, output4400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4398]
  dsimp only
  rw [child4399]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4398_skip, output4399_skip]
  kernel_rfl

theorem node4401_cond_eq
    (child4397 : Flapjack.WordAlloc.removeDeadStructural input4397 value2203 value1 value2 = (output4397, value2204, value1))
    (child4400 : Flapjack.WordAlloc.removeDeadStructural input4400 value2204 value1 value2 = (output4400, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4401 value2203 value1 value2 = (output4401, value5, value1) := by
  rw [input4401_def, output4401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4397]
  dsimp only
  rw [child4400]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4397_skip, output4400_skip]
  kernel_rfl

theorem node4402_cond_eq
    (child4396 : Flapjack.WordAlloc.removeDeadStructural input4396 value2202 value1 value2 = (output4396, value2203, value1))
    (child4401 : Flapjack.WordAlloc.removeDeadStructural input4401 value2203 value1 value2 = (output4401, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4402 value2202 value1 value2 = (output4402, value5, value1) := by
  rw [input4402_def, output4402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4396]
  dsimp only
  rw [child4401]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4396_skip, output4401_skip]
  kernel_rfl

theorem node4403_cond_eq
    (child4395 : Flapjack.WordAlloc.removeDeadStructural input4395 value2200 value1 value2 = (output4395, value2202, value1))
    (child4402 : Flapjack.WordAlloc.removeDeadStructural input4402 value2202 value1 value2 = (output4402, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4403 value2200 value1 value2 = (output4403, value5, value1) := by
  rw [input4403_def, output4403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4395]
  dsimp only
  rw [child4402]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4395_skip, output4402_skip]
  kernel_rfl

theorem node4404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4404 value5 value1 value2 = (output4404, value2206, value1) := by
  rw [input4404_def, output4404_def]
  kernel_rfl

theorem node4405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4405 value2206 value1 value2 = (output4405, value2207, value1) := by
  rw [input4405_def, output4405_def]
  kernel_rfl

theorem node4406_cond_eq
    (child4404 : Flapjack.WordAlloc.removeDeadStructural input4404 value5 value1 value2 = (output4404, value2206, value1))
    (child4405 : Flapjack.WordAlloc.removeDeadStructural input4405 value2206 value1 value2 = (output4405, value2207, value1)) : Flapjack.WordAlloc.removeDeadStructural input4406 value5 value1 value2 = (output4406, value2207, value1) := by
  rw [input4406_def, output4406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4404]
  dsimp only
  rw [child4405]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4404_skip, output4405_skip]
  kernel_rfl

theorem node4407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4407 value2207 value1 value2 = (output4407, value2208, value1) := by
  rw [input4407_def, output4407_def]
  kernel_rfl

theorem node4408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4408 value2208 value1 value2 = (output4408, value2208, value1) := by
  rw [input4408_def, output4408_def]
  kernel_rfl

theorem node4409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4409 value2208 value1 value2 = (output4409, value2209, value1) := by
  rw [input4409_def, output4409_def]
  kernel_rfl

theorem node4410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4410 value2209 value1 value2 = (output4410, value2210, value1) := by
  rw [input4410_def, output4410_def]
  kernel_rfl

theorem node4411_cond_eq
    (child4409 : Flapjack.WordAlloc.removeDeadStructural input4409 value2208 value1 value2 = (output4409, value2209, value1))
    (child4410 : Flapjack.WordAlloc.removeDeadStructural input4410 value2209 value1 value2 = (output4410, value2210, value1)) : Flapjack.WordAlloc.removeDeadStructural input4411 value2208 value1 value2 = (output4411, value2210, value1) := by
  rw [input4411_def, output4411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4409]
  dsimp only
  rw [child4410]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4409_skip, output4410_skip]
  kernel_rfl

theorem node4412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4412 value2210 value1 value2 = (output4412, value2211, value1) := by
  rw [input4412_def, output4412_def]
  kernel_rfl

theorem node4413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4413 value2211 value1 value2 = (output4413, value2212, value1) := by
  rw [input4413_def, output4413_def]
  kernel_rfl

theorem node4414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4414 value2212 value1 value2 = (output4414, value2213, value1) := by
  rw [input4414_def, output4414_def]
  kernel_rfl

theorem node4415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4415 value2213 value1 value2 = (output4415, value5, value1) := by
  rw [input4415_def, output4415_def]
  kernel_rfl

theorem node4416_cond_eq
    (child4414 : Flapjack.WordAlloc.removeDeadStructural input4414 value2212 value1 value2 = (output4414, value2213, value1))
    (child4415 : Flapjack.WordAlloc.removeDeadStructural input4415 value2213 value1 value2 = (output4415, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4416 value2212 value1 value2 = (output4416, value5, value1) := by
  rw [input4416_def, output4416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4414]
  dsimp only
  rw [child4415]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4414_skip, output4415_skip]
  kernel_rfl

theorem node4417_cond_eq
    (child4413 : Flapjack.WordAlloc.removeDeadStructural input4413 value2211 value1 value2 = (output4413, value2212, value1))
    (child4416 : Flapjack.WordAlloc.removeDeadStructural input4416 value2212 value1 value2 = (output4416, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4417 value2211 value1 value2 = (output4417, value5, value1) := by
  rw [input4417_def, output4417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4413]
  dsimp only
  rw [child4416]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4413_skip, output4416_skip]
  kernel_rfl

theorem node4418_cond_eq
    (child4412 : Flapjack.WordAlloc.removeDeadStructural input4412 value2210 value1 value2 = (output4412, value2211, value1))
    (child4417 : Flapjack.WordAlloc.removeDeadStructural input4417 value2211 value1 value2 = (output4417, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4418 value2210 value1 value2 = (output4418, value5, value1) := by
  rw [input4418_def, output4418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4412]
  dsimp only
  rw [child4417]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4412_skip, output4417_skip]
  kernel_rfl

theorem node4419_cond_eq
    (child4411 : Flapjack.WordAlloc.removeDeadStructural input4411 value2208 value1 value2 = (output4411, value2210, value1))
    (child4418 : Flapjack.WordAlloc.removeDeadStructural input4418 value2210 value1 value2 = (output4418, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4419 value2208 value1 value2 = (output4419, value5, value1) := by
  rw [input4419_def, output4419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4411]
  dsimp only
  rw [child4418]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4411_skip, output4418_skip]
  kernel_rfl

theorem node4420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4420 value5 value1 value2 = (output4420, value2214, value1) := by
  rw [input4420_def, output4420_def]
  kernel_rfl

theorem node4421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4421 value2214 value1 value2 = (output4421, value2215, value1) := by
  rw [input4421_def, output4421_def]
  kernel_rfl

theorem node4422_cond_eq
    (child4420 : Flapjack.WordAlloc.removeDeadStructural input4420 value5 value1 value2 = (output4420, value2214, value1))
    (child4421 : Flapjack.WordAlloc.removeDeadStructural input4421 value2214 value1 value2 = (output4421, value2215, value1)) : Flapjack.WordAlloc.removeDeadStructural input4422 value5 value1 value2 = (output4422, value2215, value1) := by
  rw [input4422_def, output4422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4420]
  dsimp only
  rw [child4421]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4420_skip, output4421_skip]
  kernel_rfl

theorem node4423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4423 value2215 value1 value2 = (output4423, value2216, value1) := by
  rw [input4423_def, output4423_def]
  kernel_rfl

theorem node4424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4424 value2216 value1 value2 = (output4424, value2216, value1) := by
  rw [input4424_def, output4424_def]
  kernel_rfl

theorem node4425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4425 value2216 value1 value2 = (output4425, value2217, value1) := by
  rw [input4425_def, output4425_def]
  kernel_rfl

theorem node4426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4426 value2217 value1 value2 = (output4426, value2218, value1) := by
  rw [input4426_def, output4426_def]
  kernel_rfl

theorem node4427_cond_eq
    (child4425 : Flapjack.WordAlloc.removeDeadStructural input4425 value2216 value1 value2 = (output4425, value2217, value1))
    (child4426 : Flapjack.WordAlloc.removeDeadStructural input4426 value2217 value1 value2 = (output4426, value2218, value1)) : Flapjack.WordAlloc.removeDeadStructural input4427 value2216 value1 value2 = (output4427, value2218, value1) := by
  rw [input4427_def, output4427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4425]
  dsimp only
  rw [child4426]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4425_skip, output4426_skip]
  kernel_rfl

theorem node4428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4428 value2218 value1 value2 = (output4428, value2219, value1) := by
  rw [input4428_def, output4428_def]
  kernel_rfl

theorem node4429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4429 value2219 value1 value2 = (output4429, value2220, value1) := by
  rw [input4429_def, output4429_def]
  kernel_rfl

theorem node4430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4430 value2220 value1 value2 = (output4430, value2221, value1) := by
  rw [input4430_def, output4430_def]
  kernel_rfl

theorem node4431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4431 value2221 value1 value2 = (output4431, value5, value1) := by
  rw [input4431_def, output4431_def]
  kernel_rfl

theorem node4432_cond_eq
    (child4430 : Flapjack.WordAlloc.removeDeadStructural input4430 value2220 value1 value2 = (output4430, value2221, value1))
    (child4431 : Flapjack.WordAlloc.removeDeadStructural input4431 value2221 value1 value2 = (output4431, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4432 value2220 value1 value2 = (output4432, value5, value1) := by
  rw [input4432_def, output4432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4430]
  dsimp only
  rw [child4431]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4430_skip, output4431_skip]
  kernel_rfl

theorem node4433_cond_eq
    (child4429 : Flapjack.WordAlloc.removeDeadStructural input4429 value2219 value1 value2 = (output4429, value2220, value1))
    (child4432 : Flapjack.WordAlloc.removeDeadStructural input4432 value2220 value1 value2 = (output4432, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4433 value2219 value1 value2 = (output4433, value5, value1) := by
  rw [input4433_def, output4433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4429]
  dsimp only
  rw [child4432]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4429_skip, output4432_skip]
  kernel_rfl

theorem node4434_cond_eq
    (child4428 : Flapjack.WordAlloc.removeDeadStructural input4428 value2218 value1 value2 = (output4428, value2219, value1))
    (child4433 : Flapjack.WordAlloc.removeDeadStructural input4433 value2219 value1 value2 = (output4433, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4434 value2218 value1 value2 = (output4434, value5, value1) := by
  rw [input4434_def, output4434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4428]
  dsimp only
  rw [child4433]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4428_skip, output4433_skip]
  kernel_rfl

theorem node4435_cond_eq
    (child4427 : Flapjack.WordAlloc.removeDeadStructural input4427 value2216 value1 value2 = (output4427, value2218, value1))
    (child4434 : Flapjack.WordAlloc.removeDeadStructural input4434 value2218 value1 value2 = (output4434, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4435 value2216 value1 value2 = (output4435, value5, value1) := by
  rw [input4435_def, output4435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4427]
  dsimp only
  rw [child4434]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4427_skip, output4434_skip]
  kernel_rfl

theorem node4436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4436 value5 value1 value2 = (output4436, value2222, value1) := by
  rw [input4436_def, output4436_def]
  kernel_rfl

theorem node4437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4437 value2222 value1 value2 = (output4437, value2223, value1) := by
  rw [input4437_def, output4437_def]
  kernel_rfl

theorem node4438_cond_eq
    (child4436 : Flapjack.WordAlloc.removeDeadStructural input4436 value5 value1 value2 = (output4436, value2222, value1))
    (child4437 : Flapjack.WordAlloc.removeDeadStructural input4437 value2222 value1 value2 = (output4437, value2223, value1)) : Flapjack.WordAlloc.removeDeadStructural input4438 value5 value1 value2 = (output4438, value2223, value1) := by
  rw [input4438_def, output4438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4436]
  dsimp only
  rw [child4437]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4436_skip, output4437_skip]
  kernel_rfl

theorem node4439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4439 value2223 value1 value2 = (output4439, value2224, value1) := by
  rw [input4439_def, output4439_def]
  kernel_rfl

theorem node4440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4440 value2224 value1 value2 = (output4440, value2224, value1) := by
  rw [input4440_def, output4440_def]
  kernel_rfl

theorem node4441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4441 value2224 value1 value2 = (output4441, value2225, value1) := by
  rw [input4441_def, output4441_def]
  kernel_rfl

theorem node4442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4442 value2225 value1 value2 = (output4442, value2226, value1) := by
  rw [input4442_def, output4442_def]
  kernel_rfl

theorem node4443_cond_eq
    (child4441 : Flapjack.WordAlloc.removeDeadStructural input4441 value2224 value1 value2 = (output4441, value2225, value1))
    (child4442 : Flapjack.WordAlloc.removeDeadStructural input4442 value2225 value1 value2 = (output4442, value2226, value1)) : Flapjack.WordAlloc.removeDeadStructural input4443 value2224 value1 value2 = (output4443, value2226, value1) := by
  rw [input4443_def, output4443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4441]
  dsimp only
  rw [child4442]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4441_skip, output4442_skip]
  kernel_rfl

theorem node4444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4444 value2226 value1 value2 = (output4444, value2227, value1) := by
  rw [input4444_def, output4444_def]
  kernel_rfl

theorem node4445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4445 value2227 value1 value2 = (output4445, value2228, value1) := by
  rw [input4445_def, output4445_def]
  kernel_rfl

theorem node4446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4446 value2228 value1 value2 = (output4446, value2229, value1) := by
  rw [input4446_def, output4446_def]
  kernel_rfl

theorem node4447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4447 value2229 value1 value2 = (output4447, value5, value1) := by
  rw [input4447_def, output4447_def]
  kernel_rfl

theorem node4448_cond_eq
    (child4446 : Flapjack.WordAlloc.removeDeadStructural input4446 value2228 value1 value2 = (output4446, value2229, value1))
    (child4447 : Flapjack.WordAlloc.removeDeadStructural input4447 value2229 value1 value2 = (output4447, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4448 value2228 value1 value2 = (output4448, value5, value1) := by
  rw [input4448_def, output4448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4446]
  dsimp only
  rw [child4447]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4446_skip, output4447_skip]
  kernel_rfl

theorem node4449_cond_eq
    (child4445 : Flapjack.WordAlloc.removeDeadStructural input4445 value2227 value1 value2 = (output4445, value2228, value1))
    (child4448 : Flapjack.WordAlloc.removeDeadStructural input4448 value2228 value1 value2 = (output4448, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4449 value2227 value1 value2 = (output4449, value5, value1) := by
  rw [input4449_def, output4449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4445]
  dsimp only
  rw [child4448]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4445_skip, output4448_skip]
  kernel_rfl

theorem node4450_cond_eq
    (child4444 : Flapjack.WordAlloc.removeDeadStructural input4444 value2226 value1 value2 = (output4444, value2227, value1))
    (child4449 : Flapjack.WordAlloc.removeDeadStructural input4449 value2227 value1 value2 = (output4449, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4450 value2226 value1 value2 = (output4450, value5, value1) := by
  rw [input4450_def, output4450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4444]
  dsimp only
  rw [child4449]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4444_skip, output4449_skip]
  kernel_rfl

theorem node4451_cond_eq
    (child4443 : Flapjack.WordAlloc.removeDeadStructural input4443 value2224 value1 value2 = (output4443, value2226, value1))
    (child4450 : Flapjack.WordAlloc.removeDeadStructural input4450 value2226 value1 value2 = (output4450, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4451 value2224 value1 value2 = (output4451, value5, value1) := by
  rw [input4451_def, output4451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4443]
  dsimp only
  rw [child4450]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4443_skip, output4450_skip]
  kernel_rfl

theorem node4452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4452 value5 value1 value2 = (output4452, value2230, value1) := by
  rw [input4452_def, output4452_def]
  kernel_rfl

theorem node4453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4453 value2230 value1 value2 = (output4453, value2231, value1) := by
  rw [input4453_def, output4453_def]
  kernel_rfl

theorem node4454_cond_eq
    (child4452 : Flapjack.WordAlloc.removeDeadStructural input4452 value5 value1 value2 = (output4452, value2230, value1))
    (child4453 : Flapjack.WordAlloc.removeDeadStructural input4453 value2230 value1 value2 = (output4453, value2231, value1)) : Flapjack.WordAlloc.removeDeadStructural input4454 value5 value1 value2 = (output4454, value2231, value1) := by
  rw [input4454_def, output4454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4452]
  dsimp only
  rw [child4453]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4452_skip, output4453_skip]
  kernel_rfl

theorem node4455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4455 value2231 value1 value2 = (output4455, value2232, value1) := by
  rw [input4455_def, output4455_def]
  kernel_rfl

theorem node4456_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4456 value2232 value1 value2 = (output4456, value2232, value1) := by
  rw [input4456_def, output4456_def]
  kernel_rfl

theorem node4457_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4457 value2232 value1 value2 = (output4457, value2233, value1) := by
  rw [input4457_def, output4457_def]
  kernel_rfl

theorem node4458_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4458 value2233 value1 value2 = (output4458, value2234, value1) := by
  rw [input4458_def, output4458_def]
  kernel_rfl

theorem node4459_cond_eq
    (child4457 : Flapjack.WordAlloc.removeDeadStructural input4457 value2232 value1 value2 = (output4457, value2233, value1))
    (child4458 : Flapjack.WordAlloc.removeDeadStructural input4458 value2233 value1 value2 = (output4458, value2234, value1)) : Flapjack.WordAlloc.removeDeadStructural input4459 value2232 value1 value2 = (output4459, value2234, value1) := by
  rw [input4459_def, output4459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4457]
  dsimp only
  rw [child4458]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4457_skip, output4458_skip]
  kernel_rfl

theorem node4460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4460 value2234 value1 value2 = (output4460, value2235, value1) := by
  rw [input4460_def, output4460_def]
  kernel_rfl

theorem node4461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4461 value2235 value1 value2 = (output4461, value2236, value1) := by
  rw [input4461_def, output4461_def]
  kernel_rfl

theorem node4462_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4462 value2236 value1 value2 = (output4462, value2237, value1) := by
  rw [input4462_def, output4462_def]
  kernel_rfl

theorem node4463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4463 value2237 value1 value2 = (output4463, value5, value1) := by
  rw [input4463_def, output4463_def]
  kernel_rfl

theorem node4464_cond_eq
    (child4462 : Flapjack.WordAlloc.removeDeadStructural input4462 value2236 value1 value2 = (output4462, value2237, value1))
    (child4463 : Flapjack.WordAlloc.removeDeadStructural input4463 value2237 value1 value2 = (output4463, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4464 value2236 value1 value2 = (output4464, value5, value1) := by
  rw [input4464_def, output4464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4462]
  dsimp only
  rw [child4463]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4462_skip, output4463_skip]
  kernel_rfl

theorem node4465_cond_eq
    (child4461 : Flapjack.WordAlloc.removeDeadStructural input4461 value2235 value1 value2 = (output4461, value2236, value1))
    (child4464 : Flapjack.WordAlloc.removeDeadStructural input4464 value2236 value1 value2 = (output4464, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4465 value2235 value1 value2 = (output4465, value5, value1) := by
  rw [input4465_def, output4465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4461]
  dsimp only
  rw [child4464]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4461_skip, output4464_skip]
  kernel_rfl

theorem node4466_cond_eq
    (child4460 : Flapjack.WordAlloc.removeDeadStructural input4460 value2234 value1 value2 = (output4460, value2235, value1))
    (child4465 : Flapjack.WordAlloc.removeDeadStructural input4465 value2235 value1 value2 = (output4465, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4466 value2234 value1 value2 = (output4466, value5, value1) := by
  rw [input4466_def, output4466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4460]
  dsimp only
  rw [child4465]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4460_skip, output4465_skip]
  kernel_rfl

theorem node4467_cond_eq
    (child4459 : Flapjack.WordAlloc.removeDeadStructural input4459 value2232 value1 value2 = (output4459, value2234, value1))
    (child4466 : Flapjack.WordAlloc.removeDeadStructural input4466 value2234 value1 value2 = (output4466, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4467 value2232 value1 value2 = (output4467, value5, value1) := by
  rw [input4467_def, output4467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4459]
  dsimp only
  rw [child4466]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4459_skip, output4466_skip]
  kernel_rfl

theorem node4468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4468 value5 value1 value2 = (output4468, value2238, value1) := by
  rw [input4468_def, output4468_def]
  kernel_rfl

theorem node4469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4469 value2238 value1 value2 = (output4469, value2239, value1) := by
  rw [input4469_def, output4469_def]
  kernel_rfl

theorem node4470_cond_eq
    (child4468 : Flapjack.WordAlloc.removeDeadStructural input4468 value5 value1 value2 = (output4468, value2238, value1))
    (child4469 : Flapjack.WordAlloc.removeDeadStructural input4469 value2238 value1 value2 = (output4469, value2239, value1)) : Flapjack.WordAlloc.removeDeadStructural input4470 value5 value1 value2 = (output4470, value2239, value1) := by
  rw [input4470_def, output4470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4468]
  dsimp only
  rw [child4469]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4468_skip, output4469_skip]
  kernel_rfl

theorem node4471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4471 value2239 value1 value2 = (output4471, value2240, value1) := by
  rw [input4471_def, output4471_def]
  kernel_rfl

theorem node4472_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4472 value2240 value1 value2 = (output4472, value2240, value1) := by
  rw [input4472_def, output4472_def]
  kernel_rfl

theorem node4473_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4473 value2240 value1 value2 = (output4473, value2241, value1) := by
  rw [input4473_def, output4473_def]
  kernel_rfl

theorem node4474_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4474 value2241 value1 value2 = (output4474, value2242, value1) := by
  rw [input4474_def, output4474_def]
  kernel_rfl

theorem node4475_cond_eq
    (child4473 : Flapjack.WordAlloc.removeDeadStructural input4473 value2240 value1 value2 = (output4473, value2241, value1))
    (child4474 : Flapjack.WordAlloc.removeDeadStructural input4474 value2241 value1 value2 = (output4474, value2242, value1)) : Flapjack.WordAlloc.removeDeadStructural input4475 value2240 value1 value2 = (output4475, value2242, value1) := by
  rw [input4475_def, output4475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4473]
  dsimp only
  rw [child4474]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4473_skip, output4474_skip]
  kernel_rfl

theorem node4476_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4476 value2242 value1 value2 = (output4476, value2243, value1) := by
  rw [input4476_def, output4476_def]
  kernel_rfl

theorem node4477_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4477 value2243 value1 value2 = (output4477, value2244, value1) := by
  rw [input4477_def, output4477_def]
  kernel_rfl

theorem node4478_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4478 value2244 value1 value2 = (output4478, value2245, value1) := by
  rw [input4478_def, output4478_def]
  kernel_rfl

theorem node4479_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4479 value2245 value1 value2 = (output4479, value5, value1) := by
  rw [input4479_def, output4479_def]
  kernel_rfl

theorem node4480_cond_eq
    (child4478 : Flapjack.WordAlloc.removeDeadStructural input4478 value2244 value1 value2 = (output4478, value2245, value1))
    (child4479 : Flapjack.WordAlloc.removeDeadStructural input4479 value2245 value1 value2 = (output4479, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4480 value2244 value1 value2 = (output4480, value5, value1) := by
  rw [input4480_def, output4480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4478]
  dsimp only
  rw [child4479]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4478_skip, output4479_skip]
  kernel_rfl

theorem node4481_cond_eq
    (child4477 : Flapjack.WordAlloc.removeDeadStructural input4477 value2243 value1 value2 = (output4477, value2244, value1))
    (child4480 : Flapjack.WordAlloc.removeDeadStructural input4480 value2244 value1 value2 = (output4480, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4481 value2243 value1 value2 = (output4481, value5, value1) := by
  rw [input4481_def, output4481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4477]
  dsimp only
  rw [child4480]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4477_skip, output4480_skip]
  kernel_rfl

theorem node4482_cond_eq
    (child4476 : Flapjack.WordAlloc.removeDeadStructural input4476 value2242 value1 value2 = (output4476, value2243, value1))
    (child4481 : Flapjack.WordAlloc.removeDeadStructural input4481 value2243 value1 value2 = (output4481, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4482 value2242 value1 value2 = (output4482, value5, value1) := by
  rw [input4482_def, output4482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4476]
  dsimp only
  rw [child4481]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4476_skip, output4481_skip]
  kernel_rfl

theorem node4483_cond_eq
    (child4475 : Flapjack.WordAlloc.removeDeadStructural input4475 value2240 value1 value2 = (output4475, value2242, value1))
    (child4482 : Flapjack.WordAlloc.removeDeadStructural input4482 value2242 value1 value2 = (output4482, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4483 value2240 value1 value2 = (output4483, value5, value1) := by
  rw [input4483_def, output4483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4475]
  dsimp only
  rw [child4482]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4475_skip, output4482_skip]
  kernel_rfl

theorem node4484_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4484 value5 value1 value2 = (output4484, value2246, value1) := by
  rw [input4484_def, output4484_def]
  kernel_rfl

theorem node4485_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4485 value2246 value1 value2 = (output4485, value2247, value1) := by
  rw [input4485_def, output4485_def]
  kernel_rfl

theorem node4486_cond_eq
    (child4484 : Flapjack.WordAlloc.removeDeadStructural input4484 value5 value1 value2 = (output4484, value2246, value1))
    (child4485 : Flapjack.WordAlloc.removeDeadStructural input4485 value2246 value1 value2 = (output4485, value2247, value1)) : Flapjack.WordAlloc.removeDeadStructural input4486 value5 value1 value2 = (output4486, value2247, value1) := by
  rw [input4486_def, output4486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4484]
  dsimp only
  rw [child4485]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4484_skip, output4485_skip]
  kernel_rfl

theorem node4487_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4487 value2247 value1 value2 = (output4487, value2248, value1) := by
  rw [input4487_def, output4487_def]
  kernel_rfl

theorem node4488_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4488 value2248 value1 value2 = (output4488, value2248, value1) := by
  rw [input4488_def, output4488_def]
  kernel_rfl

theorem node4489_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4489 value2248 value1 value2 = (output4489, value2249, value1) := by
  rw [input4489_def, output4489_def]
  kernel_rfl

theorem node4490_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4490 value2249 value1 value2 = (output4490, value2250, value1) := by
  rw [input4490_def, output4490_def]
  kernel_rfl

theorem node4491_cond_eq
    (child4489 : Flapjack.WordAlloc.removeDeadStructural input4489 value2248 value1 value2 = (output4489, value2249, value1))
    (child4490 : Flapjack.WordAlloc.removeDeadStructural input4490 value2249 value1 value2 = (output4490, value2250, value1)) : Flapjack.WordAlloc.removeDeadStructural input4491 value2248 value1 value2 = (output4491, value2250, value1) := by
  rw [input4491_def, output4491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4489]
  dsimp only
  rw [child4490]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4489_skip, output4490_skip]
  kernel_rfl

theorem node4492_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4492 value2250 value1 value2 = (output4492, value2251, value1) := by
  rw [input4492_def, output4492_def]
  kernel_rfl

theorem node4493_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4493 value2251 value1 value2 = (output4493, value2252, value1) := by
  rw [input4493_def, output4493_def]
  kernel_rfl

theorem node4494_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4494 value2252 value1 value2 = (output4494, value2253, value1) := by
  rw [input4494_def, output4494_def]
  kernel_rfl

theorem node4495_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4495 value2253 value1 value2 = (output4495, value5, value1) := by
  rw [input4495_def, output4495_def]
  kernel_rfl

theorem node4496_cond_eq
    (child4494 : Flapjack.WordAlloc.removeDeadStructural input4494 value2252 value1 value2 = (output4494, value2253, value1))
    (child4495 : Flapjack.WordAlloc.removeDeadStructural input4495 value2253 value1 value2 = (output4495, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4496 value2252 value1 value2 = (output4496, value5, value1) := by
  rw [input4496_def, output4496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4494]
  dsimp only
  rw [child4495]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4494_skip, output4495_skip]
  kernel_rfl

theorem node4497_cond_eq
    (child4493 : Flapjack.WordAlloc.removeDeadStructural input4493 value2251 value1 value2 = (output4493, value2252, value1))
    (child4496 : Flapjack.WordAlloc.removeDeadStructural input4496 value2252 value1 value2 = (output4496, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4497 value2251 value1 value2 = (output4497, value5, value1) := by
  rw [input4497_def, output4497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4493]
  dsimp only
  rw [child4496]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4493_skip, output4496_skip]
  kernel_rfl

theorem node4498_cond_eq
    (child4492 : Flapjack.WordAlloc.removeDeadStructural input4492 value2250 value1 value2 = (output4492, value2251, value1))
    (child4497 : Flapjack.WordAlloc.removeDeadStructural input4497 value2251 value1 value2 = (output4497, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4498 value2250 value1 value2 = (output4498, value5, value1) := by
  rw [input4498_def, output4498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4492]
  dsimp only
  rw [child4497]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4492_skip, output4497_skip]
  kernel_rfl

theorem node4499_cond_eq
    (child4491 : Flapjack.WordAlloc.removeDeadStructural input4491 value2248 value1 value2 = (output4491, value2250, value1))
    (child4498 : Flapjack.WordAlloc.removeDeadStructural input4498 value2250 value1 value2 = (output4498, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4499 value2248 value1 value2 = (output4499, value5, value1) := by
  rw [input4499_def, output4499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4491]
  dsimp only
  rw [child4498]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4491_skip, output4498_skip]
  kernel_rfl

theorem node4500_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4500 value5 value1 value2 = (output4500, value2254, value1) := by
  rw [input4500_def, output4500_def]
  kernel_rfl

theorem node4501_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4501 value2254 value1 value2 = (output4501, value2255, value1) := by
  rw [input4501_def, output4501_def]
  kernel_rfl

theorem node4502_cond_eq
    (child4500 : Flapjack.WordAlloc.removeDeadStructural input4500 value5 value1 value2 = (output4500, value2254, value1))
    (child4501 : Flapjack.WordAlloc.removeDeadStructural input4501 value2254 value1 value2 = (output4501, value2255, value1)) : Flapjack.WordAlloc.removeDeadStructural input4502 value5 value1 value2 = (output4502, value2255, value1) := by
  rw [input4502_def, output4502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4500]
  dsimp only
  rw [child4501]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4500_skip, output4501_skip]
  kernel_rfl

theorem node4503_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4503 value2255 value1 value2 = (output4503, value2256, value1) := by
  rw [input4503_def, output4503_def]
  kernel_rfl

theorem node4504_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4504 value2256 value1 value2 = (output4504, value2256, value1) := by
  rw [input4504_def, output4504_def]
  kernel_rfl

theorem node4505_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4505 value2256 value1 value2 = (output4505, value2257, value1) := by
  rw [input4505_def, output4505_def]
  kernel_rfl

theorem node4506_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4506 value2257 value1 value2 = (output4506, value2258, value1) := by
  rw [input4506_def, output4506_def]
  kernel_rfl

theorem node4507_cond_eq
    (child4505 : Flapjack.WordAlloc.removeDeadStructural input4505 value2256 value1 value2 = (output4505, value2257, value1))
    (child4506 : Flapjack.WordAlloc.removeDeadStructural input4506 value2257 value1 value2 = (output4506, value2258, value1)) : Flapjack.WordAlloc.removeDeadStructural input4507 value2256 value1 value2 = (output4507, value2258, value1) := by
  rw [input4507_def, output4507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4505]
  dsimp only
  rw [child4506]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4505_skip, output4506_skip]
  kernel_rfl

theorem node4508_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4508 value2258 value1 value2 = (output4508, value2259, value1) := by
  rw [input4508_def, output4508_def]
  kernel_rfl

theorem node4509_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4509 value2259 value1 value2 = (output4509, value2260, value1) := by
  rw [input4509_def, output4509_def]
  kernel_rfl

theorem node4510_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4510 value2260 value1 value2 = (output4510, value2261, value1) := by
  rw [input4510_def, output4510_def]
  kernel_rfl

theorem node4511_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4511 value2261 value1 value2 = (output4511, value5, value1) := by
  rw [input4511_def, output4511_def]
  kernel_rfl

theorem node4512_cond_eq
    (child4510 : Flapjack.WordAlloc.removeDeadStructural input4510 value2260 value1 value2 = (output4510, value2261, value1))
    (child4511 : Flapjack.WordAlloc.removeDeadStructural input4511 value2261 value1 value2 = (output4511, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4512 value2260 value1 value2 = (output4512, value5, value1) := by
  rw [input4512_def, output4512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4510]
  dsimp only
  rw [child4511]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4510_skip, output4511_skip]
  kernel_rfl

theorem node4513_cond_eq
    (child4509 : Flapjack.WordAlloc.removeDeadStructural input4509 value2259 value1 value2 = (output4509, value2260, value1))
    (child4512 : Flapjack.WordAlloc.removeDeadStructural input4512 value2260 value1 value2 = (output4512, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4513 value2259 value1 value2 = (output4513, value5, value1) := by
  rw [input4513_def, output4513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4509]
  dsimp only
  rw [child4512]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4509_skip, output4512_skip]
  kernel_rfl

theorem node4514_cond_eq
    (child4508 : Flapjack.WordAlloc.removeDeadStructural input4508 value2258 value1 value2 = (output4508, value2259, value1))
    (child4513 : Flapjack.WordAlloc.removeDeadStructural input4513 value2259 value1 value2 = (output4513, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4514 value2258 value1 value2 = (output4514, value5, value1) := by
  rw [input4514_def, output4514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4508]
  dsimp only
  rw [child4513]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4508_skip, output4513_skip]
  kernel_rfl

theorem node4515_cond_eq
    (child4507 : Flapjack.WordAlloc.removeDeadStructural input4507 value2256 value1 value2 = (output4507, value2258, value1))
    (child4514 : Flapjack.WordAlloc.removeDeadStructural input4514 value2258 value1 value2 = (output4514, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4515 value2256 value1 value2 = (output4515, value5, value1) := by
  rw [input4515_def, output4515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4507]
  dsimp only
  rw [child4514]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4507_skip, output4514_skip]
  kernel_rfl

theorem node4516_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4516 value5 value1 value2 = (output4516, value2262, value1) := by
  rw [input4516_def, output4516_def]
  kernel_rfl

theorem node4517_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4517 value2262 value1 value2 = (output4517, value2263, value1) := by
  rw [input4517_def, output4517_def]
  kernel_rfl

theorem node4518_cond_eq
    (child4516 : Flapjack.WordAlloc.removeDeadStructural input4516 value5 value1 value2 = (output4516, value2262, value1))
    (child4517 : Flapjack.WordAlloc.removeDeadStructural input4517 value2262 value1 value2 = (output4517, value2263, value1)) : Flapjack.WordAlloc.removeDeadStructural input4518 value5 value1 value2 = (output4518, value2263, value1) := by
  rw [input4518_def, output4518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4516]
  dsimp only
  rw [child4517]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4516_skip, output4517_skip]
  kernel_rfl

theorem node4519_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4519 value2263 value1 value2 = (output4519, value2264, value1) := by
  rw [input4519_def, output4519_def]
  kernel_rfl

theorem node4520_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4520 value2264 value1 value2 = (output4520, value2264, value1) := by
  rw [input4520_def, output4520_def]
  kernel_rfl

theorem node4521_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4521 value2264 value1 value2 = (output4521, value2265, value1) := by
  rw [input4521_def, output4521_def]
  kernel_rfl

theorem node4522_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4522 value2265 value1 value2 = (output4522, value2266, value1) := by
  rw [input4522_def, output4522_def]
  kernel_rfl

theorem node4523_cond_eq
    (child4521 : Flapjack.WordAlloc.removeDeadStructural input4521 value2264 value1 value2 = (output4521, value2265, value1))
    (child4522 : Flapjack.WordAlloc.removeDeadStructural input4522 value2265 value1 value2 = (output4522, value2266, value1)) : Flapjack.WordAlloc.removeDeadStructural input4523 value2264 value1 value2 = (output4523, value2266, value1) := by
  rw [input4523_def, output4523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4521]
  dsimp only
  rw [child4522]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4521_skip, output4522_skip]
  kernel_rfl

theorem node4524_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4524 value2266 value1 value2 = (output4524, value2267, value1) := by
  rw [input4524_def, output4524_def]
  kernel_rfl

theorem node4525_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4525 value2267 value1 value2 = (output4525, value2268, value1) := by
  rw [input4525_def, output4525_def]
  kernel_rfl

theorem node4526_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4526 value2268 value1 value2 = (output4526, value2269, value1) := by
  rw [input4526_def, output4526_def]
  kernel_rfl

theorem node4527_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4527 value2269 value1 value2 = (output4527, value5, value1) := by
  rw [input4527_def, output4527_def]
  kernel_rfl

theorem node4528_cond_eq
    (child4526 : Flapjack.WordAlloc.removeDeadStructural input4526 value2268 value1 value2 = (output4526, value2269, value1))
    (child4527 : Flapjack.WordAlloc.removeDeadStructural input4527 value2269 value1 value2 = (output4527, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4528 value2268 value1 value2 = (output4528, value5, value1) := by
  rw [input4528_def, output4528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4526]
  dsimp only
  rw [child4527]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4526_skip, output4527_skip]
  kernel_rfl

theorem node4529_cond_eq
    (child4525 : Flapjack.WordAlloc.removeDeadStructural input4525 value2267 value1 value2 = (output4525, value2268, value1))
    (child4528 : Flapjack.WordAlloc.removeDeadStructural input4528 value2268 value1 value2 = (output4528, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4529 value2267 value1 value2 = (output4529, value5, value1) := by
  rw [input4529_def, output4529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4525]
  dsimp only
  rw [child4528]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4525_skip, output4528_skip]
  kernel_rfl

theorem node4530_cond_eq
    (child4524 : Flapjack.WordAlloc.removeDeadStructural input4524 value2266 value1 value2 = (output4524, value2267, value1))
    (child4529 : Flapjack.WordAlloc.removeDeadStructural input4529 value2267 value1 value2 = (output4529, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4530 value2266 value1 value2 = (output4530, value5, value1) := by
  rw [input4530_def, output4530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4524]
  dsimp only
  rw [child4529]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4524_skip, output4529_skip]
  kernel_rfl

theorem node4531_cond_eq
    (child4523 : Flapjack.WordAlloc.removeDeadStructural input4523 value2264 value1 value2 = (output4523, value2266, value1))
    (child4530 : Flapjack.WordAlloc.removeDeadStructural input4530 value2266 value1 value2 = (output4530, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4531 value2264 value1 value2 = (output4531, value5, value1) := by
  rw [input4531_def, output4531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4523]
  dsimp only
  rw [child4530]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4523_skip, output4530_skip]
  kernel_rfl

theorem node4532_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4532 value5 value1 value2 = (output4532, value2270, value1) := by
  rw [input4532_def, output4532_def]
  kernel_rfl

theorem node4533_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4533 value2270 value1 value2 = (output4533, value2271, value1) := by
  rw [input4533_def, output4533_def]
  kernel_rfl

theorem node4534_cond_eq
    (child4532 : Flapjack.WordAlloc.removeDeadStructural input4532 value5 value1 value2 = (output4532, value2270, value1))
    (child4533 : Flapjack.WordAlloc.removeDeadStructural input4533 value2270 value1 value2 = (output4533, value2271, value1)) : Flapjack.WordAlloc.removeDeadStructural input4534 value5 value1 value2 = (output4534, value2271, value1) := by
  rw [input4534_def, output4534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4532]
  dsimp only
  rw [child4533]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4532_skip, output4533_skip]
  kernel_rfl

theorem node4535_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4535 value2271 value1 value2 = (output4535, value2272, value1) := by
  rw [input4535_def, output4535_def]
  kernel_rfl

theorem node4536_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4536 value2272 value1 value2 = (output4536, value2272, value1) := by
  rw [input4536_def, output4536_def]
  kernel_rfl

theorem node4537_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4537 value2272 value1 value2 = (output4537, value2273, value1) := by
  rw [input4537_def, output4537_def]
  kernel_rfl

theorem node4538_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4538 value2273 value1 value2 = (output4538, value2274, value1) := by
  rw [input4538_def, output4538_def]
  kernel_rfl

theorem node4539_cond_eq
    (child4537 : Flapjack.WordAlloc.removeDeadStructural input4537 value2272 value1 value2 = (output4537, value2273, value1))
    (child4538 : Flapjack.WordAlloc.removeDeadStructural input4538 value2273 value1 value2 = (output4538, value2274, value1)) : Flapjack.WordAlloc.removeDeadStructural input4539 value2272 value1 value2 = (output4539, value2274, value1) := by
  rw [input4539_def, output4539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4537]
  dsimp only
  rw [child4538]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4537_skip, output4538_skip]
  kernel_rfl

theorem node4540_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4540 value2274 value1 value2 = (output4540, value2275, value1) := by
  rw [input4540_def, output4540_def]
  kernel_rfl

theorem node4541_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4541 value2275 value1 value2 = (output4541, value2276, value1) := by
  rw [input4541_def, output4541_def]
  kernel_rfl

theorem node4542_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4542 value2276 value1 value2 = (output4542, value2277, value1) := by
  rw [input4542_def, output4542_def]
  kernel_rfl

theorem node4543_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4543 value2277 value1 value2 = (output4543, value5, value1) := by
  rw [input4543_def, output4543_def]
  kernel_rfl

theorem node4544_cond_eq
    (child4542 : Flapjack.WordAlloc.removeDeadStructural input4542 value2276 value1 value2 = (output4542, value2277, value1))
    (child4543 : Flapjack.WordAlloc.removeDeadStructural input4543 value2277 value1 value2 = (output4543, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4544 value2276 value1 value2 = (output4544, value5, value1) := by
  rw [input4544_def, output4544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4542]
  dsimp only
  rw [child4543]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4542_skip, output4543_skip]
  kernel_rfl

theorem node4545_cond_eq
    (child4541 : Flapjack.WordAlloc.removeDeadStructural input4541 value2275 value1 value2 = (output4541, value2276, value1))
    (child4544 : Flapjack.WordAlloc.removeDeadStructural input4544 value2276 value1 value2 = (output4544, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4545 value2275 value1 value2 = (output4545, value5, value1) := by
  rw [input4545_def, output4545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4541]
  dsimp only
  rw [child4544]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4541_skip, output4544_skip]
  kernel_rfl

theorem node4546_cond_eq
    (child4540 : Flapjack.WordAlloc.removeDeadStructural input4540 value2274 value1 value2 = (output4540, value2275, value1))
    (child4545 : Flapjack.WordAlloc.removeDeadStructural input4545 value2275 value1 value2 = (output4545, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4546 value2274 value1 value2 = (output4546, value5, value1) := by
  rw [input4546_def, output4546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4540]
  dsimp only
  rw [child4545]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4540_skip, output4545_skip]
  kernel_rfl

theorem node4547_cond_eq
    (child4539 : Flapjack.WordAlloc.removeDeadStructural input4539 value2272 value1 value2 = (output4539, value2274, value1))
    (child4546 : Flapjack.WordAlloc.removeDeadStructural input4546 value2274 value1 value2 = (output4546, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4547 value2272 value1 value2 = (output4547, value5, value1) := by
  rw [input4547_def, output4547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4539]
  dsimp only
  rw [child4546]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4539_skip, output4546_skip]
  kernel_rfl

theorem node4548_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4548 value5 value1 value2 = (output4548, value2278, value1) := by
  rw [input4548_def, output4548_def]
  kernel_rfl

theorem node4549_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4549 value2278 value1 value2 = (output4549, value2279, value1) := by
  rw [input4549_def, output4549_def]
  kernel_rfl

theorem node4550_cond_eq
    (child4548 : Flapjack.WordAlloc.removeDeadStructural input4548 value5 value1 value2 = (output4548, value2278, value1))
    (child4549 : Flapjack.WordAlloc.removeDeadStructural input4549 value2278 value1 value2 = (output4549, value2279, value1)) : Flapjack.WordAlloc.removeDeadStructural input4550 value5 value1 value2 = (output4550, value2279, value1) := by
  rw [input4550_def, output4550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4548]
  dsimp only
  rw [child4549]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4548_skip, output4549_skip]
  kernel_rfl

theorem node4551_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4551 value2279 value1 value2 = (output4551, value2280, value1) := by
  rw [input4551_def, output4551_def]
  kernel_rfl

theorem node4552_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4552 value2280 value1 value2 = (output4552, value2280, value1) := by
  rw [input4552_def, output4552_def]
  kernel_rfl

theorem node4553_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4553 value2280 value1 value2 = (output4553, value2281, value1) := by
  rw [input4553_def, output4553_def]
  kernel_rfl

theorem node4554_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4554 value2281 value1 value2 = (output4554, value2282, value1) := by
  rw [input4554_def, output4554_def]
  kernel_rfl

theorem node4555_cond_eq
    (child4553 : Flapjack.WordAlloc.removeDeadStructural input4553 value2280 value1 value2 = (output4553, value2281, value1))
    (child4554 : Flapjack.WordAlloc.removeDeadStructural input4554 value2281 value1 value2 = (output4554, value2282, value1)) : Flapjack.WordAlloc.removeDeadStructural input4555 value2280 value1 value2 = (output4555, value2282, value1) := by
  rw [input4555_def, output4555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4553]
  dsimp only
  rw [child4554]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4553_skip, output4554_skip]
  kernel_rfl

theorem node4556_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4556 value2282 value1 value2 = (output4556, value2283, value1) := by
  rw [input4556_def, output4556_def]
  kernel_rfl

theorem node4557_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4557 value2283 value1 value2 = (output4557, value2284, value1) := by
  rw [input4557_def, output4557_def]
  kernel_rfl

theorem node4558_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4558 value2284 value1 value2 = (output4558, value2285, value1) := by
  rw [input4558_def, output4558_def]
  kernel_rfl

theorem node4559_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4559 value2285 value1 value2 = (output4559, value5, value1) := by
  rw [input4559_def, output4559_def]
  kernel_rfl

theorem node4560_cond_eq
    (child4558 : Flapjack.WordAlloc.removeDeadStructural input4558 value2284 value1 value2 = (output4558, value2285, value1))
    (child4559 : Flapjack.WordAlloc.removeDeadStructural input4559 value2285 value1 value2 = (output4559, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4560 value2284 value1 value2 = (output4560, value5, value1) := by
  rw [input4560_def, output4560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4558]
  dsimp only
  rw [child4559]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4558_skip, output4559_skip]
  kernel_rfl

theorem node4561_cond_eq
    (child4557 : Flapjack.WordAlloc.removeDeadStructural input4557 value2283 value1 value2 = (output4557, value2284, value1))
    (child4560 : Flapjack.WordAlloc.removeDeadStructural input4560 value2284 value1 value2 = (output4560, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4561 value2283 value1 value2 = (output4561, value5, value1) := by
  rw [input4561_def, output4561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4557]
  dsimp only
  rw [child4560]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4557_skip, output4560_skip]
  kernel_rfl

theorem node4562_cond_eq
    (child4556 : Flapjack.WordAlloc.removeDeadStructural input4556 value2282 value1 value2 = (output4556, value2283, value1))
    (child4561 : Flapjack.WordAlloc.removeDeadStructural input4561 value2283 value1 value2 = (output4561, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4562 value2282 value1 value2 = (output4562, value5, value1) := by
  rw [input4562_def, output4562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4556]
  dsimp only
  rw [child4561]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4556_skip, output4561_skip]
  kernel_rfl

theorem node4563_cond_eq
    (child4555 : Flapjack.WordAlloc.removeDeadStructural input4555 value2280 value1 value2 = (output4555, value2282, value1))
    (child4562 : Flapjack.WordAlloc.removeDeadStructural input4562 value2282 value1 value2 = (output4562, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4563 value2280 value1 value2 = (output4563, value5, value1) := by
  rw [input4563_def, output4563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4555]
  dsimp only
  rw [child4562]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4555_skip, output4562_skip]
  kernel_rfl

theorem node4564_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4564 value5 value1 value2 = (output4564, value2286, value1) := by
  rw [input4564_def, output4564_def]
  kernel_rfl

theorem node4565_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4565 value2286 value1 value2 = (output4565, value2287, value1) := by
  rw [input4565_def, output4565_def]
  kernel_rfl

theorem node4566_cond_eq
    (child4564 : Flapjack.WordAlloc.removeDeadStructural input4564 value5 value1 value2 = (output4564, value2286, value1))
    (child4565 : Flapjack.WordAlloc.removeDeadStructural input4565 value2286 value1 value2 = (output4565, value2287, value1)) : Flapjack.WordAlloc.removeDeadStructural input4566 value5 value1 value2 = (output4566, value2287, value1) := by
  rw [input4566_def, output4566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4564]
  dsimp only
  rw [child4565]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4564_skip, output4565_skip]
  kernel_rfl

theorem node4567_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4567 value2287 value1 value2 = (output4567, value2288, value1) := by
  rw [input4567_def, output4567_def]
  kernel_rfl

theorem node4568_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4568 value2288 value1 value2 = (output4568, value2288, value1) := by
  rw [input4568_def, output4568_def]
  kernel_rfl

theorem node4569_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4569 value2288 value1 value2 = (output4569, value2289, value1) := by
  rw [input4569_def, output4569_def]
  kernel_rfl

theorem node4570_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4570 value2289 value1 value2 = (output4570, value2290, value1) := by
  rw [input4570_def, output4570_def]
  kernel_rfl

theorem node4571_cond_eq
    (child4569 : Flapjack.WordAlloc.removeDeadStructural input4569 value2288 value1 value2 = (output4569, value2289, value1))
    (child4570 : Flapjack.WordAlloc.removeDeadStructural input4570 value2289 value1 value2 = (output4570, value2290, value1)) : Flapjack.WordAlloc.removeDeadStructural input4571 value2288 value1 value2 = (output4571, value2290, value1) := by
  rw [input4571_def, output4571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4569]
  dsimp only
  rw [child4570]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4569_skip, output4570_skip]
  kernel_rfl

theorem node4572_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4572 value2290 value1 value2 = (output4572, value2291, value1) := by
  rw [input4572_def, output4572_def]
  kernel_rfl

theorem node4573_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4573 value2291 value1 value2 = (output4573, value2292, value1) := by
  rw [input4573_def, output4573_def]
  kernel_rfl

theorem node4574_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4574 value2292 value1 value2 = (output4574, value2293, value1) := by
  rw [input4574_def, output4574_def]
  kernel_rfl

theorem node4575_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4575 value2293 value1 value2 = (output4575, value5, value1) := by
  rw [input4575_def, output4575_def]
  kernel_rfl

theorem node4576_cond_eq
    (child4574 : Flapjack.WordAlloc.removeDeadStructural input4574 value2292 value1 value2 = (output4574, value2293, value1))
    (child4575 : Flapjack.WordAlloc.removeDeadStructural input4575 value2293 value1 value2 = (output4575, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4576 value2292 value1 value2 = (output4576, value5, value1) := by
  rw [input4576_def, output4576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4574]
  dsimp only
  rw [child4575]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4574_skip, output4575_skip]
  kernel_rfl

theorem node4577_cond_eq
    (child4573 : Flapjack.WordAlloc.removeDeadStructural input4573 value2291 value1 value2 = (output4573, value2292, value1))
    (child4576 : Flapjack.WordAlloc.removeDeadStructural input4576 value2292 value1 value2 = (output4576, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4577 value2291 value1 value2 = (output4577, value5, value1) := by
  rw [input4577_def, output4577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4573]
  dsimp only
  rw [child4576]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4573_skip, output4576_skip]
  kernel_rfl

theorem node4578_cond_eq
    (child4572 : Flapjack.WordAlloc.removeDeadStructural input4572 value2290 value1 value2 = (output4572, value2291, value1))
    (child4577 : Flapjack.WordAlloc.removeDeadStructural input4577 value2291 value1 value2 = (output4577, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4578 value2290 value1 value2 = (output4578, value5, value1) := by
  rw [input4578_def, output4578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4572]
  dsimp only
  rw [child4577]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4572_skip, output4577_skip]
  kernel_rfl

theorem node4579_cond_eq
    (child4571 : Flapjack.WordAlloc.removeDeadStructural input4571 value2288 value1 value2 = (output4571, value2290, value1))
    (child4578 : Flapjack.WordAlloc.removeDeadStructural input4578 value2290 value1 value2 = (output4578, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4579 value2288 value1 value2 = (output4579, value5, value1) := by
  rw [input4579_def, output4579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4571]
  dsimp only
  rw [child4578]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4571_skip, output4578_skip]
  kernel_rfl

theorem node4580_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4580 value5 value1 value2 = (output4580, value2294, value1) := by
  rw [input4580_def, output4580_def]
  kernel_rfl

theorem node4581_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4581 value2294 value1 value2 = (output4581, value2295, value1) := by
  rw [input4581_def, output4581_def]
  kernel_rfl

theorem node4582_cond_eq
    (child4580 : Flapjack.WordAlloc.removeDeadStructural input4580 value5 value1 value2 = (output4580, value2294, value1))
    (child4581 : Flapjack.WordAlloc.removeDeadStructural input4581 value2294 value1 value2 = (output4581, value2295, value1)) : Flapjack.WordAlloc.removeDeadStructural input4582 value5 value1 value2 = (output4582, value2295, value1) := by
  rw [input4582_def, output4582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4580]
  dsimp only
  rw [child4581]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4580_skip, output4581_skip]
  kernel_rfl

theorem node4583_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4583 value2295 value1 value2 = (output4583, value2296, value1) := by
  rw [input4583_def, output4583_def]
  kernel_rfl

theorem node4584_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4584 value2296 value1 value2 = (output4584, value2296, value1) := by
  rw [input4584_def, output4584_def]
  kernel_rfl

theorem node4585_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4585 value2296 value1 value2 = (output4585, value2297, value1) := by
  rw [input4585_def, output4585_def]
  kernel_rfl

theorem node4586_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4586 value2297 value1 value2 = (output4586, value2298, value1) := by
  rw [input4586_def, output4586_def]
  kernel_rfl

theorem node4587_cond_eq
    (child4585 : Flapjack.WordAlloc.removeDeadStructural input4585 value2296 value1 value2 = (output4585, value2297, value1))
    (child4586 : Flapjack.WordAlloc.removeDeadStructural input4586 value2297 value1 value2 = (output4586, value2298, value1)) : Flapjack.WordAlloc.removeDeadStructural input4587 value2296 value1 value2 = (output4587, value2298, value1) := by
  rw [input4587_def, output4587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4585]
  dsimp only
  rw [child4586]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4585_skip, output4586_skip]
  kernel_rfl

theorem node4588_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4588 value2298 value1 value2 = (output4588, value2299, value1) := by
  rw [input4588_def, output4588_def]
  kernel_rfl

theorem node4589_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4589 value2299 value1 value2 = (output4589, value2300, value1) := by
  rw [input4589_def, output4589_def]
  kernel_rfl

theorem node4590_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4590 value2300 value1 value2 = (output4590, value2301, value1) := by
  rw [input4590_def, output4590_def]
  kernel_rfl

theorem node4591_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4591 value2301 value1 value2 = (output4591, value5, value1) := by
  rw [input4591_def, output4591_def]
  kernel_rfl

theorem node4592_cond_eq
    (child4590 : Flapjack.WordAlloc.removeDeadStructural input4590 value2300 value1 value2 = (output4590, value2301, value1))
    (child4591 : Flapjack.WordAlloc.removeDeadStructural input4591 value2301 value1 value2 = (output4591, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4592 value2300 value1 value2 = (output4592, value5, value1) := by
  rw [input4592_def, output4592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4590]
  dsimp only
  rw [child4591]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4590_skip, output4591_skip]
  kernel_rfl

theorem node4593_cond_eq
    (child4589 : Flapjack.WordAlloc.removeDeadStructural input4589 value2299 value1 value2 = (output4589, value2300, value1))
    (child4592 : Flapjack.WordAlloc.removeDeadStructural input4592 value2300 value1 value2 = (output4592, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4593 value2299 value1 value2 = (output4593, value5, value1) := by
  rw [input4593_def, output4593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4589]
  dsimp only
  rw [child4592]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4589_skip, output4592_skip]
  kernel_rfl

theorem node4594_cond_eq
    (child4588 : Flapjack.WordAlloc.removeDeadStructural input4588 value2298 value1 value2 = (output4588, value2299, value1))
    (child4593 : Flapjack.WordAlloc.removeDeadStructural input4593 value2299 value1 value2 = (output4593, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4594 value2298 value1 value2 = (output4594, value5, value1) := by
  rw [input4594_def, output4594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4588]
  dsimp only
  rw [child4593]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4588_skip, output4593_skip]
  kernel_rfl

theorem node4595_cond_eq
    (child4587 : Flapjack.WordAlloc.removeDeadStructural input4587 value2296 value1 value2 = (output4587, value2298, value1))
    (child4594 : Flapjack.WordAlloc.removeDeadStructural input4594 value2298 value1 value2 = (output4594, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4595 value2296 value1 value2 = (output4595, value5, value1) := by
  rw [input4595_def, output4595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4587]
  dsimp only
  rw [child4594]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4587_skip, output4594_skip]
  kernel_rfl

theorem node4596_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4596 value5 value1 value2 = (output4596, value2302, value1) := by
  rw [input4596_def, output4596_def]
  kernel_rfl

theorem node4597_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4597 value2302 value1 value2 = (output4597, value2303, value1) := by
  rw [input4597_def, output4597_def]
  kernel_rfl

theorem node4598_cond_eq
    (child4596 : Flapjack.WordAlloc.removeDeadStructural input4596 value5 value1 value2 = (output4596, value2302, value1))
    (child4597 : Flapjack.WordAlloc.removeDeadStructural input4597 value2302 value1 value2 = (output4597, value2303, value1)) : Flapjack.WordAlloc.removeDeadStructural input4598 value5 value1 value2 = (output4598, value2303, value1) := by
  rw [input4598_def, output4598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4596]
  dsimp only
  rw [child4597]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4596_skip, output4597_skip]
  kernel_rfl

theorem node4599_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4599 value2303 value1 value2 = (output4599, value2304, value1) := by
  rw [input4599_def, output4599_def]
  kernel_rfl

theorem node4600_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4600 value2304 value1 value2 = (output4600, value2304, value1) := by
  rw [input4600_def, output4600_def]
  kernel_rfl

theorem node4601_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4601 value2304 value1 value2 = (output4601, value2305, value1) := by
  rw [input4601_def, output4601_def]
  kernel_rfl

theorem node4602_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4602 value2305 value1 value2 = (output4602, value2306, value1) := by
  rw [input4602_def, output4602_def]
  kernel_rfl

theorem node4603_cond_eq
    (child4601 : Flapjack.WordAlloc.removeDeadStructural input4601 value2304 value1 value2 = (output4601, value2305, value1))
    (child4602 : Flapjack.WordAlloc.removeDeadStructural input4602 value2305 value1 value2 = (output4602, value2306, value1)) : Flapjack.WordAlloc.removeDeadStructural input4603 value2304 value1 value2 = (output4603, value2306, value1) := by
  rw [input4603_def, output4603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4601]
  dsimp only
  rw [child4602]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4601_skip, output4602_skip]
  kernel_rfl

theorem node4604_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4604 value2306 value1 value2 = (output4604, value2307, value1) := by
  rw [input4604_def, output4604_def]
  kernel_rfl

theorem node4605_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4605 value2307 value1 value2 = (output4605, value2308, value1) := by
  rw [input4605_def, output4605_def]
  kernel_rfl

theorem node4606_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4606 value2308 value1 value2 = (output4606, value2309, value1) := by
  rw [input4606_def, output4606_def]
  kernel_rfl

theorem node4607_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4607 value2309 value1 value2 = (output4607, value5, value1) := by
  rw [input4607_def, output4607_def]
  kernel_rfl

#print axioms node4607_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
