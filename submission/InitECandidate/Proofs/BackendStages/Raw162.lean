import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function162
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody162_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody162_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody162_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody162_3 : StackLang.HolProg 64 :=
.seq rawBody162_1 rawBody162_2

def rawBody162_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody162_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 162#64)

def rawBody162_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody162_7 : StackLang.HolProg 64 :=
.seq rawBody162_5 rawBody162_6

def rawBody162_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody162_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody162_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody162_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 162 3

def rawBody162_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody162_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody162_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody162_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody162_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody162_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody162_18 : StackLang.HolProg 64 :=
.seq rawBody162_16 rawBody162_17

def rawBody162_19 : StackLang.HolProg 64 :=
.seq rawBody162_15 rawBody162_18

def rawBody162_20 : StackLang.HolProg 64 :=
.seq rawBody162_14 rawBody162_19

def rawBody162_21 : StackLang.HolProg 64 :=
.seq rawBody162_13 rawBody162_20

def rawBody162_22 : StackLang.HolProg 64 :=
.seq rawBody162_12 rawBody162_21

def rawBody162_23 : StackLang.HolProg 64 :=
.seq rawBody162_11 rawBody162_22

def rawBody162_24 : StackLang.HolProg 64 :=
.seq rawBody162_10 rawBody162_23

def rawBody162_25 : StackLang.HolProg 64 :=
.seq rawBody162_9 rawBody162_24

def rawBody162_26 : StackLang.HolProg 64 :=
.seq rawBody162_8 rawBody162_25

def rawBody162_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody162_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody162_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody162_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody162_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody162_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody162_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody162_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody162_35 : StackLang.HolProg 64 :=
.seq rawBody162_33 rawBody162_34

def rawBody162_36 : StackLang.HolProg 64 :=
.seq rawBody162_32 rawBody162_35

def rawBody162_37 : StackLang.HolProg 64 :=
.seq rawBody162_31 rawBody162_36

def rawBody162_38 : StackLang.HolProg 64 :=
.seq rawBody162_30 rawBody162_37

def rawBody162_39 : StackLang.HolProg 64 :=
.seq rawBody162_29 rawBody162_38

def rawBody162_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody162_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody162_42 : StackLang.HolProg 64 :=
.seq rawBody162_40 rawBody162_41

def rawBody162_43 : StackLang.HolProg 64 :=
.call (some (rawBody162_39, 0, 162, 2)) (Sum.inl 161) (some (rawBody162_42, 162, 3))

def rawBody162_44 : StackLang.HolProg 64 :=
.seq rawBody162_28 rawBody162_43

def rawBody162_45 : StackLang.HolProg 64 :=
.seq rawBody162_27 rawBody162_44

def rawBody162_46 : StackLang.HolProg 64 :=
.seq rawBody162_26 rawBody162_45

def rawBody162_47 : StackLang.HolProg 64 :=
.seq rawBody162_7 rawBody162_46

def rawBody162_48 : StackLang.HolProg 64 :=
.seq rawBody162_4 rawBody162_47

def rawBody162_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody162_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody162_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody162_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody162_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody162_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody162_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody162_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def rawBody162_57 : StackLang.HolProg 64 :=
.seq rawBody162_55 rawBody162_56

def rawBody162_58 : StackLang.HolProg 64 :=
.seq rawBody162_54 rawBody162_57

def rawBody162_59 : StackLang.HolProg 64 :=
.seq rawBody162_53 rawBody162_58

def rawBody162_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody162_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 163#64)

def rawBody162_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody162_63 : StackLang.HolProg 64 :=
.seq rawBody162_61 rawBody162_62

def rawBody162_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody162_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody162_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody162_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 162 5

def rawBody162_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody162_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody162_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody162_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody162_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody162_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody162_74 : StackLang.HolProg 64 :=
.seq rawBody162_72 rawBody162_73

def rawBody162_75 : StackLang.HolProg 64 :=
.seq rawBody162_71 rawBody162_74

def rawBody162_76 : StackLang.HolProg 64 :=
.seq rawBody162_70 rawBody162_75

def rawBody162_77 : StackLang.HolProg 64 :=
.seq rawBody162_69 rawBody162_76

def rawBody162_78 : StackLang.HolProg 64 :=
.seq rawBody162_68 rawBody162_77

def rawBody162_79 : StackLang.HolProg 64 :=
.seq rawBody162_67 rawBody162_78

def rawBody162_80 : StackLang.HolProg 64 :=
.seq rawBody162_66 rawBody162_79

def rawBody162_81 : StackLang.HolProg 64 :=
.seq rawBody162_65 rawBody162_80

