import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function640
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody640_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody640_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody640_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody640_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody640_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody640_6 : StackLang.HolProg 64 :=
.seq rawBody640_4 rawBody640_5

def rawBody640_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody640_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody640_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody640_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody640_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody640_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody640_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody640_17 : StackLang.HolProg 64 :=
.seq rawBody640_15 rawBody640_16

def rawBody640_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2593#64)

def rawBody640_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody640_21 : StackLang.HolProg 64 :=
.seq rawBody640_19 rawBody640_20

def rawBody640_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody640_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody640_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody640_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 640 3

def rawBody640_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody640_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody640_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody640_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody640_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody640_32 : StackLang.HolProg 64 :=
.seq rawBody640_30 rawBody640_31

def rawBody640_33 : StackLang.HolProg 64 :=
.seq rawBody640_29 rawBody640_32

def rawBody640_34 : StackLang.HolProg 64 :=
.seq rawBody640_28 rawBody640_33

def rawBody640_35 : StackLang.HolProg 64 :=
.seq rawBody640_27 rawBody640_34

def rawBody640_36 : StackLang.HolProg 64 :=
.seq rawBody640_26 rawBody640_35

def rawBody640_37 : StackLang.HolProg 64 :=
.seq rawBody640_25 rawBody640_36

def rawBody640_38 : StackLang.HolProg 64 :=
.seq rawBody640_24 rawBody640_37

def rawBody640_39 : StackLang.HolProg 64 :=
.seq rawBody640_23 rawBody640_38

def rawBody640_40 : StackLang.HolProg 64 :=
.seq rawBody640_22 rawBody640_39

def rawBody640_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody640_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody640_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody640_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody640_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody640_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody640_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody640_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody640_51 : StackLang.HolProg 64 :=
.seq rawBody640_49 rawBody640_50

def rawBody640_52 : StackLang.HolProg 64 :=
.seq rawBody640_48 rawBody640_51

def rawBody640_53 : StackLang.HolProg 64 :=
.seq rawBody640_47 rawBody640_52

def rawBody640_54 : StackLang.HolProg 64 :=
.seq rawBody640_46 rawBody640_53

def rawBody640_55 : StackLang.HolProg 64 :=
.seq rawBody640_45 rawBody640_54

def rawBody640_56 : StackLang.HolProg 64 :=
.seq rawBody640_44 rawBody640_55

def rawBody640_57 : StackLang.HolProg 64 :=
.seq rawBody640_43 rawBody640_56

def rawBody640_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody640_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody640_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody640_61 : StackLang.HolProg 64 :=
.seq rawBody640_59 rawBody640_60

def rawBody640_62 : StackLang.HolProg 64 :=
.seq rawBody640_58 rawBody640_61

def rawBody640_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody640_64 : StackLang.HolProg 64 :=
.seq rawBody640_62 rawBody640_63

def rawBody640_65 : StackLang.HolProg 64 :=
.call (some (rawBody640_57, 0, 640, 2)) (Sum.inl 137) (some (rawBody640_64, 640, 3))

def rawBody640_66 : StackLang.HolProg 64 :=
.seq rawBody640_42 rawBody640_65

def rawBody640_67 : StackLang.HolProg 64 :=
.seq rawBody640_41 rawBody640_66

def rawBody640_68 : StackLang.HolProg 64 :=
.seq rawBody640_40 rawBody640_67

def rawBody640_69 : StackLang.HolProg 64 :=
.seq rawBody640_21 rawBody640_68

def rawBody640_70 : StackLang.HolProg 64 :=
.seq rawBody640_18 rawBody640_69

def rawBody640_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody640_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody640_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody640_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody640_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody640_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody640_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody640_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def rawBody640_82 : StackLang.HolProg 64 :=
.seq rawBody640_80 rawBody640_81

def rawBody640_83 : StackLang.HolProg 64 :=
.seq rawBody640_79 rawBody640_82

def rawBody640_84 : StackLang.HolProg 64 :=
.seq rawBody640_78 rawBody640_83

def rawBody640_85 : StackLang.HolProg 64 :=
.seq rawBody640_77 rawBody640_84

def rawBody640_86 : StackLang.HolProg 64 :=
.seq rawBody640_76 rawBody640_85

def rawBody640_87 : StackLang.HolProg 64 :=
.seq rawBody640_75 rawBody640_86

