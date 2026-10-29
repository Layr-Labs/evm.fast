import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function674
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody674_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody674_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody674_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody674_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody674_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody674_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody674_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody674_8 : StackLang.HolProg 64 :=
.seq rawBody674_6 rawBody674_7

def rawBody674_9 : StackLang.HolProg 64 :=
.seq rawBody674_5 rawBody674_8

def rawBody674_10 : StackLang.HolProg 64 :=
.seq rawBody674_4 rawBody674_9

def rawBody674_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody674_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody674_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody674_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody674_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody674_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody674_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody674_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody674_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def rawBody674_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody674_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody674_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2790#64)

def rawBody674_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody674_29 : StackLang.HolProg 64 :=
.seq rawBody674_27 rawBody674_28

def rawBody674_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody674_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody674_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody674_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 674 3

def rawBody674_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody674_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody674_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody674_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody674_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody674_40 : StackLang.HolProg 64 :=
.seq rawBody674_38 rawBody674_39

def rawBody674_41 : StackLang.HolProg 64 :=
.seq rawBody674_37 rawBody674_40

def rawBody674_42 : StackLang.HolProg 64 :=
.seq rawBody674_36 rawBody674_41

def rawBody674_43 : StackLang.HolProg 64 :=
.seq rawBody674_35 rawBody674_42

def rawBody674_44 : StackLang.HolProg 64 :=
.seq rawBody674_34 rawBody674_43

def rawBody674_45 : StackLang.HolProg 64 :=
.seq rawBody674_33 rawBody674_44

def rawBody674_46 : StackLang.HolProg 64 :=
.seq rawBody674_32 rawBody674_45

def rawBody674_47 : StackLang.HolProg 64 :=
.seq rawBody674_31 rawBody674_46

def rawBody674_48 : StackLang.HolProg 64 :=
.seq rawBody674_30 rawBody674_47

def rawBody674_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody674_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody674_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody674_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody674_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody674_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody674_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody674_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody674_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody674_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody674_61 : StackLang.HolProg 64 :=
.seq rawBody674_59 rawBody674_60

def rawBody674_62 : StackLang.HolProg 64 :=
.seq rawBody674_58 rawBody674_61

def rawBody674_63 : StackLang.HolProg 64 :=
.seq rawBody674_57 rawBody674_62

def rawBody674_64 : StackLang.HolProg 64 :=
.seq rawBody674_56 rawBody674_63

def rawBody674_65 : StackLang.HolProg 64 :=
.seq rawBody674_55 rawBody674_64

def rawBody674_66 : StackLang.HolProg 64 :=
.seq rawBody674_54 rawBody674_65

def rawBody674_67 : StackLang.HolProg 64 :=
.seq rawBody674_53 rawBody674_66

def rawBody674_68 : StackLang.HolProg 64 :=
.seq rawBody674_52 rawBody674_67

def rawBody674_69 : StackLang.HolProg 64 :=
.seq rawBody674_51 rawBody674_68

def rawBody674_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody674_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody674_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody674_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody674_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody674_75 : StackLang.HolProg 64 :=
.seq rawBody674_73 rawBody674_74

def rawBody674_76 : StackLang.HolProg 64 :=
.seq rawBody674_72 rawBody674_75

def rawBody674_77 : StackLang.HolProg 64 :=
.seq rawBody674_71 rawBody674_76

def rawBody674_78 : StackLang.HolProg 64 :=
.seq rawBody674_70 rawBody674_77

def rawBody674_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody674_80 : StackLang.HolProg 64 :=
.seq rawBody674_78 rawBody674_79

def rawBody674_81 : StackLang.HolProg 64 :=
.call (some (rawBody674_69, 0, 674, 2)) (Sum.inl 660) (some (rawBody674_80, 674, 3))

def rawBody674_82 : StackLang.HolProg 64 :=
.seq rawBody674_50 rawBody674_81

def rawBody674_83 : StackLang.HolProg 64 :=
.seq rawBody674_49 rawBody674_82

def rawBody674_84 : StackLang.HolProg 64 :=
.seq rawBody674_48 rawBody674_83

def rawBody674_85 : StackLang.HolProg 64 :=
.seq rawBody674_29 rawBody674_84

def rawBody674_86 : StackLang.HolProg 64 :=
.seq rawBody674_26 rawBody674_85

def rawBody674_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody674_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody674_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody674_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody674_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody674_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody674_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody674_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody674_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def rawBody674_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def rawBody674_104 : StackLang.HolProg 64 :=
.seq rawBody674_102 rawBody674_103

def rawBody674_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody674_106 : StackLang.HolProg 64 :=
.seq rawBody674_104 rawBody674_105

def rawBody674_107 : StackLang.HolProg 64 :=
.seq rawBody674_101 rawBody674_106

def rawBody674_108 : StackLang.HolProg 64 :=
.seq rawBody674_100 rawBody674_107

def rawBody674_109 : StackLang.HolProg 64 :=
.seq rawBody674_99 rawBody674_108

def rawBody674_110 : StackLang.HolProg 64 :=
.seq rawBody674_98 rawBody674_109

