import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed456
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody456_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody456_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody456_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody456_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody456_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody456_12 : StackLang.HolProg 64 :=
.seq NamedBody456_10 NamedBody456_11

def NamedBody456_13 : StackLang.HolProg 64 :=
.seq NamedBody456_9 NamedBody456_12

def NamedBody456_14 : StackLang.HolProg 64 :=
.seq NamedBody456_8 NamedBody456_13

def NamedBody456_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody456_14 NamedBody456_15

def NamedBody456_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody456_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody456_22 : StackLang.HolProg 64 :=
.seq NamedBody456_20 NamedBody456_21

def NamedBody456_23 : StackLang.HolProg 64 :=
.seq NamedBody456_19 NamedBody456_22

def NamedBody456_24 : StackLang.HolProg 64 :=
.seq NamedBody456_18 NamedBody456_23

def NamedBody456_25 : StackLang.HolProg 64 :=
.seq NamedBody456_17 NamedBody456_24

def NamedBody456_26 : StackLang.HolProg 64 :=
.seq NamedBody456_16 NamedBody456_25

def NamedBody456_27 : StackLang.HolProg 64 :=
.seq NamedBody456_7 NamedBody456_26

def NamedBody456_28 : StackLang.HolProg 64 :=
.seq NamedBody456_6 NamedBody456_27

def NamedBody456_29 : StackLang.HolProg 64 :=
.seq NamedBody456_5 NamedBody456_28

def NamedBody456_30 : StackLang.HolProg 64 :=
.seq NamedBody456_4 NamedBody456_29

def NamedBody456_31 : StackLang.HolProg 64 :=
.seq NamedBody456_3 NamedBody456_30

def NamedBody456_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody456_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody456_34 : StackLang.HolProg 64 :=
.seq NamedBody456_32 NamedBody456_33

def NamedBody456_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody456_31 NamedBody456_34

def NamedBody456_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 20#64)

def NamedBody456_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody456_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 32#64)

def NamedBody456_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_44 : StackLang.HolProg 64 :=
.seq NamedBody456_42 NamedBody456_43

def NamedBody456_45 : StackLang.HolProg 64 :=
.seq NamedBody456_41 NamedBody456_44

def NamedBody456_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_48 : StackLang.HolProg 64 :=
.seq NamedBody456_46 NamedBody456_47

def NamedBody456_49 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody456_45 NamedBody456_48

def NamedBody456_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody456_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody456_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody456_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody456_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody456_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody456_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody456_69 : StackLang.HolProg 64 :=
.seq NamedBody456_67 NamedBody456_68

def NamedBody456_70 : StackLang.HolProg 64 :=
.seq NamedBody456_66 NamedBody456_69

def NamedBody456_71 : StackLang.HolProg 64 :=
.seq NamedBody456_65 NamedBody456_70

def NamedBody456_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_73 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody456_71 NamedBody456_72

def NamedBody456_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody456_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody456_79 : StackLang.HolProg 64 :=
.seq NamedBody456_77 NamedBody456_78

def NamedBody456_80 : StackLang.HolProg 64 :=
.seq NamedBody456_76 NamedBody456_79

def NamedBody456_81 : StackLang.HolProg 64 :=
.seq NamedBody456_75 NamedBody456_80

def NamedBody456_82 : StackLang.HolProg 64 :=
.seq NamedBody456_74 NamedBody456_81

def NamedBody456_83 : StackLang.HolProg 64 :=
.seq NamedBody456_73 NamedBody456_82

def NamedBody456_84 : StackLang.HolProg 64 :=
.seq NamedBody456_64 NamedBody456_83

def NamedBody456_85 : StackLang.HolProg 64 :=
.seq NamedBody456_63 NamedBody456_84

def NamedBody456_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody456_85 NamedBody456_86

def NamedBody456_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody456_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody456_94 : StackLang.HolProg 64 :=
.seq NamedBody456_92 NamedBody456_93

def NamedBody456_95 : StackLang.HolProg 64 :=
.seq NamedBody456_91 NamedBody456_94

def NamedBody456_96 : StackLang.HolProg 64 :=
.seq NamedBody456_90 NamedBody456_95

def NamedBody456_97 : StackLang.HolProg 64 :=
.seq NamedBody456_89 NamedBody456_96

