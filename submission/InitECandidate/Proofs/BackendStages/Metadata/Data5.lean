import InitECandidate.Proofs.BackendStages.Metadata.Computation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
def localFfis5 : List HolFfiName  := []
def suffixFfis5 : List HolFfiName := [Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]),
  Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 97#8, 108#8, 116#8])]
def nextFfis5 : List HolFfiName := [Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8]),
  Flapjack.HolFfiName.extCall (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 97#8, 108#8, 116#8])]
def beforeFfis5 : List HolFfiName := []
def beforeShmem5 : List LabToTarget.ShmemInfoNum := []
def afterFfis5 : List HolFfiName := []
def afterShmem5 : List LabToTarget.ShmemInfoNum := []
end InitECandidate.Proofs.BackendStages.Metadata
