import InitECandidate.Proofs.BackendStages.Alignment229
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_229 : List (Nat × Nat) :=
[(20, 153100), (19, 153088), (9, 153064), (8, 153012), (18, 152956), (17, 152912), (7, 152908), (6, 152888),
  (16, 152832), (15, 152804), (5, 152752), (4, 152684), (14, 152628), (13, 152556), (3, 152536), (2, 152500),
  (12, 152444), (1, 152384), (11, 152384)]
theorem localLabelsFinal_229_eq : LabToTarget.sectionLabels 152368 Alignment229.lines [] = (153100, localLabelsFinal_229) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_229_eq
end InitECandidate.Proofs.BackendStages
