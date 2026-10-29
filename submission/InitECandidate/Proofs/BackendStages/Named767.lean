import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed767
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody767_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody767_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody767_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 96#64))

def NamedBody767_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody767_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 104#64))

def NamedBody767_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody767_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 112#64))

def NamedBody767_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody767_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 120#64))

def NamedBody767_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody767_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 128#64))

def NamedBody767_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody767_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 136#64))

def NamedBody767_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody767_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody767_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 705) none

def NamedBody767_16 : StackLang.HolProg 64 :=
.seq NamedBody767_14 NamedBody767_15

def NamedBody767_17 : StackLang.HolProg 64 :=
.seq NamedBody767_13 NamedBody767_16

def NamedBody767_18 : StackLang.HolProg 64 :=
.seq NamedBody767_12 NamedBody767_17

def NamedBody767_19 : StackLang.HolProg 64 :=
.seq NamedBody767_11 NamedBody767_18

def NamedBody767_20 : StackLang.HolProg 64 :=
.seq NamedBody767_10 NamedBody767_19

def NamedBody767_21 : StackLang.HolProg 64 :=
.seq NamedBody767_9 NamedBody767_20

def NamedBody767_22 : StackLang.HolProg 64 :=
.seq NamedBody767_8 NamedBody767_21

def NamedBody767_23 : StackLang.HolProg 64 :=
.seq NamedBody767_7 NamedBody767_22

def NamedBody767_24 : StackLang.HolProg 64 :=
.seq NamedBody767_6 NamedBody767_23

def NamedBody767_25 : StackLang.HolProg 64 :=
.seq NamedBody767_5 NamedBody767_24

def NamedBody767_26 : StackLang.HolProg 64 :=
.seq NamedBody767_4 NamedBody767_25

def NamedBody767_27 : StackLang.HolProg 64 :=
.seq NamedBody767_3 NamedBody767_26

def NamedBody767_28 : StackLang.HolProg 64 :=
.seq NamedBody767_2 NamedBody767_27

def NamedBody767_29 : StackLang.HolProg 64 :=
.seq NamedBody767_1 NamedBody767_28

def NamedBody767_30 : StackLang.HolProg 64 :=
.seq NamedBody767_0 NamedBody767_29

def Named767 : Nat × StackLang.HolProg 64 := (767, NamedBody767_30)
theorem Named767_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed767 = Named767 := by
  kernel_rfl
#print axioms Named767_eq
end InitECandidate.Proofs.BackendStages
