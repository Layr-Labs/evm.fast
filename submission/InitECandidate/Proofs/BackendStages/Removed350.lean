import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc350
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody350_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody350_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody350_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 160#64))

def RemovedBody350_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody350_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def RemovedBody350_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody350_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 176#64))

def RemovedBody350_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody350_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 184#64))

def RemovedBody350_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody350_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody350_11 : StackLang.HolProg 64 :=
.seq RemovedBody350_9 RemovedBody350_10

def RemovedBody350_12 : StackLang.HolProg 64 :=
.seq RemovedBody350_8 RemovedBody350_11

def RemovedBody350_13 : StackLang.HolProg 64 :=
.seq RemovedBody350_7 RemovedBody350_12

def RemovedBody350_14 : StackLang.HolProg 64 :=
.seq RemovedBody350_6 RemovedBody350_13

def RemovedBody350_15 : StackLang.HolProg 64 :=
.seq RemovedBody350_5 RemovedBody350_14

def RemovedBody350_16 : StackLang.HolProg 64 :=
.seq RemovedBody350_4 RemovedBody350_15

def RemovedBody350_17 : StackLang.HolProg 64 :=
.seq RemovedBody350_3 RemovedBody350_16

def RemovedBody350_18 : StackLang.HolProg 64 :=
.seq RemovedBody350_2 RemovedBody350_17

def RemovedBody350_19 : StackLang.HolProg 64 :=
.seq RemovedBody350_1 RemovedBody350_18

def RemovedBody350_20 : StackLang.HolProg 64 :=
.seq RemovedBody350_0 RemovedBody350_19

def Removed350 : Nat × StackLang.HolProg 64 := (350, RemovedBody350_20)
theorem Removed350_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc350 = Removed350 := by
  kernel_rfl
#print axioms Removed350_eq
end InitECandidate.Proofs.BackendStages
