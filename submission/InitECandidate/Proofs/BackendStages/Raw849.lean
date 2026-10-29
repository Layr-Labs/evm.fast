import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function849
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody849_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody849_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody849_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody849_3 : StackLang.HolProg 64 :=
.seq rawBody849_1 rawBody849_2

def rawBody849_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody849_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4269#64)

def rawBody849_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody849_7 : StackLang.HolProg 64 :=
.seq rawBody849_5 rawBody849_6

def rawBody849_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody849_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody849_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody849_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 849 3

def rawBody849_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody849_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody849_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody849_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody849_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody849_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody849_18 : StackLang.HolProg 64 :=
.seq rawBody849_16 rawBody849_17

def rawBody849_19 : StackLang.HolProg 64 :=
.seq rawBody849_15 rawBody849_18

def rawBody849_20 : StackLang.HolProg 64 :=
.seq rawBody849_14 rawBody849_19

def rawBody849_21 : StackLang.HolProg 64 :=
.seq rawBody849_13 rawBody849_20

def rawBody849_22 : StackLang.HolProg 64 :=
.seq rawBody849_12 rawBody849_21

def rawBody849_23 : StackLang.HolProg 64 :=
.seq rawBody849_11 rawBody849_22

def rawBody849_24 : StackLang.HolProg 64 :=
.seq rawBody849_10 rawBody849_23

def rawBody849_25 : StackLang.HolProg 64 :=
.seq rawBody849_9 rawBody849_24

def rawBody849_26 : StackLang.HolProg 64 :=
.seq rawBody849_8 rawBody849_25

def rawBody849_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody849_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody849_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody849_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody849_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody849_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody849_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody849_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody849_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody849_36 : StackLang.HolProg 64 :=
.seq rawBody849_34 rawBody849_35

def rawBody849_37 : StackLang.HolProg 64 :=
.seq rawBody849_33 rawBody849_36

def rawBody849_38 : StackLang.HolProg 64 :=
.seq rawBody849_32 rawBody849_37

def rawBody849_39 : StackLang.HolProg 64 :=
.seq rawBody849_31 rawBody849_38

def rawBody849_40 : StackLang.HolProg 64 :=
.seq rawBody849_30 rawBody849_39

def rawBody849_41 : StackLang.HolProg 64 :=
.seq rawBody849_29 rawBody849_40

def rawBody849_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody849_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody849_44 : StackLang.HolProg 64 :=
.seq rawBody849_42 rawBody849_43

def rawBody849_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody849_46 : StackLang.HolProg 64 :=
.seq rawBody849_44 rawBody849_45

def rawBody849_47 : StackLang.HolProg 64 :=
.call (some (rawBody849_41, 0, 849, 2)) (Sum.inl 187) (some (rawBody849_46, 849, 3))

def rawBody849_48 : StackLang.HolProg 64 :=
.seq rawBody849_28 rawBody849_47

def rawBody849_49 : StackLang.HolProg 64 :=
.seq rawBody849_27 rawBody849_48

def rawBody849_50 : StackLang.HolProg 64 :=
.seq rawBody849_26 rawBody849_49

def rawBody849_51 : StackLang.HolProg 64 :=
.seq rawBody849_7 rawBody849_50

def rawBody849_52 : StackLang.HolProg 64 :=
.seq rawBody849_4 rawBody849_51

def rawBody849_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody849_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody849_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody849_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody849_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody849_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody849_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody849_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551488#64))

def rawBody849_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody849_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody849_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody849_64 : StackLang.HolProg 64 :=
.seq rawBody849_62 rawBody849_63

def rawBody849_65 : StackLang.HolProg 64 :=
.seq rawBody849_61 rawBody849_64

def rawBody849_66 : StackLang.HolProg 64 :=
.seq rawBody849_60 rawBody849_65

def rawBody849_67 : StackLang.HolProg 64 :=
.seq rawBody849_59 rawBody849_66

def rawBody849_68 : StackLang.HolProg 64 :=
.seq rawBody849_58 rawBody849_67

def rawBody849_69 : StackLang.HolProg 64 :=
.seq rawBody849_57 rawBody849_68

def rawBody849_70 : StackLang.HolProg 64 :=
.seq rawBody849_56 rawBody849_69

def rawBody849_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody849_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody849_70 rawBody849_71

def rawBody849_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody849_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody849_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody849_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody849_77 : StackLang.HolProg 64 :=
.seq rawBody849_75 rawBody849_76

def rawBody849_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody849_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4270#64)

