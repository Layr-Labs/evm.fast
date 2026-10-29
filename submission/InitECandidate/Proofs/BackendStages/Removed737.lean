import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc737
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody737_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody737_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody737_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody737_3 : StackLang.HolProg 64 :=
.call none (Sum.inl 734) none

def RemovedBody737_4 : StackLang.HolProg 64 :=
.seq RemovedBody737_2 RemovedBody737_3

def RemovedBody737_5 : StackLang.HolProg 64 :=
.seq RemovedBody737_1 RemovedBody737_4

def RemovedBody737_6 : StackLang.HolProg 64 :=
.seq RemovedBody737_0 RemovedBody737_5

def Removed737 : Nat × StackLang.HolProg 64 := (737, RemovedBody737_6)
theorem Removed737_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc737 = Removed737 := by
  kernel_rfl
#print axioms Removed737_eq
end InitECandidate.Proofs.BackendStages
