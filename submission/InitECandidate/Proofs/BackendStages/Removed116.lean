import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc116
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody116_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody116_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody116_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody116_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody116_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 1 1 5 0))

def RemovedBody116_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody116_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 2 2 6 0))

def RemovedBody116_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody116_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 3 3 7 0))

def RemovedBody116_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody116_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 4 4 8 0))

def RemovedBody116_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody116_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def RemovedBody116_13 : StackLang.HolProg 64 :=
.seq RemovedBody116_11 RemovedBody116_12

def RemovedBody116_14 : StackLang.HolProg 64 :=
.seq RemovedBody116_10 RemovedBody116_13

def RemovedBody116_15 : StackLang.HolProg 64 :=
.seq RemovedBody116_9 RemovedBody116_14

def RemovedBody116_16 : StackLang.HolProg 64 :=
.seq RemovedBody116_8 RemovedBody116_15

def RemovedBody116_17 : StackLang.HolProg 64 :=
.seq RemovedBody116_7 RemovedBody116_16

def RemovedBody116_18 : StackLang.HolProg 64 :=
.seq RemovedBody116_6 RemovedBody116_17

def RemovedBody116_19 : StackLang.HolProg 64 :=
.seq RemovedBody116_5 RemovedBody116_18

def RemovedBody116_20 : StackLang.HolProg 64 :=
.seq RemovedBody116_4 RemovedBody116_19

def RemovedBody116_21 : StackLang.HolProg 64 :=
.seq RemovedBody116_3 RemovedBody116_20

def RemovedBody116_22 : StackLang.HolProg 64 :=
.seq RemovedBody116_2 RemovedBody116_21

def RemovedBody116_23 : StackLang.HolProg 64 :=
.seq RemovedBody116_1 RemovedBody116_22

def RemovedBody116_24 : StackLang.HolProg 64 :=
.seq RemovedBody116_0 RemovedBody116_23

def Removed116 : Nat × StackLang.HolProg 64 := (116, RemovedBody116_24)
theorem Removed116_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc116 = Removed116 := by
  kernel_rfl
#print axioms Removed116_eq
end InitECandidate.Proofs.BackendStages
