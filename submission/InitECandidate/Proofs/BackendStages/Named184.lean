import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed184
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody184_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody184_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody184_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody184_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody184_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody184_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody184_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody184_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody184_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody184_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 8#64)

def NamedBody184_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 7#64)

def NamedBody184_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody184_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody184_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody184_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 0#64)

def NamedBody184_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody184_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody184_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody184_38 : StackLang.HolProg 64 :=
.seq NamedBody184_36 NamedBody184_37

def NamedBody184_39 : StackLang.HolProg 64 :=
.seq NamedBody184_35 NamedBody184_38

def NamedBody184_40 : StackLang.HolProg 64 :=
.seq NamedBody184_34 NamedBody184_39

def NamedBody184_41 : StackLang.HolProg 64 :=
.seq NamedBody184_33 NamedBody184_40

def NamedBody184_42 : StackLang.HolProg 64 :=
.seq NamedBody184_32 NamedBody184_41

def NamedBody184_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody184_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody184_45 : StackLang.HolProg 64 :=
.seq NamedBody184_43 NamedBody184_44

def NamedBody184_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27) NamedBody184_42 NamedBody184_45

def NamedBody184_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody184_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody184_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody184_53 : StackLang.HolProg 64 :=
.seq NamedBody184_51 NamedBody184_52

def NamedBody184_54 : StackLang.HolProg 64 :=
.seq NamedBody184_50 NamedBody184_53

def NamedBody184_55 : StackLang.HolProg 64 :=
.seq NamedBody184_49 NamedBody184_54

def NamedBody184_56 : StackLang.HolProg 64 :=
.seq NamedBody184_48 NamedBody184_55

def NamedBody184_57 : StackLang.HolProg 64 :=
.seq NamedBody184_47 NamedBody184_56

def NamedBody184_58 : StackLang.HolProg 64 :=
.seq NamedBody184_46 NamedBody184_57

def NamedBody184_59 : StackLang.HolProg 64 :=
.seq NamedBody184_31 NamedBody184_58

def NamedBody184_60 : StackLang.HolProg 64 :=
.seq NamedBody184_30 NamedBody184_59

def NamedBody184_61 : StackLang.HolProg 64 :=
.seq NamedBody184_29 NamedBody184_60

def NamedBody184_62 : StackLang.HolProg 64 :=
.seq NamedBody184_28 NamedBody184_61

def NamedBody184_63 : StackLang.HolProg 64 :=
.seq NamedBody184_27 NamedBody184_62

def NamedBody184_64 : StackLang.HolProg 64 :=
.seq NamedBody184_26 NamedBody184_63

def NamedBody184_65 : StackLang.HolProg 64 :=
.seq NamedBody184_25 NamedBody184_64

def NamedBody184_66 : StackLang.HolProg 64 :=
.seq NamedBody184_24 NamedBody184_65

def NamedBody184_67 : StackLang.HolProg 64 :=
.seq NamedBody184_23 NamedBody184_66

def NamedBody184_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody184_70 : StackLang.HolProg 64 :=
.seq NamedBody184_68 NamedBody184_69

def NamedBody184_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody184_67 NamedBody184_70

def NamedBody184_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_74 : StackLang.HolProg 64 :=
.seq NamedBody184_72 NamedBody184_73

def NamedBody184_75 : StackLang.HolProg 64 :=
.seq NamedBody184_71 NamedBody184_74

def NamedBody184_76 : StackLang.HolProg 64 :=
.seq NamedBody184_22 NamedBody184_75

def NamedBody184_77 : StackLang.HolProg 64 :=
.seq NamedBody184_21 NamedBody184_76

def NamedBody184_78 : StackLang.HolProg 64 :=
.loop NamedBody184_77

def NamedBody184_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_81 : StackLang.HolProg 64 :=
.seq NamedBody184_79 NamedBody184_80

def NamedBody184_82 : StackLang.HolProg 64 :=
.seq NamedBody184_78 NamedBody184_81

def NamedBody184_83 : StackLang.HolProg 64 :=
.seq NamedBody184_20 NamedBody184_82

def NamedBody184_84 : StackLang.HolProg 64 :=
.seq NamedBody184_19 NamedBody184_83

def NamedBody184_85 : StackLang.HolProg 64 :=
.seq NamedBody184_18 NamedBody184_84

