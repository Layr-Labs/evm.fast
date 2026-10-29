import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function291
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody291_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody291_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody291_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody291_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody291_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody291_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody291_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody291_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody291_8 : StackLang.HolProg 64 :=
.seq rawBody291_6 rawBody291_7

def rawBody291_9 : StackLang.HolProg 64 :=
.seq rawBody291_5 rawBody291_8

def rawBody291_10 : StackLang.HolProg 64 :=
.seq rawBody291_4 rawBody291_9

def rawBody291_11 : StackLang.HolProg 64 :=
.seq rawBody291_3 rawBody291_10

def rawBody291_12 : StackLang.HolProg 64 :=
.seq rawBody291_2 rawBody291_11

def rawBody291_13 : StackLang.HolProg 64 :=
.seq rawBody291_1 rawBody291_12

def rawBody291_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 793#64)

def rawBody291_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody291_17 : StackLang.HolProg 64 :=
.seq rawBody291_15 rawBody291_16

def rawBody291_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody291_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody291_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody291_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 291 3

def rawBody291_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody291_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody291_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody291_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody291_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody291_28 : StackLang.HolProg 64 :=
.seq rawBody291_26 rawBody291_27

def rawBody291_29 : StackLang.HolProg 64 :=
.seq rawBody291_25 rawBody291_28

def rawBody291_30 : StackLang.HolProg 64 :=
.seq rawBody291_24 rawBody291_29

def rawBody291_31 : StackLang.HolProg 64 :=
.seq rawBody291_23 rawBody291_30

def rawBody291_32 : StackLang.HolProg 64 :=
.seq rawBody291_22 rawBody291_31

def rawBody291_33 : StackLang.HolProg 64 :=
.seq rawBody291_21 rawBody291_32

def rawBody291_34 : StackLang.HolProg 64 :=
.seq rawBody291_20 rawBody291_33

def rawBody291_35 : StackLang.HolProg 64 :=
.seq rawBody291_19 rawBody291_34

def rawBody291_36 : StackLang.HolProg 64 :=
.seq rawBody291_18 rawBody291_35

def rawBody291_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody291_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody291_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody291_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody291_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody291_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody291_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody291_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody291_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 2

def rawBody291_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody291_49 : StackLang.HolProg 64 :=
.seq rawBody291_47 rawBody291_48

def rawBody291_50 : StackLang.HolProg 64 :=
.seq rawBody291_46 rawBody291_49

def rawBody291_51 : StackLang.HolProg 64 :=
.seq rawBody291_45 rawBody291_50

def rawBody291_52 : StackLang.HolProg 64 :=
.seq rawBody291_44 rawBody291_51

def rawBody291_53 : StackLang.HolProg 64 :=
.seq rawBody291_43 rawBody291_52

def rawBody291_54 : StackLang.HolProg 64 :=
.seq rawBody291_42 rawBody291_53

def rawBody291_55 : StackLang.HolProg 64 :=
.seq rawBody291_41 rawBody291_54

def rawBody291_56 : StackLang.HolProg 64 :=
.seq rawBody291_40 rawBody291_55

def rawBody291_57 : StackLang.HolProg 64 :=
.seq rawBody291_39 rawBody291_56

def rawBody291_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody291_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody291_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody291_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 2

def rawBody291_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody291_63 : StackLang.HolProg 64 :=
.seq rawBody291_61 rawBody291_62

def rawBody291_64 : StackLang.HolProg 64 :=
.seq rawBody291_60 rawBody291_63

def rawBody291_65 : StackLang.HolProg 64 :=
.seq rawBody291_59 rawBody291_64

def rawBody291_66 : StackLang.HolProg 64 :=
.seq rawBody291_58 rawBody291_65

def rawBody291_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody291_68 : StackLang.HolProg 64 :=
.seq rawBody291_66 rawBody291_67

def rawBody291_69 : StackLang.HolProg 64 :=
.call (some (rawBody291_57, 0, 291, 2)) (Sum.inl 92) (some (rawBody291_68, 291, 3))

def rawBody291_70 : StackLang.HolProg 64 :=
.seq rawBody291_38 rawBody291_69

def rawBody291_71 : StackLang.HolProg 64 :=
.seq rawBody291_37 rawBody291_70

def rawBody291_72 : StackLang.HolProg 64 :=
.seq rawBody291_36 rawBody291_71

def rawBody291_73 : StackLang.HolProg 64 :=
.seq rawBody291_17 rawBody291_72

