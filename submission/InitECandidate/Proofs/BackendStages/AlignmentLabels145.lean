import InitECandidate.Proofs.BackendStages.Alignment145
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_145 : List (Nat × Nat) :=
[(9, 30392), (8, 30372), (3, 30360), (2, 30332), (7, 30276), (6, 30212), (1, 30188), (5, 30188)]
theorem localLabelsFinal_145_eq : LabToTarget.sectionLabels 30172 Alignment145.lines [] = (30392, localLabelsFinal_145) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_145_eq
end InitECandidate.Proofs.BackendStages
