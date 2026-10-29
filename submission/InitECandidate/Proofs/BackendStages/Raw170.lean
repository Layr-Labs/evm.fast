import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function170
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody170_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody170_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody170_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody170_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def rawBody170_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody170_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody170_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody170_9 : StackLang.HolProg 64 :=
.seq rawBody170_7 rawBody170_8

def rawBody170_10 : StackLang.HolProg 64 :=
.seq rawBody170_6 rawBody170_9

def rawBody170_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 190#64)

def rawBody170_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody170_14 : StackLang.HolProg 64 :=
.seq rawBody170_12 rawBody170_13

def rawBody170_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody170_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody170_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody170_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 170 3

def rawBody170_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody170_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody170_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody170_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody170_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody170_25 : StackLang.HolProg 64 :=
.seq rawBody170_23 rawBody170_24

def rawBody170_26 : StackLang.HolProg 64 :=
.seq rawBody170_22 rawBody170_25

def rawBody170_27 : StackLang.HolProg 64 :=
.seq rawBody170_21 rawBody170_26

def rawBody170_28 : StackLang.HolProg 64 :=
.seq rawBody170_20 rawBody170_27

def rawBody170_29 : StackLang.HolProg 64 :=
.seq rawBody170_19 rawBody170_28

def rawBody170_30 : StackLang.HolProg 64 :=
.seq rawBody170_18 rawBody170_29

def rawBody170_31 : StackLang.HolProg 64 :=
.seq rawBody170_17 rawBody170_30

def rawBody170_32 : StackLang.HolProg 64 :=
.seq rawBody170_16 rawBody170_31

def rawBody170_33 : StackLang.HolProg 64 :=
.seq rawBody170_15 rawBody170_32

def rawBody170_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody170_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody170_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody170_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody170_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody170_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody170_42 : StackLang.HolProg 64 :=
.seq rawBody170_40 rawBody170_41

def rawBody170_43 : StackLang.HolProg 64 :=
.seq rawBody170_39 rawBody170_42

def rawBody170_44 : StackLang.HolProg 64 :=
.seq rawBody170_38 rawBody170_43

def rawBody170_45 : StackLang.HolProg 64 :=
.seq rawBody170_37 rawBody170_44

def rawBody170_46 : StackLang.HolProg 64 :=
.seq rawBody170_36 rawBody170_45

def rawBody170_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody170_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody170_49 : StackLang.HolProg 64 :=
.seq rawBody170_47 rawBody170_48

def rawBody170_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody170_51 : StackLang.HolProg 64 :=
.seq rawBody170_49 rawBody170_50

def rawBody170_52 : StackLang.HolProg 64 :=
.call (some (rawBody170_46, 0, 170, 2)) (Sum.inl 159) (some (rawBody170_51, 170, 3))

def rawBody170_53 : StackLang.HolProg 64 :=
.seq rawBody170_35 rawBody170_52

def rawBody170_54 : StackLang.HolProg 64 :=
.seq rawBody170_34 rawBody170_53

def rawBody170_55 : StackLang.HolProg 64 :=
.seq rawBody170_33 rawBody170_54

def rawBody170_56 : StackLang.HolProg 64 :=
.seq rawBody170_14 rawBody170_55

def rawBody170_57 : StackLang.HolProg 64 :=
.seq rawBody170_11 rawBody170_56

def rawBody170_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_60 : StackLang.HolProg 64 :=
.seq rawBody170_58 rawBody170_59

def rawBody170_61 : StackLang.HolProg 64 :=
.seq rawBody170_57 rawBody170_60

def rawBody170_62 : StackLang.HolProg 64 :=
.seq rawBody170_10 rawBody170_61

def rawBody170_63 : StackLang.HolProg 64 :=
.seq rawBody170_5 rawBody170_62

def rawBody170_64 : StackLang.HolProg 64 :=
.seq rawBody170_4 rawBody170_63

def rawBody170_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody170_67 : StackLang.HolProg 64 :=
.seq rawBody170_65 rawBody170_66

def rawBody170_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody170_64 rawBody170_67

def rawBody170_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody170_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody170_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_75 : StackLang.HolProg 64 :=
.seq rawBody170_73 rawBody170_74

def rawBody170_76 : StackLang.HolProg 64 :=
.seq rawBody170_72 rawBody170_75

def rawBody170_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody170_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_80 : StackLang.HolProg 64 :=
.seq rawBody170_78 rawBody170_79

def rawBody170_81 : StackLang.HolProg 64 :=
.seq rawBody170_77 rawBody170_80

def rawBody170_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody170_76 rawBody170_81

def rawBody170_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody170_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody170_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody170_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_91 : StackLang.HolProg 64 :=
.seq rawBody170_89 rawBody170_90

