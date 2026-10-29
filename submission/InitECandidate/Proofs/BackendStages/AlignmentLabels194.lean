import InitECandidate.Proofs.BackendStages.Alignment194
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_194 : List (Nat × Nat) :=
[(11, 104588), (7, 104572), (10, 104560), (9, 104552), (3, 104532), (2, 104500), (8, 104444), (6, 104360), (1, 104340),
  (5, 104340)]
theorem localLabelsFinal_194_eq : LabToTarget.sectionLabels 104324 Alignment194.lines [] = (104588, localLabelsFinal_194) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_194_eq
end InitECandidate.Proofs.BackendStages
