import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function71
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody71_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody71_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody71_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody71_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 2

def rawBody71_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551584#64))

def rawBody71_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551592#64))

def rawBody71_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody71_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody71_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody71_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody71_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody71_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody71_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody71_16 : StackLang.HolProg 64 :=
.seq rawBody71_14 rawBody71_15

def rawBody71_17 : StackLang.HolProg 64 :=
.seq rawBody71_13 rawBody71_16

def rawBody71_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 29#64)

def rawBody71_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody71_21 : StackLang.HolProg 64 :=
.seq rawBody71_19 rawBody71_20

def rawBody71_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody71_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody71_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody71_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 71 3

def rawBody71_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody71_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody71_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody71_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody71_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody71_32 : StackLang.HolProg 64 :=
.seq rawBody71_30 rawBody71_31

def rawBody71_33 : StackLang.HolProg 64 :=
.seq rawBody71_29 rawBody71_32

def rawBody71_34 : StackLang.HolProg 64 :=
.seq rawBody71_28 rawBody71_33

def rawBody71_35 : StackLang.HolProg 64 :=
.seq rawBody71_27 rawBody71_34

def rawBody71_36 : StackLang.HolProg 64 :=
.seq rawBody71_26 rawBody71_35

def rawBody71_37 : StackLang.HolProg 64 :=
.seq rawBody71_25 rawBody71_36

def rawBody71_38 : StackLang.HolProg 64 :=
.seq rawBody71_24 rawBody71_37

def rawBody71_39 : StackLang.HolProg 64 :=
.seq rawBody71_23 rawBody71_38

def rawBody71_40 : StackLang.HolProg 64 :=
.seq rawBody71_22 rawBody71_39

def rawBody71_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody71_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody71_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody71_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody71_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody71_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody71_49 : StackLang.HolProg 64 :=
.seq rawBody71_47 rawBody71_48

def rawBody71_50 : StackLang.HolProg 64 :=
.seq rawBody71_46 rawBody71_49

def rawBody71_51 : StackLang.HolProg 64 :=
.seq rawBody71_45 rawBody71_50

def rawBody71_52 : StackLang.HolProg 64 :=
.seq rawBody71_44 rawBody71_51

def rawBody71_53 : StackLang.HolProg 64 :=
.seq rawBody71_43 rawBody71_52

def rawBody71_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody71_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody71_56 : StackLang.HolProg 64 :=
.seq rawBody71_54 rawBody71_55

def rawBody71_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody71_58 : StackLang.HolProg 64 :=
.seq rawBody71_56 rawBody71_57

def rawBody71_59 : StackLang.HolProg 64 :=
.call (some (rawBody71_53, 0, 71, 2)) (Sum.inl 66) (some (rawBody71_58, 71, 3))

def rawBody71_60 : StackLang.HolProg 64 :=
.seq rawBody71_42 rawBody71_59

def rawBody71_61 : StackLang.HolProg 64 :=
.seq rawBody71_41 rawBody71_60

def rawBody71_62 : StackLang.HolProg 64 :=
.seq rawBody71_40 rawBody71_61

def rawBody71_63 : StackLang.HolProg 64 :=
.seq rawBody71_21 rawBody71_62

def rawBody71_64 : StackLang.HolProg 64 :=
.seq rawBody71_18 rawBody71_63

def rawBody71_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody71_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_67 : StackLang.HolProg 64 :=
.seq rawBody71_65 rawBody71_66

def rawBody71_68 : StackLang.HolProg 64 :=
.seq rawBody71_64 rawBody71_67

def rawBody71_69 : StackLang.HolProg 64 :=
.seq rawBody71_17 rawBody71_68

def rawBody71_70 : StackLang.HolProg 64 :=
.seq rawBody71_12 rawBody71_69

def rawBody71_71 : StackLang.HolProg 64 :=
.seq rawBody71_11 rawBody71_70

def rawBody71_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody71_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody71_74 : StackLang.HolProg 64 :=
.seq rawBody71_72 rawBody71_73

def rawBody71_75 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody71_71 rawBody71_74

