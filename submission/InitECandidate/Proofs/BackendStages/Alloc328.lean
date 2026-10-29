import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw328
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody328_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody328_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody328_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody328_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody328_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody328_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody328_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody328_9 : StackLang.HolProg 64 :=
.seq AllocBody328_7 AllocBody328_8

def AllocBody328_10 : StackLang.HolProg 64 :=
.seq AllocBody328_6 AllocBody328_9

def AllocBody328_11 : StackLang.HolProg 64 :=
.seq AllocBody328_5 AllocBody328_10

def AllocBody328_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody328_11 AllocBody328_12

def AllocBody328_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody328_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody328_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody328_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody328_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody328_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def AllocBody328_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody328_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody328_23 : StackLang.HolProg 64 :=
.seq AllocBody328_21 AllocBody328_22

def AllocBody328_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 926#64)

def AllocBody328_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody328_27 : StackLang.HolProg 64 :=
.seq AllocBody328_25 AllocBody328_26

def AllocBody328_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody328_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody328_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody328_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 3

def AllocBody328_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody328_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody328_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody328_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody328_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody328_38 : StackLang.HolProg 64 :=
.seq AllocBody328_36 AllocBody328_37

def AllocBody328_39 : StackLang.HolProg 64 :=
.seq AllocBody328_35 AllocBody328_38

def AllocBody328_40 : StackLang.HolProg 64 :=
.seq AllocBody328_34 AllocBody328_39

def AllocBody328_41 : StackLang.HolProg 64 :=
.seq AllocBody328_33 AllocBody328_40

def AllocBody328_42 : StackLang.HolProg 64 :=
.seq AllocBody328_32 AllocBody328_41

def AllocBody328_43 : StackLang.HolProg 64 :=
.seq AllocBody328_31 AllocBody328_42

def AllocBody328_44 : StackLang.HolProg 64 :=
.seq AllocBody328_30 AllocBody328_43

def AllocBody328_45 : StackLang.HolProg 64 :=
.seq AllocBody328_29 AllocBody328_44

def AllocBody328_46 : StackLang.HolProg 64 :=
.seq AllocBody328_28 AllocBody328_45

def AllocBody328_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody328_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody328_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody328_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody328_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_54 : StackLang.HolProg 64 :=
.seq AllocBody328_52 AllocBody328_53

def AllocBody328_55 : StackLang.HolProg 64 :=
.seq AllocBody328_51 AllocBody328_54

def AllocBody328_56 : StackLang.HolProg 64 :=
.seq AllocBody328_50 AllocBody328_55

def AllocBody328_57 : StackLang.HolProg 64 :=
.seq AllocBody328_49 AllocBody328_56

def AllocBody328_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody328_60 : StackLang.HolProg 64 :=
.seq AllocBody328_58 AllocBody328_59

def AllocBody328_61 : StackLang.HolProg 64 :=
.call (some (AllocBody328_57, 0, 328, 2)) (Sum.inl 286) (some (AllocBody328_60, 328, 3))

def AllocBody328_62 : StackLang.HolProg 64 :=
.seq AllocBody328_48 AllocBody328_61

def AllocBody328_63 : StackLang.HolProg 64 :=
.seq AllocBody328_47 AllocBody328_62

def AllocBody328_64 : StackLang.HolProg 64 :=
.seq AllocBody328_46 AllocBody328_63

def AllocBody328_65 : StackLang.HolProg 64 :=
.seq AllocBody328_27 AllocBody328_64

def AllocBody328_66 : StackLang.HolProg 64 :=
.seq AllocBody328_24 AllocBody328_65

def AllocBody328_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody328_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_69 : StackLang.HolProg 64 :=
.seq AllocBody328_67 AllocBody328_68

def AllocBody328_70 : StackLang.HolProg 64 :=
.seq AllocBody328_66 AllocBody328_69

def AllocBody328_71 : StackLang.HolProg 64 :=
.seq AllocBody328_23 AllocBody328_70

def AllocBody328_72 : StackLang.HolProg 64 :=
.seq AllocBody328_20 AllocBody328_71

def AllocBody328_73 : StackLang.HolProg 64 :=
.seq AllocBody328_19 AllocBody328_72

def AllocBody328_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody328_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody328_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody328_77 : StackLang.HolProg 64 :=
.seq AllocBody328_75 AllocBody328_76

def AllocBody328_78 : StackLang.HolProg 64 :=
.seq AllocBody328_74 AllocBody328_77

def AllocBody328_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody328_73 AllocBody328_78

def AllocBody328_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody328_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody328_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 927#64)

def AllocBody328_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody328_86 : StackLang.HolProg 64 :=
.seq AllocBody328_84 AllocBody328_85

def AllocBody328_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody328_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody328_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody328_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 5

def AllocBody328_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody328_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody328_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody328_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody328_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody328_97 : StackLang.HolProg 64 :=
.seq AllocBody328_95 AllocBody328_96

