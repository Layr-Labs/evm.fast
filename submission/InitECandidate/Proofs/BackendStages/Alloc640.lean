import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw640
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody640_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody640_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody640_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody640_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody640_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody640_6 : StackLang.HolProg 64 :=
.seq AllocBody640_4 AllocBody640_5

def AllocBody640_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody640_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody640_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody640_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody640_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody640_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody640_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody640_17 : StackLang.HolProg 64 :=
.seq AllocBody640_15 AllocBody640_16

def AllocBody640_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2593#64)

def AllocBody640_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody640_21 : StackLang.HolProg 64 :=
.seq AllocBody640_19 AllocBody640_20

def AllocBody640_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody640_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody640_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody640_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 640 3

def AllocBody640_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody640_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody640_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody640_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody640_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody640_32 : StackLang.HolProg 64 :=
.seq AllocBody640_30 AllocBody640_31

def AllocBody640_33 : StackLang.HolProg 64 :=
.seq AllocBody640_29 AllocBody640_32

def AllocBody640_34 : StackLang.HolProg 64 :=
.seq AllocBody640_28 AllocBody640_33

def AllocBody640_35 : StackLang.HolProg 64 :=
.seq AllocBody640_27 AllocBody640_34

def AllocBody640_36 : StackLang.HolProg 64 :=
.seq AllocBody640_26 AllocBody640_35

def AllocBody640_37 : StackLang.HolProg 64 :=
.seq AllocBody640_25 AllocBody640_36

def AllocBody640_38 : StackLang.HolProg 64 :=
.seq AllocBody640_24 AllocBody640_37

def AllocBody640_39 : StackLang.HolProg 64 :=
.seq AllocBody640_23 AllocBody640_38

def AllocBody640_40 : StackLang.HolProg 64 :=
.seq AllocBody640_22 AllocBody640_39

def AllocBody640_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody640_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody640_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody640_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody640_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody640_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody640_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody640_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody640_51 : StackLang.HolProg 64 :=
.seq AllocBody640_49 AllocBody640_50

def AllocBody640_52 : StackLang.HolProg 64 :=
.seq AllocBody640_48 AllocBody640_51

def AllocBody640_53 : StackLang.HolProg 64 :=
.seq AllocBody640_47 AllocBody640_52

def AllocBody640_54 : StackLang.HolProg 64 :=
.seq AllocBody640_46 AllocBody640_53

def AllocBody640_55 : StackLang.HolProg 64 :=
.seq AllocBody640_45 AllocBody640_54

def AllocBody640_56 : StackLang.HolProg 64 :=
.seq AllocBody640_44 AllocBody640_55

def AllocBody640_57 : StackLang.HolProg 64 :=
.seq AllocBody640_43 AllocBody640_56

def AllocBody640_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody640_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody640_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody640_61 : StackLang.HolProg 64 :=
.seq AllocBody640_59 AllocBody640_60

def AllocBody640_62 : StackLang.HolProg 64 :=
.seq AllocBody640_58 AllocBody640_61

def AllocBody640_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody640_64 : StackLang.HolProg 64 :=
.seq AllocBody640_62 AllocBody640_63

def AllocBody640_65 : StackLang.HolProg 64 :=
.call (some (AllocBody640_57, 0, 640, 2)) (Sum.inl 137) (some (AllocBody640_64, 640, 3))

def AllocBody640_66 : StackLang.HolProg 64 :=
.seq AllocBody640_42 AllocBody640_65

def AllocBody640_67 : StackLang.HolProg 64 :=
.seq AllocBody640_41 AllocBody640_66

def AllocBody640_68 : StackLang.HolProg 64 :=
.seq AllocBody640_40 AllocBody640_67

def AllocBody640_69 : StackLang.HolProg 64 :=
.seq AllocBody640_21 AllocBody640_68

def AllocBody640_70 : StackLang.HolProg 64 :=
.seq AllocBody640_18 AllocBody640_69

def AllocBody640_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody640_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody640_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody640_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody640_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody640_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody640_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody640_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def AllocBody640_82 : StackLang.HolProg 64 :=
.seq AllocBody640_80 AllocBody640_81

def AllocBody640_83 : StackLang.HolProg 64 :=
.seq AllocBody640_79 AllocBody640_82

def AllocBody640_84 : StackLang.HolProg 64 :=
.seq AllocBody640_78 AllocBody640_83

def AllocBody640_85 : StackLang.HolProg 64 :=
.seq AllocBody640_77 AllocBody640_84

def AllocBody640_86 : StackLang.HolProg 64 :=
.seq AllocBody640_76 AllocBody640_85

def AllocBody640_87 : StackLang.HolProg 64 :=
.seq AllocBody640_75 AllocBody640_86

