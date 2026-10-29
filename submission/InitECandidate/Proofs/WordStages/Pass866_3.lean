import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass866_2
import InitECandidate.Proofs.WordStages.Parallel866.Data3
import InitECandidate.Proofs.WordStages.Parallel866.AgreementsParallel.Chunk004
import InitECandidate.Proofs.DeadStages866.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages

def pass866_3 : WordLangProgHOL (BitVec 64) := Parallel866.pass866_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass866_3_eq : WordAlloc.removeDeadProg pass866_2 = pass866_3 := by
  have input_eq : pass866_2 = InitECandidate.Proofs.DeadStages866.Parallel.input1221 :=
    (show pass866_2 = Parallel866.word866_2_1598 by kernel_rfl).trans
      Parallel866.AgreementsParallel.input1221_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitECandidate.Proofs.DeadStages866.Parallel.node1221_eq
  simp only [InitECandidate.Proofs.DeadStages866.Parallel.value0, InitECandidate.Proofs.DeadStages866.Parallel.value1,
    InitECandidate.Proofs.DeadStages866.Parallel.value2] at checked
  rw [checked]
  exact Parallel866.AgreementsParallel.output1221_eq.trans (by rfl)

#print axioms pass866_3_eq
end InitECandidate.Proofs.WordStages
