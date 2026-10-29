import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed124
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody124_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def NamedBody124_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody124_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody124_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody124_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody124_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody124_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody124_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 4294967295#64)

def NamedBody124_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody124_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody124_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody124_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody124_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody124_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody124_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 4294967295#64)

def NamedBody124_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody124_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody124_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody124_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 11 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody124_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody124_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody124_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 4294967295#64)

def NamedBody124_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody124_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody124_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def NamedBody124_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody124_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedBody124_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody124_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody124_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody124_54 : StackLang.HolProg 64 :=
.seq NamedBody124_52 NamedBody124_53

def NamedBody124_55 : StackLang.HolProg 64 :=
.seq NamedBody124_51 NamedBody124_54

def NamedBody124_56 : StackLang.HolProg 64 :=
.seq NamedBody124_50 NamedBody124_55

def NamedBody124_57 : StackLang.HolProg 64 :=
.seq NamedBody124_49 NamedBody124_56

def NamedBody124_58 : StackLang.HolProg 64 :=
.seq NamedBody124_48 NamedBody124_57

def NamedBody124_59 : StackLang.HolProg 64 :=
.seq NamedBody124_47 NamedBody124_58

def NamedBody124_60 : StackLang.HolProg 64 :=
.seq NamedBody124_46 NamedBody124_59

def NamedBody124_61 : StackLang.HolProg 64 :=
.seq NamedBody124_45 NamedBody124_60

def NamedBody124_62 : StackLang.HolProg 64 :=
.seq NamedBody124_44 NamedBody124_61

def NamedBody124_63 : StackLang.HolProg 64 :=
.seq NamedBody124_43 NamedBody124_62

def NamedBody124_64 : StackLang.HolProg 64 :=
.seq NamedBody124_42 NamedBody124_63

def NamedBody124_65 : StackLang.HolProg 64 :=
.seq NamedBody124_41 NamedBody124_64

def NamedBody124_66 : StackLang.HolProg 64 :=
.seq NamedBody124_40 NamedBody124_65

def NamedBody124_67 : StackLang.HolProg 64 :=
.seq NamedBody124_39 NamedBody124_66

def NamedBody124_68 : StackLang.HolProg 64 :=
.seq NamedBody124_38 NamedBody124_67

def NamedBody124_69 : StackLang.HolProg 64 :=
.seq NamedBody124_37 NamedBody124_68

def NamedBody124_70 : StackLang.HolProg 64 :=
.seq NamedBody124_36 NamedBody124_69

def NamedBody124_71 : StackLang.HolProg 64 :=
.seq NamedBody124_35 NamedBody124_70

def NamedBody124_72 : StackLang.HolProg 64 :=
.seq NamedBody124_34 NamedBody124_71

def NamedBody124_73 : StackLang.HolProg 64 :=
.seq NamedBody124_33 NamedBody124_72

def NamedBody124_74 : StackLang.HolProg 64 :=
.seq NamedBody124_32 NamedBody124_73

def NamedBody124_75 : StackLang.HolProg 64 :=
.seq NamedBody124_31 NamedBody124_74

def NamedBody124_76 : StackLang.HolProg 64 :=
.seq NamedBody124_30 NamedBody124_75

def NamedBody124_77 : StackLang.HolProg 64 :=
.seq NamedBody124_29 NamedBody124_76

def NamedBody124_78 : StackLang.HolProg 64 :=
.seq NamedBody124_28 NamedBody124_77

def NamedBody124_79 : StackLang.HolProg 64 :=
.seq NamedBody124_27 NamedBody124_78

def NamedBody124_80 : StackLang.HolProg 64 :=
.seq NamedBody124_26 NamedBody124_79

def NamedBody124_81 : StackLang.HolProg 64 :=
.seq NamedBody124_25 NamedBody124_80

def NamedBody124_82 : StackLang.HolProg 64 :=
.seq NamedBody124_24 NamedBody124_81

def NamedBody124_83 : StackLang.HolProg 64 :=
.seq NamedBody124_23 NamedBody124_82

def NamedBody124_84 : StackLang.HolProg 64 :=
.seq NamedBody124_22 NamedBody124_83

def NamedBody124_85 : StackLang.HolProg 64 :=
.seq NamedBody124_21 NamedBody124_84

def NamedBody124_86 : StackLang.HolProg 64 :=
.seq NamedBody124_20 NamedBody124_85

def NamedBody124_87 : StackLang.HolProg 64 :=
.seq NamedBody124_19 NamedBody124_86

def NamedBody124_88 : StackLang.HolProg 64 :=
.seq NamedBody124_18 NamedBody124_87

def NamedBody124_89 : StackLang.HolProg 64 :=
.seq NamedBody124_17 NamedBody124_88

def NamedBody124_90 : StackLang.HolProg 64 :=
.seq NamedBody124_16 NamedBody124_89

def NamedBody124_91 : StackLang.HolProg 64 :=
.seq NamedBody124_15 NamedBody124_90

def NamedBody124_92 : StackLang.HolProg 64 :=
.seq NamedBody124_14 NamedBody124_91

def NamedBody124_93 : StackLang.HolProg 64 :=
.seq NamedBody124_13 NamedBody124_92

def NamedBody124_94 : StackLang.HolProg 64 :=
.seq NamedBody124_12 NamedBody124_93

def NamedBody124_95 : StackLang.HolProg 64 :=
.seq NamedBody124_11 NamedBody124_94

def NamedBody124_96 : StackLang.HolProg 64 :=
.seq NamedBody124_10 NamedBody124_95

def NamedBody124_97 : StackLang.HolProg 64 :=
.seq NamedBody124_9 NamedBody124_96

def NamedBody124_98 : StackLang.HolProg 64 :=
.seq NamedBody124_8 NamedBody124_97

def NamedBody124_99 : StackLang.HolProg 64 :=
.seq NamedBody124_7 NamedBody124_98

def NamedBody124_100 : StackLang.HolProg 64 :=
.seq NamedBody124_6 NamedBody124_99

def NamedBody124_101 : StackLang.HolProg 64 :=
.seq NamedBody124_5 NamedBody124_100

def NamedBody124_102 : StackLang.HolProg 64 :=
.seq NamedBody124_4 NamedBody124_101

def NamedBody124_103 : StackLang.HolProg 64 :=
.seq NamedBody124_3 NamedBody124_102

def NamedBody124_104 : StackLang.HolProg 64 :=
.seq NamedBody124_2 NamedBody124_103

def NamedBody124_105 : StackLang.HolProg 64 :=
.seq NamedBody124_1 NamedBody124_104

def NamedBody124_106 : StackLang.HolProg 64 :=
.seq NamedBody124_0 NamedBody124_105

def Named124 : Nat × StackLang.HolProg 64 := (124, NamedBody124_106)
theorem Named124_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed124 = Named124 := by
  kernel_rfl
#print axioms Named124_eq
end InitECandidate.Proofs.BackendStages
