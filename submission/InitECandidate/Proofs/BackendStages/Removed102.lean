import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc102
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody102_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody102_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody102_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody102_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody102_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody102_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody102_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody102_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody102_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody102_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody102_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody102_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody102_12 : StackLang.HolProg 64 :=
.seq RemovedBody102_10 RemovedBody102_11

def RemovedBody102_13 : StackLang.HolProg 64 :=
.seq RemovedBody102_9 RemovedBody102_12

def RemovedBody102_14 : StackLang.HolProg 64 :=
.seq RemovedBody102_8 RemovedBody102_13

def RemovedBody102_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody102_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody102_14 RemovedBody102_15

def RemovedBody102_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody102_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody102_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody102_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody102_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody102_22 : StackLang.HolProg 64 :=
.seq RemovedBody102_20 RemovedBody102_21

def RemovedBody102_23 : StackLang.HolProg 64 :=
.seq RemovedBody102_19 RemovedBody102_22

def RemovedBody102_24 : StackLang.HolProg 64 :=
.seq RemovedBody102_18 RemovedBody102_23

def RemovedBody102_25 : StackLang.HolProg 64 :=
.seq RemovedBody102_17 RemovedBody102_24

def RemovedBody102_26 : StackLang.HolProg 64 :=
.seq RemovedBody102_16 RemovedBody102_25

def RemovedBody102_27 : StackLang.HolProg 64 :=
.seq RemovedBody102_7 RemovedBody102_26

def RemovedBody102_28 : StackLang.HolProg 64 :=
.seq RemovedBody102_6 RemovedBody102_27

def RemovedBody102_29 : StackLang.HolProg 64 :=
.seq RemovedBody102_5 RemovedBody102_28

def RemovedBody102_30 : StackLang.HolProg 64 :=
.seq RemovedBody102_4 RemovedBody102_29

def RemovedBody102_31 : StackLang.HolProg 64 :=
.seq RemovedBody102_3 RemovedBody102_30

def RemovedBody102_32 : StackLang.HolProg 64 :=
.seq RemovedBody102_2 RemovedBody102_31

def RemovedBody102_33 : StackLang.HolProg 64 :=
.seq RemovedBody102_1 RemovedBody102_32

def RemovedBody102_34 : StackLang.HolProg 64 :=
.seq RemovedBody102_0 RemovedBody102_33

def Removed102 : Nat × StackLang.HolProg 64 := (102, RemovedBody102_34)
theorem Removed102_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc102 = Removed102 := by
  kernel_rfl
#print axioms Removed102_eq
end InitECandidate.Proofs.BackendStages
