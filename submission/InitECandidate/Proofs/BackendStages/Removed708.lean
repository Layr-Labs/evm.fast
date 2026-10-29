import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc708
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody708_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody708_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody708_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody708_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody708_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 7 0))

def RemovedBody708_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody708_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 8 0))

def RemovedBody708_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody708_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 9 0))

def RemovedBody708_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody708_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 10 0))

def RemovedBody708_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody708_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 5 5 11 0))

def RemovedBody708_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody708_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 6 6 12 0))

def RemovedBody708_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody708_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def RemovedBody708_17 : StackLang.HolProg 64 :=
.seq RemovedBody708_15 RemovedBody708_16

def RemovedBody708_18 : StackLang.HolProg 64 :=
.seq RemovedBody708_14 RemovedBody708_17

def RemovedBody708_19 : StackLang.HolProg 64 :=
.seq RemovedBody708_13 RemovedBody708_18

def RemovedBody708_20 : StackLang.HolProg 64 :=
.seq RemovedBody708_12 RemovedBody708_19

def RemovedBody708_21 : StackLang.HolProg 64 :=
.seq RemovedBody708_11 RemovedBody708_20

def RemovedBody708_22 : StackLang.HolProg 64 :=
.seq RemovedBody708_10 RemovedBody708_21

def RemovedBody708_23 : StackLang.HolProg 64 :=
.seq RemovedBody708_9 RemovedBody708_22

def RemovedBody708_24 : StackLang.HolProg 64 :=
.seq RemovedBody708_8 RemovedBody708_23

def RemovedBody708_25 : StackLang.HolProg 64 :=
.seq RemovedBody708_7 RemovedBody708_24

def RemovedBody708_26 : StackLang.HolProg 64 :=
.seq RemovedBody708_6 RemovedBody708_25

def RemovedBody708_27 : StackLang.HolProg 64 :=
.seq RemovedBody708_5 RemovedBody708_26

def RemovedBody708_28 : StackLang.HolProg 64 :=
.seq RemovedBody708_4 RemovedBody708_27

def RemovedBody708_29 : StackLang.HolProg 64 :=
.seq RemovedBody708_3 RemovedBody708_28

def RemovedBody708_30 : StackLang.HolProg 64 :=
.seq RemovedBody708_2 RemovedBody708_29

def RemovedBody708_31 : StackLang.HolProg 64 :=
.seq RemovedBody708_1 RemovedBody708_30

def RemovedBody708_32 : StackLang.HolProg 64 :=
.seq RemovedBody708_0 RemovedBody708_31

def Removed708 : Nat × StackLang.HolProg 64 := (708, RemovedBody708_32)
theorem Removed708_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc708 = Removed708 := by
  kernel_rfl
#print axioms Removed708_eq
end InitECandidate.Proofs.BackendStages
