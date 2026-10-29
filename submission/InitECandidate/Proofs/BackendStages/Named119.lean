import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed119
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody119_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody119_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody119_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4294967295#64)

def NamedBody119_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody119_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody119_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody119_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody119_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4294967295#64)

def NamedBody119_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody119_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody119_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody119_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody119_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody119_13 : StackLang.HolProg 64 :=
.seq NamedBody119_11 NamedBody119_12

def NamedBody119_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody119_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody119_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody119_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody119_18 : StackLang.HolProg 64 :=
.seq NamedBody119_16 NamedBody119_17

def NamedBody119_19 : StackLang.HolProg 64 :=
.seq NamedBody119_15 NamedBody119_18

def NamedBody119_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody119_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody119_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody119_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def NamedBody119_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody119_25 : StackLang.HolProg 64 :=
.seq NamedBody119_23 NamedBody119_24

def NamedBody119_26 : StackLang.HolProg 64 :=
.seq NamedBody119_22 NamedBody119_25

def NamedBody119_27 : StackLang.HolProg 64 :=
.seq NamedBody119_21 NamedBody119_26

def NamedBody119_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody119_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody119_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody119_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def NamedBody119_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody119_33 : StackLang.HolProg 64 :=
.seq NamedBody119_31 NamedBody119_32

def NamedBody119_34 : StackLang.HolProg 64 :=
.seq NamedBody119_30 NamedBody119_33

def NamedBody119_35 : StackLang.HolProg 64 :=
.seq NamedBody119_29 NamedBody119_34

def NamedBody119_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody119_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody119_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody119_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody119_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 11 5 12 1))

def NamedBody119_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody119_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody119_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody119_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody119_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 10 10 5 1))

def NamedBody119_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody119_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody119_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody119_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody119_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody119_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody119_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody119_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody119_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody119_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def NamedBody119_56 : StackLang.HolProg 64 :=
.seq NamedBody119_54 NamedBody119_55

def NamedBody119_57 : StackLang.HolProg 64 :=
.seq NamedBody119_53 NamedBody119_56

def NamedBody119_58 : StackLang.HolProg 64 :=
.seq NamedBody119_52 NamedBody119_57

def NamedBody119_59 : StackLang.HolProg 64 :=
.seq NamedBody119_51 NamedBody119_58

def NamedBody119_60 : StackLang.HolProg 64 :=
.seq NamedBody119_50 NamedBody119_59

def NamedBody119_61 : StackLang.HolProg 64 :=
.seq NamedBody119_49 NamedBody119_60

def NamedBody119_62 : StackLang.HolProg 64 :=
.seq NamedBody119_48 NamedBody119_61

def NamedBody119_63 : StackLang.HolProg 64 :=
.seq NamedBody119_47 NamedBody119_62

def NamedBody119_64 : StackLang.HolProg 64 :=
.seq NamedBody119_46 NamedBody119_63

def NamedBody119_65 : StackLang.HolProg 64 :=
.seq NamedBody119_45 NamedBody119_64

def NamedBody119_66 : StackLang.HolProg 64 :=
.seq NamedBody119_44 NamedBody119_65

def NamedBody119_67 : StackLang.HolProg 64 :=
.seq NamedBody119_43 NamedBody119_66

def NamedBody119_68 : StackLang.HolProg 64 :=
.seq NamedBody119_42 NamedBody119_67

def NamedBody119_69 : StackLang.HolProg 64 :=
.seq NamedBody119_41 NamedBody119_68

def NamedBody119_70 : StackLang.HolProg 64 :=
.seq NamedBody119_40 NamedBody119_69

def NamedBody119_71 : StackLang.HolProg 64 :=
.seq NamedBody119_39 NamedBody119_70

def NamedBody119_72 : StackLang.HolProg 64 :=
.seq NamedBody119_38 NamedBody119_71

def NamedBody119_73 : StackLang.HolProg 64 :=
.seq NamedBody119_37 NamedBody119_72

def NamedBody119_74 : StackLang.HolProg 64 :=
.seq NamedBody119_36 NamedBody119_73

def NamedBody119_75 : StackLang.HolProg 64 :=
.seq NamedBody119_35 NamedBody119_74

def NamedBody119_76 : StackLang.HolProg 64 :=
.seq NamedBody119_28 NamedBody119_75

def NamedBody119_77 : StackLang.HolProg 64 :=
.seq NamedBody119_27 NamedBody119_76

def NamedBody119_78 : StackLang.HolProg 64 :=
.seq NamedBody119_20 NamedBody119_77

def NamedBody119_79 : StackLang.HolProg 64 :=
.seq NamedBody119_19 NamedBody119_78

def NamedBody119_80 : StackLang.HolProg 64 :=
.seq NamedBody119_14 NamedBody119_79

def NamedBody119_81 : StackLang.HolProg 64 :=
.seq NamedBody119_13 NamedBody119_80

def NamedBody119_82 : StackLang.HolProg 64 :=
.seq NamedBody119_10 NamedBody119_81

def NamedBody119_83 : StackLang.HolProg 64 :=
.seq NamedBody119_9 NamedBody119_82

def NamedBody119_84 : StackLang.HolProg 64 :=
.seq NamedBody119_8 NamedBody119_83

def NamedBody119_85 : StackLang.HolProg 64 :=
.seq NamedBody119_7 NamedBody119_84

def NamedBody119_86 : StackLang.HolProg 64 :=
.seq NamedBody119_6 NamedBody119_85

def NamedBody119_87 : StackLang.HolProg 64 :=
.seq NamedBody119_5 NamedBody119_86

def NamedBody119_88 : StackLang.HolProg 64 :=
.seq NamedBody119_4 NamedBody119_87

def NamedBody119_89 : StackLang.HolProg 64 :=
.seq NamedBody119_3 NamedBody119_88

def NamedBody119_90 : StackLang.HolProg 64 :=
.seq NamedBody119_2 NamedBody119_89

def NamedBody119_91 : StackLang.HolProg 64 :=
.seq NamedBody119_1 NamedBody119_90

def NamedBody119_92 : StackLang.HolProg 64 :=
.seq NamedBody119_0 NamedBody119_91

def Named119 : Nat × StackLang.HolProg 64 := (119, NamedBody119_92)
theorem Named119_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed119 = Named119 := by
  kernel_rfl
#print axioms Named119_eq
end InitECandidate.Proofs.BackendStages
