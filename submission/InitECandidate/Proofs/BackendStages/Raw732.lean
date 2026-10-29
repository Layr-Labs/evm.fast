import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function732
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody732_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody732_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody732_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody732_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody732_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody732_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody732_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def rawBody732_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def rawBody732_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def rawBody732_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def rawBody732_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def rawBody732_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 80#64))

def rawBody732_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def rawBody732_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def rawBody732_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody732_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody732_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody732_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody732_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody732_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody732_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody732_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody732_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody732_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody732_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody732_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody732_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody732_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody732_52 : StackLang.HolProg 64 :=
.seq rawBody732_50 rawBody732_51

def rawBody732_53 : StackLang.HolProg 64 :=
.seq rawBody732_49 rawBody732_52

def rawBody732_54 : StackLang.HolProg 64 :=
.seq rawBody732_48 rawBody732_53

def rawBody732_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_56 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody732_54 rawBody732_55

def rawBody732_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody732_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody732_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody732_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody732_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody732_62 : StackLang.HolProg 64 :=
.seq rawBody732_60 rawBody732_61

def rawBody732_63 : StackLang.HolProg 64 :=
.seq rawBody732_59 rawBody732_62

def rawBody732_64 : StackLang.HolProg 64 :=
.seq rawBody732_58 rawBody732_63

def rawBody732_65 : StackLang.HolProg 64 :=
.seq rawBody732_57 rawBody732_64

def rawBody732_66 : StackLang.HolProg 64 :=
.seq rawBody732_56 rawBody732_65

def rawBody732_67 : StackLang.HolProg 64 :=
.seq rawBody732_47 rawBody732_66

def rawBody732_68 : StackLang.HolProg 64 :=
.seq rawBody732_46 rawBody732_67

def rawBody732_69 : StackLang.HolProg 64 :=
.seq rawBody732_45 rawBody732_68

def rawBody732_70 : StackLang.HolProg 64 :=
.seq rawBody732_44 rawBody732_69

def rawBody732_71 : StackLang.HolProg 64 :=
.seq rawBody732_43 rawBody732_70

def rawBody732_72 : StackLang.HolProg 64 :=
.seq rawBody732_42 rawBody732_71

def rawBody732_73 : StackLang.HolProg 64 :=
.seq rawBody732_41 rawBody732_72

def rawBody732_74 : StackLang.HolProg 64 :=
.seq rawBody732_40 rawBody732_73

def rawBody732_75 : StackLang.HolProg 64 :=
.seq rawBody732_39 rawBody732_74

def rawBody732_76 : StackLang.HolProg 64 :=
.seq rawBody732_38 rawBody732_75

def rawBody732_77 : StackLang.HolProg 64 :=
.seq rawBody732_37 rawBody732_76

def rawBody732_78 : StackLang.HolProg 64 :=
.seq rawBody732_36 rawBody732_77

def rawBody732_79 : StackLang.HolProg 64 :=
.seq rawBody732_35 rawBody732_78

def rawBody732_80 : StackLang.HolProg 64 :=
.seq rawBody732_34 rawBody732_79

def rawBody732_81 : StackLang.HolProg 64 :=
.seq rawBody732_33 rawBody732_80

def rawBody732_82 : StackLang.HolProg 64 :=
.seq rawBody732_32 rawBody732_81

def rawBody732_83 : StackLang.HolProg 64 :=
.seq rawBody732_31 rawBody732_82

def rawBody732_84 : StackLang.HolProg 64 :=
.seq rawBody732_30 rawBody732_83

def rawBody732_85 : StackLang.HolProg 64 :=
.seq rawBody732_29 rawBody732_84

def rawBody732_86 : StackLang.HolProg 64 :=
.seq rawBody732_28 rawBody732_85

def rawBody732_87 : StackLang.HolProg 64 :=
.seq rawBody732_27 rawBody732_86

def rawBody732_88 : StackLang.HolProg 64 :=
.seq rawBody732_26 rawBody732_87

def rawBody732_89 : StackLang.HolProg 64 :=
.seq rawBody732_25 rawBody732_88

def rawBody732_90 : StackLang.HolProg 64 :=
.seq rawBody732_24 rawBody732_89

def rawBody732_91 : StackLang.HolProg 64 :=
.seq rawBody732_23 rawBody732_90

def rawBody732_92 : StackLang.HolProg 64 :=
.seq rawBody732_22 rawBody732_91

def rawBody732_93 : StackLang.HolProg 64 :=
.seq rawBody732_21 rawBody732_92

def rawBody732_94 : StackLang.HolProg 64 :=
.seq rawBody732_20 rawBody732_93

def rawBody732_95 : StackLang.HolProg 64 :=
.seq rawBody732_19 rawBody732_94

def rawBody732_96 : StackLang.HolProg 64 :=
.seq rawBody732_18 rawBody732_95

def rawBody732_97 : StackLang.HolProg 64 :=
.seq rawBody732_17 rawBody732_96

def rawBody732_98 : StackLang.HolProg 64 :=
.seq rawBody732_16 rawBody732_97

def rawBody732_99 : StackLang.HolProg 64 :=
.seq rawBody732_15 rawBody732_98

def rawBody732_100 : StackLang.HolProg 64 :=
.seq rawBody732_14 rawBody732_99

def rawBody732_101 : StackLang.HolProg 64 :=
.seq rawBody732_13 rawBody732_100

def rawBody732_102 : StackLang.HolProg 64 :=
.seq rawBody732_12 rawBody732_101

def rawBody732_103 : StackLang.HolProg 64 :=
.seq rawBody732_11 rawBody732_102

def rawBody732_104 : StackLang.HolProg 64 :=
.seq rawBody732_10 rawBody732_103

def rawBody732_105 : StackLang.HolProg 64 :=
.seq rawBody732_9 rawBody732_104

def rawBody732_106 : StackLang.HolProg 64 :=
.seq rawBody732_8 rawBody732_105

def rawBody732_107 : StackLang.HolProg 64 :=
.seq rawBody732_7 rawBody732_106

def rawBody732_108 : StackLang.HolProg 64 :=
.seq rawBody732_6 rawBody732_107

def rawBody732_109 : StackLang.HolProg 64 :=
.seq rawBody732_5 rawBody732_108

def rawBody732_110 : StackLang.HolProg 64 :=
.seq rawBody732_4 rawBody732_109

def rawBody732_111 : StackLang.HolProg 64 :=
.seq rawBody732_3 rawBody732_110

def rawBody732_112 : StackLang.HolProg 64 :=
.seq rawBody732_2 rawBody732_111

def rawBody732_113 : StackLang.HolProg 64 :=
.seq rawBody732_1 rawBody732_112

def rawBody732_114 : StackLang.HolProg 64 :=
.seq rawBody732_0 rawBody732_113

def raw732 : StackLang.HolProg 64 := rawBody732_114
theorem raw732_eq : StackRawCall.compTop RawInfo.rawInfo (function732 (.list [])).1 = raw732 := by
  kernel_rfl
#print axioms raw732_eq
end InitECandidate.Proofs.BackendStages
