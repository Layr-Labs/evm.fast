import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw73
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody73_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody73_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody73_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody73_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody73_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody73_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551584#64)))

def AllocBody73_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody73_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody73_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody73_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody73_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody73_11 : StackLang.HolProg 64 :=
.seq AllocBody73_9 AllocBody73_10

def AllocBody73_12 : StackLang.HolProg 64 :=
.seq AllocBody73_8 AllocBody73_11

def AllocBody73_13 : StackLang.HolProg 64 :=
.seq AllocBody73_7 AllocBody73_12

def AllocBody73_14 : StackLang.HolProg 64 :=
.seq AllocBody73_6 AllocBody73_13

def AllocBody73_15 : StackLang.HolProg 64 :=
.seq AllocBody73_5 AllocBody73_14

def AllocBody73_16 : StackLang.HolProg 64 :=
.seq AllocBody73_4 AllocBody73_15

def AllocBody73_17 : StackLang.HolProg 64 :=
.seq AllocBody73_3 AllocBody73_16

def AllocBody73_18 : StackLang.HolProg 64 :=
.seq AllocBody73_2 AllocBody73_17

def AllocBody73_19 : StackLang.HolProg 64 :=
.seq AllocBody73_1 AllocBody73_18

def AllocBody73_20 : StackLang.HolProg 64 :=
.seq AllocBody73_0 AllocBody73_19

def Alloc73 : Nat × StackLang.HolProg 64 := (73, AllocBody73_20)
theorem Alloc73_eq : StackAlloc.progComp (73, raw73) = Alloc73 := by
  kernel_rfl
#print axioms Alloc73_eq
end InitECandidate.Proofs.BackendStages
