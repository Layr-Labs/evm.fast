import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed137
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody137_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody137_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody137_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody137_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 32#64)

def NamedBody137_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_9 : StackLang.HolProg 64 :=
.seq NamedBody137_7 NamedBody137_8

def NamedBody137_10 : StackLang.HolProg 64 :=
.seq NamedBody137_6 NamedBody137_9

def NamedBody137_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody137_13 : StackLang.HolProg 64 :=
.seq NamedBody137_11 NamedBody137_12

def NamedBody137_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody137_10 NamedBody137_13

def NamedBody137_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody137_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody137_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody137_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_23 : StackLang.HolProg 64 :=
.seq NamedBody137_21 NamedBody137_22

def NamedBody137_24 : StackLang.HolProg 64 :=
.seq NamedBody137_20 NamedBody137_23

def NamedBody137_25 : StackLang.HolProg 64 :=
.seq NamedBody137_19 NamedBody137_24

def NamedBody137_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody137_28 : StackLang.HolProg 64 :=
.seq NamedBody137_26 NamedBody137_27

def NamedBody137_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody137_25 NamedBody137_28

def NamedBody137_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody137_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody137_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody137_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_38 : StackLang.HolProg 64 :=
.seq NamedBody137_36 NamedBody137_37

def NamedBody137_39 : StackLang.HolProg 64 :=
.seq NamedBody137_35 NamedBody137_38

def NamedBody137_40 : StackLang.HolProg 64 :=
.seq NamedBody137_34 NamedBody137_39

def NamedBody137_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody137_43 : StackLang.HolProg 64 :=
.seq NamedBody137_41 NamedBody137_42

def NamedBody137_44 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody137_40 NamedBody137_43

def NamedBody137_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody137_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody137_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody137_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_53 : StackLang.HolProg 64 :=
.seq NamedBody137_51 NamedBody137_52

def NamedBody137_54 : StackLang.HolProg 64 :=
.seq NamedBody137_50 NamedBody137_53

def NamedBody137_55 : StackLang.HolProg 64 :=
.seq NamedBody137_49 NamedBody137_54

def NamedBody137_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody137_58 : StackLang.HolProg 64 :=
.seq NamedBody137_56 NamedBody137_57

def NamedBody137_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody137_55 NamedBody137_58

def NamedBody137_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody137_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody137_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody137_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_68 : StackLang.HolProg 64 :=
.seq NamedBody137_66 NamedBody137_67

def NamedBody137_69 : StackLang.HolProg 64 :=
.seq NamedBody137_65 NamedBody137_68

def NamedBody137_70 : StackLang.HolProg 64 :=
.seq NamedBody137_64 NamedBody137_69

def NamedBody137_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody137_73 : StackLang.HolProg 64 :=
.seq NamedBody137_71 NamedBody137_72

def NamedBody137_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody137_70 NamedBody137_73

def NamedBody137_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody137_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody137_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody137_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_83 : StackLang.HolProg 64 :=
.seq NamedBody137_81 NamedBody137_82

def NamedBody137_84 : StackLang.HolProg 64 :=
.seq NamedBody137_80 NamedBody137_83

def NamedBody137_85 : StackLang.HolProg 64 :=
.seq NamedBody137_79 NamedBody137_84

def NamedBody137_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody137_88 : StackLang.HolProg 64 :=
.seq NamedBody137_86 NamedBody137_87

def NamedBody137_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody137_85 NamedBody137_88

def NamedBody137_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody137_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody137_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody137_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody137_95 : StackLang.HolProg 64 :=
.seq NamedBody137_93 NamedBody137_94

def NamedBody137_96 : StackLang.HolProg 64 :=
.seq NamedBody137_92 NamedBody137_95

def NamedBody137_97 : StackLang.HolProg 64 :=
.seq NamedBody137_91 NamedBody137_96

def NamedBody137_98 : StackLang.HolProg 64 :=
.seq NamedBody137_90 NamedBody137_97

