import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw284
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody284_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody284_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody284_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody284_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody284_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551496#64))

def AllocBody284_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody284_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody284_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody284_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody284_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody284_12 : StackLang.HolProg 64 :=
.seq AllocBody284_10 AllocBody284_11

def AllocBody284_13 : StackLang.HolProg 64 :=
.seq AllocBody284_9 AllocBody284_12

def AllocBody284_14 : StackLang.HolProg 64 :=
.seq AllocBody284_8 AllocBody284_13

def AllocBody284_15 : StackLang.HolProg 64 :=
.seq AllocBody284_7 AllocBody284_14

def AllocBody284_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody284_15 AllocBody284_16

def AllocBody284_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody284_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody284_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody284_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody284_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 768#64)

def AllocBody284_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody284_25 : StackLang.HolProg 64 :=
.seq AllocBody284_23 AllocBody284_24

def AllocBody284_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody284_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody284_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody284_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 284 3

def AllocBody284_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody284_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody284_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody284_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody284_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody284_36 : StackLang.HolProg 64 :=
.seq AllocBody284_34 AllocBody284_35

def AllocBody284_37 : StackLang.HolProg 64 :=
.seq AllocBody284_33 AllocBody284_36

def AllocBody284_38 : StackLang.HolProg 64 :=
.seq AllocBody284_32 AllocBody284_37

def AllocBody284_39 : StackLang.HolProg 64 :=
.seq AllocBody284_31 AllocBody284_38

def AllocBody284_40 : StackLang.HolProg 64 :=
.seq AllocBody284_30 AllocBody284_39

def AllocBody284_41 : StackLang.HolProg 64 :=
.seq AllocBody284_29 AllocBody284_40

def AllocBody284_42 : StackLang.HolProg 64 :=
.seq AllocBody284_28 AllocBody284_41

def AllocBody284_43 : StackLang.HolProg 64 :=
.seq AllocBody284_27 AllocBody284_42

def AllocBody284_44 : StackLang.HolProg 64 :=
.seq AllocBody284_26 AllocBody284_43

def AllocBody284_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody284_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody284_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody284_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody284_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody284_52 : StackLang.HolProg 64 :=
.seq AllocBody284_50 AllocBody284_51

def AllocBody284_53 : StackLang.HolProg 64 :=
.seq AllocBody284_49 AllocBody284_52

def AllocBody284_54 : StackLang.HolProg 64 :=
.seq AllocBody284_48 AllocBody284_53

def AllocBody284_55 : StackLang.HolProg 64 :=
.seq AllocBody284_47 AllocBody284_54

def AllocBody284_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody284_58 : StackLang.HolProg 64 :=
.seq AllocBody284_56 AllocBody284_57

def AllocBody284_59 : StackLang.HolProg 64 :=
.call (some (AllocBody284_55, 0, 284, 2)) (Sum.inl 68) (some (AllocBody284_58, 284, 3))

def AllocBody284_60 : StackLang.HolProg 64 :=
.seq AllocBody284_46 AllocBody284_59

def AllocBody284_61 : StackLang.HolProg 64 :=
.seq AllocBody284_45 AllocBody284_60

def AllocBody284_62 : StackLang.HolProg 64 :=
.seq AllocBody284_44 AllocBody284_61

def AllocBody284_63 : StackLang.HolProg 64 :=
.seq AllocBody284_25 AllocBody284_62

def AllocBody284_64 : StackLang.HolProg 64 :=
.seq AllocBody284_22 AllocBody284_63

def AllocBody284_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody284_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody284_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody284_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody284_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551496#64)))

def AllocBody284_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody284_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551496#64))

def AllocBody284_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def AllocBody284_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 769#64)

def AllocBody284_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody284_79 : StackLang.HolProg 64 :=
.seq AllocBody284_77 AllocBody284_78

def AllocBody284_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody284_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody284_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody284_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 284 5

def AllocBody284_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody284_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody284_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody284_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody284_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody284_90 : StackLang.HolProg 64 :=
.seq AllocBody284_88 AllocBody284_89

def AllocBody284_91 : StackLang.HolProg 64 :=
.seq AllocBody284_87 AllocBody284_90

def AllocBody284_92 : StackLang.HolProg 64 :=
.seq AllocBody284_86 AllocBody284_91

def AllocBody284_93 : StackLang.HolProg 64 :=
.seq AllocBody284_85 AllocBody284_92

def AllocBody284_94 : StackLang.HolProg 64 :=
.seq AllocBody284_84 AllocBody284_93

def AllocBody284_95 : StackLang.HolProg 64 :=
.seq AllocBody284_83 AllocBody284_94

def AllocBody284_96 : StackLang.HolProg 64 :=
.seq AllocBody284_82 AllocBody284_95

def AllocBody284_97 : StackLang.HolProg 64 :=
.seq AllocBody284_81 AllocBody284_96

def AllocBody284_98 : StackLang.HolProg 64 :=
.seq AllocBody284_80 AllocBody284_97

