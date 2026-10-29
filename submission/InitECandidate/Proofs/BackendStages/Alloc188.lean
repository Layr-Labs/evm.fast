import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw188
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody188_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody188_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def AllocBody188_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody188_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody188_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody188_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody188_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody188_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody188_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def AllocBody188_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody188_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody188_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody188_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody188_20 : StackLang.HolProg 64 :=
.seq AllocBody188_18 AllocBody188_19

def AllocBody188_21 : StackLang.HolProg 64 :=
.seq AllocBody188_17 AllocBody188_20

def AllocBody188_22 : StackLang.HolProg 64 :=
.seq AllocBody188_16 AllocBody188_21

def AllocBody188_23 : StackLang.HolProg 64 :=
.seq AllocBody188_15 AllocBody188_22

def AllocBody188_24 : StackLang.HolProg 64 :=
.seq AllocBody188_14 AllocBody188_23

def AllocBody188_25 : StackLang.HolProg 64 :=
.seq AllocBody188_13 AllocBody188_24

def AllocBody188_26 : StackLang.HolProg 64 :=
.seq AllocBody188_12 AllocBody188_25

def AllocBody188_27 : StackLang.HolProg 64 :=
.seq AllocBody188_11 AllocBody188_26

def AllocBody188_28 : StackLang.HolProg 64 :=
.seq AllocBody188_10 AllocBody188_27

def AllocBody188_29 : StackLang.HolProg 64 :=
.seq AllocBody188_9 AllocBody188_28

def AllocBody188_30 : StackLang.HolProg 64 :=
.seq AllocBody188_8 AllocBody188_29

def AllocBody188_31 : StackLang.HolProg 64 :=
.seq AllocBody188_7 AllocBody188_30

def AllocBody188_32 : StackLang.HolProg 64 :=
.seq AllocBody188_6 AllocBody188_31

def AllocBody188_33 : StackLang.HolProg 64 :=
.seq AllocBody188_5 AllocBody188_32

def AllocBody188_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody188_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody188_33 AllocBody188_34

def AllocBody188_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody188_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody188_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def AllocBody188_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 80#64))

def AllocBody188_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody188_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody188_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody188_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody188_47 : StackLang.HolProg 64 :=
.seq AllocBody188_45 AllocBody188_46

def AllocBody188_48 : StackLang.HolProg 64 :=
.seq AllocBody188_44 AllocBody188_47

def AllocBody188_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 215#64)

def AllocBody188_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody188_52 : StackLang.HolProg 64 :=
.seq AllocBody188_50 AllocBody188_51

def AllocBody188_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody188_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody188_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody188_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 188 3

def AllocBody188_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody188_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody188_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody188_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody188_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody188_63 : StackLang.HolProg 64 :=
.seq AllocBody188_61 AllocBody188_62

def AllocBody188_64 : StackLang.HolProg 64 :=
.seq AllocBody188_60 AllocBody188_63

def AllocBody188_65 : StackLang.HolProg 64 :=
.seq AllocBody188_59 AllocBody188_64

def AllocBody188_66 : StackLang.HolProg 64 :=
.seq AllocBody188_58 AllocBody188_65

def AllocBody188_67 : StackLang.HolProg 64 :=
.seq AllocBody188_57 AllocBody188_66

def AllocBody188_68 : StackLang.HolProg 64 :=
.seq AllocBody188_56 AllocBody188_67

def AllocBody188_69 : StackLang.HolProg 64 :=
.seq AllocBody188_55 AllocBody188_68

def AllocBody188_70 : StackLang.HolProg 64 :=
.seq AllocBody188_54 AllocBody188_69

def AllocBody188_71 : StackLang.HolProg 64 :=
.seq AllocBody188_53 AllocBody188_70

def AllocBody188_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody188_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody188_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody188_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody188_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody188_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody188_80 : StackLang.HolProg 64 :=
.seq AllocBody188_78 AllocBody188_79

def AllocBody188_81 : StackLang.HolProg 64 :=
.seq AllocBody188_77 AllocBody188_80

def AllocBody188_82 : StackLang.HolProg 64 :=
.seq AllocBody188_76 AllocBody188_81

def AllocBody188_83 : StackLang.HolProg 64 :=
.seq AllocBody188_75 AllocBody188_82

def AllocBody188_84 : StackLang.HolProg 64 :=
.seq AllocBody188_74 AllocBody188_83

def AllocBody188_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody188_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody188_87 : StackLang.HolProg 64 :=
.seq AllocBody188_85 AllocBody188_86

def AllocBody188_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody188_89 : StackLang.HolProg 64 :=
.seq AllocBody188_87 AllocBody188_88

