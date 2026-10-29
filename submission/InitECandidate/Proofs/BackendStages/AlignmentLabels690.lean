import InitECandidate.Proofs.BackendStages.Alignment690
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_690 : List (Nat × Nat) :=
[(15, 631196), (9, 631180), (14, 631160), (13, 631112), (5, 631068), (4, 631008), (12, 630952), (11, 630880),
  (3, 630864), (2, 630820), (10, 630764), (8, 630644), (1, 630604), (7, 630604)]
theorem localLabelsFinal_690_eq : LabToTarget.sectionLabels 630588 Alignment690.lines [] = (631196, localLabelsFinal_690) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_690_eq
end InitECandidate.Proofs.BackendStages
