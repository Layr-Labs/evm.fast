import InitECandidate.Proofs.BackendStages.Alignment250
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_250 : List (Nat × Nat) :=
[(32, 183328), (31, 183316), (29, 183316), (7, 183308), (6, 183288), (28, 183232), (30, 183204), (12, 183188),
  (27, 183176), (26, 183168), (24, 183168), (22, 183168), (5, 183144), (4, 183108), (21, 183052), (23, 183016),
  (25, 182984), (20, 182960), (18, 182960), (3, 182936), (2, 182900), (17, 182844), (19, 182792), (16, 182764),
  (15, 182760), (14, 182748), (13, 182744), (11, 182716), (10, 182708), (1, 182684), (9, 182684)]
theorem localLabelsFinal_250_eq : LabToTarget.sectionLabels 182668 Alignment250.lines [] = (183328, localLabelsFinal_250) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_250_eq
end InitECandidate.Proofs.BackendStages
