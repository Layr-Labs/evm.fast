import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw327
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody327_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody327_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody327_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody327_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody327_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody327_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody327_8 : StackLang.HolProg 64 :=
.seq AllocBody327_6 AllocBody327_7

def AllocBody327_9 : StackLang.HolProg 64 :=
.seq AllocBody327_5 AllocBody327_8

def AllocBody327_10 : StackLang.HolProg 64 :=
.seq AllocBody327_4 AllocBody327_9

def AllocBody327_11 : StackLang.HolProg 64 :=
.seq AllocBody327_3 AllocBody327_10

def AllocBody327_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody327_11 AllocBody327_12

def AllocBody327_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody327_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody327_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 33#64)

def AllocBody327_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody327_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody327_24 : StackLang.HolProg 64 :=
.seq AllocBody327_22 AllocBody327_23

def AllocBody327_25 : StackLang.HolProg 64 :=
.seq AllocBody327_21 AllocBody327_24

def AllocBody327_26 : StackLang.HolProg 64 :=
.seq AllocBody327_20 AllocBody327_25

def AllocBody327_27 : StackLang.HolProg 64 :=
.seq AllocBody327_19 AllocBody327_26

def AllocBody327_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody327_27 AllocBody327_28

def AllocBody327_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody327_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody327_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def AllocBody327_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody327_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody327_39 : StackLang.HolProg 64 :=
.seq AllocBody327_37 AllocBody327_38

def AllocBody327_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 925#64)

def AllocBody327_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody327_43 : StackLang.HolProg 64 :=
.seq AllocBody327_41 AllocBody327_42

def AllocBody327_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody327_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody327_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody327_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 327 3

def AllocBody327_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody327_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody327_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody327_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody327_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody327_54 : StackLang.HolProg 64 :=
.seq AllocBody327_52 AllocBody327_53

def AllocBody327_55 : StackLang.HolProg 64 :=
.seq AllocBody327_51 AllocBody327_54

def AllocBody327_56 : StackLang.HolProg 64 :=
.seq AllocBody327_50 AllocBody327_55

def AllocBody327_57 : StackLang.HolProg 64 :=
.seq AllocBody327_49 AllocBody327_56

def AllocBody327_58 : StackLang.HolProg 64 :=
.seq AllocBody327_48 AllocBody327_57

def AllocBody327_59 : StackLang.HolProg 64 :=
.seq AllocBody327_47 AllocBody327_58

def AllocBody327_60 : StackLang.HolProg 64 :=
.seq AllocBody327_46 AllocBody327_59

def AllocBody327_61 : StackLang.HolProg 64 :=
.seq AllocBody327_45 AllocBody327_60

def AllocBody327_62 : StackLang.HolProg 64 :=
.seq AllocBody327_44 AllocBody327_61

def AllocBody327_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody327_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody327_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody327_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody327_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody327_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody327_71 : StackLang.HolProg 64 :=
.seq AllocBody327_69 AllocBody327_70

def AllocBody327_72 : StackLang.HolProg 64 :=
.seq AllocBody327_68 AllocBody327_71

def AllocBody327_73 : StackLang.HolProg 64 :=
.seq AllocBody327_67 AllocBody327_72

def AllocBody327_74 : StackLang.HolProg 64 :=
.seq AllocBody327_66 AllocBody327_73

def AllocBody327_75 : StackLang.HolProg 64 :=
.seq AllocBody327_65 AllocBody327_74

def AllocBody327_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody327_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody327_78 : StackLang.HolProg 64 :=
.seq AllocBody327_76 AllocBody327_77

def AllocBody327_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody327_80 : StackLang.HolProg 64 :=
.seq AllocBody327_78 AllocBody327_79

def AllocBody327_81 : StackLang.HolProg 64 :=
.call (some (AllocBody327_75, 0, 327, 2)) (Sum.inl 286) (some (AllocBody327_80, 327, 3))

def AllocBody327_82 : StackLang.HolProg 64 :=
.seq AllocBody327_64 AllocBody327_81

def AllocBody327_83 : StackLang.HolProg 64 :=
.seq AllocBody327_63 AllocBody327_82

def AllocBody327_84 : StackLang.HolProg 64 :=
.seq AllocBody327_62 AllocBody327_83

def AllocBody327_85 : StackLang.HolProg 64 :=
.seq AllocBody327_43 AllocBody327_84

def AllocBody327_86 : StackLang.HolProg 64 :=
.seq AllocBody327_40 AllocBody327_85

def AllocBody327_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_89 : StackLang.HolProg 64 :=
.seq AllocBody327_87 AllocBody327_88

