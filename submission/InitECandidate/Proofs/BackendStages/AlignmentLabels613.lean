import InitECandidate.Proofs.BackendStages.Alignment613
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_613 : List (Nat × Nat) :=
[(15, 484600), (14, 484564), (5, 484552), (4, 484528), (13, 484472), (12, 484440), (10, 484400), (3, 484388),
  (2, 484360), (9, 484304), (11, 484260), (8, 484224), (1, 484136), (7, 484136)]
theorem localLabelsFinal_613_eq : LabToTarget.sectionLabels 484120 Alignment613.lines [] = (484600, localLabelsFinal_613) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_613_eq
end InitECandidate.Proofs.BackendStages
