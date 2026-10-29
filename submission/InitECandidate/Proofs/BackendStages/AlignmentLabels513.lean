import InitECandidate.Proofs.BackendStages.Alignment513
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_513 : List (Nat × Nat) :=
[(24, 380836), (23, 380824), (11, 380816), (10, 380796), (22, 380740), (21, 380712), (9, 380708), (8, 380692),
  (20, 380636), (19, 380608), (7, 380604), (6, 380584), (18, 380528), (17, 380500), (5, 380480), (4, 380448),
  (16, 380392), (15, 380348), (3, 380344), (2, 380324), (14, 380268), (1, 380240), (13, 380240)]
theorem localLabelsFinal_513_eq : LabToTarget.sectionLabels 380224 Alignment513.lines [] = (380836, localLabelsFinal_513) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_513_eq
end InitECandidate.Proofs.BackendStages
