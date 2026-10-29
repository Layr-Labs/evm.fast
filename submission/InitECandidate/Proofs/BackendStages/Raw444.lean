import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function444
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody444_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody444_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody444_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody444_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody444_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody444_5 : StackLang.HolProg 64 :=
.seq rawBody444_3 rawBody444_4

def rawBody444_6 : StackLang.HolProg 64 :=
.seq rawBody444_2 rawBody444_5

def rawBody444_7 : StackLang.HolProg 64 :=
.seq rawBody444_1 rawBody444_6

def rawBody444_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1341#64)

def rawBody444_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody444_11 : StackLang.HolProg 64 :=
.seq rawBody444_9 rawBody444_10

def rawBody444_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody444_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody444_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody444_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 444 3

def rawBody444_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody444_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody444_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody444_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody444_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody444_22 : StackLang.HolProg 64 :=
.seq rawBody444_20 rawBody444_21

def rawBody444_23 : StackLang.HolProg 64 :=
.seq rawBody444_19 rawBody444_22

def rawBody444_24 : StackLang.HolProg 64 :=
.seq rawBody444_18 rawBody444_23

def rawBody444_25 : StackLang.HolProg 64 :=
.seq rawBody444_17 rawBody444_24

def rawBody444_26 : StackLang.HolProg 64 :=
.seq rawBody444_16 rawBody444_25

def rawBody444_27 : StackLang.HolProg 64 :=
.seq rawBody444_15 rawBody444_26

def rawBody444_28 : StackLang.HolProg 64 :=
.seq rawBody444_14 rawBody444_27

def rawBody444_29 : StackLang.HolProg 64 :=
.seq rawBody444_13 rawBody444_28

def rawBody444_30 : StackLang.HolProg 64 :=
.seq rawBody444_12 rawBody444_29

def rawBody444_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody444_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody444_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody444_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody444_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody444_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody444_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody444_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody444_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody444_42 : StackLang.HolProg 64 :=
.seq rawBody444_40 rawBody444_41

def rawBody444_43 : StackLang.HolProg 64 :=
.seq rawBody444_39 rawBody444_42

def rawBody444_44 : StackLang.HolProg 64 :=
.seq rawBody444_38 rawBody444_43

def rawBody444_45 : StackLang.HolProg 64 :=
.seq rawBody444_37 rawBody444_44

def rawBody444_46 : StackLang.HolProg 64 :=
.seq rawBody444_36 rawBody444_45

def rawBody444_47 : StackLang.HolProg 64 :=
.seq rawBody444_35 rawBody444_46

def rawBody444_48 : StackLang.HolProg 64 :=
.seq rawBody444_34 rawBody444_47

def rawBody444_49 : StackLang.HolProg 64 :=
.seq rawBody444_33 rawBody444_48

def rawBody444_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody444_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody444_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody444_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody444_54 : StackLang.HolProg 64 :=
.seq rawBody444_52 rawBody444_53

def rawBody444_55 : StackLang.HolProg 64 :=
.seq rawBody444_51 rawBody444_54

def rawBody444_56 : StackLang.HolProg 64 :=
.seq rawBody444_50 rawBody444_55

def rawBody444_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody444_58 : StackLang.HolProg 64 :=
.seq rawBody444_56 rawBody444_57

def rawBody444_59 : StackLang.HolProg 64 :=
.call (some (rawBody444_49, 0, 444, 2)) (Sum.inl 439) (some (rawBody444_58, 444, 3))

def rawBody444_60 : StackLang.HolProg 64 :=
.seq rawBody444_32 rawBody444_59

def rawBody444_61 : StackLang.HolProg 64 :=
.seq rawBody444_31 rawBody444_60

def rawBody444_62 : StackLang.HolProg 64 :=
.seq rawBody444_30 rawBody444_61

def rawBody444_63 : StackLang.HolProg 64 :=
.seq rawBody444_11 rawBody444_62

