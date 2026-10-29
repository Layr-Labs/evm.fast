import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw348
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody348_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody348_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody348_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody348_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody348_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody348_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody348_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody348_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody348_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody348_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody348_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody348_11 : StackLang.HolProg 64 :=
.seq AllocBody348_9 AllocBody348_10

def AllocBody348_12 : StackLang.HolProg 64 :=
.seq AllocBody348_8 AllocBody348_11

def AllocBody348_13 : StackLang.HolProg 64 :=
.seq AllocBody348_7 AllocBody348_12

def AllocBody348_14 : StackLang.HolProg 64 :=
.seq AllocBody348_6 AllocBody348_13

def AllocBody348_15 : StackLang.HolProg 64 :=
.seq AllocBody348_5 AllocBody348_14

def AllocBody348_16 : StackLang.HolProg 64 :=
.seq AllocBody348_4 AllocBody348_15

def AllocBody348_17 : StackLang.HolProg 64 :=
.seq AllocBody348_3 AllocBody348_16

def AllocBody348_18 : StackLang.HolProg 64 :=
.seq AllocBody348_2 AllocBody348_17

def AllocBody348_19 : StackLang.HolProg 64 :=
.seq AllocBody348_1 AllocBody348_18

def AllocBody348_20 : StackLang.HolProg 64 :=
.seq AllocBody348_0 AllocBody348_19

def Alloc348 : Nat × StackLang.HolProg 64 := (348, AllocBody348_20)
theorem Alloc348_eq : StackAlloc.progComp (348, raw348) = Alloc348 := by
  kernel_rfl
#print axioms Alloc348_eq
end InitECandidate.Proofs.BackendStages
