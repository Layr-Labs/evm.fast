import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc470
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody470_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody470_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody470_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody470_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody470_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def RemovedBody470_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody470_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody470_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody470_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody470_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody470_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_14 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody470_15 : StackLang.HolProg 64 :=
.seq RemovedBody470_13 RemovedBody470_14

def RemovedBody470_16 : StackLang.HolProg 64 :=
.seq RemovedBody470_12 RemovedBody470_15

def RemovedBody470_17 : StackLang.HolProg 64 :=
.seq RemovedBody470_11 RemovedBody470_16

def RemovedBody470_18 : StackLang.HolProg 64 :=
.seq RemovedBody470_10 RemovedBody470_17

def RemovedBody470_19 : StackLang.HolProg 64 :=
.seq RemovedBody470_9 RemovedBody470_18

def RemovedBody470_20 : StackLang.HolProg 64 :=
.seq RemovedBody470_8 RemovedBody470_19

def RemovedBody470_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody470_20 RemovedBody470_21

def RemovedBody470_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody470_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody470_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody470_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody470_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody470_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody470_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def RemovedBody470_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 184#64))

def RemovedBody470_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody470_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody470_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody470_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody470_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody470_42 : StackLang.HolProg 64 :=
.seq RemovedBody470_40 RemovedBody470_41

def RemovedBody470_43 : StackLang.HolProg 64 :=
.seq RemovedBody470_39 RemovedBody470_42

def RemovedBody470_44 : StackLang.HolProg 64 :=
.seq RemovedBody470_38 RemovedBody470_43

def RemovedBody470_45 : StackLang.HolProg 64 :=
.seq RemovedBody470_37 RemovedBody470_44

def RemovedBody470_46 : StackLang.HolProg 64 :=
.seq RemovedBody470_36 RemovedBody470_45

def RemovedBody470_47 : StackLang.HolProg 64 :=
.seq RemovedBody470_35 RemovedBody470_46

def RemovedBody470_48 : StackLang.HolProg 64 :=
.seq RemovedBody470_34 RemovedBody470_47

def RemovedBody470_49 : StackLang.HolProg 64 :=
.seq RemovedBody470_33 RemovedBody470_48

def RemovedBody470_50 : StackLang.HolProg 64 :=
.seq RemovedBody470_32 RemovedBody470_49

def RemovedBody470_51 : StackLang.HolProg 64 :=
.seq RemovedBody470_31 RemovedBody470_50

def RemovedBody470_52 : StackLang.HolProg 64 :=
.seq RemovedBody470_30 RemovedBody470_51

def RemovedBody470_53 : StackLang.HolProg 64 :=
.seq RemovedBody470_29 RemovedBody470_52

def RemovedBody470_54 : StackLang.HolProg 64 :=
.seq RemovedBody470_28 RemovedBody470_53

def RemovedBody470_55 : StackLang.HolProg 64 :=
.seq RemovedBody470_27 RemovedBody470_54

def RemovedBody470_56 : StackLang.HolProg 64 :=
.seq RemovedBody470_26 RemovedBody470_55

def RemovedBody470_57 : StackLang.HolProg 64 :=
.seq RemovedBody470_25 RemovedBody470_56

def RemovedBody470_58 : StackLang.HolProg 64 :=
.seq RemovedBody470_24 RemovedBody470_57

def RemovedBody470_59 : StackLang.HolProg 64 :=
.seq RemovedBody470_23 RemovedBody470_58

def RemovedBody470_60 : StackLang.HolProg 64 :=
.seq RemovedBody470_22 RemovedBody470_59

def RemovedBody470_61 : StackLang.HolProg 64 :=
.seq RemovedBody470_7 RemovedBody470_60

def RemovedBody470_62 : StackLang.HolProg 64 :=
.seq RemovedBody470_6 RemovedBody470_61

def RemovedBody470_63 : StackLang.HolProg 64 :=
.seq RemovedBody470_5 RemovedBody470_62

def RemovedBody470_64 : StackLang.HolProg 64 :=
.seq RemovedBody470_4 RemovedBody470_63

def RemovedBody470_65 : StackLang.HolProg 64 :=
.seq RemovedBody470_3 RemovedBody470_64

def RemovedBody470_66 : StackLang.HolProg 64 :=
.seq RemovedBody470_2 RemovedBody470_65

def RemovedBody470_67 : StackLang.HolProg 64 :=
.seq RemovedBody470_1 RemovedBody470_66

def RemovedBody470_68 : StackLang.HolProg 64 :=
.seq RemovedBody470_0 RemovedBody470_67

def Removed470 : Nat × StackLang.HolProg 64 := (470, RemovedBody470_68)
theorem Removed470_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc470 = Removed470 := by
  kernel_rfl
#print axioms Removed470_eq
end InitECandidate.Proofs.BackendStages
