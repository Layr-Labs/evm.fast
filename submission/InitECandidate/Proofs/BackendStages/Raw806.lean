import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function806
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody806_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody806_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody806_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody806_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 192#64)

def rawBody806_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody806_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 47#64)

def rawBody806_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody806_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody806_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody806_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody806_13 : StackLang.HolProg 64 :=
.seq rawBody806_11 rawBody806_12

def rawBody806_14 : StackLang.HolProg 64 :=
.seq rawBody806_10 rawBody806_13

def rawBody806_15 : StackLang.HolProg 64 :=
.seq rawBody806_9 rawBody806_14

def rawBody806_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3950#64)

def rawBody806_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody806_19 : StackLang.HolProg 64 :=
.seq rawBody806_17 rawBody806_18

def rawBody806_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody806_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody806_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody806_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 3

def rawBody806_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody806_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody806_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody806_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody806_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody806_30 : StackLang.HolProg 64 :=
.seq rawBody806_28 rawBody806_29

def rawBody806_31 : StackLang.HolProg 64 :=
.seq rawBody806_27 rawBody806_30

def rawBody806_32 : StackLang.HolProg 64 :=
.seq rawBody806_26 rawBody806_31

def rawBody806_33 : StackLang.HolProg 64 :=
.seq rawBody806_25 rawBody806_32

def rawBody806_34 : StackLang.HolProg 64 :=
.seq rawBody806_24 rawBody806_33

def rawBody806_35 : StackLang.HolProg 64 :=
.seq rawBody806_23 rawBody806_34

def rawBody806_36 : StackLang.HolProg 64 :=
.seq rawBody806_22 rawBody806_35

def rawBody806_37 : StackLang.HolProg 64 :=
.seq rawBody806_21 rawBody806_36

def rawBody806_38 : StackLang.HolProg 64 :=
.seq rawBody806_20 rawBody806_37

def rawBody806_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody806_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody806_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody806_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody806_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody806_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody806_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody806_48 : StackLang.HolProg 64 :=
.seq rawBody806_46 rawBody806_47

def rawBody806_49 : StackLang.HolProg 64 :=
.seq rawBody806_45 rawBody806_48

def rawBody806_50 : StackLang.HolProg 64 :=
.seq rawBody806_44 rawBody806_49

def rawBody806_51 : StackLang.HolProg 64 :=
.seq rawBody806_43 rawBody806_50

def rawBody806_52 : StackLang.HolProg 64 :=
.seq rawBody806_42 rawBody806_51

def rawBody806_53 : StackLang.HolProg 64 :=
.seq rawBody806_41 rawBody806_52

def rawBody806_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody806_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody806_56 : StackLang.HolProg 64 :=
.seq rawBody806_54 rawBody806_55

def rawBody806_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody806_58 : StackLang.HolProg 64 :=
.seq rawBody806_56 rawBody806_57

def rawBody806_59 : StackLang.HolProg 64 :=
.call (some (rawBody806_53, 0, 806, 2)) (Sum.inl 80) (some (rawBody806_58, 806, 3))

def rawBody806_60 : StackLang.HolProg 64 :=
.seq rawBody806_40 rawBody806_59

def rawBody806_61 : StackLang.HolProg 64 :=
.seq rawBody806_39 rawBody806_60

def rawBody806_62 : StackLang.HolProg 64 :=
.seq rawBody806_38 rawBody806_61

def rawBody806_63 : StackLang.HolProg 64 :=
.seq rawBody806_19 rawBody806_62

def rawBody806_64 : StackLang.HolProg 64 :=
.seq rawBody806_16 rawBody806_63

def rawBody806_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody806_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody806_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody806_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody806_72 : StackLang.HolProg 64 :=
.seq rawBody806_70 rawBody806_71

def rawBody806_73 : StackLang.HolProg 64 :=
.seq rawBody806_69 rawBody806_72

