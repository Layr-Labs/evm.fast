import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw855
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody855_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody855_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody855_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody855_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def AllocBody855_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody855_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody855_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody855_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody855_8 : StackLang.HolProg 64 :=
.seq AllocBody855_6 AllocBody855_7

def AllocBody855_9 : StackLang.HolProg 64 :=
.seq AllocBody855_5 AllocBody855_8

def AllocBody855_10 : StackLang.HolProg 64 :=
.seq AllocBody855_4 AllocBody855_9

def AllocBody855_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody855_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody855_10 AllocBody855_11

def AllocBody855_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody855_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody855_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody855_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody855_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody855_18 : StackLang.HolProg 64 :=
.seq AllocBody855_16 AllocBody855_17

def AllocBody855_19 : StackLang.HolProg 64 :=
.seq AllocBody855_15 AllocBody855_18

def AllocBody855_20 : StackLang.HolProg 64 :=
.seq AllocBody855_14 AllocBody855_19

def AllocBody855_21 : StackLang.HolProg 64 :=
.seq AllocBody855_13 AllocBody855_20

def AllocBody855_22 : StackLang.HolProg 64 :=
.seq AllocBody855_12 AllocBody855_21

def AllocBody855_23 : StackLang.HolProg 64 :=
.seq AllocBody855_3 AllocBody855_22

def AllocBody855_24 : StackLang.HolProg 64 :=
.seq AllocBody855_2 AllocBody855_23

def AllocBody855_25 : StackLang.HolProg 64 :=
.seq AllocBody855_1 AllocBody855_24

def AllocBody855_26 : StackLang.HolProg 64 :=
.seq AllocBody855_0 AllocBody855_25

def Alloc855 : Nat × StackLang.HolProg 64 := (855, AllocBody855_26)
theorem Alloc855_eq : StackAlloc.progComp (855, raw855) = Alloc855 := by
  kernel_rfl
#print axioms Alloc855_eq
end InitECandidate.Proofs.BackendStages
