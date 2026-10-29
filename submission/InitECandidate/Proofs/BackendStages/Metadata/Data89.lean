import InitECandidate.Proofs.BackendStages.Metadata.Computation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
def localFfis89 : List HolFfiName  := []
def suffixFfis89 : List HolFfiName := []
def nextFfis89 : List HolFfiName := []
def beforeFfis89 : List HolFfiName := [Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite]
def beforeShmem89 : List LabToTarget.ShmemInfoNum := [{ entryPc := 4744, nbytes := 1#8, addrReg := 10, addrOff := 0, reg := 11, exitPc := 4748 },
  { entryPc := 4788, nbytes := 0#8, addrReg := 13, addrOff := 0, reg := 12, exitPc := 4792 },
  { entryPc := 4820, nbytes := 0#8, addrReg := 12, addrOff := 0, reg := 10, exitPc := 4824 }]
def afterFfis89 : List HolFfiName := [Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite]
def afterShmem89 : List LabToTarget.ShmemInfoNum := [{ entryPc := 4744, nbytes := 1#8, addrReg := 10, addrOff := 0, reg := 11, exitPc := 4748 },
  { entryPc := 4788, nbytes := 0#8, addrReg := 13, addrOff := 0, reg := 12, exitPc := 4792 },
  { entryPc := 4820, nbytes := 0#8, addrReg := 12, addrOff := 0, reg := 10, exitPc := 4824 }]
end InitECandidate.Proofs.BackendStages.Metadata
