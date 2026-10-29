import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function194
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody194_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody194_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody194_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody194_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody194_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody194_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody194_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody194_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody194_8 : StackLang.HolProg 64 :=
.seq rawBody194_6 rawBody194_7

def rawBody194_9 : StackLang.HolProg 64 :=
.seq rawBody194_5 rawBody194_8

def rawBody194_10 : StackLang.HolProg 64 :=
.seq rawBody194_4 rawBody194_9

def rawBody194_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody194_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody194_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody194_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody194_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody194_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody194_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody194_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody194_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def rawBody194_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody194_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody194_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody194_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody194_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody194_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody194_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody194_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody194_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody194_29 : StackLang.HolProg 64 :=
.seq rawBody194_27 rawBody194_28

def rawBody194_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody194_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 233#64)

def rawBody194_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody194_33 : StackLang.HolProg 64 :=
.seq rawBody194_31 rawBody194_32

def rawBody194_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody194_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody194_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody194_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 194 3

def rawBody194_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody194_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody194_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody194_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody194_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody194_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody194_44 : StackLang.HolProg 64 :=
.seq rawBody194_42 rawBody194_43

def rawBody194_45 : StackLang.HolProg 64 :=
.seq rawBody194_41 rawBody194_44

def rawBody194_46 : StackLang.HolProg 64 :=
.seq rawBody194_40 rawBody194_45

def rawBody194_47 : StackLang.HolProg 64 :=
.seq rawBody194_39 rawBody194_46

def rawBody194_48 : StackLang.HolProg 64 :=
.seq rawBody194_38 rawBody194_47

def rawBody194_49 : StackLang.HolProg 64 :=
.seq rawBody194_37 rawBody194_48

def rawBody194_50 : StackLang.HolProg 64 :=
.seq rawBody194_36 rawBody194_49

def rawBody194_51 : StackLang.HolProg 64 :=
.seq rawBody194_35 rawBody194_50

def rawBody194_52 : StackLang.HolProg 64 :=
.seq rawBody194_34 rawBody194_51

def rawBody194_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody194_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody194_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody194_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody194_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody194_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody194_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody194_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody194_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody194_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody194_63 : StackLang.HolProg 64 :=
.seq rawBody194_61 rawBody194_62

def rawBody194_64 : StackLang.HolProg 64 :=
.seq rawBody194_60 rawBody194_63

def rawBody194_65 : StackLang.HolProg 64 :=
.seq rawBody194_59 rawBody194_64

def rawBody194_66 : StackLang.HolProg 64 :=
.seq rawBody194_58 rawBody194_65

def rawBody194_67 : StackLang.HolProg 64 :=
.seq rawBody194_57 rawBody194_66

def rawBody194_68 : StackLang.HolProg 64 :=
.seq rawBody194_56 rawBody194_67

def rawBody194_69 : StackLang.HolProg 64 :=
.seq rawBody194_55 rawBody194_68

def rawBody194_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody194_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody194_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody194_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody194_74 : StackLang.HolProg 64 :=
.seq rawBody194_72 rawBody194_73

def rawBody194_75 : StackLang.HolProg 64 :=
.seq rawBody194_71 rawBody194_74

def rawBody194_76 : StackLang.HolProg 64 :=
.seq rawBody194_70 rawBody194_75

def rawBody194_77 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody194_78 : StackLang.HolProg 64 :=
.seq rawBody194_76 rawBody194_77

def rawBody194_79 : StackLang.HolProg 64 :=
.call (some (rawBody194_69, 0, 194, 2)) (Sum.inl 193) (some (rawBody194_78, 194, 3))

def rawBody194_80 : StackLang.HolProg 64 :=
.seq rawBody194_54 rawBody194_79

def rawBody194_81 : StackLang.HolProg 64 :=
.seq rawBody194_53 rawBody194_80

def rawBody194_82 : StackLang.HolProg 64 :=
.seq rawBody194_52 rawBody194_81

def rawBody194_83 : StackLang.HolProg 64 :=
.seq rawBody194_33 rawBody194_82

def rawBody194_84 : StackLang.HolProg 64 :=
.seq rawBody194_30 rawBody194_83

