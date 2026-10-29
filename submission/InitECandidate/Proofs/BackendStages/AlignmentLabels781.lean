import InitECandidate.Proofs.BackendStages.Alignment781
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_781 : List (Nat × Nat) :=
[(18, 791672), (17, 791660), (7, 791652), (6, 791632), (16, 791576), (15, 791540), (13, 791540), (5, 791528),
  (4, 791504), (12, 791448), (11, 791404), (3, 791392), (2, 791368), (10, 791312), (14, 791272), (1, 791256),
  (9, 791256)]
theorem localLabelsFinal_781_eq : LabToTarget.sectionLabels 791240 Alignment781.lines [] = (791672, localLabelsFinal_781) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_781_eq
end InitECandidate.Proofs.BackendStages
