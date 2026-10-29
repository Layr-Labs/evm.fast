import InitECandidate.Proofs.BackendStages.Alignment316
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_316 : List (Nat × Nat) :=
[(37, 249460), (36, 249444), (35, 249420), (34, 249388), (9, 249372), (8, 249340), (33, 249284), (32, 249236),
  (31, 249204), (7, 249184), (6, 249148), (30, 249092), (29, 249064), (27, 249064), (5, 249060), (4, 249044),
  (26, 248988), (28, 248944), (25, 248888), (24, 248884), (23, 248868), (22, 248864), (21, 248844), (20, 248828),
  (18, 248828), (3, 248812), (2, 248784), (17, 248728), (19, 248688), (13, 248660), (16, 248648), (15, 248640),
  (14, 248632), (12, 248600), (1, 248576), (11, 248576)]
theorem localLabelsFinal_316_eq : LabToTarget.sectionLabels 248560 Alignment316.lines [] = (249460, localLabelsFinal_316) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_316_eq
end InitECandidate.Proofs.BackendStages
