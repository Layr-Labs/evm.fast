import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw419
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody419_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody419_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody419_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody419_3 : StackLang.HolProg 64 :=
.seq AllocBody419_1 AllocBody419_2

def AllocBody419_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody419_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody419_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody419_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody419_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody419_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody419_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody419_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1247#64)

def AllocBody419_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody419_13 : StackLang.HolProg 64 :=
.seq AllocBody419_11 AllocBody419_12

def AllocBody419_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody419_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody419_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody419_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 419 3

def AllocBody419_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody419_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody419_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody419_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody419_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody419_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody419_24 : StackLang.HolProg 64 :=
.seq AllocBody419_22 AllocBody419_23

def AllocBody419_25 : StackLang.HolProg 64 :=
.seq AllocBody419_21 AllocBody419_24

def AllocBody419_26 : StackLang.HolProg 64 :=
.seq AllocBody419_20 AllocBody419_25

def AllocBody419_27 : StackLang.HolProg 64 :=
.seq AllocBody419_19 AllocBody419_26

def AllocBody419_28 : StackLang.HolProg 64 :=
.seq AllocBody419_18 AllocBody419_27

def AllocBody419_29 : StackLang.HolProg 64 :=
.seq AllocBody419_17 AllocBody419_28

def AllocBody419_30 : StackLang.HolProg 64 :=
.seq AllocBody419_16 AllocBody419_29

def AllocBody419_31 : StackLang.HolProg 64 :=
.seq AllocBody419_15 AllocBody419_30

def AllocBody419_32 : StackLang.HolProg 64 :=
.seq AllocBody419_14 AllocBody419_31

def AllocBody419_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody419_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody419_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody419_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody419_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody419_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody419_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody419_40 : StackLang.HolProg 64 :=
.seq AllocBody419_38 AllocBody419_39

def AllocBody419_41 : StackLang.HolProg 64 :=
.seq AllocBody419_37 AllocBody419_40

def AllocBody419_42 : StackLang.HolProg 64 :=
.seq AllocBody419_36 AllocBody419_41

def AllocBody419_43 : StackLang.HolProg 64 :=
.seq AllocBody419_35 AllocBody419_42

def AllocBody419_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody419_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody419_46 : StackLang.HolProg 64 :=
.seq AllocBody419_44 AllocBody419_45

def AllocBody419_47 : StackLang.HolProg 64 :=
.call (some (AllocBody419_43, 0, 419, 2)) (Sum.inl 388) (some (AllocBody419_46, 419, 3))

def AllocBody419_48 : StackLang.HolProg 64 :=
.seq AllocBody419_34 AllocBody419_47

def AllocBody419_49 : StackLang.HolProg 64 :=
.seq AllocBody419_33 AllocBody419_48

def AllocBody419_50 : StackLang.HolProg 64 :=
.seq AllocBody419_32 AllocBody419_49

def AllocBody419_51 : StackLang.HolProg 64 :=
.seq AllocBody419_13 AllocBody419_50

def AllocBody419_52 : StackLang.HolProg 64 :=
.seq AllocBody419_10 AllocBody419_51

def AllocBody419_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody419_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody419_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody419_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody419_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody419_58 : StackLang.HolProg 64 :=
.seq AllocBody419_56 AllocBody419_57

def AllocBody419_59 : StackLang.HolProg 64 :=
.seq AllocBody419_55 AllocBody419_58

def AllocBody419_60 : StackLang.HolProg 64 :=
.seq AllocBody419_54 AllocBody419_59

def AllocBody419_61 : StackLang.HolProg 64 :=
.seq AllocBody419_53 AllocBody419_60

def AllocBody419_62 : StackLang.HolProg 64 :=
.seq AllocBody419_52 AllocBody419_61

def AllocBody419_63 : StackLang.HolProg 64 :=
.seq AllocBody419_9 AllocBody419_62

def AllocBody419_64 : StackLang.HolProg 64 :=
.seq AllocBody419_8 AllocBody419_63

def AllocBody419_65 : StackLang.HolProg 64 :=
.seq AllocBody419_7 AllocBody419_64

def AllocBody419_66 : StackLang.HolProg 64 :=
.seq AllocBody419_6 AllocBody419_65

def AllocBody419_67 : StackLang.HolProg 64 :=
.seq AllocBody419_5 AllocBody419_66

def AllocBody419_68 : StackLang.HolProg 64 :=
.seq AllocBody419_4 AllocBody419_67

def AllocBody419_69 : StackLang.HolProg 64 :=
.seq AllocBody419_3 AllocBody419_68

def AllocBody419_70 : StackLang.HolProg 64 :=
.seq AllocBody419_0 AllocBody419_69

def Alloc419 : Nat × StackLang.HolProg 64 := (419, AllocBody419_70)
theorem Alloc419_eq : StackAlloc.progComp (419, raw419) = Alloc419 := by
  kernel_rfl
#print axioms Alloc419_eq
end InitECandidate.Proofs.BackendStages
