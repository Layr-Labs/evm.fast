import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function328
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody328_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody328_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody328_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody328_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody328_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody328_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody328_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody328_9 : StackLang.HolProg 64 :=
.seq rawBody328_7 rawBody328_8

def rawBody328_10 : StackLang.HolProg 64 :=
.seq rawBody328_6 rawBody328_9

def rawBody328_11 : StackLang.HolProg 64 :=
.seq rawBody328_5 rawBody328_10

def rawBody328_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody328_11 rawBody328_12

def rawBody328_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody328_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody328_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody328_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody328_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody328_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def rawBody328_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody328_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody328_23 : StackLang.HolProg 64 :=
.seq rawBody328_21 rawBody328_22

def rawBody328_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 926#64)

def rawBody328_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody328_27 : StackLang.HolProg 64 :=
.seq rawBody328_25 rawBody328_26

def rawBody328_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody328_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody328_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody328_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 3

def rawBody328_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody328_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody328_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody328_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody328_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody328_38 : StackLang.HolProg 64 :=
.seq rawBody328_36 rawBody328_37

def rawBody328_39 : StackLang.HolProg 64 :=
.seq rawBody328_35 rawBody328_38

def rawBody328_40 : StackLang.HolProg 64 :=
.seq rawBody328_34 rawBody328_39

def rawBody328_41 : StackLang.HolProg 64 :=
.seq rawBody328_33 rawBody328_40

def rawBody328_42 : StackLang.HolProg 64 :=
.seq rawBody328_32 rawBody328_41

def rawBody328_43 : StackLang.HolProg 64 :=
.seq rawBody328_31 rawBody328_42

def rawBody328_44 : StackLang.HolProg 64 :=
.seq rawBody328_30 rawBody328_43

def rawBody328_45 : StackLang.HolProg 64 :=
.seq rawBody328_29 rawBody328_44

def rawBody328_46 : StackLang.HolProg 64 :=
.seq rawBody328_28 rawBody328_45

def rawBody328_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody328_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody328_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody328_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody328_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_54 : StackLang.HolProg 64 :=
.seq rawBody328_52 rawBody328_53

def rawBody328_55 : StackLang.HolProg 64 :=
.seq rawBody328_51 rawBody328_54

def rawBody328_56 : StackLang.HolProg 64 :=
.seq rawBody328_50 rawBody328_55

def rawBody328_57 : StackLang.HolProg 64 :=
.seq rawBody328_49 rawBody328_56

def rawBody328_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody328_60 : StackLang.HolProg 64 :=
.seq rawBody328_58 rawBody328_59

def rawBody328_61 : StackLang.HolProg 64 :=
.call (some (rawBody328_57, 0, 328, 2)) (Sum.inl 286) (some (rawBody328_60, 328, 3))

def rawBody328_62 : StackLang.HolProg 64 :=
.seq rawBody328_48 rawBody328_61

def rawBody328_63 : StackLang.HolProg 64 :=
.seq rawBody328_47 rawBody328_62

def rawBody328_64 : StackLang.HolProg 64 :=
.seq rawBody328_46 rawBody328_63

def rawBody328_65 : StackLang.HolProg 64 :=
.seq rawBody328_27 rawBody328_64

def rawBody328_66 : StackLang.HolProg 64 :=
.seq rawBody328_24 rawBody328_65

def rawBody328_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody328_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_69 : StackLang.HolProg 64 :=
.seq rawBody328_67 rawBody328_68

def rawBody328_70 : StackLang.HolProg 64 :=
.seq rawBody328_66 rawBody328_69

def rawBody328_71 : StackLang.HolProg 64 :=
.seq rawBody328_23 rawBody328_70

def rawBody328_72 : StackLang.HolProg 64 :=
.seq rawBody328_20 rawBody328_71

def rawBody328_73 : StackLang.HolProg 64 :=
.seq rawBody328_19 rawBody328_72

def rawBody328_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody328_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody328_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody328_77 : StackLang.HolProg 64 :=
.seq rawBody328_75 rawBody328_76

def rawBody328_78 : StackLang.HolProg 64 :=
.seq rawBody328_74 rawBody328_77

def rawBody328_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody328_73 rawBody328_78

def rawBody328_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody328_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody328_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 927#64)

def rawBody328_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody328_86 : StackLang.HolProg 64 :=
.seq rawBody328_84 rawBody328_85

def rawBody328_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody328_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody328_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody328_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 5

def rawBody328_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody328_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody328_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody328_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody328_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody328_97 : StackLang.HolProg 64 :=
.seq rawBody328_95 rawBody328_96

