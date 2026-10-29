import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw394
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody394_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody394_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody394_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody394_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody394_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody394_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551480#64))

def AllocBody394_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody394_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody394_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody394_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody394_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody394_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody394_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody394_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1172#64)

def AllocBody394_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody394_15 : StackLang.HolProg 64 :=
.seq AllocBody394_13 AllocBody394_14

def AllocBody394_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody394_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody394_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody394_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 394 3

def AllocBody394_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody394_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody394_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody394_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody394_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody394_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody394_26 : StackLang.HolProg 64 :=
.seq AllocBody394_24 AllocBody394_25

def AllocBody394_27 : StackLang.HolProg 64 :=
.seq AllocBody394_23 AllocBody394_26

def AllocBody394_28 : StackLang.HolProg 64 :=
.seq AllocBody394_22 AllocBody394_27

def AllocBody394_29 : StackLang.HolProg 64 :=
.seq AllocBody394_21 AllocBody394_28

def AllocBody394_30 : StackLang.HolProg 64 :=
.seq AllocBody394_20 AllocBody394_29

def AllocBody394_31 : StackLang.HolProg 64 :=
.seq AllocBody394_19 AllocBody394_30

def AllocBody394_32 : StackLang.HolProg 64 :=
.seq AllocBody394_18 AllocBody394_31

def AllocBody394_33 : StackLang.HolProg 64 :=
.seq AllocBody394_17 AllocBody394_32

def AllocBody394_34 : StackLang.HolProg 64 :=
.seq AllocBody394_16 AllocBody394_33

def AllocBody394_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody394_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody394_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody394_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody394_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody394_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody394_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody394_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody394_43 : StackLang.HolProg 64 :=
.seq AllocBody394_41 AllocBody394_42

def AllocBody394_44 : StackLang.HolProg 64 :=
.seq AllocBody394_40 AllocBody394_43

def AllocBody394_45 : StackLang.HolProg 64 :=
.seq AllocBody394_39 AllocBody394_44

def AllocBody394_46 : StackLang.HolProg 64 :=
.seq AllocBody394_38 AllocBody394_45

def AllocBody394_47 : StackLang.HolProg 64 :=
.seq AllocBody394_37 AllocBody394_46

def AllocBody394_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody394_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody394_50 : StackLang.HolProg 64 :=
.seq AllocBody394_48 AllocBody394_49

def AllocBody394_51 : StackLang.HolProg 64 :=
.call (some (AllocBody394_47, 0, 394, 2)) (Sum.inl 393) (some (AllocBody394_50, 394, 3))

def AllocBody394_52 : StackLang.HolProg 64 :=
.seq AllocBody394_36 AllocBody394_51

def AllocBody394_53 : StackLang.HolProg 64 :=
.seq AllocBody394_35 AllocBody394_52

def AllocBody394_54 : StackLang.HolProg 64 :=
.seq AllocBody394_34 AllocBody394_53

def AllocBody394_55 : StackLang.HolProg 64 :=
.seq AllocBody394_15 AllocBody394_54

def AllocBody394_56 : StackLang.HolProg 64 :=
.seq AllocBody394_12 AllocBody394_55

def AllocBody394_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody394_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody394_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody394_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody394_61 : StackLang.HolProg 64 :=
.seq AllocBody394_59 AllocBody394_60

def AllocBody394_62 : StackLang.HolProg 64 :=
.seq AllocBody394_58 AllocBody394_61

def AllocBody394_63 : StackLang.HolProg 64 :=
.seq AllocBody394_57 AllocBody394_62

def AllocBody394_64 : StackLang.HolProg 64 :=
.seq AllocBody394_56 AllocBody394_63

def AllocBody394_65 : StackLang.HolProg 64 :=
.seq AllocBody394_11 AllocBody394_64

def AllocBody394_66 : StackLang.HolProg 64 :=
.seq AllocBody394_10 AllocBody394_65

def AllocBody394_67 : StackLang.HolProg 64 :=
.seq AllocBody394_9 AllocBody394_66

def AllocBody394_68 : StackLang.HolProg 64 :=
.seq AllocBody394_8 AllocBody394_67

def AllocBody394_69 : StackLang.HolProg 64 :=
.seq AllocBody394_7 AllocBody394_68

def AllocBody394_70 : StackLang.HolProg 64 :=
.seq AllocBody394_6 AllocBody394_69

def AllocBody394_71 : StackLang.HolProg 64 :=
.seq AllocBody394_5 AllocBody394_70

def AllocBody394_72 : StackLang.HolProg 64 :=
.seq AllocBody394_4 AllocBody394_71

def AllocBody394_73 : StackLang.HolProg 64 :=
.seq AllocBody394_3 AllocBody394_72

def AllocBody394_74 : StackLang.HolProg 64 :=
.seq AllocBody394_2 AllocBody394_73

def AllocBody394_75 : StackLang.HolProg 64 :=
.seq AllocBody394_1 AllocBody394_74

def AllocBody394_76 : StackLang.HolProg 64 :=
.seq AllocBody394_0 AllocBody394_75

def Alloc394 : Nat × StackLang.HolProg 64 := (394, AllocBody394_76)
theorem Alloc394_eq : StackAlloc.progComp (394, raw394) = Alloc394 := by
  kernel_rfl
#print axioms Alloc394_eq
end InitECandidate.Proofs.BackendStages
