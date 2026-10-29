import InitECandidate.Proofs.BackendStages.Alignment512
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_512 : List (Nat × Nat) :=
[(28, 380224), (27, 380212), (13, 380204), (12, 380184), (26, 380128), (25, 380100), (11, 380096), (10, 380080),
  (24, 380024), (23, 379996), (9, 379992), (8, 379972), (22, 379916), (21, 379888), (7, 379852), (6, 379804),
  (20, 379748), (19, 379704), (5, 379700), (4, 379680), (18, 379624), (17, 379584), (3, 379580), (2, 379560),
  (16, 379504), (1, 379476), (15, 379476)]
theorem localLabelsFinal_512_eq : LabToTarget.sectionLabels 379460 Alignment512.lines [] = (380224, localLabelsFinal_512) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_512_eq
end InitECandidate.Proofs.BackendStages
