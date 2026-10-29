import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw315
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody315_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 16

def AllocBody315_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody315_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody315_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def AllocBody315_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 15

def AllocBody315_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 12

def AllocBody315_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 10

def AllocBody315_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 11

def AllocBody315_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 9

def AllocBody315_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 14

def AllocBody315_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody315_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def AllocBody315_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 13

def AllocBody315_15 : StackLang.HolProg 64 :=
.seq AllocBody315_13 AllocBody315_14

def AllocBody315_16 : StackLang.HolProg 64 :=
.seq AllocBody315_12 AllocBody315_15

def AllocBody315_17 : StackLang.HolProg 64 :=
.seq AllocBody315_11 AllocBody315_16

def AllocBody315_18 : StackLang.HolProg 64 :=
.seq AllocBody315_10 AllocBody315_17

def AllocBody315_19 : StackLang.HolProg 64 :=
.seq AllocBody315_9 AllocBody315_18

def AllocBody315_20 : StackLang.HolProg 64 :=
.seq AllocBody315_8 AllocBody315_19

def AllocBody315_21 : StackLang.HolProg 64 :=
.seq AllocBody315_7 AllocBody315_20

def AllocBody315_22 : StackLang.HolProg 64 :=
.seq AllocBody315_6 AllocBody315_21

def AllocBody315_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody315_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody315_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody315_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody315_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody315_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody315_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 11

def AllocBody315_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody315_35 : StackLang.HolProg 64 :=
.seq AllocBody315_33 AllocBody315_34

def AllocBody315_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody315_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 13

def AllocBody315_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody315_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 14

def AllocBody315_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def AllocBody315_41 : StackLang.HolProg 64 :=
.seq AllocBody315_39 AllocBody315_40

def AllocBody315_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 14

def AllocBody315_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def AllocBody315_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 11

def AllocBody315_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def AllocBody315_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 10

def AllocBody315_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody315_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def AllocBody315_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def AllocBody315_50 : StackLang.HolProg 64 :=
.seq AllocBody315_48 AllocBody315_49

def AllocBody315_51 : StackLang.HolProg 64 :=
.seq AllocBody315_47 AllocBody315_50

def AllocBody315_52 : StackLang.HolProg 64 :=
.seq AllocBody315_46 AllocBody315_51

def AllocBody315_53 : StackLang.HolProg 64 :=
.seq AllocBody315_45 AllocBody315_52

def AllocBody315_54 : StackLang.HolProg 64 :=
.seq AllocBody315_44 AllocBody315_53

def AllocBody315_55 : StackLang.HolProg 64 :=
.seq AllocBody315_43 AllocBody315_54

def AllocBody315_56 : StackLang.HolProg 64 :=
.seq AllocBody315_42 AllocBody315_55

def AllocBody315_57 : StackLang.HolProg 64 :=
.seq AllocBody315_41 AllocBody315_56

def AllocBody315_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 870#64)

def AllocBody315_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_61 : StackLang.HolProg 64 :=
.seq AllocBody315_59 AllocBody315_60

def AllocBody315_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody315_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody315_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 315 3

def AllocBody315_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody315_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody315_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody315_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody315_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_72 : StackLang.HolProg 64 :=
.seq AllocBody315_70 AllocBody315_71

def AllocBody315_73 : StackLang.HolProg 64 :=
.seq AllocBody315_69 AllocBody315_72

def AllocBody315_74 : StackLang.HolProg 64 :=
.seq AllocBody315_68 AllocBody315_73

def AllocBody315_75 : StackLang.HolProg 64 :=
.seq AllocBody315_67 AllocBody315_74

def AllocBody315_76 : StackLang.HolProg 64 :=
.seq AllocBody315_66 AllocBody315_75

def AllocBody315_77 : StackLang.HolProg 64 :=
.seq AllocBody315_65 AllocBody315_76

def AllocBody315_78 : StackLang.HolProg 64 :=
.seq AllocBody315_64 AllocBody315_77

def AllocBody315_79 : StackLang.HolProg 64 :=
.seq AllocBody315_63 AllocBody315_78

def AllocBody315_80 : StackLang.HolProg 64 :=
.seq AllocBody315_62 AllocBody315_79

def AllocBody315_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody315_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody315_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody315_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody315_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 15

def AllocBody315_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 12

def AllocBody315_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 14

def AllocBody315_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def AllocBody315_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 13

def AllocBody315_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 11

def AllocBody315_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody315_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 10

def AllocBody315_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody315_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody315_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody315_99 : StackLang.HolProg 64 :=
.seq AllocBody315_97 AllocBody315_98

def AllocBody315_100 : StackLang.HolProg 64 :=
.seq AllocBody315_96 AllocBody315_99

def AllocBody315_101 : StackLang.HolProg 64 :=
.seq AllocBody315_95 AllocBody315_100

def AllocBody315_102 : StackLang.HolProg 64 :=
.seq AllocBody315_94 AllocBody315_101

def AllocBody315_103 : StackLang.HolProg 64 :=
.seq AllocBody315_93 AllocBody315_102

def AllocBody315_104 : StackLang.HolProg 64 :=
.seq AllocBody315_92 AllocBody315_103

def AllocBody315_105 : StackLang.HolProg 64 :=
.seq AllocBody315_91 AllocBody315_104

def AllocBody315_106 : StackLang.HolProg 64 :=
.seq AllocBody315_90 AllocBody315_105

def AllocBody315_107 : StackLang.HolProg 64 :=
.seq AllocBody315_89 AllocBody315_106

def AllocBody315_108 : StackLang.HolProg 64 :=
.seq AllocBody315_88 AllocBody315_107

def AllocBody315_109 : StackLang.HolProg 64 :=
.seq AllocBody315_87 AllocBody315_108

def AllocBody315_110 : StackLang.HolProg 64 :=
.seq AllocBody315_86 AllocBody315_109

def AllocBody315_111 : StackLang.HolProg 64 :=
.seq AllocBody315_85 AllocBody315_110

def AllocBody315_112 : StackLang.HolProg 64 :=
.seq AllocBody315_84 AllocBody315_111

def AllocBody315_113 : StackLang.HolProg 64 :=
.seq AllocBody315_83 AllocBody315_112

def AllocBody315_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 15

def AllocBody315_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 12

def AllocBody315_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 14

def AllocBody315_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def AllocBody315_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 13

def AllocBody315_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 11

def AllocBody315_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def AllocBody315_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 10

def AllocBody315_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody315_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody315_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody315_125 : StackLang.HolProg 64 :=
.seq AllocBody315_123 AllocBody315_124

def AllocBody315_126 : StackLang.HolProg 64 :=
.seq AllocBody315_122 AllocBody315_125

def AllocBody315_127 : StackLang.HolProg 64 :=
.seq AllocBody315_121 AllocBody315_126

def AllocBody315_128 : StackLang.HolProg 64 :=
.seq AllocBody315_120 AllocBody315_127

def AllocBody315_129 : StackLang.HolProg 64 :=
.seq AllocBody315_119 AllocBody315_128

def AllocBody315_130 : StackLang.HolProg 64 :=
.seq AllocBody315_118 AllocBody315_129

def AllocBody315_131 : StackLang.HolProg 64 :=
.seq AllocBody315_117 AllocBody315_130

def AllocBody315_132 : StackLang.HolProg 64 :=
.seq AllocBody315_116 AllocBody315_131

def AllocBody315_133 : StackLang.HolProg 64 :=
.seq AllocBody315_115 AllocBody315_132

def AllocBody315_134 : StackLang.HolProg 64 :=
.seq AllocBody315_114 AllocBody315_133

def AllocBody315_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody315_136 : StackLang.HolProg 64 :=
.seq AllocBody315_134 AllocBody315_135

def AllocBody315_137 : StackLang.HolProg 64 :=
.call (some (AllocBody315_113, 0, 315, 2)) (Sum.inl 296) (some (AllocBody315_136, 315, 3))

def AllocBody315_138 : StackLang.HolProg 64 :=
.seq AllocBody315_82 AllocBody315_137

def AllocBody315_139 : StackLang.HolProg 64 :=
.seq AllocBody315_81 AllocBody315_138

def AllocBody315_140 : StackLang.HolProg 64 :=
.seq AllocBody315_80 AllocBody315_139

def AllocBody315_141 : StackLang.HolProg 64 :=
.seq AllocBody315_61 AllocBody315_140

def AllocBody315_142 : StackLang.HolProg 64 :=
.seq AllocBody315_58 AllocBody315_141

def AllocBody315_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_145 : StackLang.HolProg 64 :=
.seq AllocBody315_143 AllocBody315_144

def AllocBody315_146 : StackLang.HolProg 64 :=
.seq AllocBody315_142 AllocBody315_145

def AllocBody315_147 : StackLang.HolProg 64 :=
.seq AllocBody315_57 AllocBody315_146

def AllocBody315_148 : StackLang.HolProg 64 :=
.seq AllocBody315_38 AllocBody315_147

def AllocBody315_149 : StackLang.HolProg 64 :=
.seq AllocBody315_37 AllocBody315_148

def AllocBody315_150 : StackLang.HolProg 64 :=
.seq AllocBody315_36 AllocBody315_149

def AllocBody315_151 : StackLang.HolProg 64 :=
.seq AllocBody315_35 AllocBody315_150

def AllocBody315_152 : StackLang.HolProg 64 :=
.seq AllocBody315_32 AllocBody315_151

def AllocBody315_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def AllocBody315_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody315_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody315_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def AllocBody315_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody315_162 : StackLang.HolProg 64 :=
.seq AllocBody315_160 AllocBody315_161

def AllocBody315_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody315_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def AllocBody315_165 : StackLang.HolProg 64 :=
.seq AllocBody315_163 AllocBody315_164

def AllocBody315_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 14

def AllocBody315_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody315_168 : StackLang.HolProg 64 :=
.seq AllocBody315_166 AllocBody315_167

