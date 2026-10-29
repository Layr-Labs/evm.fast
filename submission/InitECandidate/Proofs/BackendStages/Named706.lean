import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed706
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody706_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody706_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody706_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 6 29
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody706_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody706_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody706_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody706_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody706_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 13 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody706_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody706_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody706_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 12 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody706_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody706_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody706_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 11 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody706_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody706_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody706_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody706_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody706_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody706_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody706_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody706_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody706_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody706_23 : StackLang.HolProg 64 :=
.seq NamedBody706_21 NamedBody706_22

def NamedBody706_24 : StackLang.HolProg 64 :=
.seq NamedBody706_20 NamedBody706_23

def NamedBody706_25 : StackLang.HolProg 64 :=
.seq NamedBody706_19 NamedBody706_24

def NamedBody706_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody706_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody706_25 NamedBody706_26

def NamedBody706_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody706_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody706_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody706_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody706_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody706_33 : StackLang.HolProg 64 :=
.seq NamedBody706_31 NamedBody706_32

def NamedBody706_34 : StackLang.HolProg 64 :=
.seq NamedBody706_30 NamedBody706_33

def NamedBody706_35 : StackLang.HolProg 64 :=
.seq NamedBody706_29 NamedBody706_34

def NamedBody706_36 : StackLang.HolProg 64 :=
.seq NamedBody706_28 NamedBody706_35

def NamedBody706_37 : StackLang.HolProg 64 :=
.seq NamedBody706_27 NamedBody706_36

def NamedBody706_38 : StackLang.HolProg 64 :=
.seq NamedBody706_18 NamedBody706_37

def NamedBody706_39 : StackLang.HolProg 64 :=
.seq NamedBody706_17 NamedBody706_38

def NamedBody706_40 : StackLang.HolProg 64 :=
.seq NamedBody706_16 NamedBody706_39

def NamedBody706_41 : StackLang.HolProg 64 :=
.seq NamedBody706_15 NamedBody706_40

def NamedBody706_42 : StackLang.HolProg 64 :=
.seq NamedBody706_14 NamedBody706_41

def NamedBody706_43 : StackLang.HolProg 64 :=
.seq NamedBody706_13 NamedBody706_42

def NamedBody706_44 : StackLang.HolProg 64 :=
.seq NamedBody706_12 NamedBody706_43

def NamedBody706_45 : StackLang.HolProg 64 :=
.seq NamedBody706_11 NamedBody706_44

def NamedBody706_46 : StackLang.HolProg 64 :=
.seq NamedBody706_10 NamedBody706_45

def NamedBody706_47 : StackLang.HolProg 64 :=
.seq NamedBody706_9 NamedBody706_46

def NamedBody706_48 : StackLang.HolProg 64 :=
.seq NamedBody706_8 NamedBody706_47

def NamedBody706_49 : StackLang.HolProg 64 :=
.seq NamedBody706_7 NamedBody706_48

def NamedBody706_50 : StackLang.HolProg 64 :=
.seq NamedBody706_6 NamedBody706_49

def NamedBody706_51 : StackLang.HolProg 64 :=
.seq NamedBody706_5 NamedBody706_50

def NamedBody706_52 : StackLang.HolProg 64 :=
.seq NamedBody706_4 NamedBody706_51

def NamedBody706_53 : StackLang.HolProg 64 :=
.seq NamedBody706_3 NamedBody706_52

def NamedBody706_54 : StackLang.HolProg 64 :=
.seq NamedBody706_2 NamedBody706_53

def NamedBody706_55 : StackLang.HolProg 64 :=
.seq NamedBody706_1 NamedBody706_54

def NamedBody706_56 : StackLang.HolProg 64 :=
.seq NamedBody706_0 NamedBody706_55

def Named706 : Nat × StackLang.HolProg 64 := (706, NamedBody706_56)
theorem Named706_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed706 = Named706 := by
  kernel_rfl
#print axioms Named706_eq
end InitECandidate.Proofs.BackendStages
