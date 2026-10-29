import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw456
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody456_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody456_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody456_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody456_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody456_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody456_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody456_12 : StackLang.HolProg 64 :=
.seq AllocBody456_10 AllocBody456_11

def AllocBody456_13 : StackLang.HolProg 64 :=
.seq AllocBody456_9 AllocBody456_12

def AllocBody456_14 : StackLang.HolProg 64 :=
.seq AllocBody456_8 AllocBody456_13

def AllocBody456_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody456_14 AllocBody456_15

def AllocBody456_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody456_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody456_22 : StackLang.HolProg 64 :=
.seq AllocBody456_20 AllocBody456_21

def AllocBody456_23 : StackLang.HolProg 64 :=
.seq AllocBody456_19 AllocBody456_22

def AllocBody456_24 : StackLang.HolProg 64 :=
.seq AllocBody456_18 AllocBody456_23

def AllocBody456_25 : StackLang.HolProg 64 :=
.seq AllocBody456_17 AllocBody456_24

def AllocBody456_26 : StackLang.HolProg 64 :=
.seq AllocBody456_16 AllocBody456_25

def AllocBody456_27 : StackLang.HolProg 64 :=
.seq AllocBody456_7 AllocBody456_26

def AllocBody456_28 : StackLang.HolProg 64 :=
.seq AllocBody456_6 AllocBody456_27

def AllocBody456_29 : StackLang.HolProg 64 :=
.seq AllocBody456_5 AllocBody456_28

def AllocBody456_30 : StackLang.HolProg 64 :=
.seq AllocBody456_4 AllocBody456_29

def AllocBody456_31 : StackLang.HolProg 64 :=
.seq AllocBody456_3 AllocBody456_30

def AllocBody456_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody456_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody456_34 : StackLang.HolProg 64 :=
.seq AllocBody456_32 AllocBody456_33

def AllocBody456_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody456_31 AllocBody456_34

def AllocBody456_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 20#64)

def AllocBody456_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody456_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 32#64)

def AllocBody456_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_44 : StackLang.HolProg 64 :=
.seq AllocBody456_42 AllocBody456_43

def AllocBody456_45 : StackLang.HolProg 64 :=
.seq AllocBody456_41 AllocBody456_44

def AllocBody456_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_48 : StackLang.HolProg 64 :=
.seq AllocBody456_46 AllocBody456_47

def AllocBody456_49 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody456_45 AllocBody456_48

def AllocBody456_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody456_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody456_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody456_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody456_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody456_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody456_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody456_69 : StackLang.HolProg 64 :=
.seq AllocBody456_67 AllocBody456_68

def AllocBody456_70 : StackLang.HolProg 64 :=
.seq AllocBody456_66 AllocBody456_69

def AllocBody456_71 : StackLang.HolProg 64 :=
.seq AllocBody456_65 AllocBody456_70

def AllocBody456_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_73 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody456_71 AllocBody456_72

def AllocBody456_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody456_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody456_79 : StackLang.HolProg 64 :=
.seq AllocBody456_77 AllocBody456_78

def AllocBody456_80 : StackLang.HolProg 64 :=
.seq AllocBody456_76 AllocBody456_79

def AllocBody456_81 : StackLang.HolProg 64 :=
.seq AllocBody456_75 AllocBody456_80

def AllocBody456_82 : StackLang.HolProg 64 :=
.seq AllocBody456_74 AllocBody456_81

def AllocBody456_83 : StackLang.HolProg 64 :=
.seq AllocBody456_73 AllocBody456_82

def AllocBody456_84 : StackLang.HolProg 64 :=
.seq AllocBody456_64 AllocBody456_83

def AllocBody456_85 : StackLang.HolProg 64 :=
.seq AllocBody456_63 AllocBody456_84

def AllocBody456_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody456_85 AllocBody456_86

def AllocBody456_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody456_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody456_94 : StackLang.HolProg 64 :=
.seq AllocBody456_92 AllocBody456_93

def AllocBody456_95 : StackLang.HolProg 64 :=
.seq AllocBody456_91 AllocBody456_94

def AllocBody456_96 : StackLang.HolProg 64 :=
.seq AllocBody456_90 AllocBody456_95

def AllocBody456_97 : StackLang.HolProg 64 :=
.seq AllocBody456_89 AllocBody456_96

