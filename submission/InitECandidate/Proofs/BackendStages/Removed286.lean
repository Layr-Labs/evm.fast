import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc286
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody286_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody286_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody286_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody286_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody286_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody286_5 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody286_6 : StackLang.HolProg 64 :=
.seq RemovedBody286_4 RemovedBody286_5

def RemovedBody286_7 : StackLang.HolProg 64 :=
.seq RemovedBody286_3 RemovedBody286_6

def RemovedBody286_8 : StackLang.HolProg 64 :=
.seq RemovedBody286_2 RemovedBody286_7

def RemovedBody286_9 : StackLang.HolProg 64 :=
.seq RemovedBody286_1 RemovedBody286_8

def RemovedBody286_10 : StackLang.HolProg 64 :=
.seq RemovedBody286_0 RemovedBody286_9

def Removed286 : Nat × StackLang.HolProg 64 := (286, RemovedBody286_10)
theorem Removed286_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc286 = Removed286 := by
  kernel_rfl
#print axioms Removed286_eq
end InitECandidate.Proofs.BackendStages
