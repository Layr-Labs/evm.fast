import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc347
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody347_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody347_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody347_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 144#64))

def RemovedBody347_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody347_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody347_5 : StackLang.HolProg 64 :=
.seq RemovedBody347_3 RemovedBody347_4

def RemovedBody347_6 : StackLang.HolProg 64 :=
.seq RemovedBody347_2 RemovedBody347_5

def RemovedBody347_7 : StackLang.HolProg 64 :=
.seq RemovedBody347_1 RemovedBody347_6

def RemovedBody347_8 : StackLang.HolProg 64 :=
.seq RemovedBody347_0 RemovedBody347_7

def Removed347 : Nat × StackLang.HolProg 64 := (347, RemovedBody347_8)
theorem Removed347_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc347 = Removed347 := by
  kernel_rfl
#print axioms Removed347_eq
end InitECandidate.Proofs.BackendStages
