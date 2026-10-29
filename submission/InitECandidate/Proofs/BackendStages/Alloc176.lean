import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw176
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody176_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody176_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def AllocBody176_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody176_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody176_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 128#64)

def AllocBody176_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody176_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody176_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody176_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody176_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody176_15 : StackLang.HolProg 64 :=
.seq AllocBody176_13 AllocBody176_14

def AllocBody176_16 : StackLang.HolProg 64 :=
.seq AllocBody176_12 AllocBody176_15

def AllocBody176_17 : StackLang.HolProg 64 :=
.seq AllocBody176_11 AllocBody176_16

def AllocBody176_18 : StackLang.HolProg 64 :=
.seq AllocBody176_10 AllocBody176_17

def AllocBody176_19 : StackLang.HolProg 64 :=
.seq AllocBody176_9 AllocBody176_18

def AllocBody176_20 : StackLang.HolProg 64 :=
.seq AllocBody176_8 AllocBody176_19

def AllocBody176_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody176_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody176_20 AllocBody176_21

def AllocBody176_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody176_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody176_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody176_26 : StackLang.HolProg 64 :=
.seq AllocBody176_24 AllocBody176_25

def AllocBody176_27 : StackLang.HolProg 64 :=
.seq AllocBody176_23 AllocBody176_26

def AllocBody176_28 : StackLang.HolProg 64 :=
.seq AllocBody176_22 AllocBody176_27

def AllocBody176_29 : StackLang.HolProg 64 :=
.seq AllocBody176_7 AllocBody176_28

def AllocBody176_30 : StackLang.HolProg 64 :=
.seq AllocBody176_6 AllocBody176_29

def AllocBody176_31 : StackLang.HolProg 64 :=
.seq AllocBody176_5 AllocBody176_30

def AllocBody176_32 : StackLang.HolProg 64 :=
.seq AllocBody176_4 AllocBody176_31

def AllocBody176_33 : StackLang.HolProg 64 :=
.seq AllocBody176_3 AllocBody176_32

def AllocBody176_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody176_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody176_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody176_37 : StackLang.HolProg 64 :=
.seq AllocBody176_35 AllocBody176_36

def AllocBody176_38 : StackLang.HolProg 64 :=
.seq AllocBody176_34 AllocBody176_37

def AllocBody176_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody176_33 AllocBody176_38

def AllocBody176_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody176_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody176_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 128#64)

def AllocBody176_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody176_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody176_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody176_46 : StackLang.HolProg 64 :=
.seq AllocBody176_44 AllocBody176_45

def AllocBody176_47 : StackLang.HolProg 64 :=
.seq AllocBody176_43 AllocBody176_46

def AllocBody176_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 197#64)

def AllocBody176_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody176_51 : StackLang.HolProg 64 :=
.seq AllocBody176_49 AllocBody176_50

def AllocBody176_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody176_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody176_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody176_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 176 3

def AllocBody176_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody176_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody176_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody176_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody176_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody176_62 : StackLang.HolProg 64 :=
.seq AllocBody176_60 AllocBody176_61

def AllocBody176_63 : StackLang.HolProg 64 :=
.seq AllocBody176_59 AllocBody176_62

def AllocBody176_64 : StackLang.HolProg 64 :=
.seq AllocBody176_58 AllocBody176_63

def AllocBody176_65 : StackLang.HolProg 64 :=
.seq AllocBody176_57 AllocBody176_64

def AllocBody176_66 : StackLang.HolProg 64 :=
.seq AllocBody176_56 AllocBody176_65

def AllocBody176_67 : StackLang.HolProg 64 :=
.seq AllocBody176_55 AllocBody176_66

def AllocBody176_68 : StackLang.HolProg 64 :=
.seq AllocBody176_54 AllocBody176_67

def AllocBody176_69 : StackLang.HolProg 64 :=
.seq AllocBody176_53 AllocBody176_68

def AllocBody176_70 : StackLang.HolProg 64 :=
.seq AllocBody176_52 AllocBody176_69