def NamedBody137_99 : StackLang.HolProg 64 :=
.seq NamedBody137_89 NamedBody137_98

def NamedBody137_100 : StackLang.HolProg 64 :=
.seq NamedBody137_78 NamedBody137_99

def NamedBody137_101 : StackLang.HolProg 64 :=
.seq NamedBody137_77 NamedBody137_100

def NamedBody137_102 : StackLang.HolProg 64 :=
.seq NamedBody137_76 NamedBody137_101

def NamedBody137_103 : StackLang.HolProg 64 :=
.seq NamedBody137_75 NamedBody137_102

def NamedBody137_104 : StackLang.HolProg 64 :=
.seq NamedBody137_74 NamedBody137_103

def NamedBody137_105 : StackLang.HolProg 64 :=
.seq NamedBody137_63 NamedBody137_104

def NamedBody137_106 : StackLang.HolProg 64 :=
.seq NamedBody137_62 NamedBody137_105

def NamedBody137_107 : StackLang.HolProg 64 :=
.seq NamedBody137_61 NamedBody137_106

def NamedBody137_108 : StackLang.HolProg 64 :=
.seq NamedBody137_60 NamedBody137_107

def NamedBody137_109 : StackLang.HolProg 64 :=
.seq NamedBody137_59 NamedBody137_108

def NamedBody137_110 : StackLang.HolProg 64 :=
.seq NamedBody137_48 NamedBody137_109

def NamedBody137_111 : StackLang.HolProg 64 :=
.seq NamedBody137_47 NamedBody137_110

def NamedBody137_112 : StackLang.HolProg 64 :=
.seq NamedBody137_46 NamedBody137_111

def NamedBody137_113 : StackLang.HolProg 64 :=
.seq NamedBody137_45 NamedBody137_112

def NamedBody137_114 : StackLang.HolProg 64 :=
.seq NamedBody137_44 NamedBody137_113

def NamedBody137_115 : StackLang.HolProg 64 :=
.seq NamedBody137_33 NamedBody137_114

def NamedBody137_116 : StackLang.HolProg 64 :=
.seq NamedBody137_32 NamedBody137_115

def NamedBody137_117 : StackLang.HolProg 64 :=
.seq NamedBody137_31 NamedBody137_116

def NamedBody137_118 : StackLang.HolProg 64 :=
.seq NamedBody137_30 NamedBody137_117

def NamedBody137_119 : StackLang.HolProg 64 :=
.seq NamedBody137_29 NamedBody137_118

def NamedBody137_120 : StackLang.HolProg 64 :=
.seq NamedBody137_18 NamedBody137_119

def NamedBody137_121 : StackLang.HolProg 64 :=
.seq NamedBody137_17 NamedBody137_120

def NamedBody137_122 : StackLang.HolProg 64 :=
.seq NamedBody137_16 NamedBody137_121

def NamedBody137_123 : StackLang.HolProg 64 :=
.seq NamedBody137_15 NamedBody137_122

def NamedBody137_124 : StackLang.HolProg 64 :=
.seq NamedBody137_14 NamedBody137_123

def NamedBody137_125 : StackLang.HolProg 64 :=
.seq NamedBody137_5 NamedBody137_124

def NamedBody137_126 : StackLang.HolProg 64 :=
.seq NamedBody137_4 NamedBody137_125

def NamedBody137_127 : StackLang.HolProg 64 :=
.seq NamedBody137_3 NamedBody137_126

def NamedBody137_128 : StackLang.HolProg 64 :=
.seq NamedBody137_2 NamedBody137_127

def NamedBody137_129 : StackLang.HolProg 64 :=
.seq NamedBody137_1 NamedBody137_128

def NamedBody137_130 : StackLang.HolProg 64 :=
.seq NamedBody137_0 NamedBody137_129

def Named137 : Nat × StackLang.HolProg 64 := (137, NamedBody137_130)
theorem Named137_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed137 = Named137 := by
  kernel_rfl
#print axioms Named137_eq
end InitECandidate.Proofs.BackendStages
