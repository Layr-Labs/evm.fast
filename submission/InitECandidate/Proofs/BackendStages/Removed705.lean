import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc705
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody705_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody705_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody705_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody705_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody705_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody705_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody705_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody705_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody705_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody705_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody705_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody705_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody705_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody705_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody705_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody705_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody705_16 : StackLang.HolProg 64 :=
.seq RemovedBody705_14 RemovedBody705_15

def RemovedBody705_17 : StackLang.HolProg 64 :=
.seq RemovedBody705_13 RemovedBody705_16

def RemovedBody705_18 : StackLang.HolProg 64 :=
.seq RemovedBody705_12 RemovedBody705_17

def RemovedBody705_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody705_20 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody705_18 RemovedBody705_19

def RemovedBody705_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody705_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody705_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody705_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody705_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody705_26 : StackLang.HolProg 64 :=
.seq RemovedBody705_24 RemovedBody705_25

def RemovedBody705_27 : StackLang.HolProg 64 :=
.seq RemovedBody705_23 RemovedBody705_26

def RemovedBody705_28 : StackLang.HolProg 64 :=
.seq RemovedBody705_22 RemovedBody705_27

def RemovedBody705_29 : StackLang.HolProg 64 :=
.seq RemovedBody705_21 RemovedBody705_28

def RemovedBody705_30 : StackLang.HolProg 64 :=
.seq RemovedBody705_20 RemovedBody705_29

def RemovedBody705_31 : StackLang.HolProg 64 :=
.seq RemovedBody705_11 RemovedBody705_30

def RemovedBody705_32 : StackLang.HolProg 64 :=
.seq RemovedBody705_10 RemovedBody705_31

def RemovedBody705_33 : StackLang.HolProg 64 :=
.seq RemovedBody705_9 RemovedBody705_32

def RemovedBody705_34 : StackLang.HolProg 64 :=
.seq RemovedBody705_8 RemovedBody705_33

def RemovedBody705_35 : StackLang.HolProg 64 :=
.seq RemovedBody705_7 RemovedBody705_34

def RemovedBody705_36 : StackLang.HolProg 64 :=
.seq RemovedBody705_6 RemovedBody705_35

def RemovedBody705_37 : StackLang.HolProg 64 :=
.seq RemovedBody705_5 RemovedBody705_36

def RemovedBody705_38 : StackLang.HolProg 64 :=
.seq RemovedBody705_4 RemovedBody705_37

def RemovedBody705_39 : StackLang.HolProg 64 :=
.seq RemovedBody705_3 RemovedBody705_38

def RemovedBody705_40 : StackLang.HolProg 64 :=
.seq RemovedBody705_2 RemovedBody705_39

def RemovedBody705_41 : StackLang.HolProg 64 :=
.seq RemovedBody705_1 RemovedBody705_40

def RemovedBody705_42 : StackLang.HolProg 64 :=
.seq RemovedBody705_0 RemovedBody705_41

def Removed705 : Nat × StackLang.HolProg 64 := (705, RemovedBody705_42)
theorem Removed705_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc705 = Removed705 := by
  kernel_rfl
#print axioms Removed705_eq
end InitECandidate.Proofs.BackendStages