def rawBody328_98 : StackLang.HolProg 64 :=
.seq rawBody328_94 rawBody328_97

def rawBody328_99 : StackLang.HolProg 64 :=
.seq rawBody328_93 rawBody328_98

def rawBody328_100 : StackLang.HolProg 64 :=
.seq rawBody328_92 rawBody328_99

def rawBody328_101 : StackLang.HolProg 64 :=
.seq rawBody328_91 rawBody328_100

def rawBody328_102 : StackLang.HolProg 64 :=
.seq rawBody328_90 rawBody328_101

def rawBody328_103 : StackLang.HolProg 64 :=
.seq rawBody328_89 rawBody328_102

def rawBody328_104 : StackLang.HolProg 64 :=
.seq rawBody328_88 rawBody328_103

def rawBody328_105 : StackLang.HolProg 64 :=
.seq rawBody328_87 rawBody328_104

def rawBody328_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody328_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody328_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody328_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody328_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody328_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody328_114 : StackLang.HolProg 64 :=
.seq rawBody328_112 rawBody328_113

def rawBody328_115 : StackLang.HolProg 64 :=
.seq rawBody328_111 rawBody328_114

def rawBody328_116 : StackLang.HolProg 64 :=
.seq rawBody328_110 rawBody328_115

def rawBody328_117 : StackLang.HolProg 64 :=
.seq rawBody328_109 rawBody328_116

def rawBody328_118 : StackLang.HolProg 64 :=
.seq rawBody328_108 rawBody328_117

def rawBody328_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody328_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody328_121 : StackLang.HolProg 64 :=
.seq rawBody328_119 rawBody328_120

def rawBody328_122 : StackLang.HolProg 64 :=
.call (some (rawBody328_118, 0, 328, 4)) (Sum.inl 68) (some (rawBody328_121, 328, 5))

def rawBody328_123 : StackLang.HolProg 64 :=
.seq rawBody328_107 rawBody328_122

def rawBody328_124 : StackLang.HolProg 64 :=
.seq rawBody328_106 rawBody328_123

def rawBody328_125 : StackLang.HolProg 64 :=
.seq rawBody328_105 rawBody328_124

def rawBody328_126 : StackLang.HolProg 64 :=
.seq rawBody328_86 rawBody328_125

def rawBody328_127 : StackLang.HolProg 64 :=
.seq rawBody328_83 rawBody328_126

def rawBody328_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody328_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody328_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody328_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody328_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody328_135 : StackLang.HolProg 64 :=
.seq rawBody328_133 rawBody328_134

def rawBody328_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 928#64)

def rawBody328_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody328_139 : StackLang.HolProg 64 :=
.seq rawBody328_137 rawBody328_138

def rawBody328_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody328_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody328_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody328_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 328 7

def rawBody328_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody328_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody328_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody328_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody328_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody328_150 : StackLang.HolProg 64 :=
.seq rawBody328_148 rawBody328_149

def rawBody328_151 : StackLang.HolProg 64 :=
.seq rawBody328_147 rawBody328_150

def rawBody328_152 : StackLang.HolProg 64 :=
.seq rawBody328_146 rawBody328_151

def rawBody328_153 : StackLang.HolProg 64 :=
.seq rawBody328_145 rawBody328_152

def rawBody328_154 : StackLang.HolProg 64 :=
.seq rawBody328_144 rawBody328_153

def rawBody328_155 : StackLang.HolProg 64 :=
.seq rawBody328_143 rawBody328_154

def rawBody328_156 : StackLang.HolProg 64 :=
.seq rawBody328_142 rawBody328_155

def rawBody328_157 : StackLang.HolProg 64 :=
.seq rawBody328_141 rawBody328_156

def rawBody328_158 : StackLang.HolProg 64 :=
.seq rawBody328_140 rawBody328_157

def rawBody328_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody328_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody328_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody328_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody328_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody328_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody328_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody328_168 : StackLang.HolProg 64 :=
.seq rawBody328_166 rawBody328_167

def rawBody328_169 : StackLang.HolProg 64 :=
.seq rawBody328_165 rawBody328_168

def rawBody328_170 : StackLang.HolProg 64 :=
.seq rawBody328_164 rawBody328_169

def rawBody328_171 : StackLang.HolProg 64 :=
.seq rawBody328_163 rawBody328_170

def rawBody328_172 : StackLang.HolProg 64 :=
.seq rawBody328_162 rawBody328_171

def rawBody328_173 : StackLang.HolProg 64 :=
.seq rawBody328_161 rawBody328_172

def rawBody328_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody328_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody328_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody328_177 : StackLang.HolProg 64 :=
.seq rawBody328_175 rawBody328_176