def AllocBody456_98 : StackLang.HolProg 64 :=
.seq AllocBody456_88 AllocBody456_97

def AllocBody456_99 : StackLang.HolProg 64 :=
.seq AllocBody456_87 AllocBody456_98

def AllocBody456_100 : StackLang.HolProg 64 :=
.seq AllocBody456_62 AllocBody456_99

def AllocBody456_101 : StackLang.HolProg 64 :=
.seq AllocBody456_61 AllocBody456_100

def AllocBody456_102 : StackLang.HolProg 64 :=
.seq AllocBody456_60 AllocBody456_101

def AllocBody456_103 : StackLang.HolProg 64 :=
.seq AllocBody456_59 AllocBody456_102

def AllocBody456_104 : StackLang.HolProg 64 :=
.seq AllocBody456_58 AllocBody456_103

def AllocBody456_105 : StackLang.HolProg 64 :=
.seq AllocBody456_57 AllocBody456_104

def AllocBody456_106 : StackLang.HolProg 64 :=
.seq AllocBody456_56 AllocBody456_105

def AllocBody456_107 : StackLang.HolProg 64 :=
.seq AllocBody456_55 AllocBody456_106

def AllocBody456_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody456_110 : StackLang.HolProg 64 :=
.seq AllocBody456_108 AllocBody456_109

def AllocBody456_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody456_107 AllocBody456_110

def AllocBody456_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_114 : StackLang.HolProg 64 :=
.seq AllocBody456_112 AllocBody456_113

def AllocBody456_115 : StackLang.HolProg 64 :=
.seq AllocBody456_111 AllocBody456_114

def AllocBody456_116 : StackLang.HolProg 64 :=
.seq AllocBody456_54 AllocBody456_115

def AllocBody456_117 : StackLang.HolProg 64 :=
.loop AllocBody456_116

def AllocBody456_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody456_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody456_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody456_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody456_122 : StackLang.HolProg 64 :=
.seq AllocBody456_120 AllocBody456_121

def AllocBody456_123 : StackLang.HolProg 64 :=
.seq AllocBody456_119 AllocBody456_122

def AllocBody456_124 : StackLang.HolProg 64 :=
.seq AllocBody456_118 AllocBody456_123

def AllocBody456_125 : StackLang.HolProg 64 :=
.seq AllocBody456_117 AllocBody456_124

def AllocBody456_126 : StackLang.HolProg 64 :=
.seq AllocBody456_53 AllocBody456_125

def AllocBody456_127 : StackLang.HolProg 64 :=
.seq AllocBody456_52 AllocBody456_126

def AllocBody456_128 : StackLang.HolProg 64 :=
.seq AllocBody456_51 AllocBody456_127

def AllocBody456_129 : StackLang.HolProg 64 :=
.seq AllocBody456_50 AllocBody456_128

def AllocBody456_130 : StackLang.HolProg 64 :=
.seq AllocBody456_49 AllocBody456_129

def AllocBody456_131 : StackLang.HolProg 64 :=
.seq AllocBody456_40 AllocBody456_130

def AllocBody456_132 : StackLang.HolProg 64 :=
.seq AllocBody456_39 AllocBody456_131

def AllocBody456_133 : StackLang.HolProg 64 :=
.seq AllocBody456_38 AllocBody456_132

def AllocBody456_134 : StackLang.HolProg 64 :=
.seq AllocBody456_37 AllocBody456_133

def AllocBody456_135 : StackLang.HolProg 64 :=
.seq AllocBody456_36 AllocBody456_134

def AllocBody456_136 : StackLang.HolProg 64 :=
.seq AllocBody456_35 AllocBody456_135

def AllocBody456_137 : StackLang.HolProg 64 :=
.seq AllocBody456_2 AllocBody456_136

def AllocBody456_138 : StackLang.HolProg 64 :=
.seq AllocBody456_1 AllocBody456_137

def AllocBody456_139 : StackLang.HolProg 64 :=
.seq AllocBody456_0 AllocBody456_138

def Alloc456 : Nat × StackLang.HolProg 64 := (456, AllocBody456_139)
theorem Alloc456_eq : StackAlloc.progComp (456, raw456) = Alloc456 := by
  kernel_rfl
#print axioms Alloc456_eq
end InitECandidate.Proofs.BackendStages
