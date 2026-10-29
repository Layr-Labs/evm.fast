import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw478
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody478_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody478_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody478_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody478_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody478_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody478_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody478_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody478_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody478_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1499#64)

def AllocBody478_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody478_12 : StackLang.HolProg 64 :=
.seq AllocBody478_10 AllocBody478_11

def AllocBody478_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody478_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody478_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody478_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 478 3

def AllocBody478_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody478_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody478_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody478_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody478_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody478_23 : StackLang.HolProg 64 :=
.seq AllocBody478_21 AllocBody478_22

def AllocBody478_24 : StackLang.HolProg 64 :=
.seq AllocBody478_20 AllocBody478_23

def AllocBody478_25 : StackLang.HolProg 64 :=
.seq AllocBody478_19 AllocBody478_24

def AllocBody478_26 : StackLang.HolProg 64 :=
.seq AllocBody478_18 AllocBody478_25

def AllocBody478_27 : StackLang.HolProg 64 :=
.seq AllocBody478_17 AllocBody478_26

def AllocBody478_28 : StackLang.HolProg 64 :=
.seq AllocBody478_16 AllocBody478_27

def AllocBody478_29 : StackLang.HolProg 64 :=
.seq AllocBody478_15 AllocBody478_28

def AllocBody478_30 : StackLang.HolProg 64 :=
.seq AllocBody478_14 AllocBody478_29

def AllocBody478_31 : StackLang.HolProg 64 :=
.seq AllocBody478_13 AllocBody478_30

def AllocBody478_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody478_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody478_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody478_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody478_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody478_39 : StackLang.HolProg 64 :=
.seq AllocBody478_37 AllocBody478_38

def AllocBody478_40 : StackLang.HolProg 64 :=
.seq AllocBody478_36 AllocBody478_39

def AllocBody478_41 : StackLang.HolProg 64 :=
.seq AllocBody478_35 AllocBody478_40

def AllocBody478_42 : StackLang.HolProg 64 :=
.seq AllocBody478_34 AllocBody478_41

def AllocBody478_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody478_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody478_45 : StackLang.HolProg 64 :=
.seq AllocBody478_43 AllocBody478_44

def AllocBody478_46 : StackLang.HolProg 64 :=
.call (some (AllocBody478_42, 0, 478, 2)) (Sum.inl 476) (some (AllocBody478_45, 478, 3))

def AllocBody478_47 : StackLang.HolProg 64 :=
.seq AllocBody478_33 AllocBody478_46

def AllocBody478_48 : StackLang.HolProg 64 :=
.seq AllocBody478_32 AllocBody478_47

def AllocBody478_49 : StackLang.HolProg 64 :=
.seq AllocBody478_31 AllocBody478_48

def AllocBody478_50 : StackLang.HolProg 64 :=
.seq AllocBody478_12 AllocBody478_49

def AllocBody478_51 : StackLang.HolProg 64 :=
.seq AllocBody478_9 AllocBody478_50

def AllocBody478_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody478_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_54 : StackLang.HolProg 64 :=
.seq AllocBody478_52 AllocBody478_53

def AllocBody478_55 : StackLang.HolProg 64 :=
.seq AllocBody478_51 AllocBody478_54

def AllocBody478_56 : StackLang.HolProg 64 :=
.seq AllocBody478_8 AllocBody478_55

def AllocBody478_57 : StackLang.HolProg 64 :=
.seq AllocBody478_7 AllocBody478_56

def AllocBody478_58 : StackLang.HolProg 64 :=
.seq AllocBody478_6 AllocBody478_57

def AllocBody478_59 : StackLang.HolProg 64 :=
.seq AllocBody478_5 AllocBody478_58

def AllocBody478_60 : StackLang.HolProg 64 :=
.seq AllocBody478_4 AllocBody478_59

def AllocBody478_61 : StackLang.HolProg 64 :=
.seq AllocBody478_3 AllocBody478_60

def AllocBody478_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody478_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody478_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody478_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody478_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody478_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody478_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1500#64)

def AllocBody478_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody478_71 : StackLang.HolProg 64 :=
.seq AllocBody478_69 AllocBody478_70

def AllocBody478_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody478_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody478_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody478_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 478 5

def AllocBody478_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody478_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody478_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody478_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody478_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody478_82 : StackLang.HolProg 64 :=
.seq AllocBody478_80 AllocBody478_81

def AllocBody478_83 : StackLang.HolProg 64 :=
.seq AllocBody478_79 AllocBody478_82