def rawBody170_92 : StackLang.HolProg 64 :=
.seq rawBody170_88 rawBody170_91

def rawBody170_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody170_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_96 : StackLang.HolProg 64 :=
.seq rawBody170_94 rawBody170_95

def rawBody170_97 : StackLang.HolProg 64 :=
.seq rawBody170_93 rawBody170_96

def rawBody170_98 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody170_92 rawBody170_97

def rawBody170_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody170_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 21#64)

def rawBody170_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody170_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody170_105 : StackLang.HolProg 64 :=
.seq rawBody170_103 rawBody170_104

def rawBody170_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 191#64)

def rawBody170_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody170_109 : StackLang.HolProg 64 :=
.seq rawBody170_107 rawBody170_108

def rawBody170_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody170_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody170_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody170_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 170 5

def rawBody170_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody170_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody170_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody170_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody170_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody170_120 : StackLang.HolProg 64 :=
.seq rawBody170_118 rawBody170_119

def rawBody170_121 : StackLang.HolProg 64 :=
.seq rawBody170_117 rawBody170_120

def rawBody170_122 : StackLang.HolProg 64 :=
.seq rawBody170_116 rawBody170_121

def rawBody170_123 : StackLang.HolProg 64 :=
.seq rawBody170_115 rawBody170_122

def rawBody170_124 : StackLang.HolProg 64 :=
.seq rawBody170_114 rawBody170_123

def rawBody170_125 : StackLang.HolProg 64 :=
.seq rawBody170_113 rawBody170_124

def rawBody170_126 : StackLang.HolProg 64 :=
.seq rawBody170_112 rawBody170_125

def rawBody170_127 : StackLang.HolProg 64 :=
.seq rawBody170_111 rawBody170_126

def rawBody170_128 : StackLang.HolProg 64 :=
.seq rawBody170_110 rawBody170_127

def rawBody170_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody170_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody170_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody170_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody170_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody170_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody170_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody170_138 : StackLang.HolProg 64 :=
.seq rawBody170_136 rawBody170_137

def rawBody170_139 : StackLang.HolProg 64 :=
.seq rawBody170_135 rawBody170_138

def rawBody170_140 : StackLang.HolProg 64 :=
.seq rawBody170_134 rawBody170_139

def rawBody170_141 : StackLang.HolProg 64 :=
.seq rawBody170_133 rawBody170_140

def rawBody170_142 : StackLang.HolProg 64 :=
.seq rawBody170_132 rawBody170_141

def rawBody170_143 : StackLang.HolProg 64 :=
.seq rawBody170_131 rawBody170_142

def rawBody170_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody170_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody170_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody170_147 : StackLang.HolProg 64 :=
.seq rawBody170_145 rawBody170_146

def rawBody170_148 : StackLang.HolProg 64 :=
.seq rawBody170_144 rawBody170_147

def rawBody170_149 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody170_150 : StackLang.HolProg 64 :=
.seq rawBody170_148 rawBody170_149

def rawBody170_151 : StackLang.HolProg 64 :=
.call (some (rawBody170_143, 0, 170, 4)) (Sum.inl 159) (some (rawBody170_150, 170, 5))

def rawBody170_152 : StackLang.HolProg 64 :=
.seq rawBody170_130 rawBody170_151

def rawBody170_153 : StackLang.HolProg 64 :=
.seq rawBody170_129 rawBody170_152

def rawBody170_154 : StackLang.HolProg 64 :=
.seq rawBody170_128 rawBody170_153

def rawBody170_155 : StackLang.HolProg 64 :=
.seq rawBody170_109 rawBody170_154

def rawBody170_156 : StackLang.HolProg 64 :=
.seq rawBody170_106 rawBody170_155

def rawBody170_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_159 : StackLang.HolProg 64 :=
.seq rawBody170_157 rawBody170_158

def rawBody170_160 : StackLang.HolProg 64 :=
.seq rawBody170_156 rawBody170_159

def rawBody170_161 : StackLang.HolProg 64 :=
.seq rawBody170_105 rawBody170_160

def rawBody170_162 : StackLang.HolProg 64 :=
.seq rawBody170_102 rawBody170_161

def rawBody170_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody170_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) rawBody170_162 rawBody170_163

def rawBody170_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody170_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody170_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody170_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody170_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody170_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody170_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody170_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody170_182 : StackLang.HolProg 64 :=
.seq rawBody170_180 rawBody170_181

def rawBody170_183 : StackLang.HolProg 64 :=
.seq rawBody170_179 rawBody170_182

def rawBody170_184 : StackLang.HolProg 64 :=
.seq rawBody170_178 rawBody170_183

