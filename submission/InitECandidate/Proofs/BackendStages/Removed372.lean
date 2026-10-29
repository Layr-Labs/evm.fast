import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc372
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody372_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody372_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody372_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody372_3 : StackLang.HolProg 64 :=
.seq RemovedBody372_1 RemovedBody372_2

def RemovedBody372_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2#64)

def RemovedBody372_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody372_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody372_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def RemovedBody372_8 : StackLang.HolProg 64 :=
.seq RemovedBody372_6 RemovedBody372_7

def RemovedBody372_9 : StackLang.HolProg 64 :=
.seq RemovedBody372_5 RemovedBody372_8

def RemovedBody372_10 : StackLang.HolProg 64 :=
.seq RemovedBody372_4 RemovedBody372_9

def RemovedBody372_11 : StackLang.HolProg 64 :=
.seq RemovedBody372_3 RemovedBody372_10

def RemovedBody372_12 : StackLang.HolProg 64 :=
.seq RemovedBody372_0 RemovedBody372_11

def Removed372 : Nat × StackLang.HolProg 64 := (372, RemovedBody372_12)
theorem Removed372_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc372 = Removed372 := by
  kernel_rfl
#print axioms Removed372_eq
end InitECandidate.Proofs.BackendStages
