import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw194
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody194_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody194_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody194_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody194_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody194_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody194_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody194_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody194_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody194_8 : StackLang.HolProg 64 :=
.seq AllocBody194_6 AllocBody194_7

def AllocBody194_9 : StackLang.HolProg 64 :=
.seq AllocBody194_5 AllocBody194_8

def AllocBody194_10 : StackLang.HolProg 64 :=
.seq AllocBody194_4 AllocBody194_9

def AllocBody194_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody194_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody194_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody194_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody194_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody194_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody194_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody194_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody194_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def AllocBody194_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody194_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody194_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody194_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody194_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody194_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody194_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody194_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody194_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody194_29 : StackLang.HolProg 64 :=
.seq AllocBody194_27 AllocBody194_28

def AllocBody194_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody194_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 233#64)

def AllocBody194_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody194_33 : StackLang.HolProg 64 :=
.seq AllocBody194_31 AllocBody194_32

def AllocBody194_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody194_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody194_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody194_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 194 3

def AllocBody194_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody194_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody194_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody194_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody194_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody194_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody194_44 : StackLang.HolProg 64 :=
.seq AllocBody194_42 AllocBody194_43

def AllocBody194_45 : StackLang.HolProg 64 :=
.seq AllocBody194_41 AllocBody194_44

def AllocBody194_46 : StackLang.HolProg 64 :=
.seq AllocBody194_40 AllocBody194_45

def AllocBody194_47 : StackLang.HolProg 64 :=
.seq AllocBody194_39 AllocBody194_46

def AllocBody194_48 : StackLang.HolProg 64 :=
.seq AllocBody194_38 AllocBody194_47

def AllocBody194_49 : StackLang.HolProg 64 :=
.seq AllocBody194_37 AllocBody194_48

def AllocBody194_50 : StackLang.HolProg 64 :=
.seq AllocBody194_36 AllocBody194_49

def AllocBody194_51 : StackLang.HolProg 64 :=
.seq AllocBody194_35 AllocBody194_50

def AllocBody194_52 : StackLang.HolProg 64 :=
.seq AllocBody194_34 AllocBody194_51

def AllocBody194_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody194_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody194_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody194_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody194_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody194_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody194_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody194_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody194_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody194_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody194_63 : StackLang.HolProg 64 :=
.seq AllocBody194_61 AllocBody194_62

def AllocBody194_64 : StackLang.HolProg 64 :=
.seq AllocBody194_60 AllocBody194_63

def AllocBody194_65 : StackLang.HolProg 64 :=
.seq AllocBody194_59 AllocBody194_64

def AllocBody194_66 : StackLang.HolProg 64 :=
.seq AllocBody194_58 AllocBody194_65

def AllocBody194_67 : StackLang.HolProg 64 :=
.seq AllocBody194_57 AllocBody194_66

def AllocBody194_68 : StackLang.HolProg 64 :=
.seq AllocBody194_56 AllocBody194_67

def AllocBody194_69 : StackLang.HolProg 64 :=
.seq AllocBody194_55 AllocBody194_68

def AllocBody194_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody194_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody194_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody194_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody194_74 : StackLang.HolProg 64 :=
.seq AllocBody194_72 AllocBody194_73

def AllocBody194_75 : StackLang.HolProg 64 :=
.seq AllocBody194_71 AllocBody194_74

def AllocBody194_76 : StackLang.HolProg 64 :=
.seq AllocBody194_70 AllocBody194_75

def AllocBody194_77 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody194_78 : StackLang.HolProg 64 :=
.seq AllocBody194_76 AllocBody194_77

def AllocBody194_79 : StackLang.HolProg 64 :=
.call (some (AllocBody194_69, 0, 194, 2)) (Sum.inl 193) (some (AllocBody194_78, 194, 3))

def AllocBody194_80 : StackLang.HolProg 64 :=
.seq AllocBody194_54 AllocBody194_79

def AllocBody194_81 : StackLang.HolProg 64 :=
.seq AllocBody194_53 AllocBody194_80

def AllocBody194_82 : StackLang.HolProg 64 :=
.seq AllocBody194_52 AllocBody194_81

def AllocBody194_83 : StackLang.HolProg 64 :=
.seq AllocBody194_33 AllocBody194_82

def AllocBody194_84 : StackLang.HolProg 64 :=
.seq AllocBody194_30 AllocBody194_83

