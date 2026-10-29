import InitECandidate.Proofs.BackendStages.Alignment438
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_438 : List (Nat × Nat) :=
[(20, 324668), (19, 324624), (9, 324616), (8, 324592), (18, 324536), (17, 324488), (7, 324484), (6, 324464),
  (16, 324408), (15, 324356), (5, 324352), (4, 324332), (14, 324276), (13, 324224), (3, 324220), (2, 324200),
  (12, 324144), (1, 324108), (11, 324108)]
theorem localLabelsFinal_438_eq : LabToTarget.sectionLabels 324092 Alignment438.lines [] = (324668, localLabelsFinal_438) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_438_eq
end InitECandidate.Proofs.BackendStages
