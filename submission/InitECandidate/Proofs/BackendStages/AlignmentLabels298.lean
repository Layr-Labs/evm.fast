import InitECandidate.Proofs.BackendStages.Alignment298
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_298 : List (Nat × Nat) :=
[(12, 233628), (11, 233608), (5, 233596), (4, 233572), (10, 233516), (9, 233480), (3, 233476), (2, 233456), (8, 233400),
  (1, 233368), (7, 233368)]
theorem localLabelsFinal_298_eq : LabToTarget.sectionLabels 233352 Alignment298.lines [] = (233628, localLabelsFinal_298) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_298_eq
end InitECandidate.Proofs.BackendStages