def AllocBody478_84 : StackLang.HolProg 64 :=
.seq AllocBody478_78 AllocBody478_83

def AllocBody478_85 : StackLang.HolProg 64 :=
.seq AllocBody478_77 AllocBody478_84

def AllocBody478_86 : StackLang.HolProg 64 :=
.seq AllocBody478_76 AllocBody478_85

def AllocBody478_87 : StackLang.HolProg 64 :=
.seq AllocBody478_75 AllocBody478_86

def AllocBody478_88 : StackLang.HolProg 64 :=
.seq AllocBody478_74 AllocBody478_87

def AllocBody478_89 : StackLang.HolProg 64 :=
.seq AllocBody478_73 AllocBody478_88

def AllocBody478_90 : StackLang.HolProg 64 :=
.seq AllocBody478_72 AllocBody478_89

def AllocBody478_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody478_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody478_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody478_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody478_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody478_98 : StackLang.HolProg 64 :=
.seq AllocBody478_96 AllocBody478_97

def AllocBody478_99 : StackLang.HolProg 64 :=
.seq AllocBody478_95 AllocBody478_98

def AllocBody478_100 : StackLang.HolProg 64 :=
.seq AllocBody478_94 AllocBody478_99

def AllocBody478_101 : StackLang.HolProg 64 :=
.seq AllocBody478_93 AllocBody478_100

def AllocBody478_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody478_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody478_104 : StackLang.HolProg 64 :=
.seq AllocBody478_102 AllocBody478_103

def AllocBody478_105 : StackLang.HolProg 64 :=
.call (some (AllocBody478_101, 0, 478, 4)) (Sum.inl 476) (some (AllocBody478_104, 478, 5))

def AllocBody478_106 : StackLang.HolProg 64 :=
.seq AllocBody478_92 AllocBody478_105

def AllocBody478_107 : StackLang.HolProg 64 :=
.seq AllocBody478_91 AllocBody478_106

def AllocBody478_108 : StackLang.HolProg 64 :=
.seq AllocBody478_90 AllocBody478_107

def AllocBody478_109 : StackLang.HolProg 64 :=
.seq AllocBody478_71 AllocBody478_108

def AllocBody478_110 : StackLang.HolProg 64 :=
.seq AllocBody478_68 AllocBody478_109

def AllocBody478_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody478_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_113 : StackLang.HolProg 64 :=
.seq AllocBody478_111 AllocBody478_112

def AllocBody478_114 : StackLang.HolProg 64 :=
.seq AllocBody478_110 AllocBody478_113

def AllocBody478_115 : StackLang.HolProg 64 :=
.seq AllocBody478_67 AllocBody478_114

def AllocBody478_116 : StackLang.HolProg 64 :=
.seq AllocBody478_66 AllocBody478_115

def AllocBody478_117 : StackLang.HolProg 64 :=
.seq AllocBody478_65 AllocBody478_116

def AllocBody478_118 : StackLang.HolProg 64 :=
.seq AllocBody478_64 AllocBody478_117

def AllocBody478_119 : StackLang.HolProg 64 :=
.seq AllocBody478_63 AllocBody478_118

def AllocBody478_120 : StackLang.HolProg 64 :=
.seq AllocBody478_62 AllocBody478_119

def AllocBody478_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody478_61 AllocBody478_120

def AllocBody478_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody478_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody478_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody478_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody478_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody478_127 : StackLang.HolProg 64 :=
.seq AllocBody478_125 AllocBody478_126

def AllocBody478_128 : StackLang.HolProg 64 :=
.seq AllocBody478_124 AllocBody478_127

def AllocBody478_129 : StackLang.HolProg 64 :=
.seq AllocBody478_123 AllocBody478_128

def AllocBody478_130 : StackLang.HolProg 64 :=
.seq AllocBody478_122 AllocBody478_129

def AllocBody478_131 : StackLang.HolProg 64 :=
.seq AllocBody478_121 AllocBody478_130

def AllocBody478_132 : StackLang.HolProg 64 :=
.seq AllocBody478_2 AllocBody478_131

def AllocBody478_133 : StackLang.HolProg 64 :=
.seq AllocBody478_1 AllocBody478_132

def AllocBody478_134 : StackLang.HolProg 64 :=
.seq AllocBody478_0 AllocBody478_133

def Alloc478 : Nat × StackLang.HolProg 64 := (478, AllocBody478_134)
theorem Alloc478_eq : StackAlloc.progComp (478, raw478) = Alloc478 := by
  kernel_rfl
#print axioms Alloc478_eq
end InitECandidate.Proofs.BackendStages
