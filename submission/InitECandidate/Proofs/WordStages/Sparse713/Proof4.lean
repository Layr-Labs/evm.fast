import InitECandidate.Proofs.CseStages713.Closed
set_option autoImplicit false
set_option Elab.async false
namespace InitECandidate.Proofs.WordStages.Sparse713
open Flapjack.Compiler.Backend
theorem pass713_4_eq : WordCse.wordCommonSubexpElim pass713_3 = pass713_4 :=
  InitECandidate.Proofs.CseStages713.cse713_eq
#print axioms pass713_4_eq
end InitECandidate.Proofs.WordStages.Sparse713
