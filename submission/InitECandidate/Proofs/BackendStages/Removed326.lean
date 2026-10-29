import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc326
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody326_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody326_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody326_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody326_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody326_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody326_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody326_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody326_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody326_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody326_9 : StackLang.HolProg 64 :=
.seq RemovedBody326_7 RemovedBody326_8

def RemovedBody326_10 : StackLang.HolProg 64 :=
.seq RemovedBody326_6 RemovedBody326_9

def RemovedBody326_11 : StackLang.HolProg 64 :=
.seq RemovedBody326_5 RemovedBody326_10

def RemovedBody326_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody326_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody326_14 : StackLang.HolProg 64 :=
.seq RemovedBody326_12 RemovedBody326_13

def RemovedBody326_15 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody326_11 RemovedBody326_14

def RemovedBody326_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody326_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody326_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody326_19 : StackLang.HolProg 64 :=
.call none (Sum.inl 179) none

def RemovedBody326_20 : StackLang.HolProg 64 :=
.seq RemovedBody326_18 RemovedBody326_19

def RemovedBody326_21 : StackLang.HolProg 64 :=
.seq RemovedBody326_17 RemovedBody326_20

def RemovedBody326_22 : StackLang.HolProg 64 :=
.seq RemovedBody326_16 RemovedBody326_21

def RemovedBody326_23 : StackLang.HolProg 64 :=
.seq RemovedBody326_15 RemovedBody326_22

def RemovedBody326_24 : StackLang.HolProg 64 :=
.seq RemovedBody326_4 RemovedBody326_23

def RemovedBody326_25 : StackLang.HolProg 64 :=
.seq RemovedBody326_3 RemovedBody326_24

def RemovedBody326_26 : StackLang.HolProg 64 :=
.seq RemovedBody326_2 RemovedBody326_25

def RemovedBody326_27 : StackLang.HolProg 64 :=
.seq RemovedBody326_1 RemovedBody326_26

def RemovedBody326_28 : StackLang.HolProg 64 :=
.seq RemovedBody326_0 RemovedBody326_27

def Removed326 : Nat × StackLang.HolProg 64 := (326, RemovedBody326_28)
theorem Removed326_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc326 = Removed326 := by
  kernel_rfl
#print axioms Removed326_eq
end InitECandidate.Proofs.BackendStages
