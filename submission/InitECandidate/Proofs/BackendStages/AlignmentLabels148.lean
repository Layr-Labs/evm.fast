import InitECandidate.Proofs.BackendStages.Alignment148
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_148 : List (Nat × Nat) :=
[(15, 32796), (11, 32780), (14, 32764), (13, 32724), (5, 32684), (4, 32628), (12, 32572), (10, 32488), (9, 32484),
  (3, 32456), (2, 32412), (8, 32356), (1, 32308), (7, 32308)]
theorem localLabelsFinal_148_eq : LabToTarget.sectionLabels 32292 Alignment148.lines [] = (32796, localLabelsFinal_148) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_148_eq
end InitECandidate.Proofs.BackendStages
