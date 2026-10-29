import InitECandidate.Proofs.BackendStages.Alignment795
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_795 : List (Nat × Nat) :=
[(40, 829280), (39, 829268), (19, 829236), (18, 829188), (38, 829132), (37, 829100), (17, 829096), (16, 829076),
  (36, 829020), (35, 828988), (15, 828912), (14, 828820), (34, 828764), (33, 828732), (13, 828608), (12, 828468),
  (32, 828412), (31, 828356), (11, 828352), (10, 828332), (30, 828276), (29, 828244), (9, 828160), (8, 828040),
  (28, 827984), (27, 827928), (7, 827924), (6, 827904), (26, 827848), (25, 827792), (5, 827764), (4, 827700),
  (24, 827644), (23, 827544), (3, 827516), (2, 827472), (22, 827416), (1, 827336), (21, 827336)]
theorem localLabelsFinal_795_eq : LabToTarget.sectionLabels 827320 Alignment795.lines [] = (829280, localLabelsFinal_795) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_795_eq
end InitECandidate.Proofs.BackendStages
