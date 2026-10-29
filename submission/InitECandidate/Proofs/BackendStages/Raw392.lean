import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function392
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody392_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody392_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody392_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody392_3 : StackLang.HolProg 64 :=
.seq rawBody392_1 rawBody392_2

def rawBody392_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody392_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody392_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody392_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551424#64))

def rawBody392_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def rawBody392_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody392_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody392_12 : StackLang.HolProg 64 :=
.seq rawBody392_10 rawBody392_11

def rawBody392_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1169#64)

def rawBody392_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody392_16 : StackLang.HolProg 64 :=
.seq rawBody392_14 rawBody392_15

def rawBody392_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody392_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody392_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody392_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 392 3

def rawBody392_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody392_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody392_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody392_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody392_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody392_27 : StackLang.HolProg 64 :=
.seq rawBody392_25 rawBody392_26

def rawBody392_28 : StackLang.HolProg 64 :=
.seq rawBody392_24 rawBody392_27

def rawBody392_29 : StackLang.HolProg 64 :=
.seq rawBody392_23 rawBody392_28

def rawBody392_30 : StackLang.HolProg 64 :=
.seq rawBody392_22 rawBody392_29

def rawBody392_31 : StackLang.HolProg 64 :=
.seq rawBody392_21 rawBody392_30

def rawBody392_32 : StackLang.HolProg 64 :=
.seq rawBody392_20 rawBody392_31

def rawBody392_33 : StackLang.HolProg 64 :=
.seq rawBody392_19 rawBody392_32

def rawBody392_34 : StackLang.HolProg 64 :=
.seq rawBody392_18 rawBody392_33

def rawBody392_35 : StackLang.HolProg 64 :=
.seq rawBody392_17 rawBody392_34

def rawBody392_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody392_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody392_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody392_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody392_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody392_43 : StackLang.HolProg 64 :=
.seq rawBody392_41 rawBody392_42

def rawBody392_44 : StackLang.HolProg 64 :=
.seq rawBody392_40 rawBody392_43

def rawBody392_45 : StackLang.HolProg 64 :=
.seq rawBody392_39 rawBody392_44

def rawBody392_46 : StackLang.HolProg 64 :=
.seq rawBody392_38 rawBody392_45

def rawBody392_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody392_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody392_49 : StackLang.HolProg 64 :=
.seq rawBody392_47 rawBody392_48

def rawBody392_50 : StackLang.HolProg 64 :=
.call (some (rawBody392_46, 0, 392, 2)) (Sum.inl 77) (some (rawBody392_49, 392, 3))

def rawBody392_51 : StackLang.HolProg 64 :=
.seq rawBody392_37 rawBody392_50

def rawBody392_52 : StackLang.HolProg 64 :=
.seq rawBody392_36 rawBody392_51

def rawBody392_53 : StackLang.HolProg 64 :=
.seq rawBody392_35 rawBody392_52

def rawBody392_54 : StackLang.HolProg 64 :=
.seq rawBody392_16 rawBody392_53

def rawBody392_55 : StackLang.HolProg 64 :=
.seq rawBody392_13 rawBody392_54

def rawBody392_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody392_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody392_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody392_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody392_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551424#64))

def rawBody392_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 20#64)))

def rawBody392_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody392_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1170#64)

def rawBody392_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody392_68 : StackLang.HolProg 64 :=
.seq rawBody392_66 rawBody392_67

def rawBody392_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody392_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody392_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody392_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 392 5

def rawBody392_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody392_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody392_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody392_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody392_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody392_79 : StackLang.HolProg 64 :=
.seq rawBody392_77 rawBody392_78

def rawBody392_80 : StackLang.HolProg 64 :=
.seq rawBody392_76 rawBody392_79

def rawBody392_81 : StackLang.HolProg 64 :=
.seq rawBody392_75 rawBody392_80

def rawBody392_82 : StackLang.HolProg 64 :=
.seq rawBody392_74 rawBody392_81

def rawBody392_83 : StackLang.HolProg 64 :=
.seq rawBody392_73 rawBody392_82

def rawBody392_84 : StackLang.HolProg 64 :=
.seq rawBody392_72 rawBody392_83

def rawBody392_85 : StackLang.HolProg 64 :=
.seq rawBody392_71 rawBody392_84

def rawBody392_86 : StackLang.HolProg 64 :=
.seq rawBody392_70 rawBody392_85

def rawBody392_87 : StackLang.HolProg 64 :=
.seq rawBody392_69 rawBody392_86

def rawBody392_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody392_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody392_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody392_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody392_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody392_95 : StackLang.HolProg 64 :=
.seq rawBody392_93 rawBody392_94

