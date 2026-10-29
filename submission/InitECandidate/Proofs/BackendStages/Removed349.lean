import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc349
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody349_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody349_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody349_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 152#64))

def RemovedBody349_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody349_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody349_5 : StackLang.HolProg 64 :=
.seq RemovedBody349_3 RemovedBody349_4

def RemovedBody349_6 : StackLang.HolProg 64 :=
.seq RemovedBody349_2 RemovedBody349_5

def RemovedBody349_7 : StackLang.HolProg 64 :=
.seq RemovedBody349_1 RemovedBody349_6

def RemovedBody349_8 : StackLang.HolProg 64 :=
.seq RemovedBody349_0 RemovedBody349_7

def Removed349 : Nat × StackLang.HolProg 64 := (349, RemovedBody349_8)
theorem Removed349_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc349 = Removed349 := by
  kernel_rfl
#print axioms Removed349_eq
end InitECandidate.Proofs.BackendStages
