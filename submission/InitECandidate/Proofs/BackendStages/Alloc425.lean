import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw425
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody425_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody425_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody425_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody425_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody425_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody425_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody425_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def AllocBody425_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody425_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody425_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody425_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody425_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1268#64)

def AllocBody425_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody425_13 : StackLang.HolProg 64 :=
.seq AllocBody425_11 AllocBody425_12

def AllocBody425_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody425_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody425_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody425_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 425 3

def AllocBody425_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody425_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody425_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody425_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody425_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody425_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody425_24 : StackLang.HolProg 64 :=
.seq AllocBody425_22 AllocBody425_23

def AllocBody425_25 : StackLang.HolProg 64 :=
.seq AllocBody425_21 AllocBody425_24

def AllocBody425_26 : StackLang.HolProg 64 :=
.seq AllocBody425_20 AllocBody425_25

def AllocBody425_27 : StackLang.HolProg 64 :=
.seq AllocBody425_19 AllocBody425_26

def AllocBody425_28 : StackLang.HolProg 64 :=
.seq AllocBody425_18 AllocBody425_27

def AllocBody425_29 : StackLang.HolProg 64 :=
.seq AllocBody425_17 AllocBody425_28

def AllocBody425_30 : StackLang.HolProg 64 :=
.seq AllocBody425_16 AllocBody425_29

def AllocBody425_31 : StackLang.HolProg 64 :=
.seq AllocBody425_15 AllocBody425_30

def AllocBody425_32 : StackLang.HolProg 64 :=
.seq AllocBody425_14 AllocBody425_31

def AllocBody425_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody425_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody425_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody425_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody425_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody425_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody425_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody425_40 : StackLang.HolProg 64 :=
.seq AllocBody425_38 AllocBody425_39

def AllocBody425_41 : StackLang.HolProg 64 :=
.seq AllocBody425_37 AllocBody425_40

def AllocBody425_42 : StackLang.HolProg 64 :=
.seq AllocBody425_36 AllocBody425_41

def AllocBody425_43 : StackLang.HolProg 64 :=
.seq AllocBody425_35 AllocBody425_42

def AllocBody425_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody425_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody425_46 : StackLang.HolProg 64 :=
.seq AllocBody425_44 AllocBody425_45

def AllocBody425_47 : StackLang.HolProg 64 :=
.call (some (AllocBody425_43, 0, 425, 2)) (Sum.inl 192) (some (AllocBody425_46, 425, 3))

def AllocBody425_48 : StackLang.HolProg 64 :=
.seq AllocBody425_34 AllocBody425_47

def AllocBody425_49 : StackLang.HolProg 64 :=
.seq AllocBody425_33 AllocBody425_48

def AllocBody425_50 : StackLang.HolProg 64 :=
.seq AllocBody425_32 AllocBody425_49

def AllocBody425_51 : StackLang.HolProg 64 :=
.seq AllocBody425_13 AllocBody425_50

def AllocBody425_52 : StackLang.HolProg 64 :=
.seq AllocBody425_10 AllocBody425_51

def AllocBody425_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody425_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody425_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody425_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody425_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody425_58 : StackLang.HolProg 64 :=
.seq AllocBody425_56 AllocBody425_57

def AllocBody425_59 : StackLang.HolProg 64 :=
.seq AllocBody425_55 AllocBody425_58

def AllocBody425_60 : StackLang.HolProg 64 :=
.seq AllocBody425_54 AllocBody425_59

def AllocBody425_61 : StackLang.HolProg 64 :=
.seq AllocBody425_53 AllocBody425_60

def AllocBody425_62 : StackLang.HolProg 64 :=
.seq AllocBody425_52 AllocBody425_61

def AllocBody425_63 : StackLang.HolProg 64 :=
.seq AllocBody425_9 AllocBody425_62

def AllocBody425_64 : StackLang.HolProg 64 :=
.seq AllocBody425_8 AllocBody425_63

def AllocBody425_65 : StackLang.HolProg 64 :=
.seq AllocBody425_7 AllocBody425_64

def AllocBody425_66 : StackLang.HolProg 64 :=
.seq AllocBody425_6 AllocBody425_65

def AllocBody425_67 : StackLang.HolProg 64 :=
.seq AllocBody425_5 AllocBody425_66

def AllocBody425_68 : StackLang.HolProg 64 :=
.seq AllocBody425_4 AllocBody425_67

def AllocBody425_69 : StackLang.HolProg 64 :=
.seq AllocBody425_3 AllocBody425_68

def AllocBody425_70 : StackLang.HolProg 64 :=
.seq AllocBody425_2 AllocBody425_69

def AllocBody425_71 : StackLang.HolProg 64 :=
.seq AllocBody425_1 AllocBody425_70

def AllocBody425_72 : StackLang.HolProg 64 :=
.seq AllocBody425_0 AllocBody425_71

def Alloc425 : Nat × StackLang.HolProg 64 := (425, AllocBody425_72)
theorem Alloc425_eq : StackAlloc.progComp (425, raw425) = Alloc425 := by
  kernel_rfl
#print axioms Alloc425_eq
end InitECandidate.Proofs.BackendStages
