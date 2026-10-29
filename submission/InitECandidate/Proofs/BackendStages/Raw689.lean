import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function689
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody689_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody689_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody689_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody689_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody689_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody689_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody689_6 : StackLang.HolProg 64 :=
.seq rawBody689_4 rawBody689_5

def rawBody689_7 : StackLang.HolProg 64 :=
.seq rawBody689_3 rawBody689_6

def rawBody689_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody689_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody689_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody689_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody689_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody689_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody689_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody689_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody689_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody689_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody689_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody689_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody689_20 : StackLang.HolProg 64 :=
.seq rawBody689_18 rawBody689_19

def rawBody689_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody689_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2938#64)

def rawBody689_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody689_24 : StackLang.HolProg 64 :=
.seq rawBody689_22 rawBody689_23

def rawBody689_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody689_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody689_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody689_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 689 3

def rawBody689_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody689_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody689_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody689_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody689_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody689_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody689_35 : StackLang.HolProg 64 :=
.seq rawBody689_33 rawBody689_34

def rawBody689_36 : StackLang.HolProg 64 :=
.seq rawBody689_32 rawBody689_35

def rawBody689_37 : StackLang.HolProg 64 :=
.seq rawBody689_31 rawBody689_36

def rawBody689_38 : StackLang.HolProg 64 :=
.seq rawBody689_30 rawBody689_37

def rawBody689_39 : StackLang.HolProg 64 :=
.seq rawBody689_29 rawBody689_38

def rawBody689_40 : StackLang.HolProg 64 :=
.seq rawBody689_28 rawBody689_39

def rawBody689_41 : StackLang.HolProg 64 :=
.seq rawBody689_27 rawBody689_40

def rawBody689_42 : StackLang.HolProg 64 :=
.seq rawBody689_26 rawBody689_41

def rawBody689_43 : StackLang.HolProg 64 :=
.seq rawBody689_25 rawBody689_42

def rawBody689_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody689_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody689_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody689_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody689_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody689_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody689_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody689_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody689_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody689_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody689_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody689_55 : StackLang.HolProg 64 :=
.seq rawBody689_53 rawBody689_54

def rawBody689_56 : StackLang.HolProg 64 :=
.seq rawBody689_52 rawBody689_55

def rawBody689_57 : StackLang.HolProg 64 :=
.seq rawBody689_51 rawBody689_56

def rawBody689_58 : StackLang.HolProg 64 :=
.seq rawBody689_50 rawBody689_57

def rawBody689_59 : StackLang.HolProg 64 :=
.seq rawBody689_49 rawBody689_58

def rawBody689_60 : StackLang.HolProg 64 :=
.seq rawBody689_48 rawBody689_59

def rawBody689_61 : StackLang.HolProg 64 :=
.seq rawBody689_47 rawBody689_60

def rawBody689_62 : StackLang.HolProg 64 :=
.seq rawBody689_46 rawBody689_61

def rawBody689_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody689_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody689_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody689_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody689_67 : StackLang.HolProg 64 :=
.seq rawBody689_65 rawBody689_66

def rawBody689_68 : StackLang.HolProg 64 :=
.seq rawBody689_64 rawBody689_67

def rawBody689_69 : StackLang.HolProg 64 :=
.seq rawBody689_63 rawBody689_68

def rawBody689_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody689_71 : StackLang.HolProg 64 :=
.seq rawBody689_69 rawBody689_70

def rawBody689_72 : StackLang.HolProg 64 :=
.call (some (rawBody689_62, 0, 689, 2)) (Sum.inl 80) (some (rawBody689_71, 689, 3))

def rawBody689_73 : StackLang.HolProg 64 :=
.seq rawBody689_45 rawBody689_72

def rawBody689_74 : StackLang.HolProg 64 :=
.seq rawBody689_44 rawBody689_73

def rawBody689_75 : StackLang.HolProg 64 :=
.seq rawBody689_43 rawBody689_74

def rawBody689_76 : StackLang.HolProg 64 :=
.seq rawBody689_24 rawBody689_75

def rawBody689_77 : StackLang.HolProg 64 :=
.seq rawBody689_21 rawBody689_76

def rawBody689_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody689_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody689_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody689_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody689_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody689_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody689_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody689_85 : StackLang.HolProg 64 :=
.seq rawBody689_83 rawBody689_84

def rawBody689_86 : StackLang.HolProg 64 :=
.seq rawBody689_82 rawBody689_85