def rawBody162_82 : StackLang.HolProg 64 :=
.seq rawBody162_64 rawBody162_81

def rawBody162_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody162_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody162_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody162_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody162_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody162_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody162_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody162_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody162_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody162_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody162_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody162_94 : StackLang.HolProg 64 :=
.seq rawBody162_92 rawBody162_93

def rawBody162_95 : StackLang.HolProg 64 :=
.seq rawBody162_91 rawBody162_94

def rawBody162_96 : StackLang.HolProg 64 :=
.seq rawBody162_90 rawBody162_95

def rawBody162_97 : StackLang.HolProg 64 :=
.seq rawBody162_89 rawBody162_96

def rawBody162_98 : StackLang.HolProg 64 :=
.seq rawBody162_88 rawBody162_97

def rawBody162_99 : StackLang.HolProg 64 :=
.seq rawBody162_87 rawBody162_98

def rawBody162_100 : StackLang.HolProg 64 :=
.seq rawBody162_86 rawBody162_99

def rawBody162_101 : StackLang.HolProg 64 :=
.seq rawBody162_85 rawBody162_100

def rawBody162_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody162_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody162_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody162_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody162_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody162_107 : StackLang.HolProg 64 :=
.seq rawBody162_105 rawBody162_106

def rawBody162_108 : StackLang.HolProg 64 :=
.seq rawBody162_104 rawBody162_107

def rawBody162_109 : StackLang.HolProg 64 :=
.seq rawBody162_103 rawBody162_108

def rawBody162_110 : StackLang.HolProg 64 :=
.seq rawBody162_102 rawBody162_109

def rawBody162_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody162_112 : StackLang.HolProg 64 :=
.seq rawBody162_110 rawBody162_111

def rawBody162_113 : StackLang.HolProg 64 :=
.call (some (rawBody162_101, 0, 162, 4)) (Sum.inl 159) (some (rawBody162_112, 162, 5))

def rawBody162_114 : StackLang.HolProg 64 :=
.seq rawBody162_84 rawBody162_113

def rawBody162_115 : StackLang.HolProg 64 :=
.seq rawBody162_83 rawBody162_114

def rawBody162_116 : StackLang.HolProg 64 :=
.seq rawBody162_82 rawBody162_115

def rawBody162_117 : StackLang.HolProg 64 :=
.seq rawBody162_63 rawBody162_116

def rawBody162_118 : StackLang.HolProg 64 :=
.seq rawBody162_60 rawBody162_117

def rawBody162_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody162_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody162_121 : StackLang.HolProg 64 :=
.seq rawBody162_119 rawBody162_120

def rawBody162_122 : StackLang.HolProg 64 :=
.seq rawBody162_118 rawBody162_121

def rawBody162_123 : StackLang.HolProg 64 :=
.seq rawBody162_59 rawBody162_122

def rawBody162_124 : StackLang.HolProg 64 :=
.seq rawBody162_52 rawBody162_123

def rawBody162_125 : StackLang.HolProg 64 :=
.seq rawBody162_51 rawBody162_124

def rawBody162_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody162_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody162_128 : StackLang.HolProg 64 :=
.seq rawBody162_126 rawBody162_127

def rawBody162_129 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody162_125 rawBody162_128

def rawBody162_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody162_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody162_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody162_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody162_134 : StackLang.HolProg 64 :=
.seq rawBody162_132 rawBody162_133

def rawBody162_135 : StackLang.HolProg 64 :=
.seq rawBody162_131 rawBody162_134

def rawBody162_136 : StackLang.HolProg 64 :=
.seq rawBody162_130 rawBody162_135

def rawBody162_137 : StackLang.HolProg 64 :=
.seq rawBody162_129 rawBody162_136

def rawBody162_138 : StackLang.HolProg 64 :=
.seq rawBody162_50 rawBody162_137

def rawBody162_139 : StackLang.HolProg 64 :=
.seq rawBody162_49 rawBody162_138

def rawBody162_140 : StackLang.HolProg 64 :=
.seq rawBody162_48 rawBody162_139

def rawBody162_141 : StackLang.HolProg 64 :=
.seq rawBody162_3 rawBody162_140

def rawBody162_142 : StackLang.HolProg 64 :=
.seq rawBody162_0 rawBody162_141

def raw162 : StackLang.HolProg 64 := rawBody162_142
theorem raw162_eq : StackRawCall.compTop RawInfo.rawInfo (function162 (.list [])).1 = raw162 := by
  kernel_rfl
#print axioms raw162_eq
end InitECandidate.Proofs.BackendStages
