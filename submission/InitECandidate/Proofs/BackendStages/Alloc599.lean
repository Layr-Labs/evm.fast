import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw599
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody599_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody599_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody599_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody599_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody599_5 : StackLang.HolProg 64 :=
.seq AllocBody599_3 AllocBody599_4

def AllocBody599_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2273#64)

def AllocBody599_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody599_9 : StackLang.HolProg 64 :=
.seq AllocBody599_7 AllocBody599_8

def AllocBody599_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody599_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody599_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody599_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 599 5

def AllocBody599_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody599_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody599_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody599_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody599_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody599_20 : StackLang.HolProg 64 :=
.seq AllocBody599_18 AllocBody599_19

def AllocBody599_21 : StackLang.HolProg 64 :=
.seq AllocBody599_17 AllocBody599_20

def AllocBody599_22 : StackLang.HolProg 64 :=
.seq AllocBody599_16 AllocBody599_21

def AllocBody599_23 : StackLang.HolProg 64 :=
.seq AllocBody599_15 AllocBody599_22

def AllocBody599_24 : StackLang.HolProg 64 :=
.seq AllocBody599_14 AllocBody599_23

def AllocBody599_25 : StackLang.HolProg 64 :=
.seq AllocBody599_13 AllocBody599_24

def AllocBody599_26 : StackLang.HolProg 64 :=
.seq AllocBody599_12 AllocBody599_25

def AllocBody599_27 : StackLang.HolProg 64 :=
.seq AllocBody599_11 AllocBody599_26

def AllocBody599_28 : StackLang.HolProg 64 :=
.seq AllocBody599_10 AllocBody599_27

def AllocBody599_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody599_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody599_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody599_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody599_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody599_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody599_37 : StackLang.HolProg 64 :=
.seq AllocBody599_35 AllocBody599_36

def AllocBody599_38 : StackLang.HolProg 64 :=
.seq AllocBody599_34 AllocBody599_37

def AllocBody599_39 : StackLang.HolProg 64 :=
.seq AllocBody599_33 AllocBody599_38

def AllocBody599_40 : StackLang.HolProg 64 :=
.seq AllocBody599_32 AllocBody599_39

def AllocBody599_41 : StackLang.HolProg 64 :=
.seq AllocBody599_31 AllocBody599_40

def AllocBody599_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody599_45 : StackLang.HolProg 64 :=
.seq AllocBody599_43 AllocBody599_44

def AllocBody599_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody599_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody599_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2274#64)

def AllocBody599_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody599_52 : StackLang.HolProg 64 :=
.seq AllocBody599_50 AllocBody599_51

def AllocBody599_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody599_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody599_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody599_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 599 4

def AllocBody599_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody599_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody599_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody599_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody599_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody599_63 : StackLang.HolProg 64 :=
.seq AllocBody599_61 AllocBody599_62

def AllocBody599_64 : StackLang.HolProg 64 :=
.seq AllocBody599_60 AllocBody599_63

def AllocBody599_65 : StackLang.HolProg 64 :=
.seq AllocBody599_59 AllocBody599_64

def AllocBody599_66 : StackLang.HolProg 64 :=
.seq AllocBody599_58 AllocBody599_65

def AllocBody599_67 : StackLang.HolProg 64 :=
.seq AllocBody599_57 AllocBody599_66

def AllocBody599_68 : StackLang.HolProg 64 :=
.seq AllocBody599_56 AllocBody599_67

def AllocBody599_69 : StackLang.HolProg 64 :=
.seq AllocBody599_55 AllocBody599_68

def AllocBody599_70 : StackLang.HolProg 64 :=
.seq AllocBody599_54 AllocBody599_69

def AllocBody599_71 : StackLang.HolProg 64 :=
.seq AllocBody599_53 AllocBody599_70

def AllocBody599_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody599_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody599_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody599_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody599_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody599_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody599_80 : StackLang.HolProg 64 :=
.seq AllocBody599_78 AllocBody599_79

def AllocBody599_81 : StackLang.HolProg 64 :=
.seq AllocBody599_77 AllocBody599_80

def AllocBody599_82 : StackLang.HolProg 64 :=
.seq AllocBody599_76 AllocBody599_81

def AllocBody599_83 : StackLang.HolProg 64 :=
.seq AllocBody599_75 AllocBody599_82

def AllocBody599_84 : StackLang.HolProg 64 :=
.seq AllocBody599_74 AllocBody599_83

def AllocBody599_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody599_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody599_87 : StackLang.HolProg 64 :=
.seq AllocBody599_85 AllocBody599_86

def AllocBody599_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody599_89 : StackLang.HolProg 64 :=
.seq AllocBody599_87 AllocBody599_88

def AllocBody599_90 : StackLang.HolProg 64 :=
.call (some (AllocBody599_84, 0, 599, 3)) (Sum.inl 597) (some (AllocBody599_89, 599, 4))

def AllocBody599_91 : StackLang.HolProg 64 :=
.seq AllocBody599_73 AllocBody599_90

def AllocBody599_92 : StackLang.HolProg 64 :=
.seq AllocBody599_72 AllocBody599_91

