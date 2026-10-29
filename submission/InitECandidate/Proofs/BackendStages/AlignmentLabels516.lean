import InitECandidate.Proofs.BackendStages.Alignment516
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_516 : List (Nat × Nat) :=
[(24, 382840), (23, 382828), (11, 382820), (10, 382800), (22, 382744), (21, 382716), (9, 382712), (8, 382696),
  (20, 382640), (19, 382600), (7, 382564), (6, 382516), (18, 382460), (17, 382416), (5, 382412), (4, 382392),
  (16, 382336), (15, 382296), (3, 382292), (2, 382272), (14, 382216), (1, 382188), (13, 382188)]
theorem localLabelsFinal_516_eq : LabToTarget.sectionLabels 382172 Alignment516.lines [] = (382840, localLabelsFinal_516) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_516_eq
end InitECandidate.Proofs.BackendStages
