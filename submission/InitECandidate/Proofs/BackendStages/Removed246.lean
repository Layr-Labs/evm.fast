import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc246
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody246_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody246_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody246_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def RemovedBody246_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1073741840#64)

def RemovedBody246_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody246_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.load 2
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64)

def RemovedBody246_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody246_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody246_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody246_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody246_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody246_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def RemovedBody246_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody246_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody246_14 : StackLang.HolProg 64 :=
.seq RemovedBody246_12 RemovedBody246_13

def RemovedBody246_15 : StackLang.HolProg 64 :=
.seq RemovedBody246_11 RemovedBody246_14

def RemovedBody246_16 : StackLang.HolProg 64 :=
.seq RemovedBody246_10 RemovedBody246_15

def RemovedBody246_17 : StackLang.HolProg 64 :=
.seq RemovedBody246_9 RemovedBody246_16

def RemovedBody246_18 : StackLang.HolProg 64 :=
.seq RemovedBody246_8 RemovedBody246_17

def RemovedBody246_19 : StackLang.HolProg 64 :=
.seq RemovedBody246_7 RemovedBody246_18

def RemovedBody246_20 : StackLang.HolProg 64 :=
.seq RemovedBody246_6 RemovedBody246_19

def RemovedBody246_21 : StackLang.HolProg 64 :=
.seq RemovedBody246_5 RemovedBody246_20

def RemovedBody246_22 : StackLang.HolProg 64 :=
.seq RemovedBody246_4 RemovedBody246_21

def RemovedBody246_23 : StackLang.HolProg 64 :=
.seq RemovedBody246_3 RemovedBody246_22

def RemovedBody246_24 : StackLang.HolProg 64 :=
.seq RemovedBody246_2 RemovedBody246_23

def RemovedBody246_25 : StackLang.HolProg 64 :=
.seq RemovedBody246_1 RemovedBody246_24

def RemovedBody246_26 : StackLang.HolProg 64 :=
.seq RemovedBody246_0 RemovedBody246_25

def Removed246 : Nat × StackLang.HolProg 64 := (246, RemovedBody246_26)
theorem Removed246_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc246 = Removed246 := by
  kernel_rfl
#print axioms Removed246_eq
end InitECandidate.Proofs.BackendStages
