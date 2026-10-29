import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw66
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody66_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody66_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody66_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2688614433#64)

def AllocBody66_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store8 2
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64)

def AllocBody66_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody66_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody66_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody66_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551608#64))

def AllocBody66_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 2688614440#64)

def AllocBody66_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store 3
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64)

def AllocBody66_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody66_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551600#64))

def AllocBody66_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2688614448#64)

def AllocBody66_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.shMemOp Flapjack.WordMemOp.store 1
  (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64)

def AllocBody66_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 3 Flapjack.Compiler.Backend.StackLang.StoreName.currHeap

def AllocBody66_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody66_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody66_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody66_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody66_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody66_20 : StackLang.HolProg 64 :=
.seq AllocBody66_18 AllocBody66_19

def AllocBody66_21 : StackLang.HolProg 64 :=
.seq AllocBody66_17 AllocBody66_20

def AllocBody66_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ffi (Flapjack.Basis.Pure.MlString.MlString.implode [116#8, 114#8, 97#8, 112#8])
  1 2 3 4 0

def AllocBody66_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody66_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody66_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody66_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody66_27 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody66_28 : StackLang.HolProg 64 :=
.seq AllocBody66_26 AllocBody66_27

def AllocBody66_29 : StackLang.HolProg 64 :=
.seq AllocBody66_25 AllocBody66_28

def AllocBody66_30 : StackLang.HolProg 64 :=
.seq AllocBody66_24 AllocBody66_29

def AllocBody66_31 : StackLang.HolProg 64 :=
.seq AllocBody66_23 AllocBody66_30

def AllocBody66_32 : StackLang.HolProg 64 :=
.seq AllocBody66_22 AllocBody66_31

def AllocBody66_33 : StackLang.HolProg 64 :=
.seq AllocBody66_21 AllocBody66_32

def AllocBody66_34 : StackLang.HolProg 64 :=
.seq AllocBody66_16 AllocBody66_33

def AllocBody66_35 : StackLang.HolProg 64 :=
.seq AllocBody66_15 AllocBody66_34

def AllocBody66_36 : StackLang.HolProg 64 :=
.seq AllocBody66_14 AllocBody66_35

def AllocBody66_37 : StackLang.HolProg 64 :=
.seq AllocBody66_13 AllocBody66_36

def AllocBody66_38 : StackLang.HolProg 64 :=
.seq AllocBody66_12 AllocBody66_37

def AllocBody66_39 : StackLang.HolProg 64 :=
.seq AllocBody66_11 AllocBody66_38

def AllocBody66_40 : StackLang.HolProg 64 :=
.seq AllocBody66_10 AllocBody66_39

def AllocBody66_41 : StackLang.HolProg 64 :=
.seq AllocBody66_9 AllocBody66_40

def AllocBody66_42 : StackLang.HolProg 64 :=
.seq AllocBody66_8 AllocBody66_41

def AllocBody66_43 : StackLang.HolProg 64 :=
.seq AllocBody66_7 AllocBody66_42

def AllocBody66_44 : StackLang.HolProg 64 :=
.seq AllocBody66_6 AllocBody66_43

def AllocBody66_45 : StackLang.HolProg 64 :=
.seq AllocBody66_5 AllocBody66_44

def AllocBody66_46 : StackLang.HolProg 64 :=
.seq AllocBody66_4 AllocBody66_45

def AllocBody66_47 : StackLang.HolProg 64 :=
.seq AllocBody66_3 AllocBody66_46

def AllocBody66_48 : StackLang.HolProg 64 :=
.seq AllocBody66_2 AllocBody66_47

def AllocBody66_49 : StackLang.HolProg 64 :=
.seq AllocBody66_1 AllocBody66_48

def AllocBody66_50 : StackLang.HolProg 64 :=
.seq AllocBody66_0 AllocBody66_49

def Alloc66 : Nat × StackLang.HolProg 64 := (66, AllocBody66_50)
theorem Alloc66_eq : StackAlloc.progComp (66, raw66) = Alloc66 := by
  kernel_rfl
#print axioms Alloc66_eq
end InitECandidate.Proofs.BackendStages
