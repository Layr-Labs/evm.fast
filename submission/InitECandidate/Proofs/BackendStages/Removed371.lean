import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc371
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody371_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody371_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody371_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody371_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody371_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody371_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody371_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def RemovedBody371_7 : StackLang.HolProg 64 :=
.seq RemovedBody371_5 RemovedBody371_6

def RemovedBody371_8 : StackLang.HolProg 64 :=
.seq RemovedBody371_4 RemovedBody371_7

def RemovedBody371_9 : StackLang.HolProg 64 :=
.seq RemovedBody371_3 RemovedBody371_8

def RemovedBody371_10 : StackLang.HolProg 64 :=
.seq RemovedBody371_2 RemovedBody371_9

def RemovedBody371_11 : StackLang.HolProg 64 :=
.seq RemovedBody371_1 RemovedBody371_10

def RemovedBody371_12 : StackLang.HolProg 64 :=
.seq RemovedBody371_0 RemovedBody371_11

def Removed371 : Nat × StackLang.HolProg 64 := (371, RemovedBody371_12)
theorem Removed371_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc371 = Removed371 := by
  kernel_rfl
#print axioms Removed371_eq
end InitECandidate.Proofs.BackendStages
