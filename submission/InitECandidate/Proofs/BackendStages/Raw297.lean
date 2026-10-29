import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function297
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody297_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody297_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody297_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 56#64)

def rawBody297_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody297_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody297_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody297_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody297_7 : StackLang.HolProg 64 :=
.seq rawBody297_5 rawBody297_6

def rawBody297_8 : StackLang.HolProg 64 :=
.seq rawBody297_4 rawBody297_7

def rawBody297_9 : StackLang.HolProg 64 :=
.seq rawBody297_3 rawBody297_8

def rawBody297_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 803#64)

def rawBody297_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody297_13 : StackLang.HolProg 64 :=
.seq rawBody297_11 rawBody297_12

def rawBody297_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody297_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody297_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody297_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 297 3

def rawBody297_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody297_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody297_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody297_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody297_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody297_24 : StackLang.HolProg 64 :=
.seq rawBody297_22 rawBody297_23

def rawBody297_25 : StackLang.HolProg 64 :=
.seq rawBody297_21 rawBody297_24

def rawBody297_26 : StackLang.HolProg 64 :=
.seq rawBody297_20 rawBody297_25

def rawBody297_27 : StackLang.HolProg 64 :=
.seq rawBody297_19 rawBody297_26

def rawBody297_28 : StackLang.HolProg 64 :=
.seq rawBody297_18 rawBody297_27

def rawBody297_29 : StackLang.HolProg 64 :=
.seq rawBody297_17 rawBody297_28

def rawBody297_30 : StackLang.HolProg 64 :=
.seq rawBody297_16 rawBody297_29

def rawBody297_31 : StackLang.HolProg 64 :=
.seq rawBody297_15 rawBody297_30

def rawBody297_32 : StackLang.HolProg 64 :=
.seq rawBody297_14 rawBody297_31

def rawBody297_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody297_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody297_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody297_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody297_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody297_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody297_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody297_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody297_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody297_44 : StackLang.HolProg 64 :=
.seq rawBody297_42 rawBody297_43

def rawBody297_45 : StackLang.HolProg 64 :=
.seq rawBody297_41 rawBody297_44

def rawBody297_46 : StackLang.HolProg 64 :=
.seq rawBody297_40 rawBody297_45

def rawBody297_47 : StackLang.HolProg 64 :=
.seq rawBody297_39 rawBody297_46

def rawBody297_48 : StackLang.HolProg 64 :=
.seq rawBody297_38 rawBody297_47

def rawBody297_49 : StackLang.HolProg 64 :=
.seq rawBody297_37 rawBody297_48

def rawBody297_50 : StackLang.HolProg 64 :=
.seq rawBody297_36 rawBody297_49

def rawBody297_51 : StackLang.HolProg 64 :=
.seq rawBody297_35 rawBody297_50

def rawBody297_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody297_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody297_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody297_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody297_56 : StackLang.HolProg 64 :=
.seq rawBody297_54 rawBody297_55

def rawBody297_57 : StackLang.HolProg 64 :=
.seq rawBody297_53 rawBody297_56

def rawBody297_58 : StackLang.HolProg 64 :=
.seq rawBody297_52 rawBody297_57

def rawBody297_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody297_60 : StackLang.HolProg 64 :=
.seq rawBody297_58 rawBody297_59

def rawBody297_61 : StackLang.HolProg 64 :=
.call (some (rawBody297_51, 0, 297, 2)) (Sum.inl 68) (some (rawBody297_60, 297, 3))

def rawBody297_62 : StackLang.HolProg 64 :=
.seq rawBody297_34 rawBody297_61

def rawBody297_63 : StackLang.HolProg 64 :=
.seq rawBody297_33 rawBody297_62

def rawBody297_64 : StackLang.HolProg 64 :=
.seq rawBody297_32 rawBody297_63

def rawBody297_65 : StackLang.HolProg 64 :=
.seq rawBody297_13 rawBody297_64

def rawBody297_66 : StackLang.HolProg 64 :=
.seq rawBody297_10 rawBody297_65

def rawBody297_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody297_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody297_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody297_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody297_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody297_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody297_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody297_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody297_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody297_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody297_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody297_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody297_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody297_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody297_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def rawBody297_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody297_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody297_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody297_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody297_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody297_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody297_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody297_102 : StackLang.HolProg 64 :=
.seq rawBody297_100 rawBody297_101

