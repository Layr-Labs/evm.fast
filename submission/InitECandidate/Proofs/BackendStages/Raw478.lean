import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function478
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody478_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody478_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody478_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody478_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody478_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody478_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody478_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody478_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody478_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1499#64)

def rawBody478_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody478_12 : StackLang.HolProg 64 :=
.seq rawBody478_10 rawBody478_11

def rawBody478_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody478_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody478_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody478_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 478 3

def rawBody478_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody478_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody478_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody478_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody478_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody478_23 : StackLang.HolProg 64 :=
.seq rawBody478_21 rawBody478_22

def rawBody478_24 : StackLang.HolProg 64 :=
.seq rawBody478_20 rawBody478_23

def rawBody478_25 : StackLang.HolProg 64 :=
.seq rawBody478_19 rawBody478_24

def rawBody478_26 : StackLang.HolProg 64 :=
.seq rawBody478_18 rawBody478_25

def rawBody478_27 : StackLang.HolProg 64 :=
.seq rawBody478_17 rawBody478_26

def rawBody478_28 : StackLang.HolProg 64 :=
.seq rawBody478_16 rawBody478_27

def rawBody478_29 : StackLang.HolProg 64 :=
.seq rawBody478_15 rawBody478_28

def rawBody478_30 : StackLang.HolProg 64 :=
.seq rawBody478_14 rawBody478_29

def rawBody478_31 : StackLang.HolProg 64 :=
.seq rawBody478_13 rawBody478_30

def rawBody478_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody478_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody478_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody478_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody478_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody478_39 : StackLang.HolProg 64 :=
.seq rawBody478_37 rawBody478_38

def rawBody478_40 : StackLang.HolProg 64 :=
.seq rawBody478_36 rawBody478_39

def rawBody478_41 : StackLang.HolProg 64 :=
.seq rawBody478_35 rawBody478_40

def rawBody478_42 : StackLang.HolProg 64 :=
.seq rawBody478_34 rawBody478_41

def rawBody478_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody478_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody478_45 : StackLang.HolProg 64 :=
.seq rawBody478_43 rawBody478_44

def rawBody478_46 : StackLang.HolProg 64 :=
.call (some (rawBody478_42, 0, 478, 2)) (Sum.inl 476) (some (rawBody478_45, 478, 3))

def rawBody478_47 : StackLang.HolProg 64 :=
.seq rawBody478_33 rawBody478_46

def rawBody478_48 : StackLang.HolProg 64 :=
.seq rawBody478_32 rawBody478_47

def rawBody478_49 : StackLang.HolProg 64 :=
.seq rawBody478_31 rawBody478_48

def rawBody478_50 : StackLang.HolProg 64 :=
.seq rawBody478_12 rawBody478_49

def rawBody478_51 : StackLang.HolProg 64 :=
.seq rawBody478_9 rawBody478_50

def rawBody478_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody478_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_54 : StackLang.HolProg 64 :=
.seq rawBody478_52 rawBody478_53

def rawBody478_55 : StackLang.HolProg 64 :=
.seq rawBody478_51 rawBody478_54

def rawBody478_56 : StackLang.HolProg 64 :=
.seq rawBody478_8 rawBody478_55

def rawBody478_57 : StackLang.HolProg 64 :=
.seq rawBody478_7 rawBody478_56

def rawBody478_58 : StackLang.HolProg 64 :=
.seq rawBody478_6 rawBody478_57

def rawBody478_59 : StackLang.HolProg 64 :=
.seq rawBody478_5 rawBody478_58

def rawBody478_60 : StackLang.HolProg 64 :=
.seq rawBody478_4 rawBody478_59

def rawBody478_61 : StackLang.HolProg 64 :=
.seq rawBody478_3 rawBody478_60

def rawBody478_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody478_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody478_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody478_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody478_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody478_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody478_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1500#64)

def rawBody478_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody478_71 : StackLang.HolProg 64 :=
.seq rawBody478_69 rawBody478_70

def rawBody478_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody478_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody478_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody478_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 478 5

def rawBody478_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody478_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody478_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody478_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody478_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody478_82 : StackLang.HolProg 64 :=
.seq rawBody478_80 rawBody478_81

def rawBody478_83 : StackLang.HolProg 64 :=
.seq rawBody478_79 rawBody478_82

