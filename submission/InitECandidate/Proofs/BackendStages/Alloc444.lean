import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw444
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody444_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody444_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody444_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody444_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody444_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody444_5 : StackLang.HolProg 64 :=
.seq AllocBody444_3 AllocBody444_4

def AllocBody444_6 : StackLang.HolProg 64 :=
.seq AllocBody444_2 AllocBody444_5

def AllocBody444_7 : StackLang.HolProg 64 :=
.seq AllocBody444_1 AllocBody444_6

def AllocBody444_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1341#64)

def AllocBody444_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody444_11 : StackLang.HolProg 64 :=
.seq AllocBody444_9 AllocBody444_10

def AllocBody444_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody444_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody444_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody444_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 444 3

def AllocBody444_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody444_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody444_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody444_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody444_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody444_22 : StackLang.HolProg 64 :=
.seq AllocBody444_20 AllocBody444_21

def AllocBody444_23 : StackLang.HolProg 64 :=
.seq AllocBody444_19 AllocBody444_22

def AllocBody444_24 : StackLang.HolProg 64 :=
.seq AllocBody444_18 AllocBody444_23

def AllocBody444_25 : StackLang.HolProg 64 :=
.seq AllocBody444_17 AllocBody444_24

def AllocBody444_26 : StackLang.HolProg 64 :=
.seq AllocBody444_16 AllocBody444_25

def AllocBody444_27 : StackLang.HolProg 64 :=
.seq AllocBody444_15 AllocBody444_26

def AllocBody444_28 : StackLang.HolProg 64 :=
.seq AllocBody444_14 AllocBody444_27

def AllocBody444_29 : StackLang.HolProg 64 :=
.seq AllocBody444_13 AllocBody444_28

def AllocBody444_30 : StackLang.HolProg 64 :=
.seq AllocBody444_12 AllocBody444_29

def AllocBody444_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody444_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody444_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody444_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody444_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody444_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody444_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody444_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody444_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody444_42 : StackLang.HolProg 64 :=
.seq AllocBody444_40 AllocBody444_41

def AllocBody444_43 : StackLang.HolProg 64 :=
.seq AllocBody444_39 AllocBody444_42

def AllocBody444_44 : StackLang.HolProg 64 :=
.seq AllocBody444_38 AllocBody444_43

def AllocBody444_45 : StackLang.HolProg 64 :=
.seq AllocBody444_37 AllocBody444_44

def AllocBody444_46 : StackLang.HolProg 64 :=
.seq AllocBody444_36 AllocBody444_45

def AllocBody444_47 : StackLang.HolProg 64 :=
.seq AllocBody444_35 AllocBody444_46

def AllocBody444_48 : StackLang.HolProg 64 :=
.seq AllocBody444_34 AllocBody444_47

def AllocBody444_49 : StackLang.HolProg 64 :=
.seq AllocBody444_33 AllocBody444_48

def AllocBody444_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody444_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody444_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody444_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody444_54 : StackLang.HolProg 64 :=
.seq AllocBody444_52 AllocBody444_53

def AllocBody444_55 : StackLang.HolProg 64 :=
.seq AllocBody444_51 AllocBody444_54

def AllocBody444_56 : StackLang.HolProg 64 :=
.seq AllocBody444_50 AllocBody444_55

def AllocBody444_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody444_58 : StackLang.HolProg 64 :=
.seq AllocBody444_56 AllocBody444_57

def AllocBody444_59 : StackLang.HolProg 64 :=
.call (some (AllocBody444_49, 0, 444, 2)) (Sum.inl 439) (some (AllocBody444_58, 444, 3))

def AllocBody444_60 : StackLang.HolProg 64 :=
.seq AllocBody444_32 AllocBody444_59

def AllocBody444_61 : StackLang.HolProg 64 :=
.seq AllocBody444_31 AllocBody444_60

def AllocBody444_62 : StackLang.HolProg 64 :=
.seq AllocBody444_30 AllocBody444_61

def AllocBody444_63 : StackLang.HolProg 64 :=
.seq AllocBody444_11 AllocBody444_62

def AllocBody444_64 : StackLang.HolProg 64 :=
.seq AllocBody444_8 AllocBody444_63