def rawBody806_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3951#64)

def rawBody806_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody806_77 : StackLang.HolProg 64 :=
.seq rawBody806_75 rawBody806_76

def rawBody806_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody806_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody806_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody806_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 5

def rawBody806_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody806_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody806_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody806_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody806_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody806_88 : StackLang.HolProg 64 :=
.seq rawBody806_86 rawBody806_87

def rawBody806_89 : StackLang.HolProg 64 :=
.seq rawBody806_85 rawBody806_88

def rawBody806_90 : StackLang.HolProg 64 :=
.seq rawBody806_84 rawBody806_89

def rawBody806_91 : StackLang.HolProg 64 :=
.seq rawBody806_83 rawBody806_90

def rawBody806_92 : StackLang.HolProg 64 :=
.seq rawBody806_82 rawBody806_91

def rawBody806_93 : StackLang.HolProg 64 :=
.seq rawBody806_81 rawBody806_92

def rawBody806_94 : StackLang.HolProg 64 :=
.seq rawBody806_80 rawBody806_93

def rawBody806_95 : StackLang.HolProg 64 :=
.seq rawBody806_79 rawBody806_94

def rawBody806_96 : StackLang.HolProg 64 :=
.seq rawBody806_78 rawBody806_95

def rawBody806_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody806_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody806_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody806_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody806_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody806_104 : StackLang.HolProg 64 :=
.seq rawBody806_102 rawBody806_103

def rawBody806_105 : StackLang.HolProg 64 :=
.seq rawBody806_101 rawBody806_104

def rawBody806_106 : StackLang.HolProg 64 :=
.seq rawBody806_100 rawBody806_105

def rawBody806_107 : StackLang.HolProg 64 :=
.seq rawBody806_99 rawBody806_106

def rawBody806_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody806_109 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody806_110 : StackLang.HolProg 64 :=
.seq rawBody806_108 rawBody806_109

def rawBody806_111 : StackLang.HolProg 64 :=
.call (some (rawBody806_107, 0, 806, 4)) (Sum.inl 766) (some (rawBody806_110, 806, 5))

def rawBody806_112 : StackLang.HolProg 64 :=
.seq rawBody806_98 rawBody806_111

def rawBody806_113 : StackLang.HolProg 64 :=
.seq rawBody806_97 rawBody806_112

def rawBody806_114 : StackLang.HolProg 64 :=
.seq rawBody806_96 rawBody806_113

def rawBody806_115 : StackLang.HolProg 64 :=
.seq rawBody806_77 rawBody806_114

def rawBody806_116 : StackLang.HolProg 64 :=
.seq rawBody806_74 rawBody806_115

def rawBody806_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody806_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody806_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody806_122 : StackLang.HolProg 64 :=
.seq rawBody806_120 rawBody806_121

def rawBody806_123 : StackLang.HolProg 64 :=
.seq rawBody806_119 rawBody806_122

def rawBody806_124 : StackLang.HolProg 64 :=
.seq rawBody806_118 rawBody806_123

def rawBody806_125 : StackLang.HolProg 64 :=
.seq rawBody806_117 rawBody806_124

def rawBody806_126 : StackLang.HolProg 64 :=
.seq rawBody806_116 rawBody806_125

def rawBody806_127 : StackLang.HolProg 64 :=
.seq rawBody806_73 rawBody806_126

def rawBody806_128 : StackLang.HolProg 64 :=
.seq rawBody806_68 rawBody806_127

def rawBody806_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_130 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody806_128 rawBody806_129

def rawBody806_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_134 : StackLang.HolProg 64 :=
.seq rawBody806_132 rawBody806_133

def rawBody806_135 : StackLang.HolProg 64 :=
.seq rawBody806_131 rawBody806_134

def rawBody806_136 : StackLang.HolProg 64 :=
.seq rawBody806_130 rawBody806_135

def rawBody806_137 : StackLang.HolProg 64 :=
.seq rawBody806_67 rawBody806_136

