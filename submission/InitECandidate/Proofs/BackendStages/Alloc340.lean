import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw340
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody340_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody340_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody340_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody340_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody340_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody340_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody340_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 974#64)

def AllocBody340_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody340_12 : StackLang.HolProg 64 :=
.seq AllocBody340_10 AllocBody340_11

def AllocBody340_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody340_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody340_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody340_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 340 3

def AllocBody340_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody340_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody340_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody340_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody340_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody340_23 : StackLang.HolProg 64 :=
.seq AllocBody340_21 AllocBody340_22

def AllocBody340_24 : StackLang.HolProg 64 :=
.seq AllocBody340_20 AllocBody340_23

def AllocBody340_25 : StackLang.HolProg 64 :=
.seq AllocBody340_19 AllocBody340_24

def AllocBody340_26 : StackLang.HolProg 64 :=
.seq AllocBody340_18 AllocBody340_25

def AllocBody340_27 : StackLang.HolProg 64 :=
.seq AllocBody340_17 AllocBody340_26

def AllocBody340_28 : StackLang.HolProg 64 :=
.seq AllocBody340_16 AllocBody340_27

def AllocBody340_29 : StackLang.HolProg 64 :=
.seq AllocBody340_15 AllocBody340_28

def AllocBody340_30 : StackLang.HolProg 64 :=
.seq AllocBody340_14 AllocBody340_29

def AllocBody340_31 : StackLang.HolProg 64 :=
.seq AllocBody340_13 AllocBody340_30

def AllocBody340_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody340_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody340_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody340_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody340_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody340_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody340_40 : StackLang.HolProg 64 :=
.seq AllocBody340_38 AllocBody340_39

def AllocBody340_41 : StackLang.HolProg 64 :=
.seq AllocBody340_37 AllocBody340_40

def AllocBody340_42 : StackLang.HolProg 64 :=
.seq AllocBody340_36 AllocBody340_41

def AllocBody340_43 : StackLang.HolProg 64 :=
.seq AllocBody340_35 AllocBody340_42

def AllocBody340_44 : StackLang.HolProg 64 :=
.seq AllocBody340_34 AllocBody340_43

def AllocBody340_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody340_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody340_47 : StackLang.HolProg 64 :=
.seq AllocBody340_45 AllocBody340_46

def AllocBody340_48 : StackLang.HolProg 64 :=
.call (some (AllocBody340_44, 0, 340, 2)) (Sum.inl 161) (some (AllocBody340_47, 340, 3))

def AllocBody340_49 : StackLang.HolProg 64 :=
.seq AllocBody340_33 AllocBody340_48

def AllocBody340_50 : StackLang.HolProg 64 :=
.seq AllocBody340_32 AllocBody340_49

def AllocBody340_51 : StackLang.HolProg 64 :=
.seq AllocBody340_31 AllocBody340_50

def AllocBody340_52 : StackLang.HolProg 64 :=
.seq AllocBody340_12 AllocBody340_51

def AllocBody340_53 : StackLang.HolProg 64 :=
.seq AllocBody340_9 AllocBody340_52

def AllocBody340_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody340_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody340_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody340_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 17#64)

def AllocBody340_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody340_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody340_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody340_64 : StackLang.HolProg 64 :=
.seq AllocBody340_62 AllocBody340_63

def AllocBody340_65 : StackLang.HolProg 64 :=
.seq AllocBody340_61 AllocBody340_64

def AllocBody340_66 : StackLang.HolProg 64 :=
.seq AllocBody340_60 AllocBody340_65

def AllocBody340_67 : StackLang.HolProg 64 :=
.seq AllocBody340_59 AllocBody340_66

def AllocBody340_68 : StackLang.HolProg 64 :=
.seq AllocBody340_58 AllocBody340_67

def AllocBody340_69 : StackLang.HolProg 64 :=
.seq AllocBody340_57 AllocBody340_68

def AllocBody340_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody340_69 AllocBody340_70

def AllocBody340_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody340_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody340_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody340_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody340_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody340_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody340_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody340_81 : StackLang.HolProg 64 :=
.seq AllocBody340_79 AllocBody340_80

def AllocBody340_82 : StackLang.HolProg 64 :=
.seq AllocBody340_78 AllocBody340_81

def AllocBody340_83 : StackLang.HolProg 64 :=
.seq AllocBody340_77 AllocBody340_82

def AllocBody340_84 : StackLang.HolProg 64 :=
.seq AllocBody340_76 AllocBody340_83

def AllocBody340_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody340_84 AllocBody340_85

