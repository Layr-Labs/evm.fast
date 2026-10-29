import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw396
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody396_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody396_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody396_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody396_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody396_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody396_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551440#64))

def AllocBody396_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def AllocBody396_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody396_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody396_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody396_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody396_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1175#64)

def AllocBody396_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody396_13 : StackLang.HolProg 64 :=
.seq AllocBody396_11 AllocBody396_12

def AllocBody396_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody396_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody396_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody396_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 396 3

def AllocBody396_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody396_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody396_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody396_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody396_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody396_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody396_24 : StackLang.HolProg 64 :=
.seq AllocBody396_22 AllocBody396_23

def AllocBody396_25 : StackLang.HolProg 64 :=
.seq AllocBody396_21 AllocBody396_24

def AllocBody396_26 : StackLang.HolProg 64 :=
.seq AllocBody396_20 AllocBody396_25

def AllocBody396_27 : StackLang.HolProg 64 :=
.seq AllocBody396_19 AllocBody396_26

def AllocBody396_28 : StackLang.HolProg 64 :=
.seq AllocBody396_18 AllocBody396_27

def AllocBody396_29 : StackLang.HolProg 64 :=
.seq AllocBody396_17 AllocBody396_28

def AllocBody396_30 : StackLang.HolProg 64 :=
.seq AllocBody396_16 AllocBody396_29

def AllocBody396_31 : StackLang.HolProg 64 :=
.seq AllocBody396_15 AllocBody396_30

def AllocBody396_32 : StackLang.HolProg 64 :=
.seq AllocBody396_14 AllocBody396_31

def AllocBody396_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody396_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody396_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody396_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody396_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody396_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody396_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody396_40 : StackLang.HolProg 64 :=
.seq AllocBody396_38 AllocBody396_39

def AllocBody396_41 : StackLang.HolProg 64 :=
.seq AllocBody396_37 AllocBody396_40

def AllocBody396_42 : StackLang.HolProg 64 :=
.seq AllocBody396_36 AllocBody396_41

def AllocBody396_43 : StackLang.HolProg 64 :=
.seq AllocBody396_35 AllocBody396_42

def AllocBody396_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody396_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody396_46 : StackLang.HolProg 64 :=
.seq AllocBody396_44 AllocBody396_45

def AllocBody396_47 : StackLang.HolProg 64 :=
.call (some (AllocBody396_43, 0, 396, 2)) (Sum.inl 192) (some (AllocBody396_46, 396, 3))

def AllocBody396_48 : StackLang.HolProg 64 :=
.seq AllocBody396_34 AllocBody396_47

def AllocBody396_49 : StackLang.HolProg 64 :=
.seq AllocBody396_33 AllocBody396_48

def AllocBody396_50 : StackLang.HolProg 64 :=
.seq AllocBody396_32 AllocBody396_49

def AllocBody396_51 : StackLang.HolProg 64 :=
.seq AllocBody396_13 AllocBody396_50

def AllocBody396_52 : StackLang.HolProg 64 :=
.seq AllocBody396_10 AllocBody396_51

def AllocBody396_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody396_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody396_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody396_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody396_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody396_58 : StackLang.HolProg 64 :=
.seq AllocBody396_56 AllocBody396_57

def AllocBody396_59 : StackLang.HolProg 64 :=
.seq AllocBody396_55 AllocBody396_58

def AllocBody396_60 : StackLang.HolProg 64 :=
.seq AllocBody396_54 AllocBody396_59

def AllocBody396_61 : StackLang.HolProg 64 :=
.seq AllocBody396_53 AllocBody396_60

def AllocBody396_62 : StackLang.HolProg 64 :=
.seq AllocBody396_52 AllocBody396_61

def AllocBody396_63 : StackLang.HolProg 64 :=
.seq AllocBody396_9 AllocBody396_62

def AllocBody396_64 : StackLang.HolProg 64 :=
.seq AllocBody396_8 AllocBody396_63

def AllocBody396_65 : StackLang.HolProg 64 :=
.seq AllocBody396_7 AllocBody396_64

def AllocBody396_66 : StackLang.HolProg 64 :=
.seq AllocBody396_6 AllocBody396_65

def AllocBody396_67 : StackLang.HolProg 64 :=
.seq AllocBody396_5 AllocBody396_66

def AllocBody396_68 : StackLang.HolProg 64 :=
.seq AllocBody396_4 AllocBody396_67

def AllocBody396_69 : StackLang.HolProg 64 :=
.seq AllocBody396_3 AllocBody396_68

def AllocBody396_70 : StackLang.HolProg 64 :=
.seq AllocBody396_2 AllocBody396_69

def AllocBody396_71 : StackLang.HolProg 64 :=
.seq AllocBody396_1 AllocBody396_70

def AllocBody396_72 : StackLang.HolProg 64 :=
.seq AllocBody396_0 AllocBody396_71

def Alloc396 : Nat × StackLang.HolProg 64 := (396, AllocBody396_72)
theorem Alloc396_eq : StackAlloc.progComp (396, raw396) = Alloc396 := by
  kernel_rfl
#print axioms Alloc396_eq
end InitECandidate.Proofs.BackendStages