def AllocBody328_98 : StackLang.HolProg 64 :=
.seq AllocBody328_94 AllocBody328_97

def AllocBody328_99 : StackLang.HolProg 64 :=
.seq AllocBody328_93 AllocBody328_98

def AllocBody328_100 : StackLang.HolProg 64 :=
.seq AllocBody328_92 AllocBody328_99

def AllocBody328_101 : StackLang.HolProg 64 :=
.seq AllocBody328_91 AllocBody328_100

def AllocBody328_102 : StackLang.HolProg 64 :=
.seq AllocBody328_90 AllocBody328_101

def AllocBody328_103 : StackLang.HolProg 64 :=
.seq AllocBody328_89 AllocBody328_102

def AllocBody328_104 : StackLang.HolProg 64 :=
.seq AllocBody328_88 AllocBody328_103

def AllocBody328_105 : StackLang.HolProg 64 :=
.seq AllocBody328_87 AllocBody328_104

def AllocBody328_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody328_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody328_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody328_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody328_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody328_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody328_114 : StackLang.HolProg 64 :=
.seq AllocBody328_112 AllocBody328_113

def AllocBody328_115 : StackLang.HolProg 64 :=
.seq AllocBody328_111 AllocBody328_114

def AllocBody328_116 : StackLang.HolProg 64 :=
.seq AllocBody328_110 AllocBody328_115

def AllocBody328_117 : StackLang.HolProg 64 :=
.seq AllocBody328_109 AllocBody328_116

def AllocBody328_118 : StackLang.HolProg 64 :=
.seq AllocBody328_108 AllocBody328_117

def AllocBody328_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody328_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody328_121 : StackLang.HolProg 64 :=
.seq AllocBody328_119 AllocBody328_120

def AllocBody328_122 : StackLang.HolProg 64 :=
.call (some (AllocBody328_118, 0, 328, 4)) (Sum.inl 68) (some (AllocBody328_121, 328, 5))

def AllocBody328_123 : StackLang.HolProg 64 :=
.seq AllocBody328_107 AllocBody328_122

def AllocBody328_124 : StackLang.HolProg 64 :=
.seq AllocBody328_106 AllocBody328_123

def AllocBody328_125 : StackLang.HolProg 64 :=
.seq AllocBody328_105 AllocBody328_124

def AllocBody328_126 : StackLang.HolProg 64 :=
.seq AllocBody328_86 AllocBody328_125

def AllocBody328_127 : StackLang.HolProg 64 :=
.seq AllocBody328_83 AllocBody328_126

def AllocBody328_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody328_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody328_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody328_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody328_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody328_135 : StackLang.HolProg 64 :=
.seq AllocBody328_133 AllocBody328_134

def AllocBody328_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 928#64)

def AllocBody328_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody328_139 : StackLang.HolProg 64 :=
.seq AllocBody328_137 AllocBody328_138

def AllocBody328_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody328_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody328_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody328_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 7

def AllocBody328_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody328_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody328_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody328_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody328_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody328_150 : StackLang.HolProg 64 :=
.seq AllocBody328_148 AllocBody328_149

def AllocBody328_151 : StackLang.HolProg 64 :=
.seq AllocBody328_147 AllocBody328_150

def AllocBody328_152 : StackLang.HolProg 64 :=
.seq AllocBody328_146 AllocBody328_151

def AllocBody328_153 : StackLang.HolProg 64 :=
.seq AllocBody328_145 AllocBody328_152

def AllocBody328_154 : StackLang.HolProg 64 :=
.seq AllocBody328_144 AllocBody328_153

def AllocBody328_155 : StackLang.HolProg 64 :=
.seq AllocBody328_143 AllocBody328_154

def AllocBody328_156 : StackLang.HolProg 64 :=
.seq AllocBody328_142 AllocBody328_155

def AllocBody328_157 : StackLang.HolProg 64 :=
.seq AllocBody328_141 AllocBody328_156

def AllocBody328_158 : StackLang.HolProg 64 :=
.seq AllocBody328_140 AllocBody328_157

def AllocBody328_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody328_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody328_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody328_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody328_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody328_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody328_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody328_168 : StackLang.HolProg 64 :=
.seq AllocBody328_166 AllocBody328_167

def AllocBody328_169 : StackLang.HolProg 64 :=
.seq AllocBody328_165 AllocBody328_168

def AllocBody328_170 : StackLang.HolProg 64 :=
.seq AllocBody328_164 AllocBody328_169

def AllocBody328_171 : StackLang.HolProg 64 :=
.seq AllocBody328_163 AllocBody328_170

def AllocBody328_172 : StackLang.HolProg 64 :=
.seq AllocBody328_162 AllocBody328_171

def AllocBody328_173 : StackLang.HolProg 64 :=
.seq AllocBody328_161 AllocBody328_172

def AllocBody328_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody328_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody328_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody328_177 : StackLang.HolProg 64 :=
.seq AllocBody328_175 AllocBody328_176

