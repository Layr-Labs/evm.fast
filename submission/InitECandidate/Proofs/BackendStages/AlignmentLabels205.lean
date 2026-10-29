import InitECandidate.Proofs.BackendStages.Alignment205
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_205 : List (Nat × Nat) :=
[(9, 109192), (8, 109180), (7, 109124), (3, 109100), (2, 109060), (6, 109004), (1, 108924), (5, 108924)]
theorem localLabelsFinal_205_eq : LabToTarget.sectionLabels 108908 Alignment205.lines [] = (109192, localLabelsFinal_205) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_205_eq
end InitECandidate.Proofs.BackendStages
