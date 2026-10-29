import InitECandidate.Proofs.BackendStages.Alignment712
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_712 : List (Nat × Nat) :=
[(13, 704576), (12, 704564), (5, 704556), (4, 704532), (11, 704476), (10, 704300), (9, 704260), (3, 704228),
  (2, 704180), (8, 704124), (1, 704068), (7, 704068)]
theorem localLabelsFinal_712_eq : LabToTarget.sectionLabels 704052 Alignment712.lines [] = (704576, localLabelsFinal_712) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_712_eq
end InitECandidate.Proofs.BackendStages
