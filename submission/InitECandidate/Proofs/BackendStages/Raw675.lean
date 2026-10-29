import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function675
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody675_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody675_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody675_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody675_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody675_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody675_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody675_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody675_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody675_9 : StackLang.HolProg 64 :=
.seq rawBody675_7 rawBody675_8

def rawBody675_10 : StackLang.HolProg 64 :=
.seq rawBody675_6 rawBody675_9

def rawBody675_11 : StackLang.HolProg 64 :=
.seq rawBody675_5 rawBody675_10

def rawBody675_12 : StackLang.HolProg 64 :=
.seq rawBody675_4 rawBody675_11

def rawBody675_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody675_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody675_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody675_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody675_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def rawBody675_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody675_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody675_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 1

def rawBody675_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def rawBody675_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody675_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody675_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody675_29 : StackLang.HolProg 64 :=
.seq rawBody675_27 rawBody675_28

def rawBody675_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody675_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody675_32 : StackLang.HolProg 64 :=
.seq rawBody675_30 rawBody675_31

def rawBody675_33 : StackLang.HolProg 64 :=
.seq rawBody675_29 rawBody675_32

def rawBody675_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2791#64)

def rawBody675_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody675_37 : StackLang.HolProg 64 :=
.seq rawBody675_35 rawBody675_36

def rawBody675_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody675_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody675_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody675_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 675 3

def rawBody675_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody675_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody675_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody675_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody675_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody675_48 : StackLang.HolProg 64 :=
.seq rawBody675_46 rawBody675_47

def rawBody675_49 : StackLang.HolProg 64 :=
.seq rawBody675_45 rawBody675_48

def rawBody675_50 : StackLang.HolProg 64 :=
.seq rawBody675_44 rawBody675_49

def rawBody675_51 : StackLang.HolProg 64 :=
.seq rawBody675_43 rawBody675_50

def rawBody675_52 : StackLang.HolProg 64 :=
.seq rawBody675_42 rawBody675_51

def rawBody675_53 : StackLang.HolProg 64 :=
.seq rawBody675_41 rawBody675_52

def rawBody675_54 : StackLang.HolProg 64 :=
.seq rawBody675_40 rawBody675_53

def rawBody675_55 : StackLang.HolProg 64 :=
.seq rawBody675_39 rawBody675_54

def rawBody675_56 : StackLang.HolProg 64 :=
.seq rawBody675_38 rawBody675_55

def rawBody675_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody675_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody675_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody675_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody675_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody675_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def rawBody675_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody675_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody675_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody675_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody675_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody675_70 : StackLang.HolProg 64 :=
.seq rawBody675_68 rawBody675_69

def rawBody675_71 : StackLang.HolProg 64 :=
.seq rawBody675_67 rawBody675_70

def rawBody675_72 : StackLang.HolProg 64 :=
.seq rawBody675_66 rawBody675_71

def rawBody675_73 : StackLang.HolProg 64 :=
.seq rawBody675_65 rawBody675_72

def rawBody675_74 : StackLang.HolProg 64 :=
.seq rawBody675_64 rawBody675_73

def rawBody675_75 : StackLang.HolProg 64 :=
.seq rawBody675_63 rawBody675_74

def rawBody675_76 : StackLang.HolProg 64 :=
.seq rawBody675_62 rawBody675_75

def rawBody675_77 : StackLang.HolProg 64 :=
.seq rawBody675_61 rawBody675_76

def rawBody675_78 : StackLang.HolProg 64 :=
.seq rawBody675_60 rawBody675_77

def rawBody675_79 : StackLang.HolProg 64 :=
.seq rawBody675_59 rawBody675_78

def rawBody675_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def rawBody675_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody675_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody675_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody675_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody675_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody675_86 : StackLang.HolProg 64 :=
.seq rawBody675_84 rawBody675_85

def rawBody675_87 : StackLang.HolProg 64 :=
.seq rawBody675_83 rawBody675_86

def rawBody675_88 : StackLang.HolProg 64 :=
.seq rawBody675_82 rawBody675_87

def rawBody675_89 : StackLang.HolProg 64 :=
.seq rawBody675_81 rawBody675_88

def rawBody675_90 : StackLang.HolProg 64 :=
.seq rawBody675_80 rawBody675_89

def rawBody675_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody675_92 : StackLang.HolProg 64 :=
.seq rawBody675_90 rawBody675_91

def rawBody675_93 : StackLang.HolProg 64 :=
.call (some (rawBody675_79, 0, 675, 2)) (Sum.inl 665) (some (rawBody675_92, 675, 3))

def rawBody675_94 : StackLang.HolProg 64 :=
.seq rawBody675_58 rawBody675_93

def rawBody675_95 : StackLang.HolProg 64 :=
.seq rawBody675_57 rawBody675_94

def rawBody675_96 : StackLang.HolProg 64 :=
.seq rawBody675_56 rawBody675_95

def rawBody675_97 : StackLang.HolProg 64 :=
.seq rawBody675_37 rawBody675_96

def rawBody675_98 : StackLang.HolProg 64 :=
.seq rawBody675_34 rawBody675_97

def rawBody675_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody675_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody675_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody675_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody675_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody675_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody675_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody675_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody675_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 6

def rawBody675_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 5

def rawBody675_116 : StackLang.HolProg 64 :=
.seq rawBody675_114 rawBody675_115

def rawBody675_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody675_118 : StackLang.HolProg 64 :=
.seq rawBody675_116 rawBody675_117

