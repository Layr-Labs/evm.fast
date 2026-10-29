import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed732
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody732_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody732_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def NamedBody732_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def NamedBody732_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def NamedBody732_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 32#64))

def NamedBody732_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 40#64))

def NamedBody732_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 48#64))

def NamedBody732_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 56#64))

def NamedBody732_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 64#64))

def NamedBody732_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 72#64))

def NamedBody732_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 29
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 80#64))

def NamedBody732_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 88#64))

def NamedBody732_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 29)))

def NamedBody732_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 28)))

def NamedBody732_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody732_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody732_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody732_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody732_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody732_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody732_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody732_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody732_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody732_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody732_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody732_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody732_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody732_52 : StackLang.HolProg 64 :=
.seq NamedBody732_50 NamedBody732_51

def NamedBody732_53 : StackLang.HolProg 64 :=
.seq NamedBody732_49 NamedBody732_52

def NamedBody732_54 : StackLang.HolProg 64 :=
.seq NamedBody732_48 NamedBody732_53

def NamedBody732_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_56 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody732_54 NamedBody732_55

def NamedBody732_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody732_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody732_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody732_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody732_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody732_62 : StackLang.HolProg 64 :=
.seq NamedBody732_60 NamedBody732_61

def NamedBody732_63 : StackLang.HolProg 64 :=
.seq NamedBody732_59 NamedBody732_62

def NamedBody732_64 : StackLang.HolProg 64 :=
.seq NamedBody732_58 NamedBody732_63

def NamedBody732_65 : StackLang.HolProg 64 :=
.seq NamedBody732_57 NamedBody732_64

def NamedBody732_66 : StackLang.HolProg 64 :=
.seq NamedBody732_56 NamedBody732_65

def NamedBody732_67 : StackLang.HolProg 64 :=
.seq NamedBody732_47 NamedBody732_66

def NamedBody732_68 : StackLang.HolProg 64 :=
.seq NamedBody732_46 NamedBody732_67

def NamedBody732_69 : StackLang.HolProg 64 :=
.seq NamedBody732_45 NamedBody732_68

def NamedBody732_70 : StackLang.HolProg 64 :=
.seq NamedBody732_44 NamedBody732_69

def NamedBody732_71 : StackLang.HolProg 64 :=
.seq NamedBody732_43 NamedBody732_70

def NamedBody732_72 : StackLang.HolProg 64 :=
.seq NamedBody732_42 NamedBody732_71

def NamedBody732_73 : StackLang.HolProg 64 :=
.seq NamedBody732_41 NamedBody732_72

def NamedBody732_74 : StackLang.HolProg 64 :=
.seq NamedBody732_40 NamedBody732_73

def NamedBody732_75 : StackLang.HolProg 64 :=
.seq NamedBody732_39 NamedBody732_74

def NamedBody732_76 : StackLang.HolProg 64 :=
.seq NamedBody732_38 NamedBody732_75

def NamedBody732_77 : StackLang.HolProg 64 :=
.seq NamedBody732_37 NamedBody732_76

def NamedBody732_78 : StackLang.HolProg 64 :=
.seq NamedBody732_36 NamedBody732_77

def NamedBody732_79 : StackLang.HolProg 64 :=
.seq NamedBody732_35 NamedBody732_78

def NamedBody732_80 : StackLang.HolProg 64 :=
.seq NamedBody732_34 NamedBody732_79

def NamedBody732_81 : StackLang.HolProg 64 :=
.seq NamedBody732_33 NamedBody732_80

def NamedBody732_82 : StackLang.HolProg 64 :=
.seq NamedBody732_32 NamedBody732_81

def NamedBody732_83 : StackLang.HolProg 64 :=
.seq NamedBody732_31 NamedBody732_82

def NamedBody732_84 : StackLang.HolProg 64 :=
.seq NamedBody732_30 NamedBody732_83

def NamedBody732_85 : StackLang.HolProg 64 :=
.seq NamedBody732_29 NamedBody732_84

def NamedBody732_86 : StackLang.HolProg 64 :=
.seq NamedBody732_28 NamedBody732_85

def NamedBody732_87 : StackLang.HolProg 64 :=
.seq NamedBody732_27 NamedBody732_86

def NamedBody732_88 : StackLang.HolProg 64 :=
.seq NamedBody732_26 NamedBody732_87

def NamedBody732_89 : StackLang.HolProg 64 :=
.seq NamedBody732_25 NamedBody732_88

def NamedBody732_90 : StackLang.HolProg 64 :=
.seq NamedBody732_24 NamedBody732_89

def NamedBody732_91 : StackLang.HolProg 64 :=
.seq NamedBody732_23 NamedBody732_90

def NamedBody732_92 : StackLang.HolProg 64 :=
.seq NamedBody732_22 NamedBody732_91

def NamedBody732_93 : StackLang.HolProg 64 :=
.seq NamedBody732_21 NamedBody732_92

def NamedBody732_94 : StackLang.HolProg 64 :=
.seq NamedBody732_20 NamedBody732_93

def NamedBody732_95 : StackLang.HolProg 64 :=
.seq NamedBody732_19 NamedBody732_94

def NamedBody732_96 : StackLang.HolProg 64 :=
.seq NamedBody732_18 NamedBody732_95

def NamedBody732_97 : StackLang.HolProg 64 :=
.seq NamedBody732_17 NamedBody732_96

def NamedBody732_98 : StackLang.HolProg 64 :=
.seq NamedBody732_16 NamedBody732_97

def NamedBody732_99 : StackLang.HolProg 64 :=
.seq NamedBody732_15 NamedBody732_98

def NamedBody732_100 : StackLang.HolProg 64 :=
.seq NamedBody732_14 NamedBody732_99

def NamedBody732_101 : StackLang.HolProg 64 :=
.seq NamedBody732_13 NamedBody732_100

def NamedBody732_102 : StackLang.HolProg 64 :=
.seq NamedBody732_12 NamedBody732_101

def NamedBody732_103 : StackLang.HolProg 64 :=
.seq NamedBody732_11 NamedBody732_102

def NamedBody732_104 : StackLang.HolProg 64 :=
.seq NamedBody732_10 NamedBody732_103

def NamedBody732_105 : StackLang.HolProg 64 :=
.seq NamedBody732_9 NamedBody732_104

def NamedBody732_106 : StackLang.HolProg 64 :=
.seq NamedBody732_8 NamedBody732_105

def NamedBody732_107 : StackLang.HolProg 64 :=
.seq NamedBody732_7 NamedBody732_106

def NamedBody732_108 : StackLang.HolProg 64 :=
.seq NamedBody732_6 NamedBody732_107

def NamedBody732_109 : StackLang.HolProg 64 :=
.seq NamedBody732_5 NamedBody732_108

def NamedBody732_110 : StackLang.HolProg 64 :=
.seq NamedBody732_4 NamedBody732_109

def NamedBody732_111 : StackLang.HolProg 64 :=
.seq NamedBody732_3 NamedBody732_110

def NamedBody732_112 : StackLang.HolProg 64 :=
.seq NamedBody732_2 NamedBody732_111

def NamedBody732_113 : StackLang.HolProg 64 :=
.seq NamedBody732_1 NamedBody732_112

def NamedBody732_114 : StackLang.HolProg 64 :=
.seq NamedBody732_0 NamedBody732_113

def Named732 : Nat × StackLang.HolProg 64 := (732, NamedBody732_114)
theorem Named732_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed732 = Named732 := by
  kernel_rfl
#print axioms Named732_eq
end InitECandidate.Proofs.BackendStages
