import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function456
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody456_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody456_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody456_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody456_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody456_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody456_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody456_12 : StackLang.HolProg 64 :=
.seq rawBody456_10 rawBody456_11

def rawBody456_13 : StackLang.HolProg 64 :=
.seq rawBody456_9 rawBody456_12

def rawBody456_14 : StackLang.HolProg 64 :=
.seq rawBody456_8 rawBody456_13

def rawBody456_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody456_14 rawBody456_15

def rawBody456_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody456_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody456_22 : StackLang.HolProg 64 :=
.seq rawBody456_20 rawBody456_21

def rawBody456_23 : StackLang.HolProg 64 :=
.seq rawBody456_19 rawBody456_22

def rawBody456_24 : StackLang.HolProg 64 :=
.seq rawBody456_18 rawBody456_23

def rawBody456_25 : StackLang.HolProg 64 :=
.seq rawBody456_17 rawBody456_24

def rawBody456_26 : StackLang.HolProg 64 :=
.seq rawBody456_16 rawBody456_25

def rawBody456_27 : StackLang.HolProg 64 :=
.seq rawBody456_7 rawBody456_26

def rawBody456_28 : StackLang.HolProg 64 :=
.seq rawBody456_6 rawBody456_27

def rawBody456_29 : StackLang.HolProg 64 :=
.seq rawBody456_5 rawBody456_28

def rawBody456_30 : StackLang.HolProg 64 :=
.seq rawBody456_4 rawBody456_29

def rawBody456_31 : StackLang.HolProg 64 :=
.seq rawBody456_3 rawBody456_30

def rawBody456_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody456_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody456_34 : StackLang.HolProg 64 :=
.seq rawBody456_32 rawBody456_33

def rawBody456_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody456_31 rawBody456_34

def rawBody456_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 20#64)

def rawBody456_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody456_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 32#64)

def rawBody456_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_44 : StackLang.HolProg 64 :=
.seq rawBody456_42 rawBody456_43

def rawBody456_45 : StackLang.HolProg 64 :=
.seq rawBody456_41 rawBody456_44

def rawBody456_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_48 : StackLang.HolProg 64 :=
.seq rawBody456_46 rawBody456_47

def rawBody456_49 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody456_45 rawBody456_48

def rawBody456_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody456_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody456_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody456_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody456_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody456_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody456_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody456_69 : StackLang.HolProg 64 :=
.seq rawBody456_67 rawBody456_68

def rawBody456_70 : StackLang.HolProg 64 :=
.seq rawBody456_66 rawBody456_69

def rawBody456_71 : StackLang.HolProg 64 :=
.seq rawBody456_65 rawBody456_70

def rawBody456_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_73 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody456_71 rawBody456_72

def rawBody456_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody456_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody456_79 : StackLang.HolProg 64 :=
.seq rawBody456_77 rawBody456_78

def rawBody456_80 : StackLang.HolProg 64 :=
.seq rawBody456_76 rawBody456_79

def rawBody456_81 : StackLang.HolProg 64 :=
.seq rawBody456_75 rawBody456_80

def rawBody456_82 : StackLang.HolProg 64 :=
.seq rawBody456_74 rawBody456_81

def rawBody456_83 : StackLang.HolProg 64 :=
.seq rawBody456_73 rawBody456_82

def rawBody456_84 : StackLang.HolProg 64 :=
.seq rawBody456_64 rawBody456_83

def rawBody456_85 : StackLang.HolProg 64 :=
.seq rawBody456_63 rawBody456_84

def rawBody456_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody456_85 rawBody456_86

def rawBody456_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody456_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody456_94 : StackLang.HolProg 64 :=
.seq rawBody456_92 rawBody456_93

def rawBody456_95 : StackLang.HolProg 64 :=
.seq rawBody456_91 rawBody456_94

def rawBody456_96 : StackLang.HolProg 64 :=
.seq rawBody456_90 rawBody456_95

def rawBody456_97 : StackLang.HolProg 64 :=
.seq rawBody456_89 rawBody456_96

