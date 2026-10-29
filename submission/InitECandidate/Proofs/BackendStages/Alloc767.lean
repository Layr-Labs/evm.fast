import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw767
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody767_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody767_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody767_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 96#64))

def AllocBody767_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody767_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 104#64))

def AllocBody767_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody767_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 112#64))

def AllocBody767_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody767_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 120#64))

def AllocBody767_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody767_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 128#64))

def AllocBody767_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody767_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 136#64))

def AllocBody767_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody767_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody767_15 : StackLang.HolProg 64 :=
.call none (Sum.inl 705) none

def AllocBody767_16 : StackLang.HolProg 64 :=
.seq AllocBody767_14 AllocBody767_15

def AllocBody767_17 : StackLang.HolProg 64 :=
.seq AllocBody767_13 AllocBody767_16

def AllocBody767_18 : StackLang.HolProg 64 :=
.seq AllocBody767_12 AllocBody767_17

def AllocBody767_19 : StackLang.HolProg 64 :=
.seq AllocBody767_11 AllocBody767_18

def AllocBody767_20 : StackLang.HolProg 64 :=
.seq AllocBody767_10 AllocBody767_19

def AllocBody767_21 : StackLang.HolProg 64 :=
.seq AllocBody767_9 AllocBody767_20

def AllocBody767_22 : StackLang.HolProg 64 :=
.seq AllocBody767_8 AllocBody767_21

def AllocBody767_23 : StackLang.HolProg 64 :=
.seq AllocBody767_7 AllocBody767_22

def AllocBody767_24 : StackLang.HolProg 64 :=
.seq AllocBody767_6 AllocBody767_23

def AllocBody767_25 : StackLang.HolProg 64 :=
.seq AllocBody767_5 AllocBody767_24

def AllocBody767_26 : StackLang.HolProg 64 :=
.seq AllocBody767_4 AllocBody767_25

def AllocBody767_27 : StackLang.HolProg 64 :=
.seq AllocBody767_3 AllocBody767_26

def AllocBody767_28 : StackLang.HolProg 64 :=
.seq AllocBody767_2 AllocBody767_27

def AllocBody767_29 : StackLang.HolProg 64 :=
.seq AllocBody767_1 AllocBody767_28

def AllocBody767_30 : StackLang.HolProg 64 :=
.seq AllocBody767_0 AllocBody767_29

def Alloc767 : Nat × StackLang.HolProg 64 := (767, AllocBody767_30)
theorem Alloc767_eq : StackAlloc.progComp (767, raw767) = Alloc767 := by
  kernel_rfl
#print axioms Alloc767_eq
end InitECandidate.Proofs.BackendStages
