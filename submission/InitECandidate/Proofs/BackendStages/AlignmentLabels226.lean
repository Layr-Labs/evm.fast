import InitECandidate.Proofs.BackendStages.Alignment226
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_226 : List (Nat × Nat) :=
[(29, 144900), (19, 144884), (28, 144820), (27, 144760), (25, 144760), (11, 144692), (10, 144612), (24, 144556),
  (26, 144480), (23, 144440), (9, 144400), (8, 144344), (22, 144288), (21, 144240), (7, 144200), (6, 144148),
  (20, 144092), (18, 143972), (17, 143964), (5, 143932), (4, 143884), (16, 143828), (15, 143784), (3, 143724),
  (2, 143652), (14, 143596), (1, 143516), (13, 143516)]
theorem localLabelsFinal_226_eq : LabToTarget.sectionLabels 143500 Alignment226.lines [] = (144900, localLabelsFinal_226) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_226_eq
end InitECandidate.Proofs.BackendStages