def rawBody806_138 : StackLang.HolProg 64 :=
.seq rawBody806_66 rawBody806_137

def rawBody806_139 : StackLang.HolProg 64 :=
.seq rawBody806_65 rawBody806_138

def rawBody806_140 : StackLang.HolProg 64 :=
.seq rawBody806_64 rawBody806_139

def rawBody806_141 : StackLang.HolProg 64 :=
.seq rawBody806_15 rawBody806_140

def rawBody806_142 : StackLang.HolProg 64 :=
.seq rawBody806_8 rawBody806_141

def rawBody806_143 : StackLang.HolProg 64 :=
.seq rawBody806_7 rawBody806_142

def rawBody806_144 : StackLang.HolProg 64 :=
.seq rawBody806_6 rawBody806_143

def rawBody806_145 : StackLang.HolProg 64 :=
.seq rawBody806_5 rawBody806_144

def rawBody806_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody806_148 : StackLang.HolProg 64 :=
.seq rawBody806_146 rawBody806_147

def rawBody806_149 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody806_145 rawBody806_148

def rawBody806_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody806_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody806_153 : StackLang.HolProg 64 :=
.seq rawBody806_151 rawBody806_152

def rawBody806_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3952#64)

def rawBody806_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody806_157 : StackLang.HolProg 64 :=
.seq rawBody806_155 rawBody806_156

def rawBody806_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody806_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody806_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody806_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 7

def rawBody806_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody806_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody806_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody806_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody806_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody806_168 : StackLang.HolProg 64 :=
.seq rawBody806_166 rawBody806_167

def rawBody806_169 : StackLang.HolProg 64 :=
.seq rawBody806_165 rawBody806_168

def rawBody806_170 : StackLang.HolProg 64 :=
.seq rawBody806_164 rawBody806_169

def rawBody806_171 : StackLang.HolProg 64 :=
.seq rawBody806_163 rawBody806_170

def rawBody806_172 : StackLang.HolProg 64 :=
.seq rawBody806_162 rawBody806_171

def rawBody806_173 : StackLang.HolProg 64 :=
.seq rawBody806_161 rawBody806_172

def rawBody806_174 : StackLang.HolProg 64 :=
.seq rawBody806_160 rawBody806_173

def rawBody806_175 : StackLang.HolProg 64 :=
.seq rawBody806_159 rawBody806_174

def rawBody806_176 : StackLang.HolProg 64 :=
.seq rawBody806_158 rawBody806_175

def rawBody806_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody806_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody806_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody806_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody806_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody806_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody806_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody806_186 : StackLang.HolProg 64 :=
.seq rawBody806_184 rawBody806_185

def rawBody806_187 : StackLang.HolProg 64 :=
.seq rawBody806_183 rawBody806_186

def rawBody806_188 : StackLang.HolProg 64 :=
.seq rawBody806_182 rawBody806_187

def rawBody806_189 : StackLang.HolProg 64 :=
.seq rawBody806_181 rawBody806_188

def rawBody806_190 : StackLang.HolProg 64 :=
.seq rawBody806_180 rawBody806_189

def rawBody806_191 : StackLang.HolProg 64 :=
.seq rawBody806_179 rawBody806_190

def rawBody806_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody806_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody806_194 : StackLang.HolProg 64 :=
.seq rawBody806_192 rawBody806_193

def rawBody806_195 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody806_196 : StackLang.HolProg 64 :=
.seq rawBody806_194 rawBody806_195

def rawBody806_197 : StackLang.HolProg 64 :=
.call (some (rawBody806_191, 0, 806, 6)) (Sum.inl 805) (some (rawBody806_196, 806, 7))

def rawBody806_198 : StackLang.HolProg 64 :=
.seq rawBody806_178 rawBody806_197

def rawBody806_199 : StackLang.HolProg 64 :=
.seq rawBody806_177 rawBody806_198

