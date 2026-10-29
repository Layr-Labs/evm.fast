import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc856
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody856_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody856_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody856_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody856_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4#64)

def RemovedBody856_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody856_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody856_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody856_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody856_8 : StackLang.HolProg 64 :=
.seq RemovedBody856_6 RemovedBody856_7

def RemovedBody856_9 : StackLang.HolProg 64 :=
.seq RemovedBody856_5 RemovedBody856_8

def RemovedBody856_10 : StackLang.HolProg 64 :=
.seq RemovedBody856_4 RemovedBody856_9

def RemovedBody856_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody856_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody856_10 RemovedBody856_11

def RemovedBody856_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody856_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody856_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody856_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody856_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody856_18 : StackLang.HolProg 64 :=
.seq RemovedBody856_16 RemovedBody856_17

def RemovedBody856_19 : StackLang.HolProg 64 :=
.seq RemovedBody856_15 RemovedBody856_18

def RemovedBody856_20 : StackLang.HolProg 64 :=
.seq RemovedBody856_14 RemovedBody856_19

def RemovedBody856_21 : StackLang.HolProg 64 :=
.seq RemovedBody856_13 RemovedBody856_20

def RemovedBody856_22 : StackLang.HolProg 64 :=
.seq RemovedBody856_12 RemovedBody856_21

def RemovedBody856_23 : StackLang.HolProg 64 :=
.seq RemovedBody856_3 RemovedBody856_22

def RemovedBody856_24 : StackLang.HolProg 64 :=
.seq RemovedBody856_2 RemovedBody856_23

def RemovedBody856_25 : StackLang.HolProg 64 :=
.seq RemovedBody856_1 RemovedBody856_24

def RemovedBody856_26 : StackLang.HolProg 64 :=
.seq RemovedBody856_0 RemovedBody856_25

def Removed856 : Nat × StackLang.HolProg 64 := (856, RemovedBody856_26)
theorem Removed856_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc856 = Removed856 := by
  kernel_rfl
#print axioms Removed856_eq
end InitECandidate.Proofs.BackendStages
