import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function185
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody185_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody185_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody185_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody185_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def rawBody185_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def rawBody185_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody185_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody185_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody185_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody185_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody185_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody185_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody185_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody185_22 : StackLang.HolProg 64 :=
.seq rawBody185_20 rawBody185_21

def rawBody185_23 : StackLang.HolProg 64 :=
.seq rawBody185_19 rawBody185_22

def rawBody185_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody185_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody185_23 rawBody185_24

def rawBody185_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody185_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody185_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody185_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def rawBody185_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 7#64)

def rawBody185_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody185_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody185_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody185_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody185_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody185_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody185_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody185_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody185_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def rawBody185_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_48 : StackLang.HolProg 64 :=
.seq rawBody185_46 rawBody185_47

def rawBody185_49 : StackLang.HolProg 64 :=
.seq rawBody185_45 rawBody185_48

def rawBody185_50 : StackLang.HolProg 64 :=
.seq rawBody185_44 rawBody185_49

def rawBody185_51 : StackLang.HolProg 64 :=
.seq rawBody185_43 rawBody185_50

def rawBody185_52 : StackLang.HolProg 64 :=
.seq rawBody185_42 rawBody185_51

def rawBody185_53 : StackLang.HolProg 64 :=
.seq rawBody185_41 rawBody185_52

def rawBody185_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody185_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody185_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody185_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def rawBody185_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_61 : StackLang.HolProg 64 :=
.seq rawBody185_59 rawBody185_60

def rawBody185_62 : StackLang.HolProg 64 :=
.seq rawBody185_58 rawBody185_61

def rawBody185_63 : StackLang.HolProg 64 :=
.seq rawBody185_57 rawBody185_62

def rawBody185_64 : StackLang.HolProg 64 :=
.seq rawBody185_56 rawBody185_63

def rawBody185_65 : StackLang.HolProg 64 :=
.seq rawBody185_55 rawBody185_64

def rawBody185_66 : StackLang.HolProg 64 :=
.seq rawBody185_54 rawBody185_65

def rawBody185_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) rawBody185_53 rawBody185_66

def rawBody185_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody185_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody185_71 : StackLang.HolProg 64 :=
.seq rawBody185_69 rawBody185_70

def rawBody185_72 : StackLang.HolProg 64 :=
.seq rawBody185_68 rawBody185_71

def rawBody185_73 : StackLang.HolProg 64 :=
.seq rawBody185_67 rawBody185_72

def rawBody185_74 : StackLang.HolProg 64 :=
.seq rawBody185_40 rawBody185_73

def rawBody185_75 : StackLang.HolProg 64 :=
.seq rawBody185_39 rawBody185_74

def rawBody185_76 : StackLang.HolProg 64 :=
.seq rawBody185_38 rawBody185_75

def rawBody185_77 : StackLang.HolProg 64 :=
.seq rawBody185_37 rawBody185_76

def rawBody185_78 : StackLang.HolProg 64 :=
.seq rawBody185_36 rawBody185_77

def rawBody185_79 : StackLang.HolProg 64 :=
.seq rawBody185_35 rawBody185_78

def rawBody185_80 : StackLang.HolProg 64 :=
.seq rawBody185_34 rawBody185_79

def rawBody185_81 : StackLang.HolProg 64 :=
.seq rawBody185_33 rawBody185_80

def rawBody185_82 : StackLang.HolProg 64 :=
.seq rawBody185_32 rawBody185_81

def rawBody185_83 : StackLang.HolProg 64 :=
.seq rawBody185_31 rawBody185_82

def rawBody185_84 : StackLang.HolProg 64 :=
.seq rawBody185_30 rawBody185_83

def rawBody185_85 : StackLang.HolProg 64 :=
.seq rawBody185_29 rawBody185_84

def rawBody185_86 : StackLang.HolProg 64 :=
.seq rawBody185_28 rawBody185_85

def rawBody185_87 : StackLang.HolProg 64 :=
.seq rawBody185_27 rawBody185_86

def rawBody185_88 : StackLang.HolProg 64 :=
.seq rawBody185_26 rawBody185_87

def rawBody185_89 : StackLang.HolProg 64 :=
.seq rawBody185_25 rawBody185_88

def rawBody185_90 : StackLang.HolProg 64 :=
.seq rawBody185_18 rawBody185_89

def rawBody185_91 : StackLang.HolProg 64 :=
.seq rawBody185_17 rawBody185_90

def rawBody185_92 : StackLang.HolProg 64 :=
.seq rawBody185_16 rawBody185_91

def rawBody185_93 : StackLang.HolProg 64 :=
.seq rawBody185_15 rawBody185_92

def rawBody185_94 : StackLang.HolProg 64 :=
.seq rawBody185_14 rawBody185_93

def rawBody185_95 : StackLang.HolProg 64 :=
.seq rawBody185_13 rawBody185_94

def rawBody185_96 : StackLang.HolProg 64 :=
.seq rawBody185_12 rawBody185_95

def rawBody185_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody185_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody185_100 : StackLang.HolProg 64 :=
.seq rawBody185_98 rawBody185_99

def rawBody185_101 : StackLang.HolProg 64 :=
.seq rawBody185_97 rawBody185_100

def rawBody185_102 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody185_96 rawBody185_101

def rawBody185_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody185_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody185_105 : StackLang.HolProg 64 :=
.seq rawBody185_103 rawBody185_104

def rawBody185_106 : StackLang.HolProg 64 :=
.seq rawBody185_102 rawBody185_105

def rawBody185_107 : StackLang.HolProg 64 :=
.seq rawBody185_11 rawBody185_106

def rawBody185_108 : StackLang.HolProg 64 :=
.seq rawBody185_10 rawBody185_107

def rawBody185_109 : StackLang.HolProg 64 :=
.loop rawBody185_108

def rawBody185_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody185_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody185_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody185_113 : StackLang.HolProg 64 :=
.seq rawBody185_111 rawBody185_112

def rawBody185_114 : StackLang.HolProg 64 :=
.seq rawBody185_110 rawBody185_113

def rawBody185_115 : StackLang.HolProg 64 :=
.seq rawBody185_109 rawBody185_114

def rawBody185_116 : StackLang.HolProg 64 :=
.seq rawBody185_9 rawBody185_115

def rawBody185_117 : StackLang.HolProg 64 :=
.seq rawBody185_8 rawBody185_116

def rawBody185_118 : StackLang.HolProg 64 :=
.seq rawBody185_7 rawBody185_117

def rawBody185_119 : StackLang.HolProg 64 :=
.seq rawBody185_6 rawBody185_118

def rawBody185_120 : StackLang.HolProg 64 :=
.seq rawBody185_5 rawBody185_119

def rawBody185_121 : StackLang.HolProg 64 :=
.seq rawBody185_4 rawBody185_120

def rawBody185_122 : StackLang.HolProg 64 :=
.seq rawBody185_3 rawBody185_121

def rawBody185_123 : StackLang.HolProg 64 :=
.seq rawBody185_2 rawBody185_122

def rawBody185_124 : StackLang.HolProg 64 :=
.seq rawBody185_1 rawBody185_123

def rawBody185_125 : StackLang.HolProg 64 :=
.seq rawBody185_0 rawBody185_124

def raw185 : StackLang.HolProg 64 := rawBody185_125
theorem raw185_eq : StackRawCall.compTop RawInfo.rawInfo (function185 (.list [])).1 = raw185 := by
  kernel_rfl
#print axioms raw185_eq
end InitECandidate.Proofs.BackendStages