def rawBody806_200 : StackLang.HolProg 64 :=
.seq rawBody806_176 rawBody806_199

def rawBody806_201 : StackLang.HolProg 64 :=
.seq rawBody806_157 rawBody806_200

def rawBody806_202 : StackLang.HolProg 64 :=
.seq rawBody806_154 rawBody806_201

def rawBody806_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody806_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody806_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody806_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody806_211 : StackLang.HolProg 64 :=
.seq rawBody806_209 rawBody806_210

def rawBody806_212 : StackLang.HolProg 64 :=
.seq rawBody806_208 rawBody806_211

def rawBody806_213 : StackLang.HolProg 64 :=
.seq rawBody806_207 rawBody806_212

def rawBody806_214 : StackLang.HolProg 64 :=
.seq rawBody806_206 rawBody806_213

def rawBody806_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_216 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody806_214 rawBody806_215

def rawBody806_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody806_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody806_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody806_222 : StackLang.HolProg 64 :=
.seq rawBody806_220 rawBody806_221

def rawBody806_223 : StackLang.HolProg 64 :=
.seq rawBody806_219 rawBody806_222

def rawBody806_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3953#64)

def rawBody806_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody806_227 : StackLang.HolProg 64 :=
.seq rawBody806_225 rawBody806_226

def rawBody806_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody806_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody806_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody806_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 9

def rawBody806_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody806_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody806_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody806_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody806_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody806_238 : StackLang.HolProg 64 :=
.seq rawBody806_236 rawBody806_237

def rawBody806_239 : StackLang.HolProg 64 :=
.seq rawBody806_235 rawBody806_238

def rawBody806_240 : StackLang.HolProg 64 :=
.seq rawBody806_234 rawBody806_239

def rawBody806_241 : StackLang.HolProg 64 :=
.seq rawBody806_233 rawBody806_240

def rawBody806_242 : StackLang.HolProg 64 :=
.seq rawBody806_232 rawBody806_241

def rawBody806_243 : StackLang.HolProg 64 :=
.seq rawBody806_231 rawBody806_242

def rawBody806_244 : StackLang.HolProg 64 :=
.seq rawBody806_230 rawBody806_243

def rawBody806_245 : StackLang.HolProg 64 :=
.seq rawBody806_229 rawBody806_244

def rawBody806_246 : StackLang.HolProg 64 :=
.seq rawBody806_228 rawBody806_245

def rawBody806_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody806_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody806_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody806_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody806_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody806_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody806_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody806_256 : StackLang.HolProg 64 :=
.seq rawBody806_254 rawBody806_255

def rawBody806_257 : StackLang.HolProg 64 :=
.seq rawBody806_253 rawBody806_256

def rawBody806_258 : StackLang.HolProg 64 :=
.seq rawBody806_252 rawBody806_257

def rawBody806_259 : StackLang.HolProg 64 :=
.seq rawBody806_251 rawBody806_258

def rawBody806_260 : StackLang.HolProg 64 :=
.seq rawBody806_250 rawBody806_259

def rawBody806_261 : StackLang.HolProg 64 :=
.seq rawBody806_249 rawBody806_260

def rawBody806_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody806_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody806_264 : StackLang.HolProg 64 :=
.seq rawBody806_262 rawBody806_263

def rawBody806_265 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody806_266 : StackLang.HolProg 64 :=
.seq rawBody806_264 rawBody806_265

def rawBody806_267 : StackLang.HolProg 64 :=
.call (some (rawBody806_261, 0, 806, 8)) (Sum.inl 767) (some (rawBody806_266, 806, 9))

def rawBody806_268 : StackLang.HolProg 64 :=
.seq rawBody806_248 rawBody806_267

def rawBody806_269 : StackLang.HolProg 64 :=
.seq rawBody806_247 rawBody806_268

def rawBody806_270 : StackLang.HolProg 64 :=
.seq rawBody806_246 rawBody806_269