def AllocBody315_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 12

def AllocBody315_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 14

def AllocBody315_171 : StackLang.HolProg 64 :=
.seq AllocBody315_169 AllocBody315_170

def AllocBody315_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody315_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody315_174 : StackLang.HolProg 64 :=
.seq AllocBody315_172 AllocBody315_173

def AllocBody315_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody315_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody315_177 : StackLang.HolProg 64 :=
.seq AllocBody315_175 AllocBody315_176

def AllocBody315_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 9

def AllocBody315_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody315_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody315_181 : StackLang.HolProg 64 :=
.seq AllocBody315_179 AllocBody315_180

def AllocBody315_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody315_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def AllocBody315_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody315_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 3

def AllocBody315_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody315_187 : StackLang.HolProg 64 :=
.seq AllocBody315_185 AllocBody315_186

def AllocBody315_188 : StackLang.HolProg 64 :=
.seq AllocBody315_184 AllocBody315_187

def AllocBody315_189 : StackLang.HolProg 64 :=
.seq AllocBody315_183 AllocBody315_188

def AllocBody315_190 : StackLang.HolProg 64 :=
.seq AllocBody315_182 AllocBody315_189

def AllocBody315_191 : StackLang.HolProg 64 :=
.seq AllocBody315_181 AllocBody315_190

def AllocBody315_192 : StackLang.HolProg 64 :=
.seq AllocBody315_178 AllocBody315_191

def AllocBody315_193 : StackLang.HolProg 64 :=
.seq AllocBody315_177 AllocBody315_192

def AllocBody315_194 : StackLang.HolProg 64 :=
.seq AllocBody315_174 AllocBody315_193

def AllocBody315_195 : StackLang.HolProg 64 :=
.seq AllocBody315_171 AllocBody315_194

def AllocBody315_196 : StackLang.HolProg 64 :=
.seq AllocBody315_168 AllocBody315_195

def AllocBody315_197 : StackLang.HolProg 64 :=
.seq AllocBody315_165 AllocBody315_196

def AllocBody315_198 : StackLang.HolProg 64 :=
.seq AllocBody315_162 AllocBody315_197

def AllocBody315_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 871#64)

def AllocBody315_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_202 : StackLang.HolProg 64 :=
.seq AllocBody315_200 AllocBody315_201

def AllocBody315_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody315_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody315_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 315 5

def AllocBody315_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody315_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody315_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody315_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody315_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_213 : StackLang.HolProg 64 :=
.seq AllocBody315_211 AllocBody315_212

def AllocBody315_214 : StackLang.HolProg 64 :=
.seq AllocBody315_210 AllocBody315_213

def AllocBody315_215 : StackLang.HolProg 64 :=
.seq AllocBody315_209 AllocBody315_214

def AllocBody315_216 : StackLang.HolProg 64 :=
.seq AllocBody315_208 AllocBody315_215

def AllocBody315_217 : StackLang.HolProg 64 :=
.seq AllocBody315_207 AllocBody315_216

def AllocBody315_218 : StackLang.HolProg 64 :=
.seq AllocBody315_206 AllocBody315_217

def AllocBody315_219 : StackLang.HolProg 64 :=
.seq AllocBody315_205 AllocBody315_218

def AllocBody315_220 : StackLang.HolProg 64 :=
.seq AllocBody315_204 AllocBody315_219

def AllocBody315_221 : StackLang.HolProg 64 :=
.seq AllocBody315_203 AllocBody315_220

def AllocBody315_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody315_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody315_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody315_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def AllocBody315_229 : StackLang.HolProg 64 :=
.seq AllocBody315_227 AllocBody315_228

def AllocBody315_230 : StackLang.HolProg 64 :=
.seq AllocBody315_226 AllocBody315_229

def AllocBody315_231 : StackLang.HolProg 64 :=
.seq AllocBody315_225 AllocBody315_230

def AllocBody315_232 : StackLang.HolProg 64 :=
.seq AllocBody315_224 AllocBody315_231

def AllocBody315_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def AllocBody315_234 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody315_235 : StackLang.HolProg 64 :=
.seq AllocBody315_233 AllocBody315_234

def AllocBody315_236 : StackLang.HolProg 64 :=
.call (some (AllocBody315_232, 0, 315, 4)) (Sum.inl 286) (some (AllocBody315_235, 315, 5))

def AllocBody315_237 : StackLang.HolProg 64 :=
.seq AllocBody315_223 AllocBody315_236

def AllocBody315_238 : StackLang.HolProg 64 :=
.seq AllocBody315_222 AllocBody315_237

def AllocBody315_239 : StackLang.HolProg 64 :=
.seq AllocBody315_221 AllocBody315_238

def AllocBody315_240 : StackLang.HolProg 64 :=
.seq AllocBody315_202 AllocBody315_239

def AllocBody315_241 : StackLang.HolProg 64 :=
.seq AllocBody315_199 AllocBody315_240

def AllocBody315_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_244 : StackLang.HolProg 64 :=
.seq AllocBody315_242 AllocBody315_243

def AllocBody315_245 : StackLang.HolProg 64 :=
.seq AllocBody315_241 AllocBody315_244

def AllocBody315_246 : StackLang.HolProg 64 :=
.seq AllocBody315_198 AllocBody315_245

def AllocBody315_247 : StackLang.HolProg 64 :=
.seq AllocBody315_159 AllocBody315_246

def AllocBody315_248 : StackLang.HolProg 64 :=
.seq AllocBody315_158 AllocBody315_247

def AllocBody315_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def AllocBody315_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody315_252 : StackLang.HolProg 64 :=
.seq AllocBody315_250 AllocBody315_251

def AllocBody315_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody315_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def AllocBody315_255 : StackLang.HolProg 64 :=
.seq AllocBody315_253 AllocBody315_254

def AllocBody315_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 14

def AllocBody315_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody315_258 : StackLang.HolProg 64 :=
.seq AllocBody315_256 AllocBody315_257

def AllocBody315_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 12

def AllocBody315_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 14

def AllocBody315_261 : StackLang.HolProg 64 :=
.seq AllocBody315_259 AllocBody315_260

def AllocBody315_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody315_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody315_264 : StackLang.HolProg 64 :=
.seq AllocBody315_262 AllocBody315_263

def AllocBody315_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody315_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody315_267 : StackLang.HolProg 64 :=
.seq AllocBody315_265 AllocBody315_266

def AllocBody315_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody315_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody315_270 : StackLang.HolProg 64 :=
.seq AllocBody315_268 AllocBody315_269

def AllocBody315_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody315_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def AllocBody315_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody315_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 3

def AllocBody315_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody315_276 : StackLang.HolProg 64 :=
.seq AllocBody315_274 AllocBody315_275

def AllocBody315_277 : StackLang.HolProg 64 :=
.seq AllocBody315_273 AllocBody315_276

def AllocBody315_278 : StackLang.HolProg 64 :=
.seq AllocBody315_272 AllocBody315_277

def AllocBody315_279 : StackLang.HolProg 64 :=
.seq AllocBody315_271 AllocBody315_278

def AllocBody315_280 : StackLang.HolProg 64 :=
.seq AllocBody315_270 AllocBody315_279

def AllocBody315_281 : StackLang.HolProg 64 :=
.seq AllocBody315_267 AllocBody315_280

def AllocBody315_282 : StackLang.HolProg 64 :=
.seq AllocBody315_264 AllocBody315_281

def AllocBody315_283 : StackLang.HolProg 64 :=
.seq AllocBody315_261 AllocBody315_282

def AllocBody315_284 : StackLang.HolProg 64 :=
.seq AllocBody315_258 AllocBody315_283

def AllocBody315_285 : StackLang.HolProg 64 :=
.seq AllocBody315_255 AllocBody315_284

def AllocBody315_286 : StackLang.HolProg 64 :=
.seq AllocBody315_252 AllocBody315_285

def AllocBody315_287 : StackLang.HolProg 64 :=
.seq AllocBody315_249 AllocBody315_286

def AllocBody315_288 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody315_248 AllocBody315_287

def AllocBody315_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody315_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 9

def AllocBody315_292 : StackLang.HolProg 64 :=
.seq AllocBody315_290 AllocBody315_291

def AllocBody315_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 872#64)

def AllocBody315_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_296 : StackLang.HolProg 64 :=
.seq AllocBody315_294 AllocBody315_295

def AllocBody315_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody315_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody315_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 315 7

def AllocBody315_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody315_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody315_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody315_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody315_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_307 : StackLang.HolProg 64 :=
.seq AllocBody315_305 AllocBody315_306

def AllocBody315_308 : StackLang.HolProg 64 :=
.seq AllocBody315_304 AllocBody315_307

def AllocBody315_309 : StackLang.HolProg 64 :=
.seq AllocBody315_303 AllocBody315_308

def AllocBody315_310 : StackLang.HolProg 64 :=
.seq AllocBody315_302 AllocBody315_309

def AllocBody315_311 : StackLang.HolProg 64 :=
.seq AllocBody315_301 AllocBody315_310

def AllocBody315_312 : StackLang.HolProg 64 :=
.seq AllocBody315_300 AllocBody315_311

def AllocBody315_313 : StackLang.HolProg 64 :=
.seq AllocBody315_299 AllocBody315_312

def AllocBody315_314 : StackLang.HolProg 64 :=
.seq AllocBody315_298 AllocBody315_313

def AllocBody315_315 : StackLang.HolProg 64 :=
.seq AllocBody315_297 AllocBody315_314

def AllocBody315_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody315_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody315_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody315_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody315_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 12

def AllocBody315_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody315_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody315_326 : StackLang.HolProg 64 :=
.seq AllocBody315_324 AllocBody315_325

def AllocBody315_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody315_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody315_329 : StackLang.HolProg 64 :=
.seq AllocBody315_327 AllocBody315_328

