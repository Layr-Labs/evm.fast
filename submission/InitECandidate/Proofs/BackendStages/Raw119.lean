import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function119
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody119_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody119_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody119_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4294967295#64)

def rawBody119_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody119_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody119_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody119_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody119_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4294967295#64)

def rawBody119_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody119_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody119_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody119_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody119_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody119_13 : StackLang.HolProg 64 :=
.seq rawBody119_11 rawBody119_12

def rawBody119_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody119_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody119_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody119_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody119_18 : StackLang.HolProg 64 :=
.seq rawBody119_16 rawBody119_17

def rawBody119_19 : StackLang.HolProg 64 :=
.seq rawBody119_15 rawBody119_18

def rawBody119_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody119_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody119_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody119_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def rawBody119_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody119_25 : StackLang.HolProg 64 :=
.seq rawBody119_23 rawBody119_24

def rawBody119_26 : StackLang.HolProg 64 :=
.seq rawBody119_22 rawBody119_25

def rawBody119_27 : StackLang.HolProg 64 :=
.seq rawBody119_21 rawBody119_26

def rawBody119_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody119_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody119_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody119_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def rawBody119_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody119_33 : StackLang.HolProg 64 :=
.seq rawBody119_31 rawBody119_32

def rawBody119_34 : StackLang.HolProg 64 :=
.seq rawBody119_30 rawBody119_33

def rawBody119_35 : StackLang.HolProg 64 :=
.seq rawBody119_29 rawBody119_34

def rawBody119_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody119_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody119_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody119_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody119_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 5 3 0))

def rawBody119_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody119_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody119_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody119_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody119_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def rawBody119_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody119_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody119_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody119_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody119_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody119_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody119_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody119_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody119_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody119_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def rawBody119_56 : StackLang.HolProg 64 :=
.seq rawBody119_54 rawBody119_55

def rawBody119_57 : StackLang.HolProg 64 :=
.seq rawBody119_53 rawBody119_56

def rawBody119_58 : StackLang.HolProg 64 :=
.seq rawBody119_52 rawBody119_57

def rawBody119_59 : StackLang.HolProg 64 :=
.seq rawBody119_51 rawBody119_58

def rawBody119_60 : StackLang.HolProg 64 :=
.seq rawBody119_50 rawBody119_59

def rawBody119_61 : StackLang.HolProg 64 :=
.seq rawBody119_49 rawBody119_60

def rawBody119_62 : StackLang.HolProg 64 :=
.seq rawBody119_48 rawBody119_61

def rawBody119_63 : StackLang.HolProg 64 :=
.seq rawBody119_47 rawBody119_62

def rawBody119_64 : StackLang.HolProg 64 :=
.seq rawBody119_46 rawBody119_63

def rawBody119_65 : StackLang.HolProg 64 :=
.seq rawBody119_45 rawBody119_64

def rawBody119_66 : StackLang.HolProg 64 :=
.seq rawBody119_44 rawBody119_65

def rawBody119_67 : StackLang.HolProg 64 :=
.seq rawBody119_43 rawBody119_66

def rawBody119_68 : StackLang.HolProg 64 :=
.seq rawBody119_42 rawBody119_67

def rawBody119_69 : StackLang.HolProg 64 :=
.seq rawBody119_41 rawBody119_68

def rawBody119_70 : StackLang.HolProg 64 :=
.seq rawBody119_40 rawBody119_69

def rawBody119_71 : StackLang.HolProg 64 :=
.seq rawBody119_39 rawBody119_70

def rawBody119_72 : StackLang.HolProg 64 :=
.seq rawBody119_38 rawBody119_71

def rawBody119_73 : StackLang.HolProg 64 :=
.seq rawBody119_37 rawBody119_72

def rawBody119_74 : StackLang.HolProg 64 :=
.seq rawBody119_36 rawBody119_73

def rawBody119_75 : StackLang.HolProg 64 :=
.seq rawBody119_35 rawBody119_74

def rawBody119_76 : StackLang.HolProg 64 :=
.seq rawBody119_28 rawBody119_75

def rawBody119_77 : StackLang.HolProg 64 :=
.seq rawBody119_27 rawBody119_76

def rawBody119_78 : StackLang.HolProg 64 :=
.seq rawBody119_20 rawBody119_77

def rawBody119_79 : StackLang.HolProg 64 :=
.seq rawBody119_19 rawBody119_78

def rawBody119_80 : StackLang.HolProg 64 :=
.seq rawBody119_14 rawBody119_79

def rawBody119_81 : StackLang.HolProg 64 :=
.seq rawBody119_13 rawBody119_80

def rawBody119_82 : StackLang.HolProg 64 :=
.seq rawBody119_10 rawBody119_81

def rawBody119_83 : StackLang.HolProg 64 :=
.seq rawBody119_9 rawBody119_82

def rawBody119_84 : StackLang.HolProg 64 :=
.seq rawBody119_8 rawBody119_83

def rawBody119_85 : StackLang.HolProg 64 :=
.seq rawBody119_7 rawBody119_84

def rawBody119_86 : StackLang.HolProg 64 :=
.seq rawBody119_6 rawBody119_85

def rawBody119_87 : StackLang.HolProg 64 :=
.seq rawBody119_5 rawBody119_86

def rawBody119_88 : StackLang.HolProg 64 :=
.seq rawBody119_4 rawBody119_87

def rawBody119_89 : StackLang.HolProg 64 :=
.seq rawBody119_3 rawBody119_88

def rawBody119_90 : StackLang.HolProg 64 :=
.seq rawBody119_2 rawBody119_89

def rawBody119_91 : StackLang.HolProg 64 :=
.seq rawBody119_1 rawBody119_90

def rawBody119_92 : StackLang.HolProg 64 :=
.seq rawBody119_0 rawBody119_91

def raw119 : StackLang.HolProg 64 := rawBody119_92
theorem raw119_eq : StackRawCall.compTop RawInfo.rawInfo (function119 (.list [])).1 = raw119 := by
  kernel_rfl
#print axioms raw119_eq
end InitECandidate.Proofs.BackendStages
