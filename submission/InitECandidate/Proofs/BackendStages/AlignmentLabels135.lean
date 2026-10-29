import InitECandidate.Proofs.BackendStages.Alignment135
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_135 : List (Nat × Nat) :=
[(15, 25228), (14, 25224), (13, 25176), (5, 25148), (4, 25108), (12, 25052), (11, 25000), (10, 24932), (3, 24924),
  (2, 24900), (9, 24844), (8, 24784), (1, 24724), (7, 24724)]
theorem localLabelsFinal_135_eq : LabToTarget.sectionLabels 24708 Alignment135.lines [] = (25228, localLabelsFinal_135) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_135_eq
end InitECandidate.Proofs.BackendStages
