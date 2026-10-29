import InitECandidate.Proofs.BackendStages.Alignment557
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_557 : List (Nat × Nat) :=
[(16, 416200), (15, 416188), (7, 416180), (6, 416160), (14, 416104), (13, 416076), (5, 416072), (4, 416056),
  (12, 416000), (11, 415940), (3, 415936), (2, 415920), (10, 415864), (1, 415832), (9, 415832)]
theorem localLabelsFinal_557_eq : LabToTarget.sectionLabels 415816 Alignment557.lines [] = (416200, localLabelsFinal_557) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_557_eq
end InitECandidate.Proofs.BackendStages
