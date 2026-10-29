import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw325
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody325_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody325_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody325_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody325_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody325_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody325_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody325_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody325_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody325_11 : StackLang.HolProg 64 :=
.seq AllocBody325_9 AllocBody325_10

def AllocBody325_12 : StackLang.HolProg 64 :=
.seq AllocBody325_8 AllocBody325_11

def AllocBody325_13 : StackLang.HolProg 64 :=
.seq AllocBody325_7 AllocBody325_12

def AllocBody325_14 : StackLang.HolProg 64 :=
.seq AllocBody325_6 AllocBody325_13

def AllocBody325_15 : StackLang.HolProg 64 :=
.seq AllocBody325_5 AllocBody325_14

def AllocBody325_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody325_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody325_15 AllocBody325_16

def AllocBody325_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody325_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody325_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody325_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody325_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody325_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody325_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody325_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody325_27 : StackLang.HolProg 64 :=
.seq AllocBody325_25 AllocBody325_26

def AllocBody325_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 923#64)

def AllocBody325_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody325_31 : StackLang.HolProg 64 :=
.seq AllocBody325_29 AllocBody325_30

def AllocBody325_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody325_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody325_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody325_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 325 3

def AllocBody325_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody325_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody325_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody325_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody325_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody325_42 : StackLang.HolProg 64 :=
.seq AllocBody325_40 AllocBody325_41

def AllocBody325_43 : StackLang.HolProg 64 :=
.seq AllocBody325_39 AllocBody325_42

def AllocBody325_44 : StackLang.HolProg 64 :=
.seq AllocBody325_38 AllocBody325_43

def AllocBody325_45 : StackLang.HolProg 64 :=
.seq AllocBody325_37 AllocBody325_44

def AllocBody325_46 : StackLang.HolProg 64 :=
.seq AllocBody325_36 AllocBody325_45

def AllocBody325_47 : StackLang.HolProg 64 :=
.seq AllocBody325_35 AllocBody325_46

def AllocBody325_48 : StackLang.HolProg 64 :=
.seq AllocBody325_34 AllocBody325_47

def AllocBody325_49 : StackLang.HolProg 64 :=
.seq AllocBody325_33 AllocBody325_48

def AllocBody325_50 : StackLang.HolProg 64 :=
.seq AllocBody325_32 AllocBody325_49

def AllocBody325_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody325_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody325_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody325_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody325_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody325_58 : StackLang.HolProg 64 :=
.seq AllocBody325_56 AllocBody325_57

def AllocBody325_59 : StackLang.HolProg 64 :=
.seq AllocBody325_55 AllocBody325_58

def AllocBody325_60 : StackLang.HolProg 64 :=
.seq AllocBody325_54 AllocBody325_59

def AllocBody325_61 : StackLang.HolProg 64 :=
.seq AllocBody325_53 AllocBody325_60

def AllocBody325_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody325_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody325_64 : StackLang.HolProg 64 :=
.seq AllocBody325_62 AllocBody325_63

def AllocBody325_65 : StackLang.HolProg 64 :=
.call (some (AllocBody325_61, 0, 325, 2)) (Sum.inl 286) (some (AllocBody325_64, 325, 3))

def AllocBody325_66 : StackLang.HolProg 64 :=
.seq AllocBody325_52 AllocBody325_65

def AllocBody325_67 : StackLang.HolProg 64 :=
.seq AllocBody325_51 AllocBody325_66

def AllocBody325_68 : StackLang.HolProg 64 :=
.seq AllocBody325_50 AllocBody325_67

def AllocBody325_69 : StackLang.HolProg 64 :=
.seq AllocBody325_31 AllocBody325_68

def AllocBody325_70 : StackLang.HolProg 64 :=
.seq AllocBody325_28 AllocBody325_69

def AllocBody325_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody325_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_73 : StackLang.HolProg 64 :=
.seq AllocBody325_71 AllocBody325_72

def AllocBody325_74 : StackLang.HolProg 64 :=
.seq AllocBody325_70 AllocBody325_73

def AllocBody325_75 : StackLang.HolProg 64 :=
.seq AllocBody325_27 AllocBody325_74

def AllocBody325_76 : StackLang.HolProg 64 :=
.seq AllocBody325_24 AllocBody325_75

def AllocBody325_77 : StackLang.HolProg 64 :=
.seq AllocBody325_23 AllocBody325_76

def AllocBody325_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody325_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody325_80 : StackLang.HolProg 64 :=
.seq AllocBody325_78 AllocBody325_79

def AllocBody325_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody325_77 AllocBody325_80

def AllocBody325_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody325_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody325_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody325_85 : StackLang.HolProg 64 :=
.seq AllocBody325_83 AllocBody325_84

def AllocBody325_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 924#64)

def AllocBody325_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody325_89 : StackLang.HolProg 64 :=
.seq AllocBody325_87 AllocBody325_88

def AllocBody325_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody325_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody325_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody325_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 325 5

def AllocBody325_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody325_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody325_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody325_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody325_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody325_100 : StackLang.HolProg 64 :=
.seq AllocBody325_98 AllocBody325_99

def AllocBody325_101 : StackLang.HolProg 64 :=
.seq AllocBody325_97 AllocBody325_100

def AllocBody325_102 : StackLang.HolProg 64 :=
.seq AllocBody325_96 AllocBody325_101

