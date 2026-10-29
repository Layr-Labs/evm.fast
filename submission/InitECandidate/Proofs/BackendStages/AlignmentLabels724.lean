import InitECandidate.Proofs.BackendStages.Alignment724
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_724 : List (Nat × Nat) :=
[(12, 729952), (11, 729940), (5, 729932), (4, 729908), (10, 729852), (9, 729660), (3, 729656), (2, 729636), (8, 729580),
  (1, 729548), (7, 729548)]
theorem localLabelsFinal_724_eq : LabToTarget.sectionLabels 729532 Alignment724.lines [] = (729952, localLabelsFinal_724) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_724_eq
end InitECandidate.Proofs.BackendStages
