import InitECandidate.Proofs.BackendStages.Metadata.Computation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
def localFfis240 : List HolFfiName  := []
def suffixFfis240 : List HolFfiName := []
def nextFfis240 : List HolFfiName := []
def beforeFfis240 : List HolFfiName := [Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedRead,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedRead,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite]
def beforeShmem240 : List LabToTarget.ShmemInfoNum := [{ entryPc := 4744, nbytes := 1#8, addrReg := 10, addrOff := 0, reg := 11, exitPc := 4748 },
  { entryPc := 4788, nbytes := 0#8, addrReg := 13, addrOff := 0, reg := 12, exitPc := 4792 },
  { entryPc := 4820, nbytes := 0#8, addrReg := 12, addrOff := 0, reg := 10, exitPc := 4824 },
  { entryPc := 9396, nbytes := 0#8, addrReg := 10, addrOff := 0, reg := 11, exitPc := 9400 },
  { entryPc := 9692, nbytes := 0#8, addrReg := 12, addrOff := 0, reg := 12, exitPc := 9696 },
  { entryPc := 9776, nbytes := 1#8, addrReg := 5, addrOff := 0, reg := 13, exitPc := 9780 }]
def afterFfis240 : List HolFfiName := [Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedRead,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedRead,
  Flapjack.HolFfiName.sharedMem Flapjack.HolShmemOp.mappedWrite]
def afterShmem240 : List LabToTarget.ShmemInfoNum := [{ entryPc := 4744, nbytes := 1#8, addrReg := 10, addrOff := 0, reg := 11, exitPc := 4748 },
  { entryPc := 4788, nbytes := 0#8, addrReg := 13, addrOff := 0, reg := 12, exitPc := 4792 },
  { entryPc := 4820, nbytes := 0#8, addrReg := 12, addrOff := 0, reg := 10, exitPc := 4824 },
  { entryPc := 9396, nbytes := 0#8, addrReg := 10, addrOff := 0, reg := 11, exitPc := 9400 },
  { entryPc := 9692, nbytes := 0#8, addrReg := 12, addrOff := 0, reg := 12, exitPc := 9696 },
  { entryPc := 9776, nbytes := 1#8, addrReg := 5, addrOff := 0, reg := 13, exitPc := 9780 }]
end InitECandidate.Proofs.BackendStages.Metadata
