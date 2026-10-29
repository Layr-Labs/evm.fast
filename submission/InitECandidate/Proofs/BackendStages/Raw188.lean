import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function188
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody188_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody188_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def rawBody188_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody188_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody188_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def rawBody188_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody188_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody188_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody188_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def rawBody188_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody188_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody188_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody188_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody188_20 : StackLang.HolProg 64 :=
.seq rawBody188_18 rawBody188_19

def rawBody188_21 : StackLang.HolProg 64 :=
.seq rawBody188_17 rawBody188_20

def rawBody188_22 : StackLang.HolProg 64 :=
.seq rawBody188_16 rawBody188_21

def rawBody188_23 : StackLang.HolProg 64 :=
.seq rawBody188_15 rawBody188_22

def rawBody188_24 : StackLang.HolProg 64 :=
.seq rawBody188_14 rawBody188_23

def rawBody188_25 : StackLang.HolProg 64 :=
.seq rawBody188_13 rawBody188_24

def rawBody188_26 : StackLang.HolProg 64 :=
.seq rawBody188_12 rawBody188_25

def rawBody188_27 : StackLang.HolProg 64 :=
.seq rawBody188_11 rawBody188_26

def rawBody188_28 : StackLang.HolProg 64 :=
.seq rawBody188_10 rawBody188_27

def rawBody188_29 : StackLang.HolProg 64 :=
.seq rawBody188_9 rawBody188_28

def rawBody188_30 : StackLang.HolProg 64 :=
.seq rawBody188_8 rawBody188_29

def rawBody188_31 : StackLang.HolProg 64 :=
.seq rawBody188_7 rawBody188_30

def rawBody188_32 : StackLang.HolProg 64 :=
.seq rawBody188_6 rawBody188_31

def rawBody188_33 : StackLang.HolProg 64 :=
.seq rawBody188_5 rawBody188_32

def rawBody188_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody188_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody188_33 rawBody188_34

def rawBody188_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody188_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody188_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def rawBody188_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 80#64))

def rawBody188_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody188_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody188_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody188_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody188_47 : StackLang.HolProg 64 :=
.seq rawBody188_45 rawBody188_46

def rawBody188_48 : StackLang.HolProg 64 :=
.seq rawBody188_44 rawBody188_47

def rawBody188_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 215#64)

def rawBody188_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody188_52 : StackLang.HolProg 64 :=
.seq rawBody188_50 rawBody188_51

def rawBody188_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody188_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody188_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody188_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 188 3

def rawBody188_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody188_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody188_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody188_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody188_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody188_63 : StackLang.HolProg 64 :=
.seq rawBody188_61 rawBody188_62

def rawBody188_64 : StackLang.HolProg 64 :=
.seq rawBody188_60 rawBody188_63

def rawBody188_65 : StackLang.HolProg 64 :=
.seq rawBody188_59 rawBody188_64

def rawBody188_66 : StackLang.HolProg 64 :=
.seq rawBody188_58 rawBody188_65

def rawBody188_67 : StackLang.HolProg 64 :=
.seq rawBody188_57 rawBody188_66

def rawBody188_68 : StackLang.HolProg 64 :=
.seq rawBody188_56 rawBody188_67

def rawBody188_69 : StackLang.HolProg 64 :=
.seq rawBody188_55 rawBody188_68

def rawBody188_70 : StackLang.HolProg 64 :=
.seq rawBody188_54 rawBody188_69

def rawBody188_71 : StackLang.HolProg 64 :=
.seq rawBody188_53 rawBody188_70

def rawBody188_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody188_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody188_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody188_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody188_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody188_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody188_80 : StackLang.HolProg 64 :=
.seq rawBody188_78 rawBody188_79

def rawBody188_81 : StackLang.HolProg 64 :=
.seq rawBody188_77 rawBody188_80

def rawBody188_82 : StackLang.HolProg 64 :=
.seq rawBody188_76 rawBody188_81

def rawBody188_83 : StackLang.HolProg 64 :=
.seq rawBody188_75 rawBody188_82

def rawBody188_84 : StackLang.HolProg 64 :=
.seq rawBody188_74 rawBody188_83

def rawBody188_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody188_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody188_87 : StackLang.HolProg 64 :=
.seq rawBody188_85 rawBody188_86

def rawBody188_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody188_89 : StackLang.HolProg 64 :=
.seq rawBody188_87 rawBody188_88