def rawBody444_64 : StackLang.HolProg 64 :=
.seq rawBody444_8 rawBody444_63

def rawBody444_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def rawBody444_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody444_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody444_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody444_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody444_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody444_76 : StackLang.HolProg 64 :=
.seq rawBody444_74 rawBody444_75

def rawBody444_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody444_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody444_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody444_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 3

def rawBody444_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def rawBody444_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 2

def rawBody444_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody444_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody444_94 : StackLang.HolProg 64 :=
.seq rawBody444_92 rawBody444_93

def rawBody444_95 : StackLang.HolProg 64 :=
.seq rawBody444_91 rawBody444_94

def rawBody444_96 : StackLang.HolProg 64 :=
.seq rawBody444_90 rawBody444_95

def rawBody444_97 : StackLang.HolProg 64 :=
.seq rawBody444_89 rawBody444_96

def rawBody444_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_99 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody444_97 rawBody444_98

def rawBody444_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody444_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody444_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody444_105 : StackLang.HolProg 64 :=
.seq rawBody444_103 rawBody444_104

def rawBody444_106 : StackLang.HolProg 64 :=
.seq rawBody444_102 rawBody444_105

def rawBody444_107 : StackLang.HolProg 64 :=
.seq rawBody444_101 rawBody444_106

def rawBody444_108 : StackLang.HolProg 64 :=
.seq rawBody444_100 rawBody444_107

def rawBody444_109 : StackLang.HolProg 64 :=
.seq rawBody444_99 rawBody444_108

def rawBody444_110 : StackLang.HolProg 64 :=
.seq rawBody444_88 rawBody444_109

def rawBody444_111 : StackLang.HolProg 64 :=
.seq rawBody444_87 rawBody444_110

def rawBody444_112 : StackLang.HolProg 64 :=
.seq rawBody444_86 rawBody444_111

def rawBody444_113 : StackLang.HolProg 64 :=
.seq rawBody444_85 rawBody444_112

def rawBody444_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody444_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody444_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody444_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody444_118 : StackLang.HolProg 64 :=
.seq rawBody444_116 rawBody444_117

def rawBody444_119 : StackLang.HolProg 64 :=
.seq rawBody444_115 rawBody444_118

def rawBody444_120 : StackLang.HolProg 64 :=
.seq rawBody444_114 rawBody444_119

def rawBody444_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) rawBody444_113 rawBody444_120

def rawBody444_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody444_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody444_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 3

def rawBody444_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody444_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody444_130 : StackLang.HolProg 64 :=
.seq rawBody444_128 rawBody444_129

def rawBody444_131 : StackLang.HolProg 64 :=
.seq rawBody444_127 rawBody444_130

def rawBody444_132 : StackLang.HolProg 64 :=
.seq rawBody444_126 rawBody444_131

def rawBody444_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody444_134 : StackLang.HolProg 64 :=
.seq rawBody444_132 rawBody444_133

def rawBody444_135 : StackLang.HolProg 64 :=
.seq rawBody444_125 rawBody444_134

def rawBody444_136 : StackLang.HolProg 64 :=
.seq rawBody444_124 rawBody444_135

def rawBody444_137 : StackLang.HolProg 64 :=
.seq rawBody444_123 rawBody444_136

def rawBody444_138 : StackLang.HolProg 64 :=
.seq rawBody444_122 rawBody444_137

def rawBody444_139 : StackLang.HolProg 64 :=
.seq rawBody444_121 rawBody444_138

def rawBody444_140 : StackLang.HolProg 64 :=
.seq rawBody444_84 rawBody444_139

def rawBody444_141 : StackLang.HolProg 64 :=
.seq rawBody444_83 rawBody444_140

def rawBody444_142 : StackLang.HolProg 64 :=
.seq rawBody444_82 rawBody444_141

def rawBody444_143 : StackLang.HolProg 64 :=
.seq rawBody444_81 rawBody444_142

