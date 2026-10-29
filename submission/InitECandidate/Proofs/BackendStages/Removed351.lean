import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc351
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody351_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody351_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody351_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 192#64))

def RemovedBody351_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody351_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 200#64))

def RemovedBody351_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody351_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody351_7 : StackLang.HolProg 64 :=
.seq RemovedBody351_5 RemovedBody351_6

def RemovedBody351_8 : StackLang.HolProg 64 :=
.seq RemovedBody351_4 RemovedBody351_7

def RemovedBody351_9 : StackLang.HolProg 64 :=
.seq RemovedBody351_3 RemovedBody351_8

def RemovedBody351_10 : StackLang.HolProg 64 :=
.seq RemovedBody351_2 RemovedBody351_9

def RemovedBody351_11 : StackLang.HolProg 64 :=
.seq RemovedBody351_1 RemovedBody351_10

def RemovedBody351_12 : StackLang.HolProg 64 :=
.seq RemovedBody351_0 RemovedBody351_11

def Removed351 : Nat × StackLang.HolProg 64 := (351, RemovedBody351_12)
theorem Removed351_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc351 = Removed351 := by
  kernel_rfl
#print axioms Removed351_eq
end InitECandidate.Proofs.BackendStages