def rawBody392_96 : StackLang.HolProg 64 :=
.seq rawBody392_92 rawBody392_95

def rawBody392_97 : StackLang.HolProg 64 :=
.seq rawBody392_91 rawBody392_96

def rawBody392_98 : StackLang.HolProg 64 :=
.seq rawBody392_90 rawBody392_97

def rawBody392_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody392_100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody392_101 : StackLang.HolProg 64 :=
.seq rawBody392_99 rawBody392_100

def rawBody392_102 : StackLang.HolProg 64 :=
.call (some (rawBody392_98, 0, 392, 4)) (Sum.inl 77) (some (rawBody392_101, 392, 5))

def rawBody392_103 : StackLang.HolProg 64 :=
.seq rawBody392_89 rawBody392_102

def rawBody392_104 : StackLang.HolProg 64 :=
.seq rawBody392_88 rawBody392_103

def rawBody392_105 : StackLang.HolProg 64 :=
.seq rawBody392_87 rawBody392_104

def rawBody392_106 : StackLang.HolProg 64 :=
.seq rawBody392_68 rawBody392_105

def rawBody392_107 : StackLang.HolProg 64 :=
.seq rawBody392_65 rawBody392_106

def rawBody392_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody392_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody392_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody392_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody392_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551424#64))

def rawBody392_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody392_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody392_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody392_116 : StackLang.HolProg 64 :=
.seq rawBody392_114 rawBody392_115

def rawBody392_117 : StackLang.HolProg 64 :=
.seq rawBody392_113 rawBody392_116

def rawBody392_118 : StackLang.HolProg 64 :=
.seq rawBody392_112 rawBody392_117

def rawBody392_119 : StackLang.HolProg 64 :=
.seq rawBody392_111 rawBody392_118

def rawBody392_120 : StackLang.HolProg 64 :=
.seq rawBody392_110 rawBody392_119

def rawBody392_121 : StackLang.HolProg 64 :=
.seq rawBody392_109 rawBody392_120

def rawBody392_122 : StackLang.HolProg 64 :=
.seq rawBody392_108 rawBody392_121

def rawBody392_123 : StackLang.HolProg 64 :=
.seq rawBody392_107 rawBody392_122

def rawBody392_124 : StackLang.HolProg 64 :=
.seq rawBody392_64 rawBody392_123

def rawBody392_125 : StackLang.HolProg 64 :=
.seq rawBody392_63 rawBody392_124

def rawBody392_126 : StackLang.HolProg 64 :=
.seq rawBody392_62 rawBody392_125

def rawBody392_127 : StackLang.HolProg 64 :=
.seq rawBody392_61 rawBody392_126

def rawBody392_128 : StackLang.HolProg 64 :=
.seq rawBody392_60 rawBody392_127

def rawBody392_129 : StackLang.HolProg 64 :=
.seq rawBody392_59 rawBody392_128

def rawBody392_130 : StackLang.HolProg 64 :=
.seq rawBody392_58 rawBody392_129

def rawBody392_131 : StackLang.HolProg 64 :=
.seq rawBody392_57 rawBody392_130

def rawBody392_132 : StackLang.HolProg 64 :=
.seq rawBody392_56 rawBody392_131

def rawBody392_133 : StackLang.HolProg 64 :=
.seq rawBody392_55 rawBody392_132

def rawBody392_134 : StackLang.HolProg 64 :=
.seq rawBody392_12 rawBody392_133

def rawBody392_135 : StackLang.HolProg 64 :=
.seq rawBody392_9 rawBody392_134

def rawBody392_136 : StackLang.HolProg 64 :=
.seq rawBody392_8 rawBody392_135

def rawBody392_137 : StackLang.HolProg 64 :=
.seq rawBody392_7 rawBody392_136

def rawBody392_138 : StackLang.HolProg 64 :=
.seq rawBody392_6 rawBody392_137

def rawBody392_139 : StackLang.HolProg 64 :=
.seq rawBody392_5 rawBody392_138

def rawBody392_140 : StackLang.HolProg 64 :=
.seq rawBody392_4 rawBody392_139

def rawBody392_141 : StackLang.HolProg 64 :=
.seq rawBody392_3 rawBody392_140

def rawBody392_142 : StackLang.HolProg 64 :=
.seq rawBody392_0 rawBody392_141

def raw392 : StackLang.HolProg 64 := rawBody392_142
theorem raw392_eq : StackRawCall.compTop RawInfo.rawInfo (function392 (.list [])).1 = raw392 := by
  kernel_rfl
#print axioms raw392_eq
end InitECandidate.Proofs.BackendStages
