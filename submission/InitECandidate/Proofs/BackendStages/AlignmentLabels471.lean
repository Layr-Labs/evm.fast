import InitECandidate.Proofs.BackendStages.Alignment471
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_471 : List (Nat × Nat) :=
[(10, 358428), (9, 358412), (8, 358328), (3, 358308), (2, 358272), (7, 358216), (6, 358168), (1, 358116), (5, 358116)]
theorem localLabelsFinal_471_eq : LabToTarget.sectionLabels 358100 Alignment471.lines [] = (358428, localLabelsFinal_471) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_471_eq
end InitECandidate.Proofs.BackendStages
