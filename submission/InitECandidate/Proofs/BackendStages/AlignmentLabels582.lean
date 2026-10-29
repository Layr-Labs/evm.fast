import InitECandidate.Proofs.BackendStages.Alignment582
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_582 : List (Nat × Nat) :=
[(24, 435432), (23, 435420), (11, 435412), (10, 435392), (22, 435336), (21, 435308), (9, 435304), (8, 435288),
  (20, 435232), (19, 435204), (7, 435200), (6, 435180), (18, 435124), (17, 435092), (5, 435088), (4, 435068),
  (16, 435012), (15, 434988), (3, 434984), (2, 434968), (14, 434912), (1, 434880), (13, 434880)]
theorem localLabelsFinal_582_eq : LabToTarget.sectionLabels 434864 Alignment582.lines [] = (435432, localLabelsFinal_582) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_582_eq
end InitECandidate.Proofs.BackendStages
