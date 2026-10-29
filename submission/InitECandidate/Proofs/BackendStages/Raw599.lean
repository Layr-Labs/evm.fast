import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function599
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody599_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody599_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody599_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody599_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody599_5 : StackLang.HolProg 64 :=
.seq rawBody599_3 rawBody599_4

def rawBody599_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2273#64)

def rawBody599_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody599_9 : StackLang.HolProg 64 :=
.seq rawBody599_7 rawBody599_8

def rawBody599_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody599_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody599_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody599_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 599 5

def rawBody599_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody599_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody599_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody599_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody599_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody599_20 : StackLang.HolProg 64 :=
.seq rawBody599_18 rawBody599_19

def rawBody599_21 : StackLang.HolProg 64 :=
.seq rawBody599_17 rawBody599_20

def rawBody599_22 : StackLang.HolProg 64 :=
.seq rawBody599_16 rawBody599_21

def rawBody599_23 : StackLang.HolProg 64 :=
.seq rawBody599_15 rawBody599_22

def rawBody599_24 : StackLang.HolProg 64 :=
.seq rawBody599_14 rawBody599_23

def rawBody599_25 : StackLang.HolProg 64 :=
.seq rawBody599_13 rawBody599_24

def rawBody599_26 : StackLang.HolProg 64 :=
.seq rawBody599_12 rawBody599_25

def rawBody599_27 : StackLang.HolProg 64 :=
.seq rawBody599_11 rawBody599_26

def rawBody599_28 : StackLang.HolProg 64 :=
.seq rawBody599_10 rawBody599_27

def rawBody599_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody599_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody599_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody599_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody599_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody599_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody599_37 : StackLang.HolProg 64 :=
.seq rawBody599_35 rawBody599_36

def rawBody599_38 : StackLang.HolProg 64 :=
.seq rawBody599_34 rawBody599_37

def rawBody599_39 : StackLang.HolProg 64 :=
.seq rawBody599_33 rawBody599_38

def rawBody599_40 : StackLang.HolProg 64 :=
.seq rawBody599_32 rawBody599_39

def rawBody599_41 : StackLang.HolProg 64 :=
.seq rawBody599_31 rawBody599_40

def rawBody599_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody599_45 : StackLang.HolProg 64 :=
.seq rawBody599_43 rawBody599_44

def rawBody599_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody599_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody599_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2274#64)

def rawBody599_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody599_52 : StackLang.HolProg 64 :=
.seq rawBody599_50 rawBody599_51

def rawBody599_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody599_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody599_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody599_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 599 4

def rawBody599_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody599_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody599_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody599_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody599_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody599_63 : StackLang.HolProg 64 :=
.seq rawBody599_61 rawBody599_62

def rawBody599_64 : StackLang.HolProg 64 :=
.seq rawBody599_60 rawBody599_63

def rawBody599_65 : StackLang.HolProg 64 :=
.seq rawBody599_59 rawBody599_64

def rawBody599_66 : StackLang.HolProg 64 :=
.seq rawBody599_58 rawBody599_65

def rawBody599_67 : StackLang.HolProg 64 :=
.seq rawBody599_57 rawBody599_66

def rawBody599_68 : StackLang.HolProg 64 :=
.seq rawBody599_56 rawBody599_67

def rawBody599_69 : StackLang.HolProg 64 :=
.seq rawBody599_55 rawBody599_68

def rawBody599_70 : StackLang.HolProg 64 :=
.seq rawBody599_54 rawBody599_69

def rawBody599_71 : StackLang.HolProg 64 :=
.seq rawBody599_53 rawBody599_70

def rawBody599_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody599_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody599_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody599_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody599_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody599_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody599_80 : StackLang.HolProg 64 :=
.seq rawBody599_78 rawBody599_79

def rawBody599_81 : StackLang.HolProg 64 :=
.seq rawBody599_77 rawBody599_80

def rawBody599_82 : StackLang.HolProg 64 :=
.seq rawBody599_76 rawBody599_81

def rawBody599_83 : StackLang.HolProg 64 :=
.seq rawBody599_75 rawBody599_82

def rawBody599_84 : StackLang.HolProg 64 :=
.seq rawBody599_74 rawBody599_83

def rawBody599_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody599_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody599_87 : StackLang.HolProg 64 :=
.seq rawBody599_85 rawBody599_86

def rawBody599_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody599_89 : StackLang.HolProg 64 :=
.seq rawBody599_87 rawBody599_88

def rawBody599_90 : StackLang.HolProg 64 :=
.call (some (rawBody599_84, 0, 599, 3)) (Sum.inl 597) (some (rawBody599_89, 599, 4))

def rawBody599_91 : StackLang.HolProg 64 :=
.seq rawBody599_73 rawBody599_90

def rawBody599_92 : StackLang.HolProg 64 :=
.seq rawBody599_72 rawBody599_91

