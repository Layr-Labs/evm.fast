import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function282
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody282_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody282_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody282_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody282_3 : StackLang.HolProg 64 :=
.seq rawBody282_1 rawBody282_2

def rawBody282_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1024#64)

def rawBody282_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody282_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody282_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody282_8 : StackLang.HolProg 64 :=
.seq rawBody282_6 rawBody282_7

def rawBody282_9 : StackLang.HolProg 64 :=
.seq rawBody282_5 rawBody282_8

def rawBody282_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 752#64)

def rawBody282_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody282_13 : StackLang.HolProg 64 :=
.seq rawBody282_11 rawBody282_12

def rawBody282_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody282_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody282_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody282_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 282 3

def rawBody282_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody282_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody282_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody282_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody282_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody282_24 : StackLang.HolProg 64 :=
.seq rawBody282_22 rawBody282_23

def rawBody282_25 : StackLang.HolProg 64 :=
.seq rawBody282_21 rawBody282_24

def rawBody282_26 : StackLang.HolProg 64 :=
.seq rawBody282_20 rawBody282_25

def rawBody282_27 : StackLang.HolProg 64 :=
.seq rawBody282_19 rawBody282_26

def rawBody282_28 : StackLang.HolProg 64 :=
.seq rawBody282_18 rawBody282_27

def rawBody282_29 : StackLang.HolProg 64 :=
.seq rawBody282_17 rawBody282_28

def rawBody282_30 : StackLang.HolProg 64 :=
.seq rawBody282_16 rawBody282_29

def rawBody282_31 : StackLang.HolProg 64 :=
.seq rawBody282_15 rawBody282_30

def rawBody282_32 : StackLang.HolProg 64 :=
.seq rawBody282_14 rawBody282_31

def rawBody282_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody282_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody282_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody282_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody282_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody282_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody282_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody282_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody282_43 : StackLang.HolProg 64 :=
.seq rawBody282_41 rawBody282_42

def rawBody282_44 : StackLang.HolProg 64 :=
.seq rawBody282_40 rawBody282_43

def rawBody282_45 : StackLang.HolProg 64 :=
.seq rawBody282_39 rawBody282_44

def rawBody282_46 : StackLang.HolProg 64 :=
.seq rawBody282_38 rawBody282_45

def rawBody282_47 : StackLang.HolProg 64 :=
.seq rawBody282_37 rawBody282_46

def rawBody282_48 : StackLang.HolProg 64 :=
.seq rawBody282_36 rawBody282_47

def rawBody282_49 : StackLang.HolProg 64 :=
.seq rawBody282_35 rawBody282_48

def rawBody282_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody282_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody282_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody282_53 : StackLang.HolProg 64 :=
.seq rawBody282_51 rawBody282_52

def rawBody282_54 : StackLang.HolProg 64 :=
.seq rawBody282_50 rawBody282_53

def rawBody282_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody282_56 : StackLang.HolProg 64 :=
.seq rawBody282_54 rawBody282_55

def rawBody282_57 : StackLang.HolProg 64 :=
.call (some (rawBody282_49, 0, 282, 2)) (Sum.inl 95) (some (rawBody282_56, 282, 3))

def rawBody282_58 : StackLang.HolProg 64 :=
.seq rawBody282_34 rawBody282_57

def rawBody282_59 : StackLang.HolProg 64 :=
.seq rawBody282_33 rawBody282_58

def rawBody282_60 : StackLang.HolProg 64 :=
.seq rawBody282_32 rawBody282_59

def rawBody282_61 : StackLang.HolProg 64 :=
.seq rawBody282_13 rawBody282_60

def rawBody282_62 : StackLang.HolProg 64 :=
.seq rawBody282_10 rawBody282_61

def rawBody282_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody282_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody282_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody282_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody282_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody282_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody282_71 : StackLang.HolProg 64 :=
.seq rawBody282_69 rawBody282_70

def rawBody282_72 : StackLang.HolProg 64 :=
.seq rawBody282_68 rawBody282_71

def rawBody282_73 : StackLang.HolProg 64 :=
.seq rawBody282_67 rawBody282_72

def rawBody282_74 : StackLang.HolProg 64 :=
.seq rawBody282_66 rawBody282_73