def AllocBody315_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody315_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody315_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody315_333 : StackLang.HolProg 64 :=
.seq AllocBody315_331 AllocBody315_332

def AllocBody315_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody315_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody315_336 : StackLang.HolProg 64 :=
.seq AllocBody315_334 AllocBody315_335

def AllocBody315_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody315_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody315_339 : StackLang.HolProg 64 :=
.seq AllocBody315_337 AllocBody315_338

def AllocBody315_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody315_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody315_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody315_343 : StackLang.HolProg 64 :=
.seq AllocBody315_341 AllocBody315_342

def AllocBody315_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody315_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody315_346 : StackLang.HolProg 64 :=
.seq AllocBody315_344 AllocBody315_345

def AllocBody315_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody315_348 : StackLang.HolProg 64 :=
.seq AllocBody315_346 AllocBody315_347

def AllocBody315_349 : StackLang.HolProg 64 :=
.seq AllocBody315_343 AllocBody315_348

def AllocBody315_350 : StackLang.HolProg 64 :=
.seq AllocBody315_340 AllocBody315_349

def AllocBody315_351 : StackLang.HolProg 64 :=
.seq AllocBody315_339 AllocBody315_350

def AllocBody315_352 : StackLang.HolProg 64 :=
.seq AllocBody315_336 AllocBody315_351

def AllocBody315_353 : StackLang.HolProg 64 :=
.seq AllocBody315_333 AllocBody315_352

def AllocBody315_354 : StackLang.HolProg 64 :=
.seq AllocBody315_330 AllocBody315_353

def AllocBody315_355 : StackLang.HolProg 64 :=
.seq AllocBody315_329 AllocBody315_354

def AllocBody315_356 : StackLang.HolProg 64 :=
.seq AllocBody315_326 AllocBody315_355

def AllocBody315_357 : StackLang.HolProg 64 :=
.seq AllocBody315_323 AllocBody315_356

def AllocBody315_358 : StackLang.HolProg 64 :=
.seq AllocBody315_322 AllocBody315_357

def AllocBody315_359 : StackLang.HolProg 64 :=
.seq AllocBody315_321 AllocBody315_358

def AllocBody315_360 : StackLang.HolProg 64 :=
.seq AllocBody315_320 AllocBody315_359

def AllocBody315_361 : StackLang.HolProg 64 :=
.seq AllocBody315_319 AllocBody315_360

def AllocBody315_362 : StackLang.HolProg 64 :=
.seq AllocBody315_318 AllocBody315_361

def AllocBody315_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody315_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 12

def AllocBody315_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody315_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody315_367 : StackLang.HolProg 64 :=
.seq AllocBody315_365 AllocBody315_366

def AllocBody315_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody315_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody315_370 : StackLang.HolProg 64 :=
.seq AllocBody315_368 AllocBody315_369

def AllocBody315_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody315_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody315_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody315_374 : StackLang.HolProg 64 :=
.seq AllocBody315_372 AllocBody315_373

def AllocBody315_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody315_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody315_377 : StackLang.HolProg 64 :=
.seq AllocBody315_375 AllocBody315_376

def AllocBody315_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody315_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody315_380 : StackLang.HolProg 64 :=
.seq AllocBody315_378 AllocBody315_379

def AllocBody315_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody315_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody315_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody315_384 : StackLang.HolProg 64 :=
.seq AllocBody315_382 AllocBody315_383

def AllocBody315_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody315_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody315_387 : StackLang.HolProg 64 :=
.seq AllocBody315_385 AllocBody315_386

def AllocBody315_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody315_389 : StackLang.HolProg 64 :=
.seq AllocBody315_387 AllocBody315_388

def AllocBody315_390 : StackLang.HolProg 64 :=
.seq AllocBody315_384 AllocBody315_389

def AllocBody315_391 : StackLang.HolProg 64 :=
.seq AllocBody315_381 AllocBody315_390

def AllocBody315_392 : StackLang.HolProg 64 :=
.seq AllocBody315_380 AllocBody315_391

def AllocBody315_393 : StackLang.HolProg 64 :=
.seq AllocBody315_377 AllocBody315_392

def AllocBody315_394 : StackLang.HolProg 64 :=
.seq AllocBody315_374 AllocBody315_393

def AllocBody315_395 : StackLang.HolProg 64 :=
.seq AllocBody315_371 AllocBody315_394

def AllocBody315_396 : StackLang.HolProg 64 :=
.seq AllocBody315_370 AllocBody315_395

def AllocBody315_397 : StackLang.HolProg 64 :=
.seq AllocBody315_367 AllocBody315_396

def AllocBody315_398 : StackLang.HolProg 64 :=
.seq AllocBody315_364 AllocBody315_397

def AllocBody315_399 : StackLang.HolProg 64 :=
.seq AllocBody315_363 AllocBody315_398

def AllocBody315_400 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody315_401 : StackLang.HolProg 64 :=
.seq AllocBody315_399 AllocBody315_400

def AllocBody315_402 : StackLang.HolProg 64 :=
.call (some (AllocBody315_362, 0, 315, 6)) (Sum.inl 299) (some (AllocBody315_401, 315, 7))

def AllocBody315_403 : StackLang.HolProg 64 :=
.seq AllocBody315_317 AllocBody315_402

def AllocBody315_404 : StackLang.HolProg 64 :=
.seq AllocBody315_316 AllocBody315_403

def AllocBody315_405 : StackLang.HolProg 64 :=
.seq AllocBody315_315 AllocBody315_404

def AllocBody315_406 : StackLang.HolProg 64 :=
.seq AllocBody315_296 AllocBody315_405

def AllocBody315_407 : StackLang.HolProg 64 :=
.seq AllocBody315_293 AllocBody315_406

def AllocBody315_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody315_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody315_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody315_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody315_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def AllocBody315_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 12

def AllocBody315_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 13

def AllocBody315_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def AllocBody315_420 : StackLang.HolProg 64 :=
.seq AllocBody315_418 AllocBody315_419

def AllocBody315_421 : StackLang.HolProg 64 :=
.seq AllocBody315_417 AllocBody315_420

def AllocBody315_422 : StackLang.HolProg 64 :=
.seq AllocBody315_416 AllocBody315_421

def AllocBody315_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 873#64)

def AllocBody315_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_426 : StackLang.HolProg 64 :=
.seq AllocBody315_424 AllocBody315_425

def AllocBody315_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody315_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody315_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 315 9

def AllocBody315_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody315_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody315_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody315_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody315_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_437 : StackLang.HolProg 64 :=
.seq AllocBody315_435 AllocBody315_436

def AllocBody315_438 : StackLang.HolProg 64 :=
.seq AllocBody315_434 AllocBody315_437

def AllocBody315_439 : StackLang.HolProg 64 :=
.seq AllocBody315_433 AllocBody315_438

def AllocBody315_440 : StackLang.HolProg 64 :=
.seq AllocBody315_432 AllocBody315_439

def AllocBody315_441 : StackLang.HolProg 64 :=
.seq AllocBody315_431 AllocBody315_440

def AllocBody315_442 : StackLang.HolProg 64 :=
.seq AllocBody315_430 AllocBody315_441

def AllocBody315_443 : StackLang.HolProg 64 :=
.seq AllocBody315_429 AllocBody315_442

def AllocBody315_444 : StackLang.HolProg 64 :=
.seq AllocBody315_428 AllocBody315_443

def AllocBody315_445 : StackLang.HolProg 64 :=
.seq AllocBody315_427 AllocBody315_444

def AllocBody315_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody315_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody315_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody315_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody315_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 15

def AllocBody315_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 14

def AllocBody315_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 13

def AllocBody315_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 12

def AllocBody315_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def AllocBody315_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 10

def AllocBody315_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def AllocBody315_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def AllocBody315_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody315_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody315_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody315_464 : StackLang.HolProg 64 :=
.seq AllocBody315_462 AllocBody315_463

def AllocBody315_465 : StackLang.HolProg 64 :=
.seq AllocBody315_461 AllocBody315_464

def AllocBody315_466 : StackLang.HolProg 64 :=
.seq AllocBody315_460 AllocBody315_465

def AllocBody315_467 : StackLang.HolProg 64 :=
.seq AllocBody315_459 AllocBody315_466

def AllocBody315_468 : StackLang.HolProg 64 :=
.seq AllocBody315_458 AllocBody315_467

def AllocBody315_469 : StackLang.HolProg 64 :=
.seq AllocBody315_457 AllocBody315_468

def AllocBody315_470 : StackLang.HolProg 64 :=
.seq AllocBody315_456 AllocBody315_469

def AllocBody315_471 : StackLang.HolProg 64 :=
.seq AllocBody315_455 AllocBody315_470

def AllocBody315_472 : StackLang.HolProg 64 :=
.seq AllocBody315_454 AllocBody315_471

def AllocBody315_473 : StackLang.HolProg 64 :=
.seq AllocBody315_453 AllocBody315_472

def AllocBody315_474 : StackLang.HolProg 64 :=
.seq AllocBody315_452 AllocBody315_473

def AllocBody315_475 : StackLang.HolProg 64 :=
.seq AllocBody315_451 AllocBody315_474

def AllocBody315_476 : StackLang.HolProg 64 :=
.seq AllocBody315_450 AllocBody315_475

def AllocBody315_477 : StackLang.HolProg 64 :=
.seq AllocBody315_449 AllocBody315_476

def AllocBody315_478 : StackLang.HolProg 64 :=
.seq AllocBody315_448 AllocBody315_477

def AllocBody315_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 15

def AllocBody315_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 14

def AllocBody315_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 13

def AllocBody315_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 12

def AllocBody315_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def AllocBody315_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 10

def AllocBody315_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def AllocBody315_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def AllocBody315_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody315_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody315_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody315_490 : StackLang.HolProg 64 :=
.seq AllocBody315_488 AllocBody315_489

