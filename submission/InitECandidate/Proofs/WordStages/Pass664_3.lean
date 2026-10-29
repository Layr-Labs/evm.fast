import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass664_2
import InitECandidate.Proofs.WordStages.Parallel664.Data3
import InitECandidate.Proofs.WordStages.Parallel664.AgreementsParallel.Chunk006
import InitECandidate.Proofs.DeadStages664.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass664_3 : WordLangProgHOL (BitVec 64) := Parallel664.pass664_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass664_3_eq : WordAlloc.removeDeadProg pass664_2 = pass664_3 := by
  have input_eq : pass664_2 = InitECandidate.Proofs.DeadStages664.Parallel.input1616 :=
    (show pass664_2 = Parallel664.word664_2_1789 by kernel_rfl).trans
      Parallel664.AgreementsParallel.input1616_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages664.Parallel.node1616_eq
  simp only [InitECandidate.Proofs.DeadStages664.Parallel.value0, InitECandidate.Proofs.DeadStages664.Parallel.value1,
    InitECandidate.Proofs.DeadStages664.Parallel.value2] at checked
  rw [checked]
  exact Parallel664.AgreementsParallel.output1616_eq.trans (by rfl)

#print axioms pass664_3_eq
end InitECandidate.Proofs.WordStages
