import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc97
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody97_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody97_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody97_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody97_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody97_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody97_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody97_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody97_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody97_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody97_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody97_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody97_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody97_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody97_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody97_14 : StackLang.HolProg 64 :=
.seq RemovedBody97_12 RemovedBody97_13

def RemovedBody97_15 : StackLang.HolProg 64 :=
.seq RemovedBody97_11 RemovedBody97_14

def RemovedBody97_16 : StackLang.HolProg 64 :=
.seq RemovedBody97_10 RemovedBody97_15

def RemovedBody97_17 : StackLang.HolProg 64 :=
.seq RemovedBody97_9 RemovedBody97_16

def RemovedBody97_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody97_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody97_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody97_21 : StackLang.HolProg 64 :=
.seq RemovedBody97_19 RemovedBody97_20

def RemovedBody97_22 : StackLang.HolProg 64 :=
.seq RemovedBody97_18 RemovedBody97_21

def RemovedBody97_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody97_17 RemovedBody97_22

def RemovedBody97_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody97_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody97_26 : StackLang.HolProg 64 :=
.seq RemovedBody97_24 RemovedBody97_25

def RemovedBody97_27 : StackLang.HolProg 64 :=
.seq RemovedBody97_23 RemovedBody97_26

def RemovedBody97_28 : StackLang.HolProg 64 :=
.seq RemovedBody97_8 RemovedBody97_27

def RemovedBody97_29 : StackLang.HolProg 64 :=
.seq RemovedBody97_7 RemovedBody97_28

def RemovedBody97_30 : StackLang.HolProg 64 :=
.seq RemovedBody97_6 RemovedBody97_29

def RemovedBody97_31 : StackLang.HolProg 64 :=
.seq RemovedBody97_5 RemovedBody97_30

def RemovedBody97_32 : StackLang.HolProg 64 :=
.loop RemovedBody97_31

def RemovedBody97_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody97_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody97_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody97_36 : StackLang.HolProg 64 :=
.seq RemovedBody97_34 RemovedBody97_35

def RemovedBody97_37 : StackLang.HolProg 64 :=
.seq RemovedBody97_33 RemovedBody97_36

def RemovedBody97_38 : StackLang.HolProg 64 :=
.seq RemovedBody97_32 RemovedBody97_37

def RemovedBody97_39 : StackLang.HolProg 64 :=
.seq RemovedBody97_4 RemovedBody97_38

def RemovedBody97_40 : StackLang.HolProg 64 :=
.seq RemovedBody97_3 RemovedBody97_39

def RemovedBody97_41 : StackLang.HolProg 64 :=
.seq RemovedBody97_2 RemovedBody97_40

def RemovedBody97_42 : StackLang.HolProg 64 :=
.seq RemovedBody97_1 RemovedBody97_41

def RemovedBody97_43 : StackLang.HolProg 64 :=
.seq RemovedBody97_0 RemovedBody97_42

def Removed97 : Nat × StackLang.HolProg 64 := (97, RemovedBody97_43)
theorem Removed97_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc97 = Removed97 := by
  kernel_rfl
#print axioms Removed97_eq
end InitECandidate.Proofs.BackendStages
