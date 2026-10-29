import InitECandidate.Proofs.BackendStages.Alignment872
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_872 : List (Nat × Nat) :=
[(9, 978072), (8, 978060), (7, 978008), (3, 977988), (2, 977968), (6, 977912), (1, 977876), (5, 977876)]
theorem localLabelsFinal_872_eq : LabToTarget.sectionLabels 977856 Alignment872.lines [] = (978072, localLabelsFinal_872) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_872_eq
end InitECandidate.Proofs.BackendStages
