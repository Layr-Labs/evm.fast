import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc196
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody196_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody196_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody196_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody196_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody196_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody196_5 : StackLang.HolProg 64 :=
.seq RemovedBody196_3 RemovedBody196_4

def RemovedBody196_6 : StackLang.HolProg 64 :=
.seq RemovedBody196_2 RemovedBody196_5

def RemovedBody196_7 : StackLang.HolProg 64 :=
.seq RemovedBody196_1 RemovedBody196_6

def RemovedBody196_8 : StackLang.HolProg 64 :=
.seq RemovedBody196_0 RemovedBody196_7

def Removed196 : Nat × StackLang.HolProg 64 := (196, RemovedBody196_8)
theorem Removed196_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc196 = Removed196 := by
  kernel_rfl
#print axioms Removed196_eq
end InitECandidate.Proofs.BackendStages
