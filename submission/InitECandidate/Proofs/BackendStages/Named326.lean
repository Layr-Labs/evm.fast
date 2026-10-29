import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed326
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody326_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody326_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody326_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody326_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody326_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody326_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody326_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody326_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody326_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody326_9 : StackLang.HolProg 64 :=
.seq NamedBody326_7 NamedBody326_8

def NamedBody326_10 : StackLang.HolProg 64 :=
.seq NamedBody326_6 NamedBody326_9

def NamedBody326_11 : StackLang.HolProg 64 :=
.seq NamedBody326_5 NamedBody326_10

def NamedBody326_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody326_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody326_14 : StackLang.HolProg 64 :=
.seq NamedBody326_12 NamedBody326_13

def NamedBody326_15 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody326_11 NamedBody326_14

def NamedBody326_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody326_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody326_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody326_19 : StackLang.HolProg 64 :=
.call none (Sum.inl 179) none

def NamedBody326_20 : StackLang.HolProg 64 :=
.seq NamedBody326_18 NamedBody326_19

def NamedBody326_21 : StackLang.HolProg 64 :=
.seq NamedBody326_17 NamedBody326_20

def NamedBody326_22 : StackLang.HolProg 64 :=
.seq NamedBody326_16 NamedBody326_21

def NamedBody326_23 : StackLang.HolProg 64 :=
.seq NamedBody326_15 NamedBody326_22

def NamedBody326_24 : StackLang.HolProg 64 :=
.seq NamedBody326_4 NamedBody326_23

def NamedBody326_25 : StackLang.HolProg 64 :=
.seq NamedBody326_3 NamedBody326_24

def NamedBody326_26 : StackLang.HolProg 64 :=
.seq NamedBody326_2 NamedBody326_25

def NamedBody326_27 : StackLang.HolProg 64 :=
.seq NamedBody326_1 NamedBody326_26

def NamedBody326_28 : StackLang.HolProg 64 :=
.seq NamedBody326_0 NamedBody326_27

def Named326 : Nat × StackLang.HolProg 64 := (326, NamedBody326_28)
theorem Named326_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed326 = Named326 := by
  kernel_rfl
#print axioms Named326_eq
end InitECandidate.Proofs.BackendStages