def rawBody444_144 : StackLang.HolProg 64 :=
.seq rawBody444_80 rawBody444_143

def rawBody444_145 : StackLang.HolProg 64 :=
.seq rawBody444_79 rawBody444_144

def rawBody444_146 : StackLang.HolProg 64 :=
.seq rawBody444_78 rawBody444_145

def rawBody444_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody444_149 : StackLang.HolProg 64 :=
.seq rawBody444_147 rawBody444_148

def rawBody444_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody444_146 rawBody444_149

def rawBody444_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody444_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody444_154 : StackLang.HolProg 64 :=
.seq rawBody444_152 rawBody444_153

def rawBody444_155 : StackLang.HolProg 64 :=
.seq rawBody444_151 rawBody444_154

def rawBody444_156 : StackLang.HolProg 64 :=
.seq rawBody444_150 rawBody444_155

def rawBody444_157 : StackLang.HolProg 64 :=
.seq rawBody444_77 rawBody444_156

def rawBody444_158 : StackLang.HolProg 64 :=
.loop rawBody444_157

def rawBody444_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody444_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def rawBody444_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody444_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1342#64)

def rawBody444_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody444_166 : StackLang.HolProg 64 :=
.seq rawBody444_164 rawBody444_165

def rawBody444_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody444_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody444_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody444_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 444 5

def rawBody444_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody444_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody444_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody444_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody444_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody444_177 : StackLang.HolProg 64 :=
.seq rawBody444_175 rawBody444_176

def rawBody444_178 : StackLang.HolProg 64 :=
.seq rawBody444_174 rawBody444_177

def rawBody444_179 : StackLang.HolProg 64 :=
.seq rawBody444_173 rawBody444_178

def rawBody444_180 : StackLang.HolProg 64 :=
.seq rawBody444_172 rawBody444_179

def rawBody444_181 : StackLang.HolProg 64 :=
.seq rawBody444_171 rawBody444_180

def rawBody444_182 : StackLang.HolProg 64 :=
.seq rawBody444_170 rawBody444_181

def rawBody444_183 : StackLang.HolProg 64 :=
.seq rawBody444_169 rawBody444_182

def rawBody444_184 : StackLang.HolProg 64 :=
.seq rawBody444_168 rawBody444_183

def rawBody444_185 : StackLang.HolProg 64 :=
.seq rawBody444_167 rawBody444_184

def rawBody444_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody444_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody444_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody444_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody444_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody444_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody444_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody444_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody444_196 : StackLang.HolProg 64 :=
.seq rawBody444_194 rawBody444_195

def rawBody444_197 : StackLang.HolProg 64 :=
.seq rawBody444_193 rawBody444_196

def rawBody444_198 : StackLang.HolProg 64 :=
.seq rawBody444_192 rawBody444_197

def rawBody444_199 : StackLang.HolProg 64 :=
.seq rawBody444_191 rawBody444_198

def rawBody444_200 : StackLang.HolProg 64 :=
.seq rawBody444_190 rawBody444_199

def rawBody444_201 : StackLang.HolProg 64 :=
.seq rawBody444_189 rawBody444_200

def rawBody444_202 : StackLang.HolProg 64 :=
.seq rawBody444_188 rawBody444_201

def rawBody444_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody444_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody444_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody444_206 : StackLang.HolProg 64 :=
.seq rawBody444_204 rawBody444_205

def rawBody444_207 : StackLang.HolProg 64 :=
.seq rawBody444_203 rawBody444_206

def rawBody444_208 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody444_209 : StackLang.HolProg 64 :=
.seq rawBody444_207 rawBody444_208

def rawBody444_210 : StackLang.HolProg 64 :=
.call (some (rawBody444_202, 0, 444, 4)) (Sum.inl 437) (some (rawBody444_209, 444, 5))

def rawBody444_211 : StackLang.HolProg 64 :=
.seq rawBody444_187 rawBody444_210

def rawBody444_212 : StackLang.HolProg 64 :=
.seq rawBody444_186 rawBody444_211

