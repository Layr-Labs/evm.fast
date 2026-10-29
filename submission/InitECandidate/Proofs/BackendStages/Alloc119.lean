import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw119
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody119_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody119_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody119_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4294967295#64)

def AllocBody119_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody119_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody119_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody119_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody119_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4294967295#64)

def AllocBody119_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody119_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody119_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody119_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody119_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody119_13 : StackLang.HolProg 64 :=
.seq AllocBody119_11 AllocBody119_12

def AllocBody119_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody119_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody119_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody119_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody119_18 : StackLang.HolProg 64 :=
.seq AllocBody119_16 AllocBody119_17

def AllocBody119_19 : StackLang.HolProg 64 :=
.seq AllocBody119_15 AllocBody119_18

def AllocBody119_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody119_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody119_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody119_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody119_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody119_25 : StackLang.HolProg 64 :=
.seq AllocBody119_23 AllocBody119_24

def AllocBody119_26 : StackLang.HolProg 64 :=
.seq AllocBody119_22 AllocBody119_25

def AllocBody119_27 : StackLang.HolProg 64 :=
.seq AllocBody119_21 AllocBody119_26

def AllocBody119_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody119_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody119_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody119_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody119_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody119_33 : StackLang.HolProg 64 :=
.seq AllocBody119_31 AllocBody119_32

def AllocBody119_34 : StackLang.HolProg 64 :=
.seq AllocBody119_30 AllocBody119_33

def AllocBody119_35 : StackLang.HolProg 64 :=
.seq AllocBody119_29 AllocBody119_34

def AllocBody119_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody119_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody119_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody119_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody119_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 5 3 0))

def AllocBody119_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody119_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody119_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody119_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody119_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def AllocBody119_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody119_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody119_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody119_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody119_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody119_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody119_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody119_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody119_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody119_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def AllocBody119_56 : StackLang.HolProg 64 :=
.seq AllocBody119_54 AllocBody119_55

def AllocBody119_57 : StackLang.HolProg 64 :=
.seq AllocBody119_53 AllocBody119_56

def AllocBody119_58 : StackLang.HolProg 64 :=
.seq AllocBody119_52 AllocBody119_57

def AllocBody119_59 : StackLang.HolProg 64 :=
.seq AllocBody119_51 AllocBody119_58

def AllocBody119_60 : StackLang.HolProg 64 :=
.seq AllocBody119_50 AllocBody119_59

def AllocBody119_61 : StackLang.HolProg 64 :=
.seq AllocBody119_49 AllocBody119_60

def AllocBody119_62 : StackLang.HolProg 64 :=
.seq AllocBody119_48 AllocBody119_61

def AllocBody119_63 : StackLang.HolProg 64 :=
.seq AllocBody119_47 AllocBody119_62

def AllocBody119_64 : StackLang.HolProg 64 :=
.seq AllocBody119_46 AllocBody119_63

def AllocBody119_65 : StackLang.HolProg 64 :=
.seq AllocBody119_45 AllocBody119_64

def AllocBody119_66 : StackLang.HolProg 64 :=
.seq AllocBody119_44 AllocBody119_65

def AllocBody119_67 : StackLang.HolProg 64 :=
.seq AllocBody119_43 AllocBody119_66

def AllocBody119_68 : StackLang.HolProg 64 :=
.seq AllocBody119_42 AllocBody119_67

def AllocBody119_69 : StackLang.HolProg 64 :=
.seq AllocBody119_41 AllocBody119_68

def AllocBody119_70 : StackLang.HolProg 64 :=
.seq AllocBody119_40 AllocBody119_69

def AllocBody119_71 : StackLang.HolProg 64 :=
.seq AllocBody119_39 AllocBody119_70

def AllocBody119_72 : StackLang.HolProg 64 :=
.seq AllocBody119_38 AllocBody119_71

def AllocBody119_73 : StackLang.HolProg 64 :=
.seq AllocBody119_37 AllocBody119_72

def AllocBody119_74 : StackLang.HolProg 64 :=
.seq AllocBody119_36 AllocBody119_73

def AllocBody119_75 : StackLang.HolProg 64 :=
.seq AllocBody119_35 AllocBody119_74

def AllocBody119_76 : StackLang.HolProg 64 :=
.seq AllocBody119_28 AllocBody119_75

def AllocBody119_77 : StackLang.HolProg 64 :=
.seq AllocBody119_27 AllocBody119_76

def AllocBody119_78 : StackLang.HolProg 64 :=
.seq AllocBody119_20 AllocBody119_77

def AllocBody119_79 : StackLang.HolProg 64 :=
.seq AllocBody119_19 AllocBody119_78

def AllocBody119_80 : StackLang.HolProg 64 :=
.seq AllocBody119_14 AllocBody119_79

def AllocBody119_81 : StackLang.HolProg 64 :=
.seq AllocBody119_13 AllocBody119_80

def AllocBody119_82 : StackLang.HolProg 64 :=
.seq AllocBody119_10 AllocBody119_81

def AllocBody119_83 : StackLang.HolProg 64 :=
.seq AllocBody119_9 AllocBody119_82

def AllocBody119_84 : StackLang.HolProg 64 :=
.seq AllocBody119_8 AllocBody119_83

def AllocBody119_85 : StackLang.HolProg 64 :=
.seq AllocBody119_7 AllocBody119_84

def AllocBody119_86 : StackLang.HolProg 64 :=
.seq AllocBody119_6 AllocBody119_85

def AllocBody119_87 : StackLang.HolProg 64 :=
.seq AllocBody119_5 AllocBody119_86

def AllocBody119_88 : StackLang.HolProg 64 :=
.seq AllocBody119_4 AllocBody119_87

def AllocBody119_89 : StackLang.HolProg 64 :=
.seq AllocBody119_3 AllocBody119_88

def AllocBody119_90 : StackLang.HolProg 64 :=
.seq AllocBody119_2 AllocBody119_89

def AllocBody119_91 : StackLang.HolProg 64 :=
.seq AllocBody119_1 AllocBody119_90

def AllocBody119_92 : StackLang.HolProg 64 :=
.seq AllocBody119_0 AllocBody119_91

def Alloc119 : Nat × StackLang.HolProg 64 := (119, AllocBody119_92)
theorem Alloc119_eq : StackAlloc.progComp (119, raw119) = Alloc119 := by
  kernel_rfl
#print axioms Alloc119_eq
end InitECandidate.Proofs.BackendStages
