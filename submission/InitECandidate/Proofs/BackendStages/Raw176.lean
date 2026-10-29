import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function176
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody176_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody176_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def rawBody176_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody176_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody176_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 128#64)

def rawBody176_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody176_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody176_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody176_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody176_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody176_15 : StackLang.HolProg 64 :=
.seq rawBody176_13 rawBody176_14

def rawBody176_16 : StackLang.HolProg 64 :=
.seq rawBody176_12 rawBody176_15

def rawBody176_17 : StackLang.HolProg 64 :=
.seq rawBody176_11 rawBody176_16

def rawBody176_18 : StackLang.HolProg 64 :=
.seq rawBody176_10 rawBody176_17

def rawBody176_19 : StackLang.HolProg 64 :=
.seq rawBody176_9 rawBody176_18

def rawBody176_20 : StackLang.HolProg 64 :=
.seq rawBody176_8 rawBody176_19

def rawBody176_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody176_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody176_20 rawBody176_21

def rawBody176_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody176_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody176_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody176_26 : StackLang.HolProg 64 :=
.seq rawBody176_24 rawBody176_25

def rawBody176_27 : StackLang.HolProg 64 :=
.seq rawBody176_23 rawBody176_26

def rawBody176_28 : StackLang.HolProg 64 :=
.seq rawBody176_22 rawBody176_27

def rawBody176_29 : StackLang.HolProg 64 :=
.seq rawBody176_7 rawBody176_28

def rawBody176_30 : StackLang.HolProg 64 :=
.seq rawBody176_6 rawBody176_29

def rawBody176_31 : StackLang.HolProg 64 :=
.seq rawBody176_5 rawBody176_30

def rawBody176_32 : StackLang.HolProg 64 :=
.seq rawBody176_4 rawBody176_31

def rawBody176_33 : StackLang.HolProg 64 :=
.seq rawBody176_3 rawBody176_32

def rawBody176_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody176_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody176_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody176_37 : StackLang.HolProg 64 :=
.seq rawBody176_35 rawBody176_36

def rawBody176_38 : StackLang.HolProg 64 :=
.seq rawBody176_34 rawBody176_37

def rawBody176_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody176_33 rawBody176_38

def rawBody176_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody176_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody176_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 128#64)

def rawBody176_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody176_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody176_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody176_46 : StackLang.HolProg 64 :=
.seq rawBody176_44 rawBody176_45

def rawBody176_47 : StackLang.HolProg 64 :=
.seq rawBody176_43 rawBody176_46

def rawBody176_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 197#64)

def rawBody176_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody176_51 : StackLang.HolProg 64 :=
.seq rawBody176_49 rawBody176_50

def rawBody176_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody176_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody176_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody176_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 176 3

def rawBody176_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody176_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody176_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody176_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody176_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody176_62 : StackLang.HolProg 64 :=
.seq rawBody176_60 rawBody176_61

def rawBody176_63 : StackLang.HolProg 64 :=
.seq rawBody176_59 rawBody176_62

def rawBody176_64 : StackLang.HolProg 64 :=
.seq rawBody176_58 rawBody176_63

def rawBody176_65 : StackLang.HolProg 64 :=
.seq rawBody176_57 rawBody176_64

def rawBody176_66 : StackLang.HolProg 64 :=
.seq rawBody176_56 rawBody176_65

def rawBody176_67 : StackLang.HolProg 64 :=
.seq rawBody176_55 rawBody176_66

def rawBody176_68 : StackLang.HolProg 64 :=
.seq rawBody176_54 rawBody176_67

def rawBody176_69 : StackLang.HolProg 64 :=
.seq rawBody176_53 rawBody176_68

def rawBody176_70 : StackLang.HolProg 64 :=
.seq rawBody176_52 rawBody176_69

def rawBody176_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody176_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody176_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody176_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody176_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody176_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody176_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody176_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody176_81 : StackLang.HolProg 64 :=
.seq rawBody176_79 rawBody176_80

def rawBody176_82 : StackLang.HolProg 64 :=
.seq rawBody176_78 rawBody176_81

def rawBody176_83 : StackLang.HolProg 64 :=
.seq rawBody176_77 rawBody176_82

def rawBody176_84 : StackLang.HolProg 64 :=
.seq rawBody176_76 rawBody176_83

def rawBody176_85 : StackLang.HolProg 64 :=
.seq rawBody176_75 rawBody176_84

def rawBody176_86 : StackLang.HolProg 64 :=
.seq rawBody176_74 rawBody176_85

def rawBody176_87 : StackLang.HolProg 64 :=
.seq rawBody176_73 rawBody176_86

def rawBody176_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody176_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody176_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody176_91 : StackLang.HolProg 64 :=
.seq rawBody176_89 rawBody176_90

def rawBody176_92 : StackLang.HolProg 64 :=
.seq rawBody176_88 rawBody176_91

def rawBody176_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody176_94 : StackLang.HolProg 64 :=
.seq rawBody176_92 rawBody176_93

def rawBody176_95 : StackLang.HolProg 64 :=
.call (some (rawBody176_87, 0, 176, 2)) (Sum.inl 174) (some (rawBody176_94, 176, 3))

def rawBody176_96 : StackLang.HolProg 64 :=
.seq rawBody176_72 rawBody176_95

def rawBody176_97 : StackLang.HolProg 64 :=
.seq rawBody176_71 rawBody176_96

def rawBody176_98 : StackLang.HolProg 64 :=
.seq rawBody176_70 rawBody176_97

def rawBody176_99 : StackLang.HolProg 64 :=
.seq rawBody176_51 rawBody176_98

def rawBody176_100 : StackLang.HolProg 64 :=
.seq rawBody176_48 rawBody176_99

