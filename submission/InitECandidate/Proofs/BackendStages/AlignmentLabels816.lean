import InitECandidate.Proofs.BackendStages.Alignment816
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_816 : List (Nat × Nat) :=
[(43, 883140), (42, 883128), (19, 883120), (18, 883100), (41, 883044), (40, 883012), (17, 883004), (16, 882984),
  (39, 882928), (38, 882896), (15, 882876), (14, 882844), (37, 882788), (36, 882752), (35, 882740), (13, 882732),
  (12, 882712), (34, 882656), (33, 882608), (31, 882608), (11, 882580), (10, 882536), (30, 882480), (32, 882420),
  (29, 882404), (9, 882376), (8, 882332), (28, 882276), (27, 882232), (7, 882220), (6, 882192), (26, 882136),
  (25, 882100), (5, 882096), (4, 882076), (24, 882020), (23, 881984), (3, 881980), (2, 881960), (22, 881904),
  (1, 881864), (21, 881864)]
theorem localLabelsFinal_816_eq : LabToTarget.sectionLabels 881848 Alignment816.lines [] = (883140, localLabelsFinal_816) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_816_eq
end InitECandidate.Proofs.BackendStages
