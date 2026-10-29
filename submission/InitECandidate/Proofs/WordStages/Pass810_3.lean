import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass810_2
import InitECandidate.Proofs.WordStages.Parallel810.Data3
import InitECandidate.Proofs.WordStages.Parallel810.AgreementsParallel.Chunk003
import InitECandidate.Proofs.DeadStages810.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass810_3 : WordLangProgHOL (BitVec 64) := Parallel810.pass810_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass810_3_eq : WordAlloc.removeDeadProg pass810_2 = pass810_3 := by
  have input_eq : pass810_2 = InitECandidate.Proofs.DeadStages810.Parallel.input853 :=
    (show pass810_2 = Parallel810.word810_2_1348 by kernel_rfl).trans
      Parallel810.AgreementsParallel.input853_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages810.Parallel.node853_eq
  simp only [InitECandidate.Proofs.DeadStages810.Parallel.value0, InitECandidate.Proofs.DeadStages810.Parallel.value1,
    InitECandidate.Proofs.DeadStages810.Parallel.value2] at checked
  rw [checked]
  exact Parallel810.AgreementsParallel.output853_eq.trans (by rfl)

#print axioms pass810_3_eq
end InitECandidate.Proofs.WordStages