def AllocBody599_93 : StackLang.HolProg 64 :=
.seq AllocBody599_71 AllocBody599_92

def AllocBody599_94 : StackLang.HolProg 64 :=
.seq AllocBody599_52 AllocBody599_93

def AllocBody599_95 : StackLang.HolProg 64 :=
.seq AllocBody599_49 AllocBody599_94

def AllocBody599_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody599_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_98 : StackLang.HolProg 64 :=
.seq AllocBody599_96 AllocBody599_97

def AllocBody599_99 : StackLang.HolProg 64 :=
.seq AllocBody599_95 AllocBody599_98

def AllocBody599_100 : StackLang.HolProg 64 :=
.seq AllocBody599_48 AllocBody599_99

def AllocBody599_101 : StackLang.HolProg 64 :=
.seq AllocBody599_47 AllocBody599_100

def AllocBody599_102 : StackLang.HolProg 64 :=
.seq AllocBody599_46 AllocBody599_101

def AllocBody599_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) AllocBody599_45 AllocBody599_102

def AllocBody599_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody599_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_106 : StackLang.HolProg 64 :=
.seq AllocBody599_104 AllocBody599_105

def AllocBody599_107 : StackLang.HolProg 64 :=
.seq AllocBody599_103 AllocBody599_106

def AllocBody599_108 : StackLang.HolProg 64 :=
.seq AllocBody599_42 AllocBody599_107

def AllocBody599_109 : StackLang.HolProg 64 :=
.call (some (AllocBody599_41, 0, 599, 2)) (Sum.inl 598) (some (AllocBody599_108, 599, 5))

def AllocBody599_110 : StackLang.HolProg 64 :=
.seq AllocBody599_30 AllocBody599_109

def AllocBody599_111 : StackLang.HolProg 64 :=
.seq AllocBody599_29 AllocBody599_110

def AllocBody599_112 : StackLang.HolProg 64 :=
.seq AllocBody599_28 AllocBody599_111

def AllocBody599_113 : StackLang.HolProg 64 :=
.seq AllocBody599_9 AllocBody599_112

def AllocBody599_114 : StackLang.HolProg 64 :=
.seq AllocBody599_6 AllocBody599_113

def AllocBody599_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody599_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody599_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody599_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody599_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody599_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody599_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def AllocBody599_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody599_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody599_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody599_127 : StackLang.HolProg 64 :=
.seq AllocBody599_125 AllocBody599_126

def AllocBody599_128 : StackLang.HolProg 64 :=
.seq AllocBody599_124 AllocBody599_127

def AllocBody599_129 : StackLang.HolProg 64 :=
.seq AllocBody599_123 AllocBody599_128

def AllocBody599_130 : StackLang.HolProg 64 :=
.seq AllocBody599_122 AllocBody599_129

def AllocBody599_131 : StackLang.HolProg 64 :=
.seq AllocBody599_121 AllocBody599_130

def AllocBody599_132 : StackLang.HolProg 64 :=
.seq AllocBody599_120 AllocBody599_131

def AllocBody599_133 : StackLang.HolProg 64 :=
.seq AllocBody599_119 AllocBody599_132

def AllocBody599_134 : StackLang.HolProg 64 :=
.seq AllocBody599_118 AllocBody599_133

def AllocBody599_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody599_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody599_134 AllocBody599_135

def AllocBody599_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody599_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody599_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody599_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody599_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody599_142 : StackLang.HolProg 64 :=
.seq AllocBody599_140 AllocBody599_141

def AllocBody599_143 : StackLang.HolProg 64 :=
.seq AllocBody599_139 AllocBody599_142

def AllocBody599_144 : StackLang.HolProg 64 :=
.seq AllocBody599_138 AllocBody599_143

def AllocBody599_145 : StackLang.HolProg 64 :=
.seq AllocBody599_137 AllocBody599_144

def AllocBody599_146 : StackLang.HolProg 64 :=
.seq AllocBody599_136 AllocBody599_145

def AllocBody599_147 : StackLang.HolProg 64 :=
.seq AllocBody599_117 AllocBody599_146

def AllocBody599_148 : StackLang.HolProg 64 :=
.seq AllocBody599_116 AllocBody599_147

def AllocBody599_149 : StackLang.HolProg 64 :=
.seq AllocBody599_115 AllocBody599_148

def AllocBody599_150 : StackLang.HolProg 64 :=
.seq AllocBody599_114 AllocBody599_149

def AllocBody599_151 : StackLang.HolProg 64 :=
.seq AllocBody599_5 AllocBody599_150

def AllocBody599_152 : StackLang.HolProg 64 :=
.seq AllocBody599_2 AllocBody599_151

def AllocBody599_153 : StackLang.HolProg 64 :=
.seq AllocBody599_1 AllocBody599_152

def AllocBody599_154 : StackLang.HolProg 64 :=
.seq AllocBody599_0 AllocBody599_153

def Alloc599 : Nat × StackLang.HolProg 64 := (599, AllocBody599_154)
theorem Alloc599_eq : StackAlloc.progComp (599, raw599) = Alloc599 := by
  kernel_rfl
#print axioms Alloc599_eq
end InitECandidate.Proofs.BackendStages
