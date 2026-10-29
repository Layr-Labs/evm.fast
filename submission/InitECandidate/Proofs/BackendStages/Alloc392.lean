import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw392
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody392_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody392_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody392_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody392_3 : StackLang.HolProg 64 :=
.seq AllocBody392_1 AllocBody392_2

def AllocBody392_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody392_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody392_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody392_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551424#64))

def AllocBody392_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def AllocBody392_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody392_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody392_12 : StackLang.HolProg 64 :=
.seq AllocBody392_10 AllocBody392_11

def AllocBody392_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1169#64)

def AllocBody392_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody392_16 : StackLang.HolProg 64 :=
.seq AllocBody392_14 AllocBody392_15

def AllocBody392_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody392_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody392_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody392_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 392 3

def AllocBody392_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody392_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody392_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody392_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody392_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody392_27 : StackLang.HolProg 64 :=
.seq AllocBody392_25 AllocBody392_26

def AllocBody392_28 : StackLang.HolProg 64 :=
.seq AllocBody392_24 AllocBody392_27

def AllocBody392_29 : StackLang.HolProg 64 :=
.seq AllocBody392_23 AllocBody392_28

def AllocBody392_30 : StackLang.HolProg 64 :=
.seq AllocBody392_22 AllocBody392_29

def AllocBody392_31 : StackLang.HolProg 64 :=
.seq AllocBody392_21 AllocBody392_30

def AllocBody392_32 : StackLang.HolProg 64 :=
.seq AllocBody392_20 AllocBody392_31

def AllocBody392_33 : StackLang.HolProg 64 :=
.seq AllocBody392_19 AllocBody392_32

def AllocBody392_34 : StackLang.HolProg 64 :=
.seq AllocBody392_18 AllocBody392_33

def AllocBody392_35 : StackLang.HolProg 64 :=
.seq AllocBody392_17 AllocBody392_34

def AllocBody392_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody392_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody392_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody392_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody392_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody392_43 : StackLang.HolProg 64 :=
.seq AllocBody392_41 AllocBody392_42

def AllocBody392_44 : StackLang.HolProg 64 :=
.seq AllocBody392_40 AllocBody392_43

def AllocBody392_45 : StackLang.HolProg 64 :=
.seq AllocBody392_39 AllocBody392_44

def AllocBody392_46 : StackLang.HolProg 64 :=
.seq AllocBody392_38 AllocBody392_45

def AllocBody392_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody392_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody392_49 : StackLang.HolProg 64 :=
.seq AllocBody392_47 AllocBody392_48

def AllocBody392_50 : StackLang.HolProg 64 :=
.call (some (AllocBody392_46, 0, 392, 2)) (Sum.inl 77) (some (AllocBody392_49, 392, 3))

def AllocBody392_51 : StackLang.HolProg 64 :=
.seq AllocBody392_37 AllocBody392_50

def AllocBody392_52 : StackLang.HolProg 64 :=
.seq AllocBody392_36 AllocBody392_51

def AllocBody392_53 : StackLang.HolProg 64 :=
.seq AllocBody392_35 AllocBody392_52

def AllocBody392_54 : StackLang.HolProg 64 :=
.seq AllocBody392_16 AllocBody392_53

def AllocBody392_55 : StackLang.HolProg 64 :=
.seq AllocBody392_13 AllocBody392_54

def AllocBody392_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody392_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody392_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody392_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody392_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551424#64))

def AllocBody392_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 20#64)))

def AllocBody392_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody392_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1170#64)

def AllocBody392_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody392_68 : StackLang.HolProg 64 :=
.seq AllocBody392_66 AllocBody392_67

def AllocBody392_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody392_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody392_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody392_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 392 5

def AllocBody392_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody392_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody392_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody392_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody392_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody392_79 : StackLang.HolProg 64 :=
.seq AllocBody392_77 AllocBody392_78

def AllocBody392_80 : StackLang.HolProg 64 :=
.seq AllocBody392_76 AllocBody392_79

def AllocBody392_81 : StackLang.HolProg 64 :=
.seq AllocBody392_75 AllocBody392_80

def AllocBody392_82 : StackLang.HolProg 64 :=
.seq AllocBody392_74 AllocBody392_81

def AllocBody392_83 : StackLang.HolProg 64 :=
.seq AllocBody392_73 AllocBody392_82

def AllocBody392_84 : StackLang.HolProg 64 :=
.seq AllocBody392_72 AllocBody392_83

def AllocBody392_85 : StackLang.HolProg 64 :=
.seq AllocBody392_71 AllocBody392_84

def AllocBody392_86 : StackLang.HolProg 64 :=
.seq AllocBody392_70 AllocBody392_85

def AllocBody392_87 : StackLang.HolProg 64 :=
.seq AllocBody392_69 AllocBody392_86

def AllocBody392_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody392_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody392_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody392_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody392_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody392_95 : StackLang.HolProg 64 :=
.seq AllocBody392_93 AllocBody392_94

