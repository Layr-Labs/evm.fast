import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed288
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody288_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def NamedBody288_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody288_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody288_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody288_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody288_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody288_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody288_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody288_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody288_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody288_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody288_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def NamedBody288_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody288_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody288_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody288_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody288_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody288_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def NamedBody288_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody288_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def NamedBody288_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody288_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody288_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody288_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody288_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody288_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def NamedBody288_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody288_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def NamedBody288_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody288_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody288_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody288_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody288_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody288_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody288_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody288_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def NamedBody288_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody288_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody288_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody288_64 : StackLang.HolProg 64 :=
.seq NamedBody288_62 NamedBody288_63

def NamedBody288_65 : StackLang.HolProg 64 :=
.seq NamedBody288_61 NamedBody288_64

def NamedBody288_66 : StackLang.HolProg 64 :=
.seq NamedBody288_60 NamedBody288_65

def NamedBody288_67 : StackLang.HolProg 64 :=
.seq NamedBody288_59 NamedBody288_66

def NamedBody288_68 : StackLang.HolProg 64 :=
.seq NamedBody288_58 NamedBody288_67

def NamedBody288_69 : StackLang.HolProg 64 :=
.seq NamedBody288_57 NamedBody288_68

def NamedBody288_70 : StackLang.HolProg 64 :=
.seq NamedBody288_56 NamedBody288_69

def NamedBody288_71 : StackLang.HolProg 64 :=
.seq NamedBody288_55 NamedBody288_70

def NamedBody288_72 : StackLang.HolProg 64 :=
.seq NamedBody288_54 NamedBody288_71

def NamedBody288_73 : StackLang.HolProg 64 :=
.seq NamedBody288_53 NamedBody288_72

def NamedBody288_74 : StackLang.HolProg 64 :=
.seq NamedBody288_52 NamedBody288_73

def NamedBody288_75 : StackLang.HolProg 64 :=
.seq NamedBody288_51 NamedBody288_74

def NamedBody288_76 : StackLang.HolProg 64 :=
.seq NamedBody288_50 NamedBody288_75

def NamedBody288_77 : StackLang.HolProg 64 :=
.seq NamedBody288_49 NamedBody288_76

def NamedBody288_78 : StackLang.HolProg 64 :=
.seq NamedBody288_48 NamedBody288_77

def NamedBody288_79 : StackLang.HolProg 64 :=
.seq NamedBody288_47 NamedBody288_78

def NamedBody288_80 : StackLang.HolProg 64 :=
.seq NamedBody288_46 NamedBody288_79

def NamedBody288_81 : StackLang.HolProg 64 :=
.seq NamedBody288_45 NamedBody288_80

def NamedBody288_82 : StackLang.HolProg 64 :=
.seq NamedBody288_44 NamedBody288_81

def NamedBody288_83 : StackLang.HolProg 64 :=
.seq NamedBody288_43 NamedBody288_82

def NamedBody288_84 : StackLang.HolProg 64 :=
.seq NamedBody288_42 NamedBody288_83

def NamedBody288_85 : StackLang.HolProg 64 :=
.seq NamedBody288_41 NamedBody288_84

def NamedBody288_86 : StackLang.HolProg 64 :=
.seq NamedBody288_40 NamedBody288_85

def NamedBody288_87 : StackLang.HolProg 64 :=
.seq NamedBody288_39 NamedBody288_86

def NamedBody288_88 : StackLang.HolProg 64 :=
.seq NamedBody288_38 NamedBody288_87

def NamedBody288_89 : StackLang.HolProg 64 :=
.seq NamedBody288_37 NamedBody288_88

def NamedBody288_90 : StackLang.HolProg 64 :=
.seq NamedBody288_36 NamedBody288_89

def NamedBody288_91 : StackLang.HolProg 64 :=
.seq NamedBody288_35 NamedBody288_90

def NamedBody288_92 : StackLang.HolProg 64 :=
.seq NamedBody288_34 NamedBody288_91

def NamedBody288_93 : StackLang.HolProg 64 :=
.seq NamedBody288_33 NamedBody288_92

def NamedBody288_94 : StackLang.HolProg 64 :=
.seq NamedBody288_32 NamedBody288_93

def NamedBody288_95 : StackLang.HolProg 64 :=
.seq NamedBody288_31 NamedBody288_94

