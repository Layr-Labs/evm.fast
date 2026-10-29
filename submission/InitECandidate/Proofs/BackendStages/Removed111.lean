import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc111
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody111_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody111_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody111_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody111_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody111_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody111_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody111_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody111_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody111_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody111_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody111_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody111_11 : StackLang.HolProg 64 :=
.seq RemovedBody111_9 RemovedBody111_10

def RemovedBody111_12 : StackLang.HolProg 64 :=
.seq RemovedBody111_8 RemovedBody111_11

def RemovedBody111_13 : StackLang.HolProg 64 :=
.seq RemovedBody111_7 RemovedBody111_12

def RemovedBody111_14 : StackLang.HolProg 64 :=
.seq RemovedBody111_6 RemovedBody111_13

def RemovedBody111_15 : StackLang.HolProg 64 :=
.seq RemovedBody111_5 RemovedBody111_14

def RemovedBody111_16 : StackLang.HolProg 64 :=
.seq RemovedBody111_4 RemovedBody111_15

def RemovedBody111_17 : StackLang.HolProg 64 :=
.seq RemovedBody111_3 RemovedBody111_16

def RemovedBody111_18 : StackLang.HolProg 64 :=
.seq RemovedBody111_2 RemovedBody111_17

def RemovedBody111_19 : StackLang.HolProg 64 :=
.seq RemovedBody111_1 RemovedBody111_18

def RemovedBody111_20 : StackLang.HolProg 64 :=
.seq RemovedBody111_0 RemovedBody111_19

def Removed111 : Nat × StackLang.HolProg 64 := (111, RemovedBody111_20)
theorem Removed111_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc111 = Removed111 := by
  kernel_rfl
#print axioms Removed111_eq
end InitECandidate.Proofs.BackendStages