def rawBody297_103 : StackLang.HolProg 64 :=
.seq rawBody297_99 rawBody297_102

def rawBody297_104 : StackLang.HolProg 64 :=
.seq rawBody297_98 rawBody297_103

def rawBody297_105 : StackLang.HolProg 64 :=
.seq rawBody297_97 rawBody297_104

def rawBody297_106 : StackLang.HolProg 64 :=
.seq rawBody297_96 rawBody297_105

def rawBody297_107 : StackLang.HolProg 64 :=
.seq rawBody297_95 rawBody297_106

def rawBody297_108 : StackLang.HolProg 64 :=
.seq rawBody297_94 rawBody297_107

def rawBody297_109 : StackLang.HolProg 64 :=
.seq rawBody297_93 rawBody297_108

def rawBody297_110 : StackLang.HolProg 64 :=
.seq rawBody297_92 rawBody297_109

def rawBody297_111 : StackLang.HolProg 64 :=
.seq rawBody297_91 rawBody297_110

def rawBody297_112 : StackLang.HolProg 64 :=
.seq rawBody297_90 rawBody297_111

def rawBody297_113 : StackLang.HolProg 64 :=
.seq rawBody297_89 rawBody297_112

def rawBody297_114 : StackLang.HolProg 64 :=
.seq rawBody297_88 rawBody297_113

def rawBody297_115 : StackLang.HolProg 64 :=
.seq rawBody297_87 rawBody297_114

def rawBody297_116 : StackLang.HolProg 64 :=
.seq rawBody297_86 rawBody297_115

def rawBody297_117 : StackLang.HolProg 64 :=
.seq rawBody297_85 rawBody297_116

def rawBody297_118 : StackLang.HolProg 64 :=
.seq rawBody297_84 rawBody297_117

def rawBody297_119 : StackLang.HolProg 64 :=
.seq rawBody297_83 rawBody297_118

def rawBody297_120 : StackLang.HolProg 64 :=
.seq rawBody297_82 rawBody297_119

def rawBody297_121 : StackLang.HolProg 64 :=
.seq rawBody297_81 rawBody297_120

def rawBody297_122 : StackLang.HolProg 64 :=
.seq rawBody297_80 rawBody297_121

def rawBody297_123 : StackLang.HolProg 64 :=
.seq rawBody297_79 rawBody297_122

def rawBody297_124 : StackLang.HolProg 64 :=
.seq rawBody297_78 rawBody297_123

def rawBody297_125 : StackLang.HolProg 64 :=
.seq rawBody297_77 rawBody297_124

def rawBody297_126 : StackLang.HolProg 64 :=
.seq rawBody297_76 rawBody297_125

def rawBody297_127 : StackLang.HolProg 64 :=
.seq rawBody297_75 rawBody297_126

def rawBody297_128 : StackLang.HolProg 64 :=
.seq rawBody297_74 rawBody297_127

def rawBody297_129 : StackLang.HolProg 64 :=
.seq rawBody297_73 rawBody297_128

def rawBody297_130 : StackLang.HolProg 64 :=
.seq rawBody297_72 rawBody297_129

def rawBody297_131 : StackLang.HolProg 64 :=
.seq rawBody297_71 rawBody297_130

def rawBody297_132 : StackLang.HolProg 64 :=
.seq rawBody297_70 rawBody297_131

def rawBody297_133 : StackLang.HolProg 64 :=
.seq rawBody297_69 rawBody297_132

def rawBody297_134 : StackLang.HolProg 64 :=
.seq rawBody297_68 rawBody297_133

def rawBody297_135 : StackLang.HolProg 64 :=
.seq rawBody297_67 rawBody297_134

def rawBody297_136 : StackLang.HolProg 64 :=
.seq rawBody297_66 rawBody297_135

def rawBody297_137 : StackLang.HolProg 64 :=
.seq rawBody297_9 rawBody297_136

def rawBody297_138 : StackLang.HolProg 64 :=
.seq rawBody297_2 rawBody297_137

def rawBody297_139 : StackLang.HolProg 64 :=
.seq rawBody297_1 rawBody297_138

def rawBody297_140 : StackLang.HolProg 64 :=
.seq rawBody297_0 rawBody297_139

def raw297 : StackLang.HolProg 64 := rawBody297_140
theorem raw297_eq : StackRawCall.compTop RawInfo.rawInfo (function297 (.list [])).1 = raw297 := by
  kernel_rfl
#print axioms raw297_eq
end InitECandidate.Proofs.BackendStages