def AllocBody327_90 : StackLang.HolProg 64 :=
.seq AllocBody327_86 AllocBody327_89

def AllocBody327_91 : StackLang.HolProg 64 :=
.seq AllocBody327_39 AllocBody327_90

def AllocBody327_92 : StackLang.HolProg 64 :=
.seq AllocBody327_36 AllocBody327_91

def AllocBody327_93 : StackLang.HolProg 64 :=
.seq AllocBody327_35 AllocBody327_92

def AllocBody327_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_96 : StackLang.HolProg 64 :=
.seq AllocBody327_94 AllocBody327_95

def AllocBody327_97 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody327_93 AllocBody327_96

def AllocBody327_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def AllocBody327_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody327_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody327_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody327_107 : StackLang.HolProg 64 :=
.seq AllocBody327_105 AllocBody327_106

def AllocBody327_108 : StackLang.HolProg 64 :=
.seq AllocBody327_104 AllocBody327_107

def AllocBody327_109 : StackLang.HolProg 64 :=
.seq AllocBody327_103 AllocBody327_108

def AllocBody327_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody327_109 AllocBody327_110

def AllocBody327_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody327_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 33#64)

def AllocBody327_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody327_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody327_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody327_118 : StackLang.HolProg 64 :=
.seq AllocBody327_116 AllocBody327_117

def AllocBody327_119 : StackLang.HolProg 64 :=
.seq AllocBody327_115 AllocBody327_118

def AllocBody327_120 : StackLang.HolProg 64 :=
.seq AllocBody327_114 AllocBody327_119

def AllocBody327_121 : StackLang.HolProg 64 :=
.seq AllocBody327_113 AllocBody327_120

def AllocBody327_122 : StackLang.HolProg 64 :=
.seq AllocBody327_112 AllocBody327_121

def AllocBody327_123 : StackLang.HolProg 64 :=
.seq AllocBody327_111 AllocBody327_122

def AllocBody327_124 : StackLang.HolProg 64 :=
.seq AllocBody327_102 AllocBody327_123

def AllocBody327_125 : StackLang.HolProg 64 :=
.seq AllocBody327_101 AllocBody327_124

def AllocBody327_126 : StackLang.HolProg 64 :=
.seq AllocBody327_100 AllocBody327_125

def AllocBody327_127 : StackLang.HolProg 64 :=
.seq AllocBody327_99 AllocBody327_126

def AllocBody327_128 : StackLang.HolProg 64 :=
.seq AllocBody327_98 AllocBody327_127

def AllocBody327_129 : StackLang.HolProg 64 :=
.seq AllocBody327_97 AllocBody327_128

def AllocBody327_130 : StackLang.HolProg 64 :=
.seq AllocBody327_34 AllocBody327_129

def AllocBody327_131 : StackLang.HolProg 64 :=
.seq AllocBody327_33 AllocBody327_130

def AllocBody327_132 : StackLang.HolProg 64 :=
.seq AllocBody327_32 AllocBody327_131

def AllocBody327_133 : StackLang.HolProg 64 :=
.seq AllocBody327_31 AllocBody327_132

def AllocBody327_134 : StackLang.HolProg 64 :=
.seq AllocBody327_30 AllocBody327_133

def AllocBody327_135 : StackLang.HolProg 64 :=
.seq AllocBody327_29 AllocBody327_134

def AllocBody327_136 : StackLang.HolProg 64 :=
.seq AllocBody327_18 AllocBody327_135

def AllocBody327_137 : StackLang.HolProg 64 :=
.seq AllocBody327_17 AllocBody327_136

def AllocBody327_138 : StackLang.HolProg 64 :=
.seq AllocBody327_16 AllocBody327_137

def AllocBody327_139 : StackLang.HolProg 64 :=
.seq AllocBody327_15 AllocBody327_138

def AllocBody327_140 : StackLang.HolProg 64 :=
.seq AllocBody327_14 AllocBody327_139

def AllocBody327_141 : StackLang.HolProg 64 :=
.seq AllocBody327_13 AllocBody327_140

def AllocBody327_142 : StackLang.HolProg 64 :=
.seq AllocBody327_2 AllocBody327_141

def AllocBody327_143 : StackLang.HolProg 64 :=
.seq AllocBody327_1 AllocBody327_142

def AllocBody327_144 : StackLang.HolProg 64 :=
.seq AllocBody327_0 AllocBody327_143

def Alloc327 : Nat × StackLang.HolProg 64 := (327, AllocBody327_144)
theorem Alloc327_eq : StackAlloc.progComp (327, raw327) = Alloc327 := by
  kernel_rfl
#print axioms Alloc327_eq
end InitECandidate.Proofs.BackendStages