def AllocBody176_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody176_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody176_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody176_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody176_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody176_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody176_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody176_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody176_81 : StackLang.HolProg 64 :=
.seq AllocBody176_79 AllocBody176_80

def AllocBody176_82 : StackLang.HolProg 64 :=
.seq AllocBody176_78 AllocBody176_81

def AllocBody176_83 : StackLang.HolProg 64 :=
.seq AllocBody176_77 AllocBody176_82

def AllocBody176_84 : StackLang.HolProg 64 :=
.seq AllocBody176_76 AllocBody176_83

def AllocBody176_85 : StackLang.HolProg 64 :=
.seq AllocBody176_75 AllocBody176_84

def AllocBody176_86 : StackLang.HolProg 64 :=
.seq AllocBody176_74 AllocBody176_85

def AllocBody176_87 : StackLang.HolProg 64 :=
.seq AllocBody176_73 AllocBody176_86

def AllocBody176_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody176_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody176_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody176_91 : StackLang.HolProg 64 :=
.seq AllocBody176_89 AllocBody176_90

def AllocBody176_92 : StackLang.HolProg 64 :=
.seq AllocBody176_88 AllocBody176_91

def AllocBody176_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody176_94 : StackLang.HolProg 64 :=
.seq AllocBody176_92 AllocBody176_93

def AllocBody176_95 : StackLang.HolProg 64 :=
.call (some (AllocBody176_87, 0, 176, 2)) (Sum.inl 174) (some (AllocBody176_94, 176, 3))

def AllocBody176_96 : StackLang.HolProg 64 :=
.seq AllocBody176_72 AllocBody176_95

def AllocBody176_97 : StackLang.HolProg 64 :=
.seq AllocBody176_71 AllocBody176_96

def AllocBody176_98 : StackLang.HolProg 64 :=
.seq AllocBody176_70 AllocBody176_97

def AllocBody176_99 : StackLang.HolProg 64 :=
.seq AllocBody176_51 AllocBody176_98

def AllocBody176_100 : StackLang.HolProg 64 :=
.seq AllocBody176_48 AllocBody176_99

def AllocBody176_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody176_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody176_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody176_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody176_106 : StackLang.HolProg 64 :=
.seq AllocBody176_104 AllocBody176_105

def AllocBody176_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 198#64)

def AllocBody176_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody176_110 : StackLang.HolProg 64 :=
.seq AllocBody176_108 AllocBody176_109

def AllocBody176_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody176_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody176_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody176_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 176 5

def AllocBody176_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody176_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody176_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody176_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody176_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody176_121 : StackLang.HolProg 64 :=
.seq AllocBody176_119 AllocBody176_120

def AllocBody176_122 : StackLang.HolProg 64 :=
.seq AllocBody176_118 AllocBody176_121

def AllocBody176_123 : StackLang.HolProg 64 :=
.seq AllocBody176_117 AllocBody176_122

def AllocBody176_124 : StackLang.HolProg 64 :=
.seq AllocBody176_116 AllocBody176_123

def AllocBody176_125 : StackLang.HolProg 64 :=
.seq AllocBody176_115 AllocBody176_124

def AllocBody176_126 : StackLang.HolProg 64 :=
.seq AllocBody176_114 AllocBody176_125

def AllocBody176_127 : StackLang.HolProg 64 :=
.seq AllocBody176_113 AllocBody176_126

def AllocBody176_128 : StackLang.HolProg 64 :=
.seq AllocBody176_112 AllocBody176_127

def AllocBody176_129 : StackLang.HolProg 64 :=
.seq AllocBody176_111 AllocBody176_128

def AllocBody176_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody176_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody176_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody176_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody176_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody176_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody176_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody176_139 : StackLang.HolProg 64 :=
.seq AllocBody176_137 AllocBody176_138

def AllocBody176_140 : StackLang.HolProg 64 :=
.seq AllocBody176_136 AllocBody176_139

def AllocBody176_141 : StackLang.HolProg 64 :=
.seq AllocBody176_135 AllocBody176_140

