import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw184
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody184_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody184_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody184_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody184_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody184_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody184_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody184_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody184_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody184_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody184_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody184_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 8#64)

def AllocBody184_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 7#64)

def AllocBody184_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody184_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody184_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody184_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def AllocBody184_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody184_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody184_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody184_38 : StackLang.HolProg 64 :=
.seq AllocBody184_36 AllocBody184_37

def AllocBody184_39 : StackLang.HolProg 64 :=
.seq AllocBody184_35 AllocBody184_38

def AllocBody184_40 : StackLang.HolProg 64 :=
.seq AllocBody184_34 AllocBody184_39

def AllocBody184_41 : StackLang.HolProg 64 :=
.seq AllocBody184_33 AllocBody184_40

def AllocBody184_42 : StackLang.HolProg 64 :=
.seq AllocBody184_32 AllocBody184_41

def AllocBody184_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody184_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody184_45 : StackLang.HolProg 64 :=
.seq AllocBody184_43 AllocBody184_44

def AllocBody184_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) AllocBody184_42 AllocBody184_45

def AllocBody184_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody184_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody184_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody184_53 : StackLang.HolProg 64 :=
.seq AllocBody184_51 AllocBody184_52

def AllocBody184_54 : StackLang.HolProg 64 :=
.seq AllocBody184_50 AllocBody184_53

def AllocBody184_55 : StackLang.HolProg 64 :=
.seq AllocBody184_49 AllocBody184_54

def AllocBody184_56 : StackLang.HolProg 64 :=
.seq AllocBody184_48 AllocBody184_55

def AllocBody184_57 : StackLang.HolProg 64 :=
.seq AllocBody184_47 AllocBody184_56

def AllocBody184_58 : StackLang.HolProg 64 :=
.seq AllocBody184_46 AllocBody184_57

def AllocBody184_59 : StackLang.HolProg 64 :=
.seq AllocBody184_31 AllocBody184_58

def AllocBody184_60 : StackLang.HolProg 64 :=
.seq AllocBody184_30 AllocBody184_59

def AllocBody184_61 : StackLang.HolProg 64 :=
.seq AllocBody184_29 AllocBody184_60

def AllocBody184_62 : StackLang.HolProg 64 :=
.seq AllocBody184_28 AllocBody184_61

def AllocBody184_63 : StackLang.HolProg 64 :=
.seq AllocBody184_27 AllocBody184_62

def AllocBody184_64 : StackLang.HolProg 64 :=
.seq AllocBody184_26 AllocBody184_63

def AllocBody184_65 : StackLang.HolProg 64 :=
.seq AllocBody184_25 AllocBody184_64

def AllocBody184_66 : StackLang.HolProg 64 :=
.seq AllocBody184_24 AllocBody184_65

def AllocBody184_67 : StackLang.HolProg 64 :=
.seq AllocBody184_23 AllocBody184_66

def AllocBody184_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody184_70 : StackLang.HolProg 64 :=
.seq AllocBody184_68 AllocBody184_69

def AllocBody184_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody184_67 AllocBody184_70

def AllocBody184_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_74 : StackLang.HolProg 64 :=
.seq AllocBody184_72 AllocBody184_73

def AllocBody184_75 : StackLang.HolProg 64 :=
.seq AllocBody184_71 AllocBody184_74

def AllocBody184_76 : StackLang.HolProg 64 :=
.seq AllocBody184_22 AllocBody184_75

def AllocBody184_77 : StackLang.HolProg 64 :=
.seq AllocBody184_21 AllocBody184_76

def AllocBody184_78 : StackLang.HolProg 64 :=
.loop AllocBody184_77

def AllocBody184_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_81 : StackLang.HolProg 64 :=
.seq AllocBody184_79 AllocBody184_80

def AllocBody184_82 : StackLang.HolProg 64 :=
.seq AllocBody184_78 AllocBody184_81

def AllocBody184_83 : StackLang.HolProg 64 :=
.seq AllocBody184_20 AllocBody184_82

def AllocBody184_84 : StackLang.HolProg 64 :=
.seq AllocBody184_19 AllocBody184_83

def AllocBody184_85 : StackLang.HolProg 64 :=
.seq AllocBody184_18 AllocBody184_84

def AllocBody184_86 : StackLang.HolProg 64 :=
.seq AllocBody184_17 AllocBody184_85

