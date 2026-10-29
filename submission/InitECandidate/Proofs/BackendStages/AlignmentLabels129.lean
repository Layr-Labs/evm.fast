import InitECandidate.Proofs.BackendStages.Alignment129
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_129 : List (Nat × Nat) :=
[(27, 23176), (26, 23164), (11, 23140), (10, 23100), (25, 23044), (24, 22984), (9, 22980), (8, 22960), (23, 22904),
  (22, 22872), (7, 22848), (6, 22812), (21, 22756), (20, 22676), (19, 22628), (5, 22620), (4, 22596), (18, 22540),
  (17, 22460), (16, 22428), (3, 22384), (2, 22324), (15, 22268), (14, 22176), (1, 22084), (13, 22084)]
theorem localLabelsFinal_129_eq : LabToTarget.sectionLabels 22068 Alignment129.lines [] = (23176, localLabelsFinal_129) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_129_eq
end InitECandidate.Proofs.BackendStages