def AllocBody315_491 : StackLang.HolProg 64 :=
.seq AllocBody315_487 AllocBody315_490

def AllocBody315_492 : StackLang.HolProg 64 :=
.seq AllocBody315_486 AllocBody315_491

def AllocBody315_493 : StackLang.HolProg 64 :=
.seq AllocBody315_485 AllocBody315_492

def AllocBody315_494 : StackLang.HolProg 64 :=
.seq AllocBody315_484 AllocBody315_493

def AllocBody315_495 : StackLang.HolProg 64 :=
.seq AllocBody315_483 AllocBody315_494

def AllocBody315_496 : StackLang.HolProg 64 :=
.seq AllocBody315_482 AllocBody315_495

def AllocBody315_497 : StackLang.HolProg 64 :=
.seq AllocBody315_481 AllocBody315_496

def AllocBody315_498 : StackLang.HolProg 64 :=
.seq AllocBody315_480 AllocBody315_497

def AllocBody315_499 : StackLang.HolProg 64 :=
.seq AllocBody315_479 AllocBody315_498

def AllocBody315_500 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody315_501 : StackLang.HolProg 64 :=
.seq AllocBody315_499 AllocBody315_500

def AllocBody315_502 : StackLang.HolProg 64 :=
.call (some (AllocBody315_478, 0, 315, 8)) (Sum.inl 313) (some (AllocBody315_501, 315, 9))

def AllocBody315_503 : StackLang.HolProg 64 :=
.seq AllocBody315_447 AllocBody315_502

def AllocBody315_504 : StackLang.HolProg 64 :=
.seq AllocBody315_446 AllocBody315_503

def AllocBody315_505 : StackLang.HolProg 64 :=
.seq AllocBody315_445 AllocBody315_504

def AllocBody315_506 : StackLang.HolProg 64 :=
.seq AllocBody315_426 AllocBody315_505

def AllocBody315_507 : StackLang.HolProg 64 :=
.seq AllocBody315_423 AllocBody315_506

def AllocBody315_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_510 : StackLang.HolProg 64 :=
.seq AllocBody315_508 AllocBody315_509

def AllocBody315_511 : StackLang.HolProg 64 :=
.seq AllocBody315_507 AllocBody315_510

def AllocBody315_512 : StackLang.HolProg 64 :=
.seq AllocBody315_422 AllocBody315_511

def AllocBody315_513 : StackLang.HolProg 64 :=
.seq AllocBody315_415 AllocBody315_512

def AllocBody315_514 : StackLang.HolProg 64 :=
.seq AllocBody315_414 AllocBody315_513

def AllocBody315_515 : StackLang.HolProg 64 :=
.seq AllocBody315_413 AllocBody315_514

def AllocBody315_516 : StackLang.HolProg 64 :=
.seq AllocBody315_412 AllocBody315_515

def AllocBody315_517 : StackLang.HolProg 64 :=
.seq AllocBody315_411 AllocBody315_516

def AllocBody315_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody315_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody315_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 32#64))

def AllocBody315_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 40#64))

def AllocBody315_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody315_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody315_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody315_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody315_532 : StackLang.HolProg 64 :=
.seq AllocBody315_530 AllocBody315_531

def AllocBody315_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 12

def AllocBody315_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody315_535 : StackLang.HolProg 64 :=
.seq AllocBody315_533 AllocBody315_534

def AllocBody315_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 12

def AllocBody315_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def AllocBody315_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody315_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody315_540 : StackLang.HolProg 64 :=
.seq AllocBody315_538 AllocBody315_539

def AllocBody315_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody315_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody315_543 : StackLang.HolProg 64 :=
.seq AllocBody315_541 AllocBody315_542

def AllocBody315_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody315_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody315_546 : StackLang.HolProg 64 :=
.seq AllocBody315_544 AllocBody315_545

def AllocBody315_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 11

def AllocBody315_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody315_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody315_550 : StackLang.HolProg 64 :=
.seq AllocBody315_548 AllocBody315_549

def AllocBody315_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody315_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody315_553 : StackLang.HolProg 64 :=
.seq AllocBody315_551 AllocBody315_552

def AllocBody315_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def AllocBody315_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody315_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody315_557 : StackLang.HolProg 64 :=
.seq AllocBody315_555 AllocBody315_556

def AllocBody315_558 : StackLang.HolProg 64 :=
.seq AllocBody315_554 AllocBody315_557

def AllocBody315_559 : StackLang.HolProg 64 :=
.seq AllocBody315_553 AllocBody315_558

def AllocBody315_560 : StackLang.HolProg 64 :=
.seq AllocBody315_550 AllocBody315_559

def AllocBody315_561 : StackLang.HolProg 64 :=
.seq AllocBody315_547 AllocBody315_560

def AllocBody315_562 : StackLang.HolProg 64 :=
.seq AllocBody315_546 AllocBody315_561

def AllocBody315_563 : StackLang.HolProg 64 :=
.seq AllocBody315_543 AllocBody315_562

def AllocBody315_564 : StackLang.HolProg 64 :=
.seq AllocBody315_540 AllocBody315_563

def AllocBody315_565 : StackLang.HolProg 64 :=
.seq AllocBody315_537 AllocBody315_564

def AllocBody315_566 : StackLang.HolProg 64 :=
.seq AllocBody315_536 AllocBody315_565

def AllocBody315_567 : StackLang.HolProg 64 :=
.seq AllocBody315_535 AllocBody315_566

def AllocBody315_568 : StackLang.HolProg 64 :=
.seq AllocBody315_532 AllocBody315_567

def AllocBody315_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 874#64)

def AllocBody315_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_572 : StackLang.HolProg 64 :=
.seq AllocBody315_570 AllocBody315_571

def AllocBody315_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody315_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody315_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 315 11

def AllocBody315_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody315_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody315_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody315_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody315_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_583 : StackLang.HolProg 64 :=
.seq AllocBody315_581 AllocBody315_582

def AllocBody315_584 : StackLang.HolProg 64 :=
.seq AllocBody315_580 AllocBody315_583

def AllocBody315_585 : StackLang.HolProg 64 :=
.seq AllocBody315_579 AllocBody315_584

def AllocBody315_586 : StackLang.HolProg 64 :=
.seq AllocBody315_578 AllocBody315_585

def AllocBody315_587 : StackLang.HolProg 64 :=
.seq AllocBody315_577 AllocBody315_586

def AllocBody315_588 : StackLang.HolProg 64 :=
.seq AllocBody315_576 AllocBody315_587

def AllocBody315_589 : StackLang.HolProg 64 :=
.seq AllocBody315_575 AllocBody315_588

def AllocBody315_590 : StackLang.HolProg 64 :=
.seq AllocBody315_574 AllocBody315_589

def AllocBody315_591 : StackLang.HolProg 64 :=
.seq AllocBody315_573 AllocBody315_590

def AllocBody315_592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody315_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody315_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody315_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody315_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody315_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 11

def AllocBody315_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 10

def AllocBody315_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody315_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def AllocBody315_604 : StackLang.HolProg 64 :=
.seq AllocBody315_602 AllocBody315_603

def AllocBody315_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def AllocBody315_606 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody315_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody315_608 : StackLang.HolProg 64 :=
.seq AllocBody315_606 AllocBody315_607

def AllocBody315_609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody315_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody315_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody315_612 : StackLang.HolProg 64 :=
.seq AllocBody315_610 AllocBody315_611

def AllocBody315_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody315_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody315_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody315_616 : StackLang.HolProg 64 :=
.seq AllocBody315_614 AllocBody315_615

def AllocBody315_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody315_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody315_619 : StackLang.HolProg 64 :=
.seq AllocBody315_617 AllocBody315_618

def AllocBody315_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody315_621 : StackLang.HolProg 64 :=
.seq AllocBody315_619 AllocBody315_620

def AllocBody315_622 : StackLang.HolProg 64 :=
.seq AllocBody315_616 AllocBody315_621

def AllocBody315_623 : StackLang.HolProg 64 :=
.seq AllocBody315_613 AllocBody315_622

def AllocBody315_624 : StackLang.HolProg 64 :=
.seq AllocBody315_612 AllocBody315_623

def AllocBody315_625 : StackLang.HolProg 64 :=
.seq AllocBody315_609 AllocBody315_624

def AllocBody315_626 : StackLang.HolProg 64 :=
.seq AllocBody315_608 AllocBody315_625

def AllocBody315_627 : StackLang.HolProg 64 :=
.seq AllocBody315_605 AllocBody315_626

def AllocBody315_628 : StackLang.HolProg 64 :=
.seq AllocBody315_604 AllocBody315_627

def AllocBody315_629 : StackLang.HolProg 64 :=
.seq AllocBody315_601 AllocBody315_628

def AllocBody315_630 : StackLang.HolProg 64 :=
.seq AllocBody315_600 AllocBody315_629

def AllocBody315_631 : StackLang.HolProg 64 :=
.seq AllocBody315_599 AllocBody315_630

def AllocBody315_632 : StackLang.HolProg 64 :=
.seq AllocBody315_598 AllocBody315_631

def AllocBody315_633 : StackLang.HolProg 64 :=
.seq AllocBody315_597 AllocBody315_632

def AllocBody315_634 : StackLang.HolProg 64 :=
.seq AllocBody315_596 AllocBody315_633

def AllocBody315_635 : StackLang.HolProg 64 :=
.seq AllocBody315_595 AllocBody315_634

def AllocBody315_636 : StackLang.HolProg 64 :=
.seq AllocBody315_594 AllocBody315_635

def AllocBody315_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody315_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 11

def AllocBody315_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 10

def AllocBody315_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody315_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def AllocBody315_642 : StackLang.HolProg 64 :=
.seq AllocBody315_640 AllocBody315_641