def rawBody478_84 : StackLang.HolProg 64 :=
.seq rawBody478_78 rawBody478_83

def rawBody478_85 : StackLang.HolProg 64 :=
.seq rawBody478_77 rawBody478_84

def rawBody478_86 : StackLang.HolProg 64 :=
.seq rawBody478_76 rawBody478_85

def rawBody478_87 : StackLang.HolProg 64 :=
.seq rawBody478_75 rawBody478_86

def rawBody478_88 : StackLang.HolProg 64 :=
.seq rawBody478_74 rawBody478_87

def rawBody478_89 : StackLang.HolProg 64 :=
.seq rawBody478_73 rawBody478_88

def rawBody478_90 : StackLang.HolProg 64 :=
.seq rawBody478_72 rawBody478_89

def rawBody478_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody478_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody478_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody478_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody478_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody478_98 : StackLang.HolProg 64 :=
.seq rawBody478_96 rawBody478_97

def rawBody478_99 : StackLang.HolProg 64 :=
.seq rawBody478_95 rawBody478_98

def rawBody478_100 : StackLang.HolProg 64 :=
.seq rawBody478_94 rawBody478_99

def rawBody478_101 : StackLang.HolProg 64 :=
.seq rawBody478_93 rawBody478_100

def rawBody478_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody478_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody478_104 : StackLang.HolProg 64 :=
.seq rawBody478_102 rawBody478_103

def rawBody478_105 : StackLang.HolProg 64 :=
.call (some (rawBody478_101, 0, 478, 4)) (Sum.inl 476) (some (rawBody478_104, 478, 5))

def rawBody478_106 : StackLang.HolProg 64 :=
.seq rawBody478_92 rawBody478_105

def rawBody478_107 : StackLang.HolProg 64 :=
.seq rawBody478_91 rawBody478_106

def rawBody478_108 : StackLang.HolProg 64 :=
.seq rawBody478_90 rawBody478_107

def rawBody478_109 : StackLang.HolProg 64 :=
.seq rawBody478_71 rawBody478_108

def rawBody478_110 : StackLang.HolProg 64 :=
.seq rawBody478_68 rawBody478_109

def rawBody478_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody478_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_113 : StackLang.HolProg 64 :=
.seq rawBody478_111 rawBody478_112

def rawBody478_114 : StackLang.HolProg 64 :=
.seq rawBody478_110 rawBody478_113

def rawBody478_115 : StackLang.HolProg 64 :=
.seq rawBody478_67 rawBody478_114

def rawBody478_116 : StackLang.HolProg 64 :=
.seq rawBody478_66 rawBody478_115

def rawBody478_117 : StackLang.HolProg 64 :=
.seq rawBody478_65 rawBody478_116

def rawBody478_118 : StackLang.HolProg 64 :=
.seq rawBody478_64 rawBody478_117

def rawBody478_119 : StackLang.HolProg 64 :=
.seq rawBody478_63 rawBody478_118

def rawBody478_120 : StackLang.HolProg 64 :=
.seq rawBody478_62 rawBody478_119

def rawBody478_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody478_61 rawBody478_120

def rawBody478_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody478_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody478_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody478_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody478_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody478_127 : StackLang.HolProg 64 :=
.seq rawBody478_125 rawBody478_126

def rawBody478_128 : StackLang.HolProg 64 :=
.seq rawBody478_124 rawBody478_127

def rawBody478_129 : StackLang.HolProg 64 :=
.seq rawBody478_123 rawBody478_128

def rawBody478_130 : StackLang.HolProg 64 :=
.seq rawBody478_122 rawBody478_129

def rawBody478_131 : StackLang.HolProg 64 :=
.seq rawBody478_121 rawBody478_130

def rawBody478_132 : StackLang.HolProg 64 :=
.seq rawBody478_2 rawBody478_131

def rawBody478_133 : StackLang.HolProg 64 :=
.seq rawBody478_1 rawBody478_132

def rawBody478_134 : StackLang.HolProg 64 :=
.seq rawBody478_0 rawBody478_133

def raw478 : StackLang.HolProg 64 := rawBody478_134
theorem raw478_eq : StackRawCall.compTop RawInfo.rawInfo (function478 (.list [])).1 = raw478 := by
  kernel_rfl
#print axioms raw478_eq
end InitECandidate.Proofs.BackendStages
