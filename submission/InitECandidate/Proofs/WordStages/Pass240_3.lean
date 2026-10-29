import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass240_2
import InitECandidate.Proofs.WordStages.Parallel240.Data3
import InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel.Chunk018
import InitECandidate.Proofs.DeadStages240.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass240_3 : WordLangProgHOL (BitVec 64) := Parallel240.pass240_3

/-- Compose closed checkpoint proofs, opening each cached node only through
its checked equation. The final certificate has no child premises. -/
theorem pass240_3_eq : WordAlloc.removeDeadProg pass240_2 = pass240_3 := by
  have input_eq : pass240_2 = InitECandidate.Proofs.DeadStages240.Parallel.input4744 :=
    (show pass240_2 = Parallel240.word240_2_4802 by kernel_rfl).trans
      Parallel240.AgreementsParallel.input4744_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages240.Parallel.node4744_eq
  simp only [InitECandidate.Proofs.DeadStages240.Parallel.value0, InitECandidate.Proofs.DeadStages240.Parallel.value1,
    InitECandidate.Proofs.DeadStages240.Parallel.value2] at checked
  rw [checked]
  exact Parallel240.AgreementsParallel.output4744_eq.trans (by rfl)

#print axioms pass240_3_eq
end InitECandidate.Proofs.WordStages