def AllocBody184_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_89 : StackLang.HolProg 64 :=
.seq AllocBody184_87 AllocBody184_88

def AllocBody184_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody184_86 AllocBody184_89

def AllocBody184_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody184_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody184_96 : StackLang.HolProg 64 :=
.seq AllocBody184_94 AllocBody184_95

def AllocBody184_97 : StackLang.HolProg 64 :=
.seq AllocBody184_93 AllocBody184_96

def AllocBody184_98 : StackLang.HolProg 64 :=
.seq AllocBody184_92 AllocBody184_97

def AllocBody184_99 : StackLang.HolProg 64 :=
.seq AllocBody184_91 AllocBody184_98

def AllocBody184_100 : StackLang.HolProg 64 :=
.seq AllocBody184_90 AllocBody184_99

def AllocBody184_101 : StackLang.HolProg 64 :=
.seq AllocBody184_16 AllocBody184_100

def AllocBody184_102 : StackLang.HolProg 64 :=
.seq AllocBody184_15 AllocBody184_101

def AllocBody184_103 : StackLang.HolProg 64 :=
.seq AllocBody184_14 AllocBody184_102

def AllocBody184_104 : StackLang.HolProg 64 :=
.seq AllocBody184_13 AllocBody184_103

def AllocBody184_105 : StackLang.HolProg 64 :=
.seq AllocBody184_12 AllocBody184_104

def AllocBody184_106 : StackLang.HolProg 64 :=
.seq AllocBody184_11 AllocBody184_105

def AllocBody184_107 : StackLang.HolProg 64 :=
.seq AllocBody184_10 AllocBody184_106

def AllocBody184_108 : StackLang.HolProg 64 :=
.seq AllocBody184_9 AllocBody184_107

def AllocBody184_109 : StackLang.HolProg 64 :=
.seq AllocBody184_8 AllocBody184_108

def AllocBody184_110 : StackLang.HolProg 64 :=
.seq AllocBody184_7 AllocBody184_109

def AllocBody184_111 : StackLang.HolProg 64 :=
.seq AllocBody184_6 AllocBody184_110

def AllocBody184_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody184_115 : StackLang.HolProg 64 :=
.seq AllocBody184_113 AllocBody184_114

def AllocBody184_116 : StackLang.HolProg 64 :=
.seq AllocBody184_112 AllocBody184_115

def AllocBody184_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody184_111 AllocBody184_116

def AllocBody184_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_120 : StackLang.HolProg 64 :=
.seq AllocBody184_118 AllocBody184_119

def AllocBody184_121 : StackLang.HolProg 64 :=
.seq AllocBody184_117 AllocBody184_120

def AllocBody184_122 : StackLang.HolProg 64 :=
.seq AllocBody184_5 AllocBody184_121

def AllocBody184_123 : StackLang.HolProg 64 :=
.loop AllocBody184_122

def AllocBody184_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody184_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody184_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody184_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody184_129 : StackLang.HolProg 64 :=
.seq AllocBody184_127 AllocBody184_128

def AllocBody184_130 : StackLang.HolProg 64 :=
.seq AllocBody184_126 AllocBody184_129

def AllocBody184_131 : StackLang.HolProg 64 :=
.seq AllocBody184_125 AllocBody184_130

def AllocBody184_132 : StackLang.HolProg 64 :=
.seq AllocBody184_124 AllocBody184_131

def AllocBody184_133 : StackLang.HolProg 64 :=
.seq AllocBody184_123 AllocBody184_132

def AllocBody184_134 : StackLang.HolProg 64 :=
.seq AllocBody184_4 AllocBody184_133

def AllocBody184_135 : StackLang.HolProg 64 :=
.seq AllocBody184_3 AllocBody184_134

def AllocBody184_136 : StackLang.HolProg 64 :=
.seq AllocBody184_2 AllocBody184_135

def AllocBody184_137 : StackLang.HolProg 64 :=
.seq AllocBody184_1 AllocBody184_136

def AllocBody184_138 : StackLang.HolProg 64 :=
.seq AllocBody184_0 AllocBody184_137

def Alloc184 : Nat × StackLang.HolProg 64 := (184, AllocBody184_138)
theorem Alloc184_eq : StackAlloc.progComp (184, raw184) = Alloc184 := by
  kernel_rfl
#print axioms Alloc184_eq
end InitECandidate.Proofs.BackendStages
