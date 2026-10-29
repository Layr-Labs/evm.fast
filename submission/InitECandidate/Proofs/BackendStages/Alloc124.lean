import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw124
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody124_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody124_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def AllocBody124_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody124_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody124_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody124_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody124_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody124_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody124_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4294967295#64)

def AllocBody124_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody124_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody124_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody124_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody124_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody124_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody124_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4294967295#64)

def AllocBody124_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody124_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody124_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody124_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody124_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody124_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody124_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4294967295#64)

def AllocBody124_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody124_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody124_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def AllocBody124_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody124_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody124_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody124_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody124_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody124_54 : StackLang.HolProg 64 :=
.seq AllocBody124_52 AllocBody124_53

def AllocBody124_55 : StackLang.HolProg 64 :=
.seq AllocBody124_51 AllocBody124_54

def AllocBody124_56 : StackLang.HolProg 64 :=
.seq AllocBody124_50 AllocBody124_55

def AllocBody124_57 : StackLang.HolProg 64 :=
.seq AllocBody124_49 AllocBody124_56

def AllocBody124_58 : StackLang.HolProg 64 :=
.seq AllocBody124_48 AllocBody124_57

def AllocBody124_59 : StackLang.HolProg 64 :=
.seq AllocBody124_47 AllocBody124_58

def AllocBody124_60 : StackLang.HolProg 64 :=
.seq AllocBody124_46 AllocBody124_59

def AllocBody124_61 : StackLang.HolProg 64 :=
.seq AllocBody124_45 AllocBody124_60

def AllocBody124_62 : StackLang.HolProg 64 :=
.seq AllocBody124_44 AllocBody124_61

def AllocBody124_63 : StackLang.HolProg 64 :=
.seq AllocBody124_43 AllocBody124_62

def AllocBody124_64 : StackLang.HolProg 64 :=
.seq AllocBody124_42 AllocBody124_63

def AllocBody124_65 : StackLang.HolProg 64 :=
.seq AllocBody124_41 AllocBody124_64

def AllocBody124_66 : StackLang.HolProg 64 :=
.seq AllocBody124_40 AllocBody124_65

def AllocBody124_67 : StackLang.HolProg 64 :=
.seq AllocBody124_39 AllocBody124_66

def AllocBody124_68 : StackLang.HolProg 64 :=
.seq AllocBody124_38 AllocBody124_67

def AllocBody124_69 : StackLang.HolProg 64 :=
.seq AllocBody124_37 AllocBody124_68

def AllocBody124_70 : StackLang.HolProg 64 :=
.seq AllocBody124_36 AllocBody124_69

def AllocBody124_71 : StackLang.HolProg 64 :=
.seq AllocBody124_35 AllocBody124_70

def AllocBody124_72 : StackLang.HolProg 64 :=
.seq AllocBody124_34 AllocBody124_71

def AllocBody124_73 : StackLang.HolProg 64 :=
.seq AllocBody124_33 AllocBody124_72

def AllocBody124_74 : StackLang.HolProg 64 :=
.seq AllocBody124_32 AllocBody124_73

def AllocBody124_75 : StackLang.HolProg 64 :=
.seq AllocBody124_31 AllocBody124_74

def AllocBody124_76 : StackLang.HolProg 64 :=
.seq AllocBody124_30 AllocBody124_75

def AllocBody124_77 : StackLang.HolProg 64 :=
.seq AllocBody124_29 AllocBody124_76

def AllocBody124_78 : StackLang.HolProg 64 :=
.seq AllocBody124_28 AllocBody124_77

def AllocBody124_79 : StackLang.HolProg 64 :=
.seq AllocBody124_27 AllocBody124_78

def AllocBody124_80 : StackLang.HolProg 64 :=
.seq AllocBody124_26 AllocBody124_79

def AllocBody124_81 : StackLang.HolProg 64 :=
.seq AllocBody124_25 AllocBody124_80

def AllocBody124_82 : StackLang.HolProg 64 :=
.seq AllocBody124_24 AllocBody124_81

def AllocBody124_83 : StackLang.HolProg 64 :=
.seq AllocBody124_23 AllocBody124_82

def AllocBody124_84 : StackLang.HolProg 64 :=
.seq AllocBody124_22 AllocBody124_83

def AllocBody124_85 : StackLang.HolProg 64 :=
.seq AllocBody124_21 AllocBody124_84

def AllocBody124_86 : StackLang.HolProg 64 :=
.seq AllocBody124_20 AllocBody124_85

def AllocBody124_87 : StackLang.HolProg 64 :=
.seq AllocBody124_19 AllocBody124_86

def AllocBody124_88 : StackLang.HolProg 64 :=
.seq AllocBody124_18 AllocBody124_87

def AllocBody124_89 : StackLang.HolProg 64 :=
.seq AllocBody124_17 AllocBody124_88

def AllocBody124_90 : StackLang.HolProg 64 :=
.seq AllocBody124_16 AllocBody124_89

def AllocBody124_91 : StackLang.HolProg 64 :=
.seq AllocBody124_15 AllocBody124_90

def AllocBody124_92 : StackLang.HolProg 64 :=
.seq AllocBody124_14 AllocBody124_91

def AllocBody124_93 : StackLang.HolProg 64 :=
.seq AllocBody124_13 AllocBody124_92

def AllocBody124_94 : StackLang.HolProg 64 :=
.seq AllocBody124_12 AllocBody124_93

def AllocBody124_95 : StackLang.HolProg 64 :=
.seq AllocBody124_11 AllocBody124_94

def AllocBody124_96 : StackLang.HolProg 64 :=
.seq AllocBody124_10 AllocBody124_95

def AllocBody124_97 : StackLang.HolProg 64 :=
.seq AllocBody124_9 AllocBody124_96

def AllocBody124_98 : StackLang.HolProg 64 :=
.seq AllocBody124_8 AllocBody124_97

def AllocBody124_99 : StackLang.HolProg 64 :=
.seq AllocBody124_7 AllocBody124_98

def AllocBody124_100 : StackLang.HolProg 64 :=
.seq AllocBody124_6 AllocBody124_99

def AllocBody124_101 : StackLang.HolProg 64 :=
.seq AllocBody124_5 AllocBody124_100

def AllocBody124_102 : StackLang.HolProg 64 :=
.seq AllocBody124_4 AllocBody124_101

def AllocBody124_103 : StackLang.HolProg 64 :=
.seq AllocBody124_3 AllocBody124_102

def AllocBody124_104 : StackLang.HolProg 64 :=
.seq AllocBody124_2 AllocBody124_103

def AllocBody124_105 : StackLang.HolProg 64 :=
.seq AllocBody124_1 AllocBody124_104

def AllocBody124_106 : StackLang.HolProg 64 :=
.seq AllocBody124_0 AllocBody124_105

def Alloc124 : Nat × StackLang.HolProg 64 := (124, AllocBody124_106)
theorem Alloc124_eq : StackAlloc.progComp (124, raw124) = Alloc124 := by
  kernel_rfl
#print axioms Alloc124_eq
end InitECandidate.Proofs.BackendStages