def rawBody188_90 : StackLang.HolProg 64 :=
.call (some (rawBody188_84, 0, 188, 2)) (Sum.inl 191) (some (rawBody188_89, 188, 3))

def rawBody188_91 : StackLang.HolProg 64 :=
.seq rawBody188_73 rawBody188_90

def rawBody188_92 : StackLang.HolProg 64 :=
.seq rawBody188_72 rawBody188_91

def rawBody188_93 : StackLang.HolProg 64 :=
.seq rawBody188_71 rawBody188_92

def rawBody188_94 : StackLang.HolProg 64 :=
.seq rawBody188_52 rawBody188_93

def rawBody188_95 : StackLang.HolProg 64 :=
.seq rawBody188_49 rawBody188_94

def rawBody188_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody188_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_98 : StackLang.HolProg 64 :=
.seq rawBody188_96 rawBody188_97

def rawBody188_99 : StackLang.HolProg 64 :=
.seq rawBody188_95 rawBody188_98

def rawBody188_100 : StackLang.HolProg 64 :=
.seq rawBody188_48 rawBody188_99

def rawBody188_101 : StackLang.HolProg 64 :=
.seq rawBody188_43 rawBody188_100

def rawBody188_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody188_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_104 : StackLang.HolProg 64 :=
.seq rawBody188_102 rawBody188_103

def rawBody188_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody188_101 rawBody188_104

def rawBody188_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody188_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def rawBody188_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody188_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody188_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody188_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody188_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody188_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody188_118 : StackLang.HolProg 64 :=
.seq rawBody188_116 rawBody188_117

def rawBody188_119 : StackLang.HolProg 64 :=
.seq rawBody188_115 rawBody188_118

def rawBody188_120 : StackLang.HolProg 64 :=
.seq rawBody188_114 rawBody188_119

def rawBody188_121 : StackLang.HolProg 64 :=
.seq rawBody188_113 rawBody188_120

def rawBody188_122 : StackLang.HolProg 64 :=
.seq rawBody188_112 rawBody188_121

def rawBody188_123 : StackLang.HolProg 64 :=
.seq rawBody188_111 rawBody188_122

def rawBody188_124 : StackLang.HolProg 64 :=
.seq rawBody188_110 rawBody188_123

def rawBody188_125 : StackLang.HolProg 64 :=
.seq rawBody188_109 rawBody188_124

def rawBody188_126 : StackLang.HolProg 64 :=
.seq rawBody188_108 rawBody188_125

def rawBody188_127 : StackLang.HolProg 64 :=
.seq rawBody188_107 rawBody188_126

def rawBody188_128 : StackLang.HolProg 64 :=
.seq rawBody188_106 rawBody188_127

def rawBody188_129 : StackLang.HolProg 64 :=
.seq rawBody188_105 rawBody188_128

def rawBody188_130 : StackLang.HolProg 64 :=
.seq rawBody188_42 rawBody188_129

def rawBody188_131 : StackLang.HolProg 64 :=
.seq rawBody188_41 rawBody188_130

def rawBody188_132 : StackLang.HolProg 64 :=
.seq rawBody188_40 rawBody188_131

def rawBody188_133 : StackLang.HolProg 64 :=
.seq rawBody188_39 rawBody188_132

def rawBody188_134 : StackLang.HolProg 64 :=
.seq rawBody188_38 rawBody188_133

def rawBody188_135 : StackLang.HolProg 64 :=
.seq rawBody188_37 rawBody188_134

def rawBody188_136 : StackLang.HolProg 64 :=
.seq rawBody188_36 rawBody188_135

def rawBody188_137 : StackLang.HolProg 64 :=
.seq rawBody188_35 rawBody188_136

def rawBody188_138 : StackLang.HolProg 64 :=
.seq rawBody188_4 rawBody188_137

def rawBody188_139 : StackLang.HolProg 64 :=
.seq rawBody188_3 rawBody188_138

def rawBody188_140 : StackLang.HolProg 64 :=
.seq rawBody188_2 rawBody188_139

def rawBody188_141 : StackLang.HolProg 64 :=
.seq rawBody188_1 rawBody188_140

def rawBody188_142 : StackLang.HolProg 64 :=
.seq rawBody188_0 rawBody188_141

def raw188 : StackLang.HolProg 64 := rawBody188_142
theorem raw188_eq : StackRawCall.compTop RawInfo.rawInfo (function188 (.list [])).1 = raw188 := by
  kernel_rfl
#print axioms raw188_eq
end InitECandidate.Proofs.BackendStages
