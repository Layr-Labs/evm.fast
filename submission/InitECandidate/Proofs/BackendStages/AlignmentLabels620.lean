import InitECandidate.Proofs.BackendStages.Alignment620
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_620 : List (Nat × Nat) :=
[(25, 497324), (24, 497308), (23, 497304), (22, 497272), (21, 497260), (9, 497248), (8, 497220), (20, 497164),
  (19, 497128), (7, 497116), (6, 497088), (18, 497032), (17, 496988), (5, 496960), (4, 496916), (16, 496860),
  (15, 496820), (14, 496808), (13, 496788), (3, 496776), (2, 496748), (12, 496692), (1, 496644), (11, 496644)]
theorem localLabelsFinal_620_eq : LabToTarget.sectionLabels 496628 Alignment620.lines [] = (497324, localLabelsFinal_620) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_620_eq
end InitECandidate.Proofs.BackendStages