def AllocBody188_90 : StackLang.HolProg 64 :=
.call (some (AllocBody188_84, 0, 188, 2)) (Sum.inl 191) (some (AllocBody188_89, 188, 3))

def AllocBody188_91 : StackLang.HolProg 64 :=
.seq AllocBody188_73 AllocBody188_90

def AllocBody188_92 : StackLang.HolProg 64 :=
.seq AllocBody188_72 AllocBody188_91

def AllocBody188_93 : StackLang.HolProg 64 :=
.seq AllocBody188_71 AllocBody188_92

def AllocBody188_94 : StackLang.HolProg 64 :=
.seq AllocBody188_52 AllocBody188_93

def AllocBody188_95 : StackLang.HolProg 64 :=
.seq AllocBody188_49 AllocBody188_94

def AllocBody188_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody188_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_98 : StackLang.HolProg 64 :=
.seq AllocBody188_96 AllocBody188_97

def AllocBody188_99 : StackLang.HolProg 64 :=
.seq AllocBody188_95 AllocBody188_98

def AllocBody188_100 : StackLang.HolProg 64 :=
.seq AllocBody188_48 AllocBody188_99

def AllocBody188_101 : StackLang.HolProg 64 :=
.seq AllocBody188_43 AllocBody188_100

def AllocBody188_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody188_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_104 : StackLang.HolProg 64 :=
.seq AllocBody188_102 AllocBody188_103

def AllocBody188_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody188_101 AllocBody188_104

def AllocBody188_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody188_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def AllocBody188_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody188_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody188_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody188_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody188_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody188_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody188_118 : StackLang.HolProg 64 :=
.seq AllocBody188_116 AllocBody188_117

def AllocBody188_119 : StackLang.HolProg 64 :=
.seq AllocBody188_115 AllocBody188_118

def AllocBody188_120 : StackLang.HolProg 64 :=
.seq AllocBody188_114 AllocBody188_119

def AllocBody188_121 : StackLang.HolProg 64 :=
.seq AllocBody188_113 AllocBody188_120

def AllocBody188_122 : StackLang.HolProg 64 :=
.seq AllocBody188_112 AllocBody188_121

def AllocBody188_123 : StackLang.HolProg 64 :=
.seq AllocBody188_111 AllocBody188_122

def AllocBody188_124 : StackLang.HolProg 64 :=
.seq AllocBody188_110 AllocBody188_123

def AllocBody188_125 : StackLang.HolProg 64 :=
.seq AllocBody188_109 AllocBody188_124

def AllocBody188_126 : StackLang.HolProg 64 :=
.seq AllocBody188_108 AllocBody188_125

def AllocBody188_127 : StackLang.HolProg 64 :=
.seq AllocBody188_107 AllocBody188_126

def AllocBody188_128 : StackLang.HolProg 64 :=
.seq AllocBody188_106 AllocBody188_127

def AllocBody188_129 : StackLang.HolProg 64 :=
.seq AllocBody188_105 AllocBody188_128

def AllocBody188_130 : StackLang.HolProg 64 :=
.seq AllocBody188_42 AllocBody188_129

def AllocBody188_131 : StackLang.HolProg 64 :=
.seq AllocBody188_41 AllocBody188_130

def AllocBody188_132 : StackLang.HolProg 64 :=
.seq AllocBody188_40 AllocBody188_131

def AllocBody188_133 : StackLang.HolProg 64 :=
.seq AllocBody188_39 AllocBody188_132

def AllocBody188_134 : StackLang.HolProg 64 :=
.seq AllocBody188_38 AllocBody188_133

def AllocBody188_135 : StackLang.HolProg 64 :=
.seq AllocBody188_37 AllocBody188_134

def AllocBody188_136 : StackLang.HolProg 64 :=
.seq AllocBody188_36 AllocBody188_135

def AllocBody188_137 : StackLang.HolProg 64 :=
.seq AllocBody188_35 AllocBody188_136

def AllocBody188_138 : StackLang.HolProg 64 :=
.seq AllocBody188_4 AllocBody188_137

def AllocBody188_139 : StackLang.HolProg 64 :=
.seq AllocBody188_3 AllocBody188_138

def AllocBody188_140 : StackLang.HolProg 64 :=
.seq AllocBody188_2 AllocBody188_139

def AllocBody188_141 : StackLang.HolProg 64 :=
.seq AllocBody188_1 AllocBody188_140

def AllocBody188_142 : StackLang.HolProg 64 :=
.seq AllocBody188_0 AllocBody188_141

def Alloc188 : Nat × StackLang.HolProg 64 := (188, AllocBody188_142)
theorem Alloc188_eq : StackAlloc.progComp (188, raw188) = Alloc188 := by
  kernel_rfl
#print axioms Alloc188_eq
end InitECandidate.Proofs.BackendStages