def rawBody194_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody194_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody194_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody194_88 : StackLang.HolProg 64 :=
.seq rawBody194_86 rawBody194_87

def rawBody194_89 : StackLang.HolProg 64 :=
.seq rawBody194_85 rawBody194_88

def rawBody194_90 : StackLang.HolProg 64 :=
.seq rawBody194_84 rawBody194_89

def rawBody194_91 : StackLang.HolProg 64 :=
.seq rawBody194_29 rawBody194_90

def rawBody194_92 : StackLang.HolProg 64 :=
.seq rawBody194_26 rawBody194_91

def rawBody194_93 : StackLang.HolProg 64 :=
.seq rawBody194_25 rawBody194_92

def rawBody194_94 : StackLang.HolProg 64 :=
.seq rawBody194_24 rawBody194_93

def rawBody194_95 : StackLang.HolProg 64 :=
.seq rawBody194_23 rawBody194_94

def rawBody194_96 : StackLang.HolProg 64 :=
.seq rawBody194_22 rawBody194_95

def rawBody194_97 : StackLang.HolProg 64 :=
.seq rawBody194_21 rawBody194_96

def rawBody194_98 : StackLang.HolProg 64 :=
.seq rawBody194_20 rawBody194_97

def rawBody194_99 : StackLang.HolProg 64 :=
.seq rawBody194_19 rawBody194_98

def rawBody194_100 : StackLang.HolProg 64 :=
.seq rawBody194_18 rawBody194_99

def rawBody194_101 : StackLang.HolProg 64 :=
.seq rawBody194_17 rawBody194_100

def rawBody194_102 : StackLang.HolProg 64 :=
.seq rawBody194_16 rawBody194_101

def rawBody194_103 : StackLang.HolProg 64 :=
.seq rawBody194_15 rawBody194_102

def rawBody194_104 : StackLang.HolProg 64 :=
.seq rawBody194_14 rawBody194_103

def rawBody194_105 : StackLang.HolProg 64 :=
.seq rawBody194_13 rawBody194_104

def rawBody194_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody194_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody194_108 : StackLang.HolProg 64 :=
.seq rawBody194_106 rawBody194_107

def rawBody194_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody194_105 rawBody194_108

def rawBody194_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody194_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody194_112 : StackLang.HolProg 64 :=
.seq rawBody194_110 rawBody194_111

def rawBody194_113 : StackLang.HolProg 64 :=
.seq rawBody194_109 rawBody194_112

def rawBody194_114 : StackLang.HolProg 64 :=
.seq rawBody194_12 rawBody194_113

def rawBody194_115 : StackLang.HolProg 64 :=
.seq rawBody194_11 rawBody194_114

def rawBody194_116 : StackLang.HolProg 64 :=
.loop rawBody194_115

def rawBody194_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody194_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody194_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody194_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody194_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody194_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody194_123 : StackLang.HolProg 64 :=
.seq rawBody194_121 rawBody194_122

def rawBody194_124 : StackLang.HolProg 64 :=
.seq rawBody194_120 rawBody194_123

def rawBody194_125 : StackLang.HolProg 64 :=
.seq rawBody194_119 rawBody194_124

def rawBody194_126 : StackLang.HolProg 64 :=
.seq rawBody194_118 rawBody194_125

def rawBody194_127 : StackLang.HolProg 64 :=
.seq rawBody194_117 rawBody194_126

def rawBody194_128 : StackLang.HolProg 64 :=
.seq rawBody194_116 rawBody194_127

def rawBody194_129 : StackLang.HolProg 64 :=
.seq rawBody194_10 rawBody194_128

def rawBody194_130 : StackLang.HolProg 64 :=
.seq rawBody194_3 rawBody194_129

def rawBody194_131 : StackLang.HolProg 64 :=
.seq rawBody194_2 rawBody194_130

def rawBody194_132 : StackLang.HolProg 64 :=
.seq rawBody194_1 rawBody194_131

def rawBody194_133 : StackLang.HolProg 64 :=
.seq rawBody194_0 rawBody194_132

def raw194 : StackLang.HolProg 64 := rawBody194_133
theorem raw194_eq : StackRawCall.compTop RawInfo.rawInfo (function194 (.list [])).1 = raw194 := by
  kernel_rfl
#print axioms raw194_eq
end InitECandidate.Proofs.BackendStages
