import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function149
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody149_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody149_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody149_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody149_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 126#64)

def rawBody149_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody149_7 : StackLang.HolProg 64 :=
.seq rawBody149_5 rawBody149_6

def rawBody149_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody149_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody149_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody149_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 149 3

def rawBody149_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody149_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody149_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody149_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody149_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody149_18 : StackLang.HolProg 64 :=
.seq rawBody149_16 rawBody149_17

def rawBody149_19 : StackLang.HolProg 64 :=
.seq rawBody149_15 rawBody149_18

def rawBody149_20 : StackLang.HolProg 64 :=
.seq rawBody149_14 rawBody149_19

def rawBody149_21 : StackLang.HolProg 64 :=
.seq rawBody149_13 rawBody149_20

def rawBody149_22 : StackLang.HolProg 64 :=
.seq rawBody149_12 rawBody149_21

def rawBody149_23 : StackLang.HolProg 64 :=
.seq rawBody149_11 rawBody149_22

def rawBody149_24 : StackLang.HolProg 64 :=
.seq rawBody149_10 rawBody149_23

def rawBody149_25 : StackLang.HolProg 64 :=
.seq rawBody149_9 rawBody149_24

def rawBody149_26 : StackLang.HolProg 64 :=
.seq rawBody149_8 rawBody149_25

def rawBody149_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody149_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody149_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody149_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody149_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody149_34 : StackLang.HolProg 64 :=
.seq rawBody149_32 rawBody149_33

def rawBody149_35 : StackLang.HolProg 64 :=
.seq rawBody149_31 rawBody149_34

def rawBody149_36 : StackLang.HolProg 64 :=
.seq rawBody149_30 rawBody149_35

def rawBody149_37 : StackLang.HolProg 64 :=
.seq rawBody149_29 rawBody149_36

def rawBody149_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody149_40 : StackLang.HolProg 64 :=
.seq rawBody149_38 rawBody149_39

def rawBody149_41 : StackLang.HolProg 64 :=
.call (some (rawBody149_37, 0, 149, 2)) (Sum.inl 68) (some (rawBody149_40, 149, 3))

def rawBody149_42 : StackLang.HolProg 64 :=
.seq rawBody149_28 rawBody149_41

def rawBody149_43 : StackLang.HolProg 64 :=
.seq rawBody149_27 rawBody149_42

def rawBody149_44 : StackLang.HolProg 64 :=
.seq rawBody149_26 rawBody149_43

def rawBody149_45 : StackLang.HolProg 64 :=
.seq rawBody149_7 rawBody149_44

def rawBody149_46 : StackLang.HolProg 64 :=
.seq rawBody149_4 rawBody149_45

def rawBody149_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody149_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody149_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody149_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody149_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551568#64)))

def rawBody149_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody149_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def rawBody149_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 127#64)

def rawBody149_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody149_59 : StackLang.HolProg 64 :=
.seq rawBody149_57 rawBody149_58

def rawBody149_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody149_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody149_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody149_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 149 5

def rawBody149_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody149_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody149_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody149_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody149_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody149_70 : StackLang.HolProg 64 :=
.seq rawBody149_68 rawBody149_69

def rawBody149_71 : StackLang.HolProg 64 :=
.seq rawBody149_67 rawBody149_70

def rawBody149_72 : StackLang.HolProg 64 :=
.seq rawBody149_66 rawBody149_71

def rawBody149_73 : StackLang.HolProg 64 :=
.seq rawBody149_65 rawBody149_72

def rawBody149_74 : StackLang.HolProg 64 :=
.seq rawBody149_64 rawBody149_73

def rawBody149_75 : StackLang.HolProg 64 :=
.seq rawBody149_63 rawBody149_74

def rawBody149_76 : StackLang.HolProg 64 :=
.seq rawBody149_62 rawBody149_75

def rawBody149_77 : StackLang.HolProg 64 :=
.seq rawBody149_61 rawBody149_76

def rawBody149_78 : StackLang.HolProg 64 :=
.seq rawBody149_60 rawBody149_77

def rawBody149_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody149_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody149_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody149_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody149_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody149_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody149_87 : StackLang.HolProg 64 :=
.seq rawBody149_85 rawBody149_86

def rawBody149_88 : StackLang.HolProg 64 :=
.seq rawBody149_84 rawBody149_87

