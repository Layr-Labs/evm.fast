import InitECandidate.Proofs.BackendStages.Alignment307
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_307 : List (Nat × Nat) :=
[(9, 242172), (8, 242168), (7, 242128), (3, 242116), (2, 242092), (6, 242036), (1, 241976), (5, 241976)]
theorem localLabelsFinal_307_eq : LabToTarget.sectionLabels 241960 Alignment307.lines [] = (242172, localLabelsFinal_307) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_307_eq
end InitECandidate.Proofs.BackendStages
