import InitECandidate.Proofs.BackendStages.Alignment252
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_252 : List (Nat × Nat) :=
[(20, 185060), (19, 185048), (17, 185048), (7, 185036), (6, 185012), (16, 184956), (18, 184924), (15, 184912),
  (13, 184912), (5, 184900), (4, 184876), (12, 184820), (14, 184788), (11, 184772), (3, 184768), (2, 184748),
  (10, 184692), (1, 184660), (9, 184660)]
theorem localLabelsFinal_252_eq : LabToTarget.sectionLabels 184644 Alignment252.lines [] = (185060, localLabelsFinal_252) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_252_eq
end InitECandidate.Proofs.BackendStages