def AllocBody315_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def AllocBody315_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody315_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody315_646 : StackLang.HolProg 64 :=
.seq AllocBody315_644 AllocBody315_645

def AllocBody315_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody315_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody315_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody315_650 : StackLang.HolProg 64 :=
.seq AllocBody315_648 AllocBody315_649

def AllocBody315_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def AllocBody315_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody315_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody315_654 : StackLang.HolProg 64 :=
.seq AllocBody315_652 AllocBody315_653

def AllocBody315_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody315_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody315_657 : StackLang.HolProg 64 :=
.seq AllocBody315_655 AllocBody315_656

def AllocBody315_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody315_659 : StackLang.HolProg 64 :=
.seq AllocBody315_657 AllocBody315_658

def AllocBody315_660 : StackLang.HolProg 64 :=
.seq AllocBody315_654 AllocBody315_659

def AllocBody315_661 : StackLang.HolProg 64 :=
.seq AllocBody315_651 AllocBody315_660

def AllocBody315_662 : StackLang.HolProg 64 :=
.seq AllocBody315_650 AllocBody315_661

def AllocBody315_663 : StackLang.HolProg 64 :=
.seq AllocBody315_647 AllocBody315_662

def AllocBody315_664 : StackLang.HolProg 64 :=
.seq AllocBody315_646 AllocBody315_663

def AllocBody315_665 : StackLang.HolProg 64 :=
.seq AllocBody315_643 AllocBody315_664

def AllocBody315_666 : StackLang.HolProg 64 :=
.seq AllocBody315_642 AllocBody315_665

def AllocBody315_667 : StackLang.HolProg 64 :=
.seq AllocBody315_639 AllocBody315_666

def AllocBody315_668 : StackLang.HolProg 64 :=
.seq AllocBody315_638 AllocBody315_667

def AllocBody315_669 : StackLang.HolProg 64 :=
.seq AllocBody315_637 AllocBody315_668

def AllocBody315_670 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody315_671 : StackLang.HolProg 64 :=
.seq AllocBody315_669 AllocBody315_670

def AllocBody315_672 : StackLang.HolProg 64 :=
.call (some (AllocBody315_636, 0, 315, 10)) (Sum.inl 291) (some (AllocBody315_671, 315, 11))

def AllocBody315_673 : StackLang.HolProg 64 :=
.seq AllocBody315_593 AllocBody315_672

def AllocBody315_674 : StackLang.HolProg 64 :=
.seq AllocBody315_592 AllocBody315_673

def AllocBody315_675 : StackLang.HolProg 64 :=
.seq AllocBody315_591 AllocBody315_674

def AllocBody315_676 : StackLang.HolProg 64 :=
.seq AllocBody315_572 AllocBody315_675

def AllocBody315_677 : StackLang.HolProg 64 :=
.seq AllocBody315_569 AllocBody315_676

def AllocBody315_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 48#64))

def AllocBody315_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody315_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody315_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def AllocBody315_688 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 15

def AllocBody315_689 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 14

def AllocBody315_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 13

def AllocBody315_691 : StackLang.HolProg 64 :=
.seq AllocBody315_689 AllocBody315_690

def AllocBody315_692 : StackLang.HolProg 64 :=
.seq AllocBody315_688 AllocBody315_691

def AllocBody315_693 : StackLang.HolProg 64 :=
.seq AllocBody315_687 AllocBody315_692

def AllocBody315_694 : StackLang.HolProg 64 :=
.seq AllocBody315_686 AllocBody315_693

def AllocBody315_695 : StackLang.HolProg 64 :=
.seq AllocBody315_685 AllocBody315_694

def AllocBody315_696 : StackLang.HolProg 64 :=
.seq AllocBody315_684 AllocBody315_695

def AllocBody315_697 : StackLang.HolProg 64 :=
.seq AllocBody315_683 AllocBody315_696

def AllocBody315_698 : StackLang.HolProg 64 :=
.seq AllocBody315_682 AllocBody315_697

def AllocBody315_699 : StackLang.HolProg 64 :=
.seq AllocBody315_681 AllocBody315_698

def AllocBody315_700 : StackLang.HolProg 64 :=
.seq AllocBody315_680 AllocBody315_699

def AllocBody315_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody315_703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody315_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody315_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def AllocBody315_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody315_708 : StackLang.HolProg 64 :=
.seq AllocBody315_706 AllocBody315_707

def AllocBody315_709 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 14

def AllocBody315_710 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def AllocBody315_711 : StackLang.HolProg 64 :=
.seq AllocBody315_709 AllocBody315_710

def AllocBody315_712 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 14

def AllocBody315_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 11

def AllocBody315_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 10

def AllocBody315_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody315_716 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 5

def AllocBody315_717 : StackLang.HolProg 64 :=
.seq AllocBody315_715 AllocBody315_716

def AllocBody315_718 : StackLang.HolProg 64 :=
.seq AllocBody315_714 AllocBody315_717

def AllocBody315_719 : StackLang.HolProg 64 :=
.seq AllocBody315_713 AllocBody315_718

def AllocBody315_720 : StackLang.HolProg 64 :=
.seq AllocBody315_712 AllocBody315_719

def AllocBody315_721 : StackLang.HolProg 64 :=
.seq AllocBody315_711 AllocBody315_720

def AllocBody315_722 : StackLang.HolProg 64 :=
.seq AllocBody315_708 AllocBody315_721

def AllocBody315_723 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_724 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 875#64)

def AllocBody315_725 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_726 : StackLang.HolProg 64 :=
.seq AllocBody315_724 AllocBody315_725

def AllocBody315_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody315_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody315_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 315 13

def AllocBody315_731 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody315_732 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody315_733 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody315_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody315_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_737 : StackLang.HolProg 64 :=
.seq AllocBody315_735 AllocBody315_736

def AllocBody315_738 : StackLang.HolProg 64 :=
.seq AllocBody315_734 AllocBody315_737

def AllocBody315_739 : StackLang.HolProg 64 :=
.seq AllocBody315_733 AllocBody315_738

def AllocBody315_740 : StackLang.HolProg 64 :=
.seq AllocBody315_732 AllocBody315_739

def AllocBody315_741 : StackLang.HolProg 64 :=
.seq AllocBody315_731 AllocBody315_740

def AllocBody315_742 : StackLang.HolProg 64 :=
.seq AllocBody315_730 AllocBody315_741

def AllocBody315_743 : StackLang.HolProg 64 :=
.seq AllocBody315_729 AllocBody315_742

def AllocBody315_744 : StackLang.HolProg 64 :=
.seq AllocBody315_728 AllocBody315_743

def AllocBody315_745 : StackLang.HolProg 64 :=
.seq AllocBody315_727 AllocBody315_744

def AllocBody315_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody315_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody315_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody315_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody315_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 14

def AllocBody315_754 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def AllocBody315_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 14

def AllocBody315_756 : StackLang.HolProg 64 :=
.seq AllocBody315_754 AllocBody315_755

def AllocBody315_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 12

def AllocBody315_758 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody315_759 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def AllocBody315_760 : StackLang.HolProg 64 :=
.seq AllocBody315_758 AllocBody315_759

def AllocBody315_761 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody315_762 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody315_763 : StackLang.HolProg 64 :=
.seq AllocBody315_761 AllocBody315_762

def AllocBody315_764 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody315_765 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody315_766 : StackLang.HolProg 64 :=
.seq AllocBody315_764 AllocBody315_765

def AllocBody315_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody315_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody315_769 : StackLang.HolProg 64 :=
.seq AllocBody315_767 AllocBody315_768

def AllocBody315_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody315_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody315_772 : StackLang.HolProg 64 :=
.seq AllocBody315_770 AllocBody315_771

def AllocBody315_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody315_774 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody315_775 : StackLang.HolProg 64 :=
.seq AllocBody315_773 AllocBody315_774

def AllocBody315_776 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody315_777 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody315_778 : StackLang.HolProg 64 :=
.seq AllocBody315_776 AllocBody315_777

def AllocBody315_779 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody315_780 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody315_781 : StackLang.HolProg 64 :=
.seq AllocBody315_779 AllocBody315_780

def AllocBody315_782 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody315_783 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody315_784 : StackLang.HolProg 64 :=
.seq AllocBody315_782 AllocBody315_783

def AllocBody315_785 : StackLang.HolProg 64 :=
.seq AllocBody315_781 AllocBody315_784

def AllocBody315_786 : StackLang.HolProg 64 :=
.seq AllocBody315_778 AllocBody315_785

def AllocBody315_787 : StackLang.HolProg 64 :=
.seq AllocBody315_775 AllocBody315_786

def AllocBody315_788 : StackLang.HolProg 64 :=
.seq AllocBody315_772 AllocBody315_787

def AllocBody315_789 : StackLang.HolProg 64 :=
.seq AllocBody315_769 AllocBody315_788

def AllocBody315_790 : StackLang.HolProg 64 :=
.seq AllocBody315_766 AllocBody315_789

def AllocBody315_791 : StackLang.HolProg 64 :=
.seq AllocBody315_763 AllocBody315_790

def AllocBody315_792 : StackLang.HolProg 64 :=
.seq AllocBody315_760 AllocBody315_791

def AllocBody315_793 : StackLang.HolProg 64 :=
.seq AllocBody315_757 AllocBody315_792

def AllocBody315_794 : StackLang.HolProg 64 :=
.seq AllocBody315_756 AllocBody315_793

def AllocBody315_795 : StackLang.HolProg 64 :=
.seq AllocBody315_753 AllocBody315_794

def AllocBody315_796 : StackLang.HolProg 64 :=
.seq AllocBody315_752 AllocBody315_795

def AllocBody315_797 : StackLang.HolProg 64 :=
.seq AllocBody315_751 AllocBody315_796

def AllocBody315_798 : StackLang.HolProg 64 :=
.seq AllocBody315_750 AllocBody315_797

