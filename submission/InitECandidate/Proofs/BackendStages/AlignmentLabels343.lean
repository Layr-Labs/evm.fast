import InitECandidate.Proofs.BackendStages.Alignment343
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_343 : List (Nat × Nat) :=
[(23, 270020), (17, 270000), (22, 269976), (21, 269952), (9, 269920), (8, 269876), (20, 269820), (19, 269776),
  (7, 269764), (6, 269736), (18, 269680), (16, 269624), (15, 269616), (5, 269604), (4, 269576), (14, 269520),
  (13, 269484), (3, 269480), (2, 269460), (12, 269404), (1, 269368), (11, 269368)]
theorem localLabelsFinal_343_eq : LabToTarget.sectionLabels 269352 Alignment343.lines [] = (270020, localLabelsFinal_343) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_343_eq
end InitECandidate.Proofs.BackendStages
