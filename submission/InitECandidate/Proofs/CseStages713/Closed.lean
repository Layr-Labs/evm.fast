import InitECandidate.Proofs.CseStages713.Definitional
import InitECandidate.Proofs.WordStages.Sparse713.Data3
import InitECandidate.Proofs.WordStages.Sparse713.Data4
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
namespace InitECandidate.Proofs.CseStages713
open Flapjack.Compiler.Backend

theorem cse713_eq :
    WordCse.wordCommonSubexpElim InitECandidate.Proofs.WordStages.Sparse713.pass713_3 =
      InitECandidate.Proofs.WordStages.Sparse713.pass713_4 := by
  exact definitional

#print axioms cse713_eq
end InitECandidate.Proofs.CseStages713
