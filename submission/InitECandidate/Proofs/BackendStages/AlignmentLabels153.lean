import InitECandidate.Proofs.BackendStages.Alignment153
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_153 : List (Nat × Nat) :=
[(43, 53120), (42, 53108), (17, 53100), (16, 53080), (41, 53024), (40, 52984), (38, 52984), (15, 52976), (14, 52956),
  (37, 52900), (39, 52852), (36, 52836), (13, 52828), (12, 52808), (35, 52752), (34, 52708), (11, 52704), (10, 52688),
  (33, 52632), (32, 52588), (31, 52584), (30, 52540), (9, 52520), (8, 52488), (29, 52432), (28, 52384), (7, 52360),
  (6, 52324), (27, 52268), (23, 52208), (26, 52188), (25, 52180), (5, 52168), (4, 52144), (24, 52088), (22, 52020),
  (21, 52012), (3, 52000), (2, 51976), (20, 51920), (1, 51860), (19, 51860)]
theorem localLabelsFinal_153_eq : LabToTarget.sectionLabels 51844 Alignment153.lines [] = (53120, localLabelsFinal_153) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_153_eq
end InitECandidate.Proofs.BackendStages
