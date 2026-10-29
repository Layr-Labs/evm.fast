import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed709
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody709_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 30 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody709_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody709_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody709_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 10 10 7 1))

def NamedBody709_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody709_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 11 11 7 1))

def NamedBody709_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody709_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 12 12 7 1))

def NamedBody709_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody709_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 13 13 7 1))

def NamedBody709_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody709_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 5 5 7 1))

def NamedBody709_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 7 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody709_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody709_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 6 6 7 1))

def NamedBody709_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody709_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 30

def NamedBody709_28 : StackLang.HolProg 64 :=
.seq NamedBody709_26 NamedBody709_27

def NamedBody709_29 : StackLang.HolProg 64 :=
.seq NamedBody709_25 NamedBody709_28

def NamedBody709_30 : StackLang.HolProg 64 :=
.seq NamedBody709_24 NamedBody709_29

def NamedBody709_31 : StackLang.HolProg 64 :=
.seq NamedBody709_23 NamedBody709_30

def NamedBody709_32 : StackLang.HolProg 64 :=
.seq NamedBody709_22 NamedBody709_31

def NamedBody709_33 : StackLang.HolProg 64 :=
.seq NamedBody709_21 NamedBody709_32

def NamedBody709_34 : StackLang.HolProg 64 :=
.seq NamedBody709_20 NamedBody709_33

def NamedBody709_35 : StackLang.HolProg 64 :=
.seq NamedBody709_19 NamedBody709_34

def NamedBody709_36 : StackLang.HolProg 64 :=
.seq NamedBody709_18 NamedBody709_35

def NamedBody709_37 : StackLang.HolProg 64 :=
.seq NamedBody709_17 NamedBody709_36

def NamedBody709_38 : StackLang.HolProg 64 :=
.seq NamedBody709_16 NamedBody709_37

def NamedBody709_39 : StackLang.HolProg 64 :=
.seq NamedBody709_15 NamedBody709_38

def NamedBody709_40 : StackLang.HolProg 64 :=
.seq NamedBody709_14 NamedBody709_39

def NamedBody709_41 : StackLang.HolProg 64 :=
.seq NamedBody709_13 NamedBody709_40

def NamedBody709_42 : StackLang.HolProg 64 :=
.seq NamedBody709_12 NamedBody709_41

def NamedBody709_43 : StackLang.HolProg 64 :=
.seq NamedBody709_11 NamedBody709_42

def NamedBody709_44 : StackLang.HolProg 64 :=
.seq NamedBody709_10 NamedBody709_43

def NamedBody709_45 : StackLang.HolProg 64 :=
.seq NamedBody709_9 NamedBody709_44

def NamedBody709_46 : StackLang.HolProg 64 :=
.seq NamedBody709_8 NamedBody709_45

def NamedBody709_47 : StackLang.HolProg 64 :=
.seq NamedBody709_7 NamedBody709_46

def NamedBody709_48 : StackLang.HolProg 64 :=
.seq NamedBody709_6 NamedBody709_47

def NamedBody709_49 : StackLang.HolProg 64 :=
.seq NamedBody709_5 NamedBody709_48

def NamedBody709_50 : StackLang.HolProg 64 :=
.seq NamedBody709_4 NamedBody709_49

def NamedBody709_51 : StackLang.HolProg 64 :=
.seq NamedBody709_3 NamedBody709_50

def NamedBody709_52 : StackLang.HolProg 64 :=
.seq NamedBody709_2 NamedBody709_51

def NamedBody709_53 : StackLang.HolProg 64 :=
.seq NamedBody709_1 NamedBody709_52

def NamedBody709_54 : StackLang.HolProg 64 :=
.seq NamedBody709_0 NamedBody709_53

def Named709 : Nat × StackLang.HolProg 64 := (709, NamedBody709_54)
theorem Named709_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed709 = Named709 := by
  kernel_rfl
#print axioms Named709_eq
end InitECandidate.Proofs.BackendStages
