import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc375
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody375_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody375_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody375_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody375_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody375_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody375_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody375_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def RemovedBody375_7 : StackLang.HolProg 64 :=
.seq RemovedBody375_5 RemovedBody375_6

def RemovedBody375_8 : StackLang.HolProg 64 :=
.seq RemovedBody375_4 RemovedBody375_7

def RemovedBody375_9 : StackLang.HolProg 64 :=
.seq RemovedBody375_3 RemovedBody375_8

def RemovedBody375_10 : StackLang.HolProg 64 :=
.seq RemovedBody375_2 RemovedBody375_9

def RemovedBody375_11 : StackLang.HolProg 64 :=
.seq RemovedBody375_1 RemovedBody375_10

def RemovedBody375_12 : StackLang.HolProg 64 :=
.seq RemovedBody375_0 RemovedBody375_11

def Removed375 : Nat × StackLang.HolProg 64 := (375, RemovedBody375_12)
theorem Removed375_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc375 = Removed375 := by
  kernel_rfl
#print axioms Removed375_eq
end InitECandidate.Proofs.BackendStages
