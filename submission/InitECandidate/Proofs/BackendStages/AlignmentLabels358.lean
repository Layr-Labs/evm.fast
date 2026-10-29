import InitECandidate.Proofs.BackendStages.Alignment358
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_358 : List (Nat × Nat) :=
[(12, 277516), (11, 277504), (9, 277504), (10, 277484), (8, 277472), (7, 277452), (3, 277440), (2, 277412), (6, 277356),
  (1, 277324), (5, 277324)]
theorem localLabelsFinal_358_eq : LabToTarget.sectionLabels 277308 Alignment358.lines [] = (277516, localLabelsFinal_358) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_358_eq
end InitECandidate.Proofs.BackendStages
