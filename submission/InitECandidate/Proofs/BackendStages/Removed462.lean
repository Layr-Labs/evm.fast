import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc462
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody462_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody462_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody462_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody462_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody462_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody462_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody462_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody462_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody462_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody462_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody462_10 : StackLang.HolProg 64 :=
.seq RemovedBody462_8 RemovedBody462_9

def RemovedBody462_11 : StackLang.HolProg 64 :=
.seq RemovedBody462_7 RemovedBody462_10

def RemovedBody462_12 : StackLang.HolProg 64 :=
.seq RemovedBody462_6 RemovedBody462_11

def RemovedBody462_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody462_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody462_12 RemovedBody462_13

def RemovedBody462_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody462_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody462_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody462_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody462_19 : StackLang.HolProg 64 :=
.seq RemovedBody462_17 RemovedBody462_18

def RemovedBody462_20 : StackLang.HolProg 64 :=
.seq RemovedBody462_16 RemovedBody462_19

def RemovedBody462_21 : StackLang.HolProg 64 :=
.seq RemovedBody462_15 RemovedBody462_20

def RemovedBody462_22 : StackLang.HolProg 64 :=
.seq RemovedBody462_14 RemovedBody462_21

def RemovedBody462_23 : StackLang.HolProg 64 :=
.seq RemovedBody462_5 RemovedBody462_22

def RemovedBody462_24 : StackLang.HolProg 64 :=
.seq RemovedBody462_4 RemovedBody462_23

def RemovedBody462_25 : StackLang.HolProg 64 :=
.seq RemovedBody462_3 RemovedBody462_24

def RemovedBody462_26 : StackLang.HolProg 64 :=
.seq RemovedBody462_2 RemovedBody462_25

def RemovedBody462_27 : StackLang.HolProg 64 :=
.seq RemovedBody462_1 RemovedBody462_26

def RemovedBody462_28 : StackLang.HolProg 64 :=
.seq RemovedBody462_0 RemovedBody462_27

def Removed462 : Nat × StackLang.HolProg 64 := (462, RemovedBody462_28)
theorem Removed462_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc462 = Removed462 := by
  kernel_rfl
#print axioms Removed462_eq
end InitECandidate.Proofs.BackendStages