def rawBody599_93 : StackLang.HolProg 64 :=
.seq rawBody599_71 rawBody599_92

def rawBody599_94 : StackLang.HolProg 64 :=
.seq rawBody599_52 rawBody599_93

def rawBody599_95 : StackLang.HolProg 64 :=
.seq rawBody599_49 rawBody599_94

def rawBody599_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody599_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_98 : StackLang.HolProg 64 :=
.seq rawBody599_96 rawBody599_97

def rawBody599_99 : StackLang.HolProg 64 :=
.seq rawBody599_95 rawBody599_98

def rawBody599_100 : StackLang.HolProg 64 :=
.seq rawBody599_48 rawBody599_99

def rawBody599_101 : StackLang.HolProg 64 :=
.seq rawBody599_47 rawBody599_100

def rawBody599_102 : StackLang.HolProg 64 :=
.seq rawBody599_46 rawBody599_101

def rawBody599_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) rawBody599_45 rawBody599_102

def rawBody599_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody599_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_106 : StackLang.HolProg 64 :=
.seq rawBody599_104 rawBody599_105

def rawBody599_107 : StackLang.HolProg 64 :=
.seq rawBody599_103 rawBody599_106

def rawBody599_108 : StackLang.HolProg 64 :=
.seq rawBody599_42 rawBody599_107

def rawBody599_109 : StackLang.HolProg 64 :=
.call (some (rawBody599_41, 0, 599, 2)) (Sum.inl 598) (some (rawBody599_108, 599, 5))

def rawBody599_110 : StackLang.HolProg 64 :=
.seq rawBody599_30 rawBody599_109

def rawBody599_111 : StackLang.HolProg 64 :=
.seq rawBody599_29 rawBody599_110

def rawBody599_112 : StackLang.HolProg 64 :=
.seq rawBody599_28 rawBody599_111

def rawBody599_113 : StackLang.HolProg 64 :=
.seq rawBody599_9 rawBody599_112

def rawBody599_114 : StackLang.HolProg 64 :=
.seq rawBody599_6 rawBody599_113

def rawBody599_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody599_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody599_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody599_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody599_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody599_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody599_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def rawBody599_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody599_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody599_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody599_127 : StackLang.HolProg 64 :=
.seq rawBody599_125 rawBody599_126

def rawBody599_128 : StackLang.HolProg 64 :=
.seq rawBody599_124 rawBody599_127

def rawBody599_129 : StackLang.HolProg 64 :=
.seq rawBody599_123 rawBody599_128

def rawBody599_130 : StackLang.HolProg 64 :=
.seq rawBody599_122 rawBody599_129

def rawBody599_131 : StackLang.HolProg 64 :=
.seq rawBody599_121 rawBody599_130

def rawBody599_132 : StackLang.HolProg 64 :=
.seq rawBody599_120 rawBody599_131

def rawBody599_133 : StackLang.HolProg 64 :=
.seq rawBody599_119 rawBody599_132

def rawBody599_134 : StackLang.HolProg 64 :=
.seq rawBody599_118 rawBody599_133

def rawBody599_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody599_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody599_134 rawBody599_135

def rawBody599_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody599_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody599_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody599_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody599_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody599_142 : StackLang.HolProg 64 :=
.seq rawBody599_140 rawBody599_141

def rawBody599_143 : StackLang.HolProg 64 :=
.seq rawBody599_139 rawBody599_142

def rawBody599_144 : StackLang.HolProg 64 :=
.seq rawBody599_138 rawBody599_143

def rawBody599_145 : StackLang.HolProg 64 :=
.seq rawBody599_137 rawBody599_144

def rawBody599_146 : StackLang.HolProg 64 :=
.seq rawBody599_136 rawBody599_145

def rawBody599_147 : StackLang.HolProg 64 :=
.seq rawBody599_117 rawBody599_146

def rawBody599_148 : StackLang.HolProg 64 :=
.seq rawBody599_116 rawBody599_147

def rawBody599_149 : StackLang.HolProg 64 :=
.seq rawBody599_115 rawBody599_148

def rawBody599_150 : StackLang.HolProg 64 :=
.seq rawBody599_114 rawBody599_149

def rawBody599_151 : StackLang.HolProg 64 :=
.seq rawBody599_5 rawBody599_150

def rawBody599_152 : StackLang.HolProg 64 :=
.seq rawBody599_2 rawBody599_151

def rawBody599_153 : StackLang.HolProg 64 :=
.seq rawBody599_1 rawBody599_152

def rawBody599_154 : StackLang.HolProg 64 :=
.seq rawBody599_0 rawBody599_153

def raw599 : StackLang.HolProg 64 := rawBody599_154
theorem raw599_eq : StackRawCall.compTop RawInfo.rawInfo (function599 (.list [])).1 = raw599 := by
  kernel_rfl
#print axioms raw599_eq
end InitECandidate.Proofs.BackendStages