def rawBody640_88 : StackLang.HolProg 64 :=
.seq rawBody640_74 rawBody640_87

def rawBody640_89 : StackLang.HolProg 64 :=
.seq rawBody640_73 rawBody640_88

def rawBody640_90 : StackLang.HolProg 64 :=
.seq rawBody640_72 rawBody640_89

def rawBody640_91 : StackLang.HolProg 64 :=
.seq rawBody640_71 rawBody640_90

def rawBody640_92 : StackLang.HolProg 64 :=
.seq rawBody640_70 rawBody640_91

def rawBody640_93 : StackLang.HolProg 64 :=
.seq rawBody640_17 rawBody640_92

def rawBody640_94 : StackLang.HolProg 64 :=
.seq rawBody640_14 rawBody640_93

def rawBody640_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody640_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody640_94 rawBody640_95

def rawBody640_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody640_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody640_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody640_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def rawBody640_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody640_103 : StackLang.HolProg 64 :=
.seq rawBody640_101 rawBody640_102

def rawBody640_104 : StackLang.HolProg 64 :=
.seq rawBody640_100 rawBody640_103

def rawBody640_105 : StackLang.HolProg 64 :=
.seq rawBody640_99 rawBody640_104

def rawBody640_106 : StackLang.HolProg 64 :=
.seq rawBody640_98 rawBody640_105

def rawBody640_107 : StackLang.HolProg 64 :=
.seq rawBody640_97 rawBody640_106

def rawBody640_108 : StackLang.HolProg 64 :=
.seq rawBody640_96 rawBody640_107

def rawBody640_109 : StackLang.HolProg 64 :=
.seq rawBody640_13 rawBody640_108

def rawBody640_110 : StackLang.HolProg 64 :=
.seq rawBody640_12 rawBody640_109

def rawBody640_111 : StackLang.HolProg 64 :=
.seq rawBody640_11 rawBody640_110

def rawBody640_112 : StackLang.HolProg 64 :=
.seq rawBody640_10 rawBody640_111

def rawBody640_113 : StackLang.HolProg 64 :=
.seq rawBody640_9 rawBody640_112

def rawBody640_114 : StackLang.HolProg 64 :=
.seq rawBody640_8 rawBody640_113

def rawBody640_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody640_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody640_117 : StackLang.HolProg 64 :=
.seq rawBody640_115 rawBody640_116

def rawBody640_118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody640_114 rawBody640_117

def rawBody640_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody640_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody640_121 : StackLang.HolProg 64 :=
.seq rawBody640_119 rawBody640_120

def rawBody640_122 : StackLang.HolProg 64 :=
.seq rawBody640_118 rawBody640_121

def rawBody640_123 : StackLang.HolProg 64 :=
.seq rawBody640_7 rawBody640_122

def rawBody640_124 : StackLang.HolProg 64 :=
.loop rawBody640_123

def rawBody640_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody640_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody640_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody640_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody640_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody640_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody640_131 : StackLang.HolProg 64 :=
.seq rawBody640_129 rawBody640_130

def rawBody640_132 : StackLang.HolProg 64 :=
.seq rawBody640_128 rawBody640_131

def rawBody640_133 : StackLang.HolProg 64 :=
.seq rawBody640_127 rawBody640_132

def rawBody640_134 : StackLang.HolProg 64 :=
.seq rawBody640_126 rawBody640_133

def rawBody640_135 : StackLang.HolProg 64 :=
.seq rawBody640_125 rawBody640_134

def rawBody640_136 : StackLang.HolProg 64 :=
.seq rawBody640_124 rawBody640_135

def rawBody640_137 : StackLang.HolProg 64 :=
.seq rawBody640_6 rawBody640_136

def rawBody640_138 : StackLang.HolProg 64 :=
.seq rawBody640_3 rawBody640_137

def rawBody640_139 : StackLang.HolProg 64 :=
.seq rawBody640_2 rawBody640_138

def rawBody640_140 : StackLang.HolProg 64 :=
.seq rawBody640_1 rawBody640_139

def rawBody640_141 : StackLang.HolProg 64 :=
.seq rawBody640_0 rawBody640_140

def raw640 : StackLang.HolProg 64 := rawBody640_141
theorem raw640_eq : StackRawCall.compTop RawInfo.rawInfo (function640 (.list [])).1 = raw640 := by
  kernel_rfl
#print axioms raw640_eq
end InitECandidate.Proofs.BackendStages