def rawBody149_89 : StackLang.HolProg 64 :=
.seq rawBody149_83 rawBody149_88

def rawBody149_90 : StackLang.HolProg 64 :=
.seq rawBody149_82 rawBody149_89

def rawBody149_91 : StackLang.HolProg 64 :=
.seq rawBody149_81 rawBody149_90

def rawBody149_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody149_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody149_94 : StackLang.HolProg 64 :=
.seq rawBody149_92 rawBody149_93

def rawBody149_95 : StackLang.HolProg 64 :=
.call (some (rawBody149_91, 0, 149, 4)) (Sum.inl 68) (some (rawBody149_94, 149, 5))

def rawBody149_96 : StackLang.HolProg 64 :=
.seq rawBody149_80 rawBody149_95

def rawBody149_97 : StackLang.HolProg 64 :=
.seq rawBody149_79 rawBody149_96

def rawBody149_98 : StackLang.HolProg 64 :=
.seq rawBody149_78 rawBody149_97

def rawBody149_99 : StackLang.HolProg 64 :=
.seq rawBody149_59 rawBody149_98

def rawBody149_100 : StackLang.HolProg 64 :=
.seq rawBody149_56 rawBody149_99

def rawBody149_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody149_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody149_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody149_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody149_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551560#64)))

def rawBody149_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody149_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody149_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody149_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody149_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody149_112 : StackLang.HolProg 64 :=
.seq rawBody149_110 rawBody149_111

def rawBody149_113 : StackLang.HolProg 64 :=
.seq rawBody149_109 rawBody149_112

def rawBody149_114 : StackLang.HolProg 64 :=
.seq rawBody149_108 rawBody149_113

def rawBody149_115 : StackLang.HolProg 64 :=
.seq rawBody149_107 rawBody149_114

def rawBody149_116 : StackLang.HolProg 64 :=
.seq rawBody149_106 rawBody149_115

def rawBody149_117 : StackLang.HolProg 64 :=
.seq rawBody149_105 rawBody149_116

def rawBody149_118 : StackLang.HolProg 64 :=
.seq rawBody149_104 rawBody149_117

def rawBody149_119 : StackLang.HolProg 64 :=
.seq rawBody149_103 rawBody149_118

def rawBody149_120 : StackLang.HolProg 64 :=
.seq rawBody149_102 rawBody149_119

def rawBody149_121 : StackLang.HolProg 64 :=
.seq rawBody149_101 rawBody149_120

def rawBody149_122 : StackLang.HolProg 64 :=
.seq rawBody149_100 rawBody149_121

def rawBody149_123 : StackLang.HolProg 64 :=
.seq rawBody149_55 rawBody149_122

def rawBody149_124 : StackLang.HolProg 64 :=
.seq rawBody149_54 rawBody149_123

def rawBody149_125 : StackLang.HolProg 64 :=
.seq rawBody149_53 rawBody149_124

def rawBody149_126 : StackLang.HolProg 64 :=
.seq rawBody149_52 rawBody149_125

def rawBody149_127 : StackLang.HolProg 64 :=
.seq rawBody149_51 rawBody149_126

def rawBody149_128 : StackLang.HolProg 64 :=
.seq rawBody149_50 rawBody149_127

def rawBody149_129 : StackLang.HolProg 64 :=
.seq rawBody149_49 rawBody149_128

def rawBody149_130 : StackLang.HolProg 64 :=
.seq rawBody149_48 rawBody149_129

def rawBody149_131 : StackLang.HolProg 64 :=
.seq rawBody149_47 rawBody149_130

def rawBody149_132 : StackLang.HolProg 64 :=
.seq rawBody149_46 rawBody149_131

def rawBody149_133 : StackLang.HolProg 64 :=
.seq rawBody149_3 rawBody149_132

def rawBody149_134 : StackLang.HolProg 64 :=
.seq rawBody149_2 rawBody149_133

def rawBody149_135 : StackLang.HolProg 64 :=
.seq rawBody149_1 rawBody149_134

def rawBody149_136 : StackLang.HolProg 64 :=
.seq rawBody149_0 rawBody149_135

def raw149 : StackLang.HolProg 64 := rawBody149_136
theorem raw149_eq : StackRawCall.compTop RawInfo.rawInfo (function149 (.list [])).1 = raw149 := by
  kernel_rfl
#print axioms raw149_eq
end InitECandidate.Proofs.BackendStages
