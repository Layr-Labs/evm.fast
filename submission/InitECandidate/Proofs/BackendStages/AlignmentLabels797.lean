import InitECandidate.Proofs.BackendStages.Alignment797
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_797 : List (Nat × Nat) :=
[(19, 840884), (11, 840872), (18, 840852), (17, 840828), (7, 840780), (6, 840716), (16, 840660), (15, 840628),
  (5, 840544), (4, 840424), (14, 840368), (13, 839936), (3, 839916), (2, 839868), (12, 839812), (10, 839720),
  (1, 839488), (9, 839488)]
theorem localLabelsFinal_797_eq : LabToTarget.sectionLabels 839472 Alignment797.lines [] = (840884, localLabelsFinal_797) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_797_eq
end InitECandidate.Proofs.BackendStages