def AllocBody340_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody340_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody340_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 20#64)

def AllocBody340_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody340_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 17#64)

def AllocBody340_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody340_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody340_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_97 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody340_98 : StackLang.HolProg 64 :=
.seq AllocBody340_96 AllocBody340_97

def AllocBody340_99 : StackLang.HolProg 64 :=
.seq AllocBody340_95 AllocBody340_98

def AllocBody340_100 : StackLang.HolProg 64 :=
.seq AllocBody340_94 AllocBody340_99

def AllocBody340_101 : StackLang.HolProg 64 :=
.seq AllocBody340_93 AllocBody340_100

def AllocBody340_102 : StackLang.HolProg 64 :=
.seq AllocBody340_92 AllocBody340_101

def AllocBody340_103 : StackLang.HolProg 64 :=
.seq AllocBody340_91 AllocBody340_102

def AllocBody340_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody340_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody340_103 AllocBody340_104

def AllocBody340_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody340_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody340_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody340_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody340_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody340_111 : StackLang.HolProg 64 :=
.seq AllocBody340_109 AllocBody340_110

def AllocBody340_112 : StackLang.HolProg 64 :=
.seq AllocBody340_108 AllocBody340_111

def AllocBody340_113 : StackLang.HolProg 64 :=
.seq AllocBody340_107 AllocBody340_112

def AllocBody340_114 : StackLang.HolProg 64 :=
.seq AllocBody340_106 AllocBody340_113

def AllocBody340_115 : StackLang.HolProg 64 :=
.seq AllocBody340_105 AllocBody340_114

def AllocBody340_116 : StackLang.HolProg 64 :=
.seq AllocBody340_90 AllocBody340_115

def AllocBody340_117 : StackLang.HolProg 64 :=
.seq AllocBody340_89 AllocBody340_116

def AllocBody340_118 : StackLang.HolProg 64 :=
.seq AllocBody340_88 AllocBody340_117

def AllocBody340_119 : StackLang.HolProg 64 :=
.seq AllocBody340_87 AllocBody340_118

def AllocBody340_120 : StackLang.HolProg 64 :=
.seq AllocBody340_86 AllocBody340_119

def AllocBody340_121 : StackLang.HolProg 64 :=
.seq AllocBody340_75 AllocBody340_120

def AllocBody340_122 : StackLang.HolProg 64 :=
.seq AllocBody340_74 AllocBody340_121

def AllocBody340_123 : StackLang.HolProg 64 :=
.seq AllocBody340_73 AllocBody340_122

def AllocBody340_124 : StackLang.HolProg 64 :=
.seq AllocBody340_72 AllocBody340_123

def AllocBody340_125 : StackLang.HolProg 64 :=
.seq AllocBody340_71 AllocBody340_124

def AllocBody340_126 : StackLang.HolProg 64 :=
.seq AllocBody340_56 AllocBody340_125

def AllocBody340_127 : StackLang.HolProg 64 :=
.seq AllocBody340_55 AllocBody340_126

def AllocBody340_128 : StackLang.HolProg 64 :=
.seq AllocBody340_54 AllocBody340_127

def AllocBody340_129 : StackLang.HolProg 64 :=
.seq AllocBody340_53 AllocBody340_128

def AllocBody340_130 : StackLang.HolProg 64 :=
.seq AllocBody340_8 AllocBody340_129

def AllocBody340_131 : StackLang.HolProg 64 :=
.seq AllocBody340_7 AllocBody340_130

def AllocBody340_132 : StackLang.HolProg 64 :=
.seq AllocBody340_6 AllocBody340_131

def AllocBody340_133 : StackLang.HolProg 64 :=
.seq AllocBody340_5 AllocBody340_132

def AllocBody340_134 : StackLang.HolProg 64 :=
.seq AllocBody340_4 AllocBody340_133

def AllocBody340_135 : StackLang.HolProg 64 :=
.seq AllocBody340_3 AllocBody340_134

def AllocBody340_136 : StackLang.HolProg 64 :=
.seq AllocBody340_2 AllocBody340_135

def AllocBody340_137 : StackLang.HolProg 64 :=
.seq AllocBody340_1 AllocBody340_136

def AllocBody340_138 : StackLang.HolProg 64 :=
.seq AllocBody340_0 AllocBody340_137

def Alloc340 : Nat × StackLang.HolProg 64 := (340, AllocBody340_138)
theorem Alloc340_eq : StackAlloc.progComp (340, raw340) = Alloc340 := by
  kernel_rfl
#print axioms Alloc340_eq
end InitECandidate.Proofs.BackendStages