def NamedBody184_86 : StackLang.HolProg 64 :=
.seq NamedBody184_17 NamedBody184_85

def NamedBody184_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_89 : StackLang.HolProg 64 :=
.seq NamedBody184_87 NamedBody184_88

def NamedBody184_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody184_86 NamedBody184_89

def NamedBody184_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody184_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody184_96 : StackLang.HolProg 64 :=
.seq NamedBody184_94 NamedBody184_95

def NamedBody184_97 : StackLang.HolProg 64 :=
.seq NamedBody184_93 NamedBody184_96

def NamedBody184_98 : StackLang.HolProg 64 :=
.seq NamedBody184_92 NamedBody184_97

def NamedBody184_99 : StackLang.HolProg 64 :=
.seq NamedBody184_91 NamedBody184_98

def NamedBody184_100 : StackLang.HolProg 64 :=
.seq NamedBody184_90 NamedBody184_99

def NamedBody184_101 : StackLang.HolProg 64 :=
.seq NamedBody184_16 NamedBody184_100

def NamedBody184_102 : StackLang.HolProg 64 :=
.seq NamedBody184_15 NamedBody184_101

def NamedBody184_103 : StackLang.HolProg 64 :=
.seq NamedBody184_14 NamedBody184_102

def NamedBody184_104 : StackLang.HolProg 64 :=
.seq NamedBody184_13 NamedBody184_103

def NamedBody184_105 : StackLang.HolProg 64 :=
.seq NamedBody184_12 NamedBody184_104

def NamedBody184_106 : StackLang.HolProg 64 :=
.seq NamedBody184_11 NamedBody184_105

def NamedBody184_107 : StackLang.HolProg 64 :=
.seq NamedBody184_10 NamedBody184_106

def NamedBody184_108 : StackLang.HolProg 64 :=
.seq NamedBody184_9 NamedBody184_107

def NamedBody184_109 : StackLang.HolProg 64 :=
.seq NamedBody184_8 NamedBody184_108

def NamedBody184_110 : StackLang.HolProg 64 :=
.seq NamedBody184_7 NamedBody184_109

def NamedBody184_111 : StackLang.HolProg 64 :=
.seq NamedBody184_6 NamedBody184_110

def NamedBody184_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody184_115 : StackLang.HolProg 64 :=
.seq NamedBody184_113 NamedBody184_114

def NamedBody184_116 : StackLang.HolProg 64 :=
.seq NamedBody184_112 NamedBody184_115

def NamedBody184_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody184_111 NamedBody184_116

def NamedBody184_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_120 : StackLang.HolProg 64 :=
.seq NamedBody184_118 NamedBody184_119

def NamedBody184_121 : StackLang.HolProg 64 :=
.seq NamedBody184_117 NamedBody184_120

def NamedBody184_122 : StackLang.HolProg 64 :=
.seq NamedBody184_5 NamedBody184_121

def NamedBody184_123 : StackLang.HolProg 64 :=
.loop NamedBody184_122

def NamedBody184_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody184_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody184_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody184_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody184_129 : StackLang.HolProg 64 :=
.seq NamedBody184_127 NamedBody184_128

def NamedBody184_130 : StackLang.HolProg 64 :=
.seq NamedBody184_126 NamedBody184_129

def NamedBody184_131 : StackLang.HolProg 64 :=
.seq NamedBody184_125 NamedBody184_130

def NamedBody184_132 : StackLang.HolProg 64 :=
.seq NamedBody184_124 NamedBody184_131

def NamedBody184_133 : StackLang.HolProg 64 :=
.seq NamedBody184_123 NamedBody184_132

def NamedBody184_134 : StackLang.HolProg 64 :=
.seq NamedBody184_4 NamedBody184_133

def NamedBody184_135 : StackLang.HolProg 64 :=
.seq NamedBody184_3 NamedBody184_134

def NamedBody184_136 : StackLang.HolProg 64 :=
.seq NamedBody184_2 NamedBody184_135

def NamedBody184_137 : StackLang.HolProg 64 :=
.seq NamedBody184_1 NamedBody184_136

def NamedBody184_138 : StackLang.HolProg 64 :=
.seq NamedBody184_0 NamedBody184_137

def Named184 : Nat × StackLang.HolProg 64 := (184, NamedBody184_138)
theorem Named184_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed184 = Named184 := by
  kernel_rfl
#print axioms Named184_eq
end InitECandidate.Proofs.BackendStages
