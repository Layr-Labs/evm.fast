import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function327
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody327_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody327_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody327_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody327_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody327_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody327_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody327_8 : StackLang.HolProg 64 :=
.seq rawBody327_6 rawBody327_7

def rawBody327_9 : StackLang.HolProg 64 :=
.seq rawBody327_5 rawBody327_8

def rawBody327_10 : StackLang.HolProg 64 :=
.seq rawBody327_4 rawBody327_9

def rawBody327_11 : StackLang.HolProg 64 :=
.seq rawBody327_3 rawBody327_10

def rawBody327_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody327_11 rawBody327_12

def rawBody327_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody327_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody327_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 33#64)

def rawBody327_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody327_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody327_24 : StackLang.HolProg 64 :=
.seq rawBody327_22 rawBody327_23

def rawBody327_25 : StackLang.HolProg 64 :=
.seq rawBody327_21 rawBody327_24

def rawBody327_26 : StackLang.HolProg 64 :=
.seq rawBody327_20 rawBody327_25

def rawBody327_27 : StackLang.HolProg 64 :=
.seq rawBody327_19 rawBody327_26

def rawBody327_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody327_27 rawBody327_28

def rawBody327_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody327_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody327_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def rawBody327_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody327_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody327_39 : StackLang.HolProg 64 :=
.seq rawBody327_37 rawBody327_38

def rawBody327_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 925#64)

def rawBody327_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody327_43 : StackLang.HolProg 64 :=
.seq rawBody327_41 rawBody327_42

def rawBody327_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody327_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody327_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody327_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 327 3

def rawBody327_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody327_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody327_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody327_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody327_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody327_54 : StackLang.HolProg 64 :=
.seq rawBody327_52 rawBody327_53

def rawBody327_55 : StackLang.HolProg 64 :=
.seq rawBody327_51 rawBody327_54

def rawBody327_56 : StackLang.HolProg 64 :=
.seq rawBody327_50 rawBody327_55

def rawBody327_57 : StackLang.HolProg 64 :=
.seq rawBody327_49 rawBody327_56

def rawBody327_58 : StackLang.HolProg 64 :=
.seq rawBody327_48 rawBody327_57

def rawBody327_59 : StackLang.HolProg 64 :=
.seq rawBody327_47 rawBody327_58

def rawBody327_60 : StackLang.HolProg 64 :=
.seq rawBody327_46 rawBody327_59

def rawBody327_61 : StackLang.HolProg 64 :=
.seq rawBody327_45 rawBody327_60

def rawBody327_62 : StackLang.HolProg 64 :=
.seq rawBody327_44 rawBody327_61

def rawBody327_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody327_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody327_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody327_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody327_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody327_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody327_71 : StackLang.HolProg 64 :=
.seq rawBody327_69 rawBody327_70

def rawBody327_72 : StackLang.HolProg 64 :=
.seq rawBody327_68 rawBody327_71

def rawBody327_73 : StackLang.HolProg 64 :=
.seq rawBody327_67 rawBody327_72

def rawBody327_74 : StackLang.HolProg 64 :=
.seq rawBody327_66 rawBody327_73

def rawBody327_75 : StackLang.HolProg 64 :=
.seq rawBody327_65 rawBody327_74

def rawBody327_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody327_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody327_78 : StackLang.HolProg 64 :=
.seq rawBody327_76 rawBody327_77

def rawBody327_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody327_80 : StackLang.HolProg 64 :=
.seq rawBody327_78 rawBody327_79

def rawBody327_81 : StackLang.HolProg 64 :=
.call (some (rawBody327_75, 0, 327, 2)) (Sum.inl 286) (some (rawBody327_80, 327, 3))

def rawBody327_82 : StackLang.HolProg 64 :=
.seq rawBody327_64 rawBody327_81

def rawBody327_83 : StackLang.HolProg 64 :=
.seq rawBody327_63 rawBody327_82

def rawBody327_84 : StackLang.HolProg 64 :=
.seq rawBody327_62 rawBody327_83

def rawBody327_85 : StackLang.HolProg 64 :=
.seq rawBody327_43 rawBody327_84

def rawBody327_86 : StackLang.HolProg 64 :=
.seq rawBody327_40 rawBody327_85

def rawBody327_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_89 : StackLang.HolProg 64 :=
.seq rawBody327_87 rawBody327_88