def rawBody849_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody849_81 : StackLang.HolProg 64 :=
.seq rawBody849_79 rawBody849_80

def rawBody849_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody849_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody849_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody849_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 849 5

def rawBody849_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody849_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody849_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody849_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody849_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody849_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody849_92 : StackLang.HolProg 64 :=
.seq rawBody849_90 rawBody849_91

def rawBody849_93 : StackLang.HolProg 64 :=
.seq rawBody849_89 rawBody849_92

def rawBody849_94 : StackLang.HolProg 64 :=
.seq rawBody849_88 rawBody849_93

def rawBody849_95 : StackLang.HolProg 64 :=
.seq rawBody849_87 rawBody849_94

def rawBody849_96 : StackLang.HolProg 64 :=
.seq rawBody849_86 rawBody849_95

def rawBody849_97 : StackLang.HolProg 64 :=
.seq rawBody849_85 rawBody849_96

def rawBody849_98 : StackLang.HolProg 64 :=
.seq rawBody849_84 rawBody849_97

def rawBody849_99 : StackLang.HolProg 64 :=
.seq rawBody849_83 rawBody849_98

def rawBody849_100 : StackLang.HolProg 64 :=
.seq rawBody849_82 rawBody849_99

def rawBody849_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody849_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody849_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody849_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody849_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody849_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody849_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody849_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody849_109 : StackLang.HolProg 64 :=
.seq rawBody849_107 rawBody849_108

def rawBody849_110 : StackLang.HolProg 64 :=
.seq rawBody849_106 rawBody849_109

def rawBody849_111 : StackLang.HolProg 64 :=
.seq rawBody849_105 rawBody849_110

def rawBody849_112 : StackLang.HolProg 64 :=
.seq rawBody849_104 rawBody849_111

def rawBody849_113 : StackLang.HolProg 64 :=
.seq rawBody849_103 rawBody849_112

def rawBody849_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody849_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody849_116 : StackLang.HolProg 64 :=
.seq rawBody849_114 rawBody849_115

def rawBody849_117 : StackLang.HolProg 64 :=
.call (some (rawBody849_113, 0, 849, 4)) (Sum.inl 399) (some (rawBody849_116, 849, 5))

def rawBody849_118 : StackLang.HolProg 64 :=
.seq rawBody849_102 rawBody849_117

def rawBody849_119 : StackLang.HolProg 64 :=
.seq rawBody849_101 rawBody849_118

def rawBody849_120 : StackLang.HolProg 64 :=
.seq rawBody849_100 rawBody849_119

def rawBody849_121 : StackLang.HolProg 64 :=
.seq rawBody849_81 rawBody849_120

def rawBody849_122 : StackLang.HolProg 64 :=
.seq rawBody849_78 rawBody849_121

def rawBody849_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody849_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody849_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody849_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody849_127 : StackLang.HolProg 64 :=
.seq rawBody849_125 rawBody849_126

def rawBody849_128 : StackLang.HolProg 64 :=
.seq rawBody849_124 rawBody849_127

def rawBody849_129 : StackLang.HolProg 64 :=
.seq rawBody849_123 rawBody849_128

def rawBody849_130 : StackLang.HolProg 64 :=
.seq rawBody849_122 rawBody849_129

def rawBody849_131 : StackLang.HolProg 64 :=
.seq rawBody849_77 rawBody849_130

def rawBody849_132 : StackLang.HolProg 64 :=
.seq rawBody849_74 rawBody849_131

def rawBody849_133 : StackLang.HolProg 64 :=
.seq rawBody849_73 rawBody849_132

def rawBody849_134 : StackLang.HolProg 64 :=
.seq rawBody849_72 rawBody849_133

def rawBody849_135 : StackLang.HolProg 64 :=
.seq rawBody849_55 rawBody849_134

def rawBody849_136 : StackLang.HolProg 64 :=
.seq rawBody849_54 rawBody849_135

def rawBody849_137 : StackLang.HolProg 64 :=
.seq rawBody849_53 rawBody849_136

def rawBody849_138 : StackLang.HolProg 64 :=
.seq rawBody849_52 rawBody849_137

def rawBody849_139 : StackLang.HolProg 64 :=
.seq rawBody849_3 rawBody849_138

def rawBody849_140 : StackLang.HolProg 64 :=
.seq rawBody849_0 rawBody849_139

def raw849 : StackLang.HolProg 64 := rawBody849_140
theorem raw849_eq : StackRawCall.compTop RawInfo.rawInfo (function849 (.list [])).1 = raw849 := by
  kernel_rfl
#print axioms raw849_eq
end InitECandidate.Proofs.BackendStages