def AllocBody392_96 : StackLang.HolProg 64 :=
.seq AllocBody392_92 AllocBody392_95

def AllocBody392_97 : StackLang.HolProg 64 :=
.seq AllocBody392_91 AllocBody392_96

def AllocBody392_98 : StackLang.HolProg 64 :=
.seq AllocBody392_90 AllocBody392_97

def AllocBody392_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody392_100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody392_101 : StackLang.HolProg 64 :=
.seq AllocBody392_99 AllocBody392_100

def AllocBody392_102 : StackLang.HolProg 64 :=
.call (some (AllocBody392_98, 0, 392, 4)) (Sum.inl 77) (some (AllocBody392_101, 392, 5))

def AllocBody392_103 : StackLang.HolProg 64 :=
.seq AllocBody392_89 AllocBody392_102

def AllocBody392_104 : StackLang.HolProg 64 :=
.seq AllocBody392_88 AllocBody392_103

def AllocBody392_105 : StackLang.HolProg 64 :=
.seq AllocBody392_87 AllocBody392_104

def AllocBody392_106 : StackLang.HolProg 64 :=
.seq AllocBody392_68 AllocBody392_105

def AllocBody392_107 : StackLang.HolProg 64 :=
.seq AllocBody392_65 AllocBody392_106

def AllocBody392_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody392_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody392_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody392_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody392_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551424#64))

def AllocBody392_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody392_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody392_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody392_116 : StackLang.HolProg 64 :=
.seq AllocBody392_114 AllocBody392_115

def AllocBody392_117 : StackLang.HolProg 64 :=
.seq AllocBody392_113 AllocBody392_116

def AllocBody392_118 : StackLang.HolProg 64 :=
.seq AllocBody392_112 AllocBody392_117

def AllocBody392_119 : StackLang.HolProg 64 :=
.seq AllocBody392_111 AllocBody392_118

def AllocBody392_120 : StackLang.HolProg 64 :=
.seq AllocBody392_110 AllocBody392_119

def AllocBody392_121 : StackLang.HolProg 64 :=
.seq AllocBody392_109 AllocBody392_120

def AllocBody392_122 : StackLang.HolProg 64 :=
.seq AllocBody392_108 AllocBody392_121

def AllocBody392_123 : StackLang.HolProg 64 :=
.seq AllocBody392_107 AllocBody392_122

def AllocBody392_124 : StackLang.HolProg 64 :=
.seq AllocBody392_64 AllocBody392_123

def AllocBody392_125 : StackLang.HolProg 64 :=
.seq AllocBody392_63 AllocBody392_124

def AllocBody392_126 : StackLang.HolProg 64 :=
.seq AllocBody392_62 AllocBody392_125

def AllocBody392_127 : StackLang.HolProg 64 :=
.seq AllocBody392_61 AllocBody392_126

def AllocBody392_128 : StackLang.HolProg 64 :=
.seq AllocBody392_60 AllocBody392_127

def AllocBody392_129 : StackLang.HolProg 64 :=
.seq AllocBody392_59 AllocBody392_128

def AllocBody392_130 : StackLang.HolProg 64 :=
.seq AllocBody392_58 AllocBody392_129

def AllocBody392_131 : StackLang.HolProg 64 :=
.seq AllocBody392_57 AllocBody392_130

def AllocBody392_132 : StackLang.HolProg 64 :=
.seq AllocBody392_56 AllocBody392_131

def AllocBody392_133 : StackLang.HolProg 64 :=
.seq AllocBody392_55 AllocBody392_132

def AllocBody392_134 : StackLang.HolProg 64 :=
.seq AllocBody392_12 AllocBody392_133

def AllocBody392_135 : StackLang.HolProg 64 :=
.seq AllocBody392_9 AllocBody392_134

def AllocBody392_136 : StackLang.HolProg 64 :=
.seq AllocBody392_8 AllocBody392_135

def AllocBody392_137 : StackLang.HolProg 64 :=
.seq AllocBody392_7 AllocBody392_136

def AllocBody392_138 : StackLang.HolProg 64 :=
.seq AllocBody392_6 AllocBody392_137

def AllocBody392_139 : StackLang.HolProg 64 :=
.seq AllocBody392_5 AllocBody392_138

def AllocBody392_140 : StackLang.HolProg 64 :=
.seq AllocBody392_4 AllocBody392_139

def AllocBody392_141 : StackLang.HolProg 64 :=
.seq AllocBody392_3 AllocBody392_140

def AllocBody392_142 : StackLang.HolProg 64 :=
.seq AllocBody392_0 AllocBody392_141

def Alloc392 : Nat × StackLang.HolProg 64 := (392, AllocBody392_142)
theorem Alloc392_eq : StackAlloc.progComp (392, raw392) = Alloc392 := by
  kernel_rfl
#print axioms Alloc392_eq
end InitECandidate.Proofs.BackendStages
