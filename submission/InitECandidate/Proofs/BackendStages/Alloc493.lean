import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw493
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody493_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody493_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody493_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody493_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody493_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody493_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody493_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def AllocBody493_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody493_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody493_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1540#64)

def AllocBody493_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody493_11 : StackLang.HolProg 64 :=
.seq AllocBody493_9 AllocBody493_10

def AllocBody493_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody493_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody493_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody493_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 493 3

def AllocBody493_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody493_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody493_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody493_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody493_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody493_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody493_22 : StackLang.HolProg 64 :=
.seq AllocBody493_20 AllocBody493_21

def AllocBody493_23 : StackLang.HolProg 64 :=
.seq AllocBody493_19 AllocBody493_22

def AllocBody493_24 : StackLang.HolProg 64 :=
.seq AllocBody493_18 AllocBody493_23

def AllocBody493_25 : StackLang.HolProg 64 :=
.seq AllocBody493_17 AllocBody493_24

def AllocBody493_26 : StackLang.HolProg 64 :=
.seq AllocBody493_16 AllocBody493_25

def AllocBody493_27 : StackLang.HolProg 64 :=
.seq AllocBody493_15 AllocBody493_26

def AllocBody493_28 : StackLang.HolProg 64 :=
.seq AllocBody493_14 AllocBody493_27

def AllocBody493_29 : StackLang.HolProg 64 :=
.seq AllocBody493_13 AllocBody493_28

def AllocBody493_30 : StackLang.HolProg 64 :=
.seq AllocBody493_12 AllocBody493_29

def AllocBody493_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody493_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody493_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody493_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody493_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody493_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody493_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody493_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody493_39 : StackLang.HolProg 64 :=
.seq AllocBody493_37 AllocBody493_38

def AllocBody493_40 : StackLang.HolProg 64 :=
.seq AllocBody493_36 AllocBody493_39

def AllocBody493_41 : StackLang.HolProg 64 :=
.seq AllocBody493_35 AllocBody493_40

def AllocBody493_42 : StackLang.HolProg 64 :=
.seq AllocBody493_34 AllocBody493_41

def AllocBody493_43 : StackLang.HolProg 64 :=
.seq AllocBody493_33 AllocBody493_42

def AllocBody493_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody493_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody493_46 : StackLang.HolProg 64 :=
.seq AllocBody493_44 AllocBody493_45

def AllocBody493_47 : StackLang.HolProg 64 :=
.call (some (AllocBody493_43, 0, 493, 2)) (Sum.inl 187) (some (AllocBody493_46, 493, 3))

def AllocBody493_48 : StackLang.HolProg 64 :=
.seq AllocBody493_32 AllocBody493_47

def AllocBody493_49 : StackLang.HolProg 64 :=
.seq AllocBody493_31 AllocBody493_48

def AllocBody493_50 : StackLang.HolProg 64 :=
.seq AllocBody493_30 AllocBody493_49

def AllocBody493_51 : StackLang.HolProg 64 :=
.seq AllocBody493_11 AllocBody493_50

def AllocBody493_52 : StackLang.HolProg 64 :=
.seq AllocBody493_8 AllocBody493_51

def AllocBody493_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody493_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody493_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody493_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody493_57 : StackLang.HolProg 64 :=
.seq AllocBody493_55 AllocBody493_56

def AllocBody493_58 : StackLang.HolProg 64 :=
.seq AllocBody493_54 AllocBody493_57

def AllocBody493_59 : StackLang.HolProg 64 :=
.seq AllocBody493_53 AllocBody493_58

def AllocBody493_60 : StackLang.HolProg 64 :=
.seq AllocBody493_52 AllocBody493_59

def AllocBody493_61 : StackLang.HolProg 64 :=
.seq AllocBody493_7 AllocBody493_60

def AllocBody493_62 : StackLang.HolProg 64 :=
.seq AllocBody493_6 AllocBody493_61

def AllocBody493_63 : StackLang.HolProg 64 :=
.seq AllocBody493_5 AllocBody493_62

def AllocBody493_64 : StackLang.HolProg 64 :=
.seq AllocBody493_4 AllocBody493_63

def AllocBody493_65 : StackLang.HolProg 64 :=
.seq AllocBody493_3 AllocBody493_64

def AllocBody493_66 : StackLang.HolProg 64 :=
.seq AllocBody493_2 AllocBody493_65

def AllocBody493_67 : StackLang.HolProg 64 :=
.seq AllocBody493_1 AllocBody493_66

def AllocBody493_68 : StackLang.HolProg 64 :=
.seq AllocBody493_0 AllocBody493_67

def Alloc493 : Nat × StackLang.HolProg 64 := (493, AllocBody493_68)
theorem Alloc493_eq : StackAlloc.progComp (493, raw493) = Alloc493 := by
  kernel_rfl
#print axioms Alloc493_eq
end InitECandidate.Proofs.BackendStages
