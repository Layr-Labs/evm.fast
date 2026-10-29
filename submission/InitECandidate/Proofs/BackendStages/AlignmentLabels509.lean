import InitECandidate.Proofs.BackendStages.Alignment509
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_509 : List (Nat × Nat) :=
[(28, 377932), (27, 377920), (13, 377912), (12, 377892), (26, 377836), (25, 377808), (11, 377804), (10, 377788),
  (24, 377732), (23, 377704), (9, 377700), (8, 377680), (22, 377624), (21, 377596), (7, 377560), (6, 377512),
  (20, 377456), (19, 377412), (5, 377408), (4, 377388), (18, 377332), (17, 377292), (3, 377288), (2, 377268),
  (16, 377212), (1, 377184), (15, 377184)]
theorem localLabelsFinal_509_eq : LabToTarget.sectionLabels 377168 Alignment509.lines [] = (377932, localLabelsFinal_509) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_509_eq
end InitECandidate.Proofs.BackendStages
