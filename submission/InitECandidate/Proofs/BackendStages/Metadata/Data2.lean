import InitECandidate.Proofs.BackendStages.Metadata.Computation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
def localFfis2 : List HolFfiName  := []
def suffixFfis2 : List HolFfiName := [Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]),
  Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 97#8, 108#8, 116#8])]
def nextFfis2 : List HolFfiName := [Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]),
  Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 97#8, 108#8, 116#8])]
def beforeFfis2 : List HolFfiName := []
def beforeShmem2 : List LabToTarget.ShmemInfoNum := []
def afterFfis2 : List HolFfiName := []
def afterShmem2 : List LabToTarget.ShmemInfoNum := []
end InitECandidate.Proofs.BackendStages.Metadata
