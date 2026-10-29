import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw494
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody494_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody494_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody494_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody494_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody494_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody494_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody494_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def AllocBody494_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody494_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody494_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody494_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody494_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1541#64)

def AllocBody494_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody494_13 : StackLang.HolProg 64 :=
.seq AllocBody494_11 AllocBody494_12

def AllocBody494_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody494_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody494_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody494_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 494 3

def AllocBody494_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody494_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody494_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody494_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody494_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody494_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody494_24 : StackLang.HolProg 64 :=
.seq AllocBody494_22 AllocBody494_23

def AllocBody494_25 : StackLang.HolProg 64 :=
.seq AllocBody494_21 AllocBody494_24

def AllocBody494_26 : StackLang.HolProg 64 :=
.seq AllocBody494_20 AllocBody494_25

def AllocBody494_27 : StackLang.HolProg 64 :=
.seq AllocBody494_19 AllocBody494_26

def AllocBody494_28 : StackLang.HolProg 64 :=
.seq AllocBody494_18 AllocBody494_27

def AllocBody494_29 : StackLang.HolProg 64 :=
.seq AllocBody494_17 AllocBody494_28

def AllocBody494_30 : StackLang.HolProg 64 :=
.seq AllocBody494_16 AllocBody494_29

def AllocBody494_31 : StackLang.HolProg 64 :=
.seq AllocBody494_15 AllocBody494_30

def AllocBody494_32 : StackLang.HolProg 64 :=
.seq AllocBody494_14 AllocBody494_31

def AllocBody494_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody494_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody494_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody494_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody494_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody494_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody494_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody494_40 : StackLang.HolProg 64 :=
.seq AllocBody494_38 AllocBody494_39

def AllocBody494_41 : StackLang.HolProg 64 :=
.seq AllocBody494_37 AllocBody494_40

def AllocBody494_42 : StackLang.HolProg 64 :=
.seq AllocBody494_36 AllocBody494_41

def AllocBody494_43 : StackLang.HolProg 64 :=
.seq AllocBody494_35 AllocBody494_42

def AllocBody494_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody494_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody494_46 : StackLang.HolProg 64 :=
.seq AllocBody494_44 AllocBody494_45

def AllocBody494_47 : StackLang.HolProg 64 :=
.call (some (AllocBody494_43, 0, 494, 2)) (Sum.inl 192) (some (AllocBody494_46, 494, 3))

def AllocBody494_48 : StackLang.HolProg 64 :=
.seq AllocBody494_34 AllocBody494_47

def AllocBody494_49 : StackLang.HolProg 64 :=
.seq AllocBody494_33 AllocBody494_48

def AllocBody494_50 : StackLang.HolProg 64 :=
.seq AllocBody494_32 AllocBody494_49

def AllocBody494_51 : StackLang.HolProg 64 :=
.seq AllocBody494_13 AllocBody494_50

def AllocBody494_52 : StackLang.HolProg 64 :=
.seq AllocBody494_10 AllocBody494_51

def AllocBody494_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody494_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody494_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody494_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody494_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody494_58 : StackLang.HolProg 64 :=
.seq AllocBody494_56 AllocBody494_57

def AllocBody494_59 : StackLang.HolProg 64 :=
.seq AllocBody494_55 AllocBody494_58

def AllocBody494_60 : StackLang.HolProg 64 :=
.seq AllocBody494_54 AllocBody494_59

def AllocBody494_61 : StackLang.HolProg 64 :=
.seq AllocBody494_53 AllocBody494_60

def AllocBody494_62 : StackLang.HolProg 64 :=
.seq AllocBody494_52 AllocBody494_61

def AllocBody494_63 : StackLang.HolProg 64 :=
.seq AllocBody494_9 AllocBody494_62

def AllocBody494_64 : StackLang.HolProg 64 :=
.seq AllocBody494_8 AllocBody494_63

def AllocBody494_65 : StackLang.HolProg 64 :=
.seq AllocBody494_7 AllocBody494_64

def AllocBody494_66 : StackLang.HolProg 64 :=
.seq AllocBody494_6 AllocBody494_65

def AllocBody494_67 : StackLang.HolProg 64 :=
.seq AllocBody494_5 AllocBody494_66

def AllocBody494_68 : StackLang.HolProg 64 :=
.seq AllocBody494_4 AllocBody494_67

def AllocBody494_69 : StackLang.HolProg 64 :=
.seq AllocBody494_3 AllocBody494_68

def AllocBody494_70 : StackLang.HolProg 64 :=
.seq AllocBody494_2 AllocBody494_69

def AllocBody494_71 : StackLang.HolProg 64 :=
.seq AllocBody494_1 AllocBody494_70

def AllocBody494_72 : StackLang.HolProg 64 :=
.seq AllocBody494_0 AllocBody494_71

def Alloc494 : Nat × StackLang.HolProg 64 := (494, AllocBody494_72)
theorem Alloc494_eq : StackAlloc.progComp (494, raw494) = Alloc494 := by
  kernel_rfl
#print axioms Alloc494_eq
end InitECandidate.Proofs.BackendStages
