import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function340
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody340_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody340_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody340_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody340_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody340_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody340_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody340_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 974#64)

def rawBody340_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody340_12 : StackLang.HolProg 64 :=
.seq rawBody340_10 rawBody340_11

def rawBody340_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody340_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody340_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody340_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 340 3

def rawBody340_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody340_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody340_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody340_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody340_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody340_23 : StackLang.HolProg 64 :=
.seq rawBody340_21 rawBody340_22

def rawBody340_24 : StackLang.HolProg 64 :=
.seq rawBody340_20 rawBody340_23

def rawBody340_25 : StackLang.HolProg 64 :=
.seq rawBody340_19 rawBody340_24

def rawBody340_26 : StackLang.HolProg 64 :=
.seq rawBody340_18 rawBody340_25

def rawBody340_27 : StackLang.HolProg 64 :=
.seq rawBody340_17 rawBody340_26

def rawBody340_28 : StackLang.HolProg 64 :=
.seq rawBody340_16 rawBody340_27

def rawBody340_29 : StackLang.HolProg 64 :=
.seq rawBody340_15 rawBody340_28

def rawBody340_30 : StackLang.HolProg 64 :=
.seq rawBody340_14 rawBody340_29

def rawBody340_31 : StackLang.HolProg 64 :=
.seq rawBody340_13 rawBody340_30

def rawBody340_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody340_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody340_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody340_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody340_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody340_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody340_40 : StackLang.HolProg 64 :=
.seq rawBody340_38 rawBody340_39

def rawBody340_41 : StackLang.HolProg 64 :=
.seq rawBody340_37 rawBody340_40

def rawBody340_42 : StackLang.HolProg 64 :=
.seq rawBody340_36 rawBody340_41

def rawBody340_43 : StackLang.HolProg 64 :=
.seq rawBody340_35 rawBody340_42

def rawBody340_44 : StackLang.HolProg 64 :=
.seq rawBody340_34 rawBody340_43

def rawBody340_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody340_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody340_47 : StackLang.HolProg 64 :=
.seq rawBody340_45 rawBody340_46

def rawBody340_48 : StackLang.HolProg 64 :=
.call (some (rawBody340_44, 0, 340, 2)) (Sum.inl 161) (some (rawBody340_47, 340, 3))

def rawBody340_49 : StackLang.HolProg 64 :=
.seq rawBody340_33 rawBody340_48

def rawBody340_50 : StackLang.HolProg 64 :=
.seq rawBody340_32 rawBody340_49

def rawBody340_51 : StackLang.HolProg 64 :=
.seq rawBody340_31 rawBody340_50

def rawBody340_52 : StackLang.HolProg 64 :=
.seq rawBody340_12 rawBody340_51

def rawBody340_53 : StackLang.HolProg 64 :=
.seq rawBody340_9 rawBody340_52

def rawBody340_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody340_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody340_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody340_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 17#64)

def rawBody340_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody340_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody340_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody340_64 : StackLang.HolProg 64 :=
.seq rawBody340_62 rawBody340_63

def rawBody340_65 : StackLang.HolProg 64 :=
.seq rawBody340_61 rawBody340_64

def rawBody340_66 : StackLang.HolProg 64 :=
.seq rawBody340_60 rawBody340_65

def rawBody340_67 : StackLang.HolProg 64 :=
.seq rawBody340_59 rawBody340_66

def rawBody340_68 : StackLang.HolProg 64 :=
.seq rawBody340_58 rawBody340_67

def rawBody340_69 : StackLang.HolProg 64 :=
.seq rawBody340_57 rawBody340_68

def rawBody340_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody340_69 rawBody340_70

def rawBody340_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody340_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody340_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody340_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody340_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody340_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody340_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody340_81 : StackLang.HolProg 64 :=
.seq rawBody340_79 rawBody340_80

def rawBody340_82 : StackLang.HolProg 64 :=
.seq rawBody340_78 rawBody340_81

def rawBody340_83 : StackLang.HolProg 64 :=
.seq rawBody340_77 rawBody340_82

def rawBody340_84 : StackLang.HolProg 64 :=
.seq rawBody340_76 rawBody340_83

def rawBody340_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody340_84 rawBody340_85

