import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw350
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody350_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody350_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody350_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 160#64))

def AllocBody350_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody350_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def AllocBody350_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody350_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 176#64))

def AllocBody350_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody350_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 184#64))

def AllocBody350_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody350_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody350_11 : StackLang.HolProg 64 :=
.seq AllocBody350_9 AllocBody350_10

def AllocBody350_12 : StackLang.HolProg 64 :=
.seq AllocBody350_8 AllocBody350_11

def AllocBody350_13 : StackLang.HolProg 64 :=
.seq AllocBody350_7 AllocBody350_12

def AllocBody350_14 : StackLang.HolProg 64 :=
.seq AllocBody350_6 AllocBody350_13

def AllocBody350_15 : StackLang.HolProg 64 :=
.seq AllocBody350_5 AllocBody350_14

def AllocBody350_16 : StackLang.HolProg 64 :=
.seq AllocBody350_4 AllocBody350_15

def AllocBody350_17 : StackLang.HolProg 64 :=
.seq AllocBody350_3 AllocBody350_16

def AllocBody350_18 : StackLang.HolProg 64 :=
.seq AllocBody350_2 AllocBody350_17

def AllocBody350_19 : StackLang.HolProg 64 :=
.seq AllocBody350_1 AllocBody350_18

def AllocBody350_20 : StackLang.HolProg 64 :=
.seq AllocBody350_0 AllocBody350_19

def Alloc350 : Nat × StackLang.HolProg 64 := (350, AllocBody350_20)
theorem Alloc350_eq : StackAlloc.progComp (350, raw350) = Alloc350 := by
  kernel_rfl
#print axioms Alloc350_eq
end InitECandidate.Proofs.BackendStages
