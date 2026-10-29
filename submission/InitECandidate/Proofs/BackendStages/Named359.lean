import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed359
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody359_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody359_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody359_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody359_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody359_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody359_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 128#64)

def NamedBody359_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody359_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody359_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody359_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody359_10 : StackLang.HolProg 64 :=
.seq NamedBody359_8 NamedBody359_9

def NamedBody359_11 : StackLang.HolProg 64 :=
.seq NamedBody359_7 NamedBody359_10

def NamedBody359_12 : StackLang.HolProg 64 :=
.seq NamedBody359_6 NamedBody359_11

def NamedBody359_13 : StackLang.HolProg 64 :=
.seq NamedBody359_5 NamedBody359_12

def NamedBody359_14 : StackLang.HolProg 64 :=
.seq NamedBody359_4 NamedBody359_13

def NamedBody359_15 : StackLang.HolProg 64 :=
.seq NamedBody359_3 NamedBody359_14

def NamedBody359_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody359_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody359_15 NamedBody359_16

def NamedBody359_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody359_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody359_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody359_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 20#64)

def NamedBody359_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody359_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody359_24 : StackLang.HolProg 64 :=
.call none (Sum.inl 176) none

def NamedBody359_25 : StackLang.HolProg 64 :=
.seq NamedBody359_23 NamedBody359_24

def NamedBody359_26 : StackLang.HolProg 64 :=
.seq NamedBody359_22 NamedBody359_25

def NamedBody359_27 : StackLang.HolProg 64 :=
.seq NamedBody359_21 NamedBody359_26

def NamedBody359_28 : StackLang.HolProg 64 :=
.seq NamedBody359_20 NamedBody359_27

def NamedBody359_29 : StackLang.HolProg 64 :=
.seq NamedBody359_19 NamedBody359_28

def NamedBody359_30 : StackLang.HolProg 64 :=
.seq NamedBody359_18 NamedBody359_29

def NamedBody359_31 : StackLang.HolProg 64 :=
.seq NamedBody359_17 NamedBody359_30

def NamedBody359_32 : StackLang.HolProg 64 :=
.seq NamedBody359_2 NamedBody359_31

def NamedBody359_33 : StackLang.HolProg 64 :=
.seq NamedBody359_1 NamedBody359_32

def NamedBody359_34 : StackLang.HolProg 64 :=
.seq NamedBody359_0 NamedBody359_33

def Named359 : Nat × StackLang.HolProg 64 := (359, NamedBody359_34)
theorem Named359_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed359 = Named359 := by
  kernel_rfl
#print axioms Named359_eq
end InitECandidate.Proofs.BackendStages
