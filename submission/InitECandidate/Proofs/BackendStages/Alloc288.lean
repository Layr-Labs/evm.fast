import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw288
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody288_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody288_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody288_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody288_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody288_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody288_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody288_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody288_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody288_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody288_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody288_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody288_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody288_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def AllocBody288_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody288_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody288_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody288_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody288_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody288_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def AllocBody288_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody288_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def AllocBody288_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody288_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody288_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody288_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody288_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody288_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def AllocBody288_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody288_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def AllocBody288_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody288_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody288_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody288_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody288_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody288_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody288_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody288_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def AllocBody288_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody288_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody288_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody288_64 : StackLang.HolProg 64 :=
.seq AllocBody288_62 AllocBody288_63

def AllocBody288_65 : StackLang.HolProg 64 :=
.seq AllocBody288_61 AllocBody288_64

def AllocBody288_66 : StackLang.HolProg 64 :=
.seq AllocBody288_60 AllocBody288_65

def AllocBody288_67 : StackLang.HolProg 64 :=
.seq AllocBody288_59 AllocBody288_66

def AllocBody288_68 : StackLang.HolProg 64 :=
.seq AllocBody288_58 AllocBody288_67

def AllocBody288_69 : StackLang.HolProg 64 :=
.seq AllocBody288_57 AllocBody288_68

def AllocBody288_70 : StackLang.HolProg 64 :=
.seq AllocBody288_56 AllocBody288_69

def AllocBody288_71 : StackLang.HolProg 64 :=
.seq AllocBody288_55 AllocBody288_70

def AllocBody288_72 : StackLang.HolProg 64 :=
.seq AllocBody288_54 AllocBody288_71

def AllocBody288_73 : StackLang.HolProg 64 :=
.seq AllocBody288_53 AllocBody288_72

def AllocBody288_74 : StackLang.HolProg 64 :=
.seq AllocBody288_52 AllocBody288_73

def AllocBody288_75 : StackLang.HolProg 64 :=
.seq AllocBody288_51 AllocBody288_74

def AllocBody288_76 : StackLang.HolProg 64 :=
.seq AllocBody288_50 AllocBody288_75

def AllocBody288_77 : StackLang.HolProg 64 :=
.seq AllocBody288_49 AllocBody288_76

def AllocBody288_78 : StackLang.HolProg 64 :=
.seq AllocBody288_48 AllocBody288_77

def AllocBody288_79 : StackLang.HolProg 64 :=
.seq AllocBody288_47 AllocBody288_78

def AllocBody288_80 : StackLang.HolProg 64 :=
.seq AllocBody288_46 AllocBody288_79

def AllocBody288_81 : StackLang.HolProg 64 :=
.seq AllocBody288_45 AllocBody288_80

def AllocBody288_82 : StackLang.HolProg 64 :=
.seq AllocBody288_44 AllocBody288_81

def AllocBody288_83 : StackLang.HolProg 64 :=
.seq AllocBody288_43 AllocBody288_82

def AllocBody288_84 : StackLang.HolProg 64 :=
.seq AllocBody288_42 AllocBody288_83

def AllocBody288_85 : StackLang.HolProg 64 :=
.seq AllocBody288_41 AllocBody288_84

def AllocBody288_86 : StackLang.HolProg 64 :=
.seq AllocBody288_40 AllocBody288_85

def AllocBody288_87 : StackLang.HolProg 64 :=
.seq AllocBody288_39 AllocBody288_86

def AllocBody288_88 : StackLang.HolProg 64 :=
.seq AllocBody288_38 AllocBody288_87

def AllocBody288_89 : StackLang.HolProg 64 :=
.seq AllocBody288_37 AllocBody288_88

def AllocBody288_90 : StackLang.HolProg 64 :=
.seq AllocBody288_36 AllocBody288_89

def AllocBody288_91 : StackLang.HolProg 64 :=
.seq AllocBody288_35 AllocBody288_90

def AllocBody288_92 : StackLang.HolProg 64 :=
.seq AllocBody288_34 AllocBody288_91

def AllocBody288_93 : StackLang.HolProg 64 :=
.seq AllocBody288_33 AllocBody288_92

def AllocBody288_94 : StackLang.HolProg 64 :=
.seq AllocBody288_32 AllocBody288_93

