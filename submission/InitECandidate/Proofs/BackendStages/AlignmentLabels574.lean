import InitECandidate.Proofs.BackendStages.Alignment574
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_574 : List (Nat × Nat) :=
[(34, 430532), (33, 430520), (15, 430512), (14, 430492), (32, 430436), (31, 430408), (27, 430408), (11, 430404),
  (10, 430388), (26, 430332), (25, 430304), (9, 430300), (8, 430280), (24, 430224), (30, 430184), (29, 430180),
  (13, 430176), (12, 430160), (28, 430104), (23, 430060), (7, 430048), (6, 430020), (22, 429964), (21, 429900),
  (5, 429880), (4, 429848), (20, 429792), (19, 429748), (3, 429744), (2, 429724), (18, 429668), (1, 429640),
  (17, 429640)]
theorem localLabelsFinal_574_eq : LabToTarget.sectionLabels 429624 Alignment574.lines [] = (430532, localLabelsFinal_574) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_574_eq
end InitECandidate.Proofs.BackendStages