def AllocBody444_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def AllocBody444_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody444_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody444_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody444_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody444_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody444_76 : StackLang.HolProg 64 :=
.seq AllocBody444_74 AllocBody444_75

def AllocBody444_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody444_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody444_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody444_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 3

def AllocBody444_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def AllocBody444_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 2

def AllocBody444_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody444_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody444_94 : StackLang.HolProg 64 :=
.seq AllocBody444_92 AllocBody444_93

def AllocBody444_95 : StackLang.HolProg 64 :=
.seq AllocBody444_91 AllocBody444_94

def AllocBody444_96 : StackLang.HolProg 64 :=
.seq AllocBody444_90 AllocBody444_95

def AllocBody444_97 : StackLang.HolProg 64 :=
.seq AllocBody444_89 AllocBody444_96

def AllocBody444_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_99 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody444_97 AllocBody444_98

def AllocBody444_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody444_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody444_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody444_105 : StackLang.HolProg 64 :=
.seq AllocBody444_103 AllocBody444_104

def AllocBody444_106 : StackLang.HolProg 64 :=
.seq AllocBody444_102 AllocBody444_105

def AllocBody444_107 : StackLang.HolProg 64 :=
.seq AllocBody444_101 AllocBody444_106

def AllocBody444_108 : StackLang.HolProg 64 :=
.seq AllocBody444_100 AllocBody444_107

def AllocBody444_109 : StackLang.HolProg 64 :=
.seq AllocBody444_99 AllocBody444_108

def AllocBody444_110 : StackLang.HolProg 64 :=
.seq AllocBody444_88 AllocBody444_109

def AllocBody444_111 : StackLang.HolProg 64 :=
.seq AllocBody444_87 AllocBody444_110

def AllocBody444_112 : StackLang.HolProg 64 :=
.seq AllocBody444_86 AllocBody444_111

def AllocBody444_113 : StackLang.HolProg 64 :=
.seq AllocBody444_85 AllocBody444_112

def AllocBody444_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody444_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody444_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody444_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody444_118 : StackLang.HolProg 64 :=
.seq AllocBody444_116 AllocBody444_117

def AllocBody444_119 : StackLang.HolProg 64 :=
.seq AllocBody444_115 AllocBody444_118

def AllocBody444_120 : StackLang.HolProg 64 :=
.seq AllocBody444_114 AllocBody444_119

def AllocBody444_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) AllocBody444_113 AllocBody444_120

def AllocBody444_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody444_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody444_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 3

def AllocBody444_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody444_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody444_130 : StackLang.HolProg 64 :=
.seq AllocBody444_128 AllocBody444_129

def AllocBody444_131 : StackLang.HolProg 64 :=
.seq AllocBody444_127 AllocBody444_130

def AllocBody444_132 : StackLang.HolProg 64 :=
.seq AllocBody444_126 AllocBody444_131

def AllocBody444_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody444_134 : StackLang.HolProg 64 :=
.seq AllocBody444_132 AllocBody444_133

def AllocBody444_135 : StackLang.HolProg 64 :=
.seq AllocBody444_125 AllocBody444_134

def AllocBody444_136 : StackLang.HolProg 64 :=
.seq AllocBody444_124 AllocBody444_135

def AllocBody444_137 : StackLang.HolProg 64 :=
.seq AllocBody444_123 AllocBody444_136

def AllocBody444_138 : StackLang.HolProg 64 :=
.seq AllocBody444_122 AllocBody444_137

def AllocBody444_139 : StackLang.HolProg 64 :=
.seq AllocBody444_121 AllocBody444_138

def AllocBody444_140 : StackLang.HolProg 64 :=
.seq AllocBody444_84 AllocBody444_139

def AllocBody444_141 : StackLang.HolProg 64 :=
.seq AllocBody444_83 AllocBody444_140

def AllocBody444_142 : StackLang.HolProg 64 :=
.seq AllocBody444_82 AllocBody444_141

def AllocBody444_143 : StackLang.HolProg 64 :=
.seq AllocBody444_81 AllocBody444_142

def AllocBody444_144 : StackLang.HolProg 64 :=
.seq AllocBody444_80 AllocBody444_143

