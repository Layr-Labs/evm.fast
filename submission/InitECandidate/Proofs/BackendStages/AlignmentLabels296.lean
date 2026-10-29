import InitECandidate.Proofs.BackendStages.Alignment296
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_296 : List (Nat × Nat) :=
[(8, 233096), (7, 233008), (3, 232984), (2, 232944), (6, 232888), (1, 232836), (5, 232836)]
theorem localLabelsFinal_296_eq : LabToTarget.sectionLabels 232820 Alignment296.lines [] = (233096, localLabelsFinal_296) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_296_eq
end InitECandidate.Proofs.BackendStages
