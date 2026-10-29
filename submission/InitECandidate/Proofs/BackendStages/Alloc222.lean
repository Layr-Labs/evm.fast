import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw222
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody222_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody222_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody222_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 64#64))

def AllocBody222_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody222_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 72#64))

def AllocBody222_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody222_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 80#64))

def AllocBody222_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody222_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 88#64))

def AllocBody222_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody222_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody222_11 : StackLang.HolProg 64 :=
.call none (Sum.inl 102) none

def AllocBody222_12 : StackLang.HolProg 64 :=
.seq AllocBody222_10 AllocBody222_11

def AllocBody222_13 : StackLang.HolProg 64 :=
.seq AllocBody222_9 AllocBody222_12

def AllocBody222_14 : StackLang.HolProg 64 :=
.seq AllocBody222_8 AllocBody222_13

def AllocBody222_15 : StackLang.HolProg 64 :=
.seq AllocBody222_7 AllocBody222_14

def AllocBody222_16 : StackLang.HolProg 64 :=
.seq AllocBody222_6 AllocBody222_15

def AllocBody222_17 : StackLang.HolProg 64 :=
.seq AllocBody222_5 AllocBody222_16

def AllocBody222_18 : StackLang.HolProg 64 :=
.seq AllocBody222_4 AllocBody222_17

def AllocBody222_19 : StackLang.HolProg 64 :=
.seq AllocBody222_3 AllocBody222_18

def AllocBody222_20 : StackLang.HolProg 64 :=
.seq AllocBody222_2 AllocBody222_19

def AllocBody222_21 : StackLang.HolProg 64 :=
.seq AllocBody222_1 AllocBody222_20

def AllocBody222_22 : StackLang.HolProg 64 :=
.seq AllocBody222_0 AllocBody222_21

def Alloc222 : Nat × StackLang.HolProg 64 := (222, AllocBody222_22)
theorem Alloc222_eq : StackAlloc.progComp (222, raw222) = Alloc222 := by
  kernel_rfl
#print axioms Alloc222_eq
end InitECandidate.Proofs.BackendStages