def rawBody327_90 : StackLang.HolProg 64 :=
.seq rawBody327_86 rawBody327_89

def rawBody327_91 : StackLang.HolProg 64 :=
.seq rawBody327_39 rawBody327_90

def rawBody327_92 : StackLang.HolProg 64 :=
.seq rawBody327_36 rawBody327_91

def rawBody327_93 : StackLang.HolProg 64 :=
.seq rawBody327_35 rawBody327_92

def rawBody327_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_96 : StackLang.HolProg 64 :=
.seq rawBody327_94 rawBody327_95

def rawBody327_97 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody327_93 rawBody327_96

def rawBody327_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def rawBody327_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody327_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody327_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody327_107 : StackLang.HolProg 64 :=
.seq rawBody327_105 rawBody327_106

def rawBody327_108 : StackLang.HolProg 64 :=
.seq rawBody327_104 rawBody327_107

def rawBody327_109 : StackLang.HolProg 64 :=
.seq rawBody327_103 rawBody327_108

def rawBody327_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody327_109 rawBody327_110

def rawBody327_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody327_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 33#64)

def rawBody327_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody327_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody327_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody327_118 : StackLang.HolProg 64 :=
.seq rawBody327_116 rawBody327_117

def rawBody327_119 : StackLang.HolProg 64 :=
.seq rawBody327_115 rawBody327_118

def rawBody327_120 : StackLang.HolProg 64 :=
.seq rawBody327_114 rawBody327_119

def rawBody327_121 : StackLang.HolProg 64 :=
.seq rawBody327_113 rawBody327_120

def rawBody327_122 : StackLang.HolProg 64 :=
.seq rawBody327_112 rawBody327_121

def rawBody327_123 : StackLang.HolProg 64 :=
.seq rawBody327_111 rawBody327_122

def rawBody327_124 : StackLang.HolProg 64 :=
.seq rawBody327_102 rawBody327_123

def rawBody327_125 : StackLang.HolProg 64 :=
.seq rawBody327_101 rawBody327_124

def rawBody327_126 : StackLang.HolProg 64 :=
.seq rawBody327_100 rawBody327_125

def rawBody327_127 : StackLang.HolProg 64 :=
.seq rawBody327_99 rawBody327_126

def rawBody327_128 : StackLang.HolProg 64 :=
.seq rawBody327_98 rawBody327_127

def rawBody327_129 : StackLang.HolProg 64 :=
.seq rawBody327_97 rawBody327_128

def rawBody327_130 : StackLang.HolProg 64 :=
.seq rawBody327_34 rawBody327_129

def rawBody327_131 : StackLang.HolProg 64 :=
.seq rawBody327_33 rawBody327_130

def rawBody327_132 : StackLang.HolProg 64 :=
.seq rawBody327_32 rawBody327_131

def rawBody327_133 : StackLang.HolProg 64 :=
.seq rawBody327_31 rawBody327_132

def rawBody327_134 : StackLang.HolProg 64 :=
.seq rawBody327_30 rawBody327_133

def rawBody327_135 : StackLang.HolProg 64 :=
.seq rawBody327_29 rawBody327_134

def rawBody327_136 : StackLang.HolProg 64 :=
.seq rawBody327_18 rawBody327_135

def rawBody327_137 : StackLang.HolProg 64 :=
.seq rawBody327_17 rawBody327_136

def rawBody327_138 : StackLang.HolProg 64 :=
.seq rawBody327_16 rawBody327_137

def rawBody327_139 : StackLang.HolProg 64 :=
.seq rawBody327_15 rawBody327_138

def rawBody327_140 : StackLang.HolProg 64 :=
.seq rawBody327_14 rawBody327_139

def rawBody327_141 : StackLang.HolProg 64 :=
.seq rawBody327_13 rawBody327_140

def rawBody327_142 : StackLang.HolProg 64 :=
.seq rawBody327_2 rawBody327_141

def rawBody327_143 : StackLang.HolProg 64 :=
.seq rawBody327_1 rawBody327_142

def rawBody327_144 : StackLang.HolProg 64 :=
.seq rawBody327_0 rawBody327_143

def raw327 : StackLang.HolProg 64 := rawBody327_144
theorem raw327_eq : StackRawCall.compTop RawInfo.rawInfo (function327 (.list [])).1 = raw327 := by
  kernel_rfl
#print axioms raw327_eq
end InitECandidate.Proofs.BackendStages
