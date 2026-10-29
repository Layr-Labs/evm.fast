import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc178
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody178_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody178_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody178_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 192#64)

def RemovedBody178_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody178_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody178_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 174) none

def RemovedBody178_6 : StackLang.HolProg 64 :=
.seq RemovedBody178_4 RemovedBody178_5

def RemovedBody178_7 : StackLang.HolProg 64 :=
.seq RemovedBody178_3 RemovedBody178_6

def RemovedBody178_8 : StackLang.HolProg 64 :=
.seq RemovedBody178_2 RemovedBody178_7

def RemovedBody178_9 : StackLang.HolProg 64 :=
.seq RemovedBody178_1 RemovedBody178_8

def RemovedBody178_10 : StackLang.HolProg 64 :=
.seq RemovedBody178_0 RemovedBody178_9

def Removed178 : Nat × StackLang.HolProg 64 := (178, RemovedBody178_10)
theorem Removed178_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc178 = Removed178 := by
  kernel_rfl
#print axioms Removed178_eq
end InitECandidate.Proofs.BackendStages