def AllocBody640_88 : StackLang.HolProg 64 :=
.seq AllocBody640_74 AllocBody640_87

def AllocBody640_89 : StackLang.HolProg 64 :=
.seq AllocBody640_73 AllocBody640_88

def AllocBody640_90 : StackLang.HolProg 64 :=
.seq AllocBody640_72 AllocBody640_89

def AllocBody640_91 : StackLang.HolProg 64 :=
.seq AllocBody640_71 AllocBody640_90

def AllocBody640_92 : StackLang.HolProg 64 :=
.seq AllocBody640_70 AllocBody640_91

def AllocBody640_93 : StackLang.HolProg 64 :=
.seq AllocBody640_17 AllocBody640_92

def AllocBody640_94 : StackLang.HolProg 64 :=
.seq AllocBody640_14 AllocBody640_93

def AllocBody640_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody640_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody640_94 AllocBody640_95

def AllocBody640_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody640_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody640_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody640_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody640_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody640_103 : StackLang.HolProg 64 :=
.seq AllocBody640_101 AllocBody640_102

def AllocBody640_104 : StackLang.HolProg 64 :=
.seq AllocBody640_100 AllocBody640_103

def AllocBody640_105 : StackLang.HolProg 64 :=
.seq AllocBody640_99 AllocBody640_104

def AllocBody640_106 : StackLang.HolProg 64 :=
.seq AllocBody640_98 AllocBody640_105

def AllocBody640_107 : StackLang.HolProg 64 :=
.seq AllocBody640_97 AllocBody640_106

def AllocBody640_108 : StackLang.HolProg 64 :=
.seq AllocBody640_96 AllocBody640_107

def AllocBody640_109 : StackLang.HolProg 64 :=
.seq AllocBody640_13 AllocBody640_108

def AllocBody640_110 : StackLang.HolProg 64 :=
.seq AllocBody640_12 AllocBody640_109

def AllocBody640_111 : StackLang.HolProg 64 :=
.seq AllocBody640_11 AllocBody640_110

def AllocBody640_112 : StackLang.HolProg 64 :=
.seq AllocBody640_10 AllocBody640_111

def AllocBody640_113 : StackLang.HolProg 64 :=
.seq AllocBody640_9 AllocBody640_112

def AllocBody640_114 : StackLang.HolProg 64 :=
.seq AllocBody640_8 AllocBody640_113

def AllocBody640_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody640_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody640_117 : StackLang.HolProg 64 :=
.seq AllocBody640_115 AllocBody640_116

def AllocBody640_118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody640_114 AllocBody640_117

def AllocBody640_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody640_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody640_121 : StackLang.HolProg 64 :=
.seq AllocBody640_119 AllocBody640_120

def AllocBody640_122 : StackLang.HolProg 64 :=
.seq AllocBody640_118 AllocBody640_121

def AllocBody640_123 : StackLang.HolProg 64 :=
.seq AllocBody640_7 AllocBody640_122

def AllocBody640_124 : StackLang.HolProg 64 :=
.loop AllocBody640_123

def AllocBody640_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody640_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody640_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody640_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody640_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody640_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody640_131 : StackLang.HolProg 64 :=
.seq AllocBody640_129 AllocBody640_130

def AllocBody640_132 : StackLang.HolProg 64 :=
.seq AllocBody640_128 AllocBody640_131

def AllocBody640_133 : StackLang.HolProg 64 :=
.seq AllocBody640_127 AllocBody640_132

def AllocBody640_134 : StackLang.HolProg 64 :=
.seq AllocBody640_126 AllocBody640_133

def AllocBody640_135 : StackLang.HolProg 64 :=
.seq AllocBody640_125 AllocBody640_134

def AllocBody640_136 : StackLang.HolProg 64 :=
.seq AllocBody640_124 AllocBody640_135

def AllocBody640_137 : StackLang.HolProg 64 :=
.seq AllocBody640_6 AllocBody640_136

def AllocBody640_138 : StackLang.HolProg 64 :=
.seq AllocBody640_3 AllocBody640_137

def AllocBody640_139 : StackLang.HolProg 64 :=
.seq AllocBody640_2 AllocBody640_138

def AllocBody640_140 : StackLang.HolProg 64 :=
.seq AllocBody640_1 AllocBody640_139

def AllocBody640_141 : StackLang.HolProg 64 :=
.seq AllocBody640_0 AllocBody640_140

def Alloc640 : Nat × StackLang.HolProg 64 := (640, AllocBody640_141)
theorem Alloc640_eq : StackAlloc.progComp (640, raw640) = Alloc640 := by
  kernel_rfl
#print axioms Alloc640_eq
end InitECandidate.Proofs.BackendStages
