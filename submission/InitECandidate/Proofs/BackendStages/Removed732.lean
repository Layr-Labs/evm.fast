import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc732
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody732_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody732_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody732_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody732_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody732_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody732_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def RemovedBody732_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def RemovedBody732_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def RemovedBody732_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 64#64))

def RemovedBody732_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def RemovedBody732_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 80#64))

def RemovedBody732_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def RemovedBody732_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def RemovedBody732_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody732_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody732_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody732_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody732_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody732_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody732_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody732_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody732_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody732_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody732_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody732_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody732_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody732_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody732_52 : StackLang.HolProg 64 :=
.seq RemovedBody732_50 RemovedBody732_51

def RemovedBody732_53 : StackLang.HolProg 64 :=
.seq RemovedBody732_49 RemovedBody732_52

def RemovedBody732_54 : StackLang.HolProg 64 :=
.seq RemovedBody732_48 RemovedBody732_53

def RemovedBody732_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_56 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody732_54 RemovedBody732_55

def RemovedBody732_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody732_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody732_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody732_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody732_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody732_62 : StackLang.HolProg 64 :=
.seq RemovedBody732_60 RemovedBody732_61

def RemovedBody732_63 : StackLang.HolProg 64 :=
.seq RemovedBody732_59 RemovedBody732_62

def RemovedBody732_64 : StackLang.HolProg 64 :=
.seq RemovedBody732_58 RemovedBody732_63

def RemovedBody732_65 : StackLang.HolProg 64 :=
.seq RemovedBody732_57 RemovedBody732_64

def RemovedBody732_66 : StackLang.HolProg 64 :=
.seq RemovedBody732_56 RemovedBody732_65

def RemovedBody732_67 : StackLang.HolProg 64 :=
.seq RemovedBody732_47 RemovedBody732_66

def RemovedBody732_68 : StackLang.HolProg 64 :=
.seq RemovedBody732_46 RemovedBody732_67

def RemovedBody732_69 : StackLang.HolProg 64 :=
.seq RemovedBody732_45 RemovedBody732_68

def RemovedBody732_70 : StackLang.HolProg 64 :=
.seq RemovedBody732_44 RemovedBody732_69

def RemovedBody732_71 : StackLang.HolProg 64 :=
.seq RemovedBody732_43 RemovedBody732_70

def RemovedBody732_72 : StackLang.HolProg 64 :=
.seq RemovedBody732_42 RemovedBody732_71

def RemovedBody732_73 : StackLang.HolProg 64 :=
.seq RemovedBody732_41 RemovedBody732_72

def RemovedBody732_74 : StackLang.HolProg 64 :=
.seq RemovedBody732_40 RemovedBody732_73

def RemovedBody732_75 : StackLang.HolProg 64 :=
.seq RemovedBody732_39 RemovedBody732_74

def RemovedBody732_76 : StackLang.HolProg 64 :=
.seq RemovedBody732_38 RemovedBody732_75

def RemovedBody732_77 : StackLang.HolProg 64 :=
.seq RemovedBody732_37 RemovedBody732_76

def RemovedBody732_78 : StackLang.HolProg 64 :=
.seq RemovedBody732_36 RemovedBody732_77

def RemovedBody732_79 : StackLang.HolProg 64 :=
.seq RemovedBody732_35 RemovedBody732_78

def RemovedBody732_80 : StackLang.HolProg 64 :=
.seq RemovedBody732_34 RemovedBody732_79

def RemovedBody732_81 : StackLang.HolProg 64 :=
.seq RemovedBody732_33 RemovedBody732_80

def RemovedBody732_82 : StackLang.HolProg 64 :=
.seq RemovedBody732_32 RemovedBody732_81

def RemovedBody732_83 : StackLang.HolProg 64 :=
.seq RemovedBody732_31 RemovedBody732_82

def RemovedBody732_84 : StackLang.HolProg 64 :=
.seq RemovedBody732_30 RemovedBody732_83

