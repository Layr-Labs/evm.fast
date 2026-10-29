import InitECandidate.Proofs.BackendStages.Alignment387
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_387 : List (Nat × Nat) :=
[(40, 298900), (39, 298852), (19, 298844), (18, 298820), (38, 298764), (37, 298708), (17, 298704), (16, 298684),
  (36, 298628), (35, 298572), (15, 298568), (14, 298548), (34, 298492), (33, 298436), (13, 298432), (12, 298412),
  (32, 298356), (31, 298300), (11, 298296), (10, 298276), (30, 298220), (29, 298164), (9, 298160), (8, 298140),
  (28, 298084), (27, 298028), (7, 298024), (6, 298004), (26, 297948), (25, 297892), (5, 297888), (4, 297868),
  (24, 297812), (23, 297748), (3, 297744), (2, 297724), (22, 297668), (1, 297636), (21, 297636)]
theorem localLabelsFinal_387_eq : LabToTarget.sectionLabels 297620 Alignment387.lines [] = (298900, localLabelsFinal_387) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_387_eq
end InitECandidate.Proofs.BackendStages
