import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed222
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody222_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody222_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody222_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 64#64))

def NamedBody222_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody222_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 72#64))

def NamedBody222_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody222_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 80#64))

def NamedBody222_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody222_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 88#64))

def NamedBody222_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody222_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody222_11 : StackLang.HolProg 64 :=
.call none (Sum.inl 102) none

def NamedBody222_12 : StackLang.HolProg 64 :=
.seq NamedBody222_10 NamedBody222_11

def NamedBody222_13 : StackLang.HolProg 64 :=
.seq NamedBody222_9 NamedBody222_12

def NamedBody222_14 : StackLang.HolProg 64 :=
.seq NamedBody222_8 NamedBody222_13

def NamedBody222_15 : StackLang.HolProg 64 :=
.seq NamedBody222_7 NamedBody222_14

def NamedBody222_16 : StackLang.HolProg 64 :=
.seq NamedBody222_6 NamedBody222_15

def NamedBody222_17 : StackLang.HolProg 64 :=
.seq NamedBody222_5 NamedBody222_16

def NamedBody222_18 : StackLang.HolProg 64 :=
.seq NamedBody222_4 NamedBody222_17

def NamedBody222_19 : StackLang.HolProg 64 :=
.seq NamedBody222_3 NamedBody222_18

def NamedBody222_20 : StackLang.HolProg 64 :=
.seq NamedBody222_2 NamedBody222_19

def NamedBody222_21 : StackLang.HolProg 64 :=
.seq NamedBody222_1 NamedBody222_20

def NamedBody222_22 : StackLang.HolProg 64 :=
.seq NamedBody222_0 NamedBody222_21

def Named222 : Nat × StackLang.HolProg 64 := (222, NamedBody222_22)
theorem Named222_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed222 = Named222 := by
  kernel_rfl
#print axioms Named222_eq
end InitECandidate.Proofs.BackendStages
