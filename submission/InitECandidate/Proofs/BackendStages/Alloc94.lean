import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw94
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody94_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody94_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody94_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody94_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody94_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody94_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody94_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody94_8 : StackLang.HolProg 64 :=
.seq AllocBody94_6 AllocBody94_7

def AllocBody94_9 : StackLang.HolProg 64 :=
.seq AllocBody94_5 AllocBody94_8

def AllocBody94_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 40#64)

def AllocBody94_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody94_13 : StackLang.HolProg 64 :=
.seq AllocBody94_11 AllocBody94_12

def AllocBody94_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody94_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody94_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody94_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 94 3

def AllocBody94_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody94_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody94_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody94_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody94_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody94_24 : StackLang.HolProg 64 :=
.seq AllocBody94_22 AllocBody94_23

def AllocBody94_25 : StackLang.HolProg 64 :=
.seq AllocBody94_21 AllocBody94_24

def AllocBody94_26 : StackLang.HolProg 64 :=
.seq AllocBody94_20 AllocBody94_25

def AllocBody94_27 : StackLang.HolProg 64 :=
.seq AllocBody94_19 AllocBody94_26

def AllocBody94_28 : StackLang.HolProg 64 :=
.seq AllocBody94_18 AllocBody94_27

def AllocBody94_29 : StackLang.HolProg 64 :=
.seq AllocBody94_17 AllocBody94_28

def AllocBody94_30 : StackLang.HolProg 64 :=
.seq AllocBody94_16 AllocBody94_29

def AllocBody94_31 : StackLang.HolProg 64 :=
.seq AllocBody94_15 AllocBody94_30

def AllocBody94_32 : StackLang.HolProg 64 :=
.seq AllocBody94_14 AllocBody94_31

def AllocBody94_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody94_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody94_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody94_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody94_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody94_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody94_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody94_42 : StackLang.HolProg 64 :=
.seq AllocBody94_40 AllocBody94_41

def AllocBody94_43 : StackLang.HolProg 64 :=
.seq AllocBody94_39 AllocBody94_42

def AllocBody94_44 : StackLang.HolProg 64 :=
.seq AllocBody94_38 AllocBody94_43

def AllocBody94_45 : StackLang.HolProg 64 :=
.seq AllocBody94_37 AllocBody94_44

def AllocBody94_46 : StackLang.HolProg 64 :=
.seq AllocBody94_36 AllocBody94_45

def AllocBody94_47 : StackLang.HolProg 64 :=
.seq AllocBody94_35 AllocBody94_46

def AllocBody94_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody94_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody94_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody94_51 : StackLang.HolProg 64 :=
.seq AllocBody94_49 AllocBody94_50

def AllocBody94_52 : StackLang.HolProg 64 :=
.seq AllocBody94_48 AllocBody94_51

def AllocBody94_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody94_54 : StackLang.HolProg 64 :=
.seq AllocBody94_52 AllocBody94_53

def AllocBody94_55 : StackLang.HolProg 64 :=
.call (some (AllocBody94_47, 0, 94, 2)) (Sum.inl 66) (some (AllocBody94_54, 94, 3))

def AllocBody94_56 : StackLang.HolProg 64 :=
.seq AllocBody94_34 AllocBody94_55

def AllocBody94_57 : StackLang.HolProg 64 :=
.seq AllocBody94_33 AllocBody94_56

def AllocBody94_58 : StackLang.HolProg 64 :=
.seq AllocBody94_32 AllocBody94_57

def AllocBody94_59 : StackLang.HolProg 64 :=
.seq AllocBody94_13 AllocBody94_58

def AllocBody94_60 : StackLang.HolProg 64 :=
.seq AllocBody94_10 AllocBody94_59

def AllocBody94_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_63 : StackLang.HolProg 64 :=
.seq AllocBody94_61 AllocBody94_62

def AllocBody94_64 : StackLang.HolProg 64 :=
.seq AllocBody94_60 AllocBody94_63

def AllocBody94_65 : StackLang.HolProg 64 :=
.seq AllocBody94_9 AllocBody94_64

def AllocBody94_66 : StackLang.HolProg 64 :=
.seq AllocBody94_4 AllocBody94_65

def AllocBody94_67 : StackLang.HolProg 64 :=
.seq AllocBody94_3 AllocBody94_66

def AllocBody94_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_70 : StackLang.HolProg 64 :=
.seq AllocBody94_68 AllocBody94_69

def AllocBody94_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody94_67 AllocBody94_70

def AllocBody94_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody94_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody94_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody94_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody94_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody94_79 : StackLang.HolProg 64 :=
.seq AllocBody94_77 AllocBody94_78

def AllocBody94_80 : StackLang.HolProg 64 :=
.seq AllocBody94_76 AllocBody94_79

def AllocBody94_81 : StackLang.HolProg 64 :=
.seq AllocBody94_75 AllocBody94_80

def AllocBody94_82 : StackLang.HolProg 64 :=
.seq AllocBody94_74 AllocBody94_81

def AllocBody94_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody94_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody94_82 AllocBody94_83

def AllocBody94_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody94_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody94_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 64#64)

def AllocBody94_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody94_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody94_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody94_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody94_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody94_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody94_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody94_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody94_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def AllocBody94_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody94_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody94_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody94_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_114 : StackLang.HolProg 64 :=
.seq AllocBody94_112 AllocBody94_113

def AllocBody94_115 : StackLang.HolProg 64 :=
.seq AllocBody94_111 AllocBody94_114

def AllocBody94_116 : StackLang.HolProg 64 :=
.seq AllocBody94_110 AllocBody94_115

