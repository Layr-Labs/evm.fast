import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function468
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody468_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody468_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody468_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 23#64)

def rawBody468_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody468_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody468_7 : StackLang.HolProg 64 :=
.seq rawBody468_5 rawBody468_6

def rawBody468_8 : StackLang.HolProg 64 :=
.seq rawBody468_4 rawBody468_7

def rawBody468_9 : StackLang.HolProg 64 :=
.seq rawBody468_3 rawBody468_8

def rawBody468_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody468_9 rawBody468_10

def rawBody468_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody468_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 239#64)

def rawBody468_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody468_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_21 : StackLang.HolProg 64 :=
.seq rawBody468_19 rawBody468_20

def rawBody468_22 : StackLang.HolProg 64 :=
.seq rawBody468_18 rawBody468_21

def rawBody468_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody468_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_26 : StackLang.HolProg 64 :=
.seq rawBody468_24 rawBody468_25

def rawBody468_27 : StackLang.HolProg 64 :=
.seq rawBody468_23 rawBody468_26

def rawBody468_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody468_22 rawBody468_27

def rawBody468_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody468_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody468_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody468_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody468_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_38 : StackLang.HolProg 64 :=
.seq rawBody468_36 rawBody468_37

def rawBody468_39 : StackLang.HolProg 64 :=
.seq rawBody468_35 rawBody468_38

def rawBody468_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody468_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_43 : StackLang.HolProg 64 :=
.seq rawBody468_41 rawBody468_42

def rawBody468_44 : StackLang.HolProg 64 :=
.seq rawBody468_40 rawBody468_43

def rawBody468_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody468_39 rawBody468_44

def rawBody468_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody468_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody468_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody468_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody468_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_55 : StackLang.HolProg 64 :=
.seq rawBody468_53 rawBody468_54

def rawBody468_56 : StackLang.HolProg 64 :=
.seq rawBody468_52 rawBody468_55

def rawBody468_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody468_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_60 : StackLang.HolProg 64 :=
.seq rawBody468_58 rawBody468_59

def rawBody468_61 : StackLang.HolProg 64 :=
.seq rawBody468_57 rawBody468_60

def rawBody468_62 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody468_56 rawBody468_61

def rawBody468_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody468_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody468_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody468_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody468_71 : StackLang.HolProg 64 :=
.seq rawBody468_69 rawBody468_70

def rawBody468_72 : StackLang.HolProg 64 :=
.seq rawBody468_68 rawBody468_71

def rawBody468_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) rawBody468_72 rawBody468_73

def rawBody468_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody468_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody468_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody468_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody468_79 : StackLang.HolProg 64 :=
.seq rawBody468_77 rawBody468_78

def rawBody468_80 : StackLang.HolProg 64 :=
.seq rawBody468_76 rawBody468_79

def rawBody468_81 : StackLang.HolProg 64 :=
.seq rawBody468_75 rawBody468_80

def rawBody468_82 : StackLang.HolProg 64 :=
.seq rawBody468_74 rawBody468_81

def rawBody468_83 : StackLang.HolProg 64 :=
.seq rawBody468_67 rawBody468_82

def rawBody468_84 : StackLang.HolProg 64 :=
.seq rawBody468_66 rawBody468_83

def rawBody468_85 : StackLang.HolProg 64 :=
.seq rawBody468_65 rawBody468_84

def rawBody468_86 : StackLang.HolProg 64 :=
.seq rawBody468_64 rawBody468_85

def rawBody468_87 : StackLang.HolProg 64 :=
.seq rawBody468_63 rawBody468_86

def rawBody468_88 : StackLang.HolProg 64 :=
.seq rawBody468_62 rawBody468_87

def rawBody468_89 : StackLang.HolProg 64 :=
.seq rawBody468_51 rawBody468_88

def rawBody468_90 : StackLang.HolProg 64 :=
.seq rawBody468_50 rawBody468_89

def rawBody468_91 : StackLang.HolProg 64 :=
.seq rawBody468_49 rawBody468_90

def rawBody468_92 : StackLang.HolProg 64 :=
.seq rawBody468_48 rawBody468_91

def rawBody468_93 : StackLang.HolProg 64 :=
.seq rawBody468_47 rawBody468_92

def rawBody468_94 : StackLang.HolProg 64 :=
.seq rawBody468_46 rawBody468_93

def rawBody468_95 : StackLang.HolProg 64 :=
.seq rawBody468_45 rawBody468_94

def rawBody468_96 : StackLang.HolProg 64 :=
.seq rawBody468_34 rawBody468_95

def rawBody468_97 : StackLang.HolProg 64 :=
.seq rawBody468_33 rawBody468_96

def rawBody468_98 : StackLang.HolProg 64 :=
.seq rawBody468_32 rawBody468_97

def rawBody468_99 : StackLang.HolProg 64 :=
.seq rawBody468_31 rawBody468_98

def rawBody468_100 : StackLang.HolProg 64 :=
.seq rawBody468_30 rawBody468_99

def rawBody468_101 : StackLang.HolProg 64 :=
.seq rawBody468_29 rawBody468_100

def rawBody468_102 : StackLang.HolProg 64 :=
.seq rawBody468_28 rawBody468_101

def rawBody468_103 : StackLang.HolProg 64 :=
.seq rawBody468_17 rawBody468_102

def rawBody468_104 : StackLang.HolProg 64 :=
.seq rawBody468_16 rawBody468_103

def rawBody468_105 : StackLang.HolProg 64 :=
.seq rawBody468_15 rawBody468_104

def rawBody468_106 : StackLang.HolProg 64 :=
.seq rawBody468_14 rawBody468_105

def rawBody468_107 : StackLang.HolProg 64 :=
.seq rawBody468_13 rawBody468_106

def rawBody468_108 : StackLang.HolProg 64 :=
.seq rawBody468_12 rawBody468_107

def rawBody468_109 : StackLang.HolProg 64 :=
.seq rawBody468_11 rawBody468_108

def rawBody468_110 : StackLang.HolProg 64 :=
.seq rawBody468_2 rawBody468_109

def rawBody468_111 : StackLang.HolProg 64 :=
.seq rawBody468_1 rawBody468_110

def rawBody468_112 : StackLang.HolProg 64 :=
.seq rawBody468_0 rawBody468_111

def raw468 : StackLang.HolProg 64 := rawBody468_112
theorem raw468_eq : StackRawCall.compTop RawInfo.rawInfo (function468 (.list [])).1 = raw468 := by
  kernel_rfl
#print axioms raw468_eq
end InitECandidate.Proofs.BackendStages
