import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc125
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody125_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody125_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody125_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody125_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody125_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody125_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody125_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody125_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody125_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody125_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody125_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody125_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody125_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody125_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody125_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def RemovedBody125_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody125_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody125_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody125_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody125_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody125_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def RemovedBody125_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody125_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody125_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def RemovedBody125_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody125_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody125_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody125_27 : StackLang.HolProg 64 :=
.seq RemovedBody125_25 RemovedBody125_26

def RemovedBody125_28 : StackLang.HolProg 64 :=
.seq RemovedBody125_24 RemovedBody125_27

def RemovedBody125_29 : StackLang.HolProg 64 :=
.seq RemovedBody125_23 RemovedBody125_28

def RemovedBody125_30 : StackLang.HolProg 64 :=
.seq RemovedBody125_22 RemovedBody125_29

def RemovedBody125_31 : StackLang.HolProg 64 :=
.seq RemovedBody125_21 RemovedBody125_30

def RemovedBody125_32 : StackLang.HolProg 64 :=
.seq RemovedBody125_20 RemovedBody125_31

def RemovedBody125_33 : StackLang.HolProg 64 :=
.seq RemovedBody125_19 RemovedBody125_32

def RemovedBody125_34 : StackLang.HolProg 64 :=
.seq RemovedBody125_18 RemovedBody125_33

def RemovedBody125_35 : StackLang.HolProg 64 :=
.seq RemovedBody125_17 RemovedBody125_34

def RemovedBody125_36 : StackLang.HolProg 64 :=
.seq RemovedBody125_16 RemovedBody125_35

def RemovedBody125_37 : StackLang.HolProg 64 :=
.seq RemovedBody125_15 RemovedBody125_36

def RemovedBody125_38 : StackLang.HolProg 64 :=
.seq RemovedBody125_14 RemovedBody125_37

def RemovedBody125_39 : StackLang.HolProg 64 :=
.seq RemovedBody125_13 RemovedBody125_38

def RemovedBody125_40 : StackLang.HolProg 64 :=
.seq RemovedBody125_12 RemovedBody125_39

def RemovedBody125_41 : StackLang.HolProg 64 :=
.seq RemovedBody125_11 RemovedBody125_40

def RemovedBody125_42 : StackLang.HolProg 64 :=
.seq RemovedBody125_10 RemovedBody125_41

def RemovedBody125_43 : StackLang.HolProg 64 :=
.seq RemovedBody125_9 RemovedBody125_42

def RemovedBody125_44 : StackLang.HolProg 64 :=
.seq RemovedBody125_8 RemovedBody125_43

def RemovedBody125_45 : StackLang.HolProg 64 :=
.seq RemovedBody125_7 RemovedBody125_44

def RemovedBody125_46 : StackLang.HolProg 64 :=
.seq RemovedBody125_6 RemovedBody125_45

def RemovedBody125_47 : StackLang.HolProg 64 :=
.seq RemovedBody125_5 RemovedBody125_46

def RemovedBody125_48 : StackLang.HolProg 64 :=
.seq RemovedBody125_4 RemovedBody125_47

def RemovedBody125_49 : StackLang.HolProg 64 :=
.seq RemovedBody125_3 RemovedBody125_48

def RemovedBody125_50 : StackLang.HolProg 64 :=
.seq RemovedBody125_2 RemovedBody125_49

def RemovedBody125_51 : StackLang.HolProg 64 :=
.seq RemovedBody125_1 RemovedBody125_50

def RemovedBody125_52 : StackLang.HolProg 64 :=
.seq RemovedBody125_0 RemovedBody125_51

def Removed125 : Nat × StackLang.HolProg 64 := (125, RemovedBody125_52)
theorem Removed125_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc125 = Removed125 := by
  kernel_rfl
#print axioms Removed125_eq
end InitECandidate.Proofs.BackendStages
