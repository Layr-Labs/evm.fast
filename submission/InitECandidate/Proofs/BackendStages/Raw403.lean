import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function403
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody403_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody403_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody403_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1200#64)

def rawBody403_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody403_5 : StackLang.HolProg 64 :=
.seq rawBody403_3 rawBody403_4

def rawBody403_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody403_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody403_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody403_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 403 3

def rawBody403_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody403_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody403_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody403_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody403_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody403_16 : StackLang.HolProg 64 :=
.seq rawBody403_14 rawBody403_15

def rawBody403_17 : StackLang.HolProg 64 :=
.seq rawBody403_13 rawBody403_16

def rawBody403_18 : StackLang.HolProg 64 :=
.seq rawBody403_12 rawBody403_17

def rawBody403_19 : StackLang.HolProg 64 :=
.seq rawBody403_11 rawBody403_18

def rawBody403_20 : StackLang.HolProg 64 :=
.seq rawBody403_10 rawBody403_19

def rawBody403_21 : StackLang.HolProg 64 :=
.seq rawBody403_9 rawBody403_20

def rawBody403_22 : StackLang.HolProg 64 :=
.seq rawBody403_8 rawBody403_21

def rawBody403_23 : StackLang.HolProg 64 :=
.seq rawBody403_7 rawBody403_22

def rawBody403_24 : StackLang.HolProg 64 :=
.seq rawBody403_6 rawBody403_23

def rawBody403_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody403_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody403_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody403_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody403_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody403_32 : StackLang.HolProg 64 :=
.seq rawBody403_30 rawBody403_31

def rawBody403_33 : StackLang.HolProg 64 :=
.seq rawBody403_29 rawBody403_32

def rawBody403_34 : StackLang.HolProg 64 :=
.seq rawBody403_28 rawBody403_33

def rawBody403_35 : StackLang.HolProg 64 :=
.seq rawBody403_27 rawBody403_34

def rawBody403_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody403_38 : StackLang.HolProg 64 :=
.seq rawBody403_36 rawBody403_37

def rawBody403_39 : StackLang.HolProg 64 :=
.call (some (rawBody403_35, 0, 403, 2)) (Sum.inl 399) (some (rawBody403_38, 403, 3))

def rawBody403_40 : StackLang.HolProg 64 :=
.seq rawBody403_26 rawBody403_39

def rawBody403_41 : StackLang.HolProg 64 :=
.seq rawBody403_25 rawBody403_40

def rawBody403_42 : StackLang.HolProg 64 :=
.seq rawBody403_24 rawBody403_41

def rawBody403_43 : StackLang.HolProg 64 :=
.seq rawBody403_5 rawBody403_42

def rawBody403_44 : StackLang.HolProg 64 :=
.seq rawBody403_2 rawBody403_43

def rawBody403_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody403_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody403_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody403_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody403_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody403_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551488#64))

def rawBody403_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody403_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1201#64)

def rawBody403_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody403_56 : StackLang.HolProg 64 :=
.seq rawBody403_54 rawBody403_55

def rawBody403_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody403_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody403_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody403_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 403 5

def rawBody403_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody403_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody403_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody403_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody403_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody403_67 : StackLang.HolProg 64 :=
.seq rawBody403_65 rawBody403_66

def rawBody403_68 : StackLang.HolProg 64 :=
.seq rawBody403_64 rawBody403_67

def rawBody403_69 : StackLang.HolProg 64 :=
.seq rawBody403_63 rawBody403_68

def rawBody403_70 : StackLang.HolProg 64 :=
.seq rawBody403_62 rawBody403_69

def rawBody403_71 : StackLang.HolProg 64 :=
.seq rawBody403_61 rawBody403_70

def rawBody403_72 : StackLang.HolProg 64 :=
.seq rawBody403_60 rawBody403_71

def rawBody403_73 : StackLang.HolProg 64 :=
.seq rawBody403_59 rawBody403_72

def rawBody403_74 : StackLang.HolProg 64 :=
.seq rawBody403_58 rawBody403_73

def rawBody403_75 : StackLang.HolProg 64 :=
.seq rawBody403_57 rawBody403_74

def rawBody403_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody403_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody403_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody403_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody403_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody403_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody403_84 : StackLang.HolProg 64 :=
.seq rawBody403_82 rawBody403_83

def rawBody403_85 : StackLang.HolProg 64 :=
.seq rawBody403_81 rawBody403_84

