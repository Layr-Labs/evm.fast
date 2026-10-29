import InitECandidate.Proofs.BackendStages.Alignment749
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_749 : List (Nat × Nat) :=
[(16, 747120), (15, 747108), (7, 747100), (6, 747080), (14, 747024), (13, 746984), (5, 746968), (4, 746940),
  (12, 746884), (11, 746832), (3, 746816), (2, 746788), (10, 746732), (1, 746688), (9, 746688)]
theorem localLabelsFinal_749_eq : LabToTarget.sectionLabels 746672 Alignment749.lines [] = (747120, localLabelsFinal_749) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_749_eq
end InitECandidate.Proofs.BackendStages
