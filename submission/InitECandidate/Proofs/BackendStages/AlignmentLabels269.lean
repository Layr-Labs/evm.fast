import InitECandidate.Proofs.BackendStages.Alignment269
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_269 : List (Nat × Nat) :=
[(15, 208272), (14, 208256), (12, 208256), (13, 208236), (11, 208224), (9, 208224), (10, 208196), (8, 208184),
  (7, 208160), (3, 208148), (2, 208120), (6, 208064), (1, 208016), (5, 208016)]
theorem localLabelsFinal_269_eq : LabToTarget.sectionLabels 208000 Alignment269.lines [] = (208272, localLabelsFinal_269) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_269_eq
end InitECandidate.Proofs.BackendStages
