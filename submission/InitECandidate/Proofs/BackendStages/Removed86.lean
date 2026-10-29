import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc86
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody86_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody86_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody86_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody86_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody86_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody86_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody86_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody86_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody86_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody86_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody86_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody86_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody86_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody86_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody86_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody86_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody86_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody86_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody86_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody86_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody86_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody86_21 : StackLang.HolProg 64 :=
.seq RemovedBody86_19 RemovedBody86_20

def RemovedBody86_22 : StackLang.HolProg 64 :=
.seq RemovedBody86_18 RemovedBody86_21

def RemovedBody86_23 : StackLang.HolProg 64 :=
.seq RemovedBody86_17 RemovedBody86_22

def RemovedBody86_24 : StackLang.HolProg 64 :=
.seq RemovedBody86_16 RemovedBody86_23

def RemovedBody86_25 : StackLang.HolProg 64 :=
.seq RemovedBody86_15 RemovedBody86_24

def RemovedBody86_26 : StackLang.HolProg 64 :=
.seq RemovedBody86_14 RemovedBody86_25

def RemovedBody86_27 : StackLang.HolProg 64 :=
.seq RemovedBody86_13 RemovedBody86_26

def RemovedBody86_28 : StackLang.HolProg 64 :=
.seq RemovedBody86_12 RemovedBody86_27

def RemovedBody86_29 : StackLang.HolProg 64 :=
.seq RemovedBody86_11 RemovedBody86_28

def RemovedBody86_30 : StackLang.HolProg 64 :=
.seq RemovedBody86_10 RemovedBody86_29

def RemovedBody86_31 : StackLang.HolProg 64 :=
.seq RemovedBody86_9 RemovedBody86_30

def RemovedBody86_32 : StackLang.HolProg 64 :=
.seq RemovedBody86_8 RemovedBody86_31

def RemovedBody86_33 : StackLang.HolProg 64 :=
.seq RemovedBody86_7 RemovedBody86_32

def RemovedBody86_34 : StackLang.HolProg 64 :=
.seq RemovedBody86_6 RemovedBody86_33

def RemovedBody86_35 : StackLang.HolProg 64 :=
.seq RemovedBody86_5 RemovedBody86_34

def RemovedBody86_36 : StackLang.HolProg 64 :=
.seq RemovedBody86_4 RemovedBody86_35

def RemovedBody86_37 : StackLang.HolProg 64 :=
.seq RemovedBody86_3 RemovedBody86_36

def RemovedBody86_38 : StackLang.HolProg 64 :=
.seq RemovedBody86_2 RemovedBody86_37

def RemovedBody86_39 : StackLang.HolProg 64 :=
.seq RemovedBody86_1 RemovedBody86_38

def RemovedBody86_40 : StackLang.HolProg 64 :=
.seq RemovedBody86_0 RemovedBody86_39

def Removed86 : Nat × StackLang.HolProg 64 := (86, RemovedBody86_40)
theorem Removed86_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc86 = Removed86 := by
  kernel_rfl
#print axioms Removed86_eq
end InitECandidate.Proofs.BackendStages
