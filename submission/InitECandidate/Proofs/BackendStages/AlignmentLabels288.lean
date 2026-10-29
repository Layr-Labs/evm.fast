import InitECandidate.Proofs.BackendStages.Alignment288
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_288 : List (Nat × Nat) :=
[(8, 230384), (6, 230376), (7, 230368), (5, 230320), (3, 230320), (4, 230312), (2, 230164), (1, 230160)]
theorem localLabelsFinal_288_eq : LabToTarget.sectionLabels 230160 Alignment288.lines [] = (230384, localLabelsFinal_288) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_288_eq
end InitECandidate.Proofs.BackendStages
