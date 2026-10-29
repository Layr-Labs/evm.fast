import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function658
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody658_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody658_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody658_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2745#64)

def rawBody658_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody658_5 : StackLang.HolProg 64 :=
.seq rawBody658_3 rawBody658_4

def rawBody658_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody658_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody658_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody658_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 658 3

def rawBody658_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody658_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody658_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody658_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody658_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody658_16 : StackLang.HolProg 64 :=
.seq rawBody658_14 rawBody658_15

def rawBody658_17 : StackLang.HolProg 64 :=
.seq rawBody658_13 rawBody658_16

def rawBody658_18 : StackLang.HolProg 64 :=
.seq rawBody658_12 rawBody658_17

def rawBody658_19 : StackLang.HolProg 64 :=
.seq rawBody658_11 rawBody658_18

def rawBody658_20 : StackLang.HolProg 64 :=
.seq rawBody658_10 rawBody658_19

def rawBody658_21 : StackLang.HolProg 64 :=
.seq rawBody658_9 rawBody658_20

def rawBody658_22 : StackLang.HolProg 64 :=
.seq rawBody658_8 rawBody658_21

def rawBody658_23 : StackLang.HolProg 64 :=
.seq rawBody658_7 rawBody658_22

def rawBody658_24 : StackLang.HolProg 64 :=
.seq rawBody658_6 rawBody658_23

def rawBody658_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody658_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody658_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody658_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody658_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody658_32 : StackLang.HolProg 64 :=
.seq rawBody658_30 rawBody658_31

def rawBody658_33 : StackLang.HolProg 64 :=
.seq rawBody658_29 rawBody658_32

def rawBody658_34 : StackLang.HolProg 64 :=
.seq rawBody658_28 rawBody658_33

def rawBody658_35 : StackLang.HolProg 64 :=
.seq rawBody658_27 rawBody658_34

def rawBody658_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody658_38 : StackLang.HolProg 64 :=
.seq rawBody658_36 rawBody658_37

def rawBody658_39 : StackLang.HolProg 64 :=
.call (some (rawBody658_35, 0, 658, 2)) (Sum.inl 116) (some (rawBody658_38, 658, 3))

def rawBody658_40 : StackLang.HolProg 64 :=
.seq rawBody658_26 rawBody658_39

def rawBody658_41 : StackLang.HolProg 64 :=
.seq rawBody658_25 rawBody658_40

def rawBody658_42 : StackLang.HolProg 64 :=
.seq rawBody658_24 rawBody658_41

def rawBody658_43 : StackLang.HolProg 64 :=
.seq rawBody658_5 rawBody658_42

def rawBody658_44 : StackLang.HolProg 64 :=
.seq rawBody658_2 rawBody658_43

def rawBody658_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody658_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody658_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def rawBody658_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def rawBody658_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def rawBody658_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def rawBody658_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody658_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody658_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody658_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody658_55 : StackLang.HolProg 64 :=
.seq rawBody658_53 rawBody658_54

def rawBody658_56 : StackLang.HolProg 64 :=
.seq rawBody658_52 rawBody658_55

def rawBody658_57 : StackLang.HolProg 64 :=
.seq rawBody658_51 rawBody658_56

def rawBody658_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2746#64)

def rawBody658_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody658_61 : StackLang.HolProg 64 :=
.seq rawBody658_59 rawBody658_60

def rawBody658_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody658_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody658_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody658_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 658 5

def rawBody658_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody658_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody658_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody658_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody658_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody658_72 : StackLang.HolProg 64 :=
.seq rawBody658_70 rawBody658_71

def rawBody658_73 : StackLang.HolProg 64 :=
.seq rawBody658_69 rawBody658_72

def rawBody658_74 : StackLang.HolProg 64 :=
.seq rawBody658_68 rawBody658_73

def rawBody658_75 : StackLang.HolProg 64 :=
.seq rawBody658_67 rawBody658_74

def rawBody658_76 : StackLang.HolProg 64 :=
.seq rawBody658_66 rawBody658_75

def rawBody658_77 : StackLang.HolProg 64 :=
.seq rawBody658_65 rawBody658_76

def rawBody658_78 : StackLang.HolProg 64 :=
.seq rawBody658_64 rawBody658_77

def rawBody658_79 : StackLang.HolProg 64 :=
.seq rawBody658_63 rawBody658_78

def rawBody658_80 : StackLang.HolProg 64 :=
.seq rawBody658_62 rawBody658_79

def rawBody658_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody658_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody658_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody658_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody658_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody658_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody658_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody658_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody658_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody658_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody658_93 : StackLang.HolProg 64 :=
.seq rawBody658_91 rawBody658_92

def rawBody658_94 : StackLang.HolProg 64 :=
.seq rawBody658_90 rawBody658_93

def rawBody658_95 : StackLang.HolProg 64 :=
.seq rawBody658_89 rawBody658_94

def rawBody658_96 : StackLang.HolProg 64 :=
.seq rawBody658_88 rawBody658_95

def rawBody658_97 : StackLang.HolProg 64 :=
.seq rawBody658_87 rawBody658_96

def rawBody658_98 : StackLang.HolProg 64 :=
.seq rawBody658_86 rawBody658_97

