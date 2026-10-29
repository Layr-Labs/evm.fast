import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc132
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody132_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody132_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody132_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody132_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def RemovedBody132_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody132_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody132_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody132_7 : StackLang.HolProg 64 :=
.call none (Sum.inl 118) none

def RemovedBody132_8 : StackLang.HolProg 64 :=
.seq RemovedBody132_6 RemovedBody132_7

def RemovedBody132_9 : StackLang.HolProg 64 :=
.seq RemovedBody132_5 RemovedBody132_8

def RemovedBody132_10 : StackLang.HolProg 64 :=
.seq RemovedBody132_4 RemovedBody132_9

def RemovedBody132_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody132_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody132_10 RemovedBody132_11

def RemovedBody132_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody132_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody132_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody132_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody132_17 : StackLang.HolProg 64 :=
.seq RemovedBody132_15 RemovedBody132_16

def RemovedBody132_18 : StackLang.HolProg 64 :=
.seq RemovedBody132_14 RemovedBody132_17

def RemovedBody132_19 : StackLang.HolProg 64 :=
.seq RemovedBody132_13 RemovedBody132_18

def RemovedBody132_20 : StackLang.HolProg 64 :=
.seq RemovedBody132_12 RemovedBody132_19

def RemovedBody132_21 : StackLang.HolProg 64 :=
.seq RemovedBody132_3 RemovedBody132_20

def RemovedBody132_22 : StackLang.HolProg 64 :=
.seq RemovedBody132_2 RemovedBody132_21

def RemovedBody132_23 : StackLang.HolProg 64 :=
.seq RemovedBody132_1 RemovedBody132_22

def RemovedBody132_24 : StackLang.HolProg 64 :=
.seq RemovedBody132_0 RemovedBody132_23

def Removed132 : Nat × StackLang.HolProg 64 := (132, RemovedBody132_24)
theorem Removed132_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc132 = Removed132 := by
  kernel_rfl
#print axioms Removed132_eq
end InitECandidate.Proofs.BackendStages