def rawBody403_86 : StackLang.HolProg 64 :=
.seq rawBody403_80 rawBody403_85

def rawBody403_87 : StackLang.HolProg 64 :=
.seq rawBody403_79 rawBody403_86

def rawBody403_88 : StackLang.HolProg 64 :=
.seq rawBody403_78 rawBody403_87

def rawBody403_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody403_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody403_91 : StackLang.HolProg 64 :=
.seq rawBody403_89 rawBody403_90

def rawBody403_92 : StackLang.HolProg 64 :=
.call (some (rawBody403_88, 0, 403, 4)) (Sum.inl 79) (some (rawBody403_91, 403, 5))

def rawBody403_93 : StackLang.HolProg 64 :=
.seq rawBody403_77 rawBody403_92

def rawBody403_94 : StackLang.HolProg 64 :=
.seq rawBody403_76 rawBody403_93

def rawBody403_95 : StackLang.HolProg 64 :=
.seq rawBody403_75 rawBody403_94

def rawBody403_96 : StackLang.HolProg 64 :=
.seq rawBody403_56 rawBody403_95

def rawBody403_97 : StackLang.HolProg 64 :=
.seq rawBody403_53 rawBody403_96

def rawBody403_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody403_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody403_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody403_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody403_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody403_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody403_106 : StackLang.HolProg 64 :=
.seq rawBody403_104 rawBody403_105

def rawBody403_107 : StackLang.HolProg 64 :=
.seq rawBody403_103 rawBody403_106

def rawBody403_108 : StackLang.HolProg 64 :=
.seq rawBody403_102 rawBody403_107

def rawBody403_109 : StackLang.HolProg 64 :=
.seq rawBody403_101 rawBody403_108

def rawBody403_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody403_109 rawBody403_110

def rawBody403_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody403_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody403_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody403_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody403_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody403_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody403_118 : StackLang.HolProg 64 :=
.seq rawBody403_116 rawBody403_117

def rawBody403_119 : StackLang.HolProg 64 :=
.seq rawBody403_115 rawBody403_118

def rawBody403_120 : StackLang.HolProg 64 :=
.seq rawBody403_114 rawBody403_119

def rawBody403_121 : StackLang.HolProg 64 :=
.seq rawBody403_113 rawBody403_120

def rawBody403_122 : StackLang.HolProg 64 :=
.seq rawBody403_112 rawBody403_121

def rawBody403_123 : StackLang.HolProg 64 :=
.seq rawBody403_111 rawBody403_122

def rawBody403_124 : StackLang.HolProg 64 :=
.seq rawBody403_100 rawBody403_123

def rawBody403_125 : StackLang.HolProg 64 :=
.seq rawBody403_99 rawBody403_124

def rawBody403_126 : StackLang.HolProg 64 :=
.seq rawBody403_98 rawBody403_125

def rawBody403_127 : StackLang.HolProg 64 :=
.seq rawBody403_97 rawBody403_126

def rawBody403_128 : StackLang.HolProg 64 :=
.seq rawBody403_52 rawBody403_127

def rawBody403_129 : StackLang.HolProg 64 :=
.seq rawBody403_51 rawBody403_128

def rawBody403_130 : StackLang.HolProg 64 :=
.seq rawBody403_50 rawBody403_129

def rawBody403_131 : StackLang.HolProg 64 :=
.seq rawBody403_49 rawBody403_130

def rawBody403_132 : StackLang.HolProg 64 :=
.seq rawBody403_48 rawBody403_131

def rawBody403_133 : StackLang.HolProg 64 :=
.seq rawBody403_47 rawBody403_132

def rawBody403_134 : StackLang.HolProg 64 :=
.seq rawBody403_46 rawBody403_133

def rawBody403_135 : StackLang.HolProg 64 :=
.seq rawBody403_45 rawBody403_134

def rawBody403_136 : StackLang.HolProg 64 :=
.seq rawBody403_44 rawBody403_135

def rawBody403_137 : StackLang.HolProg 64 :=
.seq rawBody403_1 rawBody403_136

def rawBody403_138 : StackLang.HolProg 64 :=
.seq rawBody403_0 rawBody403_137

def raw403 : StackLang.HolProg 64 := rawBody403_138
theorem raw403_eq : StackRawCall.compTop RawInfo.rawInfo (function403 (.list [])).1 = raw403 := by
  kernel_rfl
#print axioms raw403_eq
end InitECandidate.Proofs.BackendStages
