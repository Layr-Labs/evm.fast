import InitECandidate.Proofs.BackendStages.Alignment427
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_427 : List (Nat × Nat) :=
[(41, 318432), (40, 318420), (19, 318412), (18, 318392), (39, 318336), (38, 318288), (17, 318276), (16, 318244),
  (37, 318188), (36, 318144), (15, 318116), (14, 318072), (35, 318016), (34, 317988), (13, 317984), (12, 317964),
  (33, 317908), (32, 317876), (11, 317868), (10, 317848), (31, 317792), (30, 317744), (9, 317700), (8, 317636),
  (29, 317580), (28, 317520), (7, 317500), (6, 317464), (27, 317408), (26, 317380), (25, 317356), (5, 317324),
  (4, 317276), (24, 317220), (23, 317160), (3, 317140), (2, 317104), (22, 317048), (1, 316996), (21, 316996)]
theorem localLabelsFinal_427_eq : LabToTarget.sectionLabels 316980 Alignment427.lines [] = (318432, localLabelsFinal_427) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_427_eq
end InitECandidate.Proofs.BackendStages