def rawBody689_87 : StackLang.HolProg 64 :=
.seq rawBody689_81 rawBody689_86

def rawBody689_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody689_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody689_87 rawBody689_88

def rawBody689_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody689_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody689_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody689_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody689_94 : StackLang.HolProg 64 :=
.seq rawBody689_92 rawBody689_93

def rawBody689_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody689_96 : StackLang.HolProg 64 :=
.seq rawBody689_94 rawBody689_95

def rawBody689_97 : StackLang.HolProg 64 :=
.seq rawBody689_91 rawBody689_96

def rawBody689_98 : StackLang.HolProg 64 :=
.seq rawBody689_90 rawBody689_97

def rawBody689_99 : StackLang.HolProg 64 :=
.seq rawBody689_89 rawBody689_98

def rawBody689_100 : StackLang.HolProg 64 :=
.seq rawBody689_80 rawBody689_99

def rawBody689_101 : StackLang.HolProg 64 :=
.seq rawBody689_79 rawBody689_100

def rawBody689_102 : StackLang.HolProg 64 :=
.seq rawBody689_78 rawBody689_101

def rawBody689_103 : StackLang.HolProg 64 :=
.seq rawBody689_77 rawBody689_102

def rawBody689_104 : StackLang.HolProg 64 :=
.seq rawBody689_20 rawBody689_103

def rawBody689_105 : StackLang.HolProg 64 :=
.seq rawBody689_17 rawBody689_104

def rawBody689_106 : StackLang.HolProg 64 :=
.seq rawBody689_16 rawBody689_105

def rawBody689_107 : StackLang.HolProg 64 :=
.seq rawBody689_15 rawBody689_106

def rawBody689_108 : StackLang.HolProg 64 :=
.seq rawBody689_14 rawBody689_107

def rawBody689_109 : StackLang.HolProg 64 :=
.seq rawBody689_13 rawBody689_108

def rawBody689_110 : StackLang.HolProg 64 :=
.seq rawBody689_12 rawBody689_109

def rawBody689_111 : StackLang.HolProg 64 :=
.seq rawBody689_11 rawBody689_110

def rawBody689_112 : StackLang.HolProg 64 :=
.seq rawBody689_10 rawBody689_111

def rawBody689_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody689_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody689_115 : StackLang.HolProg 64 :=
.seq rawBody689_113 rawBody689_114

def rawBody689_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody689_112 rawBody689_115

def rawBody689_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody689_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody689_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody689_120 : StackLang.HolProg 64 :=
.seq rawBody689_118 rawBody689_119

def rawBody689_121 : StackLang.HolProg 64 :=
.seq rawBody689_117 rawBody689_120

def rawBody689_122 : StackLang.HolProg 64 :=
.seq rawBody689_116 rawBody689_121

def rawBody689_123 : StackLang.HolProg 64 :=
.seq rawBody689_9 rawBody689_122

def rawBody689_124 : StackLang.HolProg 64 :=
.seq rawBody689_8 rawBody689_123

def rawBody689_125 : StackLang.HolProg 64 :=
.loop rawBody689_124

def rawBody689_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody689_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody689_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody689_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody689_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody689_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody689_132 : StackLang.HolProg 64 :=
.seq rawBody689_130 rawBody689_131

def rawBody689_133 : StackLang.HolProg 64 :=
.seq rawBody689_129 rawBody689_132

def rawBody689_134 : StackLang.HolProg 64 :=
.seq rawBody689_128 rawBody689_133

def rawBody689_135 : StackLang.HolProg 64 :=
.seq rawBody689_127 rawBody689_134

def rawBody689_136 : StackLang.HolProg 64 :=
.seq rawBody689_126 rawBody689_135

def rawBody689_137 : StackLang.HolProg 64 :=
.seq rawBody689_125 rawBody689_136

def rawBody689_138 : StackLang.HolProg 64 :=
.seq rawBody689_7 rawBody689_137

def rawBody689_139 : StackLang.HolProg 64 :=
.seq rawBody689_2 rawBody689_138

def rawBody689_140 : StackLang.HolProg 64 :=
.seq rawBody689_1 rawBody689_139

def rawBody689_141 : StackLang.HolProg 64 :=
.seq rawBody689_0 rawBody689_140

def raw689 : StackLang.HolProg 64 := rawBody689_141
theorem raw689_eq : StackRawCall.compTop RawInfo.rawInfo (function689 (.list [])).1 = raw689 := by
  kernel_rfl
#print axioms raw689_eq
end InitECandidate.Proofs.BackendStages