def AllocBody288_95 : StackLang.HolProg 64 :=
.seq AllocBody288_31 AllocBody288_94

def AllocBody288_96 : StackLang.HolProg 64 :=
.seq AllocBody288_30 AllocBody288_95

def AllocBody288_97 : StackLang.HolProg 64 :=
.seq AllocBody288_29 AllocBody288_96

def AllocBody288_98 : StackLang.HolProg 64 :=
.seq AllocBody288_28 AllocBody288_97

def AllocBody288_99 : StackLang.HolProg 64 :=
.seq AllocBody288_27 AllocBody288_98

def AllocBody288_100 : StackLang.HolProg 64 :=
.seq AllocBody288_26 AllocBody288_99

def AllocBody288_101 : StackLang.HolProg 64 :=
.seq AllocBody288_25 AllocBody288_100

def AllocBody288_102 : StackLang.HolProg 64 :=
.seq AllocBody288_24 AllocBody288_101

def AllocBody288_103 : StackLang.HolProg 64 :=
.seq AllocBody288_23 AllocBody288_102

def AllocBody288_104 : StackLang.HolProg 64 :=
.seq AllocBody288_22 AllocBody288_103

def AllocBody288_105 : StackLang.HolProg 64 :=
.seq AllocBody288_21 AllocBody288_104

def AllocBody288_106 : StackLang.HolProg 64 :=
.seq AllocBody288_20 AllocBody288_105

def AllocBody288_107 : StackLang.HolProg 64 :=
.seq AllocBody288_19 AllocBody288_106

def AllocBody288_108 : StackLang.HolProg 64 :=
.seq AllocBody288_18 AllocBody288_107

def AllocBody288_109 : StackLang.HolProg 64 :=
.seq AllocBody288_17 AllocBody288_108

def AllocBody288_110 : StackLang.HolProg 64 :=
.seq AllocBody288_16 AllocBody288_109

def AllocBody288_111 : StackLang.HolProg 64 :=
.seq AllocBody288_15 AllocBody288_110

def AllocBody288_112 : StackLang.HolProg 64 :=
.seq AllocBody288_14 AllocBody288_111

def AllocBody288_113 : StackLang.HolProg 64 :=
.seq AllocBody288_13 AllocBody288_112

def AllocBody288_114 : StackLang.HolProg 64 :=
.seq AllocBody288_12 AllocBody288_113

def AllocBody288_115 : StackLang.HolProg 64 :=
.seq AllocBody288_11 AllocBody288_114

def AllocBody288_116 : StackLang.HolProg 64 :=
.seq AllocBody288_10 AllocBody288_115

def AllocBody288_117 : StackLang.HolProg 64 :=
.seq AllocBody288_9 AllocBody288_116

def AllocBody288_118 : StackLang.HolProg 64 :=
.seq AllocBody288_8 AllocBody288_117

def AllocBody288_119 : StackLang.HolProg 64 :=
.seq AllocBody288_7 AllocBody288_118

def AllocBody288_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody288_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody288_123 : StackLang.HolProg 64 :=
.seq AllocBody288_121 AllocBody288_122

def AllocBody288_124 : StackLang.HolProg 64 :=
.seq AllocBody288_120 AllocBody288_123

def AllocBody288_125 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody288_119 AllocBody288_124

def AllocBody288_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody288_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_128 : StackLang.HolProg 64 :=
.seq AllocBody288_126 AllocBody288_127

def AllocBody288_129 : StackLang.HolProg 64 :=
.seq AllocBody288_125 AllocBody288_128

def AllocBody288_130 : StackLang.HolProg 64 :=
.seq AllocBody288_6 AllocBody288_129

def AllocBody288_131 : StackLang.HolProg 64 :=
.seq AllocBody288_5 AllocBody288_130

def AllocBody288_132 : StackLang.HolProg 64 :=
.loop AllocBody288_131

def AllocBody288_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody288_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody288_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody288_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody288_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody288_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody288_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody288_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody288_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody288_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody288_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def AllocBody288_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody288_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody288_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody288_157 : StackLang.HolProg 64 :=
.seq AllocBody288_155 AllocBody288_156

def AllocBody288_158 : StackLang.HolProg 64 :=
.seq AllocBody288_154 AllocBody288_157

def AllocBody288_159 : StackLang.HolProg 64 :=
.seq AllocBody288_153 AllocBody288_158

