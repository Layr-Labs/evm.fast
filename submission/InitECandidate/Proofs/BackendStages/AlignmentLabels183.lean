import InitECandidate.Proofs.BackendStages.Alignment183
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_183 : List (Nat × Nat) :=
[(22, 99208), (21, 99144), (9, 99128), (8, 99096), (20, 99040), (19, 98992), (7, 98980), (6, 98952), (18, 98896),
  (17, 98848), (5, 98836), (4, 98808), (16, 98752), (15, 98672), (14, 98668), (13, 98644), (3, 98632), (2, 98604),
  (12, 98548), (1, 98504), (11, 98504)]
theorem localLabelsFinal_183_eq : LabToTarget.sectionLabels 98488 Alignment183.lines [] = (99208, localLabelsFinal_183) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_183_eq
end InitECandidate.Proofs.BackendStages
