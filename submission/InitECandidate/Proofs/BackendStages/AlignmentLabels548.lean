import InitECandidate.Proofs.BackendStages.Alignment548
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_548 : List (Nat × Nat) :=
[(12, 406512), (11, 406500), (5, 406492), (4, 406472), (10, 406416), (9, 406368), (3, 406364), (2, 406344), (8, 406288),
  (1, 406260), (7, 406260)]
theorem localLabelsFinal_548_eq : LabToTarget.sectionLabels 406244 Alignment548.lines [] = (406512, localLabelsFinal_548) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_548_eq
end InitECandidate.Proofs.BackendStages
