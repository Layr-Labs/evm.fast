import InitECandidate.Proofs.BackendStages.Alignment744
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_744 : List (Nat × Nat) :=
[(47, 745532), (46, 745520), (19, 745512), (18, 745492), (45, 745436), (44, 745404), (17, 745396), (16, 745376),
  (43, 745320), (33, 745272), (42, 745236), (41, 745212), (39, 745208), (15, 745168), (14, 745116), (38, 745060),
  (40, 745012), (37, 744952), (35, 744952), (13, 744920), (12, 744876), (34, 744820), (36, 744732), (32, 744660),
  (31, 744648), (11, 744612), (10, 744564), (30, 744508), (29, 744472), (9, 744464), (8, 744444), (28, 744388),
  (27, 744344), (7, 744308), (6, 744256), (26, 744200), (25, 744164), (5, 744160), (4, 744140), (24, 744084),
  (23, 744048), (3, 744044), (2, 744024), (22, 743968), (1, 743920), (21, 743920)]
theorem localLabelsFinal_744_eq : LabToTarget.sectionLabels 743904 Alignment744.lines [] = (745532, localLabelsFinal_744) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_744_eq
end InitECandidate.Proofs.BackendStages