def AllocBody325_103 : StackLang.HolProg 64 :=
.seq AllocBody325_95 AllocBody325_102

def AllocBody325_104 : StackLang.HolProg 64 :=
.seq AllocBody325_94 AllocBody325_103

def AllocBody325_105 : StackLang.HolProg 64 :=
.seq AllocBody325_93 AllocBody325_104

def AllocBody325_106 : StackLang.HolProg 64 :=
.seq AllocBody325_92 AllocBody325_105

def AllocBody325_107 : StackLang.HolProg 64 :=
.seq AllocBody325_91 AllocBody325_106

def AllocBody325_108 : StackLang.HolProg 64 :=
.seq AllocBody325_90 AllocBody325_107

def AllocBody325_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody325_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody325_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody325_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody325_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody325_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody325_117 : StackLang.HolProg 64 :=
.seq AllocBody325_115 AllocBody325_116

def AllocBody325_118 : StackLang.HolProg 64 :=
.seq AllocBody325_114 AllocBody325_117

def AllocBody325_119 : StackLang.HolProg 64 :=
.seq AllocBody325_113 AllocBody325_118

def AllocBody325_120 : StackLang.HolProg 64 :=
.seq AllocBody325_112 AllocBody325_119

def AllocBody325_121 : StackLang.HolProg 64 :=
.seq AllocBody325_111 AllocBody325_120

def AllocBody325_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody325_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody325_124 : StackLang.HolProg 64 :=
.seq AllocBody325_122 AllocBody325_123

def AllocBody325_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody325_126 : StackLang.HolProg 64 :=
.seq AllocBody325_124 AllocBody325_125

def AllocBody325_127 : StackLang.HolProg 64 :=
.call (some (AllocBody325_121, 0, 325, 4)) (Sum.inl 324) (some (AllocBody325_126, 325, 5))

def AllocBody325_128 : StackLang.HolProg 64 :=
.seq AllocBody325_110 AllocBody325_127

def AllocBody325_129 : StackLang.HolProg 64 :=
.seq AllocBody325_109 AllocBody325_128

def AllocBody325_130 : StackLang.HolProg 64 :=
.seq AllocBody325_108 AllocBody325_129

def AllocBody325_131 : StackLang.HolProg 64 :=
.seq AllocBody325_89 AllocBody325_130

def AllocBody325_132 : StackLang.HolProg 64 :=
.seq AllocBody325_86 AllocBody325_131

def AllocBody325_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody325_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody325_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody325_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody325_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody325_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody325_141 : StackLang.HolProg 64 :=
.seq AllocBody325_139 AllocBody325_140

def AllocBody325_142 : StackLang.HolProg 64 :=
.seq AllocBody325_138 AllocBody325_141

def AllocBody325_143 : StackLang.HolProg 64 :=
.seq AllocBody325_137 AllocBody325_142

def AllocBody325_144 : StackLang.HolProg 64 :=
.seq AllocBody325_136 AllocBody325_143

def AllocBody325_145 : StackLang.HolProg 64 :=
.seq AllocBody325_135 AllocBody325_144

def AllocBody325_146 : StackLang.HolProg 64 :=
.seq AllocBody325_134 AllocBody325_145

def AllocBody325_147 : StackLang.HolProg 64 :=
.seq AllocBody325_133 AllocBody325_146

def AllocBody325_148 : StackLang.HolProg 64 :=
.seq AllocBody325_132 AllocBody325_147

def AllocBody325_149 : StackLang.HolProg 64 :=
.seq AllocBody325_85 AllocBody325_148

def AllocBody325_150 : StackLang.HolProg 64 :=
.seq AllocBody325_82 AllocBody325_149

def AllocBody325_151 : StackLang.HolProg 64 :=
.seq AllocBody325_81 AllocBody325_150

def AllocBody325_152 : StackLang.HolProg 64 :=
.seq AllocBody325_22 AllocBody325_151

def AllocBody325_153 : StackLang.HolProg 64 :=
.seq AllocBody325_21 AllocBody325_152

def AllocBody325_154 : StackLang.HolProg 64 :=
.seq AllocBody325_20 AllocBody325_153

def AllocBody325_155 : StackLang.HolProg 64 :=
.seq AllocBody325_19 AllocBody325_154

def AllocBody325_156 : StackLang.HolProg 64 :=
.seq AllocBody325_18 AllocBody325_155

def AllocBody325_157 : StackLang.HolProg 64 :=
.seq AllocBody325_17 AllocBody325_156

def AllocBody325_158 : StackLang.HolProg 64 :=
.seq AllocBody325_4 AllocBody325_157

def AllocBody325_159 : StackLang.HolProg 64 :=
.seq AllocBody325_3 AllocBody325_158

def AllocBody325_160 : StackLang.HolProg 64 :=
.seq AllocBody325_2 AllocBody325_159

def AllocBody325_161 : StackLang.HolProg 64 :=
.seq AllocBody325_1 AllocBody325_160

def AllocBody325_162 : StackLang.HolProg 64 :=
.seq AllocBody325_0 AllocBody325_161

def Alloc325 : Nat × StackLang.HolProg 64 := (325, AllocBody325_162)
theorem Alloc325_eq : StackAlloc.progComp (325, raw325) = Alloc325 := by
  kernel_rfl
#print axioms Alloc325_eq
end InitECandidate.Proofs.BackendStages
