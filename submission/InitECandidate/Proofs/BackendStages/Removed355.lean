import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc355
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody355_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody355_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody355_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 264#64))

def RemovedBody355_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody355_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody355_5 : StackLang.HolProg 64 :=
.seq RemovedBody355_3 RemovedBody355_4

def RemovedBody355_6 : StackLang.HolProg 64 :=
.seq RemovedBody355_2 RemovedBody355_5

def RemovedBody355_7 : StackLang.HolProg 64 :=
.seq RemovedBody355_1 RemovedBody355_6

def RemovedBody355_8 : StackLang.HolProg 64 :=
.seq RemovedBody355_0 RemovedBody355_7

def Removed355 : Nat × StackLang.HolProg 64 := (355, RemovedBody355_8)
theorem Removed355_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc355 = Removed355 := by
  kernel_rfl
#print axioms Removed355_eq
end InitECandidate.Proofs.BackendStages
