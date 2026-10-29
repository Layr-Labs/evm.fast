import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw473
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody473_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody473_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody473_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody473_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody473_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 192#64))

def AllocBody473_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody473_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def AllocBody473_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody473_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def AllocBody473_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody473_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody473_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody473_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody473_13 : StackLang.HolProg 64 :=
.seq AllocBody473_11 AllocBody473_12

def AllocBody473_14 : StackLang.HolProg 64 :=
.seq AllocBody473_10 AllocBody473_13

def AllocBody473_15 : StackLang.HolProg 64 :=
.seq AllocBody473_9 AllocBody473_14

def AllocBody473_16 : StackLang.HolProg 64 :=
.seq AllocBody473_8 AllocBody473_15

def AllocBody473_17 : StackLang.HolProg 64 :=
.seq AllocBody473_7 AllocBody473_16

def AllocBody473_18 : StackLang.HolProg 64 :=
.seq AllocBody473_6 AllocBody473_17

def AllocBody473_19 : StackLang.HolProg 64 :=
.seq AllocBody473_5 AllocBody473_18

def AllocBody473_20 : StackLang.HolProg 64 :=
.seq AllocBody473_4 AllocBody473_19

def AllocBody473_21 : StackLang.HolProg 64 :=
.seq AllocBody473_3 AllocBody473_20

def AllocBody473_22 : StackLang.HolProg 64 :=
.seq AllocBody473_2 AllocBody473_21

def AllocBody473_23 : StackLang.HolProg 64 :=
.seq AllocBody473_1 AllocBody473_22

def AllocBody473_24 : StackLang.HolProg 64 :=
.seq AllocBody473_0 AllocBody473_23

def Alloc473 : Nat × StackLang.HolProg 64 := (473, AllocBody473_24)
theorem Alloc473_eq : StackAlloc.progComp (473, raw473) = Alloc473 := by
  kernel_rfl
#print axioms Alloc473_eq
end InitECandidate.Proofs.BackendStages