def AllocBody176_142 : StackLang.HolProg 64 :=
.seq AllocBody176_134 AllocBody176_141

def AllocBody176_143 : StackLang.HolProg 64 :=
.seq AllocBody176_133 AllocBody176_142

def AllocBody176_144 : StackLang.HolProg 64 :=
.seq AllocBody176_132 AllocBody176_143

def AllocBody176_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody176_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody176_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody176_148 : StackLang.HolProg 64 :=
.seq AllocBody176_146 AllocBody176_147

def AllocBody176_149 : StackLang.HolProg 64 :=
.seq AllocBody176_145 AllocBody176_148

def AllocBody176_150 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody176_151 : StackLang.HolProg 64 :=
.seq AllocBody176_149 AllocBody176_150

def AllocBody176_152 : StackLang.HolProg 64 :=
.call (some (AllocBody176_144, 0, 176, 4)) (Sum.inl 77) (some (AllocBody176_151, 176, 5))

def AllocBody176_153 : StackLang.HolProg 64 :=
.seq AllocBody176_131 AllocBody176_152

def AllocBody176_154 : StackLang.HolProg 64 :=
.seq AllocBody176_130 AllocBody176_153

def AllocBody176_155 : StackLang.HolProg 64 :=
.seq AllocBody176_129 AllocBody176_154

def AllocBody176_156 : StackLang.HolProg 64 :=
.seq AllocBody176_110 AllocBody176_155

def AllocBody176_157 : StackLang.HolProg 64 :=
.seq AllocBody176_107 AllocBody176_156

def AllocBody176_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody176_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody176_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody176_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody176_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody176_164 : StackLang.HolProg 64 :=
.seq AllocBody176_162 AllocBody176_163

def AllocBody176_165 : StackLang.HolProg 64 :=
.seq AllocBody176_161 AllocBody176_164

def AllocBody176_166 : StackLang.HolProg 64 :=
.seq AllocBody176_160 AllocBody176_165

def AllocBody176_167 : StackLang.HolProg 64 :=
.seq AllocBody176_159 AllocBody176_166

def AllocBody176_168 : StackLang.HolProg 64 :=
.seq AllocBody176_158 AllocBody176_167

def AllocBody176_169 : StackLang.HolProg 64 :=
.seq AllocBody176_157 AllocBody176_168

def AllocBody176_170 : StackLang.HolProg 64 :=
.seq AllocBody176_106 AllocBody176_169

def AllocBody176_171 : StackLang.HolProg 64 :=
.seq AllocBody176_103 AllocBody176_170

def AllocBody176_172 : StackLang.HolProg 64 :=
.seq AllocBody176_102 AllocBody176_171

def AllocBody176_173 : StackLang.HolProg 64 :=
.seq AllocBody176_101 AllocBody176_172

def AllocBody176_174 : StackLang.HolProg 64 :=
.seq AllocBody176_100 AllocBody176_173

def AllocBody176_175 : StackLang.HolProg 64 :=
.seq AllocBody176_47 AllocBody176_174

def AllocBody176_176 : StackLang.HolProg 64 :=
.seq AllocBody176_42 AllocBody176_175

def AllocBody176_177 : StackLang.HolProg 64 :=
.seq AllocBody176_41 AllocBody176_176

def AllocBody176_178 : StackLang.HolProg 64 :=
.seq AllocBody176_40 AllocBody176_177

def AllocBody176_179 : StackLang.HolProg 64 :=
.seq AllocBody176_39 AllocBody176_178

def AllocBody176_180 : StackLang.HolProg 64 :=
.seq AllocBody176_2 AllocBody176_179

def AllocBody176_181 : StackLang.HolProg 64 :=
.seq AllocBody176_1 AllocBody176_180

def AllocBody176_182 : StackLang.HolProg 64 :=
.seq AllocBody176_0 AllocBody176_181

def Alloc176 : Nat × StackLang.HolProg 64 := (176, AllocBody176_182)
theorem Alloc176_eq : StackAlloc.progComp (176, raw176) = Alloc176 := by
  kernel_rfl
#print axioms Alloc176_eq
end InitECandidate.Proofs.BackendStages