def RemovedBody732_85 : StackLang.HolProg 64 :=
.seq RemovedBody732_29 RemovedBody732_84

def RemovedBody732_86 : StackLang.HolProg 64 :=
.seq RemovedBody732_28 RemovedBody732_85

def RemovedBody732_87 : StackLang.HolProg 64 :=
.seq RemovedBody732_27 RemovedBody732_86

def RemovedBody732_88 : StackLang.HolProg 64 :=
.seq RemovedBody732_26 RemovedBody732_87

def RemovedBody732_89 : StackLang.HolProg 64 :=
.seq RemovedBody732_25 RemovedBody732_88

def RemovedBody732_90 : StackLang.HolProg 64 :=
.seq RemovedBody732_24 RemovedBody732_89

def RemovedBody732_91 : StackLang.HolProg 64 :=
.seq RemovedBody732_23 RemovedBody732_90

def RemovedBody732_92 : StackLang.HolProg 64 :=
.seq RemovedBody732_22 RemovedBody732_91

def RemovedBody732_93 : StackLang.HolProg 64 :=
.seq RemovedBody732_21 RemovedBody732_92

def RemovedBody732_94 : StackLang.HolProg 64 :=
.seq RemovedBody732_20 RemovedBody732_93

def RemovedBody732_95 : StackLang.HolProg 64 :=
.seq RemovedBody732_19 RemovedBody732_94

def RemovedBody732_96 : StackLang.HolProg 64 :=
.seq RemovedBody732_18 RemovedBody732_95

def RemovedBody732_97 : StackLang.HolProg 64 :=
.seq RemovedBody732_17 RemovedBody732_96

def RemovedBody732_98 : StackLang.HolProg 64 :=
.seq RemovedBody732_16 RemovedBody732_97

def RemovedBody732_99 : StackLang.HolProg 64 :=
.seq RemovedBody732_15 RemovedBody732_98

def RemovedBody732_100 : StackLang.HolProg 64 :=
.seq RemovedBody732_14 RemovedBody732_99

def RemovedBody732_101 : StackLang.HolProg 64 :=
.seq RemovedBody732_13 RemovedBody732_100

def RemovedBody732_102 : StackLang.HolProg 64 :=
.seq RemovedBody732_12 RemovedBody732_101

def RemovedBody732_103 : StackLang.HolProg 64 :=
.seq RemovedBody732_11 RemovedBody732_102

def RemovedBody732_104 : StackLang.HolProg 64 :=
.seq RemovedBody732_10 RemovedBody732_103

def RemovedBody732_105 : StackLang.HolProg 64 :=
.seq RemovedBody732_9 RemovedBody732_104

def RemovedBody732_106 : StackLang.HolProg 64 :=
.seq RemovedBody732_8 RemovedBody732_105

def RemovedBody732_107 : StackLang.HolProg 64 :=
.seq RemovedBody732_7 RemovedBody732_106

def RemovedBody732_108 : StackLang.HolProg 64 :=
.seq RemovedBody732_6 RemovedBody732_107

def RemovedBody732_109 : StackLang.HolProg 64 :=
.seq RemovedBody732_5 RemovedBody732_108

def RemovedBody732_110 : StackLang.HolProg 64 :=
.seq RemovedBody732_4 RemovedBody732_109

def RemovedBody732_111 : StackLang.HolProg 64 :=
.seq RemovedBody732_3 RemovedBody732_110

def RemovedBody732_112 : StackLang.HolProg 64 :=
.seq RemovedBody732_2 RemovedBody732_111

def RemovedBody732_113 : StackLang.HolProg 64 :=
.seq RemovedBody732_1 RemovedBody732_112

def RemovedBody732_114 : StackLang.HolProg 64 :=
.seq RemovedBody732_0 RemovedBody732_113

def Removed732 : Nat × StackLang.HolProg 64 := (732, RemovedBody732_114)
theorem Removed732_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc732 = Removed732 := by
  kernel_rfl
#print axioms Removed732_eq
end InitECandidate.Proofs.BackendStages
