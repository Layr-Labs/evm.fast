import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass830_2
import InitECandidate.Proofs.WordStages.Parallel830.Data3
import InitECandidate.Proofs.WordStages.Parallel830.AgreementsParallel.Chunk018
import InitECandidate.Proofs.DeadStages830.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass830_3 : WordLangProgHOL (BitVec 64) := Parallel830.pass830_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass830_3_eq : WordAlloc.removeDeadProg pass830_2 = pass830_3 := by
  have input_eq : pass830_2 = InitECandidate.Proofs.DeadStages830.Parallel.input4696 :=
    (show pass830_2 = Parallel830.word830_2_4733 by kernel_rfl).trans
      Parallel830.AgreementsParallel.input4696_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages830.Parallel.node4696_eq
  simp only [InitECandidate.Proofs.DeadStages830.Parallel.value0, InitECandidate.Proofs.DeadStages830.Parallel.value1,
    InitECandidate.Proofs.DeadStages830.Parallel.value2] at checked
  rw [checked]
  exact Parallel830.AgreementsParallel.output4696_eq.trans (by rfl)

#print axioms pass830_3_eq
end InitECandidate.Proofs.WordStages
