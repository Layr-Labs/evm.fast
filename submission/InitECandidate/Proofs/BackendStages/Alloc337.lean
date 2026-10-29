import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw337
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody337_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody337_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody337_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody337_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody337_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody337_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody337_6 : StackLang.HolProg 64 :=
.seq AllocBody337_4 AllocBody337_5

def AllocBody337_7 : StackLang.HolProg 64 :=
.seq AllocBody337_3 AllocBody337_6

def AllocBody337_8 : StackLang.HolProg 64 :=
.seq AllocBody337_2 AllocBody337_7

def AllocBody337_9 : StackLang.HolProg 64 :=
.seq AllocBody337_1 AllocBody337_8

def AllocBody337_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 971#64)

def AllocBody337_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody337_13 : StackLang.HolProg 64 :=
.seq AllocBody337_11 AllocBody337_12

def AllocBody337_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody337_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody337_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody337_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 337 3

def AllocBody337_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody337_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody337_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody337_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody337_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody337_24 : StackLang.HolProg 64 :=
.seq AllocBody337_22 AllocBody337_23

def AllocBody337_25 : StackLang.HolProg 64 :=
.seq AllocBody337_21 AllocBody337_24

def AllocBody337_26 : StackLang.HolProg 64 :=
.seq AllocBody337_20 AllocBody337_25

def AllocBody337_27 : StackLang.HolProg 64 :=
.seq AllocBody337_19 AllocBody337_26

def AllocBody337_28 : StackLang.HolProg 64 :=
.seq AllocBody337_18 AllocBody337_27

def AllocBody337_29 : StackLang.HolProg 64 :=
.seq AllocBody337_17 AllocBody337_28

def AllocBody337_30 : StackLang.HolProg 64 :=
.seq AllocBody337_16 AllocBody337_29

def AllocBody337_31 : StackLang.HolProg 64 :=
.seq AllocBody337_15 AllocBody337_30

def AllocBody337_32 : StackLang.HolProg 64 :=
.seq AllocBody337_14 AllocBody337_31

def AllocBody337_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody337_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody337_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody337_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody337_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody337_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody337_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody337_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody337_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody337_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody337_45 : StackLang.HolProg 64 :=
.seq AllocBody337_43 AllocBody337_44

def AllocBody337_46 : StackLang.HolProg 64 :=
.seq AllocBody337_42 AllocBody337_45

def AllocBody337_47 : StackLang.HolProg 64 :=
.seq AllocBody337_41 AllocBody337_46

def AllocBody337_48 : StackLang.HolProg 64 :=
.seq AllocBody337_40 AllocBody337_47

def AllocBody337_49 : StackLang.HolProg 64 :=
.seq AllocBody337_39 AllocBody337_48

def AllocBody337_50 : StackLang.HolProg 64 :=
.seq AllocBody337_38 AllocBody337_49

def AllocBody337_51 : StackLang.HolProg 64 :=
.seq AllocBody337_37 AllocBody337_50

def AllocBody337_52 : StackLang.HolProg 64 :=
.seq AllocBody337_36 AllocBody337_51

def AllocBody337_53 : StackLang.HolProg 64 :=
.seq AllocBody337_35 AllocBody337_52

def AllocBody337_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody337_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody337_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody337_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody337_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody337_59 : StackLang.HolProg 64 :=
.seq AllocBody337_57 AllocBody337_58

def AllocBody337_60 : StackLang.HolProg 64 :=
.seq AllocBody337_56 AllocBody337_59

def AllocBody337_61 : StackLang.HolProg 64 :=
.seq AllocBody337_55 AllocBody337_60

def AllocBody337_62 : StackLang.HolProg 64 :=
.seq AllocBody337_54 AllocBody337_61

def AllocBody337_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody337_64 : StackLang.HolProg 64 :=
.seq AllocBody337_62 AllocBody337_63

def AllocBody337_65 : StackLang.HolProg 64 :=
.call (some (AllocBody337_53, 0, 337, 2)) (Sum.inl 335) (some (AllocBody337_64, 337, 3))

def AllocBody337_66 : StackLang.HolProg 64 :=
.seq AllocBody337_34 AllocBody337_65

def AllocBody337_67 : StackLang.HolProg 64 :=
.seq AllocBody337_33 AllocBody337_66

def AllocBody337_68 : StackLang.HolProg 64 :=
.seq AllocBody337_32 AllocBody337_67

def AllocBody337_69 : StackLang.HolProg 64 :=
.seq AllocBody337_13 AllocBody337_68

def AllocBody337_70 : StackLang.HolProg 64 :=
.seq AllocBody337_10 AllocBody337_69

def AllocBody337_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody337_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody337_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody337_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 3

def AllocBody337_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody337_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody337_80 : StackLang.HolProg 64 :=
.seq AllocBody337_78 AllocBody337_79

