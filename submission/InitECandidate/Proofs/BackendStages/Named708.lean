import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed708
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody708_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody708_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 30 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody708_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody708_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody708_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 10 10 7 1))

def NamedBody708_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody708_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 11 11 8 1))

def NamedBody708_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody708_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 12 12 9 1))

def NamedBody708_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody708_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 13 13 27 1))

def NamedBody708_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody708_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 5 5 28 1))

def NamedBody708_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody708_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 6 6 29 1))

def NamedBody708_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody708_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 30

def NamedBody708_17 : StackLang.HolProg 64 :=
.seq NamedBody708_15 NamedBody708_16

def NamedBody708_18 : StackLang.HolProg 64 :=
.seq NamedBody708_14 NamedBody708_17

def NamedBody708_19 : StackLang.HolProg 64 :=
.seq NamedBody708_13 NamedBody708_18

def NamedBody708_20 : StackLang.HolProg 64 :=
.seq NamedBody708_12 NamedBody708_19

def NamedBody708_21 : StackLang.HolProg 64 :=
.seq NamedBody708_11 NamedBody708_20

def NamedBody708_22 : StackLang.HolProg 64 :=
.seq NamedBody708_10 NamedBody708_21

def NamedBody708_23 : StackLang.HolProg 64 :=
.seq NamedBody708_9 NamedBody708_22

def NamedBody708_24 : StackLang.HolProg 64 :=
.seq NamedBody708_8 NamedBody708_23

def NamedBody708_25 : StackLang.HolProg 64 :=
.seq NamedBody708_7 NamedBody708_24

def NamedBody708_26 : StackLang.HolProg 64 :=
.seq NamedBody708_6 NamedBody708_25

def NamedBody708_27 : StackLang.HolProg 64 :=
.seq NamedBody708_5 NamedBody708_26

def NamedBody708_28 : StackLang.HolProg 64 :=
.seq NamedBody708_4 NamedBody708_27

def NamedBody708_29 : StackLang.HolProg 64 :=
.seq NamedBody708_3 NamedBody708_28

def NamedBody708_30 : StackLang.HolProg 64 :=
.seq NamedBody708_2 NamedBody708_29

def NamedBody708_31 : StackLang.HolProg 64 :=
.seq NamedBody708_1 NamedBody708_30

def NamedBody708_32 : StackLang.HolProg 64 :=
.seq NamedBody708_0 NamedBody708_31

def Named708 : Nat × StackLang.HolProg 64 := (708, NamedBody708_32)
theorem Named708_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed708 = Named708 := by
  kernel_rfl
#print axioms Named708_eq
end InitECandidate.Proofs.BackendStages
