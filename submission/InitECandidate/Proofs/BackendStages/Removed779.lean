import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc779
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody779_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody779_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody779_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody779_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody779_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody779_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 732) none

def RemovedBody779_6 : StackLang.HolProg 64 :=
.seq RemovedBody779_4 RemovedBody779_5

def RemovedBody779_7 : StackLang.HolProg 64 :=
.seq RemovedBody779_3 RemovedBody779_6

def RemovedBody779_8 : StackLang.HolProg 64 :=
.seq RemovedBody779_2 RemovedBody779_7

def RemovedBody779_9 : StackLang.HolProg 64 :=
.seq RemovedBody779_1 RemovedBody779_8

def RemovedBody779_10 : StackLang.HolProg 64 :=
.seq RemovedBody779_0 RemovedBody779_9

def Removed779 : Nat × StackLang.HolProg 64 := (779, RemovedBody779_10)
theorem Removed779_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc779 = Removed779 := by
  kernel_rfl
#print axioms Removed779_eq
end InitECandidate.Proofs.BackendStages