def AllocBody94_117 : StackLang.HolProg 64 :=
.seq AllocBody94_109 AllocBody94_116

def AllocBody94_118 : StackLang.HolProg 64 :=
.seq AllocBody94_108 AllocBody94_117

def AllocBody94_119 : StackLang.HolProg 64 :=
.seq AllocBody94_107 AllocBody94_118

def AllocBody94_120 : StackLang.HolProg 64 :=
.seq AllocBody94_106 AllocBody94_119

def AllocBody94_121 : StackLang.HolProg 64 :=
.seq AllocBody94_105 AllocBody94_120

def AllocBody94_122 : StackLang.HolProg 64 :=
.seq AllocBody94_104 AllocBody94_121

def AllocBody94_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_125 : StackLang.HolProg 64 :=
.seq AllocBody94_123 AllocBody94_124

def AllocBody94_126 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody94_122 AllocBody94_125

def AllocBody94_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody94_130 : StackLang.HolProg 64 :=
.seq AllocBody94_128 AllocBody94_129

def AllocBody94_131 : StackLang.HolProg 64 :=
.seq AllocBody94_127 AllocBody94_130

def AllocBody94_132 : StackLang.HolProg 64 :=
.seq AllocBody94_126 AllocBody94_131

def AllocBody94_133 : StackLang.HolProg 64 :=
.seq AllocBody94_103 AllocBody94_132

def AllocBody94_134 : StackLang.HolProg 64 :=
.seq AllocBody94_102 AllocBody94_133

def AllocBody94_135 : StackLang.HolProg 64 :=
.seq AllocBody94_101 AllocBody94_134

def AllocBody94_136 : StackLang.HolProg 64 :=
.seq AllocBody94_100 AllocBody94_135

def AllocBody94_137 : StackLang.HolProg 64 :=
.seq AllocBody94_99 AllocBody94_136

def AllocBody94_138 : StackLang.HolProg 64 :=
.seq AllocBody94_98 AllocBody94_137

def AllocBody94_139 : StackLang.HolProg 64 :=
.seq AllocBody94_97 AllocBody94_138

def AllocBody94_140 : StackLang.HolProg 64 :=
.seq AllocBody94_96 AllocBody94_139

def AllocBody94_141 : StackLang.HolProg 64 :=
.seq AllocBody94_95 AllocBody94_140

def AllocBody94_142 : StackLang.HolProg 64 :=
.seq AllocBody94_94 AllocBody94_141

def AllocBody94_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody94_145 : StackLang.HolProg 64 :=
.seq AllocBody94_143 AllocBody94_144

def AllocBody94_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody94_142 AllocBody94_145

def AllocBody94_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_149 : StackLang.HolProg 64 :=
.seq AllocBody94_147 AllocBody94_148

def AllocBody94_150 : StackLang.HolProg 64 :=
.seq AllocBody94_146 AllocBody94_149

def AllocBody94_151 : StackLang.HolProg 64 :=
.seq AllocBody94_93 AllocBody94_150

def AllocBody94_152 : StackLang.HolProg 64 :=
.seq AllocBody94_92 AllocBody94_151

def AllocBody94_153 : StackLang.HolProg 64 :=
.loop AllocBody94_152

def AllocBody94_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody94_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody94_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody94_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody94_158 : StackLang.HolProg 64 :=
.seq AllocBody94_156 AllocBody94_157

def AllocBody94_159 : StackLang.HolProg 64 :=
.seq AllocBody94_155 AllocBody94_158

def AllocBody94_160 : StackLang.HolProg 64 :=
.seq AllocBody94_154 AllocBody94_159

def AllocBody94_161 : StackLang.HolProg 64 :=
.seq AllocBody94_153 AllocBody94_160

def AllocBody94_162 : StackLang.HolProg 64 :=
.seq AllocBody94_91 AllocBody94_161

def AllocBody94_163 : StackLang.HolProg 64 :=
.seq AllocBody94_90 AllocBody94_162

def AllocBody94_164 : StackLang.HolProg 64 :=
.seq AllocBody94_89 AllocBody94_163

def AllocBody94_165 : StackLang.HolProg 64 :=
.seq AllocBody94_88 AllocBody94_164

def AllocBody94_166 : StackLang.HolProg 64 :=
.seq AllocBody94_87 AllocBody94_165

def AllocBody94_167 : StackLang.HolProg 64 :=
.seq AllocBody94_86 AllocBody94_166

def AllocBody94_168 : StackLang.HolProg 64 :=
.seq AllocBody94_85 AllocBody94_167

def AllocBody94_169 : StackLang.HolProg 64 :=
.seq AllocBody94_84 AllocBody94_168

def AllocBody94_170 : StackLang.HolProg 64 :=
.seq AllocBody94_73 AllocBody94_169

def AllocBody94_171 : StackLang.HolProg 64 :=
.seq AllocBody94_72 AllocBody94_170

def AllocBody94_172 : StackLang.HolProg 64 :=
.seq AllocBody94_71 AllocBody94_171

def AllocBody94_173 : StackLang.HolProg 64 :=
.seq AllocBody94_2 AllocBody94_172

def AllocBody94_174 : StackLang.HolProg 64 :=
.seq AllocBody94_1 AllocBody94_173

def AllocBody94_175 : StackLang.HolProg 64 :=
.seq AllocBody94_0 AllocBody94_174

def Alloc94 : Nat × StackLang.HolProg 64 := (94, AllocBody94_175)
theorem Alloc94_eq : StackAlloc.progComp (94, raw94) = Alloc94 := by
  kernel_rfl
#print axioms Alloc94_eq
end InitECandidate.Proofs.BackendStages
