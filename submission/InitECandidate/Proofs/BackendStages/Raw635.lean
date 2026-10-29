import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function635
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody635_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody635_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody635_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody635_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody635_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody635_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody635_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody635_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody635_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody635_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody635_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody635_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody635_20 : StackLang.HolProg 64 :=
.seq rawBody635_18 rawBody635_19

def rawBody635_21 : StackLang.HolProg 64 :=
.seq rawBody635_17 rawBody635_20

def rawBody635_22 : StackLang.HolProg 64 :=
.seq rawBody635_16 rawBody635_21

def rawBody635_23 : StackLang.HolProg 64 :=
.seq rawBody635_15 rawBody635_22

def rawBody635_24 : StackLang.HolProg 64 :=
.seq rawBody635_14 rawBody635_23

def rawBody635_25 : StackLang.HolProg 64 :=
.seq rawBody635_13 rawBody635_24

def rawBody635_26 : StackLang.HolProg 64 :=
.seq rawBody635_12 rawBody635_25

def rawBody635_27 : StackLang.HolProg 64 :=
.seq rawBody635_11 rawBody635_26

def rawBody635_28 : StackLang.HolProg 64 :=
.seq rawBody635_10 rawBody635_27

def rawBody635_29 : StackLang.HolProg 64 :=
.seq rawBody635_9 rawBody635_28

def rawBody635_30 : StackLang.HolProg 64 :=
.seq rawBody635_8 rawBody635_29

def rawBody635_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody635_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody635_34 : StackLang.HolProg 64 :=
.seq rawBody635_32 rawBody635_33

def rawBody635_35 : StackLang.HolProg 64 :=
.seq rawBody635_31 rawBody635_34

def rawBody635_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody635_30 rawBody635_35

def rawBody635_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody635_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_39 : StackLang.HolProg 64 :=
.seq rawBody635_37 rawBody635_38

def rawBody635_40 : StackLang.HolProg 64 :=
.seq rawBody635_36 rawBody635_39

def rawBody635_41 : StackLang.HolProg 64 :=
.seq rawBody635_7 rawBody635_40

def rawBody635_42 : StackLang.HolProg 64 :=
.loop rawBody635_41

def rawBody635_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody635_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody635_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody635_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody635_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody635_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody635_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody635_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody635_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody635_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody635_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def rawBody635_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody635_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody635_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody635_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def rawBody635_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody635_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def rawBody635_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody635_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody635_75 : StackLang.HolProg 64 :=
.seq rawBody635_73 rawBody635_74

def rawBody635_76 : StackLang.HolProg 64 :=
.seq rawBody635_72 rawBody635_75

def rawBody635_77 : StackLang.HolProg 64 :=
.seq rawBody635_71 rawBody635_76

def rawBody635_78 : StackLang.HolProg 64 :=
.seq rawBody635_70 rawBody635_77

def rawBody635_79 : StackLang.HolProg 64 :=
.seq rawBody635_69 rawBody635_78

def rawBody635_80 : StackLang.HolProg 64 :=
.seq rawBody635_68 rawBody635_79

def rawBody635_81 : StackLang.HolProg 64 :=
.seq rawBody635_67 rawBody635_80

def rawBody635_82 : StackLang.HolProg 64 :=
.seq rawBody635_66 rawBody635_81

def rawBody635_83 : StackLang.HolProg 64 :=
.seq rawBody635_65 rawBody635_82

def rawBody635_84 : StackLang.HolProg 64 :=
.seq rawBody635_64 rawBody635_83

def rawBody635_85 : StackLang.HolProg 64 :=
.seq rawBody635_63 rawBody635_84

def rawBody635_86 : StackLang.HolProg 64 :=
.seq rawBody635_62 rawBody635_85

def rawBody635_87 : StackLang.HolProg 64 :=
.seq rawBody635_61 rawBody635_86

def rawBody635_88 : StackLang.HolProg 64 :=
.seq rawBody635_60 rawBody635_87

