import InitECandidate.Proofs.BackendStages.Alignment419
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_419 : List (Nat × Nat) :=
[(8, 313052), (7, 313040), (3, 313032), (2, 313012), (6, 312956), (1, 312900), (5, 312900)]
theorem localLabelsFinal_419_eq : LabToTarget.sectionLabels 312884 Alignment419.lines [] = (313052, localLabelsFinal_419) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_419_eq
end InitECandidate.Proofs.BackendStages
