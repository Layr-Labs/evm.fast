import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw353
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody353_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody353_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody353_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 352#64))

def AllocBody353_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody353_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 360#64))

def AllocBody353_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody353_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 368#64))

def AllocBody353_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody353_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 376#64))

def AllocBody353_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody353_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody353_11 : StackLang.HolProg 64 :=
.seq AllocBody353_9 AllocBody353_10

def AllocBody353_12 : StackLang.HolProg 64 :=
.seq AllocBody353_8 AllocBody353_11

def AllocBody353_13 : StackLang.HolProg 64 :=
.seq AllocBody353_7 AllocBody353_12

def AllocBody353_14 : StackLang.HolProg 64 :=
.seq AllocBody353_6 AllocBody353_13

def AllocBody353_15 : StackLang.HolProg 64 :=
.seq AllocBody353_5 AllocBody353_14

def AllocBody353_16 : StackLang.HolProg 64 :=
.seq AllocBody353_4 AllocBody353_15

def AllocBody353_17 : StackLang.HolProg 64 :=
.seq AllocBody353_3 AllocBody353_16

def AllocBody353_18 : StackLang.HolProg 64 :=
.seq AllocBody353_2 AllocBody353_17

def AllocBody353_19 : StackLang.HolProg 64 :=
.seq AllocBody353_1 AllocBody353_18

def AllocBody353_20 : StackLang.HolProg 64 :=
.seq AllocBody353_0 AllocBody353_19

def Alloc353 : Nat × StackLang.HolProg 64 := (353, AllocBody353_20)
theorem Alloc353_eq : StackAlloc.progComp (353, raw353) = Alloc353 := by
  kernel_rfl
#print axioms Alloc353_eq
end InitECandidate.Proofs.BackendStages
