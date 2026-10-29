import InitECandidate.Proofs.BackendStages.Alignment822
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_822 : List (Nat × Nat) :=
[(31, 892204), (30, 892152), (29, 892128), (13, 892116), (12, 892088), (28, 892032), (27, 891996), (11, 891984),
  (10, 891956), (26, 891900), (25, 891868), (9, 891864), (8, 891848), (24, 891792), (23, 891760), (7, 891756),
  (6, 891736), (22, 891680), (21, 891608), (5, 891600), (4, 891576), (20, 891520), (19, 891484), (18, 891460),
  (3, 891456), (2, 891436), (17, 891380), (16, 891336), (1, 891288), (15, 891288)]
theorem localLabelsFinal_822_eq : LabToTarget.sectionLabels 891272 Alignment822.lines [] = (892204, localLabelsFinal_822) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_822_eq
end InitECandidate.Proofs.BackendStages