def AllocBody288_160 : StackLang.HolProg 64 :=
.seq AllocBody288_152 AllocBody288_159

def AllocBody288_161 : StackLang.HolProg 64 :=
.seq AllocBody288_151 AllocBody288_160

def AllocBody288_162 : StackLang.HolProg 64 :=
.seq AllocBody288_150 AllocBody288_161

def AllocBody288_163 : StackLang.HolProg 64 :=
.seq AllocBody288_149 AllocBody288_162

def AllocBody288_164 : StackLang.HolProg 64 :=
.seq AllocBody288_148 AllocBody288_163

def AllocBody288_165 : StackLang.HolProg 64 :=
.seq AllocBody288_147 AllocBody288_164

def AllocBody288_166 : StackLang.HolProg 64 :=
.seq AllocBody288_146 AllocBody288_165

def AllocBody288_167 : StackLang.HolProg 64 :=
.seq AllocBody288_145 AllocBody288_166

def AllocBody288_168 : StackLang.HolProg 64 :=
.seq AllocBody288_144 AllocBody288_167

def AllocBody288_169 : StackLang.HolProg 64 :=
.seq AllocBody288_143 AllocBody288_168

def AllocBody288_170 : StackLang.HolProg 64 :=
.seq AllocBody288_142 AllocBody288_169

def AllocBody288_171 : StackLang.HolProg 64 :=
.seq AllocBody288_141 AllocBody288_170

def AllocBody288_172 : StackLang.HolProg 64 :=
.seq AllocBody288_140 AllocBody288_171

def AllocBody288_173 : StackLang.HolProg 64 :=
.seq AllocBody288_139 AllocBody288_172

def AllocBody288_174 : StackLang.HolProg 64 :=
.seq AllocBody288_138 AllocBody288_173

def AllocBody288_175 : StackLang.HolProg 64 :=
.seq AllocBody288_137 AllocBody288_174

def AllocBody288_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody288_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody288_178 : StackLang.HolProg 64 :=
.seq AllocBody288_176 AllocBody288_177

def AllocBody288_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody288_175 AllocBody288_178

def AllocBody288_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody288_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_182 : StackLang.HolProg 64 :=
.seq AllocBody288_180 AllocBody288_181

def AllocBody288_183 : StackLang.HolProg 64 :=
.seq AllocBody288_179 AllocBody288_182

def AllocBody288_184 : StackLang.HolProg 64 :=
.seq AllocBody288_136 AllocBody288_183

def AllocBody288_185 : StackLang.HolProg 64 :=
.loop AllocBody288_184

def AllocBody288_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody288_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody288_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody288_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody288_190 : StackLang.HolProg 64 :=
.seq AllocBody288_188 AllocBody288_189

def AllocBody288_191 : StackLang.HolProg 64 :=
.seq AllocBody288_187 AllocBody288_190

def AllocBody288_192 : StackLang.HolProg 64 :=
.seq AllocBody288_186 AllocBody288_191

def AllocBody288_193 : StackLang.HolProg 64 :=
.seq AllocBody288_185 AllocBody288_192

def AllocBody288_194 : StackLang.HolProg 64 :=
.seq AllocBody288_135 AllocBody288_193

def AllocBody288_195 : StackLang.HolProg 64 :=
.seq AllocBody288_134 AllocBody288_194

def AllocBody288_196 : StackLang.HolProg 64 :=
.seq AllocBody288_133 AllocBody288_195

def AllocBody288_197 : StackLang.HolProg 64 :=
.seq AllocBody288_132 AllocBody288_196

def AllocBody288_198 : StackLang.HolProg 64 :=
.seq AllocBody288_4 AllocBody288_197

def AllocBody288_199 : StackLang.HolProg 64 :=
.seq AllocBody288_3 AllocBody288_198

def AllocBody288_200 : StackLang.HolProg 64 :=
.seq AllocBody288_2 AllocBody288_199

def AllocBody288_201 : StackLang.HolProg 64 :=
.seq AllocBody288_1 AllocBody288_200

def AllocBody288_202 : StackLang.HolProg 64 :=
.seq AllocBody288_0 AllocBody288_201

def Alloc288 : Nat × StackLang.HolProg 64 := (288, AllocBody288_202)
theorem Alloc288_eq : StackAlloc.progComp (288, raw288) = Alloc288 := by
  kernel_rfl
#print axioms Alloc288_eq
end InitECandidate.Proofs.BackendStages