def NamedBody456_98 : StackLang.HolProg 64 :=
.seq NamedBody456_88 NamedBody456_97

def NamedBody456_99 : StackLang.HolProg 64 :=
.seq NamedBody456_87 NamedBody456_98

def NamedBody456_100 : StackLang.HolProg 64 :=
.seq NamedBody456_62 NamedBody456_99

def NamedBody456_101 : StackLang.HolProg 64 :=
.seq NamedBody456_61 NamedBody456_100

def NamedBody456_102 : StackLang.HolProg 64 :=
.seq NamedBody456_60 NamedBody456_101

def NamedBody456_103 : StackLang.HolProg 64 :=
.seq NamedBody456_59 NamedBody456_102

def NamedBody456_104 : StackLang.HolProg 64 :=
.seq NamedBody456_58 NamedBody456_103

def NamedBody456_105 : StackLang.HolProg 64 :=
.seq NamedBody456_57 NamedBody456_104

def NamedBody456_106 : StackLang.HolProg 64 :=
.seq NamedBody456_56 NamedBody456_105

def NamedBody456_107 : StackLang.HolProg 64 :=
.seq NamedBody456_55 NamedBody456_106

def NamedBody456_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody456_110 : StackLang.HolProg 64 :=
.seq NamedBody456_108 NamedBody456_109

def NamedBody456_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody456_107 NamedBody456_110

def NamedBody456_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_114 : StackLang.HolProg 64 :=
.seq NamedBody456_112 NamedBody456_113

def NamedBody456_115 : StackLang.HolProg 64 :=
.seq NamedBody456_111 NamedBody456_114

def NamedBody456_116 : StackLang.HolProg 64 :=
.seq NamedBody456_54 NamedBody456_115

def NamedBody456_117 : StackLang.HolProg 64 :=
.loop NamedBody456_116

def NamedBody456_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody456_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody456_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody456_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody456_122 : StackLang.HolProg 64 :=
.seq NamedBody456_120 NamedBody456_121

def NamedBody456_123 : StackLang.HolProg 64 :=
.seq NamedBody456_119 NamedBody456_122

def NamedBody456_124 : StackLang.HolProg 64 :=
.seq NamedBody456_118 NamedBody456_123

def NamedBody456_125 : StackLang.HolProg 64 :=
.seq NamedBody456_117 NamedBody456_124

def NamedBody456_126 : StackLang.HolProg 64 :=
.seq NamedBody456_53 NamedBody456_125

def NamedBody456_127 : StackLang.HolProg 64 :=
.seq NamedBody456_52 NamedBody456_126

def NamedBody456_128 : StackLang.HolProg 64 :=
.seq NamedBody456_51 NamedBody456_127

def NamedBody456_129 : StackLang.HolProg 64 :=
.seq NamedBody456_50 NamedBody456_128

def NamedBody456_130 : StackLang.HolProg 64 :=
.seq NamedBody456_49 NamedBody456_129

def NamedBody456_131 : StackLang.HolProg 64 :=
.seq NamedBody456_40 NamedBody456_130

def NamedBody456_132 : StackLang.HolProg 64 :=
.seq NamedBody456_39 NamedBody456_131

def NamedBody456_133 : StackLang.HolProg 64 :=
.seq NamedBody456_38 NamedBody456_132

def NamedBody456_134 : StackLang.HolProg 64 :=
.seq NamedBody456_37 NamedBody456_133

def NamedBody456_135 : StackLang.HolProg 64 :=
.seq NamedBody456_36 NamedBody456_134

def NamedBody456_136 : StackLang.HolProg 64 :=
.seq NamedBody456_35 NamedBody456_135

def NamedBody456_137 : StackLang.HolProg 64 :=
.seq NamedBody456_2 NamedBody456_136

def NamedBody456_138 : StackLang.HolProg 64 :=
.seq NamedBody456_1 NamedBody456_137

def NamedBody456_139 : StackLang.HolProg 64 :=
.seq NamedBody456_0 NamedBody456_138

def Named456 : Nat × StackLang.HolProg 64 := (456, NamedBody456_139)
theorem Named456_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed456 = Named456 := by
  kernel_rfl
#print axioms Named456_eq
end InitECandidate.Proofs.BackendStages
