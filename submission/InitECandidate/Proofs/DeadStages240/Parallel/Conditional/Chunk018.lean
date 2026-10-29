import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk018
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages240.Parallel
theorem node4608_cond_eq
    (child468 : Flapjack.WordAlloc.removeDeadStructural input468 value5 value1 value2 = (output468, value238, value1))
    (child4607 : Flapjack.WordAlloc.removeDeadStructural input4607 value238 value1 value2 = (output4607, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4608 value5 value1 value2 = (output4608, value1832, value1) := by
  rw [input4608_def, output4608_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child468]
  try dsimp only
  rw [child4607]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output468_skip, output4607_skip]
  kernel_rfl

theorem node4609_cond_eq
    (child465 : Flapjack.WordAlloc.removeDeadStructural input465 value232 value1 value2 = (output465, value5, value1))
    (child4608 : Flapjack.WordAlloc.removeDeadStructural input4608 value5 value1 value2 = (output4608, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4609 value232 value1 value2 = (output4609, value1832, value1) := by
  rw [input4609_def, output4609_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child465]
  try dsimp only
  rw [child4608]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output465_skip, output4608_skip]
  kernel_rfl

theorem node4610_cond_eq
    (child456 : Flapjack.WordAlloc.removeDeadStructural input456 value232 value1 value2 = (output456, value232, value1))
    (child4609 : Flapjack.WordAlloc.removeDeadStructural input4609 value232 value1 value2 = (output4609, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4610 value232 value1 value2 = (output4610, value1832, value1) := by
  rw [input4610_def, output4610_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child456]
  try dsimp only
  rw [child4609]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output456_skip, output4609_skip]
  kernel_rfl

theorem node4611_cond_eq
    (child455 : Flapjack.WordAlloc.removeDeadStructural input455 value231 value1 value2 = (output455, value232, value1))
    (child4610 : Flapjack.WordAlloc.removeDeadStructural input4610 value232 value1 value2 = (output4610, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4611 value231 value1 value2 = (output4611, value1832, value1) := by
  rw [input4611_def, output4611_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child455]
  try dsimp only
  rw [child4610]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output455_skip, output4610_skip]
  kernel_rfl

theorem node4612_cond_eq
    (child454 : Flapjack.WordAlloc.removeDeadStructural input454 value5 value1 value2 = (output454, value231, value1))
    (child4611 : Flapjack.WordAlloc.removeDeadStructural input4611 value231 value1 value2 = (output4611, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4612 value5 value1 value2 = (output4612, value1832, value1) := by
  rw [input4612_def, output4612_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child454]
  try dsimp only
  rw [child4611]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output454_skip, output4611_skip]
  kernel_rfl

theorem node4613_cond_eq
    (child451 : Flapjack.WordAlloc.removeDeadStructural input451 value225 value1 value2 = (output451, value5, value1))
    (child4612 : Flapjack.WordAlloc.removeDeadStructural input4612 value5 value1 value2 = (output4612, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4613 value225 value1 value2 = (output4613, value1832, value1) := by
  rw [input4613_def, output4613_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child451]
  try dsimp only
  rw [child4612]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output451_skip, output4612_skip]
  kernel_rfl

theorem node4614_cond_eq
    (child442 : Flapjack.WordAlloc.removeDeadStructural input442 value225 value1 value2 = (output442, value225, value1))
    (child4613 : Flapjack.WordAlloc.removeDeadStructural input4613 value225 value1 value2 = (output4613, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4614 value225 value1 value2 = (output4614, value1832, value1) := by
  rw [input4614_def, output4614_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child442]
  try dsimp only
  rw [child4613]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output442_skip, output4613_skip]
  kernel_rfl

theorem node4615_cond_eq
    (child441 : Flapjack.WordAlloc.removeDeadStructural input441 value224 value1 value2 = (output441, value225, value1))
    (child4614 : Flapjack.WordAlloc.removeDeadStructural input4614 value225 value1 value2 = (output4614, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4615 value224 value1 value2 = (output4615, value1832, value1) := by
  rw [input4615_def, output4615_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child441]
  try dsimp only
  rw [child4614]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output441_skip, output4614_skip]
  kernel_rfl

theorem node4616_cond_eq
    (child440 : Flapjack.WordAlloc.removeDeadStructural input440 value5 value1 value2 = (output440, value224, value1))
    (child4615 : Flapjack.WordAlloc.removeDeadStructural input4615 value224 value1 value2 = (output4615, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4616 value5 value1 value2 = (output4616, value1832, value1) := by
  rw [input4616_def, output4616_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child440]
  try dsimp only
  rw [child4615]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output440_skip, output4615_skip]
  kernel_rfl

theorem node4617_cond_eq
    (child437 : Flapjack.WordAlloc.removeDeadStructural input437 value218 value1 value2 = (output437, value5, value1))
    (child4616 : Flapjack.WordAlloc.removeDeadStructural input4616 value5 value1 value2 = (output4616, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4617 value218 value1 value2 = (output4617, value1832, value1) := by
  rw [input4617_def, output4617_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child437]
  try dsimp only
  rw [child4616]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output437_skip, output4616_skip]
  kernel_rfl

theorem node4618_cond_eq
    (child428 : Flapjack.WordAlloc.removeDeadStructural input428 value218 value1 value2 = (output428, value218, value1))
    (child4617 : Flapjack.WordAlloc.removeDeadStructural input4617 value218 value1 value2 = (output4617, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4618 value218 value1 value2 = (output4618, value1832, value1) := by
  rw [input4618_def, output4618_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child428]
  try dsimp only
  rw [child4617]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output428_skip, output4617_skip]
  kernel_rfl

theorem node4619_cond_eq
    (child427 : Flapjack.WordAlloc.removeDeadStructural input427 value217 value1 value2 = (output427, value218, value1))
    (child4618 : Flapjack.WordAlloc.removeDeadStructural input4618 value218 value1 value2 = (output4618, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4619 value217 value1 value2 = (output4619, value1832, value1) := by
  rw [input4619_def, output4619_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child427]
  try dsimp only
  rw [child4618]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output427_skip, output4618_skip]
  kernel_rfl

theorem node4620_cond_eq
    (child426 : Flapjack.WordAlloc.removeDeadStructural input426 value5 value1 value2 = (output426, value217, value1))
    (child4619 : Flapjack.WordAlloc.removeDeadStructural input4619 value217 value1 value2 = (output4619, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4620 value5 value1 value2 = (output4620, value1832, value1) := by
  rw [input4620_def, output4620_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child426]
  try dsimp only
  rw [child4619]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output426_skip, output4619_skip]
  kernel_rfl

theorem node4621_cond_eq
    (child423 : Flapjack.WordAlloc.removeDeadStructural input423 value211 value1 value2 = (output423, value5, value1))
    (child4620 : Flapjack.WordAlloc.removeDeadStructural input4620 value5 value1 value2 = (output4620, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4621 value211 value1 value2 = (output4621, value1832, value1) := by
  rw [input4621_def, output4621_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child423]
  try dsimp only
  rw [child4620]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output423_skip, output4620_skip]
  kernel_rfl

theorem node4622_cond_eq
    (child414 : Flapjack.WordAlloc.removeDeadStructural input414 value211 value1 value2 = (output414, value211, value1))
    (child4621 : Flapjack.WordAlloc.removeDeadStructural input4621 value211 value1 value2 = (output4621, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4622 value211 value1 value2 = (output4622, value1832, value1) := by
  rw [input4622_def, output4622_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child414]
  try dsimp only
  rw [child4621]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output414_skip, output4621_skip]
  kernel_rfl

theorem node4623_cond_eq
    (child413 : Flapjack.WordAlloc.removeDeadStructural input413 value210 value1 value2 = (output413, value211, value1))
    (child4622 : Flapjack.WordAlloc.removeDeadStructural input4622 value211 value1 value2 = (output4622, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4623 value210 value1 value2 = (output4623, value1832, value1) := by
  rw [input4623_def, output4623_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child413]
  try dsimp only
  rw [child4622]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output413_skip, output4622_skip]
  kernel_rfl

theorem node4624_cond_eq
    (child412 : Flapjack.WordAlloc.removeDeadStructural input412 value5 value1 value2 = (output412, value210, value1))
    (child4623 : Flapjack.WordAlloc.removeDeadStructural input4623 value210 value1 value2 = (output4623, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4624 value5 value1 value2 = (output4624, value1832, value1) := by
  rw [input4624_def, output4624_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child412]
  try dsimp only
  rw [child4623]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output412_skip, output4623_skip]
  kernel_rfl

theorem node4625_cond_eq
    (child409 : Flapjack.WordAlloc.removeDeadStructural input409 value204 value1 value2 = (output409, value5, value1))
    (child4624 : Flapjack.WordAlloc.removeDeadStructural input4624 value5 value1 value2 = (output4624, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4625 value204 value1 value2 = (output4625, value1832, value1) := by
  rw [input4625_def, output4625_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child409]
  try dsimp only
  rw [child4624]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output409_skip, output4624_skip]
  kernel_rfl

theorem node4626_cond_eq
    (child400 : Flapjack.WordAlloc.removeDeadStructural input400 value204 value1 value2 = (output400, value204, value1))
    (child4625 : Flapjack.WordAlloc.removeDeadStructural input4625 value204 value1 value2 = (output4625, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4626 value204 value1 value2 = (output4626, value1832, value1) := by
  rw [input4626_def, output4626_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child400]
  try dsimp only
  rw [child4625]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output400_skip, output4625_skip]
  kernel_rfl

theorem node4627_cond_eq
    (child399 : Flapjack.WordAlloc.removeDeadStructural input399 value203 value1 value2 = (output399, value204, value1))
    (child4626 : Flapjack.WordAlloc.removeDeadStructural input4626 value204 value1 value2 = (output4626, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4627 value203 value1 value2 = (output4627, value1832, value1) := by
  rw [input4627_def, output4627_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child399]
  try dsimp only
  rw [child4626]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output399_skip, output4626_skip]
  kernel_rfl

theorem node4628_cond_eq
    (child398 : Flapjack.WordAlloc.removeDeadStructural input398 value5 value1 value2 = (output398, value203, value1))
    (child4627 : Flapjack.WordAlloc.removeDeadStructural input4627 value203 value1 value2 = (output4627, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4628 value5 value1 value2 = (output4628, value1832, value1) := by
  rw [input4628_def, output4628_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child398]
  try dsimp only
  rw [child4627]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output398_skip, output4627_skip]
  kernel_rfl

theorem node4629_cond_eq
    (child395 : Flapjack.WordAlloc.removeDeadStructural input395 value197 value1 value2 = (output395, value5, value1))
    (child4628 : Flapjack.WordAlloc.removeDeadStructural input4628 value5 value1 value2 = (output4628, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4629 value197 value1 value2 = (output4629, value1832, value1) := by
  rw [input4629_def, output4629_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child395]
  try dsimp only
  rw [child4628]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output395_skip, output4628_skip]
  kernel_rfl

theorem node4630_cond_eq
    (child386 : Flapjack.WordAlloc.removeDeadStructural input386 value197 value1 value2 = (output386, value197, value1))
    (child4629 : Flapjack.WordAlloc.removeDeadStructural input4629 value197 value1 value2 = (output4629, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4630 value197 value1 value2 = (output4630, value1832, value1) := by
  rw [input4630_def, output4630_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child386]
  try dsimp only
  rw [child4629]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output386_skip, output4629_skip]
  kernel_rfl

theorem node4631_cond_eq
    (child385 : Flapjack.WordAlloc.removeDeadStructural input385 value196 value1 value2 = (output385, value197, value1))
    (child4630 : Flapjack.WordAlloc.removeDeadStructural input4630 value197 value1 value2 = (output4630, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4631 value196 value1 value2 = (output4631, value1832, value1) := by
  rw [input4631_def, output4631_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child385]
  try dsimp only
  rw [child4630]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output385_skip, output4630_skip]
  kernel_rfl

theorem node4632_cond_eq
    (child384 : Flapjack.WordAlloc.removeDeadStructural input384 value5 value1 value2 = (output384, value196, value1))
    (child4631 : Flapjack.WordAlloc.removeDeadStructural input4631 value196 value1 value2 = (output4631, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4632 value5 value1 value2 = (output4632, value1832, value1) := by
  rw [input4632_def, output4632_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child384]
  try dsimp only
  rw [child4631]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output384_skip, output4631_skip]
  kernel_rfl

theorem node4633_cond_eq
    (child381 : Flapjack.WordAlloc.removeDeadStructural input381 value190 value1 value2 = (output381, value5, value1))
    (child4632 : Flapjack.WordAlloc.removeDeadStructural input4632 value5 value1 value2 = (output4632, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4633 value190 value1 value2 = (output4633, value1832, value1) := by
  rw [input4633_def, output4633_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child381]
  try dsimp only
  rw [child4632]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output381_skip, output4632_skip]
  kernel_rfl

theorem node4634_cond_eq
    (child372 : Flapjack.WordAlloc.removeDeadStructural input372 value190 value1 value2 = (output372, value190, value1))
    (child4633 : Flapjack.WordAlloc.removeDeadStructural input4633 value190 value1 value2 = (output4633, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4634 value190 value1 value2 = (output4634, value1832, value1) := by
  rw [input4634_def, output4634_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child372]
  try dsimp only
  rw [child4633]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output372_skip, output4633_skip]
  kernel_rfl

theorem node4635_cond_eq
    (child371 : Flapjack.WordAlloc.removeDeadStructural input371 value189 value1 value2 = (output371, value190, value1))
    (child4634 : Flapjack.WordAlloc.removeDeadStructural input4634 value190 value1 value2 = (output4634, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4635 value189 value1 value2 = (output4635, value1832, value1) := by
  rw [input4635_def, output4635_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child371]
  try dsimp only
  rw [child4634]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output371_skip, output4634_skip]
  kernel_rfl

theorem node4636_cond_eq
    (child370 : Flapjack.WordAlloc.removeDeadStructural input370 value5 value1 value2 = (output370, value189, value1))
    (child4635 : Flapjack.WordAlloc.removeDeadStructural input4635 value189 value1 value2 = (output4635, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4636 value5 value1 value2 = (output4636, value1832, value1) := by
  rw [input4636_def, output4636_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child370]
  try dsimp only
  rw [child4635]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output370_skip, output4635_skip]
  kernel_rfl

theorem node4637_cond_eq
    (child367 : Flapjack.WordAlloc.removeDeadStructural input367 value183 value1 value2 = (output367, value5, value1))
    (child4636 : Flapjack.WordAlloc.removeDeadStructural input4636 value5 value1 value2 = (output4636, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4637 value183 value1 value2 = (output4637, value1832, value1) := by
  rw [input4637_def, output4637_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child367]
  try dsimp only
  rw [child4636]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output367_skip, output4636_skip]
  kernel_rfl

theorem node4638_cond_eq
    (child358 : Flapjack.WordAlloc.removeDeadStructural input358 value183 value1 value2 = (output358, value183, value1))
    (child4637 : Flapjack.WordAlloc.removeDeadStructural input4637 value183 value1 value2 = (output4637, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4638 value183 value1 value2 = (output4638, value1832, value1) := by
  rw [input4638_def, output4638_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child358]
  try dsimp only
  rw [child4637]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output358_skip, output4637_skip]
  kernel_rfl

theorem node4639_cond_eq
    (child357 : Flapjack.WordAlloc.removeDeadStructural input357 value182 value1 value2 = (output357, value183, value1))
    (child4638 : Flapjack.WordAlloc.removeDeadStructural input4638 value183 value1 value2 = (output4638, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4639 value182 value1 value2 = (output4639, value1832, value1) := by
  rw [input4639_def, output4639_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child357]
  try dsimp only
  rw [child4638]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output357_skip, output4638_skip]
  kernel_rfl

theorem node4640_cond_eq
    (child356 : Flapjack.WordAlloc.removeDeadStructural input356 value5 value1 value2 = (output356, value182, value1))
    (child4639 : Flapjack.WordAlloc.removeDeadStructural input4639 value182 value1 value2 = (output4639, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4640 value5 value1 value2 = (output4640, value1832, value1) := by
  rw [input4640_def, output4640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child356]
  try dsimp only
  rw [child4639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output356_skip, output4639_skip]
  kernel_rfl

theorem node4641_cond_eq
    (child353 : Flapjack.WordAlloc.removeDeadStructural input353 value176 value1 value2 = (output353, value5, value1))
    (child4640 : Flapjack.WordAlloc.removeDeadStructural input4640 value5 value1 value2 = (output4640, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4641 value176 value1 value2 = (output4641, value1832, value1) := by
  rw [input4641_def, output4641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child353]
  try dsimp only
  rw [child4640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output353_skip, output4640_skip]
  kernel_rfl

theorem node4642_cond_eq
    (child344 : Flapjack.WordAlloc.removeDeadStructural input344 value176 value1 value2 = (output344, value176, value1))
    (child4641 : Flapjack.WordAlloc.removeDeadStructural input4641 value176 value1 value2 = (output4641, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4642 value176 value1 value2 = (output4642, value1832, value1) := by
  rw [input4642_def, output4642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child344]
  try dsimp only
  rw [child4641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output344_skip, output4641_skip]
  kernel_rfl

theorem node4643_cond_eq
    (child343 : Flapjack.WordAlloc.removeDeadStructural input343 value175 value1 value2 = (output343, value176, value1))
    (child4642 : Flapjack.WordAlloc.removeDeadStructural input4642 value176 value1 value2 = (output4642, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4643 value175 value1 value2 = (output4643, value1832, value1) := by
  rw [input4643_def, output4643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child343]
  try dsimp only
  rw [child4642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output343_skip, output4642_skip]
  kernel_rfl

theorem node4644_cond_eq
    (child342 : Flapjack.WordAlloc.removeDeadStructural input342 value5 value1 value2 = (output342, value175, value1))
    (child4643 : Flapjack.WordAlloc.removeDeadStructural input4643 value175 value1 value2 = (output4643, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4644 value5 value1 value2 = (output4644, value1832, value1) := by
  rw [input4644_def, output4644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child342]
  try dsimp only
  rw [child4643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output342_skip, output4643_skip]
  kernel_rfl

theorem node4645_cond_eq
    (child339 : Flapjack.WordAlloc.removeDeadStructural input339 value169 value1 value2 = (output339, value5, value1))
    (child4644 : Flapjack.WordAlloc.removeDeadStructural input4644 value5 value1 value2 = (output4644, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4645 value169 value1 value2 = (output4645, value1832, value1) := by
  rw [input4645_def, output4645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child339]
  try dsimp only
  rw [child4644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output339_skip, output4644_skip]
  kernel_rfl

theorem node4646_cond_eq
    (child330 : Flapjack.WordAlloc.removeDeadStructural input330 value169 value1 value2 = (output330, value169, value1))
    (child4645 : Flapjack.WordAlloc.removeDeadStructural input4645 value169 value1 value2 = (output4645, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4646 value169 value1 value2 = (output4646, value1832, value1) := by
  rw [input4646_def, output4646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child330]
  try dsimp only
  rw [child4645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output330_skip, output4645_skip]
  kernel_rfl

theorem node4647_cond_eq
    (child329 : Flapjack.WordAlloc.removeDeadStructural input329 value168 value1 value2 = (output329, value169, value1))
    (child4646 : Flapjack.WordAlloc.removeDeadStructural input4646 value169 value1 value2 = (output4646, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4647 value168 value1 value2 = (output4647, value1832, value1) := by
  rw [input4647_def, output4647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child329]
  try dsimp only
  rw [child4646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output329_skip, output4646_skip]
  kernel_rfl

theorem node4648_cond_eq
    (child328 : Flapjack.WordAlloc.removeDeadStructural input328 value5 value1 value2 = (output328, value168, value1))
    (child4647 : Flapjack.WordAlloc.removeDeadStructural input4647 value168 value1 value2 = (output4647, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4648 value5 value1 value2 = (output4648, value1832, value1) := by
  rw [input4648_def, output4648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child328]
  try dsimp only
  rw [child4647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output328_skip, output4647_skip]
  kernel_rfl

theorem node4649_cond_eq
    (child325 : Flapjack.WordAlloc.removeDeadStructural input325 value162 value1 value2 = (output325, value5, value1))
    (child4648 : Flapjack.WordAlloc.removeDeadStructural input4648 value5 value1 value2 = (output4648, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4649 value162 value1 value2 = (output4649, value1832, value1) := by
  rw [input4649_def, output4649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child325]
  try dsimp only
  rw [child4648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output325_skip, output4648_skip]
  kernel_rfl

theorem node4650_cond_eq
    (child316 : Flapjack.WordAlloc.removeDeadStructural input316 value162 value1 value2 = (output316, value162, value1))
    (child4649 : Flapjack.WordAlloc.removeDeadStructural input4649 value162 value1 value2 = (output4649, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4650 value162 value1 value2 = (output4650, value1832, value1) := by
  rw [input4650_def, output4650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child316]
  try dsimp only
  rw [child4649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output316_skip, output4649_skip]
  kernel_rfl

theorem node4651_cond_eq
    (child315 : Flapjack.WordAlloc.removeDeadStructural input315 value161 value1 value2 = (output315, value162, value1))
    (child4650 : Flapjack.WordAlloc.removeDeadStructural input4650 value162 value1 value2 = (output4650, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4651 value161 value1 value2 = (output4651, value1832, value1) := by
  rw [input4651_def, output4651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child315]
  try dsimp only
  rw [child4650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output315_skip, output4650_skip]
  kernel_rfl

theorem node4652_cond_eq
    (child314 : Flapjack.WordAlloc.removeDeadStructural input314 value5 value1 value2 = (output314, value161, value1))
    (child4651 : Flapjack.WordAlloc.removeDeadStructural input4651 value161 value1 value2 = (output4651, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4652 value5 value1 value2 = (output4652, value1832, value1) := by
  rw [input4652_def, output4652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child314]
  try dsimp only
  rw [child4651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output314_skip, output4651_skip]
  kernel_rfl

theorem node4653_cond_eq
    (child311 : Flapjack.WordAlloc.removeDeadStructural input311 value155 value1 value2 = (output311, value5, value1))
    (child4652 : Flapjack.WordAlloc.removeDeadStructural input4652 value5 value1 value2 = (output4652, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4653 value155 value1 value2 = (output4653, value1832, value1) := by
  rw [input4653_def, output4653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child311]
  try dsimp only
  rw [child4652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output311_skip, output4652_skip]
  kernel_rfl

theorem node4654_cond_eq
    (child302 : Flapjack.WordAlloc.removeDeadStructural input302 value155 value1 value2 = (output302, value155, value1))
    (child4653 : Flapjack.WordAlloc.removeDeadStructural input4653 value155 value1 value2 = (output4653, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4654 value155 value1 value2 = (output4654, value1832, value1) := by
  rw [input4654_def, output4654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child302]
  try dsimp only
  rw [child4653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output302_skip, output4653_skip]
  kernel_rfl

theorem node4655_cond_eq
    (child301 : Flapjack.WordAlloc.removeDeadStructural input301 value154 value1 value2 = (output301, value155, value1))
    (child4654 : Flapjack.WordAlloc.removeDeadStructural input4654 value155 value1 value2 = (output4654, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4655 value154 value1 value2 = (output4655, value1832, value1) := by
  rw [input4655_def, output4655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child301]
  try dsimp only
  rw [child4654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output301_skip, output4654_skip]
  kernel_rfl

theorem node4656_cond_eq
    (child300 : Flapjack.WordAlloc.removeDeadStructural input300 value5 value1 value2 = (output300, value154, value1))
    (child4655 : Flapjack.WordAlloc.removeDeadStructural input4655 value154 value1 value2 = (output4655, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4656 value5 value1 value2 = (output4656, value1832, value1) := by
  rw [input4656_def, output4656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child300]
  try dsimp only
  rw [child4655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output300_skip, output4655_skip]
  kernel_rfl

theorem node4657_cond_eq
    (child297 : Flapjack.WordAlloc.removeDeadStructural input297 value148 value1 value2 = (output297, value5, value1))
    (child4656 : Flapjack.WordAlloc.removeDeadStructural input4656 value5 value1 value2 = (output4656, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4657 value148 value1 value2 = (output4657, value1832, value1) := by
  rw [input4657_def, output4657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child297]
  try dsimp only
  rw [child4656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output297_skip, output4656_skip]
  kernel_rfl

theorem node4658_cond_eq
    (child288 : Flapjack.WordAlloc.removeDeadStructural input288 value148 value1 value2 = (output288, value148, value1))
    (child4657 : Flapjack.WordAlloc.removeDeadStructural input4657 value148 value1 value2 = (output4657, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4658 value148 value1 value2 = (output4658, value1832, value1) := by
  rw [input4658_def, output4658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child288]
  try dsimp only
  rw [child4657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output288_skip, output4657_skip]
  kernel_rfl

theorem node4659_cond_eq
    (child287 : Flapjack.WordAlloc.removeDeadStructural input287 value147 value1 value2 = (output287, value148, value1))
    (child4658 : Flapjack.WordAlloc.removeDeadStructural input4658 value148 value1 value2 = (output4658, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4659 value147 value1 value2 = (output4659, value1832, value1) := by
  rw [input4659_def, output4659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child287]
  try dsimp only
  rw [child4658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output287_skip, output4658_skip]
  kernel_rfl

theorem node4660_cond_eq
    (child286 : Flapjack.WordAlloc.removeDeadStructural input286 value5 value1 value2 = (output286, value147, value1))
    (child4659 : Flapjack.WordAlloc.removeDeadStructural input4659 value147 value1 value2 = (output4659, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4660 value5 value1 value2 = (output4660, value1832, value1) := by
  rw [input4660_def, output4660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child286]
  try dsimp only
  rw [child4659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output286_skip, output4659_skip]
  kernel_rfl

theorem node4661_cond_eq
    (child283 : Flapjack.WordAlloc.removeDeadStructural input283 value141 value1 value2 = (output283, value5, value1))
    (child4660 : Flapjack.WordAlloc.removeDeadStructural input4660 value5 value1 value2 = (output4660, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4661 value141 value1 value2 = (output4661, value1832, value1) := by
  rw [input4661_def, output4661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child283]
  try dsimp only
  rw [child4660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output283_skip, output4660_skip]
  kernel_rfl

theorem node4662_cond_eq
    (child274 : Flapjack.WordAlloc.removeDeadStructural input274 value141 value1 value2 = (output274, value141, value1))
    (child4661 : Flapjack.WordAlloc.removeDeadStructural input4661 value141 value1 value2 = (output4661, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4662 value141 value1 value2 = (output4662, value1832, value1) := by
  rw [input4662_def, output4662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child274]
  try dsimp only
  rw [child4661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output274_skip, output4661_skip]
  kernel_rfl

theorem node4663_cond_eq
    (child273 : Flapjack.WordAlloc.removeDeadStructural input273 value140 value1 value2 = (output273, value141, value1))
    (child4662 : Flapjack.WordAlloc.removeDeadStructural input4662 value141 value1 value2 = (output4662, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4663 value140 value1 value2 = (output4663, value1832, value1) := by
  rw [input4663_def, output4663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child273]
  try dsimp only
  rw [child4662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output273_skip, output4662_skip]
  kernel_rfl

theorem node4664_cond_eq
    (child272 : Flapjack.WordAlloc.removeDeadStructural input272 value5 value1 value2 = (output272, value140, value1))
    (child4663 : Flapjack.WordAlloc.removeDeadStructural input4663 value140 value1 value2 = (output4663, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4664 value5 value1 value2 = (output4664, value1832, value1) := by
  rw [input4664_def, output4664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child272]
  try dsimp only
  rw [child4663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output272_skip, output4663_skip]
  kernel_rfl

theorem node4665_cond_eq
    (child269 : Flapjack.WordAlloc.removeDeadStructural input269 value134 value1 value2 = (output269, value5, value1))
    (child4664 : Flapjack.WordAlloc.removeDeadStructural input4664 value5 value1 value2 = (output4664, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4665 value134 value1 value2 = (output4665, value1832, value1) := by
  rw [input4665_def, output4665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child269]
  try dsimp only
  rw [child4664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output269_skip, output4664_skip]
  kernel_rfl

theorem node4666_cond_eq
    (child260 : Flapjack.WordAlloc.removeDeadStructural input260 value134 value1 value2 = (output260, value134, value1))
    (child4665 : Flapjack.WordAlloc.removeDeadStructural input4665 value134 value1 value2 = (output4665, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4666 value134 value1 value2 = (output4666, value1832, value1) := by
  rw [input4666_def, output4666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child260]
  try dsimp only
  rw [child4665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output260_skip, output4665_skip]
  kernel_rfl

theorem node4667_cond_eq
    (child259 : Flapjack.WordAlloc.removeDeadStructural input259 value133 value1 value2 = (output259, value134, value1))
    (child4666 : Flapjack.WordAlloc.removeDeadStructural input4666 value134 value1 value2 = (output4666, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4667 value133 value1 value2 = (output4667, value1832, value1) := by
  rw [input4667_def, output4667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child259]
  try dsimp only
  rw [child4666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output259_skip, output4666_skip]
  kernel_rfl

theorem node4668_cond_eq
    (child258 : Flapjack.WordAlloc.removeDeadStructural input258 value5 value1 value2 = (output258, value133, value1))
    (child4667 : Flapjack.WordAlloc.removeDeadStructural input4667 value133 value1 value2 = (output4667, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4668 value5 value1 value2 = (output4668, value1832, value1) := by
  rw [input4668_def, output4668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child258]
  try dsimp only
  rw [child4667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output258_skip, output4667_skip]
  kernel_rfl

theorem node4669_cond_eq
    (child255 : Flapjack.WordAlloc.removeDeadStructural input255 value127 value1 value2 = (output255, value5, value1))
    (child4668 : Flapjack.WordAlloc.removeDeadStructural input4668 value5 value1 value2 = (output4668, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4669 value127 value1 value2 = (output4669, value1832, value1) := by
  rw [input4669_def, output4669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child255]
  try dsimp only
  rw [child4668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output255_skip, output4668_skip]
  kernel_rfl

theorem node4670_cond_eq
    (child246 : Flapjack.WordAlloc.removeDeadStructural input246 value127 value1 value2 = (output246, value127, value1))
    (child4669 : Flapjack.WordAlloc.removeDeadStructural input4669 value127 value1 value2 = (output4669, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4670 value127 value1 value2 = (output4670, value1832, value1) := by
  rw [input4670_def, output4670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child246]
  try dsimp only
  rw [child4669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output246_skip, output4669_skip]
  kernel_rfl

theorem node4671_cond_eq
    (child245 : Flapjack.WordAlloc.removeDeadStructural input245 value126 value1 value2 = (output245, value127, value1))
    (child4670 : Flapjack.WordAlloc.removeDeadStructural input4670 value127 value1 value2 = (output4670, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4671 value126 value1 value2 = (output4671, value1832, value1) := by
  rw [input4671_def, output4671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child245]
  try dsimp only
  rw [child4670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output245_skip, output4670_skip]
  kernel_rfl

theorem node4672_cond_eq
    (child244 : Flapjack.WordAlloc.removeDeadStructural input244 value5 value1 value2 = (output244, value126, value1))
    (child4671 : Flapjack.WordAlloc.removeDeadStructural input4671 value126 value1 value2 = (output4671, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4672 value5 value1 value2 = (output4672, value1832, value1) := by
  rw [input4672_def, output4672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child244]
  try dsimp only
  rw [child4671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output244_skip, output4671_skip]
  kernel_rfl

theorem node4673_cond_eq
    (child241 : Flapjack.WordAlloc.removeDeadStructural input241 value120 value1 value2 = (output241, value5, value1))
    (child4672 : Flapjack.WordAlloc.removeDeadStructural input4672 value5 value1 value2 = (output4672, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4673 value120 value1 value2 = (output4673, value1832, value1) := by
  rw [input4673_def, output4673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child241]
  try dsimp only
  rw [child4672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output241_skip, output4672_skip]
  kernel_rfl

theorem node4674_cond_eq
    (child232 : Flapjack.WordAlloc.removeDeadStructural input232 value120 value1 value2 = (output232, value120, value1))
    (child4673 : Flapjack.WordAlloc.removeDeadStructural input4673 value120 value1 value2 = (output4673, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4674 value120 value1 value2 = (output4674, value1832, value1) := by
  rw [input4674_def, output4674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child232]
  try dsimp only
  rw [child4673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output232_skip, output4673_skip]
  kernel_rfl

theorem node4675_cond_eq
    (child231 : Flapjack.WordAlloc.removeDeadStructural input231 value119 value1 value2 = (output231, value120, value1))
    (child4674 : Flapjack.WordAlloc.removeDeadStructural input4674 value120 value1 value2 = (output4674, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4675 value119 value1 value2 = (output4675, value1832, value1) := by
  rw [input4675_def, output4675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child231]
  try dsimp only
  rw [child4674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output231_skip, output4674_skip]
  kernel_rfl

theorem node4676_cond_eq
    (child230 : Flapjack.WordAlloc.removeDeadStructural input230 value5 value1 value2 = (output230, value119, value1))
    (child4675 : Flapjack.WordAlloc.removeDeadStructural input4675 value119 value1 value2 = (output4675, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4676 value5 value1 value2 = (output4676, value1832, value1) := by
  rw [input4676_def, output4676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child230]
  try dsimp only
  rw [child4675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output230_skip, output4675_skip]
  kernel_rfl

theorem node4677_cond_eq
    (child227 : Flapjack.WordAlloc.removeDeadStructural input227 value113 value1 value2 = (output227, value5, value1))
    (child4676 : Flapjack.WordAlloc.removeDeadStructural input4676 value5 value1 value2 = (output4676, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4677 value113 value1 value2 = (output4677, value1832, value1) := by
  rw [input4677_def, output4677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child227]
  try dsimp only
  rw [child4676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output227_skip, output4676_skip]
  kernel_rfl

theorem node4678_cond_eq
    (child218 : Flapjack.WordAlloc.removeDeadStructural input218 value113 value1 value2 = (output218, value113, value1))
    (child4677 : Flapjack.WordAlloc.removeDeadStructural input4677 value113 value1 value2 = (output4677, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4678 value113 value1 value2 = (output4678, value1832, value1) := by
  rw [input4678_def, output4678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child218]
  try dsimp only
  rw [child4677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output218_skip, output4677_skip]
  kernel_rfl

theorem node4679_cond_eq
    (child217 : Flapjack.WordAlloc.removeDeadStructural input217 value112 value1 value2 = (output217, value113, value1))
    (child4678 : Flapjack.WordAlloc.removeDeadStructural input4678 value113 value1 value2 = (output4678, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4679 value112 value1 value2 = (output4679, value1832, value1) := by
  rw [input4679_def, output4679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child217]
  try dsimp only
  rw [child4678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output217_skip, output4678_skip]
  kernel_rfl

theorem node4680_cond_eq
    (child216 : Flapjack.WordAlloc.removeDeadStructural input216 value5 value1 value2 = (output216, value112, value1))
    (child4679 : Flapjack.WordAlloc.removeDeadStructural input4679 value112 value1 value2 = (output4679, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4680 value5 value1 value2 = (output4680, value1832, value1) := by
  rw [input4680_def, output4680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child216]
  try dsimp only
  rw [child4679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output216_skip, output4679_skip]
  kernel_rfl

theorem node4681_cond_eq
    (child213 : Flapjack.WordAlloc.removeDeadStructural input213 value106 value1 value2 = (output213, value5, value1))
    (child4680 : Flapjack.WordAlloc.removeDeadStructural input4680 value5 value1 value2 = (output4680, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4681 value106 value1 value2 = (output4681, value1832, value1) := by
  rw [input4681_def, output4681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child213]
  try dsimp only
  rw [child4680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output213_skip, output4680_skip]
  kernel_rfl

theorem node4682_cond_eq
    (child204 : Flapjack.WordAlloc.removeDeadStructural input204 value106 value1 value2 = (output204, value106, value1))
    (child4681 : Flapjack.WordAlloc.removeDeadStructural input4681 value106 value1 value2 = (output4681, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4682 value106 value1 value2 = (output4682, value1832, value1) := by
  rw [input4682_def, output4682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child204]
  try dsimp only
  rw [child4681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output204_skip, output4681_skip]
  kernel_rfl

theorem node4683_cond_eq
    (child203 : Flapjack.WordAlloc.removeDeadStructural input203 value105 value1 value2 = (output203, value106, value1))
    (child4682 : Flapjack.WordAlloc.removeDeadStructural input4682 value106 value1 value2 = (output4682, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4683 value105 value1 value2 = (output4683, value1832, value1) := by
  rw [input4683_def, output4683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child203]
  try dsimp only
  rw [child4682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output203_skip, output4682_skip]
  kernel_rfl

theorem node4684_cond_eq
    (child202 : Flapjack.WordAlloc.removeDeadStructural input202 value5 value1 value2 = (output202, value105, value1))
    (child4683 : Flapjack.WordAlloc.removeDeadStructural input4683 value105 value1 value2 = (output4683, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4684 value5 value1 value2 = (output4684, value1832, value1) := by
  rw [input4684_def, output4684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child202]
  try dsimp only
  rw [child4683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output202_skip, output4683_skip]
  kernel_rfl

theorem node4685_cond_eq
    (child199 : Flapjack.WordAlloc.removeDeadStructural input199 value99 value1 value2 = (output199, value5, value1))
    (child4684 : Flapjack.WordAlloc.removeDeadStructural input4684 value5 value1 value2 = (output4684, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4685 value99 value1 value2 = (output4685, value1832, value1) := by
  rw [input4685_def, output4685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child199]
  try dsimp only
  rw [child4684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output199_skip, output4684_skip]
  kernel_rfl

theorem node4686_cond_eq
    (child190 : Flapjack.WordAlloc.removeDeadStructural input190 value99 value1 value2 = (output190, value99, value1))
    (child4685 : Flapjack.WordAlloc.removeDeadStructural input4685 value99 value1 value2 = (output4685, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4686 value99 value1 value2 = (output4686, value1832, value1) := by
  rw [input4686_def, output4686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child190]
  try dsimp only
  rw [child4685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output190_skip, output4685_skip]
  kernel_rfl

theorem node4687_cond_eq
    (child189 : Flapjack.WordAlloc.removeDeadStructural input189 value98 value1 value2 = (output189, value99, value1))
    (child4686 : Flapjack.WordAlloc.removeDeadStructural input4686 value99 value1 value2 = (output4686, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4687 value98 value1 value2 = (output4687, value1832, value1) := by
  rw [input4687_def, output4687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child189]
  try dsimp only
  rw [child4686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output189_skip, output4686_skip]
  kernel_rfl

theorem node4688_cond_eq
    (child188 : Flapjack.WordAlloc.removeDeadStructural input188 value5 value1 value2 = (output188, value98, value1))
    (child4687 : Flapjack.WordAlloc.removeDeadStructural input4687 value98 value1 value2 = (output4687, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4688 value5 value1 value2 = (output4688, value1832, value1) := by
  rw [input4688_def, output4688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child188]
  try dsimp only
  rw [child4687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output188_skip, output4687_skip]
  kernel_rfl

theorem node4689_cond_eq
    (child185 : Flapjack.WordAlloc.removeDeadStructural input185 value92 value1 value2 = (output185, value5, value1))
    (child4688 : Flapjack.WordAlloc.removeDeadStructural input4688 value5 value1 value2 = (output4688, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4689 value92 value1 value2 = (output4689, value1832, value1) := by
  rw [input4689_def, output4689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child185]
  try dsimp only
  rw [child4688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output185_skip, output4688_skip]
  kernel_rfl

theorem node4690_cond_eq
    (child176 : Flapjack.WordAlloc.removeDeadStructural input176 value92 value1 value2 = (output176, value92, value1))
    (child4689 : Flapjack.WordAlloc.removeDeadStructural input4689 value92 value1 value2 = (output4689, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4690 value92 value1 value2 = (output4690, value1832, value1) := by
  rw [input4690_def, output4690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child176]
  try dsimp only
  rw [child4689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output176_skip, output4689_skip]
  kernel_rfl

theorem node4691_cond_eq
    (child175 : Flapjack.WordAlloc.removeDeadStructural input175 value91 value1 value2 = (output175, value92, value1))
    (child4690 : Flapjack.WordAlloc.removeDeadStructural input4690 value92 value1 value2 = (output4690, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4691 value91 value1 value2 = (output4691, value1832, value1) := by
  rw [input4691_def, output4691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child175]
  try dsimp only
  rw [child4690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output175_skip, output4690_skip]
  kernel_rfl

theorem node4692_cond_eq
    (child174 : Flapjack.WordAlloc.removeDeadStructural input174 value5 value1 value2 = (output174, value91, value1))
    (child4691 : Flapjack.WordAlloc.removeDeadStructural input4691 value91 value1 value2 = (output4691, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4692 value5 value1 value2 = (output4692, value1832, value1) := by
  rw [input4692_def, output4692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child174]
  try dsimp only
  rw [child4691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output174_skip, output4691_skip]
  kernel_rfl

theorem node4693_cond_eq
    (child171 : Flapjack.WordAlloc.removeDeadStructural input171 value85 value1 value2 = (output171, value5, value1))
    (child4692 : Flapjack.WordAlloc.removeDeadStructural input4692 value5 value1 value2 = (output4692, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4693 value85 value1 value2 = (output4693, value1832, value1) := by
  rw [input4693_def, output4693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child171]
  try dsimp only
  rw [child4692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output171_skip, output4692_skip]
  kernel_rfl

theorem node4694_cond_eq
    (child162 : Flapjack.WordAlloc.removeDeadStructural input162 value85 value1 value2 = (output162, value85, value1))
    (child4693 : Flapjack.WordAlloc.removeDeadStructural input4693 value85 value1 value2 = (output4693, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4694 value85 value1 value2 = (output4694, value1832, value1) := by
  rw [input4694_def, output4694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child162]
  try dsimp only
  rw [child4693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output162_skip, output4693_skip]
  kernel_rfl

theorem node4695_cond_eq
    (child161 : Flapjack.WordAlloc.removeDeadStructural input161 value84 value1 value2 = (output161, value85, value1))
    (child4694 : Flapjack.WordAlloc.removeDeadStructural input4694 value85 value1 value2 = (output4694, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4695 value84 value1 value2 = (output4695, value1832, value1) := by
  rw [input4695_def, output4695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child161]
  try dsimp only
  rw [child4694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output161_skip, output4694_skip]
  kernel_rfl

theorem node4696_cond_eq
    (child160 : Flapjack.WordAlloc.removeDeadStructural input160 value5 value1 value2 = (output160, value84, value1))
    (child4695 : Flapjack.WordAlloc.removeDeadStructural input4695 value84 value1 value2 = (output4695, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4696 value5 value1 value2 = (output4696, value1832, value1) := by
  rw [input4696_def, output4696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child160]
  try dsimp only
  rw [child4695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output160_skip, output4695_skip]
  kernel_rfl

theorem node4697_cond_eq
    (child157 : Flapjack.WordAlloc.removeDeadStructural input157 value78 value1 value2 = (output157, value5, value1))
    (child4696 : Flapjack.WordAlloc.removeDeadStructural input4696 value5 value1 value2 = (output4696, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4697 value78 value1 value2 = (output4697, value1832, value1) := by
  rw [input4697_def, output4697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child157]
  try dsimp only
  rw [child4696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output157_skip, output4696_skip]
  kernel_rfl

theorem node4698_cond_eq
    (child148 : Flapjack.WordAlloc.removeDeadStructural input148 value78 value1 value2 = (output148, value78, value1))
    (child4697 : Flapjack.WordAlloc.removeDeadStructural input4697 value78 value1 value2 = (output4697, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4698 value78 value1 value2 = (output4698, value1832, value1) := by
  rw [input4698_def, output4698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child148]
  try dsimp only
  rw [child4697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output148_skip, output4697_skip]
  kernel_rfl

theorem node4699_cond_eq
    (child147 : Flapjack.WordAlloc.removeDeadStructural input147 value77 value1 value2 = (output147, value78, value1))
    (child4698 : Flapjack.WordAlloc.removeDeadStructural input4698 value78 value1 value2 = (output4698, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4699 value77 value1 value2 = (output4699, value1832, value1) := by
  rw [input4699_def, output4699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child147]
  try dsimp only
  rw [child4698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output147_skip, output4698_skip]
  kernel_rfl

theorem node4700_cond_eq
    (child146 : Flapjack.WordAlloc.removeDeadStructural input146 value5 value1 value2 = (output146, value77, value1))
    (child4699 : Flapjack.WordAlloc.removeDeadStructural input4699 value77 value1 value2 = (output4699, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4700 value5 value1 value2 = (output4700, value1832, value1) := by
  rw [input4700_def, output4700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child146]
  try dsimp only
  rw [child4699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output146_skip, output4699_skip]
  kernel_rfl

theorem node4701_cond_eq
    (child143 : Flapjack.WordAlloc.removeDeadStructural input143 value71 value1 value2 = (output143, value5, value1))
    (child4700 : Flapjack.WordAlloc.removeDeadStructural input4700 value5 value1 value2 = (output4700, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4701 value71 value1 value2 = (output4701, value1832, value1) := by
  rw [input4701_def, output4701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child143]
  try dsimp only
  rw [child4700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output143_skip, output4700_skip]
  kernel_rfl

theorem node4702_cond_eq
    (child134 : Flapjack.WordAlloc.removeDeadStructural input134 value71 value1 value2 = (output134, value71, value1))
    (child4701 : Flapjack.WordAlloc.removeDeadStructural input4701 value71 value1 value2 = (output4701, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4702 value71 value1 value2 = (output4702, value1832, value1) := by
  rw [input4702_def, output4702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child134]
  try dsimp only
  rw [child4701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output134_skip, output4701_skip]
  kernel_rfl

theorem node4703_cond_eq
    (child133 : Flapjack.WordAlloc.removeDeadStructural input133 value70 value1 value2 = (output133, value71, value1))
    (child4702 : Flapjack.WordAlloc.removeDeadStructural input4702 value71 value1 value2 = (output4702, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4703 value70 value1 value2 = (output4703, value1832, value1) := by
  rw [input4703_def, output4703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child133]
  try dsimp only
  rw [child4702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output133_skip, output4702_skip]
  kernel_rfl

theorem node4704_cond_eq
    (child132 : Flapjack.WordAlloc.removeDeadStructural input132 value5 value1 value2 = (output132, value70, value1))
    (child4703 : Flapjack.WordAlloc.removeDeadStructural input4703 value70 value1 value2 = (output4703, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4704 value5 value1 value2 = (output4704, value1832, value1) := by
  rw [input4704_def, output4704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child132]
  try dsimp only
  rw [child4703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output132_skip, output4703_skip]
  kernel_rfl

theorem node4705_cond_eq
    (child129 : Flapjack.WordAlloc.removeDeadStructural input129 value64 value1 value2 = (output129, value5, value1))
    (child4704 : Flapjack.WordAlloc.removeDeadStructural input4704 value5 value1 value2 = (output4704, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4705 value64 value1 value2 = (output4705, value1832, value1) := by
  rw [input4705_def, output4705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child129]
  try dsimp only
  rw [child4704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output129_skip, output4704_skip]
  kernel_rfl

theorem node4706_cond_eq
    (child120 : Flapjack.WordAlloc.removeDeadStructural input120 value64 value1 value2 = (output120, value64, value1))
    (child4705 : Flapjack.WordAlloc.removeDeadStructural input4705 value64 value1 value2 = (output4705, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4706 value64 value1 value2 = (output4706, value1832, value1) := by
  rw [input4706_def, output4706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child120]
  try dsimp only
  rw [child4705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output120_skip, output4705_skip]
  kernel_rfl

theorem node4707_cond_eq
    (child119 : Flapjack.WordAlloc.removeDeadStructural input119 value63 value1 value2 = (output119, value64, value1))
    (child4706 : Flapjack.WordAlloc.removeDeadStructural input4706 value64 value1 value2 = (output4706, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4707 value63 value1 value2 = (output4707, value1832, value1) := by
  rw [input4707_def, output4707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child119]
  try dsimp only
  rw [child4706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output119_skip, output4706_skip]
  kernel_rfl

theorem node4708_cond_eq
    (child118 : Flapjack.WordAlloc.removeDeadStructural input118 value5 value1 value2 = (output118, value63, value1))
    (child4707 : Flapjack.WordAlloc.removeDeadStructural input4707 value63 value1 value2 = (output4707, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4708 value5 value1 value2 = (output4708, value1832, value1) := by
  rw [input4708_def, output4708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child118]
  try dsimp only
  rw [child4707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output118_skip, output4707_skip]
  kernel_rfl

theorem node4709_cond_eq
    (child115 : Flapjack.WordAlloc.removeDeadStructural input115 value57 value1 value2 = (output115, value5, value1))
    (child4708 : Flapjack.WordAlloc.removeDeadStructural input4708 value5 value1 value2 = (output4708, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4709 value57 value1 value2 = (output4709, value1832, value1) := by
  rw [input4709_def, output4709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child115]
  try dsimp only
  rw [child4708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output115_skip, output4708_skip]
  kernel_rfl

theorem node4710_cond_eq
    (child106 : Flapjack.WordAlloc.removeDeadStructural input106 value57 value1 value2 = (output106, value57, value1))
    (child4709 : Flapjack.WordAlloc.removeDeadStructural input4709 value57 value1 value2 = (output4709, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4710 value57 value1 value2 = (output4710, value1832, value1) := by
  rw [input4710_def, output4710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child106]
  try dsimp only
  rw [child4709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output106_skip, output4709_skip]
  kernel_rfl

theorem node4711_cond_eq
    (child105 : Flapjack.WordAlloc.removeDeadStructural input105 value56 value1 value2 = (output105, value57, value1))
    (child4710 : Flapjack.WordAlloc.removeDeadStructural input4710 value57 value1 value2 = (output4710, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4711 value56 value1 value2 = (output4711, value1832, value1) := by
  rw [input4711_def, output4711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child105]
  try dsimp only
  rw [child4710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output105_skip, output4710_skip]
  kernel_rfl

theorem node4712_cond_eq
    (child104 : Flapjack.WordAlloc.removeDeadStructural input104 value5 value1 value2 = (output104, value56, value1))
    (child4711 : Flapjack.WordAlloc.removeDeadStructural input4711 value56 value1 value2 = (output4711, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4712 value5 value1 value2 = (output4712, value1832, value1) := by
  rw [input4712_def, output4712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child104]
  try dsimp only
  rw [child4711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output104_skip, output4711_skip]
  kernel_rfl

theorem node4713_cond_eq
    (child101 : Flapjack.WordAlloc.removeDeadStructural input101 value50 value1 value2 = (output101, value5, value1))
    (child4712 : Flapjack.WordAlloc.removeDeadStructural input4712 value5 value1 value2 = (output4712, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4713 value50 value1 value2 = (output4713, value1832, value1) := by
  rw [input4713_def, output4713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child101]
  try dsimp only
  rw [child4712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output101_skip, output4712_skip]
  kernel_rfl

theorem node4714_cond_eq
    (child92 : Flapjack.WordAlloc.removeDeadStructural input92 value50 value1 value2 = (output92, value50, value1))
    (child4713 : Flapjack.WordAlloc.removeDeadStructural input4713 value50 value1 value2 = (output4713, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4714 value50 value1 value2 = (output4714, value1832, value1) := by
  rw [input4714_def, output4714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child92]
  try dsimp only
  rw [child4713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output92_skip, output4713_skip]
  kernel_rfl

theorem node4715_cond_eq
    (child91 : Flapjack.WordAlloc.removeDeadStructural input91 value49 value1 value2 = (output91, value50, value1))
    (child4714 : Flapjack.WordAlloc.removeDeadStructural input4714 value50 value1 value2 = (output4714, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4715 value49 value1 value2 = (output4715, value1832, value1) := by
  rw [input4715_def, output4715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child91]
  try dsimp only
  rw [child4714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output91_skip, output4714_skip]
  kernel_rfl

theorem node4716_cond_eq
    (child90 : Flapjack.WordAlloc.removeDeadStructural input90 value5 value1 value2 = (output90, value49, value1))
    (child4715 : Flapjack.WordAlloc.removeDeadStructural input4715 value49 value1 value2 = (output4715, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4716 value5 value1 value2 = (output4716, value1832, value1) := by
  rw [input4716_def, output4716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child90]
  try dsimp only
  rw [child4715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output90_skip, output4715_skip]
  kernel_rfl

theorem node4717_cond_eq
    (child87 : Flapjack.WordAlloc.removeDeadStructural input87 value43 value1 value2 = (output87, value5, value1))
    (child4716 : Flapjack.WordAlloc.removeDeadStructural input4716 value5 value1 value2 = (output4716, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4717 value43 value1 value2 = (output4717, value1832, value1) := by
  rw [input4717_def, output4717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child87]
  try dsimp only
  rw [child4716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output87_skip, output4716_skip]
  kernel_rfl

theorem node4718_cond_eq
    (child78 : Flapjack.WordAlloc.removeDeadStructural input78 value43 value1 value2 = (output78, value43, value1))
    (child4717 : Flapjack.WordAlloc.removeDeadStructural input4717 value43 value1 value2 = (output4717, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4718 value43 value1 value2 = (output4718, value1832, value1) := by
  rw [input4718_def, output4718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child78]
  try dsimp only
  rw [child4717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output78_skip, output4717_skip]
  kernel_rfl

theorem node4719_cond_eq
    (child77 : Flapjack.WordAlloc.removeDeadStructural input77 value42 value1 value2 = (output77, value43, value1))
    (child4718 : Flapjack.WordAlloc.removeDeadStructural input4718 value43 value1 value2 = (output4718, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4719 value42 value1 value2 = (output4719, value1832, value1) := by
  rw [input4719_def, output4719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child77]
  try dsimp only
  rw [child4718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output77_skip, output4718_skip]
  kernel_rfl

theorem node4720_cond_eq
    (child76 : Flapjack.WordAlloc.removeDeadStructural input76 value5 value1 value2 = (output76, value42, value1))
    (child4719 : Flapjack.WordAlloc.removeDeadStructural input4719 value42 value1 value2 = (output4719, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4720 value5 value1 value2 = (output4720, value1832, value1) := by
  rw [input4720_def, output4720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child76]
  try dsimp only
  rw [child4719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output76_skip, output4719_skip]
  kernel_rfl

theorem node4721_cond_eq
    (child73 : Flapjack.WordAlloc.removeDeadStructural input73 value36 value1 value2 = (output73, value5, value1))
    (child4720 : Flapjack.WordAlloc.removeDeadStructural input4720 value5 value1 value2 = (output4720, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4721 value36 value1 value2 = (output4721, value1832, value1) := by
  rw [input4721_def, output4721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child73]
  try dsimp only
  rw [child4720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output73_skip, output4720_skip]
  kernel_rfl

theorem node4722_cond_eq
    (child64 : Flapjack.WordAlloc.removeDeadStructural input64 value36 value1 value2 = (output64, value36, value1))
    (child4721 : Flapjack.WordAlloc.removeDeadStructural input4721 value36 value1 value2 = (output4721, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4722 value36 value1 value2 = (output4722, value1832, value1) := by
  rw [input4722_def, output4722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child64]
  try dsimp only
  rw [child4721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output64_skip, output4721_skip]
  kernel_rfl

theorem node4723_cond_eq
    (child63 : Flapjack.WordAlloc.removeDeadStructural input63 value35 value1 value2 = (output63, value36, value1))
    (child4722 : Flapjack.WordAlloc.removeDeadStructural input4722 value36 value1 value2 = (output4722, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4723 value35 value1 value2 = (output4723, value1832, value1) := by
  rw [input4723_def, output4723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child63]
  try dsimp only
  rw [child4722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output63_skip, output4722_skip]
  kernel_rfl

theorem node4724_cond_eq
    (child62 : Flapjack.WordAlloc.removeDeadStructural input62 value5 value1 value2 = (output62, value35, value1))
    (child4723 : Flapjack.WordAlloc.removeDeadStructural input4723 value35 value1 value2 = (output4723, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4724 value5 value1 value2 = (output4724, value1832, value1) := by
  rw [input4724_def, output4724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child62]
  try dsimp only
  rw [child4723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output62_skip, output4723_skip]
  kernel_rfl

theorem node4725_cond_eq
    (child59 : Flapjack.WordAlloc.removeDeadStructural input59 value29 value1 value2 = (output59, value5, value1))
    (child4724 : Flapjack.WordAlloc.removeDeadStructural input4724 value5 value1 value2 = (output4724, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4725 value29 value1 value2 = (output4725, value1832, value1) := by
  rw [input4725_def, output4725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child59]
  try dsimp only
  rw [child4724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output59_skip, output4724_skip]
  kernel_rfl

theorem node4726_cond_eq
    (child50 : Flapjack.WordAlloc.removeDeadStructural input50 value29 value1 value2 = (output50, value29, value1))
    (child4725 : Flapjack.WordAlloc.removeDeadStructural input4725 value29 value1 value2 = (output4725, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4726 value29 value1 value2 = (output4726, value1832, value1) := by
  rw [input4726_def, output4726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child50]
  try dsimp only
  rw [child4725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output50_skip, output4725_skip]
  kernel_rfl

theorem node4727_cond_eq
    (child49 : Flapjack.WordAlloc.removeDeadStructural input49 value28 value1 value2 = (output49, value29, value1))
    (child4726 : Flapjack.WordAlloc.removeDeadStructural input4726 value29 value1 value2 = (output4726, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4727 value28 value1 value2 = (output4727, value1832, value1) := by
  rw [input4727_def, output4727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child49]
  try dsimp only
  rw [child4726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output49_skip, output4726_skip]
  kernel_rfl

theorem node4728_cond_eq
    (child48 : Flapjack.WordAlloc.removeDeadStructural input48 value5 value1 value2 = (output48, value28, value1))
    (child4727 : Flapjack.WordAlloc.removeDeadStructural input4727 value28 value1 value2 = (output4727, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4728 value5 value1 value2 = (output4728, value1832, value1) := by
  rw [input4728_def, output4728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child48]
  try dsimp only
  rw [child4727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output48_skip, output4727_skip]
  kernel_rfl

theorem node4729_cond_eq
    (child45 : Flapjack.WordAlloc.removeDeadStructural input45 value22 value1 value2 = (output45, value5, value1))
    (child4728 : Flapjack.WordAlloc.removeDeadStructural input4728 value5 value1 value2 = (output4728, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4729 value22 value1 value2 = (output4729, value1832, value1) := by
  rw [input4729_def, output4729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child45]
  try dsimp only
  rw [child4728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output45_skip, output4728_skip]
  kernel_rfl

theorem node4730_cond_eq
    (child36 : Flapjack.WordAlloc.removeDeadStructural input36 value22 value1 value2 = (output36, value22, value1))
    (child4729 : Flapjack.WordAlloc.removeDeadStructural input4729 value22 value1 value2 = (output4729, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4730 value22 value1 value2 = (output4730, value1832, value1) := by
  rw [input4730_def, output4730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child36]
  try dsimp only
  rw [child4729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output36_skip, output4729_skip]
  kernel_rfl

theorem node4731_cond_eq
    (child35 : Flapjack.WordAlloc.removeDeadStructural input35 value21 value1 value2 = (output35, value22, value1))
    (child4730 : Flapjack.WordAlloc.removeDeadStructural input4730 value22 value1 value2 = (output4730, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4731 value21 value1 value2 = (output4731, value1832, value1) := by
  rw [input4731_def, output4731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child35]
  try dsimp only
  rw [child4730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output35_skip, output4730_skip]
  kernel_rfl

theorem node4732_cond_eq
    (child34 : Flapjack.WordAlloc.removeDeadStructural input34 value5 value1 value2 = (output34, value21, value1))
    (child4731 : Flapjack.WordAlloc.removeDeadStructural input4731 value21 value1 value2 = (output4731, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4732 value5 value1 value2 = (output4732, value1832, value1) := by
  rw [input4732_def, output4732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child34]
  try dsimp only
  rw [child4731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output34_skip, output4731_skip]
  kernel_rfl

theorem node4733_cond_eq
    (child31 : Flapjack.WordAlloc.removeDeadStructural input31 value15 value1 value2 = (output31, value5, value1))
    (child4732 : Flapjack.WordAlloc.removeDeadStructural input4732 value5 value1 value2 = (output4732, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4733 value15 value1 value2 = (output4733, value1832, value1) := by
  rw [input4733_def, output4733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child31]
  try dsimp only
  rw [child4732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output31_skip, output4732_skip]
  kernel_rfl

theorem node4734_cond_eq
    (child22 : Flapjack.WordAlloc.removeDeadStructural input22 value15 value1 value2 = (output22, value15, value1))
    (child4733 : Flapjack.WordAlloc.removeDeadStructural input4733 value15 value1 value2 = (output4733, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4734 value15 value1 value2 = (output4734, value1832, value1) := by
  rw [input4734_def, output4734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child22]
  try dsimp only
  rw [child4733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output22_skip, output4733_skip]
  kernel_rfl

theorem node4735_cond_eq
    (child21 : Flapjack.WordAlloc.removeDeadStructural input21 value14 value1 value2 = (output21, value15, value1))
    (child4734 : Flapjack.WordAlloc.removeDeadStructural input4734 value15 value1 value2 = (output4734, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4735 value14 value1 value2 = (output4735, value1832, value1) := by
  rw [input4735_def, output4735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child21]
  try dsimp only
  rw [child4734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output21_skip, output4734_skip]
  kernel_rfl

theorem node4736_cond_eq
    (child20 : Flapjack.WordAlloc.removeDeadStructural input20 value5 value1 value2 = (output20, value14, value1))
    (child4735 : Flapjack.WordAlloc.removeDeadStructural input4735 value14 value1 value2 = (output4735, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4736 value5 value1 value2 = (output4736, value1832, value1) := by
  rw [input4736_def, output4736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child20]
  try dsimp only
  rw [child4735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output20_skip, output4735_skip]
  kernel_rfl

theorem node4737_cond_eq
    (child17 : Flapjack.WordAlloc.removeDeadStructural input17 value8 value1 value2 = (output17, value5, value1))
    (child4736 : Flapjack.WordAlloc.removeDeadStructural input4736 value5 value1 value2 = (output4736, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4737 value8 value1 value2 = (output4737, value1832, value1) := by
  rw [input4737_def, output4737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child17]
  try dsimp only
  rw [child4736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output17_skip, output4736_skip]
  kernel_rfl

theorem node4738_cond_eq
    (child8 : Flapjack.WordAlloc.removeDeadStructural input8 value8 value1 value2 = (output8, value8, value1))
    (child4737 : Flapjack.WordAlloc.removeDeadStructural input4737 value8 value1 value2 = (output4737, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4738 value8 value1 value2 = (output4738, value1832, value1) := by
  rw [input4738_def, output4738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8]
  try dsimp only
  rw [child4737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8_skip, output4737_skip]
  kernel_rfl

theorem node4739_cond_eq
    (child7 : Flapjack.WordAlloc.removeDeadStructural input7 value7 value1 value2 = (output7, value8, value1))
    (child4738 : Flapjack.WordAlloc.removeDeadStructural input4738 value8 value1 value2 = (output4738, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4739 value7 value1 value2 = (output4739, value1832, value1) := by
  rw [input4739_def, output4739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child7]
  try dsimp only
  rw [child4738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output7_skip, output4738_skip]
  kernel_rfl

theorem node4740_cond_eq
    (child6 : Flapjack.WordAlloc.removeDeadStructural input6 value5 value1 value2 = (output6, value7, value1))
    (child4739 : Flapjack.WordAlloc.removeDeadStructural input4739 value7 value1 value2 = (output4739, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4740 value5 value1 value2 = (output4740, value1832, value1) := by
  rw [input4740_def, output4740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6]
  try dsimp only
  rw [child4739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6_skip, output4739_skip]
  kernel_rfl

theorem node4741_cond_eq
    (child3 : Flapjack.WordAlloc.removeDeadStructural input3 value4 value1 value2 = (output3, value5, value1))
    (child4740 : Flapjack.WordAlloc.removeDeadStructural input4740 value5 value1 value2 = (output4740, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4741 value4 value1 value2 = (output4741, value1832, value1) := by
  rw [input4741_def, output4741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3]
  try dsimp only
  rw [child4740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3_skip, output4740_skip]
  kernel_rfl

theorem node4742_cond_eq
    (child2 : Flapjack.WordAlloc.removeDeadStructural input2 value0 value1 value2 = (output2, value4, value1))
    (child4741 : Flapjack.WordAlloc.removeDeadStructural input4741 value4 value1 value2 = (output4741, value1832, value1)) : Flapjack.WordAlloc.removeDeadStructural input4742 value0 value1 value2 = (output4742, value1832, value1) := by
  rw [input4742_def, output4742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2]
  try dsimp only
  rw [child4741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2_skip, output4741_skip]
  kernel_rfl

theorem node4743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4743 value1832 value1 value2 = (output4743, value1842, value1) := by
  rw [input4743_def, output4743_def]
  kernel_rfl

theorem node4744_cond_eq
    (child4742 : Flapjack.WordAlloc.removeDeadStructural input4742 value0 value1 value2 = (output4742, value1832, value1))
    (child4743 : Flapjack.WordAlloc.removeDeadStructural input4743 value1832 value1 value2 = (output4743, value1842, value1)) : Flapjack.WordAlloc.removeDeadStructural input4744 value0 value1 value2 = (output4744, value1842, value1) := by
  rw [input4744_def, output4744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4742]
  try dsimp only
  rw [child4743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4742_skip, output4743_skip]
  kernel_rfl

#print axioms node4744_cond_eq
end InitECandidate.Proofs.DeadStages240.Parallel
