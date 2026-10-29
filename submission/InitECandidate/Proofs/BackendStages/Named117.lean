import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed117
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody117_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody117_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody117_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody117_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody117_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody117_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 10 10 5 1))

def NamedBody117_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody117_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody117_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody117_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 11 11 5 1))

def NamedBody117_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody117_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody117_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody117_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 12 12 5 1))

def NamedBody117_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody117_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody117_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody117_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 13 13 5 1))

def NamedBody117_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody117_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def NamedBody117_20 : StackLang.HolProg 64 :=
.seq NamedBody117_18 NamedBody117_19

def NamedBody117_21 : StackLang.HolProg 64 :=
.seq NamedBody117_17 NamedBody117_20

def NamedBody117_22 : StackLang.HolProg 64 :=
.seq NamedBody117_16 NamedBody117_21

def NamedBody117_23 : StackLang.HolProg 64 :=
.seq NamedBody117_15 NamedBody117_22

def NamedBody117_24 : StackLang.HolProg 64 :=
.seq NamedBody117_14 NamedBody117_23

def NamedBody117_25 : StackLang.HolProg 64 :=
.seq NamedBody117_13 NamedBody117_24

def NamedBody117_26 : StackLang.HolProg 64 :=
.seq NamedBody117_12 NamedBody117_25

def NamedBody117_27 : StackLang.HolProg 64 :=
.seq NamedBody117_11 NamedBody117_26

def NamedBody117_28 : StackLang.HolProg 64 :=
.seq NamedBody117_10 NamedBody117_27

def NamedBody117_29 : StackLang.HolProg 64 :=
.seq NamedBody117_9 NamedBody117_28

def NamedBody117_30 : StackLang.HolProg 64 :=
.seq NamedBody117_8 NamedBody117_29

def NamedBody117_31 : StackLang.HolProg 64 :=
.seq NamedBody117_7 NamedBody117_30

def NamedBody117_32 : StackLang.HolProg 64 :=
.seq NamedBody117_6 NamedBody117_31

def NamedBody117_33 : StackLang.HolProg 64 :=
.seq NamedBody117_5 NamedBody117_32

def NamedBody117_34 : StackLang.HolProg 64 :=
.seq NamedBody117_4 NamedBody117_33

def NamedBody117_35 : StackLang.HolProg 64 :=
.seq NamedBody117_3 NamedBody117_34

def NamedBody117_36 : StackLang.HolProg 64 :=
.seq NamedBody117_2 NamedBody117_35

def NamedBody117_37 : StackLang.HolProg 64 :=
.seq NamedBody117_1 NamedBody117_36

def NamedBody117_38 : StackLang.HolProg 64 :=
.seq NamedBody117_0 NamedBody117_37

def Named117 : Nat × StackLang.HolProg 64 := (117, NamedBody117_38)
theorem Named117_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed117 = Named117 := by
  kernel_rfl
#print axioms Named117_eq
end InitECandidate.Proofs.BackendStages
