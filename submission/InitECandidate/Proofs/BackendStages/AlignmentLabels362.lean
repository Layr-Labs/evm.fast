import InitECandidate.Proofs.BackendStages.Alignment362
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_362 : List (Nat × Nat) :=
[(15, 280016), (11, 279996), (14, 279980), (13, 279960), (5, 279932), (4, 279888), (12, 279832), (10, 279768),
  (9, 279756), (3, 279740), (2, 279708), (8, 279652), (1, 279580), (7, 279580)]
theorem localLabelsFinal_362_eq : LabToTarget.sectionLabels 279564 Alignment362.lines [] = (280016, localLabelsFinal_362) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_362_eq
end InitECandidate.Proofs.BackendStages
