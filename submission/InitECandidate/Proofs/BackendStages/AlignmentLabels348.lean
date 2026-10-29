import InitECandidate.Proofs.BackendStages.Alignment348
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_348 : List (Nat × Nat) :=
[(2, 276448), (1, 276424)]
theorem localLabelsFinal_348_eq : LabToTarget.sectionLabels 276424 Alignment348.lines [] = (276448, localLabelsFinal_348) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_348_eq
end InitECandidate.Proofs.BackendStages