def AllocBody444_145 : StackLang.HolProg 64 :=
.seq AllocBody444_79 AllocBody444_144

def AllocBody444_146 : StackLang.HolProg 64 :=
.seq AllocBody444_78 AllocBody444_145

def AllocBody444_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody444_149 : StackLang.HolProg 64 :=
.seq AllocBody444_147 AllocBody444_148

def AllocBody444_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody444_146 AllocBody444_149

def AllocBody444_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody444_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody444_154 : StackLang.HolProg 64 :=
.seq AllocBody444_152 AllocBody444_153

def AllocBody444_155 : StackLang.HolProg 64 :=
.seq AllocBody444_151 AllocBody444_154

def AllocBody444_156 : StackLang.HolProg 64 :=
.seq AllocBody444_150 AllocBody444_155

def AllocBody444_157 : StackLang.HolProg 64 :=
.seq AllocBody444_77 AllocBody444_156

def AllocBody444_158 : StackLang.HolProg 64 :=
.loop AllocBody444_157

def AllocBody444_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody444_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def AllocBody444_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody444_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1342#64)

def AllocBody444_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody444_166 : StackLang.HolProg 64 :=
.seq AllocBody444_164 AllocBody444_165

def AllocBody444_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody444_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody444_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody444_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 444 5

def AllocBody444_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody444_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody444_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody444_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody444_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody444_177 : StackLang.HolProg 64 :=
.seq AllocBody444_175 AllocBody444_176

def AllocBody444_178 : StackLang.HolProg 64 :=
.seq AllocBody444_174 AllocBody444_177

def AllocBody444_179 : StackLang.HolProg 64 :=
.seq AllocBody444_173 AllocBody444_178

def AllocBody444_180 : StackLang.HolProg 64 :=
.seq AllocBody444_172 AllocBody444_179

def AllocBody444_181 : StackLang.HolProg 64 :=
.seq AllocBody444_171 AllocBody444_180

def AllocBody444_182 : StackLang.HolProg 64 :=
.seq AllocBody444_170 AllocBody444_181

def AllocBody444_183 : StackLang.HolProg 64 :=
.seq AllocBody444_169 AllocBody444_182

def AllocBody444_184 : StackLang.HolProg 64 :=
.seq AllocBody444_168 AllocBody444_183

def AllocBody444_185 : StackLang.HolProg 64 :=
.seq AllocBody444_167 AllocBody444_184

def AllocBody444_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody444_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody444_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody444_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody444_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody444_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody444_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody444_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody444_196 : StackLang.HolProg 64 :=
.seq AllocBody444_194 AllocBody444_195

def AllocBody444_197 : StackLang.HolProg 64 :=
.seq AllocBody444_193 AllocBody444_196

def AllocBody444_198 : StackLang.HolProg 64 :=
.seq AllocBody444_192 AllocBody444_197

def AllocBody444_199 : StackLang.HolProg 64 :=
.seq AllocBody444_191 AllocBody444_198

def AllocBody444_200 : StackLang.HolProg 64 :=
.seq AllocBody444_190 AllocBody444_199

def AllocBody444_201 : StackLang.HolProg 64 :=
.seq AllocBody444_189 AllocBody444_200

def AllocBody444_202 : StackLang.HolProg 64 :=
.seq AllocBody444_188 AllocBody444_201

def AllocBody444_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody444_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody444_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody444_206 : StackLang.HolProg 64 :=
.seq AllocBody444_204 AllocBody444_205

def AllocBody444_207 : StackLang.HolProg 64 :=
.seq AllocBody444_203 AllocBody444_206

def AllocBody444_208 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody444_209 : StackLang.HolProg 64 :=
.seq AllocBody444_207 AllocBody444_208

def AllocBody444_210 : StackLang.HolProg 64 :=
.call (some (AllocBody444_202, 0, 444, 4)) (Sum.inl 437) (some (AllocBody444_209, 444, 5))

def AllocBody444_211 : StackLang.HolProg 64 :=
.seq AllocBody444_187 AllocBody444_210

def AllocBody444_212 : StackLang.HolProg 64 :=
.seq AllocBody444_186 AllocBody444_211

