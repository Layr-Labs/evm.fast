import InitECandidate.Proofs.BackendStages.Alignment77
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_77 : List (Nat × Nat) :=
[(16, 6648), (14, 6640), (15, 6632), (13, 6604), (11, 6604), (12, 6596), (10, 6452), (9, 6452), (6, 6452), (7, 6444),
  (5, 6412), (3, 6412), (4, 6404), (2, 6336), (8, 6336), (1, 6312)]
theorem localLabelsFinal_77_eq : LabToTarget.sectionLabels 6312 Alignment77.lines [] = (6648, localLabelsFinal_77) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_77_eq
end InitECandidate.Proofs.BackendStages