def rawBody170_185 : StackLang.HolProg 64 :=
.seq rawBody170_177 rawBody170_184

def rawBody170_186 : StackLang.HolProg 64 :=
.seq rawBody170_176 rawBody170_185

def rawBody170_187 : StackLang.HolProg 64 :=
.seq rawBody170_175 rawBody170_186

def rawBody170_188 : StackLang.HolProg 64 :=
.seq rawBody170_174 rawBody170_187

def rawBody170_189 : StackLang.HolProg 64 :=
.seq rawBody170_173 rawBody170_188

def rawBody170_190 : StackLang.HolProg 64 :=
.seq rawBody170_172 rawBody170_189

def rawBody170_191 : StackLang.HolProg 64 :=
.seq rawBody170_171 rawBody170_190

def rawBody170_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody170_194 : StackLang.HolProg 64 :=
.seq rawBody170_192 rawBody170_193

def rawBody170_195 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody170_191 rawBody170_194

def rawBody170_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_198 : StackLang.HolProg 64 :=
.seq rawBody170_196 rawBody170_197

def rawBody170_199 : StackLang.HolProg 64 :=
.seq rawBody170_195 rawBody170_198

def rawBody170_200 : StackLang.HolProg 64 :=
.seq rawBody170_170 rawBody170_199

def rawBody170_201 : StackLang.HolProg 64 :=
.loop rawBody170_200

def rawBody170_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody170_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody170_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody170_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody170_206 : StackLang.HolProg 64 :=
.seq rawBody170_204 rawBody170_205

def rawBody170_207 : StackLang.HolProg 64 :=
.seq rawBody170_203 rawBody170_206

def rawBody170_208 : StackLang.HolProg 64 :=
.seq rawBody170_202 rawBody170_207

def rawBody170_209 : StackLang.HolProg 64 :=
.seq rawBody170_201 rawBody170_208

def rawBody170_210 : StackLang.HolProg 64 :=
.seq rawBody170_169 rawBody170_209

def rawBody170_211 : StackLang.HolProg 64 :=
.seq rawBody170_168 rawBody170_210

def rawBody170_212 : StackLang.HolProg 64 :=
.seq rawBody170_167 rawBody170_211

def rawBody170_213 : StackLang.HolProg 64 :=
.seq rawBody170_166 rawBody170_212

def rawBody170_214 : StackLang.HolProg 64 :=
.seq rawBody170_165 rawBody170_213

def rawBody170_215 : StackLang.HolProg 64 :=
.seq rawBody170_164 rawBody170_214

def rawBody170_216 : StackLang.HolProg 64 :=
.seq rawBody170_101 rawBody170_215

def rawBody170_217 : StackLang.HolProg 64 :=
.seq rawBody170_100 rawBody170_216

def rawBody170_218 : StackLang.HolProg 64 :=
.seq rawBody170_99 rawBody170_217

def rawBody170_219 : StackLang.HolProg 64 :=
.seq rawBody170_98 rawBody170_218

def rawBody170_220 : StackLang.HolProg 64 :=
.seq rawBody170_87 rawBody170_219

def rawBody170_221 : StackLang.HolProg 64 :=
.seq rawBody170_86 rawBody170_220

def rawBody170_222 : StackLang.HolProg 64 :=
.seq rawBody170_85 rawBody170_221

def rawBody170_223 : StackLang.HolProg 64 :=
.seq rawBody170_84 rawBody170_222

def rawBody170_224 : StackLang.HolProg 64 :=
.seq rawBody170_83 rawBody170_223

def rawBody170_225 : StackLang.HolProg 64 :=
.seq rawBody170_82 rawBody170_224

def rawBody170_226 : StackLang.HolProg 64 :=
.seq rawBody170_71 rawBody170_225

def rawBody170_227 : StackLang.HolProg 64 :=
.seq rawBody170_70 rawBody170_226

def rawBody170_228 : StackLang.HolProg 64 :=
.seq rawBody170_69 rawBody170_227

def rawBody170_229 : StackLang.HolProg 64 :=
.seq rawBody170_68 rawBody170_228

def rawBody170_230 : StackLang.HolProg 64 :=
.seq rawBody170_3 rawBody170_229

def rawBody170_231 : StackLang.HolProg 64 :=
.seq rawBody170_2 rawBody170_230

def rawBody170_232 : StackLang.HolProg 64 :=
.seq rawBody170_1 rawBody170_231

def rawBody170_233 : StackLang.HolProg 64 :=
.seq rawBody170_0 rawBody170_232

def raw170 : StackLang.HolProg 64 := rawBody170_233
theorem raw170_eq : StackRawCall.compTop RawInfo.rawInfo (function170 (.list [])).1 = raw170 := by
  kernel_rfl
#print axioms raw170_eq
end InitECandidate.Proofs.BackendStages