def rawBody675_119 : StackLang.HolProg 64 :=
.seq rawBody675_113 rawBody675_118

def rawBody675_120 : StackLang.HolProg 64 :=
.seq rawBody675_112 rawBody675_119

def rawBody675_121 : StackLang.HolProg 64 :=
.seq rawBody675_111 rawBody675_120

def rawBody675_122 : StackLang.HolProg 64 :=
.seq rawBody675_110 rawBody675_121

def rawBody675_123 : StackLang.HolProg 64 :=
.seq rawBody675_109 rawBody675_122

def rawBody675_124 : StackLang.HolProg 64 :=
.seq rawBody675_108 rawBody675_123

def rawBody675_125 : StackLang.HolProg 64 :=
.seq rawBody675_107 rawBody675_124

def rawBody675_126 : StackLang.HolProg 64 :=
.seq rawBody675_106 rawBody675_125

def rawBody675_127 : StackLang.HolProg 64 :=
.seq rawBody675_105 rawBody675_126

def rawBody675_128 : StackLang.HolProg 64 :=
.seq rawBody675_104 rawBody675_127

def rawBody675_129 : StackLang.HolProg 64 :=
.seq rawBody675_103 rawBody675_128

def rawBody675_130 : StackLang.HolProg 64 :=
.seq rawBody675_102 rawBody675_129

def rawBody675_131 : StackLang.HolProg 64 :=
.seq rawBody675_101 rawBody675_130

def rawBody675_132 : StackLang.HolProg 64 :=
.seq rawBody675_100 rawBody675_131

def rawBody675_133 : StackLang.HolProg 64 :=
.seq rawBody675_99 rawBody675_132

def rawBody675_134 : StackLang.HolProg 64 :=
.seq rawBody675_98 rawBody675_133

def rawBody675_135 : StackLang.HolProg 64 :=
.seq rawBody675_33 rawBody675_134

def rawBody675_136 : StackLang.HolProg 64 :=
.seq rawBody675_26 rawBody675_135

def rawBody675_137 : StackLang.HolProg 64 :=
.seq rawBody675_25 rawBody675_136

def rawBody675_138 : StackLang.HolProg 64 :=
.seq rawBody675_24 rawBody675_137

def rawBody675_139 : StackLang.HolProg 64 :=
.seq rawBody675_23 rawBody675_138

def rawBody675_140 : StackLang.HolProg 64 :=
.seq rawBody675_22 rawBody675_139

def rawBody675_141 : StackLang.HolProg 64 :=
.seq rawBody675_21 rawBody675_140

def rawBody675_142 : StackLang.HolProg 64 :=
.seq rawBody675_20 rawBody675_141

def rawBody675_143 : StackLang.HolProg 64 :=
.seq rawBody675_19 rawBody675_142

def rawBody675_144 : StackLang.HolProg 64 :=
.seq rawBody675_18 rawBody675_143

def rawBody675_145 : StackLang.HolProg 64 :=
.seq rawBody675_17 rawBody675_144

def rawBody675_146 : StackLang.HolProg 64 :=
.seq rawBody675_16 rawBody675_145

def rawBody675_147 : StackLang.HolProg 64 :=
.seq rawBody675_15 rawBody675_146

def rawBody675_148 : StackLang.HolProg 64 :=
.seq rawBody675_14 rawBody675_147

def rawBody675_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody675_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody675_151 : StackLang.HolProg 64 :=
.seq rawBody675_149 rawBody675_150

def rawBody675_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody675_148 rawBody675_151

def rawBody675_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody675_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody675_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody675_156 : StackLang.HolProg 64 :=
.seq rawBody675_154 rawBody675_155

def rawBody675_157 : StackLang.HolProg 64 :=
.seq rawBody675_153 rawBody675_156

def rawBody675_158 : StackLang.HolProg 64 :=
.seq rawBody675_152 rawBody675_157

def rawBody675_159 : StackLang.HolProg 64 :=
.seq rawBody675_13 rawBody675_158

def rawBody675_160 : StackLang.HolProg 64 :=
.loop rawBody675_159

def rawBody675_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody675_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody675_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody675_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody675_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody675_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody675_167 : StackLang.HolProg 64 :=
.seq rawBody675_165 rawBody675_166

def rawBody675_168 : StackLang.HolProg 64 :=
.seq rawBody675_164 rawBody675_167

def rawBody675_169 : StackLang.HolProg 64 :=
.seq rawBody675_163 rawBody675_168

def rawBody675_170 : StackLang.HolProg 64 :=
.seq rawBody675_162 rawBody675_169

def rawBody675_171 : StackLang.HolProg 64 :=
.seq rawBody675_161 rawBody675_170

def rawBody675_172 : StackLang.HolProg 64 :=
.seq rawBody675_160 rawBody675_171

def rawBody675_173 : StackLang.HolProg 64 :=
.seq rawBody675_12 rawBody675_172

def rawBody675_174 : StackLang.HolProg 64 :=
.seq rawBody675_3 rawBody675_173

def rawBody675_175 : StackLang.HolProg 64 :=
.seq rawBody675_2 rawBody675_174

def rawBody675_176 : StackLang.HolProg 64 :=
.seq rawBody675_1 rawBody675_175

def rawBody675_177 : StackLang.HolProg 64 :=
.seq rawBody675_0 rawBody675_176

def raw675 : StackLang.HolProg 64 := rawBody675_177
theorem raw675_eq : StackRawCall.compTop RawInfo.rawInfo (function675 (.list [])).1 = raw675 := by
  kernel_rfl
#print axioms raw675_eq
end InitECandidate.Proofs.BackendStages
