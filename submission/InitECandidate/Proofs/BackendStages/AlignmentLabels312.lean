import InitECandidate.Proofs.BackendStages.Alignment312
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_312 : List (Nat × Nat) :=
[(20, 244524), (19, 244512), (18, 244488), (17, 244464), (7, 244448), (6, 244416), (16, 244360), (15, 244316),
  (14, 244280), (13, 244252), (5, 244224), (4, 244180), (12, 244124), (11, 244052), (3, 244008), (2, 243948),
  (10, 243892), (1, 243832), (9, 243832)]
theorem localLabelsFinal_312_eq : LabToTarget.sectionLabels 243816 Alignment312.lines [] = (244524, localLabelsFinal_312) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_312_eq
end InitECandidate.Proofs.BackendStages
