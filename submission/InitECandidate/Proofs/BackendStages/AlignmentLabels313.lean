import InitECandidate.Proofs.BackendStages.Alignment313
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_313 : List (Nat × Nat) :=
[(20, 245272), (19, 245260), (18, 245240), (7, 245224), (6, 245192), (17, 245136), (16, 245080), (5, 245048),
  (4, 245000), (15, 244944), (14, 244888), (12, 244860), (11, 244816), (3, 244768), (2, 244704), (10, 244648),
  (13, 244588), (1, 244540), (9, 244540)]
theorem localLabelsFinal_313_eq : LabToTarget.sectionLabels 244524 Alignment313.lines [] = (245272, localLabelsFinal_313) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_313_eq
end InitECandidate.Proofs.BackendStages