def rawBody176_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody176_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody176_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody176_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody176_106 : StackLang.HolProg 64 :=
.seq rawBody176_104 rawBody176_105

def rawBody176_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 198#64)

def rawBody176_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody176_110 : StackLang.HolProg 64 :=
.seq rawBody176_108 rawBody176_109

def rawBody176_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody176_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody176_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody176_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 176 5

def rawBody176_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody176_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody176_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody176_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody176_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody176_121 : StackLang.HolProg 64 :=
.seq rawBody176_119 rawBody176_120

def rawBody176_122 : StackLang.HolProg 64 :=
.seq rawBody176_118 rawBody176_121

def rawBody176_123 : StackLang.HolProg 64 :=
.seq rawBody176_117 rawBody176_122

def rawBody176_124 : StackLang.HolProg 64 :=
.seq rawBody176_116 rawBody176_123

def rawBody176_125 : StackLang.HolProg 64 :=
.seq rawBody176_115 rawBody176_124

def rawBody176_126 : StackLang.HolProg 64 :=
.seq rawBody176_114 rawBody176_125

def rawBody176_127 : StackLang.HolProg 64 :=
.seq rawBody176_113 rawBody176_126

def rawBody176_128 : StackLang.HolProg 64 :=
.seq rawBody176_112 rawBody176_127

def rawBody176_129 : StackLang.HolProg 64 :=
.seq rawBody176_111 rawBody176_128

def rawBody176_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody176_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody176_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody176_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody176_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody176_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody176_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody176_139 : StackLang.HolProg 64 :=
.seq rawBody176_137 rawBody176_138

def rawBody176_140 : StackLang.HolProg 64 :=
.seq rawBody176_136 rawBody176_139

def rawBody176_141 : StackLang.HolProg 64 :=
.seq rawBody176_135 rawBody176_140

def rawBody176_142 : StackLang.HolProg 64 :=
.seq rawBody176_134 rawBody176_141

def rawBody176_143 : StackLang.HolProg 64 :=
.seq rawBody176_133 rawBody176_142

def rawBody176_144 : StackLang.HolProg 64 :=
.seq rawBody176_132 rawBody176_143

def rawBody176_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody176_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody176_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody176_148 : StackLang.HolProg 64 :=
.seq rawBody176_146 rawBody176_147

def rawBody176_149 : StackLang.HolProg 64 :=
.seq rawBody176_145 rawBody176_148

def rawBody176_150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody176_151 : StackLang.HolProg 64 :=
.seq rawBody176_149 rawBody176_150

def rawBody176_152 : StackLang.HolProg 64 :=
.call (some (rawBody176_144, 0, 176, 4)) (Sum.inl 77) (some (rawBody176_151, 176, 5))

def rawBody176_153 : StackLang.HolProg 64 :=
.seq rawBody176_131 rawBody176_152

def rawBody176_154 : StackLang.HolProg 64 :=
.seq rawBody176_130 rawBody176_153

def rawBody176_155 : StackLang.HolProg 64 :=
.seq rawBody176_129 rawBody176_154

def rawBody176_156 : StackLang.HolProg 64 :=
.seq rawBody176_110 rawBody176_155

def rawBody176_157 : StackLang.HolProg 64 :=
.seq rawBody176_107 rawBody176_156

def rawBody176_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody176_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody176_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody176_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody176_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody176_164 : StackLang.HolProg 64 :=
.seq rawBody176_162 rawBody176_163

def rawBody176_165 : StackLang.HolProg 64 :=
.seq rawBody176_161 rawBody176_164

def rawBody176_166 : StackLang.HolProg 64 :=
.seq rawBody176_160 rawBody176_165

def rawBody176_167 : StackLang.HolProg 64 :=
.seq rawBody176_159 rawBody176_166

def rawBody176_168 : StackLang.HolProg 64 :=
.seq rawBody176_158 rawBody176_167

def rawBody176_169 : StackLang.HolProg 64 :=
.seq rawBody176_157 rawBody176_168

def rawBody176_170 : StackLang.HolProg 64 :=
.seq rawBody176_106 rawBody176_169

def rawBody176_171 : StackLang.HolProg 64 :=
.seq rawBody176_103 rawBody176_170

def rawBody176_172 : StackLang.HolProg 64 :=
.seq rawBody176_102 rawBody176_171

def rawBody176_173 : StackLang.HolProg 64 :=
.seq rawBody176_101 rawBody176_172

def rawBody176_174 : StackLang.HolProg 64 :=
.seq rawBody176_100 rawBody176_173

def rawBody176_175 : StackLang.HolProg 64 :=
.seq rawBody176_47 rawBody176_174

def rawBody176_176 : StackLang.HolProg 64 :=
.seq rawBody176_42 rawBody176_175

def rawBody176_177 : StackLang.HolProg 64 :=
.seq rawBody176_41 rawBody176_176

def rawBody176_178 : StackLang.HolProg 64 :=
.seq rawBody176_40 rawBody176_177

def rawBody176_179 : StackLang.HolProg 64 :=
.seq rawBody176_39 rawBody176_178

def rawBody176_180 : StackLang.HolProg 64 :=
.seq rawBody176_2 rawBody176_179

def rawBody176_181 : StackLang.HolProg 64 :=
.seq rawBody176_1 rawBody176_180

def rawBody176_182 : StackLang.HolProg 64 :=
.seq rawBody176_0 rawBody176_181

def raw176 : StackLang.HolProg 64 := rawBody176_182
theorem raw176_eq : StackRawCall.compTop RawInfo.rawInfo (function176 (.list [])).1 = raw176 := by
  kernel_rfl
#print axioms raw176_eq
end InitECandidate.Proofs.BackendStages
