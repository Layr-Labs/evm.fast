import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc373
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody373_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody373_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody373_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody373_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody373_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody373_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody373_6 : StackLang.HolProg 64 :=
.call none (Sum.inl 370) none

def RemovedBody373_7 : StackLang.HolProg 64 :=
.seq RemovedBody373_5 RemovedBody373_6

def RemovedBody373_8 : StackLang.HolProg 64 :=
.seq RemovedBody373_4 RemovedBody373_7

def RemovedBody373_9 : StackLang.HolProg 64 :=
.seq RemovedBody373_3 RemovedBody373_8

def RemovedBody373_10 : StackLang.HolProg 64 :=
.seq RemovedBody373_2 RemovedBody373_9

def RemovedBody373_11 : StackLang.HolProg 64 :=
.seq RemovedBody373_1 RemovedBody373_10

def RemovedBody373_12 : StackLang.HolProg 64 :=
.seq RemovedBody373_0 RemovedBody373_11

def Removed373 : Nat × StackLang.HolProg 64 := (373, RemovedBody373_12)
theorem Removed373_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc373 = Removed373 := by
  kernel_rfl
#print axioms Removed373_eq
end InitECandidate.Proofs.BackendStages