def rawBody806_271 : StackLang.HolProg 64 :=
.seq rawBody806_227 rawBody806_270

def rawBody806_272 : StackLang.HolProg 64 :=
.seq rawBody806_224 rawBody806_271

def rawBody806_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody806_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody806_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody806_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody806_281 : StackLang.HolProg 64 :=
.seq rawBody806_279 rawBody806_280

def rawBody806_282 : StackLang.HolProg 64 :=
.seq rawBody806_278 rawBody806_281

def rawBody806_283 : StackLang.HolProg 64 :=
.seq rawBody806_277 rawBody806_282

def rawBody806_284 : StackLang.HolProg 64 :=
.seq rawBody806_276 rawBody806_283

def rawBody806_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_286 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody806_284 rawBody806_285

def rawBody806_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody806_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody806_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody806_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 777

def rawBody806_292 : StackLang.HolProg 64 :=
.seq rawBody806_290 rawBody806_291

def rawBody806_293 : StackLang.HolProg 64 :=
.seq rawBody806_289 rawBody806_292

def rawBody806_294 : StackLang.HolProg 64 :=
.seq rawBody806_288 rawBody806_293

def rawBody806_295 : StackLang.HolProg 64 :=
.seq rawBody806_287 rawBody806_294

def rawBody806_296 : StackLang.HolProg 64 :=
.seq rawBody806_286 rawBody806_295

def rawBody806_297 : StackLang.HolProg 64 :=
.seq rawBody806_275 rawBody806_296

def rawBody806_298 : StackLang.HolProg 64 :=
.seq rawBody806_274 rawBody806_297

def rawBody806_299 : StackLang.HolProg 64 :=
.seq rawBody806_273 rawBody806_298

def rawBody806_300 : StackLang.HolProg 64 :=
.seq rawBody806_272 rawBody806_299

def rawBody806_301 : StackLang.HolProg 64 :=
.seq rawBody806_223 rawBody806_300

def rawBody806_302 : StackLang.HolProg 64 :=
.seq rawBody806_218 rawBody806_301

def rawBody806_303 : StackLang.HolProg 64 :=
.seq rawBody806_217 rawBody806_302

def rawBody806_304 : StackLang.HolProg 64 :=
.seq rawBody806_216 rawBody806_303

def rawBody806_305 : StackLang.HolProg 64 :=
.seq rawBody806_205 rawBody806_304

def rawBody806_306 : StackLang.HolProg 64 :=
.seq rawBody806_204 rawBody806_305

def rawBody806_307 : StackLang.HolProg 64 :=
.seq rawBody806_203 rawBody806_306

def rawBody806_308 : StackLang.HolProg 64 :=
.seq rawBody806_202 rawBody806_307

def rawBody806_309 : StackLang.HolProg 64 :=
.seq rawBody806_153 rawBody806_308

def rawBody806_310 : StackLang.HolProg 64 :=
.seq rawBody806_150 rawBody806_309

def rawBody806_311 : StackLang.HolProg 64 :=
.seq rawBody806_149 rawBody806_310

def rawBody806_312 : StackLang.HolProg 64 :=
.seq rawBody806_4 rawBody806_311

def rawBody806_313 : StackLang.HolProg 64 :=
.seq rawBody806_3 rawBody806_312

def rawBody806_314 : StackLang.HolProg 64 :=
.seq rawBody806_2 rawBody806_313

def rawBody806_315 : StackLang.HolProg 64 :=
.seq rawBody806_1 rawBody806_314

def rawBody806_316 : StackLang.HolProg 64 :=
.seq rawBody806_0 rawBody806_315

def raw806 : StackLang.HolProg 64 := rawBody806_316
theorem raw806_eq : StackRawCall.compTop RawInfo.rawInfo (function806 (.list [])).1 = raw806 := by
  kernel_rfl
#print axioms raw806_eq
end InitECandidate.Proofs.BackendStages
