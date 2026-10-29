import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc197
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody197_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody197_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody197_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody197_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody197_4 : StackLang.HolProg 64 :=
.seq RemovedBody197_2 RemovedBody197_3

def RemovedBody197_5 : StackLang.HolProg 64 :=
.seq RemovedBody197_1 RemovedBody197_4

def RemovedBody197_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody197_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody197_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody197_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody197_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody197_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody197_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody197_13 : StackLang.HolProg 64 :=
.seq RemovedBody197_11 RemovedBody197_12

def RemovedBody197_14 : StackLang.HolProg 64 :=
.seq RemovedBody197_10 RemovedBody197_13

def RemovedBody197_15 : StackLang.HolProg 64 :=
.seq RemovedBody197_9 RemovedBody197_14

def RemovedBody197_16 : StackLang.HolProg 64 :=
.seq RemovedBody197_8 RemovedBody197_15

def RemovedBody197_17 : StackLang.HolProg 64 :=
.seq RemovedBody197_7 RemovedBody197_16

def RemovedBody197_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody197_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody197_17 RemovedBody197_18

def RemovedBody197_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody197_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody197_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody197_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody197_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody197_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def RemovedBody197_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody197_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody197_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody197_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody197_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody197_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody197_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody197_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 32#64))

def RemovedBody197_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody197_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody197_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody197_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody197_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 40#64))

def RemovedBody197_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody197_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody197_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody197_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody197_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody197_44 : StackLang.HolProg 64 :=
.seq RemovedBody197_42 RemovedBody197_43

def RemovedBody197_45 : StackLang.HolProg 64 :=
.seq RemovedBody197_41 RemovedBody197_44

def RemovedBody197_46 : StackLang.HolProg 64 :=
.seq RemovedBody197_40 RemovedBody197_45

def RemovedBody197_47 : StackLang.HolProg 64 :=
.seq RemovedBody197_39 RemovedBody197_46

def RemovedBody197_48 : StackLang.HolProg 64 :=
.seq RemovedBody197_38 RemovedBody197_47

def RemovedBody197_49 : StackLang.HolProg 64 :=
.seq RemovedBody197_37 RemovedBody197_48

def RemovedBody197_50 : StackLang.HolProg 64 :=
.seq RemovedBody197_36 RemovedBody197_49

def RemovedBody197_51 : StackLang.HolProg 64 :=
.seq RemovedBody197_35 RemovedBody197_50

def RemovedBody197_52 : StackLang.HolProg 64 :=
.seq RemovedBody197_34 RemovedBody197_51

def RemovedBody197_53 : StackLang.HolProg 64 :=
.seq RemovedBody197_33 RemovedBody197_52

def RemovedBody197_54 : StackLang.HolProg 64 :=
.seq RemovedBody197_32 RemovedBody197_53

def RemovedBody197_55 : StackLang.HolProg 64 :=
.seq RemovedBody197_31 RemovedBody197_54

def RemovedBody197_56 : StackLang.HolProg 64 :=
.seq RemovedBody197_30 RemovedBody197_55

def RemovedBody197_57 : StackLang.HolProg 64 :=
.seq RemovedBody197_29 RemovedBody197_56

def RemovedBody197_58 : StackLang.HolProg 64 :=
.seq RemovedBody197_28 RemovedBody197_57

def RemovedBody197_59 : StackLang.HolProg 64 :=
.seq RemovedBody197_27 RemovedBody197_58

def RemovedBody197_60 : StackLang.HolProg 64 :=
.seq RemovedBody197_26 RemovedBody197_59

def RemovedBody197_61 : StackLang.HolProg 64 :=
.seq RemovedBody197_25 RemovedBody197_60

def RemovedBody197_62 : StackLang.HolProg 64 :=
.seq RemovedBody197_24 RemovedBody197_61

def RemovedBody197_63 : StackLang.HolProg 64 :=
.seq RemovedBody197_23 RemovedBody197_62

def RemovedBody197_64 : StackLang.HolProg 64 :=
.seq RemovedBody197_22 RemovedBody197_63

def RemovedBody197_65 : StackLang.HolProg 64 :=
.seq RemovedBody197_21 RemovedBody197_64

def RemovedBody197_66 : StackLang.HolProg 64 :=
.seq RemovedBody197_20 RemovedBody197_65

def RemovedBody197_67 : StackLang.HolProg 64 :=
.seq RemovedBody197_19 RemovedBody197_66

def RemovedBody197_68 : StackLang.HolProg 64 :=
.seq RemovedBody197_6 RemovedBody197_67

def RemovedBody197_69 : StackLang.HolProg 64 :=
.seq RemovedBody197_5 RemovedBody197_68

def RemovedBody197_70 : StackLang.HolProg 64 :=
.seq RemovedBody197_0 RemovedBody197_69

def Removed197 : Nat × StackLang.HolProg 64 := (197, RemovedBody197_70)
theorem Removed197_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc197 = Removed197 := by
  kernel_rfl
#print axioms Removed197_eq
end InitECandidate.Proofs.BackendStages
