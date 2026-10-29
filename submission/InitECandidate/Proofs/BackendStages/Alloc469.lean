import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw469
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody469_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody469_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody469_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody469_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody469_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody469_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody469_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 64#64))

def AllocBody469_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody469_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody469_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody469_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody469_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody469_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody469_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody469_14 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody469_15 : StackLang.HolProg 64 :=
.seq AllocBody469_13 AllocBody469_14

def AllocBody469_16 : StackLang.HolProg 64 :=
.seq AllocBody469_12 AllocBody469_15

def AllocBody469_17 : StackLang.HolProg 64 :=
.seq AllocBody469_11 AllocBody469_16

def AllocBody469_18 : StackLang.HolProg 64 :=
.seq AllocBody469_10 AllocBody469_17

def AllocBody469_19 : StackLang.HolProg 64 :=
.seq AllocBody469_9 AllocBody469_18

def AllocBody469_20 : StackLang.HolProg 64 :=
.seq AllocBody469_8 AllocBody469_19

def AllocBody469_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody469_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody469_20 AllocBody469_21

def AllocBody469_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody469_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody469_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody469_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody469_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody469_28 : StackLang.HolProg 64 :=
.seq AllocBody469_26 AllocBody469_27

def AllocBody469_29 : StackLang.HolProg 64 :=
.seq AllocBody469_25 AllocBody469_28

def AllocBody469_30 : StackLang.HolProg 64 :=
.seq AllocBody469_24 AllocBody469_29

def AllocBody469_31 : StackLang.HolProg 64 :=
.seq AllocBody469_23 AllocBody469_30

def AllocBody469_32 : StackLang.HolProg 64 :=
.seq AllocBody469_22 AllocBody469_31

def AllocBody469_33 : StackLang.HolProg 64 :=
.seq AllocBody469_7 AllocBody469_32

def AllocBody469_34 : StackLang.HolProg 64 :=
.seq AllocBody469_6 AllocBody469_33

def AllocBody469_35 : StackLang.HolProg 64 :=
.seq AllocBody469_5 AllocBody469_34

def AllocBody469_36 : StackLang.HolProg 64 :=
.seq AllocBody469_4 AllocBody469_35

def AllocBody469_37 : StackLang.HolProg 64 :=
.seq AllocBody469_3 AllocBody469_36

def AllocBody469_38 : StackLang.HolProg 64 :=
.seq AllocBody469_2 AllocBody469_37

def AllocBody469_39 : StackLang.HolProg 64 :=
.seq AllocBody469_1 AllocBody469_38

def AllocBody469_40 : StackLang.HolProg 64 :=
.seq AllocBody469_0 AllocBody469_39

def Alloc469 : Nat × StackLang.HolProg 64 := (469, AllocBody469_40)
theorem Alloc469_eq : StackAlloc.progComp (469, raw469) = Alloc469 := by
  kernel_rfl
#print axioms Alloc469_eq
end InitECandidate.Proofs.BackendStages