def AllocBody444_213 : StackLang.HolProg 64 :=
.seq AllocBody444_185 AllocBody444_212

def AllocBody444_214 : StackLang.HolProg 64 :=
.seq AllocBody444_166 AllocBody444_213

def AllocBody444_215 : StackLang.HolProg 64 :=
.seq AllocBody444_163 AllocBody444_214

def AllocBody444_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody444_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody444_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody444_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody444_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody444_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody444_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody444_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody444_227 : StackLang.HolProg 64 :=
.seq AllocBody444_225 AllocBody444_226

def AllocBody444_228 : StackLang.HolProg 64 :=
.seq AllocBody444_224 AllocBody444_227

def AllocBody444_229 : StackLang.HolProg 64 :=
.seq AllocBody444_223 AllocBody444_228

def AllocBody444_230 : StackLang.HolProg 64 :=
.seq AllocBody444_222 AllocBody444_229

def AllocBody444_231 : StackLang.HolProg 64 :=
.seq AllocBody444_221 AllocBody444_230

def AllocBody444_232 : StackLang.HolProg 64 :=
.seq AllocBody444_220 AllocBody444_231

def AllocBody444_233 : StackLang.HolProg 64 :=
.seq AllocBody444_219 AllocBody444_232

def AllocBody444_234 : StackLang.HolProg 64 :=
.seq AllocBody444_218 AllocBody444_233

def AllocBody444_235 : StackLang.HolProg 64 :=
.seq AllocBody444_217 AllocBody444_234

def AllocBody444_236 : StackLang.HolProg 64 :=
.seq AllocBody444_216 AllocBody444_235

def AllocBody444_237 : StackLang.HolProg 64 :=
.seq AllocBody444_215 AllocBody444_236

def AllocBody444_238 : StackLang.HolProg 64 :=
.seq AllocBody444_162 AllocBody444_237

def AllocBody444_239 : StackLang.HolProg 64 :=
.seq AllocBody444_161 AllocBody444_238

def AllocBody444_240 : StackLang.HolProg 64 :=
.seq AllocBody444_160 AllocBody444_239

def AllocBody444_241 : StackLang.HolProg 64 :=
.seq AllocBody444_159 AllocBody444_240

def AllocBody444_242 : StackLang.HolProg 64 :=
.seq AllocBody444_158 AllocBody444_241

def AllocBody444_243 : StackLang.HolProg 64 :=
.seq AllocBody444_76 AllocBody444_242

def AllocBody444_244 : StackLang.HolProg 64 :=
.seq AllocBody444_73 AllocBody444_243

def AllocBody444_245 : StackLang.HolProg 64 :=
.seq AllocBody444_72 AllocBody444_244

def AllocBody444_246 : StackLang.HolProg 64 :=
.seq AllocBody444_71 AllocBody444_245

def AllocBody444_247 : StackLang.HolProg 64 :=
.seq AllocBody444_70 AllocBody444_246

def AllocBody444_248 : StackLang.HolProg 64 :=
.seq AllocBody444_69 AllocBody444_247

def AllocBody444_249 : StackLang.HolProg 64 :=
.seq AllocBody444_68 AllocBody444_248

def AllocBody444_250 : StackLang.HolProg 64 :=
.seq AllocBody444_67 AllocBody444_249

def AllocBody444_251 : StackLang.HolProg 64 :=
.seq AllocBody444_66 AllocBody444_250

def AllocBody444_252 : StackLang.HolProg 64 :=
.seq AllocBody444_65 AllocBody444_251

def AllocBody444_253 : StackLang.HolProg 64 :=
.seq AllocBody444_64 AllocBody444_252

def AllocBody444_254 : StackLang.HolProg 64 :=
.seq AllocBody444_7 AllocBody444_253

def AllocBody444_255 : StackLang.HolProg 64 :=
.seq AllocBody444_0 AllocBody444_254

def Alloc444 : Nat × StackLang.HolProg 64 := (444, AllocBody444_255)
theorem Alloc444_eq : StackAlloc.progComp (444, raw444) = Alloc444 := by
  kernel_rfl
#print axioms Alloc444_eq
end InitECandidate.Proofs.BackendStages
