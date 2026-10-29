import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc88
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody88_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody88_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody88_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody88_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody88_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody88_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody88_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody88_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody88_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody88_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody88_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody88_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody88_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody88_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody88_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody88_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody88_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody88_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody88_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody88_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody88_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody88_21 : StackLang.HolProg 64 :=
.seq RemovedBody88_19 RemovedBody88_20

def RemovedBody88_22 : StackLang.HolProg 64 :=
.seq RemovedBody88_18 RemovedBody88_21

def RemovedBody88_23 : StackLang.HolProg 64 :=
.seq RemovedBody88_17 RemovedBody88_22

def RemovedBody88_24 : StackLang.HolProg 64 :=
.seq RemovedBody88_16 RemovedBody88_23

def RemovedBody88_25 : StackLang.HolProg 64 :=
.seq RemovedBody88_15 RemovedBody88_24

def RemovedBody88_26 : StackLang.HolProg 64 :=
.seq RemovedBody88_14 RemovedBody88_25

def RemovedBody88_27 : StackLang.HolProg 64 :=
.seq RemovedBody88_13 RemovedBody88_26

def RemovedBody88_28 : StackLang.HolProg 64 :=
.seq RemovedBody88_12 RemovedBody88_27

def RemovedBody88_29 : StackLang.HolProg 64 :=
.seq RemovedBody88_11 RemovedBody88_28

def RemovedBody88_30 : StackLang.HolProg 64 :=
.seq RemovedBody88_10 RemovedBody88_29

def RemovedBody88_31 : StackLang.HolProg 64 :=
.seq RemovedBody88_9 RemovedBody88_30

def RemovedBody88_32 : StackLang.HolProg 64 :=
.seq RemovedBody88_8 RemovedBody88_31

def RemovedBody88_33 : StackLang.HolProg 64 :=
.seq RemovedBody88_7 RemovedBody88_32

def RemovedBody88_34 : StackLang.HolProg 64 :=
.seq RemovedBody88_6 RemovedBody88_33

def RemovedBody88_35 : StackLang.HolProg 64 :=
.seq RemovedBody88_5 RemovedBody88_34

def RemovedBody88_36 : StackLang.HolProg 64 :=
.seq RemovedBody88_4 RemovedBody88_35

def RemovedBody88_37 : StackLang.HolProg 64 :=
.seq RemovedBody88_3 RemovedBody88_36

def RemovedBody88_38 : StackLang.HolProg 64 :=
.seq RemovedBody88_2 RemovedBody88_37

def RemovedBody88_39 : StackLang.HolProg 64 :=
.seq RemovedBody88_1 RemovedBody88_38

def RemovedBody88_40 : StackLang.HolProg 64 :=
.seq RemovedBody88_0 RemovedBody88_39

def Removed88 : Nat × StackLang.HolProg 64 := (88, RemovedBody88_40)
theorem Removed88_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc88 = Removed88 := by
  kernel_rfl
#print axioms Removed88_eq
end InitECandidate.Proofs.BackendStages
