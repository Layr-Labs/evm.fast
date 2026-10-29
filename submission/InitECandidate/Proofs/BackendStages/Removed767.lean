import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc767
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody767_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody767_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody767_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 96#64))

def RemovedBody767_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody767_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 104#64))

def RemovedBody767_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody767_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 112#64))

def RemovedBody767_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody767_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 120#64))

def RemovedBody767_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody767_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 128#64))

def RemovedBody767_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody767_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 136#64))

def RemovedBody767_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody767_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody767_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 705) none

def RemovedBody767_16 : StackLang.HolProg 64 :=
.seq RemovedBody767_14 RemovedBody767_15

def RemovedBody767_17 : StackLang.HolProg 64 :=
.seq RemovedBody767_13 RemovedBody767_16

def RemovedBody767_18 : StackLang.HolProg 64 :=
.seq RemovedBody767_12 RemovedBody767_17

def RemovedBody767_19 : StackLang.HolProg 64 :=
.seq RemovedBody767_11 RemovedBody767_18

def RemovedBody767_20 : StackLang.HolProg 64 :=
.seq RemovedBody767_10 RemovedBody767_19

def RemovedBody767_21 : StackLang.HolProg 64 :=
.seq RemovedBody767_9 RemovedBody767_20

def RemovedBody767_22 : StackLang.HolProg 64 :=
.seq RemovedBody767_8 RemovedBody767_21

def RemovedBody767_23 : StackLang.HolProg 64 :=
.seq RemovedBody767_7 RemovedBody767_22

def RemovedBody767_24 : StackLang.HolProg 64 :=
.seq RemovedBody767_6 RemovedBody767_23

def RemovedBody767_25 : StackLang.HolProg 64 :=
.seq RemovedBody767_5 RemovedBody767_24

def RemovedBody767_26 : StackLang.HolProg 64 :=
.seq RemovedBody767_4 RemovedBody767_25

def RemovedBody767_27 : StackLang.HolProg 64 :=
.seq RemovedBody767_3 RemovedBody767_26

def RemovedBody767_28 : StackLang.HolProg 64 :=
.seq RemovedBody767_2 RemovedBody767_27

def RemovedBody767_29 : StackLang.HolProg 64 :=
.seq RemovedBody767_1 RemovedBody767_28

def RemovedBody767_30 : StackLang.HolProg 64 :=
.seq RemovedBody767_0 RemovedBody767_29

def Removed767 : Nat × StackLang.HolProg 64 := (767, RemovedBody767_30)
theorem Removed767_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc767 = Removed767 := by
  kernel_rfl
#print axioms Removed767_eq
end InitECandidate.Proofs.BackendStages