def NamedBody288_96 : StackLang.HolProg 64 :=
.seq NamedBody288_30 NamedBody288_95

def NamedBody288_97 : StackLang.HolProg 64 :=
.seq NamedBody288_29 NamedBody288_96

def NamedBody288_98 : StackLang.HolProg 64 :=
.seq NamedBody288_28 NamedBody288_97

def NamedBody288_99 : StackLang.HolProg 64 :=
.seq NamedBody288_27 NamedBody288_98

def NamedBody288_100 : StackLang.HolProg 64 :=
.seq NamedBody288_26 NamedBody288_99

def NamedBody288_101 : StackLang.HolProg 64 :=
.seq NamedBody288_25 NamedBody288_100

def NamedBody288_102 : StackLang.HolProg 64 :=
.seq NamedBody288_24 NamedBody288_101

def NamedBody288_103 : StackLang.HolProg 64 :=
.seq NamedBody288_23 NamedBody288_102

def NamedBody288_104 : StackLang.HolProg 64 :=
.seq NamedBody288_22 NamedBody288_103

def NamedBody288_105 : StackLang.HolProg 64 :=
.seq NamedBody288_21 NamedBody288_104

def NamedBody288_106 : StackLang.HolProg 64 :=
.seq NamedBody288_20 NamedBody288_105

def NamedBody288_107 : StackLang.HolProg 64 :=
.seq NamedBody288_19 NamedBody288_106

def NamedBody288_108 : StackLang.HolProg 64 :=
.seq NamedBody288_18 NamedBody288_107

def NamedBody288_109 : StackLang.HolProg 64 :=
.seq NamedBody288_17 NamedBody288_108

def NamedBody288_110 : StackLang.HolProg 64 :=
.seq NamedBody288_16 NamedBody288_109

def NamedBody288_111 : StackLang.HolProg 64 :=
.seq NamedBody288_15 NamedBody288_110

def NamedBody288_112 : StackLang.HolProg 64 :=
.seq NamedBody288_14 NamedBody288_111

def NamedBody288_113 : StackLang.HolProg 64 :=
.seq NamedBody288_13 NamedBody288_112

def NamedBody288_114 : StackLang.HolProg 64 :=
.seq NamedBody288_12 NamedBody288_113

def NamedBody288_115 : StackLang.HolProg 64 :=
.seq NamedBody288_11 NamedBody288_114

def NamedBody288_116 : StackLang.HolProg 64 :=
.seq NamedBody288_10 NamedBody288_115

def NamedBody288_117 : StackLang.HolProg 64 :=
.seq NamedBody288_9 NamedBody288_116

def NamedBody288_118 : StackLang.HolProg 64 :=
.seq NamedBody288_8 NamedBody288_117

def NamedBody288_119 : StackLang.HolProg 64 :=
.seq NamedBody288_7 NamedBody288_118

def NamedBody288_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody288_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody288_123 : StackLang.HolProg 64 :=
.seq NamedBody288_121 NamedBody288_122

def NamedBody288_124 : StackLang.HolProg 64 :=
.seq NamedBody288_120 NamedBody288_123

def NamedBody288_125 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody288_119 NamedBody288_124

def NamedBody288_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody288_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_128 : StackLang.HolProg 64 :=
.seq NamedBody288_126 NamedBody288_127

def NamedBody288_129 : StackLang.HolProg 64 :=
.seq NamedBody288_125 NamedBody288_128

def NamedBody288_130 : StackLang.HolProg 64 :=
.seq NamedBody288_6 NamedBody288_129

def NamedBody288_131 : StackLang.HolProg 64 :=
.seq NamedBody288_5 NamedBody288_130

def NamedBody288_132 : StackLang.HolProg 64 :=
.loop NamedBody288_131

def NamedBody288_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody288_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody288_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody288_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody288_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody288_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody288_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody288_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody288_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody288_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody288_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def NamedBody288_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody288_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody288_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody288_157 : StackLang.HolProg 64 :=
.seq NamedBody288_155 NamedBody288_156

def NamedBody288_158 : StackLang.HolProg 64 :=
.seq NamedBody288_154 NamedBody288_157

def NamedBody288_159 : StackLang.HolProg 64 :=
.seq NamedBody288_153 NamedBody288_158

