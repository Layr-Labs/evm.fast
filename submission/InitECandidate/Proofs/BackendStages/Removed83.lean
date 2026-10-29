import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc83
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody83_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody83_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody83_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody83_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody83_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody83_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody83_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody83_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody83_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody83_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody83_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody83_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody83_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody83_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody83_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody83_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody83_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody83_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody83_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody83_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody83_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody83_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody83_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody83_23 : StackLang.HolProg 64 :=
.seq RemovedBody83_21 RemovedBody83_22

def RemovedBody83_24 : StackLang.HolProg 64 :=
.seq RemovedBody83_20 RemovedBody83_23

def RemovedBody83_25 : StackLang.HolProg 64 :=
.seq RemovedBody83_19 RemovedBody83_24

def RemovedBody83_26 : StackLang.HolProg 64 :=
.seq RemovedBody83_18 RemovedBody83_25

def RemovedBody83_27 : StackLang.HolProg 64 :=
.seq RemovedBody83_17 RemovedBody83_26

def RemovedBody83_28 : StackLang.HolProg 64 :=
.seq RemovedBody83_16 RemovedBody83_27

def RemovedBody83_29 : StackLang.HolProg 64 :=
.seq RemovedBody83_15 RemovedBody83_28

def RemovedBody83_30 : StackLang.HolProg 64 :=
.seq RemovedBody83_14 RemovedBody83_29

def RemovedBody83_31 : StackLang.HolProg 64 :=
.seq RemovedBody83_13 RemovedBody83_30

def RemovedBody83_32 : StackLang.HolProg 64 :=
.seq RemovedBody83_12 RemovedBody83_31

def RemovedBody83_33 : StackLang.HolProg 64 :=
.seq RemovedBody83_11 RemovedBody83_32

def RemovedBody83_34 : StackLang.HolProg 64 :=
.seq RemovedBody83_10 RemovedBody83_33

def RemovedBody83_35 : StackLang.HolProg 64 :=
.seq RemovedBody83_9 RemovedBody83_34

def RemovedBody83_36 : StackLang.HolProg 64 :=
.seq RemovedBody83_8 RemovedBody83_35

def RemovedBody83_37 : StackLang.HolProg 64 :=
.seq RemovedBody83_7 RemovedBody83_36

def RemovedBody83_38 : StackLang.HolProg 64 :=
.seq RemovedBody83_6 RemovedBody83_37

def RemovedBody83_39 : StackLang.HolProg 64 :=
.seq RemovedBody83_5 RemovedBody83_38

def RemovedBody83_40 : StackLang.HolProg 64 :=
.seq RemovedBody83_4 RemovedBody83_39

def RemovedBody83_41 : StackLang.HolProg 64 :=
.seq RemovedBody83_3 RemovedBody83_40

def RemovedBody83_42 : StackLang.HolProg 64 :=
.seq RemovedBody83_2 RemovedBody83_41

def RemovedBody83_43 : StackLang.HolProg 64 :=
.seq RemovedBody83_1 RemovedBody83_42

def RemovedBody83_44 : StackLang.HolProg 64 :=
.seq RemovedBody83_0 RemovedBody83_43

def Removed83 : Nat × StackLang.HolProg 64 := (83, RemovedBody83_44)
theorem Removed83_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc83 = Removed83 := by
  kernel_rfl
#print axioms Removed83_eq
end InitECandidate.Proofs.BackendStages
