import Flapjack.FfiHOL
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option autoImplicit false
open Flapjack
namespace InitECandidate.Proofs.BackendStages.Target
def ffis : List HolFfiName :=
[Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]),
  Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 97#8, 108#8, 116#8])]
end InitECandidate.Proofs.BackendStages.Target
