import InitECandidate.Proofs.BackendStages.Alignment128
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_128 : List (Nat × Nat) :=
[(27, 22068), (26, 22056), (9, 22044), (8, 22020), (25, 21964), (23, 21936), (24, 21928), (22, 21896), (21, 21876),
  (19, 21864), (20, 21856), (18, 21824), (17, 21816), (7, 21768), (6, 21704), (16, 21648), (15, 21608), (5, 21596),
  (4, 21568), (14, 21512), (13, 21476), (3, 21468), (2, 21448), (12, 21392), (1, 21280), (11, 21280)]
theorem localLabelsFinal_128_eq : LabToTarget.sectionLabels 21264 Alignment128.lines [] = (22068, localLabelsFinal_128) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_128_eq
end InitECandidate.Proofs.BackendStages
