import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed107
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody107_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody107_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody107_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody107_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def NamedBody107_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody107_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody107_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def NamedBody107_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody107_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody107_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def NamedBody107_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody107_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody107_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def NamedBody107_13 : StackLang.HolProg 64 :=
.seq NamedBody107_11 NamedBody107_12

def NamedBody107_14 : StackLang.HolProg 64 :=
.seq NamedBody107_10 NamedBody107_13

def NamedBody107_15 : StackLang.HolProg 64 :=
.seq NamedBody107_9 NamedBody107_14

def NamedBody107_16 : StackLang.HolProg 64 :=
.seq NamedBody107_8 NamedBody107_15

def NamedBody107_17 : StackLang.HolProg 64 :=
.seq NamedBody107_7 NamedBody107_16

def NamedBody107_18 : StackLang.HolProg 64 :=
.seq NamedBody107_6 NamedBody107_17

def NamedBody107_19 : StackLang.HolProg 64 :=
.seq NamedBody107_5 NamedBody107_18

def NamedBody107_20 : StackLang.HolProg 64 :=
.seq NamedBody107_4 NamedBody107_19

def NamedBody107_21 : StackLang.HolProg 64 :=
.seq NamedBody107_3 NamedBody107_20

def NamedBody107_22 : StackLang.HolProg 64 :=
.seq NamedBody107_2 NamedBody107_21

def NamedBody107_23 : StackLang.HolProg 64 :=
.seq NamedBody107_1 NamedBody107_22

def NamedBody107_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody107_25 : StackLang.HolProg 64 :=
.call none (Sum.inl 106) none

def NamedBody107_26 : StackLang.HolProg 64 :=
.seq NamedBody107_24 NamedBody107_25

def NamedBody107_27 : StackLang.HolProg 64 :=
.seq NamedBody107_23 NamedBody107_26

def NamedBody107_28 : StackLang.HolProg 64 :=
.seq NamedBody107_0 NamedBody107_27

def Named107 : Nat × StackLang.HolProg 64 := (107, NamedBody107_28)
theorem Named107_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed107 = Named107 := by
  kernel_rfl
#print axioms Named107_eq
end InitECandidate.Proofs.BackendStages
