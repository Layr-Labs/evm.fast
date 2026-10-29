import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function284
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody284_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody284_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody284_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody284_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody284_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551496#64))

def rawBody284_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody284_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody284_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody284_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody284_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody284_12 : StackLang.HolProg 64 :=
.seq rawBody284_10 rawBody284_11

def rawBody284_13 : StackLang.HolProg 64 :=
.seq rawBody284_9 rawBody284_12

def rawBody284_14 : StackLang.HolProg 64 :=
.seq rawBody284_8 rawBody284_13

def rawBody284_15 : StackLang.HolProg 64 :=
.seq rawBody284_7 rawBody284_14

def rawBody284_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody284_15 rawBody284_16

def rawBody284_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody284_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody284_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody284_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody284_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 768#64)

def rawBody284_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody284_25 : StackLang.HolProg 64 :=
.seq rawBody284_23 rawBody284_24

def rawBody284_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody284_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody284_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody284_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 284 3

def rawBody284_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody284_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody284_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody284_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody284_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody284_36 : StackLang.HolProg 64 :=
.seq rawBody284_34 rawBody284_35

def rawBody284_37 : StackLang.HolProg 64 :=
.seq rawBody284_33 rawBody284_36

def rawBody284_38 : StackLang.HolProg 64 :=
.seq rawBody284_32 rawBody284_37

def rawBody284_39 : StackLang.HolProg 64 :=
.seq rawBody284_31 rawBody284_38

def rawBody284_40 : StackLang.HolProg 64 :=
.seq rawBody284_30 rawBody284_39

def rawBody284_41 : StackLang.HolProg 64 :=
.seq rawBody284_29 rawBody284_40

def rawBody284_42 : StackLang.HolProg 64 :=
.seq rawBody284_28 rawBody284_41

def rawBody284_43 : StackLang.HolProg 64 :=
.seq rawBody284_27 rawBody284_42

def rawBody284_44 : StackLang.HolProg 64 :=
.seq rawBody284_26 rawBody284_43

def rawBody284_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody284_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody284_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody284_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody284_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody284_52 : StackLang.HolProg 64 :=
.seq rawBody284_50 rawBody284_51

def rawBody284_53 : StackLang.HolProg 64 :=
.seq rawBody284_49 rawBody284_52

def rawBody284_54 : StackLang.HolProg 64 :=
.seq rawBody284_48 rawBody284_53

def rawBody284_55 : StackLang.HolProg 64 :=
.seq rawBody284_47 rawBody284_54

def rawBody284_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody284_58 : StackLang.HolProg 64 :=
.seq rawBody284_56 rawBody284_57

def rawBody284_59 : StackLang.HolProg 64 :=
.call (some (rawBody284_55, 0, 284, 2)) (Sum.inl 68) (some (rawBody284_58, 284, 3))

def rawBody284_60 : StackLang.HolProg 64 :=
.seq rawBody284_46 rawBody284_59

def rawBody284_61 : StackLang.HolProg 64 :=
.seq rawBody284_45 rawBody284_60

def rawBody284_62 : StackLang.HolProg 64 :=
.seq rawBody284_44 rawBody284_61

def rawBody284_63 : StackLang.HolProg 64 :=
.seq rawBody284_25 rawBody284_62

def rawBody284_64 : StackLang.HolProg 64 :=
.seq rawBody284_22 rawBody284_63

def rawBody284_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody284_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody284_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody284_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody284_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551496#64)))

def rawBody284_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody284_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551496#64))

def rawBody284_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def rawBody284_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 769#64)

def rawBody284_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody284_79 : StackLang.HolProg 64 :=
.seq rawBody284_77 rawBody284_78

def rawBody284_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody284_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody284_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody284_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 284 5

def rawBody284_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody284_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody284_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody284_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody284_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody284_90 : StackLang.HolProg 64 :=
.seq rawBody284_88 rawBody284_89

def rawBody284_91 : StackLang.HolProg 64 :=
.seq rawBody284_87 rawBody284_90

def rawBody284_92 : StackLang.HolProg 64 :=
.seq rawBody284_86 rawBody284_91

def rawBody284_93 : StackLang.HolProg 64 :=
.seq rawBody284_85 rawBody284_92

def rawBody284_94 : StackLang.HolProg 64 :=
.seq rawBody284_84 rawBody284_93

def rawBody284_95 : StackLang.HolProg 64 :=
.seq rawBody284_83 rawBody284_94

def rawBody284_96 : StackLang.HolProg 64 :=
.seq rawBody284_82 rawBody284_95

def rawBody284_97 : StackLang.HolProg 64 :=
.seq rawBody284_81 rawBody284_96

def rawBody284_98 : StackLang.HolProg 64 :=
.seq rawBody284_80 rawBody284_97

