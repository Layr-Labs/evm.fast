import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk060
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node15360_cond_eq
    (child8182 : Flapjack.WordAlloc.removeDeadStructural input8182 value5 value1 value2 = (output8182, value4095, value1))
    (child15359 : Flapjack.WordAlloc.removeDeadStructural input15359 value4095 value1 value2 = (output15359, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15360 value5 value1 value2 = (output15360, value6896, value1) := by
  rw [input15360_def, output15360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8182]
  try dsimp only
  rw [child15359]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8182_skip, output15359_skip]
  kernel_rfl

theorem node15361_cond_eq
    (child8179 : Flapjack.WordAlloc.removeDeadStructural input8179 value4088 value1 value2 = (output8179, value5, value1))
    (child15360 : Flapjack.WordAlloc.removeDeadStructural input15360 value5 value1 value2 = (output15360, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15361 value4088 value1 value2 = (output15361, value6896, value1) := by
  rw [input15361_def, output15361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8179]
  try dsimp only
  rw [child15360]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8179_skip, output15360_skip]
  kernel_rfl

theorem node15362_cond_eq
    (child8168 : Flapjack.WordAlloc.removeDeadStructural input8168 value4088 value1 value2 = (output8168, value4088, value1))
    (child15361 : Flapjack.WordAlloc.removeDeadStructural input15361 value4088 value1 value2 = (output15361, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15362 value4088 value1 value2 = (output15362, value6896, value1) := by
  rw [input15362_def, output15362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8168]
  try dsimp only
  rw [child15361]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8168_skip, output15361_skip]
  kernel_rfl

theorem node15363_cond_eq
    (child8167 : Flapjack.WordAlloc.removeDeadStructural input8167 value4087 value1 value2 = (output8167, value4088, value1))
    (child15362 : Flapjack.WordAlloc.removeDeadStructural input15362 value4088 value1 value2 = (output15362, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15363 value4087 value1 value2 = (output15363, value6896, value1) := by
  rw [input15363_def, output15363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8167]
  try dsimp only
  rw [child15362]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8167_skip, output15362_skip]
  kernel_rfl

theorem node15364_cond_eq
    (child8166 : Flapjack.WordAlloc.removeDeadStructural input8166 value5 value1 value2 = (output8166, value4087, value1))
    (child15363 : Flapjack.WordAlloc.removeDeadStructural input15363 value4087 value1 value2 = (output15363, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15364 value5 value1 value2 = (output15364, value6896, value1) := by
  rw [input15364_def, output15364_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8166]
  try dsimp only
  rw [child15363]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8166_skip, output15363_skip]
  kernel_rfl

theorem node15365_cond_eq
    (child8163 : Flapjack.WordAlloc.removeDeadStructural input8163 value4080 value1 value2 = (output8163, value5, value1))
    (child15364 : Flapjack.WordAlloc.removeDeadStructural input15364 value5 value1 value2 = (output15364, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15365 value4080 value1 value2 = (output15365, value6896, value1) := by
  rw [input15365_def, output15365_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8163]
  try dsimp only
  rw [child15364]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8163_skip, output15364_skip]
  kernel_rfl

theorem node15366_cond_eq
    (child8152 : Flapjack.WordAlloc.removeDeadStructural input8152 value4080 value1 value2 = (output8152, value4080, value1))
    (child15365 : Flapjack.WordAlloc.removeDeadStructural input15365 value4080 value1 value2 = (output15365, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15366 value4080 value1 value2 = (output15366, value6896, value1) := by
  rw [input15366_def, output15366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8152]
  try dsimp only
  rw [child15365]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8152_skip, output15365_skip]
  kernel_rfl

theorem node15367_cond_eq
    (child8151 : Flapjack.WordAlloc.removeDeadStructural input8151 value4079 value1 value2 = (output8151, value4080, value1))
    (child15366 : Flapjack.WordAlloc.removeDeadStructural input15366 value4080 value1 value2 = (output15366, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15367 value4079 value1 value2 = (output15367, value6896, value1) := by
  rw [input15367_def, output15367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8151]
  try dsimp only
  rw [child15366]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8151_skip, output15366_skip]
  kernel_rfl

theorem node15368_cond_eq
    (child8150 : Flapjack.WordAlloc.removeDeadStructural input8150 value5 value1 value2 = (output8150, value4079, value1))
    (child15367 : Flapjack.WordAlloc.removeDeadStructural input15367 value4079 value1 value2 = (output15367, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15368 value5 value1 value2 = (output15368, value6896, value1) := by
  rw [input15368_def, output15368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8150]
  try dsimp only
  rw [child15367]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8150_skip, output15367_skip]
  kernel_rfl

theorem node15369_cond_eq
    (child8147 : Flapjack.WordAlloc.removeDeadStructural input8147 value4072 value1 value2 = (output8147, value5, value1))
    (child15368 : Flapjack.WordAlloc.removeDeadStructural input15368 value5 value1 value2 = (output15368, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15369 value4072 value1 value2 = (output15369, value6896, value1) := by
  rw [input15369_def, output15369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8147]
  try dsimp only
  rw [child15368]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8147_skip, output15368_skip]
  kernel_rfl

theorem node15370_cond_eq
    (child8136 : Flapjack.WordAlloc.removeDeadStructural input8136 value4072 value1 value2 = (output8136, value4072, value1))
    (child15369 : Flapjack.WordAlloc.removeDeadStructural input15369 value4072 value1 value2 = (output15369, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15370 value4072 value1 value2 = (output15370, value6896, value1) := by
  rw [input15370_def, output15370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8136]
  try dsimp only
  rw [child15369]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8136_skip, output15369_skip]
  kernel_rfl

theorem node15371_cond_eq
    (child8135 : Flapjack.WordAlloc.removeDeadStructural input8135 value4071 value1 value2 = (output8135, value4072, value1))
    (child15370 : Flapjack.WordAlloc.removeDeadStructural input15370 value4072 value1 value2 = (output15370, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15371 value4071 value1 value2 = (output15371, value6896, value1) := by
  rw [input15371_def, output15371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8135]
  try dsimp only
  rw [child15370]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8135_skip, output15370_skip]
  kernel_rfl

theorem node15372_cond_eq
    (child8134 : Flapjack.WordAlloc.removeDeadStructural input8134 value5 value1 value2 = (output8134, value4071, value1))
    (child15371 : Flapjack.WordAlloc.removeDeadStructural input15371 value4071 value1 value2 = (output15371, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15372 value5 value1 value2 = (output15372, value6896, value1) := by
  rw [input15372_def, output15372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8134]
  try dsimp only
  rw [child15371]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8134_skip, output15371_skip]
  kernel_rfl

theorem node15373_cond_eq
    (child8131 : Flapjack.WordAlloc.removeDeadStructural input8131 value4064 value1 value2 = (output8131, value5, value1))
    (child15372 : Flapjack.WordAlloc.removeDeadStructural input15372 value5 value1 value2 = (output15372, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15373 value4064 value1 value2 = (output15373, value6896, value1) := by
  rw [input15373_def, output15373_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8131]
  try dsimp only
  rw [child15372]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8131_skip, output15372_skip]
  kernel_rfl

theorem node15374_cond_eq
    (child8120 : Flapjack.WordAlloc.removeDeadStructural input8120 value4064 value1 value2 = (output8120, value4064, value1))
    (child15373 : Flapjack.WordAlloc.removeDeadStructural input15373 value4064 value1 value2 = (output15373, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15374 value4064 value1 value2 = (output15374, value6896, value1) := by
  rw [input15374_def, output15374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8120]
  try dsimp only
  rw [child15373]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8120_skip, output15373_skip]
  kernel_rfl

theorem node15375_cond_eq
    (child8119 : Flapjack.WordAlloc.removeDeadStructural input8119 value4063 value1 value2 = (output8119, value4064, value1))
    (child15374 : Flapjack.WordAlloc.removeDeadStructural input15374 value4064 value1 value2 = (output15374, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15375 value4063 value1 value2 = (output15375, value6896, value1) := by
  rw [input15375_def, output15375_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8119]
  try dsimp only
  rw [child15374]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8119_skip, output15374_skip]
  kernel_rfl

theorem node15376_cond_eq
    (child8118 : Flapjack.WordAlloc.removeDeadStructural input8118 value5 value1 value2 = (output8118, value4063, value1))
    (child15375 : Flapjack.WordAlloc.removeDeadStructural input15375 value4063 value1 value2 = (output15375, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15376 value5 value1 value2 = (output15376, value6896, value1) := by
  rw [input15376_def, output15376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8118]
  try dsimp only
  rw [child15375]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8118_skip, output15375_skip]
  kernel_rfl

theorem node15377_cond_eq
    (child8115 : Flapjack.WordAlloc.removeDeadStructural input8115 value4056 value1 value2 = (output8115, value5, value1))
    (child15376 : Flapjack.WordAlloc.removeDeadStructural input15376 value5 value1 value2 = (output15376, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15377 value4056 value1 value2 = (output15377, value6896, value1) := by
  rw [input15377_def, output15377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8115]
  try dsimp only
  rw [child15376]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8115_skip, output15376_skip]
  kernel_rfl

theorem node15378_cond_eq
    (child8104 : Flapjack.WordAlloc.removeDeadStructural input8104 value4056 value1 value2 = (output8104, value4056, value1))
    (child15377 : Flapjack.WordAlloc.removeDeadStructural input15377 value4056 value1 value2 = (output15377, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15378 value4056 value1 value2 = (output15378, value6896, value1) := by
  rw [input15378_def, output15378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8104]
  try dsimp only
  rw [child15377]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8104_skip, output15377_skip]
  kernel_rfl

theorem node15379_cond_eq
    (child8103 : Flapjack.WordAlloc.removeDeadStructural input8103 value4055 value1 value2 = (output8103, value4056, value1))
    (child15378 : Flapjack.WordAlloc.removeDeadStructural input15378 value4056 value1 value2 = (output15378, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15379 value4055 value1 value2 = (output15379, value6896, value1) := by
  rw [input15379_def, output15379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8103]
  try dsimp only
  rw [child15378]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8103_skip, output15378_skip]
  kernel_rfl

theorem node15380_cond_eq
    (child8102 : Flapjack.WordAlloc.removeDeadStructural input8102 value5 value1 value2 = (output8102, value4055, value1))
    (child15379 : Flapjack.WordAlloc.removeDeadStructural input15379 value4055 value1 value2 = (output15379, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15380 value5 value1 value2 = (output15380, value6896, value1) := by
  rw [input15380_def, output15380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8102]
  try dsimp only
  rw [child15379]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8102_skip, output15379_skip]
  kernel_rfl

theorem node15381_cond_eq
    (child8099 : Flapjack.WordAlloc.removeDeadStructural input8099 value4048 value1 value2 = (output8099, value5, value1))
    (child15380 : Flapjack.WordAlloc.removeDeadStructural input15380 value5 value1 value2 = (output15380, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15381 value4048 value1 value2 = (output15381, value6896, value1) := by
  rw [input15381_def, output15381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8099]
  try dsimp only
  rw [child15380]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8099_skip, output15380_skip]
  kernel_rfl

theorem node15382_cond_eq
    (child8088 : Flapjack.WordAlloc.removeDeadStructural input8088 value4048 value1 value2 = (output8088, value4048, value1))
    (child15381 : Flapjack.WordAlloc.removeDeadStructural input15381 value4048 value1 value2 = (output15381, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15382 value4048 value1 value2 = (output15382, value6896, value1) := by
  rw [input15382_def, output15382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8088]
  try dsimp only
  rw [child15381]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8088_skip, output15381_skip]
  kernel_rfl

theorem node15383_cond_eq
    (child8087 : Flapjack.WordAlloc.removeDeadStructural input8087 value4047 value1 value2 = (output8087, value4048, value1))
    (child15382 : Flapjack.WordAlloc.removeDeadStructural input15382 value4048 value1 value2 = (output15382, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15383 value4047 value1 value2 = (output15383, value6896, value1) := by
  rw [input15383_def, output15383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8087]
  try dsimp only
  rw [child15382]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8087_skip, output15382_skip]
  kernel_rfl

theorem node15384_cond_eq
    (child8086 : Flapjack.WordAlloc.removeDeadStructural input8086 value5 value1 value2 = (output8086, value4047, value1))
    (child15383 : Flapjack.WordAlloc.removeDeadStructural input15383 value4047 value1 value2 = (output15383, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15384 value5 value1 value2 = (output15384, value6896, value1) := by
  rw [input15384_def, output15384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8086]
  try dsimp only
  rw [child15383]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8086_skip, output15383_skip]
  kernel_rfl

theorem node15385_cond_eq
    (child8083 : Flapjack.WordAlloc.removeDeadStructural input8083 value4040 value1 value2 = (output8083, value5, value1))
    (child15384 : Flapjack.WordAlloc.removeDeadStructural input15384 value5 value1 value2 = (output15384, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15385 value4040 value1 value2 = (output15385, value6896, value1) := by
  rw [input15385_def, output15385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8083]
  try dsimp only
  rw [child15384]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8083_skip, output15384_skip]
  kernel_rfl

theorem node15386_cond_eq
    (child8072 : Flapjack.WordAlloc.removeDeadStructural input8072 value4040 value1 value2 = (output8072, value4040, value1))
    (child15385 : Flapjack.WordAlloc.removeDeadStructural input15385 value4040 value1 value2 = (output15385, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15386 value4040 value1 value2 = (output15386, value6896, value1) := by
  rw [input15386_def, output15386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8072]
  try dsimp only
  rw [child15385]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8072_skip, output15385_skip]
  kernel_rfl

theorem node15387_cond_eq
    (child8071 : Flapjack.WordAlloc.removeDeadStructural input8071 value4039 value1 value2 = (output8071, value4040, value1))
    (child15386 : Flapjack.WordAlloc.removeDeadStructural input15386 value4040 value1 value2 = (output15386, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15387 value4039 value1 value2 = (output15387, value6896, value1) := by
  rw [input15387_def, output15387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8071]
  try dsimp only
  rw [child15386]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8071_skip, output15386_skip]
  kernel_rfl

theorem node15388_cond_eq
    (child8070 : Flapjack.WordAlloc.removeDeadStructural input8070 value5 value1 value2 = (output8070, value4039, value1))
    (child15387 : Flapjack.WordAlloc.removeDeadStructural input15387 value4039 value1 value2 = (output15387, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15388 value5 value1 value2 = (output15388, value6896, value1) := by
  rw [input15388_def, output15388_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8070]
  try dsimp only
  rw [child15387]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8070_skip, output15387_skip]
  kernel_rfl

theorem node15389_cond_eq
    (child8067 : Flapjack.WordAlloc.removeDeadStructural input8067 value4032 value1 value2 = (output8067, value5, value1))
    (child15388 : Flapjack.WordAlloc.removeDeadStructural input15388 value5 value1 value2 = (output15388, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15389 value4032 value1 value2 = (output15389, value6896, value1) := by
  rw [input15389_def, output15389_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8067]
  try dsimp only
  rw [child15388]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8067_skip, output15388_skip]
  kernel_rfl

theorem node15390_cond_eq
    (child8056 : Flapjack.WordAlloc.removeDeadStructural input8056 value4032 value1 value2 = (output8056, value4032, value1))
    (child15389 : Flapjack.WordAlloc.removeDeadStructural input15389 value4032 value1 value2 = (output15389, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15390 value4032 value1 value2 = (output15390, value6896, value1) := by
  rw [input15390_def, output15390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8056]
  try dsimp only
  rw [child15389]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8056_skip, output15389_skip]
  kernel_rfl

theorem node15391_cond_eq
    (child8055 : Flapjack.WordAlloc.removeDeadStructural input8055 value4031 value1 value2 = (output8055, value4032, value1))
    (child15390 : Flapjack.WordAlloc.removeDeadStructural input15390 value4032 value1 value2 = (output15390, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15391 value4031 value1 value2 = (output15391, value6896, value1) := by
  rw [input15391_def, output15391_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8055]
  try dsimp only
  rw [child15390]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8055_skip, output15390_skip]
  kernel_rfl

theorem node15392_cond_eq
    (child8054 : Flapjack.WordAlloc.removeDeadStructural input8054 value5 value1 value2 = (output8054, value4031, value1))
    (child15391 : Flapjack.WordAlloc.removeDeadStructural input15391 value4031 value1 value2 = (output15391, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15392 value5 value1 value2 = (output15392, value6896, value1) := by
  rw [input15392_def, output15392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8054]
  try dsimp only
  rw [child15391]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8054_skip, output15391_skip]
  kernel_rfl

theorem node15393_cond_eq
    (child8051 : Flapjack.WordAlloc.removeDeadStructural input8051 value4024 value1 value2 = (output8051, value5, value1))
    (child15392 : Flapjack.WordAlloc.removeDeadStructural input15392 value5 value1 value2 = (output15392, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15393 value4024 value1 value2 = (output15393, value6896, value1) := by
  rw [input15393_def, output15393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8051]
  try dsimp only
  rw [child15392]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8051_skip, output15392_skip]
  kernel_rfl

theorem node15394_cond_eq
    (child8040 : Flapjack.WordAlloc.removeDeadStructural input8040 value4024 value1 value2 = (output8040, value4024, value1))
    (child15393 : Flapjack.WordAlloc.removeDeadStructural input15393 value4024 value1 value2 = (output15393, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15394 value4024 value1 value2 = (output15394, value6896, value1) := by
  rw [input15394_def, output15394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8040]
  try dsimp only
  rw [child15393]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8040_skip, output15393_skip]
  kernel_rfl

theorem node15395_cond_eq
    (child8039 : Flapjack.WordAlloc.removeDeadStructural input8039 value4023 value1 value2 = (output8039, value4024, value1))
    (child15394 : Flapjack.WordAlloc.removeDeadStructural input15394 value4024 value1 value2 = (output15394, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15395 value4023 value1 value2 = (output15395, value6896, value1) := by
  rw [input15395_def, output15395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8039]
  try dsimp only
  rw [child15394]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8039_skip, output15394_skip]
  kernel_rfl

theorem node15396_cond_eq
    (child8038 : Flapjack.WordAlloc.removeDeadStructural input8038 value5 value1 value2 = (output8038, value4023, value1))
    (child15395 : Flapjack.WordAlloc.removeDeadStructural input15395 value4023 value1 value2 = (output15395, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15396 value5 value1 value2 = (output15396, value6896, value1) := by
  rw [input15396_def, output15396_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8038]
  try dsimp only
  rw [child15395]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8038_skip, output15395_skip]
  kernel_rfl

theorem node15397_cond_eq
    (child8035 : Flapjack.WordAlloc.removeDeadStructural input8035 value4016 value1 value2 = (output8035, value5, value1))
    (child15396 : Flapjack.WordAlloc.removeDeadStructural input15396 value5 value1 value2 = (output15396, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15397 value4016 value1 value2 = (output15397, value6896, value1) := by
  rw [input15397_def, output15397_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8035]
  try dsimp only
  rw [child15396]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8035_skip, output15396_skip]
  kernel_rfl

theorem node15398_cond_eq
    (child8024 : Flapjack.WordAlloc.removeDeadStructural input8024 value4016 value1 value2 = (output8024, value4016, value1))
    (child15397 : Flapjack.WordAlloc.removeDeadStructural input15397 value4016 value1 value2 = (output15397, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15398 value4016 value1 value2 = (output15398, value6896, value1) := by
  rw [input15398_def, output15398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8024]
  try dsimp only
  rw [child15397]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8024_skip, output15397_skip]
  kernel_rfl

theorem node15399_cond_eq
    (child8023 : Flapjack.WordAlloc.removeDeadStructural input8023 value4015 value1 value2 = (output8023, value4016, value1))
    (child15398 : Flapjack.WordAlloc.removeDeadStructural input15398 value4016 value1 value2 = (output15398, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15399 value4015 value1 value2 = (output15399, value6896, value1) := by
  rw [input15399_def, output15399_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8023]
  try dsimp only
  rw [child15398]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8023_skip, output15398_skip]
  kernel_rfl

theorem node15400_cond_eq
    (child8022 : Flapjack.WordAlloc.removeDeadStructural input8022 value5 value1 value2 = (output8022, value4015, value1))
    (child15399 : Flapjack.WordAlloc.removeDeadStructural input15399 value4015 value1 value2 = (output15399, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15400 value5 value1 value2 = (output15400, value6896, value1) := by
  rw [input15400_def, output15400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8022]
  try dsimp only
  rw [child15399]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8022_skip, output15399_skip]
  kernel_rfl

theorem node15401_cond_eq
    (child8019 : Flapjack.WordAlloc.removeDeadStructural input8019 value4008 value1 value2 = (output8019, value5, value1))
    (child15400 : Flapjack.WordAlloc.removeDeadStructural input15400 value5 value1 value2 = (output15400, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15401 value4008 value1 value2 = (output15401, value6896, value1) := by
  rw [input15401_def, output15401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8019]
  try dsimp only
  rw [child15400]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8019_skip, output15400_skip]
  kernel_rfl

theorem node15402_cond_eq
    (child8008 : Flapjack.WordAlloc.removeDeadStructural input8008 value4008 value1 value2 = (output8008, value4008, value1))
    (child15401 : Flapjack.WordAlloc.removeDeadStructural input15401 value4008 value1 value2 = (output15401, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15402 value4008 value1 value2 = (output15402, value6896, value1) := by
  rw [input15402_def, output15402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8008]
  try dsimp only
  rw [child15401]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8008_skip, output15401_skip]
  kernel_rfl

theorem node15403_cond_eq
    (child8007 : Flapjack.WordAlloc.removeDeadStructural input8007 value4007 value1 value2 = (output8007, value4008, value1))
    (child15402 : Flapjack.WordAlloc.removeDeadStructural input15402 value4008 value1 value2 = (output15402, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15403 value4007 value1 value2 = (output15403, value6896, value1) := by
  rw [input15403_def, output15403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8007]
  try dsimp only
  rw [child15402]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8007_skip, output15402_skip]
  kernel_rfl

theorem node15404_cond_eq
    (child8006 : Flapjack.WordAlloc.removeDeadStructural input8006 value5 value1 value2 = (output8006, value4007, value1))
    (child15403 : Flapjack.WordAlloc.removeDeadStructural input15403 value4007 value1 value2 = (output15403, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15404 value5 value1 value2 = (output15404, value6896, value1) := by
  rw [input15404_def, output15404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8006]
  try dsimp only
  rw [child15403]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8006_skip, output15403_skip]
  kernel_rfl

theorem node15405_cond_eq
    (child8003 : Flapjack.WordAlloc.removeDeadStructural input8003 value4000 value1 value2 = (output8003, value5, value1))
    (child15404 : Flapjack.WordAlloc.removeDeadStructural input15404 value5 value1 value2 = (output15404, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15405 value4000 value1 value2 = (output15405, value6896, value1) := by
  rw [input15405_def, output15405_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8003]
  try dsimp only
  rw [child15404]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8003_skip, output15404_skip]
  kernel_rfl

theorem node15406_cond_eq
    (child7992 : Flapjack.WordAlloc.removeDeadStructural input7992 value4000 value1 value2 = (output7992, value4000, value1))
    (child15405 : Flapjack.WordAlloc.removeDeadStructural input15405 value4000 value1 value2 = (output15405, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15406 value4000 value1 value2 = (output15406, value6896, value1) := by
  rw [input15406_def, output15406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7992]
  try dsimp only
  rw [child15405]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7992_skip, output15405_skip]
  kernel_rfl

theorem node15407_cond_eq
    (child7991 : Flapjack.WordAlloc.removeDeadStructural input7991 value3999 value1 value2 = (output7991, value4000, value1))
    (child15406 : Flapjack.WordAlloc.removeDeadStructural input15406 value4000 value1 value2 = (output15406, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15407 value3999 value1 value2 = (output15407, value6896, value1) := by
  rw [input15407_def, output15407_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7991]
  try dsimp only
  rw [child15406]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7991_skip, output15406_skip]
  kernel_rfl

theorem node15408_cond_eq
    (child7990 : Flapjack.WordAlloc.removeDeadStructural input7990 value5 value1 value2 = (output7990, value3999, value1))
    (child15407 : Flapjack.WordAlloc.removeDeadStructural input15407 value3999 value1 value2 = (output15407, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15408 value5 value1 value2 = (output15408, value6896, value1) := by
  rw [input15408_def, output15408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7990]
  try dsimp only
  rw [child15407]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7990_skip, output15407_skip]
  kernel_rfl

theorem node15409_cond_eq
    (child7987 : Flapjack.WordAlloc.removeDeadStructural input7987 value3992 value1 value2 = (output7987, value5, value1))
    (child15408 : Flapjack.WordAlloc.removeDeadStructural input15408 value5 value1 value2 = (output15408, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15409 value3992 value1 value2 = (output15409, value6896, value1) := by
  rw [input15409_def, output15409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7987]
  try dsimp only
  rw [child15408]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7987_skip, output15408_skip]
  kernel_rfl

theorem node15410_cond_eq
    (child7976 : Flapjack.WordAlloc.removeDeadStructural input7976 value3992 value1 value2 = (output7976, value3992, value1))
    (child15409 : Flapjack.WordAlloc.removeDeadStructural input15409 value3992 value1 value2 = (output15409, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15410 value3992 value1 value2 = (output15410, value6896, value1) := by
  rw [input15410_def, output15410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7976]
  try dsimp only
  rw [child15409]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7976_skip, output15409_skip]
  kernel_rfl

theorem node15411_cond_eq
    (child7975 : Flapjack.WordAlloc.removeDeadStructural input7975 value3991 value1 value2 = (output7975, value3992, value1))
    (child15410 : Flapjack.WordAlloc.removeDeadStructural input15410 value3992 value1 value2 = (output15410, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15411 value3991 value1 value2 = (output15411, value6896, value1) := by
  rw [input15411_def, output15411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7975]
  try dsimp only
  rw [child15410]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7975_skip, output15410_skip]
  kernel_rfl

theorem node15412_cond_eq
    (child7974 : Flapjack.WordAlloc.removeDeadStructural input7974 value5 value1 value2 = (output7974, value3991, value1))
    (child15411 : Flapjack.WordAlloc.removeDeadStructural input15411 value3991 value1 value2 = (output15411, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15412 value5 value1 value2 = (output15412, value6896, value1) := by
  rw [input15412_def, output15412_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7974]
  try dsimp only
  rw [child15411]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7974_skip, output15411_skip]
  kernel_rfl

theorem node15413_cond_eq
    (child7971 : Flapjack.WordAlloc.removeDeadStructural input7971 value3984 value1 value2 = (output7971, value5, value1))
    (child15412 : Flapjack.WordAlloc.removeDeadStructural input15412 value5 value1 value2 = (output15412, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15413 value3984 value1 value2 = (output15413, value6896, value1) := by
  rw [input15413_def, output15413_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7971]
  try dsimp only
  rw [child15412]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7971_skip, output15412_skip]
  kernel_rfl

theorem node15414_cond_eq
    (child7960 : Flapjack.WordAlloc.removeDeadStructural input7960 value3984 value1 value2 = (output7960, value3984, value1))
    (child15413 : Flapjack.WordAlloc.removeDeadStructural input15413 value3984 value1 value2 = (output15413, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15414 value3984 value1 value2 = (output15414, value6896, value1) := by
  rw [input15414_def, output15414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7960]
  try dsimp only
  rw [child15413]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7960_skip, output15413_skip]
  kernel_rfl

theorem node15415_cond_eq
    (child7959 : Flapjack.WordAlloc.removeDeadStructural input7959 value3983 value1 value2 = (output7959, value3984, value1))
    (child15414 : Flapjack.WordAlloc.removeDeadStructural input15414 value3984 value1 value2 = (output15414, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15415 value3983 value1 value2 = (output15415, value6896, value1) := by
  rw [input15415_def, output15415_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7959]
  try dsimp only
  rw [child15414]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7959_skip, output15414_skip]
  kernel_rfl

theorem node15416_cond_eq
    (child7958 : Flapjack.WordAlloc.removeDeadStructural input7958 value5 value1 value2 = (output7958, value3983, value1))
    (child15415 : Flapjack.WordAlloc.removeDeadStructural input15415 value3983 value1 value2 = (output15415, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15416 value5 value1 value2 = (output15416, value6896, value1) := by
  rw [input15416_def, output15416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7958]
  try dsimp only
  rw [child15415]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7958_skip, output15415_skip]
  kernel_rfl

theorem node15417_cond_eq
    (child7955 : Flapjack.WordAlloc.removeDeadStructural input7955 value3976 value1 value2 = (output7955, value5, value1))
    (child15416 : Flapjack.WordAlloc.removeDeadStructural input15416 value5 value1 value2 = (output15416, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15417 value3976 value1 value2 = (output15417, value6896, value1) := by
  rw [input15417_def, output15417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7955]
  try dsimp only
  rw [child15416]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7955_skip, output15416_skip]
  kernel_rfl

theorem node15418_cond_eq
    (child7944 : Flapjack.WordAlloc.removeDeadStructural input7944 value3976 value1 value2 = (output7944, value3976, value1))
    (child15417 : Flapjack.WordAlloc.removeDeadStructural input15417 value3976 value1 value2 = (output15417, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15418 value3976 value1 value2 = (output15418, value6896, value1) := by
  rw [input15418_def, output15418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7944]
  try dsimp only
  rw [child15417]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7944_skip, output15417_skip]
  kernel_rfl

theorem node15419_cond_eq
    (child7943 : Flapjack.WordAlloc.removeDeadStructural input7943 value3975 value1 value2 = (output7943, value3976, value1))
    (child15418 : Flapjack.WordAlloc.removeDeadStructural input15418 value3976 value1 value2 = (output15418, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15419 value3975 value1 value2 = (output15419, value6896, value1) := by
  rw [input15419_def, output15419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7943]
  try dsimp only
  rw [child15418]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7943_skip, output15418_skip]
  kernel_rfl

theorem node15420_cond_eq
    (child7942 : Flapjack.WordAlloc.removeDeadStructural input7942 value5 value1 value2 = (output7942, value3975, value1))
    (child15419 : Flapjack.WordAlloc.removeDeadStructural input15419 value3975 value1 value2 = (output15419, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15420 value5 value1 value2 = (output15420, value6896, value1) := by
  rw [input15420_def, output15420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7942]
  try dsimp only
  rw [child15419]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7942_skip, output15419_skip]
  kernel_rfl

theorem node15421_cond_eq
    (child7939 : Flapjack.WordAlloc.removeDeadStructural input7939 value3968 value1 value2 = (output7939, value5, value1))
    (child15420 : Flapjack.WordAlloc.removeDeadStructural input15420 value5 value1 value2 = (output15420, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15421 value3968 value1 value2 = (output15421, value6896, value1) := by
  rw [input15421_def, output15421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7939]
  try dsimp only
  rw [child15420]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7939_skip, output15420_skip]
  kernel_rfl

theorem node15422_cond_eq
    (child7928 : Flapjack.WordAlloc.removeDeadStructural input7928 value3968 value1 value2 = (output7928, value3968, value1))
    (child15421 : Flapjack.WordAlloc.removeDeadStructural input15421 value3968 value1 value2 = (output15421, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15422 value3968 value1 value2 = (output15422, value6896, value1) := by
  rw [input15422_def, output15422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7928]
  try dsimp only
  rw [child15421]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7928_skip, output15421_skip]
  kernel_rfl

theorem node15423_cond_eq
    (child7927 : Flapjack.WordAlloc.removeDeadStructural input7927 value3967 value1 value2 = (output7927, value3968, value1))
    (child15422 : Flapjack.WordAlloc.removeDeadStructural input15422 value3968 value1 value2 = (output15422, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15423 value3967 value1 value2 = (output15423, value6896, value1) := by
  rw [input15423_def, output15423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7927]
  try dsimp only
  rw [child15422]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7927_skip, output15422_skip]
  kernel_rfl

theorem node15424_cond_eq
    (child7926 : Flapjack.WordAlloc.removeDeadStructural input7926 value5 value1 value2 = (output7926, value3967, value1))
    (child15423 : Flapjack.WordAlloc.removeDeadStructural input15423 value3967 value1 value2 = (output15423, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15424 value5 value1 value2 = (output15424, value6896, value1) := by
  rw [input15424_def, output15424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7926]
  try dsimp only
  rw [child15423]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7926_skip, output15423_skip]
  kernel_rfl

theorem node15425_cond_eq
    (child7923 : Flapjack.WordAlloc.removeDeadStructural input7923 value3960 value1 value2 = (output7923, value5, value1))
    (child15424 : Flapjack.WordAlloc.removeDeadStructural input15424 value5 value1 value2 = (output15424, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15425 value3960 value1 value2 = (output15425, value6896, value1) := by
  rw [input15425_def, output15425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7923]
  try dsimp only
  rw [child15424]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7923_skip, output15424_skip]
  kernel_rfl

theorem node15426_cond_eq
    (child7912 : Flapjack.WordAlloc.removeDeadStructural input7912 value3960 value1 value2 = (output7912, value3960, value1))
    (child15425 : Flapjack.WordAlloc.removeDeadStructural input15425 value3960 value1 value2 = (output15425, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15426 value3960 value1 value2 = (output15426, value6896, value1) := by
  rw [input15426_def, output15426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7912]
  try dsimp only
  rw [child15425]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7912_skip, output15425_skip]
  kernel_rfl

theorem node15427_cond_eq
    (child7911 : Flapjack.WordAlloc.removeDeadStructural input7911 value3959 value1 value2 = (output7911, value3960, value1))
    (child15426 : Flapjack.WordAlloc.removeDeadStructural input15426 value3960 value1 value2 = (output15426, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15427 value3959 value1 value2 = (output15427, value6896, value1) := by
  rw [input15427_def, output15427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7911]
  try dsimp only
  rw [child15426]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7911_skip, output15426_skip]
  kernel_rfl

theorem node15428_cond_eq
    (child7910 : Flapjack.WordAlloc.removeDeadStructural input7910 value5 value1 value2 = (output7910, value3959, value1))
    (child15427 : Flapjack.WordAlloc.removeDeadStructural input15427 value3959 value1 value2 = (output15427, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15428 value5 value1 value2 = (output15428, value6896, value1) := by
  rw [input15428_def, output15428_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7910]
  try dsimp only
  rw [child15427]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7910_skip, output15427_skip]
  kernel_rfl

theorem node15429_cond_eq
    (child7907 : Flapjack.WordAlloc.removeDeadStructural input7907 value3952 value1 value2 = (output7907, value5, value1))
    (child15428 : Flapjack.WordAlloc.removeDeadStructural input15428 value5 value1 value2 = (output15428, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15429 value3952 value1 value2 = (output15429, value6896, value1) := by
  rw [input15429_def, output15429_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7907]
  try dsimp only
  rw [child15428]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7907_skip, output15428_skip]
  kernel_rfl

theorem node15430_cond_eq
    (child7896 : Flapjack.WordAlloc.removeDeadStructural input7896 value3952 value1 value2 = (output7896, value3952, value1))
    (child15429 : Flapjack.WordAlloc.removeDeadStructural input15429 value3952 value1 value2 = (output15429, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15430 value3952 value1 value2 = (output15430, value6896, value1) := by
  rw [input15430_def, output15430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7896]
  try dsimp only
  rw [child15429]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7896_skip, output15429_skip]
  kernel_rfl

theorem node15431_cond_eq
    (child7895 : Flapjack.WordAlloc.removeDeadStructural input7895 value3951 value1 value2 = (output7895, value3952, value1))
    (child15430 : Flapjack.WordAlloc.removeDeadStructural input15430 value3952 value1 value2 = (output15430, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15431 value3951 value1 value2 = (output15431, value6896, value1) := by
  rw [input15431_def, output15431_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7895]
  try dsimp only
  rw [child15430]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7895_skip, output15430_skip]
  kernel_rfl

theorem node15432_cond_eq
    (child7894 : Flapjack.WordAlloc.removeDeadStructural input7894 value5 value1 value2 = (output7894, value3951, value1))
    (child15431 : Flapjack.WordAlloc.removeDeadStructural input15431 value3951 value1 value2 = (output15431, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15432 value5 value1 value2 = (output15432, value6896, value1) := by
  rw [input15432_def, output15432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7894]
  try dsimp only
  rw [child15431]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7894_skip, output15431_skip]
  kernel_rfl

theorem node15433_cond_eq
    (child7891 : Flapjack.WordAlloc.removeDeadStructural input7891 value3944 value1 value2 = (output7891, value5, value1))
    (child15432 : Flapjack.WordAlloc.removeDeadStructural input15432 value5 value1 value2 = (output15432, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15433 value3944 value1 value2 = (output15433, value6896, value1) := by
  rw [input15433_def, output15433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7891]
  try dsimp only
  rw [child15432]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7891_skip, output15432_skip]
  kernel_rfl

theorem node15434_cond_eq
    (child7880 : Flapjack.WordAlloc.removeDeadStructural input7880 value3944 value1 value2 = (output7880, value3944, value1))
    (child15433 : Flapjack.WordAlloc.removeDeadStructural input15433 value3944 value1 value2 = (output15433, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15434 value3944 value1 value2 = (output15434, value6896, value1) := by
  rw [input15434_def, output15434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7880]
  try dsimp only
  rw [child15433]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7880_skip, output15433_skip]
  kernel_rfl

theorem node15435_cond_eq
    (child7879 : Flapjack.WordAlloc.removeDeadStructural input7879 value3943 value1 value2 = (output7879, value3944, value1))
    (child15434 : Flapjack.WordAlloc.removeDeadStructural input15434 value3944 value1 value2 = (output15434, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15435 value3943 value1 value2 = (output15435, value6896, value1) := by
  rw [input15435_def, output15435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7879]
  try dsimp only
  rw [child15434]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7879_skip, output15434_skip]
  kernel_rfl

theorem node15436_cond_eq
    (child7878 : Flapjack.WordAlloc.removeDeadStructural input7878 value5 value1 value2 = (output7878, value3943, value1))
    (child15435 : Flapjack.WordAlloc.removeDeadStructural input15435 value3943 value1 value2 = (output15435, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15436 value5 value1 value2 = (output15436, value6896, value1) := by
  rw [input15436_def, output15436_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7878]
  try dsimp only
  rw [child15435]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7878_skip, output15435_skip]
  kernel_rfl

theorem node15437_cond_eq
    (child7875 : Flapjack.WordAlloc.removeDeadStructural input7875 value3936 value1 value2 = (output7875, value5, value1))
    (child15436 : Flapjack.WordAlloc.removeDeadStructural input15436 value5 value1 value2 = (output15436, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15437 value3936 value1 value2 = (output15437, value6896, value1) := by
  rw [input15437_def, output15437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7875]
  try dsimp only
  rw [child15436]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7875_skip, output15436_skip]
  kernel_rfl

theorem node15438_cond_eq
    (child7864 : Flapjack.WordAlloc.removeDeadStructural input7864 value3936 value1 value2 = (output7864, value3936, value1))
    (child15437 : Flapjack.WordAlloc.removeDeadStructural input15437 value3936 value1 value2 = (output15437, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15438 value3936 value1 value2 = (output15438, value6896, value1) := by
  rw [input15438_def, output15438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7864]
  try dsimp only
  rw [child15437]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7864_skip, output15437_skip]
  kernel_rfl

theorem node15439_cond_eq
    (child7863 : Flapjack.WordAlloc.removeDeadStructural input7863 value3935 value1 value2 = (output7863, value3936, value1))
    (child15438 : Flapjack.WordAlloc.removeDeadStructural input15438 value3936 value1 value2 = (output15438, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15439 value3935 value1 value2 = (output15439, value6896, value1) := by
  rw [input15439_def, output15439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7863]
  try dsimp only
  rw [child15438]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7863_skip, output15438_skip]
  kernel_rfl

theorem node15440_cond_eq
    (child7862 : Flapjack.WordAlloc.removeDeadStructural input7862 value5 value1 value2 = (output7862, value3935, value1))
    (child15439 : Flapjack.WordAlloc.removeDeadStructural input15439 value3935 value1 value2 = (output15439, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15440 value5 value1 value2 = (output15440, value6896, value1) := by
  rw [input15440_def, output15440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7862]
  try dsimp only
  rw [child15439]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7862_skip, output15439_skip]
  kernel_rfl

theorem node15441_cond_eq
    (child7859 : Flapjack.WordAlloc.removeDeadStructural input7859 value3928 value1 value2 = (output7859, value5, value1))
    (child15440 : Flapjack.WordAlloc.removeDeadStructural input15440 value5 value1 value2 = (output15440, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15441 value3928 value1 value2 = (output15441, value6896, value1) := by
  rw [input15441_def, output15441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7859]
  try dsimp only
  rw [child15440]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7859_skip, output15440_skip]
  kernel_rfl

theorem node15442_cond_eq
    (child7848 : Flapjack.WordAlloc.removeDeadStructural input7848 value3928 value1 value2 = (output7848, value3928, value1))
    (child15441 : Flapjack.WordAlloc.removeDeadStructural input15441 value3928 value1 value2 = (output15441, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15442 value3928 value1 value2 = (output15442, value6896, value1) := by
  rw [input15442_def, output15442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7848]
  try dsimp only
  rw [child15441]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7848_skip, output15441_skip]
  kernel_rfl

theorem node15443_cond_eq
    (child7847 : Flapjack.WordAlloc.removeDeadStructural input7847 value3927 value1 value2 = (output7847, value3928, value1))
    (child15442 : Flapjack.WordAlloc.removeDeadStructural input15442 value3928 value1 value2 = (output15442, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15443 value3927 value1 value2 = (output15443, value6896, value1) := by
  rw [input15443_def, output15443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7847]
  try dsimp only
  rw [child15442]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7847_skip, output15442_skip]
  kernel_rfl

theorem node15444_cond_eq
    (child7846 : Flapjack.WordAlloc.removeDeadStructural input7846 value5 value1 value2 = (output7846, value3927, value1))
    (child15443 : Flapjack.WordAlloc.removeDeadStructural input15443 value3927 value1 value2 = (output15443, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15444 value5 value1 value2 = (output15444, value6896, value1) := by
  rw [input15444_def, output15444_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7846]
  try dsimp only
  rw [child15443]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7846_skip, output15443_skip]
  kernel_rfl

theorem node15445_cond_eq
    (child7843 : Flapjack.WordAlloc.removeDeadStructural input7843 value3920 value1 value2 = (output7843, value5, value1))
    (child15444 : Flapjack.WordAlloc.removeDeadStructural input15444 value5 value1 value2 = (output15444, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15445 value3920 value1 value2 = (output15445, value6896, value1) := by
  rw [input15445_def, output15445_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7843]
  try dsimp only
  rw [child15444]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7843_skip, output15444_skip]
  kernel_rfl

theorem node15446_cond_eq
    (child7832 : Flapjack.WordAlloc.removeDeadStructural input7832 value3920 value1 value2 = (output7832, value3920, value1))
    (child15445 : Flapjack.WordAlloc.removeDeadStructural input15445 value3920 value1 value2 = (output15445, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15446 value3920 value1 value2 = (output15446, value6896, value1) := by
  rw [input15446_def, output15446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7832]
  try dsimp only
  rw [child15445]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7832_skip, output15445_skip]
  kernel_rfl

theorem node15447_cond_eq
    (child7831 : Flapjack.WordAlloc.removeDeadStructural input7831 value3919 value1 value2 = (output7831, value3920, value1))
    (child15446 : Flapjack.WordAlloc.removeDeadStructural input15446 value3920 value1 value2 = (output15446, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15447 value3919 value1 value2 = (output15447, value6896, value1) := by
  rw [input15447_def, output15447_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7831]
  try dsimp only
  rw [child15446]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7831_skip, output15446_skip]
  kernel_rfl

theorem node15448_cond_eq
    (child7830 : Flapjack.WordAlloc.removeDeadStructural input7830 value5 value1 value2 = (output7830, value3919, value1))
    (child15447 : Flapjack.WordAlloc.removeDeadStructural input15447 value3919 value1 value2 = (output15447, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15448 value5 value1 value2 = (output15448, value6896, value1) := by
  rw [input15448_def, output15448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7830]
  try dsimp only
  rw [child15447]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7830_skip, output15447_skip]
  kernel_rfl

theorem node15449_cond_eq
    (child7827 : Flapjack.WordAlloc.removeDeadStructural input7827 value3912 value1 value2 = (output7827, value5, value1))
    (child15448 : Flapjack.WordAlloc.removeDeadStructural input15448 value5 value1 value2 = (output15448, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15449 value3912 value1 value2 = (output15449, value6896, value1) := by
  rw [input15449_def, output15449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7827]
  try dsimp only
  rw [child15448]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7827_skip, output15448_skip]
  kernel_rfl

theorem node15450_cond_eq
    (child7816 : Flapjack.WordAlloc.removeDeadStructural input7816 value3912 value1 value2 = (output7816, value3912, value1))
    (child15449 : Flapjack.WordAlloc.removeDeadStructural input15449 value3912 value1 value2 = (output15449, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15450 value3912 value1 value2 = (output15450, value6896, value1) := by
  rw [input15450_def, output15450_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7816]
  try dsimp only
  rw [child15449]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7816_skip, output15449_skip]
  kernel_rfl

theorem node15451_cond_eq
    (child7815 : Flapjack.WordAlloc.removeDeadStructural input7815 value3911 value1 value2 = (output7815, value3912, value1))
    (child15450 : Flapjack.WordAlloc.removeDeadStructural input15450 value3912 value1 value2 = (output15450, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15451 value3911 value1 value2 = (output15451, value6896, value1) := by
  rw [input15451_def, output15451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7815]
  try dsimp only
  rw [child15450]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7815_skip, output15450_skip]
  kernel_rfl

theorem node15452_cond_eq
    (child7814 : Flapjack.WordAlloc.removeDeadStructural input7814 value5 value1 value2 = (output7814, value3911, value1))
    (child15451 : Flapjack.WordAlloc.removeDeadStructural input15451 value3911 value1 value2 = (output15451, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15452 value5 value1 value2 = (output15452, value6896, value1) := by
  rw [input15452_def, output15452_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7814]
  try dsimp only
  rw [child15451]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7814_skip, output15451_skip]
  kernel_rfl

theorem node15453_cond_eq
    (child7811 : Flapjack.WordAlloc.removeDeadStructural input7811 value3904 value1 value2 = (output7811, value5, value1))
    (child15452 : Flapjack.WordAlloc.removeDeadStructural input15452 value5 value1 value2 = (output15452, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15453 value3904 value1 value2 = (output15453, value6896, value1) := by
  rw [input15453_def, output15453_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7811]
  try dsimp only
  rw [child15452]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7811_skip, output15452_skip]
  kernel_rfl

theorem node15454_cond_eq
    (child7800 : Flapjack.WordAlloc.removeDeadStructural input7800 value3904 value1 value2 = (output7800, value3904, value1))
    (child15453 : Flapjack.WordAlloc.removeDeadStructural input15453 value3904 value1 value2 = (output15453, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15454 value3904 value1 value2 = (output15454, value6896, value1) := by
  rw [input15454_def, output15454_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7800]
  try dsimp only
  rw [child15453]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7800_skip, output15453_skip]
  kernel_rfl

theorem node15455_cond_eq
    (child7799 : Flapjack.WordAlloc.removeDeadStructural input7799 value3903 value1 value2 = (output7799, value3904, value1))
    (child15454 : Flapjack.WordAlloc.removeDeadStructural input15454 value3904 value1 value2 = (output15454, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15455 value3903 value1 value2 = (output15455, value6896, value1) := by
  rw [input15455_def, output15455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7799]
  try dsimp only
  rw [child15454]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7799_skip, output15454_skip]
  kernel_rfl

theorem node15456_cond_eq
    (child7798 : Flapjack.WordAlloc.removeDeadStructural input7798 value5 value1 value2 = (output7798, value3903, value1))
    (child15455 : Flapjack.WordAlloc.removeDeadStructural input15455 value3903 value1 value2 = (output15455, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15456 value5 value1 value2 = (output15456, value6896, value1) := by
  rw [input15456_def, output15456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7798]
  try dsimp only
  rw [child15455]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7798_skip, output15455_skip]
  kernel_rfl

theorem node15457_cond_eq
    (child7795 : Flapjack.WordAlloc.removeDeadStructural input7795 value3896 value1 value2 = (output7795, value5, value1))
    (child15456 : Flapjack.WordAlloc.removeDeadStructural input15456 value5 value1 value2 = (output15456, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15457 value3896 value1 value2 = (output15457, value6896, value1) := by
  rw [input15457_def, output15457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7795]
  try dsimp only
  rw [child15456]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7795_skip, output15456_skip]
  kernel_rfl

theorem node15458_cond_eq
    (child7784 : Flapjack.WordAlloc.removeDeadStructural input7784 value3896 value1 value2 = (output7784, value3896, value1))
    (child15457 : Flapjack.WordAlloc.removeDeadStructural input15457 value3896 value1 value2 = (output15457, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15458 value3896 value1 value2 = (output15458, value6896, value1) := by
  rw [input15458_def, output15458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7784]
  try dsimp only
  rw [child15457]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7784_skip, output15457_skip]
  kernel_rfl

theorem node15459_cond_eq
    (child7783 : Flapjack.WordAlloc.removeDeadStructural input7783 value3895 value1 value2 = (output7783, value3896, value1))
    (child15458 : Flapjack.WordAlloc.removeDeadStructural input15458 value3896 value1 value2 = (output15458, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15459 value3895 value1 value2 = (output15459, value6896, value1) := by
  rw [input15459_def, output15459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7783]
  try dsimp only
  rw [child15458]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7783_skip, output15458_skip]
  kernel_rfl

theorem node15460_cond_eq
    (child7782 : Flapjack.WordAlloc.removeDeadStructural input7782 value5 value1 value2 = (output7782, value3895, value1))
    (child15459 : Flapjack.WordAlloc.removeDeadStructural input15459 value3895 value1 value2 = (output15459, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15460 value5 value1 value2 = (output15460, value6896, value1) := by
  rw [input15460_def, output15460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7782]
  try dsimp only
  rw [child15459]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7782_skip, output15459_skip]
  kernel_rfl

theorem node15461_cond_eq
    (child7779 : Flapjack.WordAlloc.removeDeadStructural input7779 value3888 value1 value2 = (output7779, value5, value1))
    (child15460 : Flapjack.WordAlloc.removeDeadStructural input15460 value5 value1 value2 = (output15460, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15461 value3888 value1 value2 = (output15461, value6896, value1) := by
  rw [input15461_def, output15461_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7779]
  try dsimp only
  rw [child15460]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7779_skip, output15460_skip]
  kernel_rfl

theorem node15462_cond_eq
    (child7768 : Flapjack.WordAlloc.removeDeadStructural input7768 value3888 value1 value2 = (output7768, value3888, value1))
    (child15461 : Flapjack.WordAlloc.removeDeadStructural input15461 value3888 value1 value2 = (output15461, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15462 value3888 value1 value2 = (output15462, value6896, value1) := by
  rw [input15462_def, output15462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7768]
  try dsimp only
  rw [child15461]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7768_skip, output15461_skip]
  kernel_rfl

theorem node15463_cond_eq
    (child7767 : Flapjack.WordAlloc.removeDeadStructural input7767 value3887 value1 value2 = (output7767, value3888, value1))
    (child15462 : Flapjack.WordAlloc.removeDeadStructural input15462 value3888 value1 value2 = (output15462, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15463 value3887 value1 value2 = (output15463, value6896, value1) := by
  rw [input15463_def, output15463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7767]
  try dsimp only
  rw [child15462]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7767_skip, output15462_skip]
  kernel_rfl

theorem node15464_cond_eq
    (child7766 : Flapjack.WordAlloc.removeDeadStructural input7766 value5 value1 value2 = (output7766, value3887, value1))
    (child15463 : Flapjack.WordAlloc.removeDeadStructural input15463 value3887 value1 value2 = (output15463, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15464 value5 value1 value2 = (output15464, value6896, value1) := by
  rw [input15464_def, output15464_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7766]
  try dsimp only
  rw [child15463]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7766_skip, output15463_skip]
  kernel_rfl

theorem node15465_cond_eq
    (child7763 : Flapjack.WordAlloc.removeDeadStructural input7763 value3880 value1 value2 = (output7763, value5, value1))
    (child15464 : Flapjack.WordAlloc.removeDeadStructural input15464 value5 value1 value2 = (output15464, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15465 value3880 value1 value2 = (output15465, value6896, value1) := by
  rw [input15465_def, output15465_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7763]
  try dsimp only
  rw [child15464]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7763_skip, output15464_skip]
  kernel_rfl

theorem node15466_cond_eq
    (child7752 : Flapjack.WordAlloc.removeDeadStructural input7752 value3880 value1 value2 = (output7752, value3880, value1))
    (child15465 : Flapjack.WordAlloc.removeDeadStructural input15465 value3880 value1 value2 = (output15465, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15466 value3880 value1 value2 = (output15466, value6896, value1) := by
  rw [input15466_def, output15466_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7752]
  try dsimp only
  rw [child15465]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7752_skip, output15465_skip]
  kernel_rfl

theorem node15467_cond_eq
    (child7751 : Flapjack.WordAlloc.removeDeadStructural input7751 value3879 value1 value2 = (output7751, value3880, value1))
    (child15466 : Flapjack.WordAlloc.removeDeadStructural input15466 value3880 value1 value2 = (output15466, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15467 value3879 value1 value2 = (output15467, value6896, value1) := by
  rw [input15467_def, output15467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7751]
  try dsimp only
  rw [child15466]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7751_skip, output15466_skip]
  kernel_rfl

theorem node15468_cond_eq
    (child7750 : Flapjack.WordAlloc.removeDeadStructural input7750 value5 value1 value2 = (output7750, value3879, value1))
    (child15467 : Flapjack.WordAlloc.removeDeadStructural input15467 value3879 value1 value2 = (output15467, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15468 value5 value1 value2 = (output15468, value6896, value1) := by
  rw [input15468_def, output15468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7750]
  try dsimp only
  rw [child15467]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7750_skip, output15467_skip]
  kernel_rfl

theorem node15469_cond_eq
    (child7747 : Flapjack.WordAlloc.removeDeadStructural input7747 value3872 value1 value2 = (output7747, value5, value1))
    (child15468 : Flapjack.WordAlloc.removeDeadStructural input15468 value5 value1 value2 = (output15468, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15469 value3872 value1 value2 = (output15469, value6896, value1) := by
  rw [input15469_def, output15469_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7747]
  try dsimp only
  rw [child15468]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7747_skip, output15468_skip]
  kernel_rfl

theorem node15470_cond_eq
    (child7736 : Flapjack.WordAlloc.removeDeadStructural input7736 value3872 value1 value2 = (output7736, value3872, value1))
    (child15469 : Flapjack.WordAlloc.removeDeadStructural input15469 value3872 value1 value2 = (output15469, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15470 value3872 value1 value2 = (output15470, value6896, value1) := by
  rw [input15470_def, output15470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7736]
  try dsimp only
  rw [child15469]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7736_skip, output15469_skip]
  kernel_rfl

theorem node15471_cond_eq
    (child7735 : Flapjack.WordAlloc.removeDeadStructural input7735 value3871 value1 value2 = (output7735, value3872, value1))
    (child15470 : Flapjack.WordAlloc.removeDeadStructural input15470 value3872 value1 value2 = (output15470, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15471 value3871 value1 value2 = (output15471, value6896, value1) := by
  rw [input15471_def, output15471_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7735]
  try dsimp only
  rw [child15470]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7735_skip, output15470_skip]
  kernel_rfl

theorem node15472_cond_eq
    (child7734 : Flapjack.WordAlloc.removeDeadStructural input7734 value5 value1 value2 = (output7734, value3871, value1))
    (child15471 : Flapjack.WordAlloc.removeDeadStructural input15471 value3871 value1 value2 = (output15471, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15472 value5 value1 value2 = (output15472, value6896, value1) := by
  rw [input15472_def, output15472_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7734]
  try dsimp only
  rw [child15471]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7734_skip, output15471_skip]
  kernel_rfl

theorem node15473_cond_eq
    (child7731 : Flapjack.WordAlloc.removeDeadStructural input7731 value3864 value1 value2 = (output7731, value5, value1))
    (child15472 : Flapjack.WordAlloc.removeDeadStructural input15472 value5 value1 value2 = (output15472, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15473 value3864 value1 value2 = (output15473, value6896, value1) := by
  rw [input15473_def, output15473_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7731]
  try dsimp only
  rw [child15472]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7731_skip, output15472_skip]
  kernel_rfl

theorem node15474_cond_eq
    (child7720 : Flapjack.WordAlloc.removeDeadStructural input7720 value3864 value1 value2 = (output7720, value3864, value1))
    (child15473 : Flapjack.WordAlloc.removeDeadStructural input15473 value3864 value1 value2 = (output15473, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15474 value3864 value1 value2 = (output15474, value6896, value1) := by
  rw [input15474_def, output15474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7720]
  try dsimp only
  rw [child15473]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7720_skip, output15473_skip]
  kernel_rfl

theorem node15475_cond_eq
    (child7719 : Flapjack.WordAlloc.removeDeadStructural input7719 value3863 value1 value2 = (output7719, value3864, value1))
    (child15474 : Flapjack.WordAlloc.removeDeadStructural input15474 value3864 value1 value2 = (output15474, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15475 value3863 value1 value2 = (output15475, value6896, value1) := by
  rw [input15475_def, output15475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7719]
  try dsimp only
  rw [child15474]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7719_skip, output15474_skip]
  kernel_rfl

theorem node15476_cond_eq
    (child7718 : Flapjack.WordAlloc.removeDeadStructural input7718 value5 value1 value2 = (output7718, value3863, value1))
    (child15475 : Flapjack.WordAlloc.removeDeadStructural input15475 value3863 value1 value2 = (output15475, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15476 value5 value1 value2 = (output15476, value6896, value1) := by
  rw [input15476_def, output15476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7718]
  try dsimp only
  rw [child15475]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7718_skip, output15475_skip]
  kernel_rfl

theorem node15477_cond_eq
    (child7715 : Flapjack.WordAlloc.removeDeadStructural input7715 value3856 value1 value2 = (output7715, value5, value1))
    (child15476 : Flapjack.WordAlloc.removeDeadStructural input15476 value5 value1 value2 = (output15476, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15477 value3856 value1 value2 = (output15477, value6896, value1) := by
  rw [input15477_def, output15477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7715]
  try dsimp only
  rw [child15476]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7715_skip, output15476_skip]
  kernel_rfl

theorem node15478_cond_eq
    (child7704 : Flapjack.WordAlloc.removeDeadStructural input7704 value3856 value1 value2 = (output7704, value3856, value1))
    (child15477 : Flapjack.WordAlloc.removeDeadStructural input15477 value3856 value1 value2 = (output15477, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15478 value3856 value1 value2 = (output15478, value6896, value1) := by
  rw [input15478_def, output15478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7704]
  try dsimp only
  rw [child15477]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7704_skip, output15477_skip]
  kernel_rfl

theorem node15479_cond_eq
    (child7703 : Flapjack.WordAlloc.removeDeadStructural input7703 value3855 value1 value2 = (output7703, value3856, value1))
    (child15478 : Flapjack.WordAlloc.removeDeadStructural input15478 value3856 value1 value2 = (output15478, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15479 value3855 value1 value2 = (output15479, value6896, value1) := by
  rw [input15479_def, output15479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7703]
  try dsimp only
  rw [child15478]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7703_skip, output15478_skip]
  kernel_rfl

theorem node15480_cond_eq
    (child7702 : Flapjack.WordAlloc.removeDeadStructural input7702 value5 value1 value2 = (output7702, value3855, value1))
    (child15479 : Flapjack.WordAlloc.removeDeadStructural input15479 value3855 value1 value2 = (output15479, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15480 value5 value1 value2 = (output15480, value6896, value1) := by
  rw [input15480_def, output15480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7702]
  try dsimp only
  rw [child15479]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7702_skip, output15479_skip]
  kernel_rfl

theorem node15481_cond_eq
    (child7699 : Flapjack.WordAlloc.removeDeadStructural input7699 value3848 value1 value2 = (output7699, value5, value1))
    (child15480 : Flapjack.WordAlloc.removeDeadStructural input15480 value5 value1 value2 = (output15480, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15481 value3848 value1 value2 = (output15481, value6896, value1) := by
  rw [input15481_def, output15481_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7699]
  try dsimp only
  rw [child15480]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7699_skip, output15480_skip]
  kernel_rfl

theorem node15482_cond_eq
    (child7688 : Flapjack.WordAlloc.removeDeadStructural input7688 value3848 value1 value2 = (output7688, value3848, value1))
    (child15481 : Flapjack.WordAlloc.removeDeadStructural input15481 value3848 value1 value2 = (output15481, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15482 value3848 value1 value2 = (output15482, value6896, value1) := by
  rw [input15482_def, output15482_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7688]
  try dsimp only
  rw [child15481]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7688_skip, output15481_skip]
  kernel_rfl

theorem node15483_cond_eq
    (child7687 : Flapjack.WordAlloc.removeDeadStructural input7687 value3847 value1 value2 = (output7687, value3848, value1))
    (child15482 : Flapjack.WordAlloc.removeDeadStructural input15482 value3848 value1 value2 = (output15482, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15483 value3847 value1 value2 = (output15483, value6896, value1) := by
  rw [input15483_def, output15483_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7687]
  try dsimp only
  rw [child15482]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7687_skip, output15482_skip]
  kernel_rfl

theorem node15484_cond_eq
    (child7686 : Flapjack.WordAlloc.removeDeadStructural input7686 value5 value1 value2 = (output7686, value3847, value1))
    (child15483 : Flapjack.WordAlloc.removeDeadStructural input15483 value3847 value1 value2 = (output15483, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15484 value5 value1 value2 = (output15484, value6896, value1) := by
  rw [input15484_def, output15484_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7686]
  try dsimp only
  rw [child15483]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7686_skip, output15483_skip]
  kernel_rfl

theorem node15485_cond_eq
    (child7683 : Flapjack.WordAlloc.removeDeadStructural input7683 value3840 value1 value2 = (output7683, value5, value1))
    (child15484 : Flapjack.WordAlloc.removeDeadStructural input15484 value5 value1 value2 = (output15484, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15485 value3840 value1 value2 = (output15485, value6896, value1) := by
  rw [input15485_def, output15485_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7683]
  try dsimp only
  rw [child15484]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7683_skip, output15484_skip]
  kernel_rfl

theorem node15486_cond_eq
    (child7672 : Flapjack.WordAlloc.removeDeadStructural input7672 value3840 value1 value2 = (output7672, value3840, value1))
    (child15485 : Flapjack.WordAlloc.removeDeadStructural input15485 value3840 value1 value2 = (output15485, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15486 value3840 value1 value2 = (output15486, value6896, value1) := by
  rw [input15486_def, output15486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7672]
  try dsimp only
  rw [child15485]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7672_skip, output15485_skip]
  kernel_rfl

theorem node15487_cond_eq
    (child7671 : Flapjack.WordAlloc.removeDeadStructural input7671 value3839 value1 value2 = (output7671, value3840, value1))
    (child15486 : Flapjack.WordAlloc.removeDeadStructural input15486 value3840 value1 value2 = (output15486, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15487 value3839 value1 value2 = (output15487, value6896, value1) := by
  rw [input15487_def, output15487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7671]
  try dsimp only
  rw [child15486]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7671_skip, output15486_skip]
  kernel_rfl

theorem node15488_cond_eq
    (child7670 : Flapjack.WordAlloc.removeDeadStructural input7670 value5 value1 value2 = (output7670, value3839, value1))
    (child15487 : Flapjack.WordAlloc.removeDeadStructural input15487 value3839 value1 value2 = (output15487, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15488 value5 value1 value2 = (output15488, value6896, value1) := by
  rw [input15488_def, output15488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7670]
  try dsimp only
  rw [child15487]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7670_skip, output15487_skip]
  kernel_rfl

theorem node15489_cond_eq
    (child7667 : Flapjack.WordAlloc.removeDeadStructural input7667 value3832 value1 value2 = (output7667, value5, value1))
    (child15488 : Flapjack.WordAlloc.removeDeadStructural input15488 value5 value1 value2 = (output15488, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15489 value3832 value1 value2 = (output15489, value6896, value1) := by
  rw [input15489_def, output15489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7667]
  try dsimp only
  rw [child15488]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7667_skip, output15488_skip]
  kernel_rfl

theorem node15490_cond_eq
    (child7656 : Flapjack.WordAlloc.removeDeadStructural input7656 value3832 value1 value2 = (output7656, value3832, value1))
    (child15489 : Flapjack.WordAlloc.removeDeadStructural input15489 value3832 value1 value2 = (output15489, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15490 value3832 value1 value2 = (output15490, value6896, value1) := by
  rw [input15490_def, output15490_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7656]
  try dsimp only
  rw [child15489]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7656_skip, output15489_skip]
  kernel_rfl

theorem node15491_cond_eq
    (child7655 : Flapjack.WordAlloc.removeDeadStructural input7655 value3831 value1 value2 = (output7655, value3832, value1))
    (child15490 : Flapjack.WordAlloc.removeDeadStructural input15490 value3832 value1 value2 = (output15490, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15491 value3831 value1 value2 = (output15491, value6896, value1) := by
  rw [input15491_def, output15491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7655]
  try dsimp only
  rw [child15490]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7655_skip, output15490_skip]
  kernel_rfl

theorem node15492_cond_eq
    (child7654 : Flapjack.WordAlloc.removeDeadStructural input7654 value5 value1 value2 = (output7654, value3831, value1))
    (child15491 : Flapjack.WordAlloc.removeDeadStructural input15491 value3831 value1 value2 = (output15491, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15492 value5 value1 value2 = (output15492, value6896, value1) := by
  rw [input15492_def, output15492_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7654]
  try dsimp only
  rw [child15491]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7654_skip, output15491_skip]
  kernel_rfl

theorem node15493_cond_eq
    (child7651 : Flapjack.WordAlloc.removeDeadStructural input7651 value3824 value1 value2 = (output7651, value5, value1))
    (child15492 : Flapjack.WordAlloc.removeDeadStructural input15492 value5 value1 value2 = (output15492, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15493 value3824 value1 value2 = (output15493, value6896, value1) := by
  rw [input15493_def, output15493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7651]
  try dsimp only
  rw [child15492]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7651_skip, output15492_skip]
  kernel_rfl

theorem node15494_cond_eq
    (child7640 : Flapjack.WordAlloc.removeDeadStructural input7640 value3824 value1 value2 = (output7640, value3824, value1))
    (child15493 : Flapjack.WordAlloc.removeDeadStructural input15493 value3824 value1 value2 = (output15493, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15494 value3824 value1 value2 = (output15494, value6896, value1) := by
  rw [input15494_def, output15494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7640]
  try dsimp only
  rw [child15493]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7640_skip, output15493_skip]
  kernel_rfl

theorem node15495_cond_eq
    (child7639 : Flapjack.WordAlloc.removeDeadStructural input7639 value3823 value1 value2 = (output7639, value3824, value1))
    (child15494 : Flapjack.WordAlloc.removeDeadStructural input15494 value3824 value1 value2 = (output15494, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15495 value3823 value1 value2 = (output15495, value6896, value1) := by
  rw [input15495_def, output15495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7639]
  try dsimp only
  rw [child15494]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7639_skip, output15494_skip]
  kernel_rfl

theorem node15496_cond_eq
    (child7638 : Flapjack.WordAlloc.removeDeadStructural input7638 value5 value1 value2 = (output7638, value3823, value1))
    (child15495 : Flapjack.WordAlloc.removeDeadStructural input15495 value3823 value1 value2 = (output15495, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15496 value5 value1 value2 = (output15496, value6896, value1) := by
  rw [input15496_def, output15496_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7638]
  try dsimp only
  rw [child15495]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7638_skip, output15495_skip]
  kernel_rfl

theorem node15497_cond_eq
    (child7635 : Flapjack.WordAlloc.removeDeadStructural input7635 value3816 value1 value2 = (output7635, value5, value1))
    (child15496 : Flapjack.WordAlloc.removeDeadStructural input15496 value5 value1 value2 = (output15496, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15497 value3816 value1 value2 = (output15497, value6896, value1) := by
  rw [input15497_def, output15497_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7635]
  try dsimp only
  rw [child15496]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7635_skip, output15496_skip]
  kernel_rfl

theorem node15498_cond_eq
    (child7624 : Flapjack.WordAlloc.removeDeadStructural input7624 value3816 value1 value2 = (output7624, value3816, value1))
    (child15497 : Flapjack.WordAlloc.removeDeadStructural input15497 value3816 value1 value2 = (output15497, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15498 value3816 value1 value2 = (output15498, value6896, value1) := by
  rw [input15498_def, output15498_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7624]
  try dsimp only
  rw [child15497]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7624_skip, output15497_skip]
  kernel_rfl

theorem node15499_cond_eq
    (child7623 : Flapjack.WordAlloc.removeDeadStructural input7623 value3815 value1 value2 = (output7623, value3816, value1))
    (child15498 : Flapjack.WordAlloc.removeDeadStructural input15498 value3816 value1 value2 = (output15498, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15499 value3815 value1 value2 = (output15499, value6896, value1) := by
  rw [input15499_def, output15499_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7623]
  try dsimp only
  rw [child15498]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7623_skip, output15498_skip]
  kernel_rfl

theorem node15500_cond_eq
    (child7622 : Flapjack.WordAlloc.removeDeadStructural input7622 value5 value1 value2 = (output7622, value3815, value1))
    (child15499 : Flapjack.WordAlloc.removeDeadStructural input15499 value3815 value1 value2 = (output15499, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15500 value5 value1 value2 = (output15500, value6896, value1) := by
  rw [input15500_def, output15500_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7622]
  try dsimp only
  rw [child15499]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7622_skip, output15499_skip]
  kernel_rfl

theorem node15501_cond_eq
    (child7619 : Flapjack.WordAlloc.removeDeadStructural input7619 value3808 value1 value2 = (output7619, value5, value1))
    (child15500 : Flapjack.WordAlloc.removeDeadStructural input15500 value5 value1 value2 = (output15500, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15501 value3808 value1 value2 = (output15501, value6896, value1) := by
  rw [input15501_def, output15501_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7619]
  try dsimp only
  rw [child15500]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7619_skip, output15500_skip]
  kernel_rfl

theorem node15502_cond_eq
    (child7608 : Flapjack.WordAlloc.removeDeadStructural input7608 value3808 value1 value2 = (output7608, value3808, value1))
    (child15501 : Flapjack.WordAlloc.removeDeadStructural input15501 value3808 value1 value2 = (output15501, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15502 value3808 value1 value2 = (output15502, value6896, value1) := by
  rw [input15502_def, output15502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7608]
  try dsimp only
  rw [child15501]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7608_skip, output15501_skip]
  kernel_rfl

theorem node15503_cond_eq
    (child7607 : Flapjack.WordAlloc.removeDeadStructural input7607 value3807 value1 value2 = (output7607, value3808, value1))
    (child15502 : Flapjack.WordAlloc.removeDeadStructural input15502 value3808 value1 value2 = (output15502, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15503 value3807 value1 value2 = (output15503, value6896, value1) := by
  rw [input15503_def, output15503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7607]
  try dsimp only
  rw [child15502]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7607_skip, output15502_skip]
  kernel_rfl

theorem node15504_cond_eq
    (child7606 : Flapjack.WordAlloc.removeDeadStructural input7606 value5 value1 value2 = (output7606, value3807, value1))
    (child15503 : Flapjack.WordAlloc.removeDeadStructural input15503 value3807 value1 value2 = (output15503, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15504 value5 value1 value2 = (output15504, value6896, value1) := by
  rw [input15504_def, output15504_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7606]
  try dsimp only
  rw [child15503]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7606_skip, output15503_skip]
  kernel_rfl

theorem node15505_cond_eq
    (child7603 : Flapjack.WordAlloc.removeDeadStructural input7603 value3800 value1 value2 = (output7603, value5, value1))
    (child15504 : Flapjack.WordAlloc.removeDeadStructural input15504 value5 value1 value2 = (output15504, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15505 value3800 value1 value2 = (output15505, value6896, value1) := by
  rw [input15505_def, output15505_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7603]
  try dsimp only
  rw [child15504]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7603_skip, output15504_skip]
  kernel_rfl

theorem node15506_cond_eq
    (child7592 : Flapjack.WordAlloc.removeDeadStructural input7592 value3800 value1 value2 = (output7592, value3800, value1))
    (child15505 : Flapjack.WordAlloc.removeDeadStructural input15505 value3800 value1 value2 = (output15505, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15506 value3800 value1 value2 = (output15506, value6896, value1) := by
  rw [input15506_def, output15506_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7592]
  try dsimp only
  rw [child15505]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7592_skip, output15505_skip]
  kernel_rfl

theorem node15507_cond_eq
    (child7591 : Flapjack.WordAlloc.removeDeadStructural input7591 value3799 value1 value2 = (output7591, value3800, value1))
    (child15506 : Flapjack.WordAlloc.removeDeadStructural input15506 value3800 value1 value2 = (output15506, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15507 value3799 value1 value2 = (output15507, value6896, value1) := by
  rw [input15507_def, output15507_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7591]
  try dsimp only
  rw [child15506]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7591_skip, output15506_skip]
  kernel_rfl

theorem node15508_cond_eq
    (child7590 : Flapjack.WordAlloc.removeDeadStructural input7590 value5 value1 value2 = (output7590, value3799, value1))
    (child15507 : Flapjack.WordAlloc.removeDeadStructural input15507 value3799 value1 value2 = (output15507, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15508 value5 value1 value2 = (output15508, value6896, value1) := by
  rw [input15508_def, output15508_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7590]
  try dsimp only
  rw [child15507]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7590_skip, output15507_skip]
  kernel_rfl

theorem node15509_cond_eq
    (child7587 : Flapjack.WordAlloc.removeDeadStructural input7587 value3792 value1 value2 = (output7587, value5, value1))
    (child15508 : Flapjack.WordAlloc.removeDeadStructural input15508 value5 value1 value2 = (output15508, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15509 value3792 value1 value2 = (output15509, value6896, value1) := by
  rw [input15509_def, output15509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7587]
  try dsimp only
  rw [child15508]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7587_skip, output15508_skip]
  kernel_rfl

theorem node15510_cond_eq
    (child7576 : Flapjack.WordAlloc.removeDeadStructural input7576 value3792 value1 value2 = (output7576, value3792, value1))
    (child15509 : Flapjack.WordAlloc.removeDeadStructural input15509 value3792 value1 value2 = (output15509, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15510 value3792 value1 value2 = (output15510, value6896, value1) := by
  rw [input15510_def, output15510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7576]
  try dsimp only
  rw [child15509]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7576_skip, output15509_skip]
  kernel_rfl

theorem node15511_cond_eq
    (child7575 : Flapjack.WordAlloc.removeDeadStructural input7575 value3791 value1 value2 = (output7575, value3792, value1))
    (child15510 : Flapjack.WordAlloc.removeDeadStructural input15510 value3792 value1 value2 = (output15510, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15511 value3791 value1 value2 = (output15511, value6896, value1) := by
  rw [input15511_def, output15511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7575]
  try dsimp only
  rw [child15510]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7575_skip, output15510_skip]
  kernel_rfl

theorem node15512_cond_eq
    (child7574 : Flapjack.WordAlloc.removeDeadStructural input7574 value5 value1 value2 = (output7574, value3791, value1))
    (child15511 : Flapjack.WordAlloc.removeDeadStructural input15511 value3791 value1 value2 = (output15511, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15512 value5 value1 value2 = (output15512, value6896, value1) := by
  rw [input15512_def, output15512_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7574]
  try dsimp only
  rw [child15511]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7574_skip, output15511_skip]
  kernel_rfl

theorem node15513_cond_eq
    (child7571 : Flapjack.WordAlloc.removeDeadStructural input7571 value3784 value1 value2 = (output7571, value5, value1))
    (child15512 : Flapjack.WordAlloc.removeDeadStructural input15512 value5 value1 value2 = (output15512, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15513 value3784 value1 value2 = (output15513, value6896, value1) := by
  rw [input15513_def, output15513_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7571]
  try dsimp only
  rw [child15512]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7571_skip, output15512_skip]
  kernel_rfl

theorem node15514_cond_eq
    (child7560 : Flapjack.WordAlloc.removeDeadStructural input7560 value3784 value1 value2 = (output7560, value3784, value1))
    (child15513 : Flapjack.WordAlloc.removeDeadStructural input15513 value3784 value1 value2 = (output15513, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15514 value3784 value1 value2 = (output15514, value6896, value1) := by
  rw [input15514_def, output15514_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7560]
  try dsimp only
  rw [child15513]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7560_skip, output15513_skip]
  kernel_rfl

theorem node15515_cond_eq
    (child7559 : Flapjack.WordAlloc.removeDeadStructural input7559 value3783 value1 value2 = (output7559, value3784, value1))
    (child15514 : Flapjack.WordAlloc.removeDeadStructural input15514 value3784 value1 value2 = (output15514, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15515 value3783 value1 value2 = (output15515, value6896, value1) := by
  rw [input15515_def, output15515_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7559]
  try dsimp only
  rw [child15514]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7559_skip, output15514_skip]
  kernel_rfl

theorem node15516_cond_eq
    (child7558 : Flapjack.WordAlloc.removeDeadStructural input7558 value5 value1 value2 = (output7558, value3783, value1))
    (child15515 : Flapjack.WordAlloc.removeDeadStructural input15515 value3783 value1 value2 = (output15515, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15516 value5 value1 value2 = (output15516, value6896, value1) := by
  rw [input15516_def, output15516_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7558]
  try dsimp only
  rw [child15515]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7558_skip, output15515_skip]
  kernel_rfl

theorem node15517_cond_eq
    (child7555 : Flapjack.WordAlloc.removeDeadStructural input7555 value3776 value1 value2 = (output7555, value5, value1))
    (child15516 : Flapjack.WordAlloc.removeDeadStructural input15516 value5 value1 value2 = (output15516, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15517 value3776 value1 value2 = (output15517, value6896, value1) := by
  rw [input15517_def, output15517_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7555]
  try dsimp only
  rw [child15516]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7555_skip, output15516_skip]
  kernel_rfl

theorem node15518_cond_eq
    (child7544 : Flapjack.WordAlloc.removeDeadStructural input7544 value3776 value1 value2 = (output7544, value3776, value1))
    (child15517 : Flapjack.WordAlloc.removeDeadStructural input15517 value3776 value1 value2 = (output15517, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15518 value3776 value1 value2 = (output15518, value6896, value1) := by
  rw [input15518_def, output15518_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7544]
  try dsimp only
  rw [child15517]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7544_skip, output15517_skip]
  kernel_rfl

theorem node15519_cond_eq
    (child7543 : Flapjack.WordAlloc.removeDeadStructural input7543 value3775 value1 value2 = (output7543, value3776, value1))
    (child15518 : Flapjack.WordAlloc.removeDeadStructural input15518 value3776 value1 value2 = (output15518, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15519 value3775 value1 value2 = (output15519, value6896, value1) := by
  rw [input15519_def, output15519_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7543]
  try dsimp only
  rw [child15518]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7543_skip, output15518_skip]
  kernel_rfl

theorem node15520_cond_eq
    (child7542 : Flapjack.WordAlloc.removeDeadStructural input7542 value5 value1 value2 = (output7542, value3775, value1))
    (child15519 : Flapjack.WordAlloc.removeDeadStructural input15519 value3775 value1 value2 = (output15519, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15520 value5 value1 value2 = (output15520, value6896, value1) := by
  rw [input15520_def, output15520_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7542]
  try dsimp only
  rw [child15519]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7542_skip, output15519_skip]
  kernel_rfl

theorem node15521_cond_eq
    (child7539 : Flapjack.WordAlloc.removeDeadStructural input7539 value3768 value1 value2 = (output7539, value5, value1))
    (child15520 : Flapjack.WordAlloc.removeDeadStructural input15520 value5 value1 value2 = (output15520, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15521 value3768 value1 value2 = (output15521, value6896, value1) := by
  rw [input15521_def, output15521_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7539]
  try dsimp only
  rw [child15520]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7539_skip, output15520_skip]
  kernel_rfl

theorem node15522_cond_eq
    (child7528 : Flapjack.WordAlloc.removeDeadStructural input7528 value3768 value1 value2 = (output7528, value3768, value1))
    (child15521 : Flapjack.WordAlloc.removeDeadStructural input15521 value3768 value1 value2 = (output15521, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15522 value3768 value1 value2 = (output15522, value6896, value1) := by
  rw [input15522_def, output15522_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7528]
  try dsimp only
  rw [child15521]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7528_skip, output15521_skip]
  kernel_rfl

theorem node15523_cond_eq
    (child7527 : Flapjack.WordAlloc.removeDeadStructural input7527 value3767 value1 value2 = (output7527, value3768, value1))
    (child15522 : Flapjack.WordAlloc.removeDeadStructural input15522 value3768 value1 value2 = (output15522, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15523 value3767 value1 value2 = (output15523, value6896, value1) := by
  rw [input15523_def, output15523_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7527]
  try dsimp only
  rw [child15522]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7527_skip, output15522_skip]
  kernel_rfl

theorem node15524_cond_eq
    (child7526 : Flapjack.WordAlloc.removeDeadStructural input7526 value5 value1 value2 = (output7526, value3767, value1))
    (child15523 : Flapjack.WordAlloc.removeDeadStructural input15523 value3767 value1 value2 = (output15523, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15524 value5 value1 value2 = (output15524, value6896, value1) := by
  rw [input15524_def, output15524_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7526]
  try dsimp only
  rw [child15523]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7526_skip, output15523_skip]
  kernel_rfl

theorem node15525_cond_eq
    (child7523 : Flapjack.WordAlloc.removeDeadStructural input7523 value3760 value1 value2 = (output7523, value5, value1))
    (child15524 : Flapjack.WordAlloc.removeDeadStructural input15524 value5 value1 value2 = (output15524, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15525 value3760 value1 value2 = (output15525, value6896, value1) := by
  rw [input15525_def, output15525_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7523]
  try dsimp only
  rw [child15524]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7523_skip, output15524_skip]
  kernel_rfl

theorem node15526_cond_eq
    (child7512 : Flapjack.WordAlloc.removeDeadStructural input7512 value3760 value1 value2 = (output7512, value3760, value1))
    (child15525 : Flapjack.WordAlloc.removeDeadStructural input15525 value3760 value1 value2 = (output15525, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15526 value3760 value1 value2 = (output15526, value6896, value1) := by
  rw [input15526_def, output15526_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7512]
  try dsimp only
  rw [child15525]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7512_skip, output15525_skip]
  kernel_rfl

theorem node15527_cond_eq
    (child7511 : Flapjack.WordAlloc.removeDeadStructural input7511 value3759 value1 value2 = (output7511, value3760, value1))
    (child15526 : Flapjack.WordAlloc.removeDeadStructural input15526 value3760 value1 value2 = (output15526, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15527 value3759 value1 value2 = (output15527, value6896, value1) := by
  rw [input15527_def, output15527_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7511]
  try dsimp only
  rw [child15526]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7511_skip, output15526_skip]
  kernel_rfl

theorem node15528_cond_eq
    (child7510 : Flapjack.WordAlloc.removeDeadStructural input7510 value5 value1 value2 = (output7510, value3759, value1))
    (child15527 : Flapjack.WordAlloc.removeDeadStructural input15527 value3759 value1 value2 = (output15527, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15528 value5 value1 value2 = (output15528, value6896, value1) := by
  rw [input15528_def, output15528_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7510]
  try dsimp only
  rw [child15527]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7510_skip, output15527_skip]
  kernel_rfl

theorem node15529_cond_eq
    (child7507 : Flapjack.WordAlloc.removeDeadStructural input7507 value3752 value1 value2 = (output7507, value5, value1))
    (child15528 : Flapjack.WordAlloc.removeDeadStructural input15528 value5 value1 value2 = (output15528, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15529 value3752 value1 value2 = (output15529, value6896, value1) := by
  rw [input15529_def, output15529_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7507]
  try dsimp only
  rw [child15528]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7507_skip, output15528_skip]
  kernel_rfl

theorem node15530_cond_eq
    (child7496 : Flapjack.WordAlloc.removeDeadStructural input7496 value3752 value1 value2 = (output7496, value3752, value1))
    (child15529 : Flapjack.WordAlloc.removeDeadStructural input15529 value3752 value1 value2 = (output15529, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15530 value3752 value1 value2 = (output15530, value6896, value1) := by
  rw [input15530_def, output15530_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7496]
  try dsimp only
  rw [child15529]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7496_skip, output15529_skip]
  kernel_rfl

theorem node15531_cond_eq
    (child7495 : Flapjack.WordAlloc.removeDeadStructural input7495 value3751 value1 value2 = (output7495, value3752, value1))
    (child15530 : Flapjack.WordAlloc.removeDeadStructural input15530 value3752 value1 value2 = (output15530, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15531 value3751 value1 value2 = (output15531, value6896, value1) := by
  rw [input15531_def, output15531_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7495]
  try dsimp only
  rw [child15530]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7495_skip, output15530_skip]
  kernel_rfl

theorem node15532_cond_eq
    (child7494 : Flapjack.WordAlloc.removeDeadStructural input7494 value5 value1 value2 = (output7494, value3751, value1))
    (child15531 : Flapjack.WordAlloc.removeDeadStructural input15531 value3751 value1 value2 = (output15531, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15532 value5 value1 value2 = (output15532, value6896, value1) := by
  rw [input15532_def, output15532_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7494]
  try dsimp only
  rw [child15531]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7494_skip, output15531_skip]
  kernel_rfl

theorem node15533_cond_eq
    (child7491 : Flapjack.WordAlloc.removeDeadStructural input7491 value3744 value1 value2 = (output7491, value5, value1))
    (child15532 : Flapjack.WordAlloc.removeDeadStructural input15532 value5 value1 value2 = (output15532, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15533 value3744 value1 value2 = (output15533, value6896, value1) := by
  rw [input15533_def, output15533_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7491]
  try dsimp only
  rw [child15532]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7491_skip, output15532_skip]
  kernel_rfl

theorem node15534_cond_eq
    (child7480 : Flapjack.WordAlloc.removeDeadStructural input7480 value3744 value1 value2 = (output7480, value3744, value1))
    (child15533 : Flapjack.WordAlloc.removeDeadStructural input15533 value3744 value1 value2 = (output15533, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15534 value3744 value1 value2 = (output15534, value6896, value1) := by
  rw [input15534_def, output15534_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7480]
  try dsimp only
  rw [child15533]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7480_skip, output15533_skip]
  kernel_rfl

theorem node15535_cond_eq
    (child7479 : Flapjack.WordAlloc.removeDeadStructural input7479 value3743 value1 value2 = (output7479, value3744, value1))
    (child15534 : Flapjack.WordAlloc.removeDeadStructural input15534 value3744 value1 value2 = (output15534, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15535 value3743 value1 value2 = (output15535, value6896, value1) := by
  rw [input15535_def, output15535_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7479]
  try dsimp only
  rw [child15534]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7479_skip, output15534_skip]
  kernel_rfl

theorem node15536_cond_eq
    (child7478 : Flapjack.WordAlloc.removeDeadStructural input7478 value5 value1 value2 = (output7478, value3743, value1))
    (child15535 : Flapjack.WordAlloc.removeDeadStructural input15535 value3743 value1 value2 = (output15535, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15536 value5 value1 value2 = (output15536, value6896, value1) := by
  rw [input15536_def, output15536_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7478]
  try dsimp only
  rw [child15535]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7478_skip, output15535_skip]
  kernel_rfl

theorem node15537_cond_eq
    (child7475 : Flapjack.WordAlloc.removeDeadStructural input7475 value3736 value1 value2 = (output7475, value5, value1))
    (child15536 : Flapjack.WordAlloc.removeDeadStructural input15536 value5 value1 value2 = (output15536, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15537 value3736 value1 value2 = (output15537, value6896, value1) := by
  rw [input15537_def, output15537_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7475]
  try dsimp only
  rw [child15536]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7475_skip, output15536_skip]
  kernel_rfl

theorem node15538_cond_eq
    (child7464 : Flapjack.WordAlloc.removeDeadStructural input7464 value3736 value1 value2 = (output7464, value3736, value1))
    (child15537 : Flapjack.WordAlloc.removeDeadStructural input15537 value3736 value1 value2 = (output15537, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15538 value3736 value1 value2 = (output15538, value6896, value1) := by
  rw [input15538_def, output15538_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7464]
  try dsimp only
  rw [child15537]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7464_skip, output15537_skip]
  kernel_rfl

theorem node15539_cond_eq
    (child7463 : Flapjack.WordAlloc.removeDeadStructural input7463 value3735 value1 value2 = (output7463, value3736, value1))
    (child15538 : Flapjack.WordAlloc.removeDeadStructural input15538 value3736 value1 value2 = (output15538, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15539 value3735 value1 value2 = (output15539, value6896, value1) := by
  rw [input15539_def, output15539_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7463]
  try dsimp only
  rw [child15538]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7463_skip, output15538_skip]
  kernel_rfl

theorem node15540_cond_eq
    (child7462 : Flapjack.WordAlloc.removeDeadStructural input7462 value5 value1 value2 = (output7462, value3735, value1))
    (child15539 : Flapjack.WordAlloc.removeDeadStructural input15539 value3735 value1 value2 = (output15539, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15540 value5 value1 value2 = (output15540, value6896, value1) := by
  rw [input15540_def, output15540_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7462]
  try dsimp only
  rw [child15539]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7462_skip, output15539_skip]
  kernel_rfl

theorem node15541_cond_eq
    (child7459 : Flapjack.WordAlloc.removeDeadStructural input7459 value3728 value1 value2 = (output7459, value5, value1))
    (child15540 : Flapjack.WordAlloc.removeDeadStructural input15540 value5 value1 value2 = (output15540, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15541 value3728 value1 value2 = (output15541, value6896, value1) := by
  rw [input15541_def, output15541_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7459]
  try dsimp only
  rw [child15540]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7459_skip, output15540_skip]
  kernel_rfl

theorem node15542_cond_eq
    (child7448 : Flapjack.WordAlloc.removeDeadStructural input7448 value3728 value1 value2 = (output7448, value3728, value1))
    (child15541 : Flapjack.WordAlloc.removeDeadStructural input15541 value3728 value1 value2 = (output15541, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15542 value3728 value1 value2 = (output15542, value6896, value1) := by
  rw [input15542_def, output15542_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7448]
  try dsimp only
  rw [child15541]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7448_skip, output15541_skip]
  kernel_rfl

theorem node15543_cond_eq
    (child7447 : Flapjack.WordAlloc.removeDeadStructural input7447 value3727 value1 value2 = (output7447, value3728, value1))
    (child15542 : Flapjack.WordAlloc.removeDeadStructural input15542 value3728 value1 value2 = (output15542, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15543 value3727 value1 value2 = (output15543, value6896, value1) := by
  rw [input15543_def, output15543_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7447]
  try dsimp only
  rw [child15542]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7447_skip, output15542_skip]
  kernel_rfl

theorem node15544_cond_eq
    (child7446 : Flapjack.WordAlloc.removeDeadStructural input7446 value5 value1 value2 = (output7446, value3727, value1))
    (child15543 : Flapjack.WordAlloc.removeDeadStructural input15543 value3727 value1 value2 = (output15543, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15544 value5 value1 value2 = (output15544, value6896, value1) := by
  rw [input15544_def, output15544_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7446]
  try dsimp only
  rw [child15543]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7446_skip, output15543_skip]
  kernel_rfl

theorem node15545_cond_eq
    (child7443 : Flapjack.WordAlloc.removeDeadStructural input7443 value3720 value1 value2 = (output7443, value5, value1))
    (child15544 : Flapjack.WordAlloc.removeDeadStructural input15544 value5 value1 value2 = (output15544, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15545 value3720 value1 value2 = (output15545, value6896, value1) := by
  rw [input15545_def, output15545_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7443]
  try dsimp only
  rw [child15544]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7443_skip, output15544_skip]
  kernel_rfl

theorem node15546_cond_eq
    (child7432 : Flapjack.WordAlloc.removeDeadStructural input7432 value3720 value1 value2 = (output7432, value3720, value1))
    (child15545 : Flapjack.WordAlloc.removeDeadStructural input15545 value3720 value1 value2 = (output15545, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15546 value3720 value1 value2 = (output15546, value6896, value1) := by
  rw [input15546_def, output15546_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7432]
  try dsimp only
  rw [child15545]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7432_skip, output15545_skip]
  kernel_rfl

theorem node15547_cond_eq
    (child7431 : Flapjack.WordAlloc.removeDeadStructural input7431 value3719 value1 value2 = (output7431, value3720, value1))
    (child15546 : Flapjack.WordAlloc.removeDeadStructural input15546 value3720 value1 value2 = (output15546, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15547 value3719 value1 value2 = (output15547, value6896, value1) := by
  rw [input15547_def, output15547_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7431]
  try dsimp only
  rw [child15546]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7431_skip, output15546_skip]
  kernel_rfl

theorem node15548_cond_eq
    (child7430 : Flapjack.WordAlloc.removeDeadStructural input7430 value5 value1 value2 = (output7430, value3719, value1))
    (child15547 : Flapjack.WordAlloc.removeDeadStructural input15547 value3719 value1 value2 = (output15547, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15548 value5 value1 value2 = (output15548, value6896, value1) := by
  rw [input15548_def, output15548_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7430]
  try dsimp only
  rw [child15547]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7430_skip, output15547_skip]
  kernel_rfl

theorem node15549_cond_eq
    (child7427 : Flapjack.WordAlloc.removeDeadStructural input7427 value3712 value1 value2 = (output7427, value5, value1))
    (child15548 : Flapjack.WordAlloc.removeDeadStructural input15548 value5 value1 value2 = (output15548, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15549 value3712 value1 value2 = (output15549, value6896, value1) := by
  rw [input15549_def, output15549_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7427]
  try dsimp only
  rw [child15548]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7427_skip, output15548_skip]
  kernel_rfl

theorem node15550_cond_eq
    (child7416 : Flapjack.WordAlloc.removeDeadStructural input7416 value3712 value1 value2 = (output7416, value3712, value1))
    (child15549 : Flapjack.WordAlloc.removeDeadStructural input15549 value3712 value1 value2 = (output15549, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15550 value3712 value1 value2 = (output15550, value6896, value1) := by
  rw [input15550_def, output15550_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7416]
  try dsimp only
  rw [child15549]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7416_skip, output15549_skip]
  kernel_rfl

theorem node15551_cond_eq
    (child7415 : Flapjack.WordAlloc.removeDeadStructural input7415 value3711 value1 value2 = (output7415, value3712, value1))
    (child15550 : Flapjack.WordAlloc.removeDeadStructural input15550 value3712 value1 value2 = (output15550, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15551 value3711 value1 value2 = (output15551, value6896, value1) := by
  rw [input15551_def, output15551_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7415]
  try dsimp only
  rw [child15550]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7415_skip, output15550_skip]
  kernel_rfl

theorem node15552_cond_eq
    (child7414 : Flapjack.WordAlloc.removeDeadStructural input7414 value5 value1 value2 = (output7414, value3711, value1))
    (child15551 : Flapjack.WordAlloc.removeDeadStructural input15551 value3711 value1 value2 = (output15551, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15552 value5 value1 value2 = (output15552, value6896, value1) := by
  rw [input15552_def, output15552_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7414]
  try dsimp only
  rw [child15551]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7414_skip, output15551_skip]
  kernel_rfl

theorem node15553_cond_eq
    (child7411 : Flapjack.WordAlloc.removeDeadStructural input7411 value3704 value1 value2 = (output7411, value5, value1))
    (child15552 : Flapjack.WordAlloc.removeDeadStructural input15552 value5 value1 value2 = (output15552, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15553 value3704 value1 value2 = (output15553, value6896, value1) := by
  rw [input15553_def, output15553_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7411]
  try dsimp only
  rw [child15552]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7411_skip, output15552_skip]
  kernel_rfl

theorem node15554_cond_eq
    (child7400 : Flapjack.WordAlloc.removeDeadStructural input7400 value3704 value1 value2 = (output7400, value3704, value1))
    (child15553 : Flapjack.WordAlloc.removeDeadStructural input15553 value3704 value1 value2 = (output15553, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15554 value3704 value1 value2 = (output15554, value6896, value1) := by
  rw [input15554_def, output15554_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7400]
  try dsimp only
  rw [child15553]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7400_skip, output15553_skip]
  kernel_rfl

theorem node15555_cond_eq
    (child7399 : Flapjack.WordAlloc.removeDeadStructural input7399 value3703 value1 value2 = (output7399, value3704, value1))
    (child15554 : Flapjack.WordAlloc.removeDeadStructural input15554 value3704 value1 value2 = (output15554, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15555 value3703 value1 value2 = (output15555, value6896, value1) := by
  rw [input15555_def, output15555_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7399]
  try dsimp only
  rw [child15554]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7399_skip, output15554_skip]
  kernel_rfl

theorem node15556_cond_eq
    (child7398 : Flapjack.WordAlloc.removeDeadStructural input7398 value5 value1 value2 = (output7398, value3703, value1))
    (child15555 : Flapjack.WordAlloc.removeDeadStructural input15555 value3703 value1 value2 = (output15555, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15556 value5 value1 value2 = (output15556, value6896, value1) := by
  rw [input15556_def, output15556_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7398]
  try dsimp only
  rw [child15555]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7398_skip, output15555_skip]
  kernel_rfl

theorem node15557_cond_eq
    (child7395 : Flapjack.WordAlloc.removeDeadStructural input7395 value3696 value1 value2 = (output7395, value5, value1))
    (child15556 : Flapjack.WordAlloc.removeDeadStructural input15556 value5 value1 value2 = (output15556, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15557 value3696 value1 value2 = (output15557, value6896, value1) := by
  rw [input15557_def, output15557_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7395]
  try dsimp only
  rw [child15556]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7395_skip, output15556_skip]
  kernel_rfl

theorem node15558_cond_eq
    (child7384 : Flapjack.WordAlloc.removeDeadStructural input7384 value3696 value1 value2 = (output7384, value3696, value1))
    (child15557 : Flapjack.WordAlloc.removeDeadStructural input15557 value3696 value1 value2 = (output15557, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15558 value3696 value1 value2 = (output15558, value6896, value1) := by
  rw [input15558_def, output15558_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7384]
  try dsimp only
  rw [child15557]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7384_skip, output15557_skip]
  kernel_rfl

theorem node15559_cond_eq
    (child7383 : Flapjack.WordAlloc.removeDeadStructural input7383 value3695 value1 value2 = (output7383, value3696, value1))
    (child15558 : Flapjack.WordAlloc.removeDeadStructural input15558 value3696 value1 value2 = (output15558, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15559 value3695 value1 value2 = (output15559, value6896, value1) := by
  rw [input15559_def, output15559_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7383]
  try dsimp only
  rw [child15558]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7383_skip, output15558_skip]
  kernel_rfl

theorem node15560_cond_eq
    (child7382 : Flapjack.WordAlloc.removeDeadStructural input7382 value5 value1 value2 = (output7382, value3695, value1))
    (child15559 : Flapjack.WordAlloc.removeDeadStructural input15559 value3695 value1 value2 = (output15559, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15560 value5 value1 value2 = (output15560, value6896, value1) := by
  rw [input15560_def, output15560_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7382]
  try dsimp only
  rw [child15559]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7382_skip, output15559_skip]
  kernel_rfl

theorem node15561_cond_eq
    (child7379 : Flapjack.WordAlloc.removeDeadStructural input7379 value3688 value1 value2 = (output7379, value5, value1))
    (child15560 : Flapjack.WordAlloc.removeDeadStructural input15560 value5 value1 value2 = (output15560, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15561 value3688 value1 value2 = (output15561, value6896, value1) := by
  rw [input15561_def, output15561_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7379]
  try dsimp only
  rw [child15560]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7379_skip, output15560_skip]
  kernel_rfl

theorem node15562_cond_eq
    (child7368 : Flapjack.WordAlloc.removeDeadStructural input7368 value3688 value1 value2 = (output7368, value3688, value1))
    (child15561 : Flapjack.WordAlloc.removeDeadStructural input15561 value3688 value1 value2 = (output15561, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15562 value3688 value1 value2 = (output15562, value6896, value1) := by
  rw [input15562_def, output15562_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7368]
  try dsimp only
  rw [child15561]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7368_skip, output15561_skip]
  kernel_rfl

theorem node15563_cond_eq
    (child7367 : Flapjack.WordAlloc.removeDeadStructural input7367 value3687 value1 value2 = (output7367, value3688, value1))
    (child15562 : Flapjack.WordAlloc.removeDeadStructural input15562 value3688 value1 value2 = (output15562, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15563 value3687 value1 value2 = (output15563, value6896, value1) := by
  rw [input15563_def, output15563_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7367]
  try dsimp only
  rw [child15562]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7367_skip, output15562_skip]
  kernel_rfl

theorem node15564_cond_eq
    (child7366 : Flapjack.WordAlloc.removeDeadStructural input7366 value5 value1 value2 = (output7366, value3687, value1))
    (child15563 : Flapjack.WordAlloc.removeDeadStructural input15563 value3687 value1 value2 = (output15563, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15564 value5 value1 value2 = (output15564, value6896, value1) := by
  rw [input15564_def, output15564_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7366]
  try dsimp only
  rw [child15563]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7366_skip, output15563_skip]
  kernel_rfl

theorem node15565_cond_eq
    (child7363 : Flapjack.WordAlloc.removeDeadStructural input7363 value3680 value1 value2 = (output7363, value5, value1))
    (child15564 : Flapjack.WordAlloc.removeDeadStructural input15564 value5 value1 value2 = (output15564, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15565 value3680 value1 value2 = (output15565, value6896, value1) := by
  rw [input15565_def, output15565_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7363]
  try dsimp only
  rw [child15564]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7363_skip, output15564_skip]
  kernel_rfl

theorem node15566_cond_eq
    (child7352 : Flapjack.WordAlloc.removeDeadStructural input7352 value3680 value1 value2 = (output7352, value3680, value1))
    (child15565 : Flapjack.WordAlloc.removeDeadStructural input15565 value3680 value1 value2 = (output15565, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15566 value3680 value1 value2 = (output15566, value6896, value1) := by
  rw [input15566_def, output15566_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7352]
  try dsimp only
  rw [child15565]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7352_skip, output15565_skip]
  kernel_rfl

theorem node15567_cond_eq
    (child7351 : Flapjack.WordAlloc.removeDeadStructural input7351 value3679 value1 value2 = (output7351, value3680, value1))
    (child15566 : Flapjack.WordAlloc.removeDeadStructural input15566 value3680 value1 value2 = (output15566, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15567 value3679 value1 value2 = (output15567, value6896, value1) := by
  rw [input15567_def, output15567_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7351]
  try dsimp only
  rw [child15566]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7351_skip, output15566_skip]
  kernel_rfl

theorem node15568_cond_eq
    (child7350 : Flapjack.WordAlloc.removeDeadStructural input7350 value5 value1 value2 = (output7350, value3679, value1))
    (child15567 : Flapjack.WordAlloc.removeDeadStructural input15567 value3679 value1 value2 = (output15567, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15568 value5 value1 value2 = (output15568, value6896, value1) := by
  rw [input15568_def, output15568_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7350]
  try dsimp only
  rw [child15567]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7350_skip, output15567_skip]
  kernel_rfl

theorem node15569_cond_eq
    (child7347 : Flapjack.WordAlloc.removeDeadStructural input7347 value3672 value1 value2 = (output7347, value5, value1))
    (child15568 : Flapjack.WordAlloc.removeDeadStructural input15568 value5 value1 value2 = (output15568, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15569 value3672 value1 value2 = (output15569, value6896, value1) := by
  rw [input15569_def, output15569_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7347]
  try dsimp only
  rw [child15568]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7347_skip, output15568_skip]
  kernel_rfl

theorem node15570_cond_eq
    (child7336 : Flapjack.WordAlloc.removeDeadStructural input7336 value3672 value1 value2 = (output7336, value3672, value1))
    (child15569 : Flapjack.WordAlloc.removeDeadStructural input15569 value3672 value1 value2 = (output15569, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15570 value3672 value1 value2 = (output15570, value6896, value1) := by
  rw [input15570_def, output15570_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7336]
  try dsimp only
  rw [child15569]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7336_skip, output15569_skip]
  kernel_rfl

theorem node15571_cond_eq
    (child7335 : Flapjack.WordAlloc.removeDeadStructural input7335 value3671 value1 value2 = (output7335, value3672, value1))
    (child15570 : Flapjack.WordAlloc.removeDeadStructural input15570 value3672 value1 value2 = (output15570, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15571 value3671 value1 value2 = (output15571, value6896, value1) := by
  rw [input15571_def, output15571_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7335]
  try dsimp only
  rw [child15570]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7335_skip, output15570_skip]
  kernel_rfl

theorem node15572_cond_eq
    (child7334 : Flapjack.WordAlloc.removeDeadStructural input7334 value5 value1 value2 = (output7334, value3671, value1))
    (child15571 : Flapjack.WordAlloc.removeDeadStructural input15571 value3671 value1 value2 = (output15571, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15572 value5 value1 value2 = (output15572, value6896, value1) := by
  rw [input15572_def, output15572_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7334]
  try dsimp only
  rw [child15571]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7334_skip, output15571_skip]
  kernel_rfl

theorem node15573_cond_eq
    (child7331 : Flapjack.WordAlloc.removeDeadStructural input7331 value3664 value1 value2 = (output7331, value5, value1))
    (child15572 : Flapjack.WordAlloc.removeDeadStructural input15572 value5 value1 value2 = (output15572, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15573 value3664 value1 value2 = (output15573, value6896, value1) := by
  rw [input15573_def, output15573_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7331]
  try dsimp only
  rw [child15572]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7331_skip, output15572_skip]
  kernel_rfl

theorem node15574_cond_eq
    (child7320 : Flapjack.WordAlloc.removeDeadStructural input7320 value3664 value1 value2 = (output7320, value3664, value1))
    (child15573 : Flapjack.WordAlloc.removeDeadStructural input15573 value3664 value1 value2 = (output15573, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15574 value3664 value1 value2 = (output15574, value6896, value1) := by
  rw [input15574_def, output15574_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7320]
  try dsimp only
  rw [child15573]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7320_skip, output15573_skip]
  kernel_rfl

theorem node15575_cond_eq
    (child7319 : Flapjack.WordAlloc.removeDeadStructural input7319 value3663 value1 value2 = (output7319, value3664, value1))
    (child15574 : Flapjack.WordAlloc.removeDeadStructural input15574 value3664 value1 value2 = (output15574, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15575 value3663 value1 value2 = (output15575, value6896, value1) := by
  rw [input15575_def, output15575_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7319]
  try dsimp only
  rw [child15574]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7319_skip, output15574_skip]
  kernel_rfl

theorem node15576_cond_eq
    (child7318 : Flapjack.WordAlloc.removeDeadStructural input7318 value5 value1 value2 = (output7318, value3663, value1))
    (child15575 : Flapjack.WordAlloc.removeDeadStructural input15575 value3663 value1 value2 = (output15575, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15576 value5 value1 value2 = (output15576, value6896, value1) := by
  rw [input15576_def, output15576_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7318]
  try dsimp only
  rw [child15575]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7318_skip, output15575_skip]
  kernel_rfl

theorem node15577_cond_eq
    (child7315 : Flapjack.WordAlloc.removeDeadStructural input7315 value3656 value1 value2 = (output7315, value5, value1))
    (child15576 : Flapjack.WordAlloc.removeDeadStructural input15576 value5 value1 value2 = (output15576, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15577 value3656 value1 value2 = (output15577, value6896, value1) := by
  rw [input15577_def, output15577_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7315]
  try dsimp only
  rw [child15576]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7315_skip, output15576_skip]
  kernel_rfl

theorem node15578_cond_eq
    (child7304 : Flapjack.WordAlloc.removeDeadStructural input7304 value3656 value1 value2 = (output7304, value3656, value1))
    (child15577 : Flapjack.WordAlloc.removeDeadStructural input15577 value3656 value1 value2 = (output15577, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15578 value3656 value1 value2 = (output15578, value6896, value1) := by
  rw [input15578_def, output15578_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7304]
  try dsimp only
  rw [child15577]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7304_skip, output15577_skip]
  kernel_rfl

theorem node15579_cond_eq
    (child7303 : Flapjack.WordAlloc.removeDeadStructural input7303 value3655 value1 value2 = (output7303, value3656, value1))
    (child15578 : Flapjack.WordAlloc.removeDeadStructural input15578 value3656 value1 value2 = (output15578, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15579 value3655 value1 value2 = (output15579, value6896, value1) := by
  rw [input15579_def, output15579_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7303]
  try dsimp only
  rw [child15578]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7303_skip, output15578_skip]
  kernel_rfl

theorem node15580_cond_eq
    (child7302 : Flapjack.WordAlloc.removeDeadStructural input7302 value5 value1 value2 = (output7302, value3655, value1))
    (child15579 : Flapjack.WordAlloc.removeDeadStructural input15579 value3655 value1 value2 = (output15579, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15580 value5 value1 value2 = (output15580, value6896, value1) := by
  rw [input15580_def, output15580_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7302]
  try dsimp only
  rw [child15579]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7302_skip, output15579_skip]
  kernel_rfl

theorem node15581_cond_eq
    (child7299 : Flapjack.WordAlloc.removeDeadStructural input7299 value3648 value1 value2 = (output7299, value5, value1))
    (child15580 : Flapjack.WordAlloc.removeDeadStructural input15580 value5 value1 value2 = (output15580, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15581 value3648 value1 value2 = (output15581, value6896, value1) := by
  rw [input15581_def, output15581_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7299]
  try dsimp only
  rw [child15580]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7299_skip, output15580_skip]
  kernel_rfl

theorem node15582_cond_eq
    (child7288 : Flapjack.WordAlloc.removeDeadStructural input7288 value3648 value1 value2 = (output7288, value3648, value1))
    (child15581 : Flapjack.WordAlloc.removeDeadStructural input15581 value3648 value1 value2 = (output15581, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15582 value3648 value1 value2 = (output15582, value6896, value1) := by
  rw [input15582_def, output15582_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7288]
  try dsimp only
  rw [child15581]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7288_skip, output15581_skip]
  kernel_rfl

theorem node15583_cond_eq
    (child7287 : Flapjack.WordAlloc.removeDeadStructural input7287 value3647 value1 value2 = (output7287, value3648, value1))
    (child15582 : Flapjack.WordAlloc.removeDeadStructural input15582 value3648 value1 value2 = (output15582, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15583 value3647 value1 value2 = (output15583, value6896, value1) := by
  rw [input15583_def, output15583_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7287]
  try dsimp only
  rw [child15582]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7287_skip, output15582_skip]
  kernel_rfl

theorem node15584_cond_eq
    (child7286 : Flapjack.WordAlloc.removeDeadStructural input7286 value5 value1 value2 = (output7286, value3647, value1))
    (child15583 : Flapjack.WordAlloc.removeDeadStructural input15583 value3647 value1 value2 = (output15583, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15584 value5 value1 value2 = (output15584, value6896, value1) := by
  rw [input15584_def, output15584_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7286]
  try dsimp only
  rw [child15583]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7286_skip, output15583_skip]
  kernel_rfl

theorem node15585_cond_eq
    (child7283 : Flapjack.WordAlloc.removeDeadStructural input7283 value3640 value1 value2 = (output7283, value5, value1))
    (child15584 : Flapjack.WordAlloc.removeDeadStructural input15584 value5 value1 value2 = (output15584, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15585 value3640 value1 value2 = (output15585, value6896, value1) := by
  rw [input15585_def, output15585_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7283]
  try dsimp only
  rw [child15584]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7283_skip, output15584_skip]
  kernel_rfl

theorem node15586_cond_eq
    (child7272 : Flapjack.WordAlloc.removeDeadStructural input7272 value3640 value1 value2 = (output7272, value3640, value1))
    (child15585 : Flapjack.WordAlloc.removeDeadStructural input15585 value3640 value1 value2 = (output15585, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15586 value3640 value1 value2 = (output15586, value6896, value1) := by
  rw [input15586_def, output15586_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7272]
  try dsimp only
  rw [child15585]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7272_skip, output15585_skip]
  kernel_rfl

theorem node15587_cond_eq
    (child7271 : Flapjack.WordAlloc.removeDeadStructural input7271 value3639 value1 value2 = (output7271, value3640, value1))
    (child15586 : Flapjack.WordAlloc.removeDeadStructural input15586 value3640 value1 value2 = (output15586, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15587 value3639 value1 value2 = (output15587, value6896, value1) := by
  rw [input15587_def, output15587_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7271]
  try dsimp only
  rw [child15586]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7271_skip, output15586_skip]
  kernel_rfl

theorem node15588_cond_eq
    (child7270 : Flapjack.WordAlloc.removeDeadStructural input7270 value5 value1 value2 = (output7270, value3639, value1))
    (child15587 : Flapjack.WordAlloc.removeDeadStructural input15587 value3639 value1 value2 = (output15587, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15588 value5 value1 value2 = (output15588, value6896, value1) := by
  rw [input15588_def, output15588_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7270]
  try dsimp only
  rw [child15587]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7270_skip, output15587_skip]
  kernel_rfl

theorem node15589_cond_eq
    (child7267 : Flapjack.WordAlloc.removeDeadStructural input7267 value3632 value1 value2 = (output7267, value5, value1))
    (child15588 : Flapjack.WordAlloc.removeDeadStructural input15588 value5 value1 value2 = (output15588, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15589 value3632 value1 value2 = (output15589, value6896, value1) := by
  rw [input15589_def, output15589_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7267]
  try dsimp only
  rw [child15588]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7267_skip, output15588_skip]
  kernel_rfl

theorem node15590_cond_eq
    (child7256 : Flapjack.WordAlloc.removeDeadStructural input7256 value3632 value1 value2 = (output7256, value3632, value1))
    (child15589 : Flapjack.WordAlloc.removeDeadStructural input15589 value3632 value1 value2 = (output15589, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15590 value3632 value1 value2 = (output15590, value6896, value1) := by
  rw [input15590_def, output15590_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7256]
  try dsimp only
  rw [child15589]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7256_skip, output15589_skip]
  kernel_rfl

theorem node15591_cond_eq
    (child7255 : Flapjack.WordAlloc.removeDeadStructural input7255 value3631 value1 value2 = (output7255, value3632, value1))
    (child15590 : Flapjack.WordAlloc.removeDeadStructural input15590 value3632 value1 value2 = (output15590, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15591 value3631 value1 value2 = (output15591, value6896, value1) := by
  rw [input15591_def, output15591_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7255]
  try dsimp only
  rw [child15590]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7255_skip, output15590_skip]
  kernel_rfl

theorem node15592_cond_eq
    (child7254 : Flapjack.WordAlloc.removeDeadStructural input7254 value5 value1 value2 = (output7254, value3631, value1))
    (child15591 : Flapjack.WordAlloc.removeDeadStructural input15591 value3631 value1 value2 = (output15591, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15592 value5 value1 value2 = (output15592, value6896, value1) := by
  rw [input15592_def, output15592_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7254]
  try dsimp only
  rw [child15591]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7254_skip, output15591_skip]
  kernel_rfl

theorem node15593_cond_eq
    (child7251 : Flapjack.WordAlloc.removeDeadStructural input7251 value3624 value1 value2 = (output7251, value5, value1))
    (child15592 : Flapjack.WordAlloc.removeDeadStructural input15592 value5 value1 value2 = (output15592, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15593 value3624 value1 value2 = (output15593, value6896, value1) := by
  rw [input15593_def, output15593_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7251]
  try dsimp only
  rw [child15592]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7251_skip, output15592_skip]
  kernel_rfl

theorem node15594_cond_eq
    (child7240 : Flapjack.WordAlloc.removeDeadStructural input7240 value3624 value1 value2 = (output7240, value3624, value1))
    (child15593 : Flapjack.WordAlloc.removeDeadStructural input15593 value3624 value1 value2 = (output15593, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15594 value3624 value1 value2 = (output15594, value6896, value1) := by
  rw [input15594_def, output15594_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7240]
  try dsimp only
  rw [child15593]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7240_skip, output15593_skip]
  kernel_rfl

theorem node15595_cond_eq
    (child7239 : Flapjack.WordAlloc.removeDeadStructural input7239 value3623 value1 value2 = (output7239, value3624, value1))
    (child15594 : Flapjack.WordAlloc.removeDeadStructural input15594 value3624 value1 value2 = (output15594, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15595 value3623 value1 value2 = (output15595, value6896, value1) := by
  rw [input15595_def, output15595_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7239]
  try dsimp only
  rw [child15594]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7239_skip, output15594_skip]
  kernel_rfl

theorem node15596_cond_eq
    (child7238 : Flapjack.WordAlloc.removeDeadStructural input7238 value5 value1 value2 = (output7238, value3623, value1))
    (child15595 : Flapjack.WordAlloc.removeDeadStructural input15595 value3623 value1 value2 = (output15595, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15596 value5 value1 value2 = (output15596, value6896, value1) := by
  rw [input15596_def, output15596_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7238]
  try dsimp only
  rw [child15595]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7238_skip, output15595_skip]
  kernel_rfl

theorem node15597_cond_eq
    (child7235 : Flapjack.WordAlloc.removeDeadStructural input7235 value3616 value1 value2 = (output7235, value5, value1))
    (child15596 : Flapjack.WordAlloc.removeDeadStructural input15596 value5 value1 value2 = (output15596, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15597 value3616 value1 value2 = (output15597, value6896, value1) := by
  rw [input15597_def, output15597_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7235]
  try dsimp only
  rw [child15596]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7235_skip, output15596_skip]
  kernel_rfl

theorem node15598_cond_eq
    (child7224 : Flapjack.WordAlloc.removeDeadStructural input7224 value3616 value1 value2 = (output7224, value3616, value1))
    (child15597 : Flapjack.WordAlloc.removeDeadStructural input15597 value3616 value1 value2 = (output15597, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15598 value3616 value1 value2 = (output15598, value6896, value1) := by
  rw [input15598_def, output15598_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7224]
  try dsimp only
  rw [child15597]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7224_skip, output15597_skip]
  kernel_rfl

theorem node15599_cond_eq
    (child7223 : Flapjack.WordAlloc.removeDeadStructural input7223 value3615 value1 value2 = (output7223, value3616, value1))
    (child15598 : Flapjack.WordAlloc.removeDeadStructural input15598 value3616 value1 value2 = (output15598, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15599 value3615 value1 value2 = (output15599, value6896, value1) := by
  rw [input15599_def, output15599_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7223]
  try dsimp only
  rw [child15598]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7223_skip, output15598_skip]
  kernel_rfl

theorem node15600_cond_eq
    (child7222 : Flapjack.WordAlloc.removeDeadStructural input7222 value5 value1 value2 = (output7222, value3615, value1))
    (child15599 : Flapjack.WordAlloc.removeDeadStructural input15599 value3615 value1 value2 = (output15599, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15600 value5 value1 value2 = (output15600, value6896, value1) := by
  rw [input15600_def, output15600_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7222]
  try dsimp only
  rw [child15599]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7222_skip, output15599_skip]
  kernel_rfl

theorem node15601_cond_eq
    (child7219 : Flapjack.WordAlloc.removeDeadStructural input7219 value3608 value1 value2 = (output7219, value5, value1))
    (child15600 : Flapjack.WordAlloc.removeDeadStructural input15600 value5 value1 value2 = (output15600, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15601 value3608 value1 value2 = (output15601, value6896, value1) := by
  rw [input15601_def, output15601_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7219]
  try dsimp only
  rw [child15600]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7219_skip, output15600_skip]
  kernel_rfl

theorem node15602_cond_eq
    (child7208 : Flapjack.WordAlloc.removeDeadStructural input7208 value3608 value1 value2 = (output7208, value3608, value1))
    (child15601 : Flapjack.WordAlloc.removeDeadStructural input15601 value3608 value1 value2 = (output15601, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15602 value3608 value1 value2 = (output15602, value6896, value1) := by
  rw [input15602_def, output15602_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7208]
  try dsimp only
  rw [child15601]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7208_skip, output15601_skip]
  kernel_rfl

theorem node15603_cond_eq
    (child7207 : Flapjack.WordAlloc.removeDeadStructural input7207 value3607 value1 value2 = (output7207, value3608, value1))
    (child15602 : Flapjack.WordAlloc.removeDeadStructural input15602 value3608 value1 value2 = (output15602, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15603 value3607 value1 value2 = (output15603, value6896, value1) := by
  rw [input15603_def, output15603_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7207]
  try dsimp only
  rw [child15602]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7207_skip, output15602_skip]
  kernel_rfl

theorem node15604_cond_eq
    (child7206 : Flapjack.WordAlloc.removeDeadStructural input7206 value5 value1 value2 = (output7206, value3607, value1))
    (child15603 : Flapjack.WordAlloc.removeDeadStructural input15603 value3607 value1 value2 = (output15603, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15604 value5 value1 value2 = (output15604, value6896, value1) := by
  rw [input15604_def, output15604_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7206]
  try dsimp only
  rw [child15603]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7206_skip, output15603_skip]
  kernel_rfl

theorem node15605_cond_eq
    (child7203 : Flapjack.WordAlloc.removeDeadStructural input7203 value3600 value1 value2 = (output7203, value5, value1))
    (child15604 : Flapjack.WordAlloc.removeDeadStructural input15604 value5 value1 value2 = (output15604, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15605 value3600 value1 value2 = (output15605, value6896, value1) := by
  rw [input15605_def, output15605_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7203]
  try dsimp only
  rw [child15604]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7203_skip, output15604_skip]
  kernel_rfl

theorem node15606_cond_eq
    (child7192 : Flapjack.WordAlloc.removeDeadStructural input7192 value3600 value1 value2 = (output7192, value3600, value1))
    (child15605 : Flapjack.WordAlloc.removeDeadStructural input15605 value3600 value1 value2 = (output15605, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15606 value3600 value1 value2 = (output15606, value6896, value1) := by
  rw [input15606_def, output15606_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7192]
  try dsimp only
  rw [child15605]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7192_skip, output15605_skip]
  kernel_rfl

theorem node15607_cond_eq
    (child7191 : Flapjack.WordAlloc.removeDeadStructural input7191 value3599 value1 value2 = (output7191, value3600, value1))
    (child15606 : Flapjack.WordAlloc.removeDeadStructural input15606 value3600 value1 value2 = (output15606, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15607 value3599 value1 value2 = (output15607, value6896, value1) := by
  rw [input15607_def, output15607_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7191]
  try dsimp only
  rw [child15606]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7191_skip, output15606_skip]
  kernel_rfl

theorem node15608_cond_eq
    (child7190 : Flapjack.WordAlloc.removeDeadStructural input7190 value5 value1 value2 = (output7190, value3599, value1))
    (child15607 : Flapjack.WordAlloc.removeDeadStructural input15607 value3599 value1 value2 = (output15607, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15608 value5 value1 value2 = (output15608, value6896, value1) := by
  rw [input15608_def, output15608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7190]
  try dsimp only
  rw [child15607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7190_skip, output15607_skip]
  kernel_rfl

theorem node15609_cond_eq
    (child7187 : Flapjack.WordAlloc.removeDeadStructural input7187 value3592 value1 value2 = (output7187, value5, value1))
    (child15608 : Flapjack.WordAlloc.removeDeadStructural input15608 value5 value1 value2 = (output15608, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15609 value3592 value1 value2 = (output15609, value6896, value1) := by
  rw [input15609_def, output15609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7187]
  try dsimp only
  rw [child15608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7187_skip, output15608_skip]
  kernel_rfl

theorem node15610_cond_eq
    (child7176 : Flapjack.WordAlloc.removeDeadStructural input7176 value3592 value1 value2 = (output7176, value3592, value1))
    (child15609 : Flapjack.WordAlloc.removeDeadStructural input15609 value3592 value1 value2 = (output15609, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15610 value3592 value1 value2 = (output15610, value6896, value1) := by
  rw [input15610_def, output15610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7176]
  try dsimp only
  rw [child15609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7176_skip, output15609_skip]
  kernel_rfl

theorem node15611_cond_eq
    (child7175 : Flapjack.WordAlloc.removeDeadStructural input7175 value3591 value1 value2 = (output7175, value3592, value1))
    (child15610 : Flapjack.WordAlloc.removeDeadStructural input15610 value3592 value1 value2 = (output15610, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15611 value3591 value1 value2 = (output15611, value6896, value1) := by
  rw [input15611_def, output15611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7175]
  try dsimp only
  rw [child15610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7175_skip, output15610_skip]
  kernel_rfl

theorem node15612_cond_eq
    (child7174 : Flapjack.WordAlloc.removeDeadStructural input7174 value5 value1 value2 = (output7174, value3591, value1))
    (child15611 : Flapjack.WordAlloc.removeDeadStructural input15611 value3591 value1 value2 = (output15611, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15612 value5 value1 value2 = (output15612, value6896, value1) := by
  rw [input15612_def, output15612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7174]
  try dsimp only
  rw [child15611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7174_skip, output15611_skip]
  kernel_rfl

theorem node15613_cond_eq
    (child7171 : Flapjack.WordAlloc.removeDeadStructural input7171 value3584 value1 value2 = (output7171, value5, value1))
    (child15612 : Flapjack.WordAlloc.removeDeadStructural input15612 value5 value1 value2 = (output15612, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15613 value3584 value1 value2 = (output15613, value6896, value1) := by
  rw [input15613_def, output15613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7171]
  try dsimp only
  rw [child15612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7171_skip, output15612_skip]
  kernel_rfl

theorem node15614_cond_eq
    (child7160 : Flapjack.WordAlloc.removeDeadStructural input7160 value3584 value1 value2 = (output7160, value3584, value1))
    (child15613 : Flapjack.WordAlloc.removeDeadStructural input15613 value3584 value1 value2 = (output15613, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15614 value3584 value1 value2 = (output15614, value6896, value1) := by
  rw [input15614_def, output15614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7160]
  try dsimp only
  rw [child15613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7160_skip, output15613_skip]
  kernel_rfl

theorem node15615_cond_eq
    (child7159 : Flapjack.WordAlloc.removeDeadStructural input7159 value3583 value1 value2 = (output7159, value3584, value1))
    (child15614 : Flapjack.WordAlloc.removeDeadStructural input15614 value3584 value1 value2 = (output15614, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input15615 value3583 value1 value2 = (output15615, value6896, value1) := by
  rw [input15615_def, output15615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7159]
  try dsimp only
  rw [child15614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7159_skip, output15614_skip]
  kernel_rfl

#print axioms node15615_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
