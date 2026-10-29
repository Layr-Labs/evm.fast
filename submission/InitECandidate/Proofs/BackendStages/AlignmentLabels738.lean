import InitECandidate.Proofs.BackendStages.Alignment738
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_738 : List (Nat × Nat) :=
[(8, 736376), (7, 736312), (3, 736276), (2, 736224), (6, 736168), (1, 736052), (5, 736052)]
theorem localLabelsFinal_738_eq : LabToTarget.sectionLabels 736036 Alignment738.lines [] = (736376, localLabelsFinal_738) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_738_eq
end InitECandidate.Proofs.BackendStages