def AllocBody315_799 : StackLang.HolProg 64 :=
.seq AllocBody315_749 AllocBody315_798

def AllocBody315_800 : StackLang.HolProg 64 :=
.seq AllocBody315_748 AllocBody315_799

def AllocBody315_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 14

def AllocBody315_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 13

def AllocBody315_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 14

def AllocBody315_804 : StackLang.HolProg 64 :=
.seq AllocBody315_802 AllocBody315_803

def AllocBody315_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 12

def AllocBody315_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody315_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 13

def AllocBody315_808 : StackLang.HolProg 64 :=
.seq AllocBody315_806 AllocBody315_807

def AllocBody315_809 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody315_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody315_811 : StackLang.HolProg 64 :=
.seq AllocBody315_809 AllocBody315_810

def AllocBody315_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody315_813 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody315_814 : StackLang.HolProg 64 :=
.seq AllocBody315_812 AllocBody315_813

def AllocBody315_815 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody315_816 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody315_817 : StackLang.HolProg 64 :=
.seq AllocBody315_815 AllocBody315_816

def AllocBody315_818 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody315_819 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody315_820 : StackLang.HolProg 64 :=
.seq AllocBody315_818 AllocBody315_819

def AllocBody315_821 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody315_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody315_823 : StackLang.HolProg 64 :=
.seq AllocBody315_821 AllocBody315_822

def AllocBody315_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody315_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody315_826 : StackLang.HolProg 64 :=
.seq AllocBody315_824 AllocBody315_825

def AllocBody315_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody315_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody315_829 : StackLang.HolProg 64 :=
.seq AllocBody315_827 AllocBody315_828

def AllocBody315_830 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody315_831 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody315_832 : StackLang.HolProg 64 :=
.seq AllocBody315_830 AllocBody315_831

def AllocBody315_833 : StackLang.HolProg 64 :=
.seq AllocBody315_829 AllocBody315_832

def AllocBody315_834 : StackLang.HolProg 64 :=
.seq AllocBody315_826 AllocBody315_833

def AllocBody315_835 : StackLang.HolProg 64 :=
.seq AllocBody315_823 AllocBody315_834

def AllocBody315_836 : StackLang.HolProg 64 :=
.seq AllocBody315_820 AllocBody315_835

def AllocBody315_837 : StackLang.HolProg 64 :=
.seq AllocBody315_817 AllocBody315_836

def AllocBody315_838 : StackLang.HolProg 64 :=
.seq AllocBody315_814 AllocBody315_837

def AllocBody315_839 : StackLang.HolProg 64 :=
.seq AllocBody315_811 AllocBody315_838

def AllocBody315_840 : StackLang.HolProg 64 :=
.seq AllocBody315_808 AllocBody315_839

def AllocBody315_841 : StackLang.HolProg 64 :=
.seq AllocBody315_805 AllocBody315_840

def AllocBody315_842 : StackLang.HolProg 64 :=
.seq AllocBody315_804 AllocBody315_841

def AllocBody315_843 : StackLang.HolProg 64 :=
.seq AllocBody315_801 AllocBody315_842

def AllocBody315_844 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody315_845 : StackLang.HolProg 64 :=
.seq AllocBody315_843 AllocBody315_844

def AllocBody315_846 : StackLang.HolProg 64 :=
.call (some (AllocBody315_800, 0, 315, 12)) (Sum.inl 314) (some (AllocBody315_845, 315, 13))

def AllocBody315_847 : StackLang.HolProg 64 :=
.seq AllocBody315_747 AllocBody315_846

def AllocBody315_848 : StackLang.HolProg 64 :=
.seq AllocBody315_746 AllocBody315_847

def AllocBody315_849 : StackLang.HolProg 64 :=
.seq AllocBody315_745 AllocBody315_848

def AllocBody315_850 : StackLang.HolProg 64 :=
.seq AllocBody315_726 AllocBody315_849

def AllocBody315_851 : StackLang.HolProg 64 :=
.seq AllocBody315_723 AllocBody315_850

def AllocBody315_852 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_853 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody315_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody315_857 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_858 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 876#64)

def AllocBody315_859 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_860 : StackLang.HolProg 64 :=
.seq AllocBody315_858 AllocBody315_859

def AllocBody315_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody315_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody315_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody315_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 315 15

def AllocBody315_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody315_866 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody315_867 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody315_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody315_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_871 : StackLang.HolProg 64 :=
.seq AllocBody315_869 AllocBody315_870

def AllocBody315_872 : StackLang.HolProg 64 :=
.seq AllocBody315_868 AllocBody315_871

def AllocBody315_873 : StackLang.HolProg 64 :=
.seq AllocBody315_867 AllocBody315_872

def AllocBody315_874 : StackLang.HolProg 64 :=
.seq AllocBody315_866 AllocBody315_873

def AllocBody315_875 : StackLang.HolProg 64 :=
.seq AllocBody315_865 AllocBody315_874

def AllocBody315_876 : StackLang.HolProg 64 :=
.seq AllocBody315_864 AllocBody315_875

def AllocBody315_877 : StackLang.HolProg 64 :=
.seq AllocBody315_863 AllocBody315_876

def AllocBody315_878 : StackLang.HolProg 64 :=
.seq AllocBody315_862 AllocBody315_877

def AllocBody315_879 : StackLang.HolProg 64 :=
.seq AllocBody315_861 AllocBody315_878

def AllocBody315_880 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody315_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody315_884 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody315_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody315_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody315_887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 15

def AllocBody315_888 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 14

def AllocBody315_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 13

def AllocBody315_890 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 12

def AllocBody315_891 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def AllocBody315_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 10

def AllocBody315_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def AllocBody315_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def AllocBody315_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody315_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody315_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody315_898 : StackLang.HolProg 64 :=
.seq AllocBody315_896 AllocBody315_897

def AllocBody315_899 : StackLang.HolProg 64 :=
.seq AllocBody315_895 AllocBody315_898

def AllocBody315_900 : StackLang.HolProg 64 :=
.seq AllocBody315_894 AllocBody315_899

def AllocBody315_901 : StackLang.HolProg 64 :=
.seq AllocBody315_893 AllocBody315_900

def AllocBody315_902 : StackLang.HolProg 64 :=
.seq AllocBody315_892 AllocBody315_901

def AllocBody315_903 : StackLang.HolProg 64 :=
.seq AllocBody315_891 AllocBody315_902

def AllocBody315_904 : StackLang.HolProg 64 :=
.seq AllocBody315_890 AllocBody315_903

def AllocBody315_905 : StackLang.HolProg 64 :=
.seq AllocBody315_889 AllocBody315_904

def AllocBody315_906 : StackLang.HolProg 64 :=
.seq AllocBody315_888 AllocBody315_905

def AllocBody315_907 : StackLang.HolProg 64 :=
.seq AllocBody315_887 AllocBody315_906

def AllocBody315_908 : StackLang.HolProg 64 :=
.seq AllocBody315_886 AllocBody315_907

def AllocBody315_909 : StackLang.HolProg 64 :=
.seq AllocBody315_885 AllocBody315_908

def AllocBody315_910 : StackLang.HolProg 64 :=
.seq AllocBody315_884 AllocBody315_909

def AllocBody315_911 : StackLang.HolProg 64 :=
.seq AllocBody315_883 AllocBody315_910

def AllocBody315_912 : StackLang.HolProg 64 :=
.seq AllocBody315_882 AllocBody315_911

def AllocBody315_913 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 15

def AllocBody315_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 14

def AllocBody315_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 13

def AllocBody315_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 12

def AllocBody315_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def AllocBody315_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 10

def AllocBody315_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def AllocBody315_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def AllocBody315_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody315_922 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody315_923 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody315_924 : StackLang.HolProg 64 :=
.seq AllocBody315_922 AllocBody315_923

def AllocBody315_925 : StackLang.HolProg 64 :=
.seq AllocBody315_921 AllocBody315_924

def AllocBody315_926 : StackLang.HolProg 64 :=
.seq AllocBody315_920 AllocBody315_925

def AllocBody315_927 : StackLang.HolProg 64 :=
.seq AllocBody315_919 AllocBody315_926

def AllocBody315_928 : StackLang.HolProg 64 :=
.seq AllocBody315_918 AllocBody315_927

def AllocBody315_929 : StackLang.HolProg 64 :=
.seq AllocBody315_917 AllocBody315_928

def AllocBody315_930 : StackLang.HolProg 64 :=
.seq AllocBody315_916 AllocBody315_929

def AllocBody315_931 : StackLang.HolProg 64 :=
.seq AllocBody315_915 AllocBody315_930

def AllocBody315_932 : StackLang.HolProg 64 :=
.seq AllocBody315_914 AllocBody315_931

def AllocBody315_933 : StackLang.HolProg 64 :=
.seq AllocBody315_913 AllocBody315_932

def AllocBody315_934 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody315_935 : StackLang.HolProg 64 :=
.seq AllocBody315_933 AllocBody315_934

def AllocBody315_936 : StackLang.HolProg 64 :=
.call (some (AllocBody315_912, 0, 315, 14)) (Sum.inl 297) (some (AllocBody315_935, 315, 15))

def AllocBody315_937 : StackLang.HolProg 64 :=
.seq AllocBody315_881 AllocBody315_936

def AllocBody315_938 : StackLang.HolProg 64 :=
.seq AllocBody315_880 AllocBody315_937

def AllocBody315_939 : StackLang.HolProg 64 :=
.seq AllocBody315_879 AllocBody315_938

def AllocBody315_940 : StackLang.HolProg 64 :=
.seq AllocBody315_860 AllocBody315_939

def AllocBody315_941 : StackLang.HolProg 64 :=
.seq AllocBody315_857 AllocBody315_940

def AllocBody315_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_944 : StackLang.HolProg 64 :=
.seq AllocBody315_942 AllocBody315_943