def rawBody674_111 : StackLang.HolProg 64 :=
.seq rawBody674_97 rawBody674_110

def rawBody674_112 : StackLang.HolProg 64 :=
.seq rawBody674_96 rawBody674_111

def rawBody674_113 : StackLang.HolProg 64 :=
.seq rawBody674_95 rawBody674_112

def rawBody674_114 : StackLang.HolProg 64 :=
.seq rawBody674_94 rawBody674_113

def rawBody674_115 : StackLang.HolProg 64 :=
.seq rawBody674_93 rawBody674_114

def rawBody674_116 : StackLang.HolProg 64 :=
.seq rawBody674_92 rawBody674_115

def rawBody674_117 : StackLang.HolProg 64 :=
.seq rawBody674_91 rawBody674_116

def rawBody674_118 : StackLang.HolProg 64 :=
.seq rawBody674_90 rawBody674_117

def rawBody674_119 : StackLang.HolProg 64 :=
.seq rawBody674_89 rawBody674_118

def rawBody674_120 : StackLang.HolProg 64 :=
.seq rawBody674_88 rawBody674_119

def rawBody674_121 : StackLang.HolProg 64 :=
.seq rawBody674_87 rawBody674_120

def rawBody674_122 : StackLang.HolProg 64 :=
.seq rawBody674_86 rawBody674_121

def rawBody674_123 : StackLang.HolProg 64 :=
.seq rawBody674_25 rawBody674_122

def rawBody674_124 : StackLang.HolProg 64 :=
.seq rawBody674_24 rawBody674_123

def rawBody674_125 : StackLang.HolProg 64 :=
.seq rawBody674_23 rawBody674_124

def rawBody674_126 : StackLang.HolProg 64 :=
.seq rawBody674_22 rawBody674_125

def rawBody674_127 : StackLang.HolProg 64 :=
.seq rawBody674_21 rawBody674_126

def rawBody674_128 : StackLang.HolProg 64 :=
.seq rawBody674_20 rawBody674_127

def rawBody674_129 : StackLang.HolProg 64 :=
.seq rawBody674_19 rawBody674_128

def rawBody674_130 : StackLang.HolProg 64 :=
.seq rawBody674_18 rawBody674_129

def rawBody674_131 : StackLang.HolProg 64 :=
.seq rawBody674_17 rawBody674_130

def rawBody674_132 : StackLang.HolProg 64 :=
.seq rawBody674_16 rawBody674_131

def rawBody674_133 : StackLang.HolProg 64 :=
.seq rawBody674_15 rawBody674_132

def rawBody674_134 : StackLang.HolProg 64 :=
.seq rawBody674_14 rawBody674_133

def rawBody674_135 : StackLang.HolProg 64 :=
.seq rawBody674_13 rawBody674_134

def rawBody674_136 : StackLang.HolProg 64 :=
.seq rawBody674_12 rawBody674_135

def rawBody674_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody674_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody674_139 : StackLang.HolProg 64 :=
.seq rawBody674_137 rawBody674_138

def rawBody674_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody674_136 rawBody674_139

def rawBody674_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody674_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody674_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody674_144 : StackLang.HolProg 64 :=
.seq rawBody674_142 rawBody674_143

def rawBody674_145 : StackLang.HolProg 64 :=
.seq rawBody674_141 rawBody674_144

def rawBody674_146 : StackLang.HolProg 64 :=
.seq rawBody674_140 rawBody674_145

def rawBody674_147 : StackLang.HolProg 64 :=
.seq rawBody674_11 rawBody674_146

def rawBody674_148 : StackLang.HolProg 64 :=
.loop rawBody674_147

def rawBody674_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody674_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody674_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody674_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody674_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody674_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody674_155 : StackLang.HolProg 64 :=
.seq rawBody674_153 rawBody674_154

def rawBody674_156 : StackLang.HolProg 64 :=
.seq rawBody674_152 rawBody674_155

def rawBody674_157 : StackLang.HolProg 64 :=
.seq rawBody674_151 rawBody674_156

def rawBody674_158 : StackLang.HolProg 64 :=
.seq rawBody674_150 rawBody674_157

def rawBody674_159 : StackLang.HolProg 64 :=
.seq rawBody674_149 rawBody674_158

def rawBody674_160 : StackLang.HolProg 64 :=
.seq rawBody674_148 rawBody674_159

def rawBody674_161 : StackLang.HolProg 64 :=
.seq rawBody674_10 rawBody674_160

def rawBody674_162 : StackLang.HolProg 64 :=
.seq rawBody674_3 rawBody674_161

def rawBody674_163 : StackLang.HolProg 64 :=
.seq rawBody674_2 rawBody674_162

def rawBody674_164 : StackLang.HolProg 64 :=
.seq rawBody674_1 rawBody674_163

def rawBody674_165 : StackLang.HolProg 64 :=
.seq rawBody674_0 rawBody674_164

def raw674 : StackLang.HolProg 64 := rawBody674_165
theorem raw674_eq : StackRawCall.compTop RawInfo.rawInfo (function674 (.list [])).1 = raw674 := by
  kernel_rfl
#print axioms raw674_eq
end InitECandidate.Proofs.BackendStages
