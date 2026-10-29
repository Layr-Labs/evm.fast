import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw732
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody732_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody732_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody732_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody732_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody732_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody732_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody732_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody732_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def AllocBody732_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def AllocBody732_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def AllocBody732_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def AllocBody732_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 80#64))

def AllocBody732_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def AllocBody732_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody732_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody732_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody732_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody732_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody732_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody732_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody732_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody732_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody732_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody732_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody732_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody732_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody732_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody732_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody732_52 : StackLang.HolProg 64 :=
.seq AllocBody732_50 AllocBody732_51

def AllocBody732_53 : StackLang.HolProg 64 :=
.seq AllocBody732_49 AllocBody732_52

def AllocBody732_54 : StackLang.HolProg 64 :=
.seq AllocBody732_48 AllocBody732_53

def AllocBody732_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_56 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody732_54 AllocBody732_55

def AllocBody732_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody732_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody732_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody732_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody732_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody732_62 : StackLang.HolProg 64 :=
.seq AllocBody732_60 AllocBody732_61

def AllocBody732_63 : StackLang.HolProg 64 :=
.seq AllocBody732_59 AllocBody732_62

def AllocBody732_64 : StackLang.HolProg 64 :=
.seq AllocBody732_58 AllocBody732_63

def AllocBody732_65 : StackLang.HolProg 64 :=
.seq AllocBody732_57 AllocBody732_64

def AllocBody732_66 : StackLang.HolProg 64 :=
.seq AllocBody732_56 AllocBody732_65

def AllocBody732_67 : StackLang.HolProg 64 :=
.seq AllocBody732_47 AllocBody732_66

def AllocBody732_68 : StackLang.HolProg 64 :=
.seq AllocBody732_46 AllocBody732_67

def AllocBody732_69 : StackLang.HolProg 64 :=
.seq AllocBody732_45 AllocBody732_68

def AllocBody732_70 : StackLang.HolProg 64 :=
.seq AllocBody732_44 AllocBody732_69

def AllocBody732_71 : StackLang.HolProg 64 :=
.seq AllocBody732_43 AllocBody732_70

def AllocBody732_72 : StackLang.HolProg 64 :=
.seq AllocBody732_42 AllocBody732_71

def AllocBody732_73 : StackLang.HolProg 64 :=
.seq AllocBody732_41 AllocBody732_72

def AllocBody732_74 : StackLang.HolProg 64 :=
.seq AllocBody732_40 AllocBody732_73

def AllocBody732_75 : StackLang.HolProg 64 :=
.seq AllocBody732_39 AllocBody732_74

def AllocBody732_76 : StackLang.HolProg 64 :=
.seq AllocBody732_38 AllocBody732_75

def AllocBody732_77 : StackLang.HolProg 64 :=
.seq AllocBody732_37 AllocBody732_76

def AllocBody732_78 : StackLang.HolProg 64 :=
.seq AllocBody732_36 AllocBody732_77

def AllocBody732_79 : StackLang.HolProg 64 :=
.seq AllocBody732_35 AllocBody732_78

def AllocBody732_80 : StackLang.HolProg 64 :=
.seq AllocBody732_34 AllocBody732_79

def AllocBody732_81 : StackLang.HolProg 64 :=
.seq AllocBody732_33 AllocBody732_80

def AllocBody732_82 : StackLang.HolProg 64 :=
.seq AllocBody732_32 AllocBody732_81

def AllocBody732_83 : StackLang.HolProg 64 :=
.seq AllocBody732_31 AllocBody732_82

def AllocBody732_84 : StackLang.HolProg 64 :=
.seq AllocBody732_30 AllocBody732_83

def AllocBody732_85 : StackLang.HolProg 64 :=
.seq AllocBody732_29 AllocBody732_84

def AllocBody732_86 : StackLang.HolProg 64 :=
.seq AllocBody732_28 AllocBody732_85

def AllocBody732_87 : StackLang.HolProg 64 :=
.seq AllocBody732_27 AllocBody732_86

def AllocBody732_88 : StackLang.HolProg 64 :=
.seq AllocBody732_26 AllocBody732_87

def AllocBody732_89 : StackLang.HolProg 64 :=
.seq AllocBody732_25 AllocBody732_88

def AllocBody732_90 : StackLang.HolProg 64 :=
.seq AllocBody732_24 AllocBody732_89

def AllocBody732_91 : StackLang.HolProg 64 :=
.seq AllocBody732_23 AllocBody732_90

def AllocBody732_92 : StackLang.HolProg 64 :=
.seq AllocBody732_22 AllocBody732_91

def AllocBody732_93 : StackLang.HolProg 64 :=
.seq AllocBody732_21 AllocBody732_92

def AllocBody732_94 : StackLang.HolProg 64 :=
.seq AllocBody732_20 AllocBody732_93

def AllocBody732_95 : StackLang.HolProg 64 :=
.seq AllocBody732_19 AllocBody732_94

def AllocBody732_96 : StackLang.HolProg 64 :=
.seq AllocBody732_18 AllocBody732_95

def AllocBody732_97 : StackLang.HolProg 64 :=
.seq AllocBody732_17 AllocBody732_96

def AllocBody732_98 : StackLang.HolProg 64 :=
.seq AllocBody732_16 AllocBody732_97

def AllocBody732_99 : StackLang.HolProg 64 :=
.seq AllocBody732_15 AllocBody732_98

def AllocBody732_100 : StackLang.HolProg 64 :=
.seq AllocBody732_14 AllocBody732_99

def AllocBody732_101 : StackLang.HolProg 64 :=
.seq AllocBody732_13 AllocBody732_100

def AllocBody732_102 : StackLang.HolProg 64 :=
.seq AllocBody732_12 AllocBody732_101

def AllocBody732_103 : StackLang.HolProg 64 :=
.seq AllocBody732_11 AllocBody732_102

def AllocBody732_104 : StackLang.HolProg 64 :=
.seq AllocBody732_10 AllocBody732_103

def AllocBody732_105 : StackLang.HolProg 64 :=
.seq AllocBody732_9 AllocBody732_104

def AllocBody732_106 : StackLang.HolProg 64 :=
.seq AllocBody732_8 AllocBody732_105

def AllocBody732_107 : StackLang.HolProg 64 :=
.seq AllocBody732_7 AllocBody732_106

def AllocBody732_108 : StackLang.HolProg 64 :=
.seq AllocBody732_6 AllocBody732_107

def AllocBody732_109 : StackLang.HolProg 64 :=
.seq AllocBody732_5 AllocBody732_108

def AllocBody732_110 : StackLang.HolProg 64 :=
.seq AllocBody732_4 AllocBody732_109

def AllocBody732_111 : StackLang.HolProg 64 :=
.seq AllocBody732_3 AllocBody732_110

def AllocBody732_112 : StackLang.HolProg 64 :=
.seq AllocBody732_2 AllocBody732_111

def AllocBody732_113 : StackLang.HolProg 64 :=
.seq AllocBody732_1 AllocBody732_112

def AllocBody732_114 : StackLang.HolProg 64 :=
.seq AllocBody732_0 AllocBody732_113

def Alloc732 : Nat × StackLang.HolProg 64 := (732, AllocBody732_114)
theorem Alloc732_eq : StackAlloc.progComp (732, raw732) = Alloc732 := by
  kernel_rfl
#print axioms Alloc732_eq
end InitECandidate.Proofs.BackendStages
