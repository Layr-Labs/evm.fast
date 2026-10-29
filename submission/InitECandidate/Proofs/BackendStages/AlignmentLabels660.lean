import InitECandidate.Proofs.BackendStages.Alignment660
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_660 : List (Nat × Nat) :=
[(9, 584776), (8, 584672), (7, 584640), (3, 584616), (2, 584576), (6, 584520), (1, 584472), (5, 584472)]
theorem localLabelsFinal_660_eq : LabToTarget.sectionLabels 584456 Alignment660.lines [] = (584776, localLabelsFinal_660) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_660_eq
end InitECandidate.Proofs.BackendStages
