import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc486
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody486_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody486_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody486_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody486_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody486_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody486_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody486_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody486_10 : StackLang.HolProg 64 :=
.seq RemovedBody486_8 RemovedBody486_9

def RemovedBody486_11 : StackLang.HolProg 64 :=
.seq RemovedBody486_7 RemovedBody486_10

def RemovedBody486_12 : StackLang.HolProg 64 :=
.seq RemovedBody486_6 RemovedBody486_11

def RemovedBody486_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody486_12 RemovedBody486_13

def RemovedBody486_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody486_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody486_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody486_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody486_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody486_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody486_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 56#64))

def RemovedBody486_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody486_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody486_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody486_27 : StackLang.HolProg 64 :=
.seq RemovedBody486_25 RemovedBody486_26

def RemovedBody486_28 : StackLang.HolProg 64 :=
.seq RemovedBody486_24 RemovedBody486_27

def RemovedBody486_29 : StackLang.HolProg 64 :=
.seq RemovedBody486_23 RemovedBody486_28

def RemovedBody486_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody486_29 RemovedBody486_30

def RemovedBody486_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody486_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody486_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 80#64))

def RemovedBody486_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody486_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody486_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody486_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody486_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody486_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody486_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody486_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody486_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody486_49 : StackLang.HolProg 64 :=
.seq RemovedBody486_47 RemovedBody486_48

def RemovedBody486_50 : StackLang.HolProg 64 :=
.seq RemovedBody486_46 RemovedBody486_49

def RemovedBody486_51 : StackLang.HolProg 64 :=
.seq RemovedBody486_45 RemovedBody486_50

def RemovedBody486_52 : StackLang.HolProg 64 :=
.seq RemovedBody486_44 RemovedBody486_51

def RemovedBody486_53 : StackLang.HolProg 64 :=
.seq RemovedBody486_43 RemovedBody486_52

def RemovedBody486_54 : StackLang.HolProg 64 :=
.seq RemovedBody486_42 RemovedBody486_53

def RemovedBody486_55 : StackLang.HolProg 64 :=
.seq RemovedBody486_41 RemovedBody486_54

def RemovedBody486_56 : StackLang.HolProg 64 :=
.seq RemovedBody486_40 RemovedBody486_55

def RemovedBody486_57 : StackLang.HolProg 64 :=
.seq RemovedBody486_39 RemovedBody486_56

def RemovedBody486_58 : StackLang.HolProg 64 :=
.seq RemovedBody486_38 RemovedBody486_57

def RemovedBody486_59 : StackLang.HolProg 64 :=
.seq RemovedBody486_37 RemovedBody486_58

def RemovedBody486_60 : StackLang.HolProg 64 :=
.seq RemovedBody486_36 RemovedBody486_59

def RemovedBody486_61 : StackLang.HolProg 64 :=
.seq RemovedBody486_35 RemovedBody486_60

def RemovedBody486_62 : StackLang.HolProg 64 :=
.seq RemovedBody486_34 RemovedBody486_61

def RemovedBody486_63 : StackLang.HolProg 64 :=
.seq RemovedBody486_33 RemovedBody486_62

def RemovedBody486_64 : StackLang.HolProg 64 :=
.seq RemovedBody486_32 RemovedBody486_63

def RemovedBody486_65 : StackLang.HolProg 64 :=
.seq RemovedBody486_31 RemovedBody486_64

def RemovedBody486_66 : StackLang.HolProg 64 :=
.seq RemovedBody486_22 RemovedBody486_65

def RemovedBody486_67 : StackLang.HolProg 64 :=
.seq RemovedBody486_21 RemovedBody486_66

def RemovedBody486_68 : StackLang.HolProg 64 :=
.seq RemovedBody486_20 RemovedBody486_67

def RemovedBody486_69 : StackLang.HolProg 64 :=
.seq RemovedBody486_19 RemovedBody486_68

def RemovedBody486_70 : StackLang.HolProg 64 :=
.seq RemovedBody486_18 RemovedBody486_69

def RemovedBody486_71 : StackLang.HolProg 64 :=
.seq RemovedBody486_17 RemovedBody486_70

def RemovedBody486_72 : StackLang.HolProg 64 :=
.seq RemovedBody486_16 RemovedBody486_71

def RemovedBody486_73 : StackLang.HolProg 64 :=
.seq RemovedBody486_15 RemovedBody486_72

def RemovedBody486_74 : StackLang.HolProg 64 :=
.seq RemovedBody486_14 RemovedBody486_73

def RemovedBody486_75 : StackLang.HolProg 64 :=
.seq RemovedBody486_5 RemovedBody486_74

def RemovedBody486_76 : StackLang.HolProg 64 :=
.seq RemovedBody486_4 RemovedBody486_75

def RemovedBody486_77 : StackLang.HolProg 64 :=
.seq RemovedBody486_3 RemovedBody486_76

def RemovedBody486_78 : StackLang.HolProg 64 :=
.seq RemovedBody486_2 RemovedBody486_77

def RemovedBody486_79 : StackLang.HolProg 64 :=
.seq RemovedBody486_1 RemovedBody486_78

def RemovedBody486_80 : StackLang.HolProg 64 :=
.seq RemovedBody486_0 RemovedBody486_79

def Removed486 : Nat × StackLang.HolProg 64 := (486, RemovedBody486_80)
theorem Removed486_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc486 = Removed486 := by
  kernel_rfl
#print axioms Removed486_eq
end InitECandidate.Proofs.BackendStages
