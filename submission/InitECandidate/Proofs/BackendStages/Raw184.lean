import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function184
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody184_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody184_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody184_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody184_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody184_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody184_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody184_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody184_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody184_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody184_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody184_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 8#64)

def rawBody184_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 7#64)

def rawBody184_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody184_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody184_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody184_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def rawBody184_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody184_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody184_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody184_38 : StackLang.HolProg 64 :=
.seq rawBody184_36 rawBody184_37

def rawBody184_39 : StackLang.HolProg 64 :=
.seq rawBody184_35 rawBody184_38

def rawBody184_40 : StackLang.HolProg 64 :=
.seq rawBody184_34 rawBody184_39

def rawBody184_41 : StackLang.HolProg 64 :=
.seq rawBody184_33 rawBody184_40

def rawBody184_42 : StackLang.HolProg 64 :=
.seq rawBody184_32 rawBody184_41

def rawBody184_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody184_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody184_45 : StackLang.HolProg 64 :=
.seq rawBody184_43 rawBody184_44

def rawBody184_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) rawBody184_42 rawBody184_45

def rawBody184_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody184_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody184_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody184_53 : StackLang.HolProg 64 :=
.seq rawBody184_51 rawBody184_52

def rawBody184_54 : StackLang.HolProg 64 :=
.seq rawBody184_50 rawBody184_53

def rawBody184_55 : StackLang.HolProg 64 :=
.seq rawBody184_49 rawBody184_54

def rawBody184_56 : StackLang.HolProg 64 :=
.seq rawBody184_48 rawBody184_55

def rawBody184_57 : StackLang.HolProg 64 :=
.seq rawBody184_47 rawBody184_56

def rawBody184_58 : StackLang.HolProg 64 :=
.seq rawBody184_46 rawBody184_57

def rawBody184_59 : StackLang.HolProg 64 :=
.seq rawBody184_31 rawBody184_58

def rawBody184_60 : StackLang.HolProg 64 :=
.seq rawBody184_30 rawBody184_59

def rawBody184_61 : StackLang.HolProg 64 :=
.seq rawBody184_29 rawBody184_60

def rawBody184_62 : StackLang.HolProg 64 :=
.seq rawBody184_28 rawBody184_61

def rawBody184_63 : StackLang.HolProg 64 :=
.seq rawBody184_27 rawBody184_62

def rawBody184_64 : StackLang.HolProg 64 :=
.seq rawBody184_26 rawBody184_63

def rawBody184_65 : StackLang.HolProg 64 :=
.seq rawBody184_25 rawBody184_64

def rawBody184_66 : StackLang.HolProg 64 :=
.seq rawBody184_24 rawBody184_65

def rawBody184_67 : StackLang.HolProg 64 :=
.seq rawBody184_23 rawBody184_66

def rawBody184_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody184_70 : StackLang.HolProg 64 :=
.seq rawBody184_68 rawBody184_69

def rawBody184_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody184_67 rawBody184_70

def rawBody184_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_74 : StackLang.HolProg 64 :=
.seq rawBody184_72 rawBody184_73

def rawBody184_75 : StackLang.HolProg 64 :=
.seq rawBody184_71 rawBody184_74

def rawBody184_76 : StackLang.HolProg 64 :=
.seq rawBody184_22 rawBody184_75

def rawBody184_77 : StackLang.HolProg 64 :=
.seq rawBody184_21 rawBody184_76

def rawBody184_78 : StackLang.HolProg 64 :=
.loop rawBody184_77

def rawBody184_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_81 : StackLang.HolProg 64 :=
.seq rawBody184_79 rawBody184_80

def rawBody184_82 : StackLang.HolProg 64 :=
.seq rawBody184_78 rawBody184_81

def rawBody184_83 : StackLang.HolProg 64 :=
.seq rawBody184_20 rawBody184_82

def rawBody184_84 : StackLang.HolProg 64 :=
.seq rawBody184_19 rawBody184_83

def rawBody184_85 : StackLang.HolProg 64 :=
.seq rawBody184_18 rawBody184_84

def rawBody184_86 : StackLang.HolProg 64 :=
.seq rawBody184_17 rawBody184_85

