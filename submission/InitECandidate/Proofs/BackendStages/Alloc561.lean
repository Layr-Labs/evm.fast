import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw561
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody561_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody561_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody561_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody561_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody561_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody561_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody561_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody561_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody561_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def AllocBody561_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody561_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 96#64))

def AllocBody561_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody561_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody561_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody561_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1924#64)

def AllocBody561_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody561_16 : StackLang.HolProg 64 :=
.seq AllocBody561_14 AllocBody561_15

def AllocBody561_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody561_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody561_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody561_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 561 3

def AllocBody561_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody561_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody561_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody561_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody561_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody561_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody561_27 : StackLang.HolProg 64 :=
.seq AllocBody561_25 AllocBody561_26

def AllocBody561_28 : StackLang.HolProg 64 :=
.seq AllocBody561_24 AllocBody561_27

def AllocBody561_29 : StackLang.HolProg 64 :=
.seq AllocBody561_23 AllocBody561_28

def AllocBody561_30 : StackLang.HolProg 64 :=
.seq AllocBody561_22 AllocBody561_29

def AllocBody561_31 : StackLang.HolProg 64 :=
.seq AllocBody561_21 AllocBody561_30

def AllocBody561_32 : StackLang.HolProg 64 :=
.seq AllocBody561_20 AllocBody561_31

def AllocBody561_33 : StackLang.HolProg 64 :=
.seq AllocBody561_19 AllocBody561_32

def AllocBody561_34 : StackLang.HolProg 64 :=
.seq AllocBody561_18 AllocBody561_33

def AllocBody561_35 : StackLang.HolProg 64 :=
.seq AllocBody561_17 AllocBody561_34

def AllocBody561_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody561_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody561_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody561_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody561_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody561_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody561_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody561_43 : StackLang.HolProg 64 :=
.seq AllocBody561_41 AllocBody561_42

def AllocBody561_44 : StackLang.HolProg 64 :=
.seq AllocBody561_40 AllocBody561_43

def AllocBody561_45 : StackLang.HolProg 64 :=
.seq AllocBody561_39 AllocBody561_44

def AllocBody561_46 : StackLang.HolProg 64 :=
.seq AllocBody561_38 AllocBody561_45

def AllocBody561_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody561_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody561_49 : StackLang.HolProg 64 :=
.seq AllocBody561_47 AllocBody561_48

def AllocBody561_50 : StackLang.HolProg 64 :=
.call (some (AllocBody561_46, 0, 561, 2)) (Sum.inl 560) (some (AllocBody561_49, 561, 3))

def AllocBody561_51 : StackLang.HolProg 64 :=
.seq AllocBody561_37 AllocBody561_50

def AllocBody561_52 : StackLang.HolProg 64 :=
.seq AllocBody561_36 AllocBody561_51

def AllocBody561_53 : StackLang.HolProg 64 :=
.seq AllocBody561_35 AllocBody561_52

def AllocBody561_54 : StackLang.HolProg 64 :=
.seq AllocBody561_16 AllocBody561_53

def AllocBody561_55 : StackLang.HolProg 64 :=
.seq AllocBody561_13 AllocBody561_54

def AllocBody561_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody561_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody561_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody561_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody561_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody561_61 : StackLang.HolProg 64 :=
.seq AllocBody561_59 AllocBody561_60

def AllocBody561_62 : StackLang.HolProg 64 :=
.seq AllocBody561_58 AllocBody561_61

def AllocBody561_63 : StackLang.HolProg 64 :=
.seq AllocBody561_57 AllocBody561_62

def AllocBody561_64 : StackLang.HolProg 64 :=
.seq AllocBody561_56 AllocBody561_63

def AllocBody561_65 : StackLang.HolProg 64 :=
.seq AllocBody561_55 AllocBody561_64

def AllocBody561_66 : StackLang.HolProg 64 :=
.seq AllocBody561_12 AllocBody561_65

def AllocBody561_67 : StackLang.HolProg 64 :=
.seq AllocBody561_11 AllocBody561_66

def AllocBody561_68 : StackLang.HolProg 64 :=
.seq AllocBody561_10 AllocBody561_67

def AllocBody561_69 : StackLang.HolProg 64 :=
.seq AllocBody561_9 AllocBody561_68

def AllocBody561_70 : StackLang.HolProg 64 :=
.seq AllocBody561_8 AllocBody561_69

def AllocBody561_71 : StackLang.HolProg 64 :=
.seq AllocBody561_7 AllocBody561_70

def AllocBody561_72 : StackLang.HolProg 64 :=
.seq AllocBody561_6 AllocBody561_71

def AllocBody561_73 : StackLang.HolProg 64 :=
.seq AllocBody561_5 AllocBody561_72

def AllocBody561_74 : StackLang.HolProg 64 :=
.seq AllocBody561_4 AllocBody561_73

def AllocBody561_75 : StackLang.HolProg 64 :=
.seq AllocBody561_3 AllocBody561_74

def AllocBody561_76 : StackLang.HolProg 64 :=
.seq AllocBody561_2 AllocBody561_75

def AllocBody561_77 : StackLang.HolProg 64 :=
.seq AllocBody561_1 AllocBody561_76

def AllocBody561_78 : StackLang.HolProg 64 :=
.seq AllocBody561_0 AllocBody561_77

def Alloc561 : Nat × StackLang.HolProg 64 := (561, AllocBody561_78)
theorem Alloc561_eq : StackAlloc.progComp (561, raw561) = Alloc561 := by
  kernel_rfl
#print axioms Alloc561_eq
end InitECandidate.Proofs.BackendStages