def rawBody635_89 : StackLang.HolProg 64 :=
.seq rawBody635_59 rawBody635_88

def rawBody635_90 : StackLang.HolProg 64 :=
.seq rawBody635_58 rawBody635_89

def rawBody635_91 : StackLang.HolProg 64 :=
.seq rawBody635_57 rawBody635_90

def rawBody635_92 : StackLang.HolProg 64 :=
.seq rawBody635_56 rawBody635_91

def rawBody635_93 : StackLang.HolProg 64 :=
.seq rawBody635_55 rawBody635_92

def rawBody635_94 : StackLang.HolProg 64 :=
.seq rawBody635_54 rawBody635_93

def rawBody635_95 : StackLang.HolProg 64 :=
.seq rawBody635_53 rawBody635_94

def rawBody635_96 : StackLang.HolProg 64 :=
.seq rawBody635_52 rawBody635_95

def rawBody635_97 : StackLang.HolProg 64 :=
.seq rawBody635_51 rawBody635_96

def rawBody635_98 : StackLang.HolProg 64 :=
.seq rawBody635_50 rawBody635_97

def rawBody635_99 : StackLang.HolProg 64 :=
.seq rawBody635_49 rawBody635_98

def rawBody635_100 : StackLang.HolProg 64 :=
.seq rawBody635_48 rawBody635_99

def rawBody635_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody635_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody635_103 : StackLang.HolProg 64 :=
.seq rawBody635_101 rawBody635_102

def rawBody635_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody635_100 rawBody635_103

def rawBody635_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody635_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody635_107 : StackLang.HolProg 64 :=
.seq rawBody635_105 rawBody635_106

def rawBody635_108 : StackLang.HolProg 64 :=
.seq rawBody635_104 rawBody635_107

def rawBody635_109 : StackLang.HolProg 64 :=
.seq rawBody635_47 rawBody635_108

def rawBody635_110 : StackLang.HolProg 64 :=
.loop rawBody635_109

def rawBody635_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody635_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody635_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody635_114 : StackLang.HolProg 64 :=
.seq rawBody635_112 rawBody635_113

def rawBody635_115 : StackLang.HolProg 64 :=
.seq rawBody635_111 rawBody635_114

def rawBody635_116 : StackLang.HolProg 64 :=
.seq rawBody635_110 rawBody635_115

def rawBody635_117 : StackLang.HolProg 64 :=
.seq rawBody635_46 rawBody635_116

def rawBody635_118 : StackLang.HolProg 64 :=
.seq rawBody635_45 rawBody635_117

def rawBody635_119 : StackLang.HolProg 64 :=
.seq rawBody635_44 rawBody635_118

def rawBody635_120 : StackLang.HolProg 64 :=
.seq rawBody635_43 rawBody635_119

def rawBody635_121 : StackLang.HolProg 64 :=
.seq rawBody635_42 rawBody635_120

def rawBody635_122 : StackLang.HolProg 64 :=
.seq rawBody635_6 rawBody635_121

def rawBody635_123 : StackLang.HolProg 64 :=
.seq rawBody635_5 rawBody635_122

def rawBody635_124 : StackLang.HolProg 64 :=
.seq rawBody635_4 rawBody635_123

def rawBody635_125 : StackLang.HolProg 64 :=
.seq rawBody635_3 rawBody635_124

def rawBody635_126 : StackLang.HolProg 64 :=
.seq rawBody635_2 rawBody635_125

def rawBody635_127 : StackLang.HolProg 64 :=
.seq rawBody635_1 rawBody635_126

def rawBody635_128 : StackLang.HolProg 64 :=
.seq rawBody635_0 rawBody635_127

def raw635 : StackLang.HolProg 64 := rawBody635_128
theorem raw635_eq : StackRawCall.compTop RawInfo.rawInfo (function635 (.list [])).1 = raw635 := by
  kernel_rfl
#print axioms raw635_eq
end InitECandidate.Proofs.BackendStages
