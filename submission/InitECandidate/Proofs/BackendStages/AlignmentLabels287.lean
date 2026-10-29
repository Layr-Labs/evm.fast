import InitECandidate.Proofs.BackendStages.Alignment287
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_287 : List (Nat × Nat) :=
[(32, 230160), (31, 230148), (15, 230140), (14, 230120), (30, 230064), (29, 230016), (13, 230012), (12, 229996),
  (28, 229940), (27, 229872), (11, 229868), (10, 229848), (26, 229792), (25, 229744), (9, 229740), (8, 229720),
  (24, 229664), (23, 229616), (7, 229612), (6, 229592), (22, 229536), (21, 229488), (5, 229484), (4, 229464),
  (20, 229408), (19, 229360), (3, 229356), (2, 229336), (18, 229280), (1, 229248), (17, 229248)]
theorem localLabelsFinal_287_eq : LabToTarget.sectionLabels 229232 Alignment287.lines [] = (230160, localLabelsFinal_287) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_287_eq
end InitECandidate.Proofs.BackendStages