def AllocBody315_945 : StackLang.HolProg 64 :=
.seq AllocBody315_941 AllocBody315_944

def AllocBody315_946 : StackLang.HolProg 64 :=
.seq AllocBody315_856 AllocBody315_945

def AllocBody315_947 : StackLang.HolProg 64 :=
.seq AllocBody315_855 AllocBody315_946

def AllocBody315_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 15

def AllocBody315_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 14

def AllocBody315_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 13

def AllocBody315_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 12

def AllocBody315_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def AllocBody315_954 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 10

def AllocBody315_955 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def AllocBody315_956 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def AllocBody315_957 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody315_958 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody315_959 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody315_960 : StackLang.HolProg 64 :=
.seq AllocBody315_958 AllocBody315_959

def AllocBody315_961 : StackLang.HolProg 64 :=
.seq AllocBody315_957 AllocBody315_960

def AllocBody315_962 : StackLang.HolProg 64 :=
.seq AllocBody315_956 AllocBody315_961

def AllocBody315_963 : StackLang.HolProg 64 :=
.seq AllocBody315_955 AllocBody315_962

def AllocBody315_964 : StackLang.HolProg 64 :=
.seq AllocBody315_954 AllocBody315_963

def AllocBody315_965 : StackLang.HolProg 64 :=
.seq AllocBody315_953 AllocBody315_964

def AllocBody315_966 : StackLang.HolProg 64 :=
.seq AllocBody315_952 AllocBody315_965

def AllocBody315_967 : StackLang.HolProg 64 :=
.seq AllocBody315_951 AllocBody315_966

def AllocBody315_968 : StackLang.HolProg 64 :=
.seq AllocBody315_950 AllocBody315_967

def AllocBody315_969 : StackLang.HolProg 64 :=
.seq AllocBody315_949 AllocBody315_968

def AllocBody315_970 : StackLang.HolProg 64 :=
.seq AllocBody315_948 AllocBody315_969

def AllocBody315_971 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody315_947 AllocBody315_970

def AllocBody315_972 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_973 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_974 : StackLang.HolProg 64 :=
.seq AllocBody315_972 AllocBody315_973

def AllocBody315_975 : StackLang.HolProg 64 :=
.seq AllocBody315_971 AllocBody315_974

def AllocBody315_976 : StackLang.HolProg 64 :=
.seq AllocBody315_854 AllocBody315_975

def AllocBody315_977 : StackLang.HolProg 64 :=
.seq AllocBody315_853 AllocBody315_976

def AllocBody315_978 : StackLang.HolProg 64 :=
.seq AllocBody315_852 AllocBody315_977

def AllocBody315_979 : StackLang.HolProg 64 :=
.seq AllocBody315_851 AllocBody315_978

def AllocBody315_980 : StackLang.HolProg 64 :=
.seq AllocBody315_722 AllocBody315_979

def AllocBody315_981 : StackLang.HolProg 64 :=
.seq AllocBody315_705 AllocBody315_980

def AllocBody315_982 : StackLang.HolProg 64 :=
.seq AllocBody315_704 AllocBody315_981

def AllocBody315_983 : StackLang.HolProg 64 :=
.seq AllocBody315_703 AllocBody315_982

def AllocBody315_984 : StackLang.HolProg 64 :=
.seq AllocBody315_702 AllocBody315_983

def AllocBody315_985 : StackLang.HolProg 64 :=
.seq AllocBody315_701 AllocBody315_984

def AllocBody315_986 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody315_700 AllocBody315_985

def AllocBody315_987 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_989 : StackLang.HolProg 64 :=
.seq AllocBody315_987 AllocBody315_988

def AllocBody315_990 : StackLang.HolProg 64 :=
.seq AllocBody315_986 AllocBody315_989

def AllocBody315_991 : StackLang.HolProg 64 :=
.seq AllocBody315_679 AllocBody315_990

def AllocBody315_992 : StackLang.HolProg 64 :=
.seq AllocBody315_678 AllocBody315_991

def AllocBody315_993 : StackLang.HolProg 64 :=
.seq AllocBody315_677 AllocBody315_992

def AllocBody315_994 : StackLang.HolProg 64 :=
.seq AllocBody315_568 AllocBody315_993

def AllocBody315_995 : StackLang.HolProg 64 :=
.seq AllocBody315_529 AllocBody315_994

def AllocBody315_996 : StackLang.HolProg 64 :=
.seq AllocBody315_528 AllocBody315_995

def AllocBody315_997 : StackLang.HolProg 64 :=
.seq AllocBody315_527 AllocBody315_996

def AllocBody315_998 : StackLang.HolProg 64 :=
.seq AllocBody315_526 AllocBody315_997

def AllocBody315_999 : StackLang.HolProg 64 :=
.seq AllocBody315_525 AllocBody315_998

def AllocBody315_1000 : StackLang.HolProg 64 :=
.seq AllocBody315_524 AllocBody315_999

def AllocBody315_1001 : StackLang.HolProg 64 :=
.seq AllocBody315_523 AllocBody315_1000

def AllocBody315_1002 : StackLang.HolProg 64 :=
.seq AllocBody315_522 AllocBody315_1001

def AllocBody315_1003 : StackLang.HolProg 64 :=
.seq AllocBody315_521 AllocBody315_1002

def AllocBody315_1004 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1005 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1006 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1007 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1008 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def AllocBody315_1009 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def AllocBody315_1010 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody315_1011 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1012 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 168#64)))

def AllocBody315_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 12

def AllocBody315_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody315_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 10

def AllocBody315_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def AllocBody315_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody315_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody315_1019 : StackLang.HolProg 64 :=
.seq AllocBody315_1017 AllocBody315_1018

def AllocBody315_1020 : StackLang.HolProg 64 :=
.seq AllocBody315_1016 AllocBody315_1019

def AllocBody315_1021 : StackLang.HolProg 64 :=
.seq AllocBody315_1015 AllocBody315_1020

def AllocBody315_1022 : StackLang.HolProg 64 :=
.seq AllocBody315_1014 AllocBody315_1021

def AllocBody315_1023 : StackLang.HolProg 64 :=
.seq AllocBody315_1013 AllocBody315_1022

def AllocBody315_1024 : StackLang.HolProg 64 :=
.seq AllocBody315_1012 AllocBody315_1023

def AllocBody315_1025 : StackLang.HolProg 64 :=
.seq AllocBody315_1011 AllocBody315_1024

def AllocBody315_1026 : StackLang.HolProg 64 :=
.seq AllocBody315_1010 AllocBody315_1025

def AllocBody315_1027 : StackLang.HolProg 64 :=
.seq AllocBody315_1009 AllocBody315_1026

def AllocBody315_1028 : StackLang.HolProg 64 :=
.seq AllocBody315_1008 AllocBody315_1027

def AllocBody315_1029 : StackLang.HolProg 64 :=
.seq AllocBody315_1007 AllocBody315_1028

def AllocBody315_1030 : StackLang.HolProg 64 :=
.seq AllocBody315_1006 AllocBody315_1029

def AllocBody315_1031 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1032 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody315_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody315_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody315_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1038 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody315_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody315_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody315_1042 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody315_1044 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def AllocBody315_1045 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 12

def AllocBody315_1046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 9

def AllocBody315_1047 : StackLang.HolProg 64 :=
.seq AllocBody315_1045 AllocBody315_1046

def AllocBody315_1048 : StackLang.HolProg 64 :=
.seq AllocBody315_1044 AllocBody315_1047

def AllocBody315_1049 : StackLang.HolProg 64 :=
.seq AllocBody315_1043 AllocBody315_1048

def AllocBody315_1050 : StackLang.HolProg 64 :=
.seq AllocBody315_1042 AllocBody315_1049

def AllocBody315_1051 : StackLang.HolProg 64 :=
.seq AllocBody315_1041 AllocBody315_1050

def AllocBody315_1052 : StackLang.HolProg 64 :=
.seq AllocBody315_1040 AllocBody315_1051

def AllocBody315_1053 : StackLang.HolProg 64 :=
.seq AllocBody315_1039 AllocBody315_1052

def AllocBody315_1054 : StackLang.HolProg 64 :=
.seq AllocBody315_1038 AllocBody315_1053

def AllocBody315_1055 : StackLang.HolProg 64 :=
.seq AllocBody315_1037 AllocBody315_1054

def AllocBody315_1056 : StackLang.HolProg 64 :=
.seq AllocBody315_1036 AllocBody315_1055

def AllocBody315_1057 : StackLang.HolProg 64 :=
.seq AllocBody315_1035 AllocBody315_1056

def AllocBody315_1058 : StackLang.HolProg 64 :=
.seq AllocBody315_1034 AllocBody315_1057

def AllocBody315_1059 : StackLang.HolProg 64 :=
.seq AllocBody315_1033 AllocBody315_1058

def AllocBody315_1060 : StackLang.HolProg 64 :=
.seq AllocBody315_1032 AllocBody315_1059

def AllocBody315_1061 : StackLang.HolProg 64 :=
.seq AllocBody315_1031 AllocBody315_1060

def AllocBody315_1062 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody315_1030 AllocBody315_1061

def AllocBody315_1063 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1064 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 15

def AllocBody315_1065 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 14

def AllocBody315_1066 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def AllocBody315_1067 : StackLang.HolProg 64 :=
.seq AllocBody315_1065 AllocBody315_1066

def AllocBody315_1068 : StackLang.HolProg 64 :=
.seq AllocBody315_1064 AllocBody315_1067

def AllocBody315_1069 : StackLang.HolProg 64 :=
.seq AllocBody315_1063 AllocBody315_1068

def AllocBody315_1070 : StackLang.HolProg 64 :=
.seq AllocBody315_1062 AllocBody315_1069

def AllocBody315_1071 : StackLang.HolProg 64 :=
.seq AllocBody315_1005 AllocBody315_1070