def AllocBody337_81 : StackLang.HolProg 64 :=
.seq AllocBody337_77 AllocBody337_80

def AllocBody337_82 : StackLang.HolProg 64 :=
.seq AllocBody337_76 AllocBody337_81

def AllocBody337_83 : StackLang.HolProg 64 :=
.seq AllocBody337_75 AllocBody337_82

def AllocBody337_84 : StackLang.HolProg 64 :=
.seq AllocBody337_74 AllocBody337_83

def AllocBody337_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody337_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody337_84 AllocBody337_85

def AllocBody337_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody337_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody337_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody337_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody337_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody337_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody337_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody337_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody337_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody337_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody337_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody337_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody337_105 : StackLang.HolProg 64 :=
.seq AllocBody337_103 AllocBody337_104

def AllocBody337_106 : StackLang.HolProg 64 :=
.seq AllocBody337_102 AllocBody337_105

def AllocBody337_107 : StackLang.HolProg 64 :=
.seq AllocBody337_101 AllocBody337_106

def AllocBody337_108 : StackLang.HolProg 64 :=
.seq AllocBody337_100 AllocBody337_107

def AllocBody337_109 : StackLang.HolProg 64 :=
.seq AllocBody337_99 AllocBody337_108

def AllocBody337_110 : StackLang.HolProg 64 :=
.seq AllocBody337_98 AllocBody337_109

def AllocBody337_111 : StackLang.HolProg 64 :=
.seq AllocBody337_97 AllocBody337_110

def AllocBody337_112 : StackLang.HolProg 64 :=
.seq AllocBody337_96 AllocBody337_111

def AllocBody337_113 : StackLang.HolProg 64 :=
.seq AllocBody337_95 AllocBody337_112

def AllocBody337_114 : StackLang.HolProg 64 :=
.seq AllocBody337_94 AllocBody337_113

def AllocBody337_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody337_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody337_117 : StackLang.HolProg 64 :=
.seq AllocBody337_115 AllocBody337_116

def AllocBody337_118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody337_114 AllocBody337_117

def AllocBody337_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody337_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_121 : StackLang.HolProg 64 :=
.seq AllocBody337_119 AllocBody337_120

def AllocBody337_122 : StackLang.HolProg 64 :=
.seq AllocBody337_118 AllocBody337_121

def AllocBody337_123 : StackLang.HolProg 64 :=
.seq AllocBody337_93 AllocBody337_122

def AllocBody337_124 : StackLang.HolProg 64 :=
.loop AllocBody337_123

def AllocBody337_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody337_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody337_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody337_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody337_129 : StackLang.HolProg 64 :=
.seq AllocBody337_127 AllocBody337_128

def AllocBody337_130 : StackLang.HolProg 64 :=
.seq AllocBody337_126 AllocBody337_129

def AllocBody337_131 : StackLang.HolProg 64 :=
.seq AllocBody337_125 AllocBody337_130

def AllocBody337_132 : StackLang.HolProg 64 :=
.seq AllocBody337_124 AllocBody337_131

def AllocBody337_133 : StackLang.HolProg 64 :=
.seq AllocBody337_92 AllocBody337_132

def AllocBody337_134 : StackLang.HolProg 64 :=
.seq AllocBody337_91 AllocBody337_133

def AllocBody337_135 : StackLang.HolProg 64 :=
.seq AllocBody337_90 AllocBody337_134

def AllocBody337_136 : StackLang.HolProg 64 :=
.seq AllocBody337_89 AllocBody337_135

def AllocBody337_137 : StackLang.HolProg 64 :=
.seq AllocBody337_88 AllocBody337_136

def AllocBody337_138 : StackLang.HolProg 64 :=
.seq AllocBody337_87 AllocBody337_137

def AllocBody337_139 : StackLang.HolProg 64 :=
.seq AllocBody337_86 AllocBody337_138

def AllocBody337_140 : StackLang.HolProg 64 :=
.seq AllocBody337_73 AllocBody337_139

def AllocBody337_141 : StackLang.HolProg 64 :=
.seq AllocBody337_72 AllocBody337_140

def AllocBody337_142 : StackLang.HolProg 64 :=
.seq AllocBody337_71 AllocBody337_141

def AllocBody337_143 : StackLang.HolProg 64 :=
.seq AllocBody337_70 AllocBody337_142

def AllocBody337_144 : StackLang.HolProg 64 :=
.seq AllocBody337_9 AllocBody337_143

def AllocBody337_145 : StackLang.HolProg 64 :=
.seq AllocBody337_0 AllocBody337_144

def Alloc337 : Nat × StackLang.HolProg 64 := (337, AllocBody337_145)
theorem Alloc337_eq : StackAlloc.progComp (337, raw337) = Alloc337 := by
  kernel_rfl
#print axioms Alloc337_eq
end InitECandidate.Proofs.BackendStages
