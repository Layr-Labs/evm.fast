import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc352
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody352_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody352_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody352_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 320#64))

def RemovedBody352_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody352_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 328#64))

def RemovedBody352_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody352_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 336#64))

def RemovedBody352_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody352_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 344#64))

def RemovedBody352_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody352_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody352_11 : StackLang.HolProg 64 :=
.seq RemovedBody352_9 RemovedBody352_10

def RemovedBody352_12 : StackLang.HolProg 64 :=
.seq RemovedBody352_8 RemovedBody352_11

def RemovedBody352_13 : StackLang.HolProg 64 :=
.seq RemovedBody352_7 RemovedBody352_12

def RemovedBody352_14 : StackLang.HolProg 64 :=
.seq RemovedBody352_6 RemovedBody352_13

def RemovedBody352_15 : StackLang.HolProg 64 :=
.seq RemovedBody352_5 RemovedBody352_14

def RemovedBody352_16 : StackLang.HolProg 64 :=
.seq RemovedBody352_4 RemovedBody352_15

def RemovedBody352_17 : StackLang.HolProg 64 :=
.seq RemovedBody352_3 RemovedBody352_16

def RemovedBody352_18 : StackLang.HolProg 64 :=
.seq RemovedBody352_2 RemovedBody352_17

def RemovedBody352_19 : StackLang.HolProg 64 :=
.seq RemovedBody352_1 RemovedBody352_18

def RemovedBody352_20 : StackLang.HolProg 64 :=
.seq RemovedBody352_0 RemovedBody352_19

def Removed352 : Nat × StackLang.HolProg 64 := (352, RemovedBody352_20)
theorem Removed352_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc352 = Removed352 := by
  kernel_rfl
#print axioms Removed352_eq
end InitECandidate.Proofs.BackendStages
