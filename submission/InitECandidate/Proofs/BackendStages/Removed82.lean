import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc82
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody82_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody82_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody82_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody82_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody82_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody82_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody82_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody82_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody82_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody82_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody82_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody82_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody82_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody82_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody82_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody82_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody82_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody82_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody82_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody82_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody82_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody82_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody82_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody82_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody82_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody82_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody82_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody82_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody82_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody82_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody82_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody82_48 : StackLang.HolProg 64 :=
.seq RemovedBody82_46 RemovedBody82_47

def RemovedBody82_49 : StackLang.HolProg 64 :=
.seq RemovedBody82_45 RemovedBody82_48

def RemovedBody82_50 : StackLang.HolProg 64 :=
.seq RemovedBody82_44 RemovedBody82_49

def RemovedBody82_51 : StackLang.HolProg 64 :=
.seq RemovedBody82_43 RemovedBody82_50

def RemovedBody82_52 : StackLang.HolProg 64 :=
.seq RemovedBody82_42 RemovedBody82_51

def RemovedBody82_53 : StackLang.HolProg 64 :=
.seq RemovedBody82_41 RemovedBody82_52

def RemovedBody82_54 : StackLang.HolProg 64 :=
.seq RemovedBody82_40 RemovedBody82_53

def RemovedBody82_55 : StackLang.HolProg 64 :=
.seq RemovedBody82_39 RemovedBody82_54

def RemovedBody82_56 : StackLang.HolProg 64 :=
.seq RemovedBody82_38 RemovedBody82_55

def RemovedBody82_57 : StackLang.HolProg 64 :=
.seq RemovedBody82_37 RemovedBody82_56

def RemovedBody82_58 : StackLang.HolProg 64 :=
.seq RemovedBody82_36 RemovedBody82_57

def RemovedBody82_59 : StackLang.HolProg 64 :=
.seq RemovedBody82_35 RemovedBody82_58

def RemovedBody82_60 : StackLang.HolProg 64 :=
.seq RemovedBody82_34 RemovedBody82_59

def RemovedBody82_61 : StackLang.HolProg 64 :=
.seq RemovedBody82_33 RemovedBody82_60

def RemovedBody82_62 : StackLang.HolProg 64 :=
.seq RemovedBody82_32 RemovedBody82_61

def RemovedBody82_63 : StackLang.HolProg 64 :=
.seq RemovedBody82_31 RemovedBody82_62

def RemovedBody82_64 : StackLang.HolProg 64 :=
.seq RemovedBody82_30 RemovedBody82_63

def RemovedBody82_65 : StackLang.HolProg 64 :=
.seq RemovedBody82_29 RemovedBody82_64

def RemovedBody82_66 : StackLang.HolProg 64 :=
.seq RemovedBody82_28 RemovedBody82_65

def RemovedBody82_67 : StackLang.HolProg 64 :=
.seq RemovedBody82_27 RemovedBody82_66

def RemovedBody82_68 : StackLang.HolProg 64 :=
.seq RemovedBody82_26 RemovedBody82_67

def RemovedBody82_69 : StackLang.HolProg 64 :=
.seq RemovedBody82_25 RemovedBody82_68

def RemovedBody82_70 : StackLang.HolProg 64 :=
.seq RemovedBody82_24 RemovedBody82_69

def RemovedBody82_71 : StackLang.HolProg 64 :=
.seq RemovedBody82_23 RemovedBody82_70

def RemovedBody82_72 : StackLang.HolProg 64 :=
.seq RemovedBody82_22 RemovedBody82_71

def RemovedBody82_73 : StackLang.HolProg 64 :=
.seq RemovedBody82_21 RemovedBody82_72

def RemovedBody82_74 : StackLang.HolProg 64 :=
.seq RemovedBody82_20 RemovedBody82_73

def RemovedBody82_75 : StackLang.HolProg 64 :=
.seq RemovedBody82_19 RemovedBody82_74

def RemovedBody82_76 : StackLang.HolProg 64 :=
.seq RemovedBody82_18 RemovedBody82_75

def RemovedBody82_77 : StackLang.HolProg 64 :=
.seq RemovedBody82_17 RemovedBody82_76

def RemovedBody82_78 : StackLang.HolProg 64 :=
.seq RemovedBody82_16 RemovedBody82_77

def RemovedBody82_79 : StackLang.HolProg 64 :=
.seq RemovedBody82_15 RemovedBody82_78

def RemovedBody82_80 : StackLang.HolProg 64 :=
.seq RemovedBody82_14 RemovedBody82_79

def RemovedBody82_81 : StackLang.HolProg 64 :=
.seq RemovedBody82_13 RemovedBody82_80

def RemovedBody82_82 : StackLang.HolProg 64 :=
.seq RemovedBody82_12 RemovedBody82_81

def RemovedBody82_83 : StackLang.HolProg 64 :=
.seq RemovedBody82_11 RemovedBody82_82

def RemovedBody82_84 : StackLang.HolProg 64 :=
.seq RemovedBody82_10 RemovedBody82_83

def RemovedBody82_85 : StackLang.HolProg 64 :=
.seq RemovedBody82_9 RemovedBody82_84

def RemovedBody82_86 : StackLang.HolProg 64 :=
.seq RemovedBody82_8 RemovedBody82_85

def RemovedBody82_87 : StackLang.HolProg 64 :=
.seq RemovedBody82_7 RemovedBody82_86

def RemovedBody82_88 : StackLang.HolProg 64 :=
.seq RemovedBody82_6 RemovedBody82_87

def RemovedBody82_89 : StackLang.HolProg 64 :=
.seq RemovedBody82_5 RemovedBody82_88

def RemovedBody82_90 : StackLang.HolProg 64 :=
.seq RemovedBody82_4 RemovedBody82_89

def RemovedBody82_91 : StackLang.HolProg 64 :=
.seq RemovedBody82_3 RemovedBody82_90

def RemovedBody82_92 : StackLang.HolProg 64 :=
.seq RemovedBody82_2 RemovedBody82_91

def RemovedBody82_93 : StackLang.HolProg 64 :=
.seq RemovedBody82_1 RemovedBody82_92

def RemovedBody82_94 : StackLang.HolProg 64 :=
.seq RemovedBody82_0 RemovedBody82_93

def Removed82 : Nat × StackLang.HolProg 64 := (82, RemovedBody82_94)
theorem Removed82_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc82 = Removed82 := by
  kernel_rfl
#print axioms Removed82_eq
end InitECandidate.Proofs.BackendStages