def rawBody284_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody284_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody284_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody284_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody284_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody284_106 : StackLang.HolProg 64 :=
.seq rawBody284_104 rawBody284_105

def rawBody284_107 : StackLang.HolProg 64 :=
.seq rawBody284_103 rawBody284_106

def rawBody284_108 : StackLang.HolProg 64 :=
.seq rawBody284_102 rawBody284_107

def rawBody284_109 : StackLang.HolProg 64 :=
.seq rawBody284_101 rawBody284_108

def rawBody284_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody284_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody284_112 : StackLang.HolProg 64 :=
.seq rawBody284_110 rawBody284_111

def rawBody284_113 : StackLang.HolProg 64 :=
.call (some (rawBody284_109, 0, 284, 4)) (Sum.inl 78) (some (rawBody284_112, 284, 5))

def rawBody284_114 : StackLang.HolProg 64 :=
.seq rawBody284_100 rawBody284_113

def rawBody284_115 : StackLang.HolProg 64 :=
.seq rawBody284_99 rawBody284_114

def rawBody284_116 : StackLang.HolProg 64 :=
.seq rawBody284_98 rawBody284_115

def rawBody284_117 : StackLang.HolProg 64 :=
.seq rawBody284_79 rawBody284_116

def rawBody284_118 : StackLang.HolProg 64 :=
.seq rawBody284_76 rawBody284_117

def rawBody284_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody284_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody284_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody284_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody284_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody284_124 : StackLang.HolProg 64 :=
.seq rawBody284_122 rawBody284_123

def rawBody284_125 : StackLang.HolProg 64 :=
.seq rawBody284_121 rawBody284_124

def rawBody284_126 : StackLang.HolProg 64 :=
.seq rawBody284_120 rawBody284_125

def rawBody284_127 : StackLang.HolProg 64 :=
.seq rawBody284_119 rawBody284_126

def rawBody284_128 : StackLang.HolProg 64 :=
.seq rawBody284_118 rawBody284_127

def rawBody284_129 : StackLang.HolProg 64 :=
.seq rawBody284_75 rawBody284_128

def rawBody284_130 : StackLang.HolProg 64 :=
.seq rawBody284_74 rawBody284_129

def rawBody284_131 : StackLang.HolProg 64 :=
.seq rawBody284_73 rawBody284_130

def rawBody284_132 : StackLang.HolProg 64 :=
.seq rawBody284_72 rawBody284_131

def rawBody284_133 : StackLang.HolProg 64 :=
.seq rawBody284_71 rawBody284_132

def rawBody284_134 : StackLang.HolProg 64 :=
.seq rawBody284_70 rawBody284_133

def rawBody284_135 : StackLang.HolProg 64 :=
.seq rawBody284_69 rawBody284_134

def rawBody284_136 : StackLang.HolProg 64 :=
.seq rawBody284_68 rawBody284_135

def rawBody284_137 : StackLang.HolProg 64 :=
.seq rawBody284_67 rawBody284_136

def rawBody284_138 : StackLang.HolProg 64 :=
.seq rawBody284_66 rawBody284_137

def rawBody284_139 : StackLang.HolProg 64 :=
.seq rawBody284_65 rawBody284_138

def rawBody284_140 : StackLang.HolProg 64 :=
.seq rawBody284_64 rawBody284_139

def rawBody284_141 : StackLang.HolProg 64 :=
.seq rawBody284_21 rawBody284_140

def rawBody284_142 : StackLang.HolProg 64 :=
.seq rawBody284_20 rawBody284_141

def rawBody284_143 : StackLang.HolProg 64 :=
.seq rawBody284_19 rawBody284_142

def rawBody284_144 : StackLang.HolProg 64 :=
.seq rawBody284_18 rawBody284_143

def rawBody284_145 : StackLang.HolProg 64 :=
.seq rawBody284_17 rawBody284_144

def rawBody284_146 : StackLang.HolProg 64 :=
.seq rawBody284_6 rawBody284_145

def rawBody284_147 : StackLang.HolProg 64 :=
.seq rawBody284_5 rawBody284_146

def rawBody284_148 : StackLang.HolProg 64 :=
.seq rawBody284_4 rawBody284_147

def rawBody284_149 : StackLang.HolProg 64 :=
.seq rawBody284_3 rawBody284_148

def rawBody284_150 : StackLang.HolProg 64 :=
.seq rawBody284_2 rawBody284_149

def rawBody284_151 : StackLang.HolProg 64 :=
.seq rawBody284_1 rawBody284_150

def rawBody284_152 : StackLang.HolProg 64 :=
.seq rawBody284_0 rawBody284_151

def raw284 : StackLang.HolProg 64 := rawBody284_152
theorem raw284_eq : StackRawCall.compTop RawInfo.rawInfo (function284 (.list [])).1 = raw284 := by
  kernel_rfl
#print axioms raw284_eq
end InitECandidate.Proofs.BackendStages
