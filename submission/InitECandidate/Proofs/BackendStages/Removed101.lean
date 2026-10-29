import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc101
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody101_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody101_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody101_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody101_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody101_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody101_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody101_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody101_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody101_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody101_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody101_10 : StackLang.HolProg 64 :=
.seq RemovedBody101_8 RemovedBody101_9

def RemovedBody101_11 : StackLang.HolProg 64 :=
.seq RemovedBody101_7 RemovedBody101_10

def RemovedBody101_12 : StackLang.HolProg 64 :=
.seq RemovedBody101_6 RemovedBody101_11

def RemovedBody101_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody101_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody101_12 RemovedBody101_13

def RemovedBody101_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody101_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody101_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody101_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody101_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody101_20 : StackLang.HolProg 64 :=
.seq RemovedBody101_18 RemovedBody101_19

def RemovedBody101_21 : StackLang.HolProg 64 :=
.seq RemovedBody101_17 RemovedBody101_20

def RemovedBody101_22 : StackLang.HolProg 64 :=
.seq RemovedBody101_16 RemovedBody101_21

def RemovedBody101_23 : StackLang.HolProg 64 :=
.seq RemovedBody101_15 RemovedBody101_22

def RemovedBody101_24 : StackLang.HolProg 64 :=
.seq RemovedBody101_14 RemovedBody101_23

def RemovedBody101_25 : StackLang.HolProg 64 :=
.seq RemovedBody101_5 RemovedBody101_24

def RemovedBody101_26 : StackLang.HolProg 64 :=
.seq RemovedBody101_4 RemovedBody101_25

def RemovedBody101_27 : StackLang.HolProg 64 :=
.seq RemovedBody101_3 RemovedBody101_26

def RemovedBody101_28 : StackLang.HolProg 64 :=
.seq RemovedBody101_2 RemovedBody101_27

def RemovedBody101_29 : StackLang.HolProg 64 :=
.seq RemovedBody101_1 RemovedBody101_28

def RemovedBody101_30 : StackLang.HolProg 64 :=
.seq RemovedBody101_0 RemovedBody101_29

def Removed101 : Nat × StackLang.HolProg 64 := (101, RemovedBody101_30)
theorem Removed101_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc101 = Removed101 := by
  kernel_rfl
#print axioms Removed101_eq
end InitECandidate.Proofs.BackendStages
