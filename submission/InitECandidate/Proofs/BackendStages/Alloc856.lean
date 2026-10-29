import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw856
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody856_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody856_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody856_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody856_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4#64)

def AllocBody856_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody856_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody856_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody856_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody856_8 : StackLang.HolProg 64 :=
.seq AllocBody856_6 AllocBody856_7

def AllocBody856_9 : StackLang.HolProg 64 :=
.seq AllocBody856_5 AllocBody856_8

def AllocBody856_10 : StackLang.HolProg 64 :=
.seq AllocBody856_4 AllocBody856_9

def AllocBody856_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody856_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody856_10 AllocBody856_11

def AllocBody856_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody856_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody856_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody856_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody856_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody856_18 : StackLang.HolProg 64 :=
.seq AllocBody856_16 AllocBody856_17

def AllocBody856_19 : StackLang.HolProg 64 :=
.seq AllocBody856_15 AllocBody856_18

def AllocBody856_20 : StackLang.HolProg 64 :=
.seq AllocBody856_14 AllocBody856_19

def AllocBody856_21 : StackLang.HolProg 64 :=
.seq AllocBody856_13 AllocBody856_20

def AllocBody856_22 : StackLang.HolProg 64 :=
.seq AllocBody856_12 AllocBody856_21

def AllocBody856_23 : StackLang.HolProg 64 :=
.seq AllocBody856_3 AllocBody856_22

def AllocBody856_24 : StackLang.HolProg 64 :=
.seq AllocBody856_2 AllocBody856_23

def AllocBody856_25 : StackLang.HolProg 64 :=
.seq AllocBody856_1 AllocBody856_24

def AllocBody856_26 : StackLang.HolProg 64 :=
.seq AllocBody856_0 AllocBody856_25

def Alloc856 : Nat × StackLang.HolProg 64 := (856, AllocBody856_26)
theorem Alloc856_eq : StackAlloc.progComp (856, raw856) = Alloc856 := by
  kernel_rfl
#print axioms Alloc856_eq
end InitECandidate.Proofs.BackendStages
