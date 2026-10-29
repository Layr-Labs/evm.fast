import InitECandidate.Proofs.BackendStages.Alignment734
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_734 : List (Nat × Nat) :=
[(12, 734792), (11, 734728), (5, 734692), (4, 734640), (10, 734584), (9, 734508), (3, 734456), (2, 734388), (8, 734332),
  (1, 734116), (7, 734116)]
theorem localLabelsFinal_734_eq : LabToTarget.sectionLabels 734100 Alignment734.lines [] = (734792, localLabelsFinal_734) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_734_eq
end InitECandidate.Proofs.BackendStages
