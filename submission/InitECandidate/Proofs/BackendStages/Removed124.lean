import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc124
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody124_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def RemovedBody124_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody124_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody124_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody124_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody124_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody124_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody124_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4294967295#64)

def RemovedBody124_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody124_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody124_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody124_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody124_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody124_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody124_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4294967295#64)

def RemovedBody124_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody124_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody124_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody124_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody124_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody124_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody124_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4294967295#64)

def RemovedBody124_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody124_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody124_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody124_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody124_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody124_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody124_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody124_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody124_54 : StackLang.HolProg 64 :=
.seq RemovedBody124_52 RemovedBody124_53

def RemovedBody124_55 : StackLang.HolProg 64 :=
.seq RemovedBody124_51 RemovedBody124_54

def RemovedBody124_56 : StackLang.HolProg 64 :=
.seq RemovedBody124_50 RemovedBody124_55

def RemovedBody124_57 : StackLang.HolProg 64 :=
.seq RemovedBody124_49 RemovedBody124_56

def RemovedBody124_58 : StackLang.HolProg 64 :=
.seq RemovedBody124_48 RemovedBody124_57

def RemovedBody124_59 : StackLang.HolProg 64 :=
.seq RemovedBody124_47 RemovedBody124_58

def RemovedBody124_60 : StackLang.HolProg 64 :=
.seq RemovedBody124_46 RemovedBody124_59

def RemovedBody124_61 : StackLang.HolProg 64 :=
.seq RemovedBody124_45 RemovedBody124_60

def RemovedBody124_62 : StackLang.HolProg 64 :=
.seq RemovedBody124_44 RemovedBody124_61

def RemovedBody124_63 : StackLang.HolProg 64 :=
.seq RemovedBody124_43 RemovedBody124_62

def RemovedBody124_64 : StackLang.HolProg 64 :=
.seq RemovedBody124_42 RemovedBody124_63

def RemovedBody124_65 : StackLang.HolProg 64 :=
.seq RemovedBody124_41 RemovedBody124_64

def RemovedBody124_66 : StackLang.HolProg 64 :=
.seq RemovedBody124_40 RemovedBody124_65

def RemovedBody124_67 : StackLang.HolProg 64 :=
.seq RemovedBody124_39 RemovedBody124_66

def RemovedBody124_68 : StackLang.HolProg 64 :=
.seq RemovedBody124_38 RemovedBody124_67

def RemovedBody124_69 : StackLang.HolProg 64 :=
.seq RemovedBody124_37 RemovedBody124_68

def RemovedBody124_70 : StackLang.HolProg 64 :=
.seq RemovedBody124_36 RemovedBody124_69

def RemovedBody124_71 : StackLang.HolProg 64 :=
.seq RemovedBody124_35 RemovedBody124_70

def RemovedBody124_72 : StackLang.HolProg 64 :=
.seq RemovedBody124_34 RemovedBody124_71

def RemovedBody124_73 : StackLang.HolProg 64 :=
.seq RemovedBody124_33 RemovedBody124_72

def RemovedBody124_74 : StackLang.HolProg 64 :=
.seq RemovedBody124_32 RemovedBody124_73

def RemovedBody124_75 : StackLang.HolProg 64 :=
.seq RemovedBody124_31 RemovedBody124_74

def RemovedBody124_76 : StackLang.HolProg 64 :=
.seq RemovedBody124_30 RemovedBody124_75

def RemovedBody124_77 : StackLang.HolProg 64 :=
.seq RemovedBody124_29 RemovedBody124_76

def RemovedBody124_78 : StackLang.HolProg 64 :=
.seq RemovedBody124_28 RemovedBody124_77

def RemovedBody124_79 : StackLang.HolProg 64 :=
.seq RemovedBody124_27 RemovedBody124_78

def RemovedBody124_80 : StackLang.HolProg 64 :=
.seq RemovedBody124_26 RemovedBody124_79

def RemovedBody124_81 : StackLang.HolProg 64 :=
.seq RemovedBody124_25 RemovedBody124_80

def RemovedBody124_82 : StackLang.HolProg 64 :=
.seq RemovedBody124_24 RemovedBody124_81

def RemovedBody124_83 : StackLang.HolProg 64 :=
.seq RemovedBody124_23 RemovedBody124_82

def RemovedBody124_84 : StackLang.HolProg 64 :=
.seq RemovedBody124_22 RemovedBody124_83

def RemovedBody124_85 : StackLang.HolProg 64 :=
.seq RemovedBody124_21 RemovedBody124_84

def RemovedBody124_86 : StackLang.HolProg 64 :=
.seq RemovedBody124_20 RemovedBody124_85

def RemovedBody124_87 : StackLang.HolProg 64 :=
.seq RemovedBody124_19 RemovedBody124_86

def RemovedBody124_88 : StackLang.HolProg 64 :=
.seq RemovedBody124_18 RemovedBody124_87

def RemovedBody124_89 : StackLang.HolProg 64 :=
.seq RemovedBody124_17 RemovedBody124_88

def RemovedBody124_90 : StackLang.HolProg 64 :=
.seq RemovedBody124_16 RemovedBody124_89

def RemovedBody124_91 : StackLang.HolProg 64 :=
.seq RemovedBody124_15 RemovedBody124_90

def RemovedBody124_92 : StackLang.HolProg 64 :=
.seq RemovedBody124_14 RemovedBody124_91

def RemovedBody124_93 : StackLang.HolProg 64 :=
.seq RemovedBody124_13 RemovedBody124_92

def RemovedBody124_94 : StackLang.HolProg 64 :=
.seq RemovedBody124_12 RemovedBody124_93

def RemovedBody124_95 : StackLang.HolProg 64 :=
.seq RemovedBody124_11 RemovedBody124_94

def RemovedBody124_96 : StackLang.HolProg 64 :=
.seq RemovedBody124_10 RemovedBody124_95

def RemovedBody124_97 : StackLang.HolProg 64 :=
.seq RemovedBody124_9 RemovedBody124_96

def RemovedBody124_98 : StackLang.HolProg 64 :=
.seq RemovedBody124_8 RemovedBody124_97

def RemovedBody124_99 : StackLang.HolProg 64 :=
.seq RemovedBody124_7 RemovedBody124_98

def RemovedBody124_100 : StackLang.HolProg 64 :=
.seq RemovedBody124_6 RemovedBody124_99

def RemovedBody124_101 : StackLang.HolProg 64 :=
.seq RemovedBody124_5 RemovedBody124_100

def RemovedBody124_102 : StackLang.HolProg 64 :=
.seq RemovedBody124_4 RemovedBody124_101

def RemovedBody124_103 : StackLang.HolProg 64 :=
.seq RemovedBody124_3 RemovedBody124_102

def RemovedBody124_104 : StackLang.HolProg 64 :=
.seq RemovedBody124_2 RemovedBody124_103

def RemovedBody124_105 : StackLang.HolProg 64 :=
.seq RemovedBody124_1 RemovedBody124_104

def RemovedBody124_106 : StackLang.HolProg 64 :=
.seq RemovedBody124_0 RemovedBody124_105

def Removed124 : Nat × StackLang.HolProg 64 := (124, RemovedBody124_106)
theorem Removed124_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc124 = Removed124 := by
  kernel_rfl
#print axioms Removed124_eq
end InitECandidate.Proofs.BackendStages
