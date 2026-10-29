import InitECandidate.Proofs.BackendStages.Alignment417
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_417 : List (Nat × Nat) :=
[(13, 312580), (12, 312568), (5, 312560), (4, 312536), (11, 312480), (10, 312448), (9, 312428), (3, 312420),
  (2, 312396), (8, 312340), (1, 312312), (7, 312312)]
theorem localLabelsFinal_417_eq : LabToTarget.sectionLabels 312296 Alignment417.lines [] = (312580, localLabelsFinal_417) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_417_eq
end InitECandidate.Proofs.BackendStages
