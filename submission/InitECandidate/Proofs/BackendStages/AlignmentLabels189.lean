import InitECandidate.Proofs.BackendStages.Alignment189
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_189 : List (Nat × Nat) :=
[(12, 100888), (11, 100796), (5, 100772), (4, 100736), (10, 100680), (9, 100612), (3, 100600), (2, 100572), (8, 100516),
  (1, 100476), (7, 100476)]
theorem localLabelsFinal_189_eq : LabToTarget.sectionLabels 100460 Alignment189.lines [] = (100888, localLabelsFinal_189) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_189_eq
end InitECandidate.Proofs.BackendStages
