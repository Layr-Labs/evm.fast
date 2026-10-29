import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc93
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody93_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody93_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody93_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody93_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody93_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody93_5 : StackLang.HolProg 64 :=
.seq RemovedBody93_3 RemovedBody93_4

def RemovedBody93_6 : StackLang.HolProg 64 :=
.seq RemovedBody93_2 RemovedBody93_5

def RemovedBody93_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody93_8 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody93_6 RemovedBody93_7

def RemovedBody93_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody93_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody93_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody93_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody93_13 : StackLang.HolProg 64 :=
.seq RemovedBody93_11 RemovedBody93_12

def RemovedBody93_14 : StackLang.HolProg 64 :=
.seq RemovedBody93_10 RemovedBody93_13

def RemovedBody93_15 : StackLang.HolProg 64 :=
.seq RemovedBody93_9 RemovedBody93_14

def RemovedBody93_16 : StackLang.HolProg 64 :=
.seq RemovedBody93_8 RemovedBody93_15

def RemovedBody93_17 : StackLang.HolProg 64 :=
.seq RemovedBody93_1 RemovedBody93_16

def RemovedBody93_18 : StackLang.HolProg 64 :=
.seq RemovedBody93_0 RemovedBody93_17

def Removed93 : Nat × StackLang.HolProg 64 := (93, RemovedBody93_18)
theorem Removed93_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc93 = Removed93 := by
  kernel_rfl
#print axioms Removed93_eq
end InitECandidate.Proofs.BackendStages
