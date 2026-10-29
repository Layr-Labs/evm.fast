import InitECandidate.Proofs.BackendStages.Metadata.Computation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
def localFfis4 : List HolFfiName  := []
def suffixFfis4 : List HolFfiName := [Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]),
  Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 97#8, 108#8, 116#8])]
def nextFfis4 : List HolFfiName := [Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]),
  Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 97#8, 108#8, 116#8])]
def beforeFfis4 : List HolFfiName := []
def beforeShmem4 : List LabToTarget.ShmemInfoNum := []
def afterFfis4 : List HolFfiName := []
def afterShmem4 : List LabToTarget.ShmemInfoNum := []
end InitECandidate.Proofs.BackendStages.Metadata
