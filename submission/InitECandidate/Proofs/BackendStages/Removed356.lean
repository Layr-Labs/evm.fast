import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc356
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody356_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody356_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody356_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 264#64))

def RemovedBody356_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 17#64)))

def RemovedBody356_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody356_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody356_6 : StackLang.HolProg 64 :=
.seq RemovedBody356_4 RemovedBody356_5

def RemovedBody356_7 : StackLang.HolProg 64 :=
.seq RemovedBody356_3 RemovedBody356_6

def RemovedBody356_8 : StackLang.HolProg 64 :=
.seq RemovedBody356_2 RemovedBody356_7

def RemovedBody356_9 : StackLang.HolProg 64 :=
.seq RemovedBody356_1 RemovedBody356_8

def RemovedBody356_10 : StackLang.HolProg 64 :=
.seq RemovedBody356_0 RemovedBody356_9

def Removed356 : Nat × StackLang.HolProg 64 := (356, RemovedBody356_10)
theorem Removed356_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc356 = Removed356 := by
  kernel_rfl
#print axioms Removed356_eq
end InitECandidate.Proofs.BackendStages
