import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc374
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody374_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody374_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody374_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody374_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody374_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody374_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody374_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def RemovedBody374_7 : StackLang.HolProg 64 :=
.seq RemovedBody374_5 RemovedBody374_6

def RemovedBody374_8 : StackLang.HolProg 64 :=
.seq RemovedBody374_4 RemovedBody374_7

def RemovedBody374_9 : StackLang.HolProg 64 :=
.seq RemovedBody374_3 RemovedBody374_8

def RemovedBody374_10 : StackLang.HolProg 64 :=
.seq RemovedBody374_2 RemovedBody374_9

def RemovedBody374_11 : StackLang.HolProg 64 :=
.seq RemovedBody374_1 RemovedBody374_10

def RemovedBody374_12 : StackLang.HolProg 64 :=
.seq RemovedBody374_0 RemovedBody374_11

def Removed374 : Nat × StackLang.HolProg 64 := (374, RemovedBody374_12)
theorem Removed374_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc374 = Removed374 := by
  kernel_rfl
#print axioms Removed374_eq
end InitECandidate.Proofs.BackendStages
