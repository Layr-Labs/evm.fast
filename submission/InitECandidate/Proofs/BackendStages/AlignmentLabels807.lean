import InitECandidate.Proofs.BackendStages.Alignment807
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_807 : List (Nat × Nat) :=
[(17, 866760), (16, 866732), (7, 866720), (6, 866692), (15, 866636), (14, 866592), (13, 866536), (5, 866488),
  (4, 866424), (12, 866368), (11, 866272), (3, 866268), (2, 866248), (10, 866192), (1, 866148), (9, 866148)]
theorem localLabelsFinal_807_eq : LabToTarget.sectionLabels 866132 Alignment807.lines [] = (866760, localLabelsFinal_807) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_807_eq
end InitECandidate.Proofs.BackendStages
