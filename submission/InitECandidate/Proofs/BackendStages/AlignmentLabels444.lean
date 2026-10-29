import InitECandidate.Proofs.BackendStages.Alignment444
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_444 : List (Nat × Nat) :=
[(18, 327976), (17, 327952), (5, 327936), (4, 327904), (16, 327848), (11, 327812), (15, 327796), (14, 327756),
  (13, 327744), (12, 327736), (10, 327696), (9, 327672), (3, 327652), (2, 327616), (8, 327560), (1, 327520),
  (7, 327520)]
theorem localLabelsFinal_444_eq : LabToTarget.sectionLabels 327504 Alignment444.lines [] = (327976, localLabelsFinal_444) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_444_eq
end InitECandidate.Proofs.BackendStages