def rawBody456_98 : StackLang.HolProg 64 :=
.seq rawBody456_88 rawBody456_97

def rawBody456_99 : StackLang.HolProg 64 :=
.seq rawBody456_87 rawBody456_98

def rawBody456_100 : StackLang.HolProg 64 :=
.seq rawBody456_62 rawBody456_99

def rawBody456_101 : StackLang.HolProg 64 :=
.seq rawBody456_61 rawBody456_100

def rawBody456_102 : StackLang.HolProg 64 :=
.seq rawBody456_60 rawBody456_101

def rawBody456_103 : StackLang.HolProg 64 :=
.seq rawBody456_59 rawBody456_102

def rawBody456_104 : StackLang.HolProg 64 :=
.seq rawBody456_58 rawBody456_103

def rawBody456_105 : StackLang.HolProg 64 :=
.seq rawBody456_57 rawBody456_104

def rawBody456_106 : StackLang.HolProg 64 :=
.seq rawBody456_56 rawBody456_105

def rawBody456_107 : StackLang.HolProg 64 :=
.seq rawBody456_55 rawBody456_106

def rawBody456_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody456_110 : StackLang.HolProg 64 :=
.seq rawBody456_108 rawBody456_109

def rawBody456_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody456_107 rawBody456_110

def rawBody456_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_114 : StackLang.HolProg 64 :=
.seq rawBody456_112 rawBody456_113

def rawBody456_115 : StackLang.HolProg 64 :=
.seq rawBody456_111 rawBody456_114

def rawBody456_116 : StackLang.HolProg 64 :=
.seq rawBody456_54 rawBody456_115

def rawBody456_117 : StackLang.HolProg 64 :=
.loop rawBody456_116

def rawBody456_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody456_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody456_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody456_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody456_122 : StackLang.HolProg 64 :=
.seq rawBody456_120 rawBody456_121

def rawBody456_123 : StackLang.HolProg 64 :=
.seq rawBody456_119 rawBody456_122

def rawBody456_124 : StackLang.HolProg 64 :=
.seq rawBody456_118 rawBody456_123

def rawBody456_125 : StackLang.HolProg 64 :=
.seq rawBody456_117 rawBody456_124

def rawBody456_126 : StackLang.HolProg 64 :=
.seq rawBody456_53 rawBody456_125

def rawBody456_127 : StackLang.HolProg 64 :=
.seq rawBody456_52 rawBody456_126

def rawBody456_128 : StackLang.HolProg 64 :=
.seq rawBody456_51 rawBody456_127

def rawBody456_129 : StackLang.HolProg 64 :=
.seq rawBody456_50 rawBody456_128

def rawBody456_130 : StackLang.HolProg 64 :=
.seq rawBody456_49 rawBody456_129

def rawBody456_131 : StackLang.HolProg 64 :=
.seq rawBody456_40 rawBody456_130

def rawBody456_132 : StackLang.HolProg 64 :=
.seq rawBody456_39 rawBody456_131

def rawBody456_133 : StackLang.HolProg 64 :=
.seq rawBody456_38 rawBody456_132

def rawBody456_134 : StackLang.HolProg 64 :=
.seq rawBody456_37 rawBody456_133

def rawBody456_135 : StackLang.HolProg 64 :=
.seq rawBody456_36 rawBody456_134

def rawBody456_136 : StackLang.HolProg 64 :=
.seq rawBody456_35 rawBody456_135

def rawBody456_137 : StackLang.HolProg 64 :=
.seq rawBody456_2 rawBody456_136

def rawBody456_138 : StackLang.HolProg 64 :=
.seq rawBody456_1 rawBody456_137

def rawBody456_139 : StackLang.HolProg 64 :=
.seq rawBody456_0 rawBody456_138

def raw456 : StackLang.HolProg 64 := rawBody456_139
theorem raw456_eq : StackRawCall.compTop RawInfo.rawInfo (function456 (.list [])).1 = raw456 := by
  kernel_rfl
#print axioms raw456_eq
end InitECandidate.Proofs.BackendStages