def rawBody184_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_89 : StackLang.HolProg 64 :=
.seq rawBody184_87 rawBody184_88

def rawBody184_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody184_86 rawBody184_89

def rawBody184_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody184_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody184_96 : StackLang.HolProg 64 :=
.seq rawBody184_94 rawBody184_95

def rawBody184_97 : StackLang.HolProg 64 :=
.seq rawBody184_93 rawBody184_96

def rawBody184_98 : StackLang.HolProg 64 :=
.seq rawBody184_92 rawBody184_97

def rawBody184_99 : StackLang.HolProg 64 :=
.seq rawBody184_91 rawBody184_98

def rawBody184_100 : StackLang.HolProg 64 :=
.seq rawBody184_90 rawBody184_99

def rawBody184_101 : StackLang.HolProg 64 :=
.seq rawBody184_16 rawBody184_100

def rawBody184_102 : StackLang.HolProg 64 :=
.seq rawBody184_15 rawBody184_101

def rawBody184_103 : StackLang.HolProg 64 :=
.seq rawBody184_14 rawBody184_102

def rawBody184_104 : StackLang.HolProg 64 :=
.seq rawBody184_13 rawBody184_103

def rawBody184_105 : StackLang.HolProg 64 :=
.seq rawBody184_12 rawBody184_104

def rawBody184_106 : StackLang.HolProg 64 :=
.seq rawBody184_11 rawBody184_105

def rawBody184_107 : StackLang.HolProg 64 :=
.seq rawBody184_10 rawBody184_106

def rawBody184_108 : StackLang.HolProg 64 :=
.seq rawBody184_9 rawBody184_107

def rawBody184_109 : StackLang.HolProg 64 :=
.seq rawBody184_8 rawBody184_108

def rawBody184_110 : StackLang.HolProg 64 :=
.seq rawBody184_7 rawBody184_109

def rawBody184_111 : StackLang.HolProg 64 :=
.seq rawBody184_6 rawBody184_110

def rawBody184_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody184_115 : StackLang.HolProg 64 :=
.seq rawBody184_113 rawBody184_114

def rawBody184_116 : StackLang.HolProg 64 :=
.seq rawBody184_112 rawBody184_115

def rawBody184_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody184_111 rawBody184_116

def rawBody184_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_120 : StackLang.HolProg 64 :=
.seq rawBody184_118 rawBody184_119

def rawBody184_121 : StackLang.HolProg 64 :=
.seq rawBody184_117 rawBody184_120

def rawBody184_122 : StackLang.HolProg 64 :=
.seq rawBody184_5 rawBody184_121

def rawBody184_123 : StackLang.HolProg 64 :=
.loop rawBody184_122

def rawBody184_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody184_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody184_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody184_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody184_129 : StackLang.HolProg 64 :=
.seq rawBody184_127 rawBody184_128

def rawBody184_130 : StackLang.HolProg 64 :=
.seq rawBody184_126 rawBody184_129

def rawBody184_131 : StackLang.HolProg 64 :=
.seq rawBody184_125 rawBody184_130

def rawBody184_132 : StackLang.HolProg 64 :=
.seq rawBody184_124 rawBody184_131

def rawBody184_133 : StackLang.HolProg 64 :=
.seq rawBody184_123 rawBody184_132

def rawBody184_134 : StackLang.HolProg 64 :=
.seq rawBody184_4 rawBody184_133

def rawBody184_135 : StackLang.HolProg 64 :=
.seq rawBody184_3 rawBody184_134

def rawBody184_136 : StackLang.HolProg 64 :=
.seq rawBody184_2 rawBody184_135

def rawBody184_137 : StackLang.HolProg 64 :=
.seq rawBody184_1 rawBody184_136

def rawBody184_138 : StackLang.HolProg 64 :=
.seq rawBody184_0 rawBody184_137

def raw184 : StackLang.HolProg 64 := rawBody184_138
theorem raw184_eq : StackRawCall.compTop RawInfo.rawInfo (function184 (.list [])).1 = raw184 := by
  kernel_rfl
#print axioms raw184_eq
end InitECandidate.Proofs.BackendStages