def rawBody71_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody71_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody71_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody71_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def rawBody71_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody71_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody71_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody71_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551592#64))

def rawBody71_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody71_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody71_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody71_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody71_90 : StackLang.HolProg 64 :=
.seq rawBody71_88 rawBody71_89

def rawBody71_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 30#64)

def rawBody71_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody71_94 : StackLang.HolProg 64 :=
.seq rawBody71_92 rawBody71_93

def rawBody71_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody71_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody71_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody71_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 71 5

def rawBody71_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody71_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody71_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody71_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody71_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody71_105 : StackLang.HolProg 64 :=
.seq rawBody71_103 rawBody71_104

def rawBody71_106 : StackLang.HolProg 64 :=
.seq rawBody71_102 rawBody71_105

def rawBody71_107 : StackLang.HolProg 64 :=
.seq rawBody71_101 rawBody71_106

def rawBody71_108 : StackLang.HolProg 64 :=
.seq rawBody71_100 rawBody71_107

def rawBody71_109 : StackLang.HolProg 64 :=
.seq rawBody71_99 rawBody71_108

def rawBody71_110 : StackLang.HolProg 64 :=
.seq rawBody71_98 rawBody71_109

def rawBody71_111 : StackLang.HolProg 64 :=
.seq rawBody71_97 rawBody71_110

def rawBody71_112 : StackLang.HolProg 64 :=
.seq rawBody71_96 rawBody71_111

def rawBody71_113 : StackLang.HolProg 64 :=
.seq rawBody71_95 rawBody71_112

def rawBody71_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody71_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody71_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody71_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody71_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody71_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody71_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody71_123 : StackLang.HolProg 64 :=
.seq rawBody71_121 rawBody71_122

def rawBody71_124 : StackLang.HolProg 64 :=
.seq rawBody71_120 rawBody71_123

def rawBody71_125 : StackLang.HolProg 64 :=
.seq rawBody71_119 rawBody71_124

def rawBody71_126 : StackLang.HolProg 64 :=
.seq rawBody71_118 rawBody71_125

def rawBody71_127 : StackLang.HolProg 64 :=
.seq rawBody71_117 rawBody71_126

def rawBody71_128 : StackLang.HolProg 64 :=
.seq rawBody71_116 rawBody71_127

def rawBody71_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody71_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody71_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody71_132 : StackLang.HolProg 64 :=
.seq rawBody71_130 rawBody71_131

def rawBody71_133 : StackLang.HolProg 64 :=
.seq rawBody71_129 rawBody71_132

def rawBody71_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody71_135 : StackLang.HolProg 64 :=
.seq rawBody71_133 rawBody71_134

def rawBody71_136 : StackLang.HolProg 64 :=
.call (some (rawBody71_128, 0, 71, 4)) (Sum.inl 66) (some (rawBody71_135, 71, 5))

def rawBody71_137 : StackLang.HolProg 64 :=
.seq rawBody71_115 rawBody71_136

def rawBody71_138 : StackLang.HolProg 64 :=
.seq rawBody71_114 rawBody71_137

def rawBody71_139 : StackLang.HolProg 64 :=
.seq rawBody71_113 rawBody71_138

def rawBody71_140 : StackLang.HolProg 64 :=
.seq rawBody71_94 rawBody71_139

def rawBody71_141 : StackLang.HolProg 64 :=
.seq rawBody71_91 rawBody71_140

def rawBody71_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody71_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_144 : StackLang.HolProg 64 :=
.seq rawBody71_142 rawBody71_143

def rawBody71_145 : StackLang.HolProg 64 :=
.seq rawBody71_141 rawBody71_144

def rawBody71_146 : StackLang.HolProg 64 :=
.seq rawBody71_90 rawBody71_145

def rawBody71_147 : StackLang.HolProg 64 :=
.seq rawBody71_87 rawBody71_146

def rawBody71_148 : StackLang.HolProg 64 :=
.seq rawBody71_86 rawBody71_147