def AllocBody194_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody194_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody194_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody194_88 : StackLang.HolProg 64 :=
.seq AllocBody194_86 AllocBody194_87

def AllocBody194_89 : StackLang.HolProg 64 :=
.seq AllocBody194_85 AllocBody194_88

def AllocBody194_90 : StackLang.HolProg 64 :=
.seq AllocBody194_84 AllocBody194_89

def AllocBody194_91 : StackLang.HolProg 64 :=
.seq AllocBody194_29 AllocBody194_90

def AllocBody194_92 : StackLang.HolProg 64 :=
.seq AllocBody194_26 AllocBody194_91

def AllocBody194_93 : StackLang.HolProg 64 :=
.seq AllocBody194_25 AllocBody194_92

def AllocBody194_94 : StackLang.HolProg 64 :=
.seq AllocBody194_24 AllocBody194_93

def AllocBody194_95 : StackLang.HolProg 64 :=
.seq AllocBody194_23 AllocBody194_94

def AllocBody194_96 : StackLang.HolProg 64 :=
.seq AllocBody194_22 AllocBody194_95

def AllocBody194_97 : StackLang.HolProg 64 :=
.seq AllocBody194_21 AllocBody194_96

def AllocBody194_98 : StackLang.HolProg 64 :=
.seq AllocBody194_20 AllocBody194_97

def AllocBody194_99 : StackLang.HolProg 64 :=
.seq AllocBody194_19 AllocBody194_98

def AllocBody194_100 : StackLang.HolProg 64 :=
.seq AllocBody194_18 AllocBody194_99

def AllocBody194_101 : StackLang.HolProg 64 :=
.seq AllocBody194_17 AllocBody194_100

def AllocBody194_102 : StackLang.HolProg 64 :=
.seq AllocBody194_16 AllocBody194_101

def AllocBody194_103 : StackLang.HolProg 64 :=
.seq AllocBody194_15 AllocBody194_102

def AllocBody194_104 : StackLang.HolProg 64 :=
.seq AllocBody194_14 AllocBody194_103

def AllocBody194_105 : StackLang.HolProg 64 :=
.seq AllocBody194_13 AllocBody194_104

def AllocBody194_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody194_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody194_108 : StackLang.HolProg 64 :=
.seq AllocBody194_106 AllocBody194_107

def AllocBody194_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody194_105 AllocBody194_108

def AllocBody194_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody194_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody194_112 : StackLang.HolProg 64 :=
.seq AllocBody194_110 AllocBody194_111

def AllocBody194_113 : StackLang.HolProg 64 :=
.seq AllocBody194_109 AllocBody194_112

def AllocBody194_114 : StackLang.HolProg 64 :=
.seq AllocBody194_12 AllocBody194_113

def AllocBody194_115 : StackLang.HolProg 64 :=
.seq AllocBody194_11 AllocBody194_114

def AllocBody194_116 : StackLang.HolProg 64 :=
.loop AllocBody194_115

def AllocBody194_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody194_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody194_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody194_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody194_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody194_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody194_123 : StackLang.HolProg 64 :=
.seq AllocBody194_121 AllocBody194_122

def AllocBody194_124 : StackLang.HolProg 64 :=
.seq AllocBody194_120 AllocBody194_123

def AllocBody194_125 : StackLang.HolProg 64 :=
.seq AllocBody194_119 AllocBody194_124

def AllocBody194_126 : StackLang.HolProg 64 :=
.seq AllocBody194_118 AllocBody194_125

def AllocBody194_127 : StackLang.HolProg 64 :=
.seq AllocBody194_117 AllocBody194_126

def AllocBody194_128 : StackLang.HolProg 64 :=
.seq AllocBody194_116 AllocBody194_127

def AllocBody194_129 : StackLang.HolProg 64 :=
.seq AllocBody194_10 AllocBody194_128

def AllocBody194_130 : StackLang.HolProg 64 :=
.seq AllocBody194_3 AllocBody194_129

def AllocBody194_131 : StackLang.HolProg 64 :=
.seq AllocBody194_2 AllocBody194_130

def AllocBody194_132 : StackLang.HolProg 64 :=
.seq AllocBody194_1 AllocBody194_131

def AllocBody194_133 : StackLang.HolProg 64 :=
.seq AllocBody194_0 AllocBody194_132

def Alloc194 : Nat × StackLang.HolProg 64 := (194, AllocBody194_133)
theorem Alloc194_eq : StackAlloc.progComp (194, raw194) = Alloc194 := by
  kernel_rfl
#print axioms Alloc194_eq
end InitECandidate.Proofs.BackendStages
