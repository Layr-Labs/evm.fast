import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass652_2
import InitECandidate.Proofs.WordStages.Parallel652.Data3
import InitECandidate.Proofs.WordStages.Parallel652.AgreementsParallel.Chunk003
import InitECandidate.Proofs.DeadStages652.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass652_3 : WordLangProgHOL (BitVec 64) := Parallel652.pass652_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass652_3_eq : WordAlloc.removeDeadProg pass652_2 = pass652_3 := by
  have input_eq : pass652_2 = InitECandidate.Proofs.DeadStages652.Parallel.input976 :=
    (show pass652_2 = Parallel652.word652_2_1690 by kernel_rfl).trans
      Parallel652.AgreementsParallel.input976_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages652.Parallel.node976_eq
  simp only [InitECandidate.Proofs.DeadStages652.Parallel.value0, InitECandidate.Proofs.DeadStages652.Parallel.value1,
    InitECandidate.Proofs.DeadStages652.Parallel.value2] at checked
  rw [checked]
  exact Parallel652.AgreementsParallel.output976_eq.trans (by rfl)

#print axioms pass652_3_eq
end InitECandidate.Proofs.WordStages
