import InitECandidate.Proofs.BackendStages.Alignment844
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_844 : List (Nat × Nat) :=
[(20, 914296), (19, 914284), (9, 914272), (8, 914244), (18, 914188), (17, 914144), (7, 914132), (6, 914104),
  (16, 914048), (15, 913896), (5, 913880), (4, 913848), (14, 913792), (13, 913636), (3, 913628), (2, 913604),
  (12, 913548), (1, 913392), (11, 913392)]
theorem localLabelsFinal_844_eq : LabToTarget.sectionLabels 913376 Alignment844.lines [] = (914296, localLabelsFinal_844) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_844_eq
end InitECandidate.Proofs.BackendStages
