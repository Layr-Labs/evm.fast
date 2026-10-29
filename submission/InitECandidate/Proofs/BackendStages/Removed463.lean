import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc463
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody463_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody463_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody463_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody463_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody463_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody463_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody463_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody463_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody463_8 : StackLang.HolProg 64 :=
.seq RemovedBody463_6 RemovedBody463_7

def RemovedBody463_9 : StackLang.HolProg 64 :=
.seq RemovedBody463_5 RemovedBody463_8

def RemovedBody463_10 : StackLang.HolProg 64 :=
.seq RemovedBody463_4 RemovedBody463_9

def RemovedBody463_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody463_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody463_10 RemovedBody463_11

def RemovedBody463_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody463_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody463_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody463_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody463_17 : StackLang.HolProg 64 :=
.seq RemovedBody463_15 RemovedBody463_16

def RemovedBody463_18 : StackLang.HolProg 64 :=
.seq RemovedBody463_14 RemovedBody463_17

def RemovedBody463_19 : StackLang.HolProg 64 :=
.seq RemovedBody463_13 RemovedBody463_18

def RemovedBody463_20 : StackLang.HolProg 64 :=
.seq RemovedBody463_12 RemovedBody463_19

def RemovedBody463_21 : StackLang.HolProg 64 :=
.seq RemovedBody463_3 RemovedBody463_20

def RemovedBody463_22 : StackLang.HolProg 64 :=
.seq RemovedBody463_2 RemovedBody463_21

def RemovedBody463_23 : StackLang.HolProg 64 :=
.seq RemovedBody463_1 RemovedBody463_22

def RemovedBody463_24 : StackLang.HolProg 64 :=
.seq RemovedBody463_0 RemovedBody463_23

def Removed463 : Nat × StackLang.HolProg 64 := (463, RemovedBody463_24)
theorem Removed463_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc463 = Removed463 := by
  kernel_rfl
#print axioms Removed463_eq
end InitECandidate.Proofs.BackendStages