def rawBody291_74 : StackLang.HolProg 64 :=
.seq rawBody291_14 rawBody291_73

def rawBody291_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody291_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody291_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody291_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody291_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody291_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody291_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody291_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody291_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody291_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody291_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def rawBody291_92 : StackLang.HolProg 64 :=
.seq rawBody291_90 rawBody291_91

def rawBody291_93 : StackLang.HolProg 64 :=
.seq rawBody291_89 rawBody291_92

def rawBody291_94 : StackLang.HolProg 64 :=
.seq rawBody291_88 rawBody291_93

def rawBody291_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody291_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody291_94 rawBody291_95

def rawBody291_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody291_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody291_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody291_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody291_103 : StackLang.HolProg 64 :=
.seq rawBody291_101 rawBody291_102

def rawBody291_104 : StackLang.HolProg 64 :=
.seq rawBody291_100 rawBody291_103

def rawBody291_105 : StackLang.HolProg 64 :=
.seq rawBody291_99 rawBody291_104

def rawBody291_106 : StackLang.HolProg 64 :=
.seq rawBody291_98 rawBody291_105

def rawBody291_107 : StackLang.HolProg 64 :=
.seq rawBody291_97 rawBody291_106

def rawBody291_108 : StackLang.HolProg 64 :=
.seq rawBody291_96 rawBody291_107

def rawBody291_109 : StackLang.HolProg 64 :=
.seq rawBody291_87 rawBody291_108

def rawBody291_110 : StackLang.HolProg 64 :=
.seq rawBody291_86 rawBody291_109

def rawBody291_111 : StackLang.HolProg 64 :=
.seq rawBody291_85 rawBody291_110

def rawBody291_112 : StackLang.HolProg 64 :=
.seq rawBody291_84 rawBody291_111

def rawBody291_113 : StackLang.HolProg 64 :=
.seq rawBody291_83 rawBody291_112

def rawBody291_114 : StackLang.HolProg 64 :=
.seq rawBody291_82 rawBody291_113

def rawBody291_115 : StackLang.HolProg 64 :=
.seq rawBody291_81 rawBody291_114

def rawBody291_116 : StackLang.HolProg 64 :=
.seq rawBody291_80 rawBody291_115

def rawBody291_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody291_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody291_120 : StackLang.HolProg 64 :=
.seq rawBody291_118 rawBody291_119

def rawBody291_121 : StackLang.HolProg 64 :=
.seq rawBody291_117 rawBody291_120

def rawBody291_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) rawBody291_116 rawBody291_121

def rawBody291_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody291_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody291_125 : StackLang.HolProg 64 :=
.seq rawBody291_123 rawBody291_124

def rawBody291_126 : StackLang.HolProg 64 :=
.seq rawBody291_122 rawBody291_125

def rawBody291_127 : StackLang.HolProg 64 :=
.seq rawBody291_79 rawBody291_126

def rawBody291_128 : StackLang.HolProg 64 :=
.loop rawBody291_127

def rawBody291_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody291_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody291_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody291_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def rawBody291_133 : StackLang.HolProg 64 :=
.seq rawBody291_131 rawBody291_132

def rawBody291_134 : StackLang.HolProg 64 :=
.seq rawBody291_130 rawBody291_133

def rawBody291_135 : StackLang.HolProg 64 :=
.seq rawBody291_129 rawBody291_134

def rawBody291_136 : StackLang.HolProg 64 :=
.seq rawBody291_128 rawBody291_135

def rawBody291_137 : StackLang.HolProg 64 :=
.seq rawBody291_78 rawBody291_136

def rawBody291_138 : StackLang.HolProg 64 :=
.seq rawBody291_77 rawBody291_137

def rawBody291_139 : StackLang.HolProg 64 :=
.seq rawBody291_76 rawBody291_138

def rawBody291_140 : StackLang.HolProg 64 :=
.seq rawBody291_75 rawBody291_139

def rawBody291_141 : StackLang.HolProg 64 :=
.seq rawBody291_74 rawBody291_140

def rawBody291_142 : StackLang.HolProg 64 :=
.seq rawBody291_13 rawBody291_141

def rawBody291_143 : StackLang.HolProg 64 :=
.seq rawBody291_0 rawBody291_142

def raw291 : StackLang.HolProg 64 := rawBody291_143
theorem raw291_eq : StackRawCall.compTop RawInfo.rawInfo (function291 (.list [])).1 = raw291 := by
  kernel_rfl
#print axioms raw291_eq
end InitECandidate.Proofs.BackendStages