def AllocBody328_178 : StackLang.HolProg 64 :=
.seq AllocBody328_174 AllocBody328_177

def AllocBody328_179 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody328_180 : StackLang.HolProg 64 :=
.seq AllocBody328_178 AllocBody328_179

def AllocBody328_181 : StackLang.HolProg 64 :=
.call (some (AllocBody328_173, 0, 328, 6)) (Sum.inl 158) (some (AllocBody328_180, 328, 7))

def AllocBody328_182 : StackLang.HolProg 64 :=
.seq AllocBody328_160 AllocBody328_181

def AllocBody328_183 : StackLang.HolProg 64 :=
.seq AllocBody328_159 AllocBody328_182

def AllocBody328_184 : StackLang.HolProg 64 :=
.seq AllocBody328_158 AllocBody328_183

def AllocBody328_185 : StackLang.HolProg 64 :=
.seq AllocBody328_139 AllocBody328_184

def AllocBody328_186 : StackLang.HolProg 64 :=
.seq AllocBody328_136 AllocBody328_185

def AllocBody328_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody328_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody328_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody328_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody328_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody328_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody328_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody328_195 : StackLang.HolProg 64 :=
.seq AllocBody328_193 AllocBody328_194

def AllocBody328_196 : StackLang.HolProg 64 :=
.seq AllocBody328_192 AllocBody328_195

def AllocBody328_197 : StackLang.HolProg 64 :=
.seq AllocBody328_191 AllocBody328_196

def AllocBody328_198 : StackLang.HolProg 64 :=
.seq AllocBody328_190 AllocBody328_197

def AllocBody328_199 : StackLang.HolProg 64 :=
.seq AllocBody328_189 AllocBody328_198

def AllocBody328_200 : StackLang.HolProg 64 :=
.seq AllocBody328_188 AllocBody328_199

def AllocBody328_201 : StackLang.HolProg 64 :=
.seq AllocBody328_187 AllocBody328_200

def AllocBody328_202 : StackLang.HolProg 64 :=
.seq AllocBody328_186 AllocBody328_201

def AllocBody328_203 : StackLang.HolProg 64 :=
.seq AllocBody328_135 AllocBody328_202

def AllocBody328_204 : StackLang.HolProg 64 :=
.seq AllocBody328_132 AllocBody328_203

def AllocBody328_205 : StackLang.HolProg 64 :=
.seq AllocBody328_131 AllocBody328_204

def AllocBody328_206 : StackLang.HolProg 64 :=
.seq AllocBody328_130 AllocBody328_205

def AllocBody328_207 : StackLang.HolProg 64 :=
.seq AllocBody328_129 AllocBody328_206

def AllocBody328_208 : StackLang.HolProg 64 :=
.seq AllocBody328_128 AllocBody328_207

def AllocBody328_209 : StackLang.HolProg 64 :=
.seq AllocBody328_127 AllocBody328_208

def AllocBody328_210 : StackLang.HolProg 64 :=
.seq AllocBody328_82 AllocBody328_209

def AllocBody328_211 : StackLang.HolProg 64 :=
.seq AllocBody328_81 AllocBody328_210

def AllocBody328_212 : StackLang.HolProg 64 :=
.seq AllocBody328_80 AllocBody328_211

def AllocBody328_213 : StackLang.HolProg 64 :=
.seq AllocBody328_79 AllocBody328_212

def AllocBody328_214 : StackLang.HolProg 64 :=
.seq AllocBody328_18 AllocBody328_213

def AllocBody328_215 : StackLang.HolProg 64 :=
.seq AllocBody328_17 AllocBody328_214

def AllocBody328_216 : StackLang.HolProg 64 :=
.seq AllocBody328_16 AllocBody328_215

def AllocBody328_217 : StackLang.HolProg 64 :=
.seq AllocBody328_15 AllocBody328_216

def AllocBody328_218 : StackLang.HolProg 64 :=
.seq AllocBody328_14 AllocBody328_217

def AllocBody328_219 : StackLang.HolProg 64 :=
.seq AllocBody328_13 AllocBody328_218

def AllocBody328_220 : StackLang.HolProg 64 :=
.seq AllocBody328_4 AllocBody328_219

def AllocBody328_221 : StackLang.HolProg 64 :=
.seq AllocBody328_3 AllocBody328_220

def AllocBody328_222 : StackLang.HolProg 64 :=
.seq AllocBody328_2 AllocBody328_221

def AllocBody328_223 : StackLang.HolProg 64 :=
.seq AllocBody328_1 AllocBody328_222

def AllocBody328_224 : StackLang.HolProg 64 :=
.seq AllocBody328_0 AllocBody328_223

def Alloc328 : Nat × StackLang.HolProg 64 := (328, AllocBody328_224)
theorem Alloc328_eq : StackAlloc.progComp (328, raw328) = Alloc328 := by
  kernel_rfl
#print axioms Alloc328_eq
end InitECandidate.Proofs.BackendStages