def rawBody282_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody282_74 rawBody282_75

def rawBody282_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody282_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody282_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody282_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody282_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody282_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody282_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody282_86 : StackLang.HolProg 64 :=
.seq rawBody282_84 rawBody282_85

def rawBody282_87 : StackLang.HolProg 64 :=
.seq rawBody282_83 rawBody282_86

def rawBody282_88 : StackLang.HolProg 64 :=
.seq rawBody282_82 rawBody282_87

def rawBody282_89 : StackLang.HolProg 64 :=
.seq rawBody282_81 rawBody282_88

def rawBody282_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody282_89 rawBody282_90

def rawBody282_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody282_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody282_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5000#64)

def rawBody282_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody282_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody282_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody282_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody282_101 : StackLang.HolProg 64 :=
.seq rawBody282_99 rawBody282_100

def rawBody282_102 : StackLang.HolProg 64 :=
.seq rawBody282_98 rawBody282_101

def rawBody282_103 : StackLang.HolProg 64 :=
.seq rawBody282_97 rawBody282_102

def rawBody282_104 : StackLang.HolProg 64 :=
.seq rawBody282_96 rawBody282_103

def rawBody282_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody282_104 rawBody282_105

def rawBody282_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody282_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody282_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody282_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody282_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody282_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody282_113 : StackLang.HolProg 64 :=
.seq rawBody282_111 rawBody282_112

def rawBody282_114 : StackLang.HolProg 64 :=
.seq rawBody282_110 rawBody282_113

def rawBody282_115 : StackLang.HolProg 64 :=
.seq rawBody282_109 rawBody282_114

def rawBody282_116 : StackLang.HolProg 64 :=
.seq rawBody282_108 rawBody282_115

def rawBody282_117 : StackLang.HolProg 64 :=
.seq rawBody282_107 rawBody282_116

def rawBody282_118 : StackLang.HolProg 64 :=
.seq rawBody282_106 rawBody282_117

def rawBody282_119 : StackLang.HolProg 64 :=
.seq rawBody282_95 rawBody282_118

def rawBody282_120 : StackLang.HolProg 64 :=
.seq rawBody282_94 rawBody282_119

def rawBody282_121 : StackLang.HolProg 64 :=
.seq rawBody282_93 rawBody282_120

def rawBody282_122 : StackLang.HolProg 64 :=
.seq rawBody282_92 rawBody282_121

def rawBody282_123 : StackLang.HolProg 64 :=
.seq rawBody282_91 rawBody282_122

def rawBody282_124 : StackLang.HolProg 64 :=
.seq rawBody282_80 rawBody282_123

def rawBody282_125 : StackLang.HolProg 64 :=
.seq rawBody282_79 rawBody282_124

def rawBody282_126 : StackLang.HolProg 64 :=
.seq rawBody282_78 rawBody282_125

def rawBody282_127 : StackLang.HolProg 64 :=
.seq rawBody282_77 rawBody282_126

def rawBody282_128 : StackLang.HolProg 64 :=
.seq rawBody282_76 rawBody282_127

def rawBody282_129 : StackLang.HolProg 64 :=
.seq rawBody282_65 rawBody282_128

def rawBody282_130 : StackLang.HolProg 64 :=
.seq rawBody282_64 rawBody282_129

def rawBody282_131 : StackLang.HolProg 64 :=
.seq rawBody282_63 rawBody282_130

def rawBody282_132 : StackLang.HolProg 64 :=
.seq rawBody282_62 rawBody282_131

def rawBody282_133 : StackLang.HolProg 64 :=
.seq rawBody282_9 rawBody282_132

def rawBody282_134 : StackLang.HolProg 64 :=
.seq rawBody282_4 rawBody282_133

def rawBody282_135 : StackLang.HolProg 64 :=
.seq rawBody282_3 rawBody282_134

def rawBody282_136 : StackLang.HolProg 64 :=
.seq rawBody282_0 rawBody282_135

def raw282 : StackLang.HolProg 64 := rawBody282_136
theorem raw282_eq : StackRawCall.compTop RawInfo.rawInfo (function282 (.list [])).1 = raw282 := by
  kernel_rfl
#print axioms raw282_eq
end InitECandidate.Proofs.BackendStages
