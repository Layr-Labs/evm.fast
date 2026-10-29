import InitECandidate.Proofs.BackendStages.Alignment453
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_453 : List (Nat × Nat) :=
[(24, 333936), (23, 333924), (21, 333924), (9, 333916), (8, 333896), (20, 333840), (22, 333812), (19, 333792),
  (7, 333776), (6, 333748), (18, 333692), (17, 333652), (16, 333632), (5, 333620), (4, 333592), (15, 333536),
  (14, 333492), (13, 333472), (3, 333460), (2, 333432), (12, 333376), (1, 333316), (11, 333316)]
theorem localLabelsFinal_453_eq : LabToTarget.sectionLabels 333300 Alignment453.lines [] = (333936, localLabelsFinal_453) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_453_eq
end InitECandidate.Proofs.BackendStages