def rawBody444_213 : StackLang.HolProg 64 :=
.seq rawBody444_185 rawBody444_212

def rawBody444_214 : StackLang.HolProg 64 :=
.seq rawBody444_166 rawBody444_213

def rawBody444_215 : StackLang.HolProg 64 :=
.seq rawBody444_163 rawBody444_214

def rawBody444_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody444_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody444_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody444_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody444_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody444_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody444_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody444_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody444_227 : StackLang.HolProg 64 :=
.seq rawBody444_225 rawBody444_226

def rawBody444_228 : StackLang.HolProg 64 :=
.seq rawBody444_224 rawBody444_227

def rawBody444_229 : StackLang.HolProg 64 :=
.seq rawBody444_223 rawBody444_228

def rawBody444_230 : StackLang.HolProg 64 :=
.seq rawBody444_222 rawBody444_229

def rawBody444_231 : StackLang.HolProg 64 :=
.seq rawBody444_221 rawBody444_230

def rawBody444_232 : StackLang.HolProg 64 :=
.seq rawBody444_220 rawBody444_231

def rawBody444_233 : StackLang.HolProg 64 :=
.seq rawBody444_219 rawBody444_232

def rawBody444_234 : StackLang.HolProg 64 :=
.seq rawBody444_218 rawBody444_233

def rawBody444_235 : StackLang.HolProg 64 :=
.seq rawBody444_217 rawBody444_234

def rawBody444_236 : StackLang.HolProg 64 :=
.seq rawBody444_216 rawBody444_235

def rawBody444_237 : StackLang.HolProg 64 :=
.seq rawBody444_215 rawBody444_236

def rawBody444_238 : StackLang.HolProg 64 :=
.seq rawBody444_162 rawBody444_237

def rawBody444_239 : StackLang.HolProg 64 :=
.seq rawBody444_161 rawBody444_238

def rawBody444_240 : StackLang.HolProg 64 :=
.seq rawBody444_160 rawBody444_239

def rawBody444_241 : StackLang.HolProg 64 :=
.seq rawBody444_159 rawBody444_240

def rawBody444_242 : StackLang.HolProg 64 :=
.seq rawBody444_158 rawBody444_241

def rawBody444_243 : StackLang.HolProg 64 :=
.seq rawBody444_76 rawBody444_242

def rawBody444_244 : StackLang.HolProg 64 :=
.seq rawBody444_73 rawBody444_243

def rawBody444_245 : StackLang.HolProg 64 :=
.seq rawBody444_72 rawBody444_244

def rawBody444_246 : StackLang.HolProg 64 :=
.seq rawBody444_71 rawBody444_245

def rawBody444_247 : StackLang.HolProg 64 :=
.seq rawBody444_70 rawBody444_246

def rawBody444_248 : StackLang.HolProg 64 :=
.seq rawBody444_69 rawBody444_247

def rawBody444_249 : StackLang.HolProg 64 :=
.seq rawBody444_68 rawBody444_248

def rawBody444_250 : StackLang.HolProg 64 :=
.seq rawBody444_67 rawBody444_249

def rawBody444_251 : StackLang.HolProg 64 :=
.seq rawBody444_66 rawBody444_250

def rawBody444_252 : StackLang.HolProg 64 :=
.seq rawBody444_65 rawBody444_251

def rawBody444_253 : StackLang.HolProg 64 :=
.seq rawBody444_64 rawBody444_252

def rawBody444_254 : StackLang.HolProg 64 :=
.seq rawBody444_7 rawBody444_253

def rawBody444_255 : StackLang.HolProg 64 :=
.seq rawBody444_0 rawBody444_254

def raw444 : StackLang.HolProg 64 := rawBody444_255
theorem raw444_eq : StackRawCall.compTop RawInfo.rawInfo (function444 (.list [])).1 = raw444 := by
  kernel_rfl
#print axioms raw444_eq
end InitECandidate.Proofs.BackendStages
