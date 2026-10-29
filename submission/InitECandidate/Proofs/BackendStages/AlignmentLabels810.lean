import InitECandidate.Proofs.BackendStages.Alignment810
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_810 : List (Nat × Nat) :=
[(43, 872412), (42, 872400), (19, 872392), (18, 872372), (41, 872316), (40, 872284), (17, 872276), (16, 872256),
  (39, 872200), (38, 872168), (15, 872148), (14, 872116), (37, 872060), (36, 872024), (35, 872012), (13, 872004),
  (12, 871984), (34, 871928), (33, 871880), (31, 871880), (11, 871852), (10, 871808), (30, 871752), (32, 871712),
  (29, 871680), (9, 871660), (8, 871624), (28, 871568), (27, 871524), (7, 871512), (6, 871484), (26, 871428),
  (25, 871392), (5, 871388), (4, 871368), (24, 871312), (23, 871276), (3, 871272), (2, 871252), (22, 871196),
  (1, 871156), (21, 871156)]
theorem localLabelsFinal_810_eq : LabToTarget.sectionLabels 871140 Alignment810.lines [] = (872412, localLabelsFinal_810) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_810_eq
end InitECandidate.Proofs.BackendStages
