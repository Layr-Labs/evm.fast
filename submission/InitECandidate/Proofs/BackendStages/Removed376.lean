import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc376
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody376_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody376_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody376_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody376_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody376_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody376_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody376_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def RemovedBody376_7 : StackLang.HolProg 64 :=
.seq RemovedBody376_5 RemovedBody376_6

def RemovedBody376_8 : StackLang.HolProg 64 :=
.seq RemovedBody376_4 RemovedBody376_7

def RemovedBody376_9 : StackLang.HolProg 64 :=
.seq RemovedBody376_3 RemovedBody376_8

def RemovedBody376_10 : StackLang.HolProg 64 :=
.seq RemovedBody376_2 RemovedBody376_9

def RemovedBody376_11 : StackLang.HolProg 64 :=
.seq RemovedBody376_1 RemovedBody376_10

def RemovedBody376_12 : StackLang.HolProg 64 :=
.seq RemovedBody376_0 RemovedBody376_11

def Removed376 : Nat × StackLang.HolProg 64 := (376, RemovedBody376_12)
theorem Removed376_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc376 = Removed376 := by
  kernel_rfl
#print axioms Removed376_eq
end InitECandidate.Proofs.BackendStages
