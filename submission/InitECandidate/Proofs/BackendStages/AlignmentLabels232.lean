import InitECandidate.Proofs.BackendStages.Alignment232
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_232 : List (Nat × Nat) :=
[(24, 160492), (23, 160480), (11, 160472), (10, 160452), (22, 160396), (21, 160368), (9, 160360), (8, 160340),
  (20, 160284), (19, 160248), (7, 160228), (6, 160196), (18, 160140), (17, 160104), (5, 160096), (4, 160072),
  (16, 160016), (15, 159984), (3, 159980), (2, 159960), (14, 159904), (1, 159868), (13, 159868)]
theorem localLabelsFinal_232_eq : LabToTarget.sectionLabels 159852 Alignment232.lines [] = (160492, localLabelsFinal_232) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_232_eq
end InitECandidate.Proofs.BackendStages