def AllocBody315_1072 : StackLang.HolProg 64 :=
.seq AllocBody315_1004 AllocBody315_1071

def AllocBody315_1073 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody315_1003 AllocBody315_1072

def AllocBody315_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1076 : StackLang.HolProg 64 :=
.seq AllocBody315_1074 AllocBody315_1075

def AllocBody315_1077 : StackLang.HolProg 64 :=
.seq AllocBody315_1073 AllocBody315_1076

def AllocBody315_1078 : StackLang.HolProg 64 :=
.seq AllocBody315_520 AllocBody315_1077

def AllocBody315_1079 : StackLang.HolProg 64 :=
.seq AllocBody315_519 AllocBody315_1078

def AllocBody315_1080 : StackLang.HolProg 64 :=
.seq AllocBody315_518 AllocBody315_1079

def AllocBody315_1081 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody315_517 AllocBody315_1080

def AllocBody315_1082 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1083 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1084 : StackLang.HolProg 64 :=
.seq AllocBody315_1082 AllocBody315_1083

def AllocBody315_1085 : StackLang.HolProg 64 :=
.seq AllocBody315_1081 AllocBody315_1084

def AllocBody315_1086 : StackLang.HolProg 64 :=
.seq AllocBody315_410 AllocBody315_1085

def AllocBody315_1087 : StackLang.HolProg 64 :=
.seq AllocBody315_409 AllocBody315_1086

def AllocBody315_1088 : StackLang.HolProg 64 :=
.seq AllocBody315_408 AllocBody315_1087

def AllocBody315_1089 : StackLang.HolProg 64 :=
.seq AllocBody315_407 AllocBody315_1088

def AllocBody315_1090 : StackLang.HolProg 64 :=
.seq AllocBody315_292 AllocBody315_1089

def AllocBody315_1091 : StackLang.HolProg 64 :=
.seq AllocBody315_289 AllocBody315_1090

def AllocBody315_1092 : StackLang.HolProg 64 :=
.seq AllocBody315_288 AllocBody315_1091

def AllocBody315_1093 : StackLang.HolProg 64 :=
.seq AllocBody315_157 AllocBody315_1092

def AllocBody315_1094 : StackLang.HolProg 64 :=
.seq AllocBody315_156 AllocBody315_1093

def AllocBody315_1095 : StackLang.HolProg 64 :=
.seq AllocBody315_155 AllocBody315_1094

def AllocBody315_1096 : StackLang.HolProg 64 :=
.seq AllocBody315_154 AllocBody315_1095

def AllocBody315_1097 : StackLang.HolProg 64 :=
.seq AllocBody315_153 AllocBody315_1096

def AllocBody315_1098 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody315_152 AllocBody315_1097

def AllocBody315_1099 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody315_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody315_1104 : StackLang.HolProg 64 :=
.seq AllocBody315_1102 AllocBody315_1103

def AllocBody315_1105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def AllocBody315_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody315_1109 : StackLang.HolProg 64 :=
.seq AllocBody315_1107 AllocBody315_1108

def AllocBody315_1110 : StackLang.HolProg 64 :=
.seq AllocBody315_1106 AllocBody315_1109

def AllocBody315_1111 : StackLang.HolProg 64 :=
.seq AllocBody315_1105 AllocBody315_1110

def AllocBody315_1112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody315_1104 AllocBody315_1111

def AllocBody315_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 15

def AllocBody315_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 12

def AllocBody315_1116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def AllocBody315_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 11

def AllocBody315_1118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 9

def AllocBody315_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 14

def AllocBody315_1120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 8

def AllocBody315_1121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 13

def AllocBody315_1122 : StackLang.HolProg 64 :=
.seq AllocBody315_1120 AllocBody315_1121

def AllocBody315_1123 : StackLang.HolProg 64 :=
.seq AllocBody315_1119 AllocBody315_1122

def AllocBody315_1124 : StackLang.HolProg 64 :=
.seq AllocBody315_1118 AllocBody315_1123

def AllocBody315_1125 : StackLang.HolProg 64 :=
.seq AllocBody315_1117 AllocBody315_1124

def AllocBody315_1126 : StackLang.HolProg 64 :=
.seq AllocBody315_1116 AllocBody315_1125

def AllocBody315_1127 : StackLang.HolProg 64 :=
.seq AllocBody315_1115 AllocBody315_1126

def AllocBody315_1128 : StackLang.HolProg 64 :=
.seq AllocBody315_1114 AllocBody315_1127

def AllocBody315_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody315_1130 : StackLang.HolProg 64 :=
.seq AllocBody315_1128 AllocBody315_1129

def AllocBody315_1131 : StackLang.HolProg 64 :=
.seq AllocBody315_1113 AllocBody315_1130

def AllocBody315_1132 : StackLang.HolProg 64 :=
.seq AllocBody315_1112 AllocBody315_1131

def AllocBody315_1133 : StackLang.HolProg 64 :=
.seq AllocBody315_1101 AllocBody315_1132

def AllocBody315_1134 : StackLang.HolProg 64 :=
.seq AllocBody315_1100 AllocBody315_1133

def AllocBody315_1135 : StackLang.HolProg 64 :=
.seq AllocBody315_1099 AllocBody315_1134

def AllocBody315_1136 : StackLang.HolProg 64 :=
.seq AllocBody315_1098 AllocBody315_1135

def AllocBody315_1137 : StackLang.HolProg 64 :=
.seq AllocBody315_31 AllocBody315_1136

def AllocBody315_1138 : StackLang.HolProg 64 :=
.seq AllocBody315_30 AllocBody315_1137

def AllocBody315_1139 : StackLang.HolProg 64 :=
.seq AllocBody315_29 AllocBody315_1138

def AllocBody315_1140 : StackLang.HolProg 64 :=
.seq AllocBody315_28 AllocBody315_1139

def AllocBody315_1141 : StackLang.HolProg 64 :=
.seq AllocBody315_27 AllocBody315_1140

def AllocBody315_1142 : StackLang.HolProg 64 :=
.seq AllocBody315_26 AllocBody315_1141

def AllocBody315_1143 : StackLang.HolProg 64 :=
.seq AllocBody315_25 AllocBody315_1142

def AllocBody315_1144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody315_1146 : StackLang.HolProg 64 :=
.seq AllocBody315_1144 AllocBody315_1145

def AllocBody315_1147 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody315_1143 AllocBody315_1146

def AllocBody315_1148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 15

def AllocBody315_1150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 12

def AllocBody315_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 10

def AllocBody315_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 11

def AllocBody315_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 9

def AllocBody315_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 14

def AllocBody315_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 8

def AllocBody315_1156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 13

def AllocBody315_1157 : StackLang.HolProg 64 :=
.seq AllocBody315_1155 AllocBody315_1156

def AllocBody315_1158 : StackLang.HolProg 64 :=
.seq AllocBody315_1154 AllocBody315_1157

def AllocBody315_1159 : StackLang.HolProg 64 :=
.seq AllocBody315_1153 AllocBody315_1158

def AllocBody315_1160 : StackLang.HolProg 64 :=
.seq AllocBody315_1152 AllocBody315_1159

def AllocBody315_1161 : StackLang.HolProg 64 :=
.seq AllocBody315_1151 AllocBody315_1160

def AllocBody315_1162 : StackLang.HolProg 64 :=
.seq AllocBody315_1150 AllocBody315_1161

def AllocBody315_1163 : StackLang.HolProg 64 :=
.seq AllocBody315_1149 AllocBody315_1162

def AllocBody315_1164 : StackLang.HolProg 64 :=
.seq AllocBody315_1148 AllocBody315_1163

def AllocBody315_1165 : StackLang.HolProg 64 :=
.seq AllocBody315_1147 AllocBody315_1164

def AllocBody315_1166 : StackLang.HolProg 64 :=
.seq AllocBody315_24 AllocBody315_1165

def AllocBody315_1167 : StackLang.HolProg 64 :=
.seq AllocBody315_23 AllocBody315_1166

def AllocBody315_1168 : StackLang.HolProg 64 :=
.loop AllocBody315_1167

def AllocBody315_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody315_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 14

def AllocBody315_1171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 15

def AllocBody315_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 16

def AllocBody315_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody315_1174 : StackLang.HolProg 64 :=
.seq AllocBody315_1172 AllocBody315_1173

def AllocBody315_1175 : StackLang.HolProg 64 :=
.seq AllocBody315_1171 AllocBody315_1174

def AllocBody315_1176 : StackLang.HolProg 64 :=
.seq AllocBody315_1170 AllocBody315_1175

def AllocBody315_1177 : StackLang.HolProg 64 :=
.seq AllocBody315_1169 AllocBody315_1176

def AllocBody315_1178 : StackLang.HolProg 64 :=
.seq AllocBody315_1168 AllocBody315_1177

def AllocBody315_1179 : StackLang.HolProg 64 :=
.seq AllocBody315_22 AllocBody315_1178

def AllocBody315_1180 : StackLang.HolProg 64 :=
.seq AllocBody315_5 AllocBody315_1179

def AllocBody315_1181 : StackLang.HolProg 64 :=
.seq AllocBody315_4 AllocBody315_1180

def AllocBody315_1182 : StackLang.HolProg 64 :=
.seq AllocBody315_3 AllocBody315_1181

def AllocBody315_1183 : StackLang.HolProg 64 :=
.seq AllocBody315_2 AllocBody315_1182

def AllocBody315_1184 : StackLang.HolProg 64 :=
.seq AllocBody315_1 AllocBody315_1183

def AllocBody315_1185 : StackLang.HolProg 64 :=
.seq AllocBody315_0 AllocBody315_1184

def Alloc315 : Nat × StackLang.HolProg 64 := (315, AllocBody315_1185)
theorem Alloc315_eq : StackAlloc.progComp (315, raw315) = Alloc315 := by
  kernel_rfl
#print axioms Alloc315_eq
end InitECandidate.Proofs.BackendStages