def AllocBody284_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody284_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody284_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody284_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody284_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody284_106 : StackLang.HolProg 64 :=
.seq AllocBody284_104 AllocBody284_105

def AllocBody284_107 : StackLang.HolProg 64 :=
.seq AllocBody284_103 AllocBody284_106

def AllocBody284_108 : StackLang.HolProg 64 :=
.seq AllocBody284_102 AllocBody284_107

def AllocBody284_109 : StackLang.HolProg 64 :=
.seq AllocBody284_101 AllocBody284_108

def AllocBody284_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody284_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody284_112 : StackLang.HolProg 64 :=
.seq AllocBody284_110 AllocBody284_111

def AllocBody284_113 : StackLang.HolProg 64 :=
.call (some (AllocBody284_109, 0, 284, 4)) (Sum.inl 78) (some (AllocBody284_112, 284, 5))

def AllocBody284_114 : StackLang.HolProg 64 :=
.seq AllocBody284_100 AllocBody284_113

def AllocBody284_115 : StackLang.HolProg 64 :=
.seq AllocBody284_99 AllocBody284_114

def AllocBody284_116 : StackLang.HolProg 64 :=
.seq AllocBody284_98 AllocBody284_115

def AllocBody284_117 : StackLang.HolProg 64 :=
.seq AllocBody284_79 AllocBody284_116

def AllocBody284_118 : StackLang.HolProg 64 :=
.seq AllocBody284_76 AllocBody284_117

def AllocBody284_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody284_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody284_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody284_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody284_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody284_124 : StackLang.HolProg 64 :=
.seq AllocBody284_122 AllocBody284_123

def AllocBody284_125 : StackLang.HolProg 64 :=
.seq AllocBody284_121 AllocBody284_124

def AllocBody284_126 : StackLang.HolProg 64 :=
.seq AllocBody284_120 AllocBody284_125

def AllocBody284_127 : StackLang.HolProg 64 :=
.seq AllocBody284_119 AllocBody284_126

def AllocBody284_128 : StackLang.HolProg 64 :=
.seq AllocBody284_118 AllocBody284_127

def AllocBody284_129 : StackLang.HolProg 64 :=
.seq AllocBody284_75 AllocBody284_128

def AllocBody284_130 : StackLang.HolProg 64 :=
.seq AllocBody284_74 AllocBody284_129

def AllocBody284_131 : StackLang.HolProg 64 :=
.seq AllocBody284_73 AllocBody284_130

def AllocBody284_132 : StackLang.HolProg 64 :=
.seq AllocBody284_72 AllocBody284_131

def AllocBody284_133 : StackLang.HolProg 64 :=
.seq AllocBody284_71 AllocBody284_132

def AllocBody284_134 : StackLang.HolProg 64 :=
.seq AllocBody284_70 AllocBody284_133

def AllocBody284_135 : StackLang.HolProg 64 :=
.seq AllocBody284_69 AllocBody284_134

def AllocBody284_136 : StackLang.HolProg 64 :=
.seq AllocBody284_68 AllocBody284_135

def AllocBody284_137 : StackLang.HolProg 64 :=
.seq AllocBody284_67 AllocBody284_136

def AllocBody284_138 : StackLang.HolProg 64 :=
.seq AllocBody284_66 AllocBody284_137

def AllocBody284_139 : StackLang.HolProg 64 :=
.seq AllocBody284_65 AllocBody284_138

def AllocBody284_140 : StackLang.HolProg 64 :=
.seq AllocBody284_64 AllocBody284_139

def AllocBody284_141 : StackLang.HolProg 64 :=
.seq AllocBody284_21 AllocBody284_140

def AllocBody284_142 : StackLang.HolProg 64 :=
.seq AllocBody284_20 AllocBody284_141

def AllocBody284_143 : StackLang.HolProg 64 :=
.seq AllocBody284_19 AllocBody284_142

def AllocBody284_144 : StackLang.HolProg 64 :=
.seq AllocBody284_18 AllocBody284_143

def AllocBody284_145 : StackLang.HolProg 64 :=
.seq AllocBody284_17 AllocBody284_144

def AllocBody284_146 : StackLang.HolProg 64 :=
.seq AllocBody284_6 AllocBody284_145

def AllocBody284_147 : StackLang.HolProg 64 :=
.seq AllocBody284_5 AllocBody284_146

def AllocBody284_148 : StackLang.HolProg 64 :=
.seq AllocBody284_4 AllocBody284_147

def AllocBody284_149 : StackLang.HolProg 64 :=
.seq AllocBody284_3 AllocBody284_148

def AllocBody284_150 : StackLang.HolProg 64 :=
.seq AllocBody284_2 AllocBody284_149

def AllocBody284_151 : StackLang.HolProg 64 :=
.seq AllocBody284_1 AllocBody284_150

def AllocBody284_152 : StackLang.HolProg 64 :=
.seq AllocBody284_0 AllocBody284_151

def Alloc284 : Nat × StackLang.HolProg 64 := (284, AllocBody284_152)
theorem Alloc284_eq : StackAlloc.progComp (284, raw284) = Alloc284 := by
  kernel_rfl
#print axioms Alloc284_eq
end InitECandidate.Proofs.BackendStages
