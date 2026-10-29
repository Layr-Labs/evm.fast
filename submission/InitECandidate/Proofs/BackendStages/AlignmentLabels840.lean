import InitECandidate.Proofs.BackendStages.Alignment840
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_840 : List (Nat × Nat) :=
[(16, 910700), (15, 910688), (7, 910672), (6, 910644), (14, 910588), (13, 910552), (5, 910540), (4, 910516),
  (12, 910460), (11, 910412), (3, 910400), (2, 910372), (10, 910316), (1, 910264), (9, 910264)]
theorem localLabelsFinal_840_eq : LabToTarget.sectionLabels 910248 Alignment840.lines [] = (910700, localLabelsFinal_840) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_840_eq
end InitECandidate.Proofs.BackendStages