def rawBody340_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody340_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody340_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 20#64)

def rawBody340_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody340_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 17#64)

def rawBody340_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody340_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody340_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_97 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody340_98 : StackLang.HolProg 64 :=
.seq rawBody340_96 rawBody340_97

def rawBody340_99 : StackLang.HolProg 64 :=
.seq rawBody340_95 rawBody340_98

def rawBody340_100 : StackLang.HolProg 64 :=
.seq rawBody340_94 rawBody340_99

def rawBody340_101 : StackLang.HolProg 64 :=
.seq rawBody340_93 rawBody340_100

def rawBody340_102 : StackLang.HolProg 64 :=
.seq rawBody340_92 rawBody340_101

def rawBody340_103 : StackLang.HolProg 64 :=
.seq rawBody340_91 rawBody340_102

def rawBody340_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody340_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody340_103 rawBody340_104

def rawBody340_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody340_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody340_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody340_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody340_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody340_111 : StackLang.HolProg 64 :=
.seq rawBody340_109 rawBody340_110

def rawBody340_112 : StackLang.HolProg 64 :=
.seq rawBody340_108 rawBody340_111

def rawBody340_113 : StackLang.HolProg 64 :=
.seq rawBody340_107 rawBody340_112

def rawBody340_114 : StackLang.HolProg 64 :=
.seq rawBody340_106 rawBody340_113

def rawBody340_115 : StackLang.HolProg 64 :=
.seq rawBody340_105 rawBody340_114

def rawBody340_116 : StackLang.HolProg 64 :=
.seq rawBody340_90 rawBody340_115

def rawBody340_117 : StackLang.HolProg 64 :=
.seq rawBody340_89 rawBody340_116

def rawBody340_118 : StackLang.HolProg 64 :=
.seq rawBody340_88 rawBody340_117

def rawBody340_119 : StackLang.HolProg 64 :=
.seq rawBody340_87 rawBody340_118

def rawBody340_120 : StackLang.HolProg 64 :=
.seq rawBody340_86 rawBody340_119

def rawBody340_121 : StackLang.HolProg 64 :=
.seq rawBody340_75 rawBody340_120

def rawBody340_122 : StackLang.HolProg 64 :=
.seq rawBody340_74 rawBody340_121

def rawBody340_123 : StackLang.HolProg 64 :=
.seq rawBody340_73 rawBody340_122

def rawBody340_124 : StackLang.HolProg 64 :=
.seq rawBody340_72 rawBody340_123

def rawBody340_125 : StackLang.HolProg 64 :=
.seq rawBody340_71 rawBody340_124

def rawBody340_126 : StackLang.HolProg 64 :=
.seq rawBody340_56 rawBody340_125

def rawBody340_127 : StackLang.HolProg 64 :=
.seq rawBody340_55 rawBody340_126

def rawBody340_128 : StackLang.HolProg 64 :=
.seq rawBody340_54 rawBody340_127

def rawBody340_129 : StackLang.HolProg 64 :=
.seq rawBody340_53 rawBody340_128

def rawBody340_130 : StackLang.HolProg 64 :=
.seq rawBody340_8 rawBody340_129

def rawBody340_131 : StackLang.HolProg 64 :=
.seq rawBody340_7 rawBody340_130

def rawBody340_132 : StackLang.HolProg 64 :=
.seq rawBody340_6 rawBody340_131

def rawBody340_133 : StackLang.HolProg 64 :=
.seq rawBody340_5 rawBody340_132

def rawBody340_134 : StackLang.HolProg 64 :=
.seq rawBody340_4 rawBody340_133

def rawBody340_135 : StackLang.HolProg 64 :=
.seq rawBody340_3 rawBody340_134

def rawBody340_136 : StackLang.HolProg 64 :=
.seq rawBody340_2 rawBody340_135

def rawBody340_137 : StackLang.HolProg 64 :=
.seq rawBody340_1 rawBody340_136

def rawBody340_138 : StackLang.HolProg 64 :=
.seq rawBody340_0 rawBody340_137

def raw340 : StackLang.HolProg 64 := rawBody340_138
theorem raw340_eq : StackRawCall.compTop RawInfo.rawInfo (function340 (.list [])).1 = raw340 := by
  kernel_rfl
#print axioms raw340_eq
end InitECandidate.Proofs.BackendStages
