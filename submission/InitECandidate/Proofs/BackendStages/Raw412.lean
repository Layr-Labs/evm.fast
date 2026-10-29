import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function412
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody412_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody412_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody412_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1231#64)

def rawBody412_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody412_5 : StackLang.HolProg 64 :=
.seq rawBody412_3 rawBody412_4

def rawBody412_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody412_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody412_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody412_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 412 3

def rawBody412_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody412_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody412_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody412_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody412_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody412_16 : StackLang.HolProg 64 :=
.seq rawBody412_14 rawBody412_15

def rawBody412_17 : StackLang.HolProg 64 :=
.seq rawBody412_13 rawBody412_16

def rawBody412_18 : StackLang.HolProg 64 :=
.seq rawBody412_12 rawBody412_17

def rawBody412_19 : StackLang.HolProg 64 :=
.seq rawBody412_11 rawBody412_18

def rawBody412_20 : StackLang.HolProg 64 :=
.seq rawBody412_10 rawBody412_19

def rawBody412_21 : StackLang.HolProg 64 :=
.seq rawBody412_9 rawBody412_20

def rawBody412_22 : StackLang.HolProg 64 :=
.seq rawBody412_8 rawBody412_21

def rawBody412_23 : StackLang.HolProg 64 :=
.seq rawBody412_7 rawBody412_22

def rawBody412_24 : StackLang.HolProg 64 :=
.seq rawBody412_6 rawBody412_23

def rawBody412_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody412_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody412_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody412_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody412_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody412_32 : StackLang.HolProg 64 :=
.seq rawBody412_30 rawBody412_31

def rawBody412_33 : StackLang.HolProg 64 :=
.seq rawBody412_29 rawBody412_32

def rawBody412_34 : StackLang.HolProg 64 :=
.seq rawBody412_28 rawBody412_33

def rawBody412_35 : StackLang.HolProg 64 :=
.seq rawBody412_27 rawBody412_34

def rawBody412_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody412_38 : StackLang.HolProg 64 :=
.seq rawBody412_36 rawBody412_37

def rawBody412_39 : StackLang.HolProg 64 :=
.call (some (rawBody412_35, 0, 412, 2)) (Sum.inl 392) (some (rawBody412_38, 412, 3))

def rawBody412_40 : StackLang.HolProg 64 :=
.seq rawBody412_26 rawBody412_39

def rawBody412_41 : StackLang.HolProg 64 :=
.seq rawBody412_25 rawBody412_40

def rawBody412_42 : StackLang.HolProg 64 :=
.seq rawBody412_24 rawBody412_41

def rawBody412_43 : StackLang.HolProg 64 :=
.seq rawBody412_5 rawBody412_42

def rawBody412_44 : StackLang.HolProg 64 :=
.seq rawBody412_2 rawBody412_43

def rawBody412_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody412_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody412_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody412_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody412_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def rawBody412_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def rawBody412_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1232#64)

def rawBody412_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody412_55 : StackLang.HolProg 64 :=
.seq rawBody412_53 rawBody412_54

def rawBody412_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody412_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody412_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody412_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 412 5

def rawBody412_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody412_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody412_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody412_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody412_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody412_66 : StackLang.HolProg 64 :=
.seq rawBody412_64 rawBody412_65

def rawBody412_67 : StackLang.HolProg 64 :=
.seq rawBody412_63 rawBody412_66

def rawBody412_68 : StackLang.HolProg 64 :=
.seq rawBody412_62 rawBody412_67

def rawBody412_69 : StackLang.HolProg 64 :=
.seq rawBody412_61 rawBody412_68

def rawBody412_70 : StackLang.HolProg 64 :=
.seq rawBody412_60 rawBody412_69

def rawBody412_71 : StackLang.HolProg 64 :=
.seq rawBody412_59 rawBody412_70

def rawBody412_72 : StackLang.HolProg 64 :=
.seq rawBody412_58 rawBody412_71

def rawBody412_73 : StackLang.HolProg 64 :=
.seq rawBody412_57 rawBody412_72

def rawBody412_74 : StackLang.HolProg 64 :=
.seq rawBody412_56 rawBody412_73

def rawBody412_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody412_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody412_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody412_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody412_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody412_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody412_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody412_84 : StackLang.HolProg 64 :=
.seq rawBody412_82 rawBody412_83

def rawBody412_85 : StackLang.HolProg 64 :=
.seq rawBody412_81 rawBody412_84

def rawBody412_86 : StackLang.HolProg 64 :=
.seq rawBody412_80 rawBody412_85

def rawBody412_87 : StackLang.HolProg 64 :=
.seq rawBody412_79 rawBody412_86

def rawBody412_88 : StackLang.HolProg 64 :=
.seq rawBody412_78 rawBody412_87

def rawBody412_89 : StackLang.HolProg 64 :=
.seq rawBody412_77 rawBody412_88

def rawBody412_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody412_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody412_92 : StackLang.HolProg 64 :=
.seq rawBody412_90 rawBody412_91

