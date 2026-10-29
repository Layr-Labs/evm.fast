import InitECandidate.Proofs.BackendStages.Alignment415
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_415 : List (Nat × Nat) :=
[(19, 311936), (18, 311924), (17, 311904), (7, 311896), (6, 311872), (16, 311816), (15, 311784), (14, 311764),
  (5, 311752), (4, 311724), (13, 311668), (12, 311616), (11, 311592), (3, 311584), (2, 311560), (10, 311504),
  (1, 311472), (9, 311472)]
theorem localLabelsFinal_415_eq : LabToTarget.sectionLabels 311456 Alignment415.lines [] = (311936, localLabelsFinal_415) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_415_eq
end InitECandidate.Proofs.BackendStages
