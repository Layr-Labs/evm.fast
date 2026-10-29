import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc245
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody245_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody245_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody245_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody245_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody245_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody245_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody245_6 : StackLang.HolProg 64 :=
.seq RemovedBody245_4 RemovedBody245_5

def RemovedBody245_7 : StackLang.HolProg 64 :=
.seq RemovedBody245_3 RemovedBody245_6

def RemovedBody245_8 : StackLang.HolProg 64 :=
.seq RemovedBody245_2 RemovedBody245_7

def RemovedBody245_9 : StackLang.HolProg 64 :=
.seq RemovedBody245_1 RemovedBody245_8

def RemovedBody245_10 : StackLang.HolProg 64 :=
.seq RemovedBody245_0 RemovedBody245_9

def Removed245 : Nat × StackLang.HolProg 64 := (245, RemovedBody245_10)
theorem Removed245_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc245 = Removed245 := by
  kernel_rfl
#print axioms Removed245_eq
end InitECandidate.Proofs.BackendStages