def rawBody658_99 : StackLang.HolProg 64 :=
.seq rawBody658_85 rawBody658_98

def rawBody658_100 : StackLang.HolProg 64 :=
.seq rawBody658_84 rawBody658_99

def rawBody658_101 : StackLang.HolProg 64 :=
.seq rawBody658_83 rawBody658_100

def rawBody658_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody658_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody658_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody658_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody658_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody658_107 : StackLang.HolProg 64 :=
.seq rawBody658_105 rawBody658_106

def rawBody658_108 : StackLang.HolProg 64 :=
.seq rawBody658_104 rawBody658_107

def rawBody658_109 : StackLang.HolProg 64 :=
.seq rawBody658_103 rawBody658_108

def rawBody658_110 : StackLang.HolProg 64 :=
.seq rawBody658_102 rawBody658_109

def rawBody658_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody658_112 : StackLang.HolProg 64 :=
.seq rawBody658_110 rawBody658_111

def rawBody658_113 : StackLang.HolProg 64 :=
.call (some (rawBody658_101, 0, 658, 4)) (Sum.inl 106) (some (rawBody658_112, 658, 5))

def rawBody658_114 : StackLang.HolProg 64 :=
.seq rawBody658_82 rawBody658_113

def rawBody658_115 : StackLang.HolProg 64 :=
.seq rawBody658_81 rawBody658_114

def rawBody658_116 : StackLang.HolProg 64 :=
.seq rawBody658_80 rawBody658_115

def rawBody658_117 : StackLang.HolProg 64 :=
.seq rawBody658_61 rawBody658_116

def rawBody658_118 : StackLang.HolProg 64 :=
.seq rawBody658_58 rawBody658_117

def rawBody658_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody658_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody658_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody658_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody658_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def rawBody658_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def rawBody658_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def rawBody658_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def rawBody658_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody658_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def rawBody658_132 : StackLang.HolProg 64 :=
.seq rawBody658_130 rawBody658_131

def rawBody658_133 : StackLang.HolProg 64 :=
.seq rawBody658_129 rawBody658_132

def rawBody658_134 : StackLang.HolProg 64 :=
.seq rawBody658_128 rawBody658_133

def rawBody658_135 : StackLang.HolProg 64 :=
.seq rawBody658_127 rawBody658_134

def rawBody658_136 : StackLang.HolProg 64 :=
.seq rawBody658_126 rawBody658_135

def rawBody658_137 : StackLang.HolProg 64 :=
.seq rawBody658_125 rawBody658_136

def rawBody658_138 : StackLang.HolProg 64 :=
.seq rawBody658_124 rawBody658_137

def rawBody658_139 : StackLang.HolProg 64 :=
.seq rawBody658_123 rawBody658_138

def rawBody658_140 : StackLang.HolProg 64 :=
.seq rawBody658_122 rawBody658_139

def rawBody658_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody658_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody658_140 rawBody658_141

def rawBody658_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody658_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody658_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody658_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody658_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody658_148 : StackLang.HolProg 64 :=
.seq rawBody658_146 rawBody658_147

def rawBody658_149 : StackLang.HolProg 64 :=
.seq rawBody658_145 rawBody658_148

def rawBody658_150 : StackLang.HolProg 64 :=
.seq rawBody658_144 rawBody658_149

def rawBody658_151 : StackLang.HolProg 64 :=
.seq rawBody658_143 rawBody658_150

def rawBody658_152 : StackLang.HolProg 64 :=
.seq rawBody658_142 rawBody658_151

def rawBody658_153 : StackLang.HolProg 64 :=
.seq rawBody658_121 rawBody658_152

def rawBody658_154 : StackLang.HolProg 64 :=
.seq rawBody658_120 rawBody658_153

def rawBody658_155 : StackLang.HolProg 64 :=
.seq rawBody658_119 rawBody658_154

def rawBody658_156 : StackLang.HolProg 64 :=
.seq rawBody658_118 rawBody658_155

def rawBody658_157 : StackLang.HolProg 64 :=
.seq rawBody658_57 rawBody658_156

def rawBody658_158 : StackLang.HolProg 64 :=
.seq rawBody658_50 rawBody658_157

def rawBody658_159 : StackLang.HolProg 64 :=
.seq rawBody658_49 rawBody658_158

def rawBody658_160 : StackLang.HolProg 64 :=
.seq rawBody658_48 rawBody658_159

def rawBody658_161 : StackLang.HolProg 64 :=
.seq rawBody658_47 rawBody658_160

def rawBody658_162 : StackLang.HolProg 64 :=
.seq rawBody658_46 rawBody658_161

def rawBody658_163 : StackLang.HolProg 64 :=
.seq rawBody658_45 rawBody658_162

def rawBody658_164 : StackLang.HolProg 64 :=
.seq rawBody658_44 rawBody658_163

def rawBody658_165 : StackLang.HolProg 64 :=
.seq rawBody658_1 rawBody658_164

def rawBody658_166 : StackLang.HolProg 64 :=
.seq rawBody658_0 rawBody658_165

def raw658 : StackLang.HolProg 64 := rawBody658_166
theorem raw658_eq : StackRawCall.compTop RawInfo.rawInfo (function658 (.list [])).1 = raw658 := by
  kernel_rfl
#print axioms raw658_eq
end InitECandidate.Proofs.BackendStages
