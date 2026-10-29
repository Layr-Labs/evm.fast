import InitECandidate.Proofs.BackendStages.Alignment775
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_775 : List (Nat × Nat) :=
[(27, 789256), (26, 789068), (25, 788992), (24, 788988), (23, 788972), (22, 788968), (21, 788952), (9, 788888),
  (8, 788808), (20, 788752), (19, 788692), (7, 788664), (6, 788620), (18, 788564), (17, 788432), (16, 788412),
  (5, 788400), (4, 788372), (15, 788316), (14, 788272), (13, 788252), (3, 788236), (2, 788204), (12, 788148),
  (1, 788108), (11, 788108)]
theorem localLabelsFinal_775_eq : LabToTarget.sectionLabels 788092 Alignment775.lines [] = (789256, localLabelsFinal_775) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_775_eq
end InitECandidate.Proofs.BackendStages
