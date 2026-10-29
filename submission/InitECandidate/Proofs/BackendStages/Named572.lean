import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed572
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody572_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody572_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody572_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def NamedBody572_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody572_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedBody572_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 18446744073709551360#64))

def NamedBody572_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 112#64))

def NamedBody572_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody572_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody572_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody572_10 : StackLang.HolProg 64 :=
.seq NamedBody572_8 NamedBody572_9

def NamedBody572_11 : StackLang.HolProg 64 :=
.seq NamedBody572_7 NamedBody572_10

def NamedBody572_12 : StackLang.HolProg 64 :=
.seq NamedBody572_6 NamedBody572_11

def NamedBody572_13 : StackLang.HolProg 64 :=
.seq NamedBody572_5 NamedBody572_12

def NamedBody572_14 : StackLang.HolProg 64 :=
.seq NamedBody572_4 NamedBody572_13

def NamedBody572_15 : StackLang.HolProg 64 :=
.seq NamedBody572_3 NamedBody572_14

def NamedBody572_16 : StackLang.HolProg 64 :=
.seq NamedBody572_2 NamedBody572_15

def NamedBody572_17 : StackLang.HolProg 64 :=
.seq NamedBody572_1 NamedBody572_16

def NamedBody572_18 : StackLang.HolProg 64 :=
.seq NamedBody572_0 NamedBody572_17

def Named572 : Nat × StackLang.HolProg 64 := (572, NamedBody572_18)
theorem Named572_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed572 = Named572 := by
  kernel_rfl
#print axioms Named572_eq
end InitECandidate.Proofs.BackendStages
