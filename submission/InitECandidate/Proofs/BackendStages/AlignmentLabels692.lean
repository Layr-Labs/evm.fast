import InitECandidate.Proofs.BackendStages.Alignment692
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_692 : List (Nat × Nat) :=
[(23, 637796), (13, 637780), (22, 637756), (21, 637736), (19, 637732), (7, 637704), (6, 637664), (18, 637608),
  (20, 637560), (17, 637512), (15, 637512), (5, 637488), (4, 637452), (14, 637396), (16, 637348), (12, 637308),
  (11, 637296), (3, 637276), (2, 637244), (10, 637188), (1, 637128), (9, 637128)]
theorem localLabelsFinal_692_eq : LabToTarget.sectionLabels 637112 Alignment692.lines [] = (637796, localLabelsFinal_692) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_692_eq
end InitECandidate.Proofs.BackendStages
