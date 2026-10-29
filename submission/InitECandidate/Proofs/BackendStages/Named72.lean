import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed72
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody72_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody72_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody72_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody72_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody72_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody72_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551584#64))

def NamedBody72_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody72_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody72_8 : StackLang.HolProg 64 :=
.seq NamedBody72_6 NamedBody72_7

def NamedBody72_9 : StackLang.HolProg 64 :=
.seq NamedBody72_5 NamedBody72_8

def NamedBody72_10 : StackLang.HolProg 64 :=
.seq NamedBody72_4 NamedBody72_9

def NamedBody72_11 : StackLang.HolProg 64 :=
.seq NamedBody72_3 NamedBody72_10

def NamedBody72_12 : StackLang.HolProg 64 :=
.seq NamedBody72_2 NamedBody72_11

def NamedBody72_13 : StackLang.HolProg 64 :=
.seq NamedBody72_1 NamedBody72_12

def NamedBody72_14 : StackLang.HolProg 64 :=
.seq NamedBody72_0 NamedBody72_13

def Named72 : Nat × StackLang.HolProg 64 := (72, NamedBody72_14)
theorem Named72_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed72 = Named72 := by
  kernel_rfl
#print axioms Named72_eq
end InitECandidate.Proofs.BackendStages