def rawBody412_93 : StackLang.HolProg 64 :=
.call (some (rawBody412_89, 0, 412, 4)) (Sum.inl 186) (some (rawBody412_92, 412, 5))

def rawBody412_94 : StackLang.HolProg 64 :=
.seq rawBody412_76 rawBody412_93

def rawBody412_95 : StackLang.HolProg 64 :=
.seq rawBody412_75 rawBody412_94

def rawBody412_96 : StackLang.HolProg 64 :=
.seq rawBody412_74 rawBody412_95

def rawBody412_97 : StackLang.HolProg 64 :=
.seq rawBody412_55 rawBody412_96

def rawBody412_98 : StackLang.HolProg 64 :=
.seq rawBody412_52 rawBody412_97

def rawBody412_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody412_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody412_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody412_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody412_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody412_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody412_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody412_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody412_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody412_110 : StackLang.HolProg 64 :=
.seq rawBody412_108 rawBody412_109

def rawBody412_111 : StackLang.HolProg 64 :=
.seq rawBody412_107 rawBody412_110

def rawBody412_112 : StackLang.HolProg 64 :=
.seq rawBody412_106 rawBody412_111

def rawBody412_113 : StackLang.HolProg 64 :=
.seq rawBody412_105 rawBody412_112

def rawBody412_114 : StackLang.HolProg 64 :=
.seq rawBody412_104 rawBody412_113

def rawBody412_115 : StackLang.HolProg 64 :=
.seq rawBody412_103 rawBody412_114

def rawBody412_116 : StackLang.HolProg 64 :=
.seq rawBody412_102 rawBody412_115

def rawBody412_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody412_116 rawBody412_117

def rawBody412_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody412_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody412_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody412_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody412_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody412_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody412_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody412_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody412_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody412_132 : StackLang.HolProg 64 :=
.seq rawBody412_130 rawBody412_131

def rawBody412_133 : StackLang.HolProg 64 :=
.seq rawBody412_129 rawBody412_132

def rawBody412_134 : StackLang.HolProg 64 :=
.seq rawBody412_128 rawBody412_133

def rawBody412_135 : StackLang.HolProg 64 :=
.seq rawBody412_127 rawBody412_134

def rawBody412_136 : StackLang.HolProg 64 :=
.seq rawBody412_126 rawBody412_135

def rawBody412_137 : StackLang.HolProg 64 :=
.seq rawBody412_125 rawBody412_136

def rawBody412_138 : StackLang.HolProg 64 :=
.seq rawBody412_124 rawBody412_137

def rawBody412_139 : StackLang.HolProg 64 :=
.seq rawBody412_123 rawBody412_138

def rawBody412_140 : StackLang.HolProg 64 :=
.seq rawBody412_122 rawBody412_139

def rawBody412_141 : StackLang.HolProg 64 :=
.seq rawBody412_121 rawBody412_140

def rawBody412_142 : StackLang.HolProg 64 :=
.seq rawBody412_120 rawBody412_141

def rawBody412_143 : StackLang.HolProg 64 :=
.seq rawBody412_119 rawBody412_142

def rawBody412_144 : StackLang.HolProg 64 :=
.seq rawBody412_118 rawBody412_143

def rawBody412_145 : StackLang.HolProg 64 :=
.seq rawBody412_101 rawBody412_144

def rawBody412_146 : StackLang.HolProg 64 :=
.seq rawBody412_100 rawBody412_145

def rawBody412_147 : StackLang.HolProg 64 :=
.seq rawBody412_99 rawBody412_146

def rawBody412_148 : StackLang.HolProg 64 :=
.seq rawBody412_98 rawBody412_147

def rawBody412_149 : StackLang.HolProg 64 :=
.seq rawBody412_51 rawBody412_148

def rawBody412_150 : StackLang.HolProg 64 :=
.seq rawBody412_50 rawBody412_149

def rawBody412_151 : StackLang.HolProg 64 :=
.seq rawBody412_49 rawBody412_150

def rawBody412_152 : StackLang.HolProg 64 :=
.seq rawBody412_48 rawBody412_151

def rawBody412_153 : StackLang.HolProg 64 :=
.seq rawBody412_47 rawBody412_152

def rawBody412_154 : StackLang.HolProg 64 :=
.seq rawBody412_46 rawBody412_153

def rawBody412_155 : StackLang.HolProg 64 :=
.seq rawBody412_45 rawBody412_154

def rawBody412_156 : StackLang.HolProg 64 :=
.seq rawBody412_44 rawBody412_155

def rawBody412_157 : StackLang.HolProg 64 :=
.seq rawBody412_1 rawBody412_156

def rawBody412_158 : StackLang.HolProg 64 :=
.seq rawBody412_0 rawBody412_157

def raw412 : StackLang.HolProg 64 := rawBody412_158
theorem raw412_eq : StackRawCall.compTop RawInfo.rawInfo (function412 (.list [])).1 = raw412 := by
  kernel_rfl
#print axioms raw412_eq
end InitECandidate.Proofs.BackendStages