def rawBody328_178 : StackLang.HolProg 64 :=
.seq rawBody328_174 rawBody328_177

def rawBody328_179 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody328_180 : StackLang.HolProg 64 :=
.seq rawBody328_178 rawBody328_179

def rawBody328_181 : StackLang.HolProg 64 :=
.call (some (rawBody328_173, 0, 328, 6)) (Sum.inl 158) (some (rawBody328_180, 328, 7))

def rawBody328_182 : StackLang.HolProg 64 :=
.seq rawBody328_160 rawBody328_181

def rawBody328_183 : StackLang.HolProg 64 :=
.seq rawBody328_159 rawBody328_182

def rawBody328_184 : StackLang.HolProg 64 :=
.seq rawBody328_158 rawBody328_183

def rawBody328_185 : StackLang.HolProg 64 :=
.seq rawBody328_139 rawBody328_184

def rawBody328_186 : StackLang.HolProg 64 :=
.seq rawBody328_136 rawBody328_185

def rawBody328_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody328_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody328_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody328_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody328_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody328_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody328_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody328_195 : StackLang.HolProg 64 :=
.seq rawBody328_193 rawBody328_194

def rawBody328_196 : StackLang.HolProg 64 :=
.seq rawBody328_192 rawBody328_195

def rawBody328_197 : StackLang.HolProg 64 :=
.seq rawBody328_191 rawBody328_196

def rawBody328_198 : StackLang.HolProg 64 :=
.seq rawBody328_190 rawBody328_197

def rawBody328_199 : StackLang.HolProg 64 :=
.seq rawBody328_189 rawBody328_198

def rawBody328_200 : StackLang.HolProg 64 :=
.seq rawBody328_188 rawBody328_199

def rawBody328_201 : StackLang.HolProg 64 :=
.seq rawBody328_187 rawBody328_200

def rawBody328_202 : StackLang.HolProg 64 :=
.seq rawBody328_186 rawBody328_201

def rawBody328_203 : StackLang.HolProg 64 :=
.seq rawBody328_135 rawBody328_202

def rawBody328_204 : StackLang.HolProg 64 :=
.seq rawBody328_132 rawBody328_203

def rawBody328_205 : StackLang.HolProg 64 :=
.seq rawBody328_131 rawBody328_204

def rawBody328_206 : StackLang.HolProg 64 :=
.seq rawBody328_130 rawBody328_205

def rawBody328_207 : StackLang.HolProg 64 :=
.seq rawBody328_129 rawBody328_206

def rawBody328_208 : StackLang.HolProg 64 :=
.seq rawBody328_128 rawBody328_207

def rawBody328_209 : StackLang.HolProg 64 :=
.seq rawBody328_127 rawBody328_208

def rawBody328_210 : StackLang.HolProg 64 :=
.seq rawBody328_82 rawBody328_209

def rawBody328_211 : StackLang.HolProg 64 :=
.seq rawBody328_81 rawBody328_210

def rawBody328_212 : StackLang.HolProg 64 :=
.seq rawBody328_80 rawBody328_211

def rawBody328_213 : StackLang.HolProg 64 :=
.seq rawBody328_79 rawBody328_212

def rawBody328_214 : StackLang.HolProg 64 :=
.seq rawBody328_18 rawBody328_213

def rawBody328_215 : StackLang.HolProg 64 :=
.seq rawBody328_17 rawBody328_214

def rawBody328_216 : StackLang.HolProg 64 :=
.seq rawBody328_16 rawBody328_215

def rawBody328_217 : StackLang.HolProg 64 :=
.seq rawBody328_15 rawBody328_216

def rawBody328_218 : StackLang.HolProg 64 :=
.seq rawBody328_14 rawBody328_217

def rawBody328_219 : StackLang.HolProg 64 :=
.seq rawBody328_13 rawBody328_218

def rawBody328_220 : StackLang.HolProg 64 :=
.seq rawBody328_4 rawBody328_219

def rawBody328_221 : StackLang.HolProg 64 :=
.seq rawBody328_3 rawBody328_220

def rawBody328_222 : StackLang.HolProg 64 :=
.seq rawBody328_2 rawBody328_221

def rawBody328_223 : StackLang.HolProg 64 :=
.seq rawBody328_1 rawBody328_222

def rawBody328_224 : StackLang.HolProg 64 :=
.seq rawBody328_0 rawBody328_223

def raw328 : StackLang.HolProg 64 := rawBody328_224
theorem raw328_eq : StackRawCall.compTop RawInfo.rawInfo (function328 (.list [])).1 = raw328 := by
  kernel_rfl
#print axioms raw328_eq
end InitECandidate.Proofs.BackendStages
