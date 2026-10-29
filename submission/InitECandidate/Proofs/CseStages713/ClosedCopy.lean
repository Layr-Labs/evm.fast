import InitECandidate.Proofs.CseStages713.DefinitionalCopy
import InitECandidate.Proofs.WordStages.Sparse713.Data4
import InitECandidate.Proofs.WordStages.Sparse713.Data5
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
namespace InitECandidate.Proofs.CseStages713
open Flapjack.Compiler.Backend

theorem copy713_eq :
    WordCopy.copyProp InitECandidate.Proofs.WordStages.Sparse713.pass713_4 =
      InitECandidate.Proofs.WordStages.Sparse713.pass713_5 := by
  exact definitionalCopy

#print axioms copy713_eq
end InitECandidate.Proofs.CseStages713
