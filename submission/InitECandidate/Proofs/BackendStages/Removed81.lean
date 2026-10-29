import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc81
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody81_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody81_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody81_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody81_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody81_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody81_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody81_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody81_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody81_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody81_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody81_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody81_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody81_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody81_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody81_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody81_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody81_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody81_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody81_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody81_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody81_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody81_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody81_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody81_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody81_24 : StackLang.HolProg 64 :=
.seq RemovedBody81_22 RemovedBody81_23

def RemovedBody81_25 : StackLang.HolProg 64 :=
.seq RemovedBody81_21 RemovedBody81_24

def RemovedBody81_26 : StackLang.HolProg 64 :=
.seq RemovedBody81_20 RemovedBody81_25

def RemovedBody81_27 : StackLang.HolProg 64 :=
.seq RemovedBody81_19 RemovedBody81_26

def RemovedBody81_28 : StackLang.HolProg 64 :=
.seq RemovedBody81_18 RemovedBody81_27

def RemovedBody81_29 : StackLang.HolProg 64 :=
.seq RemovedBody81_17 RemovedBody81_28

def RemovedBody81_30 : StackLang.HolProg 64 :=
.seq RemovedBody81_16 RemovedBody81_29

def RemovedBody81_31 : StackLang.HolProg 64 :=
.seq RemovedBody81_15 RemovedBody81_30

def RemovedBody81_32 : StackLang.HolProg 64 :=
.seq RemovedBody81_14 RemovedBody81_31

def RemovedBody81_33 : StackLang.HolProg 64 :=
.seq RemovedBody81_13 RemovedBody81_32

def RemovedBody81_34 : StackLang.HolProg 64 :=
.seq RemovedBody81_12 RemovedBody81_33

def RemovedBody81_35 : StackLang.HolProg 64 :=
.seq RemovedBody81_11 RemovedBody81_34

def RemovedBody81_36 : StackLang.HolProg 64 :=
.seq RemovedBody81_10 RemovedBody81_35

def RemovedBody81_37 : StackLang.HolProg 64 :=
.seq RemovedBody81_9 RemovedBody81_36

def RemovedBody81_38 : StackLang.HolProg 64 :=
.seq RemovedBody81_8 RemovedBody81_37

def RemovedBody81_39 : StackLang.HolProg 64 :=
.seq RemovedBody81_7 RemovedBody81_38

def RemovedBody81_40 : StackLang.HolProg 64 :=
.seq RemovedBody81_6 RemovedBody81_39

def RemovedBody81_41 : StackLang.HolProg 64 :=
.seq RemovedBody81_5 RemovedBody81_40

def RemovedBody81_42 : StackLang.HolProg 64 :=
.seq RemovedBody81_4 RemovedBody81_41

def RemovedBody81_43 : StackLang.HolProg 64 :=
.seq RemovedBody81_3 RemovedBody81_42

def RemovedBody81_44 : StackLang.HolProg 64 :=
.seq RemovedBody81_2 RemovedBody81_43

def RemovedBody81_45 : StackLang.HolProg 64 :=
.seq RemovedBody81_1 RemovedBody81_44

def RemovedBody81_46 : StackLang.HolProg 64 :=
.seq RemovedBody81_0 RemovedBody81_45

def Removed81 : Nat × StackLang.HolProg 64 := (81, RemovedBody81_46)
theorem Removed81_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc81 = Removed81 := by
  kernel_rfl
#print axioms Removed81_eq
end InitECandidate.Proofs.BackendStages