def rawBody71_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody71_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody71_151 : StackLang.HolProg 64 :=
.seq rawBody71_149 rawBody71_150

def rawBody71_152 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody71_148 rawBody71_151

def rawBody71_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody71_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody71_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody71_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody71_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def rawBody71_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody71_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody71_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody71_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody71_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody71_163 : StackLang.HolProg 64 :=
.seq rawBody71_161 rawBody71_162

def rawBody71_164 : StackLang.HolProg 64 :=
.seq rawBody71_160 rawBody71_163

def rawBody71_165 : StackLang.HolProg 64 :=
.seq rawBody71_159 rawBody71_164

def rawBody71_166 : StackLang.HolProg 64 :=
.seq rawBody71_158 rawBody71_165

def rawBody71_167 : StackLang.HolProg 64 :=
.seq rawBody71_157 rawBody71_166

def rawBody71_168 : StackLang.HolProg 64 :=
.seq rawBody71_156 rawBody71_167

def rawBody71_169 : StackLang.HolProg 64 :=
.seq rawBody71_155 rawBody71_168

def rawBody71_170 : StackLang.HolProg 64 :=
.seq rawBody71_154 rawBody71_169

def rawBody71_171 : StackLang.HolProg 64 :=
.seq rawBody71_153 rawBody71_170

def rawBody71_172 : StackLang.HolProg 64 :=
.seq rawBody71_152 rawBody71_171

def rawBody71_173 : StackLang.HolProg 64 :=
.seq rawBody71_85 rawBody71_172

def rawBody71_174 : StackLang.HolProg 64 :=
.seq rawBody71_84 rawBody71_173

def rawBody71_175 : StackLang.HolProg 64 :=
.seq rawBody71_83 rawBody71_174

def rawBody71_176 : StackLang.HolProg 64 :=
.seq rawBody71_82 rawBody71_175

def rawBody71_177 : StackLang.HolProg 64 :=
.seq rawBody71_81 rawBody71_176

def rawBody71_178 : StackLang.HolProg 64 :=
.seq rawBody71_80 rawBody71_177

def rawBody71_179 : StackLang.HolProg 64 :=
.seq rawBody71_79 rawBody71_178

def rawBody71_180 : StackLang.HolProg 64 :=
.seq rawBody71_78 rawBody71_179

def rawBody71_181 : StackLang.HolProg 64 :=
.seq rawBody71_77 rawBody71_180

def rawBody71_182 : StackLang.HolProg 64 :=
.seq rawBody71_76 rawBody71_181

def rawBody71_183 : StackLang.HolProg 64 :=
.seq rawBody71_75 rawBody71_182

def rawBody71_184 : StackLang.HolProg 64 :=
.seq rawBody71_10 rawBody71_183

def rawBody71_185 : StackLang.HolProg 64 :=
.seq rawBody71_9 rawBody71_184

def rawBody71_186 : StackLang.HolProg 64 :=
.seq rawBody71_8 rawBody71_185

def rawBody71_187 : StackLang.HolProg 64 :=
.seq rawBody71_7 rawBody71_186

def rawBody71_188 : StackLang.HolProg 64 :=
.seq rawBody71_6 rawBody71_187

def rawBody71_189 : StackLang.HolProg 64 :=
.seq rawBody71_5 rawBody71_188

def rawBody71_190 : StackLang.HolProg 64 :=
.seq rawBody71_4 rawBody71_189

def rawBody71_191 : StackLang.HolProg 64 :=
.seq rawBody71_3 rawBody71_190

def rawBody71_192 : StackLang.HolProg 64 :=
.seq rawBody71_2 rawBody71_191

def rawBody71_193 : StackLang.HolProg 64 :=
.seq rawBody71_1 rawBody71_192

def rawBody71_194 : StackLang.HolProg 64 :=
.seq rawBody71_0 rawBody71_193

def raw71 : StackLang.HolProg 64 := rawBody71_194
theorem raw71_eq : StackRawCall.compTop RawInfo.rawInfo (function71 (.list [])).1 = raw71 := by
  kernel_rfl
#print axioms raw71_eq
end InitECandidate.Proofs.BackendStages
