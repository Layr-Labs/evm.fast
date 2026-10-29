import InitECandidate.Proofs.BackendStages.Alignment680
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_680 : List (Nat × Nat) :=
[(16, 605104), (15, 605092), (7, 605084), (6, 605064), (14, 605008), (13, 604968), (5, 604952), (4, 604924),
  (12, 604868), (11, 604820), (3, 604804), (2, 604776), (10, 604720), (1, 604672), (9, 604672)]
theorem localLabelsFinal_680_eq : LabToTarget.sectionLabels 604656 Alignment680.lines [] = (605104, localLabelsFinal_680) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_680_eq
end InitECandidate.Proofs.BackendStages