def NamedBody288_160 : StackLang.HolProg 64 :=
.seq NamedBody288_152 NamedBody288_159

def NamedBody288_161 : StackLang.HolProg 64 :=
.seq NamedBody288_151 NamedBody288_160

def NamedBody288_162 : StackLang.HolProg 64 :=
.seq NamedBody288_150 NamedBody288_161

def NamedBody288_163 : StackLang.HolProg 64 :=
.seq NamedBody288_149 NamedBody288_162

def NamedBody288_164 : StackLang.HolProg 64 :=
.seq NamedBody288_148 NamedBody288_163

def NamedBody288_165 : StackLang.HolProg 64 :=
.seq NamedBody288_147 NamedBody288_164

def NamedBody288_166 : StackLang.HolProg 64 :=
.seq NamedBody288_146 NamedBody288_165

def NamedBody288_167 : StackLang.HolProg 64 :=
.seq NamedBody288_145 NamedBody288_166

def NamedBody288_168 : StackLang.HolProg 64 :=
.seq NamedBody288_144 NamedBody288_167

def NamedBody288_169 : StackLang.HolProg 64 :=
.seq NamedBody288_143 NamedBody288_168

def NamedBody288_170 : StackLang.HolProg 64 :=
.seq NamedBody288_142 NamedBody288_169

def NamedBody288_171 : StackLang.HolProg 64 :=
.seq NamedBody288_141 NamedBody288_170

def NamedBody288_172 : StackLang.HolProg 64 :=
.seq NamedBody288_140 NamedBody288_171

def NamedBody288_173 : StackLang.HolProg 64 :=
.seq NamedBody288_139 NamedBody288_172

def NamedBody288_174 : StackLang.HolProg 64 :=
.seq NamedBody288_138 NamedBody288_173

def NamedBody288_175 : StackLang.HolProg 64 :=
.seq NamedBody288_137 NamedBody288_174

def NamedBody288_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody288_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody288_178 : StackLang.HolProg 64 :=
.seq NamedBody288_176 NamedBody288_177

def NamedBody288_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody288_175 NamedBody288_178

def NamedBody288_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody288_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_182 : StackLang.HolProg 64 :=
.seq NamedBody288_180 NamedBody288_181

def NamedBody288_183 : StackLang.HolProg 64 :=
.seq NamedBody288_179 NamedBody288_182

def NamedBody288_184 : StackLang.HolProg 64 :=
.seq NamedBody288_136 NamedBody288_183

def NamedBody288_185 : StackLang.HolProg 64 :=
.loop NamedBody288_184

def NamedBody288_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody288_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody288_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody288_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody288_190 : StackLang.HolProg 64 :=
.seq NamedBody288_188 NamedBody288_189

def NamedBody288_191 : StackLang.HolProg 64 :=
.seq NamedBody288_187 NamedBody288_190

def NamedBody288_192 : StackLang.HolProg 64 :=
.seq NamedBody288_186 NamedBody288_191

def NamedBody288_193 : StackLang.HolProg 64 :=
.seq NamedBody288_185 NamedBody288_192

def NamedBody288_194 : StackLang.HolProg 64 :=
.seq NamedBody288_135 NamedBody288_193

def NamedBody288_195 : StackLang.HolProg 64 :=
.seq NamedBody288_134 NamedBody288_194

def NamedBody288_196 : StackLang.HolProg 64 :=
.seq NamedBody288_133 NamedBody288_195

def NamedBody288_197 : StackLang.HolProg 64 :=
.seq NamedBody288_132 NamedBody288_196

def NamedBody288_198 : StackLang.HolProg 64 :=
.seq NamedBody288_4 NamedBody288_197

def NamedBody288_199 : StackLang.HolProg 64 :=
.seq NamedBody288_3 NamedBody288_198

def NamedBody288_200 : StackLang.HolProg 64 :=
.seq NamedBody288_2 NamedBody288_199

def NamedBody288_201 : StackLang.HolProg 64 :=
.seq NamedBody288_1 NamedBody288_200

def NamedBody288_202 : StackLang.HolProg 64 :=
.seq NamedBody288_0 NamedBody288_201

def Named288 : Nat × StackLang.HolProg 64 := (288, NamedBody288_202)
theorem Named288_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed288 = Named288 := by
  kernel_rfl
#print axioms Named288_eq
end InitECandidate.Proofs.BackendStages
